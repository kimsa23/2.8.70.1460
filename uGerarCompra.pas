unit uGerarCompra;

interface

uses
  System.Actions, System.UITypes, data.db,
  forms, Variants, Buttons, StdCtrls, ComCtrls, Controls, Mask, Classes, ExtCtrls,
  Menus, dialogs, sysutils, Windows,
  sqlexpr,
  uregistro, ulocalizar, uconstantes, ulocalizarcliente,
  classeaplicacao, classeempresa, classeform, classeordcompra, classeproduto,
  cxLookAndFeelPainters, cxTextEdit, cxControls, cxContainer, cxEdit, cxMaskEdit,
  cxButtonEdit, cxButtons, cxGraphics, cxLookAndFeels, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckListBox, cxLabel, cxCalendar, dxCore,
  cxDateUtils;

type
  TfrmgerarCompra = class(TForm)
    lblCliente: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    btnok: TcxButton;
    btncancelar: TcxButton;
    edtcodigo: TcxTextEdit;
    cbxcdtpentrada: TcxLookupComboBox;
    cbxcdcfop: TcxLookupComboBox;
    lblproduto: TcxLabel;
    clb: TcxCheckListBox;
    edtdtemissao: TcxDateEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    cbxnudocfiscalicms: TcxLookupComboBox;
    lbl3: TLabel;
    edtnuchave: TcxTextEdit;
    lbl4: TLabel;
    edtnuserie: TcxTextEdit;
    procedure btnOkClick(Sender: TObject);
    procedure grdDblClick(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdtpentradaEnter(Sender: TObject);
    procedure cbxcdcfopExit(Sender: TObject);
    procedure cbxcdtpentradaExit(Sender: TObject);
  private   { Private declarations }
    cduf : integer;
    cdfornecedor: LargeInt;
    cdordcompra : Integer;
    procedure load_produto;
    function  getcditordcompra:string;
  public    { Public declarations }
  end;

var
  frmgerarCompra: TfrmgerarCompra;

function GerarCompra(cdordcompra: integer):boolean;

implementation

uses uMain, udatahora, ustrings, uDtmMain;

{$R *.DFM}

function GerarCompra(cdordcompra: integer):boolean;
begin
  result := false;
  frmGerarCompra := TfrmGerarCompra.Create(application);
  try
    frmGerarCompra.cdordcompra := cdordcompra;
    frmGerarCompra.Load_produto;
    frmGerarCompra.showmodal;
    if frmGerarCompra.ModalResult <> mrok then
    begin
      exit;
    end;
    frmmain.NovaCompra(frmGerarCompra.edtcodigo.Text,
                       cdordcompra,
                       frmGerarCompra.getcditordcompra,
                       frmGerarCompra.cbxcdtpentrada.EditValue,
                       frmGerarCompra.cbxcdcfop.EditValue,
                       frmGerarCompra.cbxnudocfiscalicms.EditValue,
                       frmGerarCompra.edtnuchave.Text,
                       frmgerarcompra.edtnuserie.Text, 
                       frmGerarCompra.edtdtemissao.Date);
    result := true;
  finally
    freeandnil(frmGerarCompra);
  end;
end;

procedure TfrmgerarCompra.btnOkClick(Sender: TObject);
var
  nucnpj : string;
begin
  if varisnull(cbxcdtpentrada.EditValue) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Documento]), mtinformation, [mbok], 0);
    cbxcdtpentrada.SetFocus;
    abort;
  end;
  if varisnull(cbxcdcfop.EditValue) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_CFOP]), mtinformation, [mbok], 0);
    cbxcdcfop.SetFocus;
    abort;
  end;
  if edtcodigo.Text='' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Nota_Fiscal]), mtinformation, [mbok], 0);
    edtcodigo.SetFocus;
    abort;
  end;
  if edtnuserie.Text='' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Numero+' '+__Serie]), mtinformation, [mbok], 0);
    edtnuserie.SetFocus;
    abort;
  end;
  if edtdtemissao.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+_de+' '+__Emissao]), mtinformation, [mbok], 0);
    edtdtemissao.SetFocus;
    abort;
  end;
  if varisnull(cbxnudocfiscalicms.EditValue) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Documento+' '+_Fiscal]), mtinformation, [mbok], 0);
    cbxnudocfiscalicms.SetFocus;
    abort;
  end;
  if ((cbxnudocfiscalicms.EditValue = _55) or (cbxnudocfiscalicms.EditValue = _57)) and (edtnuchave.Text = '') then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Chave]), mtinformation, [mbok], 0);
    edtnuchave.SetFocus;
    abort;
  end;
  if edtnuchave.Text <> '' then
  begin
    nucnpj       := qregistro.stringdocodigo(_fornecedor, cdfornecedor, _nucnpj);
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
    if removercaracteres(nucnpj) <> copy(edtnuchave.Text, 7, 14) then
    begin
      messagedlg('Número da Chave Eletrônica inválido.'#13'O CNPJ ('+removercaracteres(nucnpj)+') do emitente da nota não confere com a posição 7 até a 20 ('+copy(edtnuchave.Text, 7, 14)+').', mtinformation, [mbok], 0);
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

procedure TfrmgerarCompra.grdDblClick(Sender: TObject);
begin
  if btnok.enabled then btnOkClick(sender);
end;

procedure TfrmgerarCompra.load_produto;
var
  ordcompra : TOrdCompra;
  x, i : Integer;
begin
  ordcompra := TOrdCompra.create;
  try
    clb.Clear;
    i := 0;
    ordcompra.select(cdordcompra);
    ordcompra.ItOrdCompra.Ler('qtitem>qtatendida and cdordcompra='+inttostr(cdordcompra));
    for x := 0 to ordcompra.ItOrdCompra.Count - 1 do
    begin
      ordcompra.ItOrdCompra.Items[x].produto.Select(ordcompra.ItOrdCompra.Items[x].cdproduto);
      clb.Items.Add;
      clb.Items[i].Text    := FormatarTextoDireita(Copy(ordcompra.ItOrdCompra.Items[x].cddigitado, 1, 10), 10)+' - '+
                              FormatarTextoDireita(copy(ordcompra.ItOrdCompra.Items[x].produto.nmproduto, 1, 30), 30)+' - '+
                              floattostr(ordcompra.ItOrdCompra.Items[x].qtitem - ordcompra.ItOrdCompra.Items[x].qtatendida);
      clb.Items[i].Tag     := ordcompra.ItOrdCompra.Items[x].cditordcompra;
      clb.Items[i].Checked := True;
      Inc(i);
    end;
    cdfornecedor := ordcompra.cdfornecedor;
    cduf         := qregistro.inteirodocodigo(_fornecedor, cdfornecedor, _cduf);
  finally
    FreeAndNil(ordcompra);
  end;
end;

function TfrmgerarCompra.getcditordcompra: string;
var
  i : Integer;
begin
  for i := 0 to clb.Items.Count - 1 do
  begin
    if clb.Items[i].Checked then
    begin
      if result = '' then result := 'cditordcompra in ('
                     else result := result + ',';
      result := result + IntToStr(clb.Items[i].Tag);
    end;
  end;
  if result <> '' then
  begin
    result := result + ')';
  end;
end;

procedure TfrmgerarCompra.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext(sender as twincontrol, true, true);
  end;
  TQForm.KeyPressControl(key);
end;

procedure TfrmgerarCompra.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmgerarCompra.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmgerarCompra.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmgerarCompra.FormCreate(Sender: TObject);
begin
  cbxcdtpentrada.Properties.ListSource     := abrir_tabela(_tpentrada);
  cbxnudocfiscalicms.Properties.ListSource := abrir_tabela(_docfiscalicms);
  cbxcdcfop.Properties.ListSource          := abrir_tabela(_cfop);
end;

procedure TfrmgerarCompra.cbxcdtpentradaEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tpentrada);
end;

procedure TfrmgerarCompra.cbxcdcfopExit(Sender: TObject);
begin
  if varisnull(cbxcdcfop.EditValue) then
  begin
    colorexit(sender);
    Exit;
  end;
  if (cduf = empresa.endereco.cduf) and (Copy(cbxcdcfop.EditValue, 1, 1) <> _1) then
  begin
    messagedlg('Número de CFOP inválido!'#13'Fornecedor é da mesma unidade federativa da Empresa.'#13'Digite um número que comece com 1 ou 3 para continuar.', mtinformation, [mbok], 0);
    cbxcdcfop.SetFocus;
    Abort;
  end;
  if (cduf <> empresa.endereco.cduf) and (Copy(cbxcdcfop.EditValue, 1, 1) = _1) then
  begin
    messagedlg('Número de CFOP inválido!'#13'Fornecedor é de uma unidade federativa diferente da Empresa.'#13'Digite um número que comece com 2 ou 3 para continuar.', mtinformation, [mbok], 0);
    cbxcdcfop.SetFocus;
    Abort;
  end;
  colorexit(sender);
end;

procedure TfrmgerarCompra.cbxcdtpentradaExit(Sender: TObject);
var
  cdcfop : string;
begin
  if (not varisnull(cbxcdcfop.EditValue)) or (VarIsNull(cbxcdtpentrada.EditValue)) then
  begin
    colorexit(sender);
    Exit;
  end;
  if cduf <> empresa.endereco.cduf then cdcfop := NomedoCodigo(_tpentrada, cbxcdtpentrada.EditValue, _cdcfop+_f+_uf)
                                   else cdcfop := NomedoCodigo(_tpentrada, cbxcdtpentrada.EditValue, _cdcfop+_d+_uf);
  if cdcfop <> '' then
  begin
    cbxcdcfop.EditValue := cdcfop;
  end;
  colorexit(sender);
end;

end.
