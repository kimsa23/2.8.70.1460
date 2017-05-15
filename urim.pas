unit urim;

interface

uses
  System.Actions, System.UITypes,
  forms, ComCtrls, ToolWin, ExtCtrls, Mask, Controls, Buttons, sysutils, windows,
  Graphics, dialogs, StdCtrls, Classes, ActnList, Menus,
  FMTBcd, DBCtrls, DB, DBClient, Provider, sqlexpr, Grids,
  urotinas, udatahora, ustrings, ulocalizarproduto, uExportarExcel,
  ulocalizarFuncionario, ulocalizarFornecedor, uconstantes, ulocalizar,
  uregistro, unovoproduto,
  classeRegistro, classegerar, classeconsiste, classeregistrainformacao,
  classeproduto, classeform, classeretornasql, classecondpagto, classeusuario,
  classefornecedor, classeempresa, classeaplicacao, classerim,
  classequery,
  cxLookAndFeelPainters, cxTextEdit, cxMemo, cxControls, cxContainer, cxEdit,
  cxGroupBox, cxPC, dxBar, cxClasses, cxGraphics, cxLookAndFeels, cxDBEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, cxButtonEdit, cxCalc, cxCurrencyEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLabel, cxDBLabel, cxSpinEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxSplitter, cxRichEdit, cxCheckBox, cxPCdxBarPopupMenu,
  cxNavigator, dxBarBuiltInMenu;

type
  Tfrmrim = class(TForm)
    pnl: TPanel;
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
    actAbrirProduto: TAction;
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
    dxBarSubItem1: TdxBarSubItem;
    pnl1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    dts1: TDataSource;
    dtsdetail: TDataSource;
    cdsdetail: TClientDataSet;
    sdsdetail: TSQLDataSet;
    edtcodigo: TcxTextEdit;
    cdsdetailCDDIGITADO: TStringField;
    edtdtemissao: TcxDBDateEdit;
    lbltprim: TLabel;
    Label17: TLabel;
    txtnmstrim: TcxDBLabel;
    cdsCDTPRIM: TIntegerField;
    cdssdsdetail: TDataSetField;
    cbxcdtprim: TcxDBLookupComboBox;
    pgc: TcxPageControl;
    tbsproduto: TcxTabSheet;
    tbsobservacao: TcxTabSheet;
    mem1: TcxDBMemo;
    grd: TcxGrid;
    grlLevel1: TcxGridLevel;
    cbxcdcntcusto: TcxDBLookupComboBox;
    Label13: TLabel;
    btnimprimir: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    actbaixar: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    actestornar: TAction;
    sdsCDRIM: TIntegerField;
    sdsCDSTRIM: TIntegerField;
    sdsCDCNTCUSTO: TIntegerField;
    sdsCDTPRIM: TIntegerField;
    sdsCDFUNCIONARIO: TIntegerField;
    sdsCDTPAPLICACAO: TIntegerField;
    sdsDTEMISSAO: TDateField;
    sdsDSOBSERVACAO: TBlobField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsNMSTRIM: TStringField;
    cdsCDRIM: TIntegerField;
    cdsCDSTRIM: TIntegerField;
    cdsCDCNTCUSTO: TIntegerField;
    cdsCDFUNCIONARIO: TIntegerField;
    cdsCDTPAPLICACAO: TIntegerField;
    cdsDTEMISSAO: TDateField;
    cdsDSOBSERVACAO: TBlobField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsNMSTRIM: TStringField;
    sdsdetailCDRIM: TIntegerField;
    sdsdetailCDPRODUTO: TIntegerField;
    sdsdetailQTITEM: TFloatField;
    sdsdetailCDDIGITADO: TStringField;
    sdsdetailCDITRIM: TIntegerField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailCDRIM: TIntegerField;
    cdsdetailCDPRODUTO: TIntegerField;
    cdsdetailQTITEM: TFloatField;
    cdsdetailCDITRIM: TIntegerField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    tbv: TcxGridDBTableView;
    tbvCDDIGITADO: TcxGridDBColumn;
    tbvNMPRODUTO: TcxGridDBColumn;
    tbvQTITEM: TcxGridDBColumn;
    Label15: TLabel;
    cbxcdtpaplicacao: TcxDBLookupComboBox;
    cbxcdfuncionario: TcxDBLookupComboBox;
    Label18: TLabel;
    sdsdetailNMPRODUTO: TStringField;
    cdsdetailNMPRODUTO: TStringField;
    sdsdetailNMUNIDADE: TStringField;
    cdsdetailNMUNIDADE: TStringField;
    tbvNMUNIDADE: TcxGridDBColumn;
    sdsdetailQTATENDIDA: TFloatField;
    cdsdetailQTATENDIDA: TFloatField;
    tbvQTATENDIDA: TcxGridDBColumn;
    sdsdetailCDORDPRODUCAO: TIntegerField;
    cdsdetailCDORDPRODUCAO: TIntegerField;
    tbvCDORDPRODUCAO: TcxGridDBColumn;
    actabrirordproducao: TAction;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    tbsconsulta: TcxTabSheet;
    sdsconsulta: TSQLDataSet;
    cdsconsulta: TClientDataSet;
    dtsconsulta: TDataSource;
    sdsconsultaCDMOVTO: TIntegerField;
    sdsconsultaDTEMISSAO: TDateField;
    sdsconsultaVLTOTAL: TFMTBCDField;
    sdsconsultaQTITEM: TFloatField;
    sdsconsultaVLUNITARIO: TFMTBCDField;
    sdsconsultaCDDIGITADO: TStringField;
    sdsconsultaNMPRODUTO: TStringField;
    cdssdsconsulta: TDataSetField;
    cdsconsultaCDMOVTO: TIntegerField;
    cdsconsultaDTEMISSAO: TDateField;
    cdsconsultaVLTOTAL: TFMTBCDField;
    cdsconsultaQTITEM: TFloatField;
    cdsconsultaVLUNITARIO: TFMTBCDField;
    cdsconsultaCDDIGITADO: TStringField;
    cdsconsultaNMPRODUTO: TStringField;
    grdconsultaDBTableView1: TcxGridDBTableView;
    grdconsultaLevel1: TcxGridLevel;
    grdconsulta: TcxGrid;
    grdconsultaDBTableView1CDMOVTO: TcxGridDBColumn;
    grdconsultaDBTableView1DTEMISSAO: TcxGridDBColumn;
    grdconsultaDBTableView1VLTOTAL: TcxGridDBColumn;
    grdconsultaDBTableView1QTITEM: TcxGridDBColumn;
    grdconsultaDBTableView1VLUNITARIO: TcxGridDBColumn;
    grdconsultaDBTableView1CDDIGITADO: TcxGridDBColumn;
    grdconsultaDBTableView1NMPRODUTO: TcxGridDBColumn;
    actabrirmovto: TAction;
    actgerarcotacao: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    cdsCDPEDIDOMATERIAL: TIntegerField;
    lblcdpedidomaterial: TLabel;
    actabrirpedidomaterial: TAction;
    txtCDPEDIDOMATERIAL: TDBText;
    sdsdetailCDITORDPRODUCAOMATERIAL: TIntegerField;
    cdsdetailCDITORDPRODUCAOMATERIAL: TIntegerField;
    actabrirtprim: TAction;
    actimprimirrim: TAction;
    pumimprimir: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    sdsDTPREVISTA: TDateField;
    cdsDTPREVISTA: TDateField;
    sdsdetailDTPREVISTA: TDateField;
    cdsdetailDTPREVISTA: TDateField;
    edtdtprevista: TcxDBDateEdit;
    lbldtprevista: TLabel;
    tbvDTPREVISTA: TcxGridDBColumn;
    tbvQTITEM2: TcxGridDBColumn;
    tbvNMUNIDADE2: TcxGridDBColumn;
    sdsdetailNMUNIDADE2: TStringField;
    sdsdetailQTITEM2: TFloatField;
    cdsdetailNMUNIDADE2: TStringField;
    cdsdetailQTITEM2: TFloatField;
    sdsdetailPRUNIDADE: TFloatField;
    cdsdetailPRUNIDADE: TFloatField;
    sdsCDEMPRESA: TLargeintField;
    sdsdetailCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsdetailCDEMPRESA: TLargeintField;
    sdsDSAPLICACAO: TStringField;
    cdsDSAPLICACAO: TStringField;
    edtdsaplicacao: TcxDBTextEdit;
    procedure actNovoExecute(Sender: TObject);
    procedure actAbrirExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCodigoEnter(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure actAbrirProdutoExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsdetailBeforePost(DataSet: TDataSet);
    procedure dtsStateChange(Sender: TObject);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsCDTPRIMValidate(Sender: TField);
    procedure cdsdetailCDDIGITADOValidate(Sender: TField);
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure colorEnter(Sender: TObject);
    procedure colorExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actestornarExecute(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsdetailCDPRODUTOValidate(Sender: TField);
    procedure actbaixarExecute(Sender: TObject);
    procedure cdsCDFUNCIONARIOValidate(Sender: TField);
    procedure cbxcdtprimEnter(Sender: TObject);
    procedure cbxcdfuncionarioEnter(Sender: TObject);
    procedure cbxcdcntcustoEnter(Sender: TObject);
    procedure cbxcdtpaplicacaoEnter(Sender: TObject);
    procedure grdDBTableView1CDORDPRODUCAOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsdetailCDORDPRODUCAOValidate(Sender: TField);
    procedure tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirordproducaoExecute(Sender: TObject);
    procedure grdconsultaDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirmovtoExecute(Sender: TObject);
    procedure actgerarcotacaoExecute(Sender: TObject);
    procedure cdsCalcFields(DataSet: TDataSet);
    procedure actabrirpedidomaterialExecute(Sender: TObject);
    procedure txtCDPEDIDOMATERIALDblClick(Sender: TObject);
    procedure actabrirtprimExecute(Sender: TObject);
    procedure lbltprimDblClick(Sender: TObject);
    procedure actimprimirrimExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure cdsdetailQTITEMValidate(Sender: TField);
    procedure cdsdetailQTITEM2Validate(Sender: TField);
    procedure cdsdetailAfterScroll(DataSet: TDataSet);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    tbl : string;
    rim : trim;
    produto  : TProduto;
    procedure setrecord(codigo : integer);
    procedure set_unidade2;
  public  { Public declarations }
    registro : TRegistro;
    function  Abrir(codigo:Integer):boolean;
  end;

var
  frmrim: Tfrmrim;

implementation

uses UMain, uGerarCompra, uDtmMain, uimprimirrelatoriopadrao, udlggerarMovto, ulocalizarordproducao,
  uMenuRelatorio, classepedidomaterial;

{$R *.DFM}

const
  exibe    = 'Requisição de Material';
  artigoI  = 'a';

procedure Tfrmrim.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmrim.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

function Tfrmrim.Abrir(codigo: integer): boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmrim.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmrim.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmrim.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmrim.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmrim.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmrim.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmrim.actEditarExecute(Sender: TObject);
begin
  registro.editar;
  edtdtemissao.SetFocus;
end;

procedure Tfrmrim.actSalvarExecute(Sender: TObject);
begin
  if (cdsdetail.State = dsinsert) or (cdsdetail.State = dsedit) then
  begin
    cdsdetail.Post;
  end;
  if (cbxcdcntcusto.Text = '') and (rim.tprim.bocntcustoobrigatorio = _s) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_centro_de_custo]), mtinformation, [mbok], 0);
    cdsCDCNTCUSTO.FocusControl;
    Abort;
  end;
  registro.Salvar;
  abrir(cdsCDRIM.asinteger);
end;

procedure Tfrmrim.actCancelarExecute(Sender: TObject);
begin
  if registro.cancelar then
  begin
    registro.dados_atual;
  end;
end;

procedure Tfrmrim.FormShow(Sender: TObject);
begin
  rim        := trim.create;
  produto    := TProduto.create;
  registro.set_readonly_dados(self, true);
  pnl.Caption := exibe;
  edtCodigo.SetFocus;
end;

procedure Tfrmrim.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmrim.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure Tfrmrim.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmrim.actAbrirProdutoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsdetail);
end;

procedure Tfrmrim.FormDestroy(Sender: TObject);
begin
  produto.free;
  freeandnil(registro);
  freeandnil(rim);
end;

procedure Tfrmrim.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmrim.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  actAbrirProduto.OnExecute(actAbrirProduto);
end;

procedure Tfrmrim.cdsBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cds);
end;

procedure Tfrmrim.cdsdetailBeforePost(DataSet: TDataSet);
begin
  if cdsdetailCDDIGITADO.AsString = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Codigo+' '+_do+' '+_Produto]), mtinformation, [mbok], 0);
    cdsdetailCDDIGITADO.FocusControl;
    abort;
  end;
  registro.set_update(cdsdetail);
end;

procedure Tfrmrim.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
  if (dts.State = dsinsert) or (dts.State = dsedit) then
  begin
    actbaixar.Visible   := False;
    actestornar.Visible := False;
  end;
end;

procedure Tfrmrim.cdsNewRecord(DataSet: TDataSet);
begin
  cdsCDTPRIM.asinteger    := registro.get_tipo_tabela_minumo;
  registro.NewRecord;
  cdsDTEMISSAO.AsDateTime := dtbanco;
  cdsCDSTRIM.AsInteger     := qregistro.Codigo_status_novo(tbl);
  setrecord(cdsCDTPRIM.asinteger);
end;

procedure Tfrmrim.cdsCDTPRIMValidate(Sender: TField);
begin
  setrecord(sender.Asinteger);
end;

procedure Tfrmrim.cdsdetailCDDIGITADOValidate(Sender: TField);
begin
  if sender.asstring = '' then
  begin
    Exit;
  end;
  produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, _bomovto);
  if produto.cdproduto = 0 then
  begin
    Abort;
  end;
  produto.Select(produto.cdproduto);
  produto.CheckDados(true);
  if (produto.cdproduto <> 0) and (cdsdetailCDPRODUTO.AsInteger <> produto.cdproduto) then
  begin
    cdsdetailCDPRODUTO.AsInteger := produto.cdproduto;
  end;
  cdsdetailCDPRODUTO.AsInteger  := produto.cdproduto;
  cdsdetailNMPRODUTO.AsString  := produto.nmproduto;
  cdsdetailNMUNIDADE.AsString  := qregistro.nomedocodigo(_unidade, produto.cdunidade);
  cdsdetailNMUNIDADE2.AsString := qregistro.nomedocodigo(_unidade, produto.cdunidade2);
  cdsdetailPRUNIDADE.AsFloat   := produto.prunidade;
  cdsdetailQTITEMValidate(cdsdetailQTITEM);
  set_unidade2;
end;

procedure Tfrmrim.cdsdetailNewRecord(DataSet: TDataSet);
begin
  cdsdetailCDITRIM.AsString   := GerarCodigo(_itrim);
  cdsdetailQTITEM.AsFloat     := 1;
  cdsdetailQTATENDIDA.AsFloat := 0;
end;

procedure Tfrmrim.cdsAfterScroll(DataSet: TDataSet);
begin
  rim.select(dataset);
  rim.ItRim.Ler(cdsdetail);
  //registro.setStatus(tbl, dataset);
  setrecord(cdsCDTPRIM.asinteger);
  if (dts.State <> dsinsert) and (dts.State <> dsedit) then
  begin
    actExcluir.Enabled  := cdsCDSTRIM.AsInteger = 1;
    actEditar.Enabled   := cdsCDSTRIM.AsInteger = 1;
    actbaixar.Enabled   := (cdsCDSTRIM.AsInteger = 1) or (cdsCDSTRIM.AsInteger = 3);
    actbaixar.Visible   := actbaixar.Enabled;
    actestornar.Enabled := (cdsCDSTRIM.AsInteger = 2) or (cdsCDSTRIM.AsInteger = 3);
    actestornar.Visible := actestornar.Enabled;
  end;
  actgerarcotacao.Visible     := not titpedidomateriallist.existe_cotacao(_cdrim, rim.cdrim);
  lblcdpedidomaterial.Visible := not actgerarcotacao.Visible;
  txtcdpedidomaterial.Visible := not actgerarcotacao.Visible;
end;

procedure Tfrmrim.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure Tfrmrim.colorEnter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmrim.colorExit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmrim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmrim.FormCreate(Sender: TObject);
begin
  tbvQTITEM2.Visible    := empresa.material.produto.boqtestoque2;
  tbvNMUNIDADE2.Visible := empresa.material.produto.boqtestoque2;
  tbl                                    := _rim;
  cbxcdcntcusto.Properties.ListSource    := abrir_tabela(_cntcusto);
  cbxcdtprim.Properties.ListSource       := abrir_tabela(_tprim);
  cbxcdtpaplicacao.Properties.ListSource := abrir_tabela(_tpaplicacao);
  cbxcdfuncionario.Properties.ListSource := abrir_tabela(_funcionario);
  registro                               := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
  GeraMenuRelatorio ('', btnimprimir, 45, cds, tbl);
end;

procedure Tfrmrim.setrecord(codigo: integer);
begin
  rim.tprim.Select(codigo);
  tbvCDORDPRODUCAO.Visible := rim.tprim.boordproducao = _s;
  edtdtprevista.visible    := rim.tprim.bodtprevista = _s;
  lbldtprevista.visible    := rim.tprim.bodtprevista = _s;
  tbvDTPREVISTA.visible    := rim.tprim.boitemdtprevista = _s;
  edtdsaplicacao.Visible   := rim.tprim.boaplicacaodigitar = _s;
  cbxcdtpaplicacao.visible := not (rim.tprim.boaplicacaodigitar = _s);
end;

procedure Tfrmrim.actestornarExecute(Sender: TObject);
begin
  if (cdsCDrim.asstring <> '')and rim.ItRim.pode_baixar(False) and GerarMovto(rim, 2) then
  begin
    abrir(cdsCDRIM.asinteger);
  end;
end;

procedure Tfrmrim.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure Tfrmrim.grdDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(_rim, cdsdetail, true);
end;

procedure Tfrmrim.cdsdetailCDPRODUTOValidate(Sender: TField);
  function existeprodutorepetido(cdproduto:string):Boolean;
  var
    c : TClientDataSet;
  begin
    result := False;
    c := TClientDataSet.Create(nil);
    try
      c.CloneCursor(cdsdetail, false);
      c.First;
      while NOT c.Eof do
      begin
        if (c.FieldByName(_cdproduto).AsString = cdproduto) and (c.FieldByName(_cditrim).AsString <> cdsdetailCDITRIM.AsString) then
        begin
          result := True;
        end;
        c.Next;
      end;
    finally
      FreeAndNil(c);
    end;
  end;
begin
  Exit;
  if existeprodutorepetido(Sender.AsString) then
  begin
    MessageDlg('Não é permitido produto repetido na Requisição de Materiais.', mtInformation, [mbOK], 0);
    Abort;
  end;
end;

procedure Tfrmrim.actbaixarExecute(Sender: TObject);
begin
  if (cdsCDrim.asstring <> '') and rim.itrim.pode_baixar and GerarMovto(rim, 1) then
  begin
    abrir(cdsCDRIM.asinteger);
  end;
end;

procedure Tfrmrim.cdsCDFUNCIONARIOValidate(Sender: TField);
begin
  if cdsCDCNTCUSTO.IsNull then
  begin
    cdsCDCNTCUSTO.AsString := NomedoCodigo(_funcionario, cdsCDFUNCIONARIO.AsString, _cdcntcusto);
  end;
end;

procedure Tfrmrim.cbxcdtprimEnter(Sender: TObject);
begin
  colorEnter(Sender);
  abrir_tabela(_tprim);
end;

procedure Tfrmrim.cbxcdfuncionarioEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_funcionario);
end;

procedure Tfrmrim.cbxcdcntcustoEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_cntcusto);
end;

procedure Tfrmrim.cbxcdtpaplicacaoEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tpaplicacao);
end;

procedure Tfrmrim.grdDBTableView1CDORDPRODUCAOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd: integer;
begin
  cd := Localizarordproducao;
  if cd <> 0 then
  begin
    if (cdsdetail.State <> dsedit) and (cdsdetail.State = dsbrowse) then
    begin
      cdsdetail.Edit;
    end;
    cdsdetailCDORDPRODUCAO.asinteger := cd;
  end;
end;

procedure Tfrmrim.cdsdetailCDORDPRODUCAOValidate(Sender: TField);
begin
  if not CodigoExiste(_ordproducao, sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.asstring, maiuscula(_ordem+' '+__producao)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
end;

procedure Tfrmrim.tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cddigitado then
  begin
    actabrirprodutoExecute(actabrirproduto)
  end
  else if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cd+_ordproducao then
  begin
    actabrirordproducaoExecute(actabrirordproducao);
  end;
end;

procedure Tfrmrim.actabrirordproducaoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsdetail);
end;

procedure Tfrmrim.grdconsultaDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cd+_movto then
  begin
    actabrirmovtoExecute(actabrirmovto);
  end;
end;

procedure Tfrmrim.actabrirmovtoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsconsulta);
end;

procedure Tfrmrim.actgerarcotacaoExecute(Sender: TObject);
var
  cdpedidomaterial : Integer;
begin
  cdpedidomaterial := rim.gerar_cotacao(cds.FieldByName(_cdrim).AsInteger);
  if cdpedidomaterial > 0 then
  begin
    MessageDlg('Cotação '+inttostr(cdpedidomaterial)+' gerada.', mtInformation, [mbOK], 0);
  end
  else if cdpedidomaterial = 0 then
  begin
    MessageDlg('Cotação já foi gerada.', mtInformation, [mbOK], 0);
  end;
end;

procedure Tfrmrim.cdsCalcFields(DataSet: TDataSet);
begin
  cdsCDPEDIDOMATERIAL.Asinteger := TitpedidomaterialList.getcdpedidomaterial(_cdrim, cdsCDRIM.Asinteger);
end;

procedure Tfrmrim.actabrirpedidomaterialExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmrim.txtCDPEDIDOMATERIALDblClick(Sender: TObject);
begin
  actAbrirpedidomaterial.onExecute(actAbrirpedidomaterial);
end;

procedure Tfrmrim.actabrirtprimExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmrim.lbltprimDblClick(Sender: TObject);
begin
  actAbrirtprim.onExecute(actAbrirtprim);
end;

procedure Tfrmrim.actimprimirrimExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(318, cds.fieldbyname(_cd+tbl).asstring);
end;

procedure Tfrmrim.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure Tfrmrim.cdsdetailQTITEMValidate(Sender: TField);
begin
  if cdsdetailPRUNIDADE.AsFloat > 0 then
  begin
    cdsdetailQTITEM2.OnValidate := nil;
    produto.Select(cdsdetailcdproduto.AsInteger);
    cdsdetailQTITEM2.AsFloat := produto.calcularqtitem2(cdsdetailQTITEM.AsFloat, cdsdetailPRUNIDADE.AsFloat);
    cdsdetailQTITEM2.OnValidate := cdsdetailQTITEM2Validate;
  end;
end;

procedure Tfrmrim.cdsdetailQTITEM2Validate(Sender: TField);
begin
  if cdsdetailPRUNIDADE.AsFloat > 0 then
  begin
    cdsdetailQTITEM.OnValidate := nil;
    produto.Select(cdsdetailCDPRODUTO.AsInteger);
    cdsdetailQTITEM.AsFloat := produto.CalcularQtitem(cdsdetailQTITEM2.AsFloat, cdsdetailPRUNIDADE.AsFloat);
    cdsdetailQTITEM.OnValidate := cdsdetailQTITEMValidate;
  end;
end;

procedure Tfrmrim.cdsdetailAfterScroll(DataSet: TDataSet);
begin
  set_unidade2;
end;

procedure Tfrmrim.set_unidade2;
begin
  tbvQTITEM2.Options.Focusing := cdsdetailPRUNIDADE.AsFloat > 0;
end;

end.
