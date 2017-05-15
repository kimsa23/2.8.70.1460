unit uFuncionario;

interface

uses
  System.Actions, System.UITypes,
  Mask, Windows, Buttons, ExtCtrls, Controls, ComCtrls, sysutils, dialogs, Menus, ToolWin,
  Classes, ActnList, StdCtrls, forms,
  DB, DBClient,
  urotinas, uregistroib, uregistro, ulocalizar, uconstantes,
  udatahora, uexportarexcel, ustrings, udlgarquivo,
  classeempresa, classeconsiste, classeusuario, classegerar,
  classeRegistro, classeregistrainformacao, classeform, classefuncionario,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, cxPC, cxControls, dxBar, cxClasses, cxGraphics,
  cxLookAndFeels, cxLabel, cxPCdxBarPopupMenu, cxTextEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxDBLookupComboBox, cxCalendar, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxCalc,
  cxInplaceContainer, cxVGrid, cxDBVGrid, cxCheckGroup, cxCheckBox, cxMemo,
  cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxMaskEdit,
  cxTimeEdit, DBCtrls, cxNavigator, uMenuRelatorio,
  dxBarBuiltInMenu, cxSplitter, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmFuncionario = class(TForm)
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
    tbscadastro: TcxTabSheet;
    tbsobservacao: TcxTabSheet;
    tbsordserv: TcxTabSheet;
    gbxcadastro: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label18: TLabel;
    lbllocaltrabalho: TLabel;
    Label31: TLabel;
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
    dts: TDataSource;
    cxDBVerticalGrid1: TcxDBVerticalGrid;
    cxDBVerticalGrid1CategoryRow1: TcxCategoryRow;
    cxDBVerticalGrid1DBEditorRow1: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow2: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow3: TcxDBEditorRow;
    cxDBVerticalGrid1CategoryRow2: TcxCategoryRow;
    cxDBVerticalGrid1CategoryRow3: TcxCategoryRow;
    cxDBVerticalGrid1CategoryRow4: TcxCategoryRow;
    cxDBVerticalGrid1CategoryRow5: TcxCategoryRow;
    cxDBVerticalGrid1DBEditorRow4: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow5: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow6: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow7: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow8: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow9: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow10: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow11: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow12: TcxDBEditorRow;
    memdsobservacao: TcxDBMemo;
    gbxComercial: TcxGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label23: TLabel;
    Label20: TLabel;
    lbl2: TLabel;
    edtnufax: TcxDBMaskEdit;
    edtnufone2: TcxDBMaskEdit;
    edtnufone1: TcxDBMaskEdit;
    edtnucxpostal: TcxDBMaskEdit;
    edtnucep: TcxDBMaskEdit;
    edtNmbairro: TcxDBTextEdit;
    edtdscomplemento: TcxDBTextEdit;
    edtdsnumero: TcxDBTextEdit;
    edtDsEndereco: TcxDBTextEdit;
    cbxcduf: TcxDBLookupComboBox;
    cbxcdmunicipio: TcxDBLookupComboBox;
    edtnufone3: TcxDBMaskEdit;
    cbxcdpais: TcxDBLookupComboBox;
    cxGroupBox1: TcxGroupBox;
    Label27: TLabel;
    Label61: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label25: TLabel;
    Label28: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    edtnmconjuge: TcxDBTextEdit;
    edtdtnascimento: TcxDBDateEdit;
    cbxcdestcivil: TcxDBComboBox;
    cbxcdsexo: TcxDBComboBox;
    edtnmpai: TcxDBTextEdit;
    edtnmmae: TcxDBTextEdit;
    edtNUINSS: TcxDBTextEdit;
    edtnuidentid: TcxDBTextEdit;
    edtnucpf: TcxDBMaskEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edtNUCRACHA: TcxDBTextEdit;
    edtNUCARTEIRATRABALHO: TcxDBTextEdit;
    edtNUTITULOELEITOR: TcxDBTextEdit;
    cxGroupBox2: TcxGroupBox;
    Label38: TLabel;
    Label58: TLabel;
    Label60: TLabel;
    lblfuncao: TLabel;
    lblusuario: TLabel;
    edthomepage: TcxDBTextEdit;
    edtemail: TcxDBTextEdit;
    cbxcdstfuncionario: TcxDBLookupComboBox;
    cbxcdfuncao: TcxDBLookupComboBox;
    cbxcdusuario: TcxDBLookupComboBox;
    edtDTADMISSAO: TcxDBDateEdit;
    edtDTDEMISSAO: TcxDBDateEdit;
    edtVLSALARIO: TcxDBCalcEdit;
    edtVLSALARIOHORA: TcxDBCalcEdit;
    edtPRCOMISSAO: TcxDBCalcEdit;
    cbxcdcntcusto: TcxDBLookupComboBox;
    lblcntcusto: TLabel;
    cbxcdlocaltrabalho: TcxDBLookupComboBox;
    cbxcdescolaridade: TcxDBLookupComboBox;
    lblescolaridade: TLabel;
    lblturno: TLabel;
    cbxcdturno: TcxDBLookupComboBox;
    lblsetor: TLabel;
    cbxcdsetor: TcxDBLookupComboBox;
    tbsproducao: TcxTabSheet;
    lblequipamento: TLabel;
    cbxcdequipamento: TcxDBLookupComboBox;
    pumimprimir: TdxBarPopupMenu;
    Label19: TLabel;
    cbxcdturma: TcxDBLookupComboBox;
    pnltop: TPanel;
    pnl: TcxLabel;
    Label12: TLabel;
    edtcodigo: TcxTextEdit;
    Label3: TLabel;
    edtnome: TcxDBTextEdit;
    actopcoes: TAction;
    btnopcoes: TdxBarLargeButton;
    pumopcoes: TdxBarPopupMenu;
    actferias: TAction;
    dxBarButton1: TdxBarButton;
    actdependente: TAction;
    dxBarButton2: TdxBarButton;
    actfuncao: TAction;
    dxBarButton3: TdxBarButton;
    actconvenio: TAction;
    dxBarButton4: TdxBarButton;
    lblcdtpcnh: TLabel;
    cbxcdtpcnh: TcxDBLookupComboBox;
    lblnucnh: TLabel;
    edtnucnh: TcxDBTextEdit;
    qry: TFDQuery;
    qryCDEMPRESA: TLargeintField;
    qryCDFUNCIONARIO: TIntegerField;
    qryCDUF: TIntegerField;
    qryCDFUNCAO: TIntegerField;
    qryCDCNTCUSTO: TIntegerField;
    qryCDLOCALTRABALHO: TIntegerField;
    qryCDSTFUNCIONARIO: TIntegerField;
    qryCDMUNICIPIO: TIntegerField;
    qryCDUSUARIO: TIntegerField;
    qryCDUSUARIOI: TIntegerField;
    qryCDUSUARIOA: TIntegerField;
    qryCDCOMPUTADORI: TIntegerField;
    qryCDCOMPUTADORA: TIntegerField;
    qryCDTURMA: TIntegerField;
    qryCDEQUIPAMENTO: TIntegerField;
    qryCDPAIS: TIntegerField;
    qryCDSETOR: TIntegerField;
    qryCDESCOLARIDADE: TIntegerField;
    qryCDTURNO: TIntegerField;
    qryNMFUNCIONARIO: TStringField;
    qryDTADMISSAO: TDateField;
    qryDTDEMISSAO: TDateField;
    qryVLSALARIO: TBCDField;
    qryPRCOMISSAO: TFloatField;
    qryDTNASCIMENTO: TDateField;
    qryNMCONJUGE: TStringField;
    qryNMPAI: TStringField;
    qryNMMAE: TStringField;
    qryCDSEXO: TStringField;
    qryCDESTCIVIL: TStringField;
    qryDSENDERECO: TStringField;
    qryNMBAIRRO: TStringField;
    qryNUCEP: TStringField;
    qryNUCXPOSTAL: TStringField;
    qryNUFONE1: TStringField;
    qryNUFONE2: TStringField;
    qryNUFONE3: TStringField;
    qryNUFAX: TStringField;
    qryHOMEPAGE: TStringField;
    qryEMAIL: TStringField;
    qryNUCPF: TStringField;
    qryNUIDENTID: TStringField;
    qryDSOBSERVACAO: TBlobField;
    qryFOTO: TBlobField;
    qryASSINATURA: TBlobField;
    qryVLSALARIOHORA: TBCDField;
    qryNUINSS: TStringField;
    qryNUCARTEIRATRABALHO: TStringField;
    qryNUTITULOELEITOR: TStringField;
    qryNUCRACHA: TStringField;
    qryDSNUMERO: TStringField;
    qryDSCOMPLEMENTO: TStringField;
    qryBOWORKBOXORDSERV: TStringField;
    qryBOWORKBOXRESPONSAVEL: TStringField;
    qryBOWORKBOXGERENTE: TStringField;
    qryPRCOMISSAOTECNICO: TFloatField;
    qryPRCOMISSAOORCAMENTO: TFloatField;
    qryPRCOMISSAOATENDENTE: TFloatField;
    qryPRCOMISSAOORCAMENTOSERVICO: TFloatField;
    qryPRCOMISSAOATENDENTESERVICO: TFloatField;
    qryPRCOMISSAOTECNICOSERVICO: TFloatField;
    qryPRCOMISSAOORCAMENTOPRODUTO: TFloatField;
    qryPRCOMISSAOATENDENTEPRODUTO: TFloatField;
    qryPRCOMISSAOTECNICOPRODUTO: TFloatField;
    qryPRCOMISSAOVENDEDOR: TFloatField;
    qryPRCOMISSAOVENDEDORPRODUTO: TFloatField;
    qryPRCOMISSAOVENDEDORSERVICO: TFloatField;
    qryTSINCLUSAO: TSQLTimeStampField;
    qryTSALTERACAO: TSQLTimeStampField;
    qryNUMATRICULA: TStringField;
    qryNULIVROPAGINA: TStringField;
    qryDTCADASTRO: TDateField;
    qryNUSERIECARTEIRATRABALHO: TStringField;
    qryDSEMISSAOIDENTID: TStringField;
    qryDTEMISSAOIDENTID: TDateField;
    qryNUCNH: TStringField;
    qryTPCATEGORIACNH: TStringField;
    qryDTVALIDADECNH: TDateField;
    qryNURESERVISTA: TStringField;
    qryCDTPCNH: TIntegerField;
    actarquivo: TAction;
    dxBarButton5: TdxBarButton;
    actexameperiodico: TAction;
    dxBarButton6: TdxBarButton;
    actatestadomedico: TAction;
    dxBarButton7: TdxBarButton;
    actperiodocontrato: TAction;
    dxBarButton8: TdxBarButton;
    actavisotrabalhado: TAction;
    dxBarButton9: TdxBarButton;
    actfuncionariocurso: TAction;
    dxBarButton10: TdxBarButton;
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
    procedure FormDestroy(Sender: TObject);
    procedure dtsStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbxcdufExit(Sender: TObject);
    procedure cbxcdfuncaoEnter(Sender: TObject);
    procedure cbxcdstfuncionarioEnter(Sender: TObject);
    procedure cbxcdusuarioEnter(Sender: TObject);
    procedure cbxcdlocaltrabalhoEnter(Sender: TObject);
    procedure cbxcdcntcustoEnter(Sender: TObject);
    procedure cbxcdescolaridadeEnter(Sender: TObject);
    procedure cbxcdequipamentoEnter(Sender: TObject);
    procedure cbxcdsetorEnter(Sender: TObject);
    procedure cbxcdturnoEnter(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure cbxcdturmaEnter(Sender: TObject);
    procedure actopcoesExecute(Sender: TObject);
    procedure actferiasExecute(Sender: TObject);
    procedure actdependenteExecute(Sender: TObject);
    procedure actfuncaoExecute(Sender: TObject);
    procedure actconvenioExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure qryAfterScroll(DataSet: TDataSet);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure qryNUCEPValidate(Sender: TField);
    procedure qryNUFONE1Validate(Sender: TField);
    procedure qryNUFONE2Validate(Sender: TField);
    procedure qryNUFONE3Validate(Sender: TField);
    procedure qryNUFAXValidate(Sender: TField);
    procedure qryDTNASCIMENTOValidate(Sender: TField);
    procedure qryCDUFValidate(Sender: TField);
    procedure actarquivoExecute(Sender: TObject);
    procedure actexameperiodicoExecute(Sender: TObject);
    procedure actatestadomedicoExecute(Sender: TObject);
    procedure actperiodocontratoExecute(Sender: TObject);
    procedure actavisotrabalhadoExecute(Sender: TObject);
    procedure actfuncionariocursoExecute(Sender: TObject);
  private      { Private declarations }
    funcionario : TFuncionario;
    procedure AplicarConfiguracaoEmpresa;
    procedure SetMascaraNumeroFoneAcordoComEstado;
    procedure check_data_admissao_demissao;
    procedure check_negativo_salario_fixo;
    procedure check_negativo_porcentagem_comissao;
    procedure check_negativo_salario_hora;
    procedure AbrirTabelas;
  public  { Public declarations }
    registro : TRegistro;
    function Abrir(codigo:integer):boolean;
  end;

const
  tbl      = _Funcionario;
  exibe    = 'Funcionário';
  artigoI  = 'o';
var
  frmFuncionario: TfrmFuncionario;

implementation

uses uDtmMain, uMain, Variants, udlgtabela;

{$R *.DFM}

procedure TFrmFuncionario.SetMascaraNumeroFoneAcordoComEstado;
begin
  if BooleandoCodigo(_uf, qry.FieldByName(_cduf).AsString, _bodigito9) then
  begin
    edtnufone1.Properties.EditMask := _99_99999_9999;
    edtnufone2.Properties.EditMask := _99_99999_9999;
    edtnufone3.Properties.EditMask := _99_99999_9999;
    edtnufax.Properties.EditMask   := _99_99999_9999;
  end
  else
  begin
    edtnufone1.Properties.EditMask := _99_9999_9999;
    edtnufone2.Properties.EditMask := _99_9999_9999;
    edtnufone3.Properties.EditMask := _99_9999_9999;
    edtnufax.Properties.EditMask   := _99_9999_9999;
  end;
end;

procedure TFrmFuncionario.aplicarconfiguracaoempresa;
begin
  tbsordserv.TabVisible := empresa.ordserv.bo;
  lblcntcusto.Visible   := Empresa.financeiro.bocntcusto;
  cbxcdcntcusto.Visible := Empresa.financeiro.bocntcusto;
end;

function TfrmFuncionario.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmFuncionario.AbrirTabelas;
begin
  cbxcduf.Properties.ListSource := abrir_tabela(_uf);
  cbxcdmunicipio.Properties.ListSource := abrir_tabela(_municipio);
  cbxcdescolaridade.Properties.ListSource := abrir_tabela(_escolaridade);
  cbxcdsetor.Properties.ListSource := abrir_tabela(_setor);
  cbxcdequipamento.Properties.ListSource := abrir_tabela(_equipamento);
  cbxcdstfuncionario.Properties.ListSource := abrir_tabela(_st + _funcionario);
  cbxcdfuncao.Properties.ListSource := abrir_tabela(_funcao);
  cbxcdusuario.Properties.ListSource := abrir_tabela(_usuario);
  cbxcdlocaltrabalho.Properties.ListSource := abrir_tabela(_local + _trabalho);
  cbxcdcntcusto.Properties.ListSource := abrir_tabela(_cntcusto);
  cbxcdpais.Properties.ListSource := abrir_tabela(_pais);
  cbxcdturno.Properties.ListSource := abrir_tabela(_turno);
  cbxcdturma.Properties.ListSource := abrir_tabela(_turma);
  cbxcdtpcnh.Properties.ListSource := abrir_tabela(_tpcnh);
end;

procedure TfrmFuncionario.actAbrirExecute(Sender: TObject);
begin
  registro.Abrir;
end;

procedure TfrmFuncionario.actNovoExecute(Sender: TObject);
begin
  if registro.Novo(sender) then
  begin
    cbxcdufExit(cbxcduf);
  end;
end;

procedure TfrmFuncionario.actSalvarExecute(Sender: TObject);
begin
  if trim(qry.FieldByName(_nmfuncionario).AsString) = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Nome]), mtinformation, [mbok], 0);
    qry.FieldByName(_nmfuncionario).FocusControl;
    Abort;
  end;
  registro.Salvar;
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
end;

procedure TfrmFuncionario.actExcluirExecute(Sender: TObject);
begin
  registro.Excluir;
end;

procedure TfrmFuncionario.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmFuncionario.actCancelarExecute(Sender: TObject);
begin
  registro.Cancelar;
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
end;

procedure TfrmFuncionario.actEditarExecute(Sender: TObject);
begin
  registro.Editar;
end;

procedure TfrmFuncionario.actexameperiodicoExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_exameperiodico))), qry.FieldByName(_cdfuncionario).AsInteger, _cdfuncionario);
end;

procedure TfrmFuncionario.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.CodigoKeyPress(Sender, Key, actNovo.Enabled);
end;

procedure TfrmFuncionario.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmFuncionario.FormShow(Sender: TObject);
begin
  funcionario := Tfuncionario.create;
  aplicarconfiguracaoempresa;
  pnl.caption := exibe;
  edtCodigo.SetFocus;
end;

procedure TfrmFuncionario.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure TfrmFuncionario.actarquivoExecute(Sender: TObject);
begin
  dlgarquivo(tbl, qry.fieldbyname(_cdfuncionario).AsString);
end;

procedure TfrmFuncionario.actatestadomedicoExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_atestadomedico))), qry.FieldByName(_cdfuncionario).AsInteger, _cdfuncionario);
end;

procedure TfrmFuncionario.actavisotrabalhadoExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_avisotrabalhado))), qry.FieldByName(_cdfuncionario).AsInteger, _cdfuncionario);
end;

procedure TfrmFuncionario.actPrimeiroExecute(Sender: TObject);
begin
  registro.Primeiro;
end;

procedure TfrmFuncionario.actAnteriorExecute(Sender: TObject);
begin
  registro.Anterior;
end;

procedure TfrmFuncionario.actProximoExecute(Sender: TObject);
begin
  registro.Proximo;
end;

procedure TfrmFuncionario.actUltimoExecute(Sender: TObject);
begin
  registro.Ultimo;
end;

procedure TfrmFuncionario.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure TfrmFuncionario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmFuncionario.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(lowercase(copy(self.Name, 4, length(self.Name) - 3)), frmmain.tlbnew);
end;

procedure TfrmFuncionario.FormDestroy(Sender: TObject);
begin
  funcionario.destroy;
  registro.Destroy;
end;

procedure TfrmFuncionario.check_data_admissao_demissao;
begin
  if  qry.fieldbyname(_DTADMISSAO).IsNull or qry.fieldbyname(_DTDEMISSAO).IsNull then
  begin
    Exit;
  end;
  if qry.fieldbyname(_DTADMISSAO).AsDateTime > qry.fieldbyname(_DTDEMISSAO).AsDateTime then
  begin
    MessageDlg('Data de admissão não pode ser maior do que a data de demissão.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbscadastro;
    qry.fieldbyname(_DTADMISSAO).FocusControl;
    Abort;
  end;
end;

procedure TfrmFuncionario.check_negativo_salario_fixo;
begin
  if qry.fieldbyname(_VLSALARIO).AsCurrency < 0 then
  begin
    MessageDlg('Valor do Salário Fixo não pode ser negativo.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbscadastro;
    qry.fieldbyname(_VLSALARIO).FocusControl;
    Abort;
  end;
end;

procedure TfrmFuncionario.check_negativo_salario_hora;
begin
  if qry.fieldbyname(_VLSALARIOHORA).AsCurrency < 0 then
  begin
    MessageDlg('Valor do Salário Hora não pode ser negativo.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbscadastro;
    qry.fieldbyname(_VLSALARIOHORA).FocusControl;
    Abort;
  end;
end;

procedure TfrmFuncionario.check_negativo_porcentagem_comissao;
begin
  if qry.fieldbyname(_PRCOMISSAO).AsFloat < 0 then
  begin
    MessageDlg('% de comissão não pode ser negativo.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbscadastro;
    qry.fieldbyname(_PRCOMISSAO).FocusControl;
    Abort;
  end;
end;

procedure TfrmFuncionario.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure TfrmFuncionario.FormCreate(Sender: TObject);
begin
  tbsproducao.TabVisible := Empresa.producao.ordproducao.bo;
  AbrirTabelas;
  registro := tregistro.create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
  GeraMenuRelatorio ('', btnimprimir, 50, qry, _funcionario);
end;

procedure TfrmFuncionario.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmFuncionario.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmFuncionario.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmFuncionario.qryAfterScroll(DataSet: TDataSet);
begin
  SetMascaraNumeroFoneAcordoComEstado;
end;

procedure TfrmFuncionario.qryBeforePost(DataSet: TDataSet);
begin
  check_data_admissao_demissao;
  check_negativo_salario_fixo;
  check_negativo_salario_hora;
  check_negativo_porcentagem_comissao;
  ConsisteCPF (dataset, tbl, exibe, True);
  registro.set_update(qry);
end;

procedure TfrmFuncionario.qryCDUFValidate(Sender: TField);
begin
  SetMascaraNumeroFoneAcordoComEstado;
end;

procedure TfrmFuncionario.qryDTNASCIMENTOValidate(Sender: TField);
begin
  registro.consistir_data_nascimento(sender);
end;

procedure TfrmFuncionario.qryNewRecord(DataSet: TDataSet);
begin
  qry.fieldbyname(_DTADMISSAO).AsDateTime    := DtBanco;
  qry.fieldbyname(_CDSTFUNCIONARIO).AsInteger := qregistro.Codigo_status_novo(tbl);
end;

procedure TfrmFuncionario.qryNUCEPValidate(Sender: TField);
begin
  if consistircep(sender) then
  begin
    cbxcdufExit(cbxcduf);
  end;
end;

procedure TfrmFuncionario.qryNUFAXValidate(Sender: TField);
begin
  registro.check_numero_telefone(sender);
end;

procedure TfrmFuncionario.qryNUFONE1Validate(Sender: TField);
begin
  registro.check_numero_telefone(sender);
end;

procedure TfrmFuncionario.qryNUFONE2Validate(Sender: TField);
begin
  registro.check_numero_telefone(sender);
end;

procedure TfrmFuncionario.qryNUFONE3Validate(Sender: TField);
begin
  registro.check_numero_telefone(sender);
end;

procedure TfrmFuncionario.cbxcdufExit(Sender: TObject);
begin
  if not (sender = nil) then
  begin
    colorexit(Sender);
  end;
  if ((qry.State = dsinsert) or (qry.State = dsedit)) and cbxcduf.DataBinding.IsDataAvailable then
  begin
    dtmMain.Municipio_Filtro_(cbxcduf.DataBinding.Field.AsString, TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet));
  end;
end;

procedure TfrmFuncionario.cbxcdfuncaoEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_funcao);
end;

procedure TfrmFuncionario.cbxcdstfuncionarioEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_stfuncionario);
end;

procedure TfrmFuncionario.cbxcdusuarioEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_usuario);
end;

procedure TfrmFuncionario.cbxcdlocaltrabalhoEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_local+_trabalho);
end;

procedure TfrmFuncionario.cbxcdcntcustoEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_cntcusto);
end;

procedure TfrmFuncionario.cbxcdescolaridadeEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_escolaridade);
end;

procedure TfrmFuncionario.cbxcdequipamentoEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_equipamento);
end;

procedure TfrmFuncionario.cbxcdsetorEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_setor);
end;

procedure TfrmFuncionario.cbxcdturmaEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_turma);
end;

procedure TfrmFuncionario.cbxcdturnoEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_turno);
end;

procedure TfrmFuncionario.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure TfrmFuncionario.actperiodocontratoExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_periodocontrato))), qry.FieldByName(_cdfuncionario).AsInteger, _cdfuncionario);
end;

procedure TfrmFuncionario.actferiasExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_funcionarioferias))), qry.FieldByName(_cdfuncionario).AsInteger, _cdfuncionario);
end;

procedure TfrmFuncionario.actdependenteExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_itfuncionariodependente))), qry.FieldByName(_cdfuncionario).AsInteger, _cdfuncionario);
end;

procedure TfrmFuncionario.actfuncaoExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_itfuncionariofuncao))), qry.FieldByName(_cdfuncionario).AsInteger, _cdfuncionario);
end;

procedure TfrmFuncionario.actfuncionariocursoExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_funcionariocurso))), qry.FieldByName(_cdfuncionario).AsInteger, _cdfuncionario);
end;

procedure TfrmFuncionario.actconvenioExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_funcionariotpconvenio))), qry.FieldByName(_cdfuncionario).AsInteger, _cdfuncionario);
end;

end.
