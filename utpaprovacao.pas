unit utpaprovacao;

interface

uses
  System.Actions, System.UITypes,
  forms, StdCtrls, Mask, Controls, ToolWin, types, dialogs, sysutils,
  graphics, Classes, ActnList, ComCtrls, ExtCtrls, Menus,
  sqlexpr, Grids,
  uregistro, ustrings, urotinas, ulocalizar, uconstantes, uexportarexcel,
  classeRegistro, classeusuario, classeconsiste, classegerar, classeregistrainformacao,
  classeform, cxPC, cxControls, dxBar,
  cxClasses, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLabel, cxSplitter, FMTBcd, DBClient,
  Provider, cxButtonEdit, cxNavigator, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  Tfrmtpaprovacao = class(TForm)
    act: TActionList;
    actNovo: TAction;
    actAbrir: TAction;
    actSalvar: TAction;
    actImprimir: TAction;
    actExcluir: TAction;
    actCancelar: TAction;
    actEditar: TAction;
    actAnterior: TAction;
    actProximo: TAction;
    actUltimo: TAction;
    actPrimeiro: TAction;
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
    sdstpaprovacaousuarios: TSQLDataSet;
    cdstpaprovacaousuarios: TClientDataSet;
    dtstpaprovacaousuarios: TDataSource;
    sdstpaprovacaogrupos: TSQLDataSet;
    cdstpaprovacaogrupos: TClientDataSet;
    dtstpaprovacaogrupos: TDataSource;
    sdsCDTPAPROVACAO: TIntegerField;
    sdsNMTPAPROVACAO: TStringField;
    cdsCDTPAPROVACAO: TIntegerField;
    cdsNMTPAPROVACAO: TStringField;
    cdssdstpaprovacaogrupos: TDataSetField;
    cdssdstpaprovacaousuarios: TDataSetField;
    Panel1: TPanel;
    bvl1: TBevel;
    lblnome: TLabel;
    lblcodigo: TLabel;
    lblusuarios: TcxLabel;
    grd: TcxGrid;
    gtv: TcxGridDBTableView;
    gtvCDUSUARIO: TcxGridDBColumn;
    gtvNMUSUARIO: TcxGridDBColumn;
    grl: TcxGridLevel;
    spl1: TcxSplitter;
    lblgrupos: TcxLabel;
    grd1: TcxGrid;
    gtv1: TcxGridDBTableView;
    gtv1CDGRUPOS: TcxGridDBColumn;
    gtv1NMGRUPOS: TcxGridDBColumn;
    grl1: TcxGridLevel;
    pnl: TcxLabel;
    edtcodigo: TcxTextEdit;
    edtnome: TcxDBTextEdit;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdstpaprovacaousuariosCDTPAPROVACAO: TIntegerField;
    sdstpaprovacaousuariosCDUSUARIO: TIntegerField;
    sdstpaprovacaousuariosCDUSUARIOI: TIntegerField;
    sdstpaprovacaousuariosCDUSUARIOA: TIntegerField;
    sdstpaprovacaousuariosCDCOMPUTADORI: TIntegerField;
    sdstpaprovacaousuariosCDCOMPUTADORA: TIntegerField;
    sdstpaprovacaousuariosTSINCLUSAO: TSQLTimeStampField;
    sdstpaprovacaousuariosTSALTERACAO: TSQLTimeStampField;
    sdstpaprovacaousuariosNMUSUARIO: TStringField;
    sdstpaprovacaogruposCDTPAPROVACAO: TIntegerField;
    sdstpaprovacaogruposCDGRUPOS: TIntegerField;
    sdstpaprovacaogruposCDUSUARIOI: TIntegerField;
    sdstpaprovacaogruposCDUSUARIOA: TIntegerField;
    sdstpaprovacaogruposCDCOMPUTADORI: TIntegerField;
    sdstpaprovacaogruposCDCOMPUTADORA: TIntegerField;
    sdstpaprovacaogruposTSINCLUSAO: TSQLTimeStampField;
    sdstpaprovacaogruposTSALTERACAO: TSQLTimeStampField;
    sdstpaprovacaogruposNMGRUPOS: TStringField;
    cdstpaprovacaogruposCDTPAPROVACAO: TIntegerField;
    cdstpaprovacaogruposCDGRUPOS: TIntegerField;
    cdstpaprovacaogruposCDUSUARIOI: TIntegerField;
    cdstpaprovacaogruposCDUSUARIOA: TIntegerField;
    cdstpaprovacaogruposCDCOMPUTADORI: TIntegerField;
    cdstpaprovacaogruposCDCOMPUTADORA: TIntegerField;
    cdstpaprovacaogruposTSINCLUSAO: TSQLTimeStampField;
    cdstpaprovacaogruposTSALTERACAO: TSQLTimeStampField;
    cdstpaprovacaogruposNMGRUPOS: TStringField;
    cdstpaprovacaousuariosCDTPAPROVACAO: TIntegerField;
    cdstpaprovacaousuariosCDUSUARIO: TIntegerField;
    cdstpaprovacaousuariosCDUSUARIOI: TIntegerField;
    cdstpaprovacaousuariosCDUSUARIOA: TIntegerField;
    cdstpaprovacaousuariosCDCOMPUTADORI: TIntegerField;
    cdstpaprovacaousuariosCDCOMPUTADORA: TIntegerField;
    cdstpaprovacaousuariosTSINCLUSAO: TSQLTimeStampField;
    cdstpaprovacaousuariosTSALTERACAO: TSQLTimeStampField;
    cdstpaprovacaousuariosNMUSUARIO: TStringField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    sdsCDTPPROCESSOINTERNO: TIntegerField;
    cdsCDTPPROCESSOINTERNO: TIntegerField;
    lblcdtpprocessointerno: TLabel;
    cbxcdtpprocessointerno: TcxDBLookupComboBox;
    sdsCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    sdstpaprovacaousuariosCDEMPRESA: TLargeintField;
    cdstpaprovacaousuariosCDEMPRESA: TLargeintField;
    sdstpaprovacaogruposCDEMPRESA: TLargeintField;
    cdstpaprovacaogruposCDEMPRESA: TLargeintField;
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
    procedure nextcontrol(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actfecharExecute(Sender: TObject);
    procedure edtnomePropertiesChange(Sender: TObject);
    procedure dtsStateChange(Sender: TObject);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdstpaprovacaousuariosBeforePost(DataSet: TDataSet);
    procedure cdstpaprovacaogruposBeforePost(DataSet: TDataSet);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure gtvCDUSUARIOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdstpaprovacaousuariosCDUSUARIOValidate(Sender: TField);
    procedure gtv1CDGRUPOSPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdstpaprovacaogruposCDGRUPOSValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private
    tbl      : string;
    exibe    : string;
    artigoI  : string;
  public  { Public declarations }
    registro : TRegistro;
    function  Abrir(codigo:integer):boolean;
  end;

var
  frmtpaprovacao: Tfrmtpaprovacao;

implementation

uses uDtmMain, uMain;

{$R *.DFM}

function Tfrmtpaprovacao.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmtpaprovacao.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmtpaprovacao.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmtpaprovacao.actSalvarExecute(Sender: TObject);
begin
  if (cdstpaprovacaousuarios.State = dsinsert) or (cdstpaprovacaousuarios.State = dsedit) then
  begin
    cdstpaprovacaousuarios.Post;
  end;
  if (cdstpaprovacaogrupos.State = dsinsert) or (cdstpaprovacaogrupos.State = dsedit) then
  begin
    cdstpaprovacaogrupos.Post;
  end;
  cds.ApplyUpdates(0);
  registro.set_readonly_dados(self, true);
  abrir(cdsCDTPAPROVACAO.AsInteger);
end;

procedure Tfrmtpaprovacao.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmtpaprovacao.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmtpaprovacao.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure Tfrmtpaprovacao.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmtpaprovacao.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmtpaprovacao.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmtpaprovacao.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  cdstpaprovacaousuarios.Open;
  cdstpaprovacaogrupos.Open;
  edtCodigo.SetFocus;
end;

procedure Tfrmtpaprovacao.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmtpaprovacao.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmtpaprovacao.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmtpaprovacao.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmtpaprovacao.nextcontrol(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext(sender as twincontrol, true, true);
    key := #0;
  end;
end;

procedure Tfrmtpaprovacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmtpaprovacao.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure Tfrmtpaprovacao.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmtpaprovacao.edtnomePropertiesChange(Sender: TObject);
begin
  pnl.Caption := exibe+' '+ cdsCDTPAPROVACAO.asstring + ' - ' + edtNome.Text;
end;

procedure Tfrmtpaprovacao.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmtpaprovacao.cdsBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cds);
end;

procedure Tfrmtpaprovacao.cdstpaprovacaousuariosBeforePost(DataSet: TDataSet);
begin
  registro.set_update(dataset);
end;

procedure Tfrmtpaprovacao.cdstpaprovacaogruposBeforePost(DataSet: TDataSet);
begin
  registro.set_update(dataset);
end;

procedure Tfrmtpaprovacao.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

procedure Tfrmtpaprovacao.gtvCDUSUARIOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd: integer;
begin
  cd := localizar(_USUARIO);
  if cd <> 0 then
  begin
    cdstpaprovacaousuariosCDUSUARIO.AsInteger := cd;
  end;
end;

procedure Tfrmtpaprovacao.cdstpaprovacaousuariosCDUSUARIOValidate(Sender: TField);
begin
  if not CodigoExiste(_usuario, Sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.asstring, maiuscula(__usuario)]), mterror, [mbok], 0);
    abort;
  end;
  cdstpaprovacaousuariosNMUSUARIO.asstring := NomedoCodigo(_usuario, sender.AsString);
end;

procedure Tfrmtpaprovacao.gtv1CDGRUPOSPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd: integer;
begin
  cd := localizar(_grupo+_s);
  if cd <> 0 then
  begin
    cdstpaprovacaogruposCDGRUPOS.ASInteger := cd;
  end;
end;

procedure Tfrmtpaprovacao.cdstpaprovacaogruposCDGRUPOSValidate(Sender: TField);
begin
  if not CodigoExiste(_grupo+_s, Sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.asstring, maiuscula(__usuario)]), mterror, [mbok], 0);
    abort;
  end;
  cdstpaprovacaogruposNMGRUPOS.asstring := NomedoCodigo(_grupo+_s, sender.AsString);
end;

procedure Tfrmtpaprovacao.FormCreate(Sender: TObject);
begin
  tbl      := _tpaprovacao;
  exibe    := 'Tipo Aprovação';
  artigoI  := LowerCase(_o);
  cbxcdtpprocessointerno.Properties.ListSource := abrir_tabela(_tpprocessointerno);
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
end;

procedure Tfrmtpaprovacao.FormDestroy(Sender: TObject);
begin
  registro.Destroy;
end;

procedure Tfrmtpaprovacao.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure Tfrmtpaprovacao.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

end.
