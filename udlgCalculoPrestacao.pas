unit udlgCalculoPrestacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, Menus,
  uconstantes, udatahora, ustrings,
  classecalculoprestacao,
  cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, cxDBLabel, dxBevel,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox,
  cxTextEdit, cxMaskEdit, cxButtons, cxCalc, cxCurrencyEdit, cxSpinEdit,
  ComCtrls, dxCore, cxDateUtils, cxCalendar;

type
  TfrmdlgCalculoPrestacao = class(TForm)
    gbxlote: TcxGroupBox;
    lblvltotal: TLabel;
    edtvlmetroquadrado: TcxCalcEdit;
    Label1: TLabel;
    edtqttamanholote: TcxCalcEdit;
    Label2: TLabel;
    gbxintermediaria: TcxGroupBox;
    cbxcdperiodicidade: TcxLookupComboBox;
    Label3: TLabel;
    gbxcondicoes: TcxGroupBox;
    Label5: TLabel;
    edtprjuros: TcxCalcEdit;
    Label6: TLabel;
    edtvlentrada: TcxCalcEdit;
    Label8: TLabel;
    gbxFinanciamento: TcxGroupBox;
    Label10: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    btncancelar: TcxButton;
    btnok: TcxButton;
    edtvlfinanciamento: TcxCurrencyEdit;
    edtvlparcelamensal: TcxCurrencyEdit;
    edtvlperiodicidade: TcxCurrencyEdit;
    edtvlimovel: TcxCurrencyEdit;
    edtqtparcela: TcxSpinEdit;
    edtdtemissao: TcxDateEdit;
    Label12: TLabel;
    Label13: TLabel;
    lbldtprimeiraperiodica: TLabel;
    Label14: TLabel;
    lbldtprimeiramensal: TLabel;
    Label15: TLabel;
    lblqtparcelaperiodica: TLabel;
    edtvlparcelaperiodica: TcxCalcEdit;
    edtprperiodicidade: TcxCurrencyEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure exitcontrol(Sender: TObject);
  private { Private declarations }
    Calculo : TCalculoPrestacao;
    procedure setTelaObjeto;
    procedure SetObjetoTela;
    function getcdperiodicidade:integer;
  public { Public declarations }
  end;

function CalculoPrestacao:boolean;

var
  frmdlgCalculoPrestacao: TfrmdlgCalculoPrestacao;

implementation

{$R *.dfm}

uses uDtmMain;

function CalculoPrestacao:boolean;
begin
  frmdlgcalculoprestacao := tfrmdlgcalculoprestacao.Create(nil);
  try
    frmdlgcalculoprestacao.ShowModal;
  finally
    freeandnil(frmdlgcalculoprestacao);
  end;
end;

procedure TfrmdlgCalculoPrestacao.exitcontrol(Sender: TObject);
begin
  settelaobjeto;
end;

procedure TfrmdlgCalculoPrestacao.FormCreate(Sender: TObject);
begin
  cbxcdperiodicidade.Properties.ListSource := abrir_tabela(_periodicidade);
  edtdtemissao.Date := dtbanco;
  calculo := tcalculoprestacao.create;
end;

procedure TfrmdlgCalculoPrestacao.FormDestroy(Sender: TObject);
begin
  freeandnil(calculo);
end;

function TfrmdlgCalculoPrestacao.getcdperiodicidade: integer;
begin
  if varisnull(cbxcdperiodicidade.EditValue) then
  begin
    result := 0;
  end
  else
  begin
    result := cbxcdperiodicidade.EditValue;
  end;
end;

procedure TfrmdlgCalculoPrestacao.SetObjetoTela;
begin
  edtvlimovel.Value := Calculo.vlimovel;
  edtvlparcelamensal.Value := calculo.vlparcelamensal;
  edtvlfinanciamento.Value := calculo.vlfinanciamento;
  edtvlperiodicidade.value := calculo.vlperiodicidade;
  edtprperiodicidade.Value := calculo.prperiodicidade;
  lbldtprimeiraperiodica.Caption := QString.GetDtAbrev_(calculo.dtprimeiraperiodica);
  lbldtprimeiramensal.caption := QString.getdtabrev_(calculo.dtprimeiramensal);
  lblqtparcelaperiodica.caption := inttostr(calculo.qtparcelaperiodica);
end;

procedure TfrmdlgCalculoPrestacao.setTelaObjeto;
begin
  calculo.vlmetroquadrado    := edtvlmetroquadrado.Value;
  calculo.qttamanholote      := edtqttamanholote.Value;
  calculo.cdperiodicidade    := getcdperiodicidade;
  calculo.vlparcelaperiodica := edtvlparcelaperiodica.Value;
  calculo.vlentrada          := edtvlentrada.Value;
  calculo.prjuros            := edtprjuros.Value;
  calculo.qtparcelas         := edtqtparcela.Value;
  calculo.dtemissao          := edtdtemissao.Date;
  calculo.processar;
  SetObjetoTela;
end;

end.
