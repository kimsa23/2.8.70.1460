unit uveiculo;

interface

uses
  System.Actions, System.UITypes,
  forms, Windows, Classes, ActnList, ComCtrls, Grids, StdCtrls, Mask, Buttons, graphics,
  sysutils, ExtCtrls, Controls, ToolWin, dialogs, Menus,
  sqlexpr,
  urotinas, uregistroib, uregistro, uconstantes, uexportarexcel, ustrings,
  classeempresa, classeRegistro, classeconsiste, classegerar, classeform,
  classeproduto, classeregistrainformacao, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxGroupBox, cxPC, cxControls,
  dxBar, cxClasses, cxGraphics, cxLookAndFeels, FMTBcd, DB, DBClient,
  Provider, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxDBEdit,
  cxMemo, cxSpinEdit, cxDBLabel, cxButtonEdit, cxPCdxBarPopupMenu, DBCtrls,
  cxCalc, dxBevel, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCurrencyEdit, cxNavigator,
  dxBarBuiltInMenu;

type
  TfrmVeiculo = class(TForm)
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
    dxbrlrgbtnimprimir: TdxBarLargeButton;
    dxbrsprtr3: TdxBarSeparator;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    actfechar: TAction;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    sdsCDVEICULO: TIntegerField;
    sdsCDTPVEICULO: TIntegerField;
    sdsCDSTVEICULO: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsCDMARCA: TIntegerField;
    sdsCDCOR: TIntegerField;
    sdsCDTPCOMBUSTIVEL: TIntegerField;
    sdsCDUF: TIntegerField;
    sdsCDMUNICIPIO: TIntegerField;
    sdsNUPLACA: TStringField;
    sdsVLKM: TIntegerField;
    sdsDSOBSERVACAO: TBlobField;
    sdsNURNTRC: TStringField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsNUMOTOR: TStringField;
    sdsNUANO: TIntegerField;
    sdsDSMODELO: TStringField;
    sdsNUCHASSI: TStringField;
    sdsNURENAVAM: TStringField;
    sdsNUCILINDRADAS: TFloatField;
    sdsNUHP: TFloatField;
    sdsNUDCR: TStringField;
    sdsNMTRANSPORTADORA: TStringField;
    cdsCDVEICULO: TIntegerField;
    cdsCDTPVEICULO: TIntegerField;
    cdsCDSTVEICULO: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsCDMARCA: TIntegerField;
    cdsCDCOR: TIntegerField;
    cdsCDTPCOMBUSTIVEL: TIntegerField;
    cdsCDUF: TIntegerField;
    cdsCDMUNICIPIO: TIntegerField;
    cdsNUPLACA: TStringField;
    cdsVLKM: TIntegerField;
    cdsDSOBSERVACAO: TBlobField;
    cdsNURNTRC: TStringField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsNUMOTOR: TStringField;
    cdsNUANO: TIntegerField;
    cdsDSMODELO: TStringField;
    cdsNUCHASSI: TStringField;
    cdsNURENAVAM: TStringField;
    cdsNUCILINDRADAS: TFloatField;
    cdsNUHP: TFloatField;
    cdsNUDCR: TStringField;
    cdsNMTRANSPORTADORA: TStringField;
    sdsCDMODELO: TIntegerField;
    cdsCDMODELO: TIntegerField;
    actabrirtransportadora: TAction;
    sdsCDCTETPRODADO: TStringField;
    sdsCDCTETPCARROCERIA: TStringField;
    sdsCDCTETPPROPRIETARIO: TIntegerField;
    sdsPSTARA: TIntegerField;
    sdsPSCAPACIDADE: TIntegerField;
    sdsPSCAPACIDADEM3: TIntegerField;
    sdsCDCTETPVEICULO: TIntegerField;
    cdsCDCTETPRODADO: TStringField;
    cdsCDCTETPCARROCERIA: TStringField;
    cdsCDCTETPPROPRIETARIO: TIntegerField;
    cdsPSTARA: TIntegerField;
    cdsPSCAPACIDADE: TIntegerField;
    cdsPSCAPACIDADEM3: TIntegerField;
    cdsCDCTETPVEICULO: TIntegerField;
    pnl1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Bevel2: TBevel;
    lbl6: TLabel;
    txtnmtransportadora: TDBText;
    pnl: TcxLabel;
    edtcodigo: TcxTextEdit;
    cbxcdstveiculo: TcxDBLookupComboBox;
    cbxcdtpveiculo: TcxDBLookupComboBox;
    edtcdtransportadora: TcxDBButtonEdit;
    pgc: TcxPageControl;
    tbscadastro: TcxTabSheet;
    tbsdsobservacao: TcxTabSheet;
    memdsobservacao: TcxDBMemo;
    Label12: TLabel;
    lblMARCA: TLabel;
    lbl3: TLabel;
    lblcor: TLabel;
    lbl1: TLabel;
    lbl27: TLabel;
    lblmodelo: TLabel;
    lblano: TLabel;
    lbl4: TLabel;
    edtNURNTRC: TcxDBTextEdit;
    edtNURENAVAM: TcxDBTextEdit;
    edtnuplaca: TcxDBTextEdit;
    edtnuchassi: TcxDBTextEdit;
    cbxcdmarca: TcxDBLookupComboBox;
    cbxcdcor: TcxDBLookupComboBox;
    cbxcduf: TcxDBLookupComboBox;
    cbxcdmunicipio: TcxDBLookupComboBox;
    edtnuano: TcxDBSpinEdit;
    cbxcdmodelo: TcxDBLookupComboBox;
    lbl2: TLabel;
    dxBevel1: TdxBevel;
    tbsproduto: TcxTabSheet;
    grdveiculoprodutoDBTableView1: TcxGridDBTableView;
    grdveiculoprodutoLevel1: TcxGridLevel;
    grdveiculoproduto: TcxGrid;
    sdsveiculoproduto: TSQLDataSet;
    cdsveiculoproduto: TClientDataSet;
    dtsveiculoproduto: TDataSource;
    dts1: TDataSource;
    sdsveiculoprodutoCDVEICULOPRODUTO: TIntegerField;
    sdsveiculoprodutoCDVEICULO: TIntegerField;
    sdsveiculoprodutoCDPRODUTO: TIntegerField;
    sdsveiculoprodutoCDUSUARIOI: TIntegerField;
    sdsveiculoprodutoCDUSUARIOA: TIntegerField;
    sdsveiculoprodutoCDCOMPUTADORI: TIntegerField;
    sdsveiculoprodutoCDCOMPUTADORA: TIntegerField;
    sdsveiculoprodutoTSINCLUSAO: TSQLTimeStampField;
    sdsveiculoprodutoTSALTERACAO: TSQLTimeStampField;
    sdsveiculoprodutoQTITEM: TFloatField;
    sdsveiculoprodutoVLUNITARIO: TFMTBCDField;
    sdsveiculoprodutoVLTOTAL: TFMTBCDField;
    sdsveiculoprodutoNMPRODUTO: TStringField;
    cdssdsveiculoproduto: TDataSetField;
    cdsveiculoprodutoCDVEICULOPRODUTO: TIntegerField;
    cdsveiculoprodutoCDVEICULO: TIntegerField;
    cdsveiculoprodutoCDPRODUTO: TIntegerField;
    cdsveiculoprodutoCDUSUARIOI: TIntegerField;
    cdsveiculoprodutoCDUSUARIOA: TIntegerField;
    cdsveiculoprodutoCDCOMPUTADORI: TIntegerField;
    cdsveiculoprodutoCDCOMPUTADORA: TIntegerField;
    cdsveiculoprodutoTSINCLUSAO: TSQLTimeStampField;
    cdsveiculoprodutoTSALTERACAO: TSQLTimeStampField;
    cdsveiculoprodutoQTITEM: TFloatField;
    cdsveiculoprodutoVLUNITARIO: TFMTBCDField;
    cdsveiculoprodutoVLTOTAL: TFMTBCDField;
    cdsveiculoprodutoNMPRODUTO: TStringField;
    grdveiculoprodutoDBTableView1QTITEM: TcxGridDBColumn;
    grdveiculoprodutoDBTableView1VLUNITARIO: TcxGridDBColumn;
    grdveiculoprodutoDBTableView1VLTOTAL: TcxGridDBColumn;
    grdveiculoprodutoDBTableView1NMPRODUTO: TcxGridDBColumn;
    sdsveiculoprodutoCDDIGITADO: TStringField;
    cdsveiculoprodutoCDDIGITADO: TStringField;
    grdveiculoprodutoDBTableView1CDDIGITADO: TcxGridDBColumn;
    gbxcte: TcxGroupBox;
    Label2: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    edtpstara: TcxDBCalcEdit;
    cbxcdctetprodado: TcxDBLookupComboBox;
    cbxcdctetpcarroceria: TcxDBLookupComboBox;
    cbxcdctetpveiculo: TcxDBLookupComboBox;
    cbxcdctetpproprietario: TcxDBLookupComboBox;
    edtpscapacidade: TcxDBCalcEdit;
    edtpscapacidadem3: TcxDBCalcEdit;
    sdsCDCNTCUSTO: TIntegerField;
    cdsCDCNTCUSTO: TIntegerField;
    sdsCDFUNCIONARIO: TIntegerField;
    cdsCDFUNCIONARIO: TIntegerField;
    tbsoutros: TcxTabSheet;
    lblcntcusto: TLabel;
    cbxcdcntcusto: TcxDBLookupComboBox;
    txtnmfuncionario: TDBText;
    edtcdfuncionario: TcxDBButtonEdit;
    lblcdfuncionario: TLabel;
    sdsNMFUNCIONARIO: TStringField;
    cdsNMFUNCIONARIO: TStringField;
    actabrirfuncionario: TAction;
    actabrirproduto: TAction;
    sdsNUEIXOS: TIntegerField;
    cdsNUEIXOS: TIntegerField;
    lblnueixos: TLabel;
    edtnueixos: TcxDBSpinEdit;
    sdsCDEMPRESA: TLargeintField;
    sdsCDTRANSPORTADORA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDTRANSPORTADORA: TLargeintField;
    sdsveiculoprodutoCDEMPRESA: TLargeintField;
    cdsveiculoprodutoCDEMPRESA: TLargeintField;
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
    procedure actfecharExecute(Sender: TObject);
    procedure dtsStateChange(Sender: TObject);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cbxcdufExit(Sender: TObject);
    procedure edtcdtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsCDTRANSPORTADORAValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure actabrirtransportadoraExecute(Sender: TObject);
    procedure txtnmtransportadoraDblClick(Sender: TObject);
    procedure cbxcdstveiculoEnter(Sender: TObject);
    procedure cbxcdtpveiculoEnter(Sender: TObject);
    procedure cbxcdmarcaEnter(Sender: TObject);
    procedure cbxcdcorEnter(Sender: TObject);
    procedure cbxcdmodeloEnter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure grdveiculoprodutoDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsveiculoprodutoCDDIGITADOValidate(Sender: TField);
    procedure cdsveiculoprodutoQTITEMValidate(Sender: TField);
    procedure cdsveiculoprodutoBeforePost(DataSet: TDataSet);
    procedure cdsveiculoprodutoNewRecord(DataSet: TDataSet);
    procedure actabrirfuncionarioExecute(Sender: TObject);
    procedure txtnmfuncionarioDblClick(Sender: TObject);
    procedure edtcdfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actabrirprodutoExecute(Sender: TObject);
    procedure grdveiculoprodutoDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cdsCDFUNCIONARIOValidate(Sender: TField);
    procedure grdveiculoprodutoDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    produto : TProduto;
    procedure check_nuplaca_repetido;
    procedure check_nuchassi_repetido;
  public  { Public declarations }
    registro : TRegistro;
    function Abrir(codigo:integer):boolean;
  end;

var
  frmVeiculo: TfrmVeiculo;

implementation

uses uDtmMain, uMain, ulocalizarTransportadora,
  ulocalizarFuncionario;

{$R *.DFM}

const
  tbl      = _veiculo;
  exibe    = 'Veículo';
  artigoI  = 'o';

function TfrmVeiculo.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmVeiculo.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmVeiculo.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure TfrmVeiculo.actSalvarExecute(Sender: TObject);
begin
  if edtnuplaca.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Numero+' '+_da+' '+_Placa]), mtinformation, [mbok], 0);
    pgc.ActivePageIndex := 0;
    edtnuplaca.SetFocus;
    Abort;
  end;
  check_nuplaca_repetido;
  check_nuchassi_repetido;
  if empresa.faturamento.cte.bo and (edtcdtransportadora.Text = '') then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Codigo+' '+_da+' '+_Transportadora]), mtinformation, [mbok], 0);
    edtcdtransportadora.SetFocus;
    Abort;
  end;
  if registro.salvar then
  begin
    edtcodigo.SetFocus;
  end;
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
end;

procedure TfrmVeiculo.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmVeiculo.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmVeiculo.actCancelarExecute(Sender: TObject);
begin
  if registro.cancelar then
  begin
    registro.dados_atual;
  end;
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
end;

procedure TfrmVeiculo.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure TfrmVeiculo.FormShow(Sender: TObject);
begin
  produto     := TProduto.create     ;
  pnl.Caption := exibe;
  edtCodigo.SetFocus;
end;

procedure TfrmVeiculo.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmVeiculo.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmVeiculo.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmVeiculo.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmVeiculo.edtcodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmVeiculo.edtcodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmVeiculo.edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure TfrmVeiculo.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmVeiculo.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure TfrmVeiculo.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

procedure TfrmVeiculo.FormDestroy(Sender: TObject);
begin
  produto.free;
  registro.destroy;
end;

procedure TfrmVeiculo.cdsBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cds);
end;

procedure TfrmVeiculo.cbxcdufExit(Sender: TObject);
begin
  if not (sender = nil) then
  begin
    colorexit(Sender);
  end;
  if ((cds.State = dsinsert) or (cds.State = dsedit)) and cbxcduf.DataBinding.IsDataAvailable then
  begin
    //dtmMain.Municipio_Filtro_(cbxcduf.DataBinding.Field.AsString, TClientDataSet(cbxcduf.Properties.ListSource.DataSet)); //dtmmain.cdsmunicipio);
    dtmMain.Municipio_Filtro_(cbxcduf.DataBinding.Field.AsString, TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet));
  end;
end;

procedure TfrmVeiculo.edtcdtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdtransportadoraPropertiesButtonClick(sender, 0);
  end;
  nextcontrol(Sender, Key, Shift);
end;

procedure TfrmVeiculo.edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtcdtransportadoraPropertiesButtonClick(self, cds);
end;

procedure TfrmVeiculo.cdsCDTRANSPORTADORAValidate(Sender: TField);
var
  nome : string;
begin
  nome := NomedoCodigo(_transportadora, sender.AsString);
  if nome = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_transportadora)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  cdsNMTRANSPORTADORA.AsString := nome;
end;

procedure TfrmVeiculo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmVeiculo.FormCreate(Sender: TObject);
begin
  gbxcte.Visible := empresa.faturamento.cte.bo;
  cbxcdcntcusto.Properties.ListSource   := abrir_tabela(_cntcusto);
  cbxcdtpveiculo.Properties.ListSource := abrir_tabela(_tpveiculo);
  cbxcdstveiculo.Properties.ListSource := abrir_tabela(_stveiculo);
  cbxcdmarca.Properties.ListSource     := abrir_tabela(_marca);
  cbxcdtpveiculo.Properties.ListSource := abrir_tabela(_tpveiculo);
  cbxcduf.Properties.ListSource        := abrir_tabela(_uf);
  cbxcdmunicipio.Properties.ListSource := abrir_tabela(_municipio);
  cbxcdmodelo.Properties.ListSource    := abrir_tabela(_modelo);
  cbxcdcor.Properties.ListSource       := abrir_tabela(_cor);
  cbxcdctetpveiculo.Properties.ListSource      := abrir_tabela(_cte+_tp+_veiculo);
  cbxcdctetpcarroceria.Properties.ListSource   := abrir_tabela(_cte+_tp+_carroceria);
  cbxcdctetprodado.Properties.ListSource       := abrir_tabela(_cte+_tp+_rodado);
  cbxcdctetpproprietario.Properties.ListSource := abrir_tabela(_cte+_tp+_proprietario);
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
end;

procedure TfrmVeiculo.actabrirtransportadoraExecute(Sender: TObject);
begin
  frmmain.abrirdireto(taction(sender), cds, cds);
end;

procedure TfrmVeiculo.txtnmtransportadoraDblClick(Sender: TObject);
begin
  actabrirtransportadora.onexecute(actabrirtransportadora);
end;

procedure TfrmVeiculo.cbxcdstveiculoEnter(Sender: TObject);
begin
  colorenter(sender);
  abrir_tabela(_stveiculo);
end;

procedure TfrmVeiculo.cbxcdtpveiculoEnter(Sender: TObject);
begin
  colorenter(sender);
  abrir_tabela(_tpveiculo);
end;

procedure TfrmVeiculo.cbxcdmarcaEnter(Sender: TObject);
begin
  colorenter(sender);
  abrir_tabela(_marca);
end;

procedure TfrmVeiculo.cbxcdcorEnter(Sender: TObject);
begin
  colorenter(sender);
  abrir_tabela(_cor);
end;

procedure TfrmVeiculo.cbxcdmodeloEnter(Sender: TObject);
begin
  colorenter(sender);
  abrir_tabela(_modelo);
end;

procedure TfrmVeiculo.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmVeiculo.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmVeiculo.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmVeiculo.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmVeiculo.grdveiculoprodutoDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(tbl, cdsveiculoproduto, true);
end;

procedure TfrmVeiculo.cdsveiculoprodutoCDDIGITADOValidate(Sender: TField);
begin
  produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, '');
  if produto.cdproduto = 0 then
  begin
    abort;
  end;
  produto.Select(produto.cdproduto);
  if (produto.cdproduto <> 0) and (cdsveiculoprodutoCDPRODUTO.AsInteger <> produto.cdproduto) then
  begin
    cdsveiculoprodutoVLUNITARIO.AsCurrency := produto.vlvenda;
    cdsveiculoprodutoCDPRODUTO.AsInteger    := produto.cdproduto;
  end;
  cdsveiculoprodutoNMPRODUTO.asstring := produto.nmproduto;
end;

procedure TfrmVeiculo.cdsveiculoprodutoQTITEMValidate(Sender: TField);
begin
  if cdsveiculoprodutoQTITEM.AsFloat < 0 then
  begin
    MessageDlg('Quantidade não pode ser NEGATIVO.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbsproduto;
    cdsveiculoprodutoQTITEM.FocusControl;
    Abort;
  end;
  if cdsveiculoprodutoQTITEM.AsFloat = 0 then
  begin
    MessageDlg('Quantidade não pode ser ZERO.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbsproduto;
    cdsveiculoprodutoQTITEM.FocusControl;
    Abort;
  end;
  cdsveiculoprodutoVLTOTAL.AsCurrency := cdsveiculoprodutoQTITEM.AsCurrency * cdsveiculoprodutoVLUNITARIO.ascurrency;
end;

procedure TfrmVeiculo.check_nuchassi_repetido;
var
  cdveiculo : string;
begin
  cdveiculo := qregistro.codigo_do_registro_existe(_nuplaca, edtnuplaca.Text, _veiculo, cdscdveiculo.AsString);
  if cdveiculo <> '' then
  begin
    messagedlg('Placa já existe no veiculo '+cdveiculo+'.', mtinformation, [mbok], 0);
    edtnuplaca.SetFocus;
    abort;
  end;
end;

procedure TfrmVeiculo.check_nuplaca_repetido;
var
  cdveiculo : string;
begin
  cdveiculo := qregistro.codigo_do_registro_existe(_nuchassi, edtnuchassi.Text, _veiculo, cdscdveiculo.AsString);
  if cdveiculo <> '' then
  begin
    messagedlg('Chassi já existe no veiculo '+cdveiculo+'.', mtinformation, [mbok], 0);
    edtnuchassi.SetFocus;
    abort;
  end;
end;

procedure TfrmVeiculo.cdsveiculoprodutoBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsveiculoproduto);
end;

procedure TfrmVeiculo.cdsveiculoprodutoNewRecord(DataSet: TDataSet);
begin
  cdsveiculoprodutoCDVEICULOPRODUTO.AsString := GerarCodigo(_veiculo+_produto);
  cdsveiculoprodutoQTITEM.AsFloat            := 1;
  cdsveiculoprodutoVLUNITARIO.AsCurrency     := 0;
  cdsveiculoprodutoVLTOTAL.AsCurrency        := 0;
end;

procedure TfrmVeiculo.actabrirfuncionarioExecute(Sender: TObject);
begin
  frmmain.abrirdireto(taction(sender), cds, cds);
end;

procedure TfrmVeiculo.txtnmfuncionarioDblClick(Sender: TObject);
begin
  actabrirfuncionario.onexecute(actabrirfuncionario);
end;

procedure TfrmVeiculo.edtcdfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfuncionarioPropertiesButtonClick(sender, 0);
  end;
  nextcontrol(Sender, Key, Shift);
end;

procedure TfrmVeiculo.edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := Localizarfuncionario;
  if cd <> 0 then
  begin
    cdscdfuncionario.AsInteger := cd;
  end
end;

procedure TfrmVeiculo.actabrirprodutoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cdsveiculoproduto);
end;

procedure TfrmVeiculo.grdveiculoprodutoDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cddigitado    then
  begin
    actabrirprodutoExecute(actabrirproduto);
  end;
end;

procedure TfrmVeiculo.cdsCDFUNCIONARIOValidate(Sender: TField);
var
  nome : string;
begin
  nome := NomedoCodigo(_funcionario, sender.AsString);
  if nome = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(__funcionario)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  cdsNMfuncionario.AsString := nome;
end;

procedure TfrmVeiculo.grdveiculoprodutoDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

end.
