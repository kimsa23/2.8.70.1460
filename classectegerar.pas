{$I ACBr.inc}
unit classectegerar;

interface

uses
  System.Actions, System.UITypes,
  dialogs, SysUtils, Math,
  SqlExpr, DBClient,
  ACBrValidador, pcnConversao, ACBrCTe, pcteConversaoCTe,
  ustrings, uRegistro, uConstantes,
  classeaplicacao, classecliente, classeempresa, classecte, classequery,
  classetransportadora;

type
  TCTEGerar = class(TObject)
    private
      ACBrCTe: TACBrCTe;
      cte : TCte;
      procedure adicionarPrestacao(nmvalor:string; valor: currency);
      function getCTETipoDocumento(nuctetpdocoutro:string):TpcteTipoDocumento;
      function getTpemis(codigo:Integer):TpcnTipoEmissao;
      function getTpserv(codigo:Integer):TpcteTipoServico;
      function getTpcte(codigo:String):TpcteTipoCTe;
      function getForpag(codigo:integer):TpcteFormaPagamento;
      function getTipodata(codigo: integer): TpcteTipoDataPeriodo;
      function getTipoHora(codigo: Integer): TpcteTipoHorarioIntervalo;
      function getTpdocumentoanterior(nutpdocumento: string): TpcteTipoDocumentoAnterior;
      procedure InseriItrCTEDocumentoAnterior(i:integer);
      procedure preencherDadosDocumentoAnterior;
      procedure setAnulacao;
      procedure setCarga;
      procedure setComplementar;
      procedure setDestinatario;
      procedure setEmitente;
      procedure setExpedidor;
      procedure setIdentificacao;
      procedure setMotorista;
      procedure setRecebedor;
      procedure setRemetente;
      procedure setRemetenteNFE;
      procedure setRemetenteNota;
      procedure setRemetenteOutros;
      procedure setRodoviario;
      procedure setSeguro;
      procedure setSticms;
      procedure setSticms00;
      procedure setSticms20;
      procedure setSticms40;
      procedure setSticms41;
      procedure setSticms51;
      procedure setSticms60;
      procedure setSticms090;
      procedure setSticms90;
      procedure setSticmsSS;
      procedure setTomador;
      procedure setValores;
      procedure setVeiculo;
      procedure setInformacao;
      procedure adicionarVeiculo(veiculo: tveiculo; i: integer);
      procedure adicionarProprietario(veiculo: TVeiculo);
      procedure setTipoHora;
      procedure adicionarInformacoesComplementares;
      procedure setTipoData;
      function GetSubContratada: string;
      procedure set_mensagem_sub_contratado;
      procedure set_nucontrato;
      procedure set_nudocumento_transporte;
      procedure set_nueixos;
    public
      constructor Create(ACBrCTe1_: TACBrCTe; cte_ : TCte);
      function Gerar:boolean;
  end;

implementation

function TCTEGerar.getTpemis(codigo:Integer):TpcnTipoEmissao;
begin
  case codigo of
    1 : result := teNormal;
    2 : result := teContingencia;
    3 : result := teSCAN;
    4 : result := teDPEC;
    5 : result := teFSDA;
    7 : result := teSVCRS;
    else result := teSVCSP;
  end;
end;

procedure TCTEGerar.adicionarPrestacao(nmvalor: string; valor: currency);
begin
  if valor > 0 then
  begin
    with ACBrCTe.Conhecimentos.Items[0].CTe.vPrest.comp.Add do
    begin
      xNome := uppercase(nmvalor);
      vComp := valor;
    end;
  end;
end;

constructor TCTEGerar.Create(ACBrCTe1_: TACBrCTe; cte_ : TCte);
begin
  ACBrCTe := ACBrCTe1_;
  cte := cte_;
end;

function TCTEGerar.Gerar: boolean;
begin
  ACBrCTe.Conhecimentos.Clear;
  ACBrCTe.Configuracoes.Geral.FormaEmissao := getTpemis(cte.CDCTEFORMAEMISSAO);
  with ACBrCTe.Conhecimentos.Add.CTe do
  begin
    setIdentificacao;
    setTomador;
    setEmitente;
    setRemetente;
    setDestinatario;
    setExpedidor;
    setRecebedor;
    setInformacao;
    setValores;
    setSticms;
    setCarga;
    setSeguro;
    setAnulacao;
    setRodoviario;
    setComplementar;
  end;
  result := True;
end;

function TCTEGerar.getCTETipoDocumento(nuctetpdocoutro:string): TpcteTipoDocumento;
begin
  if nuctetpdocoutro = _00 then
  begin
    result := tdDeclaracao
  end
  else if nuctetpdocoutro = _10 then
  begin
    result := tdDutoviario
  end
  else
  begin
    result := tdOutros;
  end;
  //else if nuctetpdocoutro = _99 then result := tdOutros;
end;

function TCTEGerar.getForpag(codigo:integer):TpcteFormaPagamento;
begin
  if codigo = 1 then
  begin
    result := fpPago
  end
  else if codigo = 2 then
  begin
    result := fpAPagar
  end
  else
  begin
    result := fpOutros; //else if codigo = 3 then result := fpOutros;
  end;
end;

function TCTEGerar.getTpcte(codigo:String):TpcteTipoCTe;
begin
  if codigo =  _0 then
  begin
    result := tcNormal;
  end
  else if codigo = _1 then
  begin
    result := tcComplemento;
  end
  else if codigo = _2 then
  begin
     result := tcAnulacao;
  end
  else
  begin
    result := tcSubstituto; //4 : result := tcSubstituto;
  end;
end;

function TCTEGerar.getTpserv(codigo:Integer):TpcteTipoServico;
begin
  case codigo of
    1 : result := tsNormal;
    2 : result := tsSubcontratacao;
    3 : result := tsRedespacho;
    else result := tsIntermediario; //3 : result := tsIntermediario;
  end;
end;

function TCTEGerar.getTipodata(codigo:integer):TpcteTipoDataPeriodo;
begin
  case codigo of
    1 : result := tdSemData;
    2 : result := tdNaData;
    3 : result := tdAteData;
    4 : result := tdApartirData;
    else result := tdNoPeriodo; // 5 : result := tdNoPeriodo;
  end;
end;

function TCTEGerar.getTipoHora(codigo:Integer):TpcteTipoHorarioIntervalo;
begin
  case codigo of
    1 : result := thSemHorario;
    2 : result := thNoHorario;
    3 : result := thAteHorario;
    4 : result := thApartirHorario;
    else result := thNoIntervalo; //5 : result := thNoIntervalo;
  end;
end;

procedure TCTEGerar.setMotorista;
var
  i : Integer;
  transportadora : TTransportadora;
begin
  for I := 0 to cte.ctetransportadora.Count - 1 do
  begin
    transportadora := ttransportadora.Create;
    try
      transportadora.Select(cte.ctetransportadora.items[i].cdtransportadora);
      if transportadora.tppessoa = _F then
      begin
        with ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.Rodo do
        begin
          moto.Add;
          moto.Items[i].xNome := transportadora.NMTRANSPORTADORA;
          moto.Items[i].CPF   := removercaracteres(transportadora.nucpf);
        end;
      end;
    finally
      freeandnil(transportadora);
    end;
  end;
end;

procedure TCTEGerar.adicionarVeiculo(veiculo : tveiculo; i : integer);
begin
  with ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.Rodo.veic.add do
  begin
    cInt    := copy(cte.ctetransportadora.Items[i].cdTRANSPORTADORA.ToString, 1, 10);
    RENAVAM := FormatarTextoEsquerda(veiculo.nurenavam, 9, _0);
    placa   := veiculo.NUPLACA;
    tara    := veiculo.pstara;
    capKG   := veiculo.pscapacidade;
    capM3   := veiculo.pscapacidadem3;
    tpVeic  := veiculo.gettpveiculo;
    tpRod   := veiculo.gettprodado;
    tpCar   := cte.gettpcarroceria(veiculo.cdctetpcarroceria);
    UF      := qregistro.StringdoCodigo(_uf, veiculo.cduf, _sguf);
  end;
end;

procedure TCTEGerar.adicionarProprietario(veiculo: TVeiculo);
var
  transportadora : ttransportadora;
  x : Integer;
begin
  x := ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.Rodo.veic.Count - 1;
  transportadora := ttransportadora.Create;
  try
    if not transportadora.select(veiculo.cdtransportadora) then
    begin
      ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.Rodo.veic.Items[x].tpProp := tpProprio
    end
    else
    begin
      ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.Rodo.veic.Items[x].tpProp      := tpTerceiro;
      ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.Rodo.veic.Items[x].Prop.RNTRC  := veiculo.nurntrc;
      ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.Rodo.veic.Items[x].Prop.xNome  := transportadora.nmtransportadora;
      ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.Rodo.veic.Items[x].Prop.UF     := qregistro.StringdoCodigo(_uf, transportadora.cduf, _sguf);
      ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.Rodo.veic.Items[x].Prop.tpProp := veiculo.gettpproprietario;
      if transportadora.tppessoa = _F then
      begin
        ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.Rodo.veic.Items[x].Prop.CNPJCPF := removercaracteres(transportadora.nucpf);
        ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.Rodo.veic.Items[x].Prop.IE      := UpperCase(_isento);
      end
      else
      begin
        ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.Rodo.veic.Items[x].Prop.CNPJCPF := removercaracteres(transportadora.nucnpj);
        ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.Rodo.veic.Items[x].Prop.IE := transportadora.nuinscest;
        if transportadora.nuinscest <> UpperCase(_isento) then
        begin
          ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.Rodo.veic.Items[x].Prop.IE := removercaracteres(transportadora.nuinscest);
        end;
      end;
    end;
  finally
    freeandnil(transportadora);
  end;
end;

procedure TCTEGerar.setVeiculo;
var
  i : Integer;
begin
  for I := 0 to cte.ctetransportadora.Count -1 do
  begin
    if cte.ctetransportadora.Items[i].veiculo.Select(cte.ctetransportadora.Items[i].cdveiculo) then
    begin
      adicionarVeiculo(cte.ctetransportadora.Items[i].veiculo, i);
      adicionarProprietario(cte.ctetransportadora.Items[i].veiculo);
    end;
    if cte.ctetransportadora.Items[i].veiculocarreta.Select(cte.ctetransportadora.Items[i].cdveiculocarreta) then
    begin
      adicionarVeiculo(cte.ctetransportadora.Items[i].veiculocarreta, i);
      adicionarProprietario(cte.ctetransportadora.Items[i].veiculocarreta);
    end;
    if cte.ctetransportadora.Items[i].veiculocarreta2.Select(cte.ctetransportadora.Items[i].cdveiculocarreta2) then
    begin
      adicionarVeiculo(cte.ctetransportadora.Items[i].veiculocarreta2, i);
      adicionarProprietario(cte.ctetransportadora.Items[i].veiculocarreta2);
    end;
  end;
end;

procedure TCTEGerar.setEmitente;
begin
  ACBrCTe.Conhecimentos.Items[0].CTe.Emit.CNPJ := Empresa.nucnpj_;
  ACBrCTe.Conhecimentos.Items[0].CTe.Emit.IE := empresa.nuinscest_;
  ACBrCTe.Conhecimentos.Items[0].CTe.Emit.xNome := empresa.rzsocial;
  ACBrCTe.Conhecimentos.Items[0].CTe.Emit.xFant := empresa.nmempresa;
  ACBrCTe.Conhecimentos.Items[0].CTe.Emit.EnderEmit.xLgr := Empresa.endereco.dsendereco;
  ACBrCTe.Conhecimentos.Items[0].CTe.Emit.EnderEmit.nro := Empresa.endereco.dsnumero;
  ACBrCTe.Conhecimentos.Items[0].CTe.Emit.EnderEmit.xCpl := Empresa.endereco.dscomplemento;
  ACBrCTe.Conhecimentos.Items[0].CTe.Emit.EnderEmit.xBairro := Empresa.endereco.nmbairro;
  ACBrCTe.Conhecimentos.Items[0].CTe.Emit.EnderEmit.cMun := empresa.endereco.cdmunicipio;
  ACBrCTe.Conhecimentos.Items[0].CTe.Emit.EnderEmit.xMun := Empresa.endereco.nmmunicipio;
  ACBrCTe.Conhecimentos.Items[0].CTe.Emit.EnderEmit.CEP := strtoint(removercaracteres(empresa.endereco.nucep));
  ACBrCTe.Conhecimentos.Items[0].CTe.Emit.EnderEmit.UF := empresa.endereco.sguf;
  ACBrCTe.Conhecimentos.Items[0].CTe.Emit.EnderEmit.fone := empresa.nufone1_;
end;

procedure TCTEGerar.setRemetenteNota;
var
  I: Integer;
begin
  for I := 0 to cte.cteremetentenota.Count - 1 do
  begin
    with ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.infNF.Add do
    begin
      nRoma := cte.cteremetentenota.Items[i].NUROMANEIO;
      nPed  := cte.cteremetentenota.Items[i].NUPEDIDO;
      serie := cte.cteremetentenota.Items[i].NUSERIE;
      nDoc  := cte.cteremetentenota.Items[i].NUNOTA;
      dEmi  := cte.cteremetentenota.Items[i].DTEMISSAO;
      vBC   := RoundTo(cte.cteremetentenota.Items[i].VLBASEICMS, -2);
      vICMS := RoundTo(cte.cteremetentenota.Items[i].VLICMS, -2);
      vBCST := RoundTo(cte.cteremetentenota.Items[i].VLBASEICMSSUBTRIB, -2);
      vST   := RoundTo(cte.cteremetentenota.Items[i].VLICMSSUBTRIB, -2);
      vProd := RoundTo(cte.cteremetentenota.Items[i].vlproduto, -2);
      vNF   := RoundTo(cte.cteremetentenota.Items[i].VLTOTAL, -2);
      nCFOP := cte.cteremetentenota.Items[i].CDCFOP;
      nPeso := RoundTo(cte.cteremetentenota.Items[i].psbruto, -2);
      if cte.cteremetentenota.Items[i].NUPIN <> 0 then
      begin
        PIN   := inttostr(cte.cteremetentenota.Items[i].NUPIN);
      end;
    end;
  end;
end;

procedure TCTEGerar.setRemetenteOutros;
var
  I: Integer;
begin
  for I := 0 to cte.cteremetentenota.Count - 1 do
  begin
    with ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.infOutros.Add do
    begin
      tpDoc      := getCTETipoDocumento(cte.cteremetentenota.Items[i].NUCTETPDOCOUTROS);
      descOutros := cte.cteremetentenota.Items[i].DSOUTROS;
      nDoc       := cte.cteremetentenota.Items[i].NUNOTA;
      dEmi       := cte.cteremetentenota.Items[i].DTEMISSAO;
      vDocFisc   := cte.cteremetentenota.Items[i].VLTOTAL;
      dPrev      := cte.cteremetentenota.Items[i].DTPREVISAO;
    end;
  end;
end;

procedure TCTEGerar.setRemetenteNFE;
var
  I: Integer;
begin
  for I := 0 to cte.cteremetentenota.Count - 1 do
  begin
    with ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.InfNFe.Add do
    begin
      chave := cte.cteremetentenota.Items[i].NUCHAVENFE;
      if cte.cteremetentenota.Items[i].NUPIN <> 0 then
      begin
        PIN   := inttostr(cte.cteremetentenota.Items[i].NUPIN);
      end;
    end;
  end;
end;

procedure TCTEGerar.setDestinatario;
begin
  if cte.CDDESTINATARIO = 0  then
  begin
    Exit;
  end;
  cte.destinatario.select(cte.cddestinatario);
  ACBrCTe.Conhecimentos.Items[0].CTe.Dest.xNome             := cte.destinatario.rzsocial;
  ACBrCTe.Conhecimentos.Items[0].CTe.Dest.EnderDest.xLgr    := cte.destinatario.dsendereco;
  ACBrCTe.Conhecimentos.Items[0].CTe.Dest.EnderDest.nro     := cte.destinatario.dsnumero;
  ACBrCTe.Conhecimentos.Items[0].CTe.Dest.EnderDest.xCpl    := cte.destinatario.dscomplemento;
  ACBrCTe.Conhecimentos.Items[0].CTe.Dest.EnderDest.xBairro := cte.destinatario.nmbairro;
  ACBrCTe.Conhecimentos.Items[0].CTe.Dest.EnderDest.cMun    := cte.destinatario.cdmunicipio;
  ACBrCTe.Conhecimentos.Items[0].CTe.Dest.EnderDest.xMun    := qregistro.nomedocodigo(_municipio, cte.destinatario.cdmunicipio);
  if removercaracteres(cte.destinatario.nucep) <> '' then
  begin
    ACBrCTe.Conhecimentos.Items[0].CTe.Dest.EnderDest.CEP := strtoint(removercaracteres(cte.destinatario.nucep));
  end;
  ACBrCTe.Conhecimentos.Items[0].CTe.Dest.EnderDest.UF      := qregistro.stringdocodigo(_uf, cte.destinatario.cduf, _sguf);
  ACBrCTe.Conhecimentos.Items[0].CTe.Dest.EnderDest.cPais   := cte.destinatario.cdpais;
  ACBrCTe.Conhecimentos.Items[0].CTe.Dest.EnderDest.xPais   := qregistro.nomedocodigo(_pais, cte.destinatario.cdpais);
  if cte.destinatario.tppessoa = _J then
  begin
    ACBrCTe.Conhecimentos.Items[0].CTe.Dest.CNPJCPF := removercaracteres(cte.destinatario.nucnpj);
    cte.destinatario.ValidarNuinscestParaDocumentoEletronico;
  end
  else ACBrCTe.Conhecimentos.Items[0].CTe.Dest.CNPJCPF := removercaracteres(cte.destinatario.nucpf);
  ACBrCTe.Conhecimentos.Items[0].CTe.Dest.IE           := removercaracteres(cte.destinatario.nuinscest);
  ACBrCTe.Conhecimentos.Items[0].CTe.Dest.fone         := removercaracteres(cte.destinatario.nufone1);
  if (cte.destinatario.nufone1 <> '') and (Length(cte.destinatario.nufone1) < 13) then
  begin
    MessageDlg('Número do telefone do Destinatário preenchido incorretamente.', mtInformation, [mbOK], 0);
    Abort;
  end;
end;

procedure TCTEGerar.setExpedidor;
begin
  if cte.CDEXPEDIDOR = 0 then
  begin
    Exit;
  end;
  cte.expedidor.select(cte.CDEXPEDIDOR);
  ACBrCTe.Conhecimentos.Items[0].CTe.Exped.xNome              := cte.expedidor.rzsocial;
  ACBrCTe.Conhecimentos.Items[0].CTe.Exped.EnderExped.xLgr    := cte.expedidor.dsendereco;
  ACBrCTe.Conhecimentos.Items[0].CTe.Exped.EnderExped.nro     := cte.expedidor.dsnumero;
  ACBrCTe.Conhecimentos.Items[0].CTe.Exped.EnderExped.xCpl    := cte.expedidor.dscomplemento;
  ACBrCTe.Conhecimentos.Items[0].CTe.Exped.EnderExped.xBairro := cte.expedidor.nmbairro;
  ACBrCTe.Conhecimentos.Items[0].CTe.Exped.EnderExped.cMun    := cte.expedidor.cdmunicipio;
  ACBrCTe.Conhecimentos.Items[0].CTe.Exped.EnderExped.xMun    := qregistro.nomedocodigo(_municipio, cte.expedidor.cdmunicipio);
  if removercaracteres(cte.expedidor.nucep) <> '' then
  begin
    ACBrCTe.Conhecimentos.Items[0].CTe.Exped.EnderExped.CEP := strtoint(removercaracteres(cte.expedidor.nucep));
  end;
  ACBrCTe.Conhecimentos.Items[0].CTe.Exped.EnderExped.UF      := qregistro.stringdocodigo(_uf, cte.expedidor.cduf, _sguf);
  ACBrCTe.Conhecimentos.Items[0].CTe.Exped.EnderExped.cPais   := cte.expedidor.cdpais;
  ACBrCTe.Conhecimentos.Items[0].CTe.Exped.EnderExped.xPais   := qregistro.nomedocodigo(_pais, cte.expedidor.cdpais);
  if cte.expedidor.tppessoa = _J then
  begin
    ACBrCTe.Conhecimentos.Items[0].CTe.Exped.CNPJCPF := removercaracteres(cte.expedidor.nucnpj);
    cte.expedidor.ValidarNuinscestParaDocumentoEletronico;
  end
  else
  begin
    ACBrCTe.Conhecimentos.Items[0].CTe.Exped.CNPJCPF := removercaracteres(cte.expedidor.nucpf);
  end;
  ACBrCTe.Conhecimentos.Items[0].CTe.Exped.IE   := removercaracteres(cte.expedidor.nuinscest);
  ACBrCTe.Conhecimentos.Items[0].CTe.Exped.fone := removercaracteres(cte.expedidor.nufone1);
  if (cte.expedidor.nufone1 <> '') and (Length(cte.expedidor.nufone1) < 13) then
  begin
    MessageDlg('Número do telefone do Expedidor preenchido incorretamente.', mtInformation, [mbOK], 0);
    Abort;
  end;
end;

procedure TCTEGerar.setRemetente;
begin
  if cte.CDREMETENTE = 0 then
  begin
    Exit;
  end;
  cte.remetente.select(cte.CDREMETENTE);
  ACBrCTe.Conhecimentos.Items[0].CTe.Rem.xNome             := cte.remetente.rzsocial;
  ACBrCTe.Conhecimentos.Items[0].CTe.Rem.xFant             := cte.remetente.nmcliente;
  ACBrCTe.Conhecimentos.Items[0].CTe.Rem.EnderReme.xLgr    := cte.remetente.dsendereco;
  ACBrCTe.Conhecimentos.Items[0].CTe.Rem.EnderReme.nro     := cte.remetente.dsnumero;
  ACBrCTe.Conhecimentos.Items[0].CTe.Rem.EnderReme.xCpl    := cte.remetente.dscomplemento;
  ACBrCTe.Conhecimentos.Items[0].CTe.Rem.EnderReme.xBairro := cte.remetente.nmbairro;
  ACBrCTe.Conhecimentos.Items[0].CTe.Rem.EnderReme.cMun    := cte.remetente.cdmunicipio;
  ACBrCTe.Conhecimentos.Items[0].CTe.Rem.EnderReme.xMun    := qregistro.nomedocodigo(_municipio, cte.remetente.cdmunicipio);
  if removercaracteres(cte.remetente.nucep) <> '' then
  begin
    ACBrCTe.Conhecimentos.Items[0].CTe.Rem.EnderReme.CEP     := strtoint(removercaracteres(cte.remetente.nucep));
  end;
  ACBrCTe.Conhecimentos.Items[0].CTe.Rem.EnderReme.UF      := qregistro.stringdocodigo(_uf, cte.remetente.cduf, _sguf);
  ACBrCTe.Conhecimentos.Items[0].CTe.Rem.EnderReme.cPais   := cte.remetente.cdpais;
  ACBrCTe.Conhecimentos.Items[0].CTe.Rem.EnderReme.xPais   := qregistro.nomedocodigo(_pais, cte.remetente.cdpais);
  if cte.remetente.tppessoa = _J then
  begin
    ACBrCTe.Conhecimentos.Items[0].CTe.Rem.CNPJCPF := removercaracteres(cte.remetente.nucnpj);
    cte.remetente.ValidarNuinscestParaDocumentoEletronico;
  end
  else
  begin
    ACBrCTe.Conhecimentos.Items[0].CTe.Rem.CNPJCPF := removercaracteres(cte.remetente.nucpf);
  end;
  ACBrCTe.Conhecimentos.Items[0].CTe.Rem.IE := removercaracteres(cte.remetente.nuinscest);
  if (cte.remetente.nufone1 <> '') and (Length(cte.remetente.nufone1) < 13) then
  begin
    MessageDlg('Número do telefone do Remetente preenchido incorretamente.', mtInformation, [mbOK], 0);
    Abort;
  end;
  ACBrCTe.Conhecimentos.Items[0].CTe.Rem.fone := removercaracteres(cte.remetente.nufone1);
end;

procedure TCTEGerar.setRecebedor;
begin
  if cte.CDRECEBEDOR = 0 then
  begin
    Exit;
  end;
  cte.recebedor.select(cte.CDRECEBEDOR);
  ACBrCTe.Conhecimentos.Items[0].CTe.Receb.xNome              := cte.recebedor.rzsocial;
  ACBrCTe.Conhecimentos.Items[0].CTe.Receb.EnderReceb.xLgr    := cte.recebedor.dsendereco;
  ACBrCTe.Conhecimentos.Items[0].CTe.Receb.EnderReceb.nro     := cte.recebedor.dsnumero;
  ACBrCTe.Conhecimentos.Items[0].CTe.Receb.EnderReceb.xCpl    := cte.recebedor.dscomplemento;
  ACBrCTe.Conhecimentos.Items[0].CTe.Receb.EnderReceb.xBairro := cte.recebedor.nmbairro;
  ACBrCTe.Conhecimentos.Items[0].CTe.Receb.EnderReceb.cMun    := cte.recebedor.cdmunicipio;
  ACBrCTe.Conhecimentos.Items[0].CTe.Receb.EnderReceb.xMun    := qregistro.nomedocodigo(_municipio, cte.recebedor.cdmunicipio);
  if removercaracteres(cte.recebedor.nucep) <> '' then
  begin
    ACBrCTe.Conhecimentos.Items[0].CTe.Receb.EnderReceb.CEP     := strtoint(removercaracteres(cte.recebedor.nucep));
  end;
  ACBrCTe.Conhecimentos.Items[0].CTe.Receb.EnderReceb.UF      := qregistro.stringdocodigo(_uf, cte.recebedor.cduf, _sguf);
  ACBrCTe.Conhecimentos.Items[0].CTe.Receb.EnderReceb.cPais   := cte.recebedor.cdpais;
  ACBrCTe.Conhecimentos.Items[0].CTe.Receb.EnderReceb.xPais   := qregistro.nomedocodigo(_pais, cte.recebedor.cdpais);
  if cte.recebedor.tppessoa = _J then
  begin
    ACBrCTe.Conhecimentos.Items[0].CTe.Receb.CNPJCPF := removercaracteres(cte.recebedor.nucnpj);
    cte.recebedor.ValidarNuinscestParaDocumentoEletronico;
  end
  else
  begin
    ACBrCTe.Conhecimentos.Items[0].CTe.Receb.CNPJCPF := removercaracteres(cte.recebedor.nucpf);
  end;
  ACBrCTe.Conhecimentos.Items[0].CTe.Receb.IE   := removercaracteres(cte.recebedor.nuinscest);
  ACBrCTe.Conhecimentos.Items[0].CTe.Receb.fone := removercaracteres(cte.recebedor.nufone1);
  if (cte.recebedor.nufone1 <> '') and (Length(cte.recebedor.nufone1) < 13) then
  begin
    MessageDlg('Número do telefone do Recebedor preenchido incorretamente.', mtInformation, [mbOK], 0);
    Abort;
  end;
end;

procedure TCTEGerar.setTomador;
begin
  case cte.CDCTETPTOMADOR of
    1: ACBrCTe.Conhecimentos.Items[0].CTe.Ide.Toma03.Toma := tmRemetente;
    2: ACBrCTe.Conhecimentos.Items[0].CTe.Ide.Toma03.Toma := tmExpedidor;
    3: ACBrCTe.Conhecimentos.Items[0].CTe.Ide.Toma03.Toma := tmRecebedor;
    4: ACBrCTe.Conhecimentos.Items[0].CTe.Ide.Toma03.Toma := tmDestinatario;
    5: ACBrCTe.Conhecimentos.Items[0].CTe.Ide.Toma03.Toma := tmOutros;
  end;
  // Totamdor do Serviço no CTe 4 = Outros
  if cte.CDCTETPTOMADOR <> 5 then
  begin
    Exit;
  end;
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.Toma4.Toma    := tmOutros;
  cte.tomador.select(cte.CDTOMADOR);
  if cte.tomador.tppessoa = _J then
  begin
    ACBrCTe.Conhecimentos.Items[0].CTe.Ide.Toma4.CNPJCPF := removercaracteres(cte.tomador.nucnpj); // CNPJ do Tomador do Serviço
    if (not ((cte.tomador.tppessoa = _F) and (cte.tomador.nuinscest = ''))) and (ValidarIE(cte.tomador.nuinscest, qregistro.stringdocodigo(_uf, cte.tomador.cduf, _sguf)) <> '') then
    begin
      MessageDlg('Número da Inscrição Estadual inválida do tomador.', mtInformation, [mbOK], 0);
      Abort;
    end;
  end
  else
  begin
    ACBrCTe.Conhecimentos.Items[0].CTe.ide.toma4.CNPJCPF := removercaracteres(cte.tomador.nucpf);
  end;
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.Toma4.IE      := removercaracteres(cte.tomador.nuinscest);
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.Toma4.xNome   := cte.tomador.rzsocial;
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.Toma4.xFant   := cte.tomador.nmcliente;
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.Toma4.fone    := removercaracteres(cte.tomador.nufone1);

  if (cte.tomador.nufone1 <> '') and (Length(cte.tomador.nufone1) < 13) then
  begin
    MessageDlg('Número do telefone do Tomador preenchido incorretamente.', mtInformation, [mbOK], 0);
    Abort;
  end;

  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.Toma4.EnderToma.xLgr    := cte.tomador.dsendereco;
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.Toma4.EnderToma.nro     := cte.tomador.dsnumero;
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.Toma4.EnderToma.xCpl    := cte.tomador.dscomplemento;
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.Toma4.EnderToma.xBairro := cte.tomador.nmbairro;
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.Toma4.EnderToma.cMun    := cte.tomador.cdmunicipio;
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.Toma4.EnderToma.xMun    := qregistro.nomedocodigo(_municipio, cte.tomador.cdmunicipio);
  if removercaracteres(cte.tomador.nucep) <> '' then
  begin
    ACBrCTe.Conhecimentos.Items[0].CTe.Ide.Toma4.EnderToma.CEP     := strtoint(removercaracteres(cte.tomador.nucep));
  end;
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.Toma4.EnderToma.UF      := qregistro.stringdocodigo(_uf, cte.tomador.cduf, _sguf);
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.Toma4.EnderToma.cPais   := cte.tomador.cdpais;
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.Toma4.EnderToma.xPais   := qregistro.nomedocodigo(_pais, cte.tomador.cdpais);
end;

procedure TCTEGerar.setSticms;
begin
  if cte.NUSTICMS = _00 then
  begin
    setSticms00
  end
  else if cte.NUSTICMS = _20  then
  begin
    setSticms20
  end
  else if cte.NUSTICMS = _40  then
  begin
    setSticms40
  end
  else if cte.NUSTICMS = _41  then
  begin
    setSticms41
  end
  else if cte.NUSTICMS = _51  then
  begin
    setSticms51
  end
  else if cte.NUSTICMS = _60  then
  begin
    setSticms60
  end
  else if cte.NUSTICMS = _O90 then
  begin
    setSticms090
  end
  else if cte.NUSTICMS = _90  then
  begin
    setSticms90
  end
  else if cte.NUSTICMS = _ss  then
  begin
    setSticmsSS;
  end;
end;

procedure TCTEGerar.setSticms00;
begin
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.SituTrib     := cst00;
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS00.CST   := cst00; // Tributação Normal ICMS
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS00.vBC   := cte.VLBASEICMS;
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS00.pICMS := cte.ALICMS;
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS00.vICMS := cte.VLICMS;
end;

procedure TCTEGerar.setSticms090;
begin
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.SituTrib                  := cstICMSOutraUF;
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMSOutraUF.CST           := cstICMSOutraUF; // Tributação devido a outra UF
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMSOutraUF.pRedBCOutraUF := cte.ALREDICMS;
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMSOutraUF.vBCOutraUF    := cte.VLBASEICMS;
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMSOutraUF.pICMSOutraUF  := cte.ALICMS;
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMSOutraUF.vICMSOutraUF  := cte.VLICMS;
end;

procedure TCTEGerar.setSticms20;
begin
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.SituTrib      := cst20;
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS20.CST    := cst20; // Tributação com BC reduzida do ICMS
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS20.pRedBC := cte.ALREDICMS;
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS20.vBC    := cte.VLBASEICMS;
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS20.pICMS  := cte.ALICMS;
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS20.vICMS  := cte.VLICMS;
end;

procedure TCTEGerar.setSticms40;
begin
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.SituTrib   := cst40;
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS45.CST := cst40; // ICMS Isento
end;

procedure TCTEGerar.setSticms41;
begin
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.SituTrib   := cst41;
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS45.CST := cst41; // ICMS não Tributada
end;

procedure TCTEGerar.setSticms51;
begin
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.SituTrib   := cst51;
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS45.CST := cst51; // ICMS diferido
end;

procedure TCTEGerar.setSticms60;
begin
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.SituTrib          := cst60;
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS60.CST        := cst60; // Tributação atribuida ao tomador ou 3. por ST
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS60.vBCSTRet   := cte.VLBASEICMS;
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS60.pICMSSTRet := cte.ALICMS;
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS60.vICMSSTRet := cte.VLICMS;
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS60.vCred      := cte.VLCREDITOOUTOGARDO;
end;

procedure TCTEGerar.setSticms90;
begin
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.SituTrib      := cst90;
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS90.CST    := cst90; // ICMS Outros
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS90.pRedBC := cte.ALREDICMS;
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS90.vBC    := cte.VLBASEICMS;
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS90.pICMS  := cte.ALICMS;
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS90.vICMS  := cte.VLICMS;
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMS90.vCred  := cte.VLCREDITOOUTOGARDO;
end;

procedure TCTEGerar.setSticmsSS;
begin
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.SituTrib     := cstICMSSN;
  ACBrCTe.Conhecimentos.Items[0].CTe.Imp.ICMS.ICMSSN.indSN := 1;
end;

procedure TCTEGerar.setTipoHora;
begin
  case ACBrCTe.Conhecimentos.Items[0].CTe.compl.Entrega.TipoHora of
    thSemHorario: ACBrCTe.Conhecimentos.Items[0].CTe.compl.Entrega.semHora.tpHor := thSemHorario;
    thNoHorario,thAteHorario,thApartirHorario:
      begin
        ACBrCTe.Conhecimentos.Items[0].CTe.compl.Entrega.comHora.tpHor := ACBrCTe.Conhecimentos.Items[0].CTe.compl.Entrega.TipoHora;
        ACBrCTe.Conhecimentos.Items[0].CTe.compl.Entrega.comHora.hProg := cte.HRPREVISAOI;
      end;
   thNoIntervalo:
      begin
        ACBrCTe.Conhecimentos.Items[0].CTe.compl.Entrega.noInter.tpHor := thNoIntervalo;
        ACBrCTe.Conhecimentos.Items[0].CTe.compl.Entrega.noInter.hIni  := cte.HRPREVISAOI;
        ACBrCTe.Conhecimentos.Items[0].CTe.compl.Entrega.noInter.hFim  := cte.HRPREVISAOF;
      end;
  end;
end;

function TCTEGerar.GetSubContratada:string;
var
  transportadora, proprietario : TTransportadora;
begin
  result         := '';
  proprietario := TTransportadora.create;
  transportadora := TTransportadora.create;
  try
    proprietario.Select(cte.ctetransportadora.Items[0].cdproprietario);
    if proprietario.tppessoa = _j then
    begin
      result := UpperCase(_cnpj)+': '+proprietario.nucnpj;
    end
    else
    begin
      result := UpperCase(_cpf) +': '+proprietario.nucpf;
    end;
    if proprietario.nuinscest <> '' then
    begin
      result := result + ' Inscrição Estadual: '+proprietario.nuinscest;
    end;
    transportadora.Select(cte.ctetransportadora.Items[0].cdtransportadora);
    result := result + ' Motorista '+transportadora.nmtransportadora+' / Placa '+cte.ctetransportadora.Items[0].veiculo.nuplaca+' com frete '+FormatarMoeda(cte.ctetransportadora.Items[0].vlfrete)
  finally
    FreeAndNil(proprietario);
    FreeAndNil(transportadora);
  end;
end;

procedure TCTEGerar.set_nueixos;
begin
  if (cte.ctetransportadora.Count > 0) and (cte.ctetransportadora.items[0].GetQtEixos > 1) then
  begin
    with ACBrCTe.Conhecimentos.Items[0].CTe.compl.ObsCont.Add do
    begin
      xCampo := 'Quantidade_Eixos';
      xTexto := IntToStr(cte.ctetransportadora.items[0].GetQtEixos);
    end;
  end;
end;

procedure TCTEGerar.set_nucontrato;
begin
  if cte.NUCONTRATO = '' then
  begin
    Exit;
  end;
  with ACBrCTe.Conhecimentos.Items[0].CTe.compl.ObsCont.Add do
  begin
    xCampo := 'Numero_Contrato';
    xTexto := cte.NUCONTRATO;
  end;
end;

procedure TCTEGerar.set_nudocumento_transporte;
begin
  if cte.NUDOCUMENTOTRANSPORTE = '' then
  begin
    Exit;
  end;
  with ACBrCTe.Conhecimentos.Items[0].CTe.compl.ObsCont.Add do
  begin
    xCampo := 'Numero_DT';
    xTexto := cte.NUDOCUMENTOTRANSPORTE;
  end;
end;

procedure TCTEGerar.set_mensagem_sub_contratado;
begin
  if not empresa.faturamento.cte.bomensagemcontratada then
  begin
    Exit;
  end;
  if (empresa.nucnpj = qregistro.StringdoCodigo(_transportadora, cte.ctetransportadora.Items[0].cdproprietario, _nucnpj)) or
    (empresa.nucnpj_ = qregistro.StringdoCodigo(_transportadora, cte.ctetransportadora.Items[0].cdproprietario, _nucnpj)) then
  begin
    Exit;
  end;
  with ACBrCTe.Conhecimentos.Items[0].CTe.compl.ObsCont.Add do
  begin
    xCampo := 'SubContratada';
    xTexto := GetSubContratada;
  end;
end;

procedure TCTEGerar.adicionarInformacoesComplementares;
begin
  set_nueixos;
  set_nucontrato;
  set_nudocumento_transporte;
  if empresa.faturamento.cte.bomensagemcontratada then
  begin
    set_mensagem_sub_contratado;
  end;
end;

procedure TCTEGerar.setTipoData;
begin
  case ACBrCTe.Conhecimentos.Items[0].CTe.compl.Entrega.TipoData of
    tdSemData: ACBrCTe.Conhecimentos.Items[0].CTe.compl.Entrega.semData.tpPer := tdSemData;
    tdNaData,tdAteData,tdApartirData:
       begin
         ACBrCTe.Conhecimentos.Items[0].CTe.compl.Entrega.comData.tpPer := ACBrCTe.Conhecimentos.Items[0].CTe.compl.Entrega.TipoData;
         ACBrCTe.Conhecimentos.Items[0].CTe.compl.Entrega.comData.dProg := cte.DTPREVISAOI;
       end;
    tdNoPeriodo:
       begin
         ACBrCTe.Conhecimentos.Items[0].CTe.compl.Entrega.noPeriodo.tpPer := tdNoPeriodo;
         ACBrCTe.Conhecimentos.Items[0].CTe.compl.Entrega.noPeriodo.dIni  := cte.DTPREVISAOI;
         ACBrCTe.Conhecimentos.Items[0].CTe.compl.Entrega.noPeriodo.dFim  := cte.DTPREVISAOF;
       end;
  end;
end;

procedure TCTEGerar.setComplementar;
begin //  Informações Complementares do CTe
  ACBrCTe.Conhecimentos.Items[0].CTe.compl.xCaracAd  := '';
  ACBrCTe.Conhecimentos.Items[0].CTe.compl.xCaracSer := '';
  ACBrCTe.Conhecimentos.Items[0].CTe.compl.xEmi      := '';

  ACBrCTe.Conhecimentos.Items[0].CTe.compl.fluxo.xOrig := '';
  ACBrCTe.Conhecimentos.Items[0].CTe.compl.fluxo.xDest := '';
  ACBrCTe.Conhecimentos.Items[0].CTe.compl.fluxo.xRota := '';

  ACBrCTe.Conhecimentos.Items[0].CTe.compl.Entrega.TipoData := getTipodata(cte.CDCTETPPREVISAOENTREGA);
  setTipoData;

  ACBrCTe.Conhecimentos.Items[0].CTe.compl.Entrega.TipoHora := getTipoHora(cte.CDCTETPPREVISAOENTREGAH);
  setTipoHora;
  ACBrCTe.Conhecimentos.Items[0].CTe.compl.origCalc := '';
  ACBrCTe.Conhecimentos.Items[0].CTe.compl.destCalc := '';
  ACBrCTe.Conhecimentos.Items[0].CTe.compl.xObs     := cte.DSOBSERVACAO;
  adicionarInformacoesComplementares;
end;

function TCTEGerar.getTpdocumentoanterior(nutpdocumento:string):TpcteTipoDocumentoAnterior;
begin
  if nutpdocumento = '00' then
  begin
    result := daCTRC
  end
  else if nutpdocumento = '01' then
  begin
    result := daCTAC
  end
  else if nutpdocumento = '02' then
  begin
    result := daACT
  end
  else if nutpdocumento = '03' then
  begin
    result := daNF7
  end
  else if nutpdocumento = '04' then
  begin
    result := daNF27
  end
  else if nutpdocumento = '05' then
  begin
    result := daCAN
  end
  else if nutpdocumento = '06' then
  begin
    result := daCTMC
  end
  else if nutpdocumento = '07' then
  begin
    result := daATRE
  end
  else if nutpdocumento = '08' then
  begin
    result := daDTA
  end
  else if nutpdocumento = '09' then
  begin
    result := daCAI
  end
  else if nutpdocumento = '10' then
  begin
    result := daCCPI
  end
  else if nutpdocumento = '11' then
  begin
    result := daCA
  end
  else if nutpdocumento = '12' then
  begin
    result := daTIF
  end
  else
  begin
    result := daOutros; //else if nutpdocumento = '99' then result := daOutros;
  end;
end;

procedure TCTEGerar.InseriItrCTEDocumentoAnterior(i:integer);
var
  x : integer;
begin
  for x := 0 to cte.CTEDocumentoAnterior.Items[i].itctedocumentoanterior.Count - 1 do
  begin
    if x = 0 then
    begin
      ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.docAnt.emiDocAnt.Items[i].idDocAnt.Add;
      ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.docAnt.emiDocAnt.Items[i].idDocAnt.Add;
    end;
    with ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.docAnt.emiDocAnt.Items[i].idDocAnt.Items[0] do
    begin
      idDocAntPap.add;
      idDocAntPap.Items[x].tpDoc  := getTpdocumentoanterior(cte.CTEDocumentoAnterior.Items[i].itctedocumentoanterior.items[x].NUCTETPDOCUMENTOANTERIOR);
      idDocAntPap.Items[x].serie  := cte.CTEDocumentoAnterior.Items[i].itctedocumentoanterior.items[x].NUSERIE;
      idDocAntPap.Items[x].subser := cte.CTEDocumentoAnterior.Items[i].itctedocumentoanterior.items[x].NUSUBSERIE;
      idDocAntPap.Items[x].nDoc   := cte.CTEDocumentoAnterior.Items[i].itctedocumentoanterior.items[x].NUDOCUMENTO;
      idDocAntPap.Items[x].dEmi   := cte.CTEDocumentoAnterior.Items[i].itctedocumentoanterior.items[x].DTEMISSAO;
    end;
    with ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.docAnt.emiDocAnt.Items[i].idDocAnt.Items[1] do
    begin
      idDocAntEle.Add;
      idDocAntEle.Items[x].chave := cte.CTEDocumentoAnterior.Items[i].itctedocumentoanterior.items[x].NUCHAVE;
    end;
  end;
end;

procedure TCTEGerar.preencherDadosDocumentoAnterior;
var
  I: Integer;
  cliente : TCliente;
begin
  for I := 0 to cte.ctedocumentoanterior.count - 1 do
  begin
    cliente := tcliente.create;
    try
      cliente.Select(cte.CTEDocumentoAnterior.Items[i].CDCLIENTE);
      with ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.docAnt.emiDocAnt do
      begin
        Add;
        if cliente.tppessoa = _J then
        begin
          Items[i].CNPJCPF := cliente.nucnpj;
        end
        else
        begin
          Items[i].CNPJCPF := cliente.nucpf;
        end;
        Items[i].IE := cliente.nuinscest;
        Items[i].UF := qregistro.StringdoCodigo(_uf, cliente.cduf, _sguf);
        Items[i].xNome := cliente.rzsocial;
      end;
      InseriItrCTEDocumentoAnterior(i);
    finally
      freeandnil(cliente);
    end;
  end;
end;

procedure TCTEGerar.setIdentificacao;
begin
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.cUF     := cte.CDUFEMISSAO;
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.cCT     := StrToInt(Copy(Empresa.nucnpj_,1,9));// cds.fieldbyname(_cdcte).AsInteger; //Caso não seja preenchido será gerado um número aleatório pelo componente
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.CFOP    := cte.CDCFOP;
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.natOp   := Copy(qregistro.NomedoCodigo(_cfop, cte.cdcfop), 1, 60);
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.forPag  := getForpag(cte.CDCTEFORMAPAGAMENTO);
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.modelo  := 57;
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.serie   := 1;
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.nCT     := cte.CDCTE;
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.dhEmi   := cte.DTEMISSAO+cte.HREMISSAO;

  case cte.CDCTEFORMAIMPRESSAO of
    1 : ACBrCTe.Conhecimentos.Items[0].CTe.Ide.tpImp := tiRetrato;
    2 : ACBrCTe.Conhecimentos.Items[0].CTe.Ide.tpImp := tiPaisagem;
  end;

  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.tpEmis       := getTpemis(cte.CDCTEFORMAEMISSAO);
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.tpAmb        := ACBrCTe.Configuracoes.WebServices.Ambiente;
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.tpCTe        := getTpcte(cte.CDCTEFINALIDADEEMISSAO);
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.tpServ       := getTpserv(cte.CDCTETPSERVICO);
  if cte.CDCTETPSERVICO = 2 then
  begin
    preencherDadosDocumentoAnterior;
  end;
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.procEmi      := peAplicativoContribuinte;
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.verProc      := '1.04';  //Versão do seu sistema
  //Ide.cUF       := ;
  ACBrCTe.Conhecimentos.Items[0].CTe.ide.cMunEnv := cte.CDMUNICIPIOEMISSAO;
  ACBrCTe.Conhecimentos.Items[0].CTe.ide.xMunEnv := qregistro.NomedoCodigo(_municipio, cte.CDMUNICIPIOEMISSAO);
  ACBrCTe.Conhecimentos.Items[0].CTe.ide.UFEnv   := qregistro.StringdoCodigo(_uf, cte.CDUFEMISSAO, _sguf);
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.modal   := mdRodoviario;
  // Origem da Prestação
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.cMunIni := cte.CDMUNICIPIOINICIO;
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.xMunIni := qregistro.NomedoCodigo(_municipio, cte.CDMUNICIPIOINICIO);
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.UFIni   := qregistro.StringdoCodigo(_uf, cte.CDUFINICIO, _sguf);
  // Destino da Prestação
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.cMunFim    := cte.CDMUNICIPIOTERMINO;
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.xMunFim    := qregistro.NomedoCodigo(_municipio, cte.CDMUNICIPIOTERMINO);
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.UFFim      := qregistro.StringdoCodigo(_uf, cte.CDUFTERMINO, _sguf);
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.retira     := rtNao;
  ACBrCTe.Conhecimentos.Items[0].CTe.Ide.xdetretira := '';

  if cte.cdcteformaemissao = 5 then
  begin
    ACBrCTe.Conhecimentos.Items[0].CTe.Ide.dhCont := cte.tscontingencia;
    ACBrCTe.Conhecimentos.Items[0].CTe.Ide.xJust  := cte.dscontingencia;
  end;
end;

procedure TCTEGerar.setInformacao;
begin
  if cte.CDCTETPINFORMACAOREMETENTE = 1 then
  begin
    setRemetenteNota
  end
  else if cte.CDCTETPINFORMACAOREMETENTE = 2 then
  begin
    setRemetenteNFE
  end
  else if cte.CDCTETPINFORMACAOREMETENTE = 3 then
  begin
    setRemetenteOutros;
  end;
end;

procedure TCTEGerar.setValores;
begin
  ACBrCTe.Conhecimentos.Items[0].CTe.vPrest.vTPrest := cte.VLSERVICO;
  ACBrCTe.Conhecimentos.Items[0].CTe.vPrest.vRec    := cte.VLRECEBER;
  adicionarPrestacao(_frete    , cte.vlfrete);
  adicionarPrestacao(_pedagio  , cte.vlpedagio);
  adicionarPrestacao(_advalorem, cte.vladvalorem);
  adicionarPrestacao(_seguro   , cte.vlseguro);
  adicionarPrestacao(_icms     , cte.vlicmsservico);
  adicionarPrestacao(_outro    , cte.vloutro);
end;

procedure TCTEGerar.setCarga;
var
  I: Integer;
begin
  ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.infCarga.vCarga  := cte.vlmercadoria;
  ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.infCarga.proPred := qregistro.NomedoCodigo(_produto, cte.cdproduto);
  ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.infCarga.xOutCat := cte.DSOUTRASCARACTERISTICAS;
  for I := 0 to cte.cteqtdcarga.Count - 1 do
  begin
    with ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.infCarga.InfQ.Add do
    begin
      cUnid  := cte.getUnidmed(qregistro.NomedoCodigo(_unidade, cte.cteqtdcarga.Items[i].cdunidade));
      tpMed  := qregistro.NomedoCodigo(_ctetpmedida, cte.cteqtdcarga.Items[i].CDCTETPMEDIDA);
      qCarga := cte.cteqtdcarga.Items[i].QTITEM;
    end;
  end;
end;

procedure TCTEGerar.setSeguro;
var
  I: Integer;
begin
  for I := 0 to cte.CTEInformacaoSeguro.Count - 1 do
  begin
    with ACBrCTe.Conhecimentos.Items[0].CTe.InfCTeNorm.Seg.Add do
    begin
      xSeg    := copy(qregistro.StringdoCodigo(_fornecedor, cte.CTEInformacaoSeguro.items[i].cdfornecedor, _rzsocial), 1, 30);
      nApol   := cte.CTEInformacaoSeguro.items[i].NUAPOLICE;
      if cte.CTEInformacaoSeguro.items[i].NUAVERBACAO <> '' then
      begin
        nAver := FormatarTextoEsquerda(Trim(cte.CTEInformacaoSeguro.items[i].NUAVERBACAO), 20, _0);
      end;
      respSeg := cte.getCTErespseg(inttostr(cte.CTEInformacaoSeguro.items[i].CDTPCTEresponsavelSEGURO));
    end;
  end;
end;

procedure TCTEGerar.setAnulacao;
begin
  if cte.CDCTEFINALIDADEEMISSAO = _2 then
  begin
    ACBrCTe.Conhecimentos.Items[0].CTe.infCteAnu.chCTe := cte.NUCHAVECTEANULACAO;
    ACBrCTe.Conhecimentos.Items[0].CTe.infCteAnu.dEmi  := cte.DTEMISSAOCTEANULACAO;
  end;
  if cte.CDCTEFINALIDADEEMISSAO = _3 then
  begin
    ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.infCteSub.chCte := cte.NUCHAVENFEREFERENCIADO;
    if cte.tptomadoricms = _A then
    begin
      ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.infCteSub.tomaNaoICMS.refCteAnu := cte.NUCHAVECTEANULACAO
    end
    else if cte.tptomadoricms = _c then
    begin
      ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.infCteSub.tomaICMS.refCte := cte.NUCHAVECTEANULACAO
    end
    else if cte.tptomadoricms = _N then
    begin
      ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.infCteSub.tomaICMS.refNFe := cte.NUCHAVECTEANULACAO;
    end;
  end;
  if cte.CDCTEFINALIDADEEMISSAO = _1 then
  begin
    ACBrCTe.Conhecimentos.Items[0].CTe.infCteComp.chave := cte.NUCHAVENFEREFERENCIADO;
  end;
end;

procedure TCTEGerar.setRodoviario;
begin
  if Length(cte.NURNTRC) > 8 then
  begin
    messagedlg('O número RNTRC está maior do 8 caracteres.', mtInformation, [mbok], 0);
    abort;
  end;
  ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.Rodo.RNTRC := FormatarTextoEsquerda(RemoverCaracterInicio(cte.NURNTRC, _0), 8, _0);
  ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.Rodo.CIOT  := cte.NUCIOT;
  ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.Rodo.dPrev := cte.DTPREVISAOENTREGA;
  if cte.BOINDICADORLOTACAO = _S then
  begin
    ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.Rodo.Lota := ltSim
  end
  else
  begin
    ACBrCTe.Conhecimentos.Items[0].CTe.infCTeNorm.Rodo.Lota := ltNao;
  end;
  setMotorista;
  setVeiculo;
end;

end.
