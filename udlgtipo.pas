unit udlgtipo;

interface

uses
  System.Actions, System.UITypes,
  forms, dialogs, sysutils, Mask, Classes, ExtCtrls, Buttons, StdCtrls, ComCtrls,
  Variants, Controls, Menus,
  uexportarexcel, ustrings, uregistro, uconstantes, udatahora,
  classequery, classeaplicacao, classepedido, classeform,  classeempresa, classeretornasql,
  classeorcamento,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtons, dxBevel;

type
  TfrmdlgTipo = class(TForm)
    lbldocumento: TLabel;
    btncancelar: TcxButton;
    btnok: TcxButton;
    cbxcdtppedido: TcxLookupComboBox;
    dxBevel1: TdxBevel;
    dxBevel2: TdxBevel;
    procedure btnOkClick(Sender: TObject);
  private   { Private declarations }
    tbl : string;
    procedure set_tabela(tabela: string);
  public    { Public declarations }
  end;

function Selecionar_Tipo(tabela: string):Integer;

var
  frmdlgTipo: TfrmdlgTipo;

implementation

uses uMain, uDtmMain;

{$R *.DFM}

function Selecionar_Tipo(tabela: string):integer;
begin
  frmdlgTipo := TfrmdlgTipo.Create(application);
  try
    with frmdlgTipo do
    begin
      set_tabela(tabela);
      showmodal;
      if ModalResult <> mrok then
      begin
        exit;
      end;
      result := strtoint(cbxcdtppedido.EditValue);
    end;
  finally
    frmdlgTipo.free;
  end;
end;

procedure TfrmdlgTipo.btnOkClick(Sender: TObject);
begin
  if cbxcdtppedido.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Tipo]), mtinformation, [mbok], 0);
    cbxcdtppedido.SetFocus;
    abort;
  end;
  modalresult := mrok;
end;

procedure TfrmdlgTipo.set_tabela(tabela: string);
begin
  tbl := tabela;
  cbxcdtppedido.Properties.ListSource     := abrir_tabela(_tp+tabela);
  cbxcdtppedido.Properties.KeyFieldNames  := _cdtp+tabela;
  cbxcdtppedido.Properties.ListFieldNames := _nmtp+tabela;
end;

end.
