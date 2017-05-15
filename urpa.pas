unit urpa;

interface

uses
  System.Actions, System.UITypes,
  forms, Mask, ComCtrls, ToolWin, Controls, ExtCtrls, Buttons, dialogs, sysutils,
  graphics, windows, Menus, Classes, ActnList, StdCtrls, Math,
  DB, DBClient, Provider, Grids, DBCtrls, SqlExpr,
  uregistro, ustrings, uconstantes, unumero, urotinas, uexportarexcel,
  uProgressBar, udatahora,
  classeRegistro, classerpa, classeretornasql, classeempresa,
  classequery, classeconsiste, classeaplicacao, classegerar, classeusuario,
  classeregistrainformacao, classeform, classetransportadora, classeexecutasql,
  cxLookAndFeelPainters, cxControls, cxContainer, cxEdit, cxGroupBox, dxBar,
  cxClasses, cxGraphics, cxLookAndFeels, cxLabel, cxPC, FMTBcd, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxButtonEdit, cxCalc, cxCurrencyEdit, cxPCdxBarPopupMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxNavigator;

type
  TfrmRPA = class(TForm)
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
    actultimo: TAction;
    actabrirtransportadora: TAction;
    actbaixarpa: TAction;
    actabrirautpagto: TAction;
    actabrircte: TAction;
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
    dxBarLargeButton1: TdxBarLargeButton;
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label21: TLabel;
    lbltransportadora: TLabel;
    pnl: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    Label11: TLabel;
    Label17: TLabel;
    Label4: TLabel;
    sds: TSQLDataSet;
    sdsdetail: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsdetail: TClientDataSet;
    dts: TDataSource;
    dts1: TDataSource;
    dtsdetail: TDataSource;
    sdsCDRPA: TIntegerField;
    sdsCDSTRPA: TIntegerField;
    sdsCDTPRPA: TIntegerField;
    sdsCDREPRESENTANTE: TIntegerField;
    sdsCDPAGTOCOMISSAO: TIntegerField;
    sdsVLFRETE: TFMTBCDField;
    sdsDTEMISSAO: TDateField;
    sdsVLINSS: TFMTBCDField;
    sdsVLSESTSENAT: TFMTBCDField;
    sdsVLSALDO: TFMTBCDField;
    sdsVLBASEIRRF: TFMTBCDField;
    sdsVLIRRF: TFMTBCDField;
    sdsVLFRETETON: TFMTBCDField;
    sdsPSLIQUIDO: TFloatField;
    sdsVLPEDAGIO: TFMTBCDField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    cdsCDRPA: TIntegerField;
    cdsCDSTRPA: TIntegerField;
    cdsCDTPRPA: TIntegerField;
    cdsCDREPRESENTANTE: TIntegerField;
    cdsCDPAGTOCOMISSAO: TIntegerField;
    cdsVLFRETE: TFMTBCDField;
    cdsDTEMISSAO: TDateField;
    cdsVLINSS: TFMTBCDField;
    cdsVLSESTSENAT: TFMTBCDField;
    cdsVLSALDO: TFMTBCDField;
    cdsVLBASEIRRF: TFMTBCDField;
    cdsVLIRRF: TFMTBCDField;
    cdsVLFRETETON: TFMTBCDField;
    cdsPSLIQUIDO: TFloatField;
    cdsVLPEDAGIO: TFMTBCDField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    edtdtemissao: TcxDBDateEdit;
    cbxcdtprpa: TcxDBLookupComboBox;
    cbxcdstrpa: TcxDBLookupComboBox;
    edtcdtransportadora: TcxDBButtonEdit;
    txtnmtransportadora: TDBText;
    edtvlfrete: TcxDBCalcEdit;
    edtpsliquido: TcxDBCalcEdit;
    edtvlfreteton: TcxDBCalcEdit;
    sdsdetailCDRPA: TIntegerField;
    sdsdetailVLFRETE: TFMTBCDField;
    sdsdetailPSLIQUIDO: TFloatField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    sdsdetailCDITRPA: TIntegerField;
    cdssdsdetail: TDataSetField;
    sdsNMTRANSPORTADORA: TStringField;
    cdsNMTRANSPORTADORA: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cdsdetailCDRPA: TIntegerField;
    cdsdetailVLFRETE: TFMTBCDField;
    cdsdetailPSLIQUIDO: TFloatField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailCDITRPA: TIntegerField;
    edtcodigo: TcxTextEdit;
    sdsdetailCDCTE: TIntegerField;
    cdsdetailCDCTE: TIntegerField;
    actgerarautpagto: TAction;
    sdsCDAUTPAGTO: TIntegerField;
    cdsCDAUTPAGTO: TIntegerField;
    lblautpagto: TLabel;
    txtcdautpagto: TDBText;
    Label28: TLabel;
    edtvlinss: TcxDBCalcEdit;
    Label29: TLabel;
    edtvlsestsenat: TcxDBCalcEdit;
    Label30: TLabel;
    edtvlirrf: TcxDBCalcEdit;
    Label3: TLabel;
    edtvlpedagio: TcxDBCalcEdit;
    edtvlsaldo: TcxDBCalcEdit;
    Label33: TLabel;
    Bevel7: TBevel;
    dxBarLargeButton2: TdxBarLargeButton;
    actopcoes: TAction;
    pumopcoes: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    actremoverautpagto: TAction;
    dxBarButton2: TdxBarButton;
    grddetail: TcxGrid;
    grddetailDBTableView1: TcxGridDBTableView;
    grddetailDBTableView1CDCTE: TcxGridDBColumn;
    grddetailDBTableView1VLFRETE: TcxGridDBColumn;
    grddetailDBTableView1PSLIQUIDO: TcxGridDBColumn;
    grddetailLevel1: TcxGridLevel;
    edtvladiantamento: TcxDBCalcEdit;
    Label6: TLabel;
    sdsVLADIANTAMENTO: TFMTBCDField;
    cdsVLADIANTAMENTO: TFMTBCDField;
    sdsdetailVLPEDAGIO: TFMTBCDField;
    sdsdetailVLADIANTAMENTO: TFMTBCDField;
    cdsdetailVLPEDAGIO: TFMTBCDField;
    cdsdetailVLADIANTAMENTO: TFMTBCDField;
    grddetailDBTableView1VLPEDAGIO: TcxGridDBColumn;
    grddetailDBTableView1VLADIANTAMENTO: TcxGridDBColumn;
    sdsCDVEICULO: TIntegerField;
    cdsCDVEICULO: TIntegerField;
    sdsNUPLACA: TStringField;
    cdsNUPLACA: TStringField;
    actabrirveiculo: TAction;
    gbxproprietario: TcxGroupBox;
    lblnuplaca: TLabel;
    txtnuplaca: TDBText;
    txtnmproprietario: TDBText;
    edtcdproprietario: TcxDBButtonEdit;
    Label7: TLabel;
    actabrirproprietario: TAction;
    sdsNMPROPRIETARIO: TStringField;
    cdsNMPROPRIETARIO: TStringField;
    sdsCDEMPRESA: TLargeintField;
    sdsCDTRANSPORTADORA: TLargeintField;
    sdsCDPROPRIETARIO: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDTRANSPORTADORA: TLargeintField;
    cdsCDPROPRIETARIO: TLargeintField;
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
    procedure actultimoExecute(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actabrirtransportadoraExecute(Sender: TObject);
    procedure actbaixarpaExecute(Sender: TObject);
    procedure actabrirautpagtoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsCDTPRPAValidate(Sender: TField);
    procedure edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure txtnmtransportadoraDblClick(Sender: TObject);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure cdsdetailAfterPost(DataSet: TDataSet);
    procedure cdsdetailBeforePost(DataSet: TDataSet);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure cdsCDTRANSPORTADORAValidate(Sender: TField);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure grddetailDBTableView1CDCTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsdetailCDCTEValidate(Sender: TField);
    procedure actabrircteExecute(Sender: TObject);
    procedure grddetailDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actgerarautpagtoExecute(Sender: TObject);
    procedure txtcdautpagtoDblClick(Sender: TObject);
    procedure actopcoesExecute(Sender: TObject);
    procedure actremoverautpagtoExecute(Sender: TObject);
    procedure grddetailDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actImprimirExecute(Sender: TObject);
    procedure cdsCDVEICULOValidate(Sender: TField);
    procedure actabrirveiculoExecute(Sender: TObject);
    procedure txtnuplacaDblClick(Sender: TObject);
    procedure cdsdetailAfterDelete(DataSet: TDataSet);
    procedure edtcdproprietarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdproprietarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure txtnmproprietarioDblClick(Sender: TObject);
    procedure actabrirproprietarioExecute(Sender: TObject);
    procedure cdsCDPROPRIETARIOValidate(Sender: TField);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure sdsCDTRANSPORTADORAValidate(Sender: TField);
    procedure sdsCDVEICULOValidate(Sender: TField);
  private      { Private declarations }
    registro : TRegistro;
    rpa : trpa;
    transportadora : TTransportadora;
    tbl : string;
    procedure setrecord(cdtprpa:string);
    procedure GravarTotais;
    function  get_valor_item(nmcampo:string):currency;
    procedure set_calculo_pessoa_fisica;
    function  get_valor_frete_tonelada:currency;
    procedure check_tipo_rpa_obrigatorio;
    procedure check_transportadora_obrigatorio;
    procedure set_peso_liquido_Frete(cdcte:string);
    procedure set_veiculo(cdcte:string);
    function CTE_repetido_na_tela: Boolean;
  public  { Public declarations }
    function Abrir(codigo:integer):boolean;
    function Novo(cdembarque:string):Boolean;
  end;

var
  frmRPA: TfrmRPA;

implementation

uses uDtmMain,
  uMain,
  ulocalizar,
  ubaixa,
  ulocalizartransportadora,
  ulocalizarcte, uimprimirrelatoriopadrao;

{$R *.DFM}

const
  exibe    = 'RPA';
  artigoI  = 'a';

function TfrmRPA.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmRPA.actAbrirExecute(Sender: TObject);
begin
  registro.Abrir;
end;

procedure TfrmRPA.actNovoExecute(Sender: TObject);
begin
  registro.Novo(sender);
end;

procedure TfrmRPA.actSalvarExecute(Sender: TObject);
begin
  gravartotais;
  registro.Salvar;
end;

procedure TfrmRPA.actExcluirExecute(Sender: TObject);
begin
  registro.Excluir;
end;

procedure TfrmRPA.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmRPA.actCancelarExecute(Sender: TObject);
begin
  registro.Cancelar;
end;

procedure TfrmRPA.actEditarExecute(Sender: TObject);
begin
  registro.Editar;
end;

procedure TfrmRPA.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;;
end;

procedure TfrmRPA.actAnteriorExecute(Sender: TObject);
begin
  registro.Anterior;
end;

procedure TfrmRPA.actProximoExecute(Sender: TObject);
begin
  registro.Proximo;
end;

procedure TfrmRPA.actultimoExecute(Sender: TObject);
begin
  registro.Ultimo;
end;

procedure TfrmRPA.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure TfrmRPA.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmRPA.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmRPA.sdsCDTRANSPORTADORAValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    Exit;
  end;
  if not transportadora.Select(sender.AsLargeInt) then
  begin
    MessageDlg('Transportadora '+sender.asstring+' inexistente.', mtInformation, [mbOK], 0);
    Abort;
  end;
  Sender.DataSet.FieldByName(_cdveiculo).AsInteger := transportadora.cdveiculo;
end;

procedure TfrmRPA.sdsCDVEICULOValidate(Sender: TField);
var
  veiculo : TVeiculo;
begin
  if Sender.AsString = '' then
  begin
    Sender.DataSet.FieldByName(_cdproprietario).Clear;
    Sender.DataSet.FieldByName(_nuplaca).Clear;
  end;
  veiculo := tveiculo.Create;
  try
    if not veiculo.Select(sender.AsInteger) then
    begin
      MessageDlg('Veículo '+sender.asstring+' inexistente.', mtInformation, [mbOK], 0);
      Abort;
    end;
    sender.DataSet.FieldByName(_cdproprietario).AsLargeInt := veiculo.cdtransportadora;
    sender.DataSet.FieldByName(_nuplaca).AsString := veiculo.nuplaca;
  finally
    freeandnil(veiculo);
  end;
end;

procedure TFrmRPA.setrecord(cdtprpa:string);
begin
  rpa.setrecord(cdtprpa);
end;

procedure TfrmRPA.GravarTotais;
begin
  cdsPSLIQUIDO.Asfloat         := get_valor_item(_psliquido);
  cdsVLFRETE.Ascurrency        := get_valor_item(_vlfrete);
  cdsVLADIANTAMENTO.Ascurrency := get_valor_item(_vladiantamento);
  cdsVLPEDAGIO.Ascurrency      := get_valor_item(_vlpedagio);
  cdsVLFRETETON.Ascurrency     := get_valor_frete_tonelada;
  set_calculo_pessoa_fisica;
  cdsVLSALDO.Ascurrency := cdsVLFRETE.AsCurrency - cdsVLINSS.Ascurrency - cdsVLSESTSENAT.Ascurrency - cdsvladiantamento.ascurrency - cdsVLIRRF.Ascurrency;
  if empresa.faturamento.cte.bosomarpedagiosaldo then
  begin
    cdsVLSALDO.Ascurrency := cdsVLSALDO.Ascurrency + edtvlpedagio.Value;
  end;
end;

function TfrmRPA.get_valor_item(nmcampo:string):currency;
var
  recno : integer;
begin
  result := 0;
  if cdsdetail.RecordCount = 0 then
  begin
    exit;
  end;
  cdsdetail.DisableControls;
  try
    cdsdetail.First;
    recno  := 0;
    repeat
      recno  := recno  + 1;
      result := result + cdsdetail.fieldbyname(nmcampo).AsCurrency;
      if RecNo < cdsdetail.RecordCount then
      begin
        cdsdetail.Next;
      end;
    until RecNo = cdsdetail.RecordCount;
  finally
    cdsdetail.EnableControls;
  end;
end;

function TfrmRPA.get_valor_frete_tonelada:currency;
begin
  result := 0;
  if cdsPSLIQUIDO.Asfloat <> 0 then
  begin
    cdsVLFRETETON.Ascurrency := cdsVLFRETE.Ascurrency / cdsPSLIQUIDO.Asfloat;
  end;
end;

procedure TfrmRPA.set_calculo_pessoa_fisica;
var
  vlbaseirrf : currency;
begin
  if transportadora.getTppessoaProprietarioVeiculo(cds.FieldByName(_CDTRANSPORTADORA).Asstring) <> _F then
  begin
    exit;
  end;
  cdsVLINSS.Ascurrency      := rpa.ValorINSS(cds.FieldByName(_CDPROPRIETARIO).Asstring, cdsVLFRETE.Ascurrency, cdsDTEMISSAO.AsDateTime, cdsCDRPA.Asstring, _rpa);
  cdsVLSESTSENAT.Ascurrency := rpa.ValorSestSenat(cdsVLFRETE.Ascurrency, cdsDTEMISSAO.AsDateTime);
  cdsVLIRRF.AsCurrency      := rpa.ValorIRRF(cds.FieldByName(_CDPROPRIETARIO).Asstring, cdsVLFRETE.Ascurrency, vlbaseirrf, cdsDTEMISSAO.AsDateTime, cdsCDRPA.Asstring, _rpa);
  cdsVLBASEIRRF.Ascurrency  := vlbaseirrf;
end;

procedure TfrmRPA.set_peso_liquido_Frete(cdcte: string);
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create;
  try
    q.q.open('select sum(psliquido) from cteremetentenota where cdempresa='+cds.fieldbyname(_cdempresa).asstring+' and cdcte='+cdcte);
    cdsdetailPSLIQUIDO.AsFloat         := q.q.fields[0].AsFloat;
    q.q.close;
    q.q.open('select sum(vlfrete),sum(vlpedagio),sum(vladiantamento) from ctetransportadora where cdempresa='+cds.fieldbyname(_cdempresa).asstring+' and cdcte='+cdcte);
    cdsdetailVLFRETE.ascurrency        := q.q.fields[0].ascurrency;
    cdsdetailVLPEDAGIO.ascurrency      := q.q.fields[1].ascurrency;
    cdsdetailVLADIANTAMENTO.ascurrency := q.q.fields[2].ascurrency;
  finally
    FreeAndNil(q);
  end;
end;

procedure TfrmRPA.set_veiculo(cdcte: string);
var
  cdveiculo : string;
begin
  cdveiculo := RetornaSQLString('select cdveiculo from ctetransportadora where cdempresa='+empresa.cdempresa.tostring+' and cdcte='+cdcte);
  if cdsCDVEICULO.IsNull then
  begin
    cdsCDVEICULO.asstring := cdveiculo;
  end
  else if cdveiculo <> cdscdveiculo.AsString then
  begin
    MessageDlg('O cte '+cdcte+' não pertence ao mesmo veículo da RPA.', mtInformation, [mbOK], 0);
    Abort;
  end;
end;

procedure TfrmRPA.FormShow(Sender: TObject);
begin
  rpa            := trpa.create;
  transportadora := TTransportadora.create;
  pnl.caption    := exibe;
  edtCodigo.SetFocus;
end;

procedure TfrmRPA.FormCreate(Sender: TObject);
begin
  tbl                              := _rpa;
  cbxcdtprpa.Properties.ListSource := abrir_tabela(_tprpa);
  cbxcdstrpa.Properties.ListSource := abrir_tabela(_st+_rpa);
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
end;

procedure TfrmRPA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRPA.FormDestroy(Sender: TObject);
begin
  freeandnil(registro);
  rpa.Destroy;
  transportadora.destroy;
end;

procedure TfrmRPA.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmRPA.actabrirproprietarioExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmRPA.actabrirtransportadoraExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmRPA.actabrirveiculoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmRPA.actbaixarpaExecute(Sender: TObject);
begin
  if BaixarDocumento(_autpagto, cdsCDAUTPAGTO.AsInteger) then
  begin
    abrir(cdsCDrpa.asinteger);
  end;
end;

procedure TfrmRPA.actabrirautpagtoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmRPA.cdsCDPROPRIETARIOValidate(Sender: TField);
var
  transportadora : TTransportadora;
begin
  if sender.IsNull then
  begin
    cdsNMPROPRIETARIO.Clear;
  end;
  transportadora := ttransportadora.Create;
  try
    if not transportadora.Select(Sender.AsLargeInt) then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.AsString, maiuscula(_transportadora)]), mterror, [mbok], 0);
      Sender.FocusControl;
      Abort;
    end;
    if (cdsdetail.RecordCount > 0) and (sender.AsString <> RetornaSQLString('select cdproprietario from ctetransportadora where cdempresa='+cdsdetail.FieldByName(_cdempresa).AsString+' and cdcte='+cdsdetailCDCTE.AsString)) then
    begin
      messagedlg('Existe(m) CTE(s) que não pertence a este proprietário.', mtError, [mbok], 0);
      Sender.FocusControl;
      Abort;
    end;
    cdsNMPROPRIETARIO.AsString := transportadora.nmtransportadora;
  finally
    FreeAndNil(transportadora);
  end;
end;

procedure TfrmRPA.cdsCDTPRPAValidate(Sender: TField);
begin
  setrecord(Sender.AsString);
end;

procedure TfrmRPA.edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtcdtransportadoraPropertiesButtonClick(self, cds);
end;

procedure TfrmRPA.edtcdproprietarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdproprietarioPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure TfrmRPA.edtcdproprietarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd: integer;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := LocalizarTransportadora;
  if cd <> 0 then
  begin
    cds.FieldByName(_CDPROPRIETARIO).AsInteger := cd;
  end;
end;

procedure TfrmRPA.edtcdtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdtransportadoraPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure TfrmRPA.txtnmproprietarioDblClick(Sender: TObject);
begin
  actabrirproprietario.onexecute(actabrirproprietario);
end;

procedure TfrmRPA.txtnmtransportadoraDblClick(Sender: TObject);
begin
  actabrirtransportadora.onexecute(actabrirtransportadora);
end;

procedure TfrmRPA.txtnuplacaDblClick(Sender: TObject);
begin
  actabrirveiculo.onexecute(actabrirveiculo);
end;

procedure TfrmRPA.cdsBeforePost(DataSet: TDataSet);
begin
  check_tipo_rpa_obrigatorio;
  check_transportadora_obrigatorio;
  registro.set_update(cds);
end;

procedure TfrmRPA.cdsAfterScroll(DataSet: TDataSet);
begin
  setrecord(dataset.fieldbyname(_cdtprpa).Asstring);
  actbaixarpa.Enabled        := cdsCDSTRPA.AsString = _2;
  actgerarautpagto.Enabled   := (cdsCDSTRPA.AsString = _1) and (cdsVLSALDO.ascurrency > 0);
  actremoverautpagto.Enabled := cdsCDSTRPA.AsString = _2;
end;

procedure TfrmRPA.cdsdetailAfterDelete(DataSet: TDataSet);
begin
  GravarTotais;
  if cdsdetail.recordcount = 0 then
  begin
    cdsCDVEICULO.Clear;
  end;
end;

procedure TfrmRPA.cdsdetailAfterPost(DataSet: TDataSet);
begin
  GravarTotais;
end;

procedure TfrmRPA.cdsdetailBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsdetail);
end;

procedure TfrmRPA.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure TfrmRPA.cdsdetailNewRecord(DataSet: TDataSet);
begin
  cdsdetailCDITRPA.AsString   := GerarCodigo(_it+_rpa);
  cdsdetailVLFRETE.AsCurrency := 0;
  cdsdetailPSLIQUIDO.AsFloat  := 0;
end;

procedure TfrmRPA.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmRPA.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmRPA.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmRPA.cdsCDTRANSPORTADORAValidate(Sender: TField);
var
  transportadora : TTransportadora;
begin
  if sender.IsNull then
  begin
    cdsNMTRANSPORTADORA.Clear;
    Exit;
  end;
  transportadora := TTransportadora.Create;
  try
    if not transportadora.Select(sender.AsLargeInt) then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.AsString, maiuscula(_transportadora)]), mterror, [mbok], 0);
      Sender.FocusControl;
      Abort;
    end;
    if (cdsdetail.RecordCount > 0) and
       (sender.AsString <> RetornaSQLString('select cdtransportadora from ctetransportadora where cdempresa='+cdsdetail.FieldByName(_cdempresa).AsString+' and cdcte='+cdsdetailCDCTE.AsString)) then
    begin
      messagedlg('Existe(m) CTE(s) que não pertence a esta transportadora.', mtError, [mbok], 0);
      Sender.FocusControl;
      Abort;
    end;
    cdsNMTRANSPORTADORA.AsString := transportadora.nmtransportadora;
    if transportadora.cdveiculo <> 0 then
    begin
      cdsCDVEICULO.AsInteger       := transportadora.cdveiculo;
    end;
  finally
    FreeAndNil(transportadora);
  end;
end;

procedure TfrmRPA.cdsCDVEICULOValidate(Sender: TField);
begin
  if sender.isnull then
  begin
    cdsNUPLACA.Clear;
    cds.FieldByName(_CDPROPRIETARIO).Clear;
  end
  else
  begin
    cdsNUPLACA.asstring                       := NomedoCodigo(_veiculo, sender.AsString, _nuplaca);
    cds.FieldByName(_CDPROPRIETARIO).AsString := nomedocodigo(_veiculo, sender.AsString, _cdtransportadora);
  end;
end;

procedure TfrmRPA.cdsNewRecord(DataSet: TDataSet);
begin
  cdsCDTPrpa.asinteger      := registro.get_tipo_tabela_minumo;
  registro.NewRecord;
  cdsDTEMISSAO.AsDateTime   := DtBanco;
  cdsCDSTrpa.AsInteger       := qregistro.Codigo_status_novo(_rpa);
  cdsVLFRETE.AsCurrency     := 0;
  cdsVLINSS.AsCurrency      := 0;
  cdsVLSESTSENAT.AsCurrency := 0;
  cdsVLSALDO.AsCurrency     := 0;
  cdsVLBASEIRRF.AsCurrency  := 0;
  cdsVLIRRF.AsCurrency      := 0;
  cdsVLFRETETON.AsCurrency  := 0;
  cdsVLPEDAGIO.AsCurrency   := 0;
  cdsPSLIQUIDO.AsFloat      := 0;
  cdsVLADIANTAMENTO.AsCurrency := 0;
  cdsDTEMISSAO.FocusControl;
end;

procedure TfrmRPA.check_tipo_rpa_obrigatorio;
begin
  if cdsCDTPRPA.AsString = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Tipo]), mtinformation, [mbok], 0);
    cdsCDTPRPA.FocusControl;
    Abort;
  end;
end;

procedure TfrmRPA.check_transportadora_obrigatorio;
begin
  if cds.FieldByName(_cdtransportadora).AsString = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Codigo+' '+_da+' '+_transportadora]), mtinformation, [mbok], 0);
    cds.FieldByName(_cdtransportadora).FocusControl;
    Abort;
  end;
end;

procedure TfrmRPA.grddetailDBTableView1CDCTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd: integer;
begin
  cd := Localizarcte(edtcdtransportadora.text);
  if cd = 0 then
  begin
    Exit;
  end;
  if cdsdetail.State = dsbrowse then
  begin
    cdsdetail.Edit;
  end;
  cdsdetailCDCTE.AsInteger := cd;
end;

function TfrmRPA.CTE_repetido_na_tela:Boolean;
var
  c : TClientDataSet;
begin
  result := false;
  if cdsdetail.RecordCount = 0 then
  begin
    Exit;
  end;
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cdsdetail, false);
    c.First;
    while not c.Eof do
    begin
      if c.FieldByName(_cdcte).AsString = cdsdetailcdcte.AsString then
      begin
        result := True;
        Break;
      end;
      c.Next;
    end;
  finally
    c.Free;
  end;
end;

procedure TfrmRPA.cdsdetailCDCTEValidate(Sender: TField);
begin
  if not CodigoExiste(_cte, sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.AsString, maiuscula(_cte)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  if cte_repetido_na_tela then
  begin
    MessageDlg('CTE repetido.', mtInformation, [mbOK], 0);
    sender.FocusControl;
    Abort;
  end;
  if cds.FieldByName(_cdtransportadora).AsString <> RetornaSQLString('select cdtransportadora from ctetransportadora where cdempresa='+cdsdetail.FieldByName(_cdempresa).AsString+' and cdcte='+sender.AsString) then
  begin
    messagedlg('CTE '+sender.AsString+' não pertence a Transportadora da RPA!', mtError, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  if RetornaSQLInteger('select count(*) from itrpa where cdempresa='+cdsdetail.FieldByName(_cdempresa).AsString+' and cdcte='+sender.AsString+' and cdrpa<>'+cdsCDRPA.AsString) > 0 then
  begin
    messagedlg('CTE '+sender.AsString+' já faz parte de outro RPA!', mtError, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  set_peso_liquido_Frete(sender.asstring);
  set_veiculo(sender.AsString);
end;

procedure TfrmRPA.actabrircteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsdetail);
end;

procedure TfrmRPA.grddetailDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdcte then
  begin
    actabrircteExecute(actabrircte)
  end;
end;

procedure TfrmRPA.actgerarautpagtoExecute(Sender: TObject);
begin
  if rpa.gerar_autpagto(cds) then
  begin
    MessageDlg('Contas a Pagar gerado!', mtInformation, [mbok], 0);
    Abrir(cdsCDRPA.asinteger);
  end;
end;

procedure TfrmRPA.actImprimirExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(644, cdsCDRPA.AsString);
end;

procedure TfrmRPA.txtcdautpagtoDblClick(Sender: TObject);
begin
  actabrirautpagto.onexecute(actabrirautpagto);
end;

procedure TfrmRPA.actopcoesExecute(Sender: TObject);
begin
//
end;

procedure TfrmRPA.actremoverautpagtoExecute(Sender: TObject);
begin
  if rpa.remover_autpagto(cdsCDRPA.AsString, cdsCDAUTPAGTO.AsString) then
  begin
    MessageDlg('Contas a Pagar removido!', mtInformation, [mbok], 0);
    Abrir(cdsCDRPA.asinteger);
  end;
end;

procedure TfrmRPA.grddetailDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

function TfrmRPA.Novo(cdembarque: string): Boolean;
var
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    actNovoExecute(actnovo);
    q.q.Open('select e.*,i.* '+
             'from embarque e '+
             'left join itembarque i on i.cdempresa=e.cdempresa and i.cdembarque=e.cdembarque '+
             'where e.cdempresa='+empresa.cdempresa.tostring+' and e.cdembarque='+cdembarque);
    cds.FieldByName(_cdtransportadora).asstring := q.q.fieldbyname(_cdtransportadora).AsString;
    cds.FieldByName(_cdveiculo).asstring        := qregistro.StringdoCodigo(_transportadora, q.q.fieldbyname(_cdtransportadora).AsLargeInt, _cdveiculo);
    while not q.q.Eof do
    begin
      cdsdetail.Insert;
      cdsdetail.FieldByName(_cdcte).AsString := q.q.fieldbyname(_cdcte).AsString;
      cdsdetail.Post;
      q.q.Next;
    end;
    actSalvarExecute(actsalvar);
    result := ExecutaSQL('update embarque set cdrpa='+cdscdrpa.asstring+' where cdempresa='+empresa.cdempresa.tostring+' and cdembarque='+cdembarque);
  finally
    FreeAndNil(q);
  end;
end;

end.
