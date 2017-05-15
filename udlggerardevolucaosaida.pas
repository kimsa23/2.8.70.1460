unit udlggerardevolucaosaida;

interface

uses
  System.Actions, System.UITypes,
  forms, Buttons, StdCtrls, ComCtrls, Controls, Grids,
  Variants, sqlexpr, Windows,
  Mask, Classes, ExtCtrls, dialogs, sysutils,
  ustrings, uregistro, uconstantes,
  classeform, classeempresa, 
  cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Menus,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCalendar;

type
  Tfrmdglgerardevolucaosaida = class(TForm)
    lblcdtpsaida: TLabel;
    cbxcdtpsaida: TcxLookupComboBox;
    cbxcdcfop: TcxLookupComboBox;
    lblcdcfop: TLabel;
    btncancelar: TcxButton;
    btnok: TcxButton;
    procedure btnOkClick(Sender: TObject);
    procedure grdDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure colorentercbx(Sender: TObject);
    procedure cbxcdtpsaidaExit(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
  private   { Private declarations }
    cduf : integer;
    procedure set_profissao_setor;
  public    { Public declarations }
  end;

var
  frmdglgerardevolucaosaida: Tfrmdglgerardevolucaosaida;

function  Gerar_devolucao_simples (cduf:integer; var cdtpsaida:integer; var cdcfop:integer):boolean;
procedure Escolher_Profissao_Setor(var cdprofissao:string; var cdsetor:string);

implementation

uses uDtmMain;

{$R *.DFM}

function Gerar_devolucao_simples(cduf:integer; var cdtpsaida:integer; var cdcfop:Integer):boolean;
begin
  result := False;
  frmdglgerardevolucaosaida := tfrmdglgerardevolucaosaida.Create(nil);
  try
    frmdglgerardevolucaosaida.cduf := cduf;
    if frmdglgerardevolucaosaida.ShowModal = mrok then
    begin
      cdtpsaida := frmdglgerardevolucaosaida.cbxcdtpsaida.EditValue;
      cdcfop    := frmdglgerardevolucaosaida.cbxcdcfop.EditValue;
      result    := True;
    end;
  finally
    FreeAndNil(frmdglgerardevolucaosaida);
  end;
end;

procedure Escolher_Profissao_Setor(var cdprofissao:string; var cdsetor:string);
begin
  frmdglgerardevolucaosaida := tfrmdglgerardevolucaosaida.Create(nil);
  try
    frmdglgerardevolucaosaida.set_profissao_setor;
    if frmdglgerardevolucaosaida.ShowModal = mrok then
    begin
      cdprofissao := frmdglgerardevolucaosaida.cbxcdtpsaida.EditValue;
      cdsetor     := frmdglgerardevolucaosaida.cbxcdcfop.EditValue;
    end;
  finally
    frmdglgerardevolucaosaida.free;
  end;
end;

procedure Tfrmdglgerardevolucaosaida.btnOkClick(Sender: TObject);
begin
  if varisnull(cbxcdtpsaida.EditValue) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Documento]), mtinformation, [mbok], 0);
    cbxcdtpsaida.SetFocus;
    abort;
  end;
  if cbxcdcfop.Text='' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_CFOP]), mtinformation, [mbok], 0);
    cbxcdcfop.SetFocus;
    exit;
  end;
  modalresult := mrok;
end;

procedure Tfrmdglgerardevolucaosaida.grdDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure Tfrmdglgerardevolucaosaida.FormCreate(Sender: TObject);
begin
  cbxcdtpsaida.Properties.ListSource := abrir_tabela(_tpsaida);
  cbxcdcfop.Properties.ListSource    := abrir_tabela(_cfop);
end;

procedure Tfrmdglgerardevolucaosaida.colorentercbx(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(Copy(cbxcdtpsaida.Properties.KeyFieldNames, 3, Length(cbxcdtpsaida.Properties.KeyFieldNames)-2));
end;

procedure Tfrmdglgerardevolucaosaida.cbxcdtpsaidaExit(Sender: TObject);
var
  cdcfop : string;
begin
  if (not varisnull(cbxcdcfop.EditValue)) or (VarIsNull(cbxcdtpsaida.EditValue)) then
  begin
    colorexit(sender);
    Exit;
  end;
  if cduf <> empresa.endereco.cduf then
  begin
    cdcfop := NomedoCodigo(_tpsaida, cbxcdtpsaida.EditValue, _cdcfopfuf)
  end
  else
  begin
   cdcfop := NomedoCodigo(_tpsaida, cbxcdtpsaida.EditValue, _cdcfopduf);
  end;
  if cdcfop <> '' then
  begin
    cbxcdcfop.EditValue := cdcfop;
  end;
end;

procedure Tfrmdglgerardevolucaosaida.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmdglgerardevolucaosaida.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmdglgerardevolucaosaida.set_profissao_setor;
begin
  Caption := 'Alterar profissão e setor';
  lblcdtpsaida.Caption := 'Profissão';
  cbxcdtpsaida.Properties.KeyFieldNames  := 'CDPROFISSAO';
  cbxcdtpsaida.Properties.ListFieldNames := 'NMPROFISSAO';
  cbxcdtpsaida.OnExit  := colorexit;
  cbxcdtpsaida.Properties.ListSource := abrir_tabela(_profissao);

  lblcdcfop.Caption    := 'Setor';
  cbxcdcfop.Properties.KeyFieldNames  := 'CDSETOR';
  cbxcdcfop.Properties.ListFieldNames := 'NMSETOR';
  cbxcdcfop.Properties.ListSource    := abrir_tabela(_setor);
end;

end.
