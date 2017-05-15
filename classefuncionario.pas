unit classefuncionario;

interface

uses
  SysUtils, Classes, Contnrs,
  classeretornasql, classeaplicacao, classeempresa, classeexecutasql, classecopiarregistro,
  classequery, classedao,
  udatahora, ustrings, uRegistro, uconstantes;

type
  TFuncionario = class(TRegistroQuipos)
  private
    Fboworkboxgerente: String;
    Fboworkboxresponsavel: String;
    Fboworkboxordserv: String;
    Fvlsalariohora: currency;
    Fvlsalario: currency;
    Fprcomissaoatendenteproduto: double;
    Fprcomissaoatendenteservico: double;
    Fprcomissaotecnicoservico: double;
    Fprcomissaovendedor: double;
    Fprcomissaovendedorproduto: double;
    Fprcomissaotecnico: double;
    Fprcomissaovendedorservico: double;
    Fprcomissaotecnicoproduto: double;
    Fprcomissaoorcamentoproduto: double;
    Fprcomissaoatendente: double;
    Fprcomissaoorcamento: double;
    Fprcomissao: double;
    Fprcomissaoorcamentoservico: double;
    Fcdpais: integer;
    Fcdescolaridade: integer;
    Fcdfuncao: integer;
    Fcdmunicipio: integer;
    Fcdcntcusto: integer;
    Fcdsetor: integer;
    Fcdtpcnh: integer;
    Fcdequipamento: integer;
    Fcdturno: integer;
    Fcdfuncionario: integer;
    Fcdturma: integer;
    Fcdstfuncionario: integer;
    Fcdlocaltrabalho: integer;
    Fcdusuario: integer;
    Fcduf: integer;
    Fnmpai: string;
    Fnucnh: string;
    Fnuinss: string;
    Fnureservista: string;
    Fhomepage: string;
    Ffoto: string;
    Fnmconjuge: string;
    Femail: string;
    Fnmbairro: string;
    Fcdsexo: string;
    Fnucep: string;
    Fnucarteiratrabalho: string;
    Fnmmae: string;
    Fnuidentid: string;
    Fdsobservacao: string;
    Ftpcategoriacnh: string;
    Fnucracha: string;
    Fnmfuncionario: string;
    Fnutituloeleitor: string;
    Fdsnumero: string;
    Fnufax: string;
    Fnucpf: string;
    Fnulivropagina: string;
    Fdsemissaoidentid: string;
    Fnuseriecarteiratrabalho: string;
    Fdsendereco: string;
    Fnumatricula: string;
    Fnufone1: string;
    Fdscomplemento: string;
    Fcdestcivil: string;
    Fnucxpostal: string;
    Fnufone3: string;
    Fassinatura: string;
    Fnufone2: string;
    Fdtdemissao: TDate;
    Fdtnascimento: TDate;
    Fdtadmissao: TDate;
    Fdtcadastro: TDate;
    Fdtvalidadecnh: TDate;
    Fdtemissaoidentid: TDate;
    function ObterVlbaseTpconvenio(cdtpconvenio: string): Currency;
  public
    [keyfield]
    property cdfuncionario : integer read Fcdfuncionario write Fcdfuncionario;
    [fk]
    property cduf : integer read Fcduf write Fcduf;
    [fk]
    property cdfuncao : integer read Fcdfuncao write Fcdfuncao;
    [fk]
    property cdcntcusto : integer read Fcdcntcusto write Fcdcntcusto;
    [fk]
    property cdlocaltrabalho : integer read Fcdlocaltrabalho write Fcdlocaltrabalho;
    [fk]
    property cdstfuncionario : integer read Fcdstfuncionario write Fcdstfuncionario;
    [fk]
    property cdmunicipio : integer read Fcdmunicipio write Fcdmunicipio;
    [fk]
    property cdusuario : integer read Fcdusuario write Fcdusuario;
    [fk]
    property cdturma : integer read Fcdturma write Fcdturma;
    [fk]
    property cdequipamento : integer read Fcdequipamento write Fcdequipamento;
    [fk]
    property cdpais : integer read Fcdpais write Fcdpais;
    [fk]
    property cdsetor : integer read Fcdsetor write Fcdsetor;
    [fk]
    property cdescolaridade : integer read Fcdescolaridade write Fcdescolaridade;
    [fk]
    property cdturno : integer read Fcdturno write Fcdturno;
    property nmfuncionario : string read Fnmfuncionario write Fnmfuncionario;
    property dtadmissao : TDate read Fdtadmissao write Fdtadmissao;
    property dtdemissao : TDate read Fdtdemissao write Fdtdemissao;
    property vlsalario : currency read Fvlsalario write Fvlsalario;
    property prcomissao : double read Fprcomissao write Fprcomissao;
    property dtnascimento : TDate read Fdtnascimento write Fdtnascimento;
    property nmconjuge : string read Fnmconjuge write Fnmconjuge;
    property nmpai : string read Fnmpai write Fnmpai;
    property nmmae : string read Fnmmae write Fnmmae;
    property cdsexo : string read Fcdsexo write Fcdsexo;
    property cdestcivil : string read Fcdestcivil write Fcdestcivil;
    property dsendereco : string read Fdsendereco write Fdsendereco;
    property nmbairro : string read Fnmbairro write Fnmbairro;
    property nucep : string read Fnucep write Fnucep;
    property nucxpostal : string read Fnucxpostal write Fnucxpostal;
    property nufone1 : string read Fnufone1 write Fnufone1;
    property nufone2 : string read Fnufone2 write Fnufone2;
    property nufone3 : string read Fnufone3 write Fnufone3;
    property nufax : string read Fnufax write Fnufax;
    property homepage : string read Fhomepage write Fhomepage;
    property email : string read Femail write Femail;
    property nucpf : string read Fnucpf write Fnucpf;
    property nuidentid : string read Fnuidentid write Fnuidentid;
    property dsobservacao : string read Fdsobservacao write Fdsobservacao;
    property foto : string read Ffoto write Ffoto;
    property assinatura : string read Fassinatura write Fassinatura;
    property vlsalariohora : currency read Fvlsalariohora write Fvlsalariohora;
    property nuinss : string read Fnuinss write Fnuinss;
    property nucarteiratrabalho : string read Fnucarteiratrabalho write Fnucarteiratrabalho;
    property nutituloeleitor : string read Fnutituloeleitor write Fnutituloeleitor;
    property nucracha : string read Fnucracha write Fnucracha;
    property dsnumero : string read Fdsnumero write Fdsnumero;
    property dscomplemento : string read Fdscomplemento write Fdscomplemento;
    property boworkboxordserv : String read Fboworkboxordserv write Fboworkboxordserv;
    property boworkboxresponsavel : String read Fboworkboxresponsavel write Fboworkboxresponsavel;
    property boworkboxgerente : String read Fboworkboxgerente write Fboworkboxgerente;
    property prcomissaotecnico : double read Fprcomissaotecnico write Fprcomissaotecnico;
    property prcomissaoorcamento : double read Fprcomissaoorcamento write Fprcomissaoorcamento;
    property prcomissaoatendente : double read Fprcomissaoatendente write Fprcomissaoatendente;
    property prcomissaoorcamentoservico : double read Fprcomissaoorcamentoservico write Fprcomissaoorcamentoservico;
    property prcomissaoatendenteservico : double read Fprcomissaoatendenteservico write Fprcomissaoatendenteservico;
    property prcomissaotecnicoservico : double read Fprcomissaotecnicoservico write Fprcomissaotecnicoservico;
    property prcomissaoorcamentoproduto : double read Fprcomissaoorcamentoproduto write Fprcomissaoorcamentoproduto;
    property prcomissaoatendenteproduto : double read Fprcomissaoatendenteproduto write Fprcomissaoatendenteproduto;
    property prcomissaotecnicoproduto : double read Fprcomissaotecnicoproduto write Fprcomissaotecnicoproduto;
    property prcomissaovendedor : double read Fprcomissaovendedor write Fprcomissaovendedor;
    property prcomissaovendedorproduto : double read Fprcomissaovendedorproduto write Fprcomissaovendedorproduto;
    property prcomissaovendedorservico : double read Fprcomissaovendedorservico write Fprcomissaovendedorservico;
    property numatricula : string read Fnumatricula write Fnumatricula;
    property nulivropagina : string read Fnulivropagina write Fnulivropagina;
    property dtcadastro : TDate read Fdtcadastro write Fdtcadastro;
    property nuseriecarteiratrabalho : string read Fnuseriecarteiratrabalho write Fnuseriecarteiratrabalho;
    property nucnh : string read Fnucnh write Fnucnh;
    property tpcategoriacnh : string read Ftpcategoriacnh write Ftpcategoriacnh;
    property dtvalidadecnh : TDate read Fdtvalidadecnh write Fdtvalidadecnh;
    property nureservista : string read Fnureservista write Fnureservista;
    [fk]
    property cdtpcnh : integer read Fcdtpcnh write Fcdtpcnh;
    property dsemissaoidentid : string read Fdsemissaoidentid write Fdsemissaoidentid;
    property dtemissaoidentid : TDate read Fdtemissaoidentid write Fdtemissaoidentid;
    function ObterRestricao(dti, dtf: TDate): string;
    function ObterVldescontoConvenio(cdtpconvenio:string; dti, dtf: TDate):Currency;
    function ObterVlfixoTpconvenio(cdtpconvenio:string):Currency;
    function RestricaoFerias(dti, dtf:TDate; var dtferiasi, dtferiasf: TDate): Boolean;
  end;
  TFuncionarioList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TFuncionario;
    procedure SetItem(Index: Integer; const Value: TFuncionario);
  public
    function New: TFuncionario;
    property Items[Index: Integer]: TFuncionario read GetItem write SetItem;
    function Ler(nmcdfield: string; codigo:Integer):Boolean;
  end;

implementation

function TFuncionario.ObterRestricao(dti, dtf: TDate): string;
  function makesql:string;
  begin
    result := 'select cdtpabono1,cdtpabono2,cdtpabono3,cdtpabono4,dtemissao '+
              'from pontotrabalho p '+
              'where p.cdempresa='+empresa.cdempresa.toString+' '+
              'and p.cdfuncionario='+inttostr(cdfuncionario)+' '+
              'and p.dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf);
  end;
  function makesqlrhocorrencia:string;
  begin
    result := 'select r.cdtprhocorrencia,t.nmtprhocorrencia,t.qtncestabasica,count(*) '+
              'from rhocorrencia r '+
              'inner join tprhocorrencia t on t.cdempresa=r.cdempresa and t.cdtprhocorrencia=r.cdtprhocorrencia '+
              'where t.boncestabasica=''S'' and r.cdempresa='+empresa.cdempresa.toString+' '+
              'and r.cdfuncionario='+inttostr(cdfuncionario)+' '+
              'and r.dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' '+
              'group by r.cdtprhocorrencia,t.nmtprhocorrencia,t.qtncestabasica '+
              'having count(*)>=t.qtncestabasica';
  end;
  function makesqltpabono:string;
  begin
    result := 'select cdtpabono,nmtpabono,qtncestabasica,idgrupoabono '+
              'from tpabono '+
              'where boncestabasica=''S'' and cdempresa='+empresa.cdempresa.toString;
  end;
var
  q,qa : TClasseQuery;
  nmtpabono : string;
  dttpabono, cdtpabono, qttpabono, dtgrupoabono, idgrupoabono, qtgrupoabono: TStrings;
  hrnegativa : TTime;
  dtdemissao, dtferiasi, dtferiasf: TDate;
  function check_restricao(nu:string):boolean;
  begin
    result := False;
    if q.q.FieldByName(_cdtpabono+nu).IsNull or (q.q.FieldByName(_cdtpabono+nu).AsString <> qa.q.FieldByName(_cdtpabono).AsString) then
    begin
      Exit;
    end;
    if cdtpabono.IndexOf(qa.q.fieldByName(_cdtpabono).AsString) = -1 then
    begin
      cdtpabono.Add(qa.q.FieldByName(_cdtpabono).AsString);
      dttpabono.Add(q.q.fieldbyname(_dtemissao).AsString);
      qttpabono.Add(_1);
    end
    else if dttpabono[cdtpabono.IndexOf(qa.q.FieldByName(_cdtpabono).AsString)] <> q.q.FieldByName(_dtemissao).AsString then
    begin
      qttpabono[cdtpabono.IndexOf(qa.q.FieldByName(_cdtpabono).AsString)] := IntToStr(strtoint(qttpabono[cdtpabono.IndexOf(qa.q.FieldByName(_cdtpabono).AsString)])+1);
      dttpabono[cdtpabono.IndexOf(qa.q.FieldByName(_cdtpabono).AsString)] := q.q.fieldbyname(_dtemissao).AsString;
    end;
    if qttpabono[cdtpabono.IndexOf(qa.q.FieldByName(_cdtpabono).AsString)] = qa.q.FieldByName(_qtncestabasica).AsString then
    begin
      nmtpabono := qa.q.fieldbyname(_nmtpabono).AsString + ' ('+qa.q.FieldByName(_qtncestabasica).AsString+')';
      result := True;
      Exit;
    end;
    if idgrupoabono.IndexOf(qa.q.FieldByName(_idgrupoabono).AsString) = -1 then
    begin
      idgrupoabono.Add(qa.q.FieldByName(_idgrupoabono).AsString);
      dtgrupoabono.Add(q.q.fieldbyname(_dtemissao).AsString);
      qtgrupoabono.Add(_1);
    end
    else if dtgrupoabono[idgrupoabono.IndexOf(qa.q.FieldByName(_idgrupoabono).AsString)] <> q.q.FieldByName(_dtemissao).AsString then
    begin
      qtgrupoabono[idgrupoabono.IndexOf(qa.q.FieldByName(_idgrupoabono).AsString)] := IntToStr(strtoint(qtgrupoabono[idgrupoabono.IndexOf(qa.q.FieldByName(_idgrupoabono).AsString)])+1);
      dtgrupoabono[idgrupoabono.IndexOf(qa.q.FieldByName(_idgrupoabono).AsString)] := q.q.fieldbyname(_dtemissao).AsString;
    end;
    if qtgrupoabono[idgrupoabono.IndexOf(qa.q.FieldByName(_idgrupoabono).AsString)] = qa.q.FieldByName(_qtncestabasica).AsString then
    begin
      nmtpabono := qa.q.FieldByName(_idgrupoabono).AsString + ' ('+qa.q.FieldByName(_qtncestabasica).AsString+')';
      result := True;
      Exit;
    end;
  end;
  function makesql_hrnegativa:string;
  begin
    result := 'select hrdebito,hrjustificada '+
              'from pontotrabalho '+
              'where hrdebito is not null '+
              'and cdempresa='+empresa.cdempresa.toString+' '+
              'and cdfuncionario='+inttostr(cdfuncionario)+' '+
              'and dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf);
  end;
  function get_hora_negativa:TTime;
  var
    qn : TClasseQuery;
  begin
    result := StrToTime(_00_00_00);
    qn     := TClasseQuery.create(makesql_hrnegativa);
    try
      while not qn.q.Eof do
      begin
        result := result + qn.q.fieldbyname(_hrdebito).AsDateTime;
        if not qn.q.fieldbyname(_hrjustificada).isnull then
        begin
          result := Result - qn.q.fieldbyname(_hrjustificada).AsDateTime;
        end;
        qn.q.Next;
      end;
    finally
      freeandnil(qn);
    end;
  end;
begin
  result    := '';
  nmtpabono := '';
  if qregistro.DatadoCodigo(_funcionario, cdfuncionario, _dtadmissao) > dti then
  begin
    result := 'Novato - admissão '+FormatDateTime(_dd_mm_yyyy, qregistro.DatadoCodigo(_funcionario, cdfuncionario, _dtadmissao));
    Exit;
  end;
  dtdemissao := qregistro.DatadoCodigo(_funcionario, cdfuncionario, _dtdemissao);
  if (dtdemissao > 0) and (dtdemissao < dtf) then
  begin
    result := 'Demitido - Data '+FormatDateTime(_dd_mm_yyyy, dtdemissao);
    Exit;
  end;
  if RestricaoFerias(dti, dtf, dtferiasi, dtferiasf) then
  begin
    result := 'Férias - Período '+FormatDateTime(_dd_mm_yyyy, dtferiasi)+' até '+FormatDateTime(_dd_mm_yyyy, dtferiasf);
    Exit;
  end;
  if NomedoCodigo(_funcionario, inttostr(cdfuncionario), _cdstfuncionario) = _4 then
  begin
    result := 'Funcionário está afastado.';
    Exit;
  end;
  q            := TClasseQuery.Create(makesql);
  qa           := TClasseQuery.Create(makesqltpabono);
  idgrupoabono := TStringList.Create;
  dtgrupoabono := TStringList.Create;
  qtgrupoabono := TStringList.Create;
  cdtpabono    := TStringList.Create;
  dttpabono    := TStringList.Create;
  qttpabono    := TStringList.Create;
  try
    while not q.q.Eof do
    begin
      qa.q.First;
      while not qa.q.Eof do
      begin
        if check_restricao(_1) or check_restricao(_2) or check_restricao(_3) or check_restricao(_4) then
        begin
          result := nmtpabono;
          Exit;
        end;
        qa.q.Next;
      end;
      q.q.Next;
    end;
    q.q.Close;
    q.q.Open(makesqlrhocorrencia);
    if q.q.RecordCount > 0 then
    begin
      result := q.q.fieldbyname(_nmtprhocorrencia).AsString;
      Exit;
    end;
    hrnegativa := get_hora_negativa;
    if hrnegativa > Empresa.funcionario.qthoranegativa then
    begin
      result := 'Hora negativa '+get_total_hora_minuto(hrnegativa);
      Exit;
    end;
  finally
    freeandnil(q);
    freeandnil(qa);
    freeandnil(idgrupoabono);
    freeandnil(dtgrupoabono);
    freeandnil(qtgrupoabono);
    freeandnil(cdtpabono);
    freeandnil(dttpabono);
    freeandnil(qttpabono);
  end;
end;

function TFuncionario.ObterVldescontoConvenio(cdtpconvenio: string; dti, dtf: TDate): Currency;
var
  prdesconto : Double;
begin
  if ObterRestricao(dti, dtf) <> '' then
  begin
    prdesconto := 40
  end
  else
  begin
    prdesconto := 60;
  end;
  result := ObterVlbaseTpconvenio(cdtpconvenio) * (prdesconto / 100);
end;

function TFuncionario.ObterVlbaseTpconvenio( cdtpconvenio: string): Currency;
begin
  result := RetornaSQLCurrency('select vlbasedesconto from funcionariotpconvenio where cdempresa='+empresa.cdempresa.toString+' and cdfuncionario='+inttostr(cdfuncionario)+' and cdtpconvenio='+cdtpconvenio);
end;

function TFuncionario.RestricaoFerias(dti, dtf:TDate; var dtferiasi, dtferiasf: TDate): Boolean;
var
  q : tclassequery;
begin
  result := False;
  q := tclassequery.create(('select dtinicial,dtfinal from funcionarioferias where cdempresa='+empresa.cdempresa.toString+' and cdfuncionario='+inttostr(cdfuncionario)+' and dtinicial>='+GetDtBanco(dti)+' and dtinicial<='+GetDtBanco(dtf)));
  try
    if q.q.RecordCount > 0 then
    begin
      dtferiasi := q.q.fieldbyname(_dtinicial).AsDateTime;
      dtferiasf := q.q.fieldbyname(_dtfinal).AsDateTime;
      Result := True;
    end;
  finally
    q.free;
  end;
end;

function TFuncionario.ObterVlfixoTpconvenio(cdtpconvenio: string): Currency;
begin
  result := RetornaSQLCurrency('select vlfixo from funcionariotpconvenio where cdempresa='+empresa.cdempresa.toString+' and cdfuncionario='+inttostr(cdfuncionario)+' and cdtpconvenio='+cdtpconvenio);
end;

function TFuncionarioList.GetItem(Index: Integer): TFuncionario;
begin
  Result := TFuncionario(Inherited Items[Index]);
end;

function TFuncionarioList.Ler(nmcdfield: string; codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_funcionario, codigo, nmcdfield));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    while not q.q.Eof do
    begin
      New.Select(q.q);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TFuncionarioList.New: TFuncionario;
begin
  Result := TFuncionario.Create;
  Add(Result);
end;

procedure TFuncionarioList.SetItem(Index: Integer; const Value: TFuncionario);
begin
  Put(Index, Value);
end;

end.
