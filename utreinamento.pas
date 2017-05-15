unit utreinamento;

interface

uses
  System.Actions, System.UITypes,
  forms, ComCtrls, ToolWin, ExtCtrls, Mask, Controls, Buttons, sysutils, windows,
  Graphics, dialogs, StdCtrls, Classes, ActnList, Menus, ExcelXP, Variants,
  DB,
  urotinas, udatahora, ustrings, uExportarExcel,
  uconstantes, ulocalizar, uregistro,
  classeRegistro, classegerar, classeconsiste, classeregistrainformacao,
  classeform, classeretornasql, classeusuario,
  classefuncionario, classeempresa, classeaplicacao, classeexecutasql,
  cxLookAndFeelPainters, cxTextEdit, cxMemo, cxControls, cxContainer, cxEdit,
  cxGroupBox, cxPC, dxBar, cxClasses, cxGraphics, cxLookAndFeels, cxDBEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, cxButtonEdit, cxCalc, cxCurrencyEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLabel, cxDBLabel, cxSpinEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxSplitter, cxRichEdit, cxCheckBox, cxPCdxBarPopupMenu,
  cxNavigator, dxBarBuiltInMenu,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TfrmTreinamento = class(TForm)
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
    dxbrlrgbtnfechar: TdxBarLargeButton;
    pnl1: TPanel;
    Label1: TLabel;
    dts: TDataSource;
    dtsdetail: TDataSource;
    edtcodigo: TcxTextEdit;
    lbltptreinamento: TLabel;
    cbxcdtptreinamento: TcxDBLookupComboBox;
    btnimprimir: TdxBarLargeButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    pumimprimir: TdxBarPopupMenu;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    grlLevel1: TcxGridLevel;
    tbvCDFUNCIONARIO: TcxGridDBColumn;
    actimportar: TAction;
    actimportardespesa: TAction;
    actimportarmensalidade: TAction;
    edtnminstrutor: TcxDBTextEdit;
    Label3: TLabel;
    edtqthoras: TcxDBCalcEdit;
    Label4: TLabel;
    Label2: TLabel;
    edtdtemissao: TcxDBDateEdit;
    lbldtprevista: TLabel;
    edtdtprevista: TcxDBDateEdit;
    qry: TFDQuery;
    qrydetail: TFDQuery;
    sca: TFDSchemaAdapter;
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
    procedure FormDestroy(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure dtsStateChange(Sender: TObject);
    procedure colorEnter(Sender: TObject);
    procedure colorExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbxcdtptreinamentoEnter(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure qrydetailBeforePost(DataSet: TDataSet);
    procedure qryAfterOpen(DataSet: TDataSet);
    procedure qrydetailBeforeInsert(DataSet: TDataSet);
    procedure qrydetailNewRecord(DataSet: TDataSet);
  private      { Private declarations }
    tbl : string;
  public  { Public declarations }
    registro : TRegistro;
    function  Abrir(codigo:integer):boolean;
  end;

var
  frmTreinamento: TfrmTreinamento;

implementation

uses UMain, uDtmMain, uMenuRelatorio, uprogressbar;

{$R *.DFM}

const
  exibe    = 'Treinamento';
  artigoI  = 'a';

procedure TfrmTreinamento.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure TfrmTreinamento.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

function TfrmTreinamento.Abrir(codigo: integer): boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmTreinamento.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmTreinamento.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmTreinamento.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmTreinamento.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmTreinamento.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmTreinamento.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmTreinamento.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure TfrmTreinamento.actSalvarExecute(Sender: TObject);
begin
  if (qrydetail.State = dsinsert) or (qrydetail.State = dsedit) then
  begin
    qrydetail.Post;
  end;
  registro.Salvar;
  abrir(qry.FieldByName(_cdtreinamento).asinteger);
end;

procedure TfrmTreinamento.actCancelarExecute(Sender: TObject);
begin
  if registro.cancelar then
  begin
    registro.dados_atual;
  end;
end;

procedure TfrmTreinamento.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.Caption := exibe;
  edtCodigo.SetFocus;
end;

procedure TfrmTreinamento.qryAfterOpen(DataSet: TDataSet);
begin
  qrydetail.close;
  qrydetail.Open;
end;

procedure TfrmTreinamento.qryBeforePost(DataSet: TDataSet);
begin
  registro.set_update(dataset);
end;

procedure TfrmTreinamento.qrydetailBeforeInsert(DataSet: TDataSet);
begin
  if (qry.state = dsinsert) then
  begin
    qry.post;
  end;
end;

procedure TfrmTreinamento.qrydetailBeforePost(DataSet: TDataSet);
begin
  registro.set_update(DataSet);
end;

procedure TfrmTreinamento.qrydetailNewRecord(DataSet: TDataSet);
begin
  dataset.FieldByName(_cdittreinamento).AsString := GerarCodigo(_ittreinamento);
end;

procedure TfrmTreinamento.qryNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

procedure TfrmTreinamento.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmTreinamento.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure TfrmTreinamento.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmTreinamento.FormDestroy(Sender: TObject);
begin
  freeandnil(registro);
end;

procedure TfrmTreinamento.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmTreinamento.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
  actimportar.Enabled := actImprimir.Enabled;
end;

procedure TfrmTreinamento.colorEnter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmTreinamento.colorExit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmTreinamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmTreinamento.FormCreate(Sender: TObject);
begin
  tbl := _treinamento;
  cbxcdtptreinamento.Properties.ListSource  := abrir_tabela(_tptreinamento);
  TcxLookupComboBoxProperties(tbvCDFUNCIONARIO.Properties).ListSource := abrir_tabela(_funcionario);
  registro := tregistro.create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
  GeraMenuRelatorio ('', btnimprimir, 65, qry, tbl);
end;

procedure TfrmTreinamento.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmTreinamento.cbxcdtptreinamentoEnter(Sender: TObject);
begin
  colorEnter(Sender);
  abrir_tabela(_tptreinamento);
end;

procedure TfrmTreinamento.actImprimirExecute(Sender: TObject);
begin
//
end;

end.
