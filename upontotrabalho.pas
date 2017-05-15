unit upontotrabalho;

interface

uses
  System.Actions, System.UITypes,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, ExtCtrls, StdCtrls, DateUtils,
  DB,
  uconstantes, uregistro, uDtmMain, ustrings, udatahora,
  classeform, classepontotrabalho, classeregistrainformacao, classeempresa, classeaplicacao,
  classeusuario, classeretornasql, classerhocorrencia, classequery,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, cxClasses, dxBar, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxGridBandedTableView, cxGridDBBandedTableView, cxTimeEdit, ComCtrls,
  dxCore, cxDateUtils, cxCalendar, cxCheckBox, cxButtonEdit, Menus;

type
  Tfrmpontotrabalho = class(TForm)
    pnl1: TPanel;
    pnl: TcxLabel;
    lblcdfuncionario: TLabel;
    Bevel1: TBevel;
    cbxcdfuncionario: TcxLookupComboBox;
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    dts: TDataSource;
    bmg: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrManager1Bar1: TdxBar;
    dxbrsbtmRegistro: TdxBarSubItem;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    act: TActionList;
    actfechar: TAction;
    actsetfocusrecurso: TAction;
    actatualizarquery: TAction;
    edtdtinicio: TcxDateEdit;
    edtdttermino: TcxDateEdit;
    lbldtinicio: TLabel;
    lbldttermino: TLabel;
    bmgBar1: TdxBar;
    dxBarDockControl1: TdxBarDockControl;
    actfiltro: TAction;
    actagrupar: TAction;
    actexcel: TAction;
    btnfiltro: TdxBarButton;
    btnagrupar: TdxBarButton;
    dxBarButton3: TdxBarButton;
    actimportar: TAction;
    actiponto: TAction;
    btnimportar: TdxBarLargeButton;
    popimportar: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    tbv: TcxGridDBBandedTableView;
    tbvdia: TcxGridDBBandedColumn;
    tbvSemana: TcxGridDBBandedColumn;
    tbvHRPONTO1: TcxGridDBBandedColumn;
    tbvHRPONTO2: TcxGridDBBandedColumn;
    tbvHRPONTO3: TcxGridDBBandedColumn;
    tbvHRPONTO4: TcxGridDBBandedColumn;
    tbvHRTRABALHADA: TcxGridDBBandedColumn;
    tbvHRNOTURNO: TcxGridDBBandedColumn;
    tbvHRABONADA: TcxGridDBBandedColumn;
    tbvHRATRASO: TcxGridDBBandedColumn;
    tbvHRDEBITO: TcxGridDBBandedColumn;
    tbvHREXTRA: TcxGridDBBandedColumn;
    tbvHRCREDITO: TcxGridDBBandedColumn;
    tbvboferiado: TcxGridDBBandedColumn;
    actprimeiro: TAction;
    actanterior: TAction;
    actproximo: TAction;
    actultimo: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    acteditar: TAction;
    btneditar: TdxBarLargeButton;
    tbvHREXTRA100: TcxGridDBBandedColumn;
    tbvHREXTRA50: TcxGridDBBandedColumn;
    tbvCDTPABONO1: TcxGridDBBandedColumn;
    tbvCDTPABONO2: TcxGridDBBandedColumn;
    tbvCDTPABONO3: TcxGridDBBandedColumn;
    tbvCDTPABONO4: TcxGridDBBandedColumn;
    actCalcular: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    edtcdfuncionario: TcxButtonEdit;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    actsalvar: TAction;
    actcancelar: TAction;
    actatualizar: TAction;
    dxBarLargeButton8: TdxBarLargeButton;
    tbvCDTURNO: TcxGridDBBandedColumn;
    tbvNUCOR1: TcxGridDBBandedColumn;
    tbvNUCOR2: TcxGridDBBandedColumn;
    tbvNUCOR3: TcxGridDBBandedColumn;
    tbvNUCOR4: TcxGridDBBandedColumn;
    pumrhocorrencia: TPopupMenu;
    teste1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure actsetfocusrecursoExecute(Sender: TObject);
    procedure actatualizarqueryExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actexcelExecute(Sender: TObject);
    procedure actimportarExecute(Sender: TObject);
    procedure actipontoExecute(Sender: TObject);
    procedure cbxcdfuncionarioPropertiesEditValueChanged(Sender: TObject);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure actprimeiroExecute(Sender: TObject);
    procedure actanteriorExecute(Sender: TObject);
    procedure actproximoExecute(Sender: TObject);
    procedure actultimoExecute(Sender: TObject);
    procedure tbv2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: String);
    procedure acteditarExecute(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure lblcdfuncionarioDblClick(Sender: TObject);
    procedure actCalcularExecute(Sender: TObject);
    procedure edtcdfuncionarioEnter(Sender: TObject);
    procedure edtcdfuncionarioExit(Sender: TObject);
    procedure edtcdfuncionarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cbxcdfuncionarioEnter(Sender: TObject);
    procedure cbxcdfuncionarioExit(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure actsalvarExecute(Sender: TObject);
    procedure actcancelarExecute(Sender: TObject);
    procedure qryAfterOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actatualizarExecute(Sender: TObject);
    procedure tbvCDTPABONO1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tbvCDTPABONO2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tbvCDTPABONO3CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tbvCDTPABONO4CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure pumrhocorrenciaPopup(Sender: TObject);
    procedure teste1Click(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private { Private declarations }
    pontotrabalho : TPontoTrabalho;
    cdfuncionario : integer;
    q : TClasseQuery;
    function makesql:string;
    procedure gerar_dias_ponto;
    procedure inserir_data_ponto(dti:TDate);
    procedure carregarMenuRHOcorrencia;
    procedure inserirRHOcorrencia(cdtprhocorrencia : integer);
    function SeCampoHRPONTO(fieldname: string): boolean;
  public { Public declarations }
  end;

var
  frmpontotrabalho: Tfrmpontotrabalho;

implementation

{$R *.dfm}

uses uMain,
  uexportarexcel,
  udlgdatabalanco,
  classeimportacaoiponto,
  ulocalizarFuncionario,
  Math;

const
  tbl = _pontotrabalho;

procedure Tfrmpontotrabalho.actatualizarqueryExecute(Sender: TObject);
var
  boreabrir : Boolean;
begin
  q.q.close;
  if (not VarIsNull(edtdtinicio.EditValue)) and (not VarIsNull(edtdttermino.EditValue)) and (cbxcdfuncionario.Text <> '') and (edtdttermino.EditValue>=edtdtinicio.EditValue) then
  begin
    q.q.SQL.Text := makesql;
    q.q.open;
    boreabrir := q.q.RecordCount = 0;
    gerar_dias_ponto;
    if boreabrir then
    begin
      q.q.Close;
      q.q.Open;
    end;
  end;
end;

procedure Tfrmpontotrabalho.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmpontotrabalho.actsetfocusrecursoExecute(Sender: TObject);
begin
  edtcdfuncionario.setfocus;
end;

procedure Tfrmpontotrabalho.FormCreate(Sender: TObject);
begin
  q := tclassequery.create('', true);
  dts.dataset := q.q;
  q.q.AfterOpen := qryAfterOpen;
  q.q.BeforePost := qryBeforePost;
  pontotrabalho := TPontoTrabalho.create;
  cbxcdfuncionario.Properties.ListSource := abrir_tabela(_funcionario);
  TcxLookupComboBoxProperties(tbvCDTPABONO1.Properties).ListSource  := abrir_tabela(_tpabono+_abreviado);
  TcxLookupComboBoxProperties(tbvCDTPABONO2.Properties).ListSource  := abrir_tabela(_tpabono+_abreviado);
  TcxLookupComboBoxProperties(tbvCDTPABONO3.Properties).ListSource  := abrir_tabela(_tpabono+_abreviado);
  TcxLookupComboBoxProperties(tbvCDTPABONO4.Properties).ListSource  := abrir_tabela(_tpabono+_abreviado);
  TcxLookupComboBoxProperties(tbvCDTURNO.Properties).ListSource     := abrir_tabela(_turno);
  edtdtinicio.Date  := Primeiro_dia_mes(DtBanco);
  edtdttermino.Date := Ultimo_Dia_Mes(dtbanco);
end;

procedure Tfrmpontotrabalho.FormShow(Sender: TObject);
begin
  if q.q.recordcount > 0 then
  begin
    grd.SetFocus;
    exit;
  end;
  edtcdfuncionario.setfocus;
end;

function Tfrmpontotrabalho.makesql: string;
begin
  cdfuncionario := cbxcdfuncionario.editvalue;
  result        := 'SELECT P.*,T1.NUCOR NUCOR1,T2.NUCOR NUCOR2,T3.NUCOR NUCOR3,T4.NUCOR NUCOR4 '+
                   'FROM PONTOTRABALHO P '+
                   'LEFT JOIN TPABONO T1 ON T1.CDEMPRESA=P.CDEMPRESA AND T1.CDTPABONO=P.CDTPABONO1 '+
                   'LEFT JOIN TPABONO T2 ON T2.CDEMPRESA=P.CDEMPRESA AND T2.CDTPABONO=P.CDTPABONO1 '+
                   'LEFT JOIN TPABONO T3 ON T3.CDEMPRESA=P.CDEMPRESA AND T3.CDTPABONO=P.CDTPABONO1 '+
                   'LEFT JOIN TPABONO T4 ON T4.CDEMPRESA=P.CDEMPRESA AND T4.CDTPABONO=P.CDTPABONO1 '+
                   'WHERE P.CDEMPRESA='+empresa.cdempresa.tostring+' AND P.CDFUNCIONARIO='+cdfuncionario.ToString+' '+
                   'and P.dtemissao between '+getdtbanco(edtdtinicio.EditValue)+' and '+getdtbanco(edtdttermino.EditValue)+' '+
                   'ORDER BY dtemissao';
end;

procedure Tfrmpontotrabalho.pumrhocorrenciaPopup(Sender: TObject);
begin
  carregarMenuRHOcorrencia;
end;

procedure Tfrmpontotrabalho.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure Tfrmpontotrabalho.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure Tfrmpontotrabalho.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure Tfrmpontotrabalho.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmpontotrabalho.actimportarExecute(Sender: TObject);
begin
  btnimportar.DropDown(false);
end;

procedure Tfrmpontotrabalho.actipontoExecute(Sender: TObject);
var
  dti, dtf : TDate;
begin
  dti := edtdtinicio.Date;
  dtf := edtdttermino.Date;
  if dlgDataInicioFinal(dti, dtf, false, 'Data') and ImportarIponto(dti, dtf) then
  begin
    MessageDlg('Importação concluída com sucesso.', mtInformation, [mbOK], 0);
    actatualizarqueryExecute(actatualizarquery);
  end;
end;

procedure Tfrmpontotrabalho.cbxcdfuncionarioPropertiesEditValueChanged(Sender: TObject);
begin
  actatualizarqueryExecute(actatualizarquery);
end;

procedure Tfrmpontotrabalho.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column, colboferiado : TcxGridDBBandedColumn;
begin
  Column       := tbvSemana;
  colboferiado := tbvboferiado;
  if (AViewInfo.GridRecord.DisplayTexts[Column.Index] = __sabado) or (AViewInfo.GridRecord.DisplayTexts[Column.Index] = _domingo) or (AViewInfo.GridRecord.DisplayTexts[colboferiado.Index] = _S) then
  begin
    ACanvas.Font.Color := clGreen;
  end;
end;

procedure Tfrmpontotrabalho.teste1Click(Sender: TObject);
begin
  if messagedlg('Tem certeza que deseja adicionar uma OCORRÊNCIA DE RH '+tmenuitem(sender).Caption+'?', mtConfirmation, [mbyes, mbno], 0) = mrno then
  begin
    Exit;
  end;
  inserirRHOcorrencia(qregistro.CodigodoString(_tprhocorrencia, uppercase(RemoverChar(tmenuitem(sender).Caption, '&')), _nmtprhocorrencia));
end;

procedure Tfrmpontotrabalho.actprimeiroExecute(Sender: TObject);
begin
  edtdtinicio.Date  := RetornaSQLData('select min(dtemissao) from pontotrabalho');
  edtdttermino.Date := Ultimo_Dia_Mes(edtdtinicio.Date);
end;

procedure Tfrmpontotrabalho.actanteriorExecute(Sender: TObject);
begin
  edtdtinicio.Date  := Primeiro_dia_mes_anterior(edtdtinicio.Date);
  edtdttermino.Date := Ultimo_Dia_Mes(edtdtinicio.Date);
end;

procedure Tfrmpontotrabalho.actproximoExecute(Sender: TObject);
begin
  edtdtinicio.Date  := Primeiro_dia_mes_proximo(edtdtinicio.Date);
  edtdttermino.Date := Ultimo_Dia_Mes(edtdtinicio.Date);
end;

procedure Tfrmpontotrabalho.actultimoExecute(Sender: TObject);
begin
  edtdtinicio.Date  := Primeiro_dia_mes(RetornaSQLData('select max(dtemissao) from pontotrabalho'));
  edtdttermino.Date := Ultimo_Dia_Mes(edtdtinicio.Date);
end;

procedure Tfrmpontotrabalho.gerar_dias_ponto;
var
  dti, dtf: TDate;
  boinserir_ponto, boinserir : Boolean;
begin
  q.q.DisableControls;
  try
    if qregistro.InteirodoCodigo(_funcionario, cdfuncionario, _cdstfuncionario) = 3 then
    begin
      Exit;
    end;
    if edtdtinicio.Date < QRegistro.DatadoCodigo(_funcionario, cdfuncionario, _dtadmissao) then
    begin
      if edtdttermino.Date < QRegistro.DatadoCodigo(_funcionario, cdfuncionario, _dtadmissao) then
      begin
        Exit;
      end
      else
      begin
        dti := QRegistro.DatadoCodigo(_funcionario, cdfuncionario, _dtadmissao);
      end;
    end
    else
    begin
      dti := edtdtinicio.Date;
    end;
    dtf := edtdttermino.Date;
    boinserir_ponto := False;
    repeat
      q.q.First;
      boinserir := true;
      while not q.q.Eof do
      begin
        if q.q.FieldByName(_dtemissao).AsDateTime = dti then
        begin
          boinserir := false;
          Break;
        end;
        q.q.Next;
      end;
      if boinserir then
      begin
        inserir_data_ponto(dti);
        boinserir_ponto := True;
      end;
      dti := dti + 1;
    until dti >= dtf;
    if boinserir_ponto then
    begin
      q.q.ApplyUpdates(0);
    end;
  finally
    q.q.EnableControls;
  end;
end;

function Tfrmpontotrabalho.SeCampoHRPONTO(fieldname:string):boolean;
begin
  fieldname := lowercase(fieldname);
  result := (fieldname = _hrponto1) or (fieldname = _hrponto2) or (fieldname = _hrponto3) or (fieldname = _hrponto4);
end;

procedure Tfrmpontotrabalho.inserirRHOcorrencia(cdtprhocorrencia : integer);
var
  i, x, c: Integer;
  rhocorrencialist : trhocorrencialist;
begin
  rhocorrencialist := trhocorrencialist.Create;
  try
    for i := 0 to tbv.ViewData.RowCount -1 do
    begin
      if tbv.ViewData.Records[i].Selected then
      begin
        for x := 0 to tbv.ColumnCount - 1 do
        begin
          if tbv.Columns[x].Caption = 'Dia' then
          begin
            c := x;
          end;
          if tbv.Columns[x].Selected and SeCampoHRPONTO(tbv.Columns[x].DataBinding.FieldName) then
          begin
            rhocorrencialist.New;
            rhocorrencialist.Items[rhocorrencialist.Count-1].hremissao := tbv.ViewData.Records[i].Values[x];
            rhocorrencialist.Items[rhocorrencialist.Count-1].dtemissao := tbv.ViewData.Records[i].Values[c];
            rhocorrencialist.Items[rhocorrencialist.Count-1].cdfuncionario := strtoint(edtcdfuncionario.Text);
            rhocorrencialist.Items[rhocorrencialist.Count-1].cdtprhocorrencia := cdtprhocorrencia;
          end;
        end;
      end;
    end;
    for i := 0 to rhocorrencialist.Count -1 do
    begin
      if not rhocorrencialist.Items[i].Existe then
      begin
        rhocorrencialist.Items[i].Insert;
      end;
    end;
  finally
    freeandnil(rhocorrencialist);
  end;
end;

procedure Tfrmpontotrabalho.inserir_data_ponto(dti: TDate);
var
  cdturno : integer;
begin
  cdturno := qregistro.InteirodoCodigo(_funcionario, cdfuncionario, _cdturno);
  if cdturno = 0 then
  begin
    MessageDlg('Turno não está definido no funcionário.', mtInformation, [mbOK], 0);
    Abort;
  end;
  q.q.Append;
  q.q.FieldByName(_cdempresa).AsLargeInt     := empresa.cdempresa;
  q.q.FieldByName(_CDFUNCIONARIO).asinteger:= cdfuncionario;
  q.q.FieldByName(_DTEMISSAO).AsDateTime   := dti;
  q.q.FieldByName(_BOFERIADO).asstring     := get_dia_eh_feriado(dti);
  q.q.FieldByName(_cdturno).asinteger      := cdturno;
  RegistraInformacao_(q.q);
  q.q.Post;
end;

procedure Tfrmpontotrabalho.tbv2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: String);
begin
  if VarIsNull(avalue) then
  begin
    AText := '';
    Exit;
  end;
  atext := get_total_hora_minuto(AValue);
  if Atext = '0:0' then
  begin
    atext := '';
  end;
end;

procedure Tfrmpontotrabalho.acteditarExecute(Sender: TObject);
begin
  tbv.OptionsData.Editing  := true;
  actsalvar.Enabled        := True;
  actcancelar.Enabled      := True;
  actCalcular.Enabled      := True;
  actatualizar.Enabled     := False;
  acteditar.Enabled        := False;
  edtcdfuncionario.Enabled := False;
  cbxcdfuncionario.Enabled := False;
  edtdtinicio.Enabled      := False;
  edtdttermino.Enabled     := False;
end;

procedure Tfrmpontotrabalho.qryBeforePost(DataSet: TDataSet);
begin
  pontotrabalho.Select(dataset);
  pontotrabalho.CalcularHoras;
  pontotrabalho.Atribuir(dataset);
end;

procedure Tfrmpontotrabalho.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
  freeandnil(pontotrabalho);
end;

procedure Tfrmpontotrabalho.lblcdfuncionarioDblClick(Sender: TObject);
begin
  if not VarIsNull(cbxcdfuncionario.EditValue) then
  begin
    frmmain.Abrirfuncionario(cbxcdfuncionario.EditValue)
  end;
end;

procedure Tfrmpontotrabalho.actCalcularExecute(Sender: TObject);
var
  ql, qn : TClasseQuery;
begin
  ql := TClasseQuery.Create;
  qn := TClasseQuery.Create;
  try
    ql.q.SQL.text   := 'select dtferiado from feriadolocal where cdempresa='+empresa.cdempresa.tostring+' and dtferiado between '+GetDtBanco(edtdtinicio.Date)+' and '+GetDtBanco(edtdttermino.Date);
    ql.q.Open;
    qn.q.SQL.text   := 'select dtferiado from feriado where dtferiado between '+GetDtBanco(edtdtinicio.Date)+' and '+GetDtBanco(edtdttermino.Date);
    qn.q.Open;
    q.q.First;
    while not q.q.Eof do
    begin
      q.q.Edit;
      if ql.q.Locate(_dtferiado, q.q.fieldbyname(_dtemissao).AsDateTime, []) then
      begin
        q.q.FieldByName(_boferiado).AsString := _S
      end
      else if qn.q.Locate(_dtferiado, q.q.fieldbyname(_dtemissao).AsDateTime, []) then
      begin
        q.q.FieldByName(_boferiado).AsString := _S
      end
      else
      begin
        q.q.FieldByName(_boferiado).AsString := _n;
      end;
      q.q.Post;
      q.q.Next;
    end;
    q.q.First;
  finally
    freeandnil(ql);
    freeandnil(qn);
  end;
end;

procedure Tfrmpontotrabalho.edtcdfuncionarioEnter(Sender: TObject);
begin
  abrir_tabela(_funcionario);
  colorenter(sender);
end;

procedure Tfrmpontotrabalho.edtcdfuncionarioExit(Sender: TObject);
begin
  if TQForm.EditLocalizarExit(self, _funcionario, _funcionario) then
  begin
    cbxcdfuncionario.EditValue := edtcdfuncionario.Text
  end
  else
  begin
    cbxcdfuncionario.Clear;
  end;
  colorexit(Sender);
  actatualizarqueryExecute(actatualizarquery);
end;

procedure Tfrmpontotrabalho.edtcdfuncionarioKeyPress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
  if (key = #13) and (edtcdfuncionario.Text <> '') then
  begin
    edtcdfuncionarioExit(edtcdfuncionario);
    edtcdfuncionario.SelectAll;
  end;
end;

procedure Tfrmpontotrabalho.edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarfuncionario;
  if cd <> 0 then
  begin
    cbxcdfuncionario.EditValue := cd.ToString;
    edtcdfuncionario.Text      := cd.ToString;
  end
end;

procedure Tfrmpontotrabalho.carregarMenuRHOcorrencia;
var
  item : TMenuitem;
  q : TClasseQuery;
  i : integer;
begin
  q := TClasseQuery.create('select nmtprhocorrencia from tprhocorrencia order by nmtprhocorrencia');
  try
    i := 0;
    while pumrhOcorrencia.Items.count > 1 do
    begin
      if pumrhOcorrencia.Items[i].Name <> 'teste1' then
      begin
        pumrhOcorrencia.Items.Delete(i)
      end
      else
      begin
        i := i + 1;
      end;
    end;
    while not q.q.eof do
    begin
      item         := tmenuitem.Create(pumrhOcorrencia);
      item.Caption := Maiuscula(q.q.fields[0].asstring);
      item.OnClick := teste1.OnClick;
      pumrhOcorrencia.Items.Add(item);
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure Tfrmpontotrabalho.cbxcdfuncionarioEnter(Sender: TObject);
begin
  abrir_tabela(_funcionario);
  colorenter(sender);
end;

procedure Tfrmpontotrabalho.cbxcdfuncionarioExit(Sender: TObject);
begin
  if cbxcdfuncionario.Text = '' then
  begin
    edtcdfuncionario.Clear
  end
  else
  begin
    edtcdfuncionario.Text := cbxcdfuncionario.EditValue;
  end;
  colorexit(sender);
  actatualizarqueryExecute(actatualizarquery);
end;

procedure Tfrmpontotrabalho.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmpontotrabalho.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmpontotrabalho.actsalvarExecute(Sender: TObject);
begin
  edtcdfuncionario.Enabled := true;
  cbxcdfuncionario.Enabled := true;
  edtdtinicio.Enabled      := true;
  edtdttermino.Enabled     := true;
  actatualizar.Enabled:= True;
  acteditar.Enabled   := True;
  actsalvar.Enabled   := False;
  actcancelar.Enabled := false;
  actCalcular.Enabled := False;
  q.q.ApplyUpdates(0);
end;

procedure Tfrmpontotrabalho.actcancelarExecute(Sender: TObject);
begin
  edtcdfuncionario.Enabled := true;
  cbxcdfuncionario.Enabled := true;
  edtdtinicio.Enabled      := true;
  edtdttermino.Enabled     := true;
  actatualizar.Enabled := True;
  acteditar.Enabled   := True;
  actsalvar.Enabled   := False;
  actcancelar.Enabled := false;
  actCalcular.Enabled := False;
  q.q.CancelUpdates;
end;

procedure Tfrmpontotrabalho.qryAfterOpen(DataSet: TDataSet);
begin
  acteditar.Enabled    := q.q.RecordCount > 0;
  actatualizar.Enabled := acteditar.Enabled;
end;

procedure Tfrmpontotrabalho.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmpontotrabalho.actatualizarExecute(Sender: TObject);
begin
  actatualizarqueryExecute(actatualizarquery);
end;

procedure Tfrmpontotrabalho.tbvCDTPABONO1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBBandedColumn;
begin
  Column := tbvNUCOR1;
  if AViewInfo.GridRecord.DisplayTexts[Column.Index] <> '' then
  begin                          
    ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  end;
end;

procedure Tfrmpontotrabalho.tbvCDTPABONO2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBBandedColumn;
begin
  Column := tbvNUCOR2;
  if AViewInfo.GridRecord.DisplayTexts[Column.Index] <> '' then
  begin
    ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  end;
end;

procedure Tfrmpontotrabalho.tbvCDTPABONO3CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBBandedColumn;
begin
  Column := tbvNUCOR3;
  if AViewInfo.GridRecord.DisplayTexts[Column.Index] <> '' then
  begin
    ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  end;
end;

procedure Tfrmpontotrabalho.tbvCDTPABONO4CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBBandedColumn;
begin
  Column := tbvNUCOR4;
  if AViewInfo.GridRecord.DisplayTexts[Column.Index] <> '' then
  begin
    ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  end;
end;

end.
