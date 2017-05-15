unit uloteserie;

interface

uses
  {$IFNDEF VER210}System.Actions, System.UITypes,{$ENDIF}
  Forms, dialogs, Buttons, ExtCtrls, ActnList, Windows, SysUtils, Classes,
  Mask, Graphics, Controls, StdCtrls,
  sqlexpr, Grids,
  uexportarexcel, ulocalizar, uregistro, uconstantes, ustrings,
  classeregistrainformacao, classeform, classeexecutasql,
  classeproduto, classegerar, classeretornasql, classeempresa,
  cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalc, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  DBClient, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxButtonEdit, cxGroupBox, cxRadioGroup, Menus, cxButtons, cxCurrencyEdit,
  cxNavigator;

type
  Tfrmloteserie = class(TForm)
    lblnuimei: TLabel;
    act: TActionList;
    edtnuimei: TcxTextEdit;
    tbv: TcxGridDBTableView;
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    btnok: TcxButton;
    gbx: TcxGroupBox;
    rdbinserir: TcxRadioButton;
    rdbexcluir: TcxRadioButton;
    tbvNUIMEI: TcxGridDBColumn;
    dts: TDataSource;
    procedure btnokClick(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnuimeiKeyPress(Sender: TObject; var Key: Char);
  private { Private declarations }
    cdproduto : string;
    tpentsai : string;
    tabela : string;
  public { Public declarations }
  end;

var
  frmloteserie: Tfrmloteserie;

function LoteSerie(tabela, tpentsai, cdproduto:string; cds:TClientDataSet):boolean;

implementation

uses uDtmMain;

{$R *.dfm}

function LoteSerie(tabela, tpentsai, cdproduto:string; cds:TClientDataSet):boolean;
begin
  result       := False;
  frmloteserie := Tfrmloteserie.create(nil);
  try
    frmloteserie.edtnuimei.Visible := not cds.ReadOnly;
    frmloteserie.gbx.Visible       := not cds.ReadOnly;
    frmloteserie.lblnuimei.Visible := not cds.ReadOnly;
    frmloteserie.dts.DataSet       := cds;
    frmloteserie.cdproduto         := cdproduto;
    frmloteserie.tpentsai          := tpentsai;
    frmloteserie.tabela            := tabela;
    frmloteserie.ShowModal;
    if frmloteserie.ModalResult = mrok then
    begin
      result := true;
    end;
  finally
    freeandnil(frmloteserie);
  end;
end;

procedure Tfrmloteserie.btnokClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tfrmloteserie.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmloteserie.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmloteserie.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure Tfrmloteserie.edtnuimeiKeyPress(Sender: TObject; var Key: Char);
var
  cditlote :string;
  function numero_serie_existe:Boolean;
  begin
    if cditlote = '' then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtnuimei.text, maiuscula(_lote)]), mterror, [mbok], 0);
      abort;
    end;
    result := True;
  end;
  function verificar_estoque:Boolean;
  var
    qtestoque : double;
  begin
    qtestoque := DoubledoCodigo(_itlote, cditlote, _qtestoque);
    result := ((qtestoque =  0) and (tpentsai = _e)) or
              ((qtestoque <> 0) and (tpentsai = _s));
  end;
begin
  if (key <> #13) or (TEdit(sender).text = '') then
  begin
    exit;
  end;
  if rdbinserir.Checked then // insercao de registro
  begin
    cditlote := CodigodoCampo(_itlote, edtnuimei.Text, _nuimei);
    if cditlote = '' then
    begin
      cditlote := RetornaSQLString('select cditlote from itlote where qtestoque>0 and cdempresa='+empresa.cdempresa.tostring+' and nuimei='+quotedstr(edtnuimei.Text));
    end;
    if tabela = _saida then
    begin
      if not numero_serie_existe then
      begin
        MessageDlg('Nº Série não existe.', mtInformation, [mbOK], 0);
        Abort;
      end;
      if nomedocodigo(_itlote, cditlote, _cdproduto) <> cdproduto then
      begin
        messagedlg('Imei não pertence ao produto '+NomedoCodigo(_produto, cdproduto)+'.', mtinformation, [mbok], 0);
        abort;
      end;
    end;
    if dts.DataSet.Locate(_nuimei, edtnuimei.Text, []) then
    begin
      MessageDlg('Nº Série já existe.', mtInformation, [mbOK], 0);
      Abort;
    end;
    if (tpentsai <> '') and (not verificar_estoque) then
    begin
      if tpentsai = _s then
      begin
        MessageDlg('Não existe estoque para este Nº Série.', mtInformation, [mbOK], 0);
        Abort;
      end
      else if tpentsai = _e then
      begin
        MessageDlg('Nº Série já possui estoque.', mtInformation, [mbOK], 0);
        Abort;
      end;
    end;
    dts.DataSet.Insert;
    dts.DataSet.FieldByName(_nuimei).AsString   := edtnuimei.Text;
    dts.DataSet.FieldByName(_cditlote).AsString := cditlote;
    dts.DataSet.Post;
    edtnuimei.Clear;
  end
  else if rdbexcluir.Checked then // exclusao de registro
  begin
    if dts.DataSet.Locate(_nuimei, edtnuimei.Text, []) then
    begin
      dts.DataSet.Delete;
    end;
    edtnuimei.Clear;
  end;
end;

end.
