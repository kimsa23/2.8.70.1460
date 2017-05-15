unit udlgaplicarconfiguracaogrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  classeretornasql, classeempresa, classeexecutasql, classequery, classeproduto,
  umontarsql, ustrings, uConstantes,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxCheckBox, cxDBEdit, cxDropDownEdit, cxCalc,
  cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  StdCtrls, cxGroupBox, cxDBExtLookupComboBox, cxStyles, cxVGrid,
  cxInplaceContainer, Menus, cxButtons;

type
  Tfrmdlgaplicarconfiguracaogrupo = class(TForm)
    grv1: TcxVerticalGrid;
    grv1nuclfiscal: TcxMultiEditorRow;
    grv1cdorigem: TcxMultiEditorRow;
    grv1cdtpproduto: TcxMultiEditorRow;
    grv1cdtpitem: TcxMultiEditorRow;
    grv1cdunidade: TcxMultiEditorRow;
    grv1cdforma: TcxMultiEditorRow;
    grv1cdmaterial: TcxMultiEditorRow;
    grv1boipi: TcxMultiEditorRow;
    grv1alipi: TcxMultiEditorRow;
    grv1borecuperaipi: TcxMultiEditorRow;
    grv1boicms: TcxMultiEditorRow;
    grv1CategoryRow1: TcxCategoryRow;
    grv1dimensional: TcxCategoryRow;
    grv1CategoryRow3: TcxCategoryRow;
    grv1borecuperaicms: TcxMultiEditorRow;
    grv1nusticms: TcxMultiEditorRow;
    grv1bopis: TcxMultiEditorRow;
    grv1alpis: TcxMultiEditorRow;
    grv1borecuperapis: TcxMultiEditorRow;
    grv1bocofins: TcxMultiEditorRow;
    grv1alcofins: TcxMultiEditorRow;
    grv1borecuperacofins: TcxMultiEditorRow;
    grv1bopdv: TcxMultiEditorRow;
    grv1bogerarlivroproducao: TcxMultiEditorRow;
    grv1nucontaestoque: TcxMultiEditorRow;
    grv1alicms: TcxMultiEditorRow;
    btnok: TcxButton;
    btncancelar: TcxButton;
    grv1CategoryRow2: TcxCategoryRow;
    grv1bocomissao: TcxMultiEditorRow;
    grv1prcomissao: TcxMultiEditorRow;
    grv1CategoryRow8: TcxCategoryRow;
    grv1vlvenda: TcxEditorRow;
    grv1vlatacado: TcxEditorRow;
    grv1vlespecial: TcxEditorRow;
    grv1vlcusto: TcxEditorRow;
    grv1bodesativar: TcxMultiEditorRow;
    grv1NUSTPIS: TcxMultiEditorRow;
    grv1NUSTCOFINS: TcxMultiEditorRow;
    grv1CDBCCALCULOCREDITO: TcxMultiEditorRow;
    procedure FormCreate(Sender: TObject);
    procedure btnokClick(Sender: TObject);
  private { Private declarations }
    procedure ler_dados(codigo:integer);
    function  aplicar_configuracao(codigo: Integer; tabela:string; bogrupo:Boolean):boolean;
    procedure makesqlupdate1(vlfield, nmfield:string; var sql:string; tp:string='');
    procedure makesqlupdate2(vlfield:Boolean; nmfield:string; var sql:string);
    procedure makesqlupdate3(vlfield:currency; nmfield:string; var sql:string);
    function  get_sqlupdate(tabela:string):string;
    procedure set_sql_desativar_produto(codigo: Integer; tabela:string; bogrupo: Boolean; cdgrupo:TStrings; sql: TStrings);
    procedure AbrirTabelas;
    procedure ConfiguracaoInicial;
    procedure ConfiguracaoEmpresa;
    function makeupdate(cdproduto:string): string;
    function makesql(codigo:Integer; tabela: string; bogrupo: Boolean; cdgrupo: TStrings): string;
    function makesqlAplicarConfiguracao(codigo: Integer; tabela, sqlupdate:string; cdgrupo: TStrings; bogrupo:Boolean): string;
  public { Public declarations }
  end;

var
  frmdlgaplicarconfiguracaogrupo: Tfrmdlgaplicarconfiguracaogrupo;

function AplicarConfiguracaoGrupo(cdgrupo: Integer; tabela:string; bogrupo:Boolean=false):Boolean;

implementation

uses uDtmMain, uRegistro;

{$R *.dfm}

function AplicarConfiguracaoGrupo(cdgrupo: Integer; tabela:string; bogrupo:Boolean=false):Boolean;
begin
  result                         := false;
  frmdlgaplicarconfiguracaogrupo := Tfrmdlgaplicarconfiguracaogrupo.Create(nil);
  try
    frmdlgaplicarconfiguracaogrupo.ler_dados(cdgrupo);
    if frmdlgaplicarconfiguracaogrupo.ShowModal = mrok then
    begin
      result := frmdlgaplicarconfiguracaogrupo.aplicar_configuracao(cdgrupo, tabela, bogrupo);
    end;
  finally
    FreeAndNil(frmdlgaplicarconfiguracaogrupo);
  end;
end;

procedure Tfrmdlgaplicarconfiguracaogrupo.makesqlupdate1(vlfield, nmfield:string; var sql:string; tp:string='');
begin
  if sql <> '' then
  begin
    sql := sql + ',';
  end;
  if tp = '' then
  begin
    sql := sql + nmfield+'='+vlfield+' '
  end
  else
  begin
    sql := sql + nmfield+'='+quotedstr(vlfield)+' ';
  end;
end;

procedure Tfrmdlgaplicarconfiguracaogrupo.makesqlupdate2(vlfield:Boolean; nmfield:string; var sql:string);
begin
  if sql <> '' then
  begin
    sql := sql + ',';
  end;
  if vlfield then
  begin
    sql := sql + nmfield+'=''S'' '
  end
  else
  begin
    sql := sql + nmfield+'=''N'' '
  end;
end;

procedure Tfrmdlgaplicarconfiguracaogrupo.makesqlupdate3(vlfield:currency; nmfield:string; var sql:string);
begin
  if sql <> '' then
  begin
    sql := sql + ',';
  end;
  sql := sql + nmfield+'='+getcurrencys(vlfield);
end;

procedure Tfrmdlgaplicarconfiguracaogrupo.AbrirTabelas;
begin
  TcxLookupComboBoxProperties(grv1cdorigem.Properties.Editors[1].PropertiesValue).ListSource      := abrir_tabela(_origem);
  TcxLookupComboBoxProperties(grv1nusticms.Properties.Editors[1].PropertiesValue).ListSource      := abrir_tabela(_sticms);
  TcxLookupComboBoxProperties(grv1nustpis.Properties.Editors[1].PropertiesValue).ListSource       := abrir_tabela(_stpis);
  TcxLookupComboBoxProperties(grv1nustcofins.Properties.Editors[1].PropertiesValue).ListSource    := abrir_tabela(_stcofins);
  TcxLookupComboBoxProperties(grv1cdbccalculocredito.Properties.Editors[1].PropertiesValue).ListSource    := abrir_tabela(_bccalculocredito);
  TcxLookupComboBoxProperties(grv1cdforma.Properties.Editors[1].PropertiesValue).ListSource       := abrir_tabela(_forma);
  TcxLookupComboBoxProperties(grv1cdmaterial.Properties.Editors[1].PropertiesValue).ListSource    := abrir_tabela(_material);
  TcxLookupComboBoxProperties(grv1cdunidade.Properties.Editors[1].PropertiesValue).ListSource     := abrir_tabela(_unidade);
  TcxLookupComboBoxProperties(grv1cdtpitem.Properties.Editors[1].PropertiesValue).ListSource      := abrir_tabela(_tpitem);
  TcxLookupComboBoxProperties(grv1cdtpproduto.Properties.Editors[1].PropertiesValue).ListSource   := abrir_tabela(_tpproduto);
end;

function Tfrmdlgaplicarconfiguracaogrupo.makesqlAplicarConfiguracao(codigo: Integer; tabela, sqlupdate:string; cdgrupo: TStrings; bogrupo:Boolean):string;
begin
  result := 'update '+tabela+' '+
            'set '+sqlupdate+' '+
            'where cdempresa='+empresa.cdempresa.tostring+' ';
  if bogrupo then
  begin
    result := result + 'and cdgrupo='+inttostr(codigo)
  end
  else
  begin
    sqlmontarlistagrupo(cdgrupo, tabela, _cdgrupo, result, 0);
  end;
end;

function Tfrmdlgaplicarconfiguracaogrupo.aplicar_configuracao(codigo: Integer; tabela:string; bogrupo:Boolean):boolean;
var
  sqlupdate : string;
  cdgrupo, sql : tstrings;
begin
  result := False;
  sqlupdate := get_sqlupdate(tabela);
  cdgrupo := tstringlist.Create;
  sql     := TStringList.Create;
  try
    cdgrupo.add(IntToStr(codigo));
    if sqlupdate <> '' then
    begin
      sql.Text := makesqlAplicarConfiguracao(codigo, tabela, sqlupdate, cdgrupo, bogrupo);
    end;
    if grv1bodesativar.Properties.Editors[0].Value = _S then
    begin
      set_sql_desativar_produto(codigo, tabela, bogrupo, cdgrupo, sql);
    end;
    if sql.Count > 0 then
    begin
      result := ExecutaScript(sql);
    end;
  finally
    cdgrupo.free;
    sql.free;
  end;
end;

procedure Tfrmdlgaplicarconfiguracaogrupo.FormCreate(Sender: TObject);
begin
  AbrirTabelas;
  ConfiguracaoInicial;
  ConfiguracaoEmpresa;
  grv1dimensional.Visible := RetornaSQLInteger('select count(*) from tpproduto where cdempresa='+empresa.cdempresa.tostring+' and bodimensional=''S''')>0;
end;

procedure Tfrmdlgaplicarconfiguracaogrupo.ler_dados(codigo: integer);
var
  grupo : TGrupo;
begin
  grupo := tgrupo.create;
  try
    grupo.Select(codigo);
    grv1nuclfiscal.Properties.Editors[1].Value := grupo.nuclfiscal;
    if grupo.cdorigem    <> '' then
    begin
      grv1cdorigem.Properties.Editors[1].Value := grupo.cdorigem;
    end;
    if grupo.nusticms    <> '' then
    begin
      grv1nusticms.Properties.Editors[1].Value := grupo.nusticms;
    end;
    if grupo.nustpis    <> '' then
    begin
      grv1nustpis.Properties.Editors[1].Value := grupo.nustpis;
    end;
    if grupo.nustcofins    <> '' then
    begin
      grv1nustcofins.Properties.Editors[1].Value := grupo.nustcofins;
    end;
    if grupo.cdbccalculocredito    <> '' then
    begin
      grv1cdbccalculocredito.Properties.Editors[1].Value := grupo.cdbccalculocredito;
    end;
    if grupo.cdmaterial  <> 0  then
    begin
      grv1cdmaterial.Properties.Editors[1].Value := grupo.cdmaterial;
    end;
    if grupo.cdforma     <> 0  then
    begin
      grv1cdforma.Properties.Editors[1].Value := grupo.cdforma;
    end;
    if grupo.cdunidade   <> 0  then
    begin
      grv1cdunidade.Properties.Editors[1].Value := grupo.cdunidade;
    end;
    if grupo.cdtpitem    <> '' then
    begin
      grv1cdtpitem.Properties.Editors[1].Value := grupo.cdtpitem;
    end;
    if grupo.cdtpproduto <> 0  then
    begin
      grv1cdtpproduto.Properties.Editors[1].Value := grupo.cdtpproduto;
    end;
    grv1alipi.Properties.Editors[1].Value                   := grupo.alipi;
    grv1alcofins.Properties.Editors[1].Value                := grupo.alcofins;
    grv1alpis.Properties.Editors[1].Value                   := grupo.alpis;
    grv1alicms.Properties.Editors[1].Value                  := grupo.alicms;
    grv1nucontaestoque.Properties.Editors[1].Value          := grupo.nucontaestoque;
    grv1boipi.Properties.Editors[1].Value                   := grupo.boipi;
    grv1boicms.Properties.Editors[1].Value                  := grupo.boicms;
    grv1bopis.Properties.Editors[1].Value                   := grupo.bopis;
    grv1bocofins.Properties.Editors[1].Value                := grupo.bocofins;
    grv1borecuperaipi.Properties.Editors[1].Value           := grupo.borecuperaipi;
    grv1borecuperaicms.Properties.Editors[1].Value          := grupo.borecuperaicms;
    grv1borecuperapis.Properties.Editors[1].Value           := grupo.borecuperapis;
    grv1borecuperacofins.Properties.Editors[1].Value        := grupo.borecuperacofins;
    grv1bopdv.Properties.Editors[1].Value                   := grupo.bopdv;
    grv1bogerarlivroproducao.Properties.Editors[1].Value    := grupo.bogerarlivroproducao;
  finally
    grupo.Free;
  end;
end;

procedure Tfrmdlgaplicarconfiguracaogrupo.btnokClick(Sender: TObject);
begin
  modalresult := mrOk;
end;

procedure Tfrmdlgaplicarconfiguracaogrupo.ConfiguracaoEmpresa;
begin
  grv1bopis.Visible                := empresa.tpregime <> _S;
  grv1bocofins.Visible             := empresa.tpregime <> _S;
  grv1borecuperaicms.Visible       := empresa.tpregime <> _S;
  grv1alicms.Visible               := Empresa.tpregime <> _S;
  grv1borecuperaipi.Visible        := Empresa.tpregime <> _S;
  grv1alipi.Visible                := empresa.tpregime <> _S;
  grv1bogerarlivroproducao.Visible := empresa.livroproducao.bo;
  grv1CDBCCALCULOCREDITO.Visible   := empresa.tpregime <> _S;
end;

procedure Tfrmdlgaplicarconfiguracaogrupo.ConfiguracaoInicial;
begin
  grv1nuclfiscal.Properties.Editors[0].Value              := false;
  grv1cdorigem.Properties.Editors[0].Value                := false;
  grv1nusticms.Properties.Editors[0].Value                := false;
  grv1cdbccalculocredito.Properties.Editors[0].Value      := false;
  grv1nustcofins.Properties.Editors[0].Value              := false;
  grv1nustpis.Properties.Editors[0].Value                 := false;
  grv1cdmaterial.Properties.Editors[0].Value              := false;
  grv1cdforma.Properties.Editors[0].Value                 := false;
  grv1cdunidade.Properties.Editors[0].Value               := false;
  grv1cdtpitem.Properties.Editors[0].Value                := false;
  grv1cdtpproduto.Properties.Editors[0].Value             := false;
  grv1alipi.Properties.Editors[0].Value                   := false;
  grv1alcofins.Properties.Editors[0].Value                := false;
  grv1alpis.Properties.Editors[0].Value                   := false;
  grv1alicms.Properties.Editors[0].Value                  := false;
  grv1nucontaestoque.Properties.Editors[0].Value          := false;
  grv1boipi.Properties.Editors[0].Value                   := false;
  grv1boicms.Properties.Editors[0].Value                  := false;
  grv1bopis.Properties.Editors[0].Value                   := false;
  grv1bocofins.Properties.Editors[0].Value                := false;
  grv1borecuperaipi.Properties.Editors[0].Value           := false;
  grv1borecuperaicms.Properties.Editors[0].Value          := false;
  grv1borecuperapis.Properties.Editors[0].Value           := false;
  grv1borecuperacofins.Properties.Editors[0].Value        := false;
  grv1bopdv.Properties.Editors[0].Value                   := false;
  grv1bogerarlivroproducao.Properties.Editors[0].Value    := false;
end;

function Tfrmdlgaplicarconfiguracaogrupo.get_sqlupdate(tabela:string):string;
var
  nustpis, nustcofins : string;
begin
  result := '';
  if grv1vlvenda.Properties.Value > 0 then
  begin
    makesqlupdate3(grv1vlvenda.Properties.Value, _vlvenda   , result);
  end;
  if grv1vlespecial.Properties.Value > 0 then
  begin
    makesqlupdate3(grv1vlespecial.Properties.Value, _vlespecial, result);
  end;
  if grv1vlatacado.Properties.Value > 0 then
  begin
    makesqlupdate3(grv1vlatacado.Properties.Value, _vlatacado , result);
  end;
  if grv1vlcusto.Properties.Value > 0 then
  begin
    makesqlupdate3(grv1vlcusto.Properties.Value, _vlcusto   , result);
  end;
  if grv1cdtpproduto.Properties.Editors[0].Value then
  begin
    makesqlupdate1(getnull(grv1cdtpproduto.Properties.Editors[1].Value), _cdtpproduto, result);
  end;
  if grv1cdunidade.Properties.Editors[0].Value then
  begin
    makesqlupdate1(getnull(grv1cdunidade.Properties.Editors[1].Value), _cdunidade  , result);
  end;
  if grv1cdtpitem.Properties.Editors[0].Value then
  begin
    makesqlupdate1(getnull(grv1cdtpitem.Properties.Editors[1].Value, _string), _cdtpitem   , result);
  end;
  if grv1cdorigem.Properties.Editors[0].Value then
  begin
    makesqlupdate1(getnull(grv1cdorigem.Properties.Editors[1].Value), _cdorigem   , result);
  end;
  if grv1cdmaterial.Properties.Editors[0].Value then
  begin
    makesqlupdate1(getnull(grv1cdmaterial.Properties.Editors[1].Value), _cdmaterial , result);
  end;
  if grv1cdforma.Properties.Editors[0].Value then
  begin
    makesqlupdate1(getnull(grv1cdforma.Properties.Editors[1].Value), _cdforma    , result);
  end;
  if grv1nusticms.Properties.Editors[0].Value then
  begin
    makesqlupdate1(getnull(grv1nusticms.Properties.Editors[1].Value), _nusticms   , result, _string);
  end;
  if grv1nustpis.Properties.Editors[0].Value then
  begin
    nustpis := grv1nustpis.Properties.Editors[1].Value;
    if (nustpis <> '') and RegistroExiste(_stpis, _nustpis+'='+nustpis.QuotedString+' and tpentsai=''S''') then
    begin
      MessageDlg('Situação tributária do PIS '+nustpis+' de saída não permitido.', mtInformation, [mbOK], 0);
      Abort;
    end;
    makesqlupdate1(getnull(grv1nustpis.Properties.Editors[1].Value), _nustpis   , result, _string);
  end;
  if grv1nustcofins.Properties.Editors[0].Value then
  begin
    nustcofins := grv1nustcofins.Properties.Editors[1].Value;
    if (nustcofins <> '') and RegistroExiste(_stcofins, _nustcofins+'='+nustcofins.QuotedString+' and tpentsai=''S''') then
    begin
      MessageDlg('Situação tributária do COFINS '+nustcofins+' de saída não permitido.', mtInformation, [mbOK], 0);
      Abort;
    end;
    makesqlupdate1(getnull(grv1nustcofins.Properties.Editors[1].Value), _nustcofins   , result, _string);
  end;
  if grv1cdbccalculocredito.Properties.Editors[0].Value then
  begin
    makesqlupdate1(getnull(grv1cdbccalculocredito.Properties.Editors[1].Value), _cdbccalculocredito   , result, _string);
  end;
  if grv1nuclfiscal.Properties.Editors[0].Value then
  begin
    makesqlupdate1(getnull(grv1nuclfiscal.Properties.Editors[1].Value), _nuclfiscal , result, _string);
  end;
  if grv1alipi.Properties.Editors[0].Value then
  begin
    makesqlupdate1(getnull(substituir(grv1alipi.Properties.Editors[1].Value, ',', '.')), _alipi   , result);
  end;
  if grv1alicms.Properties.Editors[0].Value then
  begin
    makesqlupdate1(getnull(substituir(grv1alicms.Properties.Editors[1].Value, ',', '.')), _alicms  , result);
  end;
  if grv1alpis.Properties.Editors[0].Value then
  begin
    makesqlupdate1(getnull(substituir(grv1alpis.Properties.Editors[1].Value, ',', '.')), _alpis   , result);
  end;
  if grv1alcofins.Properties.Editors[0].Value then
  begin
    makesqlupdate1(getnull(substituir(grv1alcofins.Properties.Editors[1].Value, ',', '.')), _alcofins, result);
  end;
  if grv1boipi.Properties.Editors[0].Value then
  begin
    makesqlupdate2(grv1boipi.Properties.Editors[1].Value, _boipi, result);
  end;
  if grv1boicms.Properties.Editors[0].Value then
  begin
    makesqlupdate2(grv1boicms.Properties.Editors[1].Value, _boicms, result);
  end;
  if grv1bopis.Properties.Editors[0].Value then
  begin
    makesqlupdate2(grv1bopis.Properties.Editors[1].Value, _bopis, result);
  end;
  if grv1bocofins.Properties.Editors[0].Value then
  begin
    makesqlupdate2(grv1bocofins.Properties.Editors[1].Value, _bocofins, result);
  end;
  if grv1borecuperaicms.Properties.Editors[0].Value then
  begin
    makesqlupdate2(grv1borecuperaicms.Properties.Editors[1].Value, _borecuperaicms, result);
  end;
  if grv1borecuperaipi.Properties.Editors[0].Value then
  begin
    makesqlupdate2(grv1borecuperaipi.Properties.Editors[1].Value, _borecuperaipi, result);
  end;
  if grv1borecuperapis.Properties.Editors[0].Value then
  begin
    makesqlupdate2(grv1borecuperapis.Properties.Editors[1].Value, _borecuperapis, result);
  end;
  if grv1borecuperacofins.Properties.Editors[0].Value then
  begin
    makesqlupdate2(grv1borecuperacofins.Properties.Editors[1].Value, _borecuperacofins, result);
  end;
  if grv1bogerarlivroproducao.Properties.Editors[0].Value then
  begin
    makesqlupdate2(grv1bogerarlivroproducao.Properties.Editors[1].Value, _bogerarlivroproducao, result);
  end;
  if grv1bocomissao.Properties.Editors[0].Value then
  begin
    makesqlupdate2(grv1bocomissao.Properties.Editors[1].Value, _bocomissao, result);
  end;
  if (tabela = _grupo) and grv1bopdv.Properties.Editors[0].Value then
  begin
    makesqlupdate2(grv1bopdv.Properties.Editors[1].Value, _bopdv, result);
  end;
  if grv1prcomissao.Properties.Editors[0].Value then
  begin
    makesqlupdate1(getnull(substituir(grv1prcomissao.Properties.Editors[1].Value, ',', '.')), _prcomissao, result);
  end;
end;

function Tfrmdlgaplicarconfiguracaogrupo.makeupdate(cdproduto:string):string;
begin
  result := 'update produto set boativar=';
  if grv1bodesativar.Properties.Editors[1].Value = _S then
  begin
    result := result + '''S'''
  end
  else
  begin
    result := result + '''N''';
  end;
  result := result + ' where cdempresa='+empresa.cdempresa.tostring+' and cdproduto='+cdproduto;
end;

function Tfrmdlgaplicarconfiguracaogrupo.makesql(codigo:Integer; tabela: string; bogrupo: Boolean; cdgrupo: TStrings):string;
begin
  result := 'select cdproduto '+
            'from produto '+
            'where cdempresa='+empresa.cdempresa.tostring+' and qtestoque=0 ';
  if grv1bodesativar.Properties.Editors[1].Value = _S then
  begin
    result := result + 'and boativar=''N''';
  end
  else
  begin
    result := result + 'and boativar=''S''';
  end;
  if bogrupo then
  begin
    result := result + 'and cdgrupo='+inttostr(codigo)
  end
  else
  begin
    sqlmontarlistagrupo(cdgrupo, tabela, _cdgrupo, result, 0);
  end;
end;

procedure Tfrmdlgaplicarconfiguracaogrupo.set_sql_desativar_produto(codigo: Integer; tabela:string; bogrupo: Boolean; cdgrupo, sql: TStrings);
var
  q : tclassequery;
begin
  q := tclassequery.create;
  try
    q.q.open(makesql(codigo, tabela, bogrupo, cdgrupo));
    while not q.q.Eof do
    begin
      sql.Add(makeupdate(q.q.fieldbyname(_cdproduto).AsString));
      q.q.Next;
    end;
  finally
    q.free;
  end;
end;

end.

