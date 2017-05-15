unit udlgavaliacaoiqf;

interface

uses
  System.Actions, System.UITypes,
  forms, dialogs, sysutils, Mask, Classes, ExtCtrls, Buttons, StdCtrls, ComCtrls,
  Menus, Controls,
  sqlexpr, DB, FMTBcd, Provider, DBClient,
  uexportarexcel, ustrings, uregistro, uconstantes, udatahora,
  ulocalizarcliente,
  classeexecutasql, classeaplicacao, classefornecedor, classeregistrainformacao,
  classegerar, classeform,  classeempresa, classeretornasql, classeordcompra,
  classeRegistro, classequery,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxButtons, cxLabel, cxCheckListBox,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxMemo, cxDBEdit,
  cxCalendar, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, cxGridBandedTableView,
  cxGridDBBandedTableView, cxNavigator;

type
  Tfrmdlgavaliacaoiqf = class(TForm)
    lbldocumento: TLabel;
    btncancelar: TcxButton;
    btnok: TcxButton;
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    lbl1: TLabel;
    edtdtemissao: TcxDBDateEdit;
    lbl2: TLabel;
    edtnurnc: TcxDBTextEdit;
    lbl3: TLabel;
    memdsobservacao: TcxDBMemo;
    cds: TClientDataSet;
    cdsdetail: TClientDataSet;
    dts: TDataSource;
    dtsdetail: TDataSource;
    sds: TSQLDataSet;
    sdsdetail: TSQLDataSet;
    dsp: TDataSetProvider;
    dts1: TDataSource;
    sdsCDAVALIACAOIQF: TIntegerField;
    sdsCDSTAVALIACAOIQF: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsCDORDCOMPRA: TIntegerField;
    sdsDSOBSERVACAO: TBlobField;
    sdsNURNC: TIntegerField;
    cdsCDAVALIACAOIQF: TIntegerField;
    cdsCDSTAVALIACAOIQF: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsCDORDCOMPRA: TIntegerField;
    cdsDSOBSERVACAO: TBlobField;
    cdsNURNC: TIntegerField;
    cbxcdstavaliacaoiqf: TcxDBLookupComboBox;
    sdsdetailCDITAVALIACAOIQF: TIntegerField;
    sdsdetailCDAVALIACAOIQF: TIntegerField;
    sdsdetailCDTPCRITERIOIQF: TIntegerField;
    sdsdetailBORESPOSTA: TStringField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    cdssdsdetail: TDataSetField;
    cdsdetailCDITAVALIACAOIQF: TIntegerField;
    cdsdetailCDAVALIACAOIQF: TIntegerField;
    cdsdetailCDTPCRITERIOIQF: TIntegerField;
    cdsdetailBORESPOSTA: TStringField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    sdsdetailNMTPCRITERIOIQF: TStringField;
    cdsdetailNMTPCRITERIOIQF: TStringField;
    tbv: TcxGridDBBandedTableView;
    tbvBORESPOSTA: TcxGridDBBandedColumn;
    tbvNMTPCRITERIOIQF: TcxGridDBBandedColumn;
    sdsDTEMISSAO: TSQLTimeStampField;
    cdsDTEMISSAO: TSQLTimeStampField;
    sdsCDEMPRESA: TLargeintField;
    sdsdetailCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsdetailCDEMPRESA: TLargeintField;
    procedure btnOkClick(Sender: TObject);
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsdetailBeforePost(DataSet: TDataSet);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
  private   { Private declarations }
    cdstavaliacaoiqf, cdordcompra: integer;
    procedure preencherCriterio;
  public    { Public declarations }
  end;

function AvaliarIQF(codigo: integer):boolean;

var
  frmdlgavaliacaoiqf: Tfrmdlgavaliacaoiqf;

implementation

uses uMain, uDtmMain;

{$R *.DFM}

function AvaliarIQF(codigo: integer):boolean;
var
  fornecedor : TFornecedor;
  ordcompra : TOrdCompra;
begin
  result             := False;
  frmdlgavaliacaoiqf := Tfrmdlgavaliacaoiqf.Create(application);
  fornecedor         := TFornecedor.create;
  ordcompra          := TOrdCompra.create;
  try
    with frmdlgavaliacaoiqf do
    begin
      cdordcompra        := codigo;
      showmodal;
      if (ModalResult = mrok) and ((cds.State = dsinsert) or (cds.state = dsedit)) and (cds.ApplyUpdates(0) = 0) then
      begin
        ordcompra.Select(cdordcompra);
        ordcompra.cdstordcompra := 4;
        ordcompra.Update;
        result := true;
      end;
    end;
  finally
    freeandnil(frmdlgavaliacaoiqf);
    freeandnil(fornecedor);
    freeandnil(ordcompra);
  end;
end;

procedure Tfrmdlgavaliacaoiqf.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure Tfrmdlgavaliacaoiqf.cdsdetailNewRecord(DataSet: TDataSet);
begin
  cdsdetailCDITAVALIACAOIQF.AsString := GerarCodigo(_it+_avaliacao+_iqf);
  cdsdetailBORESPOSTA.AsString       := _s;
end;

procedure Tfrmdlgavaliacaoiqf.cdsNewRecord(DataSet: TDataSet);
begin
  cdsCDAVALIACAOIQF.AsString := GerarCodigo(_avaliacao+_iqf);
end;

procedure Tfrmdlgavaliacaoiqf.cdsdetailBeforePost(DataSet: TDataSet);
begin
  RegistraInformacao_(dataset);
end;

procedure Tfrmdlgavaliacaoiqf.cdsBeforePost(DataSet: TDataSet);
begin
  RegistraInformacao_(dataset);
end;

procedure Tfrmdlgavaliacaoiqf.preencherCriterio;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create('select cdtpcriterioiqf,nmtpcriterioiqf from tpcriterioiqf where cdempresa='+empresa.cdempresa.tostring+' and boativo=''S''');
  try
    while not q.q.Eof do
    begin
      cdsdetail.Insert;
      cdsdetailCDTPCRITERIOIQF.AsString := q.q.Fields[0].AsString;
      cdsdetailnmTPCRITERIOIQF.AsString := q.q.Fields[1].AsString;
      cdsdetail.Post;
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

procedure Tfrmdlgavaliacaoiqf.FormShow(Sender: TObject);
begin
  sds.ParamByName(_cdempresa).ASlargeInt    := Empresa.cdempresa;
  sds.ParamByName(_cdordcompra).AsInteger := cdordcompra;
  cds.Open;
  cdstavaliacaoiqf := cdsCDSTAVALIACAOIQF.AsInteger;  
  if cds.RecordCount = 0 then
  begin
    cds.Insert;
    cdsCDORDCOMPRA.AsInteger := cdordcompra;
    cdsDTEMISSAO.AsDateTime := tsBanco;
    preencherCriterio;
  end
  else
  begin
    cds.ReadOnly       := RetornaSQLInteger('select count(*) from hclfornecedor where cdempresa='+empresa.cdempresa.tostring+' and cdordcompra='+inttostr(cdordcompra)) > 0;
    cdsdetail.ReadOnly := cds.ReadOnly;
  end;
end;

procedure Tfrmdlgavaliacaoiqf.FormCreate(Sender: TObject);
begin
  cbxcdstavaliacaoiqf.Properties.ListSource := abrir_tabela(_st+_avaliacao+_iqf);
end;

procedure Tfrmdlgavaliacaoiqf.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

end.
