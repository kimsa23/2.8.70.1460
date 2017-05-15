unit classetransportadora;

interface

uses
  Forms, controls, ExtCtrls, dialogs, SysUtils, Classes, Contnrs, db,
  pcteConversaoCTe, pcnConversao, system.UITypes,
  uprogressbar, uconstantes, uregistro, ustrings,
  classeaplicacao, classecopiarregistro, classeempresa, classequery, classeexecutasql,
  classeretornasql, classeEndereco, ClasseMunicipio,
  classeuf, classedao, classefornecedor;

type
  TVeiculo = class(TRegistroQuipos)
  private
    Fnuhp: Double;
    Fnucilindradas: double;
    Fcdtpcombustivel: Integer;
    Fcdveiculo: Integer;
    Fcdmarca: Integer;
    Fcdmunicipio: Integer;
    Fcdstveiculo: Integer;
    Fcdmodelo: Integer;
    Fvlkm: Integer;
    Fcdtpveiculo: Integer;
    Fcdcntcusto: Integer;
    Fcdfuncionario: Integer;
    Fcduf: Integer;
    Fnueixos: Integer;
    Fpstara: Integer;
    Fcdctetpproprietario: Integer;
    Fnuano: Integer;
    Fcdcor: Integer;
    Fcdctetpveiculo: Integer;
    Fpscapacidade: Integer;
    Fpscapacidadem3: Integer;
    Fnudcr: string;
    Fcdctetprodado: string;
    Fdsmodelo: string;
    Fcdctetpcarroceria: string;
    Fcdtransportadora: Largeint;
    Fdsobservacao: string;
    Fnurntrc: string;
    Fnurenavam: string;
    Fnuplaca: string;
    Fnuchassi: string;
    Fnumotor: string;
  public
    [keyfield]
    property cdveiculo : Integer read Fcdveiculo write fcdveiculo;
    [fk]
    property cdtpveiculo : Integer read Fcdtpveiculo write fcdtpveiculo;
    [fk]
    property cdstveiculo : Integer read Fcdstveiculo write fcdstveiculo;
    [fk]
    property cdmarca : Integer read Fcdmarca write fcdmarca;
    [fk]
    property cdcor : Integer read Fcdcor write fcdcor;
    [fk]
    property cdtpcombustivel : Integer read Fcdtpcombustivel write fcdtpcombustivel;
    [fk]
    property cduf : Integer read Fcduf write fcduf;
    [fk]
    property cdmunicipio : Integer read Fcdmunicipio write fcdmunicipio;
    [fk]
    property cdtransportadora : largeint read Fcdtransportadora write fcdtransportadora;
    [fk]
    property cdmodelo : Integer read Fcdmodelo write fcdmodelo;
    [fk]
    property cdctetprodado :string read Fcdctetprodado write fcdctetprodado;
    [fk]
    property cdctetpcarroceria : string read Fcdctetpcarroceria write fcdctetpcarroceria;
    [fk]
    property cdctetpveiculo : Integer read Fcdctetpveiculo write fcdctetpveiculo;
    [fk]
    property cdcntcusto : Integer read Fcdcntcusto write fcdcntcusto;
    [fk]
    property cdfuncionario : Integer read Fcdfuncionario write fcdfuncionario;
    [fk]
    property cdctetpproprietario : Integer read Fcdctetpproprietario write fcdctetpproprietario;
    property nuplaca : string read Fnuplaca write fnuplaca;
    property vlkm : Integer read Fvlkm write fvlkm;
    property dsobservacao : string read Fdsobservacao write fdsobservacao;
    property nurntrc : string read Fnurntrc write fnurntrc;
    property numotor : string read Fnumotor write fnumotor;
    property nuano : Integer read Fnuano write fnuano;
    property dsmodelo : string read Fdsmodelo write fdsmodelo;
    property nuchassi : string read Fnuchassi write fnuchassi;
    property nurenavam : string read Fnurenavam write fnurenavam;
    property nucilindradas : double read Fnucilindradas write fnucilindradas;
    property nuhp : Double read Fnuhp write fnuhp;
    property nudcr : string read Fnudcr write fnudcr;
    property pstara : Integer read Fpstara write fpstara;
    property pscapacidade : Integer read Fpscapacidade write fpscapacidade;
    property pscapacidadem3 : Integer read Fpscapacidadem3 write fpscapacidadem3;
    property nueixos : Integer read Fnueixos write fnueixos;
    procedure check_peso_capacidade;
    procedure check_peso_tara;
    procedure check_m3_capacidade;
    procedure check_uf_veiculo;
    procedure check_rntrc_tamanho;
    procedure check_tpveiculo;
    procedure check_tprodado;
    procedure Check_tpproprietario;
    function gettpveiculo: TpcteTipoVeiculo;
    function gettprodado: TpcteTipoRodado;
    function gettpproprietario: TpcteProp;
  end;
  TITTransportadoraEmail = class(TRegistroQuipos)
  private
    Fcdtransportadora: largeint;
    Fcdittransportadoraemail: Integer;
    Femail: string;
  public
    [keyfield]
    property cdittransportadoraemail : Integer read Fcdittransportadoraemail write fcdittransportadoraemail;
    [fk]
    property cdtransportadora : largeint read Fcdtransportadora write fcdtransportadora;
    property email : string read Femail write femail;
  end;
  TittransportadoraemailList = class(TObjectList)
  private
    function  GetItem(Index: Integer): Tittransportadoraemail;
    procedure SetItem(Index: Integer; const Value: Tittransportadoraemail);
    function Listaemail:string;
  public
    function New: Tittransportadoraemail;
    property Items[Index: Integer]: Tittransportadoraemail read GetItem write SetItem;
    function Ler(codigo:Largeint):Boolean;
  end;
  TStTransportadora = class(TRegistroQuipos)
  private
    Fbogerarinfo: string;
    Fboexcluir: string;
    Fbonovo: string;
    Fboalterar: string;
    Fbogerarsaida: string;
    Fbogerarentrada: string;
    Fnucor: Integer;
    Fcdsttransportadora: Integer;
    Fnmsttransportadora: string;
  public
    [keyfield]
    property cdsttransportadora : Integer read Fcdsttransportadora write Fcdsttransportadora;
    property nmsttransportadora : string read Fnmsttransportadora write Fnmsttransportadora;
    property nucor : Integer read Fnucor write Fnucor;
    property bonovo : string read Fbonovo write Fbonovo;
    property boalterar : string read Fboalterar write Fboalterar;
    property boexcluir : string read Fboexcluir write Fboexcluir;
    property bogerarinfo : string read Fbogerarinfo write Fbogerarinfo;
    property bogerarsaida : string read Fbogerarsaida write Fbogerarsaida;
    property bogerarentrada : string read Fbogerarentrada write Fbogerarentrada;
  end;
  TTransportadora = class(TRegistroQuipos)
  private
    Fbonenviarpdf: String;
    Fnudependentes: Integer;
    Fcdtpcnh: Integer;
    Fcdveiculocarreta: Integer;
    Fcdtransportadora: largeint;
    Fcdveiculocarreta2: integer;
    Fcdsttransportadora: Integer;
    Fcdveiculo: Integer;
    Fcdmunicipio: Integer;
    Fcdoutrotransportadora: Integer;
    Fcdpais: integer;
    Fcduf: integer;
    Fdscomplemento: string;
    Femail: string;
    Fdsendereco: string;
    Fnufone2: string;
    Fnufone3: string;
    Ftppessoa: string;
    Fnmtransportadora: string;
    Fnucnpj: string;
    Frzsocial: string;
    Fnufone1: string;
    Fnucxpostal: string;
    Fcdsexo: string;
    Fnmmotorista: string;
    Fdsnumero: string;
    Fnuinscest: string;
    Fdsobservacao: string;
    Fnucep: string;
    Fnmmae: string;
    Fnurntrc: string;
    Fnucnh: string;
    Fnufax: string;
    Fnuinss: string;
    Fhomepage: string;
    Fnmbairro: string;
    Fnmconjuge: string;
    Fcdestcivil: string;
    Fnuidentid: string;
    Fnmpai: string;
    Fnmcontato: string;
    Fnucpf: string;
    Fdtvencimentocnh: TDate;
    Fdtcadastro: TDate;
    Fdtnascimento: TDate;
  public
    [keyfield]
    property cdtransportadora : largeint read Fcdtransportadora write Fcdtransportadora;
    [fk]
    property cduf : integer read Fcduf write Fcduf;
    [fk]
    property cdsttransportadora : Integer read Fcdsttransportadora write fcdsttransportadora;
    [fk]
    property cdmunicipio : Integer read Fcdmunicipio write fcdmunicipio;
    [fk]
    property cdveiculo : Integer read Fcdveiculo write fcdveiculo;
    [fk]
    property cdveiculocarreta : Integer read Fcdveiculocarreta write fcdveiculocarreta;
    [fk]
    property cdveiculocarreta2 : integer read Fcdveiculocarreta2 write fcdveiculocarreta2;
    property nmtransportadora : string read Fnmtransportadora write fnmtransportadora;
    property rzsocial : string read Frzsocial write frzsocial;
    property dsendereco : string read Fdsendereco write fdsendereco;
    property nmbairro : string read Fnmbairro write fnmbairro;
    property nucxpostal : string read Fnucxpostal write fnucxpostal;
    property nucep : string read Fnucep write fnucep;
    property nufone1 : string read Fnufone1 write fnufone1;
    property nufone2 : string read Fnufone2 write fnufone2;
    property nufone3 : string read Fnufone3 write fnufone3;
    property nufax : string read Fnufax write fnufax;
    property tppessoa : string read Ftppessoa write ftppessoa;
    property nuinscest : string read Fnuinscest write fnuinscest;
    property nucnpj : string read Fnucnpj write fnucnpj;
    property nmmotorista : string read Fnmmotorista write fnmmotorista;
    property nucpf : string read Fnucpf write fnucpf;
    property nuidentid : string read Fnuidentid write fnuidentid;
    property nmmae : string read Fnmmae write fnmmae;
    property nmpai : string read Fnmpai write fnmpai;
    property nmconjuge : string read Fnmconjuge write fnmconjuge;
    property cdsexo : string read Fcdsexo write fcdsexo;
    property cdestcivil : string read Fcdestcivil write fcdestcivil;
    property dtnascimento : TDate read Fdtnascimento write fdtnascimento;
    property email : string read Femail write femail;
    property homepage : string read Fhomepage write fhomepage;
    property nuinss : string read Fnuinss write fnuinss;
    property nudependentes : Integer read Fnudependentes write fnudependentes;
    property cdoutrotransportadora : Integer read Fcdoutrotransportadora write fcdoutrotransportadora;
    property dsobservacao : string read Fdsobservacao write fdsobservacao;
    property dsnumero : string read Fdsnumero write fdsnumero;
    property dscomplemento : string read Fdscomplemento write fdscomplemento;
    property nucnh : string read Fnucnh write fnucnh;
    property nurntrc : string read Fnurntrc write fnurntrc;
    property cdpais : integer read Fcdpais write fcdpais;
    property bonenviarpdf : string read Fbonenviarpdf write fbonenviarpdf;
    property nmcontato : string read Fnmcontato write fnmcontato;
    property dtcadastro : TDate read Fdtcadastro write fdtcadastro;
    property cdtpcnh : Integer read Fcdtpcnh write fcdtpcnh;
    property dtvencimentocnh : TDate read Fdtvencimentocnh write fdtvencimentocnh;
    function GetCodigoCNPJCPF:String;
    function GerarCodigoReduzido: string;
    function GerarCodigoCNPJCPF:string;
    function getTppessoaProprietarioVeiculo(codigo: string):string;
    function hintRzsocial : string;
    class function Listaemail(codigo:Largeint):string;
    function GerarFornecedor:LargeInt;
    function codigo_transportadora_como_fornecedor:string;
  end;

implementation

function TTransportadora.GerarCodigoReduzido: string;
var
  q : TClasseQuery;
  newcod : integer;
  reg_alterado : Integer;
  procedure atualizar_tabela(tabela:string; dsadicional: string='');
  begin
    ExecutaSQL('update '+tabela+' set cdtransportadora'+dsadicional+'='+newcod.ToString+' where cdempresa='+empresa.cdempresa.ToString+' and cdtransportadora'+dsadicional+'='+q.q.fieldbyname(_cdtransportadora).AsString);
  end;
begin
  q              := TClasseQuery.Create;
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    q.q.Open('SELECT CDTRANSPORTADORA,NUCNPJ,NUCPF FROM TRANSPORTADORA where cdempresa='+empresa.cdempresa.ToString);
    frmprogressbar.gau.MaxValue := 100;
    frmprogressbar.Show;
    reg_alterado := 0;
    while not q.q.Eof do
    begin
      if frmprogressbar.gau.Progress = 100 then
      begin
        frmprogressbar.gau.Progress := 0;
      end;
      Application.Title           := q.q.fieldbyname(_cdtransportadora).AsString;
      frmprogressbar.gau.Progress := frmprogressbar.gau.Progress + 1;
      Application.ProcessMessages;
      if ((removercaracteres(RemoverCaracterInicio(q.q.FieldByName(_nucnpj).AsString, _0)) <> q.q.FieldByName(_cdtransportadora).AsString) and
         (removercaracteres(RemoverCaracterInicio(q.q.FieldByName(_nucpf).AsString, _0)) <> q.q.FieldByName(_cdtransportadora).AsString) and
         (Length(q.q.fieldbyname(_cdtransportadora).AsString) <7)) or (q.q.fieldbyname(_cdtransportadora).AsString = '')then
      begin
        q.q.Next;
        continue;
      end;
      inc(reg_alterado);
      // copiar dados do transportadora
      newcod := copiar_registro(q.q.fieldbyname(_cdtransportadora).AsLargeInt, _transportadora            , _cdtransportadora,     0, '', '');
      // copiar dados dos itens
      copiar_registro(q.q.fieldbyname(_cdtransportadora).AsLargeInt, _itbancot               , _cdtransportadora, newcod, '', '');
      copiar_registro(q.q.fieldbyname(_cdtransportadora).AsLargeInt, _itconttransportadora   , _cdtransportadora, newcod, '', '');
      copiar_registro(q.q.fieldbyname(_cdtransportadora).AsLargeInt, _ittransportadoraarquivo, _cdtransportadora, newcod, '', '');
      copiar_registro(q.q.fieldbyname(_cdtransportadora).AsLargeInt, _ittransportadoraemail  , _cdtransportadora, newcod, '', '');
      copiar_registro(q.q.fieldbyname(_cdtransportadora).AsLargeInt, _transportadoramunicipio, _cdtransportadora, newcod, '', '');
      // alterar dados nas tabelas relacionadas
      atualizar_tabela(_ctetransportadora);
      atualizar_tabela(_entrada);
      atualizar_tabela(_orcamento);
      atualizar_tabela(_pedido);
      atualizar_tabela(_rpa);
      atualizar_tabela(_saida);
      atualizar_tabela(_transporte);
      atualizar_tabela(_veiculo);

      ExecutaSQL('delete from transportadora where cdempresa='+empresa.cdempresa.ToString+' and cdtransportadora='+q.q.fieldbyname(_cdtransportadora).AsString);
      q.q.Next;
    end;
    ShowMessage('Foram alterados '+inttostr(reg_alterado)+' registro(s).');
  finally
    freeandnil(q);
    freeandnil(frmprogressbar);
  end;
end;

function TTransportadora.GerarFornecedor: LargeInt;
var
  fornecedor : TFornecedor;
begin
  fornecedor := TFornecedor.create;
  try
    result := GetCodigoCNPJCPF.ToInt64;
    if result = 0 then
    begin
      MessageDlg('CNPJ ou CPF está vazio no cadastro da Transportadora.', mtInformation, [mbOK], 0);
      abort;
    end;
    if qregistro.codigoexiste(_fornecedor, result) then
    begin
      exit;
    end;
    fornecedor.cdfornecedor := result;
    fornecedor.cduf := cduf;
    fornecedor.cdmunicipio := cdmunicipio;
    fornecedor.nmfornecedor := nmtransportadora;
    fornecedor.rzsocial := rzsocial;
    fornecedor.dsendereco := dsendereco;
    fornecedor.nmbairro := nmbairro;
    fornecedor.nucep := nucep;
    fornecedor.nucxpostal := nucxpostal;
    fornecedor.nufone1 := nufone1;
    fornecedor.nufone2 := nufone2;
    fornecedor.nufone3 := nufone3;
    fornecedor.nufax := nufax;
    fornecedor.tppessoa := tppessoa;
    fornecedor.nuinscest := nuinscest;
    fornecedor.nucnpj := nucnpj;
    fornecedor.nucpf := nucpf;
    fornecedor.nuidentid := nuidentid;
    fornecedor.dtnascimento := dtnascimento;
    fornecedor.cdsexo := cdsexo;
    fornecedor.cdestcivil := cdestcivil;
    fornecedor.nmmae := nmmae;
    fornecedor.nmpai := nmpai;
    fornecedor.nmconjuge := nmconjuge;
    fornecedor.email := email;
    fornecedor.homepage := homepage;
    fornecedor.dsobservacao := dsobservacao;
    fornecedor.dsnumero := dsnumero;
    fornecedor.dscomplemento := dscomplemento;
    fornecedor.bonenviarpdf := bonenviarpdf;
    fornecedor.cdpais := cdpais;
    fornecedor.Insert;
  finally
    freeandnil(fornecedor);
  end;
end;

function TTransportadora.GetCodigoCNPJCPF: string;
begin
  if tppessoa = _J then
  begin
    result := removercaracteres(nucnpj);
  end;
  if tppessoa = _f then
  begin
    result := removercaracteres(nucpf);
  end;
end;

function TTransportadora.getTppessoaProprietarioVeiculo(codigo: string):string;
  function makesql:string;
  begin
    result := 'select p.tppessoa '+
              'from transportadora t '+
              'inner join veiculo v on v.cdempresa=t.cdempresa and v.cdveiculo=t.cdveiculo '+
              'inner join transportadora p on p.cdempresa=v.cdempresa and p.cdtransportadora=v.cdtransportadora '+
              'where t.cdempresa='+empresa.cdempresa.ToString+' and t.cdtransportadora='+codigo;
  end;
begin
  result := RetornaSQLString(makesql);
end;

function TTransportadora.codigo_transportadora_como_fornecedor: string;
begin
  if tppessoa = _j then
  begin
    result := CodigodoCampo(_fornecedor, nucnpj, _nucnpj);
  end
  else if tppessoa = _F then
  begin
    result := CodigodoCampo(_fornecedor, nucpf, _nucpf);
  end;
  if result = '' then
  begin
    result := GerarFornecedor.tostring;
  end;
end;

function TTransportadora.GerarCodigoCNPJCPF: string;
var
  q : TClasseQuery;
  newcod : integer;
  reg_alterado : Integer;
  procedure atualizar_tabela(tabela:string; dsadicional: string=''; nome:string='cdtransportadora');
  begin
    ExecutaSQL('update '+tabela+' set '+nome+dsadicional+'='+newcod.ToString+' where '+nome+dsadicional+'='+q.q.fieldbyname(_cdtransportadora).AsString);
  end;
  function codigo_for_cpf_cnpj:Boolean;
  begin
    result := (removercaracteres(RemoverCaracterInicio(q.q.FieldByName(_nucnpj).AsString, _0)) = q.q.FieldByName(_cdtransportadora).AsString) or
              (removercaracteres(RemoverCaracterInicio(q.q.FieldByName(_nucpf).AsString, _0)) = q.q.FieldByName(_cdtransportadora).AsString);
  end;
  function cnpj_cpf_preenchido:boolean;
  begin
    result := (removercaracteres(RemoverCaracterInicio(q.q.FieldByName(_nucnpj).AsString, _0)) <> '') or
              (removercaracteres(RemoverCaracterInicio(q.q.FieldByName(_nucpf).AsString , _0)) <> '');
  end;
  function codigo_cpf_cnpj:integer;
  var
    texto : string;
  begin
    texto := removercaracteres(RemoverCaracterInicio(q.q.FieldByName(_nucnpj).AsString, _0));
    if texto = '' then
    begin
      texto := removercaracteres(RemoverCaracterInicio(q.q.FieldByName(_nucpf).AsString , _0));
    end;
    result := strtoint(texto);
  end;
begin
  q := TClasseQuery.Create;
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    q.q.Open('SELECT CDTRANSPORTADORA,NUCNPJ,NUCPF FROM TRANSPORTADORA where cdempresa='+empresa.cdempresa.ToString);
    frmprogressbar.gau.MaxValue := 100;
    frmprogressbar.Show;
    reg_alterado := 0;
    while not q.q.Eof do
    begin
      if frmprogressbar.gau.Progress = 100 then
      begin
        frmprogressbar.gau.Progress := 0;
      end;
      Application.Title           := q.q.fieldbyname(_cdtransportadora).AsString;
      frmprogressbar.gau.Progress := frmprogressbar.gau.Progress + 1;
      Application.ProcessMessages;
      if Codigo_for_CPF_CNPJ or (not cnpj_cpf_preenchido) then
      begin
        q.q.Next;
        continue;
      end;
      newcod := codigo_cpf_cnpj;
      if qregistro.CodigoExiste(_transportadora, newcod) then
      begin
        q.q.Next;
        continue;
      end;
      inc(reg_alterado);
      // copiar dados
      newcod := copiar_registro(q.q.fieldbyname(_cdtransportadora).AsLargeInt, _transportadora   , _cdtransportadora, newcod, '', '');
      // copiar dados dos itens
      copiar_registro(q.q.fieldbyname(_cdtransportadora).AsLargeInt, _itbancot               , _cdtransportadora, newcod, '', '');
      copiar_registro(q.q.fieldbyname(_cdtransportadora).AsLargeInt, _itconttransportadora   , _cdtransportadora, newcod, '', '');
      copiar_registro(q.q.fieldbyname(_cdtransportadora).AsLargeInt, _ittransportadoraarquivo, _cdtransportadora, newcod, '', '');
      copiar_registro(q.q.fieldbyname(_cdtransportadora).AsLargeInt, _ittransportadoraemail  , _cdtransportadora, newcod, '', '');
      copiar_registro(q.q.fieldbyname(_cdtransportadora).AsLargeInt, _transportadoramunicipio, _cdtransportadora, newcod, '', '');
      // alterar dados nas tabelas relacionadas
      atualizar_tabela(_ctetransportadora);
      atualizar_tabela(_entrada);
      atualizar_tabela(_orcamento);
      atualizar_tabela(_pedido);
      atualizar_tabela(_rpa);
      atualizar_tabela(_saida);
      atualizar_tabela(_transporte);
      atualizar_tabela(_veiculo);
      // excluir
      ExecutaSQL('delete from transportadora where cdempresa='+empresa.cdempresa.ToString+' and cdtransportadora='+q.q.fieldbyname(_cdtransportadora).AsString);
      q.q.Next;
    end;
    ShowMessage('Foram alterados '+inttostr(reg_alterado)+' registro(s).');
  finally
    FreeAndNil(q);
    FreeAndNil(frmprogressbar);
  end;
end;

function TTransportadora.hintRzsocial: string;
begin
  if tppessoa = _J then
  begin
    result := 'CNPJ: '+nucnpj+' Inscrição Estadual: '+nuinscest
  end
  else
  begin
    result := 'CPF: '+nucpf;
  end;
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
                   ' Cidade: '+qregistro.NomedoCodigo(_municipio, cdmunicipio)+
                       ' UF: '+qregistro.StringdoCodigo(_uf, cduf, _sguf)+
                      ' CEP: '+NUCEP;
end;

class function TTransportadora.Listaemail(codigo: Largeint): string;
var
  lista : TittransportadoraemailList;
begin
  lista := TittransportadoraemailList.Create;
  try
    lista.Ler(codigo);
    result := lista.Listaemail;
  finally
    freeandnil(lista);
  end;
end;

function TittransportadoraemailList.GetItem(Index: Integer): Tittransportadoraemail;
begin
  Result := Tittransportadoraemail(Inherited Items[Index]);
end;

function TittransportadoraemailList.Ler(codigo: LargeInt): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_ittransportadoraemail, codigo.ToString, _cdtransportadora));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    while not q.q.Eof do
    begin
      new.Select(q.q);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TittransportadoraemailList.Listaemail:string;
var
  i : Integer;
begin
  result := '';
  for i := 0 to count-1 do
  begin
    result := result + Items[i].email+#13;
  end;
end;

function TittransportadoraemailList.New: Tittransportadoraemail;
begin
  Result := Tittransportadoraemail.Create;
  Add(Result);
end;

procedure TittransportadoraemailList.SetItem(Index: Integer; const Value: Tittransportadoraemail);
begin
  Put(Index, Value);
end;

procedure TVeiculo.check_m3_capacidade;
begin
  if pscapacidadem3 = 0 then
  begin
    messagedlg('O M3 da capacidade não está definido no cadastro do veículo '+nuplaca+'.', mtInformation, [mbok], 0);
    abort;
  end;
end;

procedure TVeiculo.check_peso_capacidade;
begin
  if pscapacidade = 0 then
  begin
    messagedlg('O peso da capacidade não está definido no cadastro do veículo '+nuplaca+'.', mtInformation, [mbok], 0);
    abort;
  end;
end;

procedure TVeiculo.check_peso_tara;
begin
  if pstara = 0 then
  begin
    messagedlg('O peso da tara não está definido no cadastro do veículo '+nuplaca+'.', mtInformation, [mbok], 0);
    abort;
  end;
end;

procedure TVeiculo.check_rntrc_tamanho;
begin
  if Length(NURNTRC) > 8 then
  begin
    messagedlg('O número RNTRC do veículo '+nuplaca+' está maior do 8 caracteres.', mtInformation, [mbok], 0);
    abort;
  end;
end;

procedure TVeiculo.Check_tpproprietario;
begin
  if not cdctetpproprietario in [0, 1, 2] then
  begin
    messagedlg('Tipo de Proprietario não está definido no cadastro do veículo '+nuplaca+'.', mtInformation, [mbok], 0);
    abort;
  end;
end;

procedure TVeiculo.check_tprodado;
begin
  if (cdctetprodado <> _00) and (cdctetprodado = _01) and (cdctetprodado = _02) and (cdctetprodado <> _03) and (cdctetprodado <> _04) and (cdctetprodado <> _05) and (cdctetprodado <> _06) then
  begin
    messagedlg('Tipo de Rodado não está definido no cadastro do veículo '+nuplaca+'.', mtInformation, [mbok], 0);
    abort;
  end;
end;

procedure TVeiculo.check_tpveiculo;
begin
  if not cdtpveiculo in [0, 1] then
  begin
    messagedlg('Tipo de Veículo não definido no cadastro do veículo '+nuplaca+'.', mtInformation, [mbok], 0);
    abort;
  end;
end;

procedure TVeiculo.check_uf_veiculo;
begin
  if cduf = 0 then
  begin
    messagedlg('A UF não está definida no cadastro do veículo '+nuplaca+'.', mtInformation, [mbok], 0);
    abort;
  end;
end;

function TVeiculo.gettpproprietario: TpcteProp;
begin
  if cdctetpproprietario = 0 then
  begin
    result := tpTACAgregado
  end
  else if cdctetpproprietario = 1 then
  begin
    result := tpTACIndependente
  end
  else if cdctetpproprietario = 2 then
  begin
    result := tpOutros
  end;
end;

function TVeiculo.gettprodado: TpcteTipoRodado;
begin
  if cdctetprodado = _00 then
  begin
    result := trNaoAplicavel
  end
  else if cdctetprodado = _01 then
  begin
    result := trTruck
  end
  else if cdctetprodado = _02 then
  begin
    result := trToco
  end
  else if cdctetprodado = _03 then
  begin
    result := trCavaloMecanico
  end
  else if cdctetprodado = _04 then
  begin
    result := trVAN
  end
  else if cdctetprodado = _05 then
  begin
    result := trUtilitario
  end
  else if cdctetprodado = _06 then
  begin
    result := trOutros
  end;
end;

function TVeiculo.gettpveiculo: TpcteTipoVeiculo;
begin
  if cdtpveiculo = 0 then
  begin
    result := tvTracao
  end
  else if cdtpveiculo = 1 then
  begin
    result := tvReboque
  end;
end;

end.
