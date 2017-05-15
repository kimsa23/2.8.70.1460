unit uautpagtoparcelamento;

interface

uses
  System.Actions, System.UITypes,
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Menus, Buttons, ExtCtrls, Mask, Spin, dialogs,
  DB, Grids, DBGrids, sqlexpr, dbclient,
  ustrings, unumero, udatahora, ulocalizarfornecedor, ulocalizar,
  uconstantes, uregistro, uexportarexcel,
  classeentrada, classegerar, classeexecutasql, classeempresa,
  classeregistrainformacao, classeform,
  cxGroupBox, cxSpinEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc, cxLookAndFeelPainters, cxButtons, cxButtonEdit, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxLookAndFeels, cxCurrencyEdit, cxPC, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxNavigator,
  dxCore, cxDateUtils, ComCtrls, ClasseLocalizar, classeautpagto;

type
  TfrmdlgGerarParcelamentoAutpagto = class(TForm)
    dts: TDataSource;
    cds: TClientDataSet;
    cdsdtvencimento: TDateField;
    cdsvlautpagto: TCurrencyField;
    lblfornecedor: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Label9: TLabel;
    lblnmplconta: TLabel;
    Label4: TLabel;
    grd: TcxGrid;
    grdDBTableView1: TcxGridDBTableView;
    grdDBTableView1dtvencimento: TcxGridDBColumn;
    grdDBTableView1VLAUTPAGTO: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    edtnuplconta: TcxButtonEdit;
    edtdshistorico: TcxTextEdit;
    edtdiavencimento: TcxSpinEdit;
    edtnuparcela: TcxSpinEdit;
    edtvlparcela: TcxCalcEdit;
    edtvltotal: TcxCalcEdit;
    btngerar: TcxButton;
    btnok: TcxButton;
    btncancelar: TcxButton;
    cbxcdtpcobranca: TcxLookupComboBox;
    edtdtinicio: TcxDateEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    edtnuparcelainicial: TcxSpinEdit;
    lbl3: TLabel;
    edtnudias: TcxSpinEdit;
    cbxcdcntcusto: TcxLookupComboBox;
    grdDBTableView1CDTPCOBRANCA: TcxGridDBColumn;
    grdDBTableView1CDPLCONTA: TcxGridDBColumn;
    grdDBTableView1DSHISTORICO: TcxGridDBColumn;
    grdDBTableView1NUAUTPAGTO: TcxGridDBColumn;
    grdDBTableView1CDCNTCUSTO: TcxGridDBColumn;
    edtdtemissao: TcxDateEdit;
    lbldtemissao: TLabel;
    grdDBTableView1DTEMISSAO: TcxGridDBColumn;
    grdDBTableView1CDFORNECEDOR: TcxGridDBColumn;
    grdDBTableView1NMFORNECEDOR: TcxGridDBColumn;
    cdsNUAUTPAGTO: TStringField;
    cdsDTEMISSAO: TDateField;
    cdsCDCNTCUSTO: TIntegerField;
    cdsCDPLCONTA: TIntegerField;
    cdsCDTPCOBRANCA: TIntegerField;
    cdsDSHISTORICO: TStringField;
    cdsCDFORNECEDOR: TFMTBCDField;
    edtcdfornecedor: TcxButtonEdit;
    lblnmfornecedor: TLabel;
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure btngerarClick(Sender: TObject);
    procedure edtvlparcelaExit(Sender: TObject);
    procedure edtvltotalExit(Sender: TObject);
    procedure edtnuparcelaExit(Sender: TObject);
    procedure edtnuplcontaExit(Sender: TObject);
    procedure edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnokClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdtpcobrancaEnter(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cbxcdcntcustoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cbxcdtpcobrancaPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtdshistoricoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtnuplcontaPropertiesChange(Sender: TObject);
    procedure edtdtemissaoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure grdDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsdtvencimentoValidate(Sender: TField);
    procedure cdsDTEMISSAOValidate(Sender: TField);
    procedure edtcdfornecedorExit(Sender: TObject);
    procedure edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private { Private declarations }
    sql : tstrings;
    nuentrada, cdentrada : integer;
    function  gerar_sql:integer;
    procedure setform;
    //procedure set_configuracao_fornecedor(cdfornecedor:string);
    procedure inserir_dados(i: Integer);
    procedure acrescentar_mes(var mes, ano: integer);
    function nuautpagto: string;
  public { Public declarations }
  end;

var
  frmdlgGerarParcelamentoAutpagto: TfrmdlgGerarParcelamentoAutpagto;

function gerarparcelamentoautpagto(cdentrada:integer=0):integer;

implementation

uses uDtmMain, Variants, Math;

{$R *.dfm}

function gerarparcelamentoautpagto(cdentrada:integer=0):integer;
var
  cdautpagto : integer;
begin
  result := 0;
  frmdlgGerarParcelamentoautpagto := tfrmdlgGerarParcelamentoautpagto.create(nil);
  try
    frmdlgGerarParcelamentoautpagto.cdentrada         := cdentrada;
    frmdlgGerarParcelamentoautpagto.edtdtinicio.Date  := DtBanco;
    frmdlgGerarParcelamentoautpagto.edtdtemissao.Date := frmdlgGerarParcelamentoautpagto.edtdtinicio.Date;
    frmdlgGerarParcelamentoautpagto.setform;
    frmdlgGerarParcelamentoautpagto.sql       := tstringlist.create;
    frmdlgGerarParcelamentoautpagto.cds.Open;
    if frmdlgGerarParcelamentoautpagto.ShowModal = mrok then
    begin
      cdautpagto := frmdlgGerarParcelamentoautpagto.gerar_sql;
      if ExecutaScript(frmdlgGerarParcelamentoautpagto.sql) then
      begin
        result := cdautpagto;
      end;
    end;
  finally
    freeandnil(frmdlgGerarParcelamentoautpagto.sql);
    freeandnil(frmdlgGerarParcelamentoautpagto);
  end;
end;

procedure TfrmdlgGerarParcelamentoAutpagto.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmdlgGerarParcelamentoAutpagto.inserir_dados(i:Integer);
begin
  if nuentrada = 0 then
  begin
    cdsNUAUTPAGTO.AsString := IntToStr(i)+'/'+inttostr(edtnuparcela.Value)
  end
  else
  begin
    cdsNUAUTPAGTO.AsString := inttostr(nuentrada)+'/'+char(i+64);
  end;
  cdsDTEMISSAO.AsDateTime   := edtdtemissao.Date;
  if cbxcdcntcusto.EditValue   <> 0 then
  begin
    cdsCDCNTCUSTO.AsInteger   := cbxcdcntcusto.EditValue;
  end;
  if cbxcdtpcobranca.EditValue <> 0 then
  begin
    cdsCDTPCOBRANCA.AsInteger := cbxcdtpcobranca.EditValue;
  end;
  cds.FieldByName(_CDFORNECEDOR).AsString  := edtcdfornecedor.Text;
  cdsCDPLCONTA.AsString     := CodigodoCampo(_plconta, edtnuplconta.Text, _nunivel);
  cdsDSHISTORICO.AsString   := edtdshistorico.Text;
end;

procedure TfrmdlgGerarParcelamentoAutpagto.acrescentar_mes(var mes: integer; var ano: integer);
begin
  inc(mes);
  if mes > 12 then
  begin
    mes := 1;
    inc(ano);
  end;
end;

procedure TfrmdlgGerarParcelamentoAutpagto.btngerarClick(Sender: TObject);
var
  i : integer;
  mes : integer;
  ano : integer;
  dia_i, dia : integer;
  data : TDate;
  vlparcela, vltotal : currency;
begin
  if empresa.financeiro.boplconta and (edtnuplconta.Text = '') and (cdentrada = 0) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Plano_de_contas]), mtinformation, [mbok], 0);
    edtnuplconta.SetFocus;
    Abort;
  end;
  if (edtcdfornecedor.Text = '') and (cdentrada = 0) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Fornecedor]), mtinformation, [mbok], 0);
    edtnuplconta.SetFocus;
    Abort;
  end;
  if empresa.financeiro.bocntcusto and (cbxcdcntcusto.EditValue = 0) and (cdentrada = 0) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Centro_de_Custo]), mtinformation, [mbok], 0);
    cbxcdcntcusto.SetFocus;
    Abort;
  end;
  if edtdtinicio.Date < edtdtemissao.Date then
  begin
    MessageDlg('Data de início não pode ser menor do que a data de emissão.', mtInformation, [mbOK], 0);
    edtdtinicio.SetFocus;
    Abort;
  end;
  vltotal   := 0;
  vlparcela := RoundTo(edtvltotal.Value / (edtnuparcela.Value - edtnuparcelainicial.Value + 1), -2);

  data  := edtdtinicio.Date;
  mes   := strtoint(FormatDateTime(_mm  , data));
  ano   := strtoint(formatdatetime(_yyyy, data));
  dia   := strtoint(formatdatetime(_dd, data));
  dia_i := edtdiavencimento.Value;
  if edtnudias.Value > 0 then
  begin
    // determinar o mes e ano inicial
    if dia > edtdiavencimento.Value then
    begin
      acrescentar_mes(mes, ano)
    end
    else if dia > strtoint(formatdatetime(_dd, Ultimo_Dia_Mes(data))) then
    begin
      acrescentar_mes(mes, ano);
    end;
    // gerar registro no client dataset
    cds.EmptyDataSet;
    for i := edtnuparcelainicial.Value to edtnuparcela.Value do
    begin
      cds.Append;
      data := data + edtnudias.Value;
      cds.fieldbyname(_dtvencimento).AsDateTime := data;
      if i < edtnuparcela.Value then
      else
      begin
        if vltotal < edtvltotal.Value then
        begin
          vlparcela := edtvltotal.Value - vltotal;
        end;
      end;
      cds.fieldbyname(_vlautpagto).AsCurrency  := vlparcela;
      inserir_dados(i);
      cds.Post;
      acrescentar_mes(mes, ano);
      vltotal := vltotal + vlparcela;
    end;
  end
  else
  begin
    // determinar o mes e ano inicial
    if dia > edtdiavencimento.Value then
    begin
      acrescentar_mes(mes, ano)
    end
    else if dia > strtoint(formatdatetime(_dd, Ultimo_Dia_Mes(data))) then
    begin
      dia_i := 1;
      acrescentar_mes(mes, ano);
    end;
    // gerar registro no client dataset
    cds.EmptyDataSet;
    for i := edtnuparcelainicial.Value to edtnuparcela.Value do
    begin
      cds.Append;
      if dia_i > strtoint(formatdatetime(_dd, Ultimo_Dia_Mes(strtodate(_0+_1+'/'+inttostr(mes)+'/'+inttostr(ano))))) then
      begin
        dia_i := dia_i - 1;
      end;
      if dia_i > strtoint(formatdatetime(_dd, Ultimo_Dia_Mes(strtodate(_0+_1+'/'+inttostr(mes)+'/'+inttostr(ano))))) then
      begin
        dia_i := dia_i - 1;
      end;
      if dia_i > strtoint(formatdatetime(_dd, Ultimo_Dia_Mes(strtodate(_0+_1+'/'+inttostr(mes)+'/'+inttostr(ano))))) then
      begin
        dia_i := dia_i - 1;
      end;
      if dia_i > strtoint(formatdatetime(_dd, Ultimo_Dia_Mes(strtodate(_0+_1+'/'+inttostr(mes)+'/'+inttostr(ano))))) then
      begin
        dia_i := dia_i - 1;
      end;
      cds.fieldbyname(_dtvencimento).AsDateTime := strtodate(inttostr(dia_i)+'/'+inttostr(mes)+'/'+inttostr(ano));
      if i < edtnuparcela.Value then
      else
      begin
        if vltotal < edtvltotal.Value then
        begin
          vlparcela := edtvltotal.Value - vltotal;
        end;
      end;
      //if (i < edtnuparcela.Value) and (vltotal < edtvltotal.Value) then
      //begin
        //vlparcela := edtvltotal.Value - vltotal;
      //end;
      cds.fieldbyname(_vlautpagto).AsCurrency  := vlparcela;
      inserir_dados(i);
      cds.Post;
      acrescentar_mes(mes, ano);
      dia_i := edtdiavencimento.Value;
      vltotal := vltotal + vlparcela;
    end;
  end;
  cds.First;
end;

function TfrmdlgGerarParcelamentoAutpagto.nuautpagto:string;
begin
  result := IntToStr(cds.RecNo)+'/'+inttostr(cds.RecordCount);
end;

function TfrmdlgGerarParcelamentoAutpagto.gerar_sql:integer;
var
  sqlregistras: string;
  cdautpagto : integer;
  autpagto : tautpagto;
begin
  if cdentrada <> 0 then
  begin
    sql.add('delete from autpagto where cdempresa='+empresa.cdempresa.ToString+' and cdentrada='+inttostr(cdentrada)+';');
  end;
  sqlregistras := SQLRegistra;
  cds.First;
  while not cds.Eof do
  begin
    cdautpagto := qgerar.GerarCodigo(_autpagto);
    if cds.RecNo = 1 then
    begin
      result := cdautpagto;
    end;
    autpagto := tautpagto.create;
    try
      autpagto.cdautpagto   := cdautpagto;
      autpagto.cdentrada    := cdentrada;
      autpagto.cdfornecedor := cds.FieldByName(_CDFORNECEDOR).AsLargeInt;
      autpagto.cdtpcobranca := cds.FieldByName(_CDtpcobranca).AsInteger;
      autpagto.cdplconta    := cds.FieldByName(_cdplconta).AsInteger;
      autpagto.nuplconta    := qregistro.StringdoCodigo(_plconta, cds.FieldByName(_cdplconta).AsInteger, _nunivel);
      autpagto.cdcntcusto   := cds.FieldByName(_cdcntcusto).AsInteger;
      autpagto.nucntcusto   := qregistro.StringdoCodigo(_cntcusto, cds.FieldByName(_cdcntcusto).AsInteger, _nunivel);
      autpagto.nuautpagto   := nuautpagto;
      autpagto.dtemissao    := cdsDTEMISSAO.AsDateTime;
      autpagto.dtentrada    := cdsDTEMISSAO.AsDateTime;
      autpagto.dtvencimento := cdsdtvencimento.asdatetime;
      autpagto.dtprorrogacao:= cdsdtvencimento.asdatetime;
      autpagto.vlautpagto   := cdsvlautpagto.AsCurrency;
      autpagto.dshistorico  := cdsDSHISTORICO.AsString;
      autpagto.vlsaldo      := cdsvlautpagto.AsCurrency;
      sql.add(autpagto.insert(true));
    finally
      freeandnil(autpagto);
    end;
    cds.Next;
  end;
  sql.Add('commit work;');
end;

procedure TfrmdlgGerarParcelamentoAutpagto.edtvlparcelaExit(Sender: TObject);
begin
  edtvltotal.Value := edtvlparcela.Value * (edtnuparcela.Value - edtnuparcelainicial.Value + 1);
  colorexit(sender);
end;

procedure TfrmdlgGerarParcelamentoAutpagto.edtvltotalExit(Sender: TObject);
begin
  if edtnuparcela.Value = 0 then
  begin
    edtvlparcela.Value := 0
  end
  else
  begin
    edtvlparcela.Value := edtvltotal.Value / (edtnuparcela.Value - edtnuparcelainicial.Value + 1);
  end;
  colorexit(Sender);
end;

procedure TfrmdlgGerarParcelamentoAutpagto.edtnuparcelaExit(Sender: TObject);
begin
  if edtnuparcela.Value = 0 then
  begin
    edtnuparcela.Value := 1;
  end;
  if edtvlparcela.Enabled then
  begin
    edtvltotal.Value   := edtvlparcela.Value * (edtnuparcela.Value - edtnuparcelainicial.Value + 1)
  end
  else
  begin
    edtvlparcela.Value := edtvltotal.Value / (edtnuparcela.Value - edtnuparcelainicial.Value + 1);
  end;
  colorexit(sender);
end;

procedure TfrmdlgGerarParcelamentoAutpagto.edtnuplcontaExit(Sender: TObject);
begin
  if tedit(sender).text = '' then
  begin
    lblnmplconta.Caption := '';
    colorexit(sender);
    exit;
  end;
  if not CodigoExiste(_plconta, _nunivel, _string, tedit(sender).text) then
  begin
    messagedlg('Código '+tedit(sender).text+' inexistente na tabela Plano de Contas.', mterror, [mbok], 0);
    tedit(sender).setfocus;
    abort;
  end;
  lblnmplconta.Caption := NomedoCodigo(_plconta, CodigodoCampo(_plconta, edtnuplconta.text, _nunivel));
  colorexit(sender);
end;

procedure TfrmdlgGerarParcelamentoAutpagto.edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  TQForm.btnfindclick(TEdit(edtnuplconta), lblnmplconta);
end;

procedure TfrmdlgGerarParcelamentoAutpagto.edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnuplcontaPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmdlgGerarParcelamentoAutpagto.btnokClick(Sender: TObject);
begin
  if cds.State <> dsbrowse then
  begin
    cds.Post;
  end;
  if cdentrada = 0 then
  begin
    if empresa.financeiro.boplconta then
    begin
      if edtnuplconta.Text = '' then
      begin
        messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Plano_de_Contas]), mtinformation, [mbok], 0);
        edtnuplconta.SetFocus;
        Abort;
      end;
      cds.DisableControls;
      try
        cds.First;
        while not cds.Eof do
        begin
          if cdsCDPLCONTA.IsNull then
          begin
            cds.EnableControls;
            messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Plano_de_Contas]), mtinformation, [mbok], 0);
            cds.EnableControls;
            cdsCDPLCONTA.FocusControl;
            Abort;
          end;
          cds.Next;
        end;
      finally
        cds.EnableControls;
      end;
    end;

    if empresa.financeiro.bocntcusto then
    begin
      if cbxcdcntcusto.EditValue = 0 then
      begin
        messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Centro_de_Custo]), mtinformation, [mbok], 0);
        cbxcdcntcusto.SetFocus;
        Abort;
      end;
      cds.DisableControls;
      try
        cds.First;
        while not cds.Eof do
        begin
          if cdsCDCNTCUSTO.IsNull then
          begin
            cds.EnableControls;
            messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Centro_de_Custo]), mtinformation, [mbok], 0);
            cds.EnableControls;
            cdsCDCNTCUSTO.FocusControl;
            Abort;
          end;
          cds.Next;
        end;
      finally
        cds.EnableControls;
      end;
    end;
  end;
  modalresult := mrok;
end;

procedure TfrmdlgGerarParcelamentoAutpagto.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmdlgGerarParcelamentoAutpagto.setform;
var
  entrada : tentrada;
begin
  if cdentrada = 0 then
  begin
    exit;
  end;
  entrada := tentrada.create;
  try
    entrada.cdentrada := cdentrada;
    if not entrada.select(cdentrada) then
    begin
      exit;
    end;
    nuentrada                 := entrada.nuentrada;
    edtcdfornecedor.Text      := entrada.cdfornecedor.ToString;
    edtvltotal.Value          := entrada.vltotal;
    edtvlparcela.Value        := entrada.vltotal;
    edtdshistorico.Text       := entrada.dshistorico;
    if entrada.nuplconta <> '' then
    begin
      edtnuplconta.Text         := entrada.nuplconta;
      edtnuplcontaExit(edtnuplconta);
    end;
    edtdtemissao.Date         := entrada.dtemissao;
    edtdtemissao.Enabled      := False;
    edtdtinicio.Date          := entrada.dtemissao;
    edtdtinicio.Enabled       := true;
    grdDBTableView1DTEMISSAO.Options.Editing := False;
    if entrada.cdtpcobranca <> 0 then
    begin
      cbxcdtpcobranca.EditValue := entrada.cdtpcobranca;
    end;
    if entrada.cdcntcusto   <> 0 then
    begin
      cbxcdcntcusto.EditValue   := entrada.cdcntcusto;
    end;
    grdDBTableView1CDFORNECEDOR.Options.Editing := False;
    grdDBTableView1NMFORNECEDOR.Options.Editing := False;
    edtcdfornecedor.Enabled   := false;
    edtvltotal.Enabled        := false;
    edtvlparcela.Enabled      := false;
  finally
    freeandnil(entrada);
  end;
end;

procedure TfrmdlgGerarParcelamentoAutpagto.FormCreate(Sender: TObject);
begin
  cbxcdtpcobranca.Properties.ListSource := abrir_tabela(_tpcobranca);
  cbxcdcntcusto.Properties.ListSource   := abrir_tabela(_cntcusto);
  TcxLookupComboBoxProperties(grdDBTableView1cdtpcobranca.Properties).ListSource := abrir_tabela(_tpcobranca);
  TcxLookupComboBoxProperties(grdDBTableView1cdcntcusto.Properties).ListSource   := abrir_tabela(_cntcusto);
  TcxLookupComboBoxProperties(grdDBTableView1cdplconta.Properties).ListSource    := abrir_tabela(_plconta);
end;

procedure TfrmdlgGerarParcelamentoAutpagto.cbxcdtpcobrancaEnter(Sender: TObject);
begin
  abrir_tabela(_tpcobranca);
  colorenter(sender);
end;

procedure TfrmdlgGerarParcelamentoAutpagto.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmdlgGerarParcelamentoAutpagto.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

{
procedure TfrmdlgGerarParcelamentoAutpagto.set_configuracao_fornecedor(cdfornecedor: string);
var
  cdcntcusto, nuplconta: string;
begin
  nuplconta := NomedoCodigo(_fornecedor, cdfornecedor, _nuplconta);
  if nuplconta <> '' then
  begin
    edtnuplconta.Text := nuplconta;
    edtnuplcontaExit(edtnuplconta);
  end;
  cdcntcusto := NomedoCodigo(_fornecedor, cdfornecedor, _cdcntcusto);
  if cdcntcusto <> '' then
  begin
    cbxcdcntcusto.EditValue := cdcntcusto;
  end;
end;
}

procedure TfrmdlgGerarParcelamentoAutpagto.cdsNewRecord(DataSet: TDataSet);
begin
  cdsvlautpagto.AsCurrency := edtvlparcela.Value;
  if cbxcdcntcusto.EditValue   <> 0 then
  begin
    cdsCDCNTCUSTO.AsString   := cbxcdcntcusto.EditValue;
  end;
  if cbxcdtpcobranca.EditValue <> 0 then
  begin
    cdsCDTPCOBRANCA.AsString := cbxcdtpcobranca.EditValue;
  end;
  cds.FieldByName(_CDFORNECEDOR).AsString := edtcdfornecedor.Text;
  cdsCDPLCONTA.AsString    := CodigodoCampo(_plconta, edtnuplconta.Text, _nunivel);
  cdsDTEMISSAO.AsDateTime  := edtdtemissao.Date;
  cdsDSHISTORICO.AsString  := edtdshistorico.Text;
end;

procedure TfrmdlgGerarParcelamentoAutpagto.cbxcdcntcustoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  cds.AfterPost := nil;
  cds.First;
  while not cds.Eof do
  begin
    cds.Edit;
    cdsCDCNTCUSTO.AsString := cbxcdcntcusto.EditValue;
    cds.Post;
    cds.Next;
  end;
end;

procedure TfrmdlgGerarParcelamentoAutpagto.cbxcdtpcobrancaPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  cds.AfterPost := nil;
  cds.First;
  while not cds.Eof do
  begin
    cds.Edit;
    cdsCDTPCOBRANCA.AsString := cbxcdtpcobranca.EditValue;
    cds.Post;
    cds.Next;
  end;
end;

procedure TfrmdlgGerarParcelamentoAutpagto.edtcdfornecedorExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _fornecedor, _fornecedor);
  colorexit(sender);
end;

procedure TfrmdlgGerarParcelamentoAutpagto.edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfornecedorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmdlgGerarParcelamentoAutpagto.edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdfornecedorPropertiesButtonClick(edtcdfornecedor, lblnmfornecedor);
end;

procedure TfrmdlgGerarParcelamentoAutpagto.edtdshistoricoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  cds.AfterPost := nil;
  cds.First;
  while not cds.Eof do
  begin
    cds.Edit;
    cdsdshistorico.AsString := edtdshistorico.Text;
    cds.Post;
    cds.Next;
  end;
end;

procedure TfrmdlgGerarParcelamentoAutpagto.edtnuplcontaPropertiesChange(Sender: TObject);
begin
  cds.AfterPost := nil;
  cds.First;
  while not cds.Eof do
  begin
    cds.Edit;
    cdsCDPLCONTA.AsString := CodigodoCampo(_plconta, edtnuplconta.Text, _nunivel);
    cds.Post;
    cds.Next;
  end;
end;

procedure TfrmdlgGerarParcelamentoAutpagto.edtdtemissaoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  cds.AfterPost := nil;
  cds.First;
  while not cds.Eof do
  begin
    cds.Edit;
    cdsDTEMISSAO.AsDateTime := edtdtemissao.Date;
    cds.Post;
    cds.Next;
  end;
end;

procedure TfrmdlgGerarParcelamentoAutpagto.grdDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmdlgGerarParcelamentoAutpagto.cdsdtvencimentoValidate(Sender: TField);
begin
  if (cdsdtvencimento.AsDateTime < cdsDTEMISSAO.AsDateTime) then
  begin
    MessageDlg('Data de vencimento não pode ser menor do que a data de emissão.', mtInformation, [mbOK], 0);
    sender.FocusControl;
    Abort;
  end;
end;

procedure TfrmdlgGerarParcelamentoAutpagto.cdsDTEMISSAOValidate(Sender: TField);
begin
  if cdsdtvencimento.IsNull then
  begin
    exit;
  end;
  if (cdsdtvencimento.AsDateTime < cdsDTEMISSAO.AsDateTime) then
  begin
    MessageDlg('Data de emissão não pode ser maior do que a data de vencimento.', mtInformation, [mbOK], 0);
    sender.FocusControl;
    Abort;
  end;
end;

end.
