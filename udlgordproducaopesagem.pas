unit udlgordproducaopesagem;

interface

uses
  System.Actions, System.UITypes,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Menus, ExtCtrls, StdCtrls, Dialogs,
  DBClient, DB,
  uRegistro, uConstantes,
  udatahora,
  classeordproducao, classequery, classeempresa, classeretornasql,  classeexecutasql,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxControls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  cxButtons, cxContainer, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ComCtrls, dxCore,
  cxDateUtils, cxCalendar;

type
  Tfrmdlgordprodcaopesagem = class(TForm)
    pnlbottom: TPanel;
    btnok: TcxButton;
    btncancel: TcxButton;
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    cds: TClientDataSet;
    cdsCDDIGITADO: TStringField;
    cdsNULOTEBAG1: TStringField;
    cdsNULOTEBAG2: TStringField;
    cdsNULOTEBAG3: TStringField;
    cdsNULOTEBAG4: TStringField;
    dts: TDataSource;
    tbv: TcxGridDBBandedTableView;
    tbvCDDIGITADO: TcxGridDBBandedColumn;
    tbvNULOTEBAG1: TcxGridDBBandedColumn;
    tbvNULOTEBAG2: TcxGridDBBandedColumn;
    tbvNULOTEBAG3: TcxGridDBBandedColumn;
    tbvNULOTEBAG4: TcxGridDBBandedColumn;
    cdsCDDIGITADO1: TStringField;
    cdsCDDIGITADO2: TStringField;
    cdsCDDIGITADO3: TStringField;
    cdsCDDIGITADO4: TStringField;
    tbvCDDIGITADO1: TcxGridDBBandedColumn;
    tbvCDDIGITADO2: TcxGridDBBandedColumn;
    tbvCDDIGITADO3: TcxGridDBBandedColumn;
    tbvCDDIGITADO4: TcxGridDBBandedColumn;
    pnltop: TPanel;
    lbldtemissao: TcxLabel;
    edtdtemissao: TcxDateEdit;
    lblcdfuncionario: TcxLabel;
    cbxcdfuncionario: TcxLookupComboBox;
    lblcdequipamento: TcxLabel;
    cbxcdequipamento: TcxLookupComboBox;
    lblcdequipamento2: TcxLabel;
    cbxcdequipamento2: TcxLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure cdsCDDIGITADO1Validate(Sender: TField);
  private { Private declarations }
    ordproducao : TOrdProducao;
    cdordproducao : array of string;
    cdproduto, cdformulacao : string;
    lstcddigitado : TStrings;
    function  PreencherCodigoOrdproducao:Boolean;
    procedure CarregarProduto;
    function  ConsistirPreenchimento:Boolean;
    procedure GerarBaixa(codigo:string);
    function  ObterNulotebag(codigo:string):string;
    function  ObterCddigitado(codigo:string):string;
    procedure ConfigurarColuna;
    function  ConfigurarCdordproducao(i:Integer):Boolean;
    procedure AtualizarOrdproducao;
  public { Public declarations }
  end;

var
  frmdlgordprodcaopesagem: Tfrmdlgordprodcaopesagem;

function dlgordproducaopesagem:Boolean;

implementation

uses uDtmMain, Math;

{$R *.dfm}

function dlgordproducaopesagem:Boolean;
begin
  frmdlgordprodcaopesagem := Tfrmdlgordprodcaopesagem.Create(nil);
  try
    if not frmdlgordprodcaopesagem.PreencherCodigoOrdproducao then
    begin
      result := False;
      exit;
    end;
    frmdlgordprodcaopesagem.ConfigurarColuna;
    frmdlgordprodcaopesagem.CarregarProduto;
    frmdlgordprodcaopesagem.ShowModal;
    result := frmdlgordprodcaopesagem.ModalResult = mrok;
  finally
    frmdlgordprodcaopesagem.Free;
  end;
end;

function Tfrmdlgordprodcaopesagem.PreencherCodigoOrdproducao: Boolean;
var
  i : Integer;
begin
  for i := 1 to 4 do
  begin
    result := ConfigurarCdordproducao(i);
    if not result then
    begin
      if (i > 1) and (cdordproducao[i] = '') then
      begin
        result := True;
      end;
      Break;
    end;
  end;
end;

procedure Tfrmdlgordprodcaopesagem.FormCreate(Sender: TObject);
begin
  SetLength(cdordproducao, 5);
  cbxcdfuncionario.Properties.ListSource  := abrir_tabela(_funcionario);
  cbxcdequipamento.Properties.ListSource  := abrir_tabela(_equipamento);
  cbxcdequipamento2.Properties.ListSource := abrir_tabela(_equipamento);
  ordproducao   := TOrdProducao.create;
  lstcddigitado := TStringList.Create;
end;

procedure Tfrmdlgordprodcaopesagem.FormDestroy(Sender: TObject);
begin
  ordproducao.Free;
  lstcddigitado.Free;
end;

procedure Tfrmdlgordprodcaopesagem.CarregarProduto;
var
  q : tclassequery;
  lista : TStrings;
  I: Integer;
begin
  q := tclassequery.create;
  lista := TStringList.Create;
  try
    q.q.Open('select cddigitado,qtitem from itordproducaomaterial where cdempresa='+empresa.cdempresa.tostring+' and cdordproducao='+cdordproducao[1]);
    while not q.q.Eof do
    begin
      if q.q.FieldByName(_qtitem).AsFloat > 1 then
      begin
        cds.Append;
        cdsCDDIGITADO.AsString := q.q.fieldbyname(_cddigitado).AsString;
        lstcddigitado.Add(q.q.fieldbyname(_cddigitado).AsString);
        cds.Post;
      end
      else
      begin
        lista.Add(q.q.fieldbyname(_cddigitado).AsString)
      end;
      q.q.Next;
    end;
    for I := 0 to lista.Count - 1 do
    begin
      cds.Append;
      cdsCDDIGITADO.AsString := lista[i];
      lstcddigitado.Add(lista[i]);
      cds.Post;
    end;
    cds.First;
  finally
    q.Free;
    lista.Free;
  end;
end;

procedure Tfrmdlgordprodcaopesagem.btnokClick(Sender: TObject);
begin
  if ConsistirPreenchimento then
  begin
    GerarBaixa(cdordproducao[1]);
    GerarBaixa(cdordproducao[2]);
    GerarBaixa(cdordproducao[3]);
    GerarBaixa(cdordproducao[4]);
    ModalResult := mrOk;
  end;
end;

function Tfrmdlgordprodcaopesagem.ConsistirPreenchimento: Boolean;
var
  recno : Integer;
begin
  result := True;
  recno  := cds.RecNo;
  cds.DisableControls;
  try
    cds.First;
    while not cds.Eof do
    begin
      if Trim(cdsNULOTEBAG1.AsString) = '' then
      begin
        MessageDlg('É obrigatório o lançamento do bag em todas as matéria-prima na ordem de produção '+cdordproducao[1], mtInformation, [mbOK], 0);
        result := False;
        Break;
      end;
      cds.Next;
    end;
    if edtdtemissao.Text = '' then
    begin
      MessageDlg('Data de Emissão é um campo obrigatório.', mtInformation, [mbOK], 0);
      result := False;
      Exit;
    end;
    if cbxcdfuncionario.Text = '' then
    begin
      MessageDlg('Responsável é um campo obrigatório.', mtInformation, [mbOK], 0);
      result := False;
      Exit;
    end;
    if cbxcdequipamento.Text = '' then
    begin
      MessageDlg('Balança de Aditivio é um campo obrigatório.', mtInformation, [mbOK], 0);
      result := False;
      Exit;
    end;
    if cbxcdequipamento2.Text = '' then
    begin
      MessageDlg('Balança de Agregado é um campo obrigatório.', mtInformation, [mbOK], 0);
      result := False;
      Exit;
    end;
  finally
    cds.RecNo := recno;
    cds.EnableControls;
  end;
end;

procedure Tfrmdlgordprodcaopesagem.GerarBaixa(codigo: string);
begin
  if codigo = '' then
  begin
    Exit;
  end;
  ordproducao.select(strtoint(codigo));
  ordproducao.tpordproducao.select(ordproducao.cdtpordproducao);
  if ordproducao.tpordproducao.cdstordproducaoitordproducaomat = 0 then
  begin
    messagedlg('Não está definido qual status mudar a ordem de produção ao gerar a baixa de matéria-prima.'#13+
               'Favor configurar em "Tabelas=>Tipo=>Ordem de Produção=>Abas=>Matéria-Prima=>Gerar Movimentação de Estoque=>Mudar status para".', mtinformation, [mbok], 0);
    abort;
  end;
  ordproducao.dtemissao := edtdtemissao.Date;
  ordproducao.cdstordproducao := ordproducao.tpordproducao.cdstordproducaoitordproducaomat;
  ordproducao.Update;
  ordproducao.RegistrarMudancaStatus;
  ordproducao.GerarMovtoPesagem(edtdtemissao.Date, ObterCddigitado(codigo), ObterNulotebag(codigo));
  AtualizarOrdproducao;
end;

function Tfrmdlgordprodcaopesagem.ObterNulotebag(codigo: string): string;
begin
  result := '';
  if tbv.Bands[1].Caption = 'OP: '+codigo then
  begin
    cds.First;
    while not cds.Eof do
    begin
      if Result <> '' then
      begin
        result := result + #13;
      end;
      result := result + cdsNULOTEBAG1.AsString;
      cds.Next;
    end;
    Exit;
  end;
  if tbv.Bands[2].Caption = 'OP: '+codigo then
  begin
    cds.First;
    while not cds.Eof do
    begin
      if Result <> '' then
      begin
        result := result + #13;
      end;
      if cdsNULOTEBAG2.AsString <> '' then
      begin
        result := result + cdsNULOTEBAG2.AsString
      end
      else
      begin
        result := result + cdsNULOTEBAG1.AsString;
      end;
      cds.Next;
    end;
  end;
  if tbv.Bands[3].Caption = 'OP: '+codigo then
  begin
    cds.First;
    while not cds.Eof do
    begin
      if Result <> '' then
      begin
        result := result + #13;
      end;
      if cdsNULOTEBAG3.AsString <> '' then
      begin
        result := result + cdsNULOTEBAG3.AsString
      end
      else if cdsNULOTEBAG2.AsString <> '' then
      begin
        result := result + cdsNULOTEBAG2.AsString
      end
      else
      begin
        result := result + cdsNULOTEBAG1.AsString;
      end;
      cds.Next;
    end;
  end;
  if tbv.Bands[4].Caption = 'OP: '+codigo then
  begin
    cds.First;
    while not cds.Eof do
    begin
      if Result <> '' then
      begin
        result := result + #13;
      end;
      if cdsNULOTEBAG4.AsString <> '' then
      begin
        result := result + cdsNULOTEBAG4.AsString
      end
      else if cdsNULOTEBAG3.AsString <> '' then
      begin
        result := result + cdsNULOTEBAG3.AsString
      end
      else if cdsNULOTEBAG2.AsString <> '' then
      begin
        result := result + cdsNULOTEBAG2.AsString
      end
      else
      begin
        result := result + cdsNULOTEBAG1.AsString;
      end;
      cds.Next;
    end;
  end;
end;

procedure Tfrmdlgordprodcaopesagem.ConfigurarColuna;
var
  x, i : Integer;
begin
  for i := 1 to 4 do
  begin
    tbv.Bands[i].Caption := 'OP: '+cdordproducao[i];
    if cdordproducao[i] = '' then
    begin
      for x := 0 to Self.ComponentCount - 1 do
      begin
        if (lowercase(Components[x].Name) = 'tbvnulotebag'+inttostr(i)) or (lowercase(Components[x].Name) = 'tbvcddigitado'+inttostr(i)) then
        begin
          TcxGridDBBandedColumn(Components[x]).Options.Focusing := false;
          TcxGridDBBandedColumn(Components[x]).Styles.Content   := dtmmain.cxStyle6;
        end;
      end;
    end;
  end;
end;

function Tfrmdlgordprodcaopesagem.ConfigurarCdordproducao(i: Integer): Boolean;
begin
  Result := True;
  cdordproducao[i] := InputBox('Ordem Produção '+inttostr(i), 'Favor preencher a ordem produção', '');
  if cdordproducao[i] = '' then
  begin
    result := false;
    Exit;
  end;
  if not codigoexiste(_ordproducao, cdordproducao[i]) then
  begin
    MessageDlg('Código inexistente.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if NomedoCodigo(_ordproducao, cdordproducao[i], _cdstordproducao) = _7 then
  begin
    MessageDlg('Ordem produção '+cdordproducao[i]+' concluída.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if not ordproducao.seMesmoProdutoFormulacao(cdordproducao[i], cdproduto, cdformulacao) then
  begin
    result := false;
    Exit;
  end;
end;

procedure Tfrmdlgordprodcaopesagem.cdsCDDIGITADO1Validate(Sender: TField);
begin
  if sender.AsString = '' then
  begin
    Exit;
  end;
  if sender.AsString = cdsCDDIGITADO.AsString then
  begin
    MessageDlg('Código da Matéria-Prima substituta é o mesmo da matéria-prima.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if retornasqlinteger('select count(*) '+
                       'from itformulacaosubstituto '+
                       'inner join itformulacao on itformulacao.cdempresa=itformulacaosubstituto.cdempresa and itformulacao.cditformulacao=itformulacaosubstituto.cditformulacao '+
                       'where itformulacao.cdformulacao='+cdformulacao+' and itformulacaosubstituto.cddigitado='+quotedstr(sender.AsString)+' '+
                       'and itformulacao.cddigitado='+quotedstr(cdsCDDIGITADO.AsString)) = 0 then
  begin
    MessageDlg('Matéria-Prima substituta não faz parte da matéria-prima.', mtInformation, [mbOK], 0);
    Abort;
  end;
end;

function Tfrmdlgordprodcaopesagem.ObterCddigitado(codigo: string): string;
begin
  result := '';
  if tbv.Bands[1].Caption = 'OP: '+codigo then
  begin
    cds.First;
    while not cds.Eof do
    begin
      if Result <> '' then
      begin
        result := result + #13;
      end;
      if cdsCDDIGITADO1.AsString <> '' then
      begin
        result := result + cdsCDDIGITADO1.AsString
      end
      else
      begin
        result := result + cdsCDDIGITADO.AsString;
      end;
      cds.Next;
    end;
    Exit;
  end;

  if tbv.Bands[2].Caption = 'OP: '+codigo then
  begin
    cds.First;
    while not cds.Eof do
    begin
      if Result <> '' then
      begin
        result := result + #13;
      end;
      if cdsCDDIGITADO2.AsString <> '' then
      begin
        result := result + cdsCDDIGITADO2.AsString
      end
      else if cdsCDDIGITADO1.AsString <> '' then
      begin
        result := result + cdsCDDIGITADO1.AsString
      end
      else
      begin
        result := result + cdsCDDIGITADO.AsString;
      end;
      cds.Next;
    end;
  end;

  if tbv.Bands[3].Caption = 'OP: '+codigo then
  begin
    cds.First;
    while not cds.Eof do
    begin
      if Result <> '' then
      begin
        result := result + #13;
      end;
      if cdsCDDIGITADO3.AsString <> '' then
      begin
        result := result + cdsCDDIGITADO3.AsString
      end
      else if cdsCDDIGITADO2.AsString <> '' then
      begin
        result := result + cdsCDDIGITADO2.AsString
      end
      else if cdsCDDIGITADO1.AsString <> '' then
      begin
        result := result + cdsCDDIGITADO1.AsString
      end
      else
      begin
        result := result + cdsCDDIGITADO.AsString;
      end;
      cds.Next;
    end;
  end;

  if tbv.Bands[4].Caption = 'OP: '+codigo then
  begin
    cds.First;
    while not cds.Eof do
    begin
      if Result <> '' then
      begin
        result := result + #13;
      end;
           if cdsCDDIGITADO4.AsString <> '' then result := result + cdsCDDIGITADO4.AsString
      else if cdsCDDIGITADO3.AsString <> '' then result := result + cdsCDDIGITADO3.AsString
      else if cdsCDDIGITADO2.AsString <> '' then result := result + cdsCDDIGITADO2.AsString
      else if cdsCDDIGITADO1.AsString <> '' then result := result + cdsCDDIGITADO1.AsString
                                            else result := result + cdsCDDIGITADO.AsString;
      cds.Next;
    end;
  end;
end;

procedure Tfrmdlgordprodcaopesagem.AtualizarOrdproducao;
var
  cdequipamento, cdequipamento2, cdfuncionario : string;
begin
  cdequipamento  := _0;
  cdequipamento2 := _0;
  cdfuncionario  := cbxcdfuncionario.EditValue;
  if not VarIsNull(cbxcdequipamento.EditValue) then
  begin
    cdequipamento  := cbxcdequipamento.EditValue;
  end;
  if not VarIsNull(cbxcdequipamento2.EditValue) then
  begin
    cdequipamento2 := cbxcdequipamento2.EditValue;
  end;
  ordproducao.cdfuncionario  := strtoint(cdfuncionario);
  ordproducao.cdequipamento  := strtoint(cdequipamento);
  ordproducao.cdequipamento2 := strtoint(cdequipamento2);
  ordproducao.Update;
end;

end.
