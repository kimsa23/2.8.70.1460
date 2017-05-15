unit uDBMemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls,
  StdCtrls, Buttons, Clipbrd, ActnList, Menus, DB,
  classeempresa, classeregistrainformacao, classeAplicacao, classequery,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxTextEdit, cxMemo, cxDBEdit;

type
  TfrmdbMemo = class(TForm)
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    mem: TcxDBMemo;
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mem1PropertiesChange(Sender: TObject);
    procedure memKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
  private    { Private declarations }
    q : TClasseQuery;
    d : TDatasource;
  public     { Public declarations }
  end;

procedure TrabalharMemo(tbl, exibe, nmcdfield, nuitfield, vlcdfield, vlnuitfield, nmfield, displayField: string);overload;

var
  frmdbMemo: TfrmdbMemo;

implementation

{$R *.DFM}

procedure TrabalharMemo(tbl, exibe, nmcdfield, nuitfield, vlcdfield, vlnuitfield, nmfield, displayField: string);overload;
  function makesql:string;
  begin
    result := 'select '+nmfield+
                     ',tsalteracao'+
                     ',cdusuarioa'+
                     ',cdcomputadora'+
                     ',tsinclusao'+
                     ',cdusuarioi'+
                     ',cdcomputadori '+
              'from '+tbl+' '+
              'where cdempresa='+empresa.cdempresa.tostring+' and '+nmcdfield+'='+vlcdfield+' and '+nuitfield+'='+vlnuitfield
  end;
begin
  frmdbmemo := TfrmdbMemo.create(nil);
  try
    frmdbmemo.q.q.open(makesql);
    frmdbmemo.mem.DataBinding.DataField := nmfield;
    frmdbmemo.caption := DisplayField;
    frmdbmemo.showmodal;
  finally
    frmdbmemo.free;
  end;
end;

procedure TfrmdbMemo.btnOkClick(Sender: TObject);
begin
  if q.q.state = dsedit then
  begin
    q.q.Post;
  end;
end;

procedure TfrmdbMemo.btnCancelClick(Sender: TObject);
begin
  if q.q.state = dsedit then
  begin
    q.q.Cancel;
  end ;
end;

procedure TfrmdbMemo.FormShow(Sender: TObject);
begin
  mem.SetFocus;
  mem.SelStart := length(mem.Text);
end;

procedure TfrmdbMemo.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  d.DataSet := q.q;
  mem.DataBinding.DataSource := d;
end;

procedure TfrmdbMemo.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmdbMemo.mem1PropertiesChange(Sender: TObject);
begin
  if q.q.state <> dsedit then
  begin
    q.q.Edit;
    RegistraInformacao_(q.q);
  end;
end;

procedure TfrmdbMemo.memKeyPress(Sender: TObject; var Key: Char);
begin
  if ord(key) = 27 then
  begin
    key := #0;
  end;
end;

end.
