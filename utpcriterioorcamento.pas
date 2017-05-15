unit utpcriterioorcamento;

interface

uses
  System.Actions, System.UITypes,
  forms, Mask, Classes, ActnList, StdCtrls, Buttons, ExtCtrls, Controls,
  ComCtrls, ToolWin, sysutils, windows, dialogs, Menus,
  sqlexpr, Grids,
  urotinas, uregistro, ustrings, uconstantes,
  classeusuario, classeconsiste, classegerar,
  classeregistrainformacao, classeRegistro, classeform, dxBar, cxClasses, DB,
  DBClient, Provider, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  cxButtonEdit, cxMaskEdit, cxSpinEdit, cxCheckBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxLabel, cxPC,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxNavigator,
  dxColorEdit, dxDBColorEdit, Data.FMTBcd;

type
  Tfrmtpcriterioorcamento = class(TForm)
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
    dxbrlrgbtnimprimir: TdxBarLargeButton;
    dxbrsprtr3: TdxBarSeparator;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    dts1: TDataSource;
    sdsdetail: TSQLDataSet;
    cdsdetail: TClientDataSet;
    dtsdetail: TDataSource;
    cdssdsdetail: TDataSetField;
    pnl1: TPanel;
    Label1: TLabel;
    edtcodigo: TcxTextEdit;
    edtnome: TcxDBTextEdit;
    Label3: TLabel;
    pnl: TcxLabel;
    tbv: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    ckbboentrada: TcxDBCheckBox;
    sdsCDTPCRITERIOORCAMENTO: TIntegerField;
    sdsNMTPCRITERIOORCAMENTO: TStringField;
    sdsBOATIVO: TStringField;
    sdsdetailCDITTPCRITERIOORCAMENTO: TIntegerField;
    sdsdetailCDTPCRITERIOORCAMENTO: TIntegerField;
    sdsdetailCDTPRESPOSTA: TIntegerField;
    sdsdetailNMITTPCRITERIOORCAMENTO: TStringField;
    cdsCDTPCRITERIOORCAMENTO: TIntegerField;
    cdsNMTPCRITERIOORCAMENTO: TStringField;
    cdsBOATIVO: TStringField;
    cdsdetailCDITTPCRITERIOORCAMENTO: TIntegerField;
    cdsdetailCDTPCRITERIOORCAMENTO: TIntegerField;
    cdsdetailCDTPRESPOSTA: TIntegerField;
    cdsdetailNMITTPCRITERIOORCAMENTO: TStringField;
    tbvCDTPRESPOSTA: TcxGridDBColumn;
    tbvNMITTPCRITERIOORCAMENTO: TcxGridDBColumn;
    sdsdetailBOVALOR: TStringField;
    sdsdetailBODATA: TStringField;
    cdsdetailBOVALOR: TStringField;
    cdsdetailBODATA: TStringField;
    tbvBOVALOR: TcxGridDBColumn;
    tbvBODATA: TcxGridDBColumn;
    sdsdetailBOATIVAR: TStringField;
    cdsdetailBOATIVAR: TStringField;
    tbvBOATIVAR: TcxGridDBColumn;
    sdsCDEMPRESA: TLargeintField;
    sdsdetailCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsdetailCDEMPRESA: TLargeintField;
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
    procedure actImprimirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actfecharExecute(Sender: TObject);
    procedure edtnomePropertiesChange(Sender: TObject);
    procedure cdsdetailBeforePost(DataSet: TDataSet);
    procedure dtsStateChange(Sender: TObject);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
  public  { Public declarations }
    registro : tregistro;
    function  Abrir(codigo:Integer):boolean;
  end;

var
  frmtpcriterioorcamento: Tfrmtpcriterioorcamento;

implementation

uses uDtmMain,
     uLocalizar,
     uExportarExcel, uMain;

{$R *.DFM}

const
  tbl      = 'tpcriterioorcamento';
  exibe    = 'Tipo de Critério de Orçamento';
  artigoI  = 'o';

function Tfrmtpcriterioorcamento.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmtpcriterioorcamento.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmtpcriterioorcamento.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmtpcriterioorcamento.actSalvarExecute(Sender: TObject);
begin
  if (cdsdetail.State = dsinsert) or (cdsdetail.State = dsedit) then
  begin
    cdsdetail.Post;
  end;
  if not registro.aplicar_atualizacao then
  begin
    Exit;
  end;
  registro.set_readonly_dados(self, true);
  abrir(cdsCDTPCRITERIOORCAMENTO.AsInteger);
end;

procedure Tfrmtpcriterioorcamento.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmtpcriterioorcamento.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmtpcriterioorcamento.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure Tfrmtpcriterioorcamento.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmtpcriterioorcamento.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmtpcriterioorcamento.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmtpcriterioorcamento.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  cdsdetail.Open;
  edtCodigo.SetFocus;
end;

procedure Tfrmtpcriterioorcamento.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmtpcriterioorcamento.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmtpcriterioorcamento.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmtpcriterioorcamento.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmtpcriterioorcamento.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure Tfrmtpcriterioorcamento.actImprimirExecute(Sender: TObject);
begin
//
end;

procedure Tfrmtpcriterioorcamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmtpcriterioorcamento.FormDestroy(Sender: TObject);
begin
  registro.Destroy;
end;

procedure Tfrmtpcriterioorcamento.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmtpcriterioorcamento.edtnomePropertiesChange(Sender: TObject);
begin
  if cdsCDTPCRITERIOORCAMENTO.asstring = '-1' then pnl.Caption := exibe+' - ' + edtNome.Text
                                              else pnl.Caption := exibe+' '+ cdsCDTPCRITERIOORCAMENTO.asstring + ' - ' + edtNome.Text;
end;

procedure Tfrmtpcriterioorcamento.cdsdetailBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsdetail);
end;

procedure Tfrmtpcriterioorcamento.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmtpcriterioorcamento.cdsBeforePost(DataSet: TDataSet);
begin
  if cdsNMTPCRITERIOORCAMENTO.AsString = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Nome]), mtinformation, [mbok], 0);
    cdsNMTPCRITERIOORCAMENTO.FocusControl;
    abort;
  end;
  registro.set_update(cds);
end;

procedure Tfrmtpcriterioorcamento.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
  cdsBOATIVO.AsString := _s;
end;

procedure Tfrmtpcriterioorcamento.cdsdetailNewRecord(DataSet: TDataSet);
begin
  cdsdetailCDITTPCRITERIOORCAMENTO.AsString := GerarCodigo(_ittpcriterioorcamento);
  dataset.fieldbyname(_boativar).asstring := _s;
end;

procedure Tfrmtpcriterioorcamento.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure Tfrmtpcriterioorcamento.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmtpcriterioorcamento.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmtpcriterioorcamento.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure Tfrmtpcriterioorcamento.FormCreate(Sender: TObject);
begin
  TcxLookupComboBoxProperties(tbvCDTPRESPOSTA.Properties).ListSource := abrir_tabela(_tpresposta);
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
end;

procedure Tfrmtpcriterioorcamento.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

end.
