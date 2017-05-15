unit ufaturamentodlggerarprodutomensalidade;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  dialogs, Buttons, ExtCtrls, ComCtrls, Spin,
  SqlExpr, 
  uconstantes, uAdicionarListView,
  cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Menus, cxButtons, cxListView,
  ToolWin, cxPC, cxSpinEdit, cxPCdxBarPopupMenu, dxCore, cxDateUtils,
  dxBarBuiltInMenu;

type
  Tfrmfaturamentodlggerarprodutomensalidade = class(TForm)
    pgc1: TcxPageControl;
    tbsproduto: TcxTabSheet;
    tlb1: TToolBar;
    btnGrupoAdicionar: TToolButton;
    btnGrupoExcluir: TToolButton;
    ToolButton7: TToolButton;
    lsvproduto: TcxListView;
    tbstpclientemensalidade: TcxTabSheet;
    tlb2: TToolBar;
    btnMensalidadeAdicionar: TToolButton;
    btnmensalidadeexcluir: TToolButton;
    ToolButton5: TToolButton;
    lsvtpclientemensalidade: TcxListView;
    tbscliente: TcxTabSheet;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    edtDTCADASTROSOCIO: TcxDateEdit;
    btnok: TcxButton;
    cxButton2: TcxButton;
    edtcdclientei: TcxSpinEdit;
    edtcdclientef: TcxSpinEdit;
    tbscontrato: TcxTabSheet;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    lsvcontrato: TcxListView;
    tbstpcliente: TcxTabSheet;
    ToolBar2: TToolBar;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    lsvtpcliente: TcxListView;
    procedure edtcdclienteiExit(Sender: TObject);
    procedure edtcdclientefExit(Sender: TObject);
    procedure btnGrupoAdicionarClick(Sender: TObject);
    procedure btnGrupoExcluirClick(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure btnmensalidadeexcluirClick(Sender: TObject);
    procedure btnMensalidadeAdicionarClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
  private { Private declarations }
  public { Public declarations }
  end;

var
  frmfaturamentodlggerarprodutomensalidade: Tfrmfaturamentodlggerarprodutomensalidade;

function DlgGerarProdutoMensalidade(cdproduto, cdtpcliente, cdmensalidade, cdcontrato:TStrings; var cdclientei, cdclientef, dtcadastrosocio: string):boolean;

implementation

{$R *.dfm}

function DlgGerarProdutoMensalidade(cdproduto, cdtpcliente, cdmensalidade, cdcontrato:TStrings; var cdclientei, cdclientef, dtcadastrosocio: string):boolean;
var
  i : Integer;
begin
  frmfaturamentodlggerarprodutomensalidade := Tfrmfaturamentodlggerarprodutomensalidade.create(nil);
  try
    result := false;
    if frmfaturamentodlggerarprodutomensalidade.showmodal <> mrok then
    begin
      exit;
    end;
    with frmfaturamentodlggerarprodutomensalidade do
    begin
      for I := 0 to lsvproduto.Items.Count              - 1 do cdproduto.Add    (lsvproduto.Items[i].Caption);
      for I := 0 to lsvtpclientemensalidade.Items.Count - 1 do cdmensalidade.Add(lsvtpclientemensalidade.Items[i].Caption);
      for I := 0 to lsvtpcliente.Items.Count            - 1 do cdtpcliente.Add  (lsvtpcliente.Items[i].Caption);
      for I := 0 to lsvcontrato.Items.Count             - 1 do cdcontrato.Add   (lsvcontrato.Items[i].Caption);
    end;
    cdclientei := frmfaturamentodlggerarprodutomensalidade.edtcdclientei.Text;
    cdclientef := frmfaturamentodlggerarprodutomensalidade.edtcdclientef.text;
    dtcadastrosocio := formatdatetime(_mm_dd_yyyy, frmfaturamentodlggerarprodutomensalidade.edtDTCADASTROSOCIO.Date);
    result := true;
  finally
    freeandnil(frmfaturamentodlggerarprodutomensalidade);
  end;
end;

procedure Tfrmfaturamentodlggerarprodutomensalidade.edtcdclienteiExit(Sender: TObject);
begin
  if (edtcdclientei.Value <> 0) and (edtcdclientef.Value = 0) then
  begin
    edtcdclientef.Value := edtcdclientei.Value;
  end;
end;

procedure Tfrmfaturamentodlggerarprodutomensalidade.edtcdclientefExit(Sender: TObject);
begin
  if (edtcdclientef.Value <> 0) and (edtcdclientei.Value = 0) then
  begin
    edtcdclientei.Value := edtcdclientef.Value;
  end;
end;

procedure Tfrmfaturamentodlggerarprodutomensalidade.btnGrupoAdicionarClick(Sender: TObject);
begin
  AdicionarListView(lsvproduto);
end;

procedure Tfrmfaturamentodlggerarprodutomensalidade.btnGrupoExcluirClick(Sender: TObject);
begin
  if lsvproduto.ItemFocused <> nil then
  begin
    lsvproduto.DeleteSelected;
  end;
end;

procedure Tfrmfaturamentodlggerarprodutomensalidade.ToolButton7Click(Sender: TObject);
begin
  lsvproduto.Clear;
end;

procedure Tfrmfaturamentodlggerarprodutomensalidade.ToolButton5Click(Sender: TObject);
begin
  lsvtpclientemensalidade.Clear;
end;

procedure Tfrmfaturamentodlggerarprodutomensalidade.btnmensalidadeexcluirClick(Sender: TObject);
begin
  if lsvtpclientemensalidade.ItemFocused <> nil then
  begin
    lsvtpclientemensalidade.DeleteSelected;
  end;
end;

procedure Tfrmfaturamentodlggerarprodutomensalidade.btnMensalidadeAdicionarClick(Sender: TObject);
begin
  AdicionarListView(lsvtpclientemensalidade);
end;

procedure Tfrmfaturamentodlggerarprodutomensalidade.ToolButton1Click(Sender: TObject);
begin
  AdicionarListView(lsvcontrato);
end;

procedure Tfrmfaturamentodlggerarprodutomensalidade.ToolButton2Click(Sender: TObject);
begin
  if lsvcontrato.ItemFocused <> nil then
  begin
    lsvcontrato.DeleteSelected;
  end;
end;

procedure Tfrmfaturamentodlggerarprodutomensalidade.ToolButton3Click(Sender: TObject);
begin
  lsvcontrato.Clear;
end;

procedure Tfrmfaturamentodlggerarprodutomensalidade.ToolButton4Click(Sender: TObject);
begin
  AdicionarListView(lsvtpcliente);
end;

procedure Tfrmfaturamentodlggerarprodutomensalidade.ToolButton6Click(Sender: TObject);
begin
  if lsvtpcliente.ItemFocused <> nil then
  begin
    lsvtpcliente.DeleteSelected;
  end;
end;

procedure Tfrmfaturamentodlggerarprodutomensalidade.ToolButton8Click(Sender: TObject);
begin
  lsvtpcliente.Clear;
end;

end.
