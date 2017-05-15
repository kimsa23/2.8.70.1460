unit udlgtransferenciabancaria;

interface

uses
  System.Actions, System.UITypes,
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Menus, Buttons, ExtCtrls, Mask, dialogs, Variants,
  DB, sqlexpr,
  cxGroupBox, cxSpinEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc,
  ustrings, unumero, udatahora, ulocalizarcliente, ulocalizar,
  uconstantes, uregistro,
  classeregistrainformacao, classegerar, classeexecutasql, classeempresa,
  classeform, classeconta, classeretornasql, classemovbancario,
  cxLookAndFeelPainters, cxButtons, cxButtonEdit, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxClasses, cxLookAndFeels, cxPC, cxLabel, cxCalendar, dxCore,
  cxDateUtils, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ComCtrls;

type
  Tfrmdlgtransferenciabancaria = class(TForm)
    lblconta: TLabel;
    Label1: TLabel;
    lbldtemissao: TLabel;
    edtvalor: TcxCalcEdit;
    btnok: TcxButton;
    btncancelar: TcxButton;
    lblvlsaldo: TcxLabel;
    lblsaldo: TcxLabel;
    edtdtemissao: TcxDateEdit;
    cbxcdcontadestino: TcxLookupComboBox;
    cbxcdcontaorigem: TcxLookupComboBox;
    Label2: TLabel;
    edtdshistorico: TcxTextEdit;
    Label3: TLabel;
    procedure edtvalorExit(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure edtdtemissaoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbxcdcontaorigemPropertiesChange(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure cbxcdcontaorigemExit(Sender: TObject);
    procedure cbxcdcontadestinoExit(Sender: TObject);
    procedure cbxcdcontadestinoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private { Private declarations }
    sql : tstrings;
    cdconta: string;
    conta : TConta;
    vlsaldo : currency;
    movbancario : TMovBancario;
    procedure ConfigurarVlsaldo;
    procedure GerarSql;
    procedure LiberarBotaoOk;
  public { Public declarations }
  end;

var
  frmdlgtransferenciabancaria: Tfrmdlgtransferenciabancaria;

function TransferirBancaria(cdconta:string):boolean;

implementation

{$R *.dfm}

uses uDtmMain;

function TransferirBancaria(cdconta:string):boolean;
begin
  frmdlgtransferenciabancaria     := tfrmdlgtransferenciabancaria.create(nil);
  frmdlgtransferenciabancaria.sql := TStringList.Create;
  try
    frmdlgtransferenciabancaria.edtdtemissao.Date  := DtBanco;
    frmdlgtransferenciabancaria.cdconta            := cdconta;
    result := frmdlgtransferenciabancaria.ShowModal = mrok;
    if result then
    begin
      frmdlgtransferenciabancaria.GerarSql;
      result := ExecutaScript(frmdlgtransferenciabancaria.sql);
    end;
  finally
    freeandnil(frmdlgtransferenciabancaria.sql);
    freeandnil(frmdlgtransferenciabancaria);
  end;
end;

procedure Tfrmdlgtransferenciabancaria.GerarSql;
var
  cdcontaorigem, cdcontadestino, cdmovbancarioorigem, cdmovbancariodestino : string;
begin
  cdcontaorigem  := cbxcdcontaorigem.EditValue;
  cdcontadestino := cbxcdcontadestino.EditValue;
  cdmovbancarioorigem := gerarcodigo(_movbancario);
  sql.add('insert into movbancario'+
          '(dshistorico,vllancamento,vlpagamento,cdnatureza,boconciliado,cdmovbancario,cdmovimentacao,cdconta,cdcontadestino,dtemissao,'+_sqlreg+
          QuotedStr(edtDSHISTORICO.Text)+','+
          getcurrencys(edtvalor.Value)+','+
          getcurrencys(edtvalor.Value)+','+
          '''D'',''N'','+
          cdmovbancarioorigem+',11,'+
          cdcontaorigem+','+
          cdcontadestino+','+
          GetDtBanco(edtdtemissao.Date)+','+SQLRegistra);
  cdmovbancariodestino := gerarcodigo(_movbancario);
  sql.add('insert into movbancario'+
          '(dshistorico,vllancamento,vldeposito,cdnatureza,boconciliado,cdmovbancario,cdmovimentacao,cdconta,dtemissao,'+_sqlreg+
          QuotedStr(edtDSHISTORICO.Text)+','+
          getcurrencys(edtvalor.Value)+','+
          getcurrencys(edtvalor.Value)+','+
          '''C'',''N'','+
          cdmovbancariodestino+',12,'+
          cdcontadestino+','+
          GetDtBanco(edtdtemissao.Date)+','+SQLRegistra);
  sql.Add('update movbancario '+
          'set cdmovbancariodestino='+cdmovbancariodestino+' '+
          'where cdempresa='+empresa.cdempresa.tostring+' and cdmovbancario='+cdmovbancarioorigem);
end;

procedure Tfrmdlgtransferenciabancaria.LiberarBotaoOk;
begin
  btnok.Enabled := (edtvalor.Value > 0) and
                   (cbxcdcontadestino.text <> '') and
                   (cbxcdcontaorigem.text <> '') and
                   (edtdtemissao.Text <> '');
end;

procedure Tfrmdlgtransferenciabancaria.ConfigurarVlsaldo;
var
  cdconta : integer;
begin
  vlsaldo := 0;
  if not VarIsNull(cbxcdcontaorigem.EditValue) then
  begin
    cdconta := cbxcdcontaorigem.EditValue;
    if cdconta <> 0 then
    begin
      vlsaldo := conta.ValorSaldoData(edtdtemissao.Date+1, cdconta);
    end;
  end;
  lblvlsaldo.Caption := FormatarMoedaRs(vlsaldo);
end;

procedure Tfrmdlgtransferenciabancaria.edtvalorExit(Sender: TObject);
begin
  if edtvalor.Value < 0 then
  begin
    MessageDlg('Valor não pode ser negatvo.', mtInformation, [mbOK], 0);
    edtvalor.SetFocus;
    Abort;
  end;
  if (cbxcdcontaorigem.Text <> '') and conta.SeTipoContaEhCaixa(cbxcdcontaorigem.EditValue) and (edtvalor.Value > vlsaldo) then
  begin
    MessageDlg('Valor da transferência não pode ser maior do que o valor do saldo.', mtInformation, [mbOK], 0);
    edtvalor.SetFocus;
    Abort;
  end;
  LiberarBotaoOk;
  colorexit(sender);
end;

procedure Tfrmdlgtransferenciabancaria.FormCreate(Sender: TObject);
begin
  movbancario := tmovbancario.create;
  conta       := tconta.create;
end;

procedure Tfrmdlgtransferenciabancaria.FormDestroy(Sender: TObject);
begin
  freeandnil(conta);
  freeandnil(movbancario);
end;

procedure Tfrmdlgtransferenciabancaria.FormShow(Sender: TObject);
begin
  cbxcdcontaorigem.Properties.ListSource  := abrir_tabela(_conta);
  if cdconta <> '' then
  begin
    cbxcdcontaorigem.EditValue := cdconta;
  end;
end;

procedure Tfrmdlgtransferenciabancaria.btnokClick(Sender: TObject);
begin
  if cbxcdcontaorigem.Text = cbxcdcontadestino.Text then
  begin
    MessageDlg('Transferência deve ser em contas diferentes.', mtInformation, [mbOK], 0);
    Abort;
  end;
  modalresult := mrok;
end;

procedure Tfrmdlgtransferenciabancaria.cbxcdcontaorigemPropertiesChange(Sender: TObject);
begin
  ConfigurarVlsaldo;
end;

procedure Tfrmdlgtransferenciabancaria.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmdlgtransferenciabancaria.edtdtemissaoExit(Sender: TObject);
var
  cdconta : string;
begin
  if cbxcdcontaorigem.Text <> '' then
  begin
    cdconta := cbxcdcontaorigem.EditValue;
    if not movbancario.CaixaAberto(cdconta, edtdtemissao.Date) then
    begin
      MessageDlg('Caixa da conta de origem encontra-se fechado na data '+formatdatetime(_dd_mm_yyyy, edtdtemissao.Date)+'.', mtInformation, [mbOK], 0);
      edtdtemissao.SetFocus;
      Abort;
    end;
  end;
  if cbxcdcontadestino.Text <> '' then
  begin
    cdconta := cbxcdcontadestino.EditValue;
    if not movbancario.CaixaAberto(cdconta, edtdtemissao.Date) then
    begin
      MessageDlg('Caixa da conta de destino encontra-se fechado na data '+formatdatetime(_dd_mm_yyyy, edtdtemissao.Date)+'.', mtInformation, [mbOK], 0);
      edtdtemissao.SetFocus;
      Abort;
    end;
  end;
  colorexit(sender);
  LiberarBotaoOk;
  ConfigurarVlsaldo;
end;

procedure Tfrmdlgtransferenciabancaria.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmdlgtransferenciabancaria.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmdlgtransferenciabancaria.cbxcdcontaorigemExit(Sender: TObject);
var
  cdconta : string;
begin
  cdconta := '';
  if cbxcdcontaorigem.Text <> '' then
  begin
    cdconta := cbxcdcontaorigem.EditValue;
    if not movbancario.CaixaAberto(cdconta, edtdtemissao.Date) then
    begin
      MessageDlg('Caixa da conta de origem encontra-se fechado na data '+formatdatetime(_dd_mm_yyyy, edtdtemissao.Date)+'.', mtInformation, [mbOK], 0);
      cbxcdcontaorigem.SetFocus;
      Abort;
    end;
  end;
  LiberarBotaoOk;
  colorexit(sender);
end;

procedure Tfrmdlgtransferenciabancaria.cbxcdcontadestinoEnter(Sender: TObject);
begin
  if varisnull(cbxcdcontaorigem.editvalue) then
  begin
    cbxcdcontadestino.Properties.ListSource := abrir_tabela(_conta);
  end
  else
  begin
    cbxcdcontadestino.Properties.ListSource := abrir_tabela(_conta, cbxcdcontaorigem.editvalue, _cdconta, '<>', _destino);
  end;
  colorenter(sender);
end;

procedure Tfrmdlgtransferenciabancaria.cbxcdcontadestinoExit(Sender: TObject);
var
  cdconta : string;
begin
  if cbxcdcontadestino.Text <> '' then
  begin
    cdconta := cbxcdcontadestino.EditValue;
    if not movbancario.CaixaAberto(cdconta, edtdtemissao.Date) then
    begin
      MessageDlg('Caixa da conta destino encontra-se fechado na data '+formatdatetime(_dd_mm_yyyy, edtdtemissao.Date)+'.', mtInformation, [mbOK], 0);
      cbxcdcontadestino.SetFocus;
      Abort;
    end;
  end;
  LiberarBotaoOk;
  colorexit(sender);
end;

end.
