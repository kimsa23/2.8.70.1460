unit ucontratonegociacao;

interface

uses
  System.Actions, System.UITypes,
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, Menus, Buttons,
  ExtCtrls, Mask, Spin, dialogs,
  DB, dbclient,
  uexportarexcel, ustrings, unumero, udatahora, uprogressbar,
  ulocalizar, uconstantes, uregistro,
  classeregistrainformacao, classegerar, classeexecutasql, classeempresa,
  classeaplicacao, classeretornasql, classeform, classecontrato,
  cxGroupBox, cxSpinEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc, cxLookAndFeelPainters, cxButtons, cxButtonEdit, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLookAndFeels, cxPC, cxCheckBox, cxCalendar,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxNavigator,
  dxCore, cxDateUtils, ComCtrls, cxCurrencyEdit;

type
  TfrmdlgGerarNegociacaoContrato = class(TForm)
    dts: TDataSource;
    cds: TClientDataSet;
    cdsdtvencimento: TDateField;
    cdsvlduplicata: TCurrencyField;
    Label2: TLabel;
    Label3: TLabel;
    lblnuparcela: TLabel;
    lblvltotal: TLabel;
    lbldiavencimento: TLabel;
    lblvlparcela: TLabel;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvdtvencimento: TcxGridDBColumn;
    tbvvlduplicata: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    edtnmnegociacao: TcxTextEdit;
    edtdiavencimento: TcxSpinEdit;
    edtnuparcela: TcxSpinEdit;
    edtvlparcela: TcxCalcEdit;
    edtvlsaldo: TcxCalcEdit;
    btngerar: TcxButton;
    btnok: TcxButton;
    btncancelar: TcxButton;
    edtdtemissao: TcxDateEdit;
    lbldtemissao: TLabel;
    cbxcdtpcorrecao: TcxLookupComboBox;
    lblperiodicidade: TLabel;
    cbxcdperiodicidade: TcxLookupComboBox;
    tbvNUPARCELA: TcxGridDBColumn;
    tbvvlsaldo: TcxGridDBColumn;
    tbvvljuro: TcxGridDBColumn;
    tbvvljuroadicional: TcxGridDBColumn;
    tbvvlsaldodevedorcorrigido: TcxGridDBColumn;
    tbvvlamortizacao: TcxGridDBColumn;
    tbvvlsaldodevedor: TcxGridDBColumn;
    edtprjuro: TcxCalcEdit;
    lblprjuro: TLabel;
    cdsnuparcela: TStringField;
    cdsvlsaldo: TCurrencyField;
    cdsvljuro: TCurrencyField;
    cdsvljuroadicional: TCurrencyField;
    cdsvlsaldodevedorcorrigido: TCurrencyField;
    cdsvlamortizacao: TCurrencyField;
    cdsvlsaldodevedor: TCurrencyField;
    edtvlintermediaria: TcxCalcEdit;
    lblvlintermediaria: TLabel;
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure btnokClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdtpcorrecaoEnter(Sender: TObject);
    procedure cbxcdperiodicidadeEnter(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btngerarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private { Private declarations }
    cdcontrato : integer;
    itcontratonegociacao : TItContratoNegociacao;
    procedure consistir_antes_de_gerar;
    procedure atribuir_parcelas_a_grade;
  public { Public declarations }
  end;

var
  frmdlgGerarNegociacaoContrato: TfrmdlgGerarNegociacaoContrato;

function GerarNegociacaoContrato(cdcontrato:integer):boolean;

implementation

uses uDtmMain, Math;

{$R *.dfm}

function GerarNegociacaoContrato(cdcontrato:integer):boolean;
begin
  result := False;
  frmdlgGerarNegociacaoContrato := TfrmdlgGerarNegociacaoContrato.create(nil);
  try
    frmdlgGerarNegociacaoContrato.cdcontrato        := cdcontrato;
    frmdlgGerarNegociacaoContrato.edtdtemissao.Date := DtBanco;
    frmdlgGerarNegociacaoContrato.cds.AfterPost     := nil;
    frmdlgGerarNegociacaoContrato.cds.Open;
    if frmdlgGerarNegociacaoContrato.ShowModal = mrok then
    begin
      result := frmdlgGerarNegociacaoContrato.itcontratonegociacao.salvar;
    end;
  finally
    freeandnil(frmdlgGerarNegociacaoContrato);
  end;
end;

procedure TfrmdlgGerarNegociacaoContrato.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmdlgGerarNegociacaoContrato.btnokClick(Sender: TObject);
begin
  if edtnmnegociacao.text = '' then
  begin
    messagedlg('Negociação é um campo obrigatório.', mtinformation, [mbok], 0);
    edtnmnegociacao.setfocus;
    abort;
  end;
  if cds.recordcount = 0 then
  begin
    messagedlg('Gere as parcelas antes de continuar.', mtinformation, [mbok], 0);
    btngerar.setfocus;
    abort;
  end;
  if cds.State <> dsbrowse then
  begin
    cds.Post;
  end;
  modalresult := mrok;
end;

procedure TfrmdlgGerarNegociacaoContrato.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmdlgGerarNegociacaoContrato.FormCreate(Sender: TObject);
begin
  cbxcdtpcorrecao.Properties.ListSource    := abrir_tabela(_tpcorrecao);
  cbxcdperiodicidade.Properties.ListSource := abrir_tabela(_periodicidade);
  itcontratonegociacao                     := TItContratoNegociacao.create;
end;

procedure TfrmdlgGerarNegociacaoContrato.cbxcdtpcorrecaoEnter(Sender: TObject);
begin
  abrir_tabela(_tpcorrecao);
  colorenter(sender);
end;

procedure TfrmdlgGerarNegociacaoContrato.cbxcdperiodicidadeEnter(Sender: TObject);
begin
  abrir_tabela(_periodicidade);
  colorenter(sender);
end;

procedure TfrmdlgGerarNegociacaoContrato.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmdlgGerarNegociacaoContrato.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmdlgGerarNegociacaoContrato.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmdlgGerarNegociacaoContrato.btngerarClick(Sender: TObject);
begin
  consistir_antes_de_gerar;
  if itcontratonegociacao.cditcontratonegociacao = 0 then
  begin
    itcontratonegociacao.cditcontratonegociacao := QGerar.GerarCodigo(_itcontratonegociacao);
  end;
  itcontratonegociacao.cdtpcorrecao           := StrToInt(cbxcdtpcorrecao.EditValue);
  itcontratonegociacao.vlsaldo                := edtvlsaldo.Value;
  itcontratonegociacao.cdcontrato             := cdcontrato;
  itcontratonegociacao.dtemissao              := edtdtemissao.Date;
  itcontratonegociacao.cdperiodicidade        := StrToInt(cbxcdperiodicidade.EditValue);
  itcontratonegociacao.nudia                  := edtdiavencimento.Value;
  itcontratonegociacao.prjuro                 := edtprjuro.Value;
  itcontratonegociacao.nmitcontratonegociacao := edtnmnegociacao.Text;
  itcontratonegociacao.nuparcelas             := edtnuparcela.value;
  itcontratonegociacao.vlparcela              := edtvlparcela.Value;
  itcontratonegociacao.prjuro                 := edtprjuro.Value;
  itcontratonegociacao.boativo                := _s;
  itcontratonegociacao.ItContratoParcela.Clear;
  itcontratonegociacao.gerar_parcelas;
  atribuir_parcelas_a_grade;
  cds.First;
end;

procedure TfrmdlgGerarNegociacaoContrato.FormDestroy(Sender: TObject);
begin
  FreeAndNil(itcontratonegociacao);
end;

procedure TfrmdlgGerarNegociacaoContrato.consistir_antes_de_gerar;
begin
  if cbxcdtpcorrecao.text = '' then
  begin
    messagedlg('Tipo de Correção é um campo obrigatório.', mtinformation, [mbok], 0);
    cbxcdtpcorrecao.setfocus;
    abort;
  end;
  if Trim(edtnmnegociacao.Text) = '' then
  begin
    messagedlg('Negociação é um campo obrigatório.', mtinformation, [mbok], 0);
    edtnmnegociacao.setfocus;
    abort;
  end;
  if edtvlsaldo.value = 0 then
  begin
    messagedlg('Valor do Saldo deve ser maior do que zero.', mtinformation, [mbok], 0);
    edtvlsaldo.setfocus;
    abort;
  end;
  if edtnuparcela.value = 1 then
  begin
    messagedlg('Número de Parcelas deve ser maior do que 1.', mtinformation, [mbok], 0);
    edtnuparcela.setfocus;
    abort;
  end;
  if edtprjuro.value = 0 then
  begin
    messagedlg('% de Juros deve ser maior do que zero.', mtinformation, [mbok], 0);
    edtprjuro.setfocus;
    abort;
  end;
end;

procedure TfrmdlgGerarNegociacaoContrato.atribuir_parcelas_a_grade;
var
  i : Integer;
  frmprogressbar : TFrmprogressbar;
begin
  cds.EmptyDataSet;
  frmprogressbar := tfrmprogressbar.create(nil);
  cds.disablecontrols;
  try
    frmprogressbar.gau.maxvalue := itcontratonegociacao.ItContratoParcela.Count;
    frmprogressbar.show;
    for i := 0 to itcontratonegociacao.ItContratoParcela.Count - 1 do
    begin
      frmprogressbar.gau.progress := i + 1;
      application.ProcessMessages;
      cds.append;
      cdsnuparcela.AsInteger                := itcontratonegociacao.ItContratoParcela.Items[i].nuparcela;
      cdsdtvencimento.AsDateTime            := itcontratonegociacao.ItContratoParcela.Items[i].dtparcela;
      cdsvlduplicata.AsCurrency             := itcontratonegociacao.ItContratoParcela.Items[i].vlparcela;
      cdsvlsaldo.AsCurrency                 := itcontratonegociacao.ItContratoParcela.Items[i].vlsaldo;
      cdsvljuro.AsCurrency                  := itcontratonegociacao.ItContratoParcela.Items[i].vljuros;
      cdsvljuroadicional.AsCurrency         := itcontratonegociacao.ItContratoParcela.Items[i].vljurosadicional;
      cdsvlsaldodevedorcorrigido.AsCurrency := itcontratonegociacao.ItContratoParcela.Items[i].vlsaldodevedor;
      cdsvlamortizacao.AsCurrency           := itcontratonegociacao.ItContratoParcela.Items[i].vlamortizacao;
      cdsvlsaldodevedor.AsCurrency          := itcontratonegociacao.ItContratoParcela.Items[i].vlsaldodevedor;
      cds.Post;
    end;
  finally
    freeandnil(frmprogressbar);
    cds.EnableControls;
  end;
end;

end.
