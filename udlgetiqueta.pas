unit udlgetiqueta;

interface

uses
  forms, dialogs, sysutils, Mask, Classes, ExtCtrls, Buttons, StdCtrls, ComCtrls,
  Menus, Controls,
  DB,
  ustrings, uregistro, uconstantes, udatahora, ulocalizarcliente,
  classeaplicacao, classeregistrainformacao, classegerar, classeform, classeempresa,
  classeexecutasql, classeretornasql, classequery,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxButtons, cxLabel, cxCheckListBox,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxMemo, cxDBEdit,
  cxCalendar, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, cxGridBandedTableView,
  cxGridDBBandedTableView, cxNavigator, cxSpinEdit;

type
  Tfrmdlgetiqueta = class(TForm)
    btncancelar: TcxButton;
    btnok: TcxButton;
    grd: TcxGrid;
    lbl1: TLabel;
    grdLevel1: TcxGridLevel;
    tbv: TcxGridDBTableView;
    tbvCODIGO: TcxGridDBColumn;
    tbvNUSEQUENCIA: TcxGridDBColumn;
    tbvNOME: TcxGridDBColumn;
    tbvQTITEM: TcxGridDBColumn;
    edtqtpulo: TcxSpinEdit;
    dts: TDataSource;
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private   { Private declarations }
    mtb : TDataclient;
    procedure preencher_tabela(codigo, qtitem: TStrings);
    procedure preencher_lista(nusequencia:TStrings; codigo: TStrings; qtitem: TStrings);
    procedure CriarFields;
  public    { Public declarations }
  end;

function Gerar_lista_regisro_etiqueta(nusequencia:TStrings; codigo: TStrings; qtitem: TStrings):boolean;

var
  frmdlgetiqueta: Tfrmdlgetiqueta;

implementation

uses uMain, uDtmMain;

{$R *.DFM}

function Gerar_lista_regisro_etiqueta(nusequencia:TStrings; codigo: TStrings; qtitem: TStrings):boolean;
begin
  frmdlgetiqueta := tfrmdlgetiqueta.Create(application);
  try
    with frmdlgetiqueta do
    begin
      preencher_tabela(codigo, qtitem);
      showmodal;
      result := ModalResult = mrok;
      if result then
      begin
        preencher_lista(nusequencia, codigo, qtitem);
      end;
    end;
  finally
    freeandnil(frmdlgetiqueta);
  end;
end;

procedure Tfrmdlgetiqueta.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure Tfrmdlgetiqueta.preencher_lista(nusequencia, codigo, qtitem: TStrings);
begin
  nusequencia.Clear;
  codigo.Clear;
  qtitem.Clear;
  mtb.m.first;
  while not mtb.m.eof do
  begin
    nusequencia.add(mtb.m.fieldbyname(_NUSEQUENCIA).AsString);
    codigo.add(mtb.m.fieldbyname(_CDPRODUTO).asstring);
    qtitem.add(mtb.m.fieldbyname(_QTITEM).AsString);
    mtb.m.next;
  end;
end;

procedure Tfrmdlgetiqueta.preencher_tabela(codigo, qtitem: TStrings);
var
  i : integer;
begin
  //mtb.m.CreateDataSet;
  for i := 0 to codigo.Count - 1 do
  begin
    mtb.m.Append;
    mtb.m.fieldbyname(_NUSEQUENCIA).AsInteger := i + 1;
    mtb.m.fieldbyname(_CDPRODUTO).AsString    := codigo[i];
    mtb.m.fieldbyname(_NMPRODUTO).AsString    := nomedocodigo(_produto, codigo[i]);
    mtb.m.fieldbyname(_QTITEM).AsInteger      := 1;
    if qtitem[i] <> '' then
    begin
      mtb.m.fieldbyname(_qtitem).AsString := qtitem[i];
    end;
    mtb.m.Post;
  end;
end;

procedure Tfrmdlgetiqueta.CriarFields;
begin
  mtb.m.FieldDefs.Clear;
  mtb.m.FieldDefs.Add(_nusequencia, ftInteger);
  mtb.m.FieldDefs.Add(_cdproduto, ftInteger);
  mtb.m.FieldDefs.Add(_qtitem, ftInteger);
  mtb.m.FieldDefs.Add(_nmproduto, ftstring, 100);
  mtb.m.CreateDataSet;
end;

procedure Tfrmdlgetiqueta.FormCreate(Sender: TObject);
begin
  mtb := TDataClient.create;
  dts.dataset := mtb.m;
  CriarFields;
  edtqtpulo.value := 0;
end;

procedure Tfrmdlgetiqueta.FormDestroy(Sender: TObject);
begin
  freeandnil(mtb);
end;

end.
