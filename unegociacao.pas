unit unegociacao;

interface

uses
  System.Actions, System.UITypes,
  forms, Windows, Classes, StdCtrls, Controls, ExtCtrls, Buttons, dialogs, sysutils,
  ActnList, ComCtrls, ToolWin, Mask, Menus,
  FMTBcd, DB, DBCtrls, DBGrids, DBClient, Provider, Grids, sqlexpr,
  urotinas, uregistroib, uregistro, uconstantes, ulocalizar, ustrings,
  unumero, uExportarExcel, ulocalizarproduto, udatahora,
  classeusuario, classeconsiste, classeexecutasql, classegerar,
  classeduplicata, classeempresa, classecliente, classeregistrainformacao, classeform,
  classeretornasql, classeregistro, classemovbancario, classenegociacao,
  dxBar, cxClasses, cxControls, cxContainer, cxEdit, cxTextEdit, cxGraphics,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,
  cxCalendar, cxDBEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxCurrencyEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  cxButtonEdit, cxLabel, cxDBLabel, cxSplitter, cxLookAndFeels,
  cxLookAndFeelPainters, cxCalc, cxPCdxBarPopupMenu, cxPC,
  cxNavigator, cxMemo, dxBarBuiltInMenu;

type
  ESegurancaException = class(Exception);
  Tfrmnegociacao = class(TForm)
    pnl: TPanel;
    act: TActionList;
    actNovo: TAction;
    actAbrir: TAction;
    actEditar: TAction;
    actSalvar: TAction;
    actImprimir: TAction;
    actExcluir: TAction;
    actCancelar: TAction;
    actPrimeiro: TAction;
    actAnterior: TAction;
    actProximo: TAction;
    actUltimo: TAction;
    actprocessar: TAction;
    actabrirduplicata: TAction;
    actabrirduplicatasaida: TAction;
    actfechar: TAction;
    pnl1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
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
    dxBarLargeButton1: TdxBarLargeButton;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    edtcodigo: TcxTextEdit;
    edtdtemissao: TcxDBDateEdit;
    dts1: TDataSource;
    cdsnegociacaosaida: TClientDataSet;
    dtsnegociacaosaida: TDataSource;
    sdsnegociacaosaida: TSQLDataSet;
    sdsCDNEGOCIACAO: TIntegerField;
    sdsDTEMISSAO: TDateField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsVLDESCONTO: TFMTBCDField;
    sdsVLJUROS: TFMTBCDField;
    sdsVLACRESCIMO: TFMTBCDField;
    cdsCDNEGOCIACAO: TIntegerField;
    cdsDTEMISSAO: TDateField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsVLENTRADA: TFMTBCDField;
    cdsVLSAIDA: TFMTBCDField;
    cdsVLDESCONTO: TFMTBCDField;
    cdsVLJUROS: TFMTBCDField;
    cdsVLACRESCIMO: TFMTBCDField;
    sdsnegociacaosaidaCDNEGOCIACAOSAIDA: TIntegerField;
    sdsnegociacaosaidaCDDUPLICATA: TIntegerField;
    sdsnegociacaosaidaCDUSUARIOI: TIntegerField;
    sdsnegociacaosaidaCDUSUARIOA: TIntegerField;
    sdsnegociacaosaidaCDCOMPUTADORI: TIntegerField;
    sdsnegociacaosaidaCDCOMPUTADORA: TIntegerField;
    sdsnegociacaosaidaCDNEGOCIACAO: TIntegerField;
    sdsnegociacaosaidaVLDUPLICATA: TFMTBCDField;
    sdsnegociacaosaidaTSINCLUSAO: TSQLTimeStampField;
    sdsnegociacaosaidaTSALTERACAO: TSQLTimeStampField;
    sdsnegociacaosaidaNUDUPLICATA: TStringField;
    cdssdsnegociacaosaida: TDataSetField;
    cdsnegociacaosaidaCDNEGOCIACAOSAIDA: TIntegerField;
    cdsnegociacaosaidaCDDUPLICATA: TIntegerField;
    cdsnegociacaosaidaCDUSUARIOI: TIntegerField;
    cdsnegociacaosaidaCDUSUARIOA: TIntegerField;
    cdsnegociacaosaidaCDCOMPUTADORI: TIntegerField;
    cdsnegociacaosaidaCDCOMPUTADORA: TIntegerField;
    cdsnegociacaosaidaCDNEGOCIACAO: TIntegerField;
    cdsnegociacaosaidaVLDUPLICATA: TFMTBCDField;
    cdsnegociacaosaidaTSINCLUSAO: TSQLTimeStampField;
    cdsnegociacaosaidaTSALTERACAO: TSQLTimeStampField;
    cdsnegociacaosaidaNUDUPLICATA: TStringField;
    lblcdcliente: TLabel;
    edtCDCLIENTE: TcxDBButtonEdit;
    sdsCDSTNEGOCIACAO: TIntegerField;
    cdsCDSTNEGOCIACAO: TIntegerField;
    sdsnegociacaosaidaDTVENCIMENTO: TDateField;
    sdsnegociacaosaidaPRMORADIARIA: TFloatField;
    cdsnegociacaosaidaDTVENCIMENTO: TDateField;
    cdsnegociacaosaidaPRMORADIARIA: TFloatField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    actdesfazer: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    sdsnegociacaosaidaCDSTDUPLICATA: TIntegerField;
    cdsnegociacaosaidaCDSTDUPLICATA: TIntegerField;
    sdsVLCOMISSAO: TFMTBCDField;
    cdsVLCOMISSAO: TFMTBCDField;
    sdsnegociacaosaidaVLCOMISSAO: TFMTBCDField;
    cdsnegociacaosaidaVLCOMISSAO: TFMTBCDField;
    sdsCDREPRESENTANTE: TIntegerField;
    cdsCDREPRESENTANTE: TIntegerField;
    sdsnegociacaosaidaCDREPRESENTANTE: TIntegerField;
    cdsnegociacaosaidaCDREPRESENTANTE: TIntegerField;
    lblrepresentante: TLabel;
    cbxcdrepresentante: TcxDBLookupComboBox;
    sdsVLENTRADA: TFMTBCDField;
    sdsVLSAIDA: TFMTBCDField;
    sdsnegociacaosaidaCDTPCOBRANCA: TIntegerField;
    cdsnegociacaosaidaCDTPCOBRANCA: TIntegerField;
    actimprimirboleto: TAction;
    actimprimirboletodoso: TAction;
    pum: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    actimprimircarne: TAction;
    dxBarButton3: TdxBarButton;
    sdsentrada: TSQLDataSet;
    sdsentradaCDNEGOCIACAOENTRADA: TIntegerField;
    sdsentradaCDDUPLICATA: TIntegerField;
    sdsentradaCDUSUARIOI: TIntegerField;
    sdsentradaCDUSUARIOA: TIntegerField;
    sdsentradaCDCOMPUTADORI: TIntegerField;
    sdsentradaCDCOMPUTADORA: TIntegerField;
    sdsentradaCDNEGOCIACAO: TIntegerField;
    sdsentradaVLDUPLICATA: TFMTBCDField;
    sdsentradaVLJUROS: TFMTBCDField;
    sdsentradaTSINCLUSAO: TSQLTimeStampField;
    sdsentradaTSALTERACAO: TSQLTimeStampField;
    sdsentradaNUDUPLICATA: TStringField;
    sdsentradaVLTOTAL: TFMTBCDField;
    sdsentradaVLCOMISSAO: TFMTBCDField;
    sdsentradaDTEMISSAO: TDateField;
    sdsentradaDTPRORROGACAO: TDateField;
    cdsentrada: TClientDataSet;
    cdssdsentrada: TDataSetField;
    cdsentradaCDNEGOCIACAOENTRADA: TIntegerField;
    cdsentradaCDDUPLICATA: TIntegerField;
    cdsentradaCDUSUARIOI: TIntegerField;
    cdsentradaCDUSUARIOA: TIntegerField;
    cdsentradaCDCOMPUTADORI: TIntegerField;
    cdsentradaCDCOMPUTADORA: TIntegerField;
    cdsentradaCDNEGOCIACAO: TIntegerField;
    cdsentradaVLDUPLICATA: TFMTBCDField;
    cdsentradaVLJUROS: TFMTBCDField;
    cdsentradaTSINCLUSAO: TSQLTimeStampField;
    cdsentradaTSALTERACAO: TSQLTimeStampField;
    cdsentradaNUDUPLICATA: TStringField;
    cdsentradaVLTOTAL: TFMTBCDField;
    cdsentradaVLCOMISSAO: TFMTBCDField;
    cdsentradaDTEMISSAO: TDateField;
    cdsentradaDTPRORROGACAO: TDateField;
    dtsentrada: TDataSource;
    sdsDSOBSERVACAO: TBlobField;
    cdsDSOBSERVACAO: TBlobField;
    pgc: TcxPageControl;
    tbstitulo: TcxTabSheet;
    tbsobservacao: TcxTabSheet;
    Panel2: TPanel;
    grdnegociacaosaida: TcxGrid;
    grdnegociacaosaidaDBTableView1: TcxGridDBTableView;
    grdnegociacaosaidaDBTableView1NUDUPLICATA: TcxGridDBColumn;
    grdnegociacaosaidaDBTableView1VLDUPLICATA: TcxGridDBColumn;
    grdnegociacaosaidaDBTableView1DTVENCIMENTO: TcxGridDBColumn;
    grdnegociacaosaidaDBTableView1PRMORADIARIA: TcxGridDBColumn;
    grdnegociacaosaidaDBTableView1CDSTDUPLICATA: TcxGridDBColumn;
    grdnegociacaosaidaDBTableView1CDREPRESENTANTE: TcxGridDBColumn;
    grdnegociacaosaidaDBTableView1CDTPCOBRANCA: TcxGridDBColumn;
    grdnegociacaosaidaDBTableView1VLCOMISSAO: TcxGridDBColumn;
    grdnegociacaosaidaDBTableView1CDDUPLICATA: TcxGridDBColumn;
    grdnegociacaosaidaLevel1: TcxGridLevel;
    cxLabel2: TcxLabel;
    Panel4: TPanel;
    pnl2: TPanel;
    lbldesconto: TLabel;
    Label3: TLabel;
    edtvldesconto: TcxDBCalcEdit;
    edtvlacrescimo: TcxDBCalcEdit;
    grdentrada: TcxGrid;
    tbventrada: TcxGridDBTableView;
    tbventradaNUDUPLICATA: TcxGridDBColumn;
    tbventradaVLDUPLICATA: TcxGridDBColumn;
    tbventradaDTEMISSAO: TcxGridDBColumn;
    tbventradaDTPRORROGACAO: TcxGridDBColumn;
    tbventradaVLJUROS: TcxGridDBColumn;
    tbventradaVLTOTAL: TcxGridDBColumn;
    tbventradaVLCOMISSAO: TcxGridDBColumn;
    grdentradaLevel1: TcxGridLevel;
    splcalculo: TcxSplitter;
    memdsobservacao: TcxDBMemo;
    actabrircliente: TAction;
    lblNMCLIENTE: TDBText;
    sdsNMCLIENTE: TStringField;
    cdsNMCLIENTE: TStringField;
    sdsCDEMPRESA: TLargeintField;
    sdsCDCLIENTE: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDCLIENTE: TLargeintField;
    sdsentradaCDEMPRESA: TLargeintField;
    cdsentradaCDEMPRESA: TLargeintField;
    sdsnegociacaosaidaCDEMPRESA: TLargeintField;
    cdsnegociacaosaidaCDEMPRESA: TLargeintField;
    procedure actNovoExecute(Sender: TObject);
    procedure actAbrirExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure edtCodigoEnter(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actfecharExecute(Sender: TObject);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure dtsStateChange(Sender: TObject);
    procedure cdsnegociacaosaidaBeforePost(DataSet: TDataSet);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsnegociacaosaidaNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure edtCDCLIENTEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCDCLIENTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtCDCLIENTEPropertiesEditValueChanged(Sender: TObject);
    procedure cdsCDCLIENTEValidate(Sender: TField);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actabrirduplicataExecute(Sender: TObject);
    procedure actabrirduplicatasaidaExecute(Sender: TObject);
    procedure grdnegociacaosaidaDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actprocessarExecute(Sender: TObject);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure actdesfazerExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actimprimirboletoExecute(Sender: TObject);
    procedure actimprimirboletodosoExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actimprimircarneExecute(Sender: TObject);
    procedure cdsentradaBeforePost(DataSet: TDataSet);
    procedure cdsentradaNewRecord(DataSet: TDataSet);
    procedure cdsentradaCDDUPLICATAValidate(Sender: TField);
    procedure tbventradaNUDUPLICATAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tbventradaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cdsentradaNUDUPLICATAValidate(Sender: TField);
    procedure tbventradaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure actabrirclienteExecute(Sender: TObject);
    procedure lblcdclienteDblClick(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private
    negociacao : TNegociacao;
    function negociacao_saida_em_aberto:boolean;
    procedure set_actdesfazer;
    procedure set_actprocessar;
    procedure check_cdduplicata_repetido(cdduplicata:string);
  public
    registro : tregistro;
    function Abrir(codigo:integer):boolean;
  end;

var
  frmnegociacao: Tfrmnegociacao;

implementation

uses uDtmMain, uMain, ulocalizarCliente, uLocalizarDuplicata;

{$R *.dfm}

const
  tbl      = 'negociacao';
  exibe    = 'Negociação';
  artigoI  = 'o';

procedure Tfrmnegociacao.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

function Tfrmnegociacao.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmnegociacao.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmnegociacao.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmnegociacao.actSalvarExecute(Sender: TObject);
begin
  registro.Salvar;
end;

procedure Tfrmnegociacao.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmnegociacao.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmnegociacao.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure Tfrmnegociacao.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmnegociacao.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmnegociacao.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmnegociacao.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmnegociacao.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmnegociacao.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure Tfrmnegociacao.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmnegociacao.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  negociacao := TNegociacao.create;
  pnl.caption := exibe;
  edtCodigo.SetFocus;
end;

procedure Tfrmnegociacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmnegociacao.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmnegociacao.cdsBeforePost(DataSet: TDataSet);
begin
  if cds.FieldByName(_CDCLIENTE).IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Cliente]), mtinformation, [mbok], 0);
    cds.FieldByName(_CDCLIENTE).FocusControl;
    Abort;
  end;
  registro.set_update(cds);
end;

procedure Tfrmnegociacao.dtsStateChange(Sender: TObject);
begin
  set_actprocessar;
  if (dts.State = dsInsert) or (dts.State = dsEdit) then
  begin
    edtdtemissao.SetFocus;
  end;
end;

procedure Tfrmnegociacao.cdsnegociacaosaidaBeforePost(DataSet: TDataSet);
begin
  if cdsnegociacaosaidaDTVENCIMENTO.IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+_de+' '+_vencimento]), mtinformation, [mbok], 0);
    cdsnegociacaosaidaDTVENCIMENTO.FocusControl;
    Abort;
  end;
  if cdsnegociacaosaidaDTVENCIMENTO.AsDateTime < cdsDTEMISSAO.AsDateTime then
  begin
    MessageDlg('Data vencimento não pode ser menor do que a data de Emissão.', mtInformation, [mbOK], 0);
    cdsnegociacaosaidaDTVENCIMENTO.FocusControl;
    Abort;
  end;
  registro.set_update(dataset);
end;

procedure Tfrmnegociacao.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
  cdsCDSTNEGOCIACAO.AsInteger := qregistro.Codigo_status_novo(_negociacao);
  cdsDTEMISSAO.AsDateTime    := DtBanco;
  cdsVLENTRADA.AsCurrency    := 0;
  cdsVLSAIDA.AsCurrency      := 0;
  cdsVLDESCONTO.AsCurrency   := 0;
  cdsVLJUROS.AsCurrency      := 0;
  cdsVLACRESCIMO.AsCurrency  := 0;
  cdsVLCOMISSAO.AsCurrency   := 0;
end;

procedure Tfrmnegociacao.check_cdduplicata_repetido(cdduplicata: string);
var
  c : TClientdataset;
begin
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cdsentrada, true);
    if c.Locate(_cdduplicata, cdduplicata, []) then
    begin
      MessageDlg('Contas a receber repetido.', mtInformation, [mbOK], 0);
      Abort;
    end;
  finally
    c.Free;
  end;
end;

procedure Tfrmnegociacao.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmnegociacao.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmnegociacao.cdsnegociacaosaidaNewRecord(DataSet: TDataSet);
begin
  registro.set_insert(dataset);
  cdsnegociacaosaidaPRMORADIARIA.AsFloat       := empresa.financeiro.duplicata.prmoradiaria;
  cdsnegociacaosaidaCDNEGOCIACAOSAIDA.AsString := GerarCodigo(_negociacao+_saida);
  cdsnegociacaosaidaDTVENCIMENTO.AsDateTime    := DtBanco;
  cdsnegociacaosaidaVLCOMISSAO.AsCurrency      := 0;
  if cdsCDREPRESENTANTE.AsString <> '' then
  begin
    cdsnegociacaosaidaCDREPRESENTANTE.AsString   := cdsCDREPRESENTANTE.AsString;
  end;
end;

procedure Tfrmnegociacao.FormDestroy(Sender: TObject);
begin
  FreeAndNil(registro);
  FreeAndNil(negociacao);
end;

procedure Tfrmnegociacao.edtCDCLIENTEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure Tfrmnegociacao.edtCDCLIENTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  TQForm.edtCDCLIENTEPropertiesButtonClick(self, cds);
end;

procedure Tfrmnegociacao.edtCDCLIENTEPropertiesEditValueChanged(Sender: TObject);
begin
  if (cds.State = dsedit) or (cds.State = dsinsert) then
  begin
    lblcdcliente.Hint := negociacao.cliente.hint_rzsocial;
  end;
end;

procedure Tfrmnegociacao.cdsCDCLIENTEValidate(Sender: TField);
begin
  if not negociacao.cliente.select(Sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.AsString, maiuscula(_cliente)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  if negociacao.cliente.cdrepresentante <> 0 then
  begin
    cdsCDREPRESENTANTE.AsInteger := negociacao.cliente.cdrepresentante;
  end
  else
  begin
    cdsCDREPRESENTANTE.Clear;
  end;
  sender.DataSet.FieldByName(_nmcliente).AsString := negociacao.cliente.nmcliente;
  lblcdcliente.Hint := negociacao.cliente.hint_rzsocial;
end;

procedure Tfrmnegociacao.cdsentradaBeforePost(DataSet: TDataSet);
begin
  registro.set_update(dataset);
end;

procedure Tfrmnegociacao.cdsentradaCDDUPLICATAValidate(Sender: TField);
var
  duplicata : TDuplicata;
begin
  check_cdduplicata_repetido(sender.AsString);
  duplicata := tduplicata.create;
  try
    duplicata.Select(sender.Asinteger);
    if duplicata.cdstduplicata <> 1 then
    begin
      MessageDlg('Contas a receber '+duplicata.nuduplicata+' não está aberta.', mtInformation, [mbOK], 0);
      Abort;
    end;
    cdsentradaNUDUPLICATA.OnValidate   := nil;
    cdsentradaNUDUPLICATA.AsString     := duplicata.nuduplicata;
    cdsentradaNUDUPLICATA.OnValidate   := cdsentradaNUDUPLICATAValidate;
    cdsentradaVLDUPLICATA.AsCurrency   := duplicata.vlsaldo;
    cdsentradaVLJUROS.AsCurrency       := duplicata.vljuros;
    cdsentradaVLTOTAL.AsCurrency       := duplicata.GETvlatual;
    cdsentradaDTEMISSAO.AsDateTime     := duplicata.dtemissao;
    cdsentradaDTPRORROGACAO.AsDateTime := duplicata.dtprorrogacao;
    cdsentradaVLCOMISSAO.AsCurrency    := duplicata.vlcomissaoaberta;
  finally
    freeandnil(duplicata);
  end;
end;

procedure Tfrmnegociacao.cdsentradaNewRecord(DataSet: TDataSet);
begin
  cdsentradaCDNEGOCIACAOENTRADA.AsString := GerarCodigo(_negociacao+_entrada);
  registro.set_insert(dataset);
end;

procedure Tfrmnegociacao.cdsentradaNUDUPLICATAValidate(Sender: TField);
begin
  cdsentradaCDDUPLICATA.asinteger := registro.Codigonumero(sender.AsString, _duplicata);
end;

procedure Tfrmnegociacao.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure Tfrmnegociacao.set_actdesfazer;
begin
  if not actprocessar.Enabled then
  begin
    actdesfazer.Enabled := negociacao_saida_em_aberto;
    actdesfazer.Visible := actdesfazer.Enabled;
  end
  else
  begin
    actdesfazer.Enabled := false;
    actdesfazer.Visible := false;
  end;
end;

procedure Tfrmnegociacao.set_actprocessar;
begin
  actprocessar.Enabled := actEditar.Enabled;
  actprocessar.Visible := actEditar.Enabled;
end;

procedure Tfrmnegociacao.tbventradaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nuduplicata then
  begin
    actabrirduplicataExecute(actabrirduplicata);
  end;
end;

procedure Tfrmnegociacao.tbventradaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsentrada, key);
  if (key = __KeySearch) and (LowerCase(tbventrada.Controller.FocusedColumn.DataBinding.FilterFieldName) = _nuduplicata) then
  begin
    tbventradaNUDUPLICATAPropertiesButtonClick(sender, 0);
  end;
end;

procedure Tfrmnegociacao.tbventradaNUDUPLICATAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cdduplicata : TStrings;
  i: Integer;
begin
  cdduplicata := TStringList.Create;
  try
    cdduplicata.Text := LocalizarDuplicataMulti(cds.FieldByName(_CDCLIENTE).AsString, _1);
    if cdduplicata.Text = '' then
    begin
      Exit;
    end;
    if (cds.State <> dsinsert) and (cds.State <> dsedit) then
    begin
      cdsentrada.Edit;
    end;
    for i := 0 to cdduplicata.Count - 1 do
    begin
      if i > 0 then
      begin
        cdsentrada.Insert;
      end;
      cdsentradaCDDUPLICATA.AsString := cdduplicata[i];
    end;
  finally
    FreeAndNil(cdduplicata);
  end;
end;

procedure Tfrmnegociacao.actabrirduplicataExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsentrada);
end;

procedure Tfrmnegociacao.actabrirduplicatasaidaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsnegociacaosaida);
end;

procedure Tfrmnegociacao.grdnegociacaosaidaDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nuduplicata then
  begin
    actabrirduplicatasaidaExecute(actabrirduplicatasaida);
  end;
end;

procedure Tfrmnegociacao.actprocessarExecute(Sender: TObject);
begin
  if negociacao.processar then
  begin
    Abrir(cds.fieldbyname(_cdnegociacao).AsInteger);
  end;
end;

procedure Tfrmnegociacao.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure Tfrmnegociacao.cdsAfterScroll(DataSet: TDataSet);
begin
  negociacao.Select(dataset);
  negociacao.negociacaoSaida.Ler(cdsnegociacaosaida);
  negociacao.negociacaoentrada.Ler(cdsentrada);

  //registro.setStatus(tbl, dataset);
  set_actprocessar;
  set_actdesfazer;
  if not cds.FieldByName(_CDCLIENTE).IsNull then
  begin
    negociacao.cliente.select(cds.FieldByName(_cdcliente).AsLargeInt);
    lblcdcliente.Hint := negociacao.cliente.hint_rzsocial;
  end;
end;

function Tfrmnegociacao.negociacao_saida_em_aberto:boolean;
begin
  result := False;
  cdsnegociacaosaida.DisableControls;
  try
    cdsnegociacaosaida.First;
    while not cdsnegociacaosaida.Eof do
    begin
      Result := cdsnegociacaosaidaCDSTDUPLICATA.AsString = _1;
      if not Result then
      begin
        Break;
      end;
      cdsnegociacaosaida.Next;
    end;
  finally
    cdsnegociacaosaida.EnableControls;
  end;
end;

procedure Tfrmnegociacao.actdesfazerExecute(Sender: TObject);
begin
  if negociacao.Desfazer then
  begin
    Abrir(cdsCDNEGOCIACAO.asinteger);
  end;
end;

procedure Tfrmnegociacao.FormCreate(Sender: TObject);
begin
  cbxcdrepresentante.Visible := empresa.comercial.representante.bo;
  lblrepresentante.Visible   := empresa.comercial.representante.bo;
  grdnegociacaosaidaDBTableView1CDREPRESENTANTE.Visible := empresa.comercial.representante.bo;

  TcxLookupComboBoxProperties(grdnegociacaosaidaDBTableView1CDSTDUPLICATA.Properties).ListSource   := abrir_tabela(_stduplicata);
  TcxLookupComboBoxProperties(grdnegociacaosaidaDBTableView1CDREPRESENTANTE.Properties).ListSource := abrir_tabela(_representante);
  TcxLookupComboBoxProperties(grdnegociacaosaidaDBTableView1CDTPCOBRANCA.Properties).ListSource    := abrir_tabela(_tpcobranca);
  cbxcdrepresentante.Properties.ListSource                                                         := abrir_tabela(_representante);
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
end;

procedure Tfrmnegociacao.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure Tfrmnegociacao.actimprimirboletoExecute(Sender: TObject);
var
  duplicata : TDuplicata;
begin
  duplicata := TDuplicata.create;
  try
    duplicata.Select(cdsnegociacaosaidaCDDUPLICATA.Asinteger);
    duplicata.ImprimirBoletoAcbr;
  finally
    freeandnil(duplicata);
  end;
end;

procedure Tfrmnegociacao.actimprimircarneExecute(Sender: TObject);
var
  duplicatalist : TDuplicataList;
  i : integer;
begin
  if grdnegociacaosaidaDBTableView1.ViewData.RowCount = 0 then
  begin
    exit;
  end;
  duplicatalist := tDuplicataList.create;
  try
    for i := 0 to grdnegociacaosaidaDBTableView1.ViewData.RecordCount -1 do
    begin
      duplicatalist.New.Select(strtoint(grdnegociacaosaidaDBTableView1.ViewData.Records[i].Values[grdnegociacaosaidaDBTableView1.GetColumnByFieldName(_cdduplicata).Index]));
    end;
    if duplicatalist.count > 0 then
    begin
      duplicatalist.ImprimirCarneAcbr;
    end;
  finally
    freeandnil(duplicatalist);
  end;
end;

procedure Tfrmnegociacao.actimprimirboletodosoExecute(Sender: TObject);
var
  duplicataList : TDuplicataList;
  cdduplicata, i : integer;
begin
  if grdnegociacaosaidaDBTableView1.ViewData.RowCount = 0 then
  begin
    exit;
  end;
  duplicatalist := tduplicatalist.create;
  try
    for i := 0 to grdnegociacaosaidaDBTableView1.ViewData.RecordCount -1 do
    begin
      if grdnegociacaosaidaDBTableView1.ViewData.Records[i].Selected then
      begin
        cdduplicata := strtoint(grdnegociacaosaidaDBTableView1.ViewData.Records[i].Values[grdnegociacaosaidaDBTableView1.GetColumnByFieldName(_cdduplicata).Index]);
        duplicatalist.New.Select(cdduplicata);
      end;
    end;
    if duplicatalist.Count > 0 then
    begin
      duplicatalist.ImprimirBoletoAcbr
    end;
  finally
    freeandnil(duplicatalist);
  end;
end;

procedure Tfrmnegociacao.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure Tfrmnegociacao.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure Tfrmnegociacao.actabrirclienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmnegociacao.lblcdclienteDblClick(Sender: TObject);
begin
  actabrirclienteExecute(actabrircliente);
end;

end.
