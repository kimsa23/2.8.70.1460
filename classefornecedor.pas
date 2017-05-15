unit classefornecedor;

interface

uses
  System.Contnrs, system.UITypes, data.db,
  forms, sysutils, ComCtrls, classes, StdCtrls, Controls, ExtCtrls, dialogs,
  uRegistro, udatahora, ustrings, uprogressbar, uconstantes,
  classecopiarregistro, classeempresa, classeregistrainformacao, classegerar,
  classeuf, classeEndereco, classeexecutasql,
  classeretornasql, classemunicipio, classeaplicacao, classequery,
  classepais, classedao;

type
  TItfornecedorEmail = class(TRegistroQuipos)
  private
    Fcdfornecedor: LargeInt;
    Fcditfornecedoremail: integer;
    Femail: string;
    Fbonfe: string;
    Fboboleto: string;
  public
    [keyfield]
    property cditfornecedoremail : integer read Fcditfornecedoremail write Fcditfornecedoremail;
    [fk]
    property cdfornecedor : LargeInt read Fcdfornecedor write Fcdfornecedor;
    [Aobrigatorio]
    property email : string read Femail write Femail;
  end;
  TItfornecedorEmailList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItfornecedorEmail;
    procedure SetItem(Index: Integer; const Value: TItfornecedorEmail);
  public
    function New: TItfornecedorEmail;
    property Items[Index: Integer]: TItfornecedorEmail read GetItem write SetItem;
    function Ler(codigo:LargeInt; cdfield:string=_cdfornecedor):Boolean;overload;
    function Ler(DataSet: TDataset):boolean;overload;
  end;
  Tclfornecedor = class(TPersintentObject)
  private
    Fltclassificacao: string;
    Fnmclfornecedor: string;
    Fvlmaximo: integer;
    Fvlminimo: integer;
    Fcdclfornecedor: integer;
    Fbocredenciado: String;
  public
    [keyfield]
    property cdclfornecedor : integer read Fcdclfornecedor write Fcdclfornecedor;
    property nmclfornecedor : string read Fnmclfornecedor write Fnmclfornecedor;
    property ltclassificacao : string read Fltclassificacao write Fltclassificacao;
    property vlminimo : integer read Fvlminimo write Fvlminimo;
    property vlmaximo : integer read Fvlmaximo write Fvlmaximo;
    property bocredenciado : String read Fbocredenciado write Fbocredenciado;
    function Select(const AValue: Integer):boolean;overload;
  end;
  TStfornecedor = class(TRegistroQuipos)
  private
    Fbonovo: String;
    Fboexcluir: String;
    Fboalterar: String;
    Fbogerarsaida: String;
    Fbogerarinfo: String;
    Fbogerarentrada: String;
    Fcdstfornecedor: integer;
    Fnucor: integer;
    Fnmstfornecedor: string;
  public
    [keyfield]
    property cdstfornecedor : integer read Fcdstfornecedor write Fcdstfornecedor;
    property nmstfornecedor : string read Fnmstfornecedor write Fnmstfornecedor;
    property nucor : integer read Fnucor write Fnucor;
    property bonovo : String read Fbonovo write Fbonovo;
    property boalterar : String read Fboalterar write Fboalterar;
    property boexcluir : String read Fboexcluir write Fboexcluir;
    property bogerarinfo : String read Fbogerarinfo write Fbogerarinfo;
    property bogerarsaida : String read Fbogerarsaida write Fbogerarsaida;
    property bogerarentrada : String read Fbogerarentrada write Fbogerarentrada;
  end;
  TItContFornecedor = class(TRegistroQuipos)
  private
    Femail: string;
    Fnmsetor: string;
    Fnufax: string;
    Fnmitcontfornecedor: string;
    Fcdfornecedor: LargeInt;
    Fnmfuncao: string;
    Fcditcontfornecedor: integer;
    Fhomepage: string;
    Fnuramal: string;
    Fnufone2: string;
    Fnufone1: string;
    Fnmdepartamento: string;
  public
    [keyfield]
    property cditcontfornecedor : integer read Fcditcontfornecedor write Fcditcontfornecedor;
    property cdfornecedor : LargeInt read Fcdfornecedor write Fcdfornecedor;
    property nmitcontfornecedor : string read Fnmitcontfornecedor write Fnmitcontfornecedor;
    property email : string read Femail write Femail;
    property homepage : string read Fhomepage write Fhomepage;
    property nuramal : string read Fnuramal write Fnuramal;
    property nufone1 : string read Fnufone1 write Fnufone1;
    property nufone2 : string read Fnufone2 write Fnufone2;
    property nufax : string read Fnufax write Fnufax;
    property nmdepartamento : string read Fnmdepartamento write Fnmdepartamento;
    property nmsetor : string read Fnmsetor write Fnmsetor;
    property nmfuncao : string read Fnmfuncao write Fnmfuncao;
  end;
  TFornecedor = class(TRegistroQuipos)
  private
    fpais: TPais;
    Fcdtpfornecedor: integer;
    Fnmcontato: string;
    Fbocteseguradora: string;
    Fbooptantesimples: string;
    Fnuddg1: string;
    Fboavaliacao: string;
    Fdsendereco: string;
    Fnupontuacaoiqf: double;
    Fdtcadastro: TDate;
    Fdtfundacao: TDate;
    Fcdestcivil: string;
    Fnucnpj: string;
    Femail: string;
    Fcdfornecedorantigo: string;
    Fcdindiedest: integer;
    Fnmmae: string;
    Fnufax: string;
    Fcdmunicipio: integer;
    Fdsobservacao: string;
    Fcdplconta: integer;
    Fnuinscest: string;
    Fcdrmatividade: integer;
    Fcdfornecedor: LargeInt;
    Fnmnaturalidade: string;
    Fnucntcontabil: string;
    Fnuidentid: string;
    Fnucpf: string;
    Fbonenviarpdf: string;
    Fnmpai: string;
    Fnmbairro: string;
    Fnmconjuge: string;
    Fcdsexo: string;
    Fnucep: string;
    Fdtnascimento: TDate;
    Fcdtpregime: integer;
    Fcdpais: integer;
    Fdtdescredenciamento: TDate;
    Fnuplconta: string;
    Fdsnumero: string;
    Fdtinicioavaliacao: TDate;
    Fcdbanco: integer;
    Fhomepage: string;
    Fbocritico: string;
    Fcdclfornecedor: integer;
    Fnufone2: string;
    Fnufone3: string;
    Fdscomplemento: string;
    Ftppessoa: string;
    Fnufone1: string;
    Fnucxpostal: string;
    Frzsocial: string;
    Fcdcntcusto: integer;
    Fnuagencia: string;
    Fnucodigohistoricopagto: integer;
    Fnuddg2: string;
    Fnmfornecedor: string;
    Fcduf: integer;
    Fnucntcorrente: string;
    Fcdstfornecedor: integer;
    Fuf: TUf;
    Fmunicipio: TMunicipio;
    Fstfornecedor: TStFornecedor;
    Fclfornecedor: TClFornecedor;
    Fnucntcusto: string;
    fitfornecedoremail: TItfornecedorEmailList;
  public
    property itfornecedoremail : TItfornecedorEmailList read fitfornecedoremail write fitfornecedoremail;
    property clfornecedor : TClFornecedor read Fclfornecedor write fclfornecedor;
    property stfornecedor : TStFornecedor read Fstfornecedor write fstfornecedor;
    property pais : TPais read fpais write fpais;
    property municipio : TMunicipio read Fmunicipio write fmunicipio;
    property uf : TUf read Fuf write fuf;
    [keyfield]
    property cdfornecedor : Largeint read Fcdfornecedor write fcdfornecedor;
    [fk]
    property cduf : integer read Fcduf write fcduf;
    [fk]
    property cdstfornecedor : integer read Fcdstfornecedor write fcdstfornecedor;
    [fk]
    property cdbanco : integer read Fcdbanco write fcdbanco;
    [fk]
    property cdclfornecedor : integer read Fcdclfornecedor write fcdclfornecedor;
    [fk]
    property cdrmatividade : integer read Fcdrmatividade write fcdrmatividade;
    [fk]
    property cdmunicipio : integer read Fcdmunicipio write fcdmunicipio;
    property nmfornecedor : string read Fnmfornecedor write fnmfornecedor;
    property rzsocial : string read Frzsocial write frzsocial;
    property dsendereco : string read Fdsendereco write fdsendereco;
    property nmbairro : string read Fnmbairro write fnmbairro;
    property nucep : string read Fnucep write fnucep;
    property nucxpostal : string read Fnucxpostal write fnucxpostal;
    property nufone1 : string read Fnufone1 write fnufone1;
    property nufone2 : string read Fnufone2 write fnufone2;
    property nufone3 : string read Fnufone3 write fnufone3;
    property nufax : string read Fnufax write fnufax;
    property tppessoa : string read Ftppessoa write ftppessoa;
    property nuinscest : string read Fnuinscest write fnuinscest;
    property nucnpj : string read Fnucnpj write fnucnpj;
    property nucpf : string read Fnucpf write fnucpf;
    property nuidentid : string read Fnuidentid write fnuidentid;
    property dtnascimento : TDate read Fdtnascimento write fdtnascimento;
    property cdsexo : string read Fcdsexo write fcdsexo;
    property cdestcivil : string read Fcdestcivil write fcdestcivil;
    property nmmae : string read Fnmmae write fnmmae;
    property nmpai : string read Fnmpai write fnmpai;
    property nmconjuge : string read Fnmconjuge write fnmconjuge;
    property nuagencia : string read Fnuagencia write fnuagencia;
    property nucntcorrente : string read Fnucntcorrente write fnucntcorrente;
    property nucntcontabil : string read Fnucntcontabil write fnucntcontabil;
    property email : string read Femail write femail;
    property homepage : string read Fhomepage write fhomepage;
    property dsobservacao : string read Fdsobservacao write fdsobservacao;
    property dtinicioavaliacao : TDate read Fdtinicioavaliacao write fdtinicioavaliacao;
    property dtdescredenciamento : TDate read Fdtdescredenciamento write fdtdescredenciamento;
    property boavaliacao : string read Fboavaliacao write fboavaliacao;
    property nuddg1 : string read Fnuddg1 write fnuddg1;
    property nuddg2 : string read Fnuddg2 write fnuddg2;
    property dtfundacao : TDate read Fdtfundacao write fdtfundacao;
    property nmcontato : string read Fnmcontato write fnmcontato;
    property dsnumero : string read Fdsnumero write fdsnumero;
    property dscomplemento : string read Fdscomplemento write fdscomplemento;
    property nmnaturalidade : string read Fnmnaturalidade write fnmnaturalidade;
    property nucodigohistoricopagto : integer read Fnucodigohistoricopagto write fnucodigohistoricopagto;
    property booptantesimples : string read Fbooptantesimples write fbooptantesimples;
    [fk]
    property cdtpfornecedor : integer read Fcdtpfornecedor write fcdtpfornecedor;
    property cdfornecedorantigo : string read Fcdfornecedorantigo write fcdfornecedorantigo;
    property dtcadastro : TDate read Fdtcadastro write fdtcadastro;
    property bocritico : string read Fbocritico write fbocritico;
    property bonenviarpdf : string read Fbonenviarpdf write fbonenviarpdf;
    property nupontuacaoiqf : double read Fnupontuacaoiqf write fnupontuacaoiqf;
    [fk]
    property cdpais : integer read Fcdpais write fcdpais;
    [fk]
    property cdplconta : integer read Fcdplconta write fcdplconta;
    property nuplconta : string read Fnuplconta write fnuplconta;
    [fk]
    property cdtpregime : integer read Fcdtpregime write fcdtpregime;
    [fk]
    property cdcntcusto : integer read Fcdcntcusto write fcdcntcusto;
    property nucntcusto : string read Fnucntcusto write Fnucntcusto;
    property bocteseguradora : string read Fbocteseguradora write fbocteseguradora;
    property cdindiedest : integer read Fcdindiedest write fcdindiedest;
    constructor create;
    destructor destroy; override;
    function CodigoAdiantamentoAberto(cdfornecedor:string):string;
    function ExportarNFE(path: string; dti, dtf: TDate; bofornecedor:Boolean=true): boolean;
    procedure Listaemail(lstemail: TStrings);
    function CalcularIQF: boolean;
    function GerarAvaliacaoHistorico:Boolean;
    function GerarCodigoReduzido:Boolean;
    function hint_rzsocial : string;
    function get_tpregime: string;
    function Insert(boscript:boolean=false): String;
  end;

implementation

function Tclfornecedor.Select(const AValue: Integer): boolean;
begin
  cdclfornecedor := avalue;
  result := inherited select;
end;

procedure TFornecedor.Listaemail(lstemail: TStrings);
var
  q : TClasseQuery;
begin
  email := RetornaSQLString('select email from fornecedor where cdempresa='+empresa.cdempresa.ToString+' and cdfornecedor='+cdfornecedor.tostring);
  q := TClasseQuery.Create('select email from itfornecedoremail where cdempresa='+empresa.cdempresa.ToString+' and cdfornecedor='+cdfornecedor.tostring);
  try
    while not q.q.Eof do
    begin
      lstemail.Add(q.q.fieldbyname(_email).AsString);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TFornecedor.CodigoAdiantamentoAberto(cdfornecedor:string):string;
begin
  result := retornasqlstring('select cdadntfornecedor from adntfornecedor where cdempresa='+empresa.cdempresa.ToString+' and cdfornecedor='+cdfornecedor+' and vlsaldo>0 order by dtentrada');
end;

constructor TFornecedor.create;
begin
  inherited;
  fpais := tpais.create;
  fuf := tuf.create;
  fitfornecedoremail := TItfornecedorEmailList.Create;
  fclfornecedor := TClFornecedor.create;
  fstfornecedor := TStFornecedor.create;
  fmunicipio := TMunicipio.create;
end;

destructor TFornecedor.destroy;
begin
  FreeAndNil(fitfornecedoremail);
  FreeAndNil(fpais);
  freeandnil(fuf);
  freeandnil(fclfornecedor);
  freeandnil(fstfornecedor);
  freeandnil(fmunicipio);
  inherited;
end;

function TFornecedor.ExportarNFE(path: string; dti, dtf: TDate; bofornecedor:Boolean=true): boolean;
  function makesql:string;
  begin
    result := 'select nuchavenfe'+
                    ',dsxml'+
                    ',nuentrada'+
                    ',dtemissao '+
              'from entrada '+
              'where cdempresa='+empresa.cdempresa.ToString+' and dtsaida between '+getdtbanco(dti)+' and '+getdtbanco(dtf);
    if bofornecedor then
    begin
      result := result + ' and cdfornecedor='+cdfornecedor.tostring;
    end;
  end;
var
  q : TClasseQuery;
  arquivo : tstrings;
begin
  result := false;
  q := TClasseQuery.create(makesql);
  arquivo := tstringlist.create;
  try
    while not q.q.eof do
    begin
      arquivo.Text := q.q.FieldByName(_dsxml).asstring;
      if q.q.fieldbyname(_nuchavenfe).AsString <> '' then
      begin
        arquivo.SaveToFile(path+'\'+q.q.fieldbyname(_nuchavenfe).AsString+'.xml');
      end
      else
      begin
        arquivo.SaveToFile(path+'\NF '+q.q.fieldbyname(_nuentrada).AsString+' - Emissao '+FormatDateTime('DD-MM-YYYY', q.q.fieldbyname(_dtemissao).AsDateTime)+'.xml');
      end;
      q.q.next;
      result := true;
    end;
  finally
    freeandnil(q);
    freeandnil(arquivo);
  end;
end;

function TFornecedor.CalcularIQF: boolean;
  function makesql:string;
  begin
    result := 'select cdfornecedor from fornecedor where bocritico=''S'' and cdempresa='+empresa.cdempresa.ToString;
  end;
  function makesqla(cdfornecedor:string):string;
  begin
    result := 'select o.cdordcompra,o.cdfornecedor,s.nmstavaliacaoiqf,a.dtemissao '+
              'from ordcompra o '+
              'inner join avaliacaoiqf a on a.cdordcompra=o.cdordcompra and o.cdempresa=a.cdempresa '+
              'inner join stavaliacaoiqf s on s.cdstavaliacaoiqf=a.cdstavaliacaoiqf '+
              'where o.cdempresa='+empresa.cdempresa.ToString+' and o.cdfornecedor='+cdfornecedor+' and a.dtemissao>='+quotedstr(FormatDateTime(_mm_dd_yyyy, empresa.fornecedor.IQF.dtinicio))+' '+
              'order by a.dtemissao';
  end;
  function makesqlh(cdfornecedor:string):string;
  begin
    result := 'select cdhclfornecedor,tsavaliacao from hclfornecedor where cdordcompra is null and cdempresa='+empresa.cdempresa.ToString+' and cdfornecedor='+cdfornecedor+' order by tsavaliacao'; // ler historico sem ordem compra
  end;
  function Existe_avaliacao_inicial(cdfornecedor:string):Boolean;
  begin
    result := RetornaSQLInteger('select count(*) from hclfornecedor where cdempresa='+empresa.cdempresa.ToString+' and cdfornecedor='+cdfornecedor)>0;
  end;
var
  c, ch, ca : TClasseQuery;
  sql : tstrings;
  procedure registrar_historico(cdfornecedor, cdclfornecedor: string; nupontuacaoiqf : Double; dtavaliacao: TDate; cdordcompra:string='');
  begin
    if cdordcompra = '' then
    begin
      cdordcompra := _null;
    end;
    sql.Add('insert into hclfornecedor(cdordcompra,CDHCLFORNECEDOR,CDCLFORNECEDOR,CDFORNECEDOR,tsavaliacao,VLIQF,DSOBSERVACAO,'+_sqlreg+
             cdordcompra+','+GerarCodigo(_h+_clfornecedor)+','+cdclfornecedor+','+cdfornecedor+','+GettsBanco(dtavaliacao)+','+getcurrencys(nupontuacaoiqf)+',null,'+SQLRegistra+';');
  end;
  procedure atualizar_saldo_historico_iqf(cdfornecedor, cdclfornecedor:string; nupontuacaoiqf : double);
  begin
    sql.Add('update fornecedor set cdclfornecedor='+cdclfornecedor+',nupontuacaoiqf='+getcurrencys(nupontuacaoiqf)+' where cdempresa='+empresa.cdempresa.ToString+' and cdfornecedor='+cdfornecedor+';');
  end;
  procedure inserir_avaliacao_inicial(cdfornecedor:string);
  begin
    registrar_historico(cdfornecedor, _1, 100, Empresa.fornecedor.IQF.dtinicio);
    atualizar_saldo_historico_iqf(cdfornecedor, _1, 100);
  end;
  procedure ler_historico_iqf(cdfornecedor:string);
  begin
    ch.q.Close;
    ch.q.sql.Text := makesqlh(cdfornecedor);
    ch.q.Open;
  end;
  procedure ler_avallaicao_iqf(cdfornecedor:string);
  begin
    ca.q.Close;
    ca.q.sql.Text := makesqla(cdfornecedor);
    ca.q.Open;
  end;
  procedure processar_avaliacao; // processar ordem por ordem de compra pela data de avaliacao
  var
    cdclfornecedor : string;
    nupontuacaoiqf : double;
    iaprovado, ireprovado, irestricao : integer;
    procedure acumular_por_status;
    begin
           if ca.q.fieldbyname(_nm+_st+_avaliacao+_iqf).AsString = 'APROVADO'  then Inc(iaprovado)
      else if ca.q.fieldbyname(_nm+_st+_avaliacao+_iqf).AsString = 'RESTRICAO' then Inc(irestricao)
      else if ca.q.fieldbyname(_nm+_st+_avaliacao+_iqf).AsString = 'REPROVADO' then Inc(ireprovado);
    end;
    procedure calcular_pontuacao;
    begin
      nupontuacaoiqf := ((100 * iaprovado) + (25*irestricao) + (5 * ireprovado))/(iaprovado+irestricao+ireprovado);
    end;
    procedure determinar_classificacao;
    begin
           if nupontuacaoiqf >= 80 then cdclfornecedor := _1
      else if nupontuacaoiqf >= 60 then cdclfornecedor := _2
      else                              cdclfornecedor := _3;
    end;
  begin
    iaprovado  := 0;
    ireprovado := 0;
    irestricao := 0;
    if ca.q.RecordCount < empresa.fornecedor.IQF.nuavaliacao then
    begin
      exit;
    end;
    while not ca.q.Eof do
    begin
      sql.Add('delete from hclfornecedor where cdempresa='+empresa.cdempresa.ToString+' and cdordcompra='+ca.q.fieldbyname(_cdordcompra).asstring+';');
      acumular_por_status;
      calcular_pontuacao;
      determinar_classificacao;
      registrar_historico(c.q.fieldbyname(_cdfornecedor).AsString, cdclfornecedor, nupontuacaoiqf, ca.q.fieldbyname(_dtemissao).AsDateTime, ca.q.fieldbyname(_cdordcompra).asstring);
      ca.q.Next;
    end;
    if cdclfornecedor <> '' then
    begin
      atualizar_saldo_historico_iqf(c.q.FieldByName(_cdfornecedor).AsString, cdclfornecedor, nupontuacaoiqf);
    end;
  end;
begin
  if empresa.fornecedor.IQF.dtinicio = 0 then
  begin
    MessageDlg('A data de início do IQF não está definido no cadastro empresa.', mtInformation, [mbOK], 0);
    abort;
  end;
  c   := TClasseQuery.Create(makesql);
  ca  := TClasseQuery.Create;
  ch  := TClasseQuery.Create;
  frmprogressbar := Tfrmprogressbar.Create(nil);
  sql := TStringList.Create;
  try
    frmprogressbar.Show;
    frmprogressbar.gau.MaxValue := c.q.RecordCount;
    while not c.q.Eof do
    begin
      frmprogressbar.gau.Progress := c.q.RecNo;
      Application.ProcessMessages;
      // verificar se forneceodor tem lancamento inicio de avaliacao
      if not existe_avaliacao_inicial(c.q.FieldByName(_cdfornecedor).AsString) then
      begin
        inserir_avaliacao_inicial(c.q.FieldByName(_cdfornecedor).AsString);
      end;
      ler_historico_iqf (c.q.FieldByName(_cdfornecedor).AsString);
      ler_avallaicao_iqf(c.q.FieldByName(_cdfornecedor).AsString);
      processar_avaliacao;
      c.q.Next;
    end;
    if sql.Count > 0 then
    begin
      ExecutaScript(sql);
    end;
    result := True;
  finally
    freeandnil(c);
    freeandnil(ca);
    freeandnil(ch);
    freeandnil(sql);
    freeandnil(frmprogressbar);
  end;
end;

function TFornecedor.GerarAvaliacaoHistorico: Boolean;
  function makesql:string;
  begin
    result := 'select cdordcompra,vliqf,tsavaliacao from hclfornecedor';
  end;
  function existe_avaliacao(cdordcompra:string):Boolean;
  begin
    result := CodigodoCampo(_avaliacao+_iqf, cdordcompra, _cdordcompra) <> '';
  end;
var
  s, ctpcriterioiqf : TClasseQuery;
  sql : tstrings;
  procedure gerar_avaliacao(cdordcompra:string; tsavaliacao:TDatetime);
    function cdstavaliacaoiqf:string;
    begin
           if s.q.FieldByName(_vl+_iqf).AsCurrency >= 80 then result := _1
      else if s.q.FieldByName(_vl+_iqf).AsCurrency >= 60 then result := _2
      else                                                  result := _3;
    end;
  var
    cdavaliacaoiqf :string;
    procedure inserir_avaliacao;
    begin
      cdavaliacaoiqf := GerarCodigo(_avaliacao+_iqf);
      sql.Add('insert into avaliacaoiqf(CDAVALIACAOIQF,CDSTAVALIACAOIQF,CDORDCOMPRA,DSOBSERVACAO,NURNC,DTEMISSAO,'+_sqlreg+
               cdavaliacaoiqf+','+
               cdstavaliacaoiqf+','+
               cdordcompra+',null,null,'+GetDtBanco(tsavaliacao)+','+SQLRegistra+';');
    end;
    procedure inserir_itavaliacao;
    begin
      ctpcriterioiqf.q.First;
      while not ctpcriterioiqf.q.Eof do
      begin
        sql.Add('insert into itavaliacaoiqf(CDITAVALIACAOIQF,CDAVALIACAOIQF,CDTPCRITERIOIQF,BORESPOSTA,'+_sqlreg+
                 GerarCodigo(_it+_avaliacao+_iqf)+','+cdavaliacaoiqf+','+ctpcriterioiqf.q.fieldbyname(_cd+_tp+_criterio+_iqf).asstring+',''S'','+SQLRegistra+';');
        ctpcriterioiqf.q.Next;
      end;
    end;
  begin
    inserir_avaliacao;
    inserir_itavaliacao;
  end;
begin
  s              := TClasseQuery.Create(makesql);
  ctpcriterioiqf := TClasseQuery.Create('select cdtpcriterioiqf from tpcriterioiqf');
  sql            := TStringList.Create;
  try
    while not s.q.Eof do
    begin
      if (not s.q.FieldByName(_cdordcompra).IsNull) and (not existe_avaliacao(s.q.FieldByName(_cdordcompra).AsString))then
      begin
        gerar_avaliacao(s.q.fieldbyname(_cdordcompra).AsString, s.q.fieldbyname(_ts+_avaliacao).AsDateTime);
      end;
      s.q.Next;
    end;
    if sql.Count > 0 then
    begin
      ExecutaScript(sql);
    end;
    result := true;
  finally
    freeandnil(s);
    freeandnil(ctpcriterioiqf);
    freeandnil(sql);
  end;
end;

function TFornecedor.GerarCodigoReduzido: Boolean;
var
  s : TClasseQuery;
  newcod : LargeInt;
  reg_alterado : Integer;
  procedure atualizar_tabela(tabela:string; dsadicional: string=''; nome:string='cdfornecedor');
  begin
    ExecutaSQL('update '+tabela+' set '+nome+dsadicional+'='+newcod.ToString+' where cdempresa='+empresa.cdempresa.ToString+' and '+nome+dsadicional+'='+s.q.fieldbyname(_cdfornecedor).AsString);
  end;
begin
  s := TClasseQuery.Create('SELECT CDFORNECEDOR,NUCNPJ,NUCPF FROM FORNECEDOR where cdempresa='+empresa.cdempresa.ToString+' ORDER BY CDFORNECEDOR');
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    frmprogressbar.gau.MaxValue := 100;
    frmprogressbar.Show;
    reg_alterado := 0;
    while not s.q.Eof do
    begin
      if frmprogressbar.gau.Progress = 100 then
      begin
        frmprogressbar.gau.Progress := 0;
      end;
      Application.Title           := s.q.fieldbyname(_cdfornecedor).AsString;
      frmprogressbar.gau.Progress := frmprogressbar.gau.Progress + 1;
      Application.ProcessMessages;
      if ((removercaracteres(RemoverCaracterInicio(s.q.FieldByName(_nucnpj).AsString, _0)) <> s.q.FieldByName(_cdfornecedor).AsString) and
         (removercaracteres(RemoverCaracterInicio(s.q.FieldByName(_nucpf).AsString, _0)) <> s.q.FieldByName(_cdfornecedor).AsString) and
         (Length(s.q.fieldbyname(_cdfornecedor).AsString) <7)) or (s.q.fieldbyname(_cdfornecedor).AsString = '')then
      begin
        s.q.Next;
        continue;
      end;
      inc(reg_alterado);
      // copiar dados do cliente
      newcod := copiar_registro(s.q.fieldbyname(_cdfornecedor).AsLargeInt, _fornecedor          , _cdfornecedor,     0, '', '');
      // copiar dados dos itens
      copiar_registro(s.q.fieldbyname(_cdfornecedor).AsLargeInt, _it+_cont+_fornecedor          , _cdfornecedor, newcod, '', '');
      copiar_registro(s.q.fieldbyname(_cdfornecedor).AsLargeInt, _it+_fornecedor+_arquivo       , _cdfornecedor, newcod, '', '');
      copiar_registro(s.q.fieldbyname(_cdfornecedor).AsLargeInt, _it+_fornecedor+_email         , _cdfornecedor, newcod, '', '');
      copiar_registro(s.q.fieldbyname(_cdfornecedor).AsLargeInt, _it+_pre+_selecao+_fornecedor  , _cdfornecedor, newcod, '', '');

      // alterar dados nas tabelas relacionadas
      atualizar_tabela(_adntfornecedor);
      atualizar_tabela(_ativo+_pis+_cofins);
      atualizar_tabela(_autpagto);
      atualizar_tabela(_cte+_informacao+_seguro);
      atualizar_tabela(_entrada);
      atualizar_tabela(_equipamento);
      atualizar_tabela(_h+_cl+_fornecedor);
      atualizar_tabela(_h+_estoque+_fornecedor);
      atualizar_tabela(_itlp1a);
      atualizar_tabela(_it+_pedido+_material+_fornecedor);
      atualizar_tabela(_it+_produto+_fornecedor);
      atualizar_tabela(_movbancario);
      atualizar_tabela(_ordcompra);
      atualizar_tabela(_peca);
      atualizar_tabela(_pedido+_material+_fornecedor);
      atualizar_tabela(_produto);
      atualizar_tabela(_produto+_fornecedor);
      atualizar_tabela(_saida);
      atualizar_tabela(_veiculo+_manutencao);

      ExecutaSQL('UPDATE ORDCOMPRA '+
                 'set cditcontFORNECEDOR=NULL '+
                 'WHERE cdempresa='+empresa.cdempresa.ToString+' '+
                 'and CDITCONTFORNECEDOR IN (SELECT CDITCONTFORNECEDOR '+
                                            'FROM ITCONTFORNECEDOR '+
                                            'WHERE cdempresa='+empresa.cdempresa.ToString+' and CDFORNECEDOR='+s.q.fieldbyname(_cdfornecedor).AsString+')');
      ExecutaSQL('delete from fornecedor where cdempresa='+empresa.cdempresa.ToString+' and cdfornecedor='+s.q.fieldbyname(_cdfornecedor).AsString);
      s.q.Next;
    end;
    ShowMessage('Foram alterados '+inttostr(reg_alterado)+' registro(s).');
    Result := True;
  finally
    freeandnil(s);
    freeandnil(frmprogressbar);
  end;
end;

function TFornecedor.hint_rzsocial: string;
begin
  if tppessoa = _J then result := 'CNPJ: '+nucnpj+' Inscrição Estadual: '+nuinscest
                   else result := 'CPF: '+nucpf;
  result := result + #13'Endereço: '+dsendereco;
  if dsnumero <> '' then
  begin
    result := result+', '+dsnumero;
  end;
  if dscomplemento <> '' then
  begin
    result := result+', '+dscomplemento;
  end;
  result := result + ' Fone: '+nufone1+
                 #13'Bairro: '+nmbairro+
                   ' Cidade: '+municipio.nmmunicipio+
                       ' UF: '+uf.sguf+
                      ' CEP: '+NUCEP;
end;

function TFornecedor.Insert(boscript: boolean): String;
begin
  if cdstfornecedor = 0 then
  begin
    cdstfornecedor := qregistro.CodigoStatusNovo(_fornecedor);
  end;
  if dtcadastro = 0 then
  begin
    dtcadastro  := DtBanco;
  end;
  result := inherited insert(boscript);
end;

function TFornecedor.get_tpregime:string;
begin
  result := tppessoa;
  if tppessoa = _J then
  begin
    if (cdtpregime = 1) or (cdtpregime = 2) then
    begin
      result := _S
    end
    else if (cdtpregime = 3) or (cdtpregime = 4) then
    begin
      result := _D;
    end;
  end;
end;

{ TItfornecedorEmailList }

function TItfornecedorEmailList.GetItem(Index: Integer): TItfornecedorEmail;
begin
  Result := TItfornecedorEmail(Inherited Items[Index]);
end;

function TItfornecedorEmailList.Ler(DataSet: TDataset): boolean;
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

function TItfornecedorEmailList.Ler(codigo: LargeInt; cdfield: string=_cdfornecedor): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itfornecedoremail, codigo, cdfield));
  try
    result := Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TItfornecedorEmailList.New: TItfornecedorEmail;
begin
  Result := TItfornecedorEmail.Create;
  Add(Result);
end;

procedure TItfornecedorEmailList.SetItem(Index: Integer;
  const Value: TItfornecedorEmail);
begin
  Put(Index, Value);
end;

end.
