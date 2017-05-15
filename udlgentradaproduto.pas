unit udlgentradaproduto;

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
  cxGridBandedTableView, cxGridDBBandedTableView, cxSplitter, cxBlobEdit,
  cxCurrencyEdit, cxSpinEdit, cxCalc, cxPCdxBarPopupMenu, cxNavigator;

type
  Tfrmdlgentradaproduto = class(TForm)
    btncancelar: TcxButton;
    btnok: TcxButton;
    bvl1: TBevel;
    sdsitentrada: TSQLDataSet;
    sdsitentradaVLUNITARIO: TFMTBCDField;
    sdsitentradaDTEMISSAO: TDateField;
    sdsitentradaNMFORNECEDOR: TStringField;
    sdsitentradaNUENTRADA: TIntegerField;
    dspitentrada: TDataSetProvider;
    cdsitentrada: TClientDataSet;
    cdsitentradaVLUNITARIO: TFMTBCDField;
    cdsitentradaDTEMISSAO: TDateField;
    cdsitentradaNMFORNECEDOR: TStringField;
    cdsitentradaNUENTRADA: TIntegerField;
    dtsitentrada: TDataSource;
    cxGrid1: TcxGrid;
    grd1: TcxGridDBTableView;
    grdGrid1DBTableView1: TcxGridDBTableView;
    grdGrid1DBTableView1VLUNITARIO: TcxGridDBColumn;
    grdGrid1DBTableView1NUENTRADA: TcxGridDBColumn;
    grdGrid1DBTableView1DTEMISSAO: TcxGridDBColumn;
    grdGrid1DBTableView1NMFORNECEDOR: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    procedure btnOkClick(Sender: TObject);
    procedure grdGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private   { Private declarations }
  public    { Public declarations }
  end;

function dlgentradaproduto(cdproduto: string):string;

var
  frmdlgentradaproduto: Tfrmdlgentradaproduto;

implementation

uses uMain, uDtmMain;

{$R *.DFM}

function dlgentradaproduto(cdproduto: string):string;
begin
  frmdlgentradaproduto := tfrmdlgentradaproduto.Create(application);
  try
    with frmdlgentradaproduto do
    begin
      sdsitentrada.ParamByName(_cdempresa).AsLargeint := empresa.cdempresa;
      sdsitentrada.ParamByName(_cdproduto).AsString := cdproduto;
      cdsitentrada.Open;
      showmodal;
      if ModalResult = mrok then
      begin
        //result := cdsdetailCDITORCAMENTO.AsString;
      end;
    end;
  finally
    freeandnil(frmdlgentradaproduto);
  end;
end;

procedure Tfrmdlgentradaproduto.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure Tfrmdlgentradaproduto.grdGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

end.
