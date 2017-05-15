unit ucartacorrecao;

interface

uses forms, sysutils, Menus, Classes, Controls, StdCtrls,
  ustrings,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxButtons;

type
  Tfrmdlgcartacorrecao = class(TForm)
    btncancelar: TcxButton;
    btnok: TcxButton;
    lbl3: TLabel;
    memdsobservacao: TcxMemo;
    procedure btnOkClick(Sender: TObject);
    procedure memdsobservacaoPropertiesChange(Sender: TObject);
  private   { Private declarations }
  public    { Public declarations }
  end;

function GerarCartaCorrecao   (var descricao:string):boolean;
function getMotivoAlteracaoIQF(var descricao:string):Boolean;

var
  frmdlgcartacorrecao: Tfrmdlgcartacorrecao;

implementation

uses uMain, uDtmMain;

{$R *.DFM}

function GerarCartaCorrecao(var descricao:string):boolean;
begin
  result              := false;
  frmdlgcartacorrecao := Tfrmdlgcartacorrecao.Create(application);
  try
    with frmdlgcartacorrecao do
    begin
      showmodal;
      if ModalResult = mrok then
      begin
        descricao := RetiraAcentos(memdsobservacao.Lines.Text);
        result    := true;
      end;
    end;
  finally
    freeandnil(frmdlgcartacorrecao);
  end;
end;

function getMotivoAlteracaoIQF(var descricao:string):boolean;
begin
  result              := false;
  frmdlgcartacorrecao := Tfrmdlgcartacorrecao.Create(application);
  try
    with frmdlgcartacorrecao do
    begin
      Caption := 'Motivo de Alteração de IQF';
      showmodal;
      if ModalResult = mrok then
      begin
        descricao := memdsobservacao.Lines.Text;
        result := true;
      end;
    end;
  finally
    freeandnil(frmdlgcartacorrecao);
  end;
end;

procedure Tfrmdlgcartacorrecao.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure Tfrmdlgcartacorrecao.memdsobservacaoPropertiesChange(Sender: TObject);
begin
  btnok.Enabled := Length(memdsobservacao.Text) >= 15;
end;

end.
