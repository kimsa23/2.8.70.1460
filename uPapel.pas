unit uPapel;

interface

uses
  {$IFNDEF VER210}System.Actions, System.UITypes,{$ENDIF}
  Windows, Forms, SysUtils, Classes, Graphics, Controls, StdCtrls, Buttons,
  ExtCtrls, Mask, dialogs,
  Grids, sqlexpr,
  uManageruser, uconstantes, uexportarexcel,
  classegerar, cxLookAndFeelPainters, Menus, cxCheckBox, cxButtons,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxGraphics, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxLookAndFeels, FMTBcd, DB, DBClient, Provider,
  cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDBEdit, cxNavigator;

type
  TfrmPapel = class(TForm)
    Label1: TLabel;
    ckbInsercao: TcxCheckBox;
    ckbativar: TcxCheckBox;
    ckbvisivel: TcxCheckBox;
    btnok: TcxButton;
    btn2: TcxButton;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    dts1: TDataSource;
    sdscomatrib: TSQLDataSet;
    cdscomatrib: TClientDataSet;
    dtscomatrib: TDataSource;
    edtnmpapel: TcxDBTextEdit;
    grd: TcxGrid;
    grdDBTableView1: TcxGridDBTableView;
    grdDBTableView1COMDESC: TcxGridDBColumn;
    grdDBTableView1COMENABLED: TcxGridDBColumn;
    grdDBTableView1COMVISIBLE: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    sdsCDPAPEL: TIntegerField;
    sdsCDAPLICACAO: TIntegerField;
    sdsNMPAPEL: TStringField;
    sdsPAPTIPO: TStringField;
    cdsCDPAPEL: TIntegerField;
    cdsCDAPLICACAO: TIntegerField;
    cdsNMPAPEL: TStringField;
    cdsPAPTIPO: TStringField;
    sdscomatribCOMCOD: TIntegerField;
    sdscomatribCDPAPEL: TIntegerField;
    sdscomatribCOMDESC: TStringField;
    sdscomatribCOMENABLED: TStringField;
    sdscomatribCOMVISIBLE: TStringField;
    sdscomatribCOMEXCETO: TStringField;
    sdscomatribCOMATRIBUTO: TStringField;
    sdscomatribCOMOPT: TStringField;
    cdssdscomatrib: TDataSetField;
    cdscomatribCOMCOD: TIntegerField;
    cdscomatribCDPAPEL: TIntegerField;
    cdscomatribCOMDESC: TStringField;
    cdscomatribCOMENABLED: TStringField;
    cdscomatribCOMVISIBLE: TStringField;
    cdscomatribCOMEXCETO: TStringField;
    cdscomatribCOMATRIBUTO: TStringField;
    cdscomatribCOMOPT: TStringField;
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ckbativarClick(Sender: TObject);
    procedure ckbvisivelClick(Sender: TObject);
    procedure grdDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private { Private declarations }
    procedure Ler(boativar:boolean; nmfield:string);
  public    { Public declarations }
    cdpapel : string;
    cdaplicacao : string;
    status : string;
  end;

var
  frmPapel: TfrmPapel;

implementation

uses uDtmMain;

{$R *.DFM}

procedure TfrmPapel.btnOkClick(Sender: TObject);
begin
  if status = _inserir then
  begin
    cds.fieldbyname(_cd+_papel).Asstring     := GerarCodigo(_papel);
    cds.fieldbyname(_cd+_aplicacao).Asstring := cdaplicacao;
    cds.ApplyUpdates(0);
    FrmManagerUser.InserirPermissaoPapel(cdaplicacao, cds.fieldbyname(_cd+_papel).Asstring);
  end
  else if status = _exibir then
  begin
    cds.ApplyUpdates(0);
  end;
  modalresult := mrok;
end;

procedure TfrmPapel.FormShow(Sender: TObject);
begin
  if status = _inserir then
  begin
    cds.Open;
    cds.insert;
    caption := 'Novo Papel';
  end
  else
  begin
    cds.Close;
    sds.Close;
    sds.Parambyname(_cd+_papel).Asstring := cdpapel;
    cds.Open;
    caption := 'Propriedades de ' + cds.fieldbyname(_nm+_papel).Asstring;
  end;
  edtnmpapel.SetFocus;
end;

procedure TfrmPapel.Ler(boativar:boolean; nmfield:string);
begin
  cdsComAtrib.DisableControls;
  try
    cdsComAtrib.First;
    while not cdsComAtrib.Eof do
    begin
      cdsComAtrib.Edit;
      if boativar then cdsComAtrib.FieldByName(nmfield).AsString := _S
                  else cdsComAtrib.FieldByName(nmfield).AsString := _N;
      cdsComAtrib.Next;
    end;
    messagedlg('Atualizado!', mtinformation, [mbok], 0);
  finally
    cdsComAtrib.EnableControls;
  end;
end;

procedure TfrmPapel.ckbativarClick(Sender: TObject);
begin
  Ler(ckbativar.checked, _COMENABLED);
end;

procedure TfrmPapel.ckbvisivelClick(Sender: TObject);
begin
  Ler(ckbvisivel.checked, _COMVISIBLE);
end;

procedure TfrmPapel.grdDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __keyexportarexcel then
  begin
    exportarexcel(grd);
  end;
end;

end.
