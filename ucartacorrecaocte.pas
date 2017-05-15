unit ucartacorrecaocte;

interface

uses
  System.Actions, System.UITypes,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Menus, StdCtrls, ActnList, Dialogs,
  DBClient, DB,
  pcnConversao, ACBrCTe,
  udatahora, uConstantes, utipo, ustrings, uRegistro,
  classeaplicacao, classeemail, classeempresa, classegerar, classeregistrainformacao,
  classeexecutasql, classeRetornaSql, classequery,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxButtons,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxDBLookupComboBox, cxContainer, cxLabel, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBEdit, cxSpinEdit,
  cxNavigator;

type
  Tfrmcartacorrecaocte = class(TForm)
    tbv: TcxGridDBTableView;
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    cds: TClientDataSet;
    dts: TDataSource;
    btnok: TcxButton;
    btncancelar: TcxButton;
    cdsCDCARTACORRECAOCTEGRUPO: TIntegerField;
    cdsCDCARTACORRECAOCTEITEM: TIntegerField;
    cdsNUITEM: TIntegerField;
    cdsDSITCARTACORRECAOCTE: TStringField;
    tbvCDCARTACORRECAOCTEGRUPO: TcxGridDBColumn;
    tbvCDCARTACORRECAOCTEITEM: TcxGridDBColumn;
    tbvNUITEM: TcxGridDBColumn;
    tbvDSITCARTACORRECAOCTE: TcxGridDBColumn;
    cbxcdcartacorrecaoctegrupo: TcxDBLookupComboBox;
    cbxcdcartacorrecaocteitem: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edtDSITCARTACORRECAOCTE: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    edtnuitem: TcxDBSpinEdit;
    cxLabel4: TcxLabel;
    btnsalvar: TcxButton;
    btnexcluir: TcxButton;
    act: TActionList;
    actnovo: TAction;
    actexcluir: TAction;
    btnnovo: TcxButton;
    btneditar: TcxButton;
    acteditar: TAction;
    actsalvar: TAction;
    procedure FormCreate(Sender: TObject);
    procedure actnovoExecute(Sender: TObject);
    procedure actsalvarExecute(Sender: TObject);
    procedure acteditarExecute(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure cbxcdcartacorrecaoctegrupoExit(Sender: TObject);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure dtsStateChange(Sender: TObject);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure actexcluirExecute(Sender: TObject);
  private { Private declarations }
    nSeqEvento, cdcartacorrecao : integer;
    cdcte, nuchavenfe: string;
    ACBrCTe1: TACBrCTe;
    filename : TStrings;
    email    : temail_;
    function inserir_carta_correcao:boolean;
    procedure adicionar_evento_cte;
    function processar_carta_correcao:boolean;
  public { Public declarations }
  end;

var
  frmcartacorrecaocte: Tfrmcartacorrecaocte;

function Gerar_Carta_Correcao_cte(cdcte, nuchavenfe: string; ACBrCTe1: TACBrCTe; email: temail_):Boolean;

implementation

uses uDtmMain;

{$R *.dfm}

function Gerar_Carta_Correcao_cte(cdcte, nuchavenfe: string; ACBrCTe1: TACBrCTe; email: temail_):Boolean;
begin
  result := False;
  frmcartacorrecaocte := tfrmcartacorrecaocte.Create(nil);
  try
    frmcartacorrecaocte.ACBrCTe1   := ACBrCTe1;
    frmcartacorrecaocte.cdcte      := cdcte;
    frmcartacorrecaocte.nuchavenfe := nuchavenfe;
    frmcartacorrecaocte.email      := email;
    if (frmcartacorrecaocte.ShowModal = mrok) and frmcartacorrecaocte.processar_carta_correcao then
    begin
      result := true;
    end;
  finally
    frmcartacorrecaocte.free;
  end;
end;

procedure Tfrmcartacorrecaocte.adicionar_evento_cte;
begin
  nSeqEvento      := RetornaSQLInteger('select nSeqEvento from cte where cdcte='+cdcte) + 1;
  cdcartacorrecao := strtoint(gerarcodigo(_carta+_correcao+_cte));
  ACBrCTe1.EventoCTe.Evento.Clear;
  ACBrCTe1.EventoCTe.idLote := cdcartacorrecao;
  with ACBrCTe1.EventoCTe.Evento.Add do
  begin
    infEvento.chCTe           := NUCHAVENFE;
    infEvento.CNPJ            := empresa.nucnpj_;
    //infEvento.dhEvento        := tsBanco;
    infEvento.dhEvento        := now;
    infEvento.tpEvento        := teCCe;
    infEvento.nSeqEvento      := nSeqEvento;
    infEvento.detEvento.xCondUso := '';
    cds.First;
    InfEvento.detEvento.infCorrecao.Clear;
    while not frmcartacorrecaocte.cds.Eof do
    begin
      with ACBrCTe1.EventoCTe.Evento.Items[0].InfEvento.detEvento.infCorrecao.Add do
      begin
        grupoAlterado   := nomedocodigo(_carta+_correcao+_cte+_grupo, cdsCDCARTACORRECAOCTEGRUPO.AsString, _ds+_carta+_correcao+_cte+_grupo);
        campoAlterado   := NomedoCodigo(_carta+_correcao+_cte+_item, cdsCDCARTACORRECAOCTEITEM.AsString, _ds+_carta+_correcao+_cte+_item);
        valorAlterado   := cdsDSITCARTACORRECAOCTE.AsString;
        nroItemAlterado := cdsNUITEM.AsInteger;
      end;
      cds.Next;
    end;
  end;
end;

function Tfrmcartacorrecaocte.inserir_carta_correcao: boolean;
var
  c : TClasseQuery;
  linha : tstrings;
begin
  c     := TClasseQuery.Create(QRetornaSQL.get_select_from(_carta+_correcao+_cte, _0), true);
  linha := tstringlist.Create;
  try
    ExecutaSQL('update cte set nSeqEvento='+inttostr(nSeqEvento)+' where cdcte='+cdcte);
    c.q.Connection    := aplicacao.confire;
    c.q.Insert;
    c.q.fieldbyname(_cd+_carta+_correcao+_cte).AsInteger := cdcartacorrecao;
    c.q.fieldbyname(_cdcte).AsString                     := cdcte;
    c.q.fieldbyname(_nSeqEvento).AsInteger               := nSeqEvento;
    c.q.fieldbyname(_ts+_emissao).AsDateTime             := ACBrCTe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento;
    c.q.fieldbyname(_nuprotocolo).AsString               := ACBrCTe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
    linha.LoadFromFile(filename[0]);
    c.q.fieldbyname(_dsxml).AsString                     := linha.Text;
    RegistraInclusao(c.q);
    aplicacao.aplyupdates(c.q);

    c.q.Close;
    c.q.sql.Text := QRetornaSQL.get_select_from(_IT+_carta+_correcao+_cte, _0);
    c.q.Open;
    cds.First;
    while not cds.Eof do
    begin
      c.q.Insert;
      c.q.fieldbyname(_cd+_carta+_correcao+_cte).AsInteger       := cdcartacorrecao;
      c.q.fieldbyname(_cd+_it+_carta+_correcao+_cte).AsString    := GerarCodigo(_it+_carta+_correcao+_cte);
      c.q.fieldbyname(_CD+_CARTA+_CORRECAO+_CTE+_GRUPO).AsString := cdsCDCARTACORRECAOCTEGRUPO.AsString;
      c.q.fieldbyname(_CD+_CARTA+_CORRECAO+_CTE+_item).AsString  := cdsCDCARTACORRECAOCTEITEM.AsString;
      c.q.fieldbyname(_ds+_it+_CARTA+_CORRECAO+_CTE).AsString    := cdsDSITCARTACORRECAOCTE.AsString;
      c.q.fieldbyname(_nuitem).AsInteger                         := cdsNUITEM.AsInteger;
      RegistraInclusao(c.q);
      aplicacao.aplyupdates(c.q);
      cds.Next;
    end;
    result := true;
  finally
    freeandnil(c);
    freeandnil(linha);
  end;
end;

function Tfrmcartacorrecaocte.processar_carta_correcao:boolean;
  function get_anomes:string;
  begin
    result := '';
    if ACBrCTe1.Configuracoes.Arquivos.SepararPorMes then
    begin
      Result := FormatDateTime(_yyyymm, ACBrCTe1.EventoCTe.Evento.Items[0].InfEvento.dhEvento)+'\';
    end;
  end;
var
  handle : Integer;
  vCodigo_Status : integer;
  nmarquivo, email1 : string;
  enviaremail : TEnviarEmail;
begin
  filename := TStringList.Create;
  try
    Handle := 0;
    try
      frmcartacorrecaocte.Adicionar_Evento_cte;
      //@ACBrCTe1.EnviarEventoCTe(frmcartacorrecaocte.cdcartacorrecao);
      ACBrCTe1.EnviarEvento(frmcartacorrecaocte.cdcartacorrecao);
      vCodigo_Status := ACBrCTe1.WebServices.EnvEvento.cStat;
      if (vCodigo_Status = 128) or (vCodigo_Status = 135) or (vCodigo_Status = 136) then
      begin
        MessageBox(Handle, 'Carta de Correção enviada com sucesso.', 'Atenção', MB_OK+MB_ICONINFORMATION);
        try
          //@nmarquivo := ACBrCTe1.Configuracoes.Geral.PathSalvar+
          nmarquivo := ACBrCTe1.Configuracoes.Arquivos.PathSalvar+get_anomes+
                       ACBrCTe1.EventoCTe.Evento.Items[0].InfEvento.TipoEvento +
                       ACBrCTe1.EventoCTe.Evento.Items[0].InfEvento.chCTe +
                       _0+IntToStr(ACBrCTe1.EventoCTe.Evento.Items[0].InfEvento.nSeqEvento)+
                       '-ProcEventocte.xml';
          filename.Add(nmarquivo);
          if frmcartacorrecaocte.inserir_carta_correcao then
          begin
            if messagedlg('Enviar a Carta de Correção por e-mail?', mtconfirmation, [mbyes, mbno], 0) = mryes then
            begin
              email1 := InputBox('Enviar e-mail', 'Digite o e-mail para envio da Carta de Correção', '');
              if email1 = '' then
              begin
                messagedlg('E-mail não informado.', mtinformation, [mbok], 0);
                result := False;
                exit;
              end;
              enviaremail := tenviaremail.create;
              try
                enviaremail.botexto := True;
                enviaremail.boexcluir_arquivo := True;
                enviaremail.dsanexo := filename;
                enviaremail.boanexo := filename;
                enviaremail.dsdestinatario := email1;
                enviaremail.dscc := '';
                enviaremail.dstitulo := 'Carta de Correção do CTE ' +CDCTE+' da Empresa '+empresa.nmempresa;
                enviaremail.dsmensagem := 'Segue em anexo a carta de correção.';
                enviaremail.nmremetente := '';
                enviaremail.nmusuario := email.SmtpUser;
                enviaremail.dssenha := email.SmtpPass;
                enviaremail.tpenvio := IntToStr(email.tpenvio);
                enviaremail.enviar_email;
              finally
                freeandnil(enviaremail);
              end;
            end;
            result := True;
          end;
        except
          on E: Exception do
          begin
            MessageBox(Handle, 'Carta de Correção enviada com sucesso, PORÉM OCORREU UM ERRO AO GRAVAR NA BASE DE DADOS. ENTRE EM CONTATO COM A QUIPOS PARA REGULARIZAR A GRAVAÇÃO.', 'Atenção', MB_OK+MB_ICONINFORMATION);
          end;
        end;
      end
      else
      begin
        messagedlg('Erro no envio da Carta de Correção nº ' +FormatFloat(_0, ACBrCTe1.WebServices.EnvEvento.cStat) + ' - ' + ACBrCTe1.WebServices.EnvEvento.xMotivo, mtInformation, [mbOK], 0);
        abort;
      end;
      result := True;
    except
      on E:Exception do
      begin
        MessageBox(Handle, Pchar('Carta de Correção não foi enviada devido ao erro:' + #13#13#10 + E.Message), 'Atenção', MB_OK+MB_ICONERROR);
        result := False;
        Exit;
      end;
    end;
  finally
    filename.Free;
  end;
end;

procedure Tfrmcartacorrecaocte.dtsStateChange(Sender: TObject);
begin
  actnovo.Enabled    := (dts.state <> dsinsert) and (dts.state <> dsedit);
  acteditar.Enabled  := (dts.state <> dsinsert) and (dts.state <> dsedit);
  actexcluir.Enabled := (dts.state <> dsinsert) and (dts.state <> dsedit);
  actsalvar.Enabled  := (dts.state = dsinsert) or (dts.state = dsedit);
end;

procedure Tfrmcartacorrecaocte.cdsAfterScroll(DataSet: TDataSet);
begin
  if (cds.RecordCount > 0) and cbxcdcartacorrecaoctegrupo.DataBinding.IsDataAvailable then
  begin
    dtmMain.carta_correcao_cte_Filtro(cbxcdcartacorrecaoctegrupo.DataBinding.Field.AsString, TClientDataSet(cbxcdcartacorrecaocteitem.Properties.ListSource.DataSet)); //dtmmain.cdsmunicipio);
  end;
  btnok.Enabled := cds.RecordCount > 0;
end;

procedure Tfrmcartacorrecaocte.actexcluirExecute(Sender: TObject);
begin
  cds.Delete;
end;

procedure Tfrmcartacorrecaocte.FormCreate(Sender: TObject);
begin
  cbxcdcartacorrecaoctegrupo.Properties.ListSource                                 := abrir_tabela(_carta+_correcao+_cte+_grupo);
  cbxcdcartacorrecaocteitem.Properties.ListSource                                  := abrir_tabela(_carta+_correcao+_cte+_item);
  TcxLookupComboBoxProperties(tbvCDCARTACORRECAOCTEGRUPO.Properties).ListSource := abrir_tabela(_carta+_correcao+_cte+_grupo);
  TcxLookupComboBoxProperties(tbvCDCARTACORRECAOCTEITEM.Properties).ListSource  := abrir_tabela(_carta+_correcao+_cte+_item+_1);
end;

procedure Tfrmcartacorrecaocte.acteditarExecute(Sender: TObject);
begin
  cds.Edit;
end;

procedure Tfrmcartacorrecaocte.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmcartacorrecaocte.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmcartacorrecaocte.cbxcdcartacorrecaoctegrupoExit(Sender: TObject);
begin
  if not (sender = nil) then
  begin
    colorexit(Sender);
  end;
  if ((cds.State = dsinsert) or (cds.State = dsedit)) and cbxcdcartacorrecaoctegrupo.DataBinding.IsDataAvailable then
  begin
    dtmMain.carta_correcao_cte_Filtro(cbxcdcartacorrecaoctegrupo.DataBinding.Field.AsString, TClientDataSet(cbxcdcartacorrecaocteitem.Properties.ListSource.DataSet)); //dtmmain.cdsmunicipio);
  end;
end;

procedure Tfrmcartacorrecaocte.cdsNewRecord(DataSet: TDataSet);
begin
  cbxcdcartacorrecaoctegrupo.SetFocus;
end;

procedure Tfrmcartacorrecaocte.FormShow(Sender: TObject);
begin
  actnovoExecute(actnovo);
end;

procedure Tfrmcartacorrecaocte.actnovoExecute(Sender: TObject);
begin
  cds.Insert;
end;

procedure Tfrmcartacorrecaocte.actsalvarExecute(Sender: TObject);
begin
  cds.Post;
  btnnovo.setfocus;
end;

end.
