unit ClasseImportacaoSenior;

interface

uses
  sysutils, forms, dialogs, Vcl.Controls,
  classeserie, classeproduto, classefornecedor, classeconta, classecondpagto, classecliente,
  classemovbancario, classeequipamento, classefuncionario, classetransportadora,
  classerepresentante, classeentrada, classesaida,
  classequery, classeaplicacao, classegerar, classeduplicata,
  FireDAC.Comp.Client,
  usystem, udlgdatabalanco, uRotinas, uconstantes, uregistro, ustrings, uprogressbar, ClasseMunicipio,
  system.UITypes;

Type
  Tconsql = class
  private
    fuser_name: string;
    fOSAuthent: Boolean;
    fdatabase: string;
    fPassword: string;
    fServer: string;
  public
    property OSAuthent : Boolean read fOSAuthent write fOSAuthent;
    property database : string read fdatabase write fdatabase;
    property Server : string read fServer write fServer;
    property user_name : string read fuser_name write fuser_name;
    property Password : string read fPassword write fPassword;
    function ObterParametros:string;
    function SolicitarParametros:Boolean;
  end;
  TImportacaoSenior = class
  private
    conexao : TFDConnection;
    dti, dtf : TDate;
    boupdate : boolean;
    function FormatarCep(nucep:string):string;
    function formartarTelefone(nufone:string):string;
    function TratarSTICMS(nusticms:string):string;
    procedure ImportarProduto;
    procedure ImportarFornecedor;
    procedure ImportarCliente;
    procedure ImportarDuplicata;
    procedure ImportarAutpagto;
    procedure ImportarBaixaAutpagto;
    procedure ImportarBaixaDuplicata;
    procedure ImportarEntrada;
    procedure ImportarItEntrada(entrada:TEntrada);
  public
    constructor create;
    destructor destroy; override;
    class procedure SequenciaImportacao(tabela:string='');
  end;

implementation

uses
  ClasseUF, classeautpagto;

{ TImportacaoSenior }

constructor TImportacaoSenior.create;
var
  consql : tconsql;
begin
  conexao := TFDConnection.Create(nil);
  frmprogressbar := tfrmprogressbar.create(nil);
  {
  if not QRotinas.getfilename(nmbanco) then
  begin
    exit;
  end;
  }
  consql := Tconsql.Create;
  try
    if not consql.SolicitarParametros then
    begin
      Exit;
    end;
    conexao.Params.Text := consql.ObterParametros;
  finally
    FreeAndNil(consql);
  end;
  conexao.LoginPrompt := false;
  conexao.open;
  frmprogressbar.Show;
end;

destructor TImportacaoSenior.destroy;
begin
  freeandnil(conexao);
  freeandnil(frmprogressbar);
  inherited;
end;

function TImportacaoSenior.formartarTelefone(nufone: string): string;
begin
  result := nufone;
end;

function TImportacaoSenior.FormatarCep(nucep: string): string;
begin
  result := nucep;
end;

procedure TImportacaoSenior.ImportarAutpagto;
var
  autpagto : Tautpagto;
  q : TClasseQuery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from e501tcp');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Contas a Receber - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      autpagto := Tautpagto.create;
      try
        autpagto.cdautpagto := QGerar.GerarCodigo(_autpagto);
        autpagto.nuautpagto := q.q.FieldByName('numtit').AsString;
        autpagto.dtemissao := q.q.FieldByName('datemi').AsDateTime;
        autpagto.dtentrada := q.q.FieldByName('datent').AsDateTime;
        autpagto.cdfornecedor := q.q.FieldByName('CodFor').AsInteger;
        autpagto.dsobservacao := q.q.FieldByName('ObsTcp').AsString;
        autpagto.dtvencimento := q.q.FieldByName('vctori').AsDateTime;
        autpagto.vlautpagto  := q.q.FieldByName('vlrori').AsCurrency;
        autpagto.dtprorrogacao := q.q.FieldByName('vctpro').AsDateTime;
        autpagto.prmoradiaria := q.q.FieldByName('perjrs').AsFloat;
        autpagto.Insert;
      finally
        FreeAndNil(autpagto);
      end;
      q.q.
      Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

procedure TImportacaoSenior.ImportarBaixaAutpagto;
var
  q : TClasseQuery;
  movbancario : TMovBancario;
  autpagto : TAutPagto;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from e501mcp where DatPgt<> ''12/31/1900'' order by numtit,seqmov');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Baixa de Contas a Pagar - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      autpagto := tautpagto.Create;
      try
        if autpagto.Select('nuautpagto='+q.q.FieldByName('NumTit').AsString.QuotedString+' and '+
                           'cdfornecedor='+q.q.FieldByName('CodFor').AsString+' and '+
                           'dtprorrogacao='+GetDtBanco(q.q.FieldByName('VctPro').AsDateTime)
                           //+' and vlsaldo='+getcurrencys(q.q.FieldByName('VlrAbe').AsCurrency)
                           ) then
        begin
          movbancario := TMovBancario.create;
          try
            movbancario.cdmovbancario  := QGerar.GerarCodigo(_movbancario);
            movbancario.cdconta        := 1;
            movbancario.dtemissao      := q.q.FieldByName('DatMov').AsDateTime;
            movbancario.cdmovimentacao := 6;
            movbancario.vllancamento   := q.q.FieldByName('VlrLiq').AsCurrency;
            movbancario.cdnatureza     := _d;
            movbancario.vlpagamento    := q.q.FieldByName('VlrLiq').AsCurrency;
            movbancario.Insert;
            movbancario.baixa.New;
            movbancario.baixa.Items[0].cdbaixa       := QGerar.GerarCodigo(_baixa);
            movbancario.baixa.Items[0].cdmovbancario := movbancario.cdmovbancario;
            movbancario.baixa.Items[0].cdautpagto    := autpagto.cdautpagto;
            movbancario.baixa.Items[0].nubaixa       := autpagto.cdautpagto.ToString;
            movbancario.baixa.Items[0].dtbaixa       := movbancario.dtemissao;
            movbancario.baixa.Items[0].vlbaixa       := q.q.FieldByName('VlrMov').AsCurrency;
            movbancario.baixa.Items[0].vldesconto    := q.q.FieldByName('VlrDsc').AsCurrency + q.q.FieldByName('VlrOde').AsCurrency;
            movbancario.baixa.Items[0].vljuro        := q.q.FieldByName('VlrJrs').AsCurrency;
            movbancario.baixa.Items[0].vlmulta       := q.q.FieldByName('VlrMul').AsCurrency + q.q.FieldByName('VlrEnc').AsCurrency + q.q.FieldByName('VlrCor').AsCurrency + q.q.FieldByName('VlrOac').AsCurrency;
            movbancario.baixa.Items[0].vlliquido     := q.q.FieldByName('VlrLiq').AsCurrency;
            movbancario.baixa.Items[0].Insert;
          finally
            FreeAndNil(movbancario);
          end;
        end;
      finally
        FreeAndNil(autpagto);
      end;
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

procedure TImportacaoSenior.ImportarBaixaDuplicata;
var
  q : TClasseQuery;
  movbancario : TMovBancario;
  Duplicata : TDuplicata;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from e301mcr where DatPgt<> ''12/31/1900'' order by numtit,seqmov');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Baixa de Contas a Receber - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      Duplicata := tDuplicata.Create;
      try
        if Duplicata.Select('nuDuplicata='+q.q.FieldByName('NumTit').AsString.QuotedString+' and '+
                           //'cdcliente='+q.q.FieldByName('codcli').AsString+' and '+
                           'dtvencimento='+GetDtBanco(q.q.FieldByName('VctPro').AsDateTime)+' and '+
                           'vlsaldo='+getcurrencys(q.q.FieldByName('VlrAbe').AsCurrency)) then
        begin
          if duplicata.vlsaldo > 0 then
          begin
            movbancario := TMovBancario.create;
            try
              movbancario.cdmovbancario  := QGerar.GerarCodigo(_movbancario);
              movbancario.cdconta        := 1;
              movbancario.dtemissao      := q.q.FieldByName('DatPgt').AsDateTime;
              movbancario.cdmovimentacao := 1;
              movbancario.vllancamento   := q.q.FieldByName('VlrLiq').AsCurrency;
              movbancario.cdnatureza     := _C;
              movbancario.vldeposito     := q.q.FieldByName('VlrLiq').AsCurrency;
              movbancario.Insert;
              movbancario.baixa.New;
              movbancario.baixa.Items[0].cdbaixa       := QGerar.GerarCodigo(_baixa);
              movbancario.baixa.Items[0].cdmovbancario := movbancario.cdmovbancario;
              movbancario.baixa.Items[0].cdDuplicata   := Duplicata.cdDuplicata;
              movbancario.baixa.Items[0].nubaixa       := Duplicata.nuduplicata;
              movbancario.baixa.Items[0].dtbaixa       := movbancario.dtemissao;
              movbancario.baixa.Items[0].vlbaixa       := q.q.FieldByName('VlrMov').AsCurrency;
              movbancario.baixa.Items[0].vldesconto    := q.q.FieldByName('VlrDsc').AsCurrency + q.q.FieldByName('VlrOde').AsCurrency;
              movbancario.baixa.Items[0].vljuro        := q.q.FieldByName('VlrJrs').AsCurrency;
              movbancario.baixa.Items[0].vlmulta       := q.q.FieldByName('VlrMul').AsCurrency + q.q.FieldByName('VlrEnc').AsCurrency + q.q.FieldByName('VlrCor').AsCurrency + q.q.FieldByName('VlrOac').AsCurrency;
              movbancario.baixa.Items[0].vlliquido     := q.q.FieldByName('VlrLiq').AsCurrency;
              movbancario.baixa.Items[0].Insert;
            finally
              FreeAndNil(movbancario);
            end;
          end;
        end;
      finally
        FreeAndNil(Duplicata);
      end;
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

procedure TImportacaoSenior.ImportarCliente;
var
  cliente : tcliente;
  q : TClasseQuery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from e085cli order by codcli');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Cliente - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      cliente := tcliente.create;
      try
        boupdate := cliente.select(q.q.fieldbyname('codcli').asinteger);
        cliente.cdcliente       := q.q.fieldbyname('codcli').asinteger;
        cliente.rzsocial        := Copy(q.q.fieldbyname('nomcli').AsString, 1, 100);
        cliente.nmcliente       := Copy(q.q.fieldbyname('apecli').AsString, 1, 100);
        cliente.dsendereco      := Copy(q.q.fieldbyname('endcli').AsString, 1, 100);
        cliente.dscomplemento   := Copy(q.q.fieldbyname('cplend').AsString, 1, 20);
        cliente.nmbairro        := Copy(q.q.fieldbyname('baicli').AsString, 1, 100);
        cliente.nucep           := Copy(formatarcep(q.q.fieldbyname('cepcli').AsString), 1, 9);
        cliente.nuinscest       := Copy(q.q.fieldbyname('insest').AsString, 1, 100);
        cliente.nuinscmunicipal := q.q.fieldbyname('insmun').AsString;
        cliente.cdpais          := q.q.fieldbyname('codpai').AsInteger;

        cliente.cdstcliente     := 1;
        if q.q.fieldbyname('tipcli').AsString = 'J' then
        begin
          cliente.tppessoa := _j;
          cliente.nucnpj := formatarcnpj(Copy(q.q.fieldbyname('cgccpf').AsString, 1, 20));
          cliente.nucpf  := '';
        end
        else
        begin
          cliente.tppessoa := _f;
          cliente.nucnpj := '';
          cliente.nucpf  := formatarCPF(Copy(q.q.fieldbyname('cgccpf').AsString, 1, 15));
        end;
        if q.q.FieldByName('endent').AsString <> '' then
        begin
          cliente.clienteentrega.Ler(cliente.cdcliente);
          if cliente.clienteentrega.Count = 0 then
          begin
            cliente.clienteentrega.New;
            cliente.clienteentrega.Items[0].cdcliente        := cliente.cdcliente;
            cliente.clienteentrega.Items[0].cdclienteentrega := qgerar.GerarCodigo(_clienteentrega);
            cliente.clienteentrega.Items[0].dsendereco       := q.q.FieldByName('endent').AsString;
            cliente.clienteentrega.Items[0].dsnumero         := Copy(q.q.FieldByName('nenent').AsString, 1, 10);
            cliente.clienteentrega.Items[0].dscomplemento    := Copy(q.q.FieldByName('cplent').AsString, 1, 20);
            cliente.clienteentrega.Items[0].nmbairro         := Copy(q.q.FieldByName('baient').AsString, 1, 100);
            cliente.clienteentrega.Items[0].nucep            := Copy(q.q.FieldByName('cepent').AsString, 1, 9);
            cliente.clienteentrega.Items[0].cdmunicipio      := tmunicipio.SiglaMunicipioParaCodigo(q.q.FieldByName('estent').AsString, q.q.FieldByName('cident').AsString);   // nmmunicipio
            cliente.clienteentrega.Items[0].cduf             := tuf.SiglaParaCodigo(q.q.FieldByName('estent').AsString);         // sguf
            cliente.clienteentrega.Items[0].nuinscest        := Copy(q.q.FieldByName('insent').AsString, 1, 100);
            cliente.clienteentrega.Items[0].nucnpj           := q.q.FieldByName('cgcent').AsString;
          end;
        end;

        cliente.dsnumero        := Copy(q.q.fieldbyname('nencli').AsString, 1, 10);
        cliente.nufone1         := Copy(formartarTelefone(q.q.fieldbyname('foncli').AsString), 1, 14);
        cliente.nufone2         := Copy(formartarTelefone(q.q.fieldbyname('foncl2').AsString), 1, 14);
        cliente.nufone3         := Copy(formartarTelefone(q.q.fieldbyname('foncl3').AsString), 1, 14);
        cliente.nufone4         := Copy(formartarTelefone(q.q.fieldbyname('foncl4').AsString), 1, 14);
        cliente.nufone5         := Copy(formartarTelefone(q.q.fieldbyname('foncl5').AsString), 1, 14);
        cliente.nufax           := Copy(formartarTelefone(q.q.fieldbyname('faxcli').AsString), 1, 14);
        cliente.email           := copy(q.q.fieldbyname('intnet').AsString, 1, 100);
        cliente.dtcadastro      := q.q.fieldbyname('datcad').AsDateTime;
        cliente.cdmunicipio     := tmunicipio.SiglaMunicipioParaCodigo(q.q.fieldbyname('sigufs').AsString, q.q.fieldbyname('cidcli').AsString);
        cliente.cduf            := tuf.SiglaParaCodigo(q.q.fieldbyname('sigufs').AsString);
        //cliente.nuidentid       := copy(q.q.fieldbyname('RG').AsString, 1, 15);
        //cliente.dsobservacao    := q.q.fieldbyname('OBSERVACAO').AsString;

        cliente.dsendcbrnc       := Copy(q.q.fieldbyname('endcob').AsString, 1, 100);
        cliente.dsnumcbrnc       := Copy(q.q.fieldbyname('nencob').AsString, 1, 10);
        cliente.dscomcbrnc       := Copy(q.q.fieldbyname('cplcob').AsString, 1, 100);
        cliente.nmbaicbrnc       := Copy(q.q.fieldbyname('baicob').AsString, 1, 100);
        cliente.cdmunicipiocbrnc := TMunicipio.SiglaMunicipioParaCodigo(q.q.fieldbyname('estcob').AsString, q.q.fieldbyname('cidcob').AsString);
        cliente.cdufcbrnc        := tuf.SiglaParaCodigo(q.q.fieldbyname('cidcob').AsString);
        cliente.nucnpjcbrnc      := copy(q.q.fieldbyname('cgccob').AsString, 1, 20);

        if q.q.fieldbyname('emanfe').AsString <> '' then
        begin
          cliente.itclienteemail.Ler(cliente.cdcliente);
          if cliente.itclienteemail.Count = 0 then
          begin
            cliente.itclienteemail.New;
            cliente.itclienteemail.Items[0].cdcliente := cliente.cdcliente;
            cliente.itclienteemail.Items[0].cditclienteemail := QGerar.GerarCodigo(_itclienteemail);
            cliente.itclienteemail.Items[0].email := Copy(q.q.fieldbyname('emanfe').AsString, 1, 100);
            cliente.itclienteemail.Items[0].bonfe := _S;
          end;
        end;
        {
          codram = cdramoatividade
          <<<>>>
          codfor = <cdfornecedor>
          usucad = cdusuarioi
          datcad = tsinclusao
          horcad = tsinclusao
          usuatu = cdusuarioa
          datatu = tsalteracao
          horatu = tsalteracao
        }
        application.title := cliente.cdcliente.ToString;
        application.ProcessMessages;
        if boupdate then
        begin
          cliente.update;
        end
        else
        begin
          cliente.insert;
          if cliente.itclienteemail.Count > 0 then
          begin
            cliente.itclienteemail.Items[0].Insert;
          end;
          if cliente.clienteentrega.Count > 0 then
          begin
            cliente.clienteentrega.Items[0].Insert;
          end;
        end;
      finally
        freeandnil(cliente);
      end;
      q.q.next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

procedure TImportacaoSenior.ImportarDuplicata;
var
  duplicata : TDuplicata;
  q : TClasseQuery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from e301tcr');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Contas a Receber - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      duplicata := TDuplicata.create;
      try
        duplicata.cdduplicata := QGerar.GerarCodigo(_duplicata);
        duplicata.nuduplicata := q.q.FieldByName('numtit').AsString;
        //codtpt = Código do tipo de título a receber								=>					=> (adc, emp, nfs, rec, tai)
        //codtns = Código da transação que gerou o título a receber				=>					=> (90306, 90334, 90301, 90330, 90300)
        //sittit = Situação do título a receber									=> cdstduplicata	=> (ca, ab, lq, ls, lm)
        duplicata.dtemissao := q.q.FieldByName('datemi').AsDateTime;
        duplicata.dtentrada := q.q.FieldByName('datent').AsDateTime;
        duplicata.cdcliente := q.q.FieldByName('codcli').AsInteger;
        //codrep = Código do representante do título a receber					=> cdrepresentante	=>	12 (4) / 7 (2) / 1 (824)
        //codcrp = Código do grupo de contas a receber							=>					=> cli (783) / vazio (47)
        duplicata.dsobservacao := q.q.FieldByName('obstcr').AsString;
        duplicata.dtvencimento := q.q.FieldByName('vctori').AsDateTime;
        duplicata.vlduplicata  := q.q.FieldByName('vlrori').AsCurrency;
        //codfpg = Código da forma de pagamento									=>					=> 0 (49) / 3 (119) / 1 (662)
        duplicata.dtprorrogacao := q.q.FieldByName('vctpro').AsDateTime;
        //projrs = Indicativo se a prorrogação do vencimento é com juros			=> S (830)
        //codmpt = Código do motivo de prorrogação do título						=>					=> VAZIO
        //datppt = Data do provável pagamento do título							=>
        //vlrabe = Valor em aberto do título										=> vlsaldo			=>
        duplicata.vlcomissao := q.q.FieldByName('vlrcom').AsCurrency;
        duplicata.prmoradiaria := q.q.FieldByName('perjrs').AsFloat;
        duplicata.nunossonumero := q.q.FieldByName('titban').AsString;
        //ultpgt = Data do último pagamento do título a receber					=> dtbaixa	=> data do último pagamento?
        //codccu = Código do centro de custo						=> cdcntcusto
        duplicata.Insert;
      finally
        FreeAndNil(duplicata);
      end;
      q.q.
      Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

procedure TImportacaoSenior.ImportarEntrada;
var
  entrada : tentrada;
  q : TClasseQuery;
begin
  q := TClasseQuery.create;
  aplicacao.confire.ExecSQL('alter trigger ITENTRADA_AU2_SALDOVALORPRODUTO inactive');
  try
    q.q.Connection := conexao;
    q.q.Open('select * from E440NFC order by datent');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption  := 'Compra - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      entrada := tentrada.create;
      try
        boupdate := entrada.select('nuentrada='   +q.q.fieldbyname('numnfc').AsString+' and '+
                                   'cdfornecedor='+q.q.fieldbyname('codfor').AsString);
        entrada.cdtpentrada      := 1;
        entrada.cdfornecedor     := q.q.fieldbyname('codfor').asinteger;
        entrada.nuentrada        := q.q.fieldbyname('numnfc').asinteger;
        if q.q.fieldbyname('codedc').AsString <> _99 then
        begin
          entrada.nudocfiscalicms  := q.q.fieldbyname('codedc').AsString;
        end;
        entrada.dtsaida          := q.q.fieldbyname('datent').AsDateTime;
        entrada.dtemissao        := q.q.fieldbyname('datemi').AsDateTime;
        //entrada.cdcondpagto      := q.q.fieldbyname('codcpg').asinteger;
        //entrada.cdtransportadora := q.q.fieldbyname('codtra').asinteger;
        entrada.dsobservacao     := q.q.fieldbyname('obsnfc').AsString;
        entrada.psbruto          := q.q.fieldbyname('pesbru').AsFloat;
        entrada.vlfrete          := q.q.fieldbyname('vlrfre').AsCurrency;
        entrada.vlseguro         := q.q.fieldbyname('vlrseg').AsCurrency;
        entrada.vloutdespesa     := q.q.fieldbyname('vlrout').AsCurrency;
        entrada.vlbaseipi        := q.q.fieldbyname('vlrbip').AsCurrency;
        entrada.vlipi            := q.q.fieldbyname('vlripi').AsCurrency;
        entrada.vlbaseicms       := q.q.fieldbyname('vlrbic').AsCurrency;
        entrada.vlicms           := q.q.fieldbyname('vlricm').AsCurrency;
        entrada.vlproduto        := q.q.fieldbyname('vlrlpr').AsCurrency;
        entrada.vlservico        := q.q.fieldbyname('vlrlse').AsCurrency;
        entrada.vlliquido        := q.q.fieldbyname('vlrliq').AsCurrency;
        entrada.vltotal          := q.q.fieldbyname('vlrinf').AsCurrency;
        entrada.vlbasepis        := q.q.fieldbyname('vlrbpi').AsCurrency;
        entrada.vlpis            := q.q.fieldbyname('vlrpis').AsCurrency;
        entrada.nuchavenfe       := q.q.fieldbyname('chvnel').AsString;
        //entrada.cduf             := q.q.fieldbyname('ufsvei').AsInteger;
        if q.q.fieldbyname('tnspro').AsString.Trim <> '' then
        begin
          entrada.cdcfop := removercaracteres(q.q.fieldbyname('tnspro').asString).ToInteger;
        end;
        if entrada.cdcfop = 0 then
        begin
          entrada.cdcfop := removercaracteres(q.q.fieldbyname('tnsser').asString).ToInteger;
        end;
        {
        codsnf  => tpentrada
        tipnfe  => tipo nfe
        codtri  => Tipo de tributação
        noppro  => cfop
        nopser  => cfop
        ufscic  => cduf
        ciffob  => cdtpfrete  => x (50), F (57), C (2628)
        vlrdpr  => ?
        vlrbse  => ?
        vlrfin  => vltotal ?
        vlrbcr  => ?
        vlrcor  =>  ?
        vlrbor  => ?
        vlrour  =>  ?
        codsel  => ?
        becipi  =>  ?
        vecipi  => ?
        becicm  => ?
        vecicm  => ?
        }
        application.title := entrada.nuentrada.ToString;
        application.ProcessMessages;
        if boupdate then
        begin
          entrada.update;
        end
        else
        begin
          entrada.cdentrada := QGerar.GerarCodigo(_entrada);
          entrada.insert;
        end;
        ImportarItEntrada(entrada);
      finally
        freeandnil(entrada);
      end;
      q.q.next;
    end;
  finally
    FreeAndNil(q);
    aplicacao.confire.ExecSQL('alter trigger ITENTRADA_AU2_SALDOVALORPRODUTO active');
  end;
end;

procedure TImportacaoSenior.ImportarFornecedor;
var
  fornecedor : tfornecedor;
  cdmunicipio : string;
  q : TClasseQuery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from e095FOR order by codfor');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'fornecedor - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      fornecedor := tfornecedor.create;
      try
        boupdate := fornecedor.select(q.q.fieldbyname('codfor').asinteger);
        fornecedor.cdfornecedor    := q.q.fieldbyname('codfor').asinteger;
        fornecedor.rzsocial        := Copy(q.q.fieldbyname('nomfor').AsString, 1, 100);
        fornecedor.nmfornecedor    := Copy(q.q.fieldbyname('apefor').AsString, 1, 100);
        fornecedor.nuinscest       := Copy(q.q.fieldbyname('insest').AsString, 1, 100);
        if q.q.fieldbyname('tipfor').AsString = 'J' then
        begin
          fornecedor.tppessoa := _j;
          fornecedor.nucnpj := Copy(q.q.fieldbyname('cgccpf').AsString, 1, 20);
          if fornecedor.nucnpj = _0 then
          begin
            fornecedor.nucnpj := '';
          end
          else
          begin
            fornecedor.nucnpj := formatarcnpj(fornecedor.nucnpj);
          end;
          fornecedor.nucpf  := '';
        end
        else
        begin
          fornecedor.tppessoa := _f;
          fornecedor.nucnpj := '';
          fornecedor.nucpf  := formatarCPF(Copy(q.q.fieldbyname('cgccpf').AsString, 1, 15));
        end;
        fornecedor.dsendereco      := Copy(q.q.fieldbyname('endfor').AsString, 1, 100);
        fornecedor.dscomplemento   := Copy(q.q.fieldbyname('cplend').AsString, 1, 20);
        fornecedor.nmbairro        := Copy(q.q.fieldbyname('baifor').AsString, 1, 100);
        fornecedor.nucep           := Copy(formatarcep(q.q.fieldbyname('cepfor').AsString), 1, 9);
        fornecedor.nufone1         := Copy(formartarTelefone(q.q.fieldbyname('fonfor').AsString), 1, 14);
        fornecedor.nufone2         := Copy(formartarTelefone(q.q.fieldbyname('fonfo2').AsString), 1, 14);
        fornecedor.nufone3         := Copy(formartarTelefone(q.q.fieldbyname('fonfo3').AsString), 1, 14);
        fornecedor.nufax           := Copy(formartarTelefone(q.q.fieldbyname('faxfor').AsString), 1, 14);
        fornecedor.email           := copy(q.q.fieldbyname('intnet').AsString, 1, 100);
        if (not q.q.fieldbyname('codpai').IsNull) and (q.q.fieldbyname('codpai').AsString.Trim <> '') then
        begin
          fornecedor.cdpais          := q.q.fieldbyname('codpai').AsInteger;
        end;
        cdmunicipio     := tmunicipio.SiglaMunicipioParaCodigo(q.q.fieldbyname('sigufs').AsString, q.q.fieldbyname('cidfor').AsString).ToString;
        if cdmunicipio <> '' then
        begin
          fornecedor.cdmunicipio     := cdmunicipio.ToInteger;
        end;
        fornecedor.cduf            := tuf.SiglaParaCodigo(q.q.fieldbyname('sigufs').AsString);
        fornecedor.dtcadastro      := q.q.fieldbyname('datcad').AsDateTime;
        fornecedor.cdstfornecedor     := 1;
        fornecedor.dsnumero        := Copy(q.q.fieldbyname('nenfor').AsString, 1, 10);

        //fornecedor.nuinscmunicipal := q.q.fieldbyname('insmun').AsString;
        {
        codram = cdramoatividade
        codcli = <cdcliente>
        emannfe = email nfe
        }

        if q.q.fieldbyname('emanfe').AsString <> '' then
        begin
          fornecedor.itfornecedoremail.Ler(fornecedor.cdfornecedor);
          if fornecedor.itfornecedoremail.Count = 0 then
          begin
            fornecedor.itfornecedoremail.New;
            fornecedor.itfornecedoremail.Items[0].cdfornecedor        := fornecedor.cdfornecedor;
            fornecedor.itfornecedoremail.Items[0].cditfornecedoremail := QGerar.GerarCodigo(_itfornecedoremail);
            fornecedor.itfornecedoremail.Items[0].email               := Copy(q.q.fieldbyname('emanfe').AsString, 1, 100);
          end;
        end;

        {
  codram = cdramoatividade
  <<<>>>
  codfor = <cdfornecedor>
  usucad = cdusuarioi
  datcad = tsinclusao
  horcad = tsinclusao
  usuatu = cdusuarioa
  datatu = tsalteracao
  horatu = tsalteracao
        }
        application.title := fornecedor.cdfornecedor.ToString;
        application.ProcessMessages;
        if boupdate then
        begin
          fornecedor.update;
        end
        else
        begin
          fornecedor.insert;
        end;
      finally
        freeandnil(fornecedor);
      end;
      q.q.next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

procedure TImportacaoSenior.ImportarItEntrada(entrada:TEntrada);
var
  q : TClasseQuery;
  itentrada : TITentrada;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from E440IPC where CodFor='+entrada.cdfornecedor.ToString+' and NumNfc='+entrada.nuentrada.ToString);
    while not q.q.eof do
    begin
      itentrada := TITentrada.create;
      try
        boupdate := itentrada.select('cdentrada='+entrada.cdentrada.ToString+' and dsitentrada='+q.q.FieldByName('SeqIpc').AsString.QuotedString);
        itentrada.cdentrada    := entrada.cdentrada;
        itentrada.dsitentrada  := q.q.FieldByName('SeqIpc').AsString;
        itentrada.cdproduto    := q.q.FieldByName('CodPro').AsInteger;
        itentrada.cddigitado   := q.q.FieldByName('CodPro').AsString;
        itentrada.cdcfop       := q.q.FieldByName('NopPro').AsInteger;
        itentrada.nusticms     := TratarSTICMS(q.q.FieldByName('CodStr').AsString);
        itentrada.qtitem       := q.q.FieldByName('QtdRec').AsFloat;
        itentrada.psliquido    := q.q.FieldByName('PesLiq').AsFloat;
        itentrada.psbruto      := q.q.FieldByName('PesBru').AsFloat;
        itentrada.vlunitario   := q.q.FieldByName('PreUni').AsCurrency;
        itentrada.prdesconto   := q.q.FieldByName('PerDsc').AsFloat;
        itentrada.vlfrete      := q.q.FieldByName('VlrFre').AsCurrency;
        itentrada.vlseguro     := q.q.FieldByName('VlrSeg').AsCurrency;
        itentrada.vloutdespesa := q.q.FieldByName('VlrOut').AsCurrency;
        itentrada.vldesconto   := q.q.FieldByName('VlrDsc').AsCurrency;
        itentrada.vlbaseipi    := q.q.FieldByName('VlrBip').AsCurrency;
        itentrada.vlipi        := q.q.FieldByName('VlrIpi').AsCurrency;
        itentrada.vlbaseicms   := q.q.FieldByName('VlrBic').AsCurrency;
        itentrada.vlicms       := q.q.FieldByName('VlrIcm').AsCurrency;
        itentrada.vlbasepis    := q.q.FieldByName('VlrBpi').AsCurrency;
        itentrada.vlpis        := q.q.FieldByName('VlrPis').AsCurrency;
        itentrada.nustipi      := q.q.FieldByName('CstIpi').AsString;
        itentrada.nustpis      := q.q.FieldByName('CstPis').AsString;
        itentrada.nustcofins   := q.q.FieldByName('CstCof').AsString;
        itentrada.alcofins     := q.q.FieldByName('AliCof').AsFloat;
        itentrada.alipi        := q.q.FieldByName('AliIpi').AsFloat;
        itentrada.alipi        := q.q.FieldByName('PerIpi').AsFloat;
        itentrada.alicms       := q.q.FieldByName('PerIcm').AsFloat;
        {
          CodSnf  => tpentrada
          SeqIpc  => nusequuencia
          TnsPro  => cdcfop - ignora
          NumOcp  => cdordcompra
          SeqIpo  => ?
          CplIpc  => nmproduto
          CodFam  => codigo familia
          CodClf  => ?
          CodTrd  => ?
          CodDep  => ?
          UniNfc  => cdunidade
          QtdDev  => Quantidade Devolvida
          UniMed  => cdunidade
          QtdEst  => qtestoque
          PreEst  => preço do estoqwue
          PreBas  => ?
          SalCan  => ? T(19) / F(5525)
          CtaFin  => ? (0	5504/2460	19/2770	1/3070	1/2470	2/3420	1/3200	4/2490	11/3140	1)
          CodCcu  => ? (260	374/280	204/440	2/320	5/270	332/240	1541/290	42/130	459/430	124/300	291/230	230/140	1/180	31/410	885/58/400	2/90	131/250	638/120	3/170	1/420	182/80	8)
          VlrBru  => valor bruto
          VlrDfa  => valor diferencial de alíquota
          VlrIip  => ?
          VlrIic  => ?
          VlrOip  => ?
          VlrOic  => ?
          VlrLpr  => valor do produto
          VlrLou  => valor de outra despesa?
          VlrLiq  => valor liquido
          VlrFin  => vltotal
          NumNfv  => ?
          VlrBcr  => ?
          VlrCor  => ?
          BecIpi  => ?
          VecIpi  => ?
          BecIcm  => ?
          VecIcm  => ?
          OriMer  => cdorigem
          bascre  => ?
          pecicm  => alicms
          pecipi  => alipi
          perpir  => alpis
          percor  => alcofins
          icmvfc  => ?
          codces  => cdcest
              }
        if boupdate then
        begin
          itentrada.update;
        end
        else
        begin
          itentrada.cditentrada := QGerar.GerarCodigo(_itentrada);
          itentrada.insert;
        end;
      finally
        FreeAndNil(itentrada);
      end;
      q.q.next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

procedure TImportacaoSenior.ImportarProduto;
var
  produto : TProduto;
  q, q1 : TClasseQuery;
begin
  q1 := TClasseQuery.create;
  q := TClasseQuery.create;
  try
    q1.q.Connection := conexao;
    q.q.Connection := conexao;
    q1.q.Open('select * from e022clf');
    q.q.close;
    q.q.Open('select * from e075pro order by codpro');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Produto - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      produto := tproduto.create;
      try
        boupdate := produto.select(q.q.fieldbyname('codpro').asinteger);
        produto.cdproduto  := q.q.fieldbyname('codpro').asinteger;
        produto.cdalternativo  := q.q.fieldbyname('codpro').asstring;
        produto.nmproduto  := q.q.fieldbyname('despro').AsString;
        produto.cdunidade  := tunidade.CodigodoNome(q.q.fieldbyname('unimed').AsString);
        if q.q.fieldbyname('cstpis').AsString.Trim <> '' then
        begin
          produto.nustpis    := q.q.fieldbyname('cstpis').AsString.Trim;
        end;
        if q.q.fieldbyname('cstcof').AsString.Trim <> '' then
        begin
          produto.nustcofins := q.q.fieldbyname('cstcof').AsString.Trim;
        end;
        produto.nusticms   := Copy(q.q.fieldbyname('codstr').AsString, 2, 2);
        produto.qtestmin   := q.q.fieldbyname('qtdmin').AsFloat;
        produto.qtestmax   := q.q.fieldbyname('qtdmax').AsFloat;
        produto.psliquido  := q.q.fieldbyname('pesliq').AsFloat;
        produto.psbruto    := q.q.fieldbyname('pesbru').AsFloat;
        if q1.q.Locate('codclf', q.q.fieldbyname('codclf').AsString, []) then
        begin
          produto.nuclfiscal := q1.q.fieldbyname('clafis').AsString;
        end;

        produto.cdtpproduto:= 1;
        produto.cdtpitem   := _07;
        produto.nunivel    := _07;
        produto.cdgrupo    := 8;
        produto.cdorigem   := _0;
        //produto.cdcodfornecedor := q.q.fieldbyname('CODIGO_BARRAS').AsString;
        //produto.cdanp      := q.q.fieldbyname('COD_ANP').AsString;
        {
            CODIGO                           DMCAD_PECA_CODIGO NOT NULL /* DMCAD_PECA_CODIGO = VARCHAR(20) */,
            APLICACAO                        DMBAS_OBSERVACAOHIPER /* DMBAS_OBSERVACAOHIPER = VARCHAR(10000) */,
            PRATELEIRA                       DMCAD_PECA_PRATELEIRACAIXA /* DMCAD_PECA_PRATELEIRACAIXA = VARCHAR(10) */,
            CAIXA                            DMCAD_PECA_PRATELEIRACAIXA /* DMCAD_PECA_PRATELEIRACAIXA = VARCHAR(10) */,
            RUA                              DMCAD_PECA_PRATELEIRACAIXA /* DMCAD_PECA_PRATELEIRACAIXA = VARCHAR(10) */,
            COD_BASELEGAL                    DMCAD_BASELEGAL_CODIGO /* DMCAD_BASELEGAL_CODIGO = VARCHAR(15) */,
            PRODPROPRIA                      DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            CRED_IPI                         DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            CRED_ICMS                        DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            ALIQICMS_ECF                     DMBAS_ALIQECF /* DMBAS_ALIQECF = VARCHAR(2) */,
            ALIQ_IVA                         DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
            RED_ICMS18                       DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
            RED_ICMS12                       DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
            RED_ICMS7                        DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
            RED_IPI                          DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
            ESPECIE                          DMBAS_ESPECIE /* DMBAS_ESPECIE = VARCHAR(5) */,
            MARCA                            DMBAS_MARCA /* DMBAS_MARCA = VARCHAR(10) */,
            SUBST_TRIBUTARIA                 DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            DT_INICIOSUBST                   DMBAS_DATAS /* DMBAS_DATAS = DATE */,
            COD_SITTRIBUTARIAICMSENTRADA     DMCAD_SITTRIB_CODIGO /* DMCAD_SITTRIB_CODIGO = VARCHAR(5) */,
            COD_SITTRIBUTARIAICMS            DMCAD_SITTRIB_CODIGO /* DMCAD_SITTRIB_CODIGO = VARCHAR(5) */,
            COD_SITTRIBUTARIAICMSFORAESTADO  DMCAD_SITTRIB_CODIGO /* DMCAD_SITTRIB_CODIGO = VARCHAR(5) */,
            COD_SITTRIBUTARIAIPISAIDA        DMCAD_SITTRIBIPI_CODIGO /* DMCAD_SITTRIBIPI_CODIGO = VARCHAR(2) */,
            COD_SITTRIBUTARIAPISSAIDA        DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
            COD_SITTRIBUTARIACOFINSSAIDA     DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
            COD_SITTRIBUTARIAIPIENTRADA      DMCAD_SITTRIBIPI_CODIGO /* DMCAD_SITTRIBIPI_CODIGO = VARCHAR(2) */,
            COD_SITTRIBUTARIAPISENTRADA      DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
            COD_SITTRIBUTARIACOFINSENTRADA   DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
            COD_CREDPISCOFINS                DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
            GERAR_PEDIDO                     DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            COD_FORNECEDOR                   DMCAD_CLIFOR_CODIGO /* DMCAD_CLIFOR_CODIGO = VARCHAR(20) */,
            COD_GENERO                       DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
            ICMS_IMPORTADO                   DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            ALIQ_IMPOSTOTOTAL                DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
            LUBRIFICANTE                     DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            CEST                             DMBAS_CEST /* DMBAS_CEST = VARCHAR(7) */
        }
        application.title := produto.nmproduto;
        application.ProcessMessages;
        if boupdate then
        begin
          produto.update;
        end
        else
        begin
          produto.insert;
        end;
      finally
        freeandnil(produto);
      end;
      q.q.next;
    end;
  finally
    FreeAndNil(q1);
    FreeAndNil(q);
  end;
end;

class procedure TImportacaoSenior.SequenciaImportacao(tabela:string='');
var
  Importacao : TImportacaoSenior;
begin
  importacao := TImportacaoSenior.create;
  try
    if tabela = _entrada then
    begin
      if not dlgDataInicioFinal(importacao.dti, importacao.dtf, true, 'Faixa de data para importação') then
      begin
        exit;
      end;
    end;
    if tabela = _cliente then
    begin
      importacao.importarCliente;
    end;
    if tabela = _fornecedor then
    begin
      importacao.importarfornecedor;
    end;
    if tabela = _produto then
    begin
      importacao.importarproduto;
    end;
    if tabela = _duplicata then
    begin
      importacao.ImportarDuplicata;
    end;
    if tabela = _autpagto then
    begin
      importacao.Importarautpagto;
    end;
    if tabela = _baixa+_autpagto then
    begin
      Importacao.ImportarBaixaAutpagto;
    end;
    if tabela = _baixa+_duplicata then
    begin
      Importacao.ImportarBaixaDuplicata;
    end;
    if tabela = _entrada then
    begin
      Importacao.ImportarEntrada;
    end;
    if tabela = '' then
    begin
      importacao.importarCliente;
      importacao.ImportarFornecedor;
      importacao.ImportarProduto;
      importacao.ImportarDuplicata;
      importacao.ImportarAutpagto;
      Importacao.ImportarBaixaAutpagto;
      importacao.ImportarBaixaDuplicata;
    end;
  finally
    FreeAndNil(importacao);
  end;
end;

function TImportacaoSenior.TratarSTICMS(nusticms: string): string;
begin
  result := nusticms;
  if nusticms = '060' then
  begin
    result := _60;
  end;
  if nusticms = '260' then
  begin
    result := _60;
  end;
  if nusticms = '040' then
  begin
    result := _40;
  end;
  if nusticms = '020' then
  begin
    result := _20;
  end;
  if nusticms = '000' then
  begin
    result := _00;
  end;
  if nusticms = '050' then
  begin
    result := _50;
  end;
  if nusticms = '090' then
  begin
    result := _90;
  end;
end;

function Tconsql.ObterParametros: string;
begin
  result := 'Database='+database+#13+
            'Server='+Server+#13+
            'DriverID=MSSQL'#13+
            'OSAuthent=';
  if OSAuthent then
  begin
    Result := result + 'yes'#13+
            'User_Name='+user_name+#13+
            'Password='+Password;
  end
  else
  begin
    Result := result + 'no'
  end;
end;

function Tconsql.SolicitarParametros: Boolean;
begin
  result := False;
  database := InputBox('Base de Dados', 'informe o nome da base de dados', 'sapiens');
  if database = '' then
  begin
    Exit;
  end;
  Server := InputBox('Servidor', 'Informe o nome do servidor', nomedocomputador+'\SQLEXPRESS');
  if server = '' then
  begin
    Exit;
  end;
  OSAuthent := MessageDlg('Autenticação do usuário pelo domínio', mtConfirmation, [mbYes, mbNo], 0) = mryes;
  if not OSAuthent then
  begin
    user_name := InputBox('Usuário', 'Informe o usuário', '');
    if user_name = '' then
    begin
      Exit;
    end;
    Password := InputBox('Senha', 'Informe a senha', '');
  end;
  result := True;
end;

end.
