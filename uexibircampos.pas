unit uexibircampos;

interface

uses forms, Controls, StdCtrls, CheckLst, Classes, ExtCtrls;

type
  Tfrmexibircampos = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    clb: TCheckListBox;
    edtnmfuncionario: TEdit;
    chkorder: TCheckBox;
    procedure edtnmfuncionarioChange(Sender: TObject);
    procedure edtnmfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure OKBtnClick(Sender: TObject);
  private { Private declarations }
    executar_on_change_listafunc : boolean;
  public { Public declarations }
  end;

var
  frmexibircampos: Tfrmexibircampos;

function ExibirCampos(var nmfield, nmexibe, nmmarcado: TStrings):boolean;

implementation

uses SysUtils;

{$R *.dfm}

function ExibirCampos(var nmfield, nmexibe, nmmarcado: TStrings):boolean;
  procedure adiciona_campos_a_lista;
  var
    i : integer;
  begin
    for i := 0 to nmexibe.Count - 1 do
    begin
      frmexibircampos.clb.Items.Add(nmexibe[i]);
    end;
  end;
  procedure marca_campos_da_lista;
  var
    x, i : integer;
  begin
    for i := 0 to nmmarcado.count - 1 do
    begin
      for x := 0 to nmfield.count - 1 do
      begin
        if nmfield[x] = nmmarcado[i] then
        begin
          frmexibircampos.clb.Checked[x] := true;
        end;
      end;
    end;
  end;
  procedure marca_campos_da_lista_retorno;
  var
    i : integer;
  begin
    nmmarcado.Clear;
    for i := 0 to frmexibircampos.clb.Items.Count - 1 do
    begin
      if frmexibircampos.clb.Checked[i] then
      begin
        nmmarcado.Add(nmfield[i]);
      end;
    end;
  end;
  procedure classificar_lista;
  var
    i, x : integer;
    auxiliar : string;
  begin
    for i := 0 to nmexibe.count - 1 do
    begin
      for x := 0 to nmexibe.count - 1 do
      begin
        if nmexibe[i] < nmexibe[x] then
        begin
          auxiliar := nmexibe[x];
          nmexibe[x] := nmexibe[i];
          nmexibe[i] := auxiliar;

          auxiliar := nmfield[x];
          nmfield[x] := nmfield[i];
          nmfield[i] := auxiliar;
        end;
      end;
    end;
  end;
begin
  result          := false;
  frmexibircampos := tfrmexibircampos.Create(application);
  try
    classificar_lista;
    adiciona_campos_a_lista;
    marca_campos_da_lista;
    frmexibircampos.ShowModal;
    if frmexibircampos.ModalResult = mrok then
    begin
      marca_campos_da_lista_retorno;
      result := true;
    end;
  finally
    frmexibircampos.free;
  end;
end;

procedure Tfrmexibircampos.edtnmfuncionarioChange(Sender: TObject);
var
  selecao : string;
  i : Integer;
begin
  if (not executar_on_change_listafunc) or (edtnmfuncionario.Text = '') then
  begin
    exit;
  end;
  selecao := edtnmfuncionario.Text;
  for i := 0 to clb.Items.Count - 1 do
  begin
    if UpperCase(Copy(clb.Items[i], 1, Length(selecao))) = selecao then
    begin
      edtnmfuncionario.OnChange  := nil;
      edtnmfuncionario.Text      := clb.Items[i];
      edtnmfuncionario.SelStart  := length(selecao);
      edtnmfuncionario.SelLength := length(clb.Items[i]) - length(selecao);
      edtnmfuncionario.OnChange  := edtnmfuncionarioChange;
      clb.ItemIndex := i;
      Break;
    end;
  end;
end;

procedure Tfrmexibircampos.edtnmfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  procedure existe_o_campo_na_lista_colocar_como_checked;
  var
    i : integer;
  begin
    for i := 0 to clb.Items.Count - 1 do
    begin
      if edtnmfuncionario.Text = UpperCase(clb.Items[i]) then
      begin
        clb.Checked[i] := True;
        edtnmfuncionario.Clear;
      end;
    end;
  end;
begin
  if Key = 13 then
  begin
    existe_o_campo_na_lista_colocar_como_checked;
  end;
  executar_on_change_listafunc := true;
  if key = 8 then
  begin
    executar_on_change_listafunc := false
  end;
end;

procedure Tfrmexibircampos.OKBtnClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
