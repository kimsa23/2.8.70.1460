unit uworkbox;

interface

uses
  System.Actions, System.UITypes,
  forms, windows, ToolWin, Controls, ExtCtrls, sysutils, graphics, dialogs, ComCtrls,
  Menus, Math, Classes, ActnList, Grids, Spin, StdCtrls,
  db,
  unumero, uconstantes, urotinas, uregistroib, uregistro, unovamensagem,
  uanotacao, udatahora, ustrings, uprotector,
  classeempresa, classeconsiste, classeusuario, classeexecutasql,
  classegerar, classeregistrainformacao, classeform, classemensagem, classeordserv,
  classeaplicacao, classeretornasql, classeetapa, classeRegistro, classeproduto, classequery,
  classeworkbox,
  cxPC, cxControls, dxBar, cxClasses, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxPCdxBarPopupMenu, dxBarBuiltInMenu, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxContainer, cxRichEdit, cxDBRichEdit, cxTextEdit, cxMemo, cxDBEdit,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxButtonEdit, cxCalc, cxBlobEdit, cxCheckBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmWorkBox = class(TForm)
    pnl: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    Panel5: TPanel;
    Splitter2: TSplitter;
    trv: TTreeView;
    lsvMensagem: TListView;
    ToolBar1: TToolBar;
    Panel7: TPanel;
    Panel8: TPanel;
    Splitter3: TSplitter;
    ActionList1: TActionList;
    actEnviar: TAction;
    actEtapaAnterior: TAction;
    actEtapaProxima: TAction;
    actEtapaMudar: TAction;
    actAtualizar: TAction;
    actEditar: TAction;
    actSalvar: TAction;
    actCancelar: TAction;
    pumEtapa: TPopupMenu;
    Imprimir1: TMenuItem;
    OrdemdeServio2: TMenuItem;
    actImprimirOrdServ: TAction;
    actImprimirOrdServCliente: TAction;
    mniordservcliente: TMenuItem;
    actMensagemNovo: TAction;
    actMensagemAbrir: TAction;
    ToolButton1: TToolButton;
    ToolButton11: TToolButton;
    ToolButton13: TToolButton;
    actMensagemExcluir: TAction;
    actCaixaPessoalEnviar: TAction;
    actimprimir: TAction;
    ToolButton6: TToolButton;
    actMensagemAtualizar: TAction;
    actCaixaGeralEnviar: TAction;
    actObsinternaNovo: TAction;
    actSolInternaNovo: TAction;
    actetapa: TAction;
    actfechar: TAction;
    actAbrirOrdserv: TAction;
    pgc: TcxPageControl;
    tbsproduto: TcxTabSheet;
    tbsacessorio: TcxTabSheet;
    tbsdefapr: TcxTabSheet;
    tbsdefenc: TcxTabSheet;
    tbsobservacao: TcxTabSheet;
    tbssolucao: TcxTabSheet;
    tbsobsinterna: TcxTabSheet;
    tbssolinterna: TcxTabSheet;
    ToolBar4: TToolBar;
    ToolButton9: TToolButton;
    ToolBar3: TToolBar;
    ToolButton10: TToolButton;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrManager1Bar1: TdxBar;
    dxbrsbtmRegistro: TdxBarSubItem;
    dxbrlrgbtnEditar: TdxBarLargeButton;
    dxbrlrgbtnsalvar: TdxBarLargeButton;
    dxbrlrgbtncancelar: TdxBarLargeButton;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    pumEnviar: TPopupMenu;
    EtapaAnterior1: TMenuItem;
    PrximaEtapa1: TMenuItem;
    Etapa1: TMenuItem;
    Enviarparaminhacaixapessoal1: TMenuItem;
    Enviarparacaixageral1: TMenuItem;
    btnopcoes: TdxBarLargeButton;
    actopcoes: TAction;
    pumopcoes: TdxBarPopupMenu;
    actordserventrada: TAction;
    actordservsaida: TAction;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dts: TDataSource;
    dtsdetail: TDataSource;
    dtsitacessorio: TDataSource;
    dtsitdefapr: TDataSource;
    dtsitdefenc: TDataSource;
    memDSOBSERVACAO: TcxDBMemo;
    memDSSOLUCAO: TcxDBMemo;
    edtDSOBSINTERNA: TcxDBRichEdit;
    edtDSSOLINTERNA: TcxDBRichEdit;
    tbvitdefenc: TcxGridDBTableView;
    grditdefencLevel1: TcxGridLevel;
    grditdefenc: TcxGrid;
    tbvitdefapr: TcxGridDBTableView;
    lvlitdefapr: TcxGridLevel;
    grditdefapr: TcxGrid;
    tbvitacessorio: TcxGridDBTableView;
    lvlitacessorio: TcxGridLevel;
    grditacessorio: TcxGrid;
    tbvdetail: TcxGridDBTableView;
    lvldetail: TcxGridLevel;
    grddetail: TcxGrid;
    tbvordserv: TcxGridDBTableView;
    lvlordserv: TcxGridLevel;
    grdordserv: TcxGrid;
    tbvdetailCDDIGITADO: TcxGridDBColumn;
    tbvdetailQTITEM: TcxGridDBColumn;
    tbvdetailNMPRODUTO: TcxGridDBColumn;
    tbvitacessorioCDACESSORIO: TcxGridDBColumn;
    tbvitacessorioQTITEM: TcxGridDBColumn;
    tbvitacessorioNMACESSORIO: TcxGridDBColumn;
    tbvitdefaprCDDEFEITO: TcxGridDBColumn;
    tbvitdefaprDSOBSERVACAO: TcxGridDBColumn;
    tbvitdefaprNMDEFEITO: TcxGridDBColumn;
    tbvitdefencCDDEFEITO: TcxGridDBColumn;
    tbvitdefencDSOBSERVACAO: TcxGridDBColumn;
    tbvitdefencNMDEFEITO: TcxGridDBColumn;
    tbvordservNUORDSERV: TcxGridDBColumn;
    tbvordservDTENTRADA: TcxGridDBColumn;
    tbvordservHRENTRADA: TcxGridDBColumn;
    tbvordservCDCLIENTE: TcxGridDBColumn;
    tbvordservNMCLIENTE: TcxGridDBColumn;
    tbvordservNMTPEQUIPAMENTO: TcxGridDBColumn;
    tbvordservNMMARCA: TcxGridDBColumn;
    tbvordservNMMODELO: TcxGridDBColumn;
    tbvordservNMFUNCIONARIO: TcxGridDBColumn;
    actabrircliente: TAction;
    tbvordservBOCONTRARO: TcxGridDBColumn;
    qry: TFDQuery;
    qrydetail: TFDQuery;
    qryitacessorio: TFDQuery;
    qryitdefapr: TFDQuery;
    qryitdefenc: TFDQuery;
    sca: TFDSchemaAdapter;
    qrydetailCDEMPRESA: TLargeintField;
    qrydetailCDITORDSERV: TIntegerField;
    qrydetailCDORDSERV: TIntegerField;
    qrydetailCDEQUIPAMENTO: TIntegerField;
    qrydetailCDSTITORDSERV: TIntegerField;
    qrydetailCDGARANTIA: TIntegerField;
    qrydetailCDUNIDADE: TIntegerField;
    qrydetailCDPRODUTO: TIntegerField;
    qrydetailCDSERVPLAN: TIntegerField;
    qrydetailCDITETAPA: TIntegerField;
    qrydetailCDTPGRADEVALOR: TIntegerField;
    qrydetailCDUSUARIOI: TIntegerField;
    qrydetailCDUSUARIOA: TIntegerField;
    qrydetailCDCOMPUTADORI: TIntegerField;
    qrydetailCDCOMPUTADORA: TIntegerField;
    qrydetailCDDIGITADO: TStringField;
    qrydetailVLUNITARIO: TBCDField;
    qrydetailQTITEM: TFloatField;
    qrydetailPRDESCONTO: TFloatField;
    qrydetailVLDESCONTO: TBCDField;
    qrydetailVLTOTAL: TBCDField;
    qrydetailNMITORDSERV: TStringField;
    qrydetailDSOBSERVACAO: TBlobField;
    qrydetailTSINCLUSAO: TSQLTimeStampField;
    qrydetailTSALTERACAO: TSQLTimeStampField;
    qrydetailNUPESAGEM: TStringField;
    qrydetailQTAGUA: TFloatField;
    qrydetailNUTEMPERATURA: TFloatField;
    qrydetailNUVIBRACAO: TFloatField;
    qrydetailCDFORMULACAO: TIntegerField;
    qrydetailTSINICIO: TSQLTimeStampField;
    qrydetailTSFIM: TSQLTimeStampField;
    qrydetailNMPRODUTO: TStringField;
    qryitacessorioCDORDSERV: TIntegerField;
    qryitacessorioCDACESSORIO: TIntegerField;
    qryitacessorioQTITEM: TIntegerField;
    qryitacessorioCDEMPRESA: TLargeintField;
    qryitacessorioCDUSUARIOI: TIntegerField;
    qryitacessorioCDUSUARIOA: TIntegerField;
    qryitacessorioCDCOMPUTADORI: TIntegerField;
    qryitacessorioCDCOMPUTADORA: TIntegerField;
    qryitacessorioTSINCLUSAO: TSQLTimeStampField;
    qryitacessorioTSALTERACAO: TSQLTimeStampField;
    qryitacessorioCDITACESSORIO: TIntegerField;
    qryitacessorioNMACESSORIO: TStringField;
    qryitdefaprCDORDSERV: TIntegerField;
    qryitdefaprCDDEFEITO: TIntegerField;
    qryitdefaprDSOBSERVACAO: TBlobField;
    qryitdefaprCDEMPRESA: TLargeintField;
    qryitdefaprCDUSUARIOI: TIntegerField;
    qryitdefaprCDUSUARIOA: TIntegerField;
    qryitdefaprCDCOMPUTADORI: TIntegerField;
    qryitdefaprCDCOMPUTADORA: TIntegerField;
    qryitdefaprTSINCLUSAO: TSQLTimeStampField;
    qryitdefaprTSALTERACAO: TSQLTimeStampField;
    qryitdefaprCDITDEFAPR: TIntegerField;
    qryitdefaprNMDEFEITO: TStringField;
    qryitdefencCDORDSERV: TIntegerField;
    qryitdefencCDDEFEITO: TIntegerField;
    qryitdefencDSOBSERVACAO: TBlobField;
    qryitdefencCDEMPRESA: TLargeintField;
    qryitdefencCDUSUARIOI: TIntegerField;
    qryitdefencCDUSUARIOA: TIntegerField;
    qryitdefencCDCOMPUTADORI: TIntegerField;
    qryitdefencCDCOMPUTADORA: TIntegerField;
    qryitdefencTSINCLUSAO: TSQLTimeStampField;
    qryitdefencTSALTERACAO: TSQLTimeStampField;
    qryitdefencCDITDEFENC: TIntegerField;
    qryitdefencNMDEFEITO: TStringField;
    tbvordservNMPRIORIDADE: TcxGridDBColumn;
    tbvordservNUCORPRIORIDADE: TcxGridDBColumn;
    procedure trvChange(Sender: TObject; Node: TTreeNode);
    procedure actEtapaProximaExecute(Sender: TObject);
    procedure actAtualizarExecute(Sender: TObject);
    procedure actEtapaAnteriorExecute(Sender: TObject);
    procedure actEtapaMudarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure trvDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure trvDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure trvMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure actImprimirOrdServExecute(Sender: TObject);
    procedure actImprimirOrdServClienteExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actMensagemNovoExecute(Sender: TObject);
    procedure lsvMensagemDblClick(Sender: TObject);
    procedure actMensagemAbrirExecute(Sender: TObject);
    procedure actMensagemExcluirExecute(Sender: TObject);
    procedure actCaixaPessoalEnviarExecute(Sender: TObject);
    procedure grdGetCellProps(Sender: TObject; ACol, ARow: Integer; AState: TGridDrawState; var AColor: TColor; AFont: TFont);
    procedure actMensagemAtualizarExecute(Sender: TObject);
    procedure actCaixaGeralEnviarExecute(Sender: TObject);
    procedure actObsinternaNovoExecute(Sender: TObject);
    procedure actSolInternaNovoExecute(Sender: TObject);
    procedure lsvMensagemSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
    procedure lsvMensagemExit(Sender: TObject);
    procedure actetapaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure grdDblClick(Sender: TObject);
    procedure actAbrirOrdservExecute(Sender: TObject);
    procedure actopcoesExecute(Sender: TObject);
    procedure actordservsaidaExecute(Sender: TObject);
    procedure actordserventradaExecute(Sender: TObject);
    procedure tbvdetailCDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tbvitacessorioCDACESSORIOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tbvitdefaprCDDEFEITOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tbvitdefencCDDEFEITOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure tbvordservCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirclienteExecute(Sender: TObject);
    procedure qryAfterScroll(DataSet: TDataSet);
    procedure qrydetailBeforePost(DataSet: TDataSet);
    procedure qrydetailNewRecord(DataSet: TDataSet);
    procedure qryitacessorioBeforePost(DataSet: TDataSet);
    procedure qryitacessorioNewRecord(DataSet: TDataSet);
    procedure qryitdefaprBeforePost(DataSet: TDataSet);
    procedure qryitdefencBeforePost(DataSet: TDataSet);
    procedure dtsStateChange(Sender: TObject);
    procedure qryAfterOpen(DataSet: TDataSet);
    procedure qrydetailCDDIGITADOValidate(Sender: TField);
    procedure qryitacessorioCDACESSORIOValidate(Sender: TField);
    procedure qryitdefaprCDDEFEITOValidate(Sender: TField);
    procedure qryitdefencCDDEFEITOValidate(Sender: TField);
    procedure ActionList1Execute(Action: TBasicAction; var Handled: Boolean);
    procedure tbvordservNMPRIORIDADECustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private    { Private declarations }
    produto : TProduto;
    etapa    : TEtapa;
    mensagem : TMensagem;
    ordserv  : TOrdserv;
    qtfiltro : integer;
    bomenususpensoetapa, bofiltrar : boolean;
    cdlink : TStrings;
    procedure CarregarEtapa;
    procedure gravarTotais;
    procedure InserirAnotacao(nmfield:string);
    procedure setcaixaresponsavel(no: TTreeNode; cdfuncionario: integer);
    procedure Set_workbox_execucao(noetapa, nogeral, no: TTreeNode; cdfuncionario:integer);
    procedure Set_Workbox_Gerente(nogeral, no: TTreeNode);
    procedure Set_workbox_responsavel(no: TTreeNode);
    procedure FecharQuery;
    procedure configurar_treeview;
  public     { Public declarations }
  end;

var
  frmWorkBox: TfrmWorkBox;

implementation

uses uDtmMain,
  umudaretapa,
  UfiltrarOrdServ,
  uMain,
  uimprimirrelatoriopadrao,
  udlgtabela;

{$R *.dfm}

const
  tbl      = _ordserv;
  exibe    = 'Ordem de Serviço';
  artigoI  = 'a';

procedure TfrmWorkBox.gravarTotais;
  function get_vltotal:Currency;
  begin
    qrydetail.DisableControls;
    try
      Result := 0;
      qrydetail.First;
      while not qrydetail.Eof do
      begin
        result := result + qrydetail.FieldByName(_vltotal).ascurrency;
        qrydetail.Next;
      end;
    finally
      qrydetail.EnableControls;
    end;
  end;
begin
  qry.fieldbyname(_vltotal).AsCurrency := get_vltotal - qry.fieldbyname(_vldesconto).AsCurrency;
end;

procedure TFrmWorkBox.Set_workbox_execucao(noetapa, nogeral, no: TTreeNode; cdfuncionario:integer);
var
  q : TClasseQuery;
begin
  if not empresa.ordserv.workbox.boexecucao then
  begin
    Exit;
  end;
  q := TClasseQuery.create('select count(*) from itetapa where dtfinal is null and cdempresa='+empresa.cdempresa.tostring+' and cdfuncionario='+inttostr(cdfuncionario));
  try
    if q.q.Fields[0].AsInteger > 0 then
    begin
      if Empresa.ordserv.workbox.bopessoal then
      begin
        noetapa := trv.Items.AddChild(nogeral, 'Execução ('+q.q.Fields[0].asstring+')')
      end
      else
      begin
        noetapa := trv.Items.AddChild(no     , 'Execução ('+q.q.Fields[0].asstring+')');
      end;
      noetapa.ImageIndex    := 97;
      noetapa.SelectedIndex := 97;
    end;
  finally
    FreeAndNil(q);
  end;
end;

procedure TfrmWorkBox.setcaixaresponsavel(no: TTreeNode; cdfuncionario:integer);
var
  noetapa, nogeral, nopessoal: TTreeNode;
  qe, q : TClasseQuery;
begin
  q  := TClasseQuery.Create('select e.cdetapa'+
                                  ',e.nmetapa' +
                                  ',e.nuordem' +
                                  ',(select count(*) from ordserv where cdempresa='+empresa.cdempresa.tostring+' and cdfuncionariotecnico='+inttostr(cdfuncionario)+' and cdetapa=e.cdetapa) qtordserv ' +
                            'from etapa e '+
                            'left join etapafuncionario f on f.cdetapa=e.cdetapa and e.cdempresa=f.cdempresa '+
                            'where e.cdempresa='+empresa.cdempresa.tostring+' and f.cdfuncionario='+inttostr(cdfuncionario)+' '+
                            'order by e.nuordem');
  if Empresa.ordserv.workbox.bopessoal then
  begin
    qe := TClasseQuery.create('select i.cdetapa'+
                                    ',count(i.cdordserv) '+
                              'from itetapa i '+
                              'inner join ordserv o on o.cdordserv=i.cdordserv and i.cdempresa=o.cdempresa '+
                              'inner join etapa e on e.cdetapa=i.cdetapa and e.cdempresa=i.cdempresa '+
                              'where i.dtfinal is null and i.cdempresa='+empresa.cdempresa.tostring+' and i.cdfuncionario='+inttostr(cdfuncionario)+' and o.CDFUNCIONARIOTECNICO='+inttostr(cdfuncionario)+' '+
                              'group by i.cdetapa '+
                              'order by e.nuordem');
  end;
  try
    nogeral                 := trv.Items.AddChild(no, Maiuscula(_Geral));
    nogeral.ImageIndex      := 94;
    nogeral.SelectedIndex   := 94;
    nopessoal               := trv.Items.AddChild(no, Maiuscula(_Pessoal));
    nopessoal.ImageIndex    := 23;
    nopessoal.SelectedIndex := 23;
    while not q.q.Eof do
    begin
      if Empresa.ordserv.workbox.bopessoal then
      begin
        noetapa := trv.Items.AddChild(nogeral, q.q.fieldbyname(_nmetapa).Asstring+' ('+q.q.fieldbyname(_qt+_ordserv).Asstring+') ')
      end
      else
      begin
        noetapa := trv.Items.AddChild(no, q.q.fieldbyname(_nmetapa).Asstring+' ('+q.q.fieldbyname(_qt+_ordserv).Asstring+') ');
      end;
      noetapa.ImageIndex    := 96;
      noetapa.SelectedIndex := 96;
      if (Empresa.ordserv.workbox.bopessoal) and (qe.q.Locate(_cdetapa, q.q.fieldbyname(_cdetapa).AsString, [locaseinsensitive])) and (qe.q.fields[1].asstring <> _0) then
      begin
        no               := trv.Items.AddChild(nopessoal, q.q.fieldbyname(_nmetapa).Asstring+' ('+qe.q.fields[1].asstring+')');
        no.ImageIndex    := 97;
        no.SelectedIndex := 97;
      end;
      q.q.next;
    end;
    set_workbox_execucao(noetapa, nogeral, no, cdfuncionario);
  finally
    freeandnil(q);
    freeandnil(qe);
  end;
end;

procedure TFrmWorkBox.Set_Workbox_Gerente(nogeral, no: TTreeNode);
var
  q : TClasseQuery;
begin
  if not (empresa.ordserv.workbox.bogerente and (usuario.funcionario.boworkboxgerente = _S)) then
  begin
    Exit;
  end;
  if (not empresa.ordserv.workbox.boresponsavel) and // se não tiver opcao da caixa do responsavel
     (usuario.funcionario.boworkboxresponsavel = _S) and
     (not (empresa.ordserv.workbox.boordserv and (usuario.funcionario.boworkboxordserv = _S))) then // se não tiver opcao da caixa ordem de servico
  begin
    trv.Items.Clear;
  end;
  no               := trv.Items.AddChild(nil, 'Gerente');
  no.ImageIndex    := 64;
  no.SelectedIndex := 64;
  q := TClasseQuery.create('select cdfuncionario,nmfuncionario from funcionario where cdempresa='+empresa.cdempresa.tostring+' and boworkboxresponsavel=''S'''); // adicionar os responsáveis
  try
    while not q.q.eof do
    begin
      nogeral               := trv.Items.AddChild(no, q.q.fieldbyname(_nmfuncionario).AsString);
      nogeral.ImageIndex    := 94;
      nogeral.SelectedIndex := 94;
      setcaixaresponsavel(nogeral, q.q.fieldbyname(_cdfuncionario).AsInteger);
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TFrmWorkBox.Set_workbox_responsavel(no: TTreeNode);
begin
  if not (empresa.ordserv.workbox.boresponsavel and (usuario.funcionario.boworkboxresponsavel = _S)) then
  begin
    Exit;
  end;
  if not (empresa.ordserv.workbox.boordserv and (usuario.funcionario.boworkboxordserv = _S)) then
  begin
    trv.Items.Clear;
  end;
  no               := trv.Items.AddChild(nil, usuario.nmusuario);
  no.ImageIndex    := 64;
  no.SelectedIndex := 64;
  setcaixaresponsavel(no, usuario.funcionario.cdfuncionario);
end;

procedure TfrmWorkBox.FecharQuery;
begin
  qry.Close;
  qrydetail.close;
  qryitacessorio.close;
  qryitdefapr.close;
  qryitdefenc.close;
end;

procedure TfrmWorkBox.CarregarEtapa;
var
  ce : TClasseQuery;
  cdetapa, nmetapa, qtitens : string;
  nogeral, No : TTreeNode;
  procedure carregar_etapa;
  var
    q : TClasseQuery;
  begin
    q := tclassequery.create('select etapafuncionario.cdetapa'+
                                   ',etapa.nmetapa'+
                                   ',etapa.nuordem'+
                                   ',count(*) '+
                             'from etapafuncionario '+
                             'inner join etapa on etapa.cdempresa=etapafuncionario.cdempresa and etapa.cdetapa=etapafuncionario.cdetapa '+
                             'inner join ordserv on ordserv.cdempresa=etapafuncionario.cdempresa and ordserv.cdetapa=etapafuncionario.cdetapa '+
                             'where etapafuncionario.cdempresa='+empresa.cdempresa.tostring+' and etapafuncionario.cdfuncionario='+inttostr(usuario.funcionario.cdfuncionario)+' '+
                             'group by etapa.nuordem'+
                             ',etapafuncionario.cdetapa'+
                             ',etapa.nmetapa');
    try
      while not q.q.Eof do
      begin
        cdetapa          := q.q.fieldbyname(_cdetapa).AsString;
        nmetapa          := q.q.fieldbyname(_nmetapa).Asstring;
        qtitens          := q.q.fields[3].asstring;
        no               := trv.Items.AddChild(trv.Items[0].item[0], nmetapa+' ('+qtitens+') ');
        no.ImageIndex    := 96;
        no.SelectedIndex := 96;
        if Empresa.ordserv.workbox.bopessoal and ce.q.Locate(_cdetapa, cdetapa, [locaseinsensitive]) then
        begin
          qtitens := ce.q.fields[1].asstring;
          if qtitens <> _0 then
          begin
            no               := trv.Items.AddChild(trv.Items[0].item[1], nmetapa+' ('+qtitens+')');
            no.ImageIndex    := 97;
            no.SelectedIndex := 97;
          end;
        end;
        q.q.next;
      end;
    finally
      freeandnil(q);
    end;
  end;
  procedure carregar_caixa_execucao;
  var
    q : tclassequery;
  begin
    if not empresa.ordserv.workbox.boexecucao then
    begin
      exit;
    end;
    q := tclassequery.create('select count(*) from itetapa where dtfinal is null and cdempresa='+empresa.cdempresa.tostring+' and cdfuncionario='+inttostr(usuario.funcionario.cdfuncionario));
    try
      if q.q.Fields[0].AsInteger > 0 then
      begin
        no               := trv.Items.AddChild(trv.Items[0].item[0], 'Execução ('+q.q.Fields[0].asstring+')');
        no.ImageIndex    := 97;
        no.SelectedIndex := 97;
      end;
    finally
      freeandnil(q);
    end;
  end;
begin
  ce := TClasseQuery.create;
  try
    if usuario.funcionario.cdfuncionario = 0 then
    begin
      exit;
    end;
    //if empresa.ordserv.workbox.boordserv  and (BooleandoCodigo(_funcionario, inttostr(usuario.funcionario.cdfuncionario), _boworkbox+_ordserv)) then
    if empresa.ordserv.workbox.boordserv  and (usuario.funcionario.boworkboxordserv = _S) then
    begin
      configurar_treeview;
      if Empresa.ordserv.workbox.bopessoal then
      begin
        ce.q.Open('select i.cdetapa,count(*) ' +
                  'from itetapa i '+
                  'inner join etapa e on e.cdetapa=i.cdetapa and i.cdempresa=e.cdempresa '+
                  'where i.dtfinal is null and i.cdempresa='+empresa.cdempresa.tostring+' and i.cdfuncionario='+inttostr(usuario.funcionario.cdfuncionario)+' '+
                  'group by i.cdetapa');
      end;
      carregar_etapa;
      carregar_caixa_execucao;
    end;
    set_workbox_responsavel(No);
    set_workbox_gerente(nogeral, No);
    trv.FullExpand;
  finally
    qry.Close;
    freeandnil(ce);
  end;
end;

procedure TfrmWorkBox.dtsStateChange(Sender: TObject);
var
  ativar : boolean;
begin
  ativar := false;
  if (dts.state = dsedit) or (dts.state = dsinsert) then
  begin
    ativar := false
  end
  else if dts.State = dsBrowse then
  begin
    ativar := true;
  end;
  actAtualizar.Enabled      := ativar;
  actetapa.Enabled          := ativar;
  actSalvar.Enabled         := not ativar;
  actCancelar.Enabled       := not ativar;
  actObsinternaNovo.Enabled := not ativar;
  actSolInternaNovo.Enabled := not ativar;
  actEditar.Enabled := ativar and (qry.RecordCount > 0);
  if ativar and (Empresa.ordserv.workbox.bopessoal or Empresa.ordserv.workbox.boexecucao) and qry.active then
  begin
    if not qry.fieldbyname(_nmfuncionario).isnull then
    begin
      actCaixaPessoalEnviar.Visible := false;
      actCaixaPessoalEnviar.Enabled := false;
      actEtapaAnterior.Visible      := bomenususpensoetapa;
      actEtapaAnterior.Enabled      := bomenususpensoetapa;
      actEtapaProxima.Visible       := bomenususpensoetapa;
      actEtapaProxima.Enabled       := bomenususpensoetapa;
      actEtapaMudar.Visible         := bomenususpensoetapa;
      actEtapaMudar.Enabled         := bomenususpensoetapa;
      actEditar.Enabled             := qry.Fieldbyname(_nmfuncionario).AsString = usuario.nmusuario;
    end
    else
    begin
      actCaixaPessoalEnviar.Visible := true;
      actCaixaPessoalEnviar.Enabled := true;
      actEtapaAnterior.Visible      := false;
      actEtapaAnterior.Enabled      := false;
      actEtapaProxima.Visible       := false;
      actEtapaProxima.Enabled       := false;
      actEtapaMudar.Visible         := false;
      actEtapaMudar.Enabled         := false;
      actEditar.Enabled             := false;
    end;
  end;
end;

procedure TfrmWorkBox.trvChange(Sender: TObject; Node: TTreeNode);
  function sqlgeral(cdetapa:string):string;
  var
    cdfuncionario : string;
  begin
    result := 'select o.cdempresa'+
                    ',o.dsobservacao'+
                    ',o.dssolucao'+
                    ',prioridade.nmprioridade'+
                    ',prioridade.nucor nucorprioridade'+
                    ',o.DSOBSINTERNA'+
                    ',o.DSSOLINTERNA'+
                    ',o.vldesconto'+
                    ',o.vltotal'+
                    ',o.tpprecoproduto'+
                    ',o.cdordserv'+
                    ',o.cdtpordserv'+
                    ',o.nuordserv'+
                    ',t.boentrada'+
                    ',t.bosaida'+
                    ',o.dtentrada'+
                    ',o.hrentrada'+
                    ',i.cditetapa'+
                    ',o.cdetapa';
    if not empresa.ordserv.boequipamento then
    begin
      result := result + ',o.bocontrato';
    end;
    result := result + ',t.BOBAIXAESTOQUE ';
    result := result + ',c.cdcliente'+
                       ',c.nmcliente';
    if Empresa.ordserv.boexibirequipamento then
    begin
      result := result + ',te.nmtpequipamento'+
                         ',m.nmmarca'+
                         ',d.nmmodelo';
      if empresa.ordserv.boequipamento then
      begin
        result := result + ',o.nuserie';
      //end
      //else if ordserv.bonuserie then
      //begin
        //result := result + ',e.nuserie';
      end;
    end;
    if Empresa.ordserv.workbox.bopessoal or Empresa.ordserv.workbox.boexecucao then
    begin
      result := result + ',f.nmfuncionario';
    end;
    result := result +
           ' from ordserv o '+
            'left join prioridade on prioridade.cdempresa=o.cdempresa and prioridade.cdprioridade=o.cdprioridade '+
            'left join tpordserv t on t.cdtpordserv=o.cdtpordserv and o.cdempresa=t.cdempresa '+
            'left join itetapa i on i.cdordserv=o.cdordserv and i.cdempresa=o.cdempresa ';//and itetapa.cdetapa = ordserv.cdetapa ';
    if Empresa.ordserv.boexibirequipamento then
    begin
      if empresa.ordserv.boequipamento then
      begin
        result := result +
             'left join tpequipamento te on te.cdtpequipamento=o.cdtpequipamento and te.cdempresa=o.cdempresa '+
             'left join marca m on m.cdmarca=o.cdmarca and m.cdempresa=o.cdempresa '+
             'left join modelo d on d.cdmodelo=o.cdmodelo and d.cdempresa=o.cdempresa ';
      end
      else
      begin
        result := result +
             'left join equipamento e on e.cdequipamento=o.cdequipamento and e.cdempresa=o.cdempresa '+
             'left join tpequipamento te on te.cdtpequipamento=e.cdtpequipamento and te.cdempresa=e.cdempresa '+
             'left join marca m on m.cdmarca=e.cdmarca and m.cdempresa=e.cdempresa '+
             'left join modelo d on d.cdmodelo=e.cdmodelo and d.cdempresa=e.cdempresa ';
      end;
    end;
    result := result + 'left join cliente c on c.cdcliente=o.cdcliente and c.cdempresa=o.cdempresa ';
    if Empresa.ordserv.workbox.bopessoal or Empresa.ordserv.workbox.boexecucao then
    begin
      result := result + 'left join funcionario f on i.cdfuncionario=f.cdfuncionario and f.cdempresa=i.cdempresa ';
    end;
    result := result + 'where i.cdempresa='+empresa.cdempresa.tostring+' and i.dtfinal is null ';
    if cdetapa <> '' then
    begin
      result := result + 'and o.cdetapa in ('+cdetapa+') ';
    end;
    // caixa do responsavel sem caixa pessoal
    if empresa.ordserv.workbox.boresponsavel and (not empresa.ordserv.workbox.bopessoal) and (node.Parent.Text = usuario.nmusuario) and (usuario.funcionario.cdfuncionario <> 0) then
    begin
      if cdetapa <> '' then
      begin
        result := result + 'and o.cdfuncionariotecnico='+inttostr(usuario.funcionario.cdfuncionario)+' '
      end
      else
      begin
        result := result + 'and i.cdfuncionario='+inttostr(usuario.funcionario.cdfuncionario)+' ';
      end;
    end;
    if empresa.ordserv.workbox.boresponsavel and empresa.ordserv.workbox.bopessoal and (node.Parent.Parent.Text = usuario.nmusuario) and (usuario.funcionario.cdfuncionario <> 0) then
    begin
      if cdetapa <> '' then
      begin
        result := result + 'and o.cdfuncionariotecnico='+inttostr(usuario.funcionario.cdfuncionario)+' '
      end
      else
      begin
        result := result + 'and i.cdfuncionario='+inttostr(usuario.funcionario.cdfuncionario)+' ';
      end;
    end;
    // caixa do gerente sem caixa pessoal
    if (not empresa.ordserv.workbox.bopessoal) and (node.level = 2) and (node.parent.Parent.Text = 'Gerente')  then
    begin
      cdfuncionario := qregistro.codigodonome(_funcionario, node.Parent.Text);
      if cdfuncionario <> '' then
      begin
        if cdetapa <> '' then
        begin
          result := result + 'and o.cdfuncionariotecnico='+cdfuncionario+' '
        end
        else
        begin
          result := result + 'and i.cdfuncionario='+cdfuncionario+' ';
        end;
      end
    end;
    // caixa do gerente com caixa pessoal
    if empresa.ordserv.workbox.bopessoal and (node.level = 3) and (node.parent.Parent.Parent.Text = 'Gerente') then
    begin
      cdfuncionario := qregistro.codigodonome(_funcionario, node.Parent.Parent.Text);
      if cdfuncionario <> '' then
      begin
        if cdetapa <> '' then
        begin
          result := result + 'and o.cdfuncionariotecnico='+cdfuncionario
        end
        else
        begin
          result := result + 'and i.cdfuncionario='+cdfuncionario;
        end;
      end;
    end;
  end;
  function sqlpessoal(cdetapa, cdfuncionario:string):string;
  begin
    result := 'select o.cdempresa'+
                    ',o.cdordserv'+
                    ',o.cdtpordserv'+
                    ',o.dsobservacao'+
                    ',o.dssolucao'+
                    ',o.DSOBSINTERNA'+
                    ',o.DSSOLINTERNA'+
                    ',o.vldesconto'+
                    ',o.vltotal'+
                    ',prioridade.nmprioridade'+
                    ',prioridade.nucor nucorprioridade'+
                    ',o.tpprecoproduto'+
                    ',o.nuordserv'+
                    ',t.boentrada'+
                    ',t.bosaida'+
                    ',i.cdordserv';
      result := result + ',c.cdcliente'+
                         ',c.nmcliente';
    if Empresa.ordserv.boexibirequipamento then
    begin
      result := result + ',te.nmtpequipamento'+
                         ',m.nmmarca'+
                         ',d.nmmodelo';
      if empresa.ordserv.boequipamento then
      begin
        result := result + ',o.nuserie';
      end;
    end;
    result := result +
                ',o.dtentrada'+
                ',o.hrentrada'+
                ',f.nmfuncionario'+
                ',i.cditetapa';
    if not empresa.ordserv.boequipamento then
    begin
      result := result + ',o.bocontrato';
    end;
    result := result + ',t.BOBAIXAESTOQUE '+
                ',t.BOBAIXAESTOQUE'+
                ',o.cdetapa '+
           'from itetapa i '+
           'left join ordserv o on o.cdordserv=i.cdordserv and o.cdempresa=i.cdempresa '+
           '1eft join prioridade on prioridade.cdempresa=o.cdempresa and prioridade.cdprioridade=o.cdprioridade '+
           'left join tpordserv t on t.cdtpordserv=o.cdtpordserv and o.cdempresa=t.cdempresa '+
           'left join funcionario f on i.cdfuncionario=f.cdfuncionario and f.cdempresa=i.cdempresa ';
    if Empresa.ordserv.boexibirequipamento then
    begin
      if empresa.ordserv.boequipamento then
      begin
        result := result +
             'left join tpequipamento te on te.cdtpequipamento=o.cdtpequipamento and te.cdempresa=o.cdempresa '+
             'left join marca m on m.cdmarca=o.cdmarca and m.cdempresa=o.cdempresa '+
             'left join modelo d on d.cdmodelo=o.cdmodelo and d.cdempresa=o.cdempresa ';
      end
      else
      begin
        result := result +
             'left join equipamento e on e.cdequipamento=o.cdequipamento and o.cdempresa=e.cdempresa '+
             'left join tpequipamento te on te.cdtpequipamento=e.cdtpequipamento and te.cdempresa=e.cdempresa '+
             'left join marca m on m.cdmarca=e.cdmarca and m.cdempresa=e.cdempresa '+
             'left join modelo d on d.cdmodelo=e.cdmodelo and d.cdempresa=e.cdempresa ';
      end;
    end;
    result := result + 'left join cliente c on c.cdcliente=o.cdcliente and o.cdempresa=c.cdempresa ';
    result := result + 'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdetapa='+cdetapa+' and i.dtfinal is null and i.cdfuncionario='+cdfuncionario;
  end;
var
  i : integer;
  cdordserv, cdfuncionario, cdetapa, sql, sqlwhere : string;
begin
  i := pos('(', node.text);
  if i <= 0 then
  begin
    exit;
  end;
  cdetapa := qregistro.codigodonome(_etapa, copy(node.Text, 1, i - 2));
  if ((node.Parent.Text = 'Geral') and (node.Parent.Level = 1)) or ((node.Parent.Text = usuario.nmusuario) and not Empresa.ordserv.workbox.bopessoal) then
  begin
    sql := sqlgeral(cdetapa);
    if bofiltrar and (ordserv.QtdItensEtapa(cdetapa) > qtfiltro) then
    begin
      sqlwhere := filtrarOrdserv(cdetapa)
    end;
  end
  else if (node.Level = 2) and (node.Parent.Parent.Text = 'Gerente') then
  begin
    sql := sqlgeral(cdetapa);
    if bofiltrar and (ordserv.QtdItensEtapa(cdetapa) > qtfiltro) then
    begin
      sqlwhere := filtrarOrdserv(cdetapa);
    end;
  end
  else if (node.Level = 3) and (node.Parent.Parent.Parent.Text = 'Gerente') and (node.Parent.Text = 'Geral') then
  begin
    sql := sqlgeral(cdetapa);
    if bofiltrar and (ordserv.QtdItensEtapa(cdetapa) > qtfiltro) then
    begin
      sqlwhere := filtrarOrdserv(cdetapa);
    end;
  end
  else if (node.Parent.Text = 'Pessoal') and (node.Level = 3) then
  begin
    cdfuncionario := qregistro.codigodonome(_funcionario, node.Parent.Parent.Text);
    sql           := sqlpessoal(cdetapa, cdfuncionario);
    if bofiltrar and (ordserv.QtdItensEtapaFuncionario(cdetapa, cdfuncionario) > qtfiltro) then
    begin
      sqlwhere := filtrarOrdserv(cdetapa);
    end;
  end
  else if node.Parent.Text = 'Pessoal' then
  begin
    if node.Level = 3 then
    begin
      cdfuncionario := qregistro.codigodonome(_funcionario, node.Parent.Parent.Text)
    end
    else
    begin
      cdfuncionario := inttostr(usuario.funcionario.cdfuncionario);
    end;
    sql := sqlpessoal(cdetapa, cdfuncionario);
    if bofiltrar and (ordserv.QtdItensEtapaFuncionario(cdetapa, cdfuncionario) > qtfiltro) then
    begin
      sql := filtrarOrdserv(cdetapa);
    end;
  end;
  if sql <> '' then
  begin
    cdordserv := '';
    if qry.Active then
    begin
      cdordserv := qry.fieldbyname(_cdordserv).Asstring;
    end;
    qry.Close;
    qry.sql.Text := sql;
    if sqlwhere <> '' then
    begin
      qry.sql.Text := qry.sql.Text + sqlwhere;
    end;
    qry.AfterScroll := nil;
    qry.Open;
    qry.AfterScroll := qryAfterScroll;
    qryAfterScroll(qry);
    if cdordserv <> '' then
    begin
      qry.Locate(_cdordserv, cdordserv, []);
    end;
  end;
end;

procedure TfrmWorkBox.actEtapaProximaExecute(Sender: TObject);
var
  I: Integer;
  cdetapaproximo, cdetapa, cdordserv : Integer;
  nmetapa : string;
  no : TTreeNode;
begin
  no             := trv.Selected;
  i              := pos('(', no.text);
  nmetapa        := copy(no.Text, 1, i - 2);
  cdetapa        := qregistro.CodigodoNomeInteiro(_etapa, nmetapa);
  cdetapaProximo := etapa.Proxima(cdetapa);
  cdordserv      := qry.fieldbyname(_cdordserv).AsInteger;
  if ordserv.AlterarEtapaOrdserv(cdordserv, cdetapa, cdetapaproximo) then
  begin
    qry.Refresh; // atualizar a quantidade de Ord.Serv. Na Pasta
    trv.Selected.Text := nmetapa + ' ('+inttostr(qry.RecordCount)+')';
    qry.close;
  end;
end;

procedure TfrmWorkBox.actAtualizarExecute(Sender: TObject);
begin
  FecharQuery;
  actEditar.Enabled := false;
  CarregarEtapa;
  trv.FullExpand;
  actMensagemAtualizarExecute(sender);
end;

procedure TfrmWorkBox.actEtapaAnteriorExecute(Sender: TObject);
var
  I: Integer;
  cdetapaproximo, cdetapa, cdordserv : Integer;
  nmetapa : string;
  no : TTreeNode;
begin
  no      := trv.Selected;
  i       := pos('(', no.text);
  nmetapa := copy(no.Text, 1, i - 2);
  cdetapa := qregistro.CodigodoNomeInteiro(_etapa, nmetapa);
  // obter o codigo da proxima Etapa
  cdetapaProximo := Etapa.Anterior(cdetapa);
  if cdetapaProximo = 0 then
  begin
    ShowMessage('Etapa Anterior Inexistente.');
    exit;
  end;
  cdordserv := qry.fieldbyname(_cdordserv).AsInteger;
  if not ordserv.AlterarEtapaOrdserv(cdordserv, cdetapa, cdetapaproximo) then
  begin
    exit;
  end;
  qry.refresh;
  trv.Selected.Text := nmetapa + ' ('+inttostr(qry.RecordCount)+')';
  qry.Close;
end;

procedure TfrmWorkBox.actEtapaMudarExecute(Sender: TObject);
var
  I: Integer;
  cdetapaproximo, cdetapa, cdordserv : Integer;
  nmetapa : string;
  no : TTreeNode;
begin
  cdordserv := qry.fieldbyname(_cdordserv).asinteger; // obter o numero da ordem de servico
  no        := trv.Selected; // obter o codigo etapa atual
  i         := pos('(', no.text);
  nmetapa   := copy(no.Text, 1, i - 2);
  cdetapa   := qregistro.codigodonomeInteiro(_etapa, nmetapa);
  cdetapaproximo := DlgMudardePara(_etapa, cdetapa);
  if cdetapaproximo = 0 then // se clicar em ok no form
  begin
    exit;
  end;
  if ordserv.AlterarEtapa(cdordserv, cdetapa, cdetapaproximo) then // se clicar em ok no form
  begin // atualizar a quantidade de Ord.Serv. Na Pasta
    trv.Selected.Text := nmetapa + ' ('+inttostr(ordserv.QtdItensEtapa(qregistro.CodigodoNome(_etapa, nmetapa)))+')';
    trvChange(sender, trv.Selected);
    qry.close;
  end;
end;

procedure TfrmWorkBox.FormShow(Sender: TObject);
begin
  ordserv                       := tordserv.create ;
  etapa                         := TEtapa.create   ;
  mensagem                      := TMensagem.create;
  bofiltrar                     := Empresa.ordserv.workbox.bofiltrar;
  qtfiltro                      := Empresa.ordserv.workbox.QTFILTRO;
  actCaixaPessoalEnviar.Caption := Empresa.ordserv.workbox.dspessoal;
  actCaixaGeralEnviar.Caption   := Empresa.ordserv.workbox.dsgeral;
  bomenususpensoetapa           := Empresa.ordserv.workbox.boMENUSUSPENSOETAPA;
  cdlink                        := TStringList.create;
  pgc.ActivePage                := tbsProduto;
  ConfigurarPermissoes(self);
end;

procedure TfrmWorkBox.trvDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if (source is TcxGridDBTableView) and (TcxGridDBTableView(Source).Name = 'tbvordserv') then
  begin
    Accept := true;
  end;
end;

procedure TfrmWorkBox.trvDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  cdetapa, cdordserv, cdetapaproximo : integer;
begin
  if (QRotinas.nome_status_treeview(trv.DropTarget.Text) = '') or (QRotinas.nome_status_treeview(trv.DropTarget.Text) = QRotinas.nome_status_treeview(trv.selected.Text)) then
  begin
    exit;
  end;
  cdordserv      := qry.fieldbyname(_cdordserv).AsInteger;
  cdetapaproximo := qregistro.CodigodoNomeInteiro(_etapa, QRotinas.nome_status_treeview(trv.DropTarget.Text));
  cdetapa        := qregistro.CodigodoNomeInteiro(_etapa, QRotinas.nome_status_treeview(trv.selected.Text));
  if not ordserv.AlterarEtapaOrdserv(cdordserv, cdetapa, cdetapaproximo) then
  begin
    exit;
  end;
  qry.Refresh;
  trv.Selected.Text   := QRotinas.nome_status_treeview(trv.selected.Text  ) + ' ('+inttostr(qry.RecordCount)+')';
end;

procedure TfrmWorkBox.trvMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  i : integer;
begin
  trv.PopupMenu := nil;
  if button <> mbright then
  begin
    exit;
  end;
  i := pos('(', trv.selected.text);
  if copy(trv.Selected.Text, 1, i - 2) = '' then
  begin
    exit;
  end;
  trv.PopupMenu := pumEtapa;
end;

procedure TfrmWorkBox.actImprimirOrdServExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(466, qregistro.codigodonome(_etapa, copy(trv.Selected.Text, 1, pos('(', trv.selected.text) - 2)));
end;

procedure TfrmWorkBox.ActionList1Execute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmWorkBox.actImprimirOrdServClienteExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(467, qregistro.codigodonome(_etapa, copy(trv.Selected.Text, 1, pos('(', trv.selected.text) - 2)));
end;

procedure TfrmWorkBox.actEditarExecute(Sender: TObject);
begin
  grdordserv.Enabled := false;
  trv.Enabled := false;
  tregistro.set_readonly_dados(self, false);
  TRegistro.set_grade_item(self, true);
  actCaixaGeralEnviar.enabled   := false;
  actCaixaPessoalEnviar.Enabled := false;
  actEtapaAnterior.Enabled      := False;
  actEtapaProxima.Enabled       := False;
  actEtapaMudar.Enabled         := False;
  actsalvar.Enabled := true;
  actcancelar.Enabled := true;
  acteditar.Enabled := false;
  qry.Edit;
end;

procedure TfrmWorkBox.actSalvarExecute(Sender: TObject);
begin
  GravarTotais;
  qry.Post;
  sca.ApplyUpdates;
  grdordserv.Enabled := true;
  trv.Enabled := true;
  tregistro.set_readonly_dados(self, true);
  TRegistro.set_grade_item(self, false);
  qryAfterScroll(qry);
  actsalvar.Enabled := false;
  actcancelar.Enabled := false;
  acteditar.Enabled := true;
end;

procedure TfrmWorkBox.actCancelarExecute(Sender: TObject);
begin
  qry.Cancel;
  {$IFNDEF VER300}qry.CancelUpdates;{$ENDIF}
  {$IFDEF VER300}sca.CancelUpdates;{$ENDIF}
  grdordserv.Enabled := true;
  trv.Enabled := true;
  tregistro.set_readonly_dados(self, true);
  TRegistro.set_grade_item(self, false);
  qryAfterScroll(qry);
  actsalvar.Enabled := false;
  actcancelar.Enabled := false;
  acteditar.Enabled := true;
end;

procedure TfrmWorkBox.actMensagemNovoExecute(Sender: TObject);
begin
  mensagem.novo(lsvmensagem, cdlink, self);
end;

procedure TfrmWorkBox.lsvMensagemDblClick(Sender: TObject);
begin
  actMensagemAbrirExecute(sender);
end;

procedure TfrmWorkBox.actMensagemAbrirExecute(Sender: TObject);
begin
  mensagem.abrir(lsvmensagem, cdlink, self);
  actmensagemAbrir.Enabled := false;
end;

procedure TfrmWorkBox.actMensagemExcluirExecute(Sender: TObject);
begin
  ExecutaSQL('update link set cdstlink=3 where cdempresa='+empresa.cdempresa.tostring+' and cdlink='+cdlink[lsvmensagem.itemindex]);
  mensagem.Carregar(lsvmensagem, cdlink);
  actMensagemExcluir.Enabled := false;
end;

procedure TfrmWorkBox.actCaixaPessoalEnviarExecute(Sender: TObject);
var
  cditetapa : string;
begin
  if usuario.funcionario.cdfuncionario <> 0 then
  begin
    cditetapa := qry.fieldbyname(_cditetapa).Asstring;
    ExecutaSQL('update itetapa set cdfuncionario='+inttostr(usuario.funcionario.cdfuncionario)+',dtiniciofunc='+quotedstr(DtBancos)+',hriniciofunc='+quotedstr(HrServer)+' '+
               'where cdempresa='+empresa.cdempresa.tostring+' and cdordserv='+qry.fieldbyname(_cdordserv).Asstring+' and cditetapa='+cditetapa);
    trvChange(sender, trv.Selected);
  end;
  // identificar o usuario
  // identificar a ordem de serviço
end;

procedure TfrmWorkBox.grdGetCellProps(Sender: TObject; ACol, ARow: Integer; AState: TGridDrawState; var AColor: TColor; AFont: TFont);
begin
{  if arow <= 0 then
  begin
    Exit;
  end;
  // define se a os esta na caixa pessoal ou geral mudar a cor da fonte
  if grd.GetCellDisplayText(8, arow) <> '' then afont.color := 10485760 // pessoal
                                           else afont.color := 1; // geral
  if grd.getcelldisplaytext(9, arow) = _S then // define se a os eh de contratomudar a cor da linha
  begin
    acolor := 7333627;
  end;}
end;

procedure TfrmWorkBox.actMensagemAtualizarExecute(Sender: TObject);
begin
  mensagem.Carregar(lsvmensagem, cdlink);
end;

procedure TfrmWorkBox.actCaixaGeralEnviarExecute(Sender: TObject);
var
  cdetapa, I: Integer;
  nmetapa : string;
  no : TTreeNode;
begin
  no      := trv.Selected;
  i       := pos('(', no.text);
  nmetapa := copy(no.Text, 1, i - 2);
  cdetapa := qry.fieldbyname(_cdetapa).AsInteger;
  if ordserv.AlterarEtapaOrdserv(qry.fieldbyname(_cdordserv).AsInteger, cdetapa, cdetapa) then // obter o codigo da proxima Etapa
  begin // atualizar a quantidade de Ord.Serv. Na Pasta
    qry.Refresh;
    trv.Selected.Text := nmetapa + ' ('+inttostr(qry.RecordCount)+')';
    qry.close;
  end;
end;

procedure TfrmWorkBox.InserirAnotacao(nmfield:string);
var
  rce : TRichEdit;
  b : TBlobField;
  filename : string;
begin
  rce := TRichEdit.Create(self);
  try
    rce.Parent    := self;
    rce.Visible   := false;
    rce.PlainText := false;
    filename      := NomeTabelaTemporaria;
    b := TBlobField(qry.FieldByName(nmfield));
    b.SaveToFile(filename);
    rce.Lines.LoadFromFile(filename);
    if Anotacao(rce, qry.fieldbyname(_cdordserv).Asstring, _ordserv) then
    begin
      rce.Lines.SaveToFile(filename);
      b.LoadFromFile(filename);
    end;
  finally
    sysutils.DeleteFile(filename);
    freeandnil(rce);
  end;
end;

procedure TfrmWorkBox.actObsinternaNovoExecute(Sender: TObject);
begin
  InserirAnotacao(_dsobsinterna);
end;

procedure TfrmWorkBox.actSolInternaNovoExecute(Sender: TObject);
begin
  InserirAnotacao(_dssolinterna);
end;

procedure TfrmWorkBox.lsvMensagemSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
begin
  actMensagemExcluir.Enabled := true;
  actmensagemAbrir.Enabled   := true;
end;

procedure TfrmWorkBox.qrydetailBeforePost(DataSet: TDataSet);
begin
  if (ordserv.tpordserv.boprodutoobrigatorio = _s) and dataset.fieldbyname(_cdproduto).isNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Produto]), mtinformation, [mbok], 0);
    dataset.fieldbyname(_cddigitado).FocusControl;
    abort;
  end;
  dataset.fieldbyname(_vltotal).ascurrency := dataset.fieldbyname(_vlunitario).ascurrency * dataset.fieldbyname(_qtitem).AsFloat;
  if Dataset.State = dsinsert then
  begin
    Dataset.Fieldbyname(_cditordserv).asString := GerarCodigo(_itordserv);
    if dataset.fieldbyname(_cdstitordserv).IsNull then
    begin
      dataset.Fieldbyname(_cdstitordserv).AsInteger := qregistro.Codigo_status_novo(_itordserv);
    end;
  end;
  Tregistro.setupdate(qrydetail);
end;

procedure TfrmWorkBox.qrydetailCDDIGITADOValidate(Sender: TField);
var
  cdproduto : integer;
begin
  cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, _boordserv);
  if cdproduto = 0 then
  begin
    Abort;
  end;
  produto.Select(cdproduto);
  if produto.boativar <> _s then
  begin
    MessageDlg('Produto '+Sender.asstring+' - '+produto.nmproduto+#13'está desativado.', mtInformation, [mbOK], 0);
    Abort;
  end;
  produto.tpproduto.select(produto.cdtpproduto);
  if (ordserv.tpordserv.bobaixaestoque = _s) and (produto.tpproduto.boestoque = _s) and (not empresa.material.produto.boordservestoquezerado) and (produto.qtestoque <= 0) then
  begin
    messagedlg('Produto '+Sender.asstring+' com estoque '+FormatFloat(__moedadec3, produto.qtestoque)+'.', mtinformation, [mbok], 0);
    abort;
  end;
  qrydetail.fieldbyname(_nmproduto).asstring     := produto.nmproduto;
  qrydetail.fieldbyname(_cdproduto).AsInteger    := cdproduto;
  qrydetail.fieldbyname(_cdunidade).asInteger    := produto.cdunidade;
  if produto.tpproduto.bogradevalor <> _s then
  begin
    if (qry.fieldbyname(_tpprecoproduto).asString = '') or (qry.fieldbyname(_tpprecoproduto).asString = _V)  or (produto.vlatacado = 0) or (produto.vlespecial = 0) then
    begin
      qrydetail.fieldbyname(_VLUNITARIO).ascurrency := produto.getvalorgrade(qrydetail.fieldbyname(_CDTPGRADEVALOR).AsInteger,
                                                                             qry.fieldbyname(_CDCLIENTE).asString,
                                                                             qrydetail.fieldbyname(_QTITEM).AsFloat)
    end
    else if qry.fieldbyname(_TPPRECOPRODUTO).asString = _A then
    begin
      qrydetail.fieldbyname(_VLUNITARIO).asCurrency := produto.vlatacado
    end
    else if qry.fieldbyname(_TPPRECOPRODUTO).asString = _E then
    begin
      qrydetail.fieldbyname(_VLUNITARIO).asCurrency := produto.vlespecial;
    end;
  end
  else
  begin
    qrydetail.fieldbyname(_VLUNITARIO).asCurrency := produto.getvalorgrade(qrydetail.fieldbyname(_CDTPGRADEVALOR).AsInteger,
                                                                           qry.fieldbyname(_CDCLIENTE).asString,
                                                                           qrydetail.fieldbyname(_QTITEM).AsFloat);
  end;
end;

procedure TfrmWorkBox.qrydetailNewRecord(DataSet: TDataSet);
begin
  qrydetail.FieldByName(_QTITEM).AsFloat        := 1;
  qrydetail.FieldByName(_VLUNITARIO).AsCurrency := 0;
  qrydetail.FieldByName(_VLTOTAL).AsCurrency    := 0;
end;

procedure TfrmWorkBox.qryitacessorioBeforePost(DataSet: TDataSet);
begin
  if Dataset.State = dsinsert then
  begin
    Dataset.Fieldbyname(_cditacessorio).asString := GerarCodigo(_itacessorio);
  end;
  Tregistro.setupdate(qryitacessorio);
end;

procedure TfrmWorkBox.qryitacessorioCDACESSORIOValidate(Sender: TField);
begin
  if not codigoexiste(_acessorio, sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.asstring, maiuscula(__acessorio)]), mterror, [mbok], 0);
    abort;
  end;
  Sender.DataSet.FieldByName(_nmacessorio).asstring := NomedoCodigo(_acessorio, sender.asstring);
end;

procedure TfrmWorkBox.qryitacessorioNewRecord(DataSet: TDataSet);
begin
  qryitacessorio.FieldByName(_QTITEM).AsFloat := 1;
end;

procedure TfrmWorkBox.qryitdefaprBeforePost(DataSet: TDataSet);
begin
  if Dataset.State = dsinsert then
  begin
    Dataset.Fieldbyname(_cditdefapr).asString := GerarCodigo(_itdefapr);
  end;
  Tregistro.setupdate(qryitdefapr);
end;

procedure TfrmWorkBox.qryitdefaprCDDEFEITOValidate(Sender: TField);
begin
  if not codigoexiste(_defeito, Sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.asstring, maiuscula(_defeito)]), mterror, [mbok], 0);
    abort;
  end;
  sender.DataSet.FieldByName(_NMDEFEITO).asstring := NomedoCodigo(_defeito, Sender.asstring);
end;

procedure TfrmWorkBox.qryitdefencBeforePost(DataSet: TDataSet);
begin
  if Dataset.State = dsinsert then
  begin
    Dataset.Fieldbyname(_cditdefenc).asString := GerarCodigo(_itdefenc);
  end;
  Tregistro.setupdate(qryitdefenc);
end;

procedure TfrmWorkBox.qryitdefencCDDEFEITOValidate(Sender: TField);
begin
  if not codigoexiste(_defeito, Sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.asstring, maiuscula(_defeito)]), mterror, [mbok], 0);
    abort;
  end;
  sender.DataSet.FieldByName(_NMDEFEITO).asstring := NomedoCodigo(_defeito, Sender.asstring);
end;

procedure TfrmWorkBox.qryAfterOpen(DataSet: TDataSet);
begin
  if not qrydetail.Active then
  begin
    qrydetail.Open;
  end;
  if not qryitacessorio.Active then
  begin
    qryitacessorio.Open;
  end;
  if not qryitdefenc.Active then
  begin
    qryitdefenc.Open;
  end;
  if not qryitdefapr.Active then
  begin
    qryitdefapr.Open;
  end;
end;

procedure TfrmWorkBox.qryAfterScroll(DataSet: TDataSet);
begin
  ordserv.tpordserv.Select(Dataset.fieldbyname(_cdtpordserv).Asinteger);
  actordserventrada.Visible := ordserv.tpordserv.boentrada = _s;
  actordservsaida.Visible   := ordserv.tpordserv.bosaida = _s;
  if not (Empresa.ordserv.workbox.bopessoal or Empresa.ordserv.workbox.boexecucao) then
  begin
    exit;
  end;
  if not qry.fieldbyname(_nmfuncionario).isnull then
  begin
    actCaixaGeralEnviar.Visible   := true;
    actCaixaGeralEnviar.enabled   := true;
    actCaixaPessoalEnviar.Visible := false;
    actCaixaPessoalEnviar.Enabled := false;
    if qry.Fieldbyname(_nmfuncionario).AsString = usuario.nmusuario then
    begin
      actEditar.Enabled        := true;
      actEtapaAnterior.Visible := bomenususpensoetapa;
      actEtapaProxima.Visible  := bomenususpensoetapa;
      actEtapaMudar.Visible    := bomenususpensoetapa;
    end
    else
    begin
      actEditar.Enabled        := false;
      actEtapaAnterior.Visible := false;
      actEtapaProxima.Visible  := false;
      actEtapaMudar.Visible    := false;
    end;
  end
  else
  begin
    actCaixaGeralEnviar.Visible   := false;
    actCaixaGeralEnviar.Enabled   := false;
    actCaixaPessoalEnviar.Visible := true;
    actCaixaPessoalEnviar.Enabled := true;
    actEtapaAnterior.Visible      := false;
    actEtapaProxima.Visible       := false;
    actEtapaMudar.Visible         := false;
    actEditar.Enabled             := false;
  end;
  tbsProduto.TabVisible    := ordserv.tpordserv.boproduto = _s;
  tbsAcessorio.TabVisible  := ordserv.tpordserv.boacessorio = _s;
  tbsDefapr.TabVisible     := ordserv.tpordserv.bodefapr = _s;
  tbsdefenc.TabVisible     := ordserv.tpordserv.bodefenc = _s;
  tbsObservacao.TabVisible := ordserv.tpordserv.boobservacao = _s;
  tbssolucao.TabVisible    := ordserv.tpordserv.bosolucao = _s;
  tbsobsinterna.TabVisible := ordserv.tpordserv.boobsinterna = _s;
  tbssolinterna.TabVisible := ordserv.tpordserv.bosolinterna = _s;
end;

procedure TfrmWorkBox.lsvMensagemExit(Sender: TObject);
begin
  actMensagemExcluir.Enabled := false;
  actmensagemAbrir.Enabled   := false;
end;

procedure TfrmWorkBox.actetapaExecute(Sender: TObject);
begin
//
end;

procedure TfrmWorkBox.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmWorkBox.FormDestroy(Sender: TObject);
begin
  freeandnil(produto);
  freeandnil(ordserv);
  freeandnil(etapa);
  freeandnil(mensagem);
  freeandnil(cdlink);
end;

procedure TfrmWorkBox.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(lowercase(copy(self.Name, 4, length(self.Name) - 3)), frmmain.tlbnew);
end;

procedure TfrmWorkBox.grdDblClick(Sender: TObject);
begin
  actAbrirOrdserv.onExecute(actAbrirOrdserv);
end;

procedure TfrmWorkBox.actAbrirOrdservExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qry, qry);
end;

procedure TfrmWorkBox.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure TfrmWorkBox.actordservsaidaExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_ordservsaida))), qry.FieldByName(_cdordserv).ASInteger, _cdordserv, false, false, false, false);
end;

procedure TfrmWorkBox.actordserventradaExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_ordserventrada))), qry.FieldByName(_cdordserv).ASInteger, _cdordserv, false, false, false, false);
end;

procedure TfrmWorkBox.tbvdetailCDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Tregistro.ButtonEditProduto(tbl, qrydetail, false);
end;

procedure TfrmWorkBox.tbvitacessorioCDACESSORIOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Tregistro.ButtonEdit(qryitacessorio, _acessorio, _cdacessorio, true);
end;

procedure TfrmWorkBox.tbvitdefaprCDDEFEITOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Tregistro.ButtonEdit(qryitdefapr, _defeito, _cddefeito, true);
end;

procedure TfrmWorkBox.tbvitdefencCDDEFEITOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Tregistro.ButtonEdit(qryitdefenc, _defeito, _cddefeito, true);
end;

procedure TfrmWorkBox.FormCreate(Sender: TObject);
begin
  tbvordservCDCLIENTE.Visible := Empresa.ordserv.boexibircliente;
  tbvordservNMCLIENTE.Visible := Empresa.ordserv.boexibircliente;
  produto  := TProduto.create;
  tbvordservBOCONTRARO.Visible := not empresa.ordserv.boequipamento;
  tregistro.set_readonly_dados(self, true);
  TRegistro.set_grade_item(self, false);
end;

procedure TfrmWorkBox.configurar_treeview;
begin
  trv.Items.Clear;

  trv.Items.AddFirst(nil, 'Ordem de Serviço');
  trv.Items[0].ImageIndex    := 64;
  trv.Items[0].SelectedIndex := 64;

  trv.Items.AddChild(trv.Items[0], Maiuscula(_Geral));
  trv.Items[0].Item[0].ImageIndex    := 94;
  trv.Items[0].Item[0].SelectedIndex := 94;

  if Empresa.ordserv.workbox.bopessoal then
  begin
    trv.Items.AddChild(trv.Items[0], Maiuscula(_Pessoal));
    trv.Items[0].Item[1].ImageIndex    := 23;
    trv.Items[0].Item[1].SelectedIndex := 23;
  end;
end;

procedure TfrmWorkBox.tbvordservCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nuordserv then
  begin
    actabrirordservExecute(actabrirordserv)
  end
  else if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdcliente then
  begin
    actabrirclienteExecute(actabrircliente);
  end;
end;

procedure TfrmWorkBox.tbvordservNMPRIORIDADECustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBColumn;
begin
  Column := tbvORDSERVNUCORPRIORIDADE;
  ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  if ACanvas.Font.Color = 0 then
  begin
    ACanvas.Font.Style := [];
  end
  else if ACanvas.Font.Color = clred then
  begin
    ACanvas.Font.Style := [fsStrikeOut, fsBold]
  end
  else
  begin
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfrmWorkBox.actabrirclienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qry, qry);
end;

end.
