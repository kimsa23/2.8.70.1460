unit classeimportacaoTransportadora;

interface

uses
  {$IFNDEF VER210}System.Actions, System.UITypes,{$ENDIF}
  Forms, Dialogs, SysUtils, Classes,
  ACBrValidador,
  uRichEdit, uProgressBar, uRegistro, ustrings, uRotinas, uConstantes,
  classeregistrainformacao, classeexecutasql, classeempresa;

function ImportarTransportadora:Boolean;

implementation

type
  TTransportadoraImportacao = record
    cdTransportadora : Integer;
    cduf : Integer;
    cdrmatividade : Integer;
    cdmunicipio : Integer;
    cdpais : Integer;
    cdstTransportadora : integer;
    nmTransportadora : string;
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
    nuinss : string;
    nudependentes : integer;
    nuidentid : string;
    nmpai : string;
    nmmae : string;
    cdsexo : string;
    cdestcivil : string;
    dtnascimento: string;
  end;
  TImportacao = class(tobject)
    sqlregistras, nmfile : string;
    arquivo, sql, erros : TStrings;
    Transportadora : array of TTransportadoraImportacao;
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

function ImportarTransportadora:Boolean;
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
      Transportadora[i].cdTransportadora   := strtoint(registro[0]);
      Transportadora[i].cduf               := strtoint(registro[1]);
      Transportadora[i].cdrmatividade      := strtoint(registro[2]);
      Transportadora[i].cdmunicipio        := strtoint(registro[3]);
      Transportadora[i].cdpais             := strtoint(registro[4]);
      Transportadora[i].nmTransportadora   := RemoverChar(registro[5],'"');
      Transportadora[i].rzsocial           := RemoverChar(registro[6],'"');
      Transportadora[i].dsendereco         := RemoverChar(registro[7],'"');
      Transportadora[i].dsnumero           := RemoverChar(registro[8],'"');
      Transportadora[i].dscomplemento      := RemoverChar(registro[9],'"');
      Transportadora[i].nucxpostal         := RemoverChar(registro[10],'"');
      Transportadora[i].nmbairro           := RemoverChar(registro[11],'"');
      Transportadora[i].nucep              := RemoverChar(registro[12],'"');
      Transportadora[i].nufone1            := RemoverChar(registro[13],'"');
      Transportadora[i].nufone2            := RemoverChar(registro[14],'"');
      Transportadora[i].nufone3            := RemoverChar(registro[15],'"');
      Transportadora[i].nufax              := RemoverChar(registro[16],'"');
      Transportadora[i].tppessoa           := RemoverChar(registro[17],'"');
      Transportadora[i].nuinscest          := RemoverChar(registro[18],'"');
      Transportadora[i].nucnpj             := RemoverChar(registro[19],'"');
      Transportadora[i].nucpf              := RemoverChar(registro[20],'"');
      Transportadora[i].email              := RemoverChar(registro[21],'"');
      Transportadora[i].nuinss             := RemoverChar(registro[22],'"');
      Transportadora[i].nudependentes      := strtoint(registro[23]);
      transportadora[i].nuidentid          := RemoverChar(registro[24],'"');
      transportadora[i].nmpai              := RemoverChar(registro[25],'"');
      transportadora[i].nmmae              := RemoverChar(registro[26],'"');
      transportadora[i].cdsexo             := RemoverChar(registro[27],'"');
      transportadora[i].cdestcivil         := RemoverChar(registro[28],'"');
      transportadora[i].dtnascimento       := RemoverChar(registro[29],'"');
      Transportadora[i].cdstTransportadora := 1;
    end;
  finally
    registro.Free;
  end;
end;

function TImportacao.consistir_estrutura: boolean;
var
  i: Integer;
  mensagem : string;
  boerro : boolean;
begin
  frmprogressbar.gau1.MaxValue := arquivo.Count;
  for i := 0 to arquivo.Count - 1 do
  begin
    frmprogressbar.gau1.Progress := i + 1;
    Application.ProcessMessages;
    boerro := false;

    if not codigoexiste(_uf, IntToStr(Transportadora[i].cduf)) then
    begin
      erros.Add('UF ('+inttostr(Transportadora[i].cduf)+') inválido no Transportadora '+inttostr(Transportadora[i].cdTransportadora)+' - '+Transportadora[i].nmTransportadora+'.');
      boerro := true;
    end;
    if not codigoexiste(_rmatividade, IntToStr(Transportadora[i].cdrmatividade)) then
    begin
      erros.Add('Ramo Atividade ('+inttostr(Transportadora[i].cdrmatividade)+') inválido no Transportadora '+inttostr(Transportadora[i].cdTransportadora)+' - '+Transportadora[i].nmTransportadora+'.');
      boerro := true;
    end;
    if not codigoexiste(_municipio, IntToStr(Transportadora[i].cdmunicipio)) then
    begin
      erros.Add('Município ('+inttostr(Transportadora[i].cdmunicipio)+') inválido no Transportadora '+inttostr(Transportadora[i].cdTransportadora)+' - '+Transportadora[i].nmTransportadora+'.');
      boerro := true;
    end;
    if not codigoexiste(_pais, IntToStr(Transportadora[i].cdpais)) then
    begin
      erros.Add('Pais ('+inttostr(Transportadora[i].cdpais)+') inválido no Transportadora '+inttostr(Transportadora[i].cdTransportadora)+' - '+Transportadora[i].nmTransportadora+'.');
      boerro := true;
    end;
    if Transportadora[i].nmTransportadora = '' then
    begin
      erros.Add('Nome Fantasia vazio no Transportadora '+inttostr(Transportadora[i].cdTransportadora)+' - '+Transportadora[i].nmTransportadora+'.');
      boerro := true;
    end;
    if Transportadora[i].tppessoa = '' then
    begin
      erros.Add('Tipo de Pessoa vazio no Transportadora '+inttostr(Transportadora[i].cdTransportadora)+' - '+Transportadora[i].nmTransportadora+'.');
      boerro := true;
    end;
    if transportadora[i].nuinscest <> '' then
    begin
      //@mensagem := ACBrValidadorValidarIE(transportadora[i].nuinscest, NomedoCodigo(_uf, IntToStr(transportadora[i].cduf), _sguf));
      mensagem := ValidarIE(transportadora[i].nuinscest, NomedoCodigo(_uf, IntToStr(transportadora[i].cduf), _sguf));
      if mensagem <> '' then
      begin
        erros.Add('Inscrição Estadual inválido no transportadora '+inttostr(transportadora[i].cdtransportadora)+' - '+transportadora[i].nmtransportadora+'.');
        boerro := true;
      end;
    end;
    if Transportadora[i].nucnpj <> '' then
    begin
      //@mensagem := ACBrValidadorValidarCNPJ(Transportadora[i].nucnpj);
      mensagem := ValidarCNPJ(Transportadora[i].nucnpj);
      if mensagem <> '' then
      begin
        erros.Add('CNPJ inválido no Transportadora '+inttostr(Transportadora[i].cdTransportadora)+' - '+Transportadora[i].nmTransportadora+'.');
        boerro := true;
      end;
    end;
    if Transportadora[i].nucpf <> '' then
    begin
      //@mensagem := ACBrValidadorValidarcpf(Transportadora[i].nucpf);
      mensagem := Validarcpf(Transportadora[i].nucpf);
      if mensagem <> '' then
      begin
        erros.Add('CPF inválido no Transportadora '+inttostr(Transportadora[i].cdTransportadora)+' - '+Transportadora[i].nmTransportadora+'.');
        boerro := true;
      end;
    end;
    if not boerro then
    begin
      if codigoexiste(_Transportadora, IntToStr(Transportadora[i].cdTransportadora)) then
      begin
        sql.add(gerar_update(i));
      end
      else
      begin
        sql.add(gerar_insert(i));
      end;
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
  freeandnil(sql);
  freeandnil(erros);
  freeandnil(arquivo);
  freeandnil(frmprogressbar);
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
  result := 'insert into Transportadora'+
            '(cdstTransportadora,cdTransportadora,cduf,cdmunicipio,cdpais,nmTransportadora'+
            ',rzsocial,dsendereco,dsnumero,dscomplemento,nucxpostal,nmbairro,nucep'+
            ',nufone1,nufone2,nufone3,nufax,tppessoa,nuinscest,nucnpj,nucpf,email'+
            ',nuinss,nudependentes,nuidentid,nmpai,nmmae,cdsexo,cdestcivil,dtnascimento,'+
             _sqlreg+
             _1+','+
             inttostr(Transportadora[i].cdTransportadora)+
             ','+inttostr(Transportadora[i].cduf)+
             ','+inttostr(Transportadora[i].cdmunicipio)+
             ','+inttostr(Transportadora[i].cdpais)+
             ','+quotedstr(Transportadora[i].nmTransportadora)+
             ','+quotedstr(Transportadora[i].rzsocial)+
             ','+quotedstr(Transportadora[i].dsendereco)+
             ','+quotedstr(Transportadora[i].dsnumero)+
             ','+quotedstr(Transportadora[i].dscomplemento)+
             ','+quotedstr(Transportadora[i].nucxpostal)+
             ','+quotedstr(Transportadora[i].nmbairro)+
             ','+quotedstr(Transportadora[i].nucep)+
             ','+quotedstr(Transportadora[i].nufone1)+
             ','+quotedstr(Transportadora[i].nufone2)+
             ','+quotedstr(Transportadora[i].nufone3)+
             ','+quotedstr(Transportadora[i].nufax)+
             ','+quotedstr(Transportadora[i].tppessoa)+
             ','+quotedstr(Transportadora[i].nuinscest)+
             ','+quotedstr(Transportadora[i].nucnpj)+
             ','+quotedstr(Transportadora[i].nucpf)+
             ','+quotedstr(Transportadora[i].email)+
             ','+quotedstr(Transportadora[i].nuinss)+
             ','+inttostr(Transportadora[i].nudependentes)+
             ','+quotedstr(Transportadora[i].nuidentid)+
             ','+quotedstr(Transportadora[i].nmpai)+
             ','+quotedstr(Transportadora[i].nmmae)+
             ','+quotedstr(Transportadora[i].cdsexo)+
             ','+quotedstr(Transportadora[i].cdestcivil)+
             ','+getnull(Transportadora[i].dtnascimento, _string)+
             ','+sqlregistras+';';
end;

{
procedure TImportacao.gerar_scritp;
var
  i: Integer;
begin
  frmprogressbar.gau1.MaxValue := arquivo.Count;
  for i := 0 to arquivo.Count - 1 do
  begin
    frmprogressbar.gau1.Progress := i + 1;
    Application.ProcessMessages;
    if codigoexiste(_Transportadora, IntToStr(Transportadora[i].cdTransportadora)) then
    begin
      sql.add(gerar_update(i));
    end
    else
    begin
      sql.add(gerar_insert(i));
    end;
  end;
end;
}

function TImportacao.gerar_update(i:Integer):string;
begin
  result := 'update Transportadora '+
            'set cduf='      +inttostr(Transportadora[i].cduf)+
            ',cdmunicipio='+inttostr(Transportadora[i].cdmunicipio)+
            ',cdpais='+inttostr(Transportadora[i].cdpais)+
            ',nmTransportadora='+quotedstr(Transportadora[i].nmTransportadora)+
            ',rzsocial='+quotedstr(Transportadora[i].rzsocial)+
            ',dsendereco='+quotedstr(Transportadora[i].dsendereco)+
            ',dsnumero='+quotedstr(Transportadora[i].dsnumero)+
            ',dscomplemento='+quotedstr(Transportadora[i].dscomplemento)+
            ',nucxpostal='+quotedstr(Transportadora[i].nucxpostal)+
            ',nmbairro='+quotedstr(Transportadora[i].nmbairro)+
            ',nucep='+quotedstr(Transportadora[i].nucep)+
            ',nufone1='+quotedstr(Transportadora[i].nufone1)+
            ',nufone2='+quotedstr(Transportadora[i].nufone2)+
            ',nufone3='+quotedstr(Transportadora[i].nufone3)+
            ',nufax='+quotedstr(Transportadora[i].nufax)+
            ',tppessoa='+quotedstr(Transportadora[i].tppessoa)+
            ',nuinscest='+quotedstr(Transportadora[i].nuinscest)+
            ',nucnpj='+quotedstr(Transportadora[i].nucnpj)+
            ',nucpf='+quotedstr(Transportadora[i].nucpf)+
            ',email='+quotedstr(Transportadora[i].email)+
            ',nuinss='+quotedstr(Transportadora[i].nuinss)+
            ',nudependentes='+inttostr(Transportadora[i].nudependentes)+
            ',nuidentid='+quotedstr(Transportadora[i].nuidentid)+
            ',nmpai='+quotedstr(Transportadora[i].nmpai)+
            ',nmmae='+quotedstr(Transportadora[i].nmmae)+
            ',cdsexo='+quotedstr(Transportadora[i].cdsexo)+
            ',cdestcivil='+quotedstr(Transportadora[i].cdestcivil)+
            ',dtnascimento='+getnull(Transportadora[i].dtnascimento, _string)+
            ' where cdempresa='+empresa.cdempresa.tostring+' and cdTransportadora='+inttostr(Transportadora[i].cdTransportadora)+';';
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
  SetLength(Transportadora, arquivo.Count);
end;

end.
