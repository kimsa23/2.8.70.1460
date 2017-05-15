unit uanalisecritica;

interface

uses
  System.Actions, System.UITypes,
  forms, dialogs, sysutils, Mask, Classes, ExtCtrls, Buttons, StdCtrls, ComCtrls,
  Menus, Controls,
  FMTBcd, Provider, DBClient, sqlexpr, DB,
  uexportarexcel, ustrings, uregistro, uconstantes, udatahora,
  ulocalizarcliente,
  classeregistrainformacao, classegerar, classeform, classeempresa, classeretornasql,
  classeaplicacao, classequery, classeorcamento, classeRegistro,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxButtons, cxLabel, cxCheckListBox,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxMemo, cxDBEdit,
  cxCalendar, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, cxGridBandedTableView,
  cxGridDBBandedTableView, cxNavigator, cxSplitter, dxBarBuiltInMenu,
  cxCalc;

type
  Tfrmdlganalisecritica = class(TForm)
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    cds: TClientDataSet;
    cdsdetail: TClientDataSet;
    dts: TDataSource;
    dtsdetail: TDataSource;
    sds: TSQLDataSet;
    sdsdetail: TSQLDataSet;
    dsp: TDataSetProvider;
    dts1: TDataSource;
    tbv: TcxGridDBBandedTableView;
    tbvBORESPOSTA: TcxGridDBBandedColumn;
    tbvNMTPCRITERIOIQF: TcxGridDBBandedColumn;
    sdsCDANALISECRITICA: TIntegerField;
    sdsCDSTANALISECRITICA: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsCDORCAMENTO: TIntegerField;
    sdsDSOBSERVACAO: TBlobField;
    sdsDTEMISSAO: TDateField;
    sdsdetailCDITANALISECRITICA: TIntegerField;
    sdsdetailCDANALISECRITICA: TIntegerField;
    sdsdetailCDTPCRITERIOORCAMENTO: TIntegerField;
    sdsdetailBORESPOSTA: TStringField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    sdsdetailNMTPCRITERIOORCAMENTO: TStringField;
    cdsCDANALISECRITICA: TIntegerField;
    cdsCDSTANALISECRITICA: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsCDORCAMENTO: TIntegerField;
    cdsDSOBSERVACAO: TBlobField;
    cdsDTEMISSAO: TDateField;
    cdssdsdetail: TDataSetField;
    cdsdetailCDITANALISECRITICA: TIntegerField;
    cdsdetailCDANALISECRITICA: TIntegerField;
    cdsdetailCDTPCRITERIOORCAMENTO: TIntegerField;
    cdsdetailBORESPOSTA: TStringField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailNMTPCRITERIOORCAMENTO: TStringField;
    pnlrodape: TPanel;
    btnok: TcxButton;
    btncancelar: TcxButton;
    pnltop: TPanel;
    lbl1: TLabel;
    edtdtemissao: TcxDBDateEdit;
    lbldocumento: TLabel;
    cbxcdstanalisecritica: TcxDBLookupComboBox;
    lbl3: TLabel;
    memdsobservacao: TcxDBMemo;
    sdsitanalisecriticaresposta: TSQLDataSet;
    cdsitanalisecriticaresposta: TClientDataSet;
    dtsitanaliscriticaresposta: TDataSource;
    dts3: TDataSource;
    sdsitanalisecriticarespostaCDITANALISECRITICARESPOSTA: TIntegerField;
    sdsitanalisecriticarespostaCDITANALISECRITICA: TIntegerField;
    sdsitanalisecriticarespostaCDITTPCRITERIOORCAMENTO: TIntegerField;
    sdsitanalisecriticarespostaCDITTPRESPOSTA: TIntegerField;
    sdsitanalisecriticarespostaCDUSUARIOI: TIntegerField;
    sdsitanalisecriticarespostaCDUSUARIOA: TIntegerField;
    sdsitanalisecriticarespostaCDCOMPUTADORI: TIntegerField;
    sdsitanalisecriticarespostaCDCOMPUTADORA: TIntegerField;
    sdsitanalisecriticarespostaTSINCLUSAO: TSQLTimeStampField;
    sdsitanalisecriticarespostaTSALTERACAO: TSQLTimeStampField;
    sdsitanalisecriticarespostaNMITTPRESPOSTA: TStringField;
    sdsitanalisecriticarespostaNMITTPCRITERIOORCAMENTO: TStringField;
    cdsdetailsdsitanalisecriticaresposta: TDataSetField;
    cdsitanalisecriticarespostaCDITANALISECRITICARESPOSTA: TIntegerField;
    cdsitanalisecriticarespostaCDITANALISECRITICA: TIntegerField;
    cdsitanalisecriticarespostaCDITTPCRITERIOORCAMENTO: TIntegerField;
    cdsitanalisecriticarespostaCDITTPRESPOSTA: TIntegerField;
    cdsitanalisecriticarespostaCDUSUARIOI: TIntegerField;
    cdsitanalisecriticarespostaCDUSUARIOA: TIntegerField;
    cdsitanalisecriticarespostaCDCOMPUTADORI: TIntegerField;
    cdsitanalisecriticarespostaCDCOMPUTADORA: TIntegerField;
    cdsitanalisecriticarespostaTSINCLUSAO: TSQLTimeStampField;
    cdsitanalisecriticarespostaTSALTERACAO: TSQLTimeStampField;
    cdsitanalisecriticarespostaNMITTPRESPOSTA: TStringField;
    cdsitanalisecriticarespostaNMITTPCRITERIOORCAMENTO: TStringField;
    pgc: TcxPageControl;
    tbspergunta: TcxTabSheet;
    grditanalisecriticaresposta: TcxGrid;
    tbvitanalisecriticaresposta: TcxGridDBTableView;
    tbvitanalisecriticarespostaNMITTPCRITERIOORCAMENTO: TcxGridDBColumn;
    tbvitanalisecriticarespostaCDITTPRESPOSTA: TcxGridDBColumn;
    tbvitanalisecriticarespostaNMITTPRESPOSTA: TcxGridDBColumn;
    grditanalisecriticarespostaLevel1: TcxGridLevel;
    tbsfuncionario: TcxTabSheet;
    sdsitanalisecriticafuncionario: TSQLDataSet;
    cdsitanalisecriticafuncionario: TClientDataSet;
    dtsitanalisecriticafuncionario: TDataSource;
    sdsitanalisecriticafuncionarioCDITANALISECRITICAFUNCIONARIO: TIntegerField;
    sdsitanalisecriticafuncionarioCDUSUARIOI: TIntegerField;
    sdsitanalisecriticafuncionarioCDUSUARIOA: TIntegerField;
    sdsitanalisecriticafuncionarioCDCOMPUTADORI: TIntegerField;
    sdsitanalisecriticafuncionarioCDCOMPUTADORA: TIntegerField;
    sdsitanalisecriticafuncionarioCDFUNCIONARIO: TIntegerField;
    sdsitanalisecriticafuncionarioCDITANALISECRITICA: TIntegerField;
    sdsitanalisecriticafuncionarioTSINCLUSAO: TSQLTimeStampField;
    sdsitanalisecriticafuncionarioTSALTERACAO: TSQLTimeStampField;
    sdsitanalisecriticafuncionarioDTEMISSAO: TDateField;
    cdsdetailsdsitanalisecriticafuncionario: TDataSetField;
    cdsitanalisecriticafuncionarioCDITANALISECRITICAFUNCIONARIO: TIntegerField;
    cdsitanalisecriticafuncionarioCDUSUARIOI: TIntegerField;
    cdsitanalisecriticafuncionarioCDUSUARIOA: TIntegerField;
    cdsitanalisecriticafuncionarioCDCOMPUTADORI: TIntegerField;
    cdsitanalisecriticafuncionarioCDCOMPUTADORA: TIntegerField;
    cdsitanalisecriticafuncionarioCDFUNCIONARIO: TIntegerField;
    cdsitanalisecriticafuncionarioCDITANALISECRITICA: TIntegerField;
    cdsitanalisecriticafuncionarioTSINCLUSAO: TSQLTimeStampField;
    cdsitanalisecriticafuncionarioTSALTERACAO: TSQLTimeStampField;
    cdsitanalisecriticafuncionarioDTEMISSAO: TDateField;
    tbvfuncionario: TcxGridDBTableView;
    grdfuncionarioLevel1: TcxGridLevel;
    grdfuncionario: TcxGrid;
    tbvfuncionarioCDFUNCIONARIO: TcxGridDBColumn;
    tbvfuncionarioDTEMISSAO: TcxGridDBColumn;
    sdsCDITORCAMENTO: TIntegerField;
    cdsCDITORCAMENTO: TIntegerField;
    sdsitanalisecriticarespostaDTCOTACAO: TDateField;
    cdsitanalisecriticarespostaDTCOTACAO: TDateField;
    tbvitanalisecriticarespostaVLUNITARIO: TcxGridDBColumn;
    tbvitanalisecriticarespostaDTCOTACAO: TcxGridDBColumn;
    cdsitanalisecriticarespostaVLUNITARIO: TFMTBCDField;
    sdsitanalisecriticarespostaVLUNITARIO: TFMTBCDField;
    sdsitanalisecriticarespostaBOPOSITIVO: TStringField;
    cdsitanalisecriticarespostaBOPOSITIVO: TStringField;
    sdsitanalisecriticarespostaBODATA: TStringField;
    sdsitanalisecriticarespostaBOVALOR: TStringField;
    cdsitanalisecriticarespostaBODATA: TStringField;
    cdsitanalisecriticarespostaBOVALOR: TStringField;
    sdsitanalisecriticarespostaCDTPRESPOSTA: TIntegerField;
    cdsitanalisecriticarespostaCDTPRESPOSTA: TIntegerField;
    sdsCDEMPRESA: TLargeintField;
    sdsdetailCDEMPRESA: TLargeintField;
    sdsitanalisecriticarespostaCDEMPRESA: TLargeintField;
    sdsitanalisecriticafuncionarioCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsdetailCDEMPRESA: TLargeintField;
    cdsitanalisecriticarespostaCDEMPRESA: TLargeintField;
    cdsitanalisecriticafuncionarioCDEMPRESA: TLargeintField;
    procedure btnOkClick(Sender: TObject);
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsdetailBeforePost(DataSet: TDataSet);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsitanalisecriticarespostaBeforePost(DataSet: TDataSet);
    procedure cdsitanalisecriticarespostaNewRecord(DataSet: TDataSet);
    procedure tbvitanalisecriticarespostaCDITTPRESPOSTAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsitanalisecriticarespostaCDITTPRESPOSTAValidate(Sender: TField);
    procedure cdsitanalisecriticafuncionarioBeforePost(DataSet: TDataSet);
    procedure cdsitanalisecriticafuncionarioNewRecord(DataSet: TDataSet);
  private   { Private declarations }
    cditorcamento, cdorcamento: string;
    procedure preencherCriterio;
    procedure PreencherResposta;
    function  resposta_pertence_a_pergunta(cdittpresposta, cdittpcriterioorcamento:string):Boolean;
    function  makesqlanalisecritica:string;
    function  makesqlitanalisecritica:string;
    procedure set_sqldataset;
    procedure set_caption;
  public    { Public declarations }
  end;

function Analise_Critica(codigo:string; cditcodigo: string=''):boolean;

var
  frmdlganalisecritica: Tfrmdlganalisecritica;

implementation

uses uMain, uDtmMain, ulocalizar;

{$R *.DFM}

function Analise_Critica(codigo:string; cditcodigo: string=''):boolean;
var
  orcamento : TOrcamento;
begin
  result := False;
  frmdlganalisecritica := tfrmdlganalisecritica.Create(application);
  orcamento := torcamento.create;
  try
    with frmdlganalisecritica do
    begin
      cdorcamento   := codigo;
      cditorcamento := cditcodigo;
      set_sqldataset;
      if showmodal = mrok then
      begin
        cds.ApplyUpdates(0);
        if cditorcamento <> '' then
        begin
          orcamento.calcular_acrescimo_analise_critica(cditorcamento);
        end;
        result := true;
      end;
    end;
  finally
    freeandnil(frmdlganalisecritica);
    orcamento.Free;
  end;
end;

procedure Tfrmdlganalisecritica.btnOkClick(Sender: TObject);
begin
  if cbxcdstanalisecritica.Text = '' then
  begin
    MessageDlg('Avalição é um campo obrigatório.', mtInformation, [mbOK], 0);
    cbxcdstanalisecritica.SetFocus;
    Abort;
  end;
  modalresult := mrok;
end;

procedure Tfrmdlganalisecritica.cdsdetailNewRecord(DataSet: TDataSet);
begin
  cdsdetailCDITANALISECRITICA.AsString := GerarCodigo(_itanalisecritica);
  cdsdetailBORESPOSTA.AsString         := _s;
end;

procedure Tfrmdlganalisecritica.cdsNewRecord(DataSet: TDataSet);
begin
  cdsCDANALISECRITICA.AsString := GerarCodigo(_analise+_critica);
end;

procedure Tfrmdlganalisecritica.cdsdetailBeforePost(DataSet: TDataSet);
begin
  RegistraInformacao_(cdsdetail);
end;

procedure Tfrmdlganalisecritica.cdsBeforePost(DataSet: TDataSet);
begin
  RegistraInformacao_(cds);
end;

procedure Tfrmdlganalisecritica.preencherCriterio;
var
  q : Tclassequery;
begin
  q := Tclassequery.Create;
  try
    q.q.sql.text   := 'select cdtpcriterioORCAMENTO,nmtpcriterioORCAMENTO from tpcriterioORCAMENTO where CDEMPRESA='+empresa.cdempresa.tostring+' AND boativo=''S''';
    q.q.Open;
    while not q.q.Eof do
    begin
      cdsdetail.Insert;
      cdsdetailCDTPCRITERIOORCAMENTO.AsString := q.q.Fields[0].AsString;
      cdsdetailnmTPCRITERIOORCAMENTO.AsString := q.q.Fields[1].AsString;
      cdsdetail.Post;
      PreencherResposta;
      q.q.Next;
    end;
  finally
    q.free;
  end;
end;

procedure Tfrmdlganalisecritica.FormShow(Sender: TObject);
begin
  sds.ParamByName(_cdempresa).ASlargeInt   := empresa.cdempresa;
  if cditorcamento <> '' then sds.ParamByName(_cditorcamento).AsString := cditorcamento
                         else sds.ParamByName(_cdorcamento).AsString   := cdorcamento;
  cds.Open;
  if cds.RecordCount = 0 then
  begin
    cds.Insert;
    if cditorcamento <> '' then cdsCDITORCAMENTO.AsString := cditorcamento
                           else cdsCDORCAMENTO.AsString := cdorcamento;
    cdsDTEMISSAO.AsDateTime := DtBanco;
    preencherCriterio;
  end;
  if cditorcamento <> '' then
  begin
    set_caption;
  end;
end;

procedure Tfrmdlganalisecritica.FormCreate(Sender: TObject);
begin
  cbxcdstanalisecritica.Properties.ListSource                                    := abrir_tabela(_stanalisecritica);
  TcxLookupComboBoxProperties(tbvfuncionarioCDFUNCIONARIO.Properties).ListSource := abrir_tabela(_funcionario);
end;

procedure Tfrmdlganalisecritica.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure Tfrmdlganalisecritica.PreencherResposta;
  function makesql:string;
  begin
    result := 'SELECT CDITTPCRITERIOORCAMENTO,NMITTPCRITERIOORCAMENTO,BODATA,BOVALOR,CDTPRESPOSTA '+
              'FROM ITTPCRITERIOORCAMENTO '+
              'WHERE CDEMPRESA='+empresa.cdempresa.tostring+' AND boativar=''S'' and CDTPCRITERIOORCAMENTO='+cdsdetailCDTPCRITERIOORCAMENTO.AsString;
  end;
var
  q : Tclassequery;
begin
  q := Tclassequery.Create;
  try
    q.q.sql.text := makesql;
    q.q.Open;
    while not q.q.Eof do
    begin
      cdsitanalisecriticaresposta.Insert;
      cdsitanalisecriticarespostaCDITTPCRITERIOORCAMENTO.AsString := q.q.Fields[0].AsString;
      cdsitanalisecriticarespostaNMITTPCRITERIOORCAMENTO.AsString := q.q.Fields[1].AsString;
      cdsitanalisecriticarespostaBODATA.AsString                  := q.q.Fields[2].AsString;
      cdsitanalisecriticarespostaBOVALOR.AsString                 := q.q.Fields[3].AsString;
      cdsitanalisecriticarespostaCDTPRESPOSTA.AsString            := q.q.Fields[4].AsString;
      cdsitanalisecriticaresposta.Post;
      q.q.Next;
    end;
  finally
    q.free;
  end;
end;

procedure Tfrmdlganalisecritica.cdsitanalisecriticarespostaBeforePost(DataSet: TDataSet);
begin
  if cdsitanalisecriticarespostaCDITTPRESPOSTA.IsNull then
  begin
    cdsitanalisecriticarespostaVLUNITARIO.Clear;
    cdsitanalisecriticarespostaDTCOTACAO.Clear;
  end;
  if cdsitanalisecriticarespostaBOPOSITIVO.AsString = _s then
  begin
    if (cdsitanalisecriticarespostaVLUNITARIO.AsCurrency <= 0) and (cdsitanalisecriticarespostaBOVALOR.AsString = _S) then
    begin
      MessageDlg('Valor de Acréscimo é um campo obrigatório.', mtInformation, [mbOK], 0);
      Abort;
    end;
    if cdsitanalisecriticarespostaDTCOTACAO.IsNull and (cdsitanalisecriticarespostaBODATA.AsString = _s) then
    begin
      MessageDlg('Data da Cotação é um campo obrigatório.', mtInformation, [mbOK], 0);
      Abort;
    end;
  end
  else
  begin
    cdsitanalisecriticarespostaVLUNITARIO.Clear;
    cdsitanalisecriticarespostaDTCOTACAO.Clear;
  end;
  RegistraInformacao_(cdsitanalisecriticaresposta);
end;

procedure Tfrmdlganalisecritica.cdsitanalisecriticarespostaNewRecord(DataSet: TDataSet);
begin
  cdsitanalisecriticarespostaCDITANALISECRITICARESPOSTA.AsString := GerarCodigo(_ITANALISECRITICARESPOSTA);
end;

procedure Tfrmdlganalisecritica.tbvitanalisecriticarespostaCDITTPRESPOSTAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd: string;
begin
  cd := Localizar(_ittpresposta, 'Tipo de Resposta','SELECT CDITTPRESPOSTA,NMITTPRESPOSTA FROM ITTPRESPOSTA WHERE CDEMPRESA='+empresa.cdempresa.tostring+' and cdtpresposta='+cdsitanalisecriticaresposta.fieldbyname(_cdtpresposta).AsString);
  if cd = '' then
  begin
    Exit;
  end;
  if cdsitanalisecriticaresposta.State = dsbrowse then
  begin
    cdsitanalisecriticaresposta.Edit;
  end;
  cdsitanalisecriticarespostaCDITTPRESPOSTA.AsString := cd;
end;

procedure Tfrmdlganalisecritica.cdsitanalisecriticarespostaCDITTPRESPOSTAValidate(Sender: TField);
begin
  if Sender.IsNull then
  begin
    cdsitanalisecriticarespostaNMITTPRESPOSTA.Clear;
    Exit;
  end;
  if not CodigoExiste(_ittpresposta, Sender.AsString) then
  begin
    MessageDlg('Código de resposta inexistente.', mtInformation, [mbOK], 0);
    Sender.FocusControl;
    Abort;
  end;
  if not resposta_pertence_a_pergunta(sender.AsString, cdsitanalisecriticarespostaCDITTPCRITERIOORCAMENTO.AsString) then
  begin
    MessageDlg('Código de resposta não pertence a pergunta.', mtInformation, [mbOK], 0);
    Sender.FocusControl;
    Abort;
  end;
  cdsitanalisecriticarespostaNMITTPRESPOSTA.AsString := NomedoCodigo(_ittpresposta, Sender.AsString);
  cdsitanalisecriticarespostaBOPOSITIVO.AsString     := NomedoCodigo(_ittpresposta, Sender.AsString, _bopositivo);
end;

function Tfrmdlganalisecritica.resposta_pertence_a_pergunta(cdittpresposta, cdittpcriterioorcamento: string): Boolean;
begin
  result := RetornaSQLInteger('SELECT COUNT(*) '+
                              'FROM ittpcriterioorcamento '+
                              'INNER JOIN ITTPRESPOSTA ON ITTPRESPOSTA.CDEMPRESA=ittpcriterioorcamento.CDEMPRESA AND ITTPRESPOSTA.cdtpresposta=ittpcriterioorcamento.cdtpresposta '+
                              'WHERE ittpcriterioorcamento.CDEMPRESA='+empresa.cdempresa.tostring+' AND ittpcriterioorcamento.cdittpcriterioorcamento='+cdittpcriterioorcamento+' AND ittpresposta.cdittpresposta='+cdittpresposta)> 0;
end;

procedure Tfrmdlganalisecritica.cdsitanalisecriticafuncionarioBeforePost(DataSet: TDataSet);
begin
  RegistraInformacao_(cdsitanalisecriticafuncionario);
end;

procedure Tfrmdlganalisecritica.cdsitanalisecriticafuncionarioNewRecord(DataSet: TDataSet);
begin
  cdsitanalisecriticafuncionarioCDitanalisecriticafuncionario.AsString := GerarCodigo(_itanalisecriticafuncionario);
end;

procedure Tfrmdlganalisecritica.set_sqldataset;
begin
  sds.CommandText         := makesqlanalisecritica;
  sds.Params[0].DataType  := ftFMTBcd;
  sds.Params[0].Name      := UpperCase(_cdempresa);
  sds.Params[0].ParamType := ptInput;
  sds.Params[0].Size      := 34;
  sds.Params[1].DataType  := ftInteger;
  if cditorcamento = '' then sds.Params[1].Name := UpperCase(_cdorcamento)
                        else sds.Params[1].Name := UpperCase(_cditorcamento);
  sds.Params[1].ParamType := ptInput;
  sds.Params[1].Size      := 4;

  sdsdetail.CommandText         := makesqlitanalisecritica;
  sdsdetail.Params[0].DataType  := ftFMTBcd;
  sdsdetail.Params[0].Name      := UpperCase(_cdempresa);
  sdsdetail.Params[0].ParamType := ptInput;
  sdsdetail.Params[0].Size      := 34;
  sdsdetail.Params[1].DataType  := ftInteger;
  sdsdetail.Params[1].Name      := UpperCase(_cdanalisecritica);
  sdsdetail.Params[1].ParamType := ptInput;
  sdsdetail.Params[1].Size      := 4;
end;

function Tfrmdlganalisecritica.makesqlanalisecritica: string;
begin
  result := 'SELECT * FROM ANALISECRITICA WHERE CDEMPRESA=:CDEMPRESA AND ';
  if cditorcamento <> '' then
  begin
    result := result + 'CDITORCAMENTO=:CDITORCAMENTO';
  end
  else
  begin
    result := result + 'CDORCAMENTO=:CDORCAMENTO';
  end;
end;

procedure Tfrmdlganalisecritica.set_caption;
begin
  Caption := 'Análise Crítica - '+RetornaSQLString('select nmproduto from itorcamento inner join produto on produto.cdempresa=itorcamento.cdempresa and produto.cdproduto=itorcamento.cdproduto where ITORCAMENTO.cdempresa='+empresa.cdempresa.tostring+' and cditorcamento='+cditorcamento);
end;

function Tfrmdlganalisecritica.makesqlitanalisecritica: string;
begin
  result := 'select I.*'+
                  ',T.NMTPCRITERIOORCAMENTO '+
            'from ITANALISECRITICA I '+
            'LEFT JOIN TPCRITERIOORCAMENTO T ON T.CDEMPRESA=I.CDEMPRESA AND T.CDTPCRITERIOORCAMENTO=I.CDTPCRITERIOORCAMENTO '+
            'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDANALISECRITICA=:CDANALISECRITICA';
end;

end.
