unit uitsaidaimportacao;

interface

uses forms, dialogs, sysutils, Mask, Classes, ExtCtrls, Buttons, StdCtrls, ComCtrls, Controls,
  sqlexpr, DB,
  uexportarexcel, ustrings, uregistro, uconstantes, udatahora, ulocalizarcliente,
  classeregistrainformacao, classegerar, classeform,  classeempresa, classeretornasql, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, Menus, cxButtons, cxLabel,
  cxCheckListBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxMemo, cxDBEdit, cxCalendar, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, FMTBcd, Provider, DBClient, cxCheckBox,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGroupBox, cxCalc,
  cxNavigator;

type
  Tfrmdlgitsaidaimportacao = class(TForm)
    btncancelar: TcxButton;
    btnok: TcxButton;
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    lbl1: TLabel;
    edtdtemissao: TcxDBDateEdit;
    lbl2: TLabel;
    cds: TClientDataSet;
    cdsdetail: TClientDataSet;
    dts: TDataSource;
    dtsdetail: TDataSource;
    sds: TSQLDataSet;
    sdsdetail: TSQLDataSet;
    dsp: TDataSetProvider;
    dts1: TDataSource;
    tbv: TcxGridDBBandedTableView;
    sdsCDITSAIDAIMPORTACAO: TIntegerField;
    sdsCDITSAIDA: TIntegerField;
    sdsCDUF: TIntegerField;
    sdsCDMUNICIPIO: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsCDEMPRESA: TFMTBCDField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsVLBASEII: TFMTBCDField;
    sdsVLII: TFMTBCDField;
    sdsVLIOF: TFMTBCDField;
    sdsVLDESPESAADUANEIRA: TFMTBCDField;
    sdsNUDOCIMPORTACAO: TStringField;
    sdsDTDOCIMPORTACAO: TDateField;
    sdsDTDESEMBARACO: TDateField;
    sdsCDEXPORTADOR: TStringField;
    edtnurnc: TcxDBTextEdit;
    cdsCDITSAIDAIMPORTACAO: TIntegerField;
    cdsCDITSAIDA: TIntegerField;
    cdsCDUF: TIntegerField;
    cdsCDMUNICIPIO: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsCDEMPRESA: TFMTBCDField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsVLBASEII: TFMTBCDField;
    cdsVLII: TFMTBCDField;
    cdsVLIOF: TFMTBCDField;
    cdsVLDESPESAADUANEIRA: TFMTBCDField;
    cdsNUDOCIMPORTACAO: TStringField;
    cdsDTDOCIMPORTACAO: TDateField;
    cdsDTDESEMBARACO: TDateField;
    cdsCDEXPORTADOR: TStringField;
    cdssdsdetail: TDataSetField;
    sdsdetailCDADICAOIMPORTACAO: TIntegerField;
    sdsdetailCDITSAIDAIMPORTACAO: TIntegerField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailCDEMPRESA: TFMTBCDField;
    sdsdetailNUADICAO: TIntegerField;
    sdsdetailNUSEQUENCIA: TIntegerField;
    sdsdetailCDFABRICANTE: TStringField;
    sdsdetailVLDESCONTO: TFMTBCDField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailCDADICAOIMPORTACAO: TIntegerField;
    cdsdetailCDITSAIDAIMPORTACAO: TIntegerField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailCDEMPRESA: TFMTBCDField;
    cdsdetailNUADICAO: TIntegerField;
    cdsdetailNUSEQUENCIA: TIntegerField;
    cdsdetailCDFABRICANTE: TStringField;
    cdsdetailVLDESCONTO: TFMTBCDField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    lbl3: TLabel;
    edt1: TcxDBTextEdit;
    gbxvalores: TcxGroupBox;
    tbvNUADICAO: TcxGridDBBandedColumn;
    tbvNUSEQADICAO: TcxGridDBBandedColumn;
    tbvCDFABRICANTE: TcxGridDBBandedColumn;
    tbvVLDESCONTO: TcxGridDBBandedColumn;
    edt2: TcxDBCalcEdit;
    edt3: TcxDBCalcEdit;
    edt4: TcxDBCalcEdit;
    edt5: TcxDBCalcEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    gbxembarque: TcxGroupBox;
    Label9: TLabel;
    cbxcduf: TcxDBLookupComboBox;
    Label8: TLabel;
    cbxcdmunicipio: TcxDBLookupComboBox;
    Label1: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    procedure btnOkClick(Sender: TObject);
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsdetailBeforePost(DataSet: TDataSet);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private   { Private declarations }
    cditsaida: string;
  public    { Public declarations }
  end;

function dlgItsaidaImportacao(codigo: string; boalterar:boolean):boolean;

var
  frmdlgitsaidaimportacao: Tfrmdlgitsaidaimportacao;

implementation

uses uMain, uDtmMain;

{$R *.DFM}

function dlgItsaidaImportacao(codigo: string; boalterar:boolean):boolean;
begin
  frmdlgitsaidaimportacao := Tfrmdlgitsaidaimportacao.Create(application);
  try
    with frmdlgitsaidaimportacao do
    begin
      btnok.Enabled := boalterar;
      cditsaida := codigo;
      showmodal;
      if ModalResult = mrok then
      begin
        cds.ApplyUpdates(0);
        result := true;
      end;
    end;
  finally
    freeandnil(frmdlgitsaidaimportacao);
  end;
end;

procedure Tfrmdlgitsaidaimportacao.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure Tfrmdlgitsaidaimportacao.cdsdetailNewRecord(DataSet: TDataSet);
begin
  cdsdetailCDADICAOIMPORTACAO.AsString := GerarCodigo(_adicao+_Importacao);
end;

procedure Tfrmdlgitsaidaimportacao.cdsNewRecord(DataSet: TDataSet);
begin
  cdsCDITSAIDAIMPORTACAO.AsString := GerarCodigo(_itsaida+_importacao);
end;

procedure Tfrmdlgitsaidaimportacao.cdsdetailBeforePost(DataSet: TDataSet);
begin
  RegistraInformacao_(dataset);
end;

procedure Tfrmdlgitsaidaimportacao.cdsBeforePost(DataSet: TDataSet);
begin
  RegistraInformacao_(dataset);
end;

procedure Tfrmdlgitsaidaimportacao.FormShow(Sender: TObject);
begin
  sds.Params[0].AsString := cditsaida;
  cds.Open;
  if cds.RecordCount = 0 then
  begin
    cds.Insert;
    cdsCDITSAIDA.AsString := cditsaida;
  end;
end;

procedure Tfrmdlgitsaidaimportacao.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmdlgitsaidaimportacao.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmdlgitsaidaimportacao.FormCreate(Sender: TObject);
begin
  cbxcduf.Properties.ListSource        := abrir_tabela(_uf);
  cbxcdmunicipio.Properties.ListSource := abrir_tabela(_municipio);
end;

procedure Tfrmdlgitsaidaimportacao.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

end.
