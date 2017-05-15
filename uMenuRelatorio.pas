unit uMenuRelatorio;

interface

uses
  System.Actions, System.UITypes,
  Dialogs, Forms, SysUtils, Classes,
  DB,
  classequery, classeempresa, ClasseReportUser, ClasseReport, 
  utipo, udatahora, uConstantes,
  cxGridDBTableView, dxBar;

type
  TProcedureParameter = procedure(Sender: TObject) of object;
  TDTModuleMenuRelat = class(TDataModule)
    procedure Imprime(Sender: TObject);
    procedure Imprimetbv(Sender: TObject);
  private { Private declarations }
    function get_parametro(cdreportuser: integer; d: TDataSet):string;overload;
    function get_parametro(cdreportuser: integer; tbv: TcxGridDBTableView): string;overload;
  public { Public declarations }
  end;

var
  DTModuleMenuRelat: TDTModuleMenuRelat;

procedure GeraMenuRelatorio (dssaida:string; BarButton: TdxBarButton ; CdForm: Integer; tbv: TcxGridDBTableView; Dataset: TDataset = nil; Tabela: string = '');overload;
procedure GeraMenuRelatorio (dssaida:string; BarButton: TdxBarButton ; CdForm: Integer;                          Dataset: TDataset = nil; Tabela: string = '');overload;
procedure GeraMenuRelatorio (dssaida:string; BarButton: TdxBarButton ; CdForm: Integer; form: Tform;                                      Tabela: string = '');overload;// <=== PEDIDO

implementation

uses uDtmMain, rptestoquecompleto, Variants;

{$R *.dfm}

procedure AdicionaSeparador(BarButton: TdxBarButton);overload;
var
  Separador: TdxBarSeparator;
begin
  Separador                                 := TdxBarSeparator.Create(BarButton.DropDownMenu);
  Separador.ShowCaption                     := False;
  BarButton.DropDownMenu.ItemLinks.Add.Item := Separador;
end;

procedure AdicionaItem(dssaida:string; BarButton: TdxBarButton; NewCaption: string; P: TProcedureParameter; Cod: Integer; tbv: TcxGridDBTableView; Dataset: TDataSet = nil; Tabela: string = ''; InserirSeparador: Boolean = False);overload;
var
  Item: TdxBarButton;
  M: TMethod;
begin
  M.Data := nil;
  M.Code := @P;
  if InserirSeparador then
  begin
    AdicionaSeparador(BarButton);
  end;
  Item := TdxBarButton.Create(BarButton.DropDownMenu);
  with Item do
  begin
    Caption := NewCaption;
    Visible := ivAlways;
    OnClick := TNotifyEvent(M);
    Tag     := Cod;
    Data    := tbv;
    Description := dssaida;
    hint        := tabela;
  end;
  BarButton.DropDownMenu.ItemLinks.Add.Item := Item;
end;

procedure AdicionaItem(dssaida:string; BarButton: TdxBarButton; NewCaption: string; P: TProcedureParameter; Cod: Integer; Dataset: TDataSet = nil; Tabela: string = ''; InserirSeparador: Boolean = False);overload;
var
  Item: TdxBarButton;
  M: TMethod;
begin
  M.Data := nil;
  M.Code := @P;
  if InserirSeparador then
  begin
    AdicionaSeparador(BarButton);
  end;
  Item := TdxBarButton.Create(BarButton.DropDownMenu);
  with Item do
  begin
    Caption := NewCaption;
    Visible := ivAlways;
    OnClick := TNotifyEvent(M);
    Tag     := Cod;
    Data    := Dataset;
    Description := dssaida;
    hint := Tabela;
  end;
  BarButton.DropDownMenu.ItemLinks.Add.Item := Item;
end;

procedure GeraMenuRelatorio (dssaida:string; BarButton: TdxBarButton; CdForm: Integer; tbv: TcxGridDBTableView; Dataset: TDataset = nil; Tabela: string = '');
var
  reportuserList : TReportUserList;
  i : Integer;
begin
  reportuserlist := TReportUserLIst.create;
  DTModuleMenuRelat := TDTModuleMenuRelat.Create(Application);
  Try
    AdicionaSeparador (BarButton);
    reportuserList.Ler(_cdform+'='+IntToStr(CdForm)+' and '+_cdstreport+'='+_1);
    for i := 0 to reportuserList.Count - 1 do
    begin
      AdicionaItem(dssaida,
                   BarButton,
                   IntToStr(reportuserList.Items[i].cdreportuser) + ' - ' + reportuserList.Items[i].dstitulo,
                   DTModuleMenuRelat.Imprimetbv,
                   reportuserList.Items[i].cdreportuser,
                   tbv,
                   Dataset,
                   Tabela);
    end;
  finally
    FreeAndNil(DTModuleMenuRelat);
    FreeAndNil(reportuserList);
  end;
end;

procedure GeraMenuRelatorio (dssaida:string; BarButton: TdxBarButton; CdForm: Integer; Dataset: TDataset = nil; Tabela: string = '');
var
  reportuserList : TReportUserList;
  i : Integer;
begin
  reportuserlist := TReportUserLIst.create;
  DTModuleMenuRelat := TDTModuleMenuRelat.Create(Application);
  Try
    AdicionaSeparador (BarButton);
    reportuserList.Ler(_cdform+'='+IntToStr(CdForm)+' and '+_cdstreport+'='+_1);
    for i := 0 to reportuserList.Count - 1 do
    begin
      AdicionaItem(dssaida,
                   BarButton,
                   IntToStr(reportuserList.Items[i].cdreportuser) + ' - ' + reportuserList.Items[i].dstitulo,
                   DTModuleMenuRelat.Imprime,
                   reportuserList.Items[i].cdreportuser,
                   Dataset,
                   Tabela);
    end;
  finally
    FreeAndNil(DTModuleMenuRelat);
    FreeAndNil(reportuserList);
  end;
end;

procedure GeraMenuRelatorio (dssaida:string; BarButton: TdxBarButton; CdForm: Integer; form: Tform; Tabela: string = '');
var
  reportuserList : TReportUserList;
  i : Integer;
  function get_dataset(nmdataset:string):TDataSet;
  var
    i : Integer;
  begin
    if nmdataset = '' then
    begin
      nmdataset := _cds;
    end;
    for i := 0 to form.ComponentCount - 1 do
    begin
      if lowercase(form.Components[i].Name) = nmdataset then
      begin
        result := TDataSet(form.Components[i]);
        Exit;
      end;
    end;
    if nmdataset = '' then
    begin
      nmdataset := _qry;
    end;
    for i := 0 to form.ComponentCount - 1 do
    begin
      if lowercase(form.Components[i].Name) = nmdataset then
      begin
        result := TDataSet(form.Components[i]);
        Exit;
      end;
    end;
  end;
begin
  reportuserlist := TReportUserLIst.create;
  DTModuleMenuRelat := TDTModuleMenuRelat.Create(Application);
  Try
    AdicionaSeparador (BarButton);
    reportuserList.Ler(_cdform+'='+IntToStr(CdForm)+' and '+_cdstreport+'='+_1);
    for i := 0 to reportuserList.Count - 1 do
    begin
      AdicionaItem(dssaida,
                   BarButton,
                   IntToStr(reportuserList.Items[i].cdreportuser) + ' - ' + reportuserList.Items[i].dstitulo,
                   DTModuleMenuRelat.Imprime,
                   reportuserList.Items[i].cdreportuser,
                   get_dataset(reportuserList.Items[i].ObterDsopcoes('[dataset]')),
                   Tabela);
    end;
  finally
    FreeAndNil(DTModuleMenuRelat);
    FreeAndNil(reportuserList);
  end;
end;

function TDTModuleMenuRelat.get_parametro(cdreportuser: integer; d: TDataSet): string;
var
  parametro : TStrings;
  i : Integer;
  reportuser : TReportUser;
begin
  result   := '';
  parametro := TStringList.Create;
  reportuser := TReportUser.create;
  try
    reportuser.Select(cdreportuser);
    parametro.Text := reportuser.ObterDsopcoesParametro;
    for i := 0 to parametro.Count - 1 do
    begin
      if result <> '' then
      begin
        result := result + ' and ';
      end;
      result  := result + parametro[i]+'='+ d.fieldbyname(reportuser.ObterNmfield(parametro[i])).AsString;
    end;
    if result <> '' then
    begin
      result := 'where '+result;
    end;
  finally
    FreeAndNil(reportuser);
    FreeAndNil(parametro);
  end;
end;

function TDTModuleMenuRelat.get_parametro(cdreportuser: integer; tbv: TcxGridDBTableView): string;
var
  reportuser : Treportuser;
  parametro : TStrings;
  x, i : Integer;
  textotbv : string;
  valor : Variant;
begin
  result     := '';
  reportuser := Treportuser.create;
  parametro  := TStringList.Create;
  try
    reportuser.Select(cdreportuser);
    parametro.Text := reportuser.ObterDsopcoesParametro;
    for x := 0 to tbv.ViewData.RecordCount -1 do
    begin
      if tbv.ViewData.Records[x].Selected then
      begin
        if result <> '' then
        begin
          result := result + ' OR ';
        end;
        result   := result + '(';
        textotbv := '';
        for i := 0 to parametro.Count - 1 do
        begin
          if textotbv <> '' then
          begin
            textotbv := textotbv + ' and ';
          end;
          if tbv.GetColumnByFieldName(reportuser.ObterNmfield(parametro[i])) = nil then
          begin
            MessageDlg('Parâmetro '+reportuser.ObterNmfield(parametro[i])+' não encontrado na grade para o relatório.', mtinformation, [mbOK], 0);
            Abort;
          end;
          valor := tbv.ViewData.Records[x].Values[tbv.GetColumnByFieldName(reportuser.ObterNmfield(parametro[i])).Index];
          textotbv := textotbv +parametro[i]+'='+ VarToStr(valor);
        end;
        if textotbv = '' then
        begin
          MessageDlg('Não está definido parâmetro(s) para o relatório.', mtinformation, [mbOK], 0);
          Abort;
        end;
        result := result + textotbv + ')';
      end;
    end;
    if result <> '' then
    begin
      result := 'where '+result;
    end;
  finally
    FreeAndNil(parametro);
    FreeAndNil(reportuser);
  end;
end;

procedure TDTModuleMenuRelat.Imprime(Sender: TObject);
var
  i: Integer;
  D: TDataSet;
  Tabela, sqlWhere: string;
  lstparametro: TStrings;
begin
  lstparametro := TStringList.Create;
  try
    D        := TDataSet(TdxBarButton(Sender).Data);
    sqlWhere := get_parametro(TdxBarButton(Sender).Tag, d);
    if sqlWhere = '' then
    begin
      Tabela   := TdxBarButton(Sender).hint;
      sqlWhere := 'where ';
      for i := 0 to D.FieldCount -1 do
      begin
        if pfInKey in D.Fields.Fields[I].ProviderFlags then
        begin
          if Length (sqlWhere) > 6 then
          begin
            sqlWhere := sqlWhere + ' and ';
          end;
          sqlWhere := sqlWhere + Tabela + '.' + D.Fields.Fields[I].FieldName + ' = ' + D.Fields.Fields[I].AsString;
        end;
      end;
    end;
    imprimir_relatorio(TdxBarButton(Sender).Tag, '', sqlWhere, tsBanco, tsBanco, 0, nil, TdxBarButton(Sender).Description, '', '', '', '', True, nil, ttReportUser);
  finally
    lstparametro.Free;
  end;
end;

procedure TDTModuleMenuRelat.Imprimetbv(Sender: TObject);
var
  tbv: TcxGridDBTableView;
  sqlWhere: string;
  lstparametro: TStrings;
begin
  lstparametro := TStringList.Create;
  try
    tbv      := TcxGridDBTableView(TdxBarButton(Sender).Data);
    sqlWhere := get_parametro(TdxBarButton(Sender).Tag, tbv);
    imprimir_relatorio(TdxBarButton(Sender).Tag, '', sqlWhere, tsBanco, tsBanco, 0, nil, TdxBarButton(Sender).Description, '', '', '', '', True, nil, ttReportUser);
  finally
    lstparametro.Free;
  end;
end;

end.
