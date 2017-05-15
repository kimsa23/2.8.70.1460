unit uuf;

interface

uses
  forms, StdCtrls, Controls, ComCtrls, ToolWin, ExtCtrls, dialogs, Classes,
  sysutils, Mask, ActnList, Grids, Menus,
  FMTBcd, Provider, DBClient, sqlexpr,
  uregistro, uconstantes,
  classeusuario, classeconsiste, classeregistrainformacao,
  classeRegistro, classeform,
  dxBar, cxClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxTextEdit, cxDBEdit, cxButtonEdit,
  cxDBLookupComboBox, cxMaskEdit, cxDropDownEdit, cxCalc,
  cxGridBandedTableView, cxGridDBBandedTableView, cxNavigator, cxCheckBox,
  System.Actions;

type
  TfrmUF = class(TForm)
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
    dxbrlrgbtnimprimir: TdxBarLargeButton;
    dxbrsprtr3: TdxBarSeparator;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    pnl1: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    grdDBTableView1: TcxGridDBTableView;
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    cds: TClientDataSet;
    dts: TDataSource;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    sdsdetail: TSQLDataSet;
    cdsdetail: TClientDataSet;
    dtsdetail: TDataSource;
    edtcodigo: TcxTextEdit;
    edtnome: TcxDBTextEdit;
    dts1: TDataSource;
    grdDBTableView1CDUFDESTINO: TcxGridDBColumn;
    grdDBTableView1ALICMS: TcxGridDBColumn;
    sdsCDUF: TIntegerField;
    sdsNMUF: TStringField;
    sdsSGUF: TStringField;
    sdsALICMS: TFloatField;
    sdsALIPI: TFloatField;
    sdsdetailCDUF: TIntegerField;
    sdsdetailCDUFDESTINO: TIntegerField;
    sdsdetailALICMS: TFloatField;
    cdsCDUF: TIntegerField;
    cdsNMUF: TStringField;
    cdsSGUF: TStringField;
    cdsALICMS: TFloatField;
    cdsALIPI: TFloatField;
    cdssdsdetail: TDataSetField;
    cdsdetailCDUF: TIntegerField;
    cdsdetailCDUFDESTINO: TIntegerField;
    cdsdetailALICMS: TFloatField;
    edtalicms: TcxDBCalcEdit;
    edtalipi: TcxDBCalcEdit;
    edtsguf: TcxDBTextEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    Label2: TLabel;
    grdDBBandedTableView1: TcxGridDBBandedTableView;
    grdDBBandedTableView1CDUF: TcxGridDBBandedColumn;
    grdDBBandedTableView1CDUFDESTINO: TcxGridDBBandedColumn;
    grdDBBandedTableView1ALICMS: TcxGridDBBandedColumn;
    sdsBODIGITO9: TStringField;
    cdsBODIGITO9: TStringField;
    ckbbodigito9: TcxDBCheckBox;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actfecharExecute(Sender: TObject);
    procedure edtcodigoEnter(Sender: TObject);
    procedure edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnomePropertiesChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure dtsStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grdDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
  public  { Public declarations }
    registro : tregistro;
    function  Abrir(codigo:Integer):boolean;
  end;

var
  frmUF: TfrmUF;

implementation

uses uDtmMain, uExportarExcel, uLocalizar, uMain;

{$R *.DFM}

const
  tbl      = _Uf;
  exibe    = 'Unidade Federativa';
  artigoI  = 'a';

function TfrmUF.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmUF.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmUF.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure TfrmUF.actSalvarExecute(Sender: TObject);
begin
  registro.Salvar;
end;

procedure TfrmUF.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmUF.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmUF.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure TfrmUF.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure TfrmUF.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  cdsdetail.Open;
  edtCodigo.SetFocus;
  pnl.caption := exibe;
end;

procedure TfrmUF.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmUF.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmUF.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmUF.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmUF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmUF.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmUF.edtcodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmUF.edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure TfrmUF.edtcodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmUF.edtnomePropertiesChange(Sender: TObject);
begin
  pnl.Caption := exibe+' '+ cdsCDUF.asstring + ' - ' + edtNome.Text;
end;

procedure TfrmUF.FormDestroy(Sender: TObject);
begin
  registro.Destroy;
end;

procedure TfrmUF.cdsBeforePost(DataSet: TDataSet);
begin
  //registro.set_update(cds);
end;

procedure TfrmUF.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

procedure TfrmUF.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure TfrmUF.FormCreate(Sender: TObject);
begin
  TcxLookupComboBoxProperties(grdDBTableView1CDUFDESTINO.Properties).ListSource := abrir_tabela(_uf);
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
end;

procedure TfrmUF.grdDBTableView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

end.
