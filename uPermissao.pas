unit uPermissao;

interface

uses Forms, Windows, SysUtils, Classes, Graphics, Controls, StdCtrls, Buttons,
  ExtCtrls, Mask, dialogs,
  uConstantes, umanageruser, uregistro,
  classegerar, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxCheckBox, cxTextEdit, cxDBEdit, cxButtons, FMTBcd,
  SqlExpr, Provider, DB, DBClient;

type
  TfrmPermissao = class(TForm)
    btnCancelar: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnOk: TcxButton;
    btn2: TcxButton;
    edtcomdesc: TcxDBTextEdit;
    edtcomform: TcxDBTextEdit;
    edtcomnome: TcxDBTextEdit;
    ckbInsercao: TcxCheckBox;
    dts: TDataSource;
    cds: TClientDataSet;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private { Private declarations }
  public    { Public declarations }
    comcod : string;
    cdaplicacao : string;
    status : string;
  end;

var
  frmPermissao: TfrmPermissao;

implementation

{$R *.DFM}

procedure TfrmPermissao.btnOkClick(Sender: TObject);
begin
  if status = _inserir then
  begin
    cds.fieldbyname(_comcod).Asstring := GerarCodigo(_comcod, _COMCOD, _comcod, _comreg);
    cds.fieldbyname(_cd+_aplicacao).Asstring := cdaplicacao;
    cds.ApplyUpdates(0);
  end
  else if status = _exibir then
  begin
    cds.ApplyUpdates(0);
  end;
  modalresult := mrok;
end;

procedure TfrmPermissao.FormShow(Sender: TObject);
begin
  if status = _inserir then
  begin
    cds.Open;
    cds.insert;
    caption := 'Nova Permissão';
  end
  else if status = _exibir then
  begin
    sds.Parambyname(_comcod).Asstring := comcod;
    sds.parambyname(_cd+_aplicacao).Asstring := cdaplicacao;
    cds.open;
    caption := 'Propriedades de ' + cds.fieldbyname(_comdesc).Asstring;
  end;
  edtcomdesc.SetFocus;
end;

end.
