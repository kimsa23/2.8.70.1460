unit uregrast;

interface

uses
  System.Actions, System.UITypes,
  forms, Windows, dialogs, graphics, Mask, Buttons, Controls, ToolWin, ExtCtrls, types,
  sysutils, StdCtrls, ComCtrls, Spin, Classes, ActnList, Menus,
  Grids, sqlexpr,
  uexportarexcel, udatahora, uregistro, urotinas, uconstantes,
  unumero, ustrings,
  classeconsiste, classeexecutasql, classeusuario, classegerar,
  classeretornasql, classecontrato, classeregistro, classeregistrainformacao, classeform,
  cxLookAndFeelPainters, cxControls,
  cxContainer, cxEdit, cxGroupBox, cxButtons, dxBar, cxClasses,
  cxGraphics, cxLookAndFeels, cxLabel, cxPC, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSpinEdit, cxDBEdit,
  cxMaskEdit, cxCalendar, cxTextEdit, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxTimeEdit, DBCtrls, cxButtonEdit, DBClient, Provider, cxCalc,
  cxCurrencyEdit, cxPCdxBarPopupMenu, cxGridBandedTableView,
  cxGridDBBandedTableView, cxCheckBox, cxSplitter, cxRadioGroup, cxNavigator,
  uMenuRelatorio, Data.FMTBcd;

type
  TfrmRegrast = class(TForm)
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
    Panel1: TPanel;
    Label1: TLabel;
    pnl: TcxLabel;
    Label5: TLabel;
    edtnome: TcxDBTextEdit;
    edtcodigo: TcxTextEdit;
    sds: TSQLDataSet;
    sdsdetail: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    dts1: TDataSource;
    cdsdetail: TClientDataSet;
    dtsdetail: TDataSource;
    grd: TcxGrid;
    grdLevel1: TcxGridLevel;
    sdsCDREGRAST: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsNMREGRAST: TStringField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    cdsCDREGRAST: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsNMREGRAST: TStringField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    sdsdetailCDITREGRAST: TIntegerField;
    sdsdetailCDREGRAST: TIntegerField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailCDCFOP: TIntegerField;
    sdsdetailNUSTICMS: TStringField;
    sdsdetailNUSTIPI: TStringField;
    sdsdetailNUSTPIS: TStringField;
    sdsdetailNUSTCOFINS: TStringField;
    sdsdetailALICMS: TFloatField;
    sdsdetailALIPI: TFloatField;
    sdsdetailALPIS: TFloatField;
    sdsdetailALCOFINS: TFloatField;
    sdsdetailBORECUPERAICMS: TStringField;
    sdsdetailBORECUPERAIPI: TStringField;
    sdsdetailBORECUPERAPIS: TStringField;
    sdsdetailBORECUPERACOFINS: TStringField;
    cdsdetailCDITREGRAST: TIntegerField;
    cdsdetailCDREGRAST: TIntegerField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailCDCFOP: TIntegerField;
    cdsdetailNUSTICMS: TStringField;
    cdsdetailNUSTIPI: TStringField;
    cdsdetailNUSTPIS: TStringField;
    cdsdetailNUSTCOFINS: TStringField;
    cdsdetailALICMS: TFloatField;
    cdsdetailALIPI: TFloatField;
    cdsdetailALPIS: TFloatField;
    cdsdetailALCOFINS: TFloatField;
    cdsdetailBORECUPERAICMS: TStringField;
    cdsdetailBORECUPERAIPI: TStringField;
    cdsdetailBORECUPERAPIS: TStringField;
    cdsdetailBORECUPERACOFINS: TStringField;
    cdssdsdetail: TDataSetField;
    tbv: TcxGridDBBandedTableView;
    tbvCDCFOP: TcxGridDBBandedColumn;
    tbvNUSTICMS: TcxGridDBBandedColumn;
    tbvNUSTIPI: TcxGridDBBandedColumn;
    tbvNUSTPIS: TcxGridDBBandedColumn;
    tbvNUSTCOFINS: TcxGridDBBandedColumn;
    tbvALICMS: TcxGridDBBandedColumn;
    tbvALIPI: TcxGridDBBandedColumn;
    tbvALPIS: TcxGridDBBandedColumn;
    tbvALCOFINS: TcxGridDBBandedColumn;
    tbvTPREGIME: TcxGridDBBandedColumn;
    tbvBORECUPERAICMS: TcxGridDBBandedColumn;
    tbvBORECUPERAIPI: TcxGridDBBandedColumn;
    tbvBORECUPERAPIS: TcxGridDBBandedColumn;
    tbvBORECUPERACOFINS: TcxGridDBBandedColumn;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    grditregrastmvaDBTableView1: TcxGridDBTableView;
    grditregrastmvaLevel1: TcxGridLevel;
    grditregrastmva: TcxGrid;
    cxSplitter1: TcxSplitter;
    sdsitregrastmva: TSQLDataSet;
    cdsitregrastmva: TClientDataSet;
    dtsitregrastmva: TDataSource;
    sdsitregrastmvaCDITREGRASTMVA: TIntegerField;
    sdsitregrastmvaCDITREGRAST: TIntegerField;
    sdsitregrastmvaCDUSUARIOI: TIntegerField;
    sdsitregrastmvaCDUSUARIOA: TIntegerField;
    sdsitregrastmvaCDCOMPUTADORI: TIntegerField;
    sdsitregrastmvaCDCOMPUTADORA: TIntegerField;
    sdsitregrastmvaTSINCLUSAO: TSQLTimeStampField;
    sdsitregrastmvaTSALTERACAO: TSQLTimeStampField;
    sdsitregrastmvaCDUF: TIntegerField;
    sdsitregrastmvaALICMSSUBTRIB: TFloatField;
    sdsitregrastmvaALMVA: TFloatField;
    dts2: TDataSource;
    cdsdetailsdsitregrastmva: TDataSetField;
    cdsitregrastmvaCDITREGRASTMVA: TIntegerField;
    cdsitregrastmvaCDITREGRAST: TIntegerField;
    cdsitregrastmvaCDUSUARIOI: TIntegerField;
    cdsitregrastmvaCDUSUARIOA: TIntegerField;
    cdsitregrastmvaCDCOMPUTADORI: TIntegerField;
    cdsitregrastmvaCDCOMPUTADORA: TIntegerField;
    cdsitregrastmvaTSINCLUSAO: TSQLTimeStampField;
    cdsitregrastmvaTSALTERACAO: TSQLTimeStampField;
    cdsitregrastmvaCDUF: TIntegerField;
    cdsitregrastmvaALICMSSUBTRIB: TFloatField;
    cdsitregrastmvaALMVA: TFloatField;
    grditregrastmvaDBTableView1CDUF: TcxGridDBColumn;
    grditregrastmvaDBTableView1ALICMSSUBTRIB: TcxGridDBColumn;
    grditregrastmvaDBTableView1ALMVA: TcxGridDBColumn;
    sdsdetailTPREGIME: TStringField;
    cdsdetailTPREGIME: TStringField;
    btnimprimir: TdxBarLargeButton;
    actcopiar: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    pumimprimir: TdxBarPopupMenu;
    tbvALICMSRED: TcxGridDBBandedColumn;
    sdsdetailALICMSRED: TFloatField;
    cdsdetailALICMSRED: TFloatField;
    sdsCDEMPRESA: TLargeintField;
    sdsdetailCDEMPRESA: TLargeintField;
    sdsitregrastmvaCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsdetailCDEMPRESA: TLargeintField;
    cdsitregrastmvaCDEMPRESA: TLargeintField;
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
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure actfecharExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsitregrastmvaNewRecord(DataSet: TDataSet);
    procedure cdsitregrastmvaBeforePost(DataSet: TDataSet);
    procedure actImprimirExecute(Sender: TObject);
    procedure actcopiarExecute(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private
    procedure AbrirTabelas;      { Private declarations }
  public  { Public declarations }
    registro : TRegistro;
    function  Abrir(codigo:integer):boolean;
  end;

const
  tbl      = _regrast;
  exibe    = 'Regra Situação Tributária';
  artigoI  = 'o';
var
  frmRegrast: TfrmRegrast;

implementation

uses uDtmMain, uMain, classeempresa, classecopiarregistro;

{$R *.DFM}

function TfrmRegrast.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmRegrast.AbrirTabelas;
begin
  TcxLookupComboBoxProperties(grditregrastmvaDBTableView1CDUF.Properties).ListSource := abrir_tabela(_uf);
  TcxLookupComboBoxProperties(tbvCDCFOP.Properties).ListSource     := abrir_tabela(_cfop);
  TcxLookupComboBoxProperties(tbvNUSTICMS.Properties).ListSource   := abrir_tabela(_sticms);
  TcxLookupComboBoxProperties(tbvNUSTIPI.Properties).ListSource    := abrir_tabela(_stipi);
  TcxLookupComboBoxProperties(tbvNUSTPIS.Properties).ListSource    := abrir_tabela(_stpis);
  TcxLookupComboBoxProperties(tbvNUSTCOFINS.Properties).ListSource := abrir_tabela(_stcofins);
end;

procedure TfrmRegrast.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmRegrast.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure TfrmRegrast.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmRegrast.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmRegrast.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.caption := exibe;
  edtCodigo.SetFocus;
end;

procedure TfrmRegrast.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRegrast.FormDestroy(Sender: TObject);
begin
  registro.Destroy;
end;

procedure TfrmRegrast.cdsdetailBeforePost(DataSet: TDataSet);
begin
  if cdsdetailcdcfop.asstring = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_CFOP]), mtinformation, [mbok], 0);
    cdsdetailcdcfop.focuscontrol;
    abort;
  end;
  if cdsdetailnusticms.asstring = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Situacao+' '+__Tributaria+' '+_ICMS]), mtinformation, [mbok], 0);
    cdsdetailnusticms.focuscontrol;
    abort;
  end;
  if cdsdetailalicms.asstring = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Aliquota+' '+_ICMS]), mtinformation, [mbok], 0);
    cdsdetailalicms.focuscontrol;
    abort;
  end;
  if cdsdetailborecuperaicms.asstring = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Recupera+' '+_ICMS]), mtinformation, [mbok], 0);
    cdsdetailborecuperaicms.focuscontrol;
    abort;
  end;
  if cdsdetailnustipi.asstring = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__situacao+' '+__Tributaria+' '+_IPI]), mtinformation, [mbok], 0);
    cdsdetailnustipi.focuscontrol;
    abort;
  end;
  if cdsdetailalipi.asstring = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Aliquota+' '+_IPI]), mtinformation, [mbok], 0);
    cdsdetailalipi.focuscontrol;
    abort;
  end;
  if cdsdetailborecuperaipi.asstring = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Recupera+' '+_IPI]), mtinformation, [mbok], 0);
    cdsdetailborecuperaipi.focuscontrol;
    abort;
  end;
  if cdsdetailnustpis.asstring = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__situacao+' '+__Tributaria+' '+_PIS]), mtinformation, [mbok], 0);
    cdsdetailnustpis.focuscontrol;
    abort;
  end;
  if cdsdetailalpis.asstring = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Aliquota+' '+_do+' '+_PIS]), mtinformation, [mbok], 0);
    cdsdetailalpis.focuscontrol;
    abort;
  end;
  if cdsdetailborecuperapis.asstring = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Recupera+' '+_PIS]), mtinformation, [mbok], 0);
    cdsdetailborecuperapis.focuscontrol;
    abort;
  end;
  if cdsdetailnustcofins.asstring = '' then
  begin
    messagedlg(format(_msg_s_eh_um_campo_obrigatorio, [__situacao+' '+__Tributaria+' '+_COFINS]), mtinformation, [mbok], 0);
    cdsdetailnustcofins.focuscontrol;
    abort;
  end;
  if cdsdetailalcofins.asstring = '' then
  begin
    messagedlg(format(_msg_s_eh_um_campo_obrigatorio, [__Aliquota+' '+_COFINS]), mtinformation, [mbok], 0);
    cdsdetailalcofins.focuscontrol;
    abort;
  end;
  if cdsdetailborecuperacofins.asstring = '' then
  begin
    messagedlg(format(_msg_s_eh_um_campo_obrigatorio, [_Recupera+' '+_COFINS]), mtinformation, [mbok], 0);
    cdsdetailborecuperacofins.focuscontrol;
    abort;
  end;
  if (QRegistro.CampodoCampo(_stpis, _nustpis,  cdsdetailNUSTPIS.Text, _boaliquota, true) = _s) and (cdsdetailALPIS.AsFloat = 0) then
  begin
    MessageDlg('Alíquota do PIS é um campo obrigatório para a Situação Tributária '+cdsdetailNUSTPIS.Text+'.', mtInformation, [mbOK], 0);
    cdsdetailALPIS.FocusControl;
    abort;
  end;
  if (QRegistro.CampodoCampo(_stpis, _nustpis,  cdsdetailNUSTPIS.Text, _boaliquota, true) = _N) and (cdsdetailALPIS.AsFloat <> 0) then
  begin
    MessageDlg('Alíquota do PIS não deve ser preenchida para a Situação Tributária '+cdsdetailNUSTPIS.Text+'.', mtInformation, [mbOK], 0);
    cdsdetailALPIS.FocusControl;
    abort;
  end;
  if (QRegistro.CampodoCampo( _stcofins, _nustcofins, cdsdetailNUSTCOFINS.AsString, _boaliquota, true) = _s) and (cdsdetailALCOFINS.AsFloat = 0) then
  begin
    MessageDlg('Alíquota do COFINS é um campo obrigatório para a Situação Tributária '+cdsdetailNUSTCOFINS.AsString+'.', mtInformation, [mbOK], 0);
    cdsdetailALCOFINS.FocusControl;
    abort;
  end;
  if (QRegistro.CampodoCampo( _stcofins, _nustcofins,  cdsdetailNUSTCOFINS.AsString, _boaliquota, true) = _N) and (cdsdetailALCOFINS.AsFloat <> 0) then
  begin
    MessageDlg('Alíquota do COFINS não deve ser preenchida para a Situação Tributária '+cdsdetailNUSTCOFINS.Text+'.', mtInformation, [mbOK], 0);
    cdsdetailALCOFINS.FocusControl;
    abort;
  end;
  registro.set_update(cdsdetail);
end;

procedure TfrmRegrast.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure TfrmRegrast.actSalvarExecute(Sender: TObject);
begin
  registro.salvar;
end;

procedure TfrmRegrast.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmRegrast.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmRegrast.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure TfrmRegrast.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmRegrast.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmRegrast.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmRegrast.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmRegrast.edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure TfrmRegrast.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure TfrmRegrast.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure TfrmRegrast.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

procedure TfrmRegrast.cdsdetailNewRecord(DataSet: TDataSet);
begin
  cdsdetailcditregrast.AsString      := GerarCodigo(_itregrast);
  cdsdetailBORECUPERAICMS.AsString   := _n;
  cdsdetailBORECUPERAIPI.AsString    := _n;
  cdsdetailBORECUPERAPIS.AsString    := _n;
  cdsdetailBORECUPERACOFINS.AsString := _n;
  cdsdetailALICMS.AsFloat   := 0;
  cdsdetailALIPI.AsFloat    := 0;
  cdsdetailALPIS.AsFloat    := 0;
  cdsdetailALCOFINS.AsFloat := 0;
end;

procedure TfrmRegrast.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmRegrast.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmRegrast.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmRegrast.cdsBeforePost(DataSet: TDataSet);
begin
  if cdsNMREGRAST.AsString = '' then
  begin
    messagedlg(format(_msg_s_eh_um_campo_obrigatorio, [_Nome]), mtinformation, [mbok], 0);
    cdsNMREGRAST.FocusControl;
    abort;
  end;
  registro.set_update(cds);
end;

procedure TfrmRegrast.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmRegrast.FormCreate(Sender: TObject);
begin
  AbrirTabelas;
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
  GeraMenuRelatorio ('', btnimprimir, 39, cds, _regrast+_1);
end;

procedure TfrmRegrast.cdsitregrastmvaNewRecord(DataSet: TDataSet);
begin
  cdsitregrastmvaCDITREGRASTMVA.AsString := GerarCodigo(_itregrastmva);
  cdsitregrastmvaALICMSSUBTRIB.AsFloat   := 0;
  cdsitregrastmvaALMVA.AsFloat           := 0;
end;

procedure TfrmRegrast.cdsitregrastmvaBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsitregrastmva);
end;

procedure TfrmRegrast.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure TfrmRegrast.actcopiarExecute(Sender: TObject);
var
  codigo : integer;
begin
  codigo := Copiar_Registro(_regrast, cds.fieldbyname(_cdregrast).asinteger);
  if codigo <> 0 then
  begin
    Abrir(codigo);
  end;
end;

procedure TfrmRegrast.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

end.
