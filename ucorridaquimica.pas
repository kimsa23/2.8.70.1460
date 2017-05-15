unit ucorridaquimica;

interface

uses
  System.Actions, System.UITypes,
  forms, Menus, Classes, Mask, ActnList, StdCtrls, Buttons, ExtCtrls, Controls,
  Windows, ComCtrls, ToolWin, dialogs, sysutils, Math,
  FMTBcd, Provider, DBClient, DB, sqlexpr, Grids,
  urotinas, ustrings, ulocalizar, uregistro, uconstantes, uexportarexcel,
  classeconsiste, classegerar, classeusuario,
  classeretornasql, classeRegistro, classeform, classeempresa, classeaplicacao,
  classequery,
  dxBar, cxClasses, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxContainer, cxTextEdit, cxDBEdit, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxCurrencyEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxButtonEdit, cxCalc,
  cxLabel, cxDBLabel, cxPC, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxPCdxBarPopupMenu, cxNavigator, dxBarBuiltInMenu;

type
  Tfrmcorridaquimica = class(TForm)
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
    dtsdetail: TDataSource;
    cdsdetail: TClientDataSet;
    sdsdetail: TSQLDataSet;
    dts1: TDataSource;
    dts: TDataSource;
    cds: TClientDataSet;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    sdsCDCORRIDAQUIMICA: TIntegerField;
    sdsDTEMISSAO: TDateField;
    sdsdetailCDCORRIDAQUIMICA: TIntegerField;
    sdsdetailCDELEMENTOQUIMICO: TIntegerField;
    sdsdetailQTITEM: TFloatField;
    cdsCDCORRIDAQUIMICA: TIntegerField;
    cdsDTEMISSAO: TDateField;
    cdssdsdetail: TDataSetField;
    cdsdetailCDCORRIDAQUIMICA: TIntegerField;
    cdsdetailCDELEMENTOQUIMICO: TIntegerField;
    cdsdetailQTITEM: TFloatField;
    sdsdetailNMELEMENTOQUIMICO: TStringField;
    cdsdetailNMELEMENTOQUIMICO: TStringField;
    sdsCDTPGRADEVALOR: TIntegerField;
    cdsCDTPGRADEVALOR: TIntegerField;
    sdscertificadoqualidade: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    cdscertificadoqualidade: TClientDataSet;
    IntegerField3: TIntegerField;
    StringField6: TStringField;
    dtscertificadoqualidade: TDataSource;
    cdssdscertificadoqualidade: TDataSetField;
    sdscertificadoqualidadeCDPEDIDO: TIntegerField;
    sdscertificadoqualidadeNUPEDIDO: TStringField;
    sdscertificadoqualidadeDTEMISSAO: TDateField;
    cdscertificadoqualidadeCDPEDIDO: TIntegerField;
    cdscertificadoqualidadeNUPEDIDO: TStringField;
    cdscertificadoqualidadeDTEMISSAO: TDateField;
    cdscertificadoqualidadeCDCERTIFICADOQUALIDADE: TIntegerField;
    sdscertificadoqualidadeCDCERTIFICADOQUALIDADE: TIntegerField;
    sdscertificadoqualidadeNUSEGURANCA: TIntegerField;
    cdscertificadoqualidadeNUSEGURANCA: TIntegerField;
    Panel1: TPanel;
    bvl1: TBevel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    edtcodigo: TcxTextEdit;
    edtemissao: TcxDBDateEdit;
    pnl: TcxLabel;
    pgc1: TcxPageControl;
    tbsElementoquimico: TcxTabSheet;
    grd1: TcxGrid;
    gtv: TcxGridDBTableView;
    gtvCDELEMENTOQUIMICO: TcxGridDBColumn;
    gtvNMELEMENTOQUIMICO: TcxGridDBColumn;
    gtvQTITEM: TcxGridDBColumn;
    grl: TcxGridLevel;
    tbsCertificado: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBCDCERTIFICADOQUALIDADE: TcxGridDBColumn;
    cxGridDBDTEMISSAO: TcxGridDBColumn;
    cxGridDBNUPEDIDO: TcxGridDBColumn;
    cxGridDBCLIENTE: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cbxcdtpgradevalor: TcxDBLookupComboBox;
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
    sdscertificadoqualidadeCDUSUARIOI: TIntegerField;
    sdscertificadoqualidadeCDUSUARIOA: TIntegerField;
    sdscertificadoqualidadeCDCOMPUTADORI: TIntegerField;
    sdscertificadoqualidadeCDCOMPUTADORA: TIntegerField;
    sdscertificadoqualidadeTSINCLUSAO: TSQLTimeStampField;
    sdscertificadoqualidadeTSALTERACAO: TSQLTimeStampField;
    cdscertificadoqualidadeCDUSUARIOI: TIntegerField;
    cdscertificadoqualidadeCDUSUARIOA: TIntegerField;
    cdscertificadoqualidadeCDCOMPUTADORI: TIntegerField;
    cdscertificadoqualidadeCDCOMPUTADORA: TIntegerField;
    cdscertificadoqualidadeTSINCLUSAO: TSQLTimeStampField;
    cdscertificadoqualidadeTSALTERACAO: TSQLTimeStampField;
    dts2: TDataSource;
    sdscertificadoordproducao: TSQLDataSet;
    cdscertificadoordproducao: TClientDataSet;
    dtscertificadoordproducao: TDataSource;
    sdscertificadoordproducaoCDCERTIFICADOORDPRODUCAO: TIntegerField;
    sdscertificadoordproducaoCDCERTIFICADOQUALIDADE: TIntegerField;
    sdscertificadoordproducaoCDORDPRODUCAO: TIntegerField;
    sdscertificadoordproducaoCDUSUARIOI: TIntegerField;
    sdscertificadoordproducaoCDUSUARIOA: TIntegerField;
    sdscertificadoordproducaoCDCOMPUTADORI: TIntegerField;
    sdscertificadoordproducaoCDCOMPUTADORA: TIntegerField;
    sdscertificadoordproducaoTSINCLUSAO: TSQLTimeStampField;
    sdscertificadoordproducaoTSALTERACAO: TSQLTimeStampField;
    cdscertificadoqualidadesdscertificadoordproducao: TDataSetField;
    cdscertificadoordproducaoCDCERTIFICADOORDPRODUCAO: TIntegerField;
    cdscertificadoordproducaoCDCERTIFICADOQUALIDADE: TIntegerField;
    cdscertificadoordproducaoCDORDPRODUCAO: TIntegerField;
    cdscertificadoordproducaoCDUSUARIOI: TIntegerField;
    cdscertificadoordproducaoCDUSUARIOA: TIntegerField;
    cdscertificadoordproducaoCDCOMPUTADORI: TIntegerField;
    cdscertificadoordproducaoCDCOMPUTADORA: TIntegerField;
    cdscertificadoordproducaoTSINCLUSAO: TSQLTimeStampField;
    cdscertificadoordproducaoTSALTERACAO: TSQLTimeStampField;
    grdcertificadoordproducao: TcxGrid;
    grdcertificadoordproducaoLevel1: TcxGridLevel;
    grdcertificadoordproducaoDBTableView1: TcxGridDBTableView;
    grdcertificadoordproducaoDBTableView1CDORDPRODUCAO: TcxGridDBColumn;
    sdsNUCORRIDAQUIMICA: TStringField;
    cdsNUCORRIDAQUIMICA: TStringField;
    actabrirpedido: TAction;
    actabrirordproducao: TAction;
    sdsCDEMPRESA: TLargeintField;
    sdsdetailCDEMPRESA: TLargeintField;
    sdscertificadoqualidadeCDEMPRESA: TLargeintField;
    sdscertificadoordproducaoCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsdetailCDEMPRESA: TLargeintField;
    cdscertificadoqualidadeCDEMPRESA: TLargeintField;
    cdscertificadoordproducaoCDEMPRESA: TLargeintField;
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
    procedure dtsStateChange(Sender: TObject);
    procedure cdsdetailBeforePost(DataSet: TDataSet);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure gtvCDELEMENTOQUIMICOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsdetailCDELEMENTOQUIMICOValidate(Sender: TField);
    procedure cdsCDTPGRADEVALORValidate(Sender: TField);
    procedure cdscertificadoqualidadeNewRecord(DataSet: TDataSet);
    procedure cxGridDBNUPEDIDOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdscertificadoqualidadeNUPEDIDOValidate(Sender: TField);
    procedure actImprimirExecute(Sender: TObject);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdtpgradevalorEnter(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure grdcertificadoordproducaoDBTableView1CDORDPRODUCAOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdscertificadoordproducaoCDORDPRODUCAOValidate(Sender: TField);
    procedure cdscertificadoordproducaoNewRecord(DataSet: TDataSet);
    procedure actabrirpedidoExecute(Sender: TObject);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirclienteExecute(Sender: TObject);
    procedure grdcertificadoordproducaoDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirordproducaoExecute(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
  public  { Public declarations }
    registro : TRegistro;
    function Abrir(codigo:integer):boolean;
  end;

const
  tbl      = 'corridaquimica';
  exibe    = 'Corrida Química';
  artigoI  = 'a';
var
  frmcorridaquimica: Tfrmcorridaquimica;

implementation

uses uDtmMain, uMain, uLocalizarPedido, uimprimirrelatoriopadrao,
  ulocalizarordproducao, classeordproducao;

{$R *.DFM}

function Tfrmcorridaquimica.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmcorridaquimica.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmcorridaquimica.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmcorridaquimica.actSalvarExecute(Sender: TObject);
  function JaExisteNucorridaquimica(cdcorridaquimica, nucorridaquimica: string):boolean;
  var
    s: TClasseQuery;
  begin
    s := TClasseQuery.Create('select cdcorridaquimica from corridaquimica where cdempresa='+empresa.cdempresa.tostring+' and nucorridaquimica='+quotedstr(nucorridaquimica)+' and cdcorridaquimica<>'+cdcorridaquimica);
    try
      result := not s.q.Eof;
    finally
      freeandnil(s);
    end;
  end;
var
  key : char;
begin
  if (edtcodigo.Text = '') and ((cdsNUcorridaquimica.asstring = '') or cdsNUcorridaquimica.IsNull) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Numero+' '+_do+' '+exibe]), mtinformation, [mbok], 0);
    edtcodigo.SetFocus;
    abort;
  end;
  if JaExisteNucorridaquimica(cdsCDcorridaquimica.AsString,cdsNUcorridaquimica.asstring) then
  begin
    messagedlg('Número do corridaquimica duplicado!', mtinformation, [mbok], 0);
    edtcodigo.SetFocus;
    abort;
  end;
  if cdsNUCORRIDAQUIMICA.AsString = _0 then
  begin
    cdsNUCORRIDAQUIMICA.Asstring := GerarCodigo(_nucorridaquimica);
    edtcodigo.Text               := cdsNUCORRIDAQUIMICA.Asstring;
  end;
  if registro.salvar then
  begin
    key := #13;
    nextcontrol(Self.ActiveControl, key);
    abrir(cdsCDCORRIDAQUIMICA.asinteger);
  end;
end;

procedure Tfrmcorridaquimica.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmcorridaquimica.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmcorridaquimica.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure Tfrmcorridaquimica.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmcorridaquimica.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.CodigoKeyPress(Sender, Key, actnovo.enabled);
end;

procedure Tfrmcorridaquimica.edtCodigoEnter(Sender: TObject);
begin
  TcxTextEdit(sender).selectall;
end;

procedure Tfrmcorridaquimica.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  cdsdetail.Open;
  edtCodigo.SetFocus;
end;

procedure Tfrmcorridaquimica.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmcorridaquimica.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmcorridaquimica.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmcorridaquimica.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmcorridaquimica.nextcontrol(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext(sender as twincontrol, true, true);
    key := #0;
  end;
end;

procedure Tfrmcorridaquimica.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure Tfrmcorridaquimica.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcorridaquimica.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmcorridaquimica.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmcorridaquimica.cdsdetailBeforePost(DataSet: TDataSet);
begin
  registro.set_update(dataset);
end;

procedure Tfrmcorridaquimica.cdsBeforePost(DataSet: TDataSet);
begin
  if registro.edtcodigo.text <> '' then
  begin
    cdsNUcorridaquimica.asstring := registro.edtcodigo.text;
  end;
  registro.set_update(dataset);
end;

procedure Tfrmcorridaquimica.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
  cdsNUcorridaquimica.AsString := _0;  
end;

procedure Tfrmcorridaquimica.cdsdetailNewRecord(DataSet: TDataSet);
begin
  registro.set_insert(DataSet);
end;

procedure Tfrmcorridaquimica.gtvCDELEMENTOQUIMICOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : integer;
begin
  codigo := Localizar(_ELEMENTOQUIMICO);
  if codigo <> 0 then
  begin
    cdsdetailCDELEMENTOQUIMICO.AsInteger := codigo;
  end;
end;

procedure Tfrmcorridaquimica.cdsdetailCDELEMENTOQUIMICOValidate(Sender: TField);
begin
  if not ((sender.FieldName = 'CDELEMENTOQUIMICO') and (sender.AsString <> _0) and (sender.AsString <> '')) then
  begin
    exit;
  end;
  if not codigoexiste(_ELEMENTOQUIMICO, sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_elemento+' '+__quimico)]), mterror, [mbok], 0);
    abort;
  end;
  cdsdetailNMELEMENTOQUIMICO.asstring := NomedoCodigo(_elementoquimico, sender.asstring);
end;

procedure Tfrmcorridaquimica.cdsCDTPGRADEVALORValidate(Sender: TField);
begin
  if not ((sender.FieldName = UpperCase(_CD+_TPGRADEVALOR)) and (sender.AsString <> _0) and (sender.AsString <> '')) then
  begin
    exit;
  end;
  if not codigoexiste(_TPGRADEVALOR, sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_tipo+' '+_grade+' '+_valor)]), mterror, [mbok], 0);
    abort;
  end;
end;

procedure Tfrmcorridaquimica.cdscertificadoqualidadeNewRecord(DataSet: TDataSet);
begin
  DataSet.Fieldbyname(_CD+_CERTIFICADO+_QUALIDADE).Asstring := GerarCodigo(_certificado+_qualidade);
  Randomize;
  DataSet.Fieldbyname(_nu+_seguranca).AsInteger := RandomRange(1, 999999999);
  registro.set_insert(DataSet);
end;

procedure Tfrmcorridaquimica.cxGridDBNUPEDIDOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : integer;
begin
  codigo := LocalizarPedido('');
  if codigo <> 0 then
  begin
    cdscertificadoqualidadeNUPEDIDO.AsInteger := codigo;
  end;
end;

procedure Tfrmcorridaquimica.cdscertificadoqualidadeNUPEDIDOValidate(Sender: TField);
const
  tabela = 'PEDIDO';
  function makesql:string;
  begin
    result := 'select nmcliente '+
              'from cliente '+
              'left join pedido on pedido.cdcliente=cliente.cdcliente '+
              'where cdpedido='+sender.DataSet.Fieldbyname(_CD+tabela).AsString;
  end;
begin
  if not ((sender.FieldName = UpperCase(_nu)+tabela) and (sender.AsString <> _0) and (sender.AsString <> '')) then
  begin
    exit;
  end;
  if not codigoexiste(tabela, _NUPEDIDO, _STRING, sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_pedido)]), mterror, [mbok], 0);
    abort;
  end;
  sender.DataSet.Fieldbyname(_CD+tabela).AsString := CodigodoCampo(tabela, sender.asstring, _nupedido);
  sender.DataSet.Fieldbyname(_NMCLIENTE).AsString := RetornaSQLString(makesql);
end;

procedure Tfrmcorridaquimica.actImprimirExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(310, cdscertificadoqualidade.fieldbyname(_CD+_CERTIFICADO+_QUALIDADE).AsString);
end;

procedure Tfrmcorridaquimica.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure Tfrmcorridaquimica.FormCreate(Sender: TObject);
begin
  cbxcdtpgradevalor.Properties.ListSource := abrir_tabela(_tpgradevalor);
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo, true);
end;

procedure Tfrmcorridaquimica.cbxcdtpgradevalorEnter(Sender: TObject);
begin
  colorenter(sender);
  abrir_tabela(_tpgradevalor);
end;

procedure Tfrmcorridaquimica.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmcorridaquimica.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmcorridaquimica.FormDestroy(Sender: TObject);
begin
  registro.destroy;
end;

procedure Tfrmcorridaquimica.cdsAfterScroll(DataSet: TDataSet);
begin
  if cdscertificadoqualidade.RecordCount = 0 then
  begin
    actImprimir.Enabled := False;
  end;
end;

procedure Tfrmcorridaquimica.grdcertificadoordproducaoDBTableView1CDORDPRODUCAOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : integer;
begin
  codigo := Localizarordproducao(cdscertificadoqualidadeNUPEDIDO.AsString);
  if codigo <> 0 then
  begin
    cdscertificadoordproducaoCDORDPRODUCAO.AsInteger := codigo;
  end;
end;

procedure Tfrmcorridaquimica.cdscertificadoordproducaoCDORDPRODUCAOValidate(Sender: TField);
var
  ordproducao : TOrdProducao;
begin
  if Sender.AsString = '' then
  begin
    Exit;
  end;
  if not CodigoExiste(_ordproducao, sender.AsString) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_ordem+' '+__producao)]), mterror, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  ordproducao := TOrdProducao.create;
  try
    if cdscertificadoqualidadeCDPEDIDO.AsString <> ordproducao.getCdpedido(Sender.AsString) then
    begin
      MessageDlg('Ordem de Produção não pertence ao Pedido selecionado.', mtinformation, [mbok], 0);
      sender.FocusControl;
      Abort;
    end;
  finally
    ordproducao.Free;
  end;
end;

procedure Tfrmcorridaquimica.cdscertificadoordproducaoNewRecord(DataSet: TDataSet);
begin
  cdscertificadoordproducaoCDCERTIFICADOORDPRODUCAO.AsString := GerarCodigo(_certificado+_ordproducao);
end;

procedure Tfrmcorridaquimica.actabrirpedidoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdscertificadoqualidade);
end;

procedure Tfrmcorridaquimica.cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _NUPEDIDO then
  begin
    actabrirpedido.onExecute(actabrirpedido);
  end;
end;

procedure Tfrmcorridaquimica.actabrirclienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdscertificadoqualidade);
end;

procedure Tfrmcorridaquimica.grdcertificadoordproducaoDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  actabrirordproducao.onExecute(actabrirordproducao)
end;

procedure Tfrmcorridaquimica.actabrirordproducaoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdscertificadoordproducao);
end;

procedure Tfrmcorridaquimica.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

end.
