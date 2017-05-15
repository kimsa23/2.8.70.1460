unit udlgtransferiradntcliente;

interface

uses
  System.Actions, System.UITypes,
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Menus, Buttons, ExtCtrls, Mask, dialogs,
  DB, sqlexpr,
  cxGroupBox, cxSpinEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc,
  ustrings, unumero, udatahora, ulocalizarcliente, ulocalizar,
  uconstantes, uregistro,
  classeregistrainformacao, classegerar, classeexecutasql, classeempresa,
  classeform,
  cxLookAndFeelPainters, cxButtons, cxButtonEdit, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxClasses, cxLookAndFeels, cxPC, cxLabel, cxCalendar, dxCore,
  cxDateUtils, ComCtrls;

type
  Tfrmdlgtransferiradntcliente = class(TForm)
    lblcliente: TLabel;
    lblrzsocialc: TLabel;
    Label1: TLabel;
    lbldtemissao: TLabel;
    edtcdcliente: TcxButtonEdit;
    edtvlparcela: TcxCalcEdit;
    btnok: TcxButton;
    btncancelar: TcxButton;
    lblvlsaldo: TcxLabel;
    lblsaldo: TcxLabel;
    edtdtemissao: TcxDateEdit;
    procedure edtcdclienteExit(Sender: TObject);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure edtvlparcelaExit(Sender: TObject);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btnokClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure edtdtemissaoExit(Sender: TObject);
  private { Private declarations }
    sql : tstrings;
    vlsaldo: Currency;
    cdadntcliente: string;
    procedure gerar_sql;
    function cdtpbaixa:string;
    procedure set_locacao;
  public { Public declarations }
  end;

var
  frmdlgtransferiradntcliente: Tfrmdlgtransferiradntcliente;

function TransferirAdntcliente(cdadntcliente:string):boolean;
function Alterar_Valor_locacao(var vllocacao:currency):boolean;

implementation

{$R *.dfm}

function Alterar_Valor_locacao(var vllocacao:currency):boolean;
begin
  frmdlgtransferiradntcliente := tfrmdlgtransferiradntcliente.create(nil);
  try
    frmdlgtransferiradntcliente.Caption := 'Alterar valor da locação';
    frmdlgtransferiradntcliente.set_locacao;
    frmdlgtransferiradntcliente.edtvlparcela.Value := vllocacao;
    frmdlgtransferiradntcliente.btnok.Enabled      := True;
    result := frmdlgtransferiradntcliente.ShowModal = mrok;
    if result then
    begin
      vllocacao := frmdlgtransferiradntcliente.edtvlparcela.Value;
    end;
  finally
    freeandnil(frmdlgtransferiradntcliente.sql);
    freeandnil(frmdlgtransferiradntcliente);
  end;
end;

function TransferirAdntcliente(cdadntcliente:string):boolean;
begin
  frmdlgtransferiradntcliente     := tfrmdlgtransferiradntcliente.create(nil);
  frmdlgtransferiradntcliente.sql := TStringList.Create;
  try
    frmdlgtransferiradntcliente.edtdtemissao.Date  := DtBanco;
    frmdlgtransferiradntcliente.cdadntcliente      := cdadntcliente;
    frmdlgtransferiradntcliente.vlsaldo            := ValordoCodigo(_adntcliente, cdadntcliente, _vlsaldo);
    frmdlgtransferiradntcliente.lblvlsaldo.Caption := FormatarMoeda(frmdlgtransferiradntcliente.vlsaldo);
    result := frmdlgtransferiradntcliente.ShowModal = mrok;
    if result then
    begin
      frmdlgtransferiradntcliente.gerar_sql;
      result := ExecutaScript(frmdlgtransferiradntcliente.sql);
    end;
  finally
    freeandnil(frmdlgtransferiradntcliente.sql);
    freeandnil(frmdlgtransferiradntcliente);
  end;
end;

procedure Tfrmdlgtransferiradntcliente.edtcdclienteExit(Sender: TObject);
var
  cd: string;
begin
  btnok.Enabled := (edtvlparcela.Value > 0) and (edtcdcliente.Text <> '') and (edtdtemissao.Text <> '');
  cd := edtcdcliente.text;
  if cd = '' then
  begin
    lblrzsocialc.caption := '';
    abort;
  end;
  if not CodigoExiste(_cliente, cd) then
  begin
    messagedlg('Código '+cd+' inexistente na tabela Cliente.', mterror, [mbok], 0);
    edtcdcliente.setfocus;
    abort;
  end;
  lblrzsocialc.Caption := NomedoCodigo(_cliente, cd, _rzsocial);
end;

procedure Tfrmdlgtransferiradntcliente.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
end;

procedure Tfrmdlgtransferiradntcliente.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

function Tfrmdlgtransferiradntcliente.cdtpbaixa:string;
begin
  if edtvlparcela.Value = vlsaldo then
  begin
    result := qregistro.CodigodoNome(_tpbaixa, UpperCase(_total))
  end
  else
  begin
    result := qregistro.CodigodoNome(_tpbaixa, UpperCase(_PARCIAL));
  end;
end;

procedure Tfrmdlgtransferiradntcliente.gerar_sql;
var
  cdadntclienten : string;
begin // baixar o adiantamento de origem
  { TODO -oPaulo -cDAO : Refatorar Classe DAO }
  cdadntclienten := GerarCodigo(_adntcliente);
  sql.add('insert into adntcliente'+
          '(CDADNTCLIENTEORIGEM,CDADNTCLIENTE,CDCLIENTE,CDSTADNTCLIENTE,DTEMISSAO,DTENTRADA,VLADNTCLIENTE,VLSALDO,VLUTILIZADO,'+_sqlreg+
          cdadntcliente+','+cdadntclienten+','+edtcdcliente.text+',1,'+
          getdtbanco(edtdtemissao.Date)+','+getdtbanco(edtdtemissao.Date)+','+
          getcurrencys(edtvlparcela.Value)+','+getcurrencys(edtvlparcela.Value)+',0,'+sqlregistra+';');
  sql.Add('insert into baixa'+
          '(cdbaixa,cdadntclientedestino,cdadntcliente,cdtpbaixa,nubaixa,dtbaixa,'+
          'vlmulta,vljuro,vlbaixa,vldesconto,vlabatimento,vldevolucao,vlliquido,'+_sqlreg+
        GerarCodigo(_baixa)+','+cdadntclienten+','+
        cdadntcliente+','+cdtpbaixa+','+cdadntcliente+','+
        getdtbanco(edtdtemissao.Date)+',0,0,'+
        getcurrencys(edtvlparcela.Value)+',0,0,0,'+
        getcurrencys(edtvlparcela.Value)+','+
        SQLRegistra+';');
  sql.Add('commit work;');
end;

procedure Tfrmdlgtransferiradntcliente.set_locacao;
begin
  edtcdcliente.Visible := False;
  lblcliente.Visible   := False;
  edtdtemissao.Visible := False;
  lbldtemissao.Visible := False;
  lblvlsaldo.Visible   := False;
  lblsaldo.Visible     := False;
end;

procedure Tfrmdlgtransferiradntcliente.edtvlparcelaExit(Sender: TObject);
begin
  if not edtcdcliente.Visible then
  begin
    if edtvlparcela.Value < 0 then
    begin
      MessageDlg('Valor não pode ser negatvo.', mtInformation, [mbOK], 0);
      edtvlparcela.SetFocus;
      Abort;
    end;
    Exit;
  end;
  if edtvlparcela.Value > vlsaldo then
  begin
    MessageDlg('Valor da transferência não pode ser maior do que o valor do saldo.', mtInformation, [mbOK], 0);
    edtvlparcela.SetFocus;
    Abort;
  end;
  if edtvlparcela.Value < 0 then
  begin
    MessageDlg('Valor da transferência não pode ser negativo.', mtInformation, [mbOK], 0);
    edtvlparcela.SetFocus;
    Abort;
  end;
  btnok.Enabled := (edtvlparcela.Value > 0) and (edtcdcliente.Text <> '') and (edtdtemissao.Text <> '');
end;

procedure Tfrmdlgtransferiradntcliente.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : Largeint;
begin
  cd := LocalizarCliente;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdcliente.text    := cd.tostring;
  lblrzsocialc.caption := qregistro.StringdoCodigo(_cliente, cd, _rzsocial);
  btnok.Enabled := (edtvlparcela.Value > 0) and (edtcdcliente.Text <> '') and (edtdtemissao.Text <> '');
end;

procedure Tfrmdlgtransferiradntcliente.btnokClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure Tfrmdlgtransferiradntcliente.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmdlgtransferiradntcliente.edtdtemissaoExit(Sender: TObject);
begin
  btnok.Enabled := (edtvlparcela.Value > 0) and (edtcdcliente.Text <> '') and (edtdtemissao.Text <> '');
end;

end.
