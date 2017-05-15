unit uPrinter;

interface

uses System.Actions, System.UITypes,
  forms, dialogs, SysUtils, Classes,
  uRichEdit, uprogressbar;

  {
const
  // quebra pagina
  adqiQuebrarPagina = #12;
  // configuracao impressora
  adqiprinterInicializa = #27#64;
  adqiprinterCentro     = #27#97#49; // Centraliza a Impressão
  adqiprinterEsquerda   = #27#97#48; // Posiciona na Margem Esquerda
  adqiprinterMEsquerda  = #27#108#5; // Define a Margem Esquerda
  adqiprinterMDireita   = #27#81#78; // Define a Margem Direita
  //
  adqiprinterTab1    = #27#68#32; // Define a Tabulação 1 = 32;
  adqiprinterTab2    = #27#68#41#50; // Define a Tabulação 2 = 50;
  adqiprinterTab3    = #27#68#27; // Define a Tabulação 3 = 27;
  adqiprinterTab4    = #27#68#37; // Define a Tabulação 4 = 37;
  adqiprinterTab5    = #27#68#45; // Define a Tabulação 5 = 45;
  adqiprinterTab6    = #27#68#10; // Define a Tabulação 6 = 10;
  adqiprinterTab7    = #27#68#46; // Define a Tabulação 7 = 46;
  adqiprinterTab8    = #27#68#20; // Define a Tabulação 8 = 20;
  adqiprinterTabEXP0 = #27#68#0;
  adqiprinterTabEXP1 = #27#68#7;
  adqiprinterTabEXP2 = #27#68#38;
  adqiprinterTabEXP3 = #27#68#49;
  adqiprinterTabEXP4 = #27#68#44;
  adqiprinterTabEXP5 = #27#68#25;
  adqiprinterAss     = #27#9; // Tabulação Assume a Posição;
  adqiprinterSaltar  = #27#102#49#5; // Nº de Linhas a Saltar;
  // configuracao formatacao
  adqicondensado        = #27#15;
  adqiNcondensado       = #27#18;
  adqienfatizado        = #27#69;
  adqinenfatizado       = #27#70;
  adqiprinterJustifica  = #27#97#51; // Justifica o Texto a Ser impresso
  adqiprinterDraft      = #27#120#0; // Aciona Modo Draft
  adqiprinterImediato   = #27#105#1; // Aciona Modo Imediato
  adqiprinterCaracter   = #27#77;    // Aciona Modo Caracter Rápido.
  adqiprinterNormal     = #20; // Define Caracter 20 Tamanho Normal;
  adqiprinterCondensado = #15; // Define Caracter 15 Modo Condensado;
  adqiprinterExpandido  = #14; // Define Caracter 14 Modo Expandido;
  adqiprinterCNegrito   = #27#71; // Define Caracter Negrito;
  adqiprinterSNegrito   = #27#72; // Define Caracter Não Negrito;
  adqiprinterCSublinha  = #27#49;
  adqiprinterSSublinha  = #27#48;
  // configuracoes linha
  adqi10cpi         = #27#80;
  adqi12cpi         = #27#77;
  adqilinha1_8      = #27#48;
  adqilinha7_72     = #27#49;
  adqilinha1_6      = #27#50;
  adqilinha01pol    = #27#51#31;
  adqilinha02pol    = #27#51#32;
  adqilinha03pol    = #27#51#33;
  adqilinha04pol    = #27#51#34;
  adqilinha05pol    = #27#51#35;
  adqilinha06pol    = #27#51#36;
  adqilinha07pol    = #27#51#37;
  adqilinha08pol    = #27#51#38;
  adqilinha09pol    = #27#51#39;
  adqilinha10pol    = #27#51#40;
  }

//function  ImprimirModoCaracter(linha : TStrings; porta:string; condensado:boolean):integer;overload;
//function  ImprimirModoCaracter(linha : TStrings; porta:string):integer;overload;

implementation

{
function ImprimirModoCaracter(linha : TStrings; porta:string; condensado:boolean):integer;
var
  I:Integer;
  Arquivo : TextFile;
begin
  if  porta = '' then
  begin
    porta := 'VIDEO';
  end;
  if (uppercase(porta) = 'VÍDEO') or (uppercase(porta) = 'VIDEO') then
  begin
    ExibirSaidaVideo(linha);
    result := 0;
    exit;
  end;
  AssignFile(Arquivo,porta);
  Rewrite(Arquivo);
  if condensado then
  begin
    WriteLn(Arquivo, adqicondensado+linha[0])
  end
  else
  begin
    WriteLn(Arquivo, linha[0]);
  end;
  if linha.count > 0 then
  begin
    frmprogressbar := TFrmprogressbar.Create(application);
    try
      frmprogressbar.gau.MaxValue := linha.count - 1;
      frmprogressbar.Show;
      for I := 1 to linha.count - 1 do
      begin
        frmprogressbar.Caption := 'Imprimindo linha '+inttostr(i+1)+' de '+inttostr(linha.count);
        frmprogressbar.gau.Progress := i;
        frmprogressbar.Refresh;
        application.ProcessMessages;
        WriteLn(Arquivo, linha[i]);
      end;
    finally
      freeandnil(frmprogressbar);
    end;
  end;
  CloseFile(Arquivo);
  result := 0;
end;
}

{
function ImprimirModoCaracter(linha : TStrings; porta:string):integer;
var
  I:Integer;
  Arquivo : TextFile;
begin
  if  porta = '' then (*Fred*)
  begin
    result := -1;
    Messagedlg('Impressão em modo caracter não pode ser realizada.'#13#10'Porta da impressora não cadastrada.', mtInformation, [mbOk], 0);
    Exit;
  end;
  if (uppercase(porta) = 'VÍDEO') or (uppercase(porta) = 'VIDEO') then
  begin
    ExibirSaidaVideo(linha);
    result := 0;
    exit;
  end;
  AssignFile(Arquivo,porta);
  Rewrite(Arquivo);
  WriteLn(Arquivo, adqicondensado+linha[0]);
  if linha.count > 0 then
  begin
    frmprogressbar := TFrmprogressbar.Create(application);
    try
    frmprogressbar.gau.MaxValue := linha.count - 1;
    frmprogressbar.Show;
    for I := 1 to linha.count - 1 do
    begin
      frmprogressbar.gau.Progress := i;
      frmprogressbar.Refresh;
      application.ProcessMessages;
      WriteLn(Arquivo, linha[i]);
    end;
    finally
      frmprogressbar.free;
    end;
  end;
  CloseFile(Arquivo);
  result := 0;
end;
}

end.


