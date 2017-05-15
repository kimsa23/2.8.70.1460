unit uembarque;

interface

uses
  System.Actions, System.UITypes,
  forms, Windows, dialogs, graphics, Mask, Buttons, Controls, ToolWin, ExtCtrls, types,
  sysutils, StdCtrls, ComCtrls, Spin, Classes, ActnList, Menus, variants,
  FMTBcd, DBClient, Provider, DBCtrls, DB, Grids, sqlexpr,
  uexportarexcel, udatahora, uregistroib, uregistro, urotinas,
  udbmemo, ulocalizar, uanotacao, uconstantes, unumero, ustrings,
  uMenuRelatorio, ulocalizarcliente,
  classeconsiste, classeexecutasql, classeusuario, classegerar,
  classeretornasql, classeregistro, classeACBR, classeregistrainformacao,
  classeform, classeembarque, classeempresa, classetransportadora,
  uAssinaturaDigital,
  cxLookAndFeelPainters, cxControls, cxContainer, cxEdit, cxGroupBox, cxButtons,
  dxBar, cxClasses, cxGraphics, cxLookAndFeels, cxLabel, cxPC, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxSpinEdit, cxDBEdit, cxMaskEdit, cxCalendar, cxTextEdit,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxTimeEdit, cxButtonEdit, cxCalc, cxCurrencyEdit, cxPCdxBarPopupMenu,
  cxCheckBox, cxNavigator, dxBarBuiltInMenu, cxDBLabel;

type
  TfrmEmbarque = class(TForm)
    act: TActionList;
    actNovo: TAction;
    actAbrir: TAction;
    actSalvar: TAction;
    actImprimir: TAction;
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
    dxbrsprtr2: TdxBarSeparator;
    dxbrsprtr3: TdxBarSeparator;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    sds: TSQLDataSet;
    sdsdetail: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    dts1: TDataSource;
    cdsdetail: TClientDataSet;
    dtsdetail: TDataSource;
    btnimprimir: TdxBarLargeButton;
    pumimprimir: TdxBarPopupMenu;
    btnopcoes: TdxBarLargeButton;
    actopcoes: TAction;
    pumopcoes: TdxBarPopupMenu;
    sdsCDEMBARQUE: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsCDSTEMBARQUE: TIntegerField;
    sdsCDRPA: TIntegerField;
    sdsCDMDFE: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsDTEMISSAO: TDateField;
    sdsVLFRETE: TFMTBCDField;
    sdsdetailCDITEMBARQUE: TIntegerField;
    sdsdetailCDEMBARQUE: TIntegerField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailCDCTE: TIntegerField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    sdsdetailDSXML: TBlobField;
    sdsdetailNUCHAVENFE: TStringField;
    sdsdetailNUSERIE: TIntegerField;
    sdsdetailNUNOTA: TIntegerField;
    sdsdetailDTEMISSAO: TDateField;
    sdsdetailVLTOTAL: TFMTBCDField;
    sdsdetailPSLIQUIDO: TFloatField;
    sdsdetailPSBRUTO: TFloatField;
    sdsdetailVLFRETE: TFMTBCDField;
    cdsCDEMBARQUE: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsCDSTEMBARQUE: TIntegerField;
    cdsCDRPA: TIntegerField;
    cdsCDMDFE: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsDTEMISSAO: TDateField;
    cdsVLFRETE: TFMTBCDField;
    cdssdsdetail: TDataSetField;
    cdsdetailCDITEMBARQUE: TIntegerField;
    cdsdetailCDEMBARQUE: TIntegerField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailCDCTE: TIntegerField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailDSXML: TBlobField;
    cdsdetailNUCHAVENFE: TStringField;
    cdsdetailNUSERIE: TIntegerField;
    cdsdetailNUNOTA: TIntegerField;
    cdsdetailDTEMISSAO: TDateField;
    cdsdetailVLTOTAL: TFMTBCDField;
    cdsdetailPSLIQUIDO: TFloatField;
    cdsdetailPSBRUTO: TFloatField;
    cdsdetailVLFRETE: TFMTBCDField;
    sdsCDROTA: TIntegerField;
    cdsCDROTA: TIntegerField;
    sdsNMTRANSPORTADORA: TStringField;
    cdsNMTRANSPORTADORA: TStringField;
    actabrirrota: TAction;
    actabrirtransportadora: TAction;
    actadicionarxml: TAction;
    dxBarButton1: TdxBarButton;
    actgerarcte: TAction;
    actgerarrpa: TAction;
    actgerarmdfe: TAction;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    pnl: TcxLabel;
    pnltop: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    lbldtemissao: TLabel;
    lblrota: TLabel;
    edtcodigo: TcxTextEdit;
    cbxcdstembarque: TcxDBLookupComboBox;
    edtdtemissao: TcxDBDateEdit;
    cbxcdrota: TcxDBLookupComboBox;
    gbxdestinatario: TcxGroupBox;
    edtcdtransportadora: TcxDBButtonEdit;
    lblNMTRANSPORTADORA: TDBText;
    lblcdtpembarque: TLabel;
    cbxcdtpembarque: TcxDBLookupComboBox;
    sdsCDTPEMBARQUE: TIntegerField;
    cdsCDTPEMBARQUE: TIntegerField;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDCTE: TcxGridDBColumn;
    tbvNUCHAVENFE: TcxGridDBColumn;
    tbvVLFRETE: TcxGridDBColumn;
    tbvCDREMETENTE: TcxGridDBColumn;
    tbvCDDESTINATARIO: TcxGridDBColumn;
    tbvNUSERIE: TcxGridDBColumn;
    tbvNUNOTA: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvVLTOTAL: TcxGridDBColumn;
    tbvPSLIQUIDO: TcxGridDBColumn;
    tbvPSBRUTO: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    pnl1: TPanel;
    Label11: TLabel;
    edtvlpeso: TcxDBCurrencyEdit;
    sdsVLFRETEPESO: TFMTBCDField;
    sdsVLPESO: TFMTBCDField;
    cdsVLFRETEPESO: TFMTBCDField;
    cdsVLPESO: TFMTBCDField;
    edtVLFRETEPESO: TcxDBCalcEdit;
    lbl1: TLabel;
    Label2: TLabel;
    edtqtpeso: TcxDBCurrencyEdit;
    Label3: TLabel;
    edtvlfrete: TcxDBCurrencyEdit;
    sdsQTPESO: TFloatField;
    cdsQTPESO: TFloatField;
    sdsVLAVGFRETEPESO: TFMTBCDField;
    cdsVLAVGFRETEPESO: TFMTBCDField;
    lblvlavgfretepeso: TLabel;
    edtvlavgfretepeso: TcxDBCurrencyEdit;
    tbvVLPEDAGIO: TcxGridDBColumn;
    sdsdetailVLPEDAGIO: TFMTBCDField;
    cdsdetailVLPEDAGIO: TFMTBCDField;
    sdsVLROTA: TFMTBCDField;
    cdsVLROTA: TFMTBCDField;
    sdsCDUSUARIOL: TIntegerField;
    cdsCDUSUARIOL: TIntegerField;
    sdsTSLIBERADO: TSQLTimeStampField;
    cdsTSLIBERADO: TSQLTimeStampField;
    sdsDSLIBERADO: TBlobField;
    cdsDSLIBERADO: TBlobField;
    sdsCDCOMPUTADORL: TIntegerField;
    cdsCDCOMPUTADORL: TIntegerField;
    sdsCDVEICULO: TIntegerField;
    sdsQTENTREGA: TIntegerField;
    cdsCDVEICULO: TIntegerField;
    cdsQTENTREGA: TIntegerField;
    cdsdetailVLPESO: TFMTBCDField;
    sdsdetailVLPESO: TFMTBCDField;
    Label5: TLabel;
    edtvlrota: TcxDBCurrencyEdit;
    actgerarctetodos: TAction;
    dxBarButton2: TdxBarButton;
    actabrircte: TAction;
    sdsCDEMPRESA: TLargeintField;
    sdsCDTRANSPORTADORA: TLargeintField;
    sdsdetailCDEMPRESA: TLargeintField;
    sdsdetailCDREMETENTE: TLargeintField;
    sdsdetailCDDESTINATARIO: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDTRANSPORTADORA: TLargeintField;
    cdsdetailCDEMPRESA: TLargeintField;
    cdsdetailCDREMETENTE: TLargeintField;
    cdsdetailCDDESTINATARIO: TLargeintField;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cdsdetailBeforePost(DataSet: TDataSet);
    procedure actEditarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dtsStateChange(Sender: TObject);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure actfecharExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdstembarqueEnter(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actopcoesExecute(Sender: TObject);
    procedure edtcdtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdtransportadoraPropertiesEditValueChanged( Sender: TObject);
    procedure cbxcdrotaEnter(Sender: TObject);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure actadicionarxmlExecute(Sender: TObject);
    procedure actgerarmdfeExecute(Sender: TObject);
    procedure actgerarrpaExecute(Sender: TObject);
    procedure actgerarcteExecute(Sender: TObject);
    procedure edtcdtransportadoraPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cbxcdtpembarqueEnter(Sender: TObject);
    procedure cbxcdtpembarquePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtvlpesoKeyPress(Sender: TObject; var Key: Char);
    procedure cdsVLFRETEPESOValidate(Sender: TField);
    procedure set_vlavgfretepeso(Sender: TField);
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure cdsCDROTAValidate(Sender: TField);
    procedure edtcdtransportadoraExit(Sender: TObject);
    procedure cdsdetailAfterPost(DataSet: TDataSet);
    procedure cdsdetailAfterDelete(DataSet: TDataSet);
    procedure cdsdetailBeforeDelete(DataSet: TDataSet);
    procedure actabrirtransportadoraExecute(Sender: TObject);
    procedure actabrirrotaExecute(Sender: TObject);
    procedure lblNMTRANSPORTADORADblClick(Sender: TObject);
    procedure lblrotaDblClick(Sender: TObject);
    procedure cdsdetailAfterScroll(DataSet: TDataSet);
    procedure actgerarctetodosExecute(Sender: TObject);
    procedure actabrircteExecute(Sender: TObject);
    procedure tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    tbl : string;
    exibe : string;
    embarque : tembarque;
    procedure abrirtabela;
    procedure setrecord(codigo: integer);
    procedure set_vlfretepeso;
    function  cte_emitido:Boolean;
    procedure set_tela_objeto;
  public  { Public declarations }
    registro : TRegistro;
    function  Abrir(codigo:Integer):boolean;
  end;

var
  frmEmbarque: TfrmEmbarque;

implementation

uses uDtmMain,
  uMain,
  uProgressBar,
  ulocalizarTransportadora;

{$R *.DFM}

function TfrmEmbarque.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmEmbarque.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmEmbarque.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
  embarque.novo;
end;

procedure TfrmEmbarque.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmEmbarque.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmEmbarque.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.caption := exibe;
  edtCodigo.SetFocus;
end;

procedure TfrmEmbarque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmEmbarque.FormDestroy(Sender: TObject);
begin
  FreeAndNil(registro);
  freeandnil(embarque);
end;

procedure TfrmEmbarque.cdsdetailBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName(_cditembarque).isnull then
  begin
    DataSet.FieldByName(_cditembarque).AsString := GerarCodigo(_itembarque);
  end;
  registro.set_update(cdsdetail);
  if dataset.State = dsinsert then
  begin
    embarque.itembarque.insert(dataset);
  end;
end;

procedure TfrmEmbarque.actEditarExecute(Sender: TObject);
begin
  registro.editar;
  actadicionarxml.visible := actsalvar.enabled;
end;

procedure TfrmEmbarque.actSalvarExecute(Sender: TObject);
begin
  set_tela_objeto;
  if embarque.check_campo_obrigatorio then
  begin
    registro.salvar;
  end;
end;

procedure TfrmEmbarque.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmEmbarque.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmEmbarque.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure TfrmEmbarque.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmEmbarque.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmEmbarque.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmEmbarque.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmEmbarque.edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key, tbl);
end;

procedure TfrmEmbarque.dtsStateChange(Sender: TObject);
begin
  embarque.state := dts.state;
  actadicionarxml.visible := actsalvar.enabled;
  if actsalvar.enabled then
  begin
    actgerarmdfe.visible := false;
    actgerarrpa.visible  := false;
  end;
end;

procedure TfrmEmbarque.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure TfrmEmbarque.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
  DataSet.fieldbyname(_vlfrete).ascurrency     := 0;
  DataSet.fieldbyname(_vlfretepeso).ascurrency := 0;
  DataSet.fieldbyname(_vlrota).ascurrency      := 0;
  DataSet.fieldbyname(_qtpeso).ascurrency      := 0;
  DataSet.fieldbyname(_qtentrega).ascurrency   := 0;
  DataSet.fieldbyname(_vlpeso).ascurrency      := 0;
  DataSet.fieldbyname(_DTEMISSAO).AsDateTime   := dtbanco;
  DataSet.fieldbyname(_CDSTEMBARQUE).AsInteger  := qregistro.Codigo_status_novo(tbl);
  DataSet.fieldbyname(_DTEMISSAO).FocusControl;
end;

procedure TfrmEmbarque.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmEmbarque.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmEmbarque.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmEmbarque.cdsBeforePost(DataSet: TDataSet);
begin
  set_tela_objeto;
  embarque.check_campo_obrigatorio;
  registro.set_update(cds);
end;

procedure TfrmEmbarque.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmEmbarque.FormCreate(Sender: TObject);
begin
  tbl   := _embarque;
  exibe := maiuscula(_Embarque);
  GeraMenuRelatorio ('', btnimprimir, 63, cds, _embarque);
  embarque := tembarque.create;
  abrirtabela;
  registro := tregistro.create(self, tbl, exibe, 'o', cds, dts, edtcodigo);
end;

procedure TfrmEmbarque.cbxcdstembarqueEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_stembarque);
end;

procedure TfrmEmbarque.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure TfrmEmbarque.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmEmbarque.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure TfrmEmbarque.abrirtabela;
begin
  cbxcdstembarque.Properties.ListSource := abrir_tabela(_stembarque);
  cbxcdtpembarque.Properties.ListSource := abrir_tabela(_tpembarque);
  TcxLookupComboBoxProperties(tbvCDREMETENTE.Properties).ListSource    := abrir_tabela(_cliente);
  TcxLookupComboBoxProperties(tbvCDDESTINATARIO.Properties).ListSource := abrir_tabela(_cliente);
  cbxcdrota.Properties.ListSource := abrir_tabela(_rota);
end;

procedure TfrmEmbarque.edtcdtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdtransportadoraPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmEmbarque.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmEmbarque.edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : LargeInt;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := Localizartransportadora;
  if cd <> 0 then
  begin
    edtcdtransportadora.Text := cd.tostring;
    edtcdtransportadora.ValidateEdit;
    cds.FieldByName(_CDtransportadora).AsLargeInt := cd;
  end
end;

procedure TfrmEmbarque.edtcdtransportadoraPropertiesEditValueChanged(Sender: TObject);
begin
  if (cds.State = dsedit) or (cds.State = dsinsert) then
  begin
    lblNMtransportadora.Hint := embarque.transportadora.hintRzsocial;
  end;
end;

procedure TfrmEmbarque.cbxcdrotaEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_rota);
end;

procedure TfrmEmbarque.cdsAfterScroll(DataSet: TDataSet);
begin
  if DataSet.State = dsinsert then
  begin
    Exit;
  end;
  embarque.Select(DataSet);
  embarque.Itembarque.Ler(cdsdetail);
  embarque.tpembarque.Select(embarque.cdtpembarque);
  setrecord(embarque.cdtpembarque);
  embarque.transportadora.Select(embarque.cdtransportadora);
  lblnmtransportadora.Hint  := embarque.transportadora.hintRzsocial;
  actgerarrpa.visible  := (embarque.cdrpa  = 0) and (cds.recordcount>0) and (cdsdetail.recordcount>0) and embarque.itembarque.boctegerado;
  actgerarmdfe.visible := (embarque.cdmdfe = 0) and (cds.recordcount>0) and (cdsdetail.recordcount>0) and embarque.itembarque.boctegerado;
  actgerarctetodos.visible  := (not actsalvar.enabled) and (cdsdetail.recordcount>0) and embarque.Itembarque.boctesemgerar;
end;

procedure TfrmEmbarque.actadicionarxmlExecute(Sender: TObject);
var
  filename : string;
  acbr : TAcbr;
begin
  if cdsdetail.ReadOnly then
  begin
    Exit;
  end;
  if not QRotinas.getfilename(filename) then
  begin
    Exit;
  end;
  acbr := TAcbr.Create;
  try
    Acbr.loadnfe(filename);
    if registro.existe_campo_repetido(cdsdetail, _nuchavenfe, acbr.nuchavenfe) then
    begin
      MessageDlg('Nota já importada.', mtInformation, [mbOK], 0);
      Abort;
    end;
    if acbr.cdemitente = '' then
    begin
      MessageDlg('Remetente '+acbr.rzsocialemitente+' não foi encontrado na base de dados.', mtInformation, [mbok], 0);
      Abort;
    end;
    if acbr.cddestinatario = '' then
    begin
      MessageDlg('Remetente '+acbr.rzsocialdestinatario+' não foi encontrado na base de dados.', mtInformation, [mbok], 0);
      Abort;
    end;
    cdsdetail.Insert;
    cdsdetail.FieldByName(_NUCHAVENFE).AsString     := acbr.nuchavenfe;
    cdsdetail.FieldByName(_NUSERIE).AsInteger       := acbr.nuserie;
    cdsdetail.FieldByName(_VLTOTAL).AsCurrency      := acbr.vltotal;
    cdsdetail.FieldByName(_PSLIQUIDO).AsFloat       := acbr.psliquido;
    cdsdetail.FieldByName(_PSBRUTO).AsFloat         := acbr.psbruto;
    cdsdetail.FieldByName(_NUNOTA).AsInteger        := acbr.nunota;
    cdsdetail.FieldByName(_DTEMISSAO).AsDateTime    := acbr.dtemissao;
    cdsdetail.FieldByName(_VLFRETE).AsCurrency      := acbr.vlfrete;
    cdsdetail.FieldByName(_cdremetente).AsString    := acbr.cdemitente;
    cdsdetail.FieldByName(_cddestinatario).AsString := acbr.cddestinatario;
    cdsdetail.FieldByName(_dsxml).asstring          := acbr.dsxml;
    cdsdetail.Post;
  finally
    FreeAndNil(acbr);
  end;
end;

procedure TfrmEmbarque.actgerarmdfeExecute(Sender: TObject);
begin
  if cds.fieldbyname(_cdmdfe).isnull and cte_emitido then
  begin
    frmmain.NovoMDFE(cds.fieldbyname(_cdembarque).AsString);
  end;
end;

procedure TfrmEmbarque.actgerarrpaExecute(Sender: TObject);
begin
  if cds.fieldbyname(_cdrpa).isnull and cte_emitido then
  begin
    frmmain.NovoRPA(cds.fieldbyname(_cdembarque).AsString);
  end;
end;

procedure TfrmEmbarque.actgerarcteExecute(Sender: TObject);
begin
  if cdsdetail.Active and cdsdetail.fieldbyname(_cdcte).isnull and (cdsdetail.RecordCount > 0) then
  begin
    frmmain.NovoCTE(cdsdetail.fieldbyname(_cditembarque).AsString);
  end;
end;

procedure TfrmEmbarque.edtcdtransportadoraPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if displayvalue = '' then
  begin
    exit;
  end;
  embarque.cdtransportadora := DisplayValue;
  if embarque.cdtransportadora <> displayvalue then
  begin
    error     := true;
    ErrorText := embarque.msgerro;
  end
  else
  begin
    lblnmtransportadora.Field.AsString := embarque.transportadora.nmtransportadora;
    lblnmtransportadora.Hint           := embarque.transportadora.hintRzsocial;
    cdscdveiculo.asinteger             := embarque.cdveiculo;
  end;
end;

procedure TfrmEmbarque.setrecord(codigo: integer);
begin
  embarque.tpembarque.Select(codigo);
end;

procedure TfrmEmbarque.cbxcdtpembarqueEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tpembarque);
end;

procedure TfrmEmbarque.cbxcdtpembarquePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue <> '' then
  begin
    setrecord(cbxcdtpembarque.EditValue);
  end;
end;

procedure TfrmEmbarque.edtvlpesoKeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure TfrmEmbarque.set_vlfretepeso;
begin
  embarque.cdrota                          := cds.fieldbyname(_cdrota).asinteger;
  cds.FieldByName(_qtentrega).AsCurrency   := embarque.qtentrega;
  cds.FieldByName(_VLrota).AsCurrency      := embarque.get_vlfretepeso;
  cds.FieldByName(_VLFRETEpeso).AsCurrency := cds.FieldByName(_vlrota).AsCurrency;
  cds.FieldByName(_VLFRETE).AsCurrency     := embarque.Itembarque.get_vlfrete;
  cds.FieldByName(_qtpeso).AsFloat         := embarque.itembarque.get_qtpeso;
end;

procedure TfrmEmbarque.cdsVLFRETEPESOValidate(Sender: TField);
var
  texto, cdusuariol, dsjustificativa : string;
begin
  if sender.AsCurrency > sender.DataSet.FieldByName(_vlrota).AsCurrency then
  begin
    texto := 'Favor justificar a alteração de valor do Frete/Peso maior do que o valor da Rota.';
    if assinaturadigital_com_justificativa(texto, cdusuariol, dsjustificativa) then
    begin
      cdsCDUSUARIOL.AsString    := cdusuariol;
      cdsCDCOMPUTADORL.asstring := vgcdcomputador;
      cdsTSLIBERADO.AsDateTime  := tsBanco;
      cdsDSLIBERADO.AsString    := dsjustificativa;
    end
    else
    begin
      sender.focuscontrol;
      abort;
    end;
  end;
  cds.FieldByName(_VLpeso).AsCurrency := cds.FieldByName(_VLFRETEpeso).AsCurrency * cds.FieldByName(_qtpeso).AsFloat;
end;

procedure TfrmEmbarque.set_vlavgfretepeso(Sender: TField);
begin
  cds.FieldByName(_vlavgfretepeso).AsCurrency := 0;
  if cds.FieldByName(_qtpeso).AsFloat <> 0 then
  begin
    cds.FieldByName(_vlavgfretepeso).AsCurrency := cds.FieldByName(_vlfrete).AsCurrency / cds.FieldByName(_qtpeso).AsFloat;
  end;
  cds.FieldByName(_VLpeso).AsCurrency := cds.FieldByName(_VLFRETEpeso).AsCurrency * cds.FieldByName(_qtpeso).AsFloat;
end;

procedure TfrmEmbarque.cdsdetailNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName(_vlpedagio).AsCurrency := 0;
end;

procedure TfrmEmbarque.cdsCDROTAValidate(Sender: TField);
begin
  set_vlfretepeso;
end;

procedure TfrmEmbarque.edtcdtransportadoraExit(Sender: TObject);
begin
  if (cds.State <> dsInsert) and (cds.State <> dsEdit) then
  begin
    Exit;
  end;
  if edtcdtransportadora.text = '' then
  begin
    cds.fieldbyname(_nmtransportadora).clear;
  end;
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

function TfrmEmbarque.cte_emitido: Boolean;
var
  r : Integer;
begin
  r := 0;
  result := cdsdetail.Active and (cdsdetail.RecordCount > 0);
  if not result then
  begin
    Exit;
  end;
  cdsdetail.EnableControls;
  try
    r := cdsdetail.recno;
    cdsdetail.First;
    while not cdsdetail.Eof do
    begin
      if cdsdetail.FieldByName(_cdcte).IsNull then
      begin
        result := False;
        Break;
      end;
      cdsdetail.Next;
    end;
  finally
    cdsdetail.recno := r;
    cdsdetail.DisableControls;
  end;
end;

procedure TfrmEmbarque.set_tela_objeto;
begin
  embarque.cdtpembarque     := cds.fieldbyname(_cdtpembarque).AsInteger;
  embarque.cdstembarque     := cds.fieldbyname(_cdstembarque).AsInteger;
  embarque.cdtransportadora := cds.fieldbyname(_cdtransportadora).ASLargeint;
  embarque.dtemissao        := cds.fieldbyname(_dtemissao).AsDateTime;
end;

procedure TfrmEmbarque.cdsdetailAfterPost(DataSet: TDataSet);
begin
  set_vlfretepeso;
end;

procedure TfrmEmbarque.cdsdetailAfterDelete(DataSet: TDataSet);
begin
  set_vlfretepeso;
end;

procedure TfrmEmbarque.cdsdetailBeforeDelete(DataSet: TDataSet);
begin
  embarque.itembarque.excluir(dataset.fieldbyname(_cditembarque).asinteger);
end;

procedure TfrmEmbarque.actabrirtransportadoraExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cds);
end;

procedure TfrmEmbarque.actabrirrotaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cds);
end;

procedure TfrmEmbarque.lblNMTRANSPORTADORADblClick(Sender: TObject);
begin
  actAbrirtransportadora.onExecute(actAbrirtransportadora);
end;

procedure TfrmEmbarque.lblrotaDblClick(Sender: TObject);
begin
  actAbrirrota.onExecute(actAbrirrota);
end;

procedure TfrmEmbarque.cdsdetailAfterScroll(DataSet: TDataSet);
begin
  actgerarcte.visible := (not actsalvar.enabled) and cdsdetail.fieldbyname(_cdcte).isnull and (cdsdetail.recordcount>0);
end;

procedure TfrmEmbarque.actgerarctetodosExecute(Sender: TObject);
begin
  if cdsdetail.Active and (cdsdetail.RecordCount > 0) then
  begin
    frmmain.Gerar_CTE(cdsdetail.fieldbyname(_cdembarque).AsString);
  end;
end;

procedure TfrmEmbarque.actabrircteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cdsdetail);
end;

procedure TfrmEmbarque.tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdcte then
  begin
    actabrircteExecute(actabrircte);
  end;
end;

end.
