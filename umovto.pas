unit umovto;

interface

uses
  System.Actions, System.UITypes,
  forms, ComCtrls, ToolWin, ExtCtrls, Mask, Controls, Buttons, sysutils, windows,
  Graphics, dialogs, StdCtrls, Classes, ActnList, Menus,
  Grids,
  urotinas, udatahora, ustrings, ulocalizarproduto,
  uExportarExcel, uconstantes, ulocalizar, uregistro,
  classeRegistro, classegerar, classeconsiste, classeregistrainformacao, classeproduto, classeform,
  classemovto, classeretornasql, classeusuario, classeempresa,
  cxLookAndFeelPainters, cxTextEdit, cxMemo, cxControls,
  cxContainer, cxEdit, cxGroupBox, cxPC,
  dxBar, cxClasses, cxGraphics, cxLookAndFeels, FMTBcd, DB,
  DBClient, Provider, cxDBEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxButtonEdit,
  cxCalc, cxCurrencyEdit, cxGridBandedTableView, cxGridDBBandedTableView,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, cxDBLabel, cxSpinEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSplitter, cxRichEdit,
  cxCheckBox, cxPCdxBarPopupMenu, DBCtrls, cxNavigator,
  cxBlobEdit, dxBarBuiltInMenu, SqlExpr;

type
  Tfrmmovto = class(TForm)
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
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    dts1: TDataSource;
    dtsdetail: TDataSource;
    cdsdetail: TClientDataSet;
    sdsdetail: TSQLDataSet;
    cdssdsdetail: TDataSetField;
    sdsCDMOVTO: TIntegerField;
    sdsCDTPMOVTO: TIntegerField;
    sdsDTEMISSAO: TDateField;
    sdsCDITRIM: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsCDITSAIDA: TIntegerField;
    sdsCDITENTRADA: TIntegerField;
    sdsCDITORDSERV: TIntegerField;
    sdsCDITMOVTOBAIXA: TIntegerField;
    sdsCDITLOCACAOACESSORIO: TIntegerField;
    sdsdetailCDMOVTO: TIntegerField;
    sdsdetailCDCNTCUSTO: TIntegerField;
    sdsdetailCDPRODUTO: TIntegerField;
    sdsdetailQTITEM: TFloatField;
    sdsdetailVLUNITARIO: TFMTBCDField;
    sdsdetailVLTOTAL: TFMTBCDField;
    sdsdetailCDDIGITADO: TStringField;
    sdsdetailVLSALDOVALOR: TFMTBCDField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    sdsdetailCDITMOVTO: TIntegerField;
    sdsdetailNMPRODUTO: TStringField;
    cdsdetailCDMOVTO: TIntegerField;
    cdsdetailCDCNTCUSTO: TIntegerField;
    cdsdetailCDPRODUTO: TIntegerField;
    cdsdetailQTITEM: TFloatField;
    cdsdetailVLUNITARIO: TFMTBCDField;
    cdsdetailVLTOTAL: TFMTBCDField;
    cdsdetailCDDIGITADO: TStringField;
    cdsdetailVLSALDOVALOR: TFMTBCDField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailCDITMOVTO: TIntegerField;
    cdsdetailNMPRODUTO: TStringField;
    cdsCDMOVTO: TIntegerField;
    cdsCDTPMOVTO: TIntegerField;
    cdsDTEMISSAO: TDateField;
    cdsCDITRIM: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsCDITSAIDA: TIntegerField;
    cdsCDITENTRADA: TIntegerField;
    cdsCDITORDSERV: TIntegerField;
    cdsCDITMOVTOBAIXA: TIntegerField;
    cdsCDITLOCACAOACESSORIO: TIntegerField;
    sdsNUSAIDA: TIntegerField;
    cdsNUSAIDA: TIntegerField;
    sdsCDSAIDA: TIntegerField;
    cdsCDSAIDA: TIntegerField;
    actabrirsaida: TAction;
    sdsNUENTRADA: TIntegerField;
    sdsCDENTRADA: TIntegerField;
    sdsNUORDSERV: TIntegerField;
    sdsCDORDSERV: TIntegerField;
    cdsNUENTRADA: TIntegerField;
    cdsCDENTRADA: TIntegerField;
    cdsNUORDSERV: TIntegerField;
    cdsCDORDSERV: TIntegerField;
    actabrirentrada: TAction;
    actabrirordserv: TAction;
    sdsdetailNMUNIDADE: TStringField;
    cdsdetailNMUNIDADE: TStringField;
    sdsdetailCDITLOTE: TIntegerField;
    sdsdetailDSOBSERVACAO: TBlobField;
    cdsdetailCDITLOTE: TIntegerField;
    cdsdetailDSOBSERVACAO: TBlobField;
    pnltop: TPanel;
    Label1: TLabel;
    edtcodigo: TcxTextEdit;
    Label2: TLabel;
    edtdtemissao: TcxDBDateEdit;
    Label7: TLabel;
    cbxcdtpmovto: TcxDBLookupComboBox;
    lblNUSAIDA: TLabel;
    txtnusaida: TDBText;
    lblnuentrada: TLabel;
    txtnuentrada: TDBText;
    lblnuordserv: TLabel;
    txtnuordserv: TDBText;
    pnl: TcxLabel;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDCNTCUSTO: TcxGridDBColumn;
    tbvCDDIGITADO: TcxGridDBColumn;
    tbvNMPRODUTO: TcxGridDBColumn;
    tbvNMUNIDADE: TcxGridDBColumn;
    tbvQTITEM: TcxGridDBColumn;
    tbvVLUNITARIO: TcxGridDBColumn;
    tbvVLTOTAL: TcxGridDBColumn;
    tbvDSOBSERVACAO: TcxGridDBColumn;
    grlLevel1: TcxGridLevel;
    sdsdetailQTITEM2: TFloatField;
    sdsdetailNMUNIDADE2: TStringField;
    cdsdetailQTITEM2: TFloatField;
    cdsdetailNMUNIDADE2: TStringField;
    tbvNMUNIDADE2: TcxGridDBColumn;
    tbvQTITEM2: TcxGridDBColumn;
    sdsdetailPRUNIDADE: TFloatField;
    cdsdetailPRUNIDADE: TFloatField;
    lblcdordproducao: TLabel;
    txtcdordproducao: TDBText;
    sdsCDORDPRODUCAO: TIntegerField;
    cdsCDORDPRODUCAO: TIntegerField;
    actabrirordproducao: TAction;
    sdsCDEMPRESA: TLargeintField;
    sdsCDITORDPRODUCAORECURSO: TIntegerField;
    sdsCDITORDPRODUCAOMATERIAL: TIntegerField;
    sdsCDITORDPRODUCAO: TIntegerField;
    sdsCDAPONTAMENTO: TIntegerField;
    sdsdetailCDEMPRESA: TLargeintField;
    sdsdetailCDITORDPRODUCAOMATERIAL: TIntegerField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDITORDPRODUCAORECURSO: TIntegerField;
    cdsCDITORDPRODUCAOMATERIAL: TIntegerField;
    cdsCDITORDPRODUCAO: TIntegerField;
    cdsCDAPONTAMENTO: TIntegerField;
    cdsdetailCDEMPRESA: TLargeintField;
    cdsdetailCDITORDPRODUCAOMATERIAL: TIntegerField;
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
    procedure cdsdetailCDDIGITADOValidate(Sender: TField);
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure colorEnter(Sender: TObject);
    procedure colorExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsDTEMISSAOValidate(Sender: TField);
    procedure cdsdetailQTITEMValidate(Sender: TField);
    procedure cdsCDTPMOVTOValidate(Sender: TField);
    procedure cbxcdtpmovtoEnter(Sender: TObject);
    procedure tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirsaidaExecute(Sender: TObject);
    procedure txtnusaidaDblClick(Sender: TObject);
    procedure txtnuentradaDblClick(Sender: TObject);
    procedure txtnuordservDblClick(Sender: TObject);
    procedure actabrirordservExecute(Sender: TObject);
    procedure actabrirentradaExecute(Sender: TObject);
    procedure cdsdetailQTITEM2Validate(Sender: TField);
    procedure cdsdetailAfterScroll(DataSet: TDataSet);
    procedure txtcdordproducaoDblClick(Sender: TObject);
    procedure actabrirordproducaoExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private
    tbl     : string;
    produto : TProduto;
    movto   : tmovto;
    procedure setrecord(cdtp:integer);
    procedure verificarestoque;
    function ExisteLivroAssociadoMovimentacao:Boolean;
    procedure setUnidade2;
    procedure AbrirTabelas;
    procedure ConfigurarEmpresa;
    procedure VoltarQtconsumoItordproducaomaterial;
    procedure VoltarQtproducaoOrdproducao;
  public  { Public declarations }
    registro   : TRegistro;
    function  Abrir(codigo:Integer):boolean;
  end;

var
  frmmovto: Tfrmmovto;

implementation

uses UMain, uDtmMain, classeordproducao;

{$R *.DFM}

const
  exibe    = 'Movimentação de Estoque';
  artigoI  = 'a';

procedure Tfrmmovto.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmmovto.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

function Tfrmmovto.Abrir(codigo: integer): boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmmovto.ConfigurarEmpresa;
begin
  tbvQTITEM2.Visible := empresa.material.produto.boqtestoque2;
  tbvNMUNIDADE2.Visible := empresa.material.produto.boqtestoque2;
  tbvCDCNTCUSTO.Visible := empresa.financeiro.bocntcusto;
end;

procedure Tfrmmovto.AbrirTabelas;
begin
  cbxcdtpmovto.Properties.ListSource := abrir_tabela(_tpmovto);
  TcxLookupComboBoxProperties(tbvCDCNTCUSTO.Properties).ListSource := abrir_tabela(_cntcusto);
end;

procedure Tfrmmovto.VoltarQtconsumoItordproducaomaterial;
var
  i : Integer;
  itordproducaomaterial : titordproducaomaterial;
begin
  for i := 0 to movto.ItMovto.Count - 1 do
  begin
    if movto.ItMovto.Items[i].cditordproducaomaterial > 0 then
    begin
      itordproducaomaterial := titordproducaomaterial.create;
      try
        itordproducaomaterial.select(movto.ItMovto.Items[i].cditordproducaomaterial);
        itordproducaomaterial.qtconsumo := itordproducaomaterial.qtconsumo - movto.ItMovto.Items[i].qtitem;
        itordproducaomaterial.Update;
      finally
        FreeAndNil(itordproducaomaterial);
      end;
    end;
  end;
end;

procedure Tfrmmovto.VoltarQtproducaoOrdproducao;
var
  ordproducao : TOrdProducao;
begin
  if (movto.cdordproducao > 0) and (movto.cditordproducaomaterial = 0) and (movto.cditordproducao = 0) and (movto.cditordproducaorecurso = 0) then
  begin
    ordproducao := TOrdProducao.create;
    try
      ordproducao.Select(movto.cdordproducao);
      ordproducao.qtproducao := ordproducao.qtproducao - movto.ItMovto.items[0].qtitem;
      ordproducao.Update;
    finally
      FreeAndNil(ordproducao);
    end;
  end;
end;

procedure Tfrmmovto.actExcluirExecute(Sender: TObject);
begin
  movto.Delete;
  cds.Close;
  exit;
  if registro.excluir then
  begin
    VoltarQtconsumoItordproducaomaterial;
    VoltarQtproducaoOrdproducao;
  end;
end;

procedure Tfrmmovto.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmmovto.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmmovto.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmmovto.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmmovto.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmmovto.actEditarExecute(Sender: TObject);
begin
  registro.editar;
  edtdtemissao.SetFocus;
end;

procedure Tfrmmovto.actSalvarExecute(Sender: TObject);
begin
  if (cdsdetail.State = dsinsert) or (cdsdetail.State = dsedit) then
  begin
    cdsdetail.Post;
  end;
  cds.ApplyUpdates(0);
  registro.set_readonly_dados(self, true);
  abrir(cdsCDMOVTO.asinteger);
end;

procedure Tfrmmovto.actCancelarExecute(Sender: TObject);
begin
  if registro.cancelar then
  begin
    registro.dados_atual;
  end;
end;

procedure Tfrmmovto.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.Caption := exibe;
  edtCodigo.SetFocus;
end;

procedure Tfrmmovto.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmmovto.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure Tfrmmovto.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

function Tfrmmovto.ExisteLivroAssociadoMovimentacao: Boolean;
begin
  result := False;
  if cdsdetailCDITMOVTO.IsNull then
  begin
    Exit;
  end;
  result := CodigodoCampo(_it+_livro, cdsdetailCDITMOVTO.AsString, _cd+_it+_movto) <> '';
end;

procedure Tfrmmovto.actAbrirProdutoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsdetail);
end;

procedure Tfrmmovto.FormDestroy(Sender: TObject);
begin
  freeandnil(produto);
  freeandnil(registro);
  FreeAndNil(movto);
end;

procedure Tfrmmovto.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmmovto.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  actAbrirProduto.OnExecute(actAbrirProduto);
end;

procedure Tfrmmovto.cdsBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cds);
end;

procedure Tfrmmovto.cdsdetailBeforePost(DataSet: TDataSet);
begin
  if cdsdetailCDDIGITADO.AsString = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Codigo+' '+_do+' '+_Produto]), mtinformation, [mbok], 0);
    cdsdetailCDDIGITADO.FocusControl;
    abort;
  end;
  registro.set_update(cdsdetail);
end;

procedure Tfrmmovto.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmmovto.cdsNewRecord(DataSet: TDataSet);
begin
  cdsCDTPMOVTO.asinteger  := registro.get_tipo_tabela_minumo;
  registro.NewRecord;
  cdsDTEMISSAO.AsDateTime := dtbanco;
  setrecord(cdsCDTPMOVTO.asinteger);
end;

procedure Tfrmmovto.cdsdetailCDDIGITADOValidate(Sender: TField);
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
  if produto.boativar <> _s then
  begin
    MessageDlg(_Produto+' '+sender.asstring+' - '+produto.nmproduto+#13'está desativado.', mtInformation, [mbOK], 0);
    Abort;
  end;
  produto.tpproduto.select(produto.cdtpproduto);
  if produto.tpproduto.boestoque <> _s then
  begin
    MessageDlg(_Produto+' '+sender.asstring+' - '+produto.nmproduto+#13'não pode ser usado porque está configurado que não controla estoque.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (produto.cdproduto <> 0) and (cdsdetailCDPRODUTO.AsInteger <> produto.cdproduto) then
  begin
    cdsdetailCDPRODUTO.AsInteger := produto.cdproduto;
  end;
  cdsdetailCDPRODUTO.AsInteger  := produto.cdproduto;
  cdsdetailNMPRODUTO.AsString  := produto.nmproduto;
  cdsdetailnmunidade.asstring  := qregistro.nomedocodigo(_unidade, produto.cdunidade);
  cdsdetailNMUNIDADE2.AsString := qregistro.nomedocodigo(_unidade, produto.cdunidade2);
  cdsdetailPRUNIDADE.AsFloat   := produto.prunidade;
  cdsdetailQTITEMValidate(cdsdetailQTITEM);
  setUnidade2;
  if movto.tpmovto.bovlvenda = _s then
  begin
    cdsdetailVLUNITARIO.AsCurrency := produto.vlvenda;
  end;
  verificarestoque;
end;

procedure Tfrmmovto.cdsdetailNewRecord(DataSet: TDataSet);
begin
  cdsdetailCDITMOVTO.AsString    := GerarCodigo(_itmovto);
  cdsdetailVLUNITARIO.AsCurrency := 0;
end;

procedure Tfrmmovto.cdsAfterScroll(DataSet: TDataSet);
begin
  setrecord(cdsCDTPMOVTO.asinteger);
  movto.Select(dataset);
  movto.ItMovto.Ler(cdsdetail);
  lblNUSAIDA.Visible   := not cdsNUSAIDA.IsNull;
  txtnusaida.Visible   := not cdsNUSAIDA.IsNull;
  lblNUentrada.Visible := not cdsNUentrada.IsNull;
  txtnuentrada.Visible := not cdsNUentrada.IsNull;
  lblNUordserv.Visible := not cdsNUordserv.IsNull;
  txtnuordserv.Visible := not cdsNUordserv.IsNull;
  lblcdordproducao.Visible := not cdscdordproducao.IsNull;
  txtcdordproducao.Visible := not cdscdordproducao.IsNull;
  if ExisteLivroAssociadoMovimentacao then
  begin
    actEditar.Enabled := False;
    actExcluir.Enabled := False;
  end;
end;

procedure Tfrmmovto.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure Tfrmmovto.colorEnter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmmovto.colorExit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmmovto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmmovto.FormCreate(Sender: TObject);
begin
  produto    := TProduto.create;
  movto      := TMovto.create;
  ConfigurarEmpresa;
  tbl := _movto;
  AbrirTabelas;
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
end;

procedure Tfrmmovto.setrecord(cdtp: integer);
begin
  movto.tpmovto.Select(cdtp);
end;

procedure Tfrmmovto.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure Tfrmmovto.grdDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(_movto, cdsdetail, false);
end;

procedure Tfrmmovto.cdsDTEMISSAOValidate(Sender: TField);
begin
  if Sender.AsDateTime > dtbanco then
  begin
    messagedlg('Data de Emissão não pode ser maior que a data atual.'#13'Digite outra uma data menor ou igual a data atual.', mterror, [mbok], 0);
    Sender.FocusControl;
    abort;
  end;
end;

procedure Tfrmmovto.cdsdetailQTITEMValidate(Sender: TField);
begin
  verificarestoque;
  cdsdetailVLTOTAL.AsCurrency := cdsdetailQTITEM.AsFloat * cdsdetailVLUNITARIO.ascurrency;
  if cdsdetailPRUNIDADE.AsFloat > 0 then
  begin
    cdsdetailQTITEM2.OnValidate := nil;
    produto.Select(cdsdetailcdproduto.AsInteger);
    cdsdetailQTITEM2.AsFloat := produto.CalcularQtitem2(cdsdetailQTITEM.AsFloat, cdsdetailPRUNIDADE.AsFloat);
    cdsdetailQTITEM2.OnValidate := cdsdetailQTITEM2Validate;
  end;
end;

procedure Tfrmmovto.cdsdetailQTITEM2Validate(Sender: TField);
begin
  if cdsdetailPRUNIDADE.AsFloat > 0 then
  begin
    cdsdetailQTITEM.OnValidate := nil;
    produto.Select(cdsdetailCDPRODUTO.AsInteger);
    cdsdetailQTITEM.AsFloat := produto.CalcularQtitem(cdsdetailQTITEM2.AsFloat, cdsdetailPRUNIDADE.AsFloat);
    cdsdetailQTITEM.OnValidate := cdsdetailQTITEMValidate;
  end;
end;

procedure Tfrmmovto.setUnidade2;
begin
  tbvQTITEM2.Options.Focusing := cdsdetailPRUNIDADE.AsFloat > 0;
end;

procedure Tfrmmovto.cdsdetailAfterScroll(DataSet: TDataSet);
begin
  setUnidade2;
end;

procedure Tfrmmovto.txtcdordproducaoDblClick(Sender: TObject);
begin
  actAbrirordproducao.onExecute(actAbrirordproducao);
end;

procedure Tfrmmovto.actabrirordproducaoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmmovto.cdsCDTPMOVTOValidate(Sender: TField);
begin
  if sender.AsString <> '' then
  begin
    movto.tpmovto.Select(sender.Asinteger);
  end;
end;

procedure Tfrmmovto.cbxcdtpmovtoEnter(Sender: TObject);
begin
  colorenter(Sender);
  abrir_tabela(_tpmovto);
end;

procedure Tfrmmovto.tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cddigitado then
  begin
    actabrirprodutoExecute(actabrirproduto)
  end;
end;

procedure Tfrmmovto.actabrirsaidaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmmovto.txtnusaidaDblClick(Sender: TObject);
begin
  actAbrirsaida.onExecute(actAbrirsaida);
end;

procedure Tfrmmovto.txtnuentradaDblClick(Sender: TObject);
begin
  actAbrirentrada.onExecute(actAbrirentrada);
end;

procedure Tfrmmovto.txtnuordservDblClick(Sender: TObject);
begin
  actAbrirordserv.onExecute(actAbrirordserv);
end;

procedure Tfrmmovto.actabrirordservExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmmovto.actabrirentradaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmmovto.verificarestoque;
var
  qtestoque : Real;
begin
  if movto.tpmovto.tpmovto <> _S then
  begin
    Exit;
  end;
  if cdsDTEMISSAO.AsDateTime < dtbanco then
  begin
    qtestoque := produto.qtestoquenodia(cdsdetailCDPRODUTO.AsInteger, cdsDTEMISSAO.AsDateTime);
    if cdsdetailQTITEM.AsFloat > qtestoque then
    begin
      messagedlg('Quantidade acima da quantidade em estoque!'#13'Digite um valor menor ou igual a '+formatfloat(__decimal3, qtestoque)+'.',mtInformation, [mbok], 0);
      cdsdetailQTITEM.FocusControl;
      abort;
    end;
  end
  else if produto.qtestoque < cdsdetailQTITEM.Ascurrency then
  begin
    messagedlg('Quantidade acima da quantidade em estoque!'#13+'Digite um valor menor ou igual a '+formatfloat(__decimal3, produto.qtestoque)+'.',mtInformation, [mbok], 0);
    cdsdetailQTITEM.FocusControl;
    abort;
  end;
end;

end.
