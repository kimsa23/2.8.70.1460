(******************************************************************************************
Custom Functions!

To register functions in an existing categories use one of the following category names:

- 'ctString'	string function
- 'ctDate'  	date/time functions
- 'ctConv'  	conversion functions
- 'ctFormat'	formatting
- 'ctMath'  	mathematical functions
- 'ctOther' 	other fu
********************************************************************************************)

unit uFastFunc;

interface

uses
  FireDAC.Stan.Option,FireDAC.Comp.Client,
  SysUtils, Classes, Dialogs, udatahora,
  fs_iinterpreter,
  uconstantes,
  classeaplicacao, classequery;

const
  FR_GROUP  = 'Funções Especiais';
  FR_Quipos = 'Funções Quipos';

implementation

USES unumero, ustrings;

type
  TFastFunctions = class(TfsRTTIModule)
  private
    function CallMethod(Instance: TObject; ClassType: TClass; const MethodName: String; var Params: Variant): Variant;
  public
    constructor Create(AScript: TfsScript); override;
  end;


function MyFunc(s: String; i: Integer): Boolean; // Exemplo de função
begin
  Result := False;
end;

procedure MyProc(s: String); // Exemplo de procedure
begin
  ShowMessage('OK');
end;

function frExtenso(Valor : Extended; Monetario:Boolean; tamanho:integer=120): String;
begin
  Result := Extenso (Valor, Monetario, tamanho);
end;

function fr_get_contas_receber_pedido(cdempresa, cdpedido:string):string;
var
  q : TClasseQuery;
begin
  result := '';
  q      := TClasseQuery.create;
  try
    q.q.Open('select vlpedidoduplicata'+
                    ',dtprorrogacao '+
              'from pedidoduplicata '+
              'where cdempresa='+cdempresa+' and cdpedido='+cdpedido+' '+
              'order by dtprorrogacao');
    while not q.q.Eof do
    begin
      if result = ''  then
      begin
        result := 'Parc. '
      end
      else if result <> '' then
      begin
        result := result + '|';
      end;
      result := result + IntToStr(q.q.RecNo)+'/'+inttostr(q.q.RecordCount)+':'+FormatDateTime(_dd_mm_yyyy, q.q.fieldbyname(_dtprorrogacao).AsDateTime)+' Valor.:'+FormatarMoedaRs(q.q.fieldbyname(_vlpedidoduplicata).AsCurrency);
      q.q.next;
    end;
  finally
    q.Free;
  end;
end;

function fr_get_risco_pedido(cdempresa,cdpedido,cdtprisco:string):string;
var
  q : TClasseQuery;
begin
  result := '';
  q      := TClasseQuery.create('select nmrisco '+
                                'from pedido '+
                                'inner join paciente on paciente.cdempresa=pedido.cdempresa and paciente.cdpaciente=pedido.cdpaciente '+
                                'inner join profissao on profissao.cdempresa=paciente.cdempresa and profissao.cdprofissao=paciente.cdprofissao '+
                                'inner join clienteprofissao on clienteprofissao.cdempresa=profissao.cdempresa and clienteprofissao.cdprofissao=profissao.cdprofissao and clienteprofissao.cdcliente=paciente.cdcliente '+
                                'inner join clienteprofissaorisco on clienteprofissaorisco.cdempresa=clienteprofissao.cdempresa and clienteprofissaorisco.cdclienteprofissao=clienteprofissao.cdclienteprofissao '+
                                'inner join risco on risco.cdempresa=clienteprofissaorisco.cdempresa and risco.cdrisco=clienteprofissaorisco.cdrisco '+
                                'left join tprisco on tprisco.cdempresa=risco.cdempresa and tprisco.cdtprisco=risco.cdtprisco '+
                                'where pedido.cdempresa='+cdempresa+' and pedido.cdpedido='+cdpedido+' and risco.cdtprisco='+cdtprisco);
  try
    while not q.q.Eof do
    begin
      if result <> '' then
      begin
        result := result + ', ';
      end;
      result := result + q.q.Fields[0].asstring;
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

function fr_get_defeito_ordem_servico(cdempresa,cdordserv:string):string;
var
  q : TClasseQuery;
begin
  result := '';
  q      := TClasseQuery.create('select nmdefeito '+
                                'from itdefapr I '+
                                'inner join defeito D on d.cddefeito=i.cddefeito and i.cdempresa=d.cdempresa '+
                                'where i.cdempresa='+cdempresa+' and cdordserv='+cdordserv+' '+
                                'order by cditdefapr');
  try
    while not q.q.Eof do
    begin
      if result <> '' then
      begin
        result := result + ', ';
      end;
      result := result + q.q.Fields[0].asstring;
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

function fr_get_check_list_ordem_servico(cdempresa, cdordserv, tipo:string; boativo:boolean):string;
  function get_boolean:string;
  begin
    result := _N;
    if boativo then
    begin
      result := _S;
    end;
    result := QuotedStr(result);
  end;
var
  q : TClasseQuery;
begin
  result  := '';
  q       := TClasseQuery.create('select d.nmtpequipamento'+tipo+',c.boativo '+
                                 'from ordserv'+tipo+' c '+
                                 'inner join tpequipamento'+tipo+' D on d.cdtpequipamento'+tipo+'=c.cdtpequipamento'+tipo+' and d.cdempresa=c.cdempresa '+
                                 'where c.cdempresa='+cdempresa+' and c.cdordserv='+cdordserv+' and c.boativo='+get_boolean+' '+
                                 'order by c.boativo,d.nusequencia');
  try
    while not q.q.Eof do
    begin
      if result <> '' then
      begin
        result := result + ', ';
      end;
      if result = '' then
      begin
        result := '(';
      end;
      result := result + q.q.Fields[0].asstring;
      q.q.next;
    end;
    if result <> '' then
    begin
      result := result + ')';
    end;
  finally
    freeandnil(q);
  end;
end;

function fr_get_numero_nota_do_cte(cdempresa,cdcte:string):string;
var
  q : TClasseQuery;
begin
  result := '';
  q      := TClasseQuery.create;
  try
    q.q.Open('select nunota from cteremetentenota where cdempresa='+cdempresa+' and cdcte='+cdcte);
    while not q.q.Eof do
    begin
      if result <> '' then
      begin
        result := result + ', ';
      end;
      result := result + q.q.Fields[0].asstring;
      q.q.next;
    end;
  finally
    q.Free;
  end;
end;

function fr_get_defeito_encontrado_ordem_servico(cdempresa, cdordserv:string):string;
var
  q : TClasseQuery;
begin
  result := '';
  q := TClasseQuery.create;
  try
    q.q.Open('select nmdefeito '+
             'from itdefenc I '+
             'inner join defeito D on d.cddefeito=i.cddefeito and i.cdempresa=d.cdempresa '+
             'where i.cdempresa='+cdempresa+' and cdordserv='+cdordserv+' '+
             'order by cditdefenc');
    while not q.q.Eof do
    begin
      if result <> '' then
      begin
        result := result + ', ';
      end;
      result := result + q.q.Fields[0].asstring;
      q.q.next;
    end;
  finally
    q.Free;
  end;
end;

function fr_get_acessorio_ordem_servico(cdempresa, cdordserv:string):string;
var
  q : TClasseQuery;
begin
  result := '';
  q      := TClasseQuery.create;
  try
    q.q.Open('select qtitem||'' - ''||nmacessorio '+
             'from itacessorio I '+
             'inner join acessorio A on a.cdacessorio=i.cdacessorio and a.cdempresa=i.cdempresa '+
             'where i.cdempresa='+cdempresa+' and cdordserv='+cdordserv+' '+
             'order by cditacessorio');
    while not q.q.Eof do
    begin
      if result <> '' then
      begin
        result := result + ', ';
      end;
      result := result + q.q.Fields[0].asstring;
      q.q.next;
    end;
  finally
    q.Free;
  end;
end;

function fr_get_acessorio_locacao(cdempresa, cdlocacao:string):string;
var
  q : TClasseQuery;
begin
  result := '';
  q      := TClasseQuery.create;
  try
    q.q.Open('select nmitlocacaoacessorio '+
              'from itlocacaoacessorio i '+
              'left join locacao on locacao.cdlocacao=i.cdlocacao and i.cdempresa=locacao.cdempresa '+
              'where i.cdempresa='+cdempresa+' and i.cdlocacao='+cdlocacao+' '+
              'order by cditlocacaoacessorio');
    while not q.q.Eof do
    begin
      if result <> '' then
      begin
        result := result + #13
      end
      else
      begin
        result := #13'ACESSORIO(S):'#13;
      end;
      result := result + q.q.Fields[0].asstring;
      q.q.next;
    end;
  finally
    q.Free;
  end;
end;

function fr_get_produto_ordem_servico(cdempresa, cdordserv:string):string;
var
  q : TClasseQuery;
begin
  result := '';
  q      := TClasseQuery.create;
  try
    q.q.Open('select nmproduto'+
                    ',i.vlunitario'+
                    ',i.vltotal'+
                    ',i.qtitem '+
              'from itordserv i '+
              'inner join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
              'where i.cdempresa='+cdempresa+' and cdordserv='+cdordserv+' '+
              'order by cditordserv');
    while not q.q.Eof do
    begin
      result := result +
                FormatarTextoDireita (q.q.fieldbyname(_nmproduto).asstring   , 71, '.')+
                FormatarTextoEsquerda(q.q.fieldbyname(_qtitem).asstring      , 06)+' '+
                FormatarMoeda        (q.q.fieldbyname(_vlunitario).ascurrency, 12)+' '+
                FormatarMoeda        (q.q.fieldbyname(_vltotal).ascurrency   , 12)+#13;
      q.q.next;
    end;
    if result <> '' then
    begin
      result :=
                FormatarTextoDireita (Maiuscula(_Produto)   , 71)+
                FormatarTextoEsquerda(Maiuscula(_Qtd)       , 06)+' '+
                FormatarTextoEsquerda(Maiuscula(_Valor+' '+__Unitario), 12)+' '+
                FormatarTextoEsquerda(Maiuscula(_Total)     , 12)+#13+ result;
    end;
  finally
    q.Free;
  end;
end;

function fr_set_criterio_report(nm: string): String;
begin
  Result := set_criterio_report(nm);
end;

function frNomeMes(mes:integer): String;
begin
  Result := NomeMes(mes);
end;

function frRetornaConexaoFiredac: TFDConnection;
begin
  Result := aplicacao.confire;
end;

constructor TFastFunctions.Create; // Procedures e Funções devem ser adicionados...
begin
  inherited Create(AScript);
  with AScript do
  begin
    AddMethod('function MyFunc(s: String; i: Integer): Boolean'                    , CallMethod, FR_GROUP , ' Descrição da função');
    AddMethod('procedure MyProc(s: String)'                                        , CallMethod, FR_GROUP , ' Descrição da Procedure');
    AddMethod('function frExtenso(Valor : Extended; Monetario:Boolean; Tamanho:integer=120): String'    , CallMethod, FR_Quipos, ' Retorna o valor extenso de um número');
    AddMethod('function frNomeMes(mes:integer): String'                            , CallMethod, FR_Quipos, ' Retorna o nome do mês');
    AddMethod('function fr_set_criterio_report(nm:string):String'                  , CallMethod, FR_Quipos, ' Retorna a lista de Critério');
    AddMethod('function frRetornaConexaoFiredac: TADConnection'                    , CallMethod, FR_Quipos, ' Retorna a conexão do tipo Firedac');
    AddMethod('function fr_get_total_hora_minuto(Tempo:Variant):string;'           , CallMethod, FR_Quipos, ' Retorna número de horas e minutos');
    AddMethod('function fr_get_numero_nota_do_cte(cdempresa, cdcte:string):string'    , CallMethod, FR_Quipos, ' Retorna a lista de Número de Notas do CTE');
    AddMethod('function fr_get_acessorio_locacao(cdempresa, cdlocacao:string):string'      , CallMethod, FR_Quipos, ' Retorna a lista de acessórios da Locação');
    AddMethod('function fr_get_contas_receber_pedido(cdempresa, cdpedido:string):string'   , CallMethod, FR_Quipos, ' Retorna a lista de Contas a Receber do Pedido');
    AddMethod('function fr_get_defeito_ordem_servico(cdempresa,cdordserv:string):string'   , CallMethod, FR_Quipos, ' Retorna a lista de defeito da Ordem de Serviço');
    AddMethod('function fr_get_risco_pedido(cdempresa,cdpedido,cdtprisco:string):string'   , CallMethod, FR_Quipos, ' Retorna a lista de Risco do Paciente');
    AddMethod('function fr_get_produto_ordem_servico(cdempresa, cdordserv:string):string'  , CallMethod, FR_Quipos, ' Retorna a lista de produto da Ordem de Serviço');
    AddMethod('function fr_get_acessorio_ordem_servico(cdempresa, cdordserv:string):string', CallMethod, FR_Quipos, ' Retorna a lista de acessórios da Ordem de Serviço');
    AddMethod('function fr_get_defeito_encontrado_ordem_servico(cdempresa, cdordserv:string):string', CallMethod, FR_Quipos, ' Retorna a lista de defeito encontrado da Ordem de Serviço');
    AddMethod('function fr_get_check_list_ordem_servico(cdempresa, cdordserv, tipo:string; boativo:boolean):string', CallMethod, FR_Quipos, ' Retorna o check list da Ordem de Serviço');
  end;
end;

function TFastFunctions.CallMethod(Instance: TObject; ClassType: TClass; const MethodName: String; var Params: Variant): Variant;
begin
       if MethodName            = 'MYFUNC'                   then Result := MyFunc(Params[0], Params[1])
  else if MethodName            = 'MYPROC'                   then MyProc(Params[0])
  else if UpperCase(MethodName) = 'FREXTENSO'                then Result := frExtenso(Params[0], Params[1], params[2])
  else if UpperCase(MethodName) = 'FRNOMEMES'                then Result := frNomeMes(Params[0])
  else if UpperCase(MethodName) = 'FR_SET_CRITERIO_REPORT'   then Result := fr_set_criterio_report(Params[0])
  else if lowerCase(MethodName) = 'fr_get_contas_receber_pedido'            then result := fr_get_contas_receber_pedido(Params[0], Params[1])
  else if lowerCase(MethodName) = 'fr_get_numero_nota_do_cte'               then result := fr_get_numero_nota_do_cte(Params[0], Params[1])
  else if lowerCase(MethodName) = 'fr_get_check_list_ordem_servico'         then result := fr_get_check_list_ordem_servico(Params[0], Params[1], Params[2], params[3])
  else if lowerCase(MethodName) = 'fr_get_defeito_ordem_servico'            then result := fr_get_defeito_ordem_servico(Params[0], Params[1])
  else if LowerCase(MethodName) = 'fr_get_risco_pedido'                     then Result := fr_get_risco_pedido(Params[0], Params[1], Params[2])
  else if lowerCase(MethodName) = 'fr_get_defeito_encontrato_ordem_servico' then result := fr_get_defeito_encontrado_ordem_servico(Params[0], Params[1])
  else if lowerCase(MethodName) = 'fr_get_acessorio_ordem_servico'          then result := fr_get_acessorio_ordem_servico(Params[0], Params[1])
  else if lowerCase(MethodName) = 'fr_get_acessorio_locacao'                then result := fr_get_acessorio_locacao(Params[0], Params[1])
  else if lowerCase(MethodName) = 'fr_get_produto_ordem_servico'            then result := fr_get_produto_ordem_servico(Params[0], Params[1])
  else if lowerCase(MethodName) = 'fr_get_total_hora_minuto'                then result := get_total_hora_minuto(Params[0]);
  //else if UpperCase(MethodName) = 'FRRETORNACONEXAOFIREDAC'                 then Result := frRetornaConexaoFiredac;
end;

initialization
  fsRTTIModules.Add(TFastFunctions);
end.


