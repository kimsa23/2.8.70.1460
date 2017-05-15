unit udlglocacaodevolucao;

interface

uses
  System.Actions, System.UITypes,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus,
  SqlExpr,
  udatahora, uConstantes,
  classelocacao,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxControls, cxContainer, cxEdit, cxCalc, cxSpinEdit, cxTimeEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, StdCtrls,
  cxButtons, cxMemo, dxCore, cxDateUtils, classeform,
  ComCtrls;

type
  Tfrmdlglocacaodevolucao = class(TForm)
    btnok: TcxButton;
    btncancelar: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    edtdtentrega: TcxDateEdit;
    edthrentrega: TcxTimeEdit;
    edtnudias: TcxSpinEdit;
    edtqtitem: TcxSpinEdit;
    edtvlunitario: TcxCalcEdit;
    edtvltotal: TcxCalcEdit;
    memdsobservacao: TcxMemo;
    cxLabel7: TcxLabel;
    edtnusaida: TcxTextEdit;
    cxLabel8: TcxLabel;
    procedure btnokClick(Sender: TObject);
    procedure edtqtitemPropertiesChange(Sender: TObject);
    procedure edtvlunitarioPropertiesChange(Sender: TObject);
    procedure edtvltotalPropertiesChange(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure edtnusaidaKeyPress(Sender: TObject; var Key: Char);
    procedure edtdtentregaExit(Sender: TObject);
  private { Private declarations }
    locacao : TLocacao;
    procedure carregar_dados;
  public { Public declarations }
  end;

var
  frmdlglocacaodevolucao: Tfrmdlglocacaodevolucao;

function dlgLocacaoDevolucao(var locacao:tlocacao):boolean;

implementation

{$R *.dfm}

function dlgLocacaoDevolucao(var locacao:tlocacao):boolean;
begin
  result := False;
  frmdlglocacaodevolucao := Tfrmdlglocacaodevolucao.Create(nil);
  try
    frmdlglocacaodevolucao.locacao   := locacao;
    frmdlglocacaodevolucao.carregar_dados;
    if frmdlglocacaodevolucao.ShowModal = mrok then
    begin
      with locacao.locacaodevolucao.New do
      begin
        cdlocacao    := locacao.cdlocacao;
        dtentrega    := frmdlglocacaodevolucao.edtdtentrega.Date;
        hrentrega    := frmdlglocacaodevolucao.edthrentrega.Time;
        qtitem       := frmdlglocacaodevolucao.edtqtitem.Value;
        vlunitario   := frmdlglocacaodevolucao.edtvlunitario.Value;
        vltotal      := frmdlglocacaodevolucao.edtvltotal.Value;
        nudias       := frmdlglocacaodevolucao.edtnudias.Value;
        dsobservacao := frmdlglocacaodevolucao.memdsobservacao.Text;
        if frmdlglocacaodevolucao.edtnusaida.Text <> '' then
        begin
          nfdevolucao  := strtoint(frmdlglocacaodevolucao.edtnusaida.Text);
        end;
      end;
      Result := True;
    end;
  finally
    freeandnil(frmdlglocacaodevolucao);
  end;
end;

procedure Tfrmdlglocacaodevolucao.carregar_dados;
begin
  edtdtentrega.Date    := DtBanco;
  edthrentrega.Time    := HrBanco;
  edtnudias.Enabled    := False;
  edtnudias.Value      := DtBanco - locacao.dtinicio + 1;
  edtqtitem.Value      := locacao.qtsaldo;
  if locacao.qtsaldo = 1 then
  begin
    edtqtitem.Enabled := False;
  end;
  if locacao.cdstlocacao = 8 then
  begin
    edtvltotal.Value      := 0;
    edtvltotal.Enabled    := False;
    edtvlunitario.Enabled := false;
  end
  else if locacao.qtsaldo = locacao.qtitem then
  begin
    edtvltotal.Value := locacao.vllocacao;
  end
  else
  begin
    edtvltotal.Value := locacao.vllocacao - locacao.vlrecebido;
    if edtvltotal.Value < 0 then
    begin
      edtvltotal.Value := (locacao.vllocacao / locacao.qtitem) * locacao.qtsaldo;
    end;
  end;
end;

procedure Tfrmdlglocacaodevolucao.btnokClick(Sender: TObject);
begin
  if edtqtitem.Value <= 0 then
  begin
    MessageDlg('Quantidade deve ser maior do que zero.', mtInformation, [mbOK], 0);
    edtqtitem.SetFocus;
    Abort;
  end;
  if edtqtitem.Value > locacao.qtsaldo then
  begin
    MessageDlg('Quantidade não pode ser maior ao saldo ('+inttostr(locacao.qtsaldo)+') da locação.', mtInformation, [mbOK], 0);
    edtqtitem.SetFocus;
    Abort;
  end;
  if (edtvlunitario.Value <= 0) and edtvlunitario.Enabled then
  begin
    MessageDlg('Valor unitário deve ser maior do que zero.', mtInformation, [mbOK], 0);
    edtvlunitario.SetFocus;
    Abort;
  end;
  if (edtvltotal.Value <= 0) and edtvltotal.Enabled then
  begin
    MessageDlg('Valor total deve ser maior do que zero.', mtInformation, [mbOK], 0);
    edtvltotal.SetFocus;
    Abort;
  end;
  if locacao.dtinicio > edtdtentrega.Date then
  begin
    MessageDlg('Data de Entrega não pode ser menor do que a data de início da Locação.', mtInformation, [mbOK], 0);
    edtdtentrega.SetFocus;
    Abort;
  end;
  if (locacao.nunfsaida <> 0) and (edtnusaida.Text = '') then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Numero+' '+_da+' '+_Nota_Fiscal+' '+_de+' '+__Devolucao]), mtinformation, [mbok], 0);
    edtnusaida.SetFocus;
    Abort;
  end;
  ModalResult := mrOk;
end;

procedure Tfrmdlglocacaodevolucao.edtdtentregaExit(Sender: TObject);
begin
  edtnudias.Value := edtdtentrega.Date - locacao.dtinicio + 1;
end;

procedure Tfrmdlglocacaodevolucao.edtnusaidaKeyPress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure Tfrmdlglocacaodevolucao.edtqtitemPropertiesChange(Sender: TObject);
begin
  edtvltotal.Value := edtqtitem.Value * edtvlunitario.Value;
end;

procedure Tfrmdlglocacaodevolucao.edtvlunitarioPropertiesChange(Sender: TObject);
begin
  edtvltotal.Value := edtqtitem.Value * edtvlunitario.Value;
end;

procedure Tfrmdlglocacaodevolucao.edtvltotalPropertiesChange(Sender: TObject);
begin
  edtvlunitario.Value := edtvltotal.Value / edtqtitem.Value;
end;

procedure Tfrmdlglocacaodevolucao.btncancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
