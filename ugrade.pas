unit ugrade;

interface

uses
  System.Actions, System.UITypes,
  forms, Mask, Classes, ActnList, StdCtrls, Buttons, ExtCtrls, Controls,
  ComCtrls, ToolWin, sysutils, windows, dialogs, Menus,
  sqlexpr, Grids,
  urotinas, uregistro, ustrings, uconstantes,
  classeusuario, classeconsiste, classegerar,
  classeregistrainformacao, classeRegistro, classeform, dxBar, cxClasses, FMTBcd, DB,
  DBClient, Provider, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  cxButtonEdit, cxMaskEdit, cxSpinEdit, cxCheckBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxLabel, cxPC,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalc,
  cxNavigator;

type
  Tfrmgrade = class(TForm)
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
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    sdsCDGRADE: TIntegerField;
    sdsNMGRADE: TStringField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    cdsCDGRADE: TIntegerField;
    cdsNMGRADE: TStringField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    sdsdetailCDGRADE: TIntegerField;
    sdsdetailCDTPGRADEVALOR: TIntegerField;
    sdsdetailNUFAIXAINICIAL: TFloatField;
    sdsdetailNUFAIXAFINAL: TFloatField;
    sdsdetailVLGRADEVALOR: TFMTBCDField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    sdsdetailCDITGRADE: TIntegerField;
    cdssdsdetail: TDataSetField;
    cdsdetailCDGRADE: TIntegerField;
    cdsdetailCDTPGRADEVALOR: TIntegerField;
    cdsdetailNUFAIXAINICIAL: TFloatField;
    cdsdetailNUFAIXAFINAL: TFloatField;
    cdsdetailVLGRADEVALOR: TFMTBCDField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailCDITGRADE: TIntegerField;
    tbvCDTPGRADEVALOR: TcxGridDBColumn;
    tbvNUFAIXAINICIAL: TcxGridDBColumn;
    tbvNUFAIXAFINAL: TcxGridDBColumn;
    tbvVLGRADEVALOR: TcxGridDBColumn;
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
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
  public  { Public declarations }
    registro : tregistro;
    function  Abrir(codigo:integer):boolean;
  end;

var
  frmgrade: Tfrmgrade;

implementation

uses uDtmMain,
     uLocalizar,
     uExportarExcel,
     uMain;

{$R *.DFM}

const
  tbl      = _grade;
  exibe    = 'Grade';
  artigoI  = 'a';

function Tfrmgrade.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmgrade.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmgrade.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmgrade.actSalvarExecute(Sender: TObject);
begin
  if (cdsdetail.State = dsinsert) or (cdsdetail.State = dsedit) then
  begin
    cdsdetail.Post;
  end;
  if cdsdetail.RecordCount = 0 then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Numero+' '+_de+' '+_dias]), mtinformation, [mbok], 0);
    abort;
  end;
  cds.ApplyUpdates(0);
  registro.set_readonly_dados(self, true);
  abrir(cdsCDGRADE.asinteger);
end;

procedure Tfrmgrade.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmgrade.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmgrade.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure Tfrmgrade.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmgrade.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmgrade.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmgrade.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  cdsdetail.Open;
  edtCodigo.SetFocus;
end;

procedure Tfrmgrade.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmgrade.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmgrade.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmgrade.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmgrade.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure Tfrmgrade.actImprimirExecute(Sender: TObject);
begin
//
end;

procedure Tfrmgrade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmgrade.FormDestroy(Sender: TObject);
begin
  registro.Destroy;
end;

procedure Tfrmgrade.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmgrade.edtnomePropertiesChange(Sender: TObject);
begin
  if cdsCDGRADE.asstring = '-1' then pnl.Caption := exibe+' - ' + edtNome.Text
                                else pnl.Caption := exibe+' '+ cdsCDGRADE.asstring + ' - ' + edtNome.Text;
end;

procedure Tfrmgrade.cdsdetailBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsdetail);
end;

procedure Tfrmgrade.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmgrade.cdsBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cds);
end;

procedure Tfrmgrade.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

procedure Tfrmgrade.cdsdetailNewRecord(DataSet: TDataSet);
begin
  cdsdetailCDITGRADE.AsString := GerarCodigo(_itgrade);
end;

procedure Tfrmgrade.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure Tfrmgrade.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmgrade.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmgrade.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure Tfrmgrade.FormCreate(Sender: TObject);
begin
  TcxLookupComboBoxProperties(tbvCDTPGRADEVALOR.Properties).ListSource := abrir_tabela(_tpgradevalor);
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
end;

procedure Tfrmgrade.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

end.
