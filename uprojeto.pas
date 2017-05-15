unit uprojeto;

interface

uses
  System.Actions, System.UITypes,
  forms, Windows, dialogs, sysutils, Mask, Classes, ExtCtrls, Buttons, StdCtrls,
  ComCtrls, Controls, Graphics,
  sqlexpr, DB,
  uexportarexcel, ustrings, uregistro, uconstantes, udatahora, ulocalizarcliente,
  classeusuario, classeregistrainformacao, classegerar, classeform,
  classeaplicacao, classeempresa, classeretornasql, classeregistro,
  cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, Menus, cxButtons, cxLabel,
  cxCheckListBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxMemo, cxDBEdit, cxCalendar, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Provider, DBClient, cxCheckBox,
  cxGridBandedTableView, cxGridDBBandedTableView, DBCtrls, cxSpinEdit,
  cxTimeEdit, ActnList, dxBar, cxPCdxBarPopupMenu, cxBlobEdit, cxGroupBox,
  cxListView, cxNavigator, ufiltrarProjeto, classeexecutasql,
  dxBarBuiltInMenu, Data.FMTBcd;

type
  TfrmdlgProjeto = class(TForm)
    cds: TClientDataSet;
    dts: TDataSource;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    sdsCDSTPROJETO: TIntegerField;
    sdsCDTPPROJETO: TIntegerField;
    sdsCDITCONTCLIENTE: TIntegerField;
    sdsCDFUNCIONARIO: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsDTEMISSAO: TDateField;
    sdsHREMISSAO: TTimeField;
    sdsDTTERMINO: TDateField;
    sdsHRTERMINO: TTimeField;
    sdsDSOBSERVACAO: TBlobField;
    sdsHRDURACAO: TTimeField;
    sdsHRESTIMADA: TTimeField;
    sdsNMCLIENTE: TStringField;
    cdsCDSTPROJETO: TIntegerField;
    cdsCDTPPROJETO: TIntegerField;
    cdsCDITCONTCLIENTE: TIntegerField;
    cdsCDFUNCIONARIO: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsDTEMISSAO: TDateField;
    cdsHREMISSAO: TTimeField;
    cdsDTTERMINO: TDateField;
    cdsHRTERMINO: TTimeField;
    cdsDSOBSERVACAO: TBlobField;
    cdsHRDURACAO: TTimeField;
    cdsHRESTIMADA: TTimeField;
    cdsNMCLIENTE: TStringField;
    sdsitcontcliente: TSQLDataSet;
    dspitcontcliente: TDataSetProvider;
    cdsitcontcliente: TClientDataSet;
    dtsitcontcliente: TDataSource;
    sdsDSTAG: TStringField;
    cdsDSTAG: TStringField;
    sdsNUDIAS: TIntegerField;
    cdsNUDIAS: TIntegerField;
    sdsNUFONE1: TStringField;
    cdsNUFONE1: TStringField;
    cdsCDTPPROJETO1: TIntegerField;
    sdsCDTPPROJETO1: TIntegerField;
    sdsDTPREVISTA: TDateField;
    cdsDTPREVISTA: TDateField;
    sdsNMPROJETO: TStringField;
    cdsNMPROJETO: TStringField;
    sdsNUFONE2: TStringField;
    cdsNUFONE2: TStringField;
    sdsPREXECUCAO: TFloatField;
    cdsPREXECUCAO: TFloatField;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    act: TActionList;
    actok: TAction;
    actcancelar1: TAction;
    pgc: TcxPageControl;
    tbsprojeto: TcxTabSheet;
    tbsobservacao: TcxTabSheet;
    memdsobservacao: TcxDBMemo;
    memnmprojeto: TcxDBMemo;
    tbstarefa: TcxTabSheet;
    dtstarefa: TDataSource;
    cdstarefa: TClientDataSet;
    sdstarefa: TSQLDataSet;
    dts1: TDataSource;
    grdtarefa: TcxGrid;
    grdtarefaLevel1: TcxGridLevel;
    tbvtarefa: TcxGridDBTableView;
    sdsCDPRIORIDADE: TIntegerField;
    cdsCDPRIORIDADE: TIntegerField;
    sdsCDGRAUDIFICULDADE: TIntegerField;
    cdsCDGRAUDIFICULDADE: TIntegerField;
    tbsoutros: TcxTabSheet;
    lblfuncionario: TLabel;
    cbxcdfuncionario: TcxDBLookupComboBox;
    cdsCDPROJETO: TIntegerField;
    sdsCDPROJETO: TIntegerField;
    sdstarefaCDTAREFA: TIntegerField;
    sdstarefaCDSTTAREFA: TIntegerField;
    sdstarefaCDTPTAREFA: TIntegerField;
    sdstarefaCDITCONTCLIENTE: TIntegerField;
    sdstarefaCDFUNCIONARIO: TIntegerField;
    sdstarefaCDUSUARIOI: TIntegerField;
    sdstarefaCDUSUARIOA: TIntegerField;
    sdstarefaCDCOMPUTADORI: TIntegerField;
    sdstarefaCDCOMPUTADORA: TIntegerField;
    sdstarefaCDTPTAREFA1: TIntegerField;
    sdstarefaTSINCLUSAO: TSQLTimeStampField;
    sdstarefaTSALTERACAO: TSQLTimeStampField;
    sdstarefaDTEMISSAO: TDateField;
    sdstarefaHREMISSAO: TTimeField;
    sdstarefaDTTERMINO: TDateField;
    sdstarefaHRTERMINO: TTimeField;
    sdstarefaDSOBSERVACAO: TBlobField;
    sdstarefaHRDURACAO: TTimeField;
    sdstarefaHRESTIMADA: TTimeField;
    sdstarefaDSTAG: TStringField;
    sdstarefaNUDIAS: TIntegerField;
    sdstarefaDSSOLUCAO: TBlobField;
    sdstarefaDTPREVISTA: TDateField;
    sdstarefaNMTAREFA: TStringField;
    sdstarefaPREXECUCAO: TFloatField;
    sdstarefaCDPRIORIDADE: TIntegerField;
    sdstarefaCDGRAUDIFICULDADE: TIntegerField;
    sdstarefaCDPROJETO: TIntegerField;
    cdstarefaCDTAREFA: TIntegerField;
    cdstarefaCDSTTAREFA: TIntegerField;
    cdstarefaCDTPTAREFA: TIntegerField;
    cdstarefaCDITCONTCLIENTE: TIntegerField;
    cdstarefaCDFUNCIONARIO: TIntegerField;
    cdstarefaCDUSUARIOI: TIntegerField;
    cdstarefaCDUSUARIOA: TIntegerField;
    cdstarefaCDCOMPUTADORI: TIntegerField;
    cdstarefaCDCOMPUTADORA: TIntegerField;
    cdstarefaCDTPTAREFA1: TIntegerField;
    cdstarefaTSINCLUSAO: TSQLTimeStampField;
    cdstarefaTSALTERACAO: TSQLTimeStampField;
    cdstarefaDTEMISSAO: TDateField;
    cdstarefaHREMISSAO: TTimeField;
    cdstarefaDTTERMINO: TDateField;
    cdstarefaHRTERMINO: TTimeField;
    cdstarefaDSOBSERVACAO: TBlobField;
    cdstarefaHRDURACAO: TTimeField;
    cdstarefaHRESTIMADA: TTimeField;
    cdstarefaDSTAG: TStringField;
    cdstarefaNUDIAS: TIntegerField;
    cdstarefaDSSOLUCAO: TBlobField;
    cdstarefaDTPREVISTA: TDateField;
    cdstarefaNMTAREFA: TStringField;
    cdstarefaPREXECUCAO: TFloatField;
    cdstarefaCDPRIORIDADE: TIntegerField;
    cdstarefaCDGRAUDIFICULDADE: TIntegerField;
    cdstarefaCDPROJETO: TIntegerField;
    tbvtarefaCDTAREFA: TcxGridDBColumn;
    tbvtarefaCDSTTAREFA: TcxGridDBColumn;
    tbvtarefaDTEMISSAO: TcxGridDBColumn;
    tbvtarefaDTTERMINO: TcxGridDBColumn;
    tbvtarefaNMTAREFA: TcxGridDBColumn;
    sdstarefaNUCOR: TIntegerField;
    cdstarefaNUCOR: TIntegerField;
    tbvtarefaNUCOR: TcxGridDBColumn;
    Panel1: TPanel;
    btnok: TcxButton;
    btncancelar: TcxButton;
    Panel2: TPanel;
    lblcdcliente: TLabel;
    lblstprojeto: TLabel;
    cbxcdstprojeto: TcxDBLookupComboBox;
    cbxcdcliente: TcxDBLookupComboBox;
    btn2: TcxButton;
    lbl3: TLabel;
    txtnufone1: TDBText;
    txtNUFONE2: TDBText;
    cbxcdtpprojeto: TcxDBLookupComboBox;
    btn4: TcxButton;
    lblcdform: TLabel;
    lblvendedor: TLabel;
    cbxcditcontcliente: TcxDBLookupComboBox;
    cbxcdtpprojeto1: TcxDBLookupComboBox;
    btn5: TcxButton;
    btn1: TcxButton;
    lblprioridade: TLabel;
    cbxcdprioridade: TcxDBLookupComboBox;
    lblgraudificuldade: TLabel;
    cbxcdgraudificuldade: TcxDBLookupComboBox;
    lblnuversao: TLabel;
    edtdstag: TcxDBTextEdit;
    sdstarefaNMCLIENTE: TStringField;
    sdstarefaNMITCONTCLIENTE: TStringField;
    cdstarefaNMCLIENTE: TStringField;
    cdstarefaNMITCONTCLIENTE: TStringField;
    tbvtarefaNMCLIENTE: TcxGridDBColumn;
    tbvtarefaNMITCONTCLIENTE: TcxGridDBColumn;
    dxBarDockControl2: TdxBarDockControl;
    dxBarManager1Bar1: TdxBar;
    actalturaautomatica: TAction;
    btnalturaautomatica: TdxBarButton;
    actabrirtarefa: TAction;
    sdstarefaNMTPTAREFA: TStringField;
    sdstarefaNMTPTAREFA1: TStringField;
    cdstarefaNMTPTAREFA: TStringField;
    cdstarefaNMTPTAREFA1: TStringField;
    tbvtarefaNMTPTAREFA: TcxGridDBColumn;
    tbvtarefaNMTPTAREFA1: TcxGridDBColumn;
    sdstarefaNMFUNCIONARIO: TStringField;
    cdstarefaNMFUNCIONARIO: TStringField;
    tbvtarefaNMFUNCIONARIO: TcxGridDBColumn;
    dxBarButton3: TdxBarButton;
    actmoverpara: TAction;
    dsptarefa: TDataSetProvider;
    actremovertarefa: TAction;
    dxBarButton4: TdxBarButton;
    tbvtarefaDTPREVISTA: TcxGridDBColumn;
    lbl1: TLabel;
    edtdtemissao: TcxDBDateEdit;
    lblhremissao: TLabel;
    edthremissao: TcxDBTimeEdit;
    lblhrduracao: TLabel;
    edthrduracao: TcxDBTimeEdit;
    lbltermino: TLabel;
    edtdttermino: TcxDBDateEdit;
    lblhrtermino: TLabel;
    edthrtermino: TcxDBTimeEdit;
    lbl2: TLabel;
    edtprexecucao: TcxDBSpinEdit;
    lbldtprevista: TLabel;
    edtdtprevista: TcxDBDateEdit;
    lblhrestimada: TLabel;
    edthrestimada: TcxDBTimeEdit;
    tbvtarefaNMPRIORIDADE: TcxGridDBColumn;
    sdstarefaNMPRIORIDADE: TStringField;
    cdstarefaNMPRIORIDADE: TStringField;
    actarquivo: TAction;
    btnarquivo: TcxButton;
    sdsCDEMPRESA: TLargeintField;
    sdsCDCLIENTE: TLargeintField;
    sdstarefaCDEMPRESA: TLargeintField;
    sdstarefaCDCLIENTE: TLargeintField;
    sdstarefaCDTPMOTIVOTAREFA: TIntegerField;
    sdstarefaQTDURACAO: TFloatField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDCLIENTE: TLargeintField;
    cdstarefaCDEMPRESA: TLargeintField;
    cdstarefaCDCLIENTE: TLargeintField;
    cdstarefaCDTPMOTIVOTAREFA: TIntegerField;
    cdstarefaQTDURACAO: TFloatField;
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsCDCLIENTEValidate(Sender: TField);
    procedure btn1Click(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn2Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdclienteEnter(Sender: TObject);
    procedure cbxcdtpprojetoEnter(Sender: TObject);
    procedure cbxcdtpprojeto1Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure actokExecute(Sender: TObject);
    procedure actcancelar1Execute(Sender: TObject);
    procedure cbxcdfuncionarioEnter(Sender: TObject);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure tbvtarefaCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tbvtarefaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actalturaautomaticaExecute(Sender: TObject);
    procedure actabrirtarefaExecute(Sender: TObject);
    procedure tbvtarefaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actmoverparaExecute(Sender: TObject);
    procedure cdstarefaAfterRefresh(DataSet: TDataSet);
    procedure actremovertarefaExecute(Sender: TObject);
    procedure actarquivoExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private   { Private declarations }
    registro        : TRegistro;
    dtemissao       : TDate;
    hrinicio, hrfim : TTime;
    pgctarefa: TcxPageControl;
    procedure atualizarContatocliente;
    procedure mover_tarefas_para_projeto(cdprojeto:string);
    procedure AbrirTabelas;
  public    { Public declarations }
  end;

function ShowProjeto(codigo: integer; pgctarefa: TcxPageControl):boolean;overload;

var
  frmdlgProjeto: TfrmdlgProjeto;

implementation

uses uMain,
  uDtmMain,
  ulocalizarFuncionario,
  uNovoTabela,
  classearquivo,
  Math,
  uDBMemo,
  udlgarquivo;

{$R *.DFM}

var
  tab : TcxTabSheet;

function ShowProjeto(codigo: integer; pgctarefa: TcxPageControl):boolean;
begin
  frmdlgProjeto             := TfrmdlgProjeto.Create(application);

  frmdlgProjeto.pgctarefa := pgctarefa;

  tab         := TcxTabSheet.Create(frmdlgProjeto);
  tab.parent  := pgctarefa;
  tab.name    := Maiuscula(_Projeto)+codigo.ToString;
  tab.Caption := Maiuscula(_Projeto)+' '+codigo.ToString;
  tab.show;

  frmdlgProjeto.Parent      := tab;
  frmdlgProjeto.BorderStyle := bsnone;
  frmdlgProjeto.Align       := alclient;
  frmdlgProjeto.bringtofront;
  frmdlgProjeto.Visible     := true;
  with frmdlgProjeto do
  begin
    dtemissao := DtBanco;
    hrinicio  := HrBanco;
    hrfim     := hrinicio;
    if qregistro.CodigoExiste(_Projeto, codigo) then
    begin
      sds.ParamByName(_cd+_Projeto).asinteger  := codigo;
      sds.ParamByName(_cdempresa).AsLargeint := empresa.cdempresa;

      sdstarefa.ParamByName(_cd+_Projeto).asinteger := codigo;
      sdstarefa.ParamByName(_cdempresa).AsLargeint   := empresa.cdempresa;
      cdstarefa.Open;
      if cdstarefa.RecordCount > 0  then
      begin
        tbstarefa.Caption := Maiuscula(_Tarefa)+' ('+inttostr(cdstarefa.RecordCount)+')';
      end;
    end;
    cds.Open;
    registro.set_readonly_dados(frmdlgProjeto, false);
    registro.set_grade_item(frmdlgProjeto, true);
    cdstarefa.ReadOnly := true;
    if cds.RecordCount = 0 then
    begin
      cds.Insert;
      cds.FieldByName(_cd+_Projeto).asinteger := codigo;
      cds.FieldByName(_cdempresa).AsLargeInt   := empresa.cdempresa;
      tab.Caption := Maiuscula(_Projeto)+' '+codigo.ToString;
    end
    else
    begin
      cds.Edit;
      atualizarContatocliente;
      tab.Caption := Maiuscula(_Projeto)+' '+cds.FieldByName(_nm+_Projeto).AsString;
    end;

    if Trim(cdsDSOBSERVACAO.AsString) <> '' then
    begin
      tbsobservacao.Caption := tbsobservacao.Caption + ' (*)';
    end;

    caption                       := 'Projeto '+cds.fieldbyname(_cd+_Projeto).AsString;
    cbxcdcliente.SetFocus;
    Result := True;
  end;
end;

procedure TfrmdlgProjeto.atualizarContatocliente;
begin
  cdsitcontcliente.Close;
  sdsitcontcliente.Close;
  if cds.FieldByName(_CDcliente).AsString = '' then
  begin
    Exit;
  end;
  sdsitcontcliente.Parambyname(_cdempresa).AsLargeInt := cds.FieldByName(_cdempresa).AsLargeInt;
  sdsitcontcliente.Parambyname(_cdcliente).AsString := cds.FieldByName(_CDcliente).AsString;
  cdsitcontcliente.Open;
end;

procedure TfrmdlgProjeto.cdsNewRecord(DataSet: TDataSet);
begin
  cdsDTEMISSAO.AsDateTime       := DtBanco;
  cdsHREMISSAO.AsDateTime       := HrBanco;
  cdsDTTERMINO.AsDateTime       := DtBanco;
  cdsHRTERMINO.AsDateTime       := HrBanco;
  cdsHRDURACAO.AsDateTime       := StrToTime(_00_00_00);
  cdsHRESTIMADA.AsDateTime      := StrToTime(_00_00_00);
  cdsCDSTPROJETO.AsInteger       := qregistro.Codigo_status_novo(_projeto);
  cdsCDTPPROJETO.AsString       := RetornaSQLString('select min(cdtpprojeto) from tpprojeto WHERE CDEMPRESA='+empresa.cdempresa.tostring);
  cdsPREXECUCAO.AsFloat         := 0;
  cdsCDPRIORIDADE.AsString      := _1;
  cdsCDgraudificuldade.AsString := _1;
  cdsCDFUNCIONARIO.AsString     := CodigodoCampo(_funcionario, inttostr(usuario.cdusuario), _cdusuario);
end;

procedure TfrmdlgProjeto.cdstarefaAfterRefresh(DataSet: TDataSet);
begin
  tbstarefa.Caption := Maiuscula(_Tarefa);
  if cdstarefa.RecordCount > 0  then
  begin
    tbstarefa.Caption := Maiuscula(_Tarefa)+' ('+inttostr(cdstarefa.RecordCount)+')';
  end;
end;

procedure TfrmdlgProjeto.cdsCDCLIENTEValidate(Sender: TField);
begin
  cdsNMCLIENTE.asstring := NomedoCodigo(_cliente, sender.asstring);
  cdsNUFONE1.AsString   := NomedoCodigo(_cliente, sender.asstring, _nufone1);
  cdsNUFONE2.AsString   := NomedoCodigo(_cliente, sender.asstring, _nufone2);
  cdsCDITCONTCLIENTE.Clear;
  atualizarContatocliente;
end;

procedure TfrmdlgProjeto.btn1Click(Sender: TObject);
var
  cditcontcliente : string;
begin
  if cbxcdcliente.Text = '' then
  begin
    messagedlg('Preencha o cliente antes de inserir um contato.', mtinformation, [mbok], 0);
    exit;
  end;
  cditcontcliente := InserirRegistroTabela(_itcontcliente, 'Contato Cliente', cds.FieldByName(_CDCLIENTE).AsString);
  if cditcontcliente <> '' then
  begin
    atualizarContatocliente;
    cds.fieldbyname(_cditcontcliente).AsString := cditcontcliente;
  end;
end;

procedure TfrmdlgProjeto.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmdlgProjeto.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmdlgProjeto.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmdlgProjeto.btn2Click(Sender: TObject);
var
  cd : LargeInt;
begin
  cd := LocalizarCliente(true);
  if cd = 0 then
  begin
    Exit;
  end;
  if (cds.State <> dsinsert) and (cds.State <> dsedit) then
  begin
    cds.Edit;
  end;
  cds.fieldbyname(_CDCLIENTE).AsLargeInt := cd;
  cds.fieldbyname(_nmcliente).asstring := qregistro.NomedoCodigo(_cliente, cd);
end;

procedure TfrmdlgProjeto.btn5Click(Sender: TObject);
var
  codigo : string;
begin
  codigo := InserirRegistroTabela(_tp+_projeto+_1, 'Tipo 1 Projeto');
  if codigo <> '' then
  begin
    abrir_tabela(_tp+_projeto+_1);
    cds.fieldbyname(_cd+_tp+_projeto+_1).AsString := codigo;
  end;
end;

procedure TfrmdlgProjeto.btn4Click(Sender: TObject);
var
  codigo : string;
begin
  codigo := InserirRegistroTabela(_tp+_projeto, 'Tipo Projeto');
  if codigo <> '' then
  begin
    abrir_tabela(_tp+_projeto);
    cds.fieldbyname(_cd+_tp+_projeto).AsString := codigo;
  end;
end;

procedure TfrmdlgProjeto.FormCreate(Sender: TObject);
begin
  registro := tregistro.create(self, _projeto, _projeto, _o, cds, dts, nil, true);
  AbrirTabelas;
end;

procedure TfrmdlgProjeto.cbxcdclienteEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_cliente);
end;

procedure TfrmdlgProjeto.cbxcdtpprojetoEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tp+_projeto);
end;

procedure TfrmdlgProjeto.cbxcdtpprojeto1Enter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tp+_projeto+_1);
end;

procedure TfrmdlgProjeto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmdlgProjeto.FormDestroy(Sender: TObject);
begin
  TcxTabSheet(Self.Parent).TabVisible := false;
  registro.Destroy;
end;

procedure TfrmdlgProjeto.actokExecute(Sender: TObject);
begin
  if cbxcdstprojeto.Text = '' then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_Status]), mtInformation, [mbOK], 0);
    cbxcdstprojeto.SetFocus;
    Abort;
  end;
  if cbxcdtpprojeto.Text = '' then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_Tipo]), mtInformation, [mbOK], 0);
    cbxcdtpprojeto.SetFocus;
    Abort;
  end;
  if memnmprojeto.Text = '' then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [__Descricao]), mtInformation, [mbOK], 0);
    memnmprojeto.SetFocus;
    Abort;
  end;
  if cbxcdfuncionario.Text = '' then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_Criador]), mtInformation, [mbOK], 0);
    cbxcdfuncionario.SetFocus;
    Abort;
  end;
  if CodigodoCampo(_funcionario, inttostr(usuario.cdusuario), _cdusuario) = '' then
  begin
    MessageDlg('Não há funcionário associado ao usuário.'#13'Defina um usuário no cadastro do funcionário antes de continuar.', mtinformation, [mbok], 0);
    Abort;
  end;
  modalresult := mrok;
  if cbxcdstprojeto.EditValue <> _2 then
  begin
    cdsHRTERMINO.Clear;
    cdsDTTERMINO.Clear;
  end
  else if cdsDTTERMINO.IsNull then
  begin
    cdsDTTERMINO.AsDateTime := DtBanco;
    cdsHRTERMINO.AsDateTime := HrBanco;
    cdsnudias.AsInteger     := DiferencaDias(cdsDTtermino.asdatetime, cdsDTemissao.asdatetime);
  end;
  cds.ApplyUpdates(0);
  close;
end;

procedure TfrmdlgProjeto.actremovertarefaExecute(Sender: TObject);
begin
  mover_tarefas_para_projeto(_null);
end;

procedure TfrmdlgProjeto.actabrirtarefaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdstarefa);
end;

procedure TfrmdlgProjeto.actalturaautomaticaExecute(Sender: TObject);
begin
  tbvtarefa.OptionsView.CellAutoHeight := btnalturaautomatica.down;
end;

procedure TfrmdlgProjeto.actcancelar1Execute(Sender: TObject);
begin
  close;
end;

procedure TfrmdlgProjeto.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmdlgProjeto.cbxcdfuncionarioEnter(Sender: TObject);
begin
  abrir_tabela(_funcionario);
  colorenter(Sender);
end;

procedure TfrmdlgProjeto.cdsBeforePost(DataSet: TDataSet);
begin
  if cdsHRESTIMADA.IsNull then
  begin
    cdsHRESTIMADA.AsDateTime := StrToTime(_00_00_00);
  end;
  registro.set_update(cds);
end;

procedure TfrmdlgProjeto.actmoverparaExecute(Sender: TObject);
var
  sqlwhere , cdprojeto: string;
begin
  sqlwhere := FiltrarProjeto;
  if sqlwhere = '' then
  begin
    Exit;
  end;
  cdprojeto := RetornaSQLString('select first 1 cdprojeto from projeto t '+sqlwhere);
  if cdprojeto <> ' ' then
  begin
    mover_tarefas_para_projeto(cdprojeto);
  end;
end;

procedure TfrmdlgProjeto.mover_tarefas_para_projeto(cdprojeto: string);
var
  i : Integer;
  sql : TStrings;
begin
  sql := TStringList.Create;
  try
    for i := 0 to tbvtarefa.ViewData.RecordCount -1 do
    begin
      if tbvtarefa.ViewData.Records[i].Selected then
      begin
        sql.Add('update tarefa '+
                'set cdprojeto='+cdprojeto+' '+
                'where cdempresa='+empresa.cdempresa.tostring+' and cdtarefa='+floattostr(tbvtarefa.ViewData.Records[i].Values[tbvtarefa.GetColumnByFieldName(_cd+_tarefa).Index]));
      end;
    end;
    if (sql.Count > 0) and ExecutaScript(sql) then
    begin
      if cdprojeto = _null then
      begin
        MessageDlg('Tarefas removidas com sucesso!', mtInformation, [mbOK], 0)
      end
      else
      begin
        MessageDlg('Tarefas movidas com sucesso!', mtInformation, [mbOK], 0);
      end;
      cdstarefa.Refresh;
    end;
  finally
    sql.free;
  end;
end;

procedure TfrmdlgProjeto.AbrirTabelas;
begin
  cbxcdcliente.Properties.ListSource := abrir_tabela(_cliente);
  cbxcdfuncionario.Properties.ListSource := abrir_tabela(_funcionario);
  cbxcdtpprojeto.Properties.ListSource := abrir_tabela(_tpprojeto);
  cbxcdtpprojeto1.Properties.ListSource := abrir_tabela(_tpprojeto1);
  cbxcdstprojeto.Properties.ListSource := abrir_tabela(_stprojeto);
  cbxcdprioridade.Properties.ListSource := abrir_tabela(_prioridade);
  cbxcdgraudificuldade.Properties.ListSource := abrir_tabela(_grau + _dificuldade);
  TcxLookupComboBoxProperties(tbvtarefaCDSTTAREFA.Properties).ListSource := abrir_tabela(_sttarefa);
end;

procedure TfrmdlgProjeto.tbvtarefaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cd+_tarefa then
  begin
    actabrirtarefaExecute(actabrirtarefa);;
  end;
end;

procedure TfrmdlgProjeto.tbvtarefaCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBColumn;
begin
  try
    Column             := tbvtarefaNUCOR;
    if StrToInt(AViewInfo.GridRecord.DisplayTexts[Column.Index]) <> 0 then
    begin
      ACanvas.Font.Color := StrToInt(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
      if ACanvas.Font.Color <> 0 then
      begin
        ACanvas.Font.Style := [fsBold];
      end;
    end;
  except
  end;
end;

procedure TfrmdlgProjeto.tbvtarefaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmdlgProjeto.actarquivoExecute(Sender: TObject);
begin
  dlgarquivo(_projeto, cds.fieldbyname(_cdprojeto).AsString);
end;

end.

