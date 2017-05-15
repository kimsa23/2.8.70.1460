unit classemdfe;

interface

uses
  SysUtils, Contnrs, db, classes, dialogs,
  ACBrMDFe,
  uconstantes, uSelecionarEntrada, urotinas,
  classeempresa, classeretornasql, classequery, classecliente, classecte, classedao,
  classeexecutasql, classeserie;

type
  TTpMDFE = class(TRegistroQuipos)
  private
    fcdtpmdfe : integer;
    fcdserie : integer;
    fcdveiculo : integer;
    fcduf : Integer;
    fcdmdfetpemitente : integer;
    fcdmdfemodalidade : integer;
    fcdmdfeformaemissao : Integer;
    fcdunidade : Integer;
    fnmtpmdfe : string;
    procedure Setcdserie(const Value: integer);
  public
    [keyfield]
    property cdtpmdfe : integer read fcdtpmdfe write fcdtpmdfe;
    [fk]
    property cdveiculo : integer read fcdveiculo write fcdveiculo;
    [fk]
    property cduf : Integer read fcduf write fcduf;
    [fk]
    property cdserie : integer read Fcdserie write Setcdserie;
    [fk]
    property cdmdfetpemitente : integer read fcdmdfetpemitente write fcdmdfetpemitente;
    [fk]
    property cdmdfemodalidade : integer read fcdmdfemodalidade write fcdmdfemodalidade;
    [fk]
    property cdmdfeformaemissao : integer read fcdmdfeformaemissao write fcdmdfeformaemissao;
    [fk]
    property cdunidade : Integer read fcdunidade write fcdunidade;
    property nmtpmdfe : string read fnmtpmdfe write fnmtpmdfe;
  end;
  TMDFEveiculo = class(TRegistroQuipos)
  private
    fcdmdfe : Integer;
    fcdveiculo : Integer;
  public
    [keyfield]
    property cdmdfe : Integer read fcdmdfe write fcdmdfe;
    [keyfield]
    property cdveiculo : Integer read fcdveiculo write fcdveiculo;
  end;
  TMDFEveiculoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TMDFEveiculo;
    procedure SetItem(Index: Integer; const Value: TMDFEveiculo);
  public
    function New: TMDFEveiculo;
    property Items[Index: Integer]: TMDFEveiculo read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;overload;
    function Ler(Dataset: TDataset):boolean;overload;
  end;
  TMDFETransportadora = class(TRegistroQuipos)
  private
    fcdmdfe : Integer;
    fcdtransportadora : largeint;
  public
    [keyfield]
    property cdmdfe : Integer read fcdmdfe write fcdmdfe;
    [keyfield]
    property cdtransportadora : largeint read fcdtransportadora write fcdtransportadora;
  end;
  TMDFETransportadoraList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TMDFETransportadora;
    procedure SetItem(Index: Integer; const Value: TMDFETransportadora);
  public
    function New: TMDFETransportadora;
    property Items[Index: Integer]: TMDFETransportadora read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;overload;
    function Ler(Dataset: TDataset):boolean;overload;
  end;
  TMDFEPedagio = class(TRegistroQuipos)
  private
    fcdmdfe : Integer;
    fcdmdfepedagio : integer;
    fcdfornecedor : LargeInt;
    fcdresponsavel : Integer;
    fnucomprovante : string;
  public
    [keyfield]
    property cdmdfepedagio : integer read fcdmdfepedagio write fcdmdfepedagio;
    [fk]
    property cdmdfe : Integer read fcdmdfe write fcdmdfe;
    [fk]
    property cdfornecedor : LargeInt read fcdfornecedor write fcdfornecedor;
    [fk]
    property cdresponsavel : Integer read fcdresponsavel write fcdresponsavel;
    property nucomprovante : string read fnucomprovante write fnucomprovante;
  end;
  TMDFEPedagioList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TMDFEPedagio;
    procedure SetItem(Index: Integer; const Value: TMDFEPedagio);
  public
    function New: TMDFEPedagio;
    property Items[Index: Integer]: TMDFEPedagio read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;overload;
    function Ler(Dataset: TDataset):boolean;overload;
  end;
  TMDFECarregamento = class(TRegistroQuipos)
  private
    fcdmdfe : Integer;
    fcdmunicipio : Integer;
  public
    [keyfield]
    property cdmdfe : Integer read fcdmdfe write fcdmdfe;
    [keyfield]
    property cdmunicipio : Integer read fcdmunicipio write fcdmunicipio;
  end;
  TMDFECarregamentoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TMDFECarregamento;
    procedure SetItem(Index: Integer; const Value: TMDFECarregamento);
  public
    function New: TMDFECarregamento;
    property Items[Index: Integer]: TMDFECarregamento read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;overload;
    function Ler(Dataset: TDataset):boolean;overload;
  end;
  TMDFELacre = class(TRegistroQuipos)
  private
    fcdmdfe : Integer;
    fcdmdfelacre : Integer;
    fnulacre : string;
  public
    [keyfield]
    property cdmdfelacre : Integer read fcdmdfelacre write fcdmdfelacre;
    [fk]
    property cdmdfe : Integer read fcdmdfe write fcdmdfe;
    property nulacre : string read fnulacre write fnulacre;
  end;
  TMDFELacreList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TMDFELacre;
    procedure SetItem(Index: Integer; const Value: TMDFELacre);
  public
    function New: TMDFELacre;
    property Items[Index: Integer]: TMDFELacre read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;overload;
    function Ler(Dataset: TDataset):boolean;overload;
  end;
  TMDFENFE = class(TRegistroQuipos)
  private
    fcdmdfe : Integer;
    fcdcteremetentenota : Integer;
    fcdmunicipio : Integer;
    fnuchavenfe : string;
    Fcdmdfenfe: integer;
    procedure Setcdmdfenfe(const Value: integer);
  public
    [keyfield]
    property cdmdfenfe : integer read Fcdmdfenfe write Setcdmdfenfe;
    [fk]
    property cdmdfe : Integer read fcdmdfe write fcdmdfe;
    [fk]
    property cdmunicipio : Integer read fcdmunicipio write fcdmunicipio;
    property nuchavenfe : string read fnuchavenfe write fnuchavenfe;
  end;
  TMDFENFEList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TMDFENFE;
    procedure SetItem(Index: Integer; const Value: TMDFENFE);
  public
    function New: TMDFENFE;
    property Items[Index: Integer]: TMDFENFE read GetItem write SetItem;
    function Ler(sqlwhere:string):Boolean; overload;
    function Ler(Dataset: TDataset):boolean; overload;
    function Cancelar(boscript:boolean=false):string;
  end;
  TMDFECTE = class(TRegistroQuipos)
  private
    fcdmdfe : Integer;
    fcdmunicipio : Integer;
    fcdcte : Integer;
    fvlcarga : Currency;
    fqtcarga : Double;
  public
    [keyfield]
    property cdmdfe : Integer read fcdmdfe write fcdmdfe;
    [keyfield]
    property cdmunicipio : Integer read fcdmunicipio write fcdmunicipio;
    [keyfield]
    property cdcte : Integer read fcdcte write fcdcte;
    property vlcarga : Currency read fvlcarga write fvlcarga;
    property qtcarga : Double read fqtcarga write fqtcarga;
  end;
  TMDFECTEList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TMDFECTE;
    procedure SetItem(Index: Integer; const Value: TMDFECTE);
  public
    function New: TMDFECTE;
    property Items[Index: Integer]: TMDFECTE read GetItem write SetItem;
    function Ler(sqlwhere:string):Boolean;overload;
    function Ler(Dataset:TDataset):boolean;overload;
    function Cancelar(boscript:boolean=false):string;
  end;
  TMDFEDescarregamento = class(TRegistroQuipos)
  private
    fcdmdfe : Integer;
    fcdmunicipio : Integer;
    fqtcte : Integer;
    fqtnfe : Integer;
    fvlcarga : Currency;
    fqtcarga : Double;
    Fmdfenfe: tmdfenfelist;
    Fmdfecte: tmdfectelist;
    procedure Setmdfecte(const Value: tmdfectelist);
    procedure Setmdfenfe(const Value: tmdfenfelist);
  public
    [keyfield]
    property cdmdfe : Integer read fcdmdfe write fcdmdfe;
    [keyfield]
    property cdmunicipio : Integer read fcdmunicipio write fcdmunicipio;
    property qtcte : Integer read fqtcte write fqtcte;
    [AObrigatorio]
    property qtnfe : Integer read fqtnfe write fqtnfe;
    property vlcarga : Currency read fvlcarga write fvlcarga;
    property qtcarga : Double read fqtcarga write fqtcarga;
    property mdfecte : tmdfectelist read Fmdfecte write Setmdfecte;
    property mdfenfe : tmdfenfelist read Fmdfenfe write Setmdfenfe;
    constructor create; overload;
    destructor destroy; override;
  end;
  TMDFEDescarregamentoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TMDFEDescarregamento;
    procedure SetItem(Index: Integer; const Value: TMDFEDescarregamento);
  public
    function New: TMDFEDescarregamento;
    property Items[Index: Integer]: TMDFEDescarregamento read GetItem write SetItem;
    function Ler(codigo: integer):Boolean; overload;
    function Ler(Dataset: TDataset):boolean; overload;
    function Ler(Dataset, dscte, dsnfe: TDataset):boolean; overload;
    function Cancelar(boscript:boolean=false):string;
  end;
  TMDFEMunicipioPercurso = class(TRegistroQuipos)
  private
    fcdmdfe : Integer;
    fcdmunicipio : Integer;
  public
    [keyfield]
    property cdmdfe : integer read fcdmdfe write fcdmdfe;
    [keyfield]
    property cdmunicipio : integer read fcdmunicipio write fcdmunicipio;
  end;
  TMDFEMunicipioPercursoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TMDFEMunicipioPercurso;
    procedure SetItem(Index: Integer; const Value: TMDFEMunicipioPercurso);
  public
    function New: TMDFEMunicipioPercurso;
    property Items[Index: Integer]: TMDFEMunicipioPercurso read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;
  end;
  TMDFEUFPercurso = class(TRegistroQuipos)
  private
    fcdmdfe : Integer;
    fcduf : Integer;
  public
    [keyfield]
    property cdmdfe : integer read fcdmdfe write fcdmdfe;
    [keyfield]
    property cduf : integer read fcduf write fcduf;
  end;
  TMDFEUFPercursoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TMDFEUFPercurso;
    procedure SetItem(Index: Integer; const Value: TMDFEUFPercurso);
  public
    function New: TMDFEUFPercurso;
    property Items[Index: Integer]: TMDFEUFPercurso read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;overload;
    function Ler(Dataset: TDataset):boolean;overload;
  end;
  TMDFE = class(TRegistroQuipos)
  private
    ftpmdfe : ttpmdfe;
    fcdmdfe : Integer;
    fcdserie : Integer;
    fcduf : Integer;
    fcdmdfetpemitente : Integer;
    fcdmdfemodalidade : Integer;
    fcdmdfeformaemissao : integer;
    fcdufinicio : Integer;
    fcduffim : Integer;
    fcdunidade : Integer;
    fcdveiculo : Integer;
    fcdtpmdfe : Integer;
    fcdstmdfe : Integer;
    fnumdfe : Integer;
    fdtemissao : TDate;
    fdtencerramento : TDate;
    fhremissao : TTime;
    fnuchave : string;
    fcdverificadorchave : string;
    fqtcte : Integer;
    fqtnfe : Integer;
    fvlcarga : Currency;
    fnurntrc : string;
    fcdciot : string;
    fqtcarga : Double;
    fnuprotocoloautorizacao : string;
    fnulote : Integer;
    fdsxml : string;
    ftsprotocoloautorizacao : TDateTime;
    fnuchavenfe : string;
    fnurecibonfe : string;
    fdscancelamento : string;
    fnuprotocolocancelamento : string;
    fdsxmlcancel : string;
    fnuseqevento : integer;
    fnuprotocoloencerramento : string;
    fdsxmlencerramento : string;
    Fmdfeveiculo: TMdfeveiculolist;
    Fmdfetransportadora: TMDFETransportadoraList;
    Fmdfepedagio: TMDFEPedagioList;
    Fmdfecarregamento: Tmdfecarregamentolist;
    Fmdfedescarregamento: TMDFEDescarregamentolist;
    Fmdfelacre: TMDFELacreList;
    Fmdfemunicipiopercurso: tmdfemunicipiopercursolist;
    Fmdfeufpercurso: tmdfeufpercursolist;
    FACBrMDFe: TACBrMDFe;
    FSerie: TSerie;
    fdsobservacao: string;
  public
    property ACBrMDFe: TACBrMDFe read FACBrMDFe write FACBrMDFe;
    property mdfeufpercurso : tmdfeufpercursolist read Fmdfeufpercurso write Fmdfeufpercurso;
    property mdfemunicipiopercurso : tmdfemunicipiopercursolist read Fmdfemunicipiopercurso write Fmdfemunicipiopercurso;
    property mdfelacre : TMDFELacreList read Fmdfelacre write Fmdfelacre;
    property mdfedescarregamento : TMDFEDescarregamentolist read Fmdfedescarregamento write Fmdfedescarregamento;
    property mdfecarregamento : Tmdfecarregamentolist read Fmdfecarregamento write Fmdfecarregamento;
    property mdfeveiculo : TMdfeveiculolist read Fmdfeveiculo write Fmdfeveiculo;
    property mdfetransportadora : TMDFETransportadoraList read Fmdfetransportadora write Fmdfetransportadora;
    property mdfepedagio : TMDFEPedagioList read Fmdfepedagio write Fmdfepedagio;
    property tpmdfe : TTpmdfe read ftpmdfe write ftpmdfe;
    property Serie : TSerie read FSerie write FSerie;
    [keyfield]
    property cdmdfe : integer read fcdmdfe write fcdmdfe;
    [fk]
    property cdserie : Integer read fcdserie write fcdserie;
    [fk]
    property cduf : integer read fcduf write fcduf;
    [fk]
    property cdmdfetpemitente : integer read fcdmdfetpemitente write fcdmdfetpemitente;
    [fk]
    property cdmdfemodalidade : integer read fcdmdfemodalidade write fcdmdfemodalidade;
    [fk]
    property cdmdfeformaemissao : integer read fcdmdfeformaemissao write fcdmdfeformaemissao;
    [fk]
    property cdufinicio : Integer read fcdufinicio write fcdufinicio;
    [fk]
    property cduffim : integer read fcduffim write fcduffim;
    [fk]
    property cdunidade : integer read fcdunidade write fcdunidade;
    [fk]
    property cdveiculo : integer read fcdveiculo write fcdveiculo;
    [fk]
    property cdtpmdfe : integer read fcdtpmdfe write fcdtpmdfe;
    [fk]
    property cdstmdfe : integer read fcdstmdfe write fcdstmdfe;
    property numdfe : integer read fnumdfe write fnumdfe;
    property dtemissao : TDate read fdtemissao write fdtemissao;
    property hremissao : TTime read fhremissao write fhremissao;
    property nuchave : string read fnuchave write fnuchave;
    property cdverificadorchave : string read fcdverificadorchave write fcdverificadorchave;
    [AObrigatorio]
    property qtcte : integer read fqtcte write fqtcte;
    [AObrigatorio]
    property qtnfe : integer read fqtnfe write fqtnfe;
    property vlcarga : currency read fvlcarga write fvlcarga;
    property nurntrc : string read fnurntrc write fnurntrc;
    property cdciot : string read fcdciot write fcdciot;
    property qtcarga : double  read fqtcarga write fqtcarga;
    property nuprotocoloautorizacao : string read fnuprotocoloautorizacao write fnuprotocoloautorizacao;
    property nulote : integer read fnulote write fnulote;
    property dsxml : string read fdsxml write fdsxml;
    property tsprotocoloautorizacao : tdatetime read ftsprotocoloautorizacao write ftsprotocoloautorizacao;
    property nuchavenfe : string read fnuchavenfe write fnuchavenfe;
    property nurecibonfe : string read fnurecibonfe write fnurecibonfe;
    property dscancelamento : string read fdscancelamento write fdscancelamento;
    property nuprotocolocancelamento : string read fnuprotocolocancelamento write fnuprotocolocancelamento;
    property dsxmlcancel : string read fdsxmlcancel write fdsxmlcancel;
    property nuseqevento : integer read fnuseqevento write fnuseqevento;
    property nuprotocoloencerramento : string read fnuprotocoloencerramento write fnuprotocoloencerramento;
    property dsxmlencerramento : string read fdsxmlencerramento write fdsxmlencerramento;
    property dtencerramento : TDate read fdtencerramento write fdtencerramento;
    property dsobservacao : string read fdsobservacao write fdsobservacao;
    function CodigoMDFE(numdfe, a:string):integer;overload;
    function CodigoMDFE(nu:string):integer;overload;
    function ListaEmailRemetenteCTE:string;
    constructor create; overload;
    destructor destroy; override;
    function ImportarXML:boolean;
    function carregarxml(xml:string): Boolean;
    function Cancelar(dsjustificativa:string; nuprotocolo:string; xmlcancel:string):boolean;
    function VerificarUFPercurso:Boolean;
  end;

implementation

uses
  ClasseUF;

destructor TMDFE.destroy;
begin
  FreeAndNil(fserie);
  FreeAndNil(ftpmdfe);
  FreeAndNil(fmdfeufpercurso);
  freeandnil(fmdfemunicipiopercurso);
  freeandnil(fmdfelacre);
  freeandnil(fmdfedescarregamento);
  freeandnil(fmdfecarregamento);
  freeandnil(fmdfepedagio);
  freeandnil(fmdfetransportadora);
  freeandnil(fmdfeveiculo);
  inherited;
end;

function TMDFE.ImportarXML: boolean;
var
  xml : TStrings;
  filename : string;
begin
  result := false;
  xml := TStringlist.create;
  try
    if not QRotinas.getfilename(filename) then // selecionar o arquivo
    begin
      exit;
    end;
    xml.loadfromfile(filename);
    carregarxml(xml.text); // carregar em nfe
    // verificar dados do xml
    if ACBrMDFe.manifestos.Items[0].MDFe.Ide.cMDF <> numdfe then
    begin
      messagedlg('Número da nota fiscal diferente.', mtinformation, [mbok], 0);
      abort;
    end;
    // update nos campos
    dsxml := ACBrMDFe.manifestos.Items[0].XML;
    nuchavenfe := ACBrMDFe.manifestos.Items[0].MDFe.procMDFe.chMDFe;
    nuprotocoloautorizacao := ACBrMDFe.manifestos.Items[0].MDFe.procMDFe.nProt;
    TSPROTOCOLOAUTORIZACAO := ACBrMDFe.manifestos.Items[0].MDFe.procMDFe.dhRecbto;
    //dados.NURECIBONFE := dados.ACBrNFe.NotasFiscais.Items[0].NFe.Ide. autXML.Items[0]. Ide. nRec;
    cdstmdfe := 2;
    update;
    result := true;
  finally
    freeandnil(xml);
  end;
end;

constructor TMDFE.create;
begin
  inherited create;
  fserie := tserie.create;
  fmdfeufpercurso := tmdfeufpercursolist.Create;
  fmdfemunicipiopercurso := tmdfemunicipiopercursolist.Create;
  fmdfelacre := tmdfelacrelist.Create;
  fmdfedescarregamento := tmdfedescarregamentolist.Create;
  fmdfecarregamento := tmdfecarregamentolist.Create;
  fmdfeveiculo := tmdfeveiculoList.create;
  fmdfepedagio := tmdfepedagiolist.Create;
  fmdfetransportadora := tmdfetransportadoralist.Create;
  ftpmdfe := ttpmdfe.create;
end;

function TMDFE.Cancelar(dsjustificativa:string; nuprotocolo:string; xmlcancel:string): boolean;
var
  sql : TStrings;
begin
  dscancelamento          := dsjustificativa;
  nuprotocolocancelamento := nuprotocolo;
  dsxmlcancel             := xmlcancel;
  cdstmdfe                := 3;
  nuseqevento             := nuseqevento + 1;
  qtcte                   := 0;
  qtnfe                   := 0;
  vlcarga                 := 0;
  qtcarga                 := 0;
  sql := tstringlist.Create;
  try
    sql.add(update(true));
    sql.text := sql.Text + mdfedescarregamento.Cancelar(true);
    result   := ExecutaScript(sql);
  finally
    freeandnil(sql);
  end;
end;

function TMDFE.carregarxml(xml: string): Boolean;
var
  texto : TStringStream;
begin
  texto := TStringStream.Create('');
  try
    ACBrMDFe.manifestos.Clear;
    texto.WriteString(xml);
    ACBrMDFe.manifestos.LoadFromStream(texto);
    result := True;
  finally
    freeandnil(texto);
  end;
end;

function TMDFE.CodigoMDFE(nu:string):integer;
var
  cont : integer;
begin
  cont := RetornaSQLInteger('select count(*) from mdfe where cdempresa='+empresa.cdempresa.ToString+' and numdfe='+nu);
  if cont = 0 then
  begin
    exit
  end;
  if cont = 1 then
  begin
    result := RetornaSQLInteger('select cdmdfe from mdfe where cdempresa='+empresa.cdempresa.ToString+' and numdfe='+nu)
  end
  else if cont > 1 then
  begin
    result := selecionar_Entrada(_mdfe, nu);
    if result = 0 then
    begin
      result := -1;
    end;
  end;
end;

function TMDFE.CodigoMDFE(numdfe, a:string):integer;
begin
  Result := RetornaSQLInteger('select cdmdfe from mdfe where cdempresa='+empresa.cdempresa.ToString+' and cdserie='+inttostr(tpmdfe.cdserie)+' and numdfe='+numdfe);
end;

function TMDFE.ListaEmailRemetenteCTE: string;
var
  x, i : integer;
  cliente : tclientelist;
  cte : TCte;
begin
  result := '';
  cliente := tclientelist.Create;
  try
    mdfedescarregamento.Ler(cdmdfe);
    for i := 0 to mdfedescarregamento.Count - 1 do
    begin
      mdfedescarregamento.Items[i].mdfecte.Ler('cdmdfe='+inttostr(cdmdfe)+' and cdmunicipio='+inttostr(mdfedescarregamento.Items[i].cdmunicipio));
      for x := 0 to mdfedescarregamento.Items[i].mdfecte.Count - 1 do
      begin
        cte := TCte.create;
        try
          cte.Select(mdfedescarregamento.Items[i].mdfecte.Items[x].cdcte);
          if not cliente.ExisteNaLista(cte.cdremetente) then
          begin
            cliente.new;
            cliente.items[cliente.count-1].cdcliente := cte.cdremetente;
          end;
        finally
          freeandnil(cte);
        end;
      end;
    end;
    for i := 0 to cliente.Count - 1 do
    begin
      cliente.Items[i].select(cliente.Items[i].cdcliente);
      result := result + cliente.Items[i].ObterListaEmailNFE;
    end;
  finally
    freeandnil(cliente);
  end;
end;

function TMDFE.VerificarUFPercurso: Boolean;
var
  uf : tuf;
begin
  Result := True;
  if cdufinicio = cduffim then
  begin
    exit;
  end;
  uf := TUF.create;
  try
    uf.uflimite.Ler(cdufinicio);
    if (not uf.uflimite.Elimite(cduffim)) and (mdfeufpercurso.Count = 0) then
    begin
      result := False;
    end;
  finally
    FreeAndNil(uf);
  end;
end;

constructor TMDFEDescarregamento.create;
begin
  inherited create;
  fmdfenfe := tmdfenfelist.Create;
  fmdfecte := tmdfectelist.Create;
end;

destructor TMDFEDescarregamento.destroy;
begin
  freeandnil(fmdfenfe);
  freeandnil(fmdfecte);
  inherited;
end;

procedure TMDFEDescarregamento.Setmdfecte(const Value: tmdfectelist);
begin
  Fmdfecte := Value;
end;

procedure TMDFEDescarregamento.Setmdfenfe(const Value: tmdfenfelist);
begin
  Fmdfenfe := Value;
end;

function TMDFEveiculoList.GetItem(Index: Integer): TMDFEveiculo;
begin
  Result := TMDFEveiculo(Inherited Items[Index]);
end;

function TMDFEveiculoList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_MDFEveiculo, codigo, _cdmdfe));
  try
    Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TMDFEveiculoList.Ler(Dataset: TDataset): boolean;
begin
  clear;
  result := false;
  dataset.first;
  while not dataset.Eof do
  begin
    new.Select(dataset);
    dataset.Next;
    result := true;
  end;
end;

function TMDFEveiculoList.New: TMDFEveiculo;
begin
  Result := TMDFEveiculo.Create;
  Add(Result);
end;

procedure TMDFEveiculoList.SetItem(Index: Integer; const Value: TMDFEveiculo);
begin
  Put(Index, Value);
end;

{ TMDFETransportadoraList }

function TMDFETransportadoraList.GetItem(Index: Integer): TMDFETransportadora;
begin
  Result := TMDFETransportadora(Inherited Items[Index]);
end;

function TMDFETransportadoraList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_MDFETransportadora, codigo, _cdmdfe));
  try
    Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TMDFETransportadoraList.Ler(Dataset: TDataset): boolean;
begin
  clear;
  result := false;
  dataset.first;
  while not dataset.Eof do
  begin
    new.Select(dataset);
    dataset.Next;
    result := true;
  end;
end;

function TMDFETransportadoraList.New: TMDFETransportadora;
begin
  Result := TMDFETransportadora.Create;
  Add(Result);
end;

procedure TMDFETransportadoraList.SetItem(Index: Integer; const Value: TMDFETransportadora);
begin
  Put(Index, Value);
end;

{ TMDFEPedagioList }

function TMDFEPedagioList.GetItem(Index: Integer): TMDFEPedagio;
begin
  Result := TMDFEPedagio(Inherited Items[Index]);
end;

function TMDFEPedagioList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_MDFEPedagio, codigo, _cdmdfe));
  try
    Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TMDFEPedagioList.Ler(Dataset: TDataset): boolean;
begin
  clear;
  result := false;
  dataset.first;
  while not dataset.Eof do
  begin
    new.Select(dataset);
    dataset.Next;
    result := true;
  end;
end;

function TMDFEPedagioList.New: TMDFEPedagio;
begin
  Result := TMDFEPedagio.Create;
  Add(Result);
end;

procedure TMDFEPedagioList.SetItem(Index: Integer; const Value: TMDFEPedagio);
begin
  Put(Index, Value);
end;

{ TMDFECarregamentoList }

function TMDFECarregamentoList.GetItem(Index: Integer): TMDFECarregamento;
begin
  Result := TMDFECarregamento(Inherited Items[Index]);
end;

function TMDFECarregamentoList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_MDFECarregamento, codigo, _cdmdfe));
  try
    Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TMDFECarregamentoList.Ler(Dataset: TDataset): boolean;
begin
  clear;
  result := false;
  dataset.first;
  while not dataset.Eof do
  begin
    new.Select(dataset);
    dataset.Next;
    result := true;
  end;
end;

function TMDFECarregamentoList.New: TMDFECarregamento;
begin
  Result := TMDFECarregamento.Create;
  Add(Result);
end;

procedure TMDFECarregamentoList.SetItem(Index: Integer; const Value: TMDFECarregamento);
begin
  Put(Index, Value);
end;

{ TMDFELacreList }

function TMDFELacreList.GetItem(Index: Integer): TMDFELacre;
begin
  Result := TMDFELacre(Inherited Items[Index]);
end;

function TMDFELacreList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_MDFELacre, codigo, _cdmdfe));
  try
    Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TMDFELacreList.Ler(Dataset: TDataset): boolean;
begin
  clear;
  result := false;
  dataset.first;
  while not dataset.Eof do
  begin
    new.Select(dataset);
    dataset.Next;
    result := true;
  end;
end;

function TMDFELacreList.New: TMDFELacre;
begin
  Result := TMDFELacre.Create;
  Add(Result);
end;

procedure TMDFELacreList.SetItem(Index: Integer; const Value: TMDFELacre);
begin
  Put(Index, Value);
end;

{ TMDFENFEList }

function TMDFENFEList.Cancelar(boscript: boolean): string;
var
  I: Integer;
begin
  result := '';
  for I := 0 to count - 1 do
  begin
    if result <> '' then
    begin
      result := result + #13;
    end;
    result := result + items[i].Delete(boscript);
  end;
end;

function TMDFENFEList.GetItem(Index: Integer): TMDFENFE;
begin
  Result := TMDFENFE(Inherited Items[Index]);
end;

function TMDFENFEList.Ler(Dataset: TDataset): boolean;
begin
  clear;
  result := false;
  dataset.first;
  while not dataset.Eof do
  begin
    new.Select(dataset);
    dataset.Next;
    result := true;
  end;
end;

function TMDFENFEList.Ler(sqlwhere:string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_where(_MDFENFE, sqlwhere));
  try
    Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TMDFENFEList.New: TMDFENFE;
begin
  Result := TMDFENFE.Create;
  Add(Result);
end;

procedure TMDFENFEList.SetItem(Index: Integer; const Value: TMDFENFE);
begin
  Put(Index, Value);
end;

{ TMDFECTEList }

function TMDFECTEList.Cancelar(boscript: boolean): string;
var
  I: Integer;
begin
  result := '';
  for I := 0 to count - 1 do
  begin
    if result <> '' then
    begin
      result := result + #13;
    end;
    result := result + items[i].Delete(boscript);
  end;
end;

function TMDFECTEList.GetItem(Index: Integer): TMDFECTE;
begin
  Result := TMDFECTE(Inherited Items[Index]);
end;

function TMDFECTEList.Ler(Dataset: TDataset): boolean;
begin
  clear;
  result := false;
  dataset.first;
  while not dataset.Eof do
  begin
    new.Select(dataset);
    dataset.Next;
    result := true;
  end;
end;

function TMDFECTEList.Ler(sqlwhere:string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_where(_MDFECTE, sqlwhere));
  try
    Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TMDFECTEList.New: TMDFECTE;
begin
  Result := TMDFECTE.Create;
  Add(Result);
end;

procedure TMDFECTEList.SetItem(Index: Integer; const Value: TMDFECTE);
begin
  Put(Index, Value);
end;

function TMDFEDescarregamentoList.Cancelar(boscript:boolean=false): string;
var
  I: Integer;
  texto : string;
begin
  result := '';
  for I := 0 to count - 1 do
  begin
    if result <> '' then
    begin
      result := result + #13;
    end;
    texto := items[i].mdfecte.cancelar(boscript);
    if texto <> '' then
    begin
      result := result + texto+#13;
    end;
    texto := items[i].mdfenfe.Cancelar(boscript);
    if texto <> '' then
    begin
      result := result + texto;
    end;
  end;
end;

function TMDFEDescarregamentoList.GetItem(Index: Integer): TMDFEDescarregamento;
begin
  Result := TMDFEDescarregamento(Inherited Items[Index]);
end;

function TMDFEDescarregamentoList.Ler(Dataset, dscte, dsnfe: TDataset): boolean;
begin
  clear;
  result := false;
  dataset.first;
  while not dataset.Eof do
  begin
    new.Select(dataset);
    items[count-1].mdfecte.ler(dscte);
    items[count-1].mdfenfe.ler(dsnfe);
    dataset.Next;
    result := true;
  end;
end;

function TMDFEDescarregamentoList.Ler(Dataset: TDataset): boolean;
begin
  clear;
  result := false;
  dataset.first;
  while not dataset.Eof do
  begin
    new.Select(dataset);
    dataset.Next;
    result := true;
  end;
end;

function TMDFEDescarregamentoList.Ler(codigo: integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_MDFEDescarregamento, codigo, _cdmdfe));
  try
    Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TMDFEDescarregamentoList.New: TMDFEDescarregamento;
begin
  Result := TMDFEDescarregamento.Create;
  Add(Result);
end;

procedure TMDFEDescarregamentoList.SetItem(Index: Integer; const Value: TMDFEDescarregamento);
begin
  Put(Index, Value);
end;

function TMDFEMunicipioPercursoList.GetItem(Index: Integer): TMDFEMunicipioPercurso;
begin
  Result := TMDFEMunicipioPercurso(Inherited Items[Index]);
end;

function TMDFEMunicipioPercursoList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_MDFEMunicipioPercurso, codigo, _cdmdfe));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    while not q.q.Eof do
    begin
      new.select(q.q);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TMDFEMunicipioPercursoList.New: TMDFEMunicipioPercurso;
begin
  Result := TMDFEMunicipioPercurso.Create;
  Add(Result);
end;

procedure TMDFEMunicipioPercursoList.SetItem(Index: Integer; const Value: TMDFEMunicipioPercurso);
begin
  Put(Index, Value);
end;

{ TMDFEUFPercursoList }

function TMDFEUFPercursoList.GetItem(Index: Integer): TMDFEUFPercurso;
begin
  Result := TMDFEUFPercurso(Inherited Items[Index]);
end;

function TMDFEUFPercursoList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_MDFEUFPercurso, codigo, _cdmdfe));
  try
    Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TMDFEUFPercursoList.Ler(Dataset: TDataset): boolean;
begin
  clear;
  result := false;
  dataset.first;
  while not dataset.Eof do
  begin
    new.Select(dataset);
    dataset.Next;
    result := true;
  end;
end;

function TMDFEUFPercursoList.New: TMDFEUFPercurso;
begin
  Result := TMDFEUFPercurso.Create;
  Add(Result);
end;

procedure TMDFEUFPercursoList.SetItem(Index: Integer; const Value: TMDFEUFPercurso);
begin
  Put(Index, Value);
end;

procedure TTpMDFE.Setcdserie(const Value: integer);
begin
  Fcdserie := Value;
end;

procedure TMDFENFE.Setcdmdfenfe(const Value: integer);
begin
  Fcdmdfenfe := Value;
end;

end.
