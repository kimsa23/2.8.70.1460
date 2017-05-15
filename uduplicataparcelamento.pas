unit uduplicataparcelamento;

interface

uses
  System.Actions, System.UITypes,
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, Menus, Buttons,
  ExtCtrls, Mask, Spin, dialogs,
  DB, dbclient,
  uexportarexcel, ustrings, unumero, udatahora, ulocalizarcliente,
  ulocalizar, uconstantes, uregistro,
  classeregistrainformacao, classegerar, classeexecutasql, classeempresa,
  classeaplicacao, classeretornasql, classeform, classequery,
  cxGroupBox, cxSpinEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc, cxLookAndFeelPainters, cxButtons, cxButtonEdit, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLookAndFeels, cxPC, cxCheckBox, cxCalendar,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxNavigator,
  dxCore, cxDateUtils, ComCtrls, ClasseLocalizar;

type
  TfrmdlgGerarParcelamentoDuplicata = class(TForm)
    dts: TDataSource;
    cds: TClientDataSet;
    cdsdtvencimento: TDateField;
    cdsvlduplicata: TCurrencyField;
    lblcliente: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblnuparcela: TLabel;
    lblvltotal: TLabel;
    lbldiavencimento: TLabel;
    lblvlparcela: TLabel;
    Label9: TLabel;
    lblnmplconta: TLabel;
    grd: TcxGrid;
    grdDBTableView1: TcxGridDBTableView;
    grdDBTableView1dtvencimento: TcxGridDBColumn;
    grdDBTableView1vlduplicata: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    edtnuplconta: TcxButtonEdit;
    edtdshistorico: TcxTextEdit;
    edtdiavencimento: TcxSpinEdit;
    edtnuparcela: TcxSpinEdit;
    edtvlparcela: TcxCalcEdit;
    edtvltotal: TcxCalcEdit;
    btngerar: TcxButton;
    btnok: TcxButton;
    btncancelar: TcxButton;
    edtdtemissao: TcxDateEdit;
    lbldtemissao: TLabel;
    ckbavista: TcxCheckBox;
    cbxcdtpcobranca: TcxLookupComboBox;
    cdscdtpcobranca: TIntegerField;
    cdsdshistorico: TStringField;
    grdDBTableView1cdplconta: TcxGridDBColumn;
    grdDBTableView1cdtpcobranca: TcxGridDBColumn;
    grdDBTableView1dshistorico: TcxGridDBColumn;
    lblcondpagto: TLabel;
    cbxcdcondpagto: TcxLookupComboBox;
    grdDBTableView1Cdcliente: TcxGridDBColumn;
    grdDBTableView1NMCLIENTE: TcxGridDBColumn;
    cdsCDCLIENTE: TFMTBCDField;
    cdsCDPLCONTA: TIntegerField;
    edtcdcliente: TcxButtonEdit;
    lblnmcliente: TLabel;
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure btngerarClick(Sender: TObject);
    procedure edtvlparcelaExit(Sender: TObject);
    procedure edtvltotalExit(Sender: TObject);
    procedure edtnuparcelaExit(Sender: TObject);
    procedure edtnuplcontaExit(Sender: TObject);
    procedure edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnokClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure cbxcdtpcobrancaPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtdshistoricoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cbxcdcondpagtoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cdsAfterPost(DataSet: TDataSet);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsvlduplicataValidate(Sender: TField);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdtpcobrancaEnter(Sender: TObject);
    procedure cbxcdcondpagtoEnter(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure edtnuplcontaPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure grdDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclienteExit(Sender: TObject);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private { Private declarations }
    sql : tstrings;
    cdcte, cdsaida : string;
    function existecondpagto:boolean;
    function gerar_sql:integer;
    procedure inserircondpagto;
    procedure setvisible;
    function FillGrid:integer;
    procedure gerarduplicata(cdcondpagto:string);
    procedure setdados;
  public { Public declarations }
  end;

var
  frmdlgGerarParcelamentoDuplicata: TfrmdlgGerarParcelamentoDuplicata;

function GerarParcelamentoDuplicata:integer;
function RedefinirParcelamentoDuplicata(cdsaida, cdcte:string):boolean;

implementation

uses uDtmMain, Math;

{$R *.dfm}

function GerarParcelamentoDuplicata:integer;
var
  cdduplicata : integer;
begin
  result := 0;
  frmdlgGerarParcelamentoDuplicata := tfrmdlgGerarParcelamentoDuplicata.create(nil);
  try
    frmdlgGerarParcelamentoDuplicata.sql                    := tstringlist.create;
    frmdlgGerarParcelamentoDuplicata.edtdtemissao.Date      := DtBanco;
    frmdlgGerarParcelamentoDuplicata.lblcondpagto.Visible   := false;
    frmdlgGerarParcelamentoDuplicata.cbxcdcondpagto.Visible := false;
    frmdlgGerarParcelamentoDuplicata.cds.AfterPost          := nil;
    frmdlgGerarParcelamentoDuplicata.cds.Open;
    if frmdlgGerarParcelamentoDuplicata.ShowModal = mrok then
    begin
      cdduplicata := frmdlgGerarParcelamentoDuplicata.gerar_sql;
      if ExecutaScript(frmdlgGerarParcelamentoDuplicata.sql) then
      begin
        result := cdduplicata;
      end;
    end;
  finally
    freeandnil(frmdlgGerarParcelamentoDuplicata.sql);
    freeandnil(frmdlgGerarParcelamentoDuplicata);
  end;
end;

function RedefinirParcelamentoDuplicata(cdsaida, cdcte:string):boolean;
var
  cdretorno : integer;
begin
  result := false;
  frmdlgGerarParcelamentoDuplicata := tfrmdlgGerarParcelamentoDuplicata.create(nil);
  try
    frmdlgGerarParcelamentoDuplicata.sql     := tstringlist.create;
    frmdlgGerarParcelamentoDuplicata.cdsaida := cdsaida;
    frmdlgGerarParcelamentoDuplicata.cdcte   := cdcte;
    frmdlgGerarParcelamentoDuplicata.setdados;
    frmdlgGerarParcelamentoDuplicata.setvisible;
    frmdlgGerarParcelamentoDuplicata.cds.AfterPost := nil;
    cdretorno := frmdlgGerarParcelamentoDuplicata.fillgrid;
    if cdretorno = 0  then
    begin
      messagedlg('Redefinir contas a receber nao é possível.'#13'Existe algum contas a receber quitado integral ou parcialmente.', mtinformation, [mbok], 0);
      exit;
    end;
    if cdretorno = -1  then
    begin
      messagedlg('Redefinir contas a receber nao é possível.'#13'Existe algum contas a receber que faz parte da cobrança bancária.', mtinformation, [mbok], 0);
      exit;
    end;
    frmdlgGerarParcelamentoDuplicata.cds.Open;
    frmdlgGerarParcelamentoDuplicata.cds.AfterPost := frmdlgGerarParcelamentoDuplicata.cdsAfterPost;
    result := frmdlgGerarParcelamentoDuplicata.ShowModal = mrok;
    if result then
    begin
      if not frmdlgGerarParcelamentoDuplicata.existecondpagto then
      begin
        if messagedlg('Condicao de pagamento inexistente no banco de dados.'#13'Deseja criá-lo?', mtconfirmation, [mbyes,mbno], 0) = mryes then
        begin
          frmdlgGerarParcelamentoDuplicata.inserircondpagto;
        end;
      end;
      frmdlgGerarParcelamentoDuplicata.gerar_sql;
      result := ExecutaScript(frmdlgGerarParcelamentoDuplicata.sql);
    end;
  finally
    freeandnil(frmdlgGerarParcelamentoDuplicata.sql);
    freeandnil(frmdlgGerarParcelamentoDuplicata);
  end;
end;

procedure TfrmdlgGerarParcelamentoDuplicata.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmdlgGerarParcelamentoDuplicata.btngerarClick(Sender: TObject);
  procedure inserir_dados;
  begin
    if cbxcdtpcobranca.EditValue <> 0 then
    begin
      cdsCDTPCOBRANCA.AsInteger := cbxcdtpcobranca.EditValue;
    end;
    cds.fieldbyname(_CDCLIENTE).AsString   := edtcdcliente.Text;
    cdsCDPLCONTA.AsString   := CodigodoCampo(_plconta, edtnuplconta.Text, _nunivel);
    cdsDSHISTORICO.AsString := edtdshistorico.Text;
  end;
var
  i, mes, ano, dia_i : integer;
  vlparcela, vltotal : currency;
  procedure acrescentar_mes;
  begin
    inc(mes);
    if mes > 12 then
    begin
      mes := 1;
      inc(ano);
    end;
  end;
begin
  if empresa.financeiro.boplconta and (edtnuplconta.Text = '') and ((cdsaida = '') or (cdcte = '')) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_plano_de_contas]), mtinformation, [mbok], 0);
    edtnuplconta.SetFocus;
    Abort;
  end;
  vltotal   := 0;
  vlparcela := RoundTo(edtvltotal.Value / edtnuparcela.Value, -2);
  mes       := strtoint(FormatDateTime(_mm, edtdtemissao.Date));
  ano       := strtoint(formatdatetime(_YYYY, edtdtemissao.Date));
  dia_i     := edtdiavencimento.Value;
  // determinar o mes e ano inicial
  if not ckbavista.Checked then
  begin
    acrescentar_mes;
  end;
  // gerar registro no client dataset
  cds.EmptyDataSet;
  for i := 1 to edtnuparcela.Value do
  begin
    cds.Append;
    if dia_i > strtoint(formatdatetime(_dd, Ultimo_Dia_Mes(strtodate(_01+'/'+inttostr(mes)+'/'+inttostr(ano))))) then dia_i := dia_i - 1;
    if dia_i > strtoint(formatdatetime(_dd, Ultimo_Dia_Mes(strtodate(_01+'/'+inttostr(mes)+'/'+inttostr(ano))))) then dia_i := dia_i - 1;
    if dia_i > strtoint(formatdatetime(_dd, Ultimo_Dia_Mes(strtodate(_01+'/'+inttostr(mes)+'/'+inttostr(ano))))) then dia_i := dia_i - 1;
    if dia_i > strtoint(formatdatetime(_dd, Ultimo_Dia_Mes(strtodate(_01+'/'+inttostr(mes)+'/'+inttostr(ano))))) then dia_i := dia_i - 1;
    cdsdtvencimento.AsDateTime := strtodate(inttostr(dia_i)+'/'+inttostr(mes)+'/'+inttostr(ano));
    if (not (i < edtnuparcela.Value)) and (vltotal < edtvltotal.Value) then
    begin
      vlparcela := edtvltotal.Value - vltotal;
    end;
    cdsvlduplicata.AsCurrency := vlparcela;
    inserir_dados;
    cds.Post;
    acrescentar_mes;
    dia_i   := edtdiavencimento.Value;
    vltotal := vltotal + vlparcela;
  end;
  cds.First;
end;

function TfrmdlgGerarParcelamentoDuplicata.gerar_sql:integer;
var
  cdcondpagto, cdplconta, nuplconta, sqlregistras, cdtpcobranca, nusaida, nuduplicata: string;
  codigo, cdduplicata : integer;
  procedure gerar_tipo_sequencia_1;
  begin
    if cds.RecordCount > 1 then nuduplicata := nusaida+'/'+char(cds.RecNo+64)
                           else nuduplicata := nusaida;
  end;
  procedure gerar_tipo_sequencia_2;
  begin
    if cds.RecordCount > 1 then nuduplicata := nusaida+'/'+inttostr(cds.RecNo)
                           else nuduplicata := nusaida;
  end;
  procedure gerar_tipo_sequencia_3;
  begin
    if cds.RecordCount > 1 then nuduplicata := nusaida+'/'+char(cds.RecNo+64)+'-'+char(64+cds.RecordCount)
                           else nuduplicata := nusaida;
  end;
  procedure gerar_tipo_sequencia_4;
  begin
    if cds.RecordCount > 1 then nuduplicata := nusaida+'/'+inttostr(cds.RecNo+1)+'-'+inttostr(cds.RecordCount)
                           else nuduplicata := nusaida;
  end;
  procedure gerar_tipo_sequencia;
  begin
         if empresa.faturamento.saida.tpsequencianuduplicata = _1 then gerar_tipo_sequencia_1
    else if empresa.faturamento.saida.tpsequencianuduplicata = _2 then gerar_tipo_sequencia_2
    else if empresa.faturamento.saida.tpsequencianuduplicata = _3 then gerar_tipo_sequencia_3
    else if empresa.faturamento.saida.tpsequencianuduplicata = _4 then gerar_tipo_sequencia_4;
  end;
begin
  codigo := 0;
  cdtpcobranca := cbxcdtpcobranca.EditValue;
  if cdtpcobranca = '' then
  begin
    cdtpcobranca := _NULL;
  end;
  cdplconta := _null;
  nuplconta := edtnuplconta.Text;
  if nuplconta = '' then
  begin
    nuplconta := _null
  end
  else
  begin
    cdplconta := CodigodoCampo(_plconta, nuplconta, _nunivel);
    nuplconta := quotedstr(nuplconta);
  end;
  if cdsaida <> '' then
  begin
    cdcte := _null;
    cdcondpagto := cbxcdcondpagto.EditValue;
    sql.add('update saida set cdplconta='+cdplconta+',nuplconta='+nuplconta+',cdcondpagto='+cdcondpagto+',cdtpcobranca='+cdtpcobranca+',dshistorico='+quotedstr(edtdshistorico.Text)+' where cdempresa='+empresa.cdempresa.tostring+' and cdsaida='+cdsaida+';');
    sql.Add('delete from duplicata where cdempresa='+empresa.cdempresa.tostring+' and cdsaida='+cdsaida+';');
    nusaida := NomedoCodigo(_saida, cdsaida, _nusaida);
  end;
  if (cdcte <> '') and (cdcte <> _null) then
  begin
    cdsaida := _null;
    cdcondpagto := cbxcdcondpagto.EditValue;
    sql.add('update cte set cdplconta='+cdplconta+',nuplconta='+nuplconta+',cdcondpagto='+cdcondpagto+',cdtpcobranca='+cdtpcobranca+',dshistorico='+quotedstr(edtdshistorico.Text)+' where cdempresa='+empresa.cdempresa.tostring+' and cdcte='+cdcte+';');
    sql.Add('delete from duplicata where cdempresa='+empresa.cdempresa.tostring+' and cdcte='+cdcte+';');
    nusaida := cdcte;
  end;
  cds.First;
  sqlregistras := SQLRegistra;
  while not cds.Eof do
  begin
    cdduplicata := qgerar.GerarCodigo(_duplicata);
    if codigo = 0 then
    begin
      codigo := cdduplicata;
    end;
    if cds.RecNo = 1 then
    begin
      result := cdduplicata;
    end;
    if ((cdsaida = '') or (cdsaida = _null)) and ((cdcte = '') or (cdcte = _null)) then
    begin
      cdsaida := _null;
      cdcte   := _null;
      if cds.RecordCount > 1 then nuduplicata := codigo.ToString+'/'+char(cds.RecNo+64)
                             else nuduplicata := codigo.ToString;
    end
    else
    begin
      gerar_tipo_sequencia;
    end;
    cdtpcobranca := cdscdtpcobranca.AsString;
    if (cdtpcobranca = '') or (cdtpcobranca = _0) then
    begin
      cdtpcobranca := _NULL;
    end;
    sql.add('insert into duplicata(CDTPDUPLICATA,NUPLCONTA,CDPLCONTA,CDDUPLICATA,CDSAIDA,cdcte,CDSTDUPLICATA,CDCLIENTE,CDTPCOBRANCA,NUDUPLICATA,'+
            'DTEMISSAO,DTVENCIMENTO,DTENTRADA,DTPRORROGACAO,VLDUPLICATA,vlsaldo,'+
            'DSHISTORICO,VLBAIXA,VLDESCONTO,VLDEVOLUCAO,VLABATIMENTO,PRMORADIARIA,'+
            'PRMULTA,VLDEDUCAO,VLACRESCIMO,VLRECEBIDO,VLMULTA,VLJUROS,'+_sqlreg+_1+','+
            nuplconta+','+
            cdplconta+','+
            cdduplicata.ToString+','+
            cdsaida+','+cdcte+',1,'+
            edtcdcliente.text+','+
            cdtpcobranca+','+
            quotedstr(nuduplicata)+','+
            GetDtBanco(edtdtemissao.Date)+','+
            GetDtBanco(cds.fieldbyname(_dtvencimento).asdatetime)+','+
            getdtbanco(edtdtemissao.Date)+','+
            GetDtBanco(cds.fieldbyname(_dtvencimento).asdatetime)+','+
            substituir(cds.fieldbyname(_vlduplicata).AsString, ',', '.')+','+
            substituir(cds.fieldbyname(_vlduplicata).AsString, ',', '.')+','+
            quotedstr(edtdshistorico.text)+','+
            '0,0,0,0,'+
            getcurrencys(Empresa.financeiro.duplicata.prmoradiaria)+','+
            getcurrencys(Empresa.financeiro.duplicata.prmulta)+',0,0,0,0,0,'+sqlregistras+';');
    cds.Next;
  end;
end;

procedure TfrmdlgGerarParcelamentoDuplicata.edtvlparcelaExit(Sender: TObject);
begin
  edtvltotal.Value := edtvlparcela.Value * edtnuparcela.Value;
  colorexit(sender);
end;

procedure TfrmdlgGerarParcelamentoDuplicata.edtvltotalExit(Sender: TObject);
begin
  if edtnuparcela.Value = 0 then edtvlparcela.Value := 0
                            else edtvlparcela.Value := edtvltotal.Value / edtnuparcela.Value;
  colorexit(sender);
end;

procedure TfrmdlgGerarParcelamentoDuplicata.edtnuparcelaExit(Sender: TObject);
begin
  if edtnuparcela.Value = 0 then edtvlparcela.Value := 0
                            else edtvlparcela.Value := edtvltotal.Value / edtnuparcela.Value;
  colorexit(sender);
end;

procedure TfrmdlgGerarParcelamentoDuplicata.edtnuplcontaExit(Sender: TObject);
begin
  if tedit(sender).text = '' then
  begin
    lblnmplconta.Caption := '';
    colorexit(sender);
    exit;
  end;
  if not CodigoExiste(_plconta, _nunivel, _string, tedit(sender).text) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [tedit(sender).text, maiuscula(_plano+' '+_contas)]), mterror, [mbok], 0);
    tedit(sender).setfocus;
    abort;
  end;
  lblnmplconta.Caption := NomedoCodigo(_plconta, CodigodoCampo(_plconta, edtnuplconta.text, _nunivel));
  colorexit(sender);
end;

procedure TfrmdlgGerarParcelamentoDuplicata.edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  TQForm.btnfindclick(tedit(edtnuplconta), lblnmplconta);
end;

procedure TfrmdlgGerarParcelamentoDuplicata.edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnuplcontaPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmdlgGerarParcelamentoDuplicata.btnokClick(Sender: TObject);
begin
  if cds.State <> dsbrowse then
  begin
    cds.Post;
  end;
  if empresa.financeiro.boplconta and (cdsaida = '') then
  begin
    if edtnuplconta.Text = '' then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_plano_de_contas]), mtinformation, [mbok], 0);
      edtnuplconta.SetFocus;
      Abort;
    end;
    cds.DisableControls;
    try
      cds.First;
      while not cds.Eof do
      begin
        if cdsCDPLCONTA.IsNull then
        begin
          cds.EnableControls;
          messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_plano_de_contas]), mtinformation, [mbok], 0);
          cds.EnableControls;
          cdsCDPLCONTA.FocusControl;
          Abort;
        end;
        cds.Next;
      end;
    finally
      cds.EnableControls;
    end;
  end;
  modalresult := mrok;
end;

procedure TfrmdlgGerarParcelamentoDuplicata.btncancelarClick(Sender: TObject);
begin
//  close;
end;

procedure TfrmdlgGerarParcelamentoDuplicata.setvisible;
begin
  lblnuparcela.Visible     := false;
  edtnuparcela.Visible     := false;
  lbldiavencimento.Visible := false;
  edtdiavencimento.Visible := false;
  lblvlparcela.Visible     := false;
  edtvlparcela.Visible     := false;
  edtcdcliente.Properties.ReadOnly := true;
  edtvltotal.Properties.ReadOnly   := true;
  edtdtemissao.Properties.ReadOnly := true;
  ckbavista.Visible := false;
  btngerar.Visible  := false;
end;

function TfrmdlgGerarParcelamentoDuplicata.FillGrid:integer;
  function makesql:string;
  begin
    result := 'select d.dtvencimento'+
                    ',d.vlduplicata'+
                    ',d.vlsaldo'+
                    ',d.cdtpcobranca'+
                    ',d.dshistorico'+
                    ',d.cdplconta'+
                    ',i.cditcobranca '+
              'from duplicata d '+
              'left join itcobranca i on i.cdempresa=d.cdempresa and i.cdduplicata=d.cdduplicata '+
              'where d.cdempresa='+empresa.cdempresa.tostring+' and ';
    if cdsaida <> '' then result := result + 'd.cdsaida='+cdsaida
                     else result := result + 'd.cdcte='+cdcte;
    result := result + ' order by d.cdduplicata';
  end;
var
  s : TClasseQuery;
begin
  s := TClasseQuery.Create(makesql);
  try
    cds.OnNewRecord := nil;
    while not s.q.Eof do
    begin
      if s.q.fieldbyname(_vlsaldo).ascurrency <> s.q.fieldbyname(_vlduplicata).ascurrency then
      begin
        result := 0;
        exit;
      end;
      if not s.q.fieldbyname(_cd+_it+_cobranca).isnull then
      begin
        result := -1;
        exit;
      end;
      cds.Append;
      cdsdtvencimento.AsDateTime := s.q.fieldbyname(_dtvencimento).AsDateTime;
      cdsvlduplicata.AsCurrency  := s.q.fieldbyname(_vlduplicata).AsCurrency;
      cdscdtpcobranca.AsString   := s.q.fieldbyname(_cdtpcobranca).AsString;
      cdsdshistorico.AsString    := s.q.fieldbyname(_dshistorico).AsString;
      cdscdplconta.AsString      := s.q.fieldbyname(_cdPLCONTA).AsString;
      cds.Post;
      s.q.Next;
    end;
    cds.OnNewRecord := cdsNewRecord;
    result := 1;
  finally
    freeandnil(s);
  end;
end;

procedure TfrmdlgGerarParcelamentoDuplicata.cbxcdtpcobrancaPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  cds.AfterPost := nil;
  cds.First;
  while not cds.Eof do
  begin
    cds.Edit;
    cdscdtpcobranca.AsString := cbxcdtpcobranca.EditValue;
    cds.Post;
    cds.Next;
  end;
  cds.AfterPost := cdsAfterPost;
end;

procedure TfrmdlgGerarParcelamentoDuplicata.edtcdclienteExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente);
  colorexit(sender);
end;

procedure TfrmdlgGerarParcelamentoDuplicata.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmdlgGerarParcelamentoDuplicata.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdclientePropertiesButtonClick(edtcdcliente, lblnmcliente);
end;

procedure TfrmdlgGerarParcelamentoDuplicata.edtdshistoricoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  cds.AfterPost := nil;
  cds.First;
  while not cds.Eof do
  begin
    cds.Edit;
    cdsdshistorico.AsString := edtdshistorico.Text;
    cds.Post;
    cds.Next;
  end;
  cds.AfterPost := cdsAfterPost;
end;

procedure TfrmdlgGerarParcelamentoDuplicata.cbxcdcondpagtoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  gerarduplicata(cbxcdcondpagto.EditValue);
end;

procedure TfrmdlgGerarParcelamentoDuplicata.gerarduplicata(cdcondpagto: string);
var
  c : TClasseQuery;
  vltotal, vlduplicata : currency;
begin
  if cdcondpagto = '' then
  begin
    exit;
  end;
  c := TClasseQuery.Create('select nudias from itcondpagto where cdempresa='+empresa.cdempresa.tostring+' and cdcondpagto='+cdcondpagto+' order by nudias');
  try
    cds.AfterPost := nil;
    cds.EmptyDataSet;
    vlduplicata := RoundTo(edtvltotal.Value / c.q.RecordCount, -2);
    vltotal     := edtvltotal.Value;
    while not c.q.Eof do
    begin
      cds.Append;
      cdsdtvencimento.AsDateTime := edtdtemissao.Date + c.q.fieldbyname(_nudias).AsInteger;
      if cds.RecNo = cds.RecordCount then cdsvlduplicata.AsCurrency := vltotal
                                     else cdsvlduplicata.AsCurrency := vlduplicata;
      vltotal := vltotal - vlduplicata;
      cds.Post;
      c.q.Next;
    end;
    cds.AfterPost := cdsAfterPost;
  finally
    freeandnil(c);
  end;
end;

procedure TfrmdlgGerarParcelamentoDuplicata.cdsAfterPost(DataSet: TDataSet);
var
  vldif, vltotal, vlparcela : currency;
  recno : integer;
begin
  if (cds.Aggregates[0].Value > 0) and (cds.Aggregates[0].Value <> edtvltotal.Value) then
  begin
    recno         := cds.RecNo;
    cds.AfterPost := nil;
    try
      if cds.RecordCount = 1 then
      begin
        cds.Edit;
        cdsvlduplicata.AsCurrency := edtvltotal.Value;
        cds.Post;
        exit;
      end;
      if recno = 1 then
      begin
        cds.First;
        vldif := cdsvlduplicata.AsCurrency;
      end
      else if recno = cds.RecordCount then
      begin
        vldif := cdsvlduplicata.AsCurrency;
        cds.First;
      end
      else
      begin
        cds.First;
        vldif := 0;
        while cds.RecNo <= recno do
        begin
          vldif := vldif + cdsvlduplicata.AsCurrency;
          cds.Next;
        end;
      end;
      vltotal := edtvltotal.Value - vldif;
      if recno = cds.RecordCount then
      begin
        vlparcela := RoundTo(vltotal / (cds.RecordCount - 1), -2);
        cds.RecNo := 1;
      end
      else
      begin
        vlparcela := RoundTo(vltotal / (cds.RecordCount - recno), -2);
        cds.RecNo := recno;
        cds.Next;
      end;
      while not cds.Eof do
      begin
        cds.Edit;
        if cds.RecordCount = recno then
        begin
          if cds.RecNo = cds.RecordCount -1 then
          begin
            cdsvlduplicata.AsCurrency := vltotal;
            break;
          end
          else
          begin
            cdsvlduplicata.AsCurrency := vlparcela;
          end;
        end
        else
        begin
          if cds.RecNo = cds.RecordCount then cdsvlduplicata.AsCurrency := vltotal
                                         else cdsvlduplicata.AsCurrency := vlparcela;
        end;
        vltotal := vltotal - vlparcela;
        cds.Post;
        cds.Next;
      end;
      cds.RecNo := recno;
    finally
      cds.AfterPost := cdsAfterPost;
    end;
  end;
end;

procedure TfrmdlgGerarParcelamentoDuplicata.cdsNewRecord(DataSet: TDataSet);
begin
  cds.fieldbyname(_CDCLIENTE).AsString    := edtcdcliente.Text;
  cdscdplconta.AsString    := CodigodoCampo(_plconta, edtnuplconta.Text, _nunivel);
  cdscdtpcobranca.AsString := cbxcdtpcobranca.EditValue;
  cdsdshistorico.AsString  := edtdshistorico.Text;
end;

function TfrmdlgGerarParcelamentoDuplicata.existecondpagto: boolean;
var
  nudias : integer;
  citcondpagto, ccondpagto : TClasseQuery;
  function makesql:string;
  begin
    result := 'select i.cdcondpagto,count(*) qtreg '+
              'from condpagto c '+
              'left join itcondpagto i on i.cdcondpagto=c.cdcondpagto and c.cdempresa=i.cdempresa '+
              'where i.cdempresa='+empresa.cdempresa.tostring+' and i.nudias='+inttostr(nudias)+' '+
              'group by i.cdcondpagto';
  end;
  function makesqlit:string;
  begin
    result := 'select cditcondpagto '+
              'from itcondpagto '+
              'where cdempresa='+empresa.cdempresa.tostring+' and nudias='+inttostr(nudias)+' and cdcondpagto='+ccondpagto.q.fieldbyname(_cdcondpagto).AsString
  end;
begin
  result := True;
  Exit;
  result := false;
  cds.First;
  while not cds.Eof do
  begin
    result := RetornaSQLInteger('select count(*) '+
                                'from itcondpagto '+
                                'where cdempresa='+empresa.cdempresa.tostring+' '+
                                'and nudias='+ inttostr(DiferencaDias(cdsdtvencimento.AsDateTime, edtdtemissao.Date))) <> 0;
    if result then
    begin
      break;
    end;
    cds.Next;
  end;
  if result then
  begin
    ccondpagto   := TClasseQuery.Create;
    citcondpagto := TClasseQuery.Create;
    try
      cds.First;
      nudias              := strtoint(floattostr(cdsdtvencimento.AsDateTime - edtdtemissao.Date));
      ccondpagto.q.Open(makesql);
      if ccondpagto.q.RecordCount = 0 then
      begin
        result := false;
        exit;
      end;
      while not ccondpagto.q.Eof do
      begin
        while not cds.Eof do
        begin
          nudias                := strtoint(floattostr(cdsdtvencimento.AsDateTime - edtdtemissao.Date));
          citcondpagto.q.Open(makesqlit);
          result := citcondpagto.q.RecordCount > 0;
          if result = false then
          begin
            break;
          end;
          cds.Next;
        end;
        if result = true then
        begin
          if ccondpagto.q.fields[1].AsInteger <> cds.RecordCount then
          begin
            result := false;
          end
          else
          begin
            cbxcdcondpagto.EditValue := ccondpagto.q.fieldbyname(_cdcondpagto).AsString;
            exit;
          end;
        end;
        ccondpagto.q.Next;
      end;
    finally
      freeandnil(ccondpagto);
      freeandnil(citcondpagto);
    end;
  end;
end;

procedure TfrmdlgGerarParcelamentoDuplicata.inserircondpagto;
  function getnmcondpagto:string;
  var
    nudias : integer;
  begin
    cds.IndexDefs.Add(_pk, _dtvencimento, []);
    cds.IndexName := _pk;
    cds.First;
    result := '';
    while not cds.Eof do
    begin
      nudias := strtoint(floattostr(cdsdtvencimento.AsDateTime - edtdtemissao.Date));
      if result <> '' then
      begin
        result := result +'/';
      end;
      result := result + inttostr(nudias);
      cds.Next;
    end;
    result := result + ' DIA(S)';
  end;
var
  cdcondpagto: string;
begin
  cdcondpagto := GerarCodigo(_condpagto);
  sql.Add('insert into condpagto(CDCONDPAGTO,BOENTRADA,BOCTE,BOSAIDA,CDSTCONDPAGTO,NMCONDPAGTO,NUDIAS,'+_sqlreg+cdcondpagto+',''N'',''N'',''S'',1,'+quotedstr(getnmcondpagto)+',null,'+SQLRegistra+';');
  cds.First;
  while not cds.Eof do
  begin
    sql.Add('insert into itcondpagto(CDITCONDPAGTO,CDCONDPAGTO,NUDIAS,'+_sqlreg+gerarcodigo(_itcondpagto)+','+cdcondpagto+','+inttostr(strtoint(floattostr(cdsdtvencimento.AsDateTime - edtdtemissao.Date)))+','+SQLRegistra+';');
    cds.Next;
  end;
  ExecutaScript(sql);
  sql.Clear;
  abrir_tabela(_condpagto+_s);
  cbxcdcondpagto.EditValue := cdcondpagto;
end;

procedure TfrmdlgGerarParcelamentoDuplicata.cdsvlduplicataValidate(Sender: TField);
begin
  if (sender.AsCurrency = 0) or sender.IsNull then
  begin
    messagedlg('Valor nao poder ser zero.'#13'Digite algum valor para continuar.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  if sender.AsCurrency < 0 then
  begin
    messagedlg('Valor nao poder ser negativo.'#13'Digite algum valor para continuar.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
end;

procedure TfrmdlgGerarParcelamentoDuplicata.cdsBeforePost(DataSet: TDataSet);
begin
  if cdsvlduplicata.IsNull then
  begin
    messagedlg('Valor nao poder ser zero.'#13'Digite algum valor para continuar.', mtinformation, [mbok], 0);
    cdsvlduplicata.FocusControl;
    abort;
  end;
end;

procedure TfrmdlgGerarParcelamentoDuplicata.FormCreate(Sender: TObject);
begin
  cbxcdtpcobranca.Properties.ListSource                                          := abrir_tabela(_tpcobranca);
  TcxLookupComboBoxProperties(grdDBTableView1cdtpcobranca.Properties).ListSource := abrir_tabela(_tpcobranca);
  TcxLookupComboBoxProperties(grdDBTableView1cdplconta.Properties).ListSource    := abrir_tabela(_plconta);
  cbxcdcondpagto.Properties.ListSource                                           := abrir_tabela(_condpagto+_s);
end;

procedure TfrmdlgGerarParcelamentoDuplicata.cbxcdtpcobrancaEnter(Sender: TObject);
begin
  abrir_tabela(_tpcobranca);
  colorenter(sender);
end;

procedure TfrmdlgGerarParcelamentoDuplicata.cbxcdcondpagtoEnter(Sender: TObject);
begin
  abrir_tabela(_condpagto+_s);
  colorenter(sender);
end;

procedure TfrmdlgGerarParcelamentoDuplicata.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmdlgGerarParcelamentoDuplicata.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmdlgGerarParcelamentoDuplicata.edtnuplcontaPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  cds.AfterPost := nil;
  cds.First;
  while not cds.Eof do
  begin
    cds.Edit;
    cdsCDPLCONTA.AsString := CodigodoCampo(_plconta, edtnuplconta.Text, _nunivel);
    cds.Post;
    cds.Next;
  end;
  cds.AfterPost := cdsAfterPost;
end;

procedure TfrmdlgGerarParcelamentoDuplicata.setdados;
  function makesql:string;
  begin
    result := 'select vlliquido'+
                    ',dtemissao'+
                    ',cdcliente'+
                    ',dshistorico'+
                    ',nuplconta'+
                    ',cdtpcobranca'+
                    ',cdcondpagto '+
              'from saida '+
              'where cdempresa='+empresa.cdempresa.tostring+' and cdsaida='+cdsaida;
    if cdcte <> '' then
    begin
      result := 'select vlreceber vlliquido'+
                      ',dtemissao'+
                      ',cdremetente'+
                      ',cdexpedidor'+
                      ',cdrecebedor'+
                      ',cddestinatario'+
                      ',cdtomador'+
                      ',CDCTETPTOMADOR'+
                      ',dshistorico'+
                      ',nuplconta'+
                      ',cdtpcobranca'+
                      ',cdcondpagto '+
                'from cte '+
                'where cdempresa='+empresa.cdempresa.tostring+' and cdcte='+cdcte;
    end;
  end;
var
  s : TClasseQuery;
  function get_cdcliente:string;
  begin
    if cdsaida <> '' then
    begin
      result := s.q.fieldbyname(_cdcliente).asstring;
      Exit;
    end;
    case s.q.fieldbyname(_CDCTETPTOMADOR).AsInteger of
      1: result := s.q.fieldbyname(_CDREMETENTE).AsString;
      2: result := s.q.fieldbyname(_CDEXPEDIDOR).AsString;
      3: result := s.q.fieldbyname(_CDRECEBEDOR).AsString;
      4: result := s.q.fieldbyname(_CDDESTINATARIO).AsString;
      5: result := s.q.fieldbyname(_CDTOMADOR).AsString;
    end;
  end;
begin
  s := TClasseQuery.Create(makesql);
  try
    edtdtemissao.Date         := s.q.fieldbyname(_dtemissao).AsDateTime;
    edtvltotal.Value          := s.q.fieldbyname(_vlliquido).AsCurrency;
    edtdshistorico.Text       := s.q.fieldbyname(_dshistorico).AsString;
    edtnuplconta.Text         := s.q.fieldbyname(_NUPLCONTA).AsString;
    cbxcdtpcobranca.EditValue := s.q.fieldbyname(_cdtpcobranca).AsString;
    cbxcdcondpagto.EditValue  := s.q.fieldbyname(_cdcondpagto).AsString;
    edtcdcliente.Text         := get_cdcliente;
    edtcdcliente.Enabled      := False;
    edtdtemissao.Enabled      := False;
    edtvltotal.Enabled        := False;
    edtcdclienteExit(edtcdcliente);
    edtnuplcontaExit(edtnuplconta);
  finally
    freeandnil(s);
  end;
end;

procedure TfrmdlgGerarParcelamentoDuplicata.grdDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

end.
