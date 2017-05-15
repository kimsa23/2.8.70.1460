unit ugerarDevolucao;

interface

uses
  System.Actions, System.UITypes,
  forms, Buttons, StdCtrls, ComCtrls, Controls, Grids,
  Variants, sqlexpr, Windows,  
  Mask, Classes, ExtCtrls, dialogs, sysutils,
  ustrings, uregistro, uconstantes,
  classeform, classeempresa, 
  cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Menus,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, dxCore, cxDateUtils;

type
  TfrmGerarDevolucao = class(TForm)
    lblCliente: TLabel;
    cbxcdtpentrada: TcxLookupComboBox;
    cbxcdcfop: TcxLookupComboBox;
    Label7: TLabel;
    btncancelar: TcxButton;
    btnok: TcxButton;
    Label1: TLabel;
    edtcodigo: TcxTextEdit;
    lbl4: TLabel;
    edtnuserie: TcxTextEdit;
    lbl1: TLabel;
    edtdtemissao: TcxDateEdit;
    lbl2: TLabel;
    cbxnudocfiscalicms: TcxLookupComboBox;
    lbl3: TLabel;
    edtnuchave: TcxTextEdit;
    procedure btnOkClick(Sender: TObject);
    procedure grdDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdtpentradaEnter(Sender: TObject);
    procedure cbxcdtpentradaExit(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnuserieKeyPress(Sender: TObject; var Key: Char);
  private   { Private declarations }
    cduf : integer;
  public    { Public declarations }
  end;

var
  frmGerarDevolucao: TfrmGerarDevolucao;

function Gerar_devolucao_simples(cduf:integer; var cdtpentrada:integer; var cdcfop:integer; var nuentrada:Integer; var nuserie:string; var nudocfiscalicms:string; var nuchavenfe:string; var dtemissao : TDate):boolean;

implementation

uses uDtmMain;

{$R *.DFM}

function Gerar_devolucao_simples(cduf:integer; var cdtpentrada:integer; var cdcfop:integer; var nuentrada:Integer; var nuserie:string; var nudocfiscalicms:string; var nuchavenfe:string; var dtemissao : TDate):boolean;
begin
  result := False;
  frmGerarDevolucao := TfrmGerarDevolucao.Create(nil);
  try
    frmGerarDevolucao.cduf := cduf;
    if frmGerarDevolucao.ShowModal = mrok then
    begin
      cdtpentrada     := frmGerarDevolucao.cbxcdtpentrada.EditValue;
      cdcfop          := frmGerarDevolucao.cbxcdcfop.EditValue;
      nuentrada       := strtoint(frmGerarDevolucao.edtcodigo.Text);
      nuserie         := frmGerarDevolucao.edtnuserie.Text;
      nuchavenfe      := frmGerarDevolucao.edtnuchave.Text;
      nudocfiscalicms := frmGerarDevolucao.cbxnudocfiscalicms.Text;
      dtemissao       := frmGerarDevolucao.edtdtemissao.Date;
      result := True;
    end;
  finally
    FreeAndNil(frmGerarDevolucao);
  end;
end;

procedure TfrmGerarDevolucao.btnOkClick(Sender: TObject);
begin
  if varisnull(cbxcdtpentrada.EditValue) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Documento]), mtinformation, [mbok], 0);
    cbxcdtpentrada.SetFocus;
    abort;
  end;
  if cbxcdcfop.Text='' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_CFOP]), mtinformation, [mbok], 0);
    cbxcdcfop.SetFocus;
    exit;
  end;
  if edtcodigo.Text='' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Nota_Fiscal]), mtinformation, [mbok], 0);
    edtcodigo.SetFocus;
    abort;
  end;
  if edtnuserie.Text='' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Serie]), mtinformation, [mbok], 0);
    edtnuserie.SetFocus;
    abort;
  end;
  if edtdtemissao.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+_de+' '+__emissao]), mtinformation, [mbok], 0);
    edtdtemissao.SetFocus;
    abort;
  end;
  if varisnull(cbxnudocfiscalicms.EditValue) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Documento+' '+_Fiscal]), mtinformation, [mbok], 0);
    cbxnudocfiscalicms.SetFocus;
    abort;
  end;
  if ((cbxnudocfiscalicms.EditValue = 55) or (cbxnudocfiscalicms.EditValue = 57)) and (edtnuchave.Text = '') then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Chave]), mtinformation, [mbok], 0);
    edtnuchave.SetFocus;
    abort;
  end;
  if edtnuchave.Text <> '' then
  begin
    if inttostr(cduf) <> copy(edtnuchave.Text, 1, 2) then
    begin
      messagedlg('Número da Chave Eletrônica inválido.'#13+
                 'O código da unidade federativa do emitente ('+inttostr(cduf)+') não confere com a posição 1 e 2 ('+Copy(edtnuchave.Text, 1, 2)+').', mtinformation, [mbok], 0);
      edtnuchave.SetFocus;
      abort;
    end;
    if formatdatetime(_yymm, edtdtemissao.Date) <> copy(edtnuchave.Text, 3, 4) then
    begin
      messagedlg('Número da Chave Eletrônica inválido.'#13'O ano e mês da data de emissão ('+formatdatetime(_yymm, edtdtemissao.Date)+') da nota não confere com a posição 3 até a 6 ('+copy(edtnuchave.Text, 3, 4)+').', mtinformation, [mbok], 0);
      edtnuchave.SetFocus;
      abort;
    end;
    if cbxnudocfiscalicms.EditValue <> copy(edtnuchave.Text, 21, 2) then
    begin
      messagedlg('Número da Chave Eletrônica inválido.'#13'O modelo ('+cbxnudocfiscalicms.EditValue+') da nota não confere com a posição 21 e 22 ('+copy(edtnuchave.Text, 21, 2)+').', mtinformation, [mbok], 0);
      edtnuchave.SetFocus;
      abort;
    end;
    if FormatarTextoEsquerda(edtnuserie.Text, 3, _0) <> copy(edtnuchave.Text, 23, 3) then
    begin
      messagedlg('Número da Chave Eletrônica inválido.'#13'A série ('+FormatarTextoEsquerda(edtnuserie.Text, 3, _0)+') da nota não confere com a posição 23 até a 25 ('+copy(edtnuchave.Text, 23, 3)+').', mtinformation, [mbok], 0);
      edtnuchave.SetFocus;
      abort;
    end;
    if FormatarTextoEsquerda(edtcodigo.Text, 9,_0) <> copy(edtnuchave.Text, 26, 9) then
    begin
      messagedlg('Número da Chave Eletrônica inválido.'#13'O número ('+FormatarTextoEsquerda(edtcodigo.Text, 9,_0)+') da nota não confere com a posição 26 até a 34 ('+copy(edtnuchave.Text, 26, 9)+').', mtinformation, [mbok], 0);
      edtnuchave.SetFocus;
      abort;
    end;
  end;
  modalresult := mrok;
end;

procedure TfrmGerarDevolucao.grdDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmGerarDevolucao.FormCreate(Sender: TObject);
begin
  cbxcdtpentrada.Properties.ListSource     := abrir_tabela(_tpentrada);
  cbxcdcfop.Properties.ListSource          := abrir_tabela(_cfop);
  cbxnudocfiscalicms.Properties.ListSource := abrir_tabela(_docfiscalicms);
end;

procedure TfrmGerarDevolucao.cbxcdtpentradaEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tpentrada);
end;

procedure TfrmGerarDevolucao.cbxcdtpentradaExit(Sender: TObject);
var
  cdcfop : string;
begin
  if (not varisnull(cbxcdcfop.EditValue)) or (VarIsNull(cbxcdtpentrada.EditValue)) then
  begin
    colorexit(sender);
    Exit;
  end;
  if cduf <> empresa.endereco.cduf then
  begin
    cdcfop := NomedoCodigo(_tpentrada, cbxcdtpentrada.EditValue, _cdcfopfuf)
  end
  else
  begin
    cdcfop := NomedoCodigo(_tpentrada, cbxcdtpentrada.EditValue, _cdcfopduf);
  end;
  if cdcfop <> '' then
  begin
    cbxcdcfop.EditValue := cdcfop;
  end;
end;

procedure TfrmGerarDevolucao.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmGerarDevolucao.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmGerarDevolucao.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmGerarDevolucao.edtnuserieKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext(sender as twincontrol, true, true);
  end;
  TQForm.KeyPressControl(key);
end;

end.
