unit utransporte;

interface

uses
  System.Actions, System.UITypes,
  forms, windows, sysutils, dialogs, graphics, Classes, ActnList, StdCtrls, ComCtrls,
  Mask, ToolWin, Controls, ExtCtrls, Buttons, Grids, Menus, variants,
  DBGrids, FMTBcd, DBClient, DBCtrls,  Provider, DB, sqlexpr,
  ustrings, uregistroIb, uregistro, uconstantes, unumero,
  udatahora, uvalidadocumento, urotinas, uRichEdit,
  classeempresa, classeretornasql, classeusuario, classeconsiste,
  classeaplicacao, classetransportadora, classeregistro, classegerar,
  classeregistrainformacao, classeform, ClasseQuery,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxButtonEdit, cxCalc, cxCurrencyEdit, dxBar,
  cxBarEditItem, cxClasses, cxLabel, cxMemo, cxDBEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxSplitter, cxPC, cxTextEdit, cxDropDownEdit, cxCalendar, cxSpinEdit,
  cxTimeEdit, cxMaskEdit, cxGroupBox, cxNavigator, dxBarBuiltInMenu;

type
  Tfrmtransporte = class(TForm)
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
    actAbrirTransportadora: TAction;
    actabrirproduto: TAction;
    actabrirpedido: TAction;
    actgerarnotafiscal: TAction;
    actabrirsaida: TAction;
    actGerarnotafiscaltodas: TAction;
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
    actfechar: TAction;
    bmg1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    pgc: TcxPageControl;
    tbsPedido: TcxTabSheet;
    cxSplitter1: TcxSplitter;
    dxBarDockControl1: TdxBarDockControl;
    tbs2: TcxTabSheet;
    pnl: TcxLabel;
    pnl1: TPanel;
    lbl1: TLabel;
    Label13: TLabel;
    Label7: TLabel;
    Label30: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    sds: TSQLDataSet;
    sdsdetail: TSQLDataSet;
    sdsitittransporte: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsdetail: TClientDataSet;
    cdsitittransporte: TClientDataSet;
    dts: TDataSource;
    dts1: TDataSource;
    dtsdetail: TDataSource;
    dtsitittransporte: TDataSource;
    sdsCDTRANSPORTE: TIntegerField;
    sdsCDSTTRANSPORTE: TIntegerField;
    sdsDTEMISSAO: TDateField;
    sdsDTSAIDA: TDateField;
    sdsHRSAIDA: TTimeField;
    sdsDTRETORNO: TDateField;
    sdsHRRETORNO: TTimeField;
    sdsDSOBSERVACAO: TBlobField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    cdsCDTRANSPORTE: TIntegerField;
    cdsCDSTTRANSPORTE: TIntegerField;
    cdsDTEMISSAO: TDateField;
    cdsDTSAIDA: TDateField;
    cdsHRSAIDA: TTimeField;
    cdsDTRETORNO: TDateField;
    cdsHRRETORNO: TTimeField;
    cdsDSOBSERVACAO: TBlobField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    sdsNMTRANSPORTADORA: TStringField;
    cdsNMTRANSPORTADORA: TStringField;
    edthrretorno: TcxDBTimeEdit;
    edtcdtransportadora: TcxDBButtonEdit;
    edtdtemissao: TcxDBDateEdit;
    edtdtsaida: TcxDBDateEdit;
    edthrsaida: TcxDBTimeEdit;
    edtdtretorno: TcxDBDateEdit;
    lblnmtransportadora: TDBText;
    sdsdetailCDTRANSPORTE: TIntegerField;
    sdsdetailCDPEDIDO: TIntegerField;
    sdsdetailNUPEDIDO: TStringField;
    sdsdetailPSBRUTO: TFloatField;
    sdsdetailVLTOTAL: TFMTBCDField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    cdssdsdetail: TDataSetField;
    cdsdetailCDTRANSPORTE: TIntegerField;
    cdsdetailCDPEDIDO: TIntegerField;
    cdsdetailNUPEDIDO: TStringField;
    cdsdetailPSBRUTO: TFloatField;
    cdsdetailVLTOTAL: TFMTBCDField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    dts2: TDataSource;
    sdsitittransporteCDPRODUTO: TIntegerField;
    sdsitittransporteCDDIGITADO: TStringField;
    sdsitittransporteQTITEM: TFloatField;
    sdsitittransporteVLUNITARIO: TFMTBCDField;
    sdsitittransporteVLTOTAL: TFMTBCDField;
    sdsitittransporteCDUSUARIOI: TIntegerField;
    sdsitittransporteCDUSUARIOA: TIntegerField;
    sdsitittransporteCDCOMPUTADORI: TIntegerField;
    sdsitittransporteCDCOMPUTADORA: TIntegerField;
    sdsitittransporteTSINCLUSAO: TSQLTimeStampField;
    sdsitittransporteTSALTERACAO: TSQLTimeStampField;
    cdsitittransporteCDPRODUTO: TIntegerField;
    cdsitittransporteCDDIGITADO: TStringField;
    cdsitittransporteQTITEM: TFloatField;
    cdsitittransporteVLUNITARIO: TFMTBCDField;
    cdsitittransporteVLTOTAL: TFMTBCDField;
    cdsitittransporteCDUSUARIOI: TIntegerField;
    cdsitittransporteCDUSUARIOA: TIntegerField;
    cdsitittransporteCDCOMPUTADORI: TIntegerField;
    cdsitittransporteCDCOMPUTADORA: TIntegerField;
    cdsitittransporteTSINCLUSAO: TSQLTimeStampField;
    cdsitittransporteTSALTERACAO: TSQLTimeStampField;
    memdsobservacao: TcxDBMemo;
    grditittransporteDBTableView1: TcxGridDBTableView;
    grditittransporteLevel1: TcxGridLevel;
    grditittransporte: TcxGrid;
    grditittransporteDBTableView1CDDIGITADO: TcxGridDBColumn;
    grditittransporteDBTableView1QTITEM: TcxGridDBColumn;
    grditittransporteDBTableView1VLUNITARIO: TcxGridDBColumn;
    grditittransporteDBTableView1VLTOTAL: TcxGridDBColumn;
    grddetailDBTableView1: TcxGridDBTableView;
    grddetailLevel1: TcxGridLevel;
    grddetail: TcxGrid;
    grddetailDBTableView1PSBRUTO: TcxGridDBColumn;
    grddetailDBTableView1VLTOTAL: TcxGridDBColumn;
    edtcodigo: TcxTextEdit;
    sdsitittransporteNMPRODUTO: TStringField;
    cdsitittransporteNMPRODUTO: TStringField;
    grditittransporteDBTableView1NMPRODUTO: TcxGridDBColumn;
    sdsitittransporteNMUNIDADE: TStringField;
    cdsitittransporteNMUNIDADE: TStringField;
    grditittransporteDBTableView1NMUNIDADE: TcxGridDBColumn;
    sdsdetailDTEMISSAO: TDateField;
    sdsdetailRZSOCIAL: TStringField;
    sdsdetailNMCONDPAGTO: TStringField;
    sdsdetailNMREPRESENTANTE: TStringField;
    cdsdetailDTEMISSAO: TDateField;
    cdsdetailRZSOCIAL: TStringField;
    cdsdetailNMCONDPAGTO: TStringField;
    cdsdetailNMREPRESENTANTE: TStringField;
    grddetailDBTableView1DTEMISSAO: TcxGridDBColumn;
    grddetailDBTableView1RZSOCIAL: TcxGridDBColumn;
    grddetailDBTableView1NMCONDPAGTO: TcxGridDBColumn;
    grddetailDBTableView1NMREPRESENTANTE: TcxGridDBColumn;
    sdsitittransporteCDITPEDIDO: TIntegerField;
    cdsitittransporteCDITPEDIDO: TIntegerField;
    grddetailDBTableView1NUPEDIDO: TcxGridDBColumn;
    edtnupedido: TcxBarEditItem;
    sdsdetailCDITTRANSPORTE: TIntegerField;
    sdsitittransporteCDITITTRANSPORTE: TIntegerField;
    sdsitittransporteCDITTRANSPORTE: TIntegerField;
    cdsitittransporteCDITITTRANSPORTE: TIntegerField;
    cdsitittransporteCDITTRANSPORTE: TIntegerField;
    cdsdetailCDITTRANSPORTE: TIntegerField;
    cdsdetailsdsitittransporte: TDataSetField;
    grddetailDBTableView1NMSTPEDIDO: TcxGridDBColumn;
    sdsdetailNMSTPEDIDO: TStringField;
    cdsdetailNMSTPEDIDO: TStringField;
    cdsdetailNUSAIDA: TIntegerField;
    grddetailDBTableView1NUSAIDA: TcxGridDBColumn;
    sdsitittransporteVLDESCONTO: TFMTBCDField;
    sdsitittransporteVLFRETE: TFMTBCDField;
    sdsitittransporteVLICMSSUBTRIB: TFMTBCDField;
    cdsitittransporteVLDESCONTO: TFMTBCDField;
    cdsitittransporteVLFRETE: TFMTBCDField;
    cdsitittransporteVLICMSSUBTRIB: TFMTBCDField;
    grditittransporteDBTableView1VLDESCONTO: TcxGridDBColumn;
    grditittransporteDBTableView1VLFRETE: TcxGridDBColumn;
    grditittransporteDBTableView1VLICMSSUBTRIB: TcxGridDBColumn;
    sdsitittransportePSBRUTO: TFloatField;
    cdsitittransportePSBRUTO: TFloatField;
    grditittransporteDBTableView1PSBRUTO: TcxGridDBColumn;
    pumimprimir: TdxBarPopupMenu;
    actimprimirromaneio: TAction;
    actimprimirromaneio2: TAction;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    sdsCDTRANSPORTADORA: TLargeintField;
    sdsCDEMPRESA: TLargeintField;
    cdsCDTRANSPORTADORA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    sdsdetailCDEMPRESA: TLargeintField;
    cdsdetailCDEMPRESA: TLargeintField;
    sdsitittransporteCDEMPRESA: TLargeintField;
    cdsitittransporteCDEMPRESA: TLargeintField;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actAbrirTransportadoraExecute(Sender: TObject);
    procedure lblnmtransportadoraDblClick(Sender: TObject);
    procedure actabrirprodutoExecute(Sender: TObject);
    procedure actabrirpedidoExecute(Sender: TObject);
    procedure actgerarnotafiscalExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure actabrirsaidaExecute(Sender: TObject);
    procedure pumpedidoPopup(Sender: TObject);
    procedure actGerarnotafiscaltodasExecute(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure cdsCDTRANSPORTADORAValidate(Sender: TField);
    procedure dtsStateChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure grditittransporteDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure grddetailDBTableView1NUPEDIDOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsdetailNUPEDIDOValidate(Sender: TField);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsdetailBeforePost(DataSet: TDataSet);
    procedure cdsitittransporteBeforePost(DataSet: TDataSet);
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure cdsitittransporteQTITEMValidate(Sender: TField);
    procedure edtnupedidoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtnupedidoExit(Sender: TObject);
    procedure edtnupedidoKeyPress(Sender: TObject; var Key: Char);
    procedure cdsitittransporteNewRecord(DataSet: TDataSet);
    procedure edtcodigoPropertiesChange(Sender: TObject);
    procedure cdsdetailCalcFields(DataSet: TDataSet);
    procedure cdsitittransporteCDDIGITADOValidate(Sender: TField);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure cdsitittransporteAfterDelete(DataSet: TDataSet);
    procedure cdsitittransporteAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure grddetailDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure grditittransporteDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actimprimirromaneioExecute(Sender: TObject);
    procedure actimprimirromaneio2Execute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    transportadora : TTransportadora;
    procedure atualizar_status(boinsert:boolean);
    procedure Carregar_lista_pedido_para_gerar_nota(cdittransporte:TStrings);
    procedure GravartotaisPedido(sender:TObject);
    procedure InserirItensPedido(cdpedido:integer);
    function  ExisteNotaParaEstePedido(cdpedido, cdtransporte: string):boolean;
    function  TodosPedidosTransporteComNotaFiscal:boolean;
  public  { Public declarations }
    registro : TRegistro;
    function  Abrir(codigo:integer):boolean;
  end;

var
  frmtransporte: Tfrmtransporte;

implementation

uses uLocalizarPedido, uMenuRelatorio, UMain, uDtmMain,
  ulocalizarTransportadora, uLocalizar, uExportarExcel, uimprimirrelatoriopadrao,
  udlgGerarSaida;

{$R *.DFM}

const
  tbl      = _transporte;
  exibe    = 'Transporte';
  artigoI  = 'o';

function Tfrmtransporte.TodosPedidosTransporteComNotaFiscal:boolean;
begin
  result := false;
  if cdsCDTRANSPORTE.asstring = '' then
  begin
    exit;
  end;
  result := RetornaSQLInteger('select count(cdpedido) from ittransporte where cdempresa='+empresa.cdempresa.tostring+' and cdtransporte='+ cdsCDTRANSPORTE.asstring) =
            RetornaSQLInteger('select count(*) '+
                              'from itsaida i '+
                              'inner join saida s on s.cdsaida=i.cdsaida and s.cdempresa=i.cdempresa '+
                              'where s.cdempresa='+empresa.cdempresa.tostring+' and s.cdtransporte='+cdsCDTRANSPORTE.asstring+' '+
                              'group by i.cdpedido');
end;

function Tfrmtransporte.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmtransporte.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmtransporte.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmtransporte.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmtransporte.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmtransporte.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmtransporte.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmtransporte.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmtransporte.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmtransporte.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure Tfrmtransporte.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure tfrmtransporte.atualizar_status(boinsert:boolean);
begin
  if boinsert then // se não estiver inserindo
  begin
    Exit;
  end;
  if cdsCDSTTRANSPORTE.asinteger = 1 then // status atual: pedido
  begin
    if TodosPedidosTransporteComNotaFiscal then
    begin
      cds.Edit;
      try
        cdsCDSTTRANSPORTE.asinteger := 2; // mudado para: nota fiscal
        cds.ApplyUpdates(0);
      except
      end;
    end;
  end
  else if cdsCDSTTRANSPORTE.asinteger = 2 then // status atual: nota fiscal
  begin
    if not TodosPedidosTransporteComNotaFiscal then
    begin
      cds.Edit;
      try
        cdsCDSTTRANSPORTE.asinteger := 1; // mudado para: "Pedido"
        cds.ApplyUpdates(0);
      except
      end;
    end;
  end;
end;

procedure Tfrmtransporte.actSalvarExecute(Sender: TObject);
var
  boinsert : boolean;
begin
  boinsert := false;
  if cds.State = dsinsert then
  begin
    boinsert := true;
  end;
  registro.salvar;
  atualizar_status(boinsert);
end;

procedure Tfrmtransporte.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmtransporte.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmtransporte.FormShow(Sender: TObject);
begin
  transportadora := ttransportadora.create;
  registro.set_readonly_dados(self, true);
  pgc.ActivePageIndex := 0;
  edtCodigo.SetFocus;
  pnl.caption := exibe;
end;

procedure Tfrmtransporte.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmtransporte.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure Tfrmtransporte.actAbrirTransportadoraExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmtransporte.lblnmtransportadoraDblClick(Sender: TObject);
begin
  actAbrirTransportadora.onExecute(actAbrirTransportadora);
end;

procedure Tfrmtransporte.actabrirprodutoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsitittransporte);
end;

procedure Tfrmtransporte.actabrirpedidoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsdetail);
end;

procedure Tfrmtransporte.actgerarnotafiscalExecute(Sender: TObject);
var
  q : TClasseQuery;
  cdcliente : string;
  cdcondpagto : integer;
begin
  if (cdsdetailCDTRANSPORTE.asstring <> '') and (cdsdetailCDPEDIDO.asstring <> '') then
  begin
    q := TClasseQuery.create('select S.bogerarinfo,S.bogerarsaida,S.nmstpedido,P.nupedido '+
                             'from pedido p '+
                             'inner join stpedido s on s.cdstpedido=p.cdstpedido AND p.cdempresa=s.cdempresa '+
                             'where p.cdempresa='+empresa.cdempresa.tostring+' and p.cdpedido='+cdsdetailCDPEDIDO.asstring);
    try
      if q.q.fieldbyname(_bogerarinfo).asstring = _N then
      begin
        messagedlg('Pedido '+q.q.fieldbyname(_nupedido).asstring+' não pode ser utilizado na Nota Fiscal.'#13+
                    'Pedido se encontra no status '+q.q.fieldbyname(_nmstpedido).asstring+'.'#13'Digite outro número de pedido.', mterror, [mbok], 0);
        abort;
      end;
      if q.q.fieldbyname(_bogerarsaida).asstring = _N then
      begin
        messagedlg('Pedido '+q.q.fieldbyname(_nupedido).asstring+' não pode ser utilizado na Nota Fiscal.'#13+
                    'Pedido se encontra no status '+q.q.fieldbyname(_nmstpedido).asstring+'.'#13'Digite outro número de pedido.', mterror, [mbok], 0);
        abort;
      end;
    finally
      freeandnil(q);
    end;
    cdcliente   := NomedoCodigo(_pedido, cdsdetailCDPEDIDO.asstring, _cdcliente);
    cdcondpagto := qregistro.inteirodoCodigo(_pedido, cdsdetailCDPEDIDO.asinteger, _cdcondpagto);
    if GerarSaida_transporte(cdsdetailCDITTRANSPORTE.Asinteger, cdcliente, cdcondpagto) then
    begin
      abrir(cdsCDTRANSPORTE.asinteger);
    end;
  end
end;

procedure Tfrmtransporte.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure Tfrmtransporte.actimprimirromaneio2Execute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(336, cdsCDTRANSPORTE.AsString);
end;

procedure Tfrmtransporte.actimprimirromaneioExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(445, cdsCDTRANSPORTE.AsString);
end;

procedure Tfrmtransporte.ToolButton10Click(Sender: TObject);
begin
  actNovoExecute(sender);
end;

procedure Tfrmtransporte.actabrirsaidaExecute(Sender: TObject);
begin
  if not actabrirsaida.Enabled then
  begin
    exit;
  end;
  if (cds.State = dsbrowse) and (not cdsdetail.fieldbyname(_nusaida).isNull) then
  begin
    frmmain.abrirformulario(_saida, RetornaSQLInteger('select s.cdsaida ' +
                                                     'from saida s '+
                                                     'inner join itsaida i on i.cdsaida=s.cdsaida and s.cdempresa=i.cdempresa '+
                                                     'where s.cdempresa='+empresa.cdempresa.tostring+' and i.cdpedido='+cdsdetailCDPEDIDO.asstring+' and s.cdtransporte='+cdsdetailCDTRANSPORTE.asstring+' '+
                                                     'and s.nusaida='+cdsdetail.fieldbyname(_nusaida).asstring));
  end;
end;

procedure Tfrmtransporte.pumpedidoPopup(Sender: TObject);
begin
  actgerarnotafiscal.Visible := not ExisteNotaParaEstePedido(cdsdetailCDPEDIDO.asstring, cdsdetailCDTRANSPORTE.asstring); // se já tiver sido emitido alguma nota para este pedido bloquear
end;

procedure Tfrmtransporte.actGerarnotafiscaltodasExecute(Sender: TObject);
var
  cdittransporte: TStrings;
begin
  cdittransporte := TStringList.Create;
  try
    Carregar_lista_pedido_para_gerar_nota(cdittransporte);
    if cdittransporte.count = 0 then
    begin
      messagedlg('Não existem pedidos para gerar nota fiscal.', mtinformation, [mbok], 0);
      abort;
    end;
    if GerarSaida_transporte(cdittransporte) then
    begin
      abrir(cdsCDTRANSPORTE.asinteger);
    end;
  finally
    freeandnil(cdittransporte);
  end;
end;

procedure Tfrmtransporte.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmtransporte.cdsCDTRANSPORTADORAValidate(Sender: TField);
begin
  if not transportadora.Select(Sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.AsString, maiuscula(_transportadora)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  if not qregistro.BooleandoCodigo(_sttransportadora, transportadora.cdsttransportadora, _bogerarinfo) then
  begin
    messagedlg('Transportadora está no status '+qregistro.NomedoCodigo(_sttransportadora, transportadora.cdsttransportadora)+#13'que não permite ser inserido no '+Exibe+'.'#13+
               'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsNMtransportadora.AsString := transportadora.nmtransportadora;
end;

procedure Tfrmtransporte.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
  if (dts.State = dsinsert) or (dts.State = dsedit) then
  begin
    edtnupedido.Visible := ivAlways
  end
  else
  begin
    edtnupedido.Visible := ivNever;
  end;
  actgerarnotafiscal.Visible      := acteditar.Enabled;
  actGerarnotafiscaltodas.Visible := actEditar.Enabled;
end;

procedure Tfrmtransporte.FormDestroy(Sender: TObject);
begin
  registro.destroy;
  transportadora.destroy;
end;

procedure Tfrmtransporte.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmtransporte.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmtransporte.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure Tfrmtransporte.edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtcdtransportadoraPropertiesButtonClick(self, cds);
end;

procedure Tfrmtransporte.grditittransporteDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(_pedido, cdsitittransporte, false);
end;

procedure Tfrmtransporte.grddetailDBTableView1NUPEDIDOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : integer;
begin
  codigo := LocalizarPedido;
  if codigo <> 0 then
  begin
    cdsdetailNUPEDIDO.asstring := qregistro.StringdoCodigo(_pedido, codigo, _nupedido);
    //InserirItensPedido(codigo);
  end;
end;

procedure Tfrmtransporte.cdsdetailNUPEDIDOValidate(Sender: TField);
var
  cdpedido, nmstpedido, cdstpedido:string;
  s : TClasseQuery;
begin
  cdpedido := CodigodoCampo(_pedido, sender.asstring, _nupedido);
  if cdpedido = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.AsString, maiuscula(_pedido)]), mterror, [mbok], 0);
    abort;
  end;
  cdstpedido  := Nomedocodigo(_pedido, cdpedido, _cdstpedido);
  nmstpedido  := Nomedocodigo(_stpedido, cdstpedido);
  if Nomedocodigo(_stpedido, cdstpedido, _bogerarinfo) = _N then
  begin
    messagedlg('Pedido '+sender.AsString+' não pode ser utilizado no Transporte.'#13'Pedido se encontra no status '+nmstpedido+'.'#13'Digite outro número de pedido.', mterror, [mbok], 0);
    abort;
  end;
  if Nomedocodigo(_stpedido, cdstpedido, _bogerar+_transporte) = _N then
  begin
    messagedlg('Pedido '+sender.AsString+' não pode ser utilizado no Transporte.'#13'Pedido se encontra no status '+nmstpedido+'.'#13'Digite outro número de pedido.', mterror, [mbok], 0);
    abort;
  end;
  s := TClasseQuery.create('select p.dtemissao'+
                                  ',c.rzsocial'+
                                  ',r.nmrepresentante' +
                                  ',s.nmstpedido'+
                                  ',sum(i.qtitem-i.qtatendida) qtitem'+
                                  ',cP.nmcondpagto ' +
                            'from pedido P ' +
                            'left join itpedido i on i.cdpedido=p.cdpedido and p.cdempresa=i.cdempresa '+
                            'left join cliente C on c.cdcliente=p.cdcliente and c.cdempresa=p.cdempresa ' +
                            'left join representante R on r.cdrepresentante=p.cdrepresentante and r.cdempresa=p.cdempresa ' +
                            'left join condpagto CP on cP.cdcondpagto=p.cdcondpagto and cp.cdempresa=p.cdempresa ' +
                            'left join stpedido s on s.cdstpedido=p.cdstpedido and s.cdempresa=p.cdempresa '+
                            'where p.cdempresa='+empresa.cdempresa.tostring+' and P.cdpedido='+cdpedido+' '+
                            'group by p.dtemissao'+
                                    ',c.rzsocial'+
                                    ',r.nmrepresentante' +
                                    ',s.nmstpedido'+
                                    ',cP.nmcondpagto');
  try
    if s.q.FieldByName(_qtitem).AsFloat = 0 then
    begin
      MessageDlg('Pedido '+sender.AsString+' já foi atendido.', mtInformation, [mbOK], 0);
      abort;
    end;
    cdsdetailCDPEDIDO.AsString        := cdpedido;
    cdsdetailDTEMISSAO.AsDateTime     := s.q.fieldbyname(_dtemissao).asDateTime;
    cdsdetailRZSOCIAL.asstring        := s.q.fieldbyname(_rzsocial).asstring;
    cdsdetailNMREPRESENTANTE.asstring := s.q.fieldbyname(_nm+_representante).asstring;
    cdsdetailNMstpedido.asstring      := s.q.fieldbyname(_nmstpedido).asstring;
    cdsdetailNMCONDPAGTO.asstring     := s.q.fieldbyname(_nm+_condpagto).asstring;
  finally
    freeandnil(s);
  end;
end;

procedure Tfrmtransporte.InserirItensPedido(cdpedido:integer);
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create('select i.cdproduto'+
                                  ',i.cddigitado'+
                                  ',p.nmproduto'+
                                  ',p.psbruto'+
                                  ',i.qtitem'+
                                  ',i.qtatendida'+
                                  ',U.NMUNIDADE'+
                                  ',I.CDITPEDIDO'+
                                  ',i.vldesconto'+
                                  ',i.vlfrete'+
                                  ',i.vlicmssubtrib'+
                                  ',i.vlunitario '+
                            'from itpedido i ' +
                            'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa ' +
                            'left join unidade u on u.cdunidade=p.cdunidade and u.cdempresa=p.cdempresa '+
                            'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdpedido='+cdpedido.ToString+' and i.qtitem>i.qtatendida');
  try
    while not q.q.eof do
    begin
      cdsitittransporte.insert;
      cdsitittransporteCDITPEDIDO.AsInteger     := q.q.fieldbyname(_cditpedido).AsInteger;
      cdsitittransporteNMPRODUTO.asstring       := q.q.fieldbyname(_nmproduto).asstring;
      cdsitittransporteCDPRODUTO.asstring       := q.q.fieldbyname(_cdproduto).asstring;
      cdsitittransporteCDDIGITADO.asstring      := q.q.fieldbyname(_cddigitado).asstring;
      cdsitittransporteNMUNIDADE.asstring       := q.q.fieldbyname(_nmunidade).asstring;
      cdsitittransporteVLUNITARIO.AsCurrency    := q.q.fieldbyname(_vlunitario).AsCurrency;
      cdsitittransporteQTITEM.asfloat           := q.q.fieldbyname(_qtitem).AsFloat - q.q.fieldbyname(_qtatendida).AsFloat;
      cdsitittransporteVLDESCONTO.AsCurrency    := q.q.fieldbyname(_vldesconto).AsCurrency / q.q.fieldbyname(_qtitem).AsFloat * cdsitittransporteQTITEM.asfloat;
      cdsitittransporteVLICMSSUBTRIB.AsCurrency := q.q.fieldbyname(_vlicmssubtrib).AsCurrency / q.q.fieldbyname(_qtitem).AsFloat * cdsitittransporteQTITEM.asfloat;
      cdsitittransporteVLFRETE.AsCurrency       := q.q.fieldbyname(_vlfrete).AsCurrency / q.q.fieldbyname(_qtitem).AsFloat * cdsitittransporteQTITEM.asfloat;
      cdsitittransporteVLTOTAL.AsCurrency       := cdsitittransporteQTITEM.asfloat * cdsitittransporteVLUNITARIO.AsCurrency;
      cdsitittransportePSBRUTO.AsFloat          := q.q.fieldbyname(_psbruto).AsFloat * cdsitittransporteQTITEM.asfloat;
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure Tfrmtransporte.cdsBeforePost(DataSet: TDataSet);
begin
  if dataset.fieldbyname(_dtemissao).IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+_de+' '+_Emissao]), mtinformation, [mbok], 0);
    dataset.fieldbyname(_dtemissao).FocusControl;
    abort;
  end;
  if (not Dataset.fieldbyname(_dtemissao).IsNull) and (Dataset.fieldbyname(_dtemissao).AsDateTime > Ultimo_Dia_Mes(dtbanco)+1) then
  begin
    messagedlg('Data de Emissão inválida!'#13'Digite uma nota dentro do mês corrente para continuar!', mtinformation, [mbok], 0);
    Dataset.fieldbyname(_dtemissao).FocusControl;
    abort;
  end;
  if dataset.fieldbyname(_dtsaida).IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+_de+' '+__Saida]), mtinformation, [mbok], 0);
    dataset.fieldbyname(_dtsaida).FocusControl;
    abort;
  end;
  if (not Dataset.fieldbyname(_dtsaida).IsNull) and (Dataset.fieldbyname(_dtsaida).AsDateTime < Dataset.fieldbyname(_dtemissao).AsDateTime) then
  begin
    messagedlg('Data de Saída inválida!'#13'Data de Saída não pode ser menor do que a Data de Emissão!', mtinformation, [mbok], 0);
    Dataset.fieldbyname(_dtsaida).FocusControl;
    abort;
  end;
  if dataset.fieldbyname(_hrsaida).IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Hora+' '+_da+' '+__Saida]), mtinformation, [mbok], 0);
    dataset.fieldbyname(_hrsaida).FocusControl;
    abort;
  end;
  registro.set_update(cds);
end;

procedure Tfrmtransporte.cdsdetailBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsdetail);
end;

procedure Tfrmtransporte.cdsitittransporteBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsitittransporte);
end;

procedure Tfrmtransporte.cdsdetailNewRecord(DataSet: TDataSet);
begin
  cdsdetailPSBRUTO.AsFloat         := 0;
  cdsdetailVLTOTAL.AsCurrency      := 0;
  cdsdetailCDITTRANSPORTE.AsString := GerarCodigo(_it+_transporte);
end;

procedure Tfrmtransporte.cdsitittransporteQTITEMValidate(Sender: TField);
begin
  cdsitittransporteVLTOTAL.AsCurrency := cdsitittransporteQTITEM.AsFloat * cdsitittransporteVLUNITARIO.AsCurrency;
end;

procedure Tfrmtransporte.GravartotaisPedido(sender:TObject);
var
  psbruto : Double;
  vltotal : currency;
  c : Tclientdataset;
begin
  if not cdsitittransporte.Active then
  begin
    cdsitittransporte.open;
  end;
  vltotal := 0;
  psbruto := 0;
  c       := tclientdataset.Create(nil);
  try
    if cdsitittransporte.RecordCount = 0 then
    begin
      exit;
    end;
    C.CloneCursor(cdsitittransporte, false);
    C.First;
    while not c.Eof do
    begin
      psbruto := psbruto + c.fieldbyname(_psbruto).AsFloat;
      vltotal := vltotal + c.fieldbyname(_vltotal).asCurrency - c.fieldbyname(_vldesconto).AsCurrency + c.fieldbyname(_vlfrete).AsCurrency + c.fieldbyname(_vlicmssubtrib).AsCurrency;
      c.Next;
    end;
  finally
    if (cdsdetail.State <> dsedit) and (cdsdetail.State <> dsinsert) then
    begin
      cdsDetail.Edit;
    end;
    cdsdetailVLTOTAL.ascurrency := vltotal;
    cdsdetailPSBRUTO.AsFloat    := psbruto;
    freeandnil(c);
  end;
end;

procedure Tfrmtransporte.edtnupedidoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : integer;
begin
  codigo := LocalizarPedido;
  if codigo <> 0 then
  begin
    cdsdetail.Insert;
    cdsdetailNUPEDIDO.asstring := qregistro.StringdoCodigo(_pedido, codigo, _nupedido);
    InserirItensPedido(codigo);
    edtnupedido.EditValue := '';
  end;
end;

procedure Tfrmtransporte.edtnupedidoExit(Sender: TObject);
var
  codigo : integer;
begin
  if varisnull(edtnupedido.EditValue) or (edtnupedido.EditValue = '') then
  begin
    exit;
  end;
  codigo := qregistro.CodigodoString(_pedido, edtnupedido.EditValue, _nupedido);
  if codigo <> 0 then
  begin
    cdsdetail.Insert;
    cdsdetailNUPEDIDO.asstring := qregistro.StringdoCodigo(_pedido, codigo, _nupedido);
    inseriritenspedido(codigo);
    edtnupedido.EditValue := '';
    edtnupedido.SetFocus(true);
  end;
  edtnupedido.EditValue := '';
  abort;
end;

procedure Tfrmtransporte.edtnupedidoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    edtnupedidoExit(sender);
    key := #0;
  end;
end;

procedure Tfrmtransporte.cdsitittransporteNewRecord(DataSet: TDataSet);
begin
  cdsitittransporteCDITITTRANSPORTE.AsString := GerarCodigo(_it+_it+_transporte);
end;

function Tfrmtransporte.ExisteNotaParaEstePedido(cdpedido, cdtransporte: string): boolean;
begin
  result := RetornaSQLInteger('select count(*) ' +
                              'from saida s '+
                              'inner join itsaida i on i.cdsaida=s.cdsaida and i.cdempresa=s.cdempresa '+
                              'where s.cdempresa='+empresa.cdempresa.tostring+' and i.cdpedido='+cdpedido+' and s.cdtransporte='+cdtransporte) > 0;
end;

procedure Tfrmtransporte.Carregar_lista_pedido_para_gerar_nota(cdittransporte:TStrings);
var
  q : TClasseQuery;
  nurec: integer;
begin
  q := TClasseQuery.create;
  cdsdetail.DisableControls;
  cdsitittransporte.DisableControls;
  nurec := cdsdetail.RecNo;
  try
    cdsdetail.First;
    while not cdsdetail.Eof do
    begin
      if (cdsdetailCDTRANSPORTE.asstring <> '') and (cdsdetailCDPEDIDO.asstring <> '') then
      begin
        q.q.close;
        q.q.open('select bogerarinfo,bogerarsaida '+
                  'from pedido p '+
                  'inner join stpedido s on s.cdstpedido=p.cdstpedido and p.cdempresa=s.cdempresa '+
                  'where p.cdempresa='+empresa.cdempresa.tostring+' and p.cdpedido='+cdsdetailCDPEDIDO.asstring);
        if (q.q.fieldbyname(_bogerarinfo).asstring  = _S) and (q.q.fieldbyname(_bogerarsaida).asstring = _S) and
           (not ExisteNotaParaEstePedido(cdsdetailCDPEDIDO.asstring, cdsdetailCDTRANSPORTE.asstring)) then
        begin
         cdittransporte.add(cdsdetailCDITTRANSPORTE.asstring);
        end;
      end;
      cdsdetail.next;
    end;
  finally
    freeandnil(q);
    cdsdetail.RecNo := nurec;
    cdsdetail.EnableControls;
    cdsitittransporte.EnableControls;
  end;
end;

procedure Tfrmtransporte.edtcodigoPropertiesChange(Sender: TObject);
begin
  //registro.setStatus(_transporte, cds);
end;

procedure Tfrmtransporte.cdsdetailCalcFields(DataSet: TDataSet);
var
  nusaida : string;
begin
  if (dataset.fieldbyname(_cdpedido).asstring <> '') and (dataset.fieldbyname(_cdtransporte).asstring <> '') then
  begin
    nusaida := RetornaSQLString('SELECT FIRST 1 nusaida '+
                                      'FROM SAIDA S '+
                                      'INNER JOIN ITSAIDA It ON It.CDSAIDA=S.cdsaida and s.cdempresa=it.cdempresa '+
                                      'where s.cdempresa='+empresa.cdempresa.tostring+' and it.cdpedido='+dataset.fieldbyname(_cdpedido).asstring+' and s.cdtransporte='+dataset.fieldbyname(_cdtransporte).asstring);
    if nusaida <> '' then
    begin
      dataset.fieldbyname(_nusaida).AsString := nusaida;
    end;
  end;
end;

procedure Tfrmtransporte.cdsitittransporteCDDIGITADOValidate(Sender: TField);
var
  q : TClasseQuery;
  codigo : string;
  qtsugerida : real;
begin
  if ExisteDetailMestre(_itPedido, _cdpedido, cdsdetailCDPEDIDO.asstring, _string, _cddigitado, sender.asstring, _string)=0 then
  begin
    showmessage('Codigo '+sender.asstring+' inexistente no pedido '+cdsdetailNUPEDIDO.asstring+'!');
    abort;
  end;
  q := TClasseQuery.create;
  try
    if CodigodoCampo(_produto, sender.asstring, _cdalternativo) <> '' then
    begin
      codigo := CodigodoCampo(_produto, sender.asstring, _cdalternativo)
    end
    else
    begin
      codigo := sender.asstring;
    end;
    q.q.Open('select i.cdproduto,p.nmproduto,i.qtitem,i.qtatendida,u.nmunidade,I.CDITPEDIDO,i.cdpedido,i.vlunitario '+
              'from itpedido i '+
              'inner join produto p on i.cdproduto=p.cdproduto and p.cdempresa=i.cdempresa ' +
              'left join unidade u on u.cdunidade=p.cdunidade and u.cdempresa=p.cdempresa '+
              'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdproduto='+codigo+' and cdpedido='+cdsdetailCDPEDIDO.asstring);
    cdsitittransporteCDITPEDIDO.AsInteger    := q.q.fieldbyname(_cditpedido).AsInteger;
    cdsitittransporteNMPRODUTO.asstring      := q.q.fieldbyname(_nmproduto).asstring;
    cdsitittransporteCDPRODUTO.asstring      := q.q.fieldbyname(_cdproduto).asstring;
    cdsitittransporteNMUNIDADE.asString      := q.q.fieldbyname(_nmunidade).asString;
    if cdsitittransporteVLUNITARIO.asinteger = 0 then
    begin
      cdsitittransporteVLUNITARIO.asstring   := q.q.fieldbyname(_vlunitario).asstring;
    end;
    if cdsitittransporteQTITEM.AsFloat = 0 then
    begin
      qtsugerida := q.q.fieldbyname(_qtitem).asfloat - q.q.fieldbyname(_qtatendida).asfloat;
      if qtsugerida < 0 then
      begin
        qtsugerida := 0;
      end;
      cdsitittransporteQTITEM.asfloat := qtsugerida;
    end;
    cdsitittransporteVLTOTAL.ascurrency := cdsitittransporteQTITEM.ascurrency * cdsitittransporteVLUNITARIO.ascurrency;
  finally
    freeandnil(q);
  end;
end;

procedure Tfrmtransporte.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
  cdsDTEMISSAO.AsDateTime := DtBanco;
  cdsHRSAIDA.AsDateTime   := HrBanco;
  cdsDTSAIDA.AsDateTime   := cdsDTEMISSAO.AsDateTime;
end;

procedure Tfrmtransporte.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure Tfrmtransporte.cdsitittransporteAfterDelete(DataSet: TDataSet);
begin
  GravartotaisPedido(DataSet);
end;

procedure Tfrmtransporte.cdsitittransporteAfterPost(DataSet: TDataSet);
begin
  GravartotaisPedido(DataSet);
end;

procedure Tfrmtransporte.FormCreate(Sender: TObject);
begin
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
  GeraMenuRelatorio ('', btnimprimir, 51, cds, _transporte);
end;

procedure Tfrmtransporte.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure Tfrmtransporte.grddetailDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nupedido then
  begin
    actabrirpedidoExecute(actabrirpedido)
  end
  else if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nusaida  then
  begin
    actabrirsaidaExecute(actabrirsaida);
  end;
end;

procedure Tfrmtransporte.grditittransporteDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cddigitado then
  begin
    actabrirprodutoExecute(actabrirproduto);
  end;
end;

procedure Tfrmtransporte.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

end.
