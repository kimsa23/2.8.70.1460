unit udlginutilizarcte;

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
  Tfrmdlginutilizarcte = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    edtinicio: TcxSpinEdit;
    edttermino: TcxSpinEdit;
    btn3: TcxButton;
    btn4: TcxButton;
    lbljustificativa: TLabel;
    memjustificativa: TcxMemo;
    edtdtemissao: TcxDateEdit;
    lbl1: TLabel;
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure edtinicioExit(Sender: TObject);
    procedure edtterminoExit(Sender: TObject);
  private { Private declarations }
    procedure verificar_inicio;
    function  verificar_faixa:boolean;
    function  verificar_sequencia:Boolean;
  public { Public declarations }
  end;

function Inutilizar_CTE(var inicio, termino: integer; var dsjustificativa:string; var dtemissao: TDate):boolean;

var
  frmdlginutilizarcte: Tfrmdlginutilizarcte;

implementation

uses uDtmMain;

{$R *.dfm}

function Inutilizar_CTE(var inicio, termino: integer; var dsjustificativa:string; var dtemissao: TDate):boolean;
begin
  result := false;
  frmdlginutilizarcte := tfrmdlginutilizarcte.Create(nil);
  try
    frmdlginutilizarcte.showmodal;
    if frmdlginutilizarcte.ModalResult = mrok then
    begin
      inicio          := frmdlginutilizarcte.edtinicio.Value;
      termino         := frmdlginutilizarcte.edttermino.Value;
      dsjustificativa := frmdlginutilizarcte.memjustificativa.Text;
      dtemissao       := frmdlginutilizarcte.edtdtemissao.Date;
      result          := true;
    end;
  finally
    freeandnil(frmdlginutilizarcte);
  end;
end;

procedure Tfrmdlginutilizarcte.btn3Click(Sender: TObject);
begin
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

procedure Tfrmdlginutilizarcte.btn4Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmdlginutilizarcte.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmdlginutilizarcte.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmdlginutilizarcte.verificar_inicio;
begin
  if edtinicio.Text = _0 then
  begin
    MessageDlg('Sequência tem que ser maior que zero.', mtinformation, [mbok], 0);
    edtinicio.SetFocus;
    Abort;
  end;
end;

function Tfrmdlginutilizarcte.verificar_faixa:boolean;
begin
  result := True;
  if RetornaSQLInteger('select count(*) from cte where cdempresa='+empresa.cdempresa.tostring+' and cdcte between '+edtinicio.Text+' and '+edttermino.Text) > 0 then
  begin
    MessageDlg('Já existe cte lançada no sistema na faixa preenchida.', mtInformation, [mbOK], 0);
    result := False;
  end;
end;

procedure Tfrmdlginutilizarcte.edtinicioExit(Sender: TObject);
begin
  verificar_inicio;
  if (edtinicio.Text <> '') and (edtinicio.Text <> _0) then
  begin
    if RetornaSQLInteger('select count(*) from cte where cdempresa='+empresa.cdempresa.tostring+' and cdcte='+edtinicio.Text) > 0 then
    begin
      MessageDlg('Já existe cte com o número '+edtinicio.Text+' lançada no sistema.', mtInformation, [mbOK], 0);
      edtinicio.SetFocus;
      Abort;
    end;
    if RetornaSQLInteger('select count(*) from cte where cdempresa='+empresa.cdempresa.tostring+' and cdcte>'+edtinicio.Text) = 0 then
    begin
      MessageDlg('Inutilização deve ser usada somente para pulo de número de cte.'#13+
                 'Não existe cte acima do número '+edtinicio.Text+'.', mtInformation, [mbOK], 0);
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
    edtdtemissao.Date := RetornaSQLData('select first 1 dtemissao from cte where cdempresa='+empresa.cdempresa.tostring+' and cdcte>'+edtinicio.Text+' ORDER BY cdcte');
  end;
  colorexit(sender);
end;

procedure Tfrmdlginutilizarcte.edtterminoExit(Sender: TObject);
begin
  if (edttermino.Text <> '') and (edttermino.Text <> _0) then
  begin
    verificar_inicio;
    if RetornaSQLInteger('select count(*) from cte where cdempresa='+empresa.cdempresa.tostring+' and cdcte='+edttermino.Text) > 0 then
    begin
      MessageDlg('Já existe cte com o número '+edttermino.Text+' lançada no sistema.', mtInformation, [mbOK], 0);
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

function Tfrmdlginutilizarcte.verificar_sequencia: Boolean;
begin
  result := True;
  if edtinicio.Value > edttermino.Value then
  begin
    MessageDlg('Numeração tem que estar em sequência.', mtinformation, [mbok], 0);
    result := False;
  end;
end;

end.
