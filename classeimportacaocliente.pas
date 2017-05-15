unit classeimportacaocliente;

interface

uses
  {$IFNDEF VER210}System.Actions, System.UITypes,{$ENDIF}
  Forms, Dialogs, SysUtils, Classes,
  ACBrValidador,
  uRichEdit, uProgressBar, uRegistro, ustrings, uRotinas, uConstantes,
  classeregistrainformacao, classeexecutasql, classeempresa;

function ImportarCliente:Boolean;

implementation

type
  TClienteImportacao = record
    cdcliente : Integer;
    cduf : Integer;
    cdrmatividade : Integer;
    cdmunicipio : Integer;
    cdpais : Integer;
    cdstcliente : integer;
    nmcliente : string;
    rzsocial : string;
    dsendereco : string;
    dsnumero : string;
    dscomplemento : string;
    nucxpostal : string;
    nmbairro : string;
    nucep : string;
    nufone1 : string;
    nufone2 : string;
    nufone3 : string;
    nufax : string;
    tppessoa : string;
    nuinscest : string;
    nucnpj : string;
    nucpf : string;
    email : string;
  end;
  TImportacao = class(tobject)
    sqlregistras, nmfile : string;
    arquivo, sql, erros : TStrings;
    cliente : array of TClienteImportacao;
    private
      function  ler_arquivo:Boolean;
      procedure preparar_estrutura;
      procedure carregar_dados_estrutura;
      function  consistir_estrutura:boolean;
      //procedure gerar_scritp;
      function  gerar_insert(i:Integer):string;
      function  gerar_update(i:Integer):string;
      procedure executar_script;
    public
      constructor Create;
      destructor  destroy; override;
      function    Importar:Boolean;
  end;

function ImportarCliente:Boolean;
var
  importacao : TImportacao;
begin
  result := False;
  importacao := timportacao.Create;
  try
    importacao.Importar;
  finally
    importacao.destroy;
  end;
end;

procedure TImportacao.carregar_dados_estrutura;
var
  i : Integer;
  registro : TStrings;
begin
  registro := TStringList.Create;
  try
    frmprogressbar.gau1.MaxValue := arquivo.Count;
    for i := 0 to arquivo.Count - 1  do
    begin
      frmprogressbar.gau1.Progress := i + 1;
      Application.ProcessMessages;
      registro.Clear;
      prepararlista(registro, arquivo[i], ';');
      cliente[i].cdcliente     := strtoint(registro[0]);
      cliente[i].cduf          := strtoint(registro[1]);
      cliente[i].cdrmatividade := strtoint(registro[2]);
      cliente[i].cdmunicipio   := strtoint(registro[3]);
      cliente[i].cdpais        := strtoint(registro[4]);
      cliente[i].nmcliente     := RemoverChar(registro[5],'"');
      cliente[i].rzsocial      := RemoverChar(registro[6],'"');
      cliente[i].dsendereco    := RemoverChar(registro[7],'"');
      cliente[i].dsnumero      := RemoverChar(registro[8],'"');
      cliente[i].dscomplemento := RemoverChar(registro[9],'"');
      cliente[i].nucxpostal    := RemoverChar(registro[10],'"');
      cliente[i].nmbairro      := RemoverChar(registro[11],'"');
      cliente[i].nucep         := RemoverChar(registro[12],'"');
      cliente[i].nufone1       := RemoverChar(registro[13],'"');
      cliente[i].nufone2       := RemoverChar(registro[14],'"');
      cliente[i].nufone3       := RemoverChar(registro[15],'"');
      cliente[i].nufax         := RemoverChar(registro[16],'"');
      cliente[i].tppessoa      := RemoverChar(registro[17],'"');
      cliente[i].nuinscest     := RemoverChar(registro[18],'"');
      cliente[i].nucnpj        := RemoverChar(registro[19],'"');
      cliente[i].nucpf         := RemoverChar(registro[20],'"');
      cliente[i].email         := RemoverChar(registro[21],'"');
      cliente[i].cdstcliente   := 1;
    end;
  finally
    registro.Free;
  end;
end;

function TImportacao.consistir_estrutura: boolean;
var
  i: Integer;
  mensagem : string;
begin
  frmprogressbar.gau1.MaxValue := arquivo.Count;
  for i := 0 to arquivo.Count - 1 do
  begin
    frmprogressbar.gau1.Progress := i + 1;
    Application.ProcessMessages;
    if cliente[i].nmcliente = '' then
    begin
      erros.Add('Nome Fantasia vazio no cliente '+inttostr(cliente[i].cdcliente)+' - '+cliente[i].nmcliente+'.');
    end;
    if cliente[i].tppessoa = '' then
    begin
      erros.Add('Tipo de Pessoa vazio no cliente '+inttostr(cliente[i].cdcliente)+' - '+cliente[i].nmcliente+'.');
    end;
    if not codigoexiste(_rmatividade, IntToStr(cliente[i].cdrmatividade)) then
    begin
      erros.Add('Ramo Atividade ('+inttostr(cliente[i].cdrmatividade)+') inválido no cliente '+inttostr(cliente[i].cdcliente)+' - '+cliente[i].nmcliente+'.');
    end;
    if not codigoexiste(_pais, IntToStr(cliente[i].cdpais)) then
    begin
      erros.Add('Pais ('+inttostr(cliente[i].cdpais)+') inválido no cliente '+inttostr(cliente[i].cdcliente)+' - '+cliente[i].nmcliente+'.');
    end;
    if cliente[i].cdpais <> 1058 then
    begin
      cliente[i].cduf := 99;
      cliente[i].cdmunicipio := 9999999;
      cliente[i].nucnpj := '00.000.000/0000-00';
      cliente[i].nuinscest := 'ISENTO';
      cliente[i].tppessoa := 'J';
      cliente[i].nucep := '00000-000';
    end
    else
    begin
      if not codigoexiste(_uf, IntToStr(cliente[i].cduf)) then
      begin
        erros.Add('UF ('+inttostr(cliente[i].cduf)+') inválido no cliente '+inttostr(cliente[i].cdcliente)+' - '+cliente[i].nmcliente+'.');
      end;
      if not codigoexiste(_municipio, IntToStr(cliente[i].cdmunicipio)) then
      begin
        erros.Add('Município ('+inttostr(cliente[i].cdmunicipio)+') inválido no cliente '+inttostr(cliente[i].cdcliente)+' - '+cliente[i].nmcliente+'.');
      end;
      if cliente[i].nuinscest <> '' then
      begin
        mensagem := ValidarIE(cliente[i].nuinscest, NomedoCodigo(_uf, IntToStr(cliente[i].cduf), _sguf));
        if mensagem <> '' then
        begin
          erros.Add('Inscrição Estadual inválido no cliente '+inttostr(cliente[i].cdcliente)+' - '+cliente[i].nmcliente+'.');
        end;
      end;
      if cliente[i].nucnpj <> '' then
      begin
        mensagem := ValidarCNPJ(cliente[i].nucnpj);
        if mensagem <> '' then
        begin
          erros.Add('CNPJ inválido no cliente '+inttostr(cliente[i].cdcliente)+' - '+cliente[i].nmcliente+'.');
        end;
        cliente[i].nucnpj := FormatarCNPJ(cliente[i].nucnpj)
      end;
      if cliente[i].nucpf <> '' then
      begin
        mensagem := Validarcpf(cliente[i].nucpf);
        if mensagem <> '' then
        begin
          erros.Add('CPF inválido no cliente '+inttostr(cliente[i].cdcliente)+' - '+cliente[i].nmcliente+'.');
        end;
        cliente[i].nucpf := formatarCPF(cliente[i].nucpf);
      end;
    end;
    if codigoexiste(_cliente, IntToStr(cliente[i].cdcliente)) then
    begin
      sql.add(gerar_update(i));
    end
    else
    begin
      sql.add(gerar_insert(i));
    end;
  end;
  result := erros.Count = 0;
end;

constructor TImportacao.Create;
begin
  sql            := TStringList.Create;
  erros          := TStringList.Create;
  arquivo        := TStringList.Create;
  frmprogressbar := Tfrmprogressbar.Create(nil);
  frmprogressbar.setgau1;
end;

destructor TImportacao.destroy;
begin
  FreeAndNil(sql);
  FreeAndNil(erros);
  FreeAndNil(arquivo);
  FreeAndNil(frmprogressbar);
  inherited;
end;

procedure TImportacao.executar_script;
begin
  if ExecutaScript(sql, frmprogressbar.gau1) then
  begin
    messagedlg('Importação concluída!', mtInformation, [mbOK], 0);
  end;
end;

function TImportacao.gerar_insert(i:Integer):string;
begin
  result := 'insert into cliente'+
            '(cdstcliente,cdcliente,cduf,cdrmatividade,cdmunicipio,cdpais,nmcliente,rzsocial,'+
             'dsendereco,dsnumero,dscomplemento,nucxpostal,nmbairro,nucep,nufone1,'+
             'nufone2,nufone3,nufax,tppessoa,nuinscest,nucnpj,nucpf,email,'+
             _sqlreg+
             _1+','+
             inttostr(cliente[i].cdcliente)+
             ','+inttostr(cliente[i].cduf)+
            ','+inttostr(cliente[i].cdrmatividade)+
            ','+inttostr(cliente[i].cdmunicipio)+
            ','+inttostr(cliente[i].cdpais)+
            ','+quotedstr(cliente[i].nmcliente)+
            ','+quotedstr(cliente[i].rzsocial)+
            ','+quotedstr(cliente[i].dsendereco)+
            ','+quotedstr(cliente[i].dsnumero)+
            ','+quotedstr(cliente[i].dscomplemento)+
            ','+quotedstr(cliente[i].nucxpostal)+
            ','+quotedstr(cliente[i].nmbairro)+
            ','+quotedstr(cliente[i].nucep)+
            ','+quotedstr(cliente[i].nufone1)+
            ','+quotedstr(cliente[i].nufone2)+
            ','+quotedstr(cliente[i].nufone3)+
            ','+quotedstr(cliente[i].nufax)+
            ','+quotedstr(cliente[i].tppessoa)+
            ','+quotedstr(cliente[i].nuinscest)+
            ','+quotedstr(cliente[i].nucnpj)+
            ','+quotedstr(cliente[i].nucpf)+
            ','+quotedstr(cliente[i].email)+','+sqlregistras+';';
end;

function TImportacao.gerar_update(i:Integer):string;
begin
  result := 'update cliente '+
            'set cduf='      +inttostr(cliente[i].cduf)+
            ',cdrmatividade='+inttostr(cliente[i].cdrmatividade)+
            ',cdmunicipio='+inttostr(cliente[i].cdmunicipio)+
            ',cdpais='+inttostr(cliente[i].cdpais)+
            ',nmcliente='+quotedstr(cliente[i].nmcliente)+
            ',rzsocial='+quotedstr(cliente[i].rzsocial)+
            ',dsendereco='+quotedstr(cliente[i].dsendereco)+
            ',dsnumero='+quotedstr(cliente[i].dsnumero)+
            ',dscomplemento='+quotedstr(cliente[i].dscomplemento)+
            ',nucxpostal='+quotedstr(cliente[i].nucxpostal)+
            ',nmbairro='+quotedstr(cliente[i].nmbairro)+
            ',nucep='+quotedstr(cliente[i].nucep)+
            ',nufone1='+quotedstr(cliente[i].nufone1)+
            ',nufone2='+quotedstr(cliente[i].nufone2)+
            ',nufone3='+quotedstr(cliente[i].nufone3)+
            ',nufax='+quotedstr(cliente[i].nufax)+
            ',tppessoa='+quotedstr(cliente[i].tppessoa)+
            ',nuinscest='+quotedstr(cliente[i].nuinscest)+
            ',nucnpj='+quotedstr(cliente[i].nucnpj)+
            ',nucpf='+quotedstr(cliente[i].nucpf)+
            ',email='+quotedstr(cliente[i].email)+
            ' where cdempresa='+empresa.cdempresa.tostring+' and cdcliente='+inttostr(cliente[i].cdcliente)+';';
end;

function TImportacao.Importar: Boolean;
begin
  if not ler_arquivo then
  begin
    Result := False;
    Exit;
  end;
  frmprogressbar.gau.MaxValue := 6;
  frmprogressbar.gau.Progress := 1;
  frmprogressbar.pnl.Caption  := 'Ler Arquivo';
  frmprogressbar.Show;
  Application.ProcessMessages;
  frmprogressbar.gau.Progress := 2;
  frmprogressbar.pnl.Caption  := 'Preparar dados';
  Application.ProcessMessages;
  preparar_estrutura;
  frmprogressbar.gau.Progress := 3;
  frmprogressbar.pnl.Caption  := 'Carregar dados';
  Application.ProcessMessages;
  carregar_dados_estrutura;
  frmprogressbar.gau.Progress := 4;
  frmprogressbar.pnl.Caption  := 'Consistir dados';
  Application.ProcessMessages;
  sqlregistras := SQLRegistra;
  if not consistir_estrutura then
  begin
    ExibirSaidaVideo(erros, wsMaximized, true);
    //Exit;
  end;
  frmprogressbar.gau.Progress := 5;
  frmprogressbar.pnl.Caption  := 'Gerar script';
  Application.ProcessMessages;
  //gerar_scritp;
  frmprogressbar.gau.Progress := 6;
  frmprogressbar.pnl.Caption  := 'Executar script';
  Application.ProcessMessages;
  executar_script;
  result := true;
end;

function TImportacao.ler_arquivo: Boolean;
begin
  QRotinas.getfilename(nmfile);
  result := nmfile <> '';
end;

procedure TImportacao.preparar_estrutura;
begin
  arquivo.LoadFromFile(nmfile);
  SetLength(cliente, arquivo.Count);
end;

end.
