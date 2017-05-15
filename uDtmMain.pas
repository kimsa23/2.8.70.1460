unit uDtmMain;

interface

uses
  System.ImageList,
  Forms, Windows, Messages, SysUtils, Classes, Graphics, ImgList, Controls, dialogs,
  DB, SqlExpr, DBClient,
  uRegistro, uConstantes, usystem,
  classeretornasql, classeempresa, classequery, classeVersao, classeusuario,
  cxStyles, cxClasses, cxGraphics,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.DApt,
  WideStrings, DBXFirebird, DBXInterbase, FireDAC.Phys.MySQLDef,
  FireDAC.Phys.MySQL, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef;

type
  Tdtmmain = class(TDataModule)
    imlMain: TImageList;
    sqlc: TSQLConnection;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    ImageList1: TImageList;
    imgMain: TcxImageList;
    imgLargeMain: TcxImageList;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    consite: TFDConnection;
    linkmysql: TFDPhysMySQLDriverLink;
    confire: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    LinkFB: TFDPhysFBDriverLink;
    procedure DataModuleDestroy(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure confireAfterConnect(Sender: TObject);
    procedure confireError(ASender: TObject; const AInitiator: IFDStanObject; var AException: Exception);
  private    { Private declarations }
  public     { Public declarations }
    qryferiado : TClasseQuery;
    procedure Municipio_Filtro_        (cduf: string; cds: TClientDataSet; nmfield:string='');
    procedure Carta_correcao_cte_Filtro(cdcartacorrecaoctegrupo: string; cds: TClientDataSet; nmfield:string='');
    procedure LogSiteAction(nmform, nmaction:string);
  end;

Function abrir_tabela(tabela: string; codigo:string=''; nmcampo:string='';cdsinal:string='='; new:string=''): TDataSource;

var
  dtmmain: Tdtmmain;

implementation

uses uinterbase;

{$R *.DFM}

procedure Tdtmmain.Municipio_Filtro_(cduf: string; cds: TClientDataSet; nmfield:string='');
begin
  cds.Filtered := false;
  if nmfield = _nm+_uf then
  begin
    cduf := qregistro.codigodonome(_uf, cduf);
  end;
  if cduf = '' then
  begin
    cds.Filter := _cduf+' is null';
  end
  else
  begin
    cds.Filter := _cduf+'='+cduf;
  end;
  cds.Filtered := true;
end;

procedure Tdtmmain.Carta_correcao_cte_Filtro(cdcartacorrecaoctegrupo: string; cds: TClientDataSet; nmfield:string='');
begin
  cds.Filtered := false;
  if nmfield = _nm+_carta+_correcao+_cte+_grupo then
  begin
    cdcartacorrecaoctegrupo := qregistro.codigodonome(_carta+_correcao+_cte+_grupo, cdcartacorrecaoctegrupo);
  end;
  if cdcartacorrecaoctegrupo = '' then
  begin
    cds.Filter := _cd+_carta+_correcao+_cte+_grupo+' is null';
  end
  else
  begin
    cds.Filter := _cd+_carta+_correcao+_cte+_grupo+'='+cdcartacorrecaoctegrupo;
  end;
  cds.Filtered := true;
end;

function abrir_tabela(tabela: string; codigo:string=''; nmcampo:string='';cdsinal:string='='; new:string=''): TDataSource;
  function makesql: string;
    function makesqltpsaida:string;
    begin
      result := 'SELECT T.CD'+tabela+
                      ',T.NM'+tabela+
                      ',T.BODUPLICATA'+
                      ',T.BOPEDIDO'+
                      ',t.boiss'+
                      ',S.NUDOCFISCALICMS'+
                      ',T.nmreduzido||'' - ''||T.nmtpsaida nmtpsaida2 '+
                'FROM '+tabela+' T '+
                'INNER JOIN SERIE S ON S.CDEMPRESA=T.CDEMPRESA AND S.CDSERIE=T.CDSERIE '+
                'where T.'+get_cd_empresa+' '+
                'ORDER BY T.NM'+tabela;
    end;
    function makesqltpentrada:string;
    begin
      result := 'SELECT CD'+tabela+
                      ',NM'+tabela+
                      ',BOautpagto'+
                      ',nmreduzido||'' - ''||nmtpentrada nmtpentrada2'+
                      ',nmtpentrada||'' - ''||nmreduzido nmtpentrada3 '+
                'FROM '+tabela+' '+
                'where '+get_cd_empresa+' '+
                'ORDER BY NM'+tabela;
    end;
    function makesqlclientecondpagto:string;
    begin
      result := 'SELECT CONDPAGTO.CDCONDPAGTO'+
                      ',CONDPAGTO.NMCONDPAGTO '+
                'FROM CONDPAGTO '+
                'INNER JOIN CLIENTECONDPAGTO ON CLIENTECONDPAGTO.CDCONDPAGTO=CONDPAGTO.CDCONDPAGTO and CONDPAGTO.cdempresa=CLIENTECONDPAGTO.cdempresa '+
                'WHERE CONDPAGTO.'+get_cd_empresa+' and CONDPAGTO.BOSAIDA=''S'' AND CLIENTECONDPAGTO.CDCLIENTE='+codigo+' '+
                'ORDER BY CONDPAGTO.NMCONDPAGTO';
    end;
    function makesqlclientetpcobranca:string;
    begin
      result := 'SELECT TPCOBRANCA.CDTPCOBRANCA'+
                      ',TPCOBRANCA.NMTPCOBRANCA '+
                'FROM TPCOBRANCA '+
                'INNER JOIN CLIENTETPCOBRANCA ON TPCOBRANCA.CDTPCOBRANCA=CLIENTETPCOBRANCA.CDTPCOBRANCA and TPCOBRANCA.cdempresa=CLIENTETPCOBRANCA.cdempresa '+
                'WHERE CLIENTETPCOBRANCA.'+get_cd_empresa+' and CLIENTETPCOBRANCA.CDCLIENTE='+codigo+' '+
                'ORDER BY TPCOBRANCA.NMTPCOBRANCA';
    end;
    function _se_nome_junto:Boolean;
    begin
      result := (tabela = _pis+_cofins+_bem+_utilizacao) or
                (tabela = _pis+_cofins+_bem+_ativo) or
                (tabela = _pis+_cofins+_bem+_origem) or
                (tabela = _indicador+_incidencia) or
                (tabela = _indicador+_pessoa+_juridica) or
                (tabela = _indicador+_atividade) or
                (tabela = _indicador+_apropriacao) or
                (tabela = _indicador+_contribuicao) or
                (tabela = _ind_reg_cum) or
                (tabela = _ind_ativ) or
                (tabela = _ind_+_perfil) or
                (tabela = _IND+_ESCRITURACAO) or
                (tabela = _bc+_calculo+_credito);
    end;
    function _se_tabela_situacao_tributaria:Boolean;
    begin
      result := (tabela = _sticms) or
                (tabela = _stpis) or
                (tabela = _stcofins) or
                (tabela = _docfiscalicms) or
                (tabela = _stipi);
    end;
    function get_nm_campo:string;
    begin
      result := '';
      if nmcampo = '' then
      begin
        exit;
      end;
      result := ' and '+nmcampo+cdsinal+codigo;
    end;
  begin
    tabela := LowerCase(tabela);
         if _se_tabela_situacao_tributaria            then result := 'SELECT NU'+tabela+',NU'+tabela+'||'' - ''||NM'+tabela+' NM'+tabela+',NM'+tabela+' NM'+tabela+'1 FROM '+tabela+' ORDER BY NU'+tabela
    else if tabela = _stdocumento                     then result := 'SELECT NU'+tabela+',NM'+tabela+',NU'+tabela+'||'' - ''||NM'+tabela+' NM'+tabela+'2 FROM '+tabela+' ORDER BY NU'+tabela
    else if tabela = _sticms+_1                       then result := 'SELECT NUSTICMS,NUSTICMS||'' - ''||NMSTICMS NMSTICMS FROM STICMS WHERE BOCTE=''S'' ORDER BY NUSTICMS'
    else if tabela = _ctetpdocumentoanterior          then result := 'SELECT * FROM '+tabela+' order by nm'+tabela
    else if tabela = _cntcusto                        then result := 'SELECT CD'+tabela+',NM'+tabela+',NM'+tabela+'||'' - ''||NUNIVEL NM'+tabela+'2 FROM '+tabela+' where '+get_cd_empresa+' ORDER BY NUNIVEL'
    else if tabela = _grupo                           then result := 'SELECT CD'+tabela+',NM'+tabela+'||'' - ''||NUNIVEL NM'+tabela+' FROM '+tabela+' where '+get_cd_empresa+' ORDER BY NUNIVEL'
    else if tabela = _bccalculocredito+_ativo         then result := 'SELECT CDBCCALCULOCREDITO,CDBCCALCULOCREDITO||'' - ''||NMBCCALCULOCREDITO NMBCCALCULOCREDITO FROM BCCALCULOCREDITO WHERE BOATIVOIMOBILIZADO=''S'' ORDER BY CDBCCALCULOCREDITO'
    else if tabela = _plconta                         then
    begin
      result := 'SELECT CDPLCONTA,NUNIVEL||'' - ''||NMPLCONTA NUPLCONTA,NMPLCONTA FROM PLCONTA where '+get_cd_empresa+' ORDER BY NUNIVEL'
    end
    else if tabela = _cfop                            then result := 'SELECT CD'+tabela+',NM'+tabela+',CD'+tabela+'||'' - ''||NM'+tabela+' NM'+tabela+'2 FROM '+tabela+' ORDER BY CD'+tabela
    else if tabela = _cfop+_pedido                    then result := 'SELECT CDCFOP,NMCFOP,CDCFOP||'' - ''||NMCFOP NMCFOP2 FROM CFOP where cdcfop>5000 ORDER BY CDCFOP'
    else if tabela = _projeto                         then result := 'SELECT CDPROJETO,NMPROJETO FROM PROJETO where '+get_cd_empresa+' order by nmprojeto desc'
    else if tabela = _cfop+_cte                       then result := 'SELECT CDCFOP,NMCFOP,CDCFOP||'' - ''||NMCFOP NMCFOP2 FROM CFOP where bocte=''S'' and (cdcfop>5000 OR CDCFOP in(2206, 1206)) ORDER BY CDCFOP'
    else if tabela = _origem                          then result := 'SELECT CDORIGEM,NMORIGEM,CDORIGEM||'' - ''||NMORIGEM NMORIGEM2 FROM ORIGEM' 
    else if tabela = _tpsaida                         then result := makesqltpsaida
    else if tabela = _tpentrada                       then result := makesqltpentrada
    else if tabela = _periodicidade                   then result := 'SELECT CDPERIODICIDADE,NMPERIODICIDADE FROM PERIODICIDADE WHERE BOATIVAR=''S'''
    else if tabela = _CTETPINFORMACAOREMETENTE        then result := QRetornaSQL.get_select_from(tabela)+' where boativar=''S'''
    else if tabela = _cliente+_rzsocial               then result := 'SELECT CDCLIENTE,RZSOCIAL FROM CLIENTE where '+get_cd_empresa+' order by rzsocial'
    //else if tabela = lowercase(_movimentacao+_m)      then result := 'SELECT CDMOVIMENTACAO,NMMOVIMENTACAO FROM MOVIMENTACAO WHERE '+get_cd_empresa+' and not (cdmovimentacao in (13,14,15,16)) order by nmmovimentacao'
    else if tabela = _fornecedor+_rzsocial            then result := 'SELECT CDfornecedor,RZSOCIAL FROM fornecedor where '+get_cd_empresa+' order by rzsocial'
    else if tabela = lowercase(_condpagto+_s)         then
    begin
      result := 'SELECT CDCONDPAGTO,NMCONDPAGTO FROM CONDPAGTO where '+get_cd_empresa+' and BOSAIDA=''S'' ORDER BY NMCONDPAGTO'
    end
    else if tabela = lowercase(_mdfe+_unidade)        then result := 'SELECT CDUNIDADE,NMUNIDADE FROM UNIDADE where '+get_cd_empresa+' and BOMDFE=''S'' ORDER BY NMUNIDADE'
    else if tabela = LowerCase(_conta+_set+_boleto)   then result := 'SELECT CONTA.CDCONTA,NMCONTA FROM CONTA INNER JOIN SETBOLETO ON SETBOLETO.CDEMPRESA=CONTA.CDEMPRESA AND SETBOLETO.CDCONTA=CONTA.CDCONTA WHERE CONTA.'+get_cd_empresa+' GROUP BY CONTA.CDCONTA,NMCONTA'
    else if tabela = _fornecedor+_seguradora          then result := 'SELECT CDFORNECEDOR,NMFORNECEDOR FROM FORNECEDOR where '+get_cd_empresa+' and bocteseguradora=''S'' ORDER BY NMFORNECEDOR'
    else if tabela = lowercase(_condpagto+_e)         then result := 'SELECT CDCONDPAGTO,NMCONDPAGTO FROM CONDPAGTO where '+get_cd_empresa+' and BOENTRADA=''S'' ORDER BY NMCONDPAGTO'
    else if tabela = lowercase(_condpagto+_c)         then result := 'SELECT CDCONDPAGTO,NMCONDPAGTO FROM CONDPAGTO where '+get_cd_empresa+' and BOCTE=''S'' ORDER BY NMCONDPAGTO'
    else if tabela = LowerCase(_tpmovto+_e)           then result := 'SELECT CDTPMOVTO,NMTPMOVTO FROM TPMOVTO WHERE '+get_cd_empresa+' and tpmovto=''E'''
    else if tabela = LowerCase(_tpmovto+_s)           then result := 'SELECT CDTPMOVTO,NMTPMOVTO FROM TPMOVTO WHERE '+get_cd_empresa+' and tpmovto=''S'''
    else if tabela = _clfornecedor                    then result := 'SELECT CD'+tabela+',NM'+tabela+',NM'+tabela+'||'' - ''||LTCLASSIFICACAO NM'+tabela+'2 FROM '+tabela+' ORDER BY NM'+tabela
    else if tabela = _serie+_55                       then result := 'SELECT CDSERIE,NMSERIE||'' - ''||NUSERIE NMSERIE FROM SERIE where '+get_cd_empresa+' and NUDOCFISCALICMS=''55'' AND BOATIVAR=''S'' ORDER BY NMSERIE'
    else if tabela = _tabela                          then result := 'SELECT CDTABELA,NMTABELA,NMEXIBE FROM TABELA ORDER BY NMTABELA'
    else if tabela = _usuario                         then result := 'SELECT CD'+tabela+',NM'+tabela+' FROM '+tabela+' ORDER BY NM'+tabela
    else if tabela = _funcionario+_usuario            then result := 'SELECT CDFUNCIONARIO,NMFUNCIONARIO FROM FUNCIONARIO where '+get_cd_empresa+' and cdusuario is not null order by nmfuncionario'
    else if _se_nome_junto                            then result := 'SELECT CD'+tabela+',CD'+tabela+'||'' - ''||NM'+tabela+' NM'+tabela+' FROM '+tabela+' ORDER BY CD'+tabela
    else if tabela = _cliente+_condpagto              then result := makesqlclientecondpagto
    else if tabela = _cliente+_tpcobranca             then result := makesqlclientetpcobranca
    else if tabela = _tpabono+_abreviado              then result := 'SELECT CDTPABONO,NMABREVIADO FROM TPABONO WHERE CDEMPRESA='+empresa.cdempresa.ToString
    else if tabela = _tpequipamento+_apontamento      then result := 'SELECT CDTPEQUIPAMENTO,NMTPEQUIPAMENTO FROM TPEQUIPAMENTO WHERE CDEMPRESA='+empresa.cdempresa.ToString+' AND BOAPONTAMENTO=''S'' order by nmtpequipamento'
    else if tabela = _equipamento+_apontamento        then result := 'SELECT CDEQUIPAMENTO,NMEQUIPAMENTO FROM EQUIPAMENTO WHERE CDEMPRESA='+empresa.cdempresa.ToString+' and cdtpequipamento='+codigo
    else if (tabela = _uf) or (tabela = _uf+_1) or (tabela = _uf+_2)                            then result := 'SELECT CDUF,NMUF,SGUF FROM UF ORDER BY SGUF'
    else if (tabela = _municipio) or (tabela = _municipio+_1) or (tabela = _municipio+_2)       then result := 'SELECT CDMUNICIPIO,NMMUNICIPIO,CDUF FROM MUNICIPIO ORDER BY NMMUNICIPIO'
    else if (tabela = _carta+_correcao+_cte+_item) or (tabela = _carta+_correcao+_cte+_item+_1) then result := 'SELECT CDCARTACORRECAOCTEITEM,NMCARTACORRECAOCTEITEM,CDCARTACORRECAOCTEGRUPO FROM CARTACORRECAOCTEITEM ORDER BY NMCARTACORRECAOCTEITEM'
    else if tabela = _cte+_forma+_emissao                                                       then result := 'SELECT CD'+tabela+',NM'+tabela+' FROM '+tabela+' where cd'+tabela+'<> 2 ORDER BY NM'+tabela
    //else if tabela = _TPITorcamento                                                             then result := 'SELECT CD'+tabela+',sg'+tabela+'||''-''||NM'+tabela+' nm'+tabela+' FROM '+tabela+' where '+get_cd_empresa+' ORDER BY NM'+tabela
    //else if tabela = _TPITorcamento                                                             then result := 'SELECT CD'+tabela+',sg'+tabela+' nm'+tabela+' FROM '+tabela+' where '+get_cd_empresa+' ORDER BY NM'+tabela
    else if ExisteCampoNaTabela(tabela, _cdempresa)                                             then result := 'SELECT CD'+tabela+',NM'+tabela+' FROM '+tabela+' where '+get_cd_empresa+' '+get_nm_campo+' ORDER BY NM'+tabela
                                                                                                else result := 'SELECT * FROM '+tabela+' ORDER BY NM'+tabela;
  end;
  procedure AcessaDataset(tabela: string);
  var
    Componente: TComponent;
  begin
    if TFDQuery(dtmmain.FindComponent(_cds + tabela)) = nil then
    begin
      Componente      := TFDQuery.Create(dtmmain);
      Componente.Name := _cds + tabela;

      Componente      := TDataSource.Create(dtmmain);
      Componente.Name := _dts + tabela;

      TFDQuery   (dtmmain.FindComponent(_cds + tabela)).Connection := dtmmain.confire;
      TFDQuery   (dtmmain.FindComponent(_cds + tabela)).sql.Text   := makesql;
      TDataSource(dtmmain.FindComponent(_dts + tabela)).DataSet    := TFDQuery(dtmmain.FindComponent(_cds + tabela));
    end;
    if tabela = _equipamento+_apontamento then
    begin
      TFDQuery(dtmmain.FindComponent(_cds + tabela)).Close;
      TFDQuery(dtmmain.FindComponent(_cds + tabela)).sql.Text := makesql;
      TFDQuery(dtmmain.FindComponent(_cds + tabela)).open;
    end;
    if TFDQuery(dtmmain.FindComponent(_cds + tabela)).Active then
    begin
      if cdsinal <> '' then
      begin
        TFDQuery   (dtmmain.FindComponent(_cds + tabela)).close;
        TFDQuery   (dtmmain.FindComponent(_cds + tabela)).sql.Text   := makesql;
        TFDQuery(dtmmain.FindComponent(_cds + tabela)).open;
      end
      else
      begin
        TFDQuery(dtmmain.FindComponent(_cds + tabela)).refresh;
      end;
    end
    else
    begin
      TFDQuery(dtmmain.FindComponent(_cds + tabela)).open;
    end;
  end;
begin
  AcessaDataset(tabela+new);
  Result := TDataSource(dtmmain.FindComponent(_dts + tabela+new));
end;

procedure Tdtmmain.confireAfterConnect(Sender: TObject);
begin
  qryferiado := TClasseQuery.Create('SELECT FERIADO.DTFERIADO,TPFERIADO.NMTPFERIADO FROM FERIADO INNER JOIN TPFERIADO ON TPFERIADO.CDTPFERIADO=FERIADO.CDTPFERIADO');
end;

procedure Tdtmmain.confireError(ASender: TObject; const AInitiator: IFDStanObject; var AException: Exception);
begin
  if Pos('Unable to complete network request to host',AException.Message) > 0 then
  begin
    showmessage('Conexão perdida com o Servidor do Banco de Dados.'#13'Feche a aplicação, verifique a sua conexão, o seu servidor e abra novamente o programa.');
    abort;
  end;
end;

procedure Tdtmmain.DataModuleCreate(Sender: TObject);
begin
  confire.close;
  sqlc.close;
end;

procedure Tdtmmain.DataModuleDestroy(Sender: TObject);
begin
  sqlc.Close;
  confire.Close;
end;

procedure Tdtmmain.LogSiteAction(nmform, nmaction: string);
var
  versao : TVersao;
begin
  exit;
  versao := tversao.Create;
  try
    try
      consite.open;
      consite.ExecSQL('INSERT INTO qpAction'+
                      '(NMFORM,NMACTION,NMUSUARIO,NMCOMPUTADOR,VERSAO,NMEMPRESA)VALUES'+
                      '(:NMFORM,:NMACTION,:NMUSUARIO,:NMCOMPUTADOR,:VERSAO,:NMEMPRESA)',
                      [nmform, nmaction, usuario.usulogin, qp_nmcomputador, Versao.GetBuildInfo(4), empresa.nmempresa]);
    except

    end;
  finally
    dtmmain.consite.Close;
    freeandnil(versao);
  end;
end;

end.
