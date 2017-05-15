unit uprofissional;

interface

uses
  System.Actions, System.UITypes,
  Mask, Windows, Buttons, ExtCtrls, Controls, ComCtrls, sysutils, dialogs, Menus, ToolWin,
  Classes, ActnList, StdCtrls, forms,
  sqlexpr, FMTBcd, DB, DBClient, Provider, Grids,
  urotinas, uregistroib, uregistro, ulocalizar, uconstantes,
  udatahora, uexportarexcel, ustrings,
  classeempresa, classeconsiste, classeusuario, classegerar,
  classeRegistro, classeregistrainformacao, classeform,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, cxPC, cxControls, dxBar, cxClasses, cxGraphics,
  cxLookAndFeels, cxLabel, cxPCdxBarPopupMenu, cxTextEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxDBLookupComboBox, cxCalendar, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxCalc,
  cxInplaceContainer, cxVGrid, cxDBVGrid, cxCheckGroup, cxCheckBox, cxMemo,
  cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxMaskEdit,
  cxTimeEdit, DBCtrls, cxNavigator, uMenuRelatorio,
  dxBarBuiltInMenu;

type
  TfrmProfissional = class(TForm)
    act: TActionList;
    actNovo: TAction;
    actAbrir: TAction;
    actSalvar: TAction;
    actImprimir: TAction;
    actExcluir: TAction;
    actCancelar: TAction;
    actEditar: TAction;
    actAssinatura: TAction;
    actFoto: TAction;
    actPrimeiro: TAction;
    actAnterior: TAction;
    actProximo: TAction;
    actUltimo: TAction;
    actfechar: TAction;
    pgc: TcxPageControl;
    tbscadastro: TcxTabSheet;
    tbsobservacao: TcxTabSheet;
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
    btnimprimir: TdxBarLargeButton;
    dxbrsprtr3: TdxBarSeparator;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    memdsobservacao: TcxDBMemo;
    gbxComercial: TcxGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label23: TLabel;
    edtnufone2: TcxDBMaskEdit;
    edtnufone1: TcxDBMaskEdit;
    edtnucxpostal: TcxDBMaskEdit;
    edtnucep: TcxDBMaskEdit;
    edtNmbairro: TcxDBTextEdit;
    edtdscomplemento: TcxDBTextEdit;
    edtdsnumero: TcxDBTextEdit;
    edtDsEndereco: TcxDBTextEdit;
    cbxcduf: TcxDBLookupComboBox;
    cbxcdmunicipio: TcxDBLookupComboBox;
    edtnufone3: TcxDBMaskEdit;
    cxGroupBox1: TcxGroupBox;
    Label27: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label25: TLabel;
    Label28: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    edtnmconjuge: TcxDBTextEdit;
    edtdtnascimento: TcxDBDateEdit;
    cbxcdestcivil: TcxDBComboBox;
    cbxcdsexo: TcxDBComboBox;
    edtnmpai: TcxDBTextEdit;
    edtnmmae: TcxDBTextEdit;
    edtnuidentid: TcxDBTextEdit;
    edtnucpf: TcxDBMaskEdit;
    cxGroupBox2: TcxGroupBox;
    Label38: TLabel;
    Label58: TLabel;
    Label60: TLabel;
    lblfuncao: TLabel;
    edthomepage: TcxDBTextEdit;
    edtemail: TcxDBTextEdit;
    cbxcdstfuncionario: TcxDBLookupComboBox;
    cbxcdespecialidade: TcxDBLookupComboBox;
    pumimprimir: TdxBarPopupMenu;
    sdsCDEMPRESA: TFMTBCDField;
    sdsCDPROFISSIONAL: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsCDESPECIALIDADE: TIntegerField;
    sdsCDMUNICIPIO: TIntegerField;
    sdsCDUF: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsNMPROFISSIONAL: TStringField;
    sdsDSENDERECO: TStringField;
    sdsDSNUMERO: TStringField;
    sdsDSCOMPLEMENTO: TStringField;
    sdsNMBAIRRO: TStringField;
    sdsNUCEP: TStringField;
    sdsNUFONE1: TStringField;
    sdsNUFONE2: TStringField;
    sdsNUFONE3: TStringField;
    sdsNUFAX: TStringField;
    sdsEMAIL: TStringField;
    sdsCDSEXO: TStringField;
    sdsDTNASCIMENTO: TDateField;
    sdsCDESTCIVIL: TStringField;
    sdsNMCONJUGE: TStringField;
    sdsNMMAE: TStringField;
    sdsNMPAI: TStringField;
    sdsNUIDENTID: TStringField;
    sdsNUCPF: TStringField;
    sdsHOMEPAGE: TStringField;
    sdsDSOBSERVACAO: TBlobField;
    cdsCDEMPRESA: TFMTBCDField;
    cdsCDPROFISSIONAL: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsCDESPECIALIDADE: TIntegerField;
    cdsCDMUNICIPIO: TIntegerField;
    cdsCDUF: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsNMPROFISSIONAL: TStringField;
    cdsDSENDERECO: TStringField;
    cdsDSNUMERO: TStringField;
    cdsDSCOMPLEMENTO: TStringField;
    cdsNMBAIRRO: TStringField;
    cdsNUCEP: TStringField;
    cdsNUFONE1: TStringField;
    cdsNUFONE2: TStringField;
    cdsNUFONE3: TStringField;
    cdsNUFAX: TStringField;
    cdsEMAIL: TStringField;
    cdsCDSEXO: TStringField;
    cdsDTNASCIMENTO: TDateField;
    cdsCDESTCIVIL: TStringField;
    cdsNMCONJUGE: TStringField;
    cdsNMMAE: TStringField;
    cdsNMPAI: TStringField;
    cdsNUIDENTID: TStringField;
    cdsNUCPF: TStringField;
    cdsHOMEPAGE: TStringField;
    cdsDSOBSERVACAO: TBlobField;
    pnl1: TPanel;
    pnl: TcxLabel;
    Label12: TLabel;
    edtcodigo: TcxTextEdit;
    Label3: TLabel;
    edtnome: TcxDBTextEdit;
    sdsNUREGISTRO: TStringField;
    cdsNUREGISTRO: TStringField;
    lblnuregistro: TLabel;
    edtnuregistro: TcxDBTextEdit;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actfecharExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure dtsStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbxcdufExit(Sender: TObject);
    procedure cbxcdespecialidadeEnter(Sender: TObject);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure actImprimirExecute(Sender: TObject);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure cdsCDUFValidate(Sender: TField);
    procedure cdsNMPROFISSIONALValidate(Sender: TField);
    procedure cdsDTNASCIMENTOValidate(Sender: TField);
    procedure cdsNUFONE1Validate(Sender: TField);
    procedure cdsNUFONE2Validate(Sender: TField);
    procedure cdsNUFONE3Validate(Sender: TField);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    procedure set_mascara_numero_fone_de_acordo_com_estado;
  public  { Public declarations }
    registro : TRegistro;
    function Abrir(codigo:Integer):boolean;
  end;

const
  tbl      = _profissional;
  exibe    = 'Profissional';
  artigoI  = 'o';
var
  frmProfissional: TfrmProfissional;

implementation

uses uDtmMain, uMain;

{$R *.DFM}

procedure TfrmProfissional.set_mascara_numero_fone_de_acordo_com_estado;
begin
  if BooleandoCodigo(_uf, cdsCDUF.AsString, _bodigito9) then
  begin
    edtnufone1.Properties.EditMask := _99_99999_9999;
    edtnufone2.Properties.EditMask := _99_99999_9999;
    edtnufone3.Properties.EditMask := _99_99999_9999;
  end
  else
  begin
    edtnufone1.Properties.EditMask := _99_9999_9999;
    edtnufone2.Properties.EditMask := _99_9999_9999;
    edtnufone3.Properties.EditMask := _99_9999_9999;
  end;
end;

function TfrmProfissional.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmProfissional.actAbrirExecute(Sender: TObject);
begin
  registro.Abrir;
end;

procedure TfrmProfissional.actNovoExecute(Sender: TObject);
begin
  if registro.Novo(sender) then
  begin
    cbxcdufExit(cbxcduf);
  end;
end;

procedure TfrmProfissional.actSalvarExecute(Sender: TObject);
begin
  registro.Salvar;
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
end;

procedure TfrmProfissional.actExcluirExecute(Sender: TObject);
begin
  registro.Excluir;
end;

procedure TfrmProfissional.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmProfissional.actCancelarExecute(Sender: TObject);
begin
  registro.Cancelar;
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
end;

procedure TfrmProfissional.actEditarExecute(Sender: TObject);
begin
  registro.Editar;
end;

procedure TfrmProfissional.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.CodigoKeyPress(Sender, Key, actNovo.Enabled);
end;

procedure TfrmProfissional.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmProfissional.FormShow(Sender: TObject);
begin
  pnl.caption := exibe;
  edtCodigo.SetFocus;
end;

procedure TfrmProfissional.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure TfrmProfissional.actPrimeiroExecute(Sender: TObject);
begin
  registro.Primeiro;
end;

procedure TfrmProfissional.actAnteriorExecute(Sender: TObject);
begin
  registro.Anterior;
end;

procedure TfrmProfissional.actProximoExecute(Sender: TObject);
begin
  registro.Proximo;
end;

procedure TfrmProfissional.actUltimoExecute(Sender: TObject);
begin
  registro.Ultimo;
end;

procedure TfrmProfissional.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure TfrmProfissional.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmProfissional.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(lowercase(copy(self.Name, 4, length(self.Name) - 3)), frmmain.tlbnew);
end;

procedure TfrmProfissional.FormDestroy(Sender: TObject);
begin
  registro.Destroy;
end;

procedure TfrmProfissional.cdsAfterScroll(DataSet: TDataSet);
begin
  set_mascara_numero_fone_de_acordo_com_estado;
end;

procedure TfrmProfissional.cdsBeforePost(DataSet: TDataSet);
begin
  ConsisteCPF (dataset, tbl, exibe, True);
  registro.set_update(cds);
end;

procedure TfrmProfissional.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure TfrmProfissional.FormCreate(Sender: TObject);
begin
  cbxcduf.Properties.ListSource            := abrir_tabela(_uf);
  cbxcdmunicipio.Properties.ListSource     := abrir_tabela(_municipio);
  cbxcdespecialidade.Properties.ListSource := abrir_tabela(_especialidade);
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
  //GeraMenuRelatorio (_printer, btnimprimir, 57, cds, _profissional);
  GeraMenuRelatorio ('', btnimprimir, 57, cds, _profissional);
end;

procedure TfrmProfissional.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmProfissional.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmProfissional.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmProfissional.cbxcdufExit(Sender: TObject);
begin
  if not (sender = nil) then
  begin
    colorexit(Sender);
  end;
  if ((cds.State = dsinsert) or (cds.State = dsedit)) and cbxcduf.DataBinding.IsDataAvailable then
  begin
    dtmMain.Municipio_Filtro_(cbxcduf.DataBinding.Field.AsString, TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet));
  end;
end;

procedure TfrmProfissional.cbxcdespecialidadeEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_especialidade);
end;

procedure TfrmProfissional.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure TfrmProfissional.cdsCDUFValidate(Sender: TField);
begin
  set_mascara_numero_fone_de_acordo_com_estado;
end;

procedure TfrmProfissional.cdsNMPROFISSIONALValidate(Sender: TField);
begin
  if sender.IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_nome]), mtinformation, [mbok], 0);
    sender.FocusControl;
    Abort;
  end;
end;

procedure TfrmProfissional.cdsDTNASCIMENTOValidate(Sender: TField);
begin
  registro.consistir_data_nascimento(Sender);
end;

procedure TfrmProfissional.cdsNUFONE1Validate(Sender: TField);
begin
  registro.check_numero_telefone(Sender);
end;

procedure TfrmProfissional.cdsNUFONE2Validate(Sender: TField);
begin
  registro.check_numero_telefone(Sender);
end;

procedure TfrmProfissional.cdsNUFONE3Validate(Sender: TField);
begin
  registro.check_numero_telefone(Sender);
end;

end.
