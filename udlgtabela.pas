unit udlgtabela;

interface

uses
  System.Actions, System.UITypes, Firedac.Stan.Param,FireDAC.Comp.Client,
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, Variants, Dialogs,
  Buttons, ActnList, Menus, ExtCtrls,
  DB, SqlExpr,
  classetabela, classeordproducao, classeColumnField, classeregistrainformacao,
  classeaplicacao, classegerar, classeempresa, classeRegistro, classeretornasql,
  classeproduto, classequery,
  uRegistro, uExportarExcel, uDtmMain, uConstantes, uinterbase, udatahora,
  ustrings,
  cxTextEdit, cxButtonEdit, cxCheckBox, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxNavigator, cxDBNavigator, dxBarExtItems,
  cxDBLookupComboBox, dxBar, cxButtons, cxContainer, cxLabel;

type
  Tfrmdlttabela = class(TForm)
    act: TActionList;
    actexportarexcel: TAction;
    actfiltrar: TAction;
    actagrupar: TAction;
    bmg1: TdxBarManager;
    bmg1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    btnfiltro: TdxBarButton;
    btnagrupar: TdxBarButton;
    dts: TDataSource;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    grdLevel1: TcxGridLevel;
    pnl: TcxLabel;
    Panel1: TPanel;
    btnfechar: TcxButton;
    procedure grdDBTableView1Column1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actexportarexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltrarExecute(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure qryAfterScroll(DataSet: TDataSet);
    procedure qryBeforeDelete(DataSet: TDataSet);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure qryAfterOpen(DataSet: TDataSet);
    procedure qryBeforeInsert(DataSet: TDataSet);
    procedure qryBeforeEdit(DataSet: TDataSet);
    procedure btnfecharClick(Sender: TObject);
  private { Private declarations }
    qry : TFDQuery;
    registro : TRegistro;
    codigo: LargeInt;
    tblbutton, cdbutton, nmcodigo : string;
    tabela : TTabela;
    boinserir, boalterar, boexcluir : Boolean;
    function  ExisteCampo(nmfield:string):Boolean;
    procedure ConfigurarDados(cdtabela: integer; codigo_: LargeInt; nmcodigo_:string; bodssql2:Boolean);
    procedure ConfigurarReadonly;
    procedure ConfigurarSQL;
    procedure ConfigurarOptionsData(boativar:Boolean);
    procedure ConfigurarBlobMemoAtivado;
    procedure ConfigurarButtonEdit;
    procedure CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CDDIGITADOValidate(Sender: TField);
    procedure CDValidate(Sender: TField);
    procedure ConfigurarValoresIniciais;
    function campo_codigo(i: integer): Boolean;
    function get_tbl_sender(Sender: TField): string;
  public { Public declarations }
  end;

var
  frmdlttabela: Tfrmdlttabela;

procedure Abrir_dlg_Tabela(cdtabela: integer; codigo: LargeInt; nmcodigo:string; bodssql2:Boolean=false;boinserir:Boolean=True; boalterar:Boolean=true; boexcluir:Boolean=true);

implementation

{$R *.dfm}

procedure Abrir_dlg_Tabela(cdtabela: integer; codigo: LargeInt; nmcodigo:string; bodssql2:Boolean=false;boinserir:Boolean=True; boalterar:Boolean=true; boexcluir:Boolean=true);
begin
  frmdlttabela := Tfrmdlttabela.Create(application);
  try
    frmdlttabela.boexcluir := boexcluir;
    frmdlttabela.boinserir := boinserir;
    frmdlttabela.boalterar := boalterar;

    frmdlttabela.ConfigurarDados(cdtabela, codigo, nmcodigo, bodssql2);
    frmdlttabela.ShowModal;
  finally
    frmdlttabela.free;
  end;
end;

function Tfrmdlttabela.ExisteCampo(nmfield: string): Boolean;
var
  i : integer;
begin
  result := False;
  for i := 0 to qry.FieldCount - 1 do
  begin
    if qry.Fields[i].FieldName = UpperCase(nmfield) then
    begin
      result := True;
      Break;
    end;
  end;
end;

procedure Tfrmdlttabela.ConfigurarDados(cdtabela: integer; codigo_:LargeInt; nmcodigo_: string; bodssql2:Boolean);
begin
  tabela       := ttabela.create;
  tabela.Select(cdtabela);
  if bodssql2 then
  begin
    qry.SQL.Text := tabela.dssql2;
  end
  else
  begin
    qry.SQL.Text := tabela.dssql;
  end;
  registro     := TRegistro.create(Self, tabela.nmtabela, tabela.nmexibe, _o, qry, dts, nil);
  codigo       := codigo_;
  nmcodigo     := nmcodigo_;
  pnl.Caption  := tabela.nmexibe;
  ConfigurarSQL;
  qry.Open;
  ConfigurarReadonly;
  set_colunas(registro, tabela.nmtabela, qry, tbv);
  ConfigurarButtonEdit;
end;

procedure Tfrmdlttabela.ConfigurarReadonly;
begin
  ConfigurarOptionsData(false);
  if ExisteCampo(_cdempresa) then
  begin
    ConfigurarOptionsData(true);
    ConfigurarOptionsData(tabela.boreadonly <> _s);
  end;
  if not qry.UpdateOptions.ReadOnly then
  begin
    qry.UpdateOptions.EnableInsert     := boinserir;
    tbv.OptionsData.Inserting            := boinserir;
    tbv.Navigator.Buttons.Insert.Enabled := boinserir;
    tbv.Navigator.Buttons.Insert.Visible := boinserir;

    qry.UpdateOptions.EnableUpdate   := boalterar;
    tbv.OptionsData.Editing            := boalterar;
    tbv.Navigator.Buttons.Edit.Enabled := boalterar;
    tbv.Navigator.Buttons.Edit.Visible := boalterar;

    qry.UpdateOptions.EnableDelete       := boexcluir;
    tbv.OptionsData.Deleting             := boexcluir;
    tbv.Navigator.Buttons.Delete.Enabled := boexcluir;
    tbv.Navigator.Buttons.Delete.Visible := boexcluir;
  end;
end;

procedure Tfrmdlttabela.ConfigurarOptionsData(boativar:Boolean);
begin
  qry.UpdateOptions.ReadOnly := not boativar;
end;

procedure Tfrmdlttabela.grdDBTableView1Column1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  colordialog : TColorDialog;
begin
  colordialog := TColorDialog.Create(nil);
  try
    if colordialog.Execute then
    begin
      TcxButtonEdit(Sender).EditingText := IntToStr(colordialog.Color);
    end;
  finally
    colordialog.Free;
  end;
end;

procedure Tfrmdlttabela.FormShow(Sender: TObject);
begin
  grd.SetFocus;
end;

function Tfrmdlttabela.campo_codigo(i:integer): Boolean;
begin
  result := (lowercase(qry.fields[i].fieldname) = _cdfornecedor) or
            (lowercase(qry.fields[i].fieldname) = _cdsubproduto) or
            (lowercase(qry.fields[i].fieldname) = _cdcliente)
end;

procedure Tfrmdlttabela.qryAfterOpen(DataSet: TDataSet);
var
  i : integer;
begin
  for i := 0 to qry.FieldCount -1 do
  begin
    if lowercase(qry.fields[i].fieldname) = _cddigitado then
    begin
      qry.fields[i].OnValidate := CDDIGITADOValidate
    end
    else if campo_codigo(i) then
    begin
      qry.fields[i].OnValidate := CDValidate;
    end;
  end;
end;

procedure Tfrmdlttabela.qryAfterScroll(DataSet: TDataSet);
begin
  pnl.Caption := tabela.nmexibe;
  if ExisteCampo(_cd+tabela.nmtabela) then
  begin
    pnl.Caption := pnl.Caption + ' '  +qry.fieldbyname(_cd+tabela.nmtabela).AsString;
  end;
  if ExisteCampo(_nm+tabela.nmtabela) then
  begin
    pnl.Caption := pnl.Caption + ' - '+qry.fieldbyname(_nm+tabela.nmtabela).AsString;
  end;
  ConfigurarBlobMemoAtivado;
end;

procedure Tfrmdlttabela.qryBeforeDelete(DataSet: TDataSet);
begin
  if not boexcluir then
  begin
    Abort;
  end;
  if (LowerCase(tabela.nmtabela) = _st+_orcamento) and (qry.FieldByName(_cdstorcamento).AsInteger in [1, 2, 3, 4]) then
  begin
    MessageDlg('Este status não pode ser excluído.'#13'Faz parte da configuração do sistema.', mtInformation, [mbOK], 0);
    abort;
  end;
end;

procedure Tfrmdlttabela.qryBeforePost(DataSet: TDataSet);
var
  boexiste : Boolean;
begin
  boexiste := ExisteCampo(_cd+tabela.nmtabela);
  if boexiste then
  begin
    if (DataSet.FieldByName(_cd+tabela.nmtabela).IsNull) then
    begin
      DataSet.FieldByName(_cd+tabela.nmtabela).AsString := GerarCodigo(tabela.nmtabela);
    end;
    if (DataSet.FieldByName(_cd+tabela.nmtabela).AsString = _0) then
    begin
      DataSet.FieldByName(_cd+tabela.nmtabela).AsString := GerarCodigo(tabela.nmtabela);
    end;
  end;
  if lowercase(tabela.nmtabela) = _empresagenerator then
  begin
    if DataSet.FieldByName(_NUGENERATOR).AsInteger<0 then
    begin
      messagedlg('Contador não pode ser negativo.', mtinformation, [mbok], 0);
      abort;
    end;
    DataSet.FieldByName(_cdempresa).AsLargeInt := empresa.cdempresa;
    Exit;
  end;
  if lowercase(tabela.nmtabela) = _clientefilial then
  begin
    DataSet.FieldByName(_nmcliente).AsString := NomedoCodigo(_cliente, DataSet.fieldbyname(_cdclientefilial).AsString);
  end;
  if lowercase(tabela.nmtabela) = _atestadomedico then
  begin
    if dataset.FieldByName(_dtfinal).AsDateTime < dataset.FieldByName(_dtinicio).AsDateTime then
    begin
    messagedlg('Data final não pode ser menor do que a data inicial.', mtinformation, [mbok], 0);
      abort;
    end;
    dataset.FieldByName(_nudias).AsInteger := trunc(dataset.FieldByName(_dtfinal).AsDateTime - dataset.FieldByName(_dtinicio).AsDateTime) + 1;
  end;
  if ExisteCampo(_cdempresa) and (lowercase(tabela.nmtabela) <> _empresagenerator) then
  begin
    RegistraInformacao_(dataset);
  end;
end;

procedure Tfrmdlttabela.FormCreate(Sender: TObject);
begin
  qry := TFDQuery.create(nil);
  qry.Connection := aplicacao.confire;
  dts.dataset := qry;
  qry.sql.text := 'SELECT * FROM TPEMBARQUE WHERE CDEMPRESA=:CDEMPRESA AND CDTPEMBARQUE=:CDTPEMBARQUE';
  qry.OnNewRecord := qrynewrecord;
  qry.BeforePost := qryBeforePost;
  qry.AfterScroll := qryAfterScroll;
  qry.BeforeDelete := qryBeforeDelete;
  qry.AfterOpen := qryAfterOpen;
  qry.BeforeInsert := qryBeforeInsert;
  qry.BeforeEdit := qryBeforeEdit;
end;

procedure Tfrmdlttabela.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(tabela);
  freeandnil(registro);
end;

procedure Tfrmdlttabela.qryNewRecord(DataSet: TDataSet);
begin
  ConfigurarValoresIniciais;
  DataSet.FieldByName(nmcodigo).AsLargeInt := codigo;
end;

procedure Tfrmdlttabela.actexportarexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure Tfrmdlttabela.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure Tfrmdlttabela.actfiltrarExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure Tfrmdlttabela.ConfigurarSQL;
var
  i : Integer;
begin
  for i := 0 to qry.ParamCount - 1 do
  begin
    if i = 0 then
    begin
      qry.Params[0].AsLargeInt := codigo
    end
    else if i = 1 then
    begin
      qry.Params[1].asstring := empresa.cdempresa.tostring;
    end;
  end;
end;

procedure Tfrmdlttabela.ConfigurarValoresIniciais;
var
  i : integer;
begin
  for i := 0 to qry.fieldcount-1 do
  begin
    if lowercase(Copy(qry.Fields[i].FieldName, 1, 2)) = _cd then
    begin
      Continue;
    end;
    if lowercase(Copy(qry.Fields[i].FieldName, 1, 2)) = _bo then
    begin
      qry.fields[i].AsString := _n;
      Continue;
    end;
    case qry.fields[i].DataType of
      ftInteger  : qry.fields[i].AsInteger  := 0;
      ftCurrency : qry.fields[i].AsCurrency := 0;
      ftFloat    : qry.fields[i].AsFloat    := 0;
      ftFMTBcd   : qry.fields[i].AsCurrency := 0;
      ftBCD      : qry.fields[i].AsCurrency := 0;
      ftLargeint : qry.fields[i].AsLargeInt := 0;
      ftDate :
      begin
        if qry.fields[i].Required then
        begin
          qry.fields[i].AsDateTime := DtBanco;
        end;
      end;
    end;
  end;
end;

procedure Tfrmdlttabela.ConfigurarBlobMemoAtivado;
var
  i : integer;
begin
  for i := 0 to tbv.ColumnCount - 1 do
  begin
    if tbv.Columns[i].PropertiesClassName = 'TcxBlobEditProperties' then
    begin
      tbv.Columns[i].Options.Editing := True;
    end;
  end;
end;

procedure Tfrmdlttabela.ConfigurarButtonEdit;
var
  i : integer;
begin
  for i := 0 to tbv.ColumnCount - 1 do
  begin
    if tbv.Columns[i].PropertiesClassName = 'TcxButtonEditProperties' then
    begin
      if LowerCase(tbv.Columns[i].DataBinding.FieldName) = _cddigitado then
      begin
        TcxButtonEditProperties(tbv.Columns[i].Properties).OnButtonClick := CDDIGITADOPropertiesButtonClick;
      end
      else
      begin
        cdbutton  := tbv.Columns[i].DataBinding.FieldName;
        tblbutton := Copy(tbv.Columns[i].DataBinding.FieldName, 3, Length(tbv.Columns[i].DataBinding.FieldName)-2);
        if LowerCase(tblbutton) = _clientefilial then
        begin
          tblbutton := _cliente;
        end;
        TcxButtonEditProperties(tbv.Columns[i].Properties).OnButtonClick := cdPropertiesButtonClick;
      end;
    end;
  end;
end;

procedure Tfrmdlttabela.CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(tabela.nmtabela, qry, false);
end;

procedure Tfrmdlttabela.cdPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEdit(qry, tblbutton, cdbutton);
end;

procedure Tfrmdlttabela.CDDIGITADOValidate(Sender: TField);
var
  produto : TProduto;
begin
  produto := TProduto.create;
  try
    produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, _bopedido);
    if produto.cdproduto = 0 then
    begin
      abort;
    end;
    produto.Select(produto.cdproduto);
    if (produto.cdproduto <> 0) and (qry.fieldbyname(_cdproduto).AsInteger <> produto.cdproduto) then
    begin
      qry.fieldbyname(_CDPRODUTO).AsInteger := produto.cdproduto;
      if ExisteCampo(_vlunitario) then
      begin
        qry.fieldbyname(_VLUNITARIO).AsCurrency := produto.vlvenda;
      end;
    end;
    qry.fieldbyname(_NMPRODUTO).ReadOnly := False;
    qry.fieldbyname(_NMPRODUTO).asstring := produto.nmproduto;
  finally
    freeandnil(produto);
  end;
end;

function Tfrmdlttabela.get_tbl_sender(Sender: TField):string;
begin
  result := Copy(sender.FieldName, 3, Length(Sender.FieldName)-2);
  if Sender.FieldName = UpperCase(_cdsubproduto) then
  begin
    result := _produto;
  end;
end;

procedure Tfrmdlttabela.CDValidate(Sender: TField);
begin
  if not ExisteCampo(_nm+get_tbl_sender(Sender)) then
  begin
    Exit;
  end;
  if sender.IsNull then
  begin
    Sender.DataSet.FieldByName(_nm+get_tbl_sender(Sender)).Clear;
  end;
  if not CodigoExiste(get_tbl_sender(Sender), Sender.AsString) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(get_tbl_sender(Sender))]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  if Sender.DataSet.FieldByName(_nm+get_tbl_sender(Sender)).ReadOnly then
  begin
    Sender.DataSet.FieldByName(_nm+get_tbl_sender(Sender)).ReadOnly := false;
  end;
  Sender.DataSet.FieldByName(_nm+get_tbl_sender(Sender)).AsString := NomedoCodigo(get_tbl_sender(Sender), sender.AsString);
end;

procedure Tfrmdlttabela.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
  if (key = __keyexibeInformacao) and ExisteCampo(_cdusuarioi) then
  begin
    registro.ExibirInformacaoRegistro(qry, key);
  end;
end;

procedure Tfrmdlttabela.qryBeforeInsert(DataSet: TDataSet);
begin
  if not boinserir then
  begin
    Abort;
  end;
end;

procedure Tfrmdlttabela.qryBeforeEdit(DataSet: TDataSet);
begin
  if not boalterar then
  begin
    Abort;
  end;
end;

procedure Tfrmdlttabela.btnfecharClick(Sender: TObject);
begin
  if qry.State = dsedit then
  begin
    qry.Post;
  end;
end;

{
procedure TfrmCliente.cdsclienteentregaNUFAXValidate(Sender: TField);
begin
  registro.check_numero_telefone(Sender);
end;

mascara de nufone
mascara de cep
consistencia de municipio de uf

procedure TfrmCliente.cdsitcontclienteDTNASCIMENTOValidate(Sender: TField);
begin
  registro.consistir_data_nascimento(Sender);
end;

procedure TfrmCliente.SetMascaraNumeroFoneAcordoEstado;
begin
  if BooleandoCodigo(_uf, cdsCDUF.AsString, _bodigito9) then
  begin
    edtnufone1.Properties.EditMask := _99_99999_9999;
    edtnufone2.Properties.EditMask := _99_99999_9999;
    edtnufone3.Properties.EditMask := _99_99999_9999;
    edtnufax.Properties.EditMask   := _99_99999_9999;
    TcxMaskEditProperties(tbvitcontclienteNUFONE1.Properties).EditMask := _99_99999_9999;
    TcxMaskEditProperties(tbvitcontclienteNUFONE2.Properties).EditMask := _99_99999_9999;
    TcxMaskEditProperties(tbvitcontclienteNUFAX.Properties).EditMask   := _99_99999_9999;
  end
  else
  begin
    edtnufone1.Properties.EditMask := _99_9999_9999;
    edtnufone2.Properties.EditMask := _99_9999_9999;
    edtnufone3.Properties.EditMask := _99_9999_9999;
    edtnufax.Properties.EditMask   := _99_9999_9999;
    TcxMaskEditProperties(tbvitcontclienteNUFONE1.Properties).EditMask := _99_9999_9999;
    TcxMaskEditProperties(tbvitcontclienteNUFONE2.Properties).EditMask := _99_9999_9999;
    TcxMaskEditProperties(tbvitcontclienteNUFAX.Properties).EditMask   := _99_9999_9999;
  end;
end;
}

end.
