unit udlginutilizarnfe;

interface

uses
  System.Actions, System.UITypes,
  forms, Menus, StdCtrls, Spin, Controls, Dialogs, Classes, ExtCtrls, sysutils, SqlExpr,
  uConstantes,
  classeretornasql, classeempresa,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxButtons, cxPC, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  cxMemo, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar,
  dxCore, cxDateUtils, ComCtrls;

type
  Tfrmdlginutilizarnfe = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    edtinicio: TcxSpinEdit;
    edttermino: TcxSpinEdit;
    btn3: TcxButton;
    btn4: TcxButton;
    lbljustificativa: TLabel;
    memjustificativa: TcxMemo;
    lblserie: TLabel;
    cbxcdserie: TcxLookupComboBox;
    edtdtemissao: TcxDateEdit;
    lbl1: TLabel;
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure edtinicioExit(Sender: TObject);
    procedure edtterminoExit(Sender: TObject);
  private { Private declarations }
    procedure verificar_serie;
    procedure verificar_inicio;
    function  verificar_faixa:boolean;
    function  verificar_sequencia:Boolean;
  public { Public declarations }
  end;

function Inutilizar_NFE(var inicio, termino: integer; var dsjustificativa:string; var dtemissao: TDate; var cdserie: integer):boolean;

var
  frmdlginutilizarnfe: Tfrmdlginutilizarnfe;

implementation

uses uDtmMain;

{$R *.dfm}

function Inutilizar_NFE(var inicio, termino: integer; var dsjustificativa:string; var dtemissao: TDate; var cdserie: integer):boolean;
begin
  result              := false;
  frmdlginutilizarnfe := tfrmdlginutilizarnfe.Create(nil);
  try
    frmdlginutilizarnfe.showmodal;
    if frmdlginutilizarnfe.ModalResult = mrok then
    begin
      inicio          := frmdlginutilizarnfe.edtinicio.Value;
      termino         := frmdlginutilizarnfe.edttermino.Value;
      dsjustificativa := frmdlginutilizarnfe.memjustificativa.Text;
      cdserie         := frmdlginutilizarnfe.cbxcdserie.EditingValue;
      dtemissao       := frmdlginutilizarnfe.edtdtemissao.Date;
      result          := true;
    end;
  finally
    freeandnil(frmdlginutilizarnfe);
  end;
end;

procedure Tfrmdlginutilizarnfe.btn3Click(Sender: TObject);
begin
  verificar_serie;
  verificar_inicio;
  if edtdtemissao.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+_de+' '+__emissao]), mtinformation, [mbok], 0);
    edtdtemissao.SetFocus;
    Abort;
  end;
  if memjustificativa.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Justificativa]), mtinformation, [mbok], 0);
    memjustificativa.SetFocus;
    Abort;
  end;
  ModalResult := mrOk;
end;

procedure Tfrmdlginutilizarnfe.btn4Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmdlginutilizarnfe.FormCreate(Sender: TObject);
begin
  cbxcdserie.Properties.ListSource := abrir_tabela(_serie+_55);
end;

procedure Tfrmdlginutilizarnfe.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmdlginutilizarnfe.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmdlginutilizarnfe.verificar_serie;
begin
  if cbxcdserie.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Serie]), mtinformation, [mbok], 0);
    cbxcdserie.SetFocus;
    Abort;
  end;
end;

procedure Tfrmdlginutilizarnfe.verificar_inicio;
begin
  if edtinicio.Text = _0 then
  begin
    MessageDlg('Sequência tem que ser maior que zero.', mtinformation, [mbok], 0);
    edtinicio.SetFocus;
    Abort;
  end;
end;

function Tfrmdlginutilizarnfe.verificar_faixa:boolean;
var
  cdserie : string;
begin
  result := True;
  cdserie := cbxcdserie.EditingValue;
  if RetornaSQLInteger('select count(*) from saida where cdempresa='+empresa.cdempresa.tostring+' and cdserie='+cdserie+' and nusaida between '+edtinicio.Text+' and '+edttermino.Text) > 0 then
  begin
    MessageDlg('Já existe nota lançada no sistema na faixa preenchida.'#13'Altere o número para poder continuar.', mtInformation, [mbOK], 0);
    result := False;
  end;
end;

procedure Tfrmdlginutilizarnfe.edtinicioExit(Sender: TObject);
var
  cdserie : string;
begin
  verificar_inicio;
  if (edtinicio.Text <> '') and (edtinicio.Text <> _0) then
  begin
    verificar_serie;
    cdserie := cbxcdserie.EditingValue;
    if RetornaSQLInteger('select count(*) from saida where cdempresa='+empresa.cdempresa.tostring+' and cdserie='+cdserie+' and nusaida='+edtinicio.Text) > 0 then
    begin
      MessageDlg('Já existe nota com o número '+edtinicio.Text+' lançada no sistema.'#13'Altere o número para poder continuar.', mtInformation, [mbOK], 0);
      edtinicio.SetFocus;
      Abort;
    end;
    if RetornaSQLInteger('select count(*) from saida where cdempresa='+empresa.cdempresa.tostring+' and cdserie='+cdserie+' and nusaida>'+edtinicio.Text) = 0 then
    begin
      MessageDlg('Inutilização deve ser usada somente para pulo de número de nota fiscal.'#13+
                 'Não existe nota acima do número '+edtinicio.Text+'.'#13+
                 'Altere o número para poder continuar.', mtInformation, [mbOK], 0);
      edtinicio.SetFocus;
      Abort;
    end;
    if not verificar_faixa then
    begin
      edtinicio.SetFocus;
      Abort;
    end;
    if edttermino.Text = _0 then
    begin
      edttermino.Text := edtinicio.Text;
    end;
    if not verificar_sequencia then
    begin
      edtinicio.SetFocus;
      abort;
    end;
    edtdtemissao.Date := RetornaSQLData('select first 1 dtemissao from saida where cdempresa='+empresa.cdempresa.tostring+' and cdserie='+cdserie+' and nusaida>'+edtinicio.Text+' ORDER BY NUSAIDA');
  end;
  colorexit(sender);
end;

procedure Tfrmdlginutilizarnfe.edtterminoExit(Sender: TObject);
var
  cdserie : string;
begin
  if (edttermino.Text <> '') and (edttermino.Text <> _0) then
  begin
    verificar_serie;
    verificar_inicio;
    cdserie := cbxcdserie.EditingValue;
    if RetornaSQLInteger('select count(*) from saida where cdempresa='+empresa.cdempresa.tostring+' and cdserie='+cdserie+' and nusaida='+edttermino.Text) > 0 then
    begin
      MessageDlg('Já existe nota com o número '+edttermino.Text+' lançada no sistema.'#13'Altere o número para poder continuar.', mtInformation, [mbOK], 0);
      edttermino.SetFocus;
      Abort;
    end;
    if not verificar_faixa then
    begin
      edttermino.SetFocus;
      Abort;
    end;
    if not verificar_sequencia then
    begin
      edttermino.SetFocus;
      Abort;
    end;
  end;
  colorexit(sender);
end;

function Tfrmdlginutilizarnfe.verificar_sequencia: Boolean;
begin
  result := True;
  if edtinicio.Value > edttermino.Value then
  begin
    MessageDlg('Numeração tem que estar em sequência.'#13'Altere a faixa de valores para poder continuar.', mtinformation, [mbok], 0);
    result := False;
  end;
end;

end.
