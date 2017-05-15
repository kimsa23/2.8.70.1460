unit udlgclientefinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, data.db,
  Dialogs,
  uConstantes,
  udatahora,
  classecliente, classeempresa, classeretornasql,  
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxEdit, cxCurrencyEdit, cxTextEdit, cxVGrid,
  cxInplaceContainer, dxBevel, Menus, StdCtrls, cxButtons, ExtCtrls,
  cxContainer, cxMemo, cxGroupBox;

type
  Tfrmdlgclientefinanceiro = class(TForm)
    vgrd: TcxVerticalGrid;
    lblestatistica: TcxCategoryRow;
    edtvlmaiorfatura: TcxEditorRow;
    edtvlultimacommpra: TcxEditorRow;
    edtvlprimeiracompra: TcxEditorRow;
    edtvlmaioracumulo: TcxEditorRow;
    edtnudiasmaioratrasohistorico: TcxEditorRow;
    edtnutitulosatrasado: TcxEditorRow;
    edtdtmaioratraso: TcxEditorRow;
    edtnudiasmaioratraso: TcxEditorRow;
    edtvlatrasado: TcxEditorRow;
    edtdtmaioratrasohistorico: TcxEditorRow;
    edtvlatrasomedio: TcxEditorRow;
    lblcredito: TcxCategoryRow;
    edtpedidosemaberto: TcxEditorRow;
    edtvlutilizado: TcxEditorRow;
    edtlimitecredito: TcxEditorRow;
    pnl: TPanel;
    btnfechar: TcxButton;
    gbxobservacao: TcxGroupBox;
    memobsfinanceira: TcxMemo;
    vgrdCategoryRow1: TcxCategoryRow;
    edtatrasomedio12meses: TcxEditorRow;
    edtdtmaioratrasohistorico12meses: TcxEditorRow;
    edtdiasmaioratraso12meses: TcxEditorRow;
    edtvljurosnrecebido: TcxEditorRow;
    procedure btnfecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private { Private declarations }
    cliente : TCliente;
    cdcliente : LargeInt;
    procedure set_dados;
  public { Public declarations }
  end;

var
  frmdlgclientefinanceiro: Tfrmdlgclientefinanceiro;

procedure dlgclientefinanceiro(codigo:LargeInt);

implementation

{$R *.dfm}

procedure dlgclientefinanceiro(codigo:LargeInt);
begin
  frmdlgclientefinanceiro := Tfrmdlgclientefinanceiro.Create(nil);
  try
    frmdlgclientefinanceiro.cdcliente := codigo;
    frmdlgclientefinanceiro.set_dados;
    frmdlgclientefinanceiro.ShowModal;
  finally
    frmdlgclientefinanceiro.Free;
  end;
end;

procedure Tfrmdlgclientefinanceiro.btnfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmdlgclientefinanceiro.set_dados;
begin
  cliente.Select(cdcliente);
  edtvlmaiorfatura.Properties.Caption    := 'Maior Fatura - '+ajustardata(formatdatetime(_dd_mm_yyyy, cliente.DTMaiorFatura))+' - Nota '+cliente.NuSaidaMaiorFatura;
  edtvlmaiorfatura.Properties.Value      := cliente.VLMaiorFatura;
  edtvlultimacommpra.Properties.Caption  := 'Última Compra - '+ajustardata(formatdatetime(_dd_mm_yyyy, cliente.DTUltimaVenda)+' - Nota '+cliente.NUSaidaUltimaVenda);
  edtvlultimacommpra.Properties.Value    := cliente.VLUltimaVenda;
  edtvlprimeiracompra.Properties.Caption := 'Primeira Compra - '+ajustardata(formatdatetime(_dd_mm_yyyy, cliente.DTPrimeiraVenda))+' - Nota '+cliente.NUSaidaPrimeiraVenda;
  edtvlprimeiracompra.Properties.Value   := cliente.VLPrimeiraVenda;
  edtvlmaioracumulo.Properties.Caption   := 'Maior Acúmulo - '+ajustardata(formatdatetime(_dd_mm_yyyy, cliente.dtmaioracumulo));
  edtvlmaioracumulo.Properties.Value     := cliente.vlmaioracumulo;
  edtatrasomedio12meses.Properties.Value := cliente.NuDiasAtrasoMedio12;
  edtdtmaioratrasohistorico12meses.Properties.Value := ajustardata(formatdatetime(_dd_mm_yyyy, cliente.dtmaioratrasomedio12));
  edtdiasmaioratraso12meses.Properties.Value        := cliente.NuDiasMaiorAtrasoMedio12;
  // atraso
  edtvlatrasomedio.Properties.Value              := cliente.NuDiasAtrasoMedio;
  edtdtmaioratrasohistorico.Properties.Value     := ajustardata(formatdatetime(_dd_mm_yyyy, cliente.dtmaioratrasomedio));
  edtvlatrasado.Properties.Value                 := cliente.VlAtrasado;
  edtnudiasmaioratraso.Properties.Value          := cliente.nudiasmaioratraso;
  edtdtmaioratraso.Properties.Value              := ajustardata(formatdatetime(_dd_mm_yyyy, cliente.dtmaioratraso));
  edtnutitulosatrasado.Properties.Value          := cliente.NuTituloAtrasado;
  edtnudiasmaioratrasohistorico.Properties.Value := cliente.NuDiasMaiorAtrasoMedio;
  edtpedidosemaberto.Properties.Value            := cliente.VLPedidoAberto;
  edtvlutilizado.Properties.Value                := cliente.VlCreditoUtilizado;
  edtlimitecredito.Properties.Value              := cliente.VlLimiteCredito;
  edtvljurosnrecebido.Properties.Value           := cliente.VlJuroNRecebido;
  memobsfinanceira.Lines.Text                    := RetornaSQLStrings('select DSOBSFINANC from cliente where cdempresa='+empresa.cdempresa.tostring+' and cdcliente='+cdcliente.tostring);
  //
  //vgrd.OptionsView.GridLineColor := $0000FF80;
  if (edtvlatrasado.Properties.Value > 0) or (edtpedidosemaberto.Properties.Value + edtvlutilizado.Properties.Value > edtlimitecredito.Properties.Value) then
    vgrd.OptionsView.GridLineColor := clred
  else
    vgrd.OptionsView.GridLineColor := clGreen;
end;

procedure Tfrmdlgclientefinanceiro.FormCreate(Sender: TObject);
begin
  cliente := tcliente.create;
end;

procedure Tfrmdlgclientefinanceiro.FormDestroy(Sender: TObject);
begin
  cliente.Free;
end;

end.
