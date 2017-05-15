unit UfiltrarOrdServ;

interface

uses
  System.Actions, System.UITypes,
  forms, StdCtrls, ComCtrls, Controls, Buttons, Classes, ExtCtrls, dialogs, sysutils,
  sqlexpr,
  uregistro, ulocalizar, urotinas, uconstantes, ulocalizarcliente, udatahora, ustrings,
  classeform, classeempresa, classesqlmontar, classeretornasql,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxButtonEdit, Menus, cxButtons, dxCore, cxDateUtils,
  ClasseLocalizar;

type
  TfrmfiltrarOrdServ = class(TForm)
    lblCliente: TLabel;
    lblnmcliente: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    lblnuserie: TLabel;
    lbltpequipamento: TLabel;
    lblmarca: TLabel;
    lblmodelo: TLabel;
    Bevel1: TBevel;
    Label9: TLabel;
    Label10: TLabel;
    edtdtEntrada: TcxDateEdit;
    edtDtEntradaFinal: TcxDateEdit;
    edtdtsaida: TcxDateEdit;
    edtdtsaidafinal: TcxDateEdit;
    cbxcdetapa: TcxLookupComboBox;
    cbxcdtpordserv: TcxLookupComboBox;
    cbxcdtpequipamento: TcxLookupComboBox;
    cbxcdmarca: TcxLookupComboBox;
    cbxcdmodelo: TcxLookupComboBox;
    edtnuserie: TcxTextEdit;
    edtcdcliente: TcxButtonEdit;
    btnok: TcxButton;
    btncancelar: TcxButton;
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdetapaEnter(Sender: TObject);
    procedure cbxcdtpordservEnter(Sender: TObject);
    procedure cbxcdtpequipamentoEnter(Sender: TObject);
    procedure cbxcdmarcaEnter(Sender: TObject);
    procedure cbxcdmodeloEnter(Sender: TObject);
    procedure edtcdclienteExit(Sender: TObject);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclienteKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private   { Private declarations }
    function MontarSql:string;
    function NumeroRegistro:string;
  public    { Public declarations }
  end;

function FiltrarOrdServ(cdetapa : string):string;overload;

var
  frmfiltrarOrdServ: TfrmfiltrarOrdServ;

implementation

uses uDtmMain;

{$R *.DFM}

function FiltrarOrdServ(cdetapa : string):string;
var
  numreg : string;
  resposta : integer;
begin
  resposta := mrno;
  frmfiltrarordserv := Tfrmfiltrarordserv.Create(nil);
  try
    with frmfiltrarordserv do
    begin
      cbxcdetapa.EditValue := cdetapa;
      cbxcdetapa.Enabled   := false;
      repeat
        showmodal;
        if ModalResult = mrok then
        begin
          numreg   := numeroregistro;
          resposta := messagedlg('Filtro retorna '+numreg+'. Deseja prosseguir?', mtconfirmation, [mbyes, mbno], 0);
          if resposta = mryes then
          begin
            result := montarsql;
          end;
        end;
      until (resposta = mryes) or (frmfiltrarordserv.ModalResult = mrcancel);
    end;
  finally
    freeandnil(frmfiltrarordserv);
  end;
end;

function TFrmFiltrarOrdServ.NumeroRegistro:string;
begin
  result := inttostr(RetornaSQLInteger('SELECT count(*) FROM ORDSERV o LEFT JOIN EQUIPAMENTO e ON O.CDEQUIPAMENTO=E.CDEQUIPAMENTO and o.cdempresa=e.cdempresa '+MontarSql));
end;

function TFrmFiltrarOrdServ.MontarSql:string;
begin
  result := 'WHERE o.cdempresa='+empresa.cdempresa.tostring+' ';
  sqlmontarnomelike(edtnuserie.Text, _e, _nuserie, result);
  sqlmontarcodigo  (edtcdcliente.text      , _o, _cdcliente      , result);
  sqlmontarcodigo  (cbxcdtpequipamento.EditValue, _e, _cdtpequipamento, result);
  sqlmontarcodigo  (cbxcdmarca.EditValue        , _e, _cdmarca        , result);
  sqlmontarcodigo  (cbxcdmodelo.EditValue       , _e, _cdmodelo       , result);
  sqlmontarcodigo  (cbxcdtpordserv.EditValue    , _o, _cdtpordserv    , result);
  sqlmontarcodigo  (cbxcdetapa.EditValue        , _o, _cdetapa        , result);
  sqlmontardata    (edtdtEntrada.text           , edtDtentradaFinal.text, _o, _dtentrada, result);
  sqlmontardata    (edtdtsaida.text             , edtDtsaidaFinal.text  , _o, _dtsaida  , result);
end;

procedure TfrmfiltrarOrdServ.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmfiltrarOrdServ.FormShow(Sender: TObject);
begin
  edtcdCliente.SetFocus;
end;

procedure TfrmfiltrarOrdServ.FormCreate(Sender: TObject);
begin
  lblnuserie.visible := RegistroExiste(_tpequipamento, _bonuserie+'=''S''');
  edtnuserie.visible := lblnuserie.visible;
  cbxcdetapa.Properties.ListSource         := abrir_tabela(_etapa);
  cbxcdmodelo.Properties.ListSource        := abrir_tabela(_modelo);
  cbxcdmarca.Properties.ListSource         := abrir_tabela(_marca);
  cbxcdtpequipamento.Properties.ListSource := abrir_tabela(_tpequipamento);
  cbxcdtpordserv.Properties.ListSource     := abrir_tabela(_tpordserv);
end;

procedure TfrmfiltrarOrdServ.cbxcdetapaEnter(Sender: TObject);
begin
  abrir_tabela(_etapa);
end;

procedure TfrmfiltrarOrdServ.cbxcdtpordservEnter(Sender: TObject);
begin
  abrir_tabela(_tpordserv);
end;

procedure TfrmfiltrarOrdServ.cbxcdtpequipamentoEnter(Sender: TObject);
begin
  abrir_tabela(_tpequipamento);
end;

procedure TfrmfiltrarOrdServ.cbxcdmarcaEnter(Sender: TObject);
begin
  abrir_tabela(_marca);
end;

procedure TfrmfiltrarOrdServ.cbxcdmodeloEnter(Sender: TObject);
begin
  abrir_tabela(_modelo);
end;

procedure TfrmfiltrarOrdServ.edtcdclienteExit(Sender: TObject);
var
  cd : string;
begin
  cd := edtCdcliente.text;
  if cd = '' then
  begin
    lblnmcliente.caption := '';
    exit;
  end;
  if not codigoexiste(_cliente, _cdcliente, _integer, cd) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cd, maiuscula(_cliente)]), mterror, [mbok], 0);
    edtcdcliente.setfocus;
    abort;
  end;
  lblnmcliente.Caption := Nomedocodigo(_cliente, cd);
end;

procedure TfrmfiltrarOrdServ.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmfiltrarOrdServ.edtcdclienteKeyPress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmfiltrarOrdServ.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdclientePropertiesButtonClick(edtcdcliente, lblnmcliente);
end;

end.
