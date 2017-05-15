unit udlggerarMovto;

interface

uses
  System.Actions, System.UITypes,
  forms, dialogs, sysutils, Mask, Classes, ExtCtrls, Buttons, StdCtrls, ComCtrls,
  Menus, Controls,
  DBClient, sqlexpr, DB,
  uexportarexcel, ustrings, uregistro, uconstantes, udatahora,
  ulocalizarcliente,
  classeaplicacao, classerim, classeform,  classeempresa, classeretornasql,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxButtons, cxLabel,
  cxCheckListBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCheckBox, cxNavigator, dxCore, cxDateUtils,
  cxCalendar;

type
  TfrmdlgGerarMovto = class(TForm)
    lbldocumento: TLabel;
    btncancelar: TcxButton;
    btnok: TcxButton;
    cbxcdtpmovto: TcxLookupComboBox;
    tbv: TcxGridDBTableView;
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    cds: TClientDataSet;
    cdscddigitado: TStringField;
    cdsnmproduto: TStringField;
    cdsqtitem: TFloatField;
    cdscdittabela: TIntegerField;
    dts: TDataSource;
    tbvcddigitado: TcxGridDBColumn;
    tbvnmproduto: TcxGridDBColumn;
    tbvqtitem: TcxGridDBColumn;
    cdsboativar: TStringField;
    tbvboativar: TcxGridDBColumn;
    lbldtemissao: TLabel;
    edtdtemissao: TcxDateEdit;
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private   { Private declarations }
    rim : TRim;
    cdtpmovto : integer;
    procedure set_itrim;
    procedure load_produto;
    function  existe_produto_marcado:Boolean;
    function  existe_produto_marcado_com_quantidade:boolean;
  public    { Public declarations }
  end;

function GerarMovto(rim: TRim; cdtpmovto: integer):boolean;

var
  frmdlgGerarMovto: TfrmdlgGerarMovto;

implementation

uses uMain, uDtmMain;

{$R *.DFM}

function GerarMovto(rim: TRim; cdtpmovto: integer):boolean;
begin
  result           := false;
  frmdlgGerarMovto := TfrmdlgGerarMovto.Create(application);
  try
    frmdlgGerarMovto.rim       := rim;
    frmdlgGerarMovto.cdtpmovto := cdtpmovto;
    frmdlgGerarMovto.lbldtemissao.Visible := cdtpmovto = 1;
    frmdlgGerarMovto.edtdtemissao.Visible := cdtpmovto = 1;
    if cdtpmovto = 1 then
    begin
      frmdlgGerarMovto.edtdtemissao.Date := DtBanco;
    end;
    frmdlgGerarMovto.Load_produto;
    frmdlgGerarMovto.cbxcdtpmovto.EditValue := cdtpmovto;
    frmdlgGerarMovto.cbxcdtpmovto.Enabled   := False;
    with frmdlgGerarMovto do
    begin
      showmodal;
      if ModalResult <> mrok then
      begin
        exit;
      end;
      set_itrim;
      cdtpMovto := cbxcdtpMovto.EditValue;
      if cdtpmovto = 1 then rim.baixar(cdtpMovto, edtdtemissao.date)
                       else rim.Estornar;
      result := true;
    end;
  finally
    freeandnil(frmdlggerarMovto);
  end;
end;

procedure TfrmdlgGerarMovto.btnOkClick(Sender: TObject);
begin
  if cds.State = dsedit then
  begin
    cds.Post;
  end;
  if cbxcdtpMovto.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Tipo]), mtinformation, [mbok], 0);
    cbxcdtpMovto.SetFocus;
    abort;
  end;
  if not existe_produto_marcado then
  begin
    messagedlg('Seleção de algum produto é obrigatório!', mtinformation, [mbok], 0);
    abort;
  end;
  if not existe_produto_marcado_com_quantidade then
  begin
    messagedlg('O produto selecionado deve ter a quantidade maior do que zero!', mtinformation, [mbok], 0);
    abort;
  end;
  modalresult := mrok;
end;

procedure TfrmdlgGerarMovto.load_produto;
var
  i : Integer;
begin
  for i := 0 to rim.ItRim.Count - 1 do
  begin
    cds.Append;
    cdsboativar.AsString    := _S;
    cdscddigitado.AsString  := rim.ItRim.Items[i].cddigitado;
    cdsnmproduto.AsString   := rim.ItRim.Items[i].produto.nmproduto;
    cdsqtitem.AsFloat       := rim.ItRim.Items[i].qtitem;
    cdscdittabela.AsInteger := rim.ItRim.Items[i].cditrim;
    cds.Post;
  end;
end;

procedure TfrmdlgGerarMovto.FormCreate(Sender: TObject);
begin
  cbxcdtpMovto.Properties.ListSource := abrir_tabela(_tpMovto);
end;

function TfrmdlgGerarMovto.existe_produto_marcado: Boolean;
var
  c : TClientDataSet;
begin
  result := False;
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cds, true);
    c.First;
    while not c.Eof do
    begin
      result := c.FieldByName(_boativar).AsString = _S;
      if result then
      begin
        Break;
      end;
      c.Next;
    end;
  finally
    FreeAndNil(c);
  end;
end;

function TfrmdlgGerarMovto.existe_produto_marcado_com_quantidade: boolean;
var
  c : TClientDataSet;
begin
  result := False;
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cds, true);
    c.First;
    while not c.Eof do
    begin
      result := (c.FieldByName(_boativar).AsString = _S) and (c.FieldByName(_qtitem).AsFloat > 0);
      if result then
      begin
        Break;
      end;
      c.Next;
    end;
  finally
    FreeAndNil(c);
  end;
end;

procedure TfrmdlgGerarMovto.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmdlgGerarMovto.set_itrim;
begin
  if cds.State = dsedit then
  begin
    cds.Post;
  end;
  cds.First;
  while not cds.Eof do
  begin
    if cdsboativar.AsString = _n then
    begin
      rim.ItRim.Delete(rim.ItRim.get_indice(cdscdittabela.AsInteger));
    end;
    cds.Next;
  end;
end;

end.
