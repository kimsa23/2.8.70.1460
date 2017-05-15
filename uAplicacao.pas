unit uAplicacao;

interface

uses Forms, Windows, SysUtils, Classes, Graphics, Controls, StdCtrls,
  Buttons, Menus, ExtCtrls, dialogs, 
  FMTBcd, DB, DBClient, Provider, SqlExpr,
  uConstantes,
  classeaplicacao, classegerar,
  cxLookAndFeelPainters, cxButtons, cxControls, cxContainer, cxEdit, cxCheckBox,
  cxGraphics, cxLookAndFeels, cxTextEdit, cxDBEdit;

type
  TfrmAplicacao = class(TForm)
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    ckbinsercao: TcxCheckBox;
    btnok: TcxButton;
    btncancelar: TcxButton;
    edtaplexe: TcxDBTextEdit;
    Label1: TLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    procedure btnOkClick(Sender: TObject);
  private { Private declarations }
  public    { Public declarations }
  end;

var
  frmAplicacao: TfrmAplicacao;

function dlgAplicacao(aplcod:string):Boolean;

implementation

{$R *.DFM}

function dlgAplicacao(aplcod:string):Boolean;
begin
  frmAplicacao := tfrmAplicacao.create(nil);
  try
    if aplcod = '' then
    begin
      frmAplicacao.cds.Open;
      frmAplicacao.cds.Insert;
      frmAplicacao.caption := 'Nova Aplicação';
    end
    else 
    begin
      frmAplicacao.cds.FetchParams; //Traz os parâmetros da SQL para o ClientDataSet
      frmAplicacao.cds.Params[0].AsString := aplcod;
      frmAplicacao.cds.open;
      frmAplicacao.caption := 'Propriedades de ' + frmAplicacao.cds.fieldbyname(_aplexe).Asstring;
    end;
    frmAplicacao.sds.SQLConnection := aplicacao.con2;
    frmAplicacao.ShowModal;
    if frmAplicacao.ModalResult = mrok then
    begin
      if aplcod = '' then frmAplicacao.cds.fieldbyname(_cd+_aplicacao).Asstring := GerarCodigo(_aplicacao);
      if frmAplicacao.cds.State in [dsinsert, dsedit] then frmAplicacao.cds.ApplyUpdates(0);
    end
    else
    begin
      frmAplicacao.cds.CancelUpdates;
    end;
    if frmaplicacao.ckbinsercao.checked then
    begin
      dlgAplicacao(aplcod);
    end;
    result := True;
  finally
    frmAplicacao.free;
  end;
end;

procedure TfrmAplicacao.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

end.
