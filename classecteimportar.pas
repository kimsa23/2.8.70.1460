{$I ACBr.inc}
unit classecteimportar;

interface

uses
  Forms, Classes, SysUtils, Dialogs, Controls, Math,
  Data.DB,
  pcnConversao, ACBrCTe, pcteConversaoCTe,
  ustrings, uProgressBar, uRotinas, uConstantes, uRegistro,
  classeaplicacao, classeretornasql, classeregistrainformacao, classegerar, classecliente,
  classeempresa, classequery, classecte;

type
  TCteImportar = class(tobject)
  private
    diretorio : string;
    arquivo : TStrings;
    CTe1: TACBrCTe;
    cdscteqtdcarga, cdsctevlprestacao, cdscteremetentenota, cds : TClasseQuery;
    cliente : TCliente;
    function  get_forpag  (codigo:TpcteFormaPagamento):integer;
    function  get_tpemis  (codigo:TpcnTipoEmissao):integer;
    function  get_tpcte   (codigo:TpcteTipoCTe):integer;
    function  get_tpserv  (codigo:TpcteTipoServico):integer;
    function  get_tipodata(codigo:TpcteTipoDataPeriodo):integer;
    function  get_tipoHora(codigo:TpcteTipoHorarioIntervalo):integer;
    function  get_toma    (codigo:TpcteTomador):Integer;
    function  get_tpimp   (codigo:TpcnTipoImpressao):Integer;
    //@function  get_unidmed (nmcodigo:UnidMed):string;
    function  get_unidmed (nmcodigo:TUnidMed):string;
    function  get_tppessoa(nudocumento:string):string;
    function  set_diretorio:Boolean;
    procedure set_complemento;
    procedure set_ide;
    procedure set_tomador;
    procedure set_remetente;
    procedure set_destinatario;
    procedure set_expedidor;
    procedure set_recebedor;
    procedure set_sticms;
    procedure set_vlprestacao;
    procedure set_qtdcarga;
    procedure set_remetentenota;
    function Carregar_cte(nmfile: string):boolean;
    function pertence_ao_emitente:Boolean;
  public
    xml : string;
    constructor create;
    destructor  destroy; override;
    procedure   importar;
  end;

implementation

uses pcteCTe;

function TCteImportar.get_forpag(codigo:TpcteFormaPagamento):integer;
begin
  if codigo = fpPago then
  begin
    result := 1
  end
  else if codigo = fpAPagar then
  begin
    result := 2
  end
//  else if codigo = fpOutros then result := 3;
  else
  begin
    result := 3;
  end;
end;

function TCteImportar.get_tpemis(codigo:TpcnTipoEmissao):integer;
begin
  if codigo = teNormal then
  begin
    result := 1
  end
  else if codigo = teContingencia then
  begin
    result := 2
  end
  else if Codigo = teSCAN then
  begin
    result := 3
  end
  else if codigo = teDPEC then
  begin
    result := 4
  end
  //else if codigo = teFSDA         then result := 5;
  else
  begin
    result := 5;
  end;
end;

function TCteImportar.get_tpcte(codigo:TpcteTipoCTe):integer;
begin
  if codigo = tcNormal then
  begin
    result := 1
  end
  else if codigo = tcComplemento then
  begin
    result := 2
  end
  else if codigo = tcAnulacao then
  begin
    result := 3
  end
  //else if codigo = tcSubstituto  then result := 4;
  else
  begin
    result := 4;
  end;
end;

function TCteImportar.get_tpserv(codigo:TpcteTipoServico):integer;
begin
  case codigo of
    tsNormal         : result := 0;
    tsSubcontratacao : result := 1;
    tsRedespacho     : result := 2;
    else               result := 3; // tsIntermediario; //3 : result := tsIntermediario;
  end;
end;

function TCteImportar.get_tipodata(codigo:TpcteTipoDataPeriodo):integer;
begin
  case codigo of
    tdSemData     : result := 1;
    tdNaData      : result := 2;
    tdAteData     : result := 3;
    tdApartirData : result := 4;
    else            result := 5; //tdNoPeriodo; // 5 : result := tdNoPeriodo;
  end;
end;

function TCteImportar.get_tipoHora(codigo:TpcteTipoHorarioIntervalo):integer;
begin
  case codigo of
    thSemHorario     : result := 1;
    thNoHorario      : result := 2;
    thAteHorario     : result := 3;
    thApartirHorario : result := 4;
    else               result := 5;//thNoIntervalo; //5 : result := thNoIntervalo;
  end;
end;

//@function TCteImportar.get_unidmed(nmcodigo:UnidMed):string;
function TCteImportar.get_unidmed(nmcodigo:TUnidMed):string;
begin
  if nmcodigo = uM3 then
  begin
    result := 'M3'
  end
  else if nmcodigo = uKG then
  begin
    result := 'KG'
  end
  else if nmcodigo = uTON then
  begin
    result := 'TN'
  end
  else if nmcodigo = uUNIDADE then
  begin
    result := 'UN'
  end
  else if nmcodigo = uLITROS then
  begin
    result := 'LT';
  end;
end;

function TCteImportar.get_tpimp(codigo:TpcnTipoImpressao):Integer;
begin
  if codigo = tiRetrato then
  begin
    result := 1
  end
  //else if codigo = tipaisagem then result := 2;
  else
  begin
    result := 2;
  end;
end;

function TCteImportar.get_toma(codigo:TpcteTomador):Integer;
begin
  if codigo = tmRemetente then
  begin
    result := 1
  end
  else if codigo = tmExpedidor then
  begin
    Result := 2
  end
  else if codigo = tmRecebedor then
  begin
    result := 3
  end
  else if codigo = tmDestinatario then
  begin
    result := 4
  end
  //else if codigo = tmOutros       then result := 5;
  else
  begin
    result := 5;
  end;
end;

procedure TCteImportar.importar;
var
  i : Integer;
begin
  if not set_diretorio then
  begin
    Exit;
  end;
  QRotinas.ListarArquivo(diretorio, arquivo);
  frmprogressbar.Show;
  frmprogressbar.gau.MaxValue := Arquivo.Count-1;
  for i := 0 to Arquivo.Count - 1 do
  begin
    frmprogressbar.pnl.Caption  := ExtractFileName(Arquivo[i]);
    frmprogressbar.gau.Progress := i;
    application.ProcessMessages;
    Carregar_cte(Arquivo[i]);
    if (not pertence_ao_emitente) or CodigoExiste(_cte, IntToStr(CTe1.Conhecimentos.Items[0].CTe.Ide.nCT)) then
    begin
      Continue;
    end;
    cds.q.Insert;
    cds.q.FieldByName(_cdstcte).AsString    := _3;
    cds.q.FieldByName(_nuchavenfe).AsString := CTe1.Conhecimentos.Items[0].CTe.procCTe.chCTe;
    cds.q.FieldByName(_dsxml).AsString      := CTe1.Conhecimentos.Items[0].XML;
    set_ide;
    set_complemento;
    set_tomador;
    set_remetente;
    set_destinatario;
    set_expedidor;
    set_recebedor;
    set_sticms;
    cds.q.FieldByName(_bo+_remetente).AsString := _N;
    case cds.q.FieldByName(_cdctetptomador).AsInteger of
      1: cds.q.FieldByName(_CDTPFRETE).AsString := _1;
      2: cds.q.FieldByName(_CDTPFRETE).AsString := _0;
      3: cds.q.FieldByName(_CDTPFRETE).AsString := _0;
      4: cds.q.FieldByName(_CDTPFRETE).AsString := _2;
      5: cds.q.FieldByName(_CDTPFRETE).AsString := _0;
    end;
    cds.q.fieldbyname(_VLSERVICO).AsCurrency := CTe1.Conhecimentos.Items[0].CTe.vPrest.vTPrest;
    cds.q.fieldbyname(_VLRECEBER).AsCurrency := CTe1.Conhecimentos.Items[0].CTe.vPrest.vRec;

    {$IFDEF PL_200}
    cds.q.fieldbyname(_VL+_MERCADORIA).AsCurrency            := CTe1.Conhecimentos.Items[0].CTe.infCTeNorm.infCarga.vCarga;
    cds.q.fieldbyname(_CDPRODUTO).AsString                   := qregistro.CodigodoNome(_produto, CTe1.Conhecimentos.Items[0].CTe.infCTeNorm.infCarga.proPred);
    cds.q.fieldbyname(_DS+_OUTRAS+_CARACTERISTICAS).AsString := CTe1.Conhecimentos.Items[0].CTe.infCTeNorm.infCarga.xOutCat;
    cds.q.fieldbyname(_NURNTRC).AsString                     := CTe1.Conhecimentos.Items[0].CTe.infCTeNorm.Rodo.RNTRC;
    cds.q.fieldbyname(_DT+_PREVISAO+_ENTREGA).AsDateTime     := CTe1.Conhecimentos.Items[0].CTe.infCTeNorm.Rodo.dPrev;
    if CTe1.Conhecimentos.Items[0].CTe.infCTeNorm.Rodo.Lota = ltSim then
    begin
      cds.q.fieldbyname(_BO+_INDICADOR+_LOTACAO).AsString := _S
    end
    else
    begin
      cds.q.fieldbyname(_BO+_INDICADOR+_LOTACAO).AsString := _n;
    end;
    {$ENDIF}

    {$IFDEF PL_103}
    cds.q.fieldbyname(_VL+_MERCADORIA).AsCurrency            := CTe1.Conhecimentos.Items[0].CTe.infCarga.vMerc;
    {$ENDIF}

    {$IFDEF PL_104}
    cds.q.fieldbyname(_VL+_MERCADORIA).AsCurrency            := CTe1.Conhecimentos.Items[0].CTe.infCarga.vCarga;
    cds.q.fieldbyname(_CDPRODUTO).AsString                   := qregistro.CodigodoNome(_produto, CTe1.Conhecimentos.Items[0].CTe.infCarga.proPred);
    cds.q.fieldbyname(_DS+_OUTRAS+_CARACTERISTICAS).AsString := CTe1.Conhecimentos.Items[0].CTe.infCarga.xOutCat;
    cds.q.fieldbyname(_NURNTRC).AsString                     := CTe1.Conhecimentos.Items[0].CTe.Rodo.RNTRC;
    cds.q.fieldbyname(_DT+_PREVISAO+_ENTREGA).AsDateTime     := CTe1.Conhecimentos.Items[0].CTe.Rodo.dPrev;
    if CTe1.Conhecimentos.Items[0].CTe.Rodo.Lota = ltSim then
    begin
      cds.q.fieldbyname(_BO+_INDICADOR+_LOTACAO).AsString := _S
    end
    else
    begin
      cds.q.fieldbyname(_BO+_INDICADOR+_LOTACAO).AsString := _n;
    end;
    {$ENDIF}
    RegistraInformacao_(cds.q);
    aplicacao.aplyupdates(cds.q);
    set_vlprestacao;
    set_qtdCarga;
    set_remetenteNota;
  end;
end;

constructor TCteImportar.create;
begin
  CTe1                 := TACBrCTe.Create(nil);
  cliente              := tcliente.create;
  Arquivo              := TStringList.Create;
  frmprogressbar       := Tfrmprogressbar.Create(nil);
  cdscteqtdcarga       := TClasseQuery.create(QRetornaSQL.get_select_from(_cteQTDCARGA, _0), true);
  cdsctevlprestacao    := TClasseQuery.create(QRetornaSQL.get_select_from(_cteVLPRESTACAO, _0), true);
  cdscteremetentenota  := TClasseQuery.create(QRetornaSQL.get_select_from(_cteREMETENTENOTA, _0), true);
  cds                  := TClasseQuery.create(QRetornaSQL.get_select_from(_cte, _0), true);
end;

destructor TCteImportar.destroy;
begin
  freeandnil(cds);
  freeandnil(cdscteremetentenota);
  freeandnil(cdsctevlprestacao);
  freeandnil(cdscteqtdcarga);
  freeandnil(CTe1);
  freeandnil(Arquivo);
  freeandnil(frmprogressbar);
  freeandnil(cliente);
  inherited;
end;

function TCteImportar.set_diretorio: Boolean;
begin
  diretorio := QRotinas.getdiretorio(diretorio);
  result    := diretorio <> '';
end;

function TCteImportar.Carregar_cte(nmfile: string):boolean;
var
  texto : TStringStream;
  arquivo_ : TStrings;
begin
  texto    := TStringStream.Create('');
  arquivo_ := TStringList.Create;
  try
    CTE1.Conhecimentos.Clear;
    arquivo_.LoadFromFile(nmfile);
    texto.WriteString(UTF8Encode(arquivo_.text));
    try
      cte1.Conhecimentos.LoadFromStream(texto);
      result := True;
    except
      result := False;
    end;
  finally
    freeandnil(texto);
    FreeAndNil(arquivo_);
  end;
end;

function TCteImportar.pertence_ao_emitente: Boolean;
begin
  result := CTe1.Conhecimentos.Items[0].CTe.Emit.CNPJ = Empresa.nucnpj_;
end;

procedure TCteImportar.set_ide;
begin
  cds.q.FieldByName(_cdcte+_modal).AsString                     := _1;
  cds.q.FieldByName(_nustdocumento).AsString                    := _00;
  cds.q.fieldbyname(_CDCTE+_FORMA+_EMISSAO).asinteger           := get_tpemis(CTe1.Configuracoes.Geral.FormaEmissao);
  cds.q.fieldbyname(_CDUF+_EMISSAO).AsInteger                   := CTE1.Conhecimentos.Items[0].CTe.Ide.cUF;
  cds.q.fieldbyname(_CDCFOP).AsInteger                          := CTE1.Conhecimentos.Items[0].CTe.Ide.CFOP;
  cds.q.fieldbyname(_CDCTE).AsInteger                           := CTE1.Conhecimentos.Items[0].CTe.Ide.nCT;
  cds.q.fieldbyname(_DTEMISSAO).AsDateTime                      := CTE1.Conhecimentos.Items[0].CTe.Ide.dhEmi;
  cds.q.fieldbyname(_HREMISSAO).AsDateTime                      := CTE1.Conhecimentos.Items[0].CTe.Ide.dhEmi;
  cds.q.fieldbyname(_CDCTEFORMAPAGAMENTO).asinteger             := get_forpag(CTE1.Conhecimentos.Items[0].CTe.Ide.forPag);
  cds.q.fieldbyname(_CDCTE+_FORMA+_IMPRESSAO).asinteger         := get_tpimp(CTE1.Conhecimentos.Items[0].CTe.Ide.tpImp);
  cds.q.fieldbyname(_CDCTE+_TP+_SERVICO).asinteger              := get_tpcte(CTE1.Conhecimentos.Items[0].CTe.Ide.tpCTe);

  {$IFDEF PL_200}
  cds.q.fieldbyname(_CDUF+_EMISSAO).AsString                    := CodigodoCampo(_uf, CTE1.Conhecimentos.Items[0].CTe.ide.UFEnv, _sguf);
  cds.q.fieldbyname(_CDMUNICIPIO+_EMISSAO).AsInteger            := CTE1.Conhecimentos.Items[0].CTe.ide.cMunEnv;
  {$ENDIF}

  {$IFDEF PL_103}
  cds.q.fieldbyname(_CDUF+_EMISSAO).AsString                    := CodigodoCampo(_uf, CTE1.Conhecimentos.Items[0].CTe.ide.UFEmi, _sguf);
  cds.q.fieldbyname(_CDMUNICIPIO+_EMISSAO).AsInteger            := CTE1.Conhecimentos.Items[0].CTe.ide.cMunEmi;
  {$ENDIF}

  {$IFDEF PL_104}
  cds.q.fieldbyname(_CDUF+_EMISSAO).AsString                    := CodigodoCampo(_uf, CTE1.Conhecimentos.Items[0].CTe.ide.UFEnv, _sguf);
  cds.q.fieldbyname(_CDMUNICIPIO+_EMISSAO).AsInteger            := CTE1.Conhecimentos.Items[0].CTe.ide.cMunEnv;
  {$ENDIF}

  cds.q.fieldbyname(_CDMUNICIPIO+_INICIO).AsInteger             := CTE1.Conhecimentos.Items[0].CTe.Ide.cMunIni;
  cds.q.fieldbyname(_CDUF+_INICIO).AsString                     := CodigodoCampo(_uf, CTE1.Conhecimentos.Items[0].CTe.Ide.UFIni, _sguf);
  cds.q.fieldbyname(_CDMUNICIPIO+_TERMINO).AsInteger            := CTE1.Conhecimentos.Items[0].CTe.Ide.cMunFim;
  cds.q.fieldbyname(_CDUF+_TERMINO).AsString                    := CodigodoCampo(_uf, CTE1.Conhecimentos.Items[0].CTe.Ide.UFFim, _sguf);
  cds.q.fieldbyname(_CDCTETPTOMADOR).AsInteger                  := get_toma(CTE1.Conhecimentos.Items[0].CTe.Ide.Toma03.Toma);
  cds.q.fieldbyname(_CDCTE+_FINALIDADE+_EMISSAO).asinteger      := get_tpserv(CTE1.Conhecimentos.Items[0].CTe.Ide.tpServ);
end;

procedure TCteImportar.set_complemento;
begin
  cds.q.fieldbyname(_CDCTE+_TP+_PREVISAO+_ENTREGA).AsInteger    := get_tipodata(CTE1.Conhecimentos.Items[0].CTe.compl.Entrega.TipoData);
  cds.q.fieldbyname(_CDCTE+_TP+_PREVISAO+_ENTREGA+_H).AsInteger := get_tipohora(CTE1.Conhecimentos.Items[0].CTe.compl.Entrega.TipoHora);
  case CTE1.Conhecimentos.Items[0].CTe.compl.Entrega.TipoData of
        tdNaData,tdAteData,tdApartirData: cds.q.fieldbyname(_DT+_PREVISAO+_I).AsDateTime := CTE1.Conhecimentos.Items[0].CTe.compl.Entrega.comData.dProg;
        tdNoPeriodo: begin
                       cds.q.fieldbyname(_DT+_PREVISAO+_I).AsDateTime := CTE1.Conhecimentos.Items[0].CTe.compl.Entrega.noPeriodo.dIni;
                       cds.q.fieldbyname(_DT+_PREVISAO+_F).AsDateTime := CTE1.Conhecimentos.Items[0].CTe.compl.Entrega.noPeriodo.dFim;
                     end;
  end;
  case CTE1.Conhecimentos.Items[0].CTe.compl.Entrega.TipoHora of
       thNoHorario,thAteHorario,thApartirHorario:
          begin
            cds.q.fieldbyname(_HR+_PREVISAO+_I).AsDateTime := CTE1.Conhecimentos.Items[0].CTe.compl.Entrega.comHora.hProg;
          end;
       thNoIntervalo:
          begin
            cds.q.fieldbyname(_HR+_PREVISAO+_I).AsDateTime := CTE1.Conhecimentos.Items[0].CTe.compl.Entrega.noInter.hIni;
            cds.q.fieldbyname(_HR+_PREVISAO+_F).AsDateTime := CTE1.Conhecimentos.Items[0].CTe.compl.Entrega.noInter.hFim;
          end;
  end;
  cds.q.fieldbyname(_DSOBSERVACAO).AsString := CTE1.Conhecimentos.Items[0].CTe.compl.xObs;
end;

procedure TCteImportar.set_tomador;
var
  codigo : LargeInt;
begin
  if cds.q.fieldbyname(_CDCTETPTOMADOR).AsInteger <> 5 then
  begin
    Exit;
  end;
  // verificar se cnpj ou cpf
  if get_tppessoa(CTE1.Conhecimentos.Items[0].CTe.Ide.Toma4.CNPJCPF) = _f then
  begin
    codigo := qregistro.CodigodoString(_cliente, formatarCPF(CTE1.Conhecimentos.Items[0].CTe.Ide.Toma4.CNPJCPF), _nucpf)
  end
  else
  begin
    codigo := qregistro.CodigodoString(_cliente, FormatarCNPJ(CTE1.Conhecimentos.Items[0].CTe.Ide.Toma4.CNPJCPF), _nucnpj);
  end;
  if codigo = 0 then
  begin
    cliente.dsendereco    := CTE1.Conhecimentos.Items[0].CTe.Ide.Toma4.EnderToma.xLgr;
    cliente.dsnumero      := CTE1.Conhecimentos.Items[0].CTe.Ide.Toma4.EnderToma.nro;
    cliente.dscomplemento := CTE1.Conhecimentos.Items[0].CTe.Ide.Toma4.EnderToma.xCpl;
    cliente.nmbairro      := CTE1.Conhecimentos.Items[0].CTe.Ide.Toma4.EnderToma.xBairro;
    cliente.cdmunicipio   := CTE1.Conhecimentos.Items[0].CTe.Ide.Toma4.EnderToma.cMun;
    cliente.nucep         := IntToStr(CTE1.Conhecimentos.Items[0].CTe.Ide.Toma4.EnderToma.CEP);
    cliente.cduf          := qregistro.CodigodoString(_uf, CTE1.Conhecimentos.Items[0].CTe.Ide.Toma4.EnderToma.UF, _sguf);
    cliente.cdpais        := CTE1.Conhecimentos.Items[0].CTe.Ide.Toma4.EnderToma.cPais;
    cliente.tppessoa      := get_tppessoa(CTE1.Conhecimentos.Items[0].CTe.Ide.Toma4.CNPJCPF);
    if cliente.tppessoa = _J then
    begin
      cliente.nucnpj := FormatarCNPJ(CTE1.Conhecimentos.Items[0].CTe.Ide.Toma4.CNPJCPF)
    end
    else
    begin
      cliente.nucpf  := formatarCPF(CTE1.Conhecimentos.Items[0].CTe.ide.toma4.CNPJCPF);
    end;
    cliente.cdcliente  := CTE1.Conhecimentos.Items[0].CTe.ide.toma4.CNPJCPF.ToInt64;
    cliente.nuinscest  := CTE1.Conhecimentos.Items[0].CTe.Ide.Toma4.IE;
    cliente.rzsocial   := CTE1.Conhecimentos.Items[0].CTe.Ide.Toma4.xNome;
    cliente.nmcliente  := CTE1.Conhecimentos.Items[0].CTe.Ide.Toma4.xFant;
    cliente.nufone1    := CTE1.Conhecimentos.Items[0].CTe.Ide.Toma4.fone;
    cliente.Insert;
    codigo := cliente.cdcliente;
  end;
  cds.q.fieldbyname(_CDTOMADOR).ASLargeInt := codigo;
end;

function TCteImportar.get_tppessoa(nudocumento: string): string;
begin
  if Length(nudocumento) = 11 then
  begin
    result := _f
  end
  else if Length(nudocumento) = 14 then
  begin
    result := _j;
  end;
end;

procedure TCteImportar.set_remetente;
var
  codigo : LargeInt;
begin
  if CTE1.Conhecimentos.Items[0].CTe.Rem.CNPJCPF = '' then
  begin
    Exit;
  end;
  if get_tppessoa(CTE1.Conhecimentos.Items[0].CTe.Rem.CNPJCPF) = _f then
  begin
    codigo := qregistro.CodigodoString(_cliente, formatarCPF(CTE1.Conhecimentos.Items[0].CTe.Rem.CNPJCPF), _nucpf)
  end
  else
  begin
    codigo := qregistro.CodigodoString(_cliente, FormatarCNPJ(CTE1.Conhecimentos.Items[0].CTe.Rem.CNPJCPF), _nucnpj);
  end;
  if codigo = 0 then
  begin
    cliente.rzsocial      := CTE1.Conhecimentos.Items[0].CTe.Rem.xNome;
    cliente.nmcliente     := CTE1.Conhecimentos.Items[0].CTe.Rem.xFant;
    cliente.dsendereco    := CTE1.Conhecimentos.Items[0].CTe.Rem.EnderReme.xLgr;
    cliente.dsnumero      := CTE1.Conhecimentos.Items[0].CTe.Rem.EnderReme.nro;
    cliente.dscomplemento := CTE1.Conhecimentos.Items[0].CTe.Rem.EnderReme.xCpl;
    cliente.nmbairro      := CTE1.Conhecimentos.Items[0].CTe.Rem.EnderReme.xBairro;
    cliente.cdmunicipio   := CTE1.Conhecimentos.Items[0].CTe.Rem.EnderReme.cMun;
    cliente.nucep         := IntToStr(CTE1.Conhecimentos.Items[0].CTe.Rem.EnderReme.CEP);
    cliente.cduf          := qregistro.codigodostring(_uf, CTE1.Conhecimentos.Items[0].CTe.Rem.EnderReme.UF, _sguf);
    cliente.cdpais        := CTE1.Conhecimentos.Items[0].CTe.Rem.EnderReme.cPais;
    cliente.tppessoa      := get_tppessoa(CTE1.Conhecimentos.Items[0].CTe.Rem.CNPJCPF);
    if cliente.tppessoa = _J then
    begin
      cliente.nucnpj := FormatarCNPJ(CTE1.Conhecimentos.Items[0].CTe.Rem.CNPJCPF)
    end
    else
    begin
      cliente.nucpf  := formatarCPF(CTE1.Conhecimentos.Items[0].CTe.Rem.CNPJCPF);
    end;
    cliente.cdcliente := CTE1.Conhecimentos.Items[0].CTe.Rem.CNPJCPF.ToInt64;
    cliente.nuinscest := CTE1.Conhecimentos.Items[0].CTe.Rem.IE;
    cliente.nufone1   := CTE1.Conhecimentos.Items[0].CTe.Rem.fone;
    cliente.Insert;
    codigo := cliente.cdcliente;
  end;
  cds.q.fieldbyname(_cdremetente).AsLargeInt := codigo;
end;

procedure TCteImportar.set_destinatario;
var
  codigo : LargeInt;
begin
  if CTE1.Conhecimentos.Items[0].CTe.Dest.CNPJCPF = '' then
  begin
    Exit;
  end;
  if get_tppessoa(CTE1.Conhecimentos.Items[0].CTe.Dest.CNPJCPF) = _f then
  begin
    codigo := qregistro.CodigodoString(_cliente, formatarCPF(CTE1.Conhecimentos.Items[0].CTe.Dest.CNPJCPF), _nucpf)
  end
  else
  begin
    codigo := qregistro.CodigodoString(_cliente, FormatarCNPJ(CTE1.Conhecimentos.Items[0].CTe.Dest.CNPJCPF), _nucnpj);
  end;
  if codigo = 0 then
  begin
    try
      cliente.rzsocial      := CTE1.Conhecimentos.Items[0].CTe.Dest.xNome;
      cliente.dsendereco    := CTE1.Conhecimentos.Items[0].CTe.Dest.EnderDest.xLgr;
      cliente.dsnumero      := CTE1.Conhecimentos.Items[0].CTe.Dest.EnderDest.nro;
      cliente.dscomplemento := CTE1.Conhecimentos.Items[0].CTe.Dest.EnderDest.xCpl;
      cliente.nmbairro      := CTE1.Conhecimentos.Items[0].CTe.Dest.EnderDest.xBairro;
      cliente.cdmunicipio   := CTE1.Conhecimentos.Items[0].CTe.Dest.EnderDest.cMun;
      cliente.nucep         := IntToStr(CTE1.Conhecimentos.Items[0].CTe.Dest.EnderDest.CEP);
      cliente.cduf          := qregistro.codigodostring(_uf, CTE1.Conhecimentos.Items[0].CTe.Dest.EnderDest.UF, _sguf);
      cliente.cdpais        := CTE1.Conhecimentos.Items[0].CTe.Dest.EnderDest.cPais;
      cliente.tppessoa      := get_tppessoa(CTE1.Conhecimentos.Items[0].CTe.Rem.CNPJCPF);
      if cliente.tppessoa = _J then
      begin
        cliente.nucnpj := FormatarCNPJ(CTE1.Conhecimentos.Items[0].CTe.Dest.CNPJCPF)
      end
      else
      begin
        cliente.nucpf  := formatarCPF (CTE1.Conhecimentos.Items[0].CTe.Dest.CNPJCPF);
      end;
      cliente.nuinscest := CTE1.Conhecimentos.Items[0].CTe.Dest.IE;
      cliente.nufone1   := CTE1.Conhecimentos.Items[0].CTe.Dest.fone;
      cliente.cdcliente := CTE1.Conhecimentos.Items[0].CTe.Dest.CNPJCPF.ToInt64;
      cliente.Insert;
      codigo := cliente.cdcliente;
    except
      ShowMessage(IntToStr(CTE1.Conhecimentos.Items[0].CTe.Ide.nCT));
    end;
  end;
  cds.q.fieldbyname(_cddestinatario).AsLargeInt := codigo;
end;

procedure TCteImportar.set_expedidor;
var
  codigo : LargeInt;
begin
  if CTE1.Conhecimentos.Items[0].CTe.Exped.CNPJCPF = '' then
  begin
    Exit;
  end;
  if get_tppessoa(CTE1.Conhecimentos.Items[0].CTe.Exped.CNPJCPF) = _f then
  begin
    codigo := qregistro.CodigodoString(_cliente, formatarCPF(CTE1.Conhecimentos.Items[0].CTe.Exped.CNPJCPF), _nucpf)
  end
  else
  begin
    codigo := qregistro.CodigodoString(_cliente, FormatarCNPJ(CTE1.Conhecimentos.Items[0].CTe.Exped.CNPJCPF), _nucnpj);
  end;
  if codigo = 0 then
  begin
    cliente.rzsocial      := CTE1.Conhecimentos.Items[0].CTe.Exped.xNome;
    cliente.dsendereco    := CTE1.Conhecimentos.Items[0].CTe.Exped.EnderExped.xLgr;
    cliente.dsnumero      := CTE1.Conhecimentos.Items[0].CTe.Exped.EnderExped.nro;
    cliente.dscomplemento := CTE1.Conhecimentos.Items[0].CTe.Exped.EnderExped.xCpl;
    cliente.nmbairro      := CTE1.Conhecimentos.Items[0].CTe.Exped.EnderExped.xBairro;
    cliente.cdmunicipio   := CTE1.Conhecimentos.Items[0].CTe.Exped.EnderExped.cMun;
    cliente.nucep         := inttostr(CTE1.Conhecimentos.Items[0].CTe.Exped.EnderExped.CEP);
    cliente.cduf          := qregistro.codigodostring(_uf, CTE1.Conhecimentos.Items[0].CTe.Exped.EnderExped.UF, _sguf);
    cliente.cdpais        := CTE1.Conhecimentos.Items[0].CTe.Exped.EnderExped.cPais;
    cliente.tppessoa      := get_tppessoa(CTE1.Conhecimentos.Items[0].CTe.Exped.CNPJCPF);
    if cliente.tppessoa = _J then
    begin
      cliente.nucnpj := FormatarCNPJ(CTE1.Conhecimentos.Items[0].CTe.Exped.CNPJCPF)
    end
    else
    begin
      cliente.nucpf  := formatarCPF (CTE1.Conhecimentos.Items[0].CTe.Exped.CNPJCPF);
    end;
    cliente.nuinscest := CTE1.Conhecimentos.Items[0].CTe.Exped.IE;
    cliente.nufone1   := CTE1.Conhecimentos.Items[0].CTe.Exped.fone;
    cliente.cdcliente := CTE1.Conhecimentos.Items[0].CTe.Dest.CNPJCPF.ToInt64;
    cliente.Insert;
    codigo := cliente.cdcliente;
  end;
  cds.q.fieldbyname(_cdexpedidor).AsLargeInt := codigo;
end;

procedure TCteImportar.set_recebedor;
var
  codigo : LargeInt;
begin
  if CTE1.Conhecimentos.Items[0].CTe.receb.CNPJCPF = '' then
  begin
    Exit;
  end;
  if get_tppessoa(CTE1.Conhecimentos.Items[0].CTe.receb.CNPJCPF) = _f then
  begin
    codigo := qregistro.CodigodoString(_cliente, formatarCPF(CTE1.Conhecimentos.Items[0].CTe.receb.CNPJCPF), _nucpf)
  end
  else
  begin
    codigo := qregistro.CodigodoString(_cliente, FormatarCNPJ(CTE1.Conhecimentos.Items[0].CTe.receb.CNPJCPF), _nucnpj);
  end;
  if codigo = 0 then
  begin
    cliente.rzsocial      := CTE1.Conhecimentos.Items[0].CTe.receb.xNome;
    cliente.dsendereco    := CTE1.Conhecimentos.Items[0].CTe.receb.Enderreceb.xLgr;
    cliente.dsnumero      := CTE1.Conhecimentos.Items[0].CTe.receb.Enderreceb.nro;
    cliente.dscomplemento := CTE1.Conhecimentos.Items[0].CTe.receb.Enderreceb.xCpl;
    cliente.nmbairro      := CTE1.Conhecimentos.Items[0].CTe.receb.Enderreceb.xBairro;
    cliente.cdmunicipio   := CTE1.Conhecimentos.Items[0].CTe.receb.Enderreceb.cMun;
    cliente.nucep         := inttostr(CTE1.Conhecimentos.Items[0].CTe.receb.Enderreceb.CEP);
    cliente.cduf          := qregistro.codigodostring(_uf, CTE1.Conhecimentos.Items[0].CTe.receb.Enderreceb.UF, _sguf);
    cliente.cdpais        := CTE1.Conhecimentos.Items[0].CTe.receb.Enderreceb.cPais;
    cliente.tppessoa      := get_tppessoa(CTE1.Conhecimentos.Items[0].CTe.receb.CNPJCPF);
    if cliente.tppessoa = _J then
    begin
      cliente.nucnpj := FormatarCNPJ(CTE1.Conhecimentos.Items[0].CTe.receb.CNPJCPF)
    end
    else
    begin
      cliente.nucpf  := formatarCPF (CTE1.Conhecimentos.Items[0].CTe.receb.CNPJCPF);
    end;
    cliente.nuinscest := CTE1.Conhecimentos.Items[0].CTe.receb.IE;
    cliente.nufone1   := CTE1.Conhecimentos.Items[0].CTe.receb.fone;
    cliente.cdcliente := CTE1.Conhecimentos.Items[0].CTe.receb.CNPJCPF.ToInt64;
    cliente.Insert;
    codigo := cliente.cdcliente;
  end;
  cds.q.fieldbyname(_cdrecebedor).AsLargeInt := codigo;
end;

procedure TCteImportar.set_sticms;
begin
  cds.q.fieldbyname(_VLBASEICMS).AsCurrency := 0;
  if CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.SituTrib = cst00 then
  begin
    cds.q.fieldbyname(_NUSTICMS).AsString     := _00;
    {$IFDEF PL_103}
    cds.q.fieldbyname(_VLBASEICMS).AsCurrency := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.CST00.vBC;
    cds.q.fieldbyname(_ALICMS).AsCurrency     := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.CST00.pICMS;
    cds.q.fieldbyname(_VLICMS).AsCurrency     := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.CST00.vICMS;
    {$ELSE}
    cds.q.fieldbyname(_VLBASEICMS).AsCurrency := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS00.vBC;
    cds.q.fieldbyname(_ALICMS).AsCurrency     := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS00.pICMS;
    cds.q.fieldbyname(_VLICMS).AsCurrency     := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS00.vICMS;
    {$ENDIF}
  end
  else if CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.SituTrib = cst20 then
  begin
    cds.q.fieldbyname(_NUSTICMS).AsString     := _20;
    {$IFDEF PL_103}
    cds.q.fieldbyname(_AL+_RED+_ICMS).AsCurrency := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.CST20.pRedBC;
    cds.q.fieldbyname(_VLBASEICMS).AsCurrency    := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.CST20.vBC;
    cds.q.fieldbyname(_ALICMS).AsCurrency        := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.CST20.pICMS;
    cds.q.fieldbyname(_VLICMS).AsCurrency        := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.CST20.vICMS;
    {$ELSE}
    cds.q.fieldbyname(_AL+_RED+_ICMS).AsCurrency  := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS20.pRedBC;
    cds.q.fieldbyname(_VLBASEICMS).AsCurrency := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS20.vBC;
    cds.q.fieldbyname(_ALICMS).AsCurrency     := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS20.pICMS;
    cds.q.fieldbyname(_VLICMS).AsCurrency     := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS20.vICMS;
    {$ENDIF}
  end
  else if CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.SituTrib = cst40 then
  begin
    cds.q.fieldbyname(_NUSTICMS).AsString     := _40;
  end
  else if CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.SituTrib = cst41 then
  begin
    cds.q.fieldbyname(_NUSTICMS).AsString := _41;
  end
  else if CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.SituTrib = cst51 then
  begin
    cds.q.fieldbyname(_NUSTICMS).AsString := _51
  end
  else if CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.SituTrib = cst60 then
  begin
    cds.q.fieldbyname(_NUSTICMS).AsString             := _60;
    {$IFDEF PL_103}
    cds.q.fieldbyname(_VLBASEICMS).AsCurrency             := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.CST80.vBC;
    cds.q.fieldbyname(_ALICMS).AsCurrency                 := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.CST80.pICMS;
    cds.q.fieldbyname(_VLICMS).AsCurrency                 := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.CST80.vICMS;
    cds.q.fieldbyname(_VL+_CREDITO+_OUTOGARDO).AsCurrency := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.CST80.vCred;
    {$ELSE}
    cds.q.fieldbyname(_VLBASEICMS).AsCurrency             := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS60.vBCSTRet;
    cds.q.fieldbyname(_ALICMS).AsCurrency                 := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS60.pICMSSTRet;
    cds.q.fieldbyname(_VLICMS).AsCurrency                 := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS60.vICMSSTRet;
    cds.q.fieldbyname(_VL+_CREDITO+_OUTOGARDO).AsCurrency := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS60.vCred;
    {$ENDIF}
  end
  else if CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.SituTrib = cstICMSOutraUF then
  begin
    cds.q.fieldbyname(_NUSTICMS).AsString     := _90;
    {$IFDEF PL_103}
    cds.q.fieldbyname(_AL+_RED+_ICMS).AsCurrency := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.CST90.pRedBC;
    cds.q.fieldbyname(_VLBASEICMS).AsCurrency    := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.CST90.vBC;
    cds.q.fieldbyname(_ALICMS).AsCurrency        := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.CST90.pICMS;
    cds.q.fieldbyname(_VLICMS).AsCurrency        := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.CST90.vICMS;
    {$ELSE}
    cds.q.fieldbyname(_AL+_RED+_ICMS).AsCurrency := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMSOutraUF.pRedBCOutraUF;
    cds.q.fieldbyname(_VLBASEICMS).AsCurrency    := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMSOutraUF.vBCOutraUF;
    cds.q.fieldbyname(_ALICMS).AsCurrency        := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMSOutraUF.pICMSOutraUF;
    cds.q.fieldbyname(_VLICMS).AsCurrency        := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMSOutraUF.vICMSOutraUF;
    {$ENDIF}
  end
  else if CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.SituTrib = cst90 then
  begin
    cds.q.fieldbyname(_NUSTICMS).AsString                 := _90;
    {$IFDEF PL_103}
    cds.q.fieldbyname(_AL+_RED+_ICMS).AsCurrency          := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.CST90.pRedBC;
    cds.q.fieldbyname(_VLBASEICMS).AsCurrency             := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.CST90.vBC;
    cds.q.fieldbyname(_ALICMS).AsCurrency                 := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.CST90.pICMS;
    cds.q.fieldbyname(_VLICMS).AsCurrency                 := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.CST90.vICMS;
    cds.q.fieldbyname(_VL+_CREDITO+_OUTOGARDO).AsCurrency := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.CST90.vCred;
    {$ELSE}
    cds.q.fieldbyname(_AL+_RED+_ICMS).AsCurrency          := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS90.pRedBC;
    cds.q.fieldbyname(_VLBASEICMS).AsCurrency             := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS90.vBC;
    cds.q.fieldbyname(_ALICMS).AsCurrency                 := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS90.pICMS;
    cds.q.fieldbyname(_VLICMS).AsCurrency                 := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS90.vICMS;
    cds.q.fieldbyname(_VL+_CREDITO+_OUTOGARDO).AsCurrency := CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS90.vCred;
    {$ENDIF}
  end
  else if CTE1.Conhecimentos.Items[0].CTe.Imp.ICMS.SituTrib = cstICMSSN then
  begin
    cds.q.fieldbyname(_NUSTICMS).AsString := _ss
  end;
end;

procedure TCteImportar.set_vlprestacao;
var
  i : integer;
begin
  for i := 0 to CTE1.Conhecimentos.Items[0].CTe.vPrest.comp.Count - 1 do
  begin
    cdsctevlprestacao.q.Insert;
    cdsctevlprestacao.q.FieldByName(_CDCTE+_VLPRESTACAO).AsString := GerarCodigo(_ctevlprestacao);
    cdsctevlprestacao.q.FieldByName(_cdcte).AsString              := cds.q.fieldbyname(_cdcte).AsString;
    cdsctevlprestacao.q.fieldbyname(_CDCTETPVLPRESTACAO).AsString := qregistro.CodigodoNome(_ctetpvlprestacao, CTE1.Conhecimentos.Items[0].CTe.vPrest.comp.Items[i].xNome);
    if cdsctevlprestacao.q.fieldbyname(_CDCTETPVLPRESTACAO).AsInteger = 0 then
    begin
      cdsctevlprestacao.q.fieldbyname(_CDCTETPVLPRESTACAO).AsInteger := TCTETPVLPRESTACAO.InserirRegistro(CTE1.Conhecimentos.Items[0].CTe.vPrest.comp.Items[i].xNome);
    end;
    cdsctevlprestacao.q.fieldbyname(_VLPRESTACAO).AsCurrency      := CTE1.Conhecimentos.Items[0].CTe.vPrest.comp.Items[i].vComp;
    RegistraInformacao_(cdsctevlprestacao.q);
    aplicacao.aplyupdates(cdsctevlprestacao.q);
  end;
end;

procedure TCteImportar.set_qtdcarga;
var
  i : integer;
begin
  {$IFDEF PL_200}
  for i := 0 to CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infCarga.InfQ.Count - 1 do
  {$ELSE}
  for i := 0 to CTE1.Conhecimentos.Items[0].CTe.infCarga.InfQ.Count - 1 do
  {$ENDIF}
  begin
    cdscteqtdcarga.q.Insert;
    cdscteqtdcarga.q.FieldByName(_CDCTEQTDCARGA).AsString := GerarCodigo(_cteqtdcarga);
    cdscteqtdcarga.q.FieldByName(_cdcte).AsString         := cds.q.fieldbyname(_cdcte).AsString;
    {$IFDEF PL_200}
    cdscteqtdcarga.q.fieldbyname(_CDUNIDADE).Asstring     := qregistro.CodigodoNome(_unidade, get_unidmed(CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infCarga.InfQ.Items[i].cUnid));
    cdscteqtdcarga.q.fieldbyname(_CDCTETPMEDIDA).AsString := qregistro.CodigodoNome(_ctetpmedida, CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infCarga.InfQ.Items[i].tpMed);
    if cdscteqtdcarga.q.fieldbyname(_CDCTETPMEDIDA).AsInteger = 0 then
    begin
      cdscteqtdcarga.q.fieldbyname(_CDCTETPMEDIDA).AsInteger := Tctetpmedida.inserirRegistro(CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infCarga.InfQ.Items[i].tpMed);
    end;
    cdscteqtdcarga.q.fieldbyname(_QTITEM).AsFloat         := CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infCarga.InfQ.Items[i].qCarga;
    {$ELSE}
    cdscteqtdcarga.q.fieldbyname(_CDUNIDADE).Asstring     := qregistro.CodigodoNome(_unidade, get_unidmed(CTE1.Conhecimentos.Items[0].CTe.infCarga.InfQ.Items[i].cUnid));
    cdscteqtdcarga.q.fieldbyname(_CDCTETPMEDIDA).AsString := qregistro.CodigodoNome(_ctetpmedida, CTE1.Conhecimentos.Items[0].CTe.infCarga.InfQ.Items[i].tpMed);
    if cdscteqtdcarga.q.fieldbyname(_CDCTETPMEDIDA).AsInteger = 0 then
    begin
      cdscteqtdcarga.q.fieldbyname(_CDCTETPMEDIDA).AsInteger := Tctetpmedida.inserirRegistro(CTE1.Conhecimentos.Items[0].CTe.infCarga.InfQ.Items[i].tpMed);
    end;
    cdscteqtdcarga.q.fieldbyname(_QTITEM).AsFloat         := CTE1.Conhecimentos.Items[0].CTe.infCarga.InfQ.Items[i].qCarga;
    {$ENDIF}
    RegistraInformacao_(cdscteqtdcarga.q);
    aplicacao.aplyupdates(cdscteqtdcarga.q);
  end;
end;

procedure TCteImportar.set_remetentenota;
var
  i : Integer;
begin
  {$IFDEF PL_200}
  for i := 0 to CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.infNF.Count - 1 do
  {$ELSE}
  for i := 0 to CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Count - 1 do
  {$ENDIF}
  begin
    if i = 0 then
    begin
      cds.q.Edit;
      cds.q.fieldbyname(_CDCTE+_TP+_INFORMACAO+_REMETENTE).AsInteger := 1;
      aplicacao.aplyupdates(cds.q);
    end;
    cdscteremetentenota.q.Insert;
    cdscteremetentenota.q.FieldByName(_CDCTE+_REMETENTE+_NOTA).AsString       := GerarCodigo(_cteremetentenota);
    cdscteremetentenota.q.FieldByName(_cdcte).AsString               := cds.q.fieldbyname(_cdcte).AsString;
    {$IFDEF PL_200}
    cdscteremetentenota.q.fieldbyname(_NU+_ROMANEIO).AsString        := CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.InfNF.Items[i].nRoma;
    cdscteremetentenota.q.fieldbyname(_NUPEDIDO).AsString            := CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.InfNF.Items[i].nPed;
    cdscteremetentenota.q.fieldbyname(_NUSERIE).AsString             := CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.InfNF.Items[i].serie;
    {$ELSE}
    cdscteremetentenota.q.fieldbyname(_NU+_ROMANEIO).AsString        := CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Items[i].nRoma;
    cdscteremetentenota.q.fieldbyname(_NUPEDIDO).AsString            := CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Items[i].nPed;
    cdscteremetentenota.q.fieldbyname(_NUSERIE).AsString             := CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Items[i].serie;
    {$ENDIF}
    if cdscteremetentenota.q.fieldbyname(_NUSERIE).AsString = '' then
    begin
      cdscteremetentenota.q.fieldbyname(_NUSERIE).AsString := _1;
    end;
    {$IFDEF PL_200}
    cdscteremetentenota.q.fieldbyname(_NUNOTA).AsString              := CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.InfNF.Items[i].nDoc;
    cdscteremetentenota.q.fieldbyname(_DTEMISSAO).AsDateTime         := CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.InfNF.Items[i].dEmi;
    cdscteremetentenota.q.fieldbyname(_VLBASEICMS).AsCurrency        := CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.InfNF.Items[i].vBC;
    cdscteremetentenota.q.fieldbyname(_VLICMS).AsCurrency            := CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.InfNF.Items[i].vICMS;
    cdscteremetentenota.q.fieldbyname(_VLBASEICMSSUBTRIB).AsCurrency := CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.InfNF.Items[i].vBCST;
    cdscteremetentenota.q.fieldbyname(_VLICMSSUBTRIB).AsCurrency     := CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.InfNF.Items[i].vST;
    cdscteremetentenota.q.fieldbyname(_VLPRODUTO).AsCurrency         := CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.InfNF.Items[i].vProd;
    cdscteremetentenota.q.fieldbyname(_VLTOTAL).AsCurrency           := CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.InfNF.Items[i].vNF;
    cdscteremetentenota.q.fieldbyname(_CDCFOP).AsInteger             := CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.InfNF.Items[i].nCFOP;
    cdscteremetentenota.q.fieldbyname(_QTPESO).AsFloat               := CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.InfNF.Items[i].nPeso;
    cdscteremetentenota.q.fieldbyname(_NU+_PIN).AsString             := CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.InfNF.Items[i].PIN;
    {$ELSE}
    cdscteremetentenota.q.fieldbyname(_NUNOTA).AsString              := CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Items[i].nDoc;
    cdscteremetentenota.q.fieldbyname(_DTEMISSAO).AsDateTime         := CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Items[i].dEmi;
    cdscteremetentenota.q.fieldbyname(_VLBASEICMS).AsCurrency        := CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Items[i].vBC;
    cdscteremetentenota.q.fieldbyname(_VLICMS).AsCurrency            := CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Items[i].vICMS;
    cdscteremetentenota.q.fieldbyname(_VLBASEICMSSUBTRIB).AsCurrency := CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Items[i].vBCST;
    cdscteremetentenota.q.fieldbyname(_VLICMSSUBTRIB).AsCurrency     := CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Items[i].vST;
    cdscteremetentenota.q.fieldbyname(_VLPRODUTO).AsCurrency         := CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Items[i].vProd;
    cdscteremetentenota.q.fieldbyname(_VLTOTAL).AsCurrency           := CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Items[i].vNF;
    cdscteremetentenota.q.fieldbyname(_CDCFOP).AsInteger             := CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Items[i].nCFOP;
    cdscteremetentenota.q.fieldbyname(_QTPESO).AsFloat               := CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Items[i].nPeso;
    cdscteremetentenota.q.fieldbyname(_NU+_PIN).AsString             := CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Items[i].PIN;
    {$ENDIF}
    // Local de Retirada
    {
    if CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.infNF.Items[i].locRet.CNPJCPF <> '' then
    begin
      cdscteremetentenota.q.fieldbyname(_BO+_LOCAL+_RETIRADA+_DIFERENTE).AsString := _S;
      if get_tppessoa(CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.InfNF.Items[i].locRet.CNPJCPF) = _J then cdscteremetentenota.q.fieldbyname(_NUCNPJ).AsString := CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Items[i].locRet.CNPJCPF
                                                                                                            else cdscteremetentenota.q.fieldbyname(_NUCPF).AsString  := CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Items[i].locRet.CNPJCPF;
      cdscteremetentenota.q.fieldbyname(_RZSOCIAL).AsString      := CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Items[i].locRet.xNome;
      cdscteremetentenota.q.fieldbyname(_DSENDERECO).AsString    := CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Items[i].locRet.xLgr;
      cdscteremetentenota.q.fieldbyname(_DSNUMERO).AsString      := CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Items[i].locRet.nro;
      cdscteremetentenota.q.fieldbyname(_DSCOMPLEMENTO).AsString := CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Items[i].locRet.xCpl;
      cdscteremetentenota.q.fieldbyname(_NMBAIRRO).AsString      := CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Items[i].locRet.xBairro;
      cdscteremetentenota.q.fieldbyname(_CDMUNICIPIO).AsInteger  := CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Items[i].locRet.cMun;
      cdscteremetentenota.q.fieldbyname(_CDMUNICIPIO).AsString   := qregistro.CodigodoNome(_municipio, CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Items[i].locRet.xMun);
      cdscteremetentenota.q.fieldbyname(_CDUF).AsString          := CodigodoCampo(_uf, CTE1.Conhecimentos.Items[0].CTe.Rem.InfNF.Items[i].locRet.UF, _sguf);
    end;
    }
    RegistraInformacao_(cdscteremetentenota.q);
    aplicacao.aplyupdates(cdscteremetentenota.q);
  end;
  {$IFDEF PL_200}
  for i := 0 to CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.infNFe.Count - 1 do
  {$ELSE}
  for i := 0 to CTE1.Conhecimentos.Items[0].CTe.Rem.InfNFe.Count - 1 do
  {$ENDIF}
  begin
    if i = 0 then
    begin
      cds.q.Edit;
      cds.q.fieldbyname(_CDCTE+_TP+_INFORMACAO+_REMETENTE).AsInteger := 2;
      aplicacao.aplyupdates(cds.q);
    end;
    cdscteremetentenota.q.Insert;
    cdscteremetentenota.q.FieldByName(_CDCTE+_REMETENTE+_NOTA).AsString := GerarCodigo(_cteremetentenota);
    cdscteremetentenota.q.FieldByName(_cdcte).AsString                  := cds.q.fieldbyname(_cdcte).AsString;
    cdscteremetentenota.q.fieldbyname(_nudocfiscalicms).AsString        := _55;
    {$IFDEF PL_200}
    cdscteremetentenota.q.fieldbyname(_NUCHAVENFE).AsString             := CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.infNFe.Items[i].chave;
    cdscteremetentenota.q.fieldbyname(_NU+_PIN).AsString                := CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.infNFe.Items[i].PIN;
    cdscteremetentenota.q.fieldbyname(_NUSERIE).AsString                := copy(CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.infNFe.Items[i].chave, 23, 3);
    cdscteremetentenota.q.fieldbyname(_nunota).AsString                 := copy(CTE1.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.infNFe.Items[i].chave, 26, 9);
    {$ELSE}
    cdscteremetentenota.q.fieldbyname(_NUCHAVENFE).AsString             := CTE1.Conhecimentos.Items[0].CTe.Rem.InfNFe.Items[i].chave;
    cdscteremetentenota.q.fieldbyname(_NU+_PIN).AsString                := CTE1.Conhecimentos.Items[0].CTe.Rem.InfNFe.Items[i].PIN;
    cdscteremetentenota.q.fieldbyname(_NUSERIE).AsString                := copy(CTE1.Conhecimentos.Items[0].CTe.Rem.InfNFe.Items[i].chave, 23, 3);
    cdscteremetentenota.q.fieldbyname(_nunota).AsString                 := copy(CTE1.Conhecimentos.Items[0].CTe.Rem.InfNFe.Items[i].chave, 26, 9);
    {$ENDIF}
    cdscteremetentenota.q.fieldbyname(_VLBASEICMS).AsCurrency           := 0;
    cdscteremetentenota.q.fieldbyname(_VLICMS).AsCurrency               := 0;
    cdscteremetentenota.q.fieldbyname(_VLBASEICMSSUBTRIB).AsCurrency    := 0;
    cdscteremetentenota.q.fieldbyname(_VLICMSSUBTRIB).AsCurrency        := 0;
    cdscteremetentenota.q.fieldbyname(_VLPRODUTO).AsCurrency            := 0;
    cdscteremetentenota.q.fieldbyname(_VLTOTAL).AsCurrency              := 0;
    RegistraInformacao_(cdscteremetentenota.q);
    aplicacao.aplyupdates(cdscteremetentenota.q);
  end;
end;

end.
