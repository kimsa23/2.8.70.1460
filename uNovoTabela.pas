unit uNovoTabela;

interface

uses
  System.Actions, System.UITypes,
  forms, Buttons, Menus, Classes, ActnList, ComCtrls, ToolWin, Controls, dialogs,
  ExtCtrls, idglobal, StdCtrls, Mask, sysutils,
  DB,
  uConstantes, uregistro,
  classeretornasql, classegerar, classeregistro, classeregistrainformacao, classeempresa,
  cxLookAndFeelPainters, cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  cxButtons, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxMaskEdit, cxSpinEdit, cxCheckBox,
  cxGroupBox, cxLookAndFeels, uDtmMain, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmNovoTabela = class(TForm)
    act: TActionList;
    actSalvar1: TAction;
    actCancelar1: TAction;
    dts: TDataSource;
    Label3: TLabel;
    edtNome: TcxDBTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    lblnufone1: TLabel;
    edtnufone1: TcxDBMaskEdit;
    lblemail: TLabel;
    edtemail: TcxDBTextEdit;
    qry: TFDQuery;
    procedure actSalvar1Execute(Sender: TObject);
    procedure actCancelar1Execute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
  private      { Private declarations }
    registro : TRegistro;
    boemail : Boolean;
    tbl   : string;
    exibe : string;
  public  { Public declarations }
  end;

var
  frmNovoTabela: TfrmNovoTabela;

function InserirRegistroTabela(tbl, exibe: string; nome:string=''; bosalve:Boolean=false; boemail:Boolean=false):string;
function EditarRegistroTabela (tbl, exibe: string; codigo:string=''; bosalve:Boolean=false; boemail:Boolean=false):Boolean;

implementation

{$R *.dfm}

function InserirRegistroTabela(tbl, exibe: string; nome:string=''; bosalve:Boolean=false; boemail:Boolean=false):string;
begin
  frmNovoTabela := TFrmNovoTabela.Create(nil);
  try
    frmnovotabela.edtnufone1.Visible             := tbl = _itcontcliente;
    frmnovotabela.edtemail.Visible               := tbl = _itcontcliente;
    frmnovotabela.lblnufone1.Visible             := tbl = _itcontcliente;
    frmnovotabela.lblemail.Visible               := tbl = _itcontcliente;
    frmnovotabela.boemail                        := boemail;
    frmnovotabela.tbl                            := tbl;
    frmnovotabela.exibe                          := exibe;
    frmnovotabela.registro                       := tregistro.create(frmnovotabela, tbl, exibe, _o, frmnovotabela.qry, frmnovotabela.dts, nil);
    frmnovotabela.qry.sql.text                   := QRetornaSQL.get_select_from(tbl, _0);
    frmnovotabela.edtNome.DataBinding.DataSource := nil;
    frmnovotabela.edtNome.DataBinding.DataField  := uppercase(_nm+tbl);
    frmnovotabela.edtNome.DataBinding.DataSource := frmnovotabela.dts;
    if not frmnovotabela.qry.Active then
    begin
      frmnovotabela.qry.Open;
    end;
    frmnovotabela.qry.UpdateOptions.ReadOnly := False;
    frmnovotabela.qry.insert;
    if tbl = _itcontcliente then
    begin
      frmnovotabela.qry.FieldByName(_cdcliente).AsString := nome
    end
    else
    begin
      frmnovotabela.edtNome.Text := nome;
    end;
    if bosalve then
    begin
      frmnovotabela.actSalvar1Execute(nil)
    end
    else
    begin
      frmnovotabela.ShowModal;
    end;
    if frmnovotabela.ModalResult = mrok then
    begin
      result := frmnovotabela.qry.fieldbyname(_cd+tbl).asstring;
    end;
  finally
    frmnovotabela.free;
  end;
end;

function EditarRegistroTabela(tbl, exibe: string; codigo:string=''; bosalve:Boolean=false; boemail:Boolean=false):boolean;
begin
  frmNovoTabela := TFrmNovoTabela.Create(nil);
  try
    frmnovotabela.edtnufone1.Visible             := tbl = _itcontcliente;
    frmnovotabela.edtemail.Visible               := tbl = _itcontcliente;
    frmnovotabela.lblnufone1.Visible             := tbl = _itcontcliente;
    frmnovotabela.lblemail.Visible               := tbl = _itcontcliente;
    frmnovotabela.boemail                        := boemail;
    frmnovotabela.tbl                            := tbl;
    frmnovotabela.exibe                          := exibe;
    frmnovotabela.registro                       := tregistro.create(frmnovotabela, tbl, exibe, _o, frmnovotabela.qry, frmnovotabela.dts, nil);
    frmnovotabela.qry.sql.text                   := QRetornaSQL.get_select_from(tbl, codigo);
    frmnovotabela.edtNome.DataBinding.DataSource := nil;
    frmnovotabela.edtNome.DataBinding.DataField  := uppercase(_nm+tbl);
    frmnovotabela.edtNome.DataBinding.DataSource := frmnovotabela.dts;
    if not frmnovotabela.qry.Active then
    begin
      frmnovotabela.qry.Open;
    end;
    frmnovotabela.qry.updateoptions.ReadOnly := False;
    frmnovotabela.qry.edit;
    {
    if tbl = _itcontcliente then frmnovotabela.cds.FieldByName(_cdcliente).AsString := nome
                            else frmnovotabela.edtNome.Text                         := nome;
    }
    if bosalve then
    begin
      frmnovotabela.actSalvar1Execute(nil)
    end
    else
    begin
      frmnovotabela.ShowModal;
    end;
    result := frmnovotabela.ModalResult = mrok;
  finally
    frmnovotabela.free;
  end;
end;

procedure TfrmNovoTabela.actSalvar1Execute(Sender: TObject);
  procedure adicionar_empresa;
  var
    i : integer;
  begin
    for i := 0 to qry.fields.Count - 1 do
    begin
      if lowercase(qry.fields[i].FieldName) = _cdempresa then
      begin
        qry.fieldbyname(_cdempresa).AsLargeInt := empresa.cdempresa;
      end;
    end;
  end;
begin
  if edtNome.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Nome]), mtinformation, [mbok], 0);
    edtnome.SetFocus;
    Abort;
  end;
  if boemail and (edtemail.Text = '') then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Email]), mtinformation, [mbok], 0);
    edtemail.SetFocus;
    Abort;
  end;
  if qry.fieldbyname(_cd+tbl).IsNull then
  begin
    qry.fieldbyname(_cd+tbl).AsString := GerarCodigo(tbl);
    adicionar_empresa;
  end;
  qry.ApplyUpdates(0);
  self.ModalResult := mrok;
end;

procedure TfrmNovoTabela.actCancelar1Execute(Sender: TObject);
begin
  qry.CancelUpdates;
  close;
end;

procedure TfrmNovoTabela.FormDestroy(Sender: TObject);
begin
  registro.Destroy;
end;

procedure TfrmNovoTabela.qryBeforePost(DataSet: TDataSet);
begin
  registro.set_update(qry);
end;

procedure TfrmNovoTabela.qryNewRecord(DataSet: TDataSet);
begin
  edtnome.SelectAll;
  Dataset.FieldByName(_cd+tbl).asstring := GerarCodigo(tbl);
end;

procedure TfrmNovoTabela.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmNovoTabela.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

end.
