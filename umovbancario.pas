unit umovbancario;

interface

uses
  System.Actions, System.UITypes,
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, Dialogs, Buttons,
  Menus, ExtCtrls, Variants, Math,
  FMTBcd, Provider, SqlExpr, DBClient, DB,
  classeexecutasql, classeretornasql, classemovbancario, classeduplicata, classeusuario,
  classeempresa, classeregistrainformacao, classegerar, classeform, classeaplicacao, classequery,
  classeRegistro,
  uexportarexcel, uregistro, udatahora, uConstantes, ustrings, uprogressbar,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxDBEdit, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxGridBandedTableView, cxGridDBBandedTableView, cxLabel, cxDBLabel,
  cxCurrencyEdit, cxCalc, cxButtons, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxNavigator, cxGroupBox, cxMemo, cxCheckBox;

type
  TExtrato = class(TObject)
    cdempresa : Largeint;
    cdextrato : string;
    dtemissao : TDate;
    nmtpextrato : string;
    nmcatextrato : string;
    nuextrato : string;
    cdnatureza : string;
    cdtpextrato : string;
    cdcatextrato : string;
    boconciliado : string;
    vlextrato : Currency;
    vlpagamento : Currency;
    vldeposito : Currency;
  public
    constructor create;
    procedure Ler;
    procedure salvar;
  end;
  Tfrmmovbancario = class(TForm)
    grdDBTableView1: TcxGridDBTableView;
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    cdsbaixa: TClientDataSet;
    dtsbaixa: TDataSource;
    sdsbaixa: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    sds: TSQLDataSet;
    dts1: TDataSource;
    sdsCDMOVBANCARIO: TIntegerField;
    sdsCDEXTRATO: TIntegerField;
    sdsCDCONTA: TIntegerField;
    sdsCDMOVIMENTACAO: TIntegerField;
    sdsNUMOVBANCARIO: TStringField;
    sdsDTEMISSAO: TDateField;
    sdsVLLANCAMENTO: TFMTBCDField;
    sdsCDNATUREZA: TStringField;
    sdsDSHISTORICO: TStringField;
    sdsDSNOMINAL: TStringField;
    sdsBOCONCILIADO: TStringField;
    sdsDSOBSERVACAO: TBlobField;
    sdsVLDEPOSITO: TFMTBCDField;
    sdsVLSALDO: TFMTBCDField;
    sdsVLPAGAMENTO: TFMTBCDField;
    cdsCDMOVBANCARIO: TIntegerField;
    cdsCDEXTRATO: TIntegerField;
    cdsCDCONTA: TIntegerField;
    cdsCDMOVIMENTACAO: TIntegerField;
    cdsNUMOVBANCARIO: TStringField;
    cdsDTEMISSAO: TDateField;
    cdsVLLANCAMENTO: TFMTBCDField;
    cdsCDNATUREZA: TStringField;
    cdsDSHISTORICO: TStringField;
    cdsDSNOMINAL: TStringField;
    cdsBOCONCILIADO: TStringField;
    cdsDSOBSERVACAO: TBlobField;
    cdsVLDEPOSITO: TFMTBCDField;
    cdsVLSALDO: TFMTBCDField;
    cdsVLPAGAMENTO: TFMTBCDField;
    cdssdsbaixa: TDataSetField;
    sdsbaixaCDBAIXA: TIntegerField;
    sdsbaixaCDMOVBANCARIO: TIntegerField;
    sdsbaixaCDTPBAIXA: TIntegerField;
    sdsbaixaCDADNTCLIENTE: TIntegerField;
    sdsbaixaCDAUTPAGTO: TIntegerField;
    sdsbaixaCDDUPLICATA: TIntegerField;
    sdsbaixaCDADNTFORNECEDOR: TIntegerField;
    sdsbaixaCDCHEQUE: TIntegerField;
    sdsbaixaNUBAIXA: TStringField;
    sdsbaixaDTBAIXA: TDateField;
    sdsbaixaVLMULTA: TFMTBCDField;
    sdsbaixaVLJURO: TFMTBCDField;
    sdsbaixaVLBAIXA: TFMTBCDField;
    sdsbaixaVLDESCONTO: TFMTBCDField;
    sdsbaixaVLABATIMENTO: TFMTBCDField;
    sdsbaixaVLDEVOLUCAO: TFMTBCDField;
    sdsbaixaVLLIQUIDO: TFMTBCDField;
    sdsbaixaVLJURONRECEBIDO: TFMTBCDField;
    cdsbaixaCDBAIXA: TIntegerField;
    cdsbaixaCDMOVBANCARIO: TIntegerField;
    cdsbaixaCDTPBAIXA: TIntegerField;
    cdsbaixaCDADNTCLIENTE: TIntegerField;
    cdsbaixaCDAUTPAGTO: TIntegerField;
    cdsbaixaCDDUPLICATA: TIntegerField;
    cdsbaixaCDADNTFORNECEDOR: TIntegerField;
    cdsbaixaCDCHEQUE: TIntegerField;
    cdsbaixaNUBAIXA: TStringField;
    cdsbaixaDTBAIXA: TDateField;
    cdsbaixaVLMULTA: TFMTBCDField;
    cdsbaixaVLJURO: TFMTBCDField;
    cdsbaixaVLBAIXA: TFMTBCDField;
    cdsbaixaVLDESCONTO: TFMTBCDField;
    cdsbaixaVLABATIMENTO: TFMTBCDField;
    cdsbaixaVLDEVOLUCAO: TFMTBCDField;
    cdsbaixaVLLIQUIDO: TFMTBCDField;
    cdsbaixaVLJURONRECEBIDO: TFMTBCDField;
    grdDBTableView1NUBAIXA: TcxGridDBColumn;
    grdDBTableView1VLMULTA: TcxGridDBColumn;
    grdDBTableView1VLJURO: TcxGridDBColumn;
    grdDBTableView1VLBAIXA: TcxGridDBColumn;
    grdDBTableView1VLDESCONTO: TcxGridDBColumn;
    grdDBTableView1VLABATIMENTO: TcxGridDBColumn;
    grdDBTableView1VLDEVOLUCAO: TcxGridDBColumn;
    grdDBTableView1VLLIQUIDO: TcxGridDBColumn;
    tbv: TcxGridDBBandedTableView;
    tbvNUBAIXA: TcxGridDBBandedColumn;
    tbvVLMULTA: TcxGridDBBandedColumn;
    tbvVLJURO: TcxGridDBBandedColumn;
    tbvVLBAIXA: TcxGridDBBandedColumn;
    tbvVLDESCONTO: TcxGridDBBandedColumn;
    tbvVLABATIMENTO: TcxGridDBBandedColumn;
    tbvVLDEVOLUCAO: TcxGridDBBandedColumn;
    tbvVLLIQUIDO: TcxGridDBBandedColumn;
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
    sdsbaixaCDUSUARIOI: TIntegerField;
    sdsbaixaCDUSUARIOA: TIntegerField;
    sdsbaixaCDCOMPUTADORI: TIntegerField;
    sdsbaixaCDCOMPUTADORA: TIntegerField;
    sdsbaixaTSINCLUSAO: TSQLTimeStampField;
    sdsbaixaTSALTERACAO: TSQLTimeStampField;
    cdsbaixaCDUSUARIOI: TIntegerField;
    cdsbaixaCDUSUARIOA: TIntegerField;
    cdsbaixaCDCOMPUTADORI: TIntegerField;
    cdsbaixaCDCOMPUTADORA: TIntegerField;
    cdsbaixaTSINCLUSAO: TSQLTimeStampField;
    cdsbaixaTSALTERACAO: TSQLTimeStampField;
    gbxextrato: TcxGroupBox;
    lblemissaoextrato: TLabel;
    lblTPEXTRATO: TLabel;
    lblCATEXTRATO: TLabel;
    lblEXTRATO: TLabel;
    pnl: TPanel;
    lbl2: TLabel;
    lblnumovbancario: TLabel;
    lbldshistorico: TLabel;
    lbl1: TLabel;
    cbxcdmovimentacao: TcxDBLookupComboBox;
    edtdtemissao: TcxDBDateEdit;
    edtnumovbancario: TcxDBTextEdit;
    edtdshistorico: TcxDBTextEdit;
    pnlbottom: TPanel;
    lblvllancamento: TLabel;
    lblDSEXTRATO: TLabel;
    btnok: TButton;
    CancelBtn: TButton;
    edtvllancamento: TcxDBCurrencyEdit;
    btnlink: TcxButton;
    edtdsextrato: TcxTextEdit;
    sdsbaixaCDNEGOCIACAOENTRADA: TIntegerField;
    sdsbaixaCDADNTCLIENTEDESTINO: TIntegerField;
    sdsbaixaVLCOMISSAO: TFMTBCDField;
    sdsbaixaPRCOMISSAO: TFloatField;
    sdsbaixaRZSOCIALAUTPAGTO: TStringField;
    sdsbaixaRZSOCIALDUPLICATA: TStringField;
    sdsbaixaNUSAIDA: TIntegerField;
    sdsbaixaNMTPCOBRANCADUPLICATA: TStringField;
    sdsbaixaNUENTRADA: TIntegerField;
    sdsbaixaNMTPCOBRANCAAUTPAGTO: TStringField;
    cdsbaixaCDNEGOCIACAOENTRADA: TIntegerField;
    cdsbaixaCDADNTCLIENTEDESTINO: TIntegerField;
    cdsbaixaVLCOMISSAO: TFMTBCDField;
    cdsbaixaPRCOMISSAO: TFloatField;
    cdsbaixaRZSOCIALAUTPAGTO: TStringField;
    cdsbaixaRZSOCIALDUPLICATA: TStringField;
    cdsbaixaNUSAIDA: TIntegerField;
    cdsbaixaNMTPCOBRANCADUPLICATA: TStringField;
    cdsbaixaNUENTRADA: TIntegerField;
    cdsbaixaNMTPCOBRANCAAUTPAGTO: TStringField;
    tbvRZSOCIALAUTPAGTO: TcxGridDBBandedColumn;
    tbvRZSOCIALDUPLICATA: TcxGridDBBandedColumn;
    tbvNUSAIDA: TcxGridDBBandedColumn;
    tbvNMTPCOBRANCADUPLICATA: TcxGridDBBandedColumn;
    tbvNUENTRADA: TcxGridDBBandedColumn;
    tbvNMTPCOBRANCAAUTPAGTO: TcxGridDBBandedColumn;
    lblcdconta: TLabel;
    cbxcdconta: TcxDBLookupComboBox;
    lblvlextrato: TLabel;
    gbxdsobservacao: TcxGroupBox;
    memdsobservacao: TcxDBMemo;
    edtDSNOMINAL: TcxDBTextEdit;
    lbldsnominal: TLabel;
    ckbboconciliado: TcxDBCheckBox;
    lblplconta: TLabel;
    edtnuplconta: TcxDBButtonEdit;
    txtnmplconta: TcxDBLabel;
    lbldtemissaoextrato: TLabel;
    lblNMTPEXTRATO: TLabel;
    lblNMCATEXTRATO: TLabel;
    lblNUEXTRATO: TLabel;
    edtVLEXTRATO: TcxCurrencyEdit;
    sdsCDPLCONTA: TIntegerField;
    sdsCDCNTCUSTO: TIntegerField;
    sdsCDMOVBANCARIODESTINO: TIntegerField;
    sdsCDCONTADESTINO: TIntegerField;
    sdsNUPLCONTA: TStringField;
    sdsARQUIVORETORNO: TBlobField;
    sdsNMPLCONTA: TStringField;
    cdsCDPLCONTA: TIntegerField;
    cdsCDCNTCUSTO: TIntegerField;
    cdsCDMOVBANCARIODESTINO: TIntegerField;
    cdsCDCONTADESTINO: TIntegerField;
    cdsNUPLCONTA: TStringField;
    cdsARQUIVORETORNO: TBlobField;
    cdsNMPLCONTA: TStringField;
    sdsCDEMPRESA: TLargeintField;
    sdsCDFORNECEDOR: TLargeintField;
    sdsCDCLIENTE: TLargeintField;
    sdsNUCNTCUSTO: TStringField;
    sdsbaixaCDEMPRESA: TLargeintField;
    sdsbaixaVLJUROSNRECEBIDO: TFMTBCDField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDFORNECEDOR: TLargeintField;
    cdsCDCLIENTE: TLargeintField;
    cdsNUCNTCUSTO: TStringField;
    cdsbaixaCDEMPRESA: TLargeintField;
    cdsbaixaVLJUROSNRECEBIDO: TFMTBCDField;
    procedure cdsbaixaNewRecord(DataSet: TDataSet);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsbaixaBeforePost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure cdsCDMOVIMENTACAOValidate(Sender: TField);
    procedure cdsbaixaAfterPost(DataSet: TDataSet);
    procedure cdsbaixaVLBAIXAValidate(Sender: TField);
    procedure cdsNUMOVBANCARIOValidate(Sender: TField);
    procedure btnlinkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdmovimentacaoEnter(Sender: TObject);
    procedure cdsDTEMISSAOValidate(Sender: TField);
    procedure ExportarGradeExcel(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cbxcdcontaEnter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure tbvNUBAIXAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsVLLANCAMENTOValidate(Sender: TField);
    procedure btnokClick(Sender: TObject);
    procedure cdsbaixaNUBAIXAValidate(Sender: TField);
    procedure cdsCDCONTAValidate(Sender: TField);
    procedure set_vlliquido(Sender: TField);
    procedure cdsbaixaCDAUTPAGTOValidate(Sender: TField);
    procedure cdsbaixaCDDUPLICATAValidate(Sender: TField);
    procedure cdsbaixaAfterDelete(DataSet: TDataSet);
    procedure cdsAfterOpen(DataSet: TDataSet);
    procedure edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsNUPLCONTAValidate(Sender: TField);
    procedure cdsNewRecord(DataSet: TDataSet);
  private { Private declarations }
    tipo, cdconta, codigo, stcaixa: string;
    movbancario : TMovBancario;
    duplicata   : TDuplicata;
    extrato     : TExtrato;
    procedure setrecord;
    procedure set_baixa_autpagto;
    procedure set_baixa_duplicata;
    procedure set_tela(tipo_, cdconta_, codigo_, stcaixa_:string);
    procedure set_ativar_extrato;
    procedure set_novo;
    procedure set_editar;
    procedure set_extrato;
    procedure set_stcaixa;
    procedure set_transferencia;
    procedure RecalcularJuros;
    procedure ConsistirDuplicidadeCheque;
    procedure ValidarContasPagar;
    procedure ValidarContasReceber;
    procedure ValidarContasReceberSaldo;
    procedure ValidarContasPagarSaldo;
    function  caixa_aberto(cdconta:string; dtemissao: TDate):Boolean;
    procedure verificar_documento_duplicata(tabela:string; sender: TField);
    procedure limpar_baixa;
    procedure Ler_extrato;
    procedure conta_obrigatorio;
    procedure movimentacao_obrigatorio;
    function get_tpbaixa: string;
    function get_color(valor1, valor2: Currency): TColor;
  public { Public declarations }
  end;

var
  frmmovbancario: Tfrmmovbancario;

function Gerar_movimento(tipo, cdconta:string; codigo:string=''; stcaixa:string=''):Boolean;

implementation

uses uDtmMain,
  uLocalizarDuplicata,
  uLocalizarAutPagto, ulocalizar;

{$R *.dfm}

function Gerar_movimento(tipo, cdconta:string;codigo:string=''; stcaixa:string=''):Boolean;
begin
  Result         := False;
  frmmovbancario := Tfrmmovbancario.create(nil);
  try
    frmmovbancario.set_tela(tipo, cdconta, codigo, stcaixa);
    if not ((frmmovbancario.ShowModal = mrok) and (stcaixa <> UpperCase(_fechado))) then
    begin
      Exit;
    end;
    if tipo = _extrato then
    begin
      frmmovbancario.extrato.salvar;
    end;
    if frmmovbancario.cdsBOCONCILIADO.IsNull and (frmmovbancario.cds.State = dsbrowse) then
    begin
      frmmovbancario.cds.Edit;
      frmmovbancario.cdsBOCONCILIADO.AsString := _n;
    end;
    if (frmmovbancario.cds.State = dsedit) or (frmmovbancario.cds.State = dsinsert) then
    begin
      frmmovbancario.cds.ApplyUpdates(0);
    end;
    result := True;
  finally
    frmmovbancario.Free;
  end;
end;

procedure Tfrmmovbancario.cdsbaixaNewRecord(DataSet: TDataSet);
begin
  cdsbaixacdbaixa.AsString        := GerarCodigo(_baixa);
  cdsbaixavlbaixa.AsCurrency      := 0;
  cdsbaixavlabatimento.AsCurrency := 0;
  cdsbaixavldesconto.AsCurrency   := 0;
  cdsbaixavldevolucao.AsCurrency  := 0;
  cdsbaixavlliquido.AsCurrency    := 0;
  cdsbaixavlmulta.AsCurrency      := 0;
  cdsbaixavljuro.AsCurrency       := 0;
end;

procedure Tfrmmovbancario.conta_obrigatorio;
begin
  if cdsCDCONTA.asstring <> '' then
  begin
    exit;
  end;
  cdsCDCONTA.FocusControl;
  messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_conta]), mtinformation, [mbok], 0);
  Abort;
end;

procedure Tfrmmovbancario.movimentacao_obrigatorio;
begin
  if cdsCDMOVIMENTACAO.asstring <> '' then
  begin
    exit;
  end;
  cdsCDMOVIMENTACAO.FocusControl;
  messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__movimentacao]), mtinformation, [mbok], 0);
  Abort;
end;

procedure Tfrmmovbancario.cdsBeforePost(DataSet: TDataSet);
begin
  conta_obrigatorio;
  movimentacao_obrigatorio;
  if movbancario.movimentacao.cdmovimentacao = 7 then
  begin
    consistirDuplicidadeCheque;
  end;
  if (dataset.State = dsinsert) and dataset.FieldByName(_cdmovbancario).IsNull then
  begin
    dataset.FieldByName(_cdmovbancario).AsInteger := QGerar.GerarCodigo(_movbancario);
  end;
  RegistraInformacao_(dataset);
end;

function Tfrmmovbancario.get_tpbaixa:string;
var
  vloriginal, vlsaldo: Currency;
begin
  vloriginal := 0;
  vlsaldo    := 0;
  if movbancario.movimentacao.cdtpmodulo = 4 then
  begin
    vloriginal := ValordoCodigo(_autpagto, cdsbaixacdautpagto.AsString, _vlautpagto);
    vlsaldo    := ValordoCodigo(_autpagto, cdsbaixacdautpagto.AsString, _vlsaldo);
  end
  else if movbancario.movimentacao.cdtpmodulo = 3 then
  begin
    vloriginal := valordocodigo(_duplicata, cdsbaixacdduplicata.AsString, _vlduplicata);
    vlsaldo    := valordocodigo(_duplicata, cdsbaixacdduplicata.AsString, _vlsaldo);
  end;
  if cdsbaixavlbaixa.AsCurrency = vloriginal then
  begin
    result := qregistro.CodigodoNome(_tpbaixa, UpperCase(_TOTAL))
  end
  else if cdsbaixavlbaixa.ascurrency + vlsaldo = vloriginal then
  begin
    result := qregistro.codigodonome(_tpbaixa, UpperCase(_final))
  end
  else
  begin
    result := qregistro.codigodonome(_tpbaixa, UpperCase(_PARCIAL));
  end;
end;

procedure Tfrmmovbancario.cdsbaixaBeforePost(DataSet: TDataSet);
begin
  cdsbaixaDTBAIXA.AsDateTime := cdsDTEMISSAO.AsDateTime;
  cdsbaixacdtpbaixa.AsString := get_tpbaixa;
  RegistraInformacao_(dataset);
end;

procedure Tfrmmovbancario.FormDestroy(Sender: TObject);
begin
  freeandnil(duplicata);
  freeandnil(movbancario);
end;

procedure Tfrmmovbancario.cdsCDMOVIMENTACAOValidate(Sender: TField);
var
  cdtpmodulo : integer;
begin
  cdtpmodulo := movbancario.movimentacao.cdtpmodulo;
  setrecord;
  if (tipo = _extrato) and (movbancario.movimentacao.tpmodulo.cdnatureza <> extrato.cdnatureza) then
  begin
    MessageDlg('Movimentação de tipo de operação ('+movbancario.movimentacao.tpmodulo.cdnatureza+') diferente do extrato ('+extrato.cdnatureza+').', mtInformation, [mbOK], 0);
    Sender.FocusControl;
    Abort;
  end;
  if ((cdtpmodulo = 3) and (movbancario.movimentacao.cdtpmodulo <> 3) and (cdsbaixa.RecordCount > 0)) or ((cdtpmodulo = 4) and (movbancario.movimentacao.cdtpmodulo <> 4) and (cdsbaixa.RecordCount > 0)) then
  begin
    limpar_baixa;
  end;
  cdsCDNATUREZA.AsString := movbancario.movimentacao.tpmodulo.cdnatureza;
  if movbancario.movimentacao.cdplconta <> 0 then
  begin
    cdsNUPLCONTA.AsString := NomedoCodigo(_plconta, inttostr(movbancario.movimentacao.cdplconta), _nunivel);
  end;
end;

function Tfrmmovbancario.get_color(valor1, valor2:Currency):TColor;
begin
  result := clBlue;
  if valor1 > valor2 then
  begin
    result := clGreen
  end
  else if valor1 < valor2 then
  begin
    result := clRed
  end;
end;

procedure Tfrmmovbancario.cdsbaixaAfterPost(DataSet: TDataSet);
begin
  if cdsbaixa.Aggregates.Items[0].Value = Null then
  begin
    cdsvllancamento.AsCurrency := 0;
    Exit;
  end;
  edtvlextrato.StyleDisabled.TextColor := get_color(edtvlextrato.Value, cdsbaixa.Aggregates.Items[0].Value);
  if tipo = _extrato then
  begin
    btnok.Enabled := (edtvlextrato.Value = cdsbaixa.Aggregates.Items[0].Value) and (not cdscdmovimentacao.IsNull);
  end;
  cdsvllancamento.AsCurrency := cdsbaixa.Aggregates.Items[0].Value;
end;

procedure Tfrmmovbancario.cdsbaixaVLBAIXAValidate(Sender: TField);
begin
  if movbancario.movimentacao.cdtpmodulo = 3 then
  begin
    ValidarContasReceberSaldo
  end
  else if movbancario.movimentacao.cdtpmodulo = 4 then
  begin
    ValidarContasPagarsaldo;
  end;
  set_vlliquido(Sender);
end;

procedure Tfrmmovbancario.setrecord;
  function makesql:string;
  begin
    result := 'select count(*) '+
              'from linkextrato '+
              'where cdempresa='+empresa.cdempresa.tostring+' '+
              'and cdmovimentacao='+cdscdmovimentacao.AsString+' '+
              'and cdtpextrato='+extrato.cdtpextrato+' '+
              'and cdcatextrato='+extrato.cdcatextrato;
  end;
begin
  movbancario.movimentacao.Select(cdsCDMOVIMENTACAO.asinteger);
  movbancario.movimentacao.tpmodulo.Select(movbancario.movimentacao.cdtpmodulo);

  lblnumovbancario.Visible := movbancario.movimentacao.cdmovimentacao = 7;
  edtnumovbancario.Visible := movbancario.movimentacao.cdmovimentacao = 7;

  lbldshistorico.Visible   := movbancario.movimentacao.bohistorico = _s;
  edtdshistorico.Visible   := movbancario.movimentacao.bohistorico = _s;

  gbxdsobservacao.Visible  := movbancario.movimentacao.boobservacao = _s;

  lbldsnominal.Visible     := movbancario.movimentacao.cdmovimentacao = 7;
  edtDSNOMINAL.Visible     := movbancario.movimentacao.cdmovimentacao = 7;

  lblplconta.Visible       := movbancario.LiberarPlanoContas;
  edtnuplconta.Visible     := movbancario.LiberarPlanoContas;
  txtnmplconta.Visible     := movbancario.LiberarPlanoContas;
  if movbancario.LiberarPlanoContas then
  begin
    pnl.Height := 80;
  end
  else
  begin
    pnl.Height := 40;
  end;

  grd.Visible := (movbancario.movimentacao.cdtpmodulo = 4) or (movbancario.movimentacao.cdtpmodulo = 3);

  if tipo <> _extrato then
  begin
    edtvllancamento.Enabled := (not grd.Visible) and (stcaixa <> UpperCase(_fechado));
  end;

  tbvRZSOCIALAUTPAGTO.Visible      := movbancario.movimentacao.cdtpmodulo = 4;
  tbvNUENTRADA.Visible             := movbancario.movimentacao.cdtpmodulo = 4;
  tbvNMTPCOBRANCAAUTPAGTO.Visible  := movbancario.movimentacao.cdtpmodulo = 4;

  tbvRZSOCIALDUPLICATA.Visible     := movbancario.movimentacao.cdtpmodulo = 3;
  tbvNUSAIDA.Visible               := movbancario.movimentacao.cdtpmodulo = 3;
  tbvNMTPCOBRANCADUPLICATA.Visible := movbancario.movimentacao.cdtpmodulo = 3;

  if tipo = _extrato then
  begin
    btnlink.Visible          := (not ((movbancario.movimentacao.cdtpmodulo = 3) or (movbancario.movimentacao.cdtpmodulo = 4))) and
                                (movbancario.movimentacao.cdmovimentacao <> 7) and
                                (not cdscdmovimentacao.IsNull) and (RetornaSQLInteger(makesql) = 0);
    lblDSEXTRATO.Visible     := btnlink.Visible;
    edtdsextrato.Visible     := btnlink.Visible;
    edtdsextrato.Text        := extrato.nmcatextrato;
    if not ((movbancario.movimentacao.cdtpmodulo = 3) or (movbancario.movimentacao.cdtpmodulo = 4)) then
    begin
      if extrato.cdnatureza = _D then
      begin
        cdsvllancamento.AsCurrency := extrato.vlpagamento
      end
      else
      begin
        cdsvllancamento.AsCurrency := extrato.vldeposito;
      end;
      cdsbaixa.EmptyDataSet;
      btnok.Enabled := not cdscdmovimentacao.IsNull;
    end
    else
    begin
      btnok.Enabled := false;
      cdsbaixaAfterPost(cdsbaixa);
    end;
  end;
end;

procedure Tfrmmovbancario.set_baixa_autpagto;
var
  codigo : integer;
begin
  codigo := Localizarautpagto('', _1);
  if codigo = 0 then
  begin
    exit;
  end;
  if cdsbaixa.State = dsbrowse then // verificar se já foi inserido
  begin
    cdsbaixa.Edit;
  end;
  cdsbaixanubaixa.AsString     := codigo.tostring;
  cdsbaixacdautpagto.AsInteger := codigo;
  cdsbaixa.Post;
end;

procedure Tfrmmovbancario.set_baixa_duplicata;
var
  codigo : integer;
begin
  codigo := LocalizarDuplicata('', _1);
  if codigo = 0 then
  begin
    Exit;
  end;
  if not duplicata.verificarSeNota55JaFoiEnviada(codigo) then
  begin
    messagedlg('Não é possível baixar contas a receber '+qregistro.StringdoCodigo(_duplicata, codigo, _nuduplicata)+' '+
               'de uma nota fiscal eletrônica que não tenha sido enviada.'#13+
               'Favor enviar a nota antes de baixar o contas a receber.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if cdsbaixa.State = dsbrowse then // verificar se já foi inserido
  begin
    cdsbaixa.Edit;
  end;
  cdsbaixanubaixa.asstring := qregistro.StringdoCodigo(_duplicata, codigo, _nuduplicata);
  cdsbaixacdduplicata.AsInteger := codigo;
  cdsbaixa.Post;
end;

procedure Tfrmmovbancario.cdsNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName(_vllancamento).AsCurrency := 0;
end;

procedure Tfrmmovbancario.cdsNUMOVBANCARIOValidate(Sender: TField);
begin
  if (Sender.AsString <> '') and movbancario.NumeroChequeDuplicado(cdscdconta.AsString, Sender.AsString, cdsCDMOVBANCARIO.AsString) then
  begin
    MessageDlg('Número de cheque duplicado.', mtInformation, [mbOK], 0);
    sender.FocusControl;
    Abort;
  end;
end;

procedure Tfrmmovbancario.btnlinkClick(Sender: TObject);
  function makesql:string;
  begin
    result := 'select count(*) '+
              'from linkextrato '+
              'where cdempresa='+empresa.cdempresa.tostring+' and cdmovimentacao='+cdscdmovimentacao.AsString+' '+
              'and cdtpextrato='+extrato.cdtpextrato+' and cdcatextrato='+extrato.cdcatextrato;
  end;
  function inserir_linkextrato:Boolean;
  begin
    result := ExecutaSQL('INSERT INTO LINKEXTRATO(CDLINKEXTRATO,CDMOVIMENTACAO,CDTPEXTRATO,CDCATEXTRATO,dshistorico,'+_sqlreg+
                          GerarCodigo(_link+_extrato)+','+cdscdmovimentacao.AsString+','+extrato.cdtpextrato+','+extrato.cdcatextrato+','+getnull(cdsDSHISTORICO.AsString, _string)+','+SQLRegistra);
  end;
begin
  if RetornaSQLInteger(makesql) > 0 then
  begin
    MessageDlg('Já existe este link cadastrado.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if inserir_linkextrato then
  begin
    MessageDlg('Link criado.', mtInformation, [mbOK], 0);
  end;
end;

procedure Tfrmmovbancario.FormCreate(Sender: TObject);
begin
  duplicata   := tduplicata.create;
  extrato     := TExtrato.create;
  movbancario := TMovBancario.create;
  pnl.Height  := 40;
  cbxcdmovimentacao.Properties.ListSource  := abrir_tabela(_movimentacao);
  cbxcdconta.Properties.ListSource         := abrir_tabela(_conta);
end;

procedure Tfrmmovbancario.cbxcdmovimentacaoEnter(Sender: TObject);
begin
  abrir_tabela(_movimentacao);
  colorenter(sender);
end;

procedure Tfrmmovbancario.cdsDTEMISSAOValidate(Sender: TField);
begin
  if Sender.AsDateTime = 0 then
  begin
    Exit;
  end;
  if not caixa_aberto(cdscdconta.AsString, Sender.AsDateTime) then
  begin
    MessageDlg('Caixa encontra-se fechado na data '+formatdatetime(_dd_mm_yyyy, sender.AsDatetime)+'.'#13'Altere a data para poder continuar.', mtInformation, [mbOK], 0);
    sender.Clear;
    sender.FocusControl;
    Abort;
  end;
  if sender.AsDateTime <> cdsbaixaDTBAIXA.AsDateTime then
  begin
    RecalcularJuros;
  end;
end;

procedure Tfrmmovbancario.ExportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure Tfrmmovbancario.set_tela(tipo_, cdconta_, codigo_, stcaixa_: string);
begin
  tipo    := tipo_;
  codigo  := codigo_;
  cdconta := cdconta_;
  stcaixa := stcaixa_;
  set_ativar_extrato;
  set_stcaixa;
  if tipo_ = _extrato then
  begin
    set_extrato
  end
  else if tipo_ = _novo then
  begin
    set_novo
  end
  else if tipo_ = _editar  then
  begin
    set_editar;
  end;
end;

procedure Tfrmmovbancario.set_ativar_extrato;
begin
  gbxextrato.Visible          := tipo = _extrato;
  lblTPEXTRATO.Visible        := tipo = _extrato;
  lblNMTPEXTRATO.Visible      := tipo = _extrato;
  lblNMCATEXTRATO.Visible     := tipo = _extrato;
  lblCATEXTRATO.Visible       := tipo = _extrato;
  lblNUEXTRATO.Visible        := tipo = _extrato;
  lblEXTRATO.Visible          := tipo = _extrato;
  lblvlextrato.Visible        := tipo = _extrato;
  edtvlextrato.Visible        := tipo = _extrato;
  lblemissaoextrato.Visible   := tipo = _extrato;
  lbldtemissaoextrato.Visible := tipo = _extrato;
end;

procedure Tfrmmovbancario.set_novo;
begin
  cds.Open;
  cds.Insert;
  if cdconta <> '' then
  begin
    cdsCDCONTA.AsString := cdconta;
  end;
  if caixa_aberto(cdsCDCONTA.AsString, dtbanco) then
  begin
    cdsDTEMISSAO.AsDateTime := DtBanco;
  end;
  cdsCDMOVBANCARIO.AsString  := GerarCodigo(_movbancario);
  cdsVLLANCAMENTO.AsCurrency := 0;
  cdsBOCONCILIADO.AsString   := _N;
end;

procedure Tfrmmovbancario.set_editar;
begin
  sds.Parambyname(_cdempresa).ASlargeInt     := empresa.cdempresa;
  sds.Parambyname(_cdmovbancario).AsString := codigo;
  cds.Open;
  caption := Maiuscula(_movimento+' '+__bancario)+' '+codigo;
  setrecord;
end;

procedure Tfrmmovbancario.set_extrato;
begin
  extrato.cdempresa := empresa.cdempresa;
  extrato.cdextrato := codigo;
  extrato.Ler;
  Ler_extrato;
  cds.Open;
  cds.Insert;
  extrato.boconciliado := _S;
  if extrato.VLPAGAMENTO > 0 then
  begin
    cdsVLPAGAMENTO.AsCurrency := extrato.vlpagamento;
  end
  else if extrato.vldeposito > 0 then
  begin
    cdsVLDEPOSITO.AsCurrency  := extrato.vldeposito;
  end;
  cdsCDMOVBANCARIO.AsString  := GerarCodigo(_movbancario);
  cdsCDCONTA.AsString        := cdconta;
  cdscdextrato.AsString      := extrato.cdextrato;
  cdscdnatureza.AsString     := extrato.cdnatureza;
  cdsDTEMISSAO.OnValidate    := nil;
  cdsdtemissao.AsDateTime    := extrato.dtemissao;
  cdsboconciliado.AsString   := _S;
  cdsvllancamento.AsCurrency := 0
end;

procedure Tfrmmovbancario.cbxcdcontaEnter(Sender: TObject);
begin
  abrir_tabela(_conta);
  colorenter(sender);
end;

procedure Tfrmmovbancario.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmmovbancario.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

constructor TExtrato.create;
begin
//
end;

procedure TExtrato.salvar;
 begin
  ExecutaSQL('UPDATE EXTRATO '+
              'SET dtemissao='+GetDtBanco(dtemissao)+
              ',nuextrato='+getnull(nuextrato)+
              ',cdnatureza='+getnull(cdnatureza, _string)+
              ',cdtpextrato='+getnull(cdtpextrato)+
              ',cdcatextrato='+getnull(cdcatextrato)+
              ',boconciliado='+getnull(boconciliado, _string)+
              ',vlextrato='+getcurrencys(vlextrato)+
              ',vlpagamento='+getcurrencys(vlpagamento)+
              ',vldeposito='+getcurrencys(vldeposito)+' '+
              'WHERE CDEMPRESA='+cdempresa.tostring+' AND CDEXTRATO='+cdextrato);
end;

procedure TExtrato.Ler;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create;
  try
    q.q.Open('SELECT EXTRATO.*'+
                   ',NMTPEXTRATO'+
                   ',NMCATEXTRATO '+
             'FROM EXTRATO '+
             'LEFT JOIN TPEXTRATO ON TPEXTRATO.CDTPEXTRATO = EXTRATO.CDTPEXTRATO AND TPEXTRATO.CDEMPRESA=EXTRATO.CDEMPRESA '+
             'LEFT JOIN CATEXTRATO ON CATEXTRATO.CDCATEXTRATO = EXTRATO.CDCATEXTRATO AND CATEXTRATO.CDEMPRESA=EXTRATO.CDEMPRESA '+
             'WHERE EXTRATO.CDEMPRESA='+cdempresa.tostring+' AND CDEXTRATO='+cdextrato);
    dtemissao    := q.q.fieldbyname(_dtemissao).AsDateTime;
    nmtpextrato  := q.q.fieldbyname(_nmtpextrato).AsString;
    nmcatextrato := q.q.fieldbyname(_nmcatextrato).AsString;
    nuextrato    := q.q.fieldbyname(_nuextrato).AsString;
    cdnatureza   := q.q.fieldbyname(_cdnatureza).AsString;
    cdtpextrato  := q.q.fieldbyname(_cdtpextrato).AsString;
    cdcatextrato := q.q.fieldbyname(_cdcatextrato).AsString;
    boconciliado := q.q.fieldbyname(_boconciliado).AsString;
    vlextrato    := q.q.fieldbyname(_vlextrato).AsCurrency;
    vlpagamento  := q.q.fieldbyname(_vlpagamento).AsCurrency;
    vldeposito   := q.q.fieldbyname(_vldeposito).AsCurrency;
  finally
    q.Free;
  end;
end;

procedure Tfrmmovbancario.tbvNUBAIXAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if (cdsBOCONCILIADO.AsString = _S) and cdsbaixa.ReadOnly then
  begin
    exit;
  end;
  if movbancario.movimentacao.cdtpmodulo = 3 then
  begin
    set_baixa_duplicata;
  end
  else if movbancario.movimentacao.cdtpmodulo = 4 then
  begin
    set_baixa_autpagto;
  end;
end;

procedure Tfrmmovbancario.cdsVLLANCAMENTOValidate(Sender: TField);
begin
  if cdsCDNATUREZA.AsString = _d then
  begin
    cdsVLPAGAMENTO.AsCurrency := cdsvllancamento.AsCurrency;
    cdsVLDEPOSITO.AsCurrency  := 0;
  end
  else
  begin
    cdsVLPAGAMENTO.AsCurrency := 0;
    cdsVLDEPOSITO.AsCurrency  := cdsvllancamento.AsCurrency;
  end;
end;

procedure Tfrmmovbancario.btnokClick(Sender: TObject);
begin
  if cbxcdconta.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_conta]), mtinformation, [mbok], 0);
    cbxcdconta.SetFocus;
    Abort;
  end;
  if cbxcdmovimentacao.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__movimentacao]), mtinformation, [mbok], 0);
    cbxcdmovimentacao.SetFocus;
    Abort;
  end;
  if grd.Visible and (cdsbaixa.RecordCount = 0)  then
  begin
    MessageDlg('Obrigatório lançamento de documento para baixa.', mtInformation, [mbOK], 0);
    grd.SetFocus;
    Abort;
  end;
  if edtvllancamento.Value = 0 then
  begin
    MessageDlg('Valor do movimento não pode ser zero.', mtInformation, [mbOK], 0);
    if edtvllancamento.Enabled then
    begin
      edtvllancamento.SetFocus;
    end;
    Abort;
  end;
  ModalResult := mrOk;
end;

procedure Tfrmmovbancario.RecalcularJuros;
  function makesql(tipo:string):string;
  begin
    result := 'select d.cdstduplicata' +
                    ',d.vlsaldo' +
                    ',c.nmcliente' +
                    ',d.cdduplicata' +
                    ',d.dtprorrogacao' +
                    ',d.prmoradiaria '+
              'from duplicata d ' +
              'left join cliente c on c.cdcliente=d.cdcliente and d.cdempresa=c.cdempresa '+
              'where d.cdempresa='+empresa.cdempresa.tostring+' and d.cdduplicata='+cdsbaixacdduplicata.asstring;
    if tipo = _autpagto then
    begin
      result := 'select a.cdstautpagto'+
                      ',a.vlsaldo' +
                      ',a.cdfornecedor' +
                      ',f.nmfornecedor' +
                      ',a.dshistorico'+
                      ',a.dtprorrogacao'+
                      ',a.prmoradiaria' +
                      ',a.cdautpagto'+
                      ',c.nmcntcusto '+
                'from autpagto a ' +
                'left join fornecedor f on f.cdfornecedor=a.cdfornecedor and a.cdempresa=f.cdempresa ' +
                'left join cntcusto c on c.cdcntcusto=a.cdcntcusto and c.cdempresa=a.cdempresa '+
                'where a.cdempresa='+empresa.cdempresa.tostring+' and a.cdautpagto='+cdsbaixaCDAUTPAGTO.asstring;
    end;
  end;
  function nao_tem_baixa_ou_contas_a_receber_ou_contas_a_pagar:Boolean;
  begin
    result := (cdsbaixa.RecordCount = 0) or ((cdsbaixa.fieldbyname(_cdduplicata).IsNull) and (cdsbaixa.fieldbyname(_cdautpagto).IsNull));
  end;
var
  vljurodocumento : currency;
  q : TClasseQuery;
  recno : integer;
begin
  if nao_tem_baixa_ou_contas_a_receber_ou_contas_a_pagar then
  begin
    exit;
  end;
  cdsbaixa.DisableControls;
  recno := cdsbaixa.RecNo;
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    cdsbaixa.First;
    frmprogressbar.gau.MaxValue := cdsbaixa.RecordCount;
    if frmprogressbar.gau.MaxValue > 0 then
    begin
      frmprogressbar.Show;
    end;
    while not cdsbaixa.Eof do
    begin
      frmprogressbar.pnl.Caption := 'Recalculando juros, aguarde...';
      frmprogressbar.gau.Progress := cdsbaixa.RecNo;
      Application.ProcessMessages;
      if not cdsbaixacdautpagto.isnull then
      begin
        q := TClasseQuery.create;
        try
          q.q.open(makesql(_autpagto));
          vljurodocumento            := movbancario.JuroDocumento(cdsdtemissao.asdatetime, q.q.fieldbyname(_dtprorrogacao).asdatetime, q.q.fieldbyname(_prmoradiaria).ascurrency, q.q.fieldbyname(_vlsaldo).ascurrency + cdsbaixavlbaixa.AsCurrency);
          if cdsbaixa.State = dsbrowse then
          begin
            cdsbaixa.Edit;
          end;
          cdsbaixavljuro.ascurrency  := vljurodocumento + movbancario.ValorSaldoJuros(_autpagto, cdsbaixacdautpagto.AsInteger, cdsbaixacdbaixa.asstring);
          cdsbaixadtbaixa.AsDatetime := cdsdtemissao.AsDatetime;
        finally
          q.free;
        end;
      end
      else if not cdsbaixacdduplicata.isnull then
      begin
        q := TClasseQuery.create;
        try
          q.q.Open(makesql(_duplicata));
          vljurodocumento                    := movbancario.JuroDocumento(cdsdtemissao.asdatetime, q.q.fieldbyname(_dtprorrogacao).asdatetime, q.q.fieldbyname(_prmoradiaria).ascurrency, q.q.fieldbyname(_vlsaldo).ascurrency + cdsbaixavlbaixa.AsCurrency);
          if cdsbaixa.State = dsbrowse then
          begin
            cdsbaixa.Edit;
          end;
          cdsbaixavljuro.ascurrency          := vljurodocumento + movbancario.ValorSaldoJuros(_duplicata, q.q.fieldbyname(_cdduplicata).AsInteger, cdsbaixacdbaixa.asstring);
          cdsbaixavljuronrecebido.AsCurrency := cdsbaixavljuro.ascurrency;
          cdsbaixadtbaixa.AsDateTime         := cdsdtemissao.AsDateTime;
        finally
          q.free;
        end;
      end;
      cdsbaixa.Next;
    end;
  finally
    cdsbaixa.RecNo := recno;
    cdsbaixa.EnableControls;
    freeandnil(frmprogressbar);
  end;
end;

procedure Tfrmmovbancario.ConsistirDuplicidadeCheque;
begin
  if cdsNUMOVBANCARIO.AsString = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Numero+' '+_do+' '+_Cheque]), mtinformation, [mbok], 0);
    cdsNUMOVBANCARIO.FocusControl;
    abort;
  end;
  if movbancario.numerochequeduplicado(cdsCDCONTA.asstring, cdsNUMOVBANCARIO.AsString, cdsCDMOVBANCARIO.asstring) then
  begin
    messagedlg('Número do cheque '+cdsNUMOVBANCARIO.AsString+' repetido!'#13'Digite outro número para continuar.', mtinformation, [mbok], 0);
    cdsNUMOVBANCARIO.FocusControl;
    abort;
  end;
end;

procedure Tfrmmovbancario.cdsbaixaNUBAIXAValidate(Sender: TField);
begin
  if movbancario.movimentacao.cdtpmodulo = 4 then
  begin
    ValidarContasPagar
  end
  else if movbancario.movimentacao.cdtpmodulo = 3 then
  begin
    validarcontasReceber;
  end;
end;

procedure Tfrmmovbancario.ValidarContasPagar;
var
  q : TClasseQuery;
  function get_rzsocialautpagto:string;
  begin
    result := q.q.fieldbyname(_nmfornecedor).Asstring;
    if q.q.fieldbyname(_nmfornecedor).isnull then
    begin
      result := q.q.fieldbyname(_dshistorico).Asstring;
    end;
  end;
begin
  if cdsbaixanubaixa.asstring = '' then
  begin
    Exit;
  end;
  q := TClasseQuery.create;
  try
    q.q.Open('select a.cdstautpagto'+
                  ',a.vlsaldo' +
                  ',a.cdfornecedor' +
                  ',f.nmfornecedor' +
                  ',e.nuentrada '+
                  ',a.dshistorico'+
                  ',a.dtprorrogacao'+
                  ',a.prmoradiaria' +
                  ',a.prmulta'+
                  ',a.cdautpagto '+
            'from autpagto a ' +
            'left join fornecedor f on f.cdfornecedor=a.cdfornecedor and a.cdempresa=f.cdempresa ' +
            'left join entrada e on e.cdempresa=a.cdempresa and e.cdentrada=a.cdentrada '+
            'where a.cdempresa='+empresa.cdempresa.tostring+' and a.cdautpagto='+cdsbaixanubaixa.asstring);
    if q.q.fieldbyname(_cdautpagto).Asinteger = 0 then // verificar se existe autorização de pagamento
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cdsbaixanubaixa.AsString, maiuscula(_contas+' '+_pagar)]), mterror, [mbok], 0);
      cdsbaixanubaixa.FocusControl;
      abort;
    end;
    if q.q.fieldbyname(_cdstautpagto).Asinteger = 2 then // verificar o status da autorização de pagamento
    begin
      messagedlg('Contas a Pagar '+cdsbaixanubaixa.asstring+' está no status QUITADA.', mtinformation, [mbok], 0);
      cdsbaixanubaixa.FocusControl;
      abort;
    end;
    // buscar os dados da autorização de pagamento
    cdsbaixaNUENTRADA.AsString := q.q.FieldByName(_nuentrada).AsString;
    cdsbaixacdautpagto.AsString       := cdsbaixanubaixa.asstring;
    cdsbaixavlbaixa.ascurrency        := q.q.fieldbyname(_vlsaldo).AsCurrency;
    cdsbaixavlliquido.ascurrency      := q.q.fieldbyname(_vlsaldo).AsCurrency;
    cdsbaixavlmulta.ascurrency        := roundto(q.q.fieldbyname(_vlsaldo).ascurrency * q.q.fieldbyname(_prmulta).AsFloat /100, -2);
    cdsbaixavljuro.ascurrency         := movbancario.JuroDocumento(cdsDTEMISSAO.AsDateTime, q.q.fieldbyname(_dtprorrogacao).Asdatetime, q.q.fieldbyname(_prmoradiaria).AsCurrency, cdsbaixavlbaixa.ascurrency);
    cdsbaixaRZSOCIALAUTPAGTO.asstring := get_rzsocialautpagto;
  finally
    q.free;
  end;
end;

procedure Tfrmmovbancario.ValidarContasReceber;
  function makesql:string;
  begin
    result := 'select d.cdstduplicata' +
                    ',d.vlsaldo' +
                    ',c.nmcliente' +
                    ',d.cdduplicata' +
                    ',S.NUSAIDA'+
                    ',d.prmulta'+
                    ',d.dtprorrogacao' +
                    ',s.nudocfiscalicms'+
                    ',s.nuchavenfe'+
                    ',d.prmoradiaria '+
              'from duplicata d ' +
              'left join cliente c on c.cdcliente=d.cdcliente and d.cdempresa=c.cdempresa ' +
              'left join saida s on s.cdempresa=d.cdempresa and s.cdsaida=d.cdsaida '+
              'where d.cdempresa='+empresa.cdempresa.tostring;
  end;
  function get_makesql:string;
  var
    codigo : integer;
  begin
    if movbancario.movimentacao.boduplicatanossonumero = _s then
    begin
      result := makesql+' and d.nunossonumero='+quotedstr(cdsbaixanubaixa.asstring);
      Exit;
    end;
    if cdsbaixacdduplicata.IsNull then
    begin
      codigo := duplicata.CodigoDuplicata(cdsbaixanubaixa.AsString);
    end
    else
    begin
      codigo := cdsbaixacdduplicata.asInteger;
    end;
    if codigo = -1 then
    begin
      abort;
    end;
    if codigo = 0 then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cdsbaixanubaixa.AsString, maiuscula(_contas+' '+_receber)]), mterror, [mbok], 0);
      cdsbaixanubaixa.FocusControl;
      abort;
    end;
    result := makesql+' and d.cdduplicata='+codigo.ToString;
  end;
var
  q : TClasseQuery;
  vljurodocumento : currency;
begin
  q := TClasseQuery.create;
  try
    q.q.Open(get_makesql);
    if q.q.fieldbyname(_cdduplicata).Asinteger = 0 then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cdsbaixanubaixa.AsString, maiuscula(_contas+' '+_receber)]), mterror, [mbok], 0);
      cdsbaixanubaixa.FocusControl;
      abort;
    end;
    if q.q.fieldbyname(_cdstduplicata).Asinteger = 2 then
    begin
      messagedlg('Contas a Receber '+cdsbaixanubaixa.AsString+' está no status QUITADA.', mtinformation, [mbok], 0);
      cdsbaixanubaixa.FocusControl;
      abort;
    end;
    if (q.q.FieldByName(_nudocfiscalicms).AsString = _55) and (q.q.FieldByName(_nuchavenfe).AsString = '') then
    begin
      messagedlg('Não é possível baixar contas a receber de uma nota fiscal eletrônica que não tenha sido enviada.'#13'Favor enviar a nota antes de baixar o contas a receber.', mtInformation, [mbOK], 0);
      cdsbaixanubaixa.FocusControl;
      abort;
    end;
    // buscar os dados da duplicata
    cdsbaixaNUSAIDA.AsString := q.q.FieldByName(_nusaida).AsString;
    cdsbaixacdduplicata.asstring       := q.q.fieldbyname(_cdduplicata).asstring;
    cdsbaixavlbaixa.Ascurrency         := q.q.fieldbyname(_vlsaldo).ascurrency;
    cdsbaixavlliquido.ascurrency       := q.q.fieldbyname(_vlsaldo).ascurrency;
    cdsbaixavlmulta.ascurrency         := roundto(q.q.fieldbyname(_vlsaldo).ascurrency * q.q.fieldbyname(_prmulta).AsFloat / 100, -2);
    cdsbaixarzsocialduplicata.asstring := q.q.fieldbyname(_nmcliente).asstring;
    vljurodocumento                    := movbancario.JuroDocumento(cdsDTEMISSAO.AsDateTime, q.q.fieldbyname(_dtprorrogacao).asdatetime, q.q.fieldbyname(_prmoradiaria).ascurrency, q.q.fieldbyname(_vlsaldo).ascurrency);
    cdsbaixavljuro.ascurrency          := vljurodocumento + movbancario.ValorSaldoJuros(_duplicata, q.q.fieldbyname(_cdduplicata).AsInteger);
    cdsbaixavljuronrecebido.AsCurrency := cdsbaixavljuro.ascurrency;
  finally
    q.free;
  end;
end;

procedure Tfrmmovbancario.ValidarContasReceberSaldo;
var
  q : TClasseQuery;
begin
  if cdsbaixaCDDUPLICATA.IsNull then
  begin
    exit;
  end;
  q := TClasseQuery.create;
  try
    q.q.Open('select vlsaldo from duplicata where cdempresa='+empresa.cdempresa.tostring+' and cdduplicata='+cdsbaixaCDDUPLICATA.AsString);
    if cdsbaixaVLBAIXA.AsCurrency > q.q.fieldbyname(_vlsaldo).ascurrency then
    begin
      messagedlg('Valor da Baixa ('+formatfloat(__moeda, cdsbaixaVLBAIXA.AsCurrency)+') '+
                 'maior que o valor do saldo ('+formatfloat(__moeda, q.q.fieldbyname(_vlsaldo).AsCurrency)+') do documento '+ cdsbaixaNUBAIXA.asstring+'.'#13+
                 'Digite um valor menor ou igual a '+formatfloat(__moeda, q.q.fieldbyname(_vlsaldo).AsCurrency), mtinformation, [mbok], 0);
      cdsbaixaVLBAIXA.AsCurrency := q.q.fieldbyname(_vlsaldo).ascurrency;
      cdsbaixaVLBAIXA.FocusControl;
      abort;
    end;
  finally
    q.free;
  end;
end;

procedure Tfrmmovbancario.ValidarContasPagarSaldo;
var
  q : TClasseQuery;
begin
  if cdsbaixaCDAUTPAGTO.IsNull then
  begin
    exit;
  end;
  q := TClasseQuery.create;
  try
    q.q.Open('select vlsaldo from autpagto where cdempresa='+empresa.cdempresa.tostring+' and cdautpagto='+cdsbaixaCDAUTPAGTO.AsString);
    if cdsbaixaVLBAIXA.AsCurrency > q.q.fieldbyname(_vlsaldo).ascurrency then
    begin
      messagedlg('Valor da Baixa ('+formatfloat(__moeda, cdsbaixaVLBAIXA.AsCurrency)+') '+
                  'maior que o valor do saldo ('+formatfloat(__moeda, q.q.fieldbyname(_VLSALDO).AsCurrency)+') do documento '+ cdsbaixaNUBAIXA.asstring+'.'+
                  #13'Digite um valor menor ou igual a '+formatfloat(__moeda, q.q.fieldbyname(_VLSALDO).AsCurrency), mtinformation, [mbok], 0);
      cdsbaixaVLBAIXA.AsCurrency := q.q.fieldbyname(_vlsaldo).ascurrency;
      cdsbaixaVLBAIXA.FocusControl;
      abort;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure Tfrmmovbancario.set_stcaixa;
begin
  set_transferencia;
  cbxcdconta.Enabled        := stcaixa <> UpperCase(_fechado);
  edtdtemissao.Enabled      := stcaixa <> UpperCase(_fechado);
  cbxcdmovimentacao.Enabled := stcaixa <> UpperCase(_fechado);
  edtnumovbancario.Enabled  := stcaixa <> UpperCase(_fechado);
  edtdshistorico.Enabled    := stcaixa <> UpperCase(_fechado);
  edtDSNOMINAL.Enabled      := stcaixa <> UpperCase(_fechado);
  ckbboconciliado.Enabled   := stcaixa <> UpperCase(_fechado);
  edtnuplconta.Enabled      := stcaixa <> UpperCase(_fechado);
  grd.Enabled               := stcaixa <> UpperCase(_fechado);
  gbxdsobservacao.Enabled   := stcaixa <> UpperCase(_fechado);
  edtvllancamento.Enabled   := stcaixa <> UpperCase(_fechado);
end;

function Tfrmmovbancario.caixa_aberto(cdconta: string; dtemissao: TDate): Boolean;
  function makesql:string;
  begin
    result := 'select count(*) from contafechada where cdempresa='+empresa.cdempresa.tostring+' and cdconta='+cdconta+' and dtemissao='+getdtbanco(dtemissao);
  end;
begin
  result    := True;
  if (cdconta = '') or (dtemissao = 0) then
  begin
    Exit;
  end;
  result := RetornaSQLInteger(makesql) = 0;
end;

procedure Tfrmmovbancario.cdsCDCONTAValidate(Sender: TField);
begin
  if not caixa_aberto(sender.AsString, cdsdtemissao.AsDateTime) then
  begin
    MessageDlg('Caixa encontra-se fechado na data '+formatdatetime(_dd_mm_yyyy, cdsdtemissao.AsDatetime)+'.', mtInformation, [mbOK], 0);
    sender.Clear;
    sender.FocusControl;
    Abort;
  end;
  ckbboconciliado.Enabled := NomedoCodigo(_conta, sender.AsString,_cdtpconta) = _2;
  if (not ckbboconciliado.Enabled) and ckbboconciliado.checked then
  begin
    ckbboconciliado.checked := False;
  end;
end;

procedure Tfrmmovbancario.set_vlliquido(Sender: TField);
begin
  cdsbaixaVLLIQUIDO.AsCurrency := cdsbaixaVLBAIXA.AsCurrency + (cdsbaixaVLMULTA.AsCurrency + cdsbaixaVLJURO.AsCurrency) - (cdsbaixaVLDESCONTO.AsCurrency + cdsbaixaVLABATIMENTO.AsCurrency + cdsbaixaVLDEVOLUCAO.AsCurrency);
end;

procedure Tfrmmovbancario.cdsbaixaCDAUTPAGTOValidate(Sender: TField);
begin
  verificar_documento_duplicata(_autpagto, Sender);
end;

procedure Tfrmmovbancario.verificar_documento_duplicata(tabela: string; sender: TField);
var
  c : TClientDataSet;
begin
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cdsbaixa, false);
    c.First;
    while not c.Eof do
    begin
      if c.FieldByName(_cd+tabela).AsString = Sender.AsString then
      begin
        MessageDlg('Documento duplicado.', mtInformation, [mbOK], 0);
        Abort;
      end;
      c.Next;
    end;
  finally
    freeandnil(c);
  end;
end;

procedure Tfrmmovbancario.cdsbaixaCDDUPLICATAValidate(Sender: TField);
begin
  verificar_documento_duplicata(_duplicata, Sender);
end;

procedure Tfrmmovbancario.set_transferencia;
var
  cdmovimentacao : string;
begin
  if codigo = '' then
  begin
    Exit;
  end;
  cdmovimentacao := NomedoCodigo(_movbancario, codigo, _cdmovimentacao);
  if (cdmovimentacao = _15) or (cdmovimentacao = _16) then
  begin
    //stcaixa := UpperCase(_fechado);
    cbxcdmovimentacao.Properties.ListSource := abrir_tabela(_movimentacao);
  end;
end;

procedure Tfrmmovbancario.limpar_baixa;
begin
  cdsbaixa.First;
  while not cdsbaixa.Eof do
  begin
    cdsbaixa.Delete;
  end;
end;

procedure Tfrmmovbancario.cdsbaixaAfterDelete(DataSet: TDataSet);
begin
  if (cds.State <> dsedit) or (cds.State = dsinsert) then
  begin
    cds.Edit;
  end;
  if cdsbaixa.Aggregates.Items[0].Value = Null then
  begin
    cdsvllancamento.AsCurrency := 0;
    Exit;
  end;
  cdsvllancamento.AsCurrency := cdsbaixa.Aggregates.Items[0].Value;
end;

procedure Tfrmmovbancario.Ler_extrato;
begin
  lbldtemissaoextrato.Caption := FormatDateTime(_dd_mm_yyyy, extrato.dtemissao);
  lblNMTPEXTRATO.Caption      := extrato.nmtpextrato;
  lblNMCATEXTRATO.Caption     := extrato.nmcatextrato;
  lblNUEXTRATO.Caption        := extrato.nuextrato;
  if extrato.VLPAGAMENTO > 0 then
  begin
    edtvlextrato.Value := extrato.vlpagamento
  end
  else if extrato.vldeposito  > 0 then
  begin
    edtvlextrato.Value := extrato.vldeposito;
  end;
end;

procedure Tfrmmovbancario.cdsAfterOpen(DataSet: TDataSet);
begin
  cds.ReadOnly      := cdsBOCONCILIADO.AsString = _S;
  cdsbaixa.ReadOnly := cdsBOCONCILIADO.AsString = _S;
end;

procedure Tfrmmovbancario.edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnuplcontaPropertiesButtonClick(sender, 0);
  end;
end;

procedure Tfrmmovbancario.edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : string;
begin
  if cds.ReadOnly then
  begin
    exit;
  end;
  //if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  //begin
    //Exit;
  //end;
  cd := Localizar( _plconta, _nunivel, _nmplconta, 'Plano Conta', 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  if cds.state = dsBrowse then
  begin
    cds.edit;
  end;
  cds.FieldByName(_NUPLCONTA).AsString := cd;
end;

procedure Tfrmmovbancario.cdsNUPLCONTAValidate(Sender: TField);
begin
  if sender.AsString = '' then
  begin
    cdsCDPLCONTA.Clear;
    cdsNMPLCONTA.Clear;
    exit;
  end;
  if not codigoexiste( _plconta, _nunivel, _string, sender.AsString) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_plano+' '+_contas)]), mterror, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsCDPLCONTA.AsString := CodigodoCampo( _plconta, sender.AsString, _nunivel);
  cdsNMPLCONTA.AsString := Nomedocodigo( _plconta, cdsCDPLCONTA.AsString);
end;

end.
