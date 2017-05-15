unit uconferenciapedido;

interface

uses
  System.Actions, System.UITypes,
  forms, ComCtrls, ToolWin, ExtCtrls, Mask, Controls, Buttons, sysutils, windows,
  Graphics, dialogs, StdCtrls, Classes, ActnList, Menus,
  DBCtrls, DBClient, Provider, SqlExpr, DB, Grids,
  urotinas, udatahora, ustrings, uExportarExcel, uconstantes, uregistro,
  classeRegistro, classegerar, classeconsiste, classeregistrainformacao, classeform,
  classeexecutasql, classeaplicacao, classeretornasql, classeusuario,
  classeempresa,
  cxLookAndFeelPainters, cxTextEdit, cxMemo, cxControls, cxContainer, cxEdit, cxGroupBox,
  cxPC, dxBar, cxClasses, cxGraphics, cxLookAndFeels, cxDBEdit, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxButtonEdit,
  cxCalc, cxCurrencyEdit, cxGridBandedTableView, cxGridDBBandedTableView,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, cxDBLabel, cxSpinEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSplitter, cxRichEdit,
  cxBlobEdit, cxCheckBox, cxPCdxBarPopupMenu, cxNavigator, Data.FMTBcd;

type
  TfrmConferenciaPedido = class(TForm)
    pnl: TPanel;
    act: TActionList;
    actNovo: TAction;
    actAbrir: TAction;
    actExcluir: TAction;
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
    dxbrlrgbtnAbrir: TdxBarLargeButton;
    dxbrlrgbtnexcluir: TdxBarLargeButton;
    dxbrlrgbtnprimeiro: TdxBarLargeButton;
    dxbrlrgbtnanterior: TdxBarLargeButton;
    dxbrlrgbtnproximo: TdxBarLargeButton;
    dxbrlrgbtnultimo: TdxBarLargeButton;
    dxbrlrgbtnfechar: TdxBarLargeButton;
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
    Label17: TLabel;
    txtnmstconferenciapedido: TcxDBLabel;
    grd: TcxGrid;
    grdtbv: TcxGridDBTableView;
    grlLevel1: TcxGridLevel;
    txtNMFUNCIONARIO: TDBText;
    sdsCDCONFERENCIAPEDIDO: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsCDFUNCIONARIO: TIntegerField;
    sdsCDPEDIDO: TIntegerField;
    sdsCDSTCONFERENCIAPEDIDO: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsNUPEDIDO: TStringField;
    sdsQTITEM: TFloatField;
    cdsCDCONFERENCIAPEDIDO: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsCDFUNCIONARIO: TIntegerField;
    cdsCDPEDIDO: TIntegerField;
    cdsCDSTCONFERENCIAPEDIDO: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsNUPEDIDO: TStringField;
    cdsQTITEM: TFloatField;
    cdssdsdetail: TDataSetField;
    sdsdetailCDITCONFERENCIAPEDIDO: TIntegerField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailCDITPEDIDO: TIntegerField;
    sdsdetailCDCONFERENCIAPEDIDO: TIntegerField;
    sdsdetailCDPRODUTO: TIntegerField;
    sdsdetailQTITEM: TFloatField;
    sdsdetailCDDIGITADO: TStringField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailCDITCONFERENCIAPEDIDO: TIntegerField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailCDITPEDIDO: TIntegerField;
    cdsdetailCDCONFERENCIAPEDIDO: TIntegerField;
    cdsdetailCDPRODUTO: TIntegerField;
    cdsdetailQTITEM: TFloatField;
    cdsdetailCDDIGITADO: TStringField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    grdtbvQTITEM: TcxGridDBColumn;
    grdtbvCDDIGITADO: TcxGridDBColumn;
    sdsdetailNMPRODUTO: TStringField;
    cdsdetailNMPRODUTO: TStringField;
    grdtbvNMPRODUTO: TcxGridDBColumn;
    sdsNMFUNCIONARIO: TStringField;
    sdsNMSTCONFERENCIAPEDIDO: TStringField;
    cdsNMFUNCIONARIO: TStringField;
    cdsNMSTCONFERENCIAPEDIDO: TStringField;
    sdsDTEMISSAO: TDateField;
    cdsDTEMISSAO: TDateField;
    txtdtemissao: TcxDBLabel;
    actinserir: TAction;
    actremover: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    txtNUPEDIDO: TDBText;
    lblnmfuncionario: TLabel;
    lblnupedido: TLabel;
    actabrirpedido: TAction;
    actimprimir: TAction;
    btnimprimir: TdxBarLargeButton;
    pumimprimir: TdxBarPopupMenu;
    sdsCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    sdsdetailCDEMPRESA: TLargeintField;
    cdsdetailCDEMPRESA: TLargeintField;
    procedure actNovoExecute(Sender: TObject);
    procedure actAbrirExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
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
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure colorEnter(Sender: TObject);
    procedure colorExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure grdtbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actinserirExecute(Sender: TObject);
    procedure actremoverExecute(Sender: TObject);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure actabrirpedidoExecute(Sender: TObject);
    procedure txtNUPEDIDODblClick(Sender: TObject);
    procedure actimprimirExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    tbl : string;
  public  { Public declarations }
    registro   : TRegistro;
    function  Abrir(codigo:integer):boolean;
  end;

var
  frmConferenciaPedido: TfrmConferenciaPedido;

implementation

uses UMain, UdlgInfNumIntervencao, uMenuRelatorio, uDtmMain;

{$R *.DFM}

const
  exibe    = 'Conferência de Pedido';
  artigoI  = 'a';

procedure TfrmConferenciaPedido.actNovoExecute(Sender: TObject);
var
  cdpedido, nupedido : string;
begin
  if usuario.funcionario.cdfuncionario = 0 then
  begin
    messagedlg('Usuário deve ser um funcionário para inserir um novo registro.', mtInformation, [mbOK], 0);
    Exit;
  end;
  nupedido := InputBox('Informe o número do Pedido', 'Pedido', '');
  if nupedido = '' then
  begin
    Exit;
  end;
  cdpedido := CodigodoCampo(_pedido, nupedido, _nupedido);
  if cdpedido = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [nupedido, maiuscula(_pedido)]), mterror, [mbok], 0);
    exit;
  end;
  registro.novo(sender);
  cdsCDPEDIDO.AsString := cdpedido;
  cdsNUPEDIDO.AsString := nupedido;
  cdsCDFUNCIONARIO.AsInteger := usuario.funcionario.cdfuncionario;
  registro.Salvar;
  actinserirExecute(actinserir);
end;

procedure TfrmConferenciaPedido.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmConferenciaPedido.actabrirpedidoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

function TfrmConferenciaPedido.Abrir(codigo: integer): boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmConferenciaPedido.actExcluirExecute(Sender: TObject);
begin
  if cdsdetail.RecordCount > 0 then
  begin
    MessageDlg('Exclusão permitida somente se não houver itens na conferência.', mtInformation, [mbOK], 0);
    Exit;
  end;
  registro.excluir;
end;

procedure TfrmConferenciaPedido.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmConferenciaPedido.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmConferenciaPedido.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmConferenciaPedido.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmConferenciaPedido.actremoverExecute(Sender: TObject);
var
  cditpedido, cdproduto : integer;
begin
  cdproduto := Leitura_Codigo_Bairra_produto;
  if cdproduto = 0 then
  begin
    Exit;
  end;
  if not cdsdetail.Locate('CDDIGITADO', cdproduto, []) then
  begin
    MessageDlg('Produto '+inttostr(cdproduto)+' não encontrado.', mtInformation, [mbOK], 0);
    Exit;
  end;
  registro.Editar;
  cditpedido := cdsdetailCDITPEDIDO.AsInteger;
  cdsdetail.Delete;
  registro.Salvar;
  ExecutaSQL('update itpedido set qtconferencia=qtconferencia-1 where cditpedido='+inttostr(cditpedido)+' and cdempresa='+cds.FieldByName(_cdempresa).asstring);
  actremoverExecute(actremover);
end;

procedure TfrmConferenciaPedido.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmConferenciaPedido.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.Caption := exibe;
  edtCodigo.SetFocus;
end;

procedure TfrmConferenciaPedido.grdtbvCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cddigitado    then
  begin
    actabrirprodutoExecute(actabrirproduto);
  end;
end;

procedure TfrmConferenciaPedido.txtNUPEDIDODblClick(Sender: TObject);
begin
  actabrirpedidoExecute(actabrirpedido);
end;

procedure TfrmConferenciaPedido.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmConferenciaPedido.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure TfrmConferenciaPedido.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, false);
end;

procedure TfrmConferenciaPedido.actAbrirProdutoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsdetail);
end;

procedure TfrmConferenciaPedido.FormDestroy(Sender: TObject);
begin
  freeandnil(registro);
end;

procedure TfrmConferenciaPedido.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmConferenciaPedido.actimprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure TfrmConferenciaPedido.actinserirExecute(Sender: TObject);
var
  cditpedido, cdproduto : integer;
begin
  cdproduto := Leitura_Codigo_Bairra_produto;
  if cdproduto = 0 then
  begin
    Exit;
  end;
  cditpedido := RetornaSQLInteger('select cditpedido from itpedido where cdempresa='+cds.FieldByName(_cdempresa).AsString+' and cdpedido='+cdscdpedido.AsString+' and cdproduto='+inttostr(cdproduto));
  if cditpedido = 0 then
  begin
    messagedlg('Produto não faz parte do Pedido '+cdsNUPEDIDO.AsString+'.', mtInformation, [mbOK], 0);
    Exit;
  end;
  if RetornaSQLCurrency('select qtitem-coalesce(qtconferencia, 0) from itpedido where cditpedido='+inttostr(cditpedido)+' and cdempresa='+cds.FieldByName(_cdempresa).AsString) = 0 then
  begin
    MessageDlg('Todos os itens deste produto já foram conferidos.', mtInformation, [mbOK], 0);
    abort;
  end;
  registro.Editar;
  cdsdetail.Insert;
  cdsdetailCDPRODUTO.AsInteger  := cdproduto;
  cdsdetailCDDIGITADO.AsInteger := cdproduto;
  cdsdetailCDITPEDIDO.AsInteger := cditpedido;
  registro.Salvar;
  ExecutaSQL('update itpedido set qtconferencia=coalesce(qtconferencia, 0)+1 where cditpedido='+inttostr(cditpedido)+' and cdempresa='+cds.FieldByName(_cdempresa).asstring);
  actinserirExecute(actinserir);
end;

procedure TfrmConferenciaPedido.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  actAbrirProduto.OnExecute(actAbrirProduto);
end;

procedure TfrmConferenciaPedido.cdsAfterScroll(DataSet: TDataSet);
begin
  actremover.Enabled := cdsdetail.RecordCount > 0;
  actinserir.Enabled := cds.RecordCount > 0;
end;

procedure TfrmConferenciaPedido.cdsBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cds);
end;

procedure TfrmConferenciaPedido.cdsdetailBeforePost(DataSet: TDataSet);
begin
  if (Dataset.State <> dsedit) and (Dataset.state <> dsinsert) then
  begin
    exit;
  end;
  registro.set_update(cdsdetail);
end;

procedure TfrmConferenciaPedido.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure TfrmConferenciaPedido.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
  cdsDTEMISSAO.AsDateTime           := dtbanco;
  cdsCDSTCONFERENCIAPEDIDO.AsInteger := qregistro.Codigo_status_novo(tbl);
  cdsQTITEM.AsFloat                 := 0;
end;

procedure TfrmConferenciaPedido.cdsdetailNewRecord(DataSet: TDataSet);
begin
  cdsdetailQTITEM.AsFloat := 1;
  cdsdetailCDITCONFERENCIAPEDIDO.AsString   := GerarCodigo(_it+_conferencia+_pedido);
end;

procedure TfrmConferenciaPedido.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmConferenciaPedido.colorEnter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmConferenciaPedido.colorExit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmConferenciaPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmConferenciaPedido.FormCreate(Sender: TObject);
begin
  tbl      := _conferencia+_pedido;
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
  GeraMenuRelatorio ('', btnimprimir, 53, cds, _conferencia+_pedido);
end;

end.
