unit upara;

interface

uses
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, Buttons,
  ExtCtrls, CheckLst,
  SqlExpr,
  uConstantes, uregistro,
  classeaplicacao, classeempresa, classequery;

type
  Tfrmpara = class(TForm)
    btnok: TButton;
    btncancel: TButton;
    Bevel1: TBevel;
    clb: TCheckListBox;
    edtnmfuncionario: TEdit;
    ckbfuncionarioinversa: TCheckBox;
    procedure edtnmfuncionarioChange(Sender: TObject);
    procedure ckbfuncionarioinversaClick(Sender: TObject);
    procedure edtnmfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private { Private declarations }
    executar_on_change_listafunc : boolean;
    procedure Carregar_Lista_Funcionario;
  public
    { Public declarations }
  end;

function Exibir_Para(edtlstfuncionario:TEdit):boolean;

var
  frmpara: Tfrmpara;

implementation

{$R *.dfm}

function Exibir_Para(edtlstfuncionario:TEdit):boolean;
var
  i : integer;
begin
  Application.CreateForm(Tfrmpara, frmpara);
  try
    frmpara.Carregar_Lista_Funcionario;
    frmpara.ShowModal;
    if frmpara.ModalResult = mrok then
    begin
      edtlstfuncionario.Clear;
      for i := 0 to frmpara.clb.Items.Count - 1 do
      begin
        if frmpara.clb.Checked[i] and (frmpara.edtnmfuncionario.Text <> frmpara.clb.Items[i]) then
        begin
          if edtlstfuncionario.Text <> '' then
          begin
            edtlstfuncionario.Text := edtlstfuncionario.Text + ';' + frmpara.clb.Items[i]
          end
          else
          begin
            edtlstfuncionario.Text := frmpara.clb.Items[i]
          end;
        end;
      end;
      if edtlstfuncionario.Text <> '' then
      begin
        if frmpara.edtnmfuncionario.Text <> '' then
        begin
          edtlstfuncionario.Text := edtlstfuncionario.Text + ';' + frmpara.edtnmfuncionario.Text;
        end;
      end
      else
      begin
        edtlstfuncionario.Text := frmpara.edtnmfuncionario.Text;
      end;
    end;
    result := true;
  finally
    freeandnil(frmpara);
  end;
end;

procedure Tfrmpara.Carregar_Lista_Funcionario;
var
  s : TClasseQuery;
begin
  s := TClasseQuery.create('select nmfuncionario from funcionario where cdempresa='+empresa.cdempresa.tostring+' and dtdemissao is null order by nmfuncionario');
  try
    while not s.q.eof do
    begin
      clb.Items.Add(s.q.fieldbyname(_nmfuncionario).asstring);
      s.q.next;
    end;
  finally
    freeandnil(s);
  end;
end;

procedure Tfrmpara.edtnmfuncionarioChange(Sender: TObject);
var
  s : TClasseQuery;
  selecao : string;
begin
  if (not executar_on_change_listafunc) or (edtnmfuncionario.Text = '') then
  begin
    exit;
  end;
  s := TClasseQuery.create('select first 1 nmfuncionario from funcionario where cdempresa='+empresa.cdempresa.tostring+' and nmfuncionario like '''+edtnmfuncionario.text+'%'' order by nmfuncionario');
  try
    selecao := edtnmfuncionario.Text;
    while not s.q.Eof do
    begin
      edtnmfuncionario.Text      := s.q.Fields[0].AsString;
      edtnmfuncionario.SelStart  := length(selecao);
      edtnmfuncionario.SelLength := length(s.q.fields[0].asstring) - length(selecao);
      s.q.Next;
    end;
  finally
    freeandnil(s);
  end;
end;

procedure Tfrmpara.ckbfuncionarioinversaClick(Sender: TObject);
var
  i:integer;
begin
  for i := 0 to frmpara.clb.Items.Count - 1 do
  begin
    frmpara.clb.Checked[i]:= not frmpara.clb.Checked[i]
  end;
end;

procedure Tfrmpara.edtnmfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  executar_on_change_listafunc := true;
  if key = 8 then
  begin
    executar_on_change_listafunc := false
  end;
end;

end.
