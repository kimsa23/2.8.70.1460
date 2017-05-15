unit uGrupos;

interface

uses
  Firedac.Stan.Param,
  Forms, Windows, SysUtils, Classes, Graphics, Controls, StdCtrls, Buttons,
  ExtCtrls, dialogs, Mask,
  uConstantes, umanageruser,
  classeaplicacao, classegerar, classequery,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxButtons, cxCheckBox, FMTBcd,
  DB;

type
  TfrmGrupos = class(TForm)
    Label1: TLabel;
    btnok: TcxButton;
    btncancelar: TcxButton;
    edtnmgrupos: TcxDBTextEdit;
    ckbinsercao: TcxCheckBox;
    dts: TDataSource;
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private    { Private declarations }
    qry : TClasseQuery;
  public    { Public declarations }
  end;

var
  frmGrupos: TfrmGrupos;

function dlgGrupos(grpcod:string; bocontinuar:Boolean=false):Boolean;

implementation

{$R *.DFM}

function dlgGrupos(grpcod:string; bocontinuar:Boolean=false):Boolean;
begin
  frmGrupos := tfrmGrupos.create(nil);
  try
    if grpcod = '' then
    begin
      frmGrupos.qry.q.Open;
      frmGrupos.qry.q.Insert;
      frmGrupos.caption := 'Novo Grupo';
      frmGrupos.ckbinsercao.checked := bocontinuar;
    end
    else
    begin
      frmGrupos.qry.q.Params[0].AsString := grpcod;
      frmGrupos.qry.q.open;
      frmGrupos.caption := 'Propriedades de ' + frmGrupos.qry.q.fieldbyname(_nm+_grupo+_s).Asstring;
    end;
    frmGrupos.ShowModal;
    if frmGrupos.ModalResult = mrok then
    begin
      if grpcod = '' then
      begin
        frmGrupos.qry.q.fieldbyname(_cdgrupos).Asstring := GerarCodigo(_grupos);
      end;
      if frmGrupos.qry.q.State in [dsinsert, dsedit] then
      begin
        frmGrupos.qry.q.post;
        frmGrupos.qry.q.ApplyUpdates(0);
      end;
    end
    else
    begin
      frmGrupos.qry.q.Cancel;
    end;
    if (frmGrupos.ModalResult = mrok) and frmGrupos.ckbinsercao.checked then
    begin
      dlgGrupos(grpcod, True);
    end;
    result := True;
  finally
    freeandnil(frmGrupos);
  end;
end;

procedure TfrmGrupos.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmGrupos.FormCreate(Sender: TObject);
begin
  qry := tclassequery.create('', true);
  dts.dataset := qry.q;
  qry.q.sql.text := 'SELECT * FROM GRUPOS WHERE CDGRUPOS=:CDGRUPOS';
end;

procedure TfrmGrupos.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
end;

end.
