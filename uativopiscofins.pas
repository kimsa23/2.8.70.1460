unit uativopiscofins;

interface

uses
  System.Actions, System.UITypes,
  forms, Windows, Classes, ActnList, StdCtrls, Menus, Mask, Buttons, ExtCtrls,
  Controls, ComCtrls, ToolWin, dialogs, sysutils, graphics,
  DBCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr,
  uexportarexcel, udatahora, urotinas, uconstantes, ustrings,
  uregistro,
  classeusuario, classeempresa, classeconsiste,
  classeaplicacao, classeproduto, classefornecedor, classeretornasql,
  classeregistrainformacao, classeform, classeRegistro, classequery,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, cxPC, cxControls,
  cxTextEdit, cxDBEdit, cxRadioGroup, cxMemo, cxCheckBox, cxMaskEdit, cxButtonEdit,
  dxBar, cxClasses, cxGraphics, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLookAndFeels, cxLabel, cxDBLabel, cxCalendar, cxCalc,
  cxCurrencyEdit, cxSpinEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPCdxBarPopupMenu, cxNavigator,
  dxBarBuiltInMenu;

type
  Tfrmativopiscofins = class(TForm)
    act: TActionList;
    actNovo: TAction;
    actAbrir: TAction;
    actSalvar: TAction;
    actExcluir: TAction;
    actCancelar: TAction;
    actEditar: TAction;
    actAnterior: TAction;
    actProximo: TAction;
    actUltimo: TAction;
    actPrimeiro: TAction;
    actfechar: TAction;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
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
    grddetail: TcxGrid;
    grddetailDBTableView1: TcxGridDBTableView;
    grddetailLevel1: TcxGridLevel;
    sdsCDATIVOPISCOFINS: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsCDEMPRESA: TFMTBCDField;
    sdsCDBCCALCULOCREDITO: TStringField;
    sdsCDPISCOFINSBEMATIVO: TStringField;
    sdsCDPISCOFINSBEMORIGEM: TIntegerField;
    sdsNUSTPIS: TStringField;
    sdsNUSTCOFINS: TStringField;
    sdsCDPRODUTO: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsNUPARCELA: TIntegerField;
    sdsALPIS: TFloatField;
    sdsALCOFINS: TFloatField;
    sdsCDPISCOFINSBEMUTILIZACAO: TIntegerField;
    sdsNUDOCUMENTO: TIntegerField;
    sdsDTEMISSAO: TDateField;
    sdsVLDEDUCAO: TFMTBCDField;
    sdsVLSALDO: TFMTBCDField;
    sdsCDITENTRADA: TIntegerField;
    sdsVLENTRADA: TFMTBCDField;
    sdsQTPARCELA: TIntegerField;
    sdsDTINICIO: TDateField;
    sdsDTTERMINO: TDateField;
    sdsCDFORNECEDOR: TFMTBCDField;
    sdsNMFORNECEDOR: TStringField;
    sdsNMPRODUTO: TStringField;
    cdsCDATIVOPISCOFINS: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsCDEMPRESA: TFMTBCDField;
    cdsCDBCCALCULOCREDITO: TStringField;
    cdsCDPISCOFINSBEMATIVO: TStringField;
    cdsCDPISCOFINSBEMORIGEM: TIntegerField;
    cdsNUSTPIS: TStringField;
    cdsNUSTCOFINS: TStringField;
    cdsCDPRODUTO: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsNUPARCELA: TIntegerField;
    cdsALPIS: TFloatField;
    cdsALCOFINS: TFloatField;
    cdsCDPISCOFINSBEMUTILIZACAO: TIntegerField;
    cdsNUDOCUMENTO: TIntegerField;
    cdsDTEMISSAO: TDateField;
    cdsVLDEDUCAO: TFMTBCDField;
    cdsVLSALDO: TFMTBCDField;
    cdsCDITENTRADA: TIntegerField;
    cdsVLENTRADA: TFMTBCDField;
    cdsQTPARCELA: TIntegerField;
    cdsDTINICIO: TDateField;
    cdsDTTERMINO: TDateField;
    cdsCDFORNECEDOR: TFMTBCDField;
    cdsNMFORNECEDOR: TStringField;
    cdsNMPRODUTO: TStringField;
    actabrirfornecedor: TAction;
    actabrirproduto: TAction;
    dts1: TDataSource;
    sdsdetail: TSQLDataSet;
    cdsdetail: TClientDataSet;
    cdssdsdetail: TDataSetField;
    dtsdetail: TDataSource;
    sdsdetailCDLP1AATIVOPISCOFINS: TIntegerField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailCDEMPRESA: TFMTBCDField;
    sdsdetailCDLP1A: TIntegerField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    sdsdetailNUPARCELA: TIntegerField;
    sdsdetailVLBASEPIS: TFMTBCDField;
    sdsdetailVLPIS: TFMTBCDField;
    sdsdetailVLBASECOFINS: TFMTBCDField;
    sdsdetailVLCOFINS: TFMTBCDField;
    sdsdetailVLDEDUCAO: TFMTBCDField;
    sdsdetailVLSALDO: TFMTBCDField;
    sdsdetailCDATIVOPISCOFINS: TIntegerField;
    cdsdetailCDLP1AATIVOPISCOFINS: TIntegerField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailCDEMPRESA: TFMTBCDField;
    cdsdetailCDLP1A: TIntegerField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailNUPARCELA: TIntegerField;
    cdsdetailVLBASEPIS: TFMTBCDField;
    cdsdetailVLPIS: TFMTBCDField;
    cdsdetailVLBASECOFINS: TFMTBCDField;
    cdsdetailVLDEDUCAO: TFMTBCDField;
    cdsdetailVLSALDO: TFMTBCDField;
    cdsdetailCDATIVOPISCOFINS: TIntegerField;
    grddetailDBTableView1CDLP1A: TcxGridDBColumn;
    grddetailDBTableView1NUPARCELA: TcxGridDBColumn;
    grddetailDBTableView1VLBASEPIS: TcxGridDBColumn;
    grddetailDBTableView1VLPIS: TcxGridDBColumn;
    grddetailDBTableView1VLBASECOFINS: TcxGridDBColumn;
    grddetailDBTableView1VLCOFINS: TcxGridDBColumn;
    grddetailDBTableView1VLDEDUCAO: TcxGridDBColumn;
    grddetailDBTableView1VLSALDO: TcxGridDBColumn;
    sdsdetailDTINICIO: TDateField;
    sdsdetailDTFINAL: TDateField;
    cdsdetailDTINICIO: TDateField;
    cdsdetailDTFINAL: TDateField;
    grddetailDBTableView1DTINICIO: TcxGridDBColumn;
    grddetailDBTableView1DTFINAL: TcxGridDBColumn;
    cdsdetailVLCOFINS: TFMTBCDField;
    actajustar: TAction;
    dxBarButton1: TdxBarButton;
    pnl: TcxLabel;
    pnltopp: TPanel;
    Label1: TLabel;
    edtcodigo: TcxTextEdit;
    Label3: TLabel;
    edtcdproduto: TcxDBButtonEdit;
    txtnmproduto: TDBText;
    Label2: TLabel;
    edtnudocumento: TcxDBTextEdit;
    Label4: TLabel;
    edtdtemissao: TcxDBDateEdit;
    lbl1: TLabel;
    edtcdfornecedor: TcxDBButtonEdit;
    txtnmfornecedor: TDBText;
    bvl1: TBevel;
    gbxconfiguracao: TcxGroupBox;
    Label5: TLabel;
    Label11: TLabel;
    cbxnustpis: TcxDBLookupComboBox;
    edtalpis: TcxDBCalcEdit;
    gbxtributacao: TcxGroupBox;
    Label6: TLabel;
    Label12: TLabel;
    cbxnustcofins: TcxDBLookupComboBox;
    edtalcofins: TcxDBCalcEdit;
    gbxpdv: TcxGroupBox;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lblinicio: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    edtvlentrada: TcxDBCurrencyEdit;
    edtvlsaldo: TcxDBCurrencyEdit;
    edtvldeducao: TcxDBCurrencyEdit;
    edtnuparcela: TcxDBSpinEdit;
    edtdtinicio: TcxDBDateEdit;
    edttermino: TcxDBDateEdit;
    edtqtparcela: TcxDBSpinEdit;
    gbxcfop: TcxGroupBox;
    lblmodelo: TLabel;
    Label17: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cbxcdbccalculocredito: TcxDBLookupComboBox;
    cbxcdpiscofinsbemativo: TcxDBLookupComboBox;
    cbxcdpiscofinsbemorigem: TcxDBLookupComboBox;
    cbxcdpiscofinsbemutilizacao: TcxDBLookupComboBox;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actfecharExecute(Sender: TObject);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure dtsStateChange(Sender: TObject);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure edtcdfornecedorExit(Sender: TObject);
    procedure cdsCDFORNECEDORValidate(Sender: TField);
    procedure edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdfornecedorPropertiesChange(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprodutoExit(Sender: TObject);
    procedure edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsCDPRODUTOValidate(Sender: TField);
    procedure txtnmfornecedorDblClick(Sender: TObject);
    procedure actabrirfornecedorExecute(Sender: TObject);
    procedure actabrirprodutoExecute(Sender: TObject);
    procedure txtnmprodutoDblClick(Sender: TObject);
    procedure cdsDTEMISSAOValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure actajustarExecute(Sender: TObject);
    procedure grddetailDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    fornecedor : tfornecedor;
    produto : tproduto;
  public  { Public declarations }
    registro : tregistro;
    function Abrir(codigo:integer):boolean;
  end;

var
  frmativopiscofins: Tfrmativopiscofins;

implementation

uses uDtmMain, uLocalizar, uMain, ulocalizarfornecedor, ulocalizarproduto;

{$R *.DFM}

const
  tbl      = 'ativopiscofins';
  exibe    = 'Ativo Imobilizado PIS/COFINS';
  artigoI  = 'o';

function Tfrmativopiscofins.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmativopiscofins.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmativopiscofins.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmativopiscofins.actSalvarExecute(Sender: TObject);
begin
  if registro.salvar then
  begin
    edtcodigo.SetFocus;
  end;
end;

procedure Tfrmativopiscofins.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmativopiscofins.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmativopiscofins.actCancelarExecute(Sender: TObject);
begin
  if registro.cancelar then
  begin
    registro.dados_atual;
  end;
end;

procedure Tfrmativopiscofins.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmativopiscofins.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmativopiscofins.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
  colorenter(sender);
end;

procedure Tfrmativopiscofins.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmativopiscofins.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmativopiscofins.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmativopiscofins.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmativopiscofins.FormShow(Sender: TObject);
begin
  fornecedor  := tfornecedor.create;
  produto     := tproduto.create;
  pnl.Caption := exibe;
  edtCodigo.SetFocus;
end;

procedure Tfrmativopiscofins.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmativopiscofins.FormDestroy(Sender: TObject);
begin
  registro.destroy;
  fornecedor.free;
  produto.free;
end;

procedure Tfrmativopiscofins.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure Tfrmativopiscofins.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmativopiscofins.cdsBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cds);
end;

procedure Tfrmativopiscofins.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmativopiscofins.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

procedure Tfrmativopiscofins.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmativopiscofins.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmativopiscofins.edtcdfornecedorExit(Sender: TObject);
var
  codigo: string;
begin
  colorExit(sender);
  if edtcdfornecedor.Text = '' then
  begin
    exit;
  end;
  codigo := edtcdfornecedor.Text;
  if not codigoexiste(_fornecedor, codigo) then
  begin
    MessageDlg('Código da fornecedor '+codigo+' não encontrado no cadastro de '+_fornecedor+'.', mtWarning, [mbOk], 0);
    edtcdfornecedor.SetFocus;
  end;
end;

procedure Tfrmativopiscofins.cdsCDFORNECEDORValidate(Sender: TField);
begin
  if not fornecedor.select(sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.AsString, maiuscula(_fornecedor)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  fornecedor.stfornecedor.select(fornecedor.cdstfornecedor);
  if fornecedor.stfornecedor.bogerarinfo <> _s then
  begin
    messagedlg('Fornecedor está no status '+fornecedor.stfornecedor.nmstfornecedor+#13'que não permite ser inserido no '+Exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsNMFORNECEDOR.AsString := fornecedor.nmfornecedor;
  txtnmfornecedor.Hint     := fornecedor.hint_rzsocial;
end;

procedure Tfrmativopiscofins.edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfornecedorPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, Shift)
  end;
end;

procedure Tfrmativopiscofins.edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtcdfornecedorPropertiesButtonClick(self, cds);
end;

procedure Tfrmativopiscofins.edtcdfornecedorPropertiesChange(Sender: TObject);
begin
  if (cds.State = dsedit) or (cds.State = dsinsert) then
  begin
    txtnmfornecedor.Hint := fornecedor.hint_rzsocial;
  end;
end;

procedure Tfrmativopiscofins.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure Tfrmativopiscofins.edtcdprodutoExit(Sender: TObject);
var
  codigo: string;
begin
  colorExit(sender);
  if edtcdproduto.Text = '' then
  begin
    exit;
  end;
  codigo := edtcdproduto.Text;
  if not codigoexiste(_produto, codigo) then
  begin
    MessageDlg('Código da produto '+codigo+' não encontrado no cadastro de '+_produto+'.', mtWarning, [mbOk], 0);
    edtcdproduto.SetFocus;
  end;
end;

procedure Tfrmativopiscofins.edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then edtcdprodutoPropertiesButtonClick(sender, 0)
                         else nextcontrol(Sender, Key, Shift)
end;

procedure Tfrmativopiscofins.edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : integer;
begin
  codigo := Localizarproduto;
  if codigo = 0 then
  begin
    exit;
  end;
  cdsCDproduto.asinteger := codigo;
end;

procedure Tfrmativopiscofins.cdsCDPRODUTOValidate(Sender: TField);
begin
  produto.Select(Sender.AsInteger);
  if produto.cdproduto = 0 then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.AsString, maiuscula(_produto)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  if produto.boativar <> _s then
  begin
    messagedlg('Produto está desativado que não permite ser inserido no '+Exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsNMproduto.AsString := produto.nmproduto;
end;

procedure Tfrmativopiscofins.txtnmfornecedorDblClick(Sender: TObject);
begin
  actabrirfornecedorExecute(actabrirfornecedor);
end;

procedure Tfrmativopiscofins.actabrirfornecedorExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmativopiscofins.actabrirprodutoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmativopiscofins.txtnmprodutoDblClick(Sender: TObject);
begin
  actabrirprodutoExecute(actabrirproduto);
end;

procedure Tfrmativopiscofins.cdsDTEMISSAOValidate(Sender: TField);
var
  dtlivro, dtfinal : TDate;
  i : integer;
  bolivro : boolean;
begin
  dtlivro := 0;
  cdsDTINICIO.AsDateTime := Primeiro_dia_mes_anterior(Primeiro_dia_mes_proximo(cdsDTEMISSAO.AsDateTime));
  if cdsQTPARCELA.AsInteger > 0 then
  begin
    dtfinal := Ultimo_Dia_Mes(cdsDTINICIO.AsDateTime);
    bolivro := RetornaSQLInteger('select count(*) from lp1a') > 0;
    if bolivro then
    begin
      dtlivro := RetornaSQLData('select max(dtfinal) from lp1a');
    end;
    cdsNUPARCELA.AsInteger  := 0;
    cdsVLSALDO.AsCurrency   := cdsVLENTRADA.AsCurrency;
    cdsVLDEDUCAO.AsCurrency := cdsVLENTRADA.AsCurrency / cdsQTPARCELA.AsInteger;
    for i := 1 to cdsQTPARCELA.AsInteger do
    begin
      if dtfinal = dtlivro then
      begin
        cdsNUPARCELA.AsInteger := i;
        cdsVLSALDO.AsCurrency  := cdsVLENTRADA.AsCurrency - (cdsVLDEDUCAO.AsCurrency * i);
      end;
      dtfinal := Ultimo_Dia_Mes_proximo(dtfinal);
    end;
    cdsDTTERMINO.AsDateTime := dtfinal;
  end;
end;

procedure Tfrmativopiscofins.FormCreate(Sender: TObject);
begin
  cbxnustpis.Properties.ListSource                  := abrir_tabela(_stpis);
  cbxnustcofins.Properties.ListSource               := abrir_tabela(_stcofins);
  cbxcdbccalculocredito.Properties.ListSource       := abrir_tabela(_bc+_calculo+_credito);
  cbxcdpiscofinsbemativo.Properties.ListSource      := abrir_tabela(_pis+_cofins+_bem+_ativo);
  cbxcdpiscofinsbemorigem.Properties.ListSource     := abrir_tabela(_pis+_cofins+_bem+_origem);
  cbxcdpiscofinsbemutilizacao.Properties.ListSource := abrir_tabela(_pis+_cofins+_bem+_utilizacao);
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
end;

procedure Tfrmativopiscofins.actajustarExecute(Sender: TObject);
var
  c : TClasseQuery;
  function data_termino:TDate;
  var
    i : Integer;
  begin
    result := c.q.fieldbyname(_dtinicio).AsDateTime;
    for i := 2 to c.q.fieldbyname(_qt+_parcela).AsInteger do
    begin
      result := Primeiro_dia_mes_proximo(result);
    end;
  end;
  function numero_parcela:Integer;
  var
    i : Integer;
    dtinicio : TDate;
  begin
    Result   := 0;
    dtinicio := c.q.fieldbyname(_dtinicio).AsDateTime;
    for i := 1 to c.q.fieldbyname(_qt+_parcela).AsInteger do
    begin
      if dtinicio > empresa.livro.dtiniciolivro then
      begin
        Break;
      end;
      dtinicio := Primeiro_dia_mes_proximo(dtinicio);
      result := i;
    end;
  end;
  function valor_saldo:currency;
  begin
    result := c.q.fieldbyname(_vldeducao).AsCurrency * (c.q.fieldbyname(_qt+_parcela).AsInteger - c.q.fieldbyname(_nuparcela).AsInteger);
  end;
begin
  c := TClasseQuery.Create('SELECT CDATIVOPISCOFINS,VLSALDO,DTTERMINO,NUPARCELA,QTPARCELA,VLENTRADA,VLDEDUCAO,DTINICIO,DTEMISSAO FROM ATIVOPISCOFINS ORDER BY CDATIVOPISCOFINS', true);
  try
    while not c.q.Eof do
    begin
      c.q.Edit;
      c.q.FieldByName(_dtinicio).AsDateTime  := Primeiro_dia_mes_anterior(Primeiro_dia_mes_proximo(c.q.FieldByName(_dtemissao).AsDateTime));
      c.q.FieldByName(_dttermino).AsDateTime := data_termino;
      c.q.FieldByName(_nuparcela).AsInteger  := numero_parcela;
      c.q.FieldByName(_vlsaldo).AsCurrency   := valor_saldo;
      c.q.Post;
      c.q.next;
    end;
    aplicacao.aplyupdates(c.q);
    ShowMessage('Ajustado!');
  finally
    freeandnil(c);
  end;
end;

procedure Tfrmativopiscofins.grddetailDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

end.
