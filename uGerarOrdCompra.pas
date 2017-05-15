unit uGerarOrdCompra;

interface

uses Forms, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, Buttons, StdCtrls, ExtCtrls,
  DBClient, sqlexpr, Data.DB,
  classeempresa, classeretornasql,
  ulocalizar, uregistro, uConstantes,
  cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmGerarOrdCompra = class(TForm)
    btnOk: TButton;
    btnCancelar: TButton;
    lblCliente: TLabel;
    lblcondpagto: TLabel;
    cbxcdtpordcompra: TcxLookupComboBox;
    cbxcdcondpagto: TcxLookupComboBox;
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private { Private declarations }
    c : TClientDataSet;
  public { Public declarations }
    procedure preencherParametros(cds : TClientDataSet);
  end;

var
  frmGerarOrdCompra: TfrmGerarOrdCompra;

function GerarOrdCompra(cdpedidomaterial:Integer; cdfornecedor: largeint):boolean;

implementation

uses uDtmMain, uMain;

{$R *.dfm}

function GerarOrdCompra(cdpedidomaterial:Integer; cdfornecedor: largeint):boolean;
begin
  result            := false;
  frmGerarOrdCompra := TfrmGerarOrdCompra.Create(application);
  try
    frmGerarOrdCompra.lblcondpagto.Visible   := False;
    frmGerarOrdCompra.cbxcdcondpagto.Visible := False;
    with frmGerarOrdCompra do
    begin
      if RetornaSQLInteger('select count(*) from tpordcompra where cdempresa='+empresa.cdempresa.tostring) = 1 then
      begin
        cbxcdtpordcompra.EditValue := RetornaSQLString('select cdtpordcompra from tpordcompra where cdempresa='+empresa.cdempresa.tostring);
        ModalResult := mrOk;
      end
      else
      begin
        showmodal;
      end;
      if ModalResult <> mrok then
      begin
        exit;
      end;
      frmmain.NovoOrdCompra(cdpedidomaterial, cdfornecedor, cbxcdtpordcompra.EditValue, true);
      result := true;
    end;
  finally
    freeandnil(frmGerarOrdCompra);
  end;
end;

procedure TfrmGerarOrdCompra.preencherParametros(cds : TClientDataSet);
begin
  c := cds;
end;

procedure TfrmGerarOrdCompra.btnOkClick(Sender: TObject);
begin
  if cbxcdcondpagto.Visible then
  begin
    c.FieldByName(_cd+_tp+_ordcompra).AsString := cbxcdtpordcompra.EditValue;
    c.FieldByName(_cdcondpagto).AsString   := cbxcdcondpagto.EditValue;
    close;
  end;
  ModalResult := mrOk;
end;

procedure TfrmGerarOrdCompra.FormShow(Sender: TObject);
begin
  if RetornaSQLInteger('select count(*) from tpordcompra where cdempresa='+empresa.cdempresa.tostring) = 1 then
  begin
    cbxcdtpordcompra.EditValue := RetornaSQLString('select cdtpordcompra from tpordcompra where cdempresa='+empresa.cdempresa.tostring);
    if cbxcdcondpagto.Visible then
    begin
      cbxcdcondpagto.SetFocus;
    end;
  end;
end;

procedure TfrmGerarOrdCompra.FormCreate(Sender: TObject);
begin
  cbxcdtpordcompra.Properties.ListSource := abrir_tabela(_tpordcompra);
  cbxcdcondpagto.Properties.ListSource   := abrir_tabela(_condpagto+_e);
end;

end.
