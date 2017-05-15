unit uctetransportadora;

interface

uses forms, dialogs, sysutils, Mask, Classes, ExtCtrls, Buttons, StdCtrls, ComCtrls, Controls,
  sqlexpr, DB,
  ustrings, uregistro, uconstantes, udatahora, ulocalizarcliente, uprotector,
  classeregistrainformacao, classegerar, classeform,  classeempresa, classeretornasql, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, Menus, cxButtons, cxLabel,
  cxCheckListBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxMemo, cxDBEdit, cxCalendar, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, FMTBcd, Provider, DBClient, cxCheckBox,
  cxGridBandedTableView, cxGridDBBandedTableView, DBCtrls, cxCalc;

type
  Tfrmctetransportadora = class(TForm)
    btncancelar: TcxButton;
    btnok: TcxButton;
    lbl3: TLabel;
    memdsobservacao: TcxDBMemo;
    cds: TClientDataSet;
    dts: TDataSource;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    lbltransportadora: TLabel;
    edtcdtransportadora: TcxDBButtonEdit;
    lblnmtransportadora: TDBText;
    lbl1: TLabel;
    edtvlfrete: TcxDBCalcEdit;
    lbl2: TLabel;
    edtvlacrescimo: TcxDBCalcEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    edtvlpedagio: TcxDBCalcEdit;
    edtvldesconto: TcxDBCalcEdit;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    edtvladiantamento: TcxDBCalcEdit;
    edtvlirrf: TcxDBCalcEdit;
    edtvlinss: TcxDBCalcEdit;
    edtvlsestsenat: TcxDBCalcEdit;
    lbl10: TLabel;
    edtvlsaldo: TcxDBCalcEdit;
    procedure btnOkClick(Sender: TObject);
    procedure edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
  private   { Private declarations }
  public    { Public declarations }
  end;

function ExibirCTETransportadora(c:TClientDataSet):boolean;

var
  frmctetransportadora: Tfrmctetransportadora;

implementation

uses uMain, uDtmMain, ulocalizarTransportadora;

{$R *.DFM}

function ExibirCTETransportadora(c:TClientDataSet):boolean;
begin
  result := false;
  frmctetransportadora := Tfrmctetransportadora.Create(application);
  try
    c.ReadOnly                       := False;
    frmctetransportadora.dts.DataSet := c;
    frmctetransportadora.showmodal;
    if frmctetransportadora.ModalResult = mrok then
    begin
      result := true;
    end;
  finally
    freeandnil(frmctetransportadora);
  end;
end;

procedure Tfrmctetransportadora.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure Tfrmctetransportadora.edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtcdtransportadoraPropertiesButtonClick(self, dts.dataset);
end;

procedure Tfrmctetransportadora.FormShow(Sender: TObject);
begin
  configurarPermissoes(self);
end;

end.
