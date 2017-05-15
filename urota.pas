unit urota;

interface

uses
  System.Actions, System.UITypes,
  forms, Menus, Classes, Mask, ActnList, StdCtrls, Buttons, ExtCtrls, Controls,
  ComCtrls, ToolWin, dialogs, sysutils, Windows,
  DB, DBCLIENT,
  uconstantes, uexportarexcel, ustrings, uregistro,
  classerota, classegerar, classecliente, classeRegistro, classeform,
  dxBar, cxEdit, cxContainer, cxTextEdit, cxDBEdit, cxGridLevel, cxGridDBTableView,
  cxGrid, cxLabel, cxDBLookupComboBox, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxButtonEdit, cxBlobEdit, cxClasses, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxGridCustomTableView, cxGridTableView,
  cxGridCustomView, dxBarBuiltInMenu, cxPC, cxSpinEdit, cxCalc,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.Stan.Async, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfrmrota = class(TForm)
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
    actabrircliente: TAction;
    actabrirrepresentante: TAction;
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
    btnimprimir: TdxBarLargeButton;
    dxbrsprtr3: TdxBarSeparator;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    dtsdetail: TDataSource;
    dts: TDataSource;
    pnl1: TPanel;
    edtnome: TcxDBTextEdit;
    lblnome: TLabel;
    edtcodigo: TcxTextEdit;
    lblcodigo: TLabel;
    pnl: TcxLabel;
    lbluf: TLabel;
    cbxcduf: TcxDBLookupComboBox;
    lblmunicipio: TLabel;
    cbxcdmunicipio: TcxDBLookupComboBox;
    lblbairro: TLabel;
    edtnmbairro: TcxDBTextEdit;
    lbltprota: TcxLabel;
    cbxcdtprota: TcxDBLookupComboBox;
    pumimprimir: TdxBarPopupMenu;
    actimprimirrota: TAction;
    dxBarButton1: TdxBarButton;
    actimprimirrota639: TAction;
    dxBarButton2: TdxBarButton;
    dtsitrotavalor: TDataSource;
    pgc: TcxPageControl;
    tbscliente: TcxTabSheet;
    grd1: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvNUSEQUENCIA: TcxGridDBColumn;
    tbvCDCLIENTE: TcxGridDBColumn;
    tbvNMCLIENTE: TcxGridDBColumn;
    tbvDSENDERECO: TcxGridDBColumn;
    tbvDSNUMERO: TcxGridDBColumn;
    tbvNMBAIRROCLIENTE: TcxGridDBColumn;
    tbvNMMUNICIPIO: TcxGridDBColumn;
    tbvSGUF: TcxGridDBColumn;
    tbvDSOBSERVACAO: TcxGridDBColumn;
    tbvCDUF: TcxGridDBColumn;
    tbvCDMUNICIPIO: TcxGridDBColumn;
    tbvNMBAIRRO: TcxGridDBColumn;
    grl: TcxGridLevel;
    tbsvalor: TcxTabSheet;
    tbvitrotavalor: TcxGridDBTableView;
    glvitrotavalor: TcxGridLevel;
    grditrotavalor: TcxGrid;
    tbvitrotavalorQTITEM: TcxGridDBColumn;
    tbvitrotavalorVLUNITARIO: TcxGridDBColumn;
    actopcoes: TAction;
    actimportarcliente: TAction;
    btnopcoes: TdxBarLargeButton;
    pumopcoes: TdxBarPopupMenu;
    dxBarButton3: TdxBarButton;
    sca: TFDSchemaAdapter;
    qrydetail: TFDQuery;
    qry: TFDQuery;
    qryitrotavalor: TFDQuery;
    qryCDROTA: TIntegerField;
    qryCDEMPRESA: TLargeintField;
    qryCDREPRESENTANTE: TIntegerField;
    qryCDUF: TIntegerField;
    qryCDMUNICIPIO: TIntegerField;
    qryCDUSUARIOI: TIntegerField;
    qryCDUSUARIOA: TIntegerField;
    qryCDCOMPUTADORI: TIntegerField;
    qryCDCOMPUTADORA: TIntegerField;
    qryCDTPROTA: TIntegerField;
    qryNMROTA: TStringField;
    qryTSINCLUSAO: TSQLTimeStampField;
    qryTSALTERACAO: TSQLTimeStampField;
    qryNMBAIRRO: TStringField;
    qrydetailCDEMPRESA: TLargeintField;
    qrydetailCDITROTA: TIntegerField;
    qrydetailCDROTA: TIntegerField;
    qrydetailCDCLIENTE: TLargeintField;
    qrydetailCDUSUARIOI: TIntegerField;
    qrydetailCDUSUARIOA: TIntegerField;
    qrydetailCDCOMPUTADORI: TIntegerField;
    qrydetailCDCOMPUTADORA: TIntegerField;
    qrydetailCDUF: TIntegerField;
    qrydetailCDMUNICIPIO: TIntegerField;
    qrydetailTSINCLUSAO: TSQLTimeStampField;
    qrydetailTSALTERACAO: TSQLTimeStampField;
    qrydetailNUSEQUENCIA: TIntegerField;
    qrydetailDSOBSERVACAO: TBlobField;
    qrydetailNMBAIRRO: TStringField;
    qrydetailNMCLIENTE: TStringField;
    qrydetailDSENDERECO: TStringField;
    qrydetailDSNUMERO: TStringField;
    qrydetailNMBAIRROCLIENTE: TStringField;
    qrydetailNMMUNICIPIO: TStringField;
    qrydetailSGUF: TStringField;
    qryitrotavalorCDEMPRESA: TLargeintField;
    qryitrotavalorCDITROTAVALOR: TIntegerField;
    qryitrotavalorCDROTA: TIntegerField;
    qryitrotavalorCDUSUARIOI: TIntegerField;
    qryitrotavalorCDUSUARIOA: TIntegerField;
    qryitrotavalorCDCOMPUTADORI: TIntegerField;
    qryitrotavalorCDCOMPUTADORA: TIntegerField;
    qryitrotavalorTSINCLUSAO: TSQLTimeStampField;
    qryitrotavalorTSALTERACAO: TSQLTimeStampField;
    qryitrotavalorQTITEM: TIntegerField;
    qryitrotavalorVLUNITARIO: TBCDField;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actfecharExecute(Sender: TObject);
    procedure edtnomePropertiesChange(Sender: TObject);
    procedure dtsStateChange(Sender: TObject);
    procedure ColorEnter(Sender: TObject);
    procedure cbxcdufExit(Sender: TObject);
    procedure ColorExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure gtvCDCLIENTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actImprimirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actimprimirrotaExecute(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actimprimirrota639Execute(Sender: TObject);
    procedure actopcoesExecute(Sender: TObject);
    procedure actimportarclienteExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure qryAfterScroll(DataSet: TDataSet);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure qrydetailBeforePost(DataSet: TDataSet);
    procedure qrydetailNewRecord(DataSet: TDataSet);
    procedure qryitrotavalorBeforePost(DataSet: TDataSet);
    procedure qrydetailBeforeInsert(DataSet: TDataSet);
    procedure qrydetailCDCLIENTEValidate(Sender: TField);
    procedure qryCDTPROTAValidate(Sender: TField);
  private      { Private declarations }
    cliente : TCliente;
    rota    : trota;
    procedure SetRecord(codigo:integer);
    procedure abrirtabela;
  public  { Public declarations }
    registro : TRegistro;
    function Abrir(codigo:integer):boolean;
  end;

var
  frmrota: Tfrmrota;

implementation

uses uDtmMain, uMenuRelatorio, uMain, ulocalizarCliente, uimprimirrelatoriopadrao;

{$R *.DFM}

const
  tbl      = _rota;
  exibe    = 'Rota';
  artigoI  = 'a';

function Tfrmrota.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmrota.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmrota.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmrota.actSalvarExecute(Sender: TObject);
begin
  if registro.salvar then
  begin
    edtcodigo.Text := qry.fieldbyname(_CDROTA).AsString;
  end;
  TDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
end;

procedure Tfrmrota.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmrota.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmrota.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
  TDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
end;

procedure Tfrmrota.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmrota.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmrota.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmrota.FormShow(Sender: TObject);
begin
  rota    := Trota.create;
  cliente := tcliente.create;
  registro.set_readonly_dados(self, true);
  qrydetail.Open;
  qryitrotavalor.Open;
  edtCodigo.SetFocus;
end;

procedure Tfrmrota.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmrota.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmrota.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmrota.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmrota.setrecord(codigo: integer);
begin
  if (codigo = 0) then
  begin
    exit;
  end;
  if rota.cdtprota <> codigo then
  begin
    rota.tprota.Select(codigo);
  end;
  tbvCDCLIENTE.Visible       := rota.tprota.boitemcliente = _s;
  tbvNMCLIENTE.Visible       := rota.tprota.boitemcliente = _s;
  tbvDSENDERECO.Visible      := rota.tprota.boitemcliente = _s;
  tbvDSNUMERO.Visible        := rota.tprota.boitemcliente = _s;
  tbvNMBAIRRO.Visible        := rota.tprota.boitemcliente <> _s;
  tbvNMMUNICIPIO.Visible     := rota.tprota.boitemcliente = _s;;
  tbvSGUF.Visible            := rota.tprota.boitemcliente = _s;;
  tbvCDUF.Visible            := rota.tprota.boitemcliente <> _s;;
  tbvCDMUNICIPIO.Visible     := rota.tprota.boitemcliente <> _s;;
  tbvNMBAIRROcliente.Visible := rota.tprota.boitemcliente = _s;;
  lbluf.Visible              := rota.tprota.bouf = _s;;
  cbxcduf.Visible            := rota.tprota.bouf = _s;;
  lblmunicipio.Visible       := rota.tprota.bomunicipio = _s;;
  cbxcdmunicipio.Visible     := rota.tprota.bomunicipio = _s;;
  lblbairro.Visible          := rota.tprota.bobairro = _s;;
  edtnmbairro.Visible        := rota.tprota.bobairro = _s;;
  tbvDSOBSERVACAO.Visible    := rota.tprota.boobservacao = _s;;
  tbsvalor.TabVisible        := rota.tprota.bovalor = _s;;
end;

procedure Tfrmrota.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure Tfrmrota.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmrota.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmrota.edtnomePropertiesChange(Sender: TObject);
begin
  if qry.fieldbyname(_CDROTA).asstring = '-1' then
  begin
    pnl.Caption := exibe+' - ' + edtNome.Text
  end
  else
  begin
    pnl.Caption := exibe+' '+ qry.fieldbyname(_CDROTA).asstring + ' - ' + edtNome.Text;
  end;
end;

procedure Tfrmrota.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmrota.ColorEnter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmrota.cbxcdufExit(Sender: TObject);
begin
  if not (sender = nil) then
  begin
    colorexit(Sender);
  end;
  if ((qry.State = dsinsert) or (qry.State = dsedit)) and cbxcduf.DataBinding.IsDataAvailable then
  begin
    dtmMain.Municipio_Filtro_(cbxcduf.DataBinding.Field.AsString, TCLIENTDataSet(cbxcdmunicipio.Properties.ListSource.DataSet)); //dtmmain.cdsmunicipio);
  end;
end;

procedure Tfrmrota.ColorExit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmrota.FormDestroy(Sender: TObject);
begin
  freeandnil(rota);
  registro.destroy;
  cliente.free;
end;

procedure Tfrmrota.gtvCDCLIENTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : LargeInt;
begin
  codigo := Localizarcliente;
  if codigo <> 0 then
  begin
    qrydetail.FieldByName(_CDCLIENTE).AsLargeInt := codigo;
  end;
end;

procedure Tfrmrota.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure Tfrmrota.actimprimirrota639Execute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(639, qry.fieldbyname(_CDROTA).asstring);
end;

procedure Tfrmrota.actimprimirrotaExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(432, qry.fieldbyname(_CDROTA).asstring);
end;

procedure Tfrmrota.FormCreate(Sender: TObject);
begin
  registro := tregistro.create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
  abrirtabela;
  GeraMenuRelatorio ('', btnimprimir, 52, qry, _rota);
end;

procedure Tfrmrota.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure Tfrmrota.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure Tfrmrota.qryAfterScroll(DataSet: TDataSet);
begin
  rota.Select(dataset);
  rota.ItRota.Ler(qrydetail);
  rota.tprota.Select(rota.cdtprota);
  setrecord(rota.cdtprota);
end;

procedure Tfrmrota.qryBeforePost(DataSet: TDataSet);
begin
  registro.set_update(dataset);
end;

procedure Tfrmrota.qryCDTPROTAValidate(Sender: TField);
begin
  setrecord(Sender.AsInteger);
end;

procedure Tfrmrota.qrydetailBeforeInsert(DataSet: TDataSet);
begin
  if (qry.state = dsinsert) then
  begin
    qry.post;
  end;
end;

procedure Tfrmrota.qrydetailBeforePost(DataSet: TDataSet);
begin
  registro.set_update(dataset);
end;

procedure Tfrmrota.qrydetailCDCLIENTEValidate(Sender: TField);
begin
  if sender.AsString = '' then
  begin
    qrydetail.fieldbyname(_NMCLIENTE).Clear;
    Exit;
  end;
  if not cliente.select(sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_cliente)]), mterror, [mbok], 0);
    qrydetail.fieldbyname(_CDCLIENTE).FocusControl;
    Abort;
  end;
  if not cliente.ConsistirMunicipio(sender.AsString) then
  begin
    qrydetail.fieldbyname(_CDCLIENTE).FocusControl;
    abort;
  end;
  qrydetail.fieldbyname(_NMCLIENTE).AsString   := cliente.nmcliente;
  qrydetail.fieldbyname(_DSENDERECO).asstring  := cliente.dsendereco;
  qrydetail.fieldbyname(_DSNUMERO).asstring    := cliente.dsnumero;
  qrydetail.fieldbyname(_NMBAIRRO).AsString    := cliente.nmbairro;
  qrydetail.fieldbyname(_NMMUNICIPIO).AsString := qregistro.nomedocodigo(_municipio, cliente.cdmunicipio);
  qrydetail.fieldbyname(_SGUF).AsString        := qregistro.stringdocodigo(_uf, cliente.cduf, _sguf);
end;

procedure Tfrmrota.qrydetailNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName(_CDITROTA).AsString     := GerarCodigo(_itrota);
  DataSet.FieldByName(_NUSEQUENCIA).AsInteger := dataset.RecordCount + 1;
end;

procedure Tfrmrota.qryitrotavalorBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName(_cditrotavalor).IsNull then
  begin
    DataSet.FieldByName(_cditrotavalor).AsString := GerarCodigo(_itrotavalor);
  end;
  registro.set_update(DataSet);
end;

procedure Tfrmrota.qryNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

procedure Tfrmrota.abrirtabela;
begin
  TcxLookupComboBoxProperties(tbvCDUF.Properties).ListSource        := abrir_tabela(_uf);
  TcxLookupComboBoxProperties(tbvCDMUNICIPIO.Properties).ListSource := abrir_tabela(_municipio);
  cbxcdtprota.Properties.ListSource    := abrir_tabela(_tprota);
  cbxcduf.Properties.ListSource        := abrir_tabela(_uf);
  cbxcdmunicipio.Properties.ListSource := abrir_tabela(_municipio);
end;

procedure Tfrmrota.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure Tfrmrota.actimportarclienteExecute(Sender: TObject);
begin
  if rota.importarcliente then
  begin
    messagedlg('Clientes importados.', mtinformation, [mbok], 0);
    abrir(qry.fieldbyname(_cdrota).asinteger);
  end;
end;

end.
