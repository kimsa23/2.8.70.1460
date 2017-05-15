unit udlgordcompraaprovacao;

interface

uses
  forms, sysutils, Classes, ExtCtrls, Buttons, StdCtrls, ComCtrls, Controls, Menus,
  ustrings, uconstantes,
  classeordcompra, classeusuario, classegerar,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxButtons;

type
  TfrmdlgOrdcompraAprovacao = class(TForm)
    btncancelar: TcxButton;
    btnok: TcxButton;
    lbl3: TLabel;
    chkboaprovadofinanceiro: TCheckBox;
    chkboaprovado: TCheckBox;
    mmodsobservacao: TMemo;
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private   { Private declarations }
    ordcompra : TOrdCompra;
    ordcompraaprovacao : TOrdcompraAprovacao;
    procedure set_ordcompraaprovacao;
    procedure read_ordcompraaprovacao(codigo, cdusuario:Integer);
  public    { Public declarations }
  end;

function dlgOrdCompraAprovacao(codigo, cdusuario: integer):boolean;

var
  frmdlgOrdcompraAprovacao: TfrmdlgOrdcompraAprovacao;

implementation

{$R *.DFM}

function dlgOrdCompraAprovacao(codigo, cdusuario: integer):boolean;
begin
  result             := False;
  frmdlgOrdcompraAprovacao := TfrmdlgOrdcompraAprovacao.Create(application);
  try
    with frmdlgOrdcompraAprovacao do
    begin
      read_ordcompraaprovacao(codigo, cdusuario);
      showmodal;
      if ModalResult = mrok then
      begin
        set_ordcompraaprovacao;
        result := true;
      end;
    end;
  finally
    freeandnil(frmdlgOrdcompraAprovacao);
  end;
end;

procedure TfrmdlgOrdcompraAprovacao.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmdlgOrdcompraAprovacao.FormCreate(Sender: TObject);
begin
  ordcompraaprovacao := TOrdcompraAprovacao.create;
  ordcompra          := TOrdCompra.create;
end;

procedure TfrmdlgOrdcompraAprovacao.FormDestroy(Sender: TObject);
begin
  FreeAndNil(ordcompraaprovacao);
  freeandnil(ordcompra);
end;

procedure TfrmdlgOrdcompraAprovacao.read_ordcompraaprovacao(codigo, cdusuario: Integer);
begin
  ordcompraaprovacao.Select(_cdordcompra+'='+inttostr(codigo)+' and '+_cdusuario+'='+inttostr(cdusuario));
  ordcompraaprovacao.cdordcompra := codigo;
  ordcompraaprovacao.cdusuario   := cdusuario;
  mmodsobservacao.Lines.Text := ordcompraaprovacao.dsobservacao;
  chkboaprovadofinanceiro.Checked := ordcompraaprovacao.bofinanceiro = _S;
  chkboaprovado.Checked           := ordcompraaprovacao.boaprovado = _S;
end;

procedure TfrmdlgOrdcompraAprovacao.set_ordcompraaprovacao;
begin
  if chkboaprovado.Checked then
  begin
    ordcompraaprovacao.boaprovado   := _s;
  end
  else
  begin
    ordcompraaprovacao.boaprovado   := _N;
  end;
  if chkboaprovadofinanceiro.Checked then
  begin
    ordcompraaprovacao.bofinanceiro := _s;
  end
  else
  begin
    ordcompraaprovacao.bofinanceiro := _N;
  end;
  ordcompraaprovacao.dsobservacao := mmodsobservacao.Lines.Text;
  if ordcompraaprovacao.cdordcompraaprovacao = 0 then
  begin
    ordcompraaprovacao.cdordcompraaprovacao := qgerar.gerarcodigo(_ordcompraaprovacao);
    ordcompraaprovacao.Insert;
  end
  else
  begin
    ordcompraaprovacao.Update;
  end;
  ordcompra.Select(ordcompraaprovacao.cdordcompra);
  ordcompra.ordcompraaprovacao.ler(_cdordcompra, ordcompra.cdordcompra);
  if ordcompra.ordcompraaprovacao.bofinanceiro then
  begin
    ordcompra.bofinanceiro := _s;
  end
  else
  begin
    ordcompra.bofinanceiro := _N;
  end;
  if ordcompra.bofinanceiro = _s then
  begin
    ordcompra.cdstordcompra := 5;
  end
  else
  begin
    ordcompra.cdstordcompra := 1;
  end;
  ordcompra.Update;
end;

end.
