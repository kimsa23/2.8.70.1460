unit uconta;

interface

uses
  System.Actions, System.UITypes, Winapi.Messages,
  forms, Classes, ActnList, StdCtrls, Controls, ToolWin, dialogs, graphics,
  sysutils, Mask, Buttons, ExtCtrls, ComCtrls, Menus,
  Grids, DBGrids, sqlexpr, FMTBcd, DBClient, Provider, DB,
  uprotector, ustrings, uRotinas, udatahora, uregistro, uconstantes,
  classegerar, classeempresa, classeRegistro, classeusuario, classeform, classeconta,
  classerelatorio,
  cxPC, cxControls, cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, dxBar,
  cxClasses, cxGraphics, cxLookAndFeels, cxLabel, cxMemo, cxDBEdit, cxRadioGroup,
  cxCheckBox, cxDropDownEdit, cxCalendar, cxMaskEdit, cxButtonEdit, cxTextEdit,
  cxCalc, cxDBLabel, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxBlobEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxGridCustomView, cxGrid, cxNavigator, cxColorComboBox, cxDBColorComboBox,
  dxBarBuiltInMenu, cxSpinEdit;

type
  TfrmConta = class(TForm)
    act: TActionList;
    actNovo: TAction;
    actAbrir: TAction;
    actSalvar: TAction;
    actExcluir: TAction;
    actCancelar: TAction;
    actEditar: TAction;
    actPrimeiro: TAction;
    actAnterior: TAction;
    actProximo: TAction;
    actUltimo: TAction;
    actfechar: TAction;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrManager1Bar1: TdxBar;
    dxbrsbtmRegistro: TdxBarSubItem;
    dxbrlrgbtnNovo: TdxBarLargeButton;
    dxbrlrgbtnEditar: TdxBarLargeButton;
    dxbrlrgbtnAbrir: TdxBarLargeButton;
    dxbrlrgbtnsalvar: TdxBarLargeButton;
    dxbrlrgbtncancelar: TdxBarLargeButton;
    dxbrlrgbtnexcluir: TdxBarLargeButton;
    dxbrsprtr1: TdxBarSeparator;
    dxbrlrgbtnprimeiro: TdxBarLargeButton;
    dxbrlrgbtnanterior: TdxBarLargeButton;
    dxbrlrgbtnproximo: TdxBarLargeButton;
    dxbrlrgbtnultimo: TdxBarLargeButton;
    dxbrsprtr3: TdxBarSeparator;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    Panel1: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    edtcodigo: TcxTextEdit;
    edtnome: TcxDBTextEdit;
    pnl: TcxLabel;
    cbxcdstconta: TcxDBLookupComboBox;
    sdsCDCONTA: TIntegerField;
    sdsCDSTCONTA: TIntegerField;
    sdsCDTPCONTA: TIntegerField;
    sdsCDUSUARIO: TIntegerField;
    sdsNMCONTA: TStringField;
    sdsIDCOBRANCA: TStringField;
    sdsVLLIMITE: TFMTBCDField;
    sdsVLSALDO: TFMTBCDField;
    sdsDTSALDO: TDateField;
    sdsNUCHEQUE: TIntegerField;
    sdsBOSALDO: TStringField;
    sdsVLSALDOINICIAL: TFMTBCDField;
    sdsNUCONTA: TStringField;
    sdsVLEXTRATO: TFMTBCDField;
    sdsVLEXTRATOINICIAL: TFMTBCDField;
    sdsDTEXTRATO: TDateField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsCDCEDENTE: TIntegerField;
    cdsCDCONTA: TIntegerField;
    cdsCDSTCONTA: TIntegerField;
    cdsCDTPCONTA: TIntegerField;
    cdsCDUSUARIO: TIntegerField;
    cdsNMCONTA: TStringField;
    cdsIDCOBRANCA: TStringField;
    cdsVLLIMITE: TFMTBCDField;
    cdsVLSALDO: TFMTBCDField;
    cdsDTSALDO: TDateField;
    cdsNUCHEQUE: TIntegerField;
    cdsBOSALDO: TStringField;
    cdsVLSALDOINICIAL: TFMTBCDField;
    cdsNUCONTA: TStringField;
    cdsVLEXTRATO: TFMTBCDField;
    cdsVLEXTRATOINICIAL: TFMTBCDField;
    cdsDTEXTRATO: TDateField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsCDCEDENTE: TIntegerField;
    sdssetboleto: TSQLDataSet;
    cdssetboleto: TClientDataSet;
    dtssetboleto: TDataSource;
    dts1: TDataSource;
    sdssetboletoCDSETBOLETO: TIntegerField;
    sdssetboletoCDCONTA: TIntegerField;
    sdssetboletoCDUSUARIOI: TIntegerField;
    sdssetboletoCDUSUARIOA: TIntegerField;
    sdssetboletoCDCOMPUTADORI: TIntegerField;
    sdssetboletoCDCOMPUTADORA: TIntegerField;
    sdssetboletoTSINCLUSAO: TSQLTimeStampField;
    sdssetboletoTSALTERACAO: TSQLTimeStampField;
    sdssetboletoNUBOLETA: TIntegerField;
    sdssetboletoNUCARTEIRA: TStringField;
    sdssetboletoNUCONVENIO: TStringField;
    sdssetboletoNUREMESSA: TIntegerField;
    sdssetboletoTPARQUIVOCOBRANCA: TStringField;
    sdssetboletoDSINSTRUCAOBOLETA: TBlobField;
    sdssetboletoNMSETBOLETO: TStringField;
    cdssdssetboleto: TDataSetField;
    cdssetboletoCDSETBOLETO: TIntegerField;
    cdssetboletoCDCONTA: TIntegerField;
    cdssetboletoCDUSUARIOI: TIntegerField;
    cdssetboletoCDUSUARIOA: TIntegerField;
    cdssetboletoCDCOMPUTADORI: TIntegerField;
    cdssetboletoCDCOMPUTADORA: TIntegerField;
    cdssetboletoTSINCLUSAO: TSQLTimeStampField;
    cdssetboletoTSALTERACAO: TSQLTimeStampField;
    cdssetboletoNUBOLETA: TIntegerField;
    cdssetboletoNUCARTEIRA: TStringField;
    cdssetboletoNUCONVENIO: TStringField;
    cdssetboletoNUREMESSA: TIntegerField;
    cdssetboletoTPARQUIVOCOBRANCA: TStringField;
    cdssetboletoDSINSTRUCAOBOLETA: TBlobField;
    cdssetboletoNMSETBOLETO: TStringField;
    sdssetboletoDSINSTRUCAO1: TStringField;
    sdssetboletoDSINSTRUCAO2: TStringField;
    cdssetboletoDSINSTRUCAO1: TStringField;
    cdssetboletoDSINSTRUCAO2: TStringField;
    sdssetboletoCDSETBOLETORESPEMISSAO: TIntegerField;
    sdssetboletoCDSETBOLETOCARACTITULO: TIntegerField;
    cdssetboletoCDSETBOLETORESPEMISSAO: TIntegerField;
    cdssetboletoCDSETBOLETOCARACTITULO: TIntegerField;
    sdssetboletoDSESPECIE: TStringField;
    sdssetboletoBOACEITE: TStringField;
    cdssetboletoDSESPECIE: TStringField;
    cdssetboletoBOACEITE: TStringField;
    sdssetboletoCDCEDENTE: TStringField;
    cdssetboletoCDCEDENTE: TStringField;
    sdssetboletoDSMODALIDADE: TStringField;
    cdssetboletoDSMODALIDADE: TStringField;
    sdssetboletoDSLOCALPAGAMENTO: TBlobField;
    cdssetboletoDSLOCALPAGAMENTO: TBlobField;
    sdssetboletoDSPATHREMESSA: TStringField;
    cdssetboletoDSPATHREMESSA: TStringField;
    sdssetboletoDSBOLETO: TBlobField;
    sdssetboletoDSBOLETOCARNE: TBlobField;
    sdssetboletoDSBOLETOFATURA: TBlobField;
    sdssetboletoDSBOLETOFR: TBlobField;
    cdssetboletoDSBOLETO: TBlobField;
    cdssetboletoDSBOLETOCARNE: TBlobField;
    cdssetboletoDSBOLETOFATURA: TBlobField;
    cdssetboletoDSBOLETOFR: TBlobField;
    bmg1Bar1: TdxBar;
    actboleto: TAction;
    actboletocarne: TAction;
    actboletofatura: TAction;
    actboletofr: TAction;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    sdsNUCOR: TIntegerField;
    cdsNUCOR: TIntegerField;
    sdssetboletoCDTPCARTEIRABOLETO: TIntegerField;
    cdssetboletoCDTPCARTEIRABOLETO: TIntegerField;
    sdssetboletoBODESPESARETORNOLIQUIDADO: TStringField;
    cdssetboletoBODESPESARETORNOLIQUIDADO: TStringField;
    sdssetboletoNUDIASPROTESTO: TIntegerField;
    cdssetboletoNUDIASPROTESTO: TIntegerField;
    sdsNUCNTCONTABIL: TStringField;
    cdsNUCNTCONTABIL: TStringField;
    sdsCDEMPRESA: TLargeintField;
    sdsBOIGNORARDOCUMENTOREPETIDO: TStringField;
    sdssetboletoCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsBOIGNORARDOCUMENTOREPETIDO: TStringField;
    cdssetboletoCDEMPRESA: TLargeintField;
    sdsNUAGENCIA: TStringField;
    sdsCDBANCO: TIntegerField;
    cdsNUAGENCIA: TStringField;
    cdsCDBANCO: TIntegerField;
    cxGroupBox2: TcxGroupBox;
    Label6: TLabel;
    lblidcobranca: TLabel;
    lblnuconta: TLabel;
    lblnuagencia: TLabel;
    lblnucntcontabil: TLabel;
    lblcdcedente: TLabel;
    Label12: TLabel;
    lblcdbanco: TLabel;
    cbxcdtpconta: TcxDBLookupComboBox;
    edtidcobranca: TcxDBTextEdit;
    edtnucntcontabil: TcxDBTextEdit;
    edtnuconta: TcxDBTextEdit;
    edtcdcedente: TcxDBTextEdit;
    edtnucor: TcxDBColorComboBox;
    edtnuagencia: TcxDBTextEdit;
    cbxcdbanco: TcxDBLookupComboBox;
    cxGroupBox3: TcxGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    lblvlextrato: TLabel;
    lblvlestratoinicial: TLabel;
    lbldtextrato: TLabel;
    edtvlsaldoinicial: TcxDBCalcEdit;
    edtvllimite: TcxDBCalcEdit;
    edtdtsaldo: TcxDBDateEdit;
    lbl1: TcxDBLabel;
    txtvlextrato: TcxDBLabel;
    edtvlextratoinicial: TcxDBCalcEdit;
    edtdtextrato: TcxDBDateEdit;
    ckbboignorardocumentorepetido: TcxDBCheckBox;
    gbxboleto: TcxGroupBox;
    grdsetboleto: TcxGrid;
    tbvsetboleto: TcxGridDBTableView;
    tbvsetboletoNMSETBOLETO: TcxGridDBColumn;
    tbvsetboletoCDCEDENTE: TcxGridDBColumn;
    tbvsetboletoNUBOLETA: TcxGridDBColumn;
    tbvsetboletoNUCARTEIRA: TcxGridDBColumn;
    tbvsetboletoCDTPCARTEIRABOLETO: TcxGridDBColumn;
    tbvsetboletoDSMODALIDADE: TcxGridDBColumn;
    tbvsetboletoNUCONVENIO: TcxGridDBColumn;
    tbvsetboletoNUREMESSA: TcxGridDBColumn;
    tbvsetboletoTPARQUIVOCOBRANCA: TcxGridDBColumn;
    tbvsetboletoCDSETBOLETORESPEMISSAO: TcxGridDBColumn;
    tbvsetboletoCDSETBOLETOCARACTITULO: TcxGridDBColumn;
    tbvsetboletoDSLOCALPAGAMENTO: TcxGridDBColumn;
    tbvsetboletoNUDIASPROTESTO: TcxGridDBColumn;
    tbvsetboletoDSINSTRUCAOBOLETA: TcxGridDBColumn;
    tbvsetboletoDSINSTRUCAO1: TcxGridDBColumn;
    tbvsetboletoDSINSTRUCAO2: TcxGridDBColumn;
    tbvsetboletoDSESPECIE: TcxGridDBColumn;
    tbvsetboletoBOACEITE: TcxGridDBColumn;
    tbvsetboletoDSPATHREMESSA: TcxGridDBColumn;
    tbvsetboletoBODESPESARETORNOLIQUIDADO: TcxGridDBColumn;
    grdsetboletoLevel1: TcxGridLevel;
    actlayoutimpressaoboleto: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    pumopcoes: TdxBarPopupMenu;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure edtcodigoEnter(Sender: TObject);
    procedure edtcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actfecharExecute(Sender: TObject);
    procedure edtnomePropertiesChange(Sender: TObject);
    procedure dtsStateChange(Sender: TObject);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure edtcodigoExit(Sender: TObject);
    procedure edtdtextratoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtdtsaldoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure cdssetboletoBeforePost(DataSet: TDataSet);
    procedure cdssetboletoNewRecord(DataSet: TDataSet);
    procedure cdssetboletoNUCARTEIRAValidate(Sender: TField);
    procedure grdsetboletoDBTableView1DSPATHREMESSAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure actboletoExecute(Sender: TObject);
    procedure actboletocarneExecute(Sender: TObject);
    procedure actboletofaturaExecute(Sender: TObject);
    procedure actboletofrExecute(Sender: TObject);
    procedure cdsCDTPCONTAValidate(Sender: TField);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure actlayoutimpressaoboletoExecute(Sender: TObject);
  private      { Private declarations }
    conta : TConta;
    procedure Adicionar_layout_boletos;
    procedure check_agencia;
    procedure check_nome_conta;
    procedure check_numero_conta;
    procedure check_valor_limite;
    procedure check_valor_saldo_inicial;
    procedure check_data_saldo;
    procedure set_botao_boleto;
    procedure setrecord(cdtpconta:integer);
    procedure AbrirTabelas;
  public  { Public declarations }
    registro : TRegistro;
    relatorio : TRelatorio;
    function Abrir(codigo:integer):boolean;
  end;

var
  frmConta: TfrmConta;

implementation

uses uDtmMain, uMain, ulocalizar, ureportdesigner, uExportarExcel, Math;

{$R *.DFM}

const
  tbl      = _Conta;
  exibe    = 'Conta Corrente';
  artigoI  = 'a';

procedure TfrmConta.Adicionar_layout_boletos;
begin
  cdssetboletodsboleto.asstring       := relatorio.get_script(645);
  cdssetboletoDSBOLETOCARNE.asstring  := relatorio.get_script(646);
  cdssetboletoDSBOLETOFATURA.asstring := relatorio.get_script(647);
  cdssetboletoDSBOLETOFR.asstring     := relatorio.get_script(648);
end;

function TfrmConta.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmConta.AbrirTabelas;
begin
  cbxcdstconta.Properties.ListSource := abrir_tabela(_st + _conta);
  cbxcdtpconta.Properties.ListSource := abrir_tabela(_tpconta);
  cbxcdbanco.Properties.ListSource := abrir_tabela(_banco);
  TcxLookupComboBoxProperties(tbvsetboletoCDSETBOLETOCARACTITULO.Properties).ListSource := abrir_tabela(_set + _boleto + _carac + _titulo);
  TcxLookupComboBoxProperties(tbvsetboletoCDTPCARTEIRABOLETO.Properties).ListSource := abrir_tabela(_tp + _carteira + _boleto);
  TcxLookupComboBoxProperties(tbvsetboletoCDSETBOLETORESPEMISSAO.Properties).ListSource := abrir_tabela(_set + _boleto + _resp + _emissao);
end;

procedure TfrmConta.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmConta.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure TfrmConta.actSalvarExecute(Sender: TObject);
begin
  Self.Perform(WM_NEXTDLGCTL,0,0);
  if cbxcdtpconta.text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_tipo]), mtinformation, [mbok], 0);
    cbxcdtpconta.setfocus;
    abort;
  end;
  if cdsNUCONTA.AsString = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Numero]), mtinformation, [mbok], 0);
    cdsNUCONTA.FocusControl;
    abort;
  end;
  if (cdsCDTPCONTA.AsInteger <> 2) and (Pos('-', cdsNUCONTA.AsString) = 0) then
  begin
    MessageDlg('Obrigado informar o "-" para separa o dígito verificador da conta.', mtInformation, [mbOK], 0);
    cdsNUCONTA.FocusControl;
    Abort;
  end;
  if (cbxcdstconta.EditValue = _2) and (cdsVLSALDO.AsCurrency <> 0) then
  begin
    MessageDlg('A conta só pode ser desativada se o saldo atual for 0,00 (zero).', mtInformation, [mbOK], 0);
    cdsCDSTCONTA.FocusControl;
    Abort;
  end;
  registro.salvar;
end;

procedure TfrmConta.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmConta.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmConta.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure TfrmConta.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure TfrmConta.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  configurarPermissoes(self);
  if actexcluir.Enabled then
  begin
    actExcluir.Enabled := False;
  end;
  if acteditar.Enabled  then
  begin
    acteditar.Enabled := False;
  end;
  edtCodigo.SetFocus;
  pnl.caption := exibe;
  lblnucntcontabil.Visible := Empresa.bocodigocontabil;
  edtnucntcontabil.Visible := Empresa.bocodigocontabil;
end;

procedure TfrmConta.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmConta.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmConta.actboletocarneExecute(Sender: TObject);
begin
  if cdssetboleto.recordcount = 0 then
  begin
    exit;
  end;
  if cdssetboletoDSBOLETOCARNE.isnull then
  begin
    actEditarExecute(acteditar);
    cdssetboleto.EDIT;
    cdssetboletoDSBOLETOCARNE.asstring := relatorio.get_script(646);
    actSalvarExecute(actsalvar);
  end;
  Exibir_report_designer(cdssetboletoCDSETBOLETO.asstring, cdssetboletoDSBOLETOCARNE.asstring, '', cdssetboletoDSBOLETOCARNE.fieldname, _setboleto);
  cds.refresh;
end;

procedure TfrmConta.actboletoExecute(Sender: TObject);
begin
  if cdssetboleto.recordcount = 0 then
  begin
    exit;
  end;
  if cdssetboletodsboleto.isnull then
  begin
    actEditarExecute(acteditar);
    cdssetboleto.EDIT;
    cdssetboletodsboleto.asstring := relatorio.get_script(645);
    actSalvarExecute(actsalvar);
  end;
  Exibir_report_designer(cdssetboletoCDSETBOLETO.asstring, cdssetboletodsboleto.asstring, '', cdssetboletodsboleto.fieldname, _setboleto);
  cds.refresh;
end;

procedure TfrmConta.actboletofaturaExecute(Sender: TObject);
begin
  if cdssetboleto.recordcount = 0 then
  begin
    exit;
  end;
  if cdssetboletoDSBOLETOFATURA.isnull then
  begin
    actEditarExecute(acteditar);
    cdssetboleto.EDIT;
    cdssetboletoDSBOLETOFATURA.asstring := relatorio.get_script(647);
    actSalvarExecute(actsalvar);
  end;
  Exibir_report_designer(cdssetboletoCDSETBOLETO.asstring, cdssetboletoDSBOLETOFATURA.asstring, '', cdssetboletoDSBOLETOFATURA.fieldname, _setboleto);
  cds.refresh;
end;

procedure TfrmConta.actboletofrExecute(Sender: TObject);
begin
  if cdssetboleto.recordcount = 0 then
  begin
    exit;
  end;
  if cdssetboletoDSBOLETOFR.isnull then
  begin
    actEditarExecute(acteditar);
    cdssetboleto.EDIT;
    cdssetboletoDSBOLETOFR.asstring := relatorio.get_script(648);
    actSalvarExecute(actsalvar);
  end;
  Exibir_report_designer(cdssetboletoCDSETBOLETO.asstring, cdssetboletoDSBOLETOFR.asstring, '', cdssetboletoDSBOLETOFR.fieldname, _setboleto);
  cds.refresh;
end;

procedure TfrmConta.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmConta.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmConta.edtcodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmConta.edtcodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmConta.edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure TfrmConta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmConta.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmConta.actlayoutimpressaoboletoExecute(Sender: TObject);
begin
//
end;

procedure TfrmConta.edtnomePropertiesChange(Sender: TObject);
begin
  pnl.Caption := exibe+' '+ cdsnmCONTA.asstring + ' - ' + edtNome.Text;
end;

procedure TfrmConta.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
  if dts.State = dsBrowse then
  begin
    configurarPermissoes(self);
  end;
  if dts.State <> dsInactive then
  begin
    set_botao_boleto;
  end;
end;

procedure TfrmConta.check_agencia;
begin
  if (Nomedocodigo(_tpconta, cdsCDTPCONTA.asstring) <> UpperCase(_CAIXA)) and cdsnuAGENCIA.IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Agencia]), mtinformation, [mbok], 0);
    cdsnuAGENCIA.FocusControl;
    abort;
  end;
end;

procedure TfrmConta.check_data_saldo;
begin
  if cdsDTSALDO.IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+_do+' '+_Saldo+' '+_inicial]), mtinformation, [mbok], 0);
    cdsDTSALDO.FocusControl;
    abort;
  end;
end;

procedure TfrmConta.check_nome_conta;
begin
  if cdsNMCONTA.AsString = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Nome]), mtinformation, [mbok], 0);
    cdsNMCONTA.FocusControl;
    abort;
  end;
end;

procedure TfrmConta.check_numero_conta;
begin
  if cdsNUCONTA.AsString = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Numero]), mtinformation, [mbok], 0);
    cdsNUCONTA.FocusControl;
    abort;
  end;
end;

procedure TfrmConta.check_valor_limite;
begin
  if cdsVLLIMITE.IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Valor+' '+_do+' '+_Limite]), mtinformation, [mbok], 0);
    cdsVLLIMITE.FocusControl;
    abort;
  end;
end;

procedure TfrmConta.check_valor_saldo_inicial;
begin
  if cdsVLSALDOINICIAL.IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Valor+' '+_do+' '+_Saldo+' '+_inicial]), mtinformation, [mbok], 0);
    cdsVLSALDOINICIAL.FocusControl;
    abort;
  end;
end;

procedure TfrmConta.cdsBeforePost(DataSet: TDataSet);
begin
  check_agencia;
  check_nome_conta;
  check_numero_conta;
  check_valor_limite;
  check_valor_saldo_inicial;
  check_data_saldo;
  registro.set_update(cds);
end;

procedure TfrmConta.cdsCDTPCONTAValidate(Sender: TField);
begin
  setrecord(Sender.AsInteger);
end;

procedure TfrmConta.cdsNewRecord(DataSet: TDataSet);
begin
  registro.newrecord;
  cdsVLLIMITE.AsCurrency       := 0;
  cdsVLSALDOINICIAL.AsCurrency := 0;
  cdsVLSALDO.AsCurrency        := 0;
  cdsDTSALDO.AsDateTime        := dtbanco;
  cdsDTEXTRATO.AsDateTime      := dtbanco;
end;

procedure TfrmConta.cdsAfterScroll(DataSet: TDataSet);
begin
  conta.select(cds.FieldByName(_cdconta).AsInteger);
  conta.tpconta.select(conta.cdtpconta);
  //registro.setStatus(tbl, DataSet);
  configurarPermissoes(self);
  setrecord(conta.cdtpconta);
end;

procedure TfrmConta.edtcodigoExit(Sender: TObject);
begin
  registro.CodigoExit(sender, actNovo.Enabled);
end;

procedure TfrmConta.edtdtextratoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if StrToDate(displayvalue) > DtBanco then
  begin
    MessageDlg('A data do extrato não pode ser maior do que a data atual.', mtInformation, [mbOK], 0);
    cdsDTEXTRATO.FocusControl;
    exit;
  end;
  if FormatDateTime(_YYYYMMDD, StrToDate(displayvalue)) > formatdatetime(_yyyymmdd, cdsDTEXTRATO.AsDateTime) then
  begin
    MessageDlg('Os registros do extrato serão apagados anteriores a esta data.', mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmConta.edtdtsaldoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if StrToDate(displayvalue) > DtBanco then
  begin
    MessageDlg('A data do saldo não pode ser maior do que a data atual.', mtInformation, [mbOK], 0);
    cdsDTSALDO.FocusControl;
    exit;
  end;
end;

procedure TfrmConta.FormDestroy(Sender: TObject);
begin
  freeandnil(conta);
  freeandnil(registro);
end;

procedure TfrmConta.FormCreate(Sender: TObject);
begin
  conta := tconta.create;
  AbrirTabelas;
  registro  := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
  relatorio := trelatorio.create;
end;

procedure TfrmConta.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmConta.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmConta.cdssetboletoBeforePost(DataSet: TDataSet);
begin
  if cdssetboletoNMSETBOLETO.AsString = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Nome+' '+_da+' '+__Configuracao+' '+_do+' '+_Boleto]), mtinformation, [mbok], 0);
    cdssetboletoNMSETBOLETO.FocusControl;
    abort;
  end;
  if cdssetboletoDSESPECIE.AsString = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Especie]), mtinformation, [mbok], 0);
    cdssetboletoDSESPECIE.FocusControl;
    abort;
  end;
  if cdssetboletoCDSETBOLETORESPEMISSAO.AsString = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Responsavel+' '+_pela+' '+__Emissao]), mtinformation, [mbok], 0);
    cdssetboletoCDSETBOLETORESPEMISSAO.FocusControl;
    abort;
  end;
  if cdssetboletoCDSETBOLETOCARACTITULO.AsString = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Caracteristica+' '+_do+' '+__Titulo]), mtinformation, [mbok], 0);
    cdssetboletoCDSETBOLETOCARACTITULO.FocusControl;
    abort;
  end;
  if cdssetboletoBOACEITE.AsString = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Aceite]), mtinformation, [mbok], 0);
    cdssetboletoBOACEITE.FocusControl;
    abort;
  end;
  registro.set_update(cdssetboleto);
end;

procedure TfrmConta.cdssetboletoNewRecord(DataSet: TDataSet);
begin
  cdssetboletoCDSETBOLETO.AsString            := GerarCodigo(_set+_boleto);
  cdssetboletoBOACEITE.AsString               := _S;
  cdssetboletoCDSETBOLETORESPEMISSAO.AsString := _1;
  cdssetboletoCDSETBOLETOCARACTITULO.AsString := _1;
  adicionar_layout_boletos;
end;

procedure TfrmConta.cdssetboletoNUCARTEIRAValidate(Sender: TField);
begin
  if Pos('/', sender.AsString) > 0 then
  begin
    MessageDlg('Caracter inválido "/" no número da carteira.', mtInformation, [mbOK], 0);
    sender.FocusControl;
    Abort;
  end;
  if (cdscdbanco.asstring = '104') and (sender.AsString <> 'RG') and (Sender.AsString <> 'SR') then
  begin
    MessageDlg('Número da Carteira deve ser "RG" (registrada) ou "SR" (sem registro).', mtInformation, [mbOK], 0);
    sender.FocusControl;
    Abort;
  end;
end;

procedure TfrmConta.grdsetboletoDBTableView1DSPATHREMESSAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if (cdssetboleto.State <> dsinsert) and (cdssetboleto.State <> dsedit) then
  begin
    cdssetboleto.Edit;
  end;
  cdssetboletoDSPATHREMESSA.AsString := QRotinas.getdiretorio;
end;

procedure TfrmConta.set_botao_boleto;
  function get_ativar:boolean;
  begin
    result := cds.active and (cds.recordcount > 0) and (cds.state = dsbrowse);
  end;
begin
  actboleto.visible       := get_ativar;
  actboletocarne.visible  := get_ativar;
  actboletofatura.visible := get_ativar;
  actboletofr.visible     := get_ativar;
end;

procedure TfrmConta.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmConta.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure TfrmConta.setrecord(cdtpconta:integer);
begin
  conta.tpconta.select(cdtpconta);
  gbxboleto.visible := conta.tpconta.bobanco = _s;
  lblnuagencia.visible := conta.tpconta.bobanco = _s;
  edtnuagencia.visible := conta.tpconta.bobanco = _s;
  lblcdbanco.visible := conta.tpconta.bobanco = _s;
  cbxcdbanco.visible := conta.tpconta.bobanco = _s;
  lblidcobranca.visible := conta.tpconta.bobanco = _s;
  edtidcobranca.visible := conta.tpconta.bobanco = _s;
  lblcdcedente.visible := conta.tpconta.bobanco = _s;
  edtcdcedente.visible := conta.tpconta.bobanco = _s;
  lblvlestratoinicial.visible := conta.tpconta.bobanco = _s;
  edtvlextratoinicial.visible := conta.tpconta.bobanco = _s;
  lbldtextrato.visible := conta.tpconta.bobanco = _s;
  edtdtextrato.visible := conta.tpconta.bobanco = _s;
  lblvlextrato.visible := conta.tpconta.bobanco = _s;
  txtvlextrato.visible := conta.tpconta.bobanco = _s;
  gbxboleto.visible    := conta.tpconta.bobanco = _s;
  ckbboignorardocumentorepetido.visible := conta.tpconta.bobanco = _s;
end;

end.
