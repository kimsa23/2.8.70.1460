unit classeRegistro;

interface

uses
  System.Actions, System.UITypes, Vcl.Graphics,
  FireDAC.Stan.Option, firedac.stan.param,FireDAC.Comp.Client,
  controls, StdCtrls, forms, dialogs, ActnList, sysutils, ExtCtrls, Classes, Math,
  DB, dbclient, sqlexpr,
  uSelecionarEntrada, uRotinas, ustrings, uconstantes, udatahora,
  classeexecutasql, classeaplicacao, classeempresa, classegerar, classeretornasql,
  classeusuario, classequery,
  cxGridDBTableView, cxGridDBBandedTableView, cxLabel, cxDBEdit, cxTextEdit,
  uLocalizarConferenciaPedido, ulocalizarmetrologia, uDtmMain,
  ulocalizarformulacao;

type TRegistro = class(TPersistent)
  private
    form : TForm;
    cds  : tclientdataset;
    qry  : TFDQuery;
    dts  : TDatasource;
    boempresa : Boolean;
    cd, artigoI, exibe, tbl: string;
    bofiredac : Boolean;
    fState: TDataSetState;
    function ExisteSchemaAdapter:boolean;
    function AplicarAtualizacaoFiredac:boolean;
    procedure CancelUpdateFiredac;
    procedure SetState(const Value: TDataSetState);
    function StateChange:boolean;
    function AtivarControles: boolean;
    procedure setStatus(tbl:string; dataset:TDataset);
  public
    edtcodigo : TcxTextEdit;
    codigoinsercao: string;
    property State: TDataSetState read fState write SetState;
    function Abrir:boolean;
    function Anterior:boolean;
    function aplicar_atualizacao:boolean;
    class procedure ButtonEditProduto  (tbl:string; c:Tdataset; bonovo:boolean=true; nome:string='');overload;
    class function ButtonEditProduto   (tbl:string; qry: TFDQuery; bonovo:boolean=true):string;overload;
    procedure ButtonEditcdProduto(c: Tdataset; nmcampo:string);
    class procedure ButtonEdit         (c: Tdataset; tabela, cdfield:string; bonovo:boolean=true);
    function Cancelar:boolean;
    procedure CarregarTudo;
    procedure check_numero_telefone(sender:TField);overload;
    procedure check_numero_telefone(sender: TcxDBMaskEdit);overload;
    procedure codigo_onexit(sender: TObject);
    function CodigoExit(sender:TObject; novoEnabled:boolean):boolean;
    function CodigoKeyPress(sender:TObject; var Key: Char; novoEnabled:boolean; bointeger:Boolean=false):boolean;
    function Codigonumero(numero: string; tabela:string=''): integer;
    procedure consistir_data_nascimento(dtnascimento:TField);overload;
    procedure consistir_data_nascimento(dtnascimento:TcxDBDateEdit);overload;
    constructor create(form1: TForm; tabela, exibe1, artigoI1:string; cds1: tclientdataset; dts1: tdatasource; edtcodigo1: TcxTextEdit; bonu:boolean=false); overload; virtual;
    constructor create(form1: TForm; tabela, exibe1, artigoI1:string; qry1: TFDQuery;       dts1: tdatasource; edtcodigo1: TcxTextEdit; bonu:boolean=false); overload; virtual;
    destructor destroy; override;
    procedure dados_atual;
    procedure desativar_actions;
    function Editar:boolean;
    function Editar_esta_ativo:Boolean;
    function Excluir:boolean;
    procedure ExibirInformacaoRegistro(c:TDataSet; key: word; tabela:string='');overload;
    procedure exibirmensagemerro(cderro: Integer; msg:string);
    class function existe_campo(dataset: TDataSet; nmfield:string):Boolean;
    function existe_campo_repetido(c : TClientDataSet; nmcampo:string; vlcampo:string):Boolean;
    procedure gerar_codigo(Sender: TObject; sds:TSQLDataset; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    function get_tipo_tabela_minumo:integer;
    class function get_tbl_origem(tbl:string):string;
    procedure LimparTudo;
    procedure NewRecord;
    function Novo(sender:TObject):boolean;
    function Primeiro:boolean;
    function Proximo:boolean;
    procedure ReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
    function RegistroAbrir(codigo:Largeint):boolean;
    function Salvar:boolean;
    procedure Set_Edit(bostate:Boolean);
    class procedure set_grade_item(form: TForm; ativar: Boolean);
    class procedure set_insert(dataset: tdataset);
    procedure set_panel;
    class procedure set_readonly_dados(form : TForm; ativar: boolean);
    procedure set_update(dataset: tdataset);
    class procedure setUpdate(dataset: tdataset);
    function Status_cds:TDataSetState;
    function Ultimo:boolean;
    procedure Verificar_Bloqueio_chave;
    procedure voltar_codigo_excluido(tbl: string; codigo:integer);
    function consistir_numero_integer(sender: TField; texto:string):Boolean;
    procedure copiar;
    function Lista_Tabela_menos_um:Boolean;
    function Confirmar_Exclusao: Boolean;
    function Excluir_registro: Boolean;
    class procedure SetQueryLocalizar(q: TClasseQuery; dts: TDataSource; tbv: TcxGridDBTableView);overload;
    class procedure SetModoGrade(bomodograde:boolean; q : TClasseQuery; tbv: TcxGridDBTableView);overload;
    class procedure SetModoGrade(bomodograde:boolean; q : TFDQuery; tbv: TcxGridDBTableView);overload;
    class procedure SetQueryLocalizar(q: TFDQuery; dts: TDataSource; tbv: TcxGridDBTableView);overload;
  end;

implementation

uses uregistro,
  ulocalizar,
  uLocalizarAdntCliente,
  uLocalizarAdntFornecedor,
  uLocalizarPedidoMaterial,
  uLocalizarPedido,
  ulocalizarcorridaquimica,
  ulocalizarLivrop3,
  ulocalizarrim,
  ulocalizardespesaconvenio,
  ulocalizartreinamento,
  ulocalizarcte,
  ulocalizarfornecedor,
  ulocalizarcobranca,
  uLocalizarOrdcompra,
  ulocalizarrpa,
  ulocalizarorcamento,
  ulocalizarveiculo,
  uLocalizarMovto,
  ulocalizarparada,
  ulocalizarcheque,
  uLocalizarEquipamento,
  uLocalizarAutPagto,
  ulocalizarordproducao,
  ulocalizarContrato,
  ulocalizarEmbarque,
  ulocalizarapontamentomanual, 
  ulocalizartransporte,
  ulocalizarproduto,
  uLocalizarDuplicata,
  ulocalizarCliente,
  ulocalizarativopiscofins,
  ulocalizarTransportadora,
  ulocalizarnegociacao,
  uLocalizarFaturamento,
  ulocalizarFuncionario,
  ulocalizarpaciente,
  ulocalizarlocacao,
  uinterbase, ulocalizarmovbancario,
  ulocalizarsaida,
  ulocalizarentrada,
  uLocalizarMDFE, uProtector, classecopiarregistro,
  ulocalizarrequisicaoproducao, ulocalizarrhocorrencia, ulocalizarordserv;

const
  _acoes = 'actgerarcotacao'#13+
           'actdevolucao'#13+
           'actscript'#13+
           'actdesigner'#13+
           'actentregaparcial'#13+
           'actgerarfaturamento'#13+
           'actimportarpedido'#13+
           'actanterior'#13+
           'actatualizar'#13+
           'actbaixa'#13+
           'actbaixarpa'#13+
           'acteditar'#13+
           'actencontrocontas'#13+
           'actetapa'#13+
           'actexcluir'#13+
           'actcopiar'#13+
           'actcopiarde'#13+
           'actfecharordServ'#13+
           'actgerarremessa'#13+
           'actgerarsintegra'#13+
           'actexportar'#13+
           'actefdpiscofins'#13+
           'actefdpiscofinscte'#13+
           'actefd'#13+
           'actspedcte'#13+
           'actefditem'#13+
           'actemail'#13+
           'actimprimir'#13+
           'actemail'#13+
           'actrenovar'#13+
           'actimprimirmodotexto'#13+
           'actimprimirmodotexto2'#13+
           'actexportarnfe'#13+
           'actexportarcte'#13+
           'actimprimirrecibo'#13+
           'actmudaretapa'#13+
           'actnovoarquivo'#13+
           'actimportarpedido'#13+
           'actproximo'#13+
           'actsalvararquivo'#13+
           'actvisualizar';

class procedure TRegistro.set_grade_item(form: TForm; ativar: Boolean);
var
  i : Integer;
begin
  for i := 0 to form.ComponentCount - 1 do
  begin
    if form.Components[i] is TcxGridDBBandedTableView then
    begin
      TcxGridDBBandedTableView(form.Components[i]).OptionsData.Appending            := ativar;
      TcxGridDBBandedTableView(form.Components[i]).OptionsData.CancelOnExit         := ativar;
      TcxGridDBBandedTableView(form.Components[i]).OptionsData.Deleting             := ativar;
      TcxGridDBBandedTableView(form.Components[i]).OptionsData.DeletingConfirmation := ativar;
      TcxGridDBBandedTableView(form.Components[i]).OptionsData.Inserting            := ativar;
    end;
    if (form.Components[i] is TcxGridDBBandedColumn) and (TcxGridDBBandedColumn(form.Components[i]).Tag = 0) then
    begin
      TcxGridDBBandedColumn(form.Components[i]).Options.Editing := ativar;
    end;
    if (form.Components[i] is TcxGridDBTableView) and (TcxGridDBTableView(form.Components[i]).Tag = 0) then
    begin
      TcxGridDBTableView(form.Components[i]).OptionsData.Appending            := ativar;
      TcxGridDBTableView(form.Components[i]).OptionsData.CancelOnExit         := ativar;
      TcxGridDBTableView(form.Components[i]).OptionsData.Deleting             := ativar;
      TcxGridDBTableView(form.Components[i]).OptionsData.DeletingConfirmation := ativar;
      TcxGridDBTableView(form.Components[i]).OptionsData.Inserting            := ativar;
    end;
    if (form.Components[i] is TcxGridDBTableView) and (TcxGridDBTableView(form.Components[i]).Tag = 99) then
    begin
      TcxGridDBTableView(form.Components[i]).OptionsData.Appending            := false;
      TcxGridDBTableView(form.Components[i]).OptionsData.Inserting            := false;
      TcxGridDBTableView(form.Components[i]).OptionsData.CancelOnExit         := ativar;
      TcxGridDBTableView(form.Components[i]).OptionsData.Deleting             := ativar;
      TcxGridDBTableView(form.Components[i]).OptionsData.DeletingConfirmation := ativar;
    end;
    if (form.Components[i] is TcxGridDBTableView) and (TcxGridDBTableView(form.Components[i]).Tag = 98) then
    begin
      TcxGridDBTableView(form.Components[i]).OptionsData.Editing              := false;
      TcxGridDBTableView(form.Components[i]).OptionsData.Appending            := false;
      TcxGridDBTableView(form.Components[i]).OptionsData.Inserting            := false;
      TcxGridDBTableView(form.Components[i]).OptionsData.CancelOnExit         := false;
      TcxGridDBTableView(form.Components[i]).OptionsData.Deleting             := false;
      TcxGridDBTableView(form.Components[i]).OptionsData.DeletingConfirmation := false;
    end;
    if (form.Components[i] is TcxGridDBColumn) and (TcxGridDBColumn(form.Components[i]).Tag = 0) then
    begin
      TcxGridDBColumn(form.Components[i]).Options.Editing := ativar;
    end;
  end;
end;

procedure TRegistro.setStatus(tbl:string; dataset:TDataset);
var
  i : Integer;
begin
  if (not dataset.Active) or (Dataset.RecordCount < 1) or (dataset.State in [dsinsert, dsEdit]) or (not existe_campo(dataset, _cdst+tbl)) then
  begin
    exit;
  end;
  for i := 0 to form.ComponentCount -1 do
  begin
    if form.Components[i] is TCustomAction then
    begin
      if (lowercase(form.Components[i].Name) = 'acteditar') and TCustomAction(form.Components[i]).visible then
      begin
        TCustomAction(form.Components[i]).Enabled := NomedoCodigo(_st+tbl, dataset.fieldbyname(_cdst+tbl).asstring, _boalterar) = _S;
      end;
      if (lowercase(form.Components[i].Name) = 'actexcluir') and TCustomAction(form.Components[i]).visible then
      begin
        TCustomAction(form.Components[i]).Enabled := NomedoCodigo(_st+tbl, dataset.fieldbyname(_cdst+tbl).asstring, _boexcluir) = _S;
      end;
    end;
  end;
end;

class procedure TRegistro.setUpdate(dataset: tdataset);
var
  i : Integer;
begin
  dataset.fieldbyname(_tsalteracao).AsDateTime := tsbanco;
  dataset.FieldByName(_cdusuarioa).AsInteger    := usuario.cdusuario;
  dataset.fieldbyname(_cdcomputadora).AsString := vgcdcomputador;
  if dataset.FieldByName(_cdusuarioi).IsNull then
  begin
    set_insert(dataset);
  end;
  for i := 0 to DataSet.FieldCount - 1 do
  begin
    if dataset.Fields[i].IsNull then
    begin
      Continue;
    end;
    if (DataSet.Fields[i].DataType = ftString) and
       (dataset.Fields[i].AsString <> dataset.Fields[i].OldValue) and
       (RetiraAcentos(dataset.Fields[i].AsString) <> dataset.Fields[i].AsString) then
    begin
      dataset.Fields[i].AsString := RetiraAcentos(dataset.Fields[i].AsString);
    end;
  end;
end;

procedure TRegistro.ExibirInformacaoRegistro(c:TDataSet; key: word; tabela:string='');
var
  mensagem : string;
begin
  if (not (((key = __keyexibeinformacao) or (key = __keyexibelog)) and (c.Active) and (c.RecordCount > 0))) or (key <> __keyexibeinformacao) then
  begin
    exit;
  end;
  mensagem := CentralizarString('Inclusão', 80)+#13#13+
              'Data            Hora        Usuário               Computador'#13+
              FormatarTextoDireita(FormatDateTime(__tsbanco3, c.fieldbyname(_tsinclusao).AsDateTime), 20)+' '+
              FormatarTextoDireita(NomedoCodigo(_usuario      , c.fieldbyname(_cdusuarioi   ).AsString), 20)+' '+
              FormatarTextoDireita(NomedoCodigo(_computador   , c.fieldbyname(_cdcomputadori).AsString), 20)+#13#13+
              CentralizarString('Alteração', 80)+#13#13+
              'Data            Hora        Usuário               Computador'#13+
              FormatarTextoDireita(FormatDateTime(__tsbanco3, c.fieldbyname(_tsalteracao).AsDateTime), 20)+' '+
              FormatarTextoDireita(NomedoCodigo(_usuario      , c.fieldbyname(_cdusuarioa   ).AsString), 20)+' '+
              FormatarTextoDireita(NomedoCodigo(_computador   , c.fieldbyname(_cdcomputadora).AsString), 20);
  if (tabela = _pedido) or (tabela = _embarque) then
  begin
    mensagem := mensagem +
                #13#13+CentralizarString('Liberação', 80)+#13#13+
                'Data            Hora        Usuário               Computador'#13+
                FormatarTextoDireita(FormatDateTime(__tsbanco3, c.fieldbyname(_tsliberado).AsDateTime), 20)+' '+
                FormatarTextoDireita(NomedoCodigo(_usuario      , c.fieldbyname(_cdusuariol   ).AsString), 20)+' '+
                FormatarTextoDireita(NomedoCodigo(_computador   , c.fieldbyname(_cdcomputadorl).AsString), 20);
  end;
  showmessage(mensagem);
end;

procedure TRegistro.set_panel;
var
  x, i : integer;
begin
  for i := 0 to form.ComponentCount - 1 do
  begin
    if ((form.Components[i] is TPanel) or (form.Components[i] is Tcxlabel)) and (lowercase(form.Components[i].Name) = _pnl) then
    begin
      tpanel(form.Components[i]).Caption := Exibe;
      if (dts.dataset.fieldbyname(cd+tbl).asstring <> _0) and (dts.dataset.fieldbyname(cd+tbl).asstring <> '-1') then
      begin
        if tbl = _saida then
        begin
          if dts.dataset.fieldbyname(_nusaida).asstring <> '' then
          begin
            tpanel(form.Components[i]).Caption := tpanel(form.Components[i]).Caption  + ' ' + dts.dataset.fieldbyname(_nusaida).asstring + ' (' +nomedocodigonu(_stdocumento, dts.dataset.fieldbyname(_nustdocumento).asstring)+')';
            if not dts.dataset.fieldbyname(_cdserie).IsNull then
            begin
              tpanel(form.Components[i]).Caption := tpanel(form.Components[i]).Caption + ' Série '+NomedoCodigo(_serie, dts.dataset.fieldbyname(_cdserie).asstring);
            end;
            if dts.dataset.fieldbyname(_nuchavenfe).asstring <> '' then
            begin
              tpanel(form.Components[i]).Caption := tpanel(form.Components[i]).Caption + ' - Chave '+ qrotinas.getchave(dts.dataset.fieldbyname(_nuchavenfe).asstring);
            end;
          end;
        end
        else
        begin
          tpanel(form.Components[i]).Caption := tpanel(form.Components[i]).Caption +' '+ dts.dataset.fieldbyname(cd+tbl).asstring;
        end;
      end;
      for x := 0 to dts.DataSet.Fields.Count - 1 do
      begin
        if LowerCase(dts.DataSet.Fields[x].FieldName) = _nm+lowercase(tbl) then
        begin
          tpanel(form.Components[i]).Caption := tpanel(form.Components[i]).Caption + ' - ' + dts.dataset.Fieldbyname(_nm+tbl).asstring;
        end;
      end;
      for x := 0 to dts.DataSet.Fields.Count - 1 do
      begin
        if LowerCase(dts.DataSet.Fields[x].FieldName) = _cdst+lowercase(tbl) then
        begin
          tpanel(form.Components[i]).Caption := tpanel(form.Components[i]).Caption + ' - ' + NomedoCodigo(_st+tbl, dts.dataset.Fieldbyname(_cdst+tbl).asstring);
          if ((tbl = _cte) or (tbl = _mdfe)) and (dts.dataset.fieldbyname(_nuchavenfe).asstring <> '') then
          begin
            tpanel(form.Components[i]).Caption := tpanel(form.Components[i]).Caption + ' - Chave '+ qrotinas.getchave(dts.dataset.fieldbyname(_nuchavenfe).asstring);
          end;
          if tbl = _ordserv then
          begin
            Tcxlabel(form.Components[i]).Caption := Tcxlabel(form.Components[i]).Caption +' - '+NomedoCodigo(_etapa, dts.dataset.fieldbyname(_cdetapa).asstring);
            if dts.dataset.fieldbyname(_bocontrato).asstring = _S then
            begin
              Tcxlabel(form.Components[i]).style.font.Color := 255
            end
            else
            begin
              Tcxlabel(form.Components[i]).style.Font.Color := clWindowText;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TRegistro.dados_atual;
begin
  if dts.dataset.fieldbyname(cd+tbl).asstring = _0 then
  begin
    Exit;
  end;
  if edtcodigo <> nil then
  begin
    edtcodigo.text := dts.dataset.fieldbyname(cd+tbl).asstring;
    if edtcodigo.Visible then
    begin
      if not edtcodigo.Enabled then
      begin
        edtcodigo.Enabled := True;
      end;
      edtcodigo.setfocus;
    end;
    edtcodigo.selectall;
  end;
  set_panel;
end;

procedure TRegistro.desativar_actions;
var
  i : integer;
begin
  for i := 0 to form.ComponentCount - 1 do
  begin
    if (form.Components[i] is TAction) and ((LowerCase(TAction(form.Components[i]).Name)=_acteditar) or
                                            (LowerCase(TAction(form.Components[i]).Name)=_actexcluir) or
                                            (LowerCase(TAction(form.Components[i]).Name)=_actsalvar) or
                                            (LowerCase(TAction(form.Components[i]).Name)=_actcancelar)) then
    begin
      TAction(form.Components[i]).Enabled := false;
    end;
  end;
end;

function TRegistro.Codigonumero(numero: string; tabela:string=''): integer;
  function makesql:string;
  begin
    result := 'select count(*) from '+tabela+' where nu'+tabela+'='+quotedstr(numero);
    if boempresa then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.tostring;
    end;
  end;
  function makesql2:string;
  begin
    result := 'select cd'+tabela+' from '+tabela+' where nu'+tabela+'='+quotedstr(numero);
    if boempresa then
    begin
      Result := result + ' and cdempresa='+empresa.cdempresa.tostring;
    end;
  end;
var
  cont : integer;
begin
  if tabela = '' then
  begin
    tabela := tbl;
  end;
  cont := RetornaSQLInteger(makesql);
  if cont = 0 then
  begin
    exit
  end;
  if cont = 1 then
  begin
    result := RetornaSQLinteger(makesql2)
  end
  else if cont > 1 then
  begin
    result := selecionar_Entrada(tabela, numero);
    if result = 0 then
    begin
      result := -1;
    end;
  end;
end;

function TRegistro.CodigoKeyPress(sender:TObject; var Key: Char; novoEnabled:boolean; bointeger:Boolean=false):boolean;
var
  codigo : largeint;
begin
  if bofiredac then
  begin
    if cd = _cd then
    begin
      ApenasNumericos(key)
    end
    else
    begin
      ApenasCaracteresAlfaNumericos(key);
    end;
    if sender is tedit then
    begin
      if not ((key = #13) and (TEdit(sender).text <> '')) then
      begin
        result := false;
        exit;
      end;
    end
    else if not ((key = #13) and (TcxTextEdit(sender).text <> '')) then
    begin
      result := false;
      exit;
    end;
    if cd = _nu then
    begin
      codigo := Codigonumero(edtcodigo.text);
    end
    else
    begin
      codigo := StrToInt64(edtcodigo.text);
    end;
    if not registroabrir(codigo) then
    begin
      if novoEnabled then
      begin
        if messagedlg('Código '+edtcodigo.text+' inexistente na tabela '+exibe+'.'#13'Deseja inserí-lo?', mtConfirmation, [mbyes, mbno], 0) = mryes then
        begin
          novo(sender);
        end
        else if qry.Active and (qry.fieldbyname(cd+tbl).asstring <> '') then
        begin
          edtcodigo.text := qry.fieldbyname(cd+tbl).asstring;
        end;
      end
      else
      begin
        MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtcodigo.text, maiuscula(exibe)]), mterror, [mbok], 0);
        edtcodigo.text := qry.fieldbyname(cd+tbl).asstring;
      end;
    end;
  end
  else
  begin
    if cd = _cd then
    begin
      ApenasNumericos(key)
    end
    else
    begin
      ApenasCaracteresAlfaNumericos(key);
    end;
    if sender is tedit then
    begin
      if not ((key = #13) and (TEdit(sender).text <> '')) then
      begin
        result := false;
        exit;
      end;
    end
    else if not ((key = #13) and (TcxTextEdit(sender).text <> '')) then
    begin
      result := false;
      exit;
    end;
    if cd = _nu then
    begin
      codigo := Codigonumero(edtcodigo.text);
    end
    else
    begin
      codigo := strtoint64(edtcodigo.text);
    end;
    if not registroabrir(codigo) then
    begin
      if novoEnabled then
      begin
        if messagedlg('Código '+edtcodigo.text+' inexistente na tabela '+exibe+'.'#13'Deseja inserí-lo?', mtConfirmation, [mbyes, mbno], 0) = mryes then
        begin
          novo(sender)
        end
        else if cds.Active and (cds.fieldbyname(cd+tbl).asstring <> '') then
        begin
          edtcodigo.text := cds.fieldbyname(cd+tbl).asstring;
        end;
      end
      else
      begin
        MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtcodigo.text, maiuscula(exibe)]), mterror, [mbok], 0);
        edtcodigo.text := cds.fieldbyname(cd+tbl).asstring;
      end;
    end;
  end;
  edtcodigo.selectall;
  result := true;
end;

function TRegistro.CodigoExit(sender:TObject; novoEnabled:boolean):boolean;
var
  codigo : LargeInt;
begin
  if sender is tedit then
  begin
    if not (TEdit(sender).text <> '') then
    begin
      result := false;
      exit;
    end;
  end
  else
  begin
    if not (TcxTextEdit(sender).text <> '') then
    begin
      result := false;
      exit;
    end;
  end;
  if cd = _nu then
  begin
    codigo := qregistro.CodigodoString(tbl, edtcodigo.text, _nu+tbl);
  end
  else
  begin
    codigo := strtoint64(edtcodigo.text);
  end;
  if not registroabrir(codigo) then
  begin
    if novoEnabled then
    begin
      if messagedlg('Código '+edtcodigo.text+' inexistente na tabela '+exibe+'.'#13'Deseja inserí-lo?', mtConfirmation, [mbyes, mbno], 0) = mryes then
      begin
        novo(sender)
      end
      else
      begin
        edtcodigo.text := cds.fieldbyname(cd+tbl).asstring;
      end;
    end
    else
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtcodigo.text, maiuscula(exibe)]), mterror, [mbok], 0);
      edtcodigo.text := cds.fieldbyname(cd+tbl).asstring;
    end;
  end;
  edtcodigo.selectall;
  result := true;
end;

function TRegistro.Novo(sender:TObject):boolean;
begin
  Verificar_Bloqueio_chave;
  if (sender is TEdit) or (sender is TcxTextEdit) then
  begin
    codigoinsercao := edtcodigo.text
  end
  else
  begin
    codigoinsercao := '';
    edtcodigo.text := '';
  end;
  set_readonly_dados(form, false);
  if bofiredac then
  begin
    if not qry.Active then
    begin
      if boempresa then
      begin
        qry.Params.ParamByName(_cdempresa).AsLargeInt := Empresa.cdempresa;
      end;
      qry.Params.ParamByName(_cd+tbl).AsLargeInt := 0;
      qry.Open;
    end;
    qry.insert;
  end
  else
  begin
    if not cds.Active then
    begin
      cds.FetchParams; //Traz os parâmetros da SQL para o ClientDataSet
      if boempresa then
      begin
        cds.Params.ParamByName(_cdempresa).AsLargeInt := Empresa.cdempresa;
      end;
      cds.Params.ParamByName(_cd+tbl).asstring := _0;
      cds.Open;
    end;
    cds.insert;
  end;
  set_grade_item(form, true);
  State := dsInsert;
  result := true;
end;

function TRegistro.Abrir:boolean;
var
  cd : Largeint;
  procedure set_localizar_especifico;
  var
    nunivel : string;
  begin
         if LowerCase(tbl) = _adntcliente         then cd := localizaradntcliente
    else if LowerCase(tbl) = _adntfornecedor      then cd := LocalizarAdntFornecedor
    else if LowerCase(tbl) = _pedidomaterial      then cd := LocalizarPedidoMaterial
    else if LowerCase(tbl) = _produto             then cd := LocalizarProduto('')
    else if LowerCase(tbl) = _autpagto            then cd := LocalizarAutPagto
    else if LowerCase(tbl) = _duplicata           then cd := Localizarduplicata
    else if lowercase(tbl) = _formulacao          then cd := LocalizarFormulacao
    else if LowerCase(tbl) = _movbancario         then cd := localizarmovbancario
    else if LowerCase(tbl) = _locacao             then cd := LocalizarLocacao
    else if LowerCase(tbl) = _corridaquimica      then cd := LocalizarCorridaQuimica
    else if lowercase(tbl) = _funcionario         then cd := Localizarfuncionario
    else if lowercase(tbl) = _paciente            then cd := Localizarpaciente
    else if LowerCase(tbl) = _faturamento         then cd := LocalizarFaturamento
    else if lowercase(tbl) = _ordproducao         then cd := Localizarordproducao
    else if lowercase(tbl) = _requisicaoproducao  then cd := Localizarrequisicaoproducao
    else if LowerCase(tbl) = _pedido              then cd := LocalizarPedido
    else if LowerCase(tbl) = _ordserv             then cd := localizarordserv
    else if LowerCase(tbl) = _saida               then cd := Localizarsaida
    else if LowerCase(tbl) = _entrada             then cd := Localizarentrada
    else if LowerCase(tbl) = _mdfe                then cd := Localizarmdfe
    else if LowerCase(tbl) = _veiculo             then cd := LocalizarVeiculo
    else if LowerCase(tbl) = _ordcompra           then cd := LocalizarOrdcompra
    else if LowerCase(tbl) = _metrologia          then cd := Localizarmetrologia
    else if LowerCase(tbl) = _rhocorrencia        then cd := Localizarrhocorrencia
    else if LowerCase(tbl) = _rpa                 then cd := Localizarrpa
    else if lowercase(tbl) = _contrato            then cd := localizarcontrato
    else if lowercase(tbl) = _embarque            then cd := localizarembarque
    else if lowercase(tbl) = _apontamentomanual   then cd := localizarapontamentomanual
    else if lowercase(tbl) = _transporte          then cd := localizartransporte
    else if LowerCase(tbl) = _orcamento           then cd := Localizarorcamento
    else if LowerCase(tbl) = _negociacao          then cd := Localizarnegociacao
    else if LowerCase(tbl) = _cte                 then cd := LocalizarCTE
    else if LowerCase(tbl) = _fornecedor          then cd := LocalizarFornecedor
    else if LowerCase(tbl) = _transportadora      then cd := Localizartransportadora
    else if LowerCase(tbl) = _cliente             then cd := Localizarcliente
    else if LowerCase(tbl) = _cobranca            then cd := LocalizarCobranca
    else if LowerCase(tbl) = _rim                 then cd := Localizarrim
    else if LowerCase(tbl) = _despesaconvenio     then cd := Localizardespesaconvenio
    else if LowerCase(tbl) = _treinamento         then cd := Localizartreinamento
    else if LowerCase(tbl) = _conferencia+_pedido then cd := Localizarconferenciapedido
    else if LowerCase(tbl) = _cheque              then cd := Localizarcheque
    else if LowerCase(tbl) = _equipamento         then cd := Localizarequipamento
    else if LowerCase(tbl) = _movto               then cd := Localizarmovto
    else if LowerCase(tbl) = _parada              then cd := Localizarparada
    else if LowerCase(tbl) = _lp1a                then cd := Localizarlp1a
    else if LowerCase(tbl) = _ativo+_pis+_cofins  then cd := LocalizarAtivoPISCOFINS
    else if lowercase(tbl) = _regrast             then cd := localizar(_regrast)
    else if LowerCase(tbl) = _grupo               then
    begin
      nunivel := Localizar(tbl, _nunivel, _nmgrupo, exibe, _o, _nunivel);
      cd := qregistro.CodigodoString(tbl, nunivel, _nunivel);
    end
    else cd := Localizar(tbl);
  end;
begin
  if (dts.State = dsinsert) or (dts.state = dsedit) then
  begin
    result := false;
    exit;
  end;
  set_localizar_especifico;
  if cd = 0 then
  begin
    result := false;
    exit;
  end;
  if (cd <> 0) and (not registroabrir(Cd)) then
  begin
    result         := false;
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cd.tostring, maiuscula(exibe)]), mterror, [mbok], 0);
    edtcodigo.Text := cds.fieldbyname(_cd+tbl).asstring;
    edtcodigo.selectall;
    exit;
  end;
  result := true;
end;

function TRegistro.Excluir_registro:Boolean;
var
  codigo : Largeint;
  Transacao: TTransactionDesc;
begin
  if bofiredac then
  begin
    set_readonly_dados(form, false);
    codigo := qry.fieldbyname(_cd+tbl).AsLargeInt;
    qry.delete;
    result := true;
    state := dts.State;
    edtcodigo.Clear;
    set_panel;
    voltar_codigo_excluido(tbl, codigo);
  end
  else
  begin
    set_readonly_dados(form, false);
    codigo := cds.fieldbyname(_cd+tbl).AsLargeInt;
    cds.delete;
    Randomize;
    Transacao.TransactionID  := RandomRange(1, 999999999);
    Transacao.IsolationLevel := xilReadCommitted;
    aplicacao.con2.StartTransaction(Transacao);
    if cds.ApplyUpdates(0) = 0 then
    begin
      aplicacao.con2.Commit(Transacao);
      result := true;
      state := dts.State;
      edtcodigo.Clear;
      set_panel;
      if tbl <> _pedido then
      begin
        voltar_codigo_excluido(tbl, codigo);
      end;
    end
    else
    begin
      aplicacao.con2.Rollback(Transacao);
      result := false;
      RegistroAbrir(codigo);
      set_readonly_dados(form, true);
      dados_atual;
    end;
  end;
end;

function TRegistro.Confirmar_Exclusao:Boolean;
var
  codigo : integer;
begin
  result := false;
  Verificar_Bloqueio_chave;
  if bofiredac then
  begin
    if UpperCase(qry.fieldbyname(cd+tbl).asstring) <> edtcodigo.text then
    begin
      if messagedlg('No momento está aberto o registro '+qry.fieldbyname(cd+tbl).asstring+#13+
                    'você gostaria de abrir registro '+edtcodigo.text+' para exclusão?', mtConfirmation, [mbyes, mbno], 0) = mryes then
      begin
        codigo := qregistro.CodigodoString(tbl, edtcodigo.text, cd+tbl);
        if not RegistroAbrir(codigo) then
        begin
          exit;
        end;
      end
      else
      begin
        edtcodigo.Text := qry.fieldbyname(cd+tbl).asstring;
        exit;
      end;
    end;
    if messagedlg('Tem certeza que deseja excluir'#13+artigoI+' '+exibe+' '+qry.fieldbyname(cd+tbl).asstring+'?',mtConfirmation, [mbyes, mbno], 0) = mrno then
    begin
      exit;
    end;
    result := True;
  end
  else
  begin
    if UpperCase(cds.fieldbyname(cd+tbl).asstring) <> edtcodigo.text then
    begin
      if messagedlg('No momento está aberto o registro '+cds.fieldbyname(cd+tbl).asstring+#13+
                    'você gostaria de abrir registro '+edtcodigo.text+' para exclusão?', mtConfirmation, [mbyes, mbno], 0) = mryes then
      begin
        codigo := qregistro.CodigodoString(tbl, edtcodigo.text, cd+tbl);
        if not RegistroAbrir(codigo) then
        begin
          exit;
        end;
      end
      else
      begin
        edtcodigo.Text := cds.fieldbyname(cd+tbl).asstring;
        exit;
      end;
    end;
    if messagedlg('Tem certeza que deseja excluir'#13+artigoI+' '+exibe+' '+cds.fieldbyname(cd+tbl).asstring+'?',mtConfirmation, [mbyes, mbno], 0) = mrno then
    begin
      exit;
    end;
    result := True;
  end;
end;

function TRegistro.Excluir:boolean;
var
  codigo: integer;
  mensagem : string;
  Transacao: TTransactionDesc;
begin
  result := false;
  Verificar_Bloqueio_chave;
  if bofiredac then
  begin
    if UpperCase(qry.fieldbyname(cd+tbl).asstring) <> edtcodigo.text then
    begin
      if messagedlg('No momento está aberto o registro '+qry.fieldbyname(cd+tbl).asstring+#13+
                    'você gostaria de abrir registro '+edtcodigo.text+' para exclusão?', mtConfirmation, [mbyes, mbno], 0) = mryes then
      begin
        codigo := qregistro.CodigodoString(tbl, edtcodigo.text, cd+tbl);
        if not RegistroAbrir(codigo) then
        begin
          exit;
        end;
      end
      else
      begin
        edtcodigo.Text := qry.fieldbyname(cd+tbl).asstring;
        exit;
      end;
    end;
    mensagem := 'Tem certeza que deseja excluir'#13+artigoI+' '+exibe+' '+qry.fieldbyname(cd+tbl).asstring+'?';
    if messagedlg(mensagem,mtConfirmation, [mbyes, mbno], 0) = mrno then
    begin
      exit;
    end;
    set_readonly_dados(form, false);
    codigo := qry.fieldbyname(_cd+tbl).AsLargeInt;
    qry.delete;
    if not aplicar_atualizacao then
    begin
      qry.CancelUpdates;
      //CancelUpdateFiredac;
      result := False;
      Exit;
    end;
    result := true;
    state := dts.State;
    edtcodigo.Clear;
    set_panel;
    voltar_codigo_excluido(tbl, codigo);
  end
  else
  begin
    if UpperCase(cds.fieldbyname(cd+tbl).asstring) <> edtcodigo.text then
    begin
      if messagedlg('No momento está aberto o registro '+cds.fieldbyname(cd+tbl).asstring+#13+
                    'você gostaria de abrir registro '+edtcodigo.text+' para exclusão?', mtConfirmation, [mbyes, mbno], 0) = mryes then
      begin
        codigo := qregistro.CodigodoString(tbl, edtcodigo.text, cd+tbl);
        if not RegistroAbrir(codigo) then
        begin
          exit;
        end;
      end
      else
      begin
        edtcodigo.Text := cds.fieldbyname(cd+tbl).asstring;
        exit;
      end;
    end;
    mensagem := 'Tem certeza que deseja excluir'#13+artigoI+' '+exibe+' '+cds.fieldbyname(cd+tbl).asstring+'?';
    if messagedlg(mensagem,mtConfirmation, [mbyes, mbno], 0) = mrno then
    begin
      exit;
    end;
    set_readonly_dados(form, false);
    codigo := cds.fieldbyname(_cd+tbl).AsLargeInt;
    cds.delete;
    Randomize;
    Transacao.TransactionID  := RandomRange(1, 999999999);
    Transacao.IsolationLevel := xilReadCommitted;
    aplicacao.con2.StartTransaction(Transacao);
    if cds.ApplyUpdates(0) = 0 then
    begin
      aplicacao.con2.Commit(Transacao);
      result := true;
      state := dts.State;
      edtcodigo.Clear;
      set_panel;
      if tbl <> _pedido then
      begin
        voltar_codigo_excluido(tbl, codigo);
      end;
    end
    else
    begin
      aplicacao.con2.Rollback(Transacao);
      result := false;
      RegistroAbrir(codigo);
      set_readonly_dados(form, true);
      dados_atual;
    end;
  end;
end;

procedure TRegistro.ReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ShowMessage(e.Message);
end;

function TRegistro.Cancelar:boolean;
begin
  if (usuario.bocancelamento = _s) and (messagedlg('Deseja realmente cancelar?', mtconfirmation, [mbyes, mbno], 0) = mrno) then
  begin
    result := false;
    exit;
  end;
  if bofiredac then
  begin
    qry.Cancel;
    if ExisteSchemaAdapter then
    begin
      CancelUpdateFiredac;
    end;
    set_readonly_dados(form, true);
    dados_atual;
    set_grade_item(form, false);
    registroabrir(qry.fieldbyname(_cd+tbl).AsLargeInt);
    State := qry.State;
  end
  else
  begin
    cds.CancelUpdates;
    set_readonly_dados(form, true);
    dados_atual;
    set_grade_item(form, false);
    registroabrir(cds.fieldbyname(_cd+tbl).AsLargeInt);
    State := cds.State;
  end;
  result := true;
end;

procedure TRegistro.CancelUpdateFiredac;
{$IFDEF VER300}
var
  i : integer;
{$ENDIF}
begin
  {$IFNDEF VER300}
  qry.CachedUpdates;
  exit;
  {$ENDIF}
  {$IFDEF VER300}
  for I := 0 to form.ComponentCount - 1 do
  begin
    if form.Components[i] is TFDSchemaAdapter then
    begin
      TFDSchemaAdapter(form.Components[i]).CancelUpdates;
      break;
    end;
  end;
 {$ENDIF}
end;

function TRegistro.Salvar:boolean;
begin
  if bofiredac then
  begin
    if qry.State = dsinsert then
    begin
      if (qry.FieldByName(_cd+tbl).asstring = '') or (qry.fieldbyname(_cd+tbl).IsNull) then
      begin
        if codigoinsercao <> '' then
        begin
          qry.fieldbyname(_cd+tbl).Asstring := codigoinsercao;
        end
        else if (tbl = _fornecedor) or (tbl = _cliente) or (tbl = _transportadora) then
        begin
          if (tbl = _fornecedor) and empresa.fornecedor.bocdreduzido then
          begin
            qry.fieldbyname(_cd+tbl).Asstring := GerarCodigo(tbl, _cd+tbl)
          end
          else if (tbl = _cliente) and empresa.cliente.bocdreduzido then
          begin
            qry.fieldbyname(_cd+tbl).Asstring := GerarCodigo(tbl, _cd+tbl)
          end
          else if qry.FieldByName(_nucnpj).AsString <> '' then
          begin
            qry.FieldByName(_cd+tbl).asstring := removercaracteres(cds.fieldbyname(_nucnpj).AsString)
          end
          else if qry.FieldByName(_nucpf).AsString  <> '' then
          begin
            qry.FieldByName(_cd+tbl).asstring := removercaracteres(cds.fieldbyname(_nucpf).AsString)
          end
          else
          begin
            qry.fieldbyname(_cd+tbl).Asstring := GerarCodigo(tbl, _cd+tbl)
          end;
        end
        else if qry.fieldbyname(_cd+tbl).AsString = '-1' then
        begin
          qry.fieldbyname(_cd+tbl).asstring := GerarCodigo(tbl, _cd+tbl);
          codigoinsercao := qry.fieldbyname(_cd+tbl).asstring;
        end
        else
        begin
          qry.fieldbyname(_cd+tbl).Asstring := GerarCodigo(tbl, _cd+tbl)
        end;
        codigoinsercao := qry.fieldbyname(_cd+tbl).Asstring;
      end;
      if (codigoinsercao = _0) or CodigoExiste(tbl, _cd+tbl, _string, qry.fieldbyname(_cd+tbl).asstring) then
      begin
        qry.fieldbyname(_cd+tbl).asstring := GerarCodigo(tbl, _cd+tbl);
        codigoinsercao := qry.fieldbyname(_cd+tbl).asstring;
      end;
    end;
    if (qry.state = dsinsert) or (qry.state = dsedit) then
    begin
      qry.post;
    end;
    if qry.fieldbyname(_cd+tbl).AsInteger = -1 then
    begin
      if (qry.state <> dsinsert) and (qry.state <> dsinsert) then
      begin
        qry.edit;
      end;
      qry.fieldbyname(_cd+tbl).AsInteger := qgerar.GerarCodigo(tbl);
    end;
    if not aplicar_atualizacao then
    begin
      result := False;
      Exit;
    end;
    set_readonly_dados(form, true);
    set_grade_item(form, false);
    registroabrir(qry.fieldbyname(_cd+tbl).AsLargeInt);
  end
  else
  begin
    if cds.State = dsinsert then
    begin
      if (cds.FieldByName(_cd+tbl).asstring = '') or (cds.fieldbyname(_cd+tbl).IsNull) then
      begin
        if codigoinsercao <> '' then
        begin
          cds.fieldbyname(_cd+tbl).Asstring := codigoinsercao;
        end
        else if (tbl = _fornecedor) or (tbl = _cliente) or (tbl = _transportadora) then
        begin
          if (tbl = _fornecedor) and empresa.fornecedor.bocdreduzido then
          begin
             cds.fieldbyname(_cd+tbl).Asstring := GerarCodigo(tbl, _cd+tbl)
          end
          else if (tbl = _cliente) and empresa.cliente.bocdreduzido then
          begin
            cds.fieldbyname(_cd+tbl).Asstring := GerarCodigo(tbl, _cd+tbl)
          end
          else
          begin
            if cds.FieldByName(_nucnpj).AsString <> '' then
            begin
              cds.FieldByName(_cd+tbl).asstring := removercaracteres(cds.fieldbyname(_nucnpj).AsString)
            end
            else if cds.FieldByName(_nucpf).AsString  <> '' then
            begin
              cds.FieldByName(_cd+tbl).asstring := removercaracteres(cds.fieldbyname(_nucpf).AsString)
            end
            else
            begin
              cds.fieldbyname(_cd+tbl).Asstring := GerarCodigo(tbl, _cd+tbl)
            end;
          end;
        end
        else
        begin
          cds.fieldbyname(_cd+tbl).Asstring := GerarCodigo(tbl, _cd+tbl)
        end;
        codigoinsercao := cds.fieldbyname(_cd+tbl).Asstring;
      end;
      if (codigoinsercao = _0) or CodigoExiste(tbl, _cd+tbl, _string, cds.fieldbyname(_cd+tbl).asstring) then
      begin
        cds.fieldbyname(_cd+tbl).asstring := GerarCodigo(tbl, _cd+tbl);
        codigoinsercao                    := cds.fieldbyname(_cd+tbl).asstring;
      end;
    end;
    if not aplicar_atualizacao then
    begin
      result := False;
      Exit;
    end;
    set_readonly_dados(form, true);
    set_grade_item(form, false);
    registroabrir(cds.fieldbyname(_cd+tbl).AsLargeInt);
  end;
  result := true;
end;

class procedure TRegistro.SetQueryLocalizar(q: TFDQuery; dts: TDataSource; tbv: TcxGridDBTableView);
begin
  dts.DataSet := q;
  tbv.DataController.DataSource := dts;
  q.fetchOptions.Mode := fmOnDemand;
  q.FetchOptions.RowsetSize := empresa.nuregistropagina;
  tbv.DataController.DataModeController.GridMode := true;
  tbv.DataController.DataModeController.GridModeBufferCount := empresa.nuregistropagina;
  tbv.optionsView.Footer := false;
  tbv.navigator.Buttons.NextPage.visible := true;
  tbv.navigator.Buttons.NextPage.Enabled := true;
  tbv.navigator.Buttons.PriorPage.visible := true;
  tbv.navigator.Buttons.PriorPage.Enabled := true;
  tbv.navigator.Buttons.Last.visible := false;
  tbv.navigator.Buttons.Last.Enabled := false;
end;

procedure TRegistro.SetState(const Value: TDataSetState);
begin
  fState := Value;
  StateChange;
  if bofiredac then
  begin
    setStatus(tbl, qry);
  end
  else
  begin
    setStatus(tbl, cds);
  end;
end;

function TRegistro.Editar:boolean;
var
  codigo : integer;
begin
  result := false;
  Verificar_Bloqueio_chave;
  if bofiredac then
  begin
    if (qry.fieldbyname(cd+tbl).asstring <> edtcodigo.text) and (edtcodigo <> nil) then
    begin
      if messagedlg('No momento está aberto o registro '+qry.fieldbyname(cd+tbl).asstring+#13'você gostaria de abrir registro '+edtcodigo.text+' para edição?', mtConfirmation, [mbyes, mbno], 0) = mryes then
      begin
        codigo := qregistro.CodigodoString(tbl, edtcodigo.text, cd+tbl);
        if not RegistroAbrir(codigo) then
        begin
          set_grade_item(form, false);
          exit;
        end;
      end
      else
      begin
        edtcodigo.Text := qry.fieldbyname(cd+tbl).asstring;
        set_grade_item(form, false);
        exit;
      end;
    end;
    if (edtcodigo <> nil) and (not edtcodigo.Visible) then
    begin
      qry.Refresh;
    end
    else
    begin
      if not RegistroAbrir(qry.fieldbyname(_cd+tbl).AsLargeInt) then
      begin
        MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [qry.fieldbyname(_cd+tbl).asstring, maiuscula(exibe)]), mterror, [mbok], 0);
        exit;
      end;
      if not editar_esta_ativo then
      begin
        MessageDlg('Status do registro não permite edição.'#13'Registro foi alterado depois da exibição atual.', mtInformation, [mbOK], 0);
        Exit;
      end;
    end;
    set_readonly_dados(form, false);
    qry.edit;
  end
  else
  begin
    if (cds.fieldbyname(cd+tbl).asstring <> edtcodigo.text) and (edtcodigo <> nil) then
    begin
      if messagedlg('No momento está aberto o registro '+cds.fieldbyname(cd+tbl).asstring+#13'você gostaria de abrir registro '+edtcodigo.text+' para edição?', mtConfirmation, [mbyes, mbno], 0) = mryes then
      begin
        codigo := QRegistro.CodigodoString(tbl, edtcodigo.text, cd+tbl);
        if not RegistroAbrir(codigo) then
        begin
          set_grade_item(form, false);
          exit;
        end;
      end
      else
      begin
        edtcodigo.Text := cds.fieldbyname(cd+tbl).asstring;
        set_grade_item(form, false);
        exit;
      end;
    end;
    if (edtcodigo <> nil) and (not edtcodigo.Visible) then
    begin
      cds.Refresh;
    end
    else
    begin
      if not RegistroAbrir(cds.fieldbyname(_cd+tbl).AsLargeInt) then
      begin
        MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cds.fieldbyname(_cd+tbl).asstring, maiuscula(exibe)]), mterror, [mbok], 0);
        exit;
      end;
      if not editar_esta_ativo then
      begin
        MessageDlg('Status do registro não permite edição.'#13'Registro foi alterado depois da exibição atual.', mtInformation, [mbOK], 0);
        Exit;
      end;
    end;
    set_readonly_dados(form, false);
    cds.edit;
  end;
  set_grade_item(form, True);
  State := dsedit;
  result := true;
end;

function TRegistro.Ultimo:boolean;
  function makesql:string;
  begin
    result := 'select max(cd'+tbl+') from '+tbl;
    if boempresa then
    begin
      result := result + ' where cdempresa='+empresa.cdempresa.tostring;
    end;
  end;
var
  codigo : Largeint;
begin
  result := false;
  codigo := RetornaSQLInteger(makesql);
  if codigo <> 0 then
  begin
    result := RegistroAbrir(codigo);
  end;
end;

procedure TRegistro.Verificar_Bloqueio_chave;
begin
  if empresa.get_bloqueado then
  begin
    abort;
  end;
end;

function TRegistro.Proximo:boolean;
  function makesql:string;
  begin
    result := 'select first 1 cd'+tbl+' from '+tbl+' where ';
    if boempresa then
    begin
      result := result + 'cdempresa='+empresa.cdempresa.tostring+' and ';
    end;
    if bofiredac then
    begin
      result := result + 'cd'+tbl+'>'+qry.Fieldbyname(_cd+tbl).AsString+' order by cd'+tbl
    end
    else
    begin
      result := result + 'cd'+tbl+'>'+cds.Fieldbyname(_cd+tbl).AsString+' order by cd'+tbl;
    end;
  end;
var
  codigo: Largeint;
begin
  result := false;
  codigo := RetornaSQlInteger(makesql);
  if codigo <> 0 then
  begin
    result := RegistroAbrir(codigo);
  end;
end;

function TRegistro.Anterior:boolean;
  function makesql:string;
  begin
    result := 'select first 1 cd'+tbl+' from '+tbl+' where ';
    if boempresa then
    begin
      result := result + 'cdempresa='+empresa.cdempresa.tostring+' and ';
    end;
    if bofiredac then
    begin
      result := result + 'cd'+tbl+'<'+qry.Fieldbyname(_cd+tbl).AsString+' order by cd'+tbl+' desc'
    end
    else
    begin
      result := result + 'cd'+tbl+'<'+cds.Fieldbyname(_cd+tbl).AsString+' order by cd'+tbl+' desc'
    end;
  end;
var
  codigo : Largeint;
begin
  result := false;                 // trocar por top 1
  codigo := RetornaSQlInteger(makesql);
  if codigo <> 0 then
  begin
    result := RegistroAbrir(codigo);
  end;
end;

function TRegistro.AplicarAtualizacaoFiredac: boolean;
var
  i : integer;
begin
  result := false;
  for I := 0 to form.ComponentCount - 1 do
  begin
    if (form.Components[i] is TFDSchemaAdapter) then
    begin
      try
        result :=  TFDSchemaAdapter(form.Components[i]).ApplyUpdates = 0;
      except
        TFDSchemaAdapter(form.Components[i]).cancelupdates;
        //{$IFNDEF VER300}qry.CancelUpdates;{$ENDIF}
        //{$IFDEF VER300}TFDSchemaAdapter(form.Components[i]).cancelupdates;{$ENDIF}
      end;
      break;
    end;
  end;
end;

function TRegistro.Primeiro:boolean;
  function makesql:string;
  begin
    result := 'select min(cd'+tbl+') from '+tbl;
    if boempresa then
    begin
      result := result + ' where cdempresa='+empresa.cdempresa.tostring;
    end;
  end;
var
  codigo : Largeint;
begin
  result := false;                  // trocar por top 1
  codigo := RetornaSQLInteger(makesql);
  if (codigo = 0) and (not CodigoExiste(tbl, _0)) then
  begin
    exit;
  end;
  result := RegistroAbrir(codigo);
end;

function TRegistro.RegistroAbrir(codigo:Largeint):boolean;
begin
  if not qregistro.codigoexiste(tbl, codigo) then
  begin
    result := false;
    exit;
  end;
  if bofiredac then
  begin
    if qry.Active then
    begin
      qry.Close;
    end;
    qry.Params.ParamByName(_cd+tbl).AsLargeInt    := codigo;
    if boempresa then
    begin
      qry.Params.ParamByName(_cdempresa).AsLargeInt := empresa.cdempresa;
    end;
    qry.Open;
    edtcodigo.Text := qry.fieldbyname(cd+tbl).AsString;
  end
  else
  begin
    if cds.Active then
    begin
      cds.Close;
    end;
    cds.FetchParams;
    cds.Params.ParamByName(_cd+tbl).AsLargeInt    := codigo;
    if boempresa then
    begin
      cds.Params.ParamByName(_cdempresa).AsLargeInt := empresa.cdempresa;
    end;
    cds.Open;
    edtcodigo.Text := cds.fieldbyname(cd+tbl).AsString;
  end;
  result := true;
  state := dsBrowse;
end;

class procedure TRegistro.set_readonly_dados(form : TForm;ativar: boolean);
var
  i : integer;
begin
  for i := 0 to form.ComponentCount - 1 do
  begin
    if form.Components[i] is tclientdataset then
    begin
      tclientdataset(form.components[i]).readonly := ativar;
    end;
    if form.Components[i] is tfdquery then
    begin
      tfdquery(form.components[i]).updateoptions.ReadOnly := ativar;
    end;
  end;
end;

class procedure TRegistro.set_insert(dataset: tdataset);
begin
  dataset.fieldbyname(_tsinclusao).AsDateTime  := tsbanco;
  dataset.FieldByName(_cdusuarioi).AsInteger := usuario.cdusuario;
  dataset.fieldbyname(_cdcomputadori).AsString := vgcdcomputador;
  if existe_campo(dataset, _cdempresa) then
  begin
    dataset.FieldByName(_cdempresa).AsLargeInt     := empresa.cdempresa;
  end;
end;

procedure TRegistro.set_update(dataset: tdataset);
var
  i : Integer;
begin
  dataset.fieldbyname(_tsalteracao).AsDateTime := tsbanco;
  dataset.FieldByName(_cdusuarioa).AsInteger    := usuario.cdusuario;
  dataset.fieldbyname(_cdcomputadora).AsString := vgcdcomputador;
  if dataset.FieldByName(_cdusuarioi).IsNull then
  begin
    set_insert(dataset);
  end;
  for i := 0 to DataSet.FieldCount - 1 do
  begin
    if dataset.Fields[i].IsNull then
    begin
      Continue;
    end;
    if (DataSet.Fields[i].DataType = ftString) and
       (dataset.Fields[i].AsString <> dataset.Fields[i].OldValue) and
       (RetiraAcentos(dataset.Fields[i].AsString) <> dataset.Fields[i].AsString) then
    begin
      dataset.Fields[i].AsString := RetiraAcentos(dataset.Fields[i].AsString);
    end;
  end;
end;

constructor TRegistro.create(form1: TForm; tabela, exibe1, artigoI1:string; cds1: tclientdataset; dts1: tdatasource; edtcodigo1: TcxTextEdit; bonu:boolean=false);
begin
  bofiredac := false;
  tbl       := tabela;
  boempresa := ExisteCampoNaTabela(tbl, _cdempresa);
  cds       := cds1;
  cds.OnReconcileError := ReconcileError;
  dts       := dts1;
  form      := form1;
  exibe     := exibe1;
  artigoI   := artigoI1;
  edtcodigo := edtcodigo1;
  if bonu then
  begin
    cd := _nu
  end
  else
  begin
    cd := _cd;
  end;
  set_grade_item(form, false);
  set_readonly_dados(form, true);
  ConfigurarPermissoes(form);
  desativar_actions;
end;

function TRegistro.Lista_Tabela_menos_um:Boolean;
begin
  result := (tbl = _ordcompra) or
            (tbl = _conta) or
            (tbl = _pedido) or 
            (tbl = _ordproducao) or
            (tbl = _requisicaoproducao) or
            (tbl = _formulacao) or
            (tbl = _rpa) or
            (tbl = _locacao) or
            (tbl = _orcamento) or
            (tbl = _cobranca) or
            (tbl = _tpaprovacao) or
            (tbl = _negociacao) or
            (tbl = _funcionario) or
            (tbl = _etapa) or
            (tbl = _representante) or
            (tbl = _contrato) or
            (tbl = _embarque) or
            (tbl = _apontamentomanual) or 
            (tbl = _regrast) or
            (tbl = _transporte) or
            (tbl = _equipamento) or
            (tbl = _rim) or
            (tbl = _despesaconvenio) or
            (tbl = _treinamento) or
            (tbl = _turno) or
            (tbl = _movto) or
            (tbl = _parada) or
            (tbl = _rota) or
            (tbl = _condpagto) or
            (tbl = _tpcriterioorcamento) or
            (tbl = _tpcorrecao) or
            (tbl = _tpresposta) or
            (tbl = _grade) or
            (tbl = _corridaquimica) or
            (tbl = _cte);
end;

procedure TRegistro.NewRecord;
begin
  if bofiredac then
  begin
    if (codigoinsercao <> '') and (cd = _cd) then
    begin
      qry.Fieldbyname(_cd+tbl).Asstring := codigoinsercao
    end
    else
    begin
      if lista_tabela_menos_um then
      begin
        qry.Fieldbyname(_cd+tbl).AsLargeInt := -1;
      end;
      codigoinsercao := qry.Fieldbyname(_cd+tbl).asstring;
    end;
    set_bo_value(qry);
    if Existe_campo(qry, _cdst+tbl)                               then
    begin
      qry.Fieldbyname(_cdst+tbl).AsInteger := qregistro.Codigo_status_novo(tbl);
    end;
    if (cd = _cd) and (qry.Fieldbyname(_cd+tbl).Asstring <> '-1') then
    begin
      edtcodigo.text := qry.Fieldbyname(_cd+tbl).Asstring;
    end;
    if existe_campo(qry, _nm+tbl) and (cd = _cd) then
    begin
      qry.Fieldbyname(_nm+tbl).FocusControl;
    end;
    set_panel;
    set_insert(qry);
  end
  else
  begin
    if (codigoinsercao <> '') and (cd = _cd) then
    begin
      cds.Fieldbyname(_cd+tbl).Asstring := codigoinsercao
    end
    else
    begin
      if Lista_Tabela_menos_um then
      begin
        cds.Fieldbyname(_cd+tbl).AsLargeInt := -1;
      end;
      codigoinsercao := cds.Fieldbyname(_cd+tbl).asstring;
    end;
    set_bo_value(cds);
    if Existe_campo(cds, _cdst+tbl) then
    begin
      cds.Fieldbyname(_cdst+tbl).AsInteger := qregistro.Codigo_status_novo(tbl);
    end;
    if (cd = _cd) and (cds.Fieldbyname(_cd+tbl).Asstring <> '-1') then
    begin
      edtcodigo.text := cds.Fieldbyname(_cd+tbl).Asstring;
    end;
    if existe_campo(cds, _nm+tbl) and (cd = _cd) then
    begin
      cds.Fieldbyname(_nm+tbl).FocusControl;
    end;
    set_panel;
    set_insert(cds);
  end;
end;

function TRegistro.StateChange:boolean;
begin
  if dts.state = dsinactive then
  begin
    State := dsinactive;
  end;
  AtivarControles;
  if bofiredac then
  begin
    if (qry.State = dsedit) or (qry.state = dsinsert) then
    begin
      set_edit(True);
      if existe_campo(qry, _nm+tbl) and (cd = _cd) then
      begin
        qry.Fieldbyname(_nm+tbl).FocusControl;
      end;
      if (qry.state = dsinsert) and (qry.fieldbyname(_cd+tbl).AsString = '') then
      begin
        limpartudo;
        set_panel;
      end;
    end
    else
    begin
      set_edit(False);
      if qry.fieldbyname(_cd+tbl).AsLargeInt > 0 then
      begin
        dados_atual;
        limpartudo;
        CarregarTudo;
        dados_atual;
        set_panel;
      end
      else
      begin
        limpartudo;
        edtcodigo.clear;
        if edtcodigo.Visible then
        begin
          if not edtcodigo.Enabled then
          begin
            edtcodigo.Enabled := True;
          end;
          edtcodigo.SetFocus;
        end;
        set_panel;
      end;
    end;
  end
  else
  begin
    if (cds.State = dsedit) or (cds.state = dsinsert) then
    begin
      set_edit(True);
      if existe_campo(cds, _nm+tbl) and (cd = _cd) then
      begin
        cds.Fieldbyname(_nm+tbl).FocusControl;
      end;
      if (cds.state = dsinsert) and (cds.fieldbyname(_cd+tbl).AsString = '') then
      begin
        limpartudo;
        set_panel;
      end;
    end
    else
    begin
      set_edit(False);
      if cds.fieldbyname(_cd+tbl).AsLargeInt > 0 then
      begin
        dados_atual;
        limpartudo;
        CarregarTudo;
        dados_atual;
        set_panel;
      end
      else
      begin
        limpartudo;
        edtcodigo.clear;
        if edtcodigo.Visible then
        begin
          if not edtcodigo.Enabled then
          begin
            edtcodigo.Enabled := True;
          end;
          edtcodigo.SetFocus;
        end;
        set_panel;
      end;
    end;
  end;
  result := True;
end;

class function TRegistro.existe_campo(dataset: TDataSet; nmfield:string): Boolean;
var
  i : Integer;
begin
  result := False;
  for i := 0 to dataset.Fields.Count - 1 do
  begin
    if dataset.Fields[i].FieldName = uppercase(nmfield) then
    begin
      result := True;
      Break;
    end;
  end;
end;

procedure TRegistro.LimparTudo;
var
  i : integer;
begin
  for i := 0 to form.ComponentCount - 1 do
  begin
    if (form.Components[i] is TLabel) and (tlabel(form.Components[i]).Tag in [1, 2]) then
    begin
      tlabel(form.Components[i]).caption := '';
    end;
  end;
end;

procedure TRegistro.Set_Edit(bostate:Boolean);
var
  i : integer;
begin
  for i := 0 to form.ComponentCount - 1 do
  begin
    if (form.Components[i] is TWinControl) and (TWinControl(form.Components[i]).Tag = 1) then
    begin
      TWinControl(form.Components[i]).Enabled := bostate;
    end;
  end;
end;

procedure TRegistro.CarregarTudo;
var
  i : integer;
  nmtabela : string;
  function GetTable(nome:string):string;
  begin
    result := Copy(nome, 6, Length(nome)-5);
  end;
begin
  for i := 0 to form.ComponentCount - 1 do
  begin
    if (form.Components[i] is TLabel) and (tlabel(form.Components[i]).Tag = 1) then
    begin
      nmtabela                           := getTable(tlabel(form.Components[i]).Name);
      if bofiredac then
      begin
        tlabel(form.Components[i]).caption := NomedoCodigo(nmtabela, qry.fieldbyname(_cd+nmtabela).asstring);
      end
      else
      begin
        tlabel(form.Components[i]).caption := NomedoCodigo(nmtabela, cds.fieldbyname(_cd+nmtabela).asstring);
      end;
    end;
  end;
end;

procedure TRegistro.codigo_onexit(sender: TObject);
var
  codigo, tabela: string;
begin
  codigo := TcxDBButtonEdit(Sender).Text;
  if codigo = '' then
  begin
    Exit;
  end;
  tabela := Copy(TcxDBButtonEdit(Sender).Name, 6, Length(TcxDBButtonEdit(Sender).Name)-5);
  if not CodigoExiste(tabela, codigo) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [codigo, maiuscula(QRegistro.CampodoCampo(_tabela, _nmtabela, tabela, _nmexibe, true))]), mterror, [mbok], 0);
    Abort;
  end;
end;

procedure TRegistro.exibirmensagemerro(cderro: Integer; msg: string);
  procedure setmensagem;
    function GetTableError(texto:string):string;
    begin
      result := copy(texto, pos('" on table "', texto)+12, length(texto) - (pos('" on table "', texto)+12));
    end;
  var
    nmtabela : string;
    x, i, t : Integer;
  begin
    t := 0;
    i := Pos(' table ', msg)+8;
    for x := i to Length(msg) do
    begin
      if msg[x] = '"' then
      begin
        t := x - i;
        Break;
      end;
    end;
    nmtabela := Copy(msg, i, t);
    nmtabela := QRegistro.CampodoCampo(_tabela, _nmtabela, nmtabela, _nmexibe, true);
    if nmtabela = '' then
    begin
      nmtabela := Copy(msg, i, t);
    end;
    messagedlg('Existe(m) registro(s) na tabela "'+nmtabela+'" relacionado(s) com este registro.'#13'O registro não pode ser excluído.', mterror, [mbok], 0);
  end;
begin
  case cderro of
    1 : setmensagem;
  else ShowMessage(IntToStr(cderro)+#13+msg);
  end;
end;

function TRegistro.ExisteSchemaAdapter: boolean;
var
  i : integer;
begin
  for I := 0 to form.ComponentCount - 1 do
  begin
    if form.Components[i] is TFDSchemaAdapter then
    begin
      result := true;
      break;
    end;
  end;
end;

function TRegistro.Editar_esta_ativo: Boolean;
var
  i : integer;
begin
  result := true;
  for i := 0 to form.ComponentCount - 1 do
  begin
    if (form.Components[i] is TAction) and (LowerCase(TAction(form.Components[i]).Name)=_acteditar) then
    begin
      result := TAction(form.Components[i]).Enabled;
      Break;
    end;
  end;
end;

class procedure TRegistro.ButtonEditProduto(tbl:string; c: Tdataset; bonovo:boolean=true; nome:string='');
var
  cdalternativo, codfornecedor: string;
  codigo : string;
  lstcodigo : TStrings;
  i : Integer;
begin
  codigo := localizarprodutoMultiSelect(get_tbl_origem(tbl), bonovo);
  if codigo = '' then
  begin
    exit;
  end;
  lstcodigo := TStringList.Create;
  try
    lstcodigo.Text := codigo;
    for i := 0 to lstcodigo.count - 1 do
    begin
      if i > 0 then
      begin
        c.Insert;
      end;
      if not empresa.material.produto.bocdreduzidosearch then
      begin
        if Empresa.material.produto.bocodfornecedor then
        begin
          codfornecedor := NomedoCodigo(_produto, lstcodigo[i], _cdcodfornecedor);
          if codfornecedor <> '' then
          begin
            lstcodigo[i] := codfornecedor;
          end
          else
          begin
            cdalternativo := NomedoCodigo(_produto, lstcodigo[i], _cdalternativo);
            if cdalternativo <> '' then
            begin
              lstcodigo[i] := cdalternativo;
            end;
          end;
        end
        else
        begin
          cdalternativo := NomedoCodigo(_produto, lstcodigo[i], _cdalternativo);
          if cdalternativo <> '' then
          begin
            lstcodigo[i] := cdalternativo;
          end;
        end;
      end;
      if c.State = dsbrowse then
      begin
        c.Edit;
      end;
      c.fieldbyname(_CDDIGITADO+nome).asstring := lstcodigo[i];
    end;
  finally
    FreeAndNil(lstcodigo);
  end;
end;

class function TRegistro.ButtonEditProduto(tbl:string; qry: TFDQuery; bonovo:boolean=true):string;
var
  cdalternativo, codfornecedor : string;
  codigo : integer;
begin
  codigo := localizarproduto(get_tbl_origem(tbl), bonovo);
  { TODO -oPaulo -cErro no Código : o if abaixo sai do procedimento se bocdreduzidosearch, ou seja mesmo que encontre um registro válido ele não executa, verificar porque. }
  if (codigo = 0) or empresa.material.produto.bocdreduzidosearch then
  begin
    exit;
  end;
  if Empresa.material.produto.bocodfornecedor then
  begin
    codfornecedor := qregistro.StringdoCodigo(_produto, codigo, _cdcodfornecedor);
    if codfornecedor <> '' then
    begin
      result := codfornecedor;
    end;
  end
  else
  begin
    cdalternativo := QRegistro.StringdoCodigo(_produto, codigo, _cdalternativo);
    if cdalternativo <> '' then
    begin
      result := cdalternativo;
    end;
  end;
  if result = '' then
  begin
    result := codigo.tostring;
  end;
  if result <> '' then
  begin
    if qry.State = dsbrowse then
    begin
      qry.Edit;
    end;
    qry.fieldbyname(_CDDIGITADO).AsString := result;
  end;
end;

procedure TRegistro.ButtonEditcdProduto(c: Tdataset; nmcampo:string);
var
  codigo : integer;
begin
  codigo := localizarproduto;
  if codigo = 0 then
  begin
    exit;
  end;
  if c.State = dsbrowse then
  begin
    c.Edit;
  end;
  c.fieldbyname(nmcampo).AsLargeInt := codigo;
end;

class procedure TRegistro.ButtonEdit(c: Tdataset; tabela, cdfield:string; bonovo:boolean=true);
var
  cd: integer;
begin
  tabela := LowerCase(tabela);
       if tabela = _ordproducao    then cd := Localizarordproducao
  else if tabela = _orcamento      then cd := LocalizarOrcamento
  else if tabela = _cte            then cd := Localizarcte
  else if tabela = _formulacao     then cd := LocalizarFormulacao
  else if tabela = _fornecedor     then cd := Localizarfornecedor
  else if tabela = _cliente        then cd := Localizarcliente
  else if tabela = _transportadora then cd := LocalizarTransportadora
  else if tabela = _veiculo        then cd := Localizarveiculo
  else if tabela = _subproduto     then cd := LocalizarProduto('')
  else if tabela = _plconta        then cd := qregistro.CodigodoString(_plconta, Localizar(_plconta, _nunivel, _nmplconta, 'Plano Conta', 'o', _nunivel), _nunivel)
  else if tabela = _cntcusto       then cd := qregistro.CodigodoString(_cntcusto, Localizar(_cntcusto, _nunivel, _nmcntcusto, 'Centro de Custo', 'o', _nunivel), _nunivel)
  else                                  cd := Localizar(tabela, bonovo);
  if cd = 0 then
  begin
    Exit;
  end;
  if c.State = dsbrowse then
  begin
    c.Edit;
  end;
  if tabela = _plconta then
  begin
    c.fieldbyname(cdfield).AsString := qregistro.stringdocodigo(_plconta, cd, _nunivel);
  end
  else if tabela = _cntcusto then
  begin
    c.fieldbyname(cdfield).AsString := qregistro.stringdocodigo(_cntcusto, cd, _nunivel);
  end
  else
  begin
    c.fieldbyname(cdfield).AsLargeInt := cd;
  end;
end;

function TRegistro.Status_cds: TDataSetState;
begin
  if bofiredac then
  begin
    result := qry.State
  end
  else
  begin
    result := cds.State;
  end;
end;

procedure TRegistro.gerar_codigo(Sender: TObject; sds:TSQLDataset; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if (SourceDS = sds) and (DeltaDS.FieldByName(_cd+tbl).NewValue < 0) and (UpdateKind = ukinsert) then
  begin
    codigoinsercao                        := GerarCodigo(tbl);
    DeltaDS.FieldByName(_cd+tbl).NewValue := codigoinsercao;
  end;
  if (DeltaDS.FindField(uppercase(_cd+tbl)) <> nil) and (UpdateKind = ukinsert) and (DeltaDS.FieldByName(_cd+tbl).NewValue < 0) then
  begin
    DeltaDS.FieldByName(_cd+tbl).NewValue := codigoinsercao;
  end;
end;

class function TRegistro.get_tbl_origem(tbl:string): string;
begin
       if tbl = _saida          then result := _bosaida
  else if tbl = _entrada        then result := _boentrada
  else if tbl = _pedido         then result := _bopedido
  else if tbl = _ordcompra      then result := _boordcompra
  else if tbl = _orcamento      then result := _boorcamento
  else if tbl = _pedidomaterial then result := _bopedidomaterial
  else if tbl = _ordserv        then result := _boordserv
  else if tbl = _movto          then result := _bomovto;
end;

function TRegistro.get_tipo_tabela_minumo: integer;
  function makesql:string;
  begin
    result := 'select min(cdtp'+tbl+') from tp'+tbl;
    if boempresa then
    begin
      result := result +' where cdempresa='+empresa.cdempresa.tostring;
    end;
  end;
begin
  result := RetornaSQLInteger(makesql);
  if result = 0 then
  begin
    MessageDlg('Não há tipo de '+exibe+' cadastrado.'#13'Crie um tipo de '+exibe+' antes de continuar.', mtInformation, [mbOK], 0);
    Abort;
  end;
end;

procedure TRegistro.check_numero_telefone(sender: TField);
begin
  if (Length(RemoverEspacosVazios(Sender.AsString)) < 13) and (Length(RemoverEspacosVazios(Sender.AsString)) > 0) then
  begin
    MessageDlg('Número do telefone preenchido incorretamente.'#13'Favor corrigir para continuar.', mtInformation, [mbOK], 0);
    Sender.FocusControl;
  end;
end;

procedure TRegistro.check_numero_telefone(sender: TcxDBMaskEdit);
begin
  if (Length(RemoverEspacosVazios(Sender.text)) < 13) and (Length(RemoverEspacosVazios(Sender.text)) > 0) then
  begin
    MessageDlg('Número do telefone preenchido incorretamente.'#13'Favor corrigir para continuar.', mtInformation, [mbOK], 0);
    Sender.SetFocus;
  end;
end;

constructor TRegistro.create(form1: TForm; tabela, exibe1, artigoI1: string; qry1: TFDQuery; dts1: tdatasource; edtcodigo1: TcxTextEdit; bonu: boolean);
begin
  bofiredac := True;
  tbl       := tabela;
  boempresa := ExisteCampoNaTabela(tbl, _cdempresa);
  qry       := qry1;
  dts       := dts1;
  form      := form1;
  exibe     := exibe1;
  artigoI   := artigoI1;
  edtcodigo := edtcodigo1;
  if bonu then
  begin
    cd := _nu
  end
  else
  begin
    cd := _cd;
  end;
  set_grade_item(form, false);
  set_readonly_dados(form, true);
end;

procedure TRegistro.voltar_codigo_excluido(tbl:string; codigo: integer);
var
  cdregistro, nugenerator: integer;
  cdtabela : string;
  function get_sql_maximo_tabela:string;
  begin
    result := 'select max(cd'+tbl+') from '+tbl;
    if boempresa then
    begin
      result := result +' where cdempresa='+empresa.cdempresa.tostring;
    end;
  end;
  function get_update_generator:string;
  begin
    Result := 'ALTER SEQUENCE CD'+tbl+'_GEN RESTART WITH '+codigo.tostring;
    if boempresa then
    begin
      result := 'update empresagenerator set nugenerator='+codigo.tostring+' where cdempresa='+empresa.cdempresa.tostring+' and cdtabela='+cdtabela
    end;
  end;
begin
  cdtabela := qregistro.CodigodoNome(_tabela, tbl); // obter o codigo da tabela
  if cdtabela = '' then
  begin
    messagedlg('Tabela '+tbl+' não cadastrada.'#13'Favor entrar em contato com a Quipos.', mtinformation, [mbok], 0);
    Abort;
  end;
  cdregistro  := RetornaSQLInteger(get_sql_maximo_tabela);
  //nugenerator := 0;
  if boempresa then
  begin
    if RetornaSQLBoolean('select BONRECUPERARCODIGO from empresagenerator where cdempresa='+empresa.cdempresa.tostring+' and cdtabela='+cdtabela) then
    begin
      exit;
    end;
    nugenerator := RetornaSQLInteger('select nugenerator from empresagenerator where cdempresa='+empresa.cdempresa.tostring+' and cdtabela='+cdtabela);
    if nugenerator = 0 then
    begin
      if (cdregistro = 0) or (Length(cdregistro.tostring) >= 7) then
      begin
        cdregistro := 1;
      end;
      ExecutaSQL('insert into empresagenerator(cdempresa,cdtabela,nugenerator,BONRECUPERARCODIGO)values('+empresa.cdempresa.tostring+','+cdtabela+','+cdregistro.tostring+',''N'')');
      nugenerator := cdregistro;
    end
    else
    begin
      if nugenerator > cdregistro then
      begin
        nugenerator := cdregistro;
      end;
    end;
    if nugenerator < codigo then
    begin
      codigo := nugenerator;
    end;
  end
  else
  begin
    codigo := cdregistro;
  end;
  ExecutaSQL(get_update_generator);
end;
                    
function TRegistro.aplicar_atualizacao:boolean;
var
  Transacao: TTransactionDesc;
begin
  if bofiredac then
  begin
    //result := qry.ApplyUpdates(0) = 0;
    if ExisteSchemaAdapter then
    begin
      result := AplicarAtualizacaoFiredac;
    end
    else
    begin
      result := true;
    end;
    State := dsBrowse;
  end
  else
  begin
    Randomize;
    Transacao.TransactionID  := RandomRange(1, 999999999);
    Transacao.IsolationLevel := xilReadCommitted;
    aplicacao.con2.StartTransaction(Transacao);
    cds.post;
    if cds.ApplyUpdates(0) <> 0 then
    begin
      aplicacao.con2.Rollback(Transacao);
      ShowMessage('Ocorreram erros. Alterações descartadas.');
      result := false;
      Exit;
    end;
    aplicacao.con2.Commit(Transacao);
    result := True;
    State := dsBrowse;
  end;
end;

function TRegistro.AtivarControles: boolean;
var
  x, i :integer;
  nm : string;
  tab : TStrings;
begin
  tab := TStringList.create;
  try
    tab.text := _acoes;
    ConfigurarPermissoes(form);
    result := false;
    if (state = dsinactive) then
    begin
      exit;
    end;
    if (state = dsedit) or (state = dsinsert) then
    begin
      result := false;
    end
    else if State = dsBrowse then
    begin
      result := true;
    end;

    if (cd <> _nu) and (edtcodigo <> nil) then
    begin
      edtCodigo.enabled := result;
    end;

    for i := 0 to form.ComponentCount -1 do
    begin
      if form.Components[i] is TCustomAction then
      begin
        nm := lowercase(form.Components[i].Name);
        if ((nm = 'actsalvar') or
            (nm = 'actnovoobsinterna') or
            (nm = 'actnovosolinterna') or
            (nm = 'actcancelar')) and TCustomAction(form.Components[i]).visible then
        begin
          TCustomAction(form.Components[i]).Enabled := not result;
        end;
      end;
    end;

    for i := 0 to form.ComponentCount -1 do
    begin
      if form.Components[i] is TCustomAction then
      begin
        nm := lowercase(form.Components[i].Name);
        if ((nm = 'actabrir') or
           (nm = 'actlista') or
           (nm = 'actgerarcompra') or
           (nm = 'actnovo') or
           (nm = 'actprimeiro') or
           (nm = 'actultimo')) and  TCustomAction(form.Components[i]).visible then
        begin
          TCustomAction(form.Components[i]).Enabled := result;
        end;
      end;
    end;
    if dts.dataset.RecordCount <= 0 then
    begin
      result := false;
    end;
    for i := 0 to form.ComponentCount -1 do
    begin
      if form.Components[i] is TCustomAction then
      begin
        for x := 0 to tab.count - 1 do
        begin
          if (lowercase(form.Components[i].Name) = tab[x]) and (TCustomAction(form.Components[i]).visible) then
          begin
            TCustomAction(form.Components[i]).Enabled := result;
          end;
        end;
      end;
    end;
  finally
    freeandnil(tab);
  end;
end;

procedure TRegistro.consistir_data_nascimento(dtnascimento: TField); //XE7
begin
  //exit;
  if dtnascimento.IsNull then
  begin
    exit;
  end;
  if dtnascimento.AsDateTime < StrToDate(_dt_nascimento_limite_inferior) then
  begin
    MessageDlg('Data de nascimento não pode ser menor do que '+_dt_nascimento_limite_inferior+'.', mtInformation, [mbOK], 0);
    dtnascimento.FocusControl;
    Abort;
  end;
end;

procedure TRegistro.consistir_data_nascimento(dtnascimento: TcxDBDateEdit);
begin
  if dtnascimento.Date = 0 then
  begin
    exit;
  end;
  if dtnascimento.Date < StrToDate(_dt_nascimento_limite_inferior) then
  begin
    MessageDlg('Data de nascimento não pode ser menor do que '+_dt_nascimento_limite_inferior+'.', mtInformation, [mbOK], 0);
    dtnascimento.SetFocus;
    Abort;
  end;
end;

function TRegistro.consistir_numero_integer(sender: TField; texto: string): Boolean;
begin
  result := True;
  if Length(texto) > 10 then
  begin
    MessageDlg('Valor não é número inteiro válido.', mtInformation, [mbok], 0);
    Result := False;
    Abort;
  end;
  sender.AsString := texto;
end;

procedure TRegistro.copiar;
var
  codigo : Integer;
begin
  if bofiredac then
  begin
    if tbl = _formulacao then
    begin
      codigo := copiar_registro(tbl, qry.fieldbyname(_cd+tbl).AsLargeInt)
    end
    else
    begin
      codigo := copiar_registro(qry.fieldbyname(_cd+tbl).AsLargeInt, tbl, _cd+tbl, 0, '', '');
    end;
  end
  else
  begin
    if (tbl = _formulacao) or (tbl = _requisicaoproducao) then
    begin
      codigo := copiar_registro(tbl, cds.fieldbyname(_cd+tbl).AsLargeInt)
    end
    else
    begin
      codigo := copiar_registro(cds.fieldbyname(_cd+tbl).AsLargeInt, tbl, _cd+tbl, 0, '', '');
    end;
  end;
  if codigo <> 0 then
  begin
    RegistroAbrir(codigo);
  end;
end;

destructor TRegistro.destroy;
begin
  inherited;
end;

function TRegistro.existe_campo_repetido(c: TClientDataSet; nmcampo, vlcampo: string): Boolean;
var
  q : TClientDataSet;
begin
  result := False;
  q := TClientDataSet.Create(nil);
  try
    q.CloneCursor(c, true);
    q.First;
    while not q.Eof do
    begin
      if q.FieldByName(nmcampo).asstring = vlcampo then
      begin
        result := True;
        Break;
      end;
      q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

class procedure TRegistro.SetModoGrade(bomodograde:boolean; q : TFDQuery; tbv: TcxGridDBTableView);
begin
  tbv.DataController.DataModeController.GridMode := not bomodograde;
  tbv.optionsView.Footer := bomodograde;
  tbv.navigator.Buttons.NextPage.visible := not bomodograde;
  tbv.navigator.Buttons.NextPage.Enabled := not bomodograde;
  tbv.navigator.Buttons.PriorPage.visible := not bomodograde;
  tbv.navigator.Buttons.PriorPage.Enabled := not bomodograde;
  tbv.navigator.Buttons.Last.visible := bomodograde;
  tbv.navigator.Buttons.Last.Enabled := bomodograde;
  if bomodograde then
  begin
    //q.fetchOptions.Mode := fmManual;
    q.fetchOptions.Mode := fmAll;
    q.FetchOptions.RowsetSize := 0;
    tbv.DataController.DataModeController.GridModeBufferCount := 0;
  end
  else
  begin
    q.fetchOptions.Mode := fmOnDemand;
    q.FetchOptions.RowsetSize := empresa.nuregistropagina;
    tbv.DataController.DataModeController.GridModeBufferCount := empresa.nuregistropagina;
  end;
end;

class procedure TRegistro.SetModoGrade(bomodograde:boolean; q : TClasseQuery; tbv: TcxGridDBTableView);
begin
  tbv.DataController.DataModeController.GridMode := not bomodograde;
  tbv.optionsView.Footer := bomodograde;
  tbv.navigator.Buttons.NextPage.visible := not bomodograde;
  tbv.navigator.Buttons.NextPage.Enabled := not bomodograde;
  tbv.navigator.Buttons.PriorPage.visible := not bomodograde;
  tbv.navigator.Buttons.PriorPage.Enabled := not bomodograde;
  tbv.navigator.Buttons.Last.visible := bomodograde;
  tbv.navigator.Buttons.Last.Enabled := bomodograde;
  if bomodograde then
  begin
    q.mode := moAll;
    q.q.FetchOptions.RowsetSize := 0;
    tbv.DataController.DataModeController.GridModeBufferCount := 0;
  end
  else
  begin
    q.mode := moOnDemand;
    q.q.FetchOptions.RowsetSize := empresa.nuregistropagina;
    tbv.DataController.DataModeController.GridModeBufferCount := empresa.nuregistropagina;
  end;
end;

class procedure TRegistro.SetQueryLocalizar(q : TClasseQuery; dts: TDataSource; tbv: TcxGridDBTableView);
begin
  dts.DataSet := q.q;
  tbv.DataController.DataSource := dts;
  SetModoGrade(false, q, tbv);
end;

end.
