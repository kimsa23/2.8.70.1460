unit udeclinarorcamento;

interface

uses
  forms, dialogs, sysutils, Mask, Classes, ExtCtrls, Buttons, StdCtrls, ComCtrls, Controls,
  sqlexpr, DB,
  ustrings, uregistro, uconstantes, udatahora, ulocalizarcliente,
  classeaplicacao, classeregistrainformacao, classegerar, classeform, classeempresa,
  classeexecutasql, classeretornasql, classeregistro, classequery, classeorcamento,
  cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, Menus, cxButtons, cxLabel,
  cxCheckListBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxMemo, cxDBEdit, cxCalendar, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Provider, DBClient, cxCheckBox,
  cxGridBandedTableView, cxGridDBBandedTableView, cxNavigator, Data.FMTBcd;

type
  Tfrmdlgdeclinarorcamento = class(TForm)
    btncancelar: TcxButton;
    btnok: TcxButton;
    grd: TcxGrid;
    lbl1: TLabel;
    edtdtemissao: TcxDBDateEdit;
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
    tbv: TcxGridDBBandedTableView;
    tbvBORESPOSTA: TcxGridDBBandedColumn;
    tbvNMTPCRITERIOIQF: TcxGridDBBandedColumn;
    sdsCDORCAMENTO: TIntegerField;
    sdsDTEMISSAO: TDateField;
    sdsDSOBSERVACAO: TMemoField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsdetailCDITDECLINARORCAMENTO: TIntegerField;
    sdsdetailCDORCAMENTO: TIntegerField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    sdsdetailCDTPDECLINARORCAMENTO: TIntegerField;
    sdsdetailBORESPOSTA: TStringField;
    sdsdetailNMTPDECLINARORCAMENTO: TStringField;
    cdsCDORCAMENTO: TIntegerField;
    cdsDTEMISSAO: TDateField;
    cdsDSOBSERVACAO: TMemoField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdssdsdetail: TDataSetField;
    cdsdetailCDITDECLINARORCAMENTO: TIntegerField;
    cdsdetailCDORCAMENTO: TIntegerField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailCDTPDECLINARORCAMENTO: TIntegerField;
    cdsdetailBORESPOSTA: TStringField;
    cdsdetailNMTPDECLINARORCAMENTO: TStringField;
    grdLevel1: TcxGridLevel;
    grdDBTableView1: TcxGridDBTableView;
    grdDBTableView1BORESPOSTA: TcxGridDBColumn;
    grdDBTableView1NMTPDECLINARORCAMENTO: TcxGridDBColumn;
    sdsCDEMPRESA: TLargeintField;
    sdsdetailCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsdetailCDEMPRESA: TLargeintField;
    procedure btnOkClick(Sender: TObject);
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure cdsdetailBeforePost(DataSet: TDataSet);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private   { Private declarations }
    cdorcamento: string;
    procedure preencherCriterio;
  public    { Public declarations }
  end;

function DeclinarOrcamento(codigo, cdstorcamento: string; boatualizar: boolean):boolean;

var
  frmdlgdeclinarorcamento: Tfrmdlgdeclinarorcamento;

implementation

uses uMain, uDtmMain;

{$R *.DFM}

function DeclinarOrcamento(codigo, cdstorcamento: string; boatualizar: boolean):boolean;
var
  orcamento : TOrcamento;
begin
  frmdlgdeclinarorcamento := tfrmdlgdeclinarorcamento.Create(application);
  orcamento := torcamento.create;
  try
    with frmdlgdeclinarorcamento do
    begin
      cdorcamento := codigo;
      cds.ReadOnly := not boatualizar;
      cdsdetail.ReadOnly := not boatualizar;
      showmodal;
      if ModalResult = mrok then
      begin
        if boatualizar and (cds.ApplyUpdates(0) = 0) then
        begin
          orcamento.cdorcamento := strtoint(codigo);
          orcamento.cdstorcamento := strtoint(cdstorcamento);
          ExecutaSQL('update orcamento set cdstorcamento='+cdstorcamento+' where cdempresa='+empresa.cdempresa.tostring+' and cdorcamento='+cdorcamento);
          orcamento.RegistrarMudancaStatus(cdstorcamento, memdsobservacao.Text);
        end;
      end;
      result := true;
    end;
  finally
    freeandnil(frmdlgdeclinarorcamento);
    freeandnil(orcamento);
  end;
end;

procedure Tfrmdlgdeclinarorcamento.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure Tfrmdlgdeclinarorcamento.cdsdetailNewRecord(DataSet: TDataSet);
begin
  cdsdetailCDITDECLINARORCAMENTO.AsString := GerarCodigo(_itdeclinarorcamento);
  cdsdetailBORESPOSTA.AsString            := _s;
end;

procedure Tfrmdlgdeclinarorcamento.cdsdetailBeforePost(DataSet: TDataSet);
begin
  RegistraInformacao_(dataset);
end;

procedure Tfrmdlgdeclinarorcamento.cdsBeforePost(DataSet: TDataSet);
begin
  RegistraInformacao_(dataset);
end;

procedure Tfrmdlgdeclinarorcamento.preencherCriterio;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create('select cdtpdeclinarorcamento,nmtpdeclinarorcamento from tpdeclinarorcamento where cdempresa='+empresa.cdempresa.tostring+' and boativo=''S''');
  try
    while not q.q.Eof do
    begin
      cdsdetail.Insert;
      cdsdetailCDTPDECLINARORCAMENTO.AsString := q.q.Fields[0].AsString;
      cdsdetailNMTPDECLINARORCAMENTO.AsString := q.q.Fields[1].AsString;
      cdsdetail.Post;
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

procedure Tfrmdlgdeclinarorcamento.FormShow(Sender: TObject);
begin
  sds.Params[0].AsLargeint := empresa.cdempresa;
  sds.Params[1].AsString := cdorcamento;
  cds.Open;
  if (not cds.ReadOnly) and (cds.RecordCount = 0) then
  begin
    cds.Insert;
    cdsCDORCAMENTO.AsString := cdorcamento;
    cdsDTEMISSAO.AsDateTime := DtBanco;
    preencherCriterio;
  end;
end;

end.
