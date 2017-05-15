unit udlgselecionar;

interface

uses forms, sysutils, Mask, dialogs, Classes, Buttons, ExtCtrls, Controls,
  Menus, graphics, ComCtrls, Spin, StdCtrls,
  FMTBcd, DB, DBClient, Provider, sqlexpr, idglobal,
  urotinas, uconstantes, udatahora, uexportarexcel, ustrings,
  uregistro,
  classesqlmontar, classeretornasql, classeempresa, classeform,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLookAndFeelPainters, cxButtons, cxGraphics, cxPC, cxGroupBox,
  cxImageComboBox, dxStatusBar, cxRadioGroup, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxButtonEdit, cxSpinEdit,
  cxLookAndFeels, cxNavigator, uDtmMain;

type
  Tfrmdlgselecionar = class(TForm)
    dts: TDataSource;
    cds: TClientDataSet;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    btnOkt: TcxButton;
    btnCancelart: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvNUFONE: TcxGridDBColumn;
    tbvDSENDERECO: TcxGridDBColumn;
    tbvDSNUMERO: TcxGridDBColumn;
    tbvNMBAIRRO: TcxGridDBColumn;
    tbvNMMUNICIPIO: TcxGridDBColumn;
    tbvSGUF: TcxGridDBColumn;
    tbvNUCEP: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    procedure btnOktClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelartClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private   { Private declarations }
  public    { Public declarations }
  end;

function SelecionarClienteEndereco(cdcliente:string):string;


var
  frmdlgselecionar: Tfrmdlgselecionar;

implementation

{$R *.DFM}

function SelecionarClienteEndereco(cdcliente:string):string;
begin
  frmdlgselecionar := Tfrmdlgselecionar.Create(Application);
  try
    frmdlgselecionar.Caption           := 'Selecionar Endereço';
    frmdlgselecionar.tbv.OnDblClick    := frmdlgselecionar.tbvDblClick;
    frmdlgselecionar.tbv.OnKeyDown     := frmdlgselecionar.tbvKeyDown;
    frmdlgselecionar.sds.CommandText   := 'SELECT CDCLIENTEENTREGA'+
                                                ',DSENDERECO'+
                                                ',NMBAIRRO'+
                                                ',c.cdMUNICIPIO'+
                                                ',nmmunicipio'+
                                                ',c.cdUF'+
                                                ',u.sguf'+
                                                ',NUCEP'+
                                                ',nufone'+
                                                ',NUCXPOSTAL '+
                                           'FROM CLIENTEENTREGA c '+
                                           'left join municipio m on m.cdmunicipio=c.cdmunicipio '+
                                           'left join uf u on u.cduf=c.cduf '+
                                           'WHERE c.cdempresa='+empresa.cdempresa.tostring+' and c.CDCLIENTE='+cdcliente;
    frmdlgselecionar.cds.Open;
    frmdlgselecionar.ShowModal;
    if frmdlgselecionar.ModalResult = mrok then
    begin
      result := frmdlgselecionar.cds.Fieldbyname(_cdclienteentrega).AsString;
    end;
  finally
    FreeAndNil(frmdlgselecionar);
  end;
end;

procedure Tfrmdlgselecionar.btnOktClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure Tfrmdlgselecionar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
    modalresult := mrcancel;
  end;
end;

procedure Tfrmdlgselecionar.btnCancelartClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmdlgselecionar.tbvDblClick(Sender: TObject);
begin
  if btnokt.enabled then
  begin
    btnOktClick(sender);
  end;
end;

procedure Tfrmdlgselecionar.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

end.
