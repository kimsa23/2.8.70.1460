unit utpcorrecao;

interface

uses
  System.Actions, System.UITypes,
  forms, Mask, Classes, ActnList, StdCtrls, Buttons, ExtCtrls, Controls,
  ComCtrls, ToolWin, sysutils, windows, dialogs, Menus,
  urotinas, uregistro, ustrings, uconstantes,
  classeusuario, classeconsiste, classegerar,
  classeregistrainformacao, classeRegistro, classeform, ClasseTpCorrecao,
  dxBar, cxClasses, DB,
  DBClient, Provider, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  cxButtonEdit, cxMaskEdit, cxSpinEdit, cxCheckBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxLabel, cxPC,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxNavigator,
  dxColorEdit, dxDBColorEdit, cxCalendar, cxCalc, Data.FMTBcd, Data.SqlExpr;

type
  Tfrmtpcorrecao = class(TForm)
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
    pnl1: TPanel;
    Label1: TLabel;
    edtcodigo: TcxTextEdit;
    edtnome: TcxDBTextEdit;
    Label3: TLabel;
    pnl: TcxLabel;
    tbv: TcxGridDBTableView;
    lvlLevel1: TcxGridLevel;
    grd: TcxGrid;
    sdsCDTPCORRECAO: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsNMTPCORRECAO: TStringField;
    cdsCDTPCORRECAO: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsNMTPCORRECAO: TStringField;
    sdsdetailCDITTPCORRECAO: TIntegerField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailCDTPCORRECAO: TIntegerField;
    sdsdetailDTEMISSAO: TDateField;
    sdsdetailPRJURO: TFloatField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    cdssdsdetail: TDataSetField;
    cdsdetailCDITTPCORRECAO: TIntegerField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailCDTPCORRECAO: TIntegerField;
    cdsdetailDTEMISSAO: TDateField;
    cdsdetailPRJURO: TFloatField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvPRJURO: TcxGridDBColumn;
    actopcoes: TAction;
    actReajustar: TAction;
    btnopcoes: TdxBarLargeButton;
    pumopcoes: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    sdsdetailBOREAJUSTADO: TStringField;
    cdsdetailBOREAJUSTADO: TStringField;
    tbvBOREAJUSTADO: TcxGridDBColumn;
    sdsCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    sdsdetailCDEMPRESA: TLargeintField;
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
    procedure actopcoesExecute(Sender: TObject);
    procedure actReajustarExecute(Sender: TObject);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    tpcorrecao : TTpCorrecao;
  public  { Public declarations }
    registro : tregistro;
    function  Abrir(codigo:Integer):boolean;
  end;

var
  frmtpcorrecao: Tfrmtpcorrecao;

implementation

uses uDtmMain,
     uLocalizar,
     uExportarExcel, uMain;

{$R *.DFM}

const
  tbl      = 'tpcorrecao';
  exibe    = 'Tipo de Correção';
  artigoI  = 'o';

function Tfrmtpcorrecao.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmtpcorrecao.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmtpcorrecao.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmtpcorrecao.actSalvarExecute(Sender: TObject);
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
  abrir(cdsCDTPcorrecao.AsInteger);
end;

procedure Tfrmtpcorrecao.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmtpcorrecao.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmtpcorrecao.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure Tfrmtpcorrecao.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmtpcorrecao.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmtpcorrecao.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmtpcorrecao.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  cdsdetail.Open;
  edtCodigo.SetFocus;
end;

procedure Tfrmtpcorrecao.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmtpcorrecao.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmtpcorrecao.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmtpcorrecao.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmtpcorrecao.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure Tfrmtpcorrecao.actImprimirExecute(Sender: TObject);
begin
//
end;

procedure Tfrmtpcorrecao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmtpcorrecao.FormDestroy(Sender: TObject);
begin
  FreeAndNil(registro);
  FreeAndNil(tpcorrecao);
end;

procedure Tfrmtpcorrecao.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmtpcorrecao.edtnomePropertiesChange(Sender: TObject);
begin
  if cdsCDTPCorrecao.asstring = '-1' then pnl.Caption := exibe+' - ' + edtNome.Text
                                     else pnl.Caption := exibe+' '+ cdsCDTPCORRECAO.asstring + ' - ' + edtNome.Text;
end;

procedure Tfrmtpcorrecao.cdsdetailBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsdetail);
end;

procedure Tfrmtpcorrecao.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmtpcorrecao.cdsBeforePost(DataSet: TDataSet);
begin
  if cdsNMTPCORRECAO.AsString = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Nome]), mtinformation, [mbok], 0);
    cdsNMTPCORRECAO.FocusControl;
    abort;
  end;
  registro.set_update(cds);
end;

procedure Tfrmtpcorrecao.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

procedure Tfrmtpcorrecao.cdsdetailNewRecord(DataSet: TDataSet);
begin
  cdsdetailCDITTPCORRECAO.AsString := GerarCodigo(_ittpcorrecao);
  cdsdetailPRJURO.AsFloat          := 0;
  cdsdetailBOREAJUSTADO.AsString   := _N;
end;

procedure Tfrmtpcorrecao.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure Tfrmtpcorrecao.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmtpcorrecao.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmtpcorrecao.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure Tfrmtpcorrecao.FormCreate(Sender: TObject);
begin
  tpcorrecao := TTpCorrecao.create;
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
end;

procedure Tfrmtpcorrecao.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure Tfrmtpcorrecao.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure Tfrmtpcorrecao.actReajustarExecute(Sender: TObject);
begin
  if tpcorrecao.reajustar then
  begin
    abrir(cdsCDTPCORRECAO.AsInteger);
  end;
end;

procedure Tfrmtpcorrecao.cdsAfterScroll(DataSet: TDataSet);
begin
  tpcorrecao.Select(cds);
  tpcorrecao.ittpcorrecao.Ler(cdsdetail);
end;

end.
