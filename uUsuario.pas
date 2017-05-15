unit uUsuario;

interface

uses
  System.Actions, System.UITypes,Firedac.Stan.Param,
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, Buttons, ExtCtrls,
  Menus, dialogs, Mask,
  DB,
  ustrings, uregistro, uconstantes,
  classeusuario, classegerar, classeAplicacao, classequery,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxButtons, cxControls, cxContainer,
  cxEdit, cxCheckBox, cxTextEdit, cxGroupBox, cxDBEdit, cxMaskEdit, cxButtonEdit,
  cxRadioGroup, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmUsuario = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnok: TcxButton;
    btn2: TcxButton;
    ckbinsercao: TcxCheckBox;
    dts: TDataSource;
    gbx1: TcxGroupBox;
    chk1: TcxDBCheckBox;
    chk2: TcxDBCheckBox;
    edtusulogin: TcxDBTextEdit;
    edtususenha: TcxDBTextEdit;
    edtnmusuario: TcxDBTextEdit;
    chkusustatus: TcxDBCheckBox;
    gbx3: TcxGroupBox;
    chk4: TcxDBCheckBox;
    chk3: TcxDBCheckBox;
    edtemail: TcxDBTextEdit;
    Label4: TLabel;
    chkboordservdesconto: TcxDBCheckBox;
    lbl1: TLabel;
    edtEMAILSENHA: TcxDBTextEdit;
    ckbBOPEDIDODESCONTO: TcxDBCheckBox;
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private    { Private declarations }
    cdusuario : string;
    status : string;
    qry : TClasseQuery;
  public    { Public declarations }
  end;

var
  frmUsuario: TfrmUsuario;

function dlgusuario(codigo, tipo:string):boolean;

implementation

uses uDtmMain;

{$R *.DFM}

function dlgusuario(codigo, tipo:string):Boolean;
var
  inseriu : boolean;
begin
  frmUsuario := TFrmusuario.Create(nil);
  frmUsuario.cdusuario := codigo;
  frmUsuario.status := tipo;
  inseriu := false;
  try
    if tipo = _inserir then
    begin
      frmUsuario.ckbInsercao.Visible := true;
      repeat
        frmusuario.showmodal;
        if frmUsuario.ModalResult = mrok then
        begin
          Inseriu := true;
        end;
      until (frmUsuario.ModalResult = mrcancel) or (frmUsuario.ckbInsercao.Checked = false);
      Result := inseriu;
      if not inseriu then
      begin
        exit;
      end;
    end
    else
    begin
      frmUsuario.showmodal;
      result := True;
    end;
  finally
    freeandnil(frmUsuario);
  end;
end;

procedure TfrmUsuario.btnOkClick(Sender: TObject);
begin
  if Trim(edtusulogin.Text) = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Login]), mtinformation, [mbok], 0);
    edtusulogin.SetFocus;
    Abort;
  end;
  if Pos(' ', Trim(edtusulogin.Text)) > 0 then
  begin
    MessageDlg('Login do usuário não pode conter espaços.', mtInformation, [mbok], 0);
    edtusulogin.SetFocus;
    Abort;
  end;
  if Trim(edtususenha.Text) = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Senha]), mtinformation, [mbok], 0);
    edtususenha.SetFocus;
    Abort;
  end;
  if Trim(edtnmusuario.Text) = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Nome]), mtinformation, [mbok], 0);
    edtnmusuario.SetFocus;
    Abort;
  end;
  if status = _inserir then
  begin
    qry.q.fieldbyname(_cdusuario).Asstring  := GerarCodigo(_USUARIO);
  end;
  if (status = _exibir) or (status = _inserir) then
  begin
    qry.q.fieldbyname(_USUSENHA).AsString := usuario.encriptarsenha(edtususenha.Text);
    qry.q.ApplyUpdates(0);
  end;
  modalresult := mrok;
end;

procedure TfrmUsuario.FormCreate(Sender: TObject);
begin
  qry := tclassequery.create('', true);
  dts.dataset := qry.q;
  qry.q.sql.text := 'SELECT * FROM USUARIO WHERE CDUSUARIO=:CDUSUARIO';
  qry.q.OnNewRecord := qrynewrecord;
end;

procedure TfrmUsuario.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
end;

procedure TfrmUsuario.FormShow(Sender: TObject);
begin
  if status = _inserir then
  begin
    qry.q.Open;
    qry.q.Insert;
  end
  else if status = _exibir then
  begin
    qry.q.ParamByName(_cdusuario).AsString := cdusuario;
    qry.q.Open;
    qry.q.Edit;
    qry.q.FieldByName(_ususenha).AsString := usuario.decriptarsenha(Trim(qry.q.fieldbyname(_ususenha).AsString));
  end;
  edtusulogin.SetFocus;
end;

procedure TfrmUsuario.qryNewRecord(DataSet: TDataSet);
begin
  dataset.Fieldbyname(_USUSTATUS).AsString := _A;
  dataset.Fieldbyname(_tppermissao).AsString := _P;
  DataSet.Fieldbyname(_BOCANCELAMENTO).AsString := _N;
  DataSet.Fieldbyname(_botrayicon).AsString := _N;
  DataSet.Fieldbyname(_BOPRODUTOVLATACADO).AsString  := _N;
  DataSet.Fieldbyname(_BOPRODUTOVLESPECIAL).AsString := _N;
end;

end.
