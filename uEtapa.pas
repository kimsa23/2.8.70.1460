unit uEtapa;

interface

uses
  System.Actions, System.UITypes,
  forms, StdCtrls, Buttons, ExtCtrls, Controls, ToolWin, dialogs, sysutils,
  ComCtrls, Mask, Classes, ActnList, Grids, Menus,
  sqlexpr,
  uexportarexcel, uregistroib, uregistro, urotinas, ulocalizar, uconstantes, ustrings,
  classeretornasql, classeRegistro, classeusuario, classeconsiste, classegerar,
  classeempresa, classeregistrainformacao, classeform, cxPC, cxControls, dxBar, cxClasses,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu,
  FMTBcd, DB, DBClient, Provider, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxButtonEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, cxDBEdit, cxGroupBox,
  cxNavigator, dxBarBuiltInMenu;

type
  TfrmEtapa = class(TForm)
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
    actfechar: TAction;
    pgc: TcxPageControl;
    tbsetafunc: TcxTabSheet;
    tbsconfiguracao: TcxTabSheet;
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
    pnl1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    sds: TSQLDataSet;
    sdsetapafuncionario: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    dts1: TDataSource;
    cdsetapafuncionario: TClientDataSet;
    dtsetapafuncionario: TDataSource;
    sdsCDETAPA: TIntegerField;
    sdsCDSTITORDSERVF: TIntegerField;
    sdsCDSTITORDSERVI: TIntegerField;
    sdsNMETAPA: TStringField;
    sdsBOEXIBIRSERVICO: TStringField;
    sdsBOEXIBIRPECA: TStringField;
    sdsNUNIVEL: TStringField;
    sdsNUORDEM: TIntegerField;
    sdsBOALTERARTECNICO: TStringField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    cdsCDETAPA: TIntegerField;
    cdsCDSTITORDSERVF: TIntegerField;
    cdsCDSTITORDSERVI: TIntegerField;
    cdsNMETAPA: TStringField;
    cdsBOEXIBIRSERVICO: TStringField;
    cdsBOEXIBIRPECA: TStringField;
    cdsNUNIVEL: TStringField;
    cdsNUORDEM: TIntegerField;
    cdsBOALTERARTECNICO: TStringField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    sdsetapafuncionarioCDETAPAFUNCIONARIO: TIntegerField;
    sdsetapafuncionarioCDFUNCIONARIO: TIntegerField;
    sdsetapafuncionarioCDETAPA: TIntegerField;
    sdsetapafuncionarioCDUSUARIOI: TIntegerField;
    sdsetapafuncionarioCDUSUARIOA: TIntegerField;
    sdsetapafuncionarioCDCOMPUTADORI: TIntegerField;
    sdsetapafuncionarioCDCOMPUTADORA: TIntegerField;
    sdsetapafuncionarioTSINCLUSAO: TSQLTimeStampField;
    sdsetapafuncionarioTSALTERACAO: TSQLTimeStampField;
    cdssdsetapafuncionario: TDataSetField;
    cdsetapafuncionarioCDETAPAFUNCIONARIO: TIntegerField;
    cdsetapafuncionarioCDFUNCIONARIO: TIntegerField;
    cdsetapafuncionarioCDETAPA: TIntegerField;
    cdsetapafuncionarioCDUSUARIOI: TIntegerField;
    cdsetapafuncionarioCDUSUARIOA: TIntegerField;
    cdsetapafuncionarioCDCOMPUTADORI: TIntegerField;
    cdsetapafuncionarioCDCOMPUTADORA: TIntegerField;
    cdsetapafuncionarioTSINCLUSAO: TSQLTimeStampField;
    cdsetapafuncionarioTSALTERACAO: TSQLTimeStampField;
    grdetapafuncionarioDBTableView1: TcxGridDBTableView;
    grdetapafuncionarioLevel1: TcxGridLevel;
    grdetapafuncionario: TcxGrid;
    grdetapafuncionarioDBTableView1CDFUNCIONARIO: TcxGridDBColumn;
    sdsetapafuncionarioNMFUNCIONARIO: TStringField;
    cdsetapafuncionarioNMFUNCIONARIO: TStringField;
    grdetapafuncionarioDBTableView1NMFUNCIONARIO: TcxGridDBColumn;
    ckbboexibirservico: TcxDBCheckBox;
    ckbboexibirpeca: TcxDBCheckBox;
    ckbboalterartecnico: TcxDBCheckBox;
    gbx1: TcxGroupBox;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    cbxcdstitordservi: TcxDBLookupComboBox;
    cbxcdstitordservf: TcxDBLookupComboBox;
    edtcodigo: TcxTextEdit;
    edtnome: TcxDBTextEdit;
    edtnunivel: TcxDBTextEdit;
    edtnuordem: TcxDBTextEdit;
    sdsCDEMPRESA: TLargeintField;
    sdsetapafuncionarioCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsetapafuncionarioCDEMPRESA: TLargeintField;
    actopcoes: TAction;
    btnopcoes: TdxBarLargeButton;
    pumopcoes: TdxBarPopupMenu;
    actetapaanterior: TAction;
    actetapaproxima: TAction;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
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
    procedure nextcontrol(Sender: TObject; var Key: Char);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actfecharExecute(Sender: TObject);
    procedure grdetapafuncionarioDBTableView1CDFUNCIONARIOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsetapafuncionarioCDFUNCIONARIOValidate(Sender: TField);
    procedure edtnomePropertiesChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsetapafuncionarioNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsetapafuncionarioBeforePost(DataSet: TDataSet);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure actetapaanteriorExecute(Sender: TObject);
    procedure actetapaproximaExecute(Sender: TObject);
    procedure actopcoesExecute(Sender: TObject);
  private      { Private declarations }
    procedure AbrirTabelas;
  public  { Public declarations }
    registro : TRegistro;
    function Abrir(codigo:integer):boolean;
  end;

const
  tbl      = 'etapa';
  exibe    = 'Etapa';
  artigoI  = 'a';
var
  frmEtapa: TfrmEtapa;

implementation

uses uDtmMain, uMain, ulocalizarFuncionario, udlgtabela;

{$R *.DFM}

function TfrmEtapa.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmEtapa.AbrirTabelas;
begin
  cbxcdstitordservi.Properties.ListSource := abrir_tabela(_stitordserv);
  cbxcdstitordservf.Properties.ListSource := abrir_tabela(_stitordserv);
end;

procedure TfrmEtapa.actAbrirExecute(Sender: TObject);
begin
  registro.Abrir;
end;

procedure TfrmEtapa.actNovoExecute(Sender: TObject);
begin
  registro.Novo(sender);
end;

procedure TfrmEtapa.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure TfrmEtapa.actSalvarExecute(Sender: TObject);
begin
  registro.Salvar;
end;

procedure TfrmEtapa.actExcluirExecute(Sender: TObject);
begin
  registro.Excluir;
end;

procedure TfrmEtapa.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmEtapa.actCancelarExecute(Sender: TObject);
begin
  registro.Cancelar;
end;

procedure TfrmEtapa.actEditarExecute(Sender: TObject);
begin
  registro.Editar;
end;

procedure TfrmEtapa.actetapaanteriorExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_etapaanterior))), cds.FieldByName(_cdetapa).AsInteger, _cdetapa);
end;

procedure TfrmEtapa.actetapaproximaExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_etapaproxima))), cds.FieldByName(_cdetapa).AsInteger, _cdetapa);
end;

procedure TfrmEtapa.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmEtapa.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmEtapa.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.caption := exibe;
  edtCodigo.SetFocus;
end;

procedure TfrmEtapa.actPrimeiroExecute(Sender: TObject);
begin
  registro.Primeiro;
end;

procedure TfrmEtapa.actAnteriorExecute(Sender: TObject);
begin
  registro.Anterior;
end;

procedure TfrmEtapa.actProximoExecute(Sender: TObject);
begin
  registro.Proximo;
end;

procedure TfrmEtapa.actUltimoExecute(Sender: TObject);
begin
  registro.Ultimo;
end;

procedure TfrmEtapa.nextcontrol(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext(sender as twincontrol, true, true);
    key := #0;
  end;
end;

procedure TfrmEtapa.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure TfrmEtapa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmEtapa.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmEtapa.grdetapafuncionarioDBTableView1CDFUNCIONARIOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : integer;
begin
  codigo := Localizarfuncionario;
  if codigo <> 0 then
  begin
    cdsetapafuncionarioCDFUNCIONARIO.AsInteger := codigo;
  end;
end;

procedure TfrmEtapa.cdsetapafuncionarioCDFUNCIONARIOValidate(Sender: TField);
begin
  if not codigoexiste(_funcionario, sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.asstring, maiuscula(__funcionario)]), mterror, [mbok], 0);
    abort;
  end;
  cdsetapafuncionarioNMFUNCIONARIO.Asstring := Nomedocodigo(_funcionario, sender.asstring);
end;

procedure TfrmEtapa.edtnomePropertiesChange(Sender: TObject);
begin
  if cdsCDETAPA.asstring = '-1' then
  begin
    pnl.Caption := exibe+' - ' + edtNome.Text
  end
  else
  begin
    pnl.Caption := exibe+' '+ cdsCDETAPA.asstring + ' - ' + edtNome.Text;
  end;
end;

procedure TfrmEtapa.FormDestroy(Sender: TObject);
begin
  registro.destroy;
end;

procedure TfrmEtapa.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure TfrmEtapa.cdsBeforePost(DataSet: TDataSet);
begin
  if RetornaSQLInteger('select count(*) from etapa where cdempresa='+empresa.cdempresa.tostring+' and cdetapa<>'+cdsCDETAPA.AsString+' and nunivel='+quotedstr(edtnunivel.Text)) > 0 then
  begin
    MessageDlg('Nível repetido em outra etapa.'#13'Favor alterar para poder prosseguir.', mtInformation, [mbOK], 0);
    edtnunivel.SetFocus;
    Abort;
  end;
  registro.set_update(cds);
end;

procedure TfrmEtapa.cdsetapafuncionarioNewRecord(DataSet: TDataSet);
begin
  cdsetapafuncionarioCDETAPAFUNCIONARIO.AsString := GerarCodigo(_etapa+_funcionario);
end;

procedure TfrmEtapa.FormCreate(Sender: TObject);
begin
  AbrirTabelas;
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
end;

procedure TfrmEtapa.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

procedure TfrmEtapa.cdsetapafuncionarioBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsetapafuncionario);
end;

procedure TfrmEtapa.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

end.
