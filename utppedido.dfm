object frmtppedido: Tfrmtppedido
  Left = 664
  Top = 40
  ClientHeight = 761
  ClientWidth = 1071
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 67
    Width = 1071
    Height = 694
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object bvl1: TBevel
      Left = 0
      Top = 23
      Width = 1071
      Height = 41
      Align = alTop
      ExplicitWidth = 1159
    end
    object Label1: TLabel
      Left = 3
      Top = 25
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label3: TLabel
      Left = 70
      Top = 25
      Width = 28
      Height = 13
      Caption = 'Nome'
      Transparent = True
    end
    object Label13: TLabel
      Left = 361
      Top = 25
      Width = 48
      Height = 13
      Caption = 'Tipo Frete'
      Transparent = True
    end
    object cbxcdtpfrete: TcxDBLookupComboBox
      Left = 361
      Top = 39
      DataBinding.DataField = 'CDTPFRETE'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDTPFRETE'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPFRETE'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Width = 280
    end
    object pnl: TcxLabel
      Left = 0
      Top = 0
      Align = alTop
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object edtnome: TcxDBTextEdit
      Left = 70
      Top = 39
      DataBinding.DataField = 'nmtppedido'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edtnomePropertiesChange
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Width = 291
    end
    object edtcodigo: TcxTextEdit
      Left = 3
      Top = 39
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 66
    end
    object trv: TcxDBVerticalGrid
      Left = 0
      Top = 64
      Width = 1071
      Height = 630
      Align = alClient
      LayoutStyle = lsBandsView
      LookAndFeel.NativeStyle = False
      OptionsView.RowHeaderWidth = 489
      Navigator.Buttons.CustomButtons = <>
      TabOrder = 4
      DataController.DataSource = dts
      Version = 1
      object trvCategoryRow2: TcxCategoryRow
        Properties.Caption = 'Geral'
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object trvDBEditorRow74: TcxDBEditorRow
        Properties.Caption = 'Adicionar observa'#231#227'o a nota fiscal'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOOBSERVACAOCOPIARSAIDA'
        ID = 1
        ParentID = 0
        Index = 0
        Version = 1
      end
      object trvDBEditorRow22: TcxDBEditorRow
        Properties.Caption = 'Armazenar arquivos?'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOARQUIVO'
        ID = 2
        ParentID = 0
        Index = 1
        Version = 1
      end
      object trvDBEditorRow25: TcxDBEditorRow
        Properties.Caption = 'Aviso Tarefa Pendente'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAVISOTAREFA'
        ID = 3
        ParentID = 0
        Index = 2
        Version = 1
      end
      object trvDBEditorRow11: TcxDBEditorRow
        Properties.Caption = 'Certificado'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCERTIFICADO'
        ID = 4
        ParentID = 0
        Index = 3
        Version = 1
      end
      object trvCategoryRow5: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Cliente'
        ID = 5
        ParentID = 0
        Index = 4
        Version = 1
      end
      object trvDBEditorRow31: TcxDBEditorRow
        Properties.Caption = 'Adicionar a observa'#231#227'o do cliente'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODSOBSERVACAOCLIENTE'
        ID = 6
        ParentID = 5
        Index = 0
        Version = 1
      end
      object trvDBEditorRow44: TcxDBEditorRow
        Properties.Caption = 'Assinatura digital para cliente em atraso?'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'boclienteatraso'
        ID = 7
        ParentID = 5
        Index = 1
        Version = 1
      end
      object trvDBEditorRow75: TcxDBEditorRow
        Properties.Caption = 'Consistir dados '
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCLIENTECONSISTIR'
        ID = 8
        ParentID = 5
        Index = 2
        Version = 1
      end
      object trvDBEditorRow59: TcxDBEditorRow
        Properties.Caption = 'Contato'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITCONTCLIENTE'
        ID = 9
        ParentID = 5
        Index = 3
        Version = 1
      end
      object trvDBEditorRow30: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Endere'#231'o de Entrega'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCLIENTEENTREGA'
        ID = 10
        ParentID = 5
        Index = 4
        Version = 1
      end
      object trvDBEditorRow85: TcxDBEditorRow
        Properties.Caption = 'Refer'#234'ncia obrigat'#243'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODSREFERENCIAOBRIGATORIO'
        ID = 11
        ParentID = 10
        Index = 0
        Version = 1
      end
      object trvDBEditorRow91: TcxDBEditorRow
        Properties.Caption = 'Condi'#231#227'o de Pagamento Obrigat'#243'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCONDPAGTOOBRIGATORIO'
        ID = 12
        ParentID = 0
        Index = 5
        Version = 1
      end
      object trvDBEditorRow83: TcxDBEditorRow
        Properties.Caption = 'Contas a Receber - Previs'#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODUPLICATA'
        ID = 13
        ParentID = 0
        Index = 6
        Version = 1
      end
      object trvDBEditorRow46: TcxDBEditorRow
        Properties.Caption = 'Controlar Estoque'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOESTOQUE'
        ID = 14
        ParentID = 0
        Index = 7
        Version = 1
      end
      object trvCategoryRow7: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Email'
        ID = 15
        ParentID = 0
        Index = 8
        Version = 1
      end
      object trvDBEditorRow51: TcxDBEditorRow
        Properties.Caption = 'e-mail c'#243'pia oculta'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'EMAILCOPIA'
        ID = 16
        ParentID = 15
        Index = 0
        Version = 1
      end
      object trvDBEditorRow52: TcxDBEditorRow
        Properties.Caption = 'T'#237'tulo'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DSTITULOEMAIL'
        ID = 17
        ParentID = 15
        Index = 1
        Version = 1
      end
      object trvDBEditorRow53: TcxDBEditorRow
        Properties.Caption = 'Assunto'
        Properties.EditPropertiesClassName = 'TcxBlobEditProperties'
        Properties.EditProperties.BlobEditKind = bekMemo
        Properties.EditProperties.BlobPaintStyle = bpsText
        Properties.DataBinding.FieldName = 'DSASSUNTOEMAIL'
        ID = 18
        ParentID = 15
        Index = 2
        Version = 1
      end
      object trvCategoryRow8: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Data de Previs'#227'o de Entrega'
        ID = 19
        ParentID = 0
        Index = 9
        Version = 1
      end
      object trvDBEditorRow93: TcxDBEditorRow
        Properties.Caption = 'Obrigat'#243'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODTENTREGAOBRIGATORIO'
        ID = 20
        ParentID = 19
        Index = 0
        Version = 1
      end
      object trvDBEditorRow94: TcxDBEditorRow
        Properties.Caption = 'V'#225'zio ao inserir um novo registro'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODTENTREGAVAZIO'
        ID = 21
        ParentID = 19
        Index = 1
        Version = 1
      end
      object trvDBEditorRow73: TcxDBEditorRow
        Properties.Caption = 'Fornecedor'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOFORNECEDOR'
        ID = 22
        ParentID = 0
        Index = 10
        Version = 1
      end
      object trvDBEditorRow13: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Funcion'#225'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOFUNCIONARIO'
        ID = 23
        ParentID = 0
        Index = 11
        Version = 1
      end
      object trvDBEditorRow26: TcxDBEditorRow
        Properties.Caption = 'Associar Funcion'#225'rio ao Usu'#225'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOFUNCIONARIOUSUARIO'
        ID = 24
        ParentID = 23
        Index = 0
        Version = 1
      end
      object trvDBEditorRow14: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'N'#186' dias entrega'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BONUDIAS'
        ID = 25
        ParentID = 0
        Index = 12
        Version = 1
      end
      object trvDBEditorRow45: TcxDBEditorRow
        Properties.Caption = 'N'#250'mero de dias'
        Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
        Properties.DataBinding.FieldName = 'nudiasentrega'
        ID = 26
        ParentID = 25
        Index = 0
        Version = 1
      end
      object trvDBEditorRow66: TcxDBEditorRow
        Properties.Caption = 'Or'#231'amento'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOORCAMENTO'
        ID = 27
        ParentID = 0
        Index = 13
        Version = 1
      end
      object trvDBEditorRow12: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Ordem Compra'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCOTACAO'
        ID = 28
        ParentID = 0
        Index = 14
        Version = 1
      end
      object trvDBEditorRow56: TcxDBEditorRow
        Properties.Caption = 'Obrigat'#243'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCOTACAOOBRIGATORIO'
        ID = 29
        ParentID = 28
        Index = 0
        Version = 1
      end
      object trvBOPACIENTE: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Paciente'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPACIENTE'
        ID = 30
        ParentID = 0
        Index = 15
        Version = 1
      end
      object trvDBEditorRow78: TcxDBEditorRow
        Properties.Caption = 'Alterar profiss'#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPACIENTEALTERARPROFISSAO'
        ID = 31
        ParentID = 30
        Index = 0
        Version = 1
      end
      object trvDBEditorRow77: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Preencher data de demiss'#227'o com a data de emiss'#227'o do pedido'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPACIENTEDTDEMISSAO'
        ID = 32
        ParentID = 30
        Index = 1
        Version = 1
      end
      object trvCDSTPACIENTE: TcxDBEditorRow
        Properties.Caption = 'Status Paciente'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDSTPACIENTE'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMSTPACIENTE'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDSTPACIENTE'
        ID = 33
        ParentID = 32
        Index = 0
        Version = 1
      end
      object trvBOPROFISSIONAL: TcxDBEditorRow
        Properties.Caption = 'Profissional'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPROFISSIONAL'
        ID = 34
        ParentID = 0
        Index = 16
        Version = 1
      end
      object trvCDPROFISSIONAL: TcxDBEditorRow
        Properties.Caption = 'Profissiona Respons'#225'vel'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDPROFISSIONAL'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMPROFISSIONAL'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDPROFISSIONAL'
        ID = 35
        ParentID = 0
        Index = 17
        Version = 1
      end
      object trvDBEditorRow42: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Representante'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOREPRESENTANTE'
        ID = 36
        ParentID = 0
        Index = 18
        Version = 1
      end
      object trvDBEditorRow68: TcxDBEditorRow
        Properties.Caption = 'Associar Representante ao Usu'#225'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOREPRESENTANTEUSUARIO'
        ID = 37
        ParentID = 36
        Index = 0
        Version = 1
      end
      object trvDBEditorRow7: TcxDBEditorRow
        Properties.Caption = 'Comiss'#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCOMISSAO'
        ID = 38
        ParentID = 36
        Index = 1
        Version = 1
      end
      object trvDBEditorRow90: TcxDBEditorRow
        Properties.Caption = 'Obrigat'#243'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOREPRESENTANTEOBRIGATORIO'
        ID = 39
        ParentID = 36
        Index = 2
        Version = 1
      end
      object trvDBEditorRow9: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Tipo Cobran'#231'a'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOTPCOBRANCA'
        ID = 40
        ParentID = 0
        Index = 19
        Version = 1
      end
      object trvDBEditorRow92: TcxDBEditorRow
        Properties.Caption = 'Obrigatorio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOTPCOBRANCAOBRIGATORIO'
        ID = 41
        ParentID = 40
        Index = 0
        Version = 1
      end
      object trvDBEditorRow10: TcxDBEditorRow
        Properties.Caption = 'Tipo Grade'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOTPGRADE'
        ID = 42
        ParentID = 0
        Index = 20
        Version = 1
      end
      object trvcdtpsaida: TcxDBEditorRow
        Properties.Caption = 'Tipo Nota Fiscal'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.KeyFieldNames = 'CDTPSAIDA'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMTPSAIDA'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDTPSAIDA'
        ID = 43
        ParentID = 0
        Index = 21
        Version = 1
      end
      object trvcdtpordproducao: TcxDBEditorRow
        Properties.Caption = 'Tipo Ordem de Produ'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDTPORDPRODUCAO'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMTPORDPRODUCAO'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDTPORDPRODUCAO'
        ID = 44
        ParentID = 0
        Index = 22
        Version = 1
      end
      object trvDBEditorRow15: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Transportadora'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOTRANSPORTADORA'
        ID = 45
        ParentID = 0
        Index = 23
        Version = 1
      end
      object trvDBEditorRow48: TcxDBEditorRow
        Properties.Caption = 'Obrigat'#243'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOTRANSPORTADORAOBRIGATORIO'
        ID = 46
        ParentID = 45
        Index = 0
        Version = 1
      end
      object trvDBEditorRow49: TcxDBEditorRow
        Properties.Caption = 'Porcentagem Frete Cidade'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRFRETECIDADE'
        ID = 47
        ParentID = 45
        Index = 1
        Version = 1
      end
      object trvCategoryRow1: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Impostos/Valores'
        ID = 48
        ParentID = -1
        Index = 1
        Version = 1
      end
      object trvDBEditorRow5: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Desconto'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODESCONTO'
        ID = 49
        ParentID = 48
        Index = 0
        Version = 1
      end
      object trvDBEditorRow50: TcxDBEditorRow
        Properties.Caption = '% M'#225'xima desconto'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.DataBinding.FieldName = 'PRDESCONTOMAXIMO'
        ID = 50
        ParentID = 49
        Index = 0
        Version = 1
      end
      object trvDBEditorRow8: TcxDBEditorRow
        Properties.Caption = 'Liberar desconto acima m'#225'ximo com assinatura digital'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODESCONTOASSINATURA'
        ID = 51
        ParentID = 49
        Index = 1
        Version = 1
      end
      object trvDBEditorRow6: TcxDBEditorRow
        Properties.Caption = 'Desconto Comiss'#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODESCONTOCOMISSAO'
        ID = 52
        ParentID = 49
        Index = 2
        Version = 1
      end
      object trvDBEditorRow4: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Frete'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOFRETE'
        ID = 53
        ParentID = 48
        Index = 1
        Version = 1
      end
      object trvDBEditorRow89: TcxDBEditorRow
        Properties.Caption = 'N'#227'o considerar o frete no valor total'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOFRETENTOTAL'
        ID = 54
        ParentID = 53
        Index = 0
        Version = 1
      end
      object trvDBEditorRow35: TcxDBEditorRow
        Properties.Caption = 'Redespacho'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOREDESPACHO'
        ID = 55
        ParentID = 53
        Index = 1
        Version = 1
      end
      object trvDBEditorRow87: TcxDBEditorRow
        Properties.Caption = 'Tipo de Frete obrigat'#243'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOTPFRETEOBRIGATORIO'
        ID = 56
        ParentID = 53
        Index = 2
        Version = 1
      end
      object trvDBEditorRow2: TcxDBEditorRow
        Properties.Caption = 'ICMS'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOICMS'
        ID = 57
        ParentID = 48
        Index = 2
        Version = 1
      end
      object trvDBEditorRow1: TcxDBEditorRow
        Properties.Caption = 'ICMS Substitui'#231#227'o Tribut'#225'ria'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOICMSSUBTRIB'
        ID = 58
        ParentID = 48
        Index = 3
        Version = 1
      end
      object trvDBEditorRow3: TcxDBEditorRow
        Properties.Caption = 'IPI'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOIPI'
        ID = 59
        ParentID = 48
        Index = 4
        Version = 1
      end
      object trvDBEditorRow86: TcxDBEditorRow
        Properties.Caption = 'ISS'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOISS'
        ID = 60
        ParentID = 48
        Index = 5
        Version = 1
      end
      object trvCategoryRow3: TcxCategoryRow
        Expanded = False
        Properties.Caption = #205'tem'
        ID = 61
        ParentID = -1
        Index = 2
        Version = 1
      end
      object trvDBEditorRow29: TcxDBEditorRow
        Properties.Caption = 
          'Ao gerar nota fiscal colocar f'#243'rmula na informa'#231#227'o adicional do ' +
          #237'tem'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOINFADICIONALFORMULA'
        ID = 62
        ParentID = 61
        Index = 0
        Version = 1
      end
      object trvDBEditorRow84: TcxDBEditorRow
        Properties.Caption = 'Data Emiss'#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMDTEMISSAO'
        ID = 63
        ParentID = 61
        Index = 1
        Version = 1
      end
      object trvDBEditorRow17: TcxDBEditorRow
        Properties.Caption = 'Data Previs'#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODTPRVENTREGAITEM'
        ID = 64
        ParentID = 61
        Index = 2
        Version = 1
      end
      object trvDBEditorRow57: TcxDBEditorRow
        Properties.Caption = 'Desconto'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMDESCONTO'
        ID = 65
        ParentID = 61
        Index = 3
        Version = 1
      end
      object trvDBEditorRow19: TcxDBEditorRow
        Properties.Caption = 'Desenho'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODSDESENHO'
        ID = 66
        ParentID = 61
        Index = 4
        Version = 1
      end
      object trvDBEditorRow80: TcxDBEditorRow
        Properties.Caption = 'Embarque'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMEMBARQUE'
        ID = 67
        ParentID = 61
        Index = 5
        Version = 1
      end
      object trvDBEditorRow76: TcxDBEditorRow
        Properties.Caption = 'Embalagem Produto'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTOEMBALAGEM'
        ID = 68
        ParentID = 61
        Index = 6
        Version = 1
      end
      object Exibir: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Exibir'
        ID = 69
        ParentID = 61
        Index = 7
        Version = 1
      end
      object trvDBEditorRow72: TcxDBEditorRow
        Properties.Caption = 'Descri'#231#227'o do Produto'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMDSPRODUTO'
        ID = 70
        ParentID = 69
        Index = 0
        Version = 1
      end
      object trvDBEditorRow70: TcxDBEditorRow
        Properties.Caption = 'Quantidade Conferida'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMCONFERENCIA'
        ID = 71
        ParentID = 69
        Index = 1
        Version = 1
      end
      object trvDBEditorRow27: TcxDBEditorRow
        Properties.Caption = 'Frete'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMFRETE'
        ID = 72
        ParentID = 69
        Index = 2
        Version = 1
      end
      object trvDBEditorRow81: TcxDBEditorRow
        Properties.Caption = 'Produ'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMPRODUCAO'
        ID = 73
        ParentID = 69
        Index = 3
        Version = 1
      end
      object trvDBEditorRow82: TcxDBEditorRow
        Properties.Caption = 'Revis'#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMREVISAO'
        ID = 74
        ParentID = 69
        Index = 4
        Version = 1
      end
      object trvDBEditorRow71: TcxDBEditorRow
        Properties.Caption = 'Tag 2'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMEXIBIRTAG2'
        ID = 75
        ParentID = 69
        Index = 5
        Version = 1
      end
      object trvDBEditorRow54: TcxDBEditorRow
        Properties.Caption = 'F'#243'rmula'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMFORMULA'
        ID = 76
        ParentID = 61
        Index = 8
        Version = 1
      end
      object trvDBEditorRow79: TcxDBEditorRow
        Properties.Caption = 'Fornecedor'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMFORNECEDOR'
        ID = 77
        ParentID = 61
        Index = 9
        Version = 1
      end
      object trvDBEditorRow64: TcxDBEditorRow
        Properties.Caption = 'Lista de N'#250'mero Estrutural'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BONUESTRUTURAL'
        ID = 78
        ParentID = 61
        Index = 10
        Version = 1
      end
      object trvDBEditorRow24: TcxDBEditorRow
        Properties.Caption = 'Madeira'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMADEIRA'
        ID = 79
        ParentID = 61
        Index = 11
        Version = 1
      end
      object trvDBEditorRow43: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Observa'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMOBSERVACAO'
        ID = 80
        ParentID = 61
        Index = 12
        Version = 1
      end
      object trvDBEditorRow61: TcxDBEditorRow
        Properties.Caption = 
          'Ao gerar a nota fiscal colocar a observa'#231#227'o na informa'#231#227'o adicio' +
          'nal do item'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMOBSERVACAOINFADICIONAL'
        ID = 81
        ParentID = 80
        Index = 0
        Version = 1
      end
      object trvDBEditorRow63: TcxDBEditorRow
        Properties.Caption = 'Observa'#231#227'o Interna'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMOBSERVACAOINTERNA'
        ID = 82
        ParentID = 61
        Index = 13
        Version = 1
      end
      object trvDBEditorRow20: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Ordem Compra'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCOTACAOITEM'
        ID = 83
        ParentID = 61
        Index = 14
        Version = 1
      end
      object trvDBEditorRow55: TcxDBEditorRow
        Properties.Caption = 'Obrigat'#243'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCOTACAOITEMOBRIGATORIO'
        ID = 84
        ParentID = 83
        Index = 0
        Version = 1
      end
      object trvDBEditorRow21: TcxDBEditorRow
        Properties.Caption = 'N'#250'mero Item'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BONUITEM'
        ID = 85
        ParentID = 83
        Index = 1
        Version = 1
      end
      object trvDBEditorRow28: TcxDBEditorRow
        Properties.Caption = 
          'Ao gerar nota fiscal colocar Ordem compra na informa'#231#227'o adiciona' +
          'l do '#237'tem'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOINFADICIONALORDCOMPRA'
        ID = 86
        ParentID = 83
        Index = 2
        Version = 1
      end
      object trvDBEditorRow39: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Ordem Produ'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOORDPRODUCAO'
        ID = 87
        ParentID = 61
        Index = 15
        Version = 1
      end
      object trvDBEditorRow60: TcxDBEditorRow
        Properties.Caption = 
          'Alterar a quantidade do item mesmo com a ordem de produ'#231#227'o gerad' +
          'a'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOORDPRODUCAOQTITEM'
        ID = 88
        ParentID = 87
        Index = 0
        Version = 1
      end
      object trvDBEditorRow40: TcxDBEditorRow
        Properties.Caption = 'Descri'#231#227'o C'#243'digo '#205'tem'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'NMCDITPEDIDO'
        ID = 89
        ParentID = 87
        Index = 1
        Version = 1
      end
      object trvDBEditorRow69: TcxDBEditorRow
        Properties.Caption = 
          'Gerar ordem de produ'#231#227'o automaticamente quando gerar pedido a pa' +
          'rtir do or'#231'amento'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOORDPRODUCAOGERARAUTOMATICO'
        ID = 90
        ParentID = 87
        Index = 2
        Version = 1
      end
      object trvBOITEMPROFISSIONAL: TcxDBEditorRow
        Properties.Caption = 'Profissional'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMPROFISSIONAL'
        ID = 91
        ParentID = 61
        Index = 16
        Version = 1
      end
      object trvDBEditorRow16: TcxDBEditorRow
        Properties.Caption = 'Tipo'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMTP'
        ID = 92
        ParentID = 61
        Index = 17
        Version = 1
      end
      object trvBOITEMTPREVISAOCOMERCIAL: TcxDBEditorRow
        Properties.Caption = 'Tipo Revis'#227'o Comercial'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMTPREVISAOCOMERCIAL'
        ID = 93
        ParentID = 61
        Index = 18
        Version = 1
      end
      object trvCategoryRow6: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Valor Unit'#225'rio'
        ID = 94
        ParentID = 61
        Index = 19
        Version = 1
      end
      object trvDBEditorRow37: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Alterar valor unit'#225'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOALTERARVALORITEM'
        ID = 95
        ParentID = 94
        Index = 0
        Version = 1
      end
      object trvDBEditorRow67: TcxDBEditorRow
        Properties.Caption = 'N'#227'o permitir valor menor do que o valor de venda'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMVLUNITARIOMAIORVENDA'
        ID = 96
        ParentID = 95
        Index = 0
        Version = 1
      end
      object trvDBEditorRow23: TcxDBEditorRow
        Properties.Caption = 'Considerar o pre'#231'o a prazo de acordo com a condi'#231#227'o de Pagamento'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMPRECOPRAZO'
        ID = 97
        ParentID = 94
        Index = 1
        Version = 1
      end
      object trvDBEditorRow88: TcxDBEditorRow
        Properties.Caption = 'Considerar o pre'#231'o a prazo de acordo com o tipo de cobran'#231'a'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMVLUNITARIOTPCOBRANCA'
        ID = 98
        ParentID = 94
        Index = 2
        Version = 1
      end
      object trvDBEditorRow65: TcxDBEditorRow
        Properties.Caption = 'Consistir valor m'#237'nimo'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMVLMINIMO'
        ID = 99
        ParentID = 94
        Index = 3
        Version = 1
      end
      object trvDBEditorRow18: TcxDBEditorRow
        Properties.Caption = 'Consistir % desconto m'#225'ximo'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMDESCONTOMAXIMO'
        ID = 100
        ParentID = 94
        Index = 4
        Version = 1
      end
      object trvDBEditorRow62: TcxDBEditorRow
        Properties.Caption = 'Permitir valor unit'#225'rio zerado'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMVLUNITARIOZERADO'
        ID = 101
        ParentID = 94
        Index = 5
        Version = 1
      end
      object trvDBEditorRow58: TcxDBEditorRow
        Properties.Caption = 'Permitir valor negativo'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMVLUNITARIONEGATIVO'
        ID = 102
        ParentID = 94
        Index = 6
        Version = 1
      end
      object trvDBEditorRow47: TcxDBEditorRow
        Properties.Caption = 'Verificar Classe  Fiscal (NCM)'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMCHECKNUCLFISCAL'
        ID = 103
        ParentID = 61
        Index = 20
        Version = 1
      end
      object trvCategoryRow4: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Relat'#243'rio'
        ID = 104
        ParentID = -1
        Index = 3
        Version = 1
      end
      object trvDBEditorRow36: TcxDBEditorRow
        Properties.Caption = 'Modo Texto'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOREPORTMODOTEXTO'
        ID = 105
        ParentID = 104
        Index = 0
        Version = 1
      end
      object trvDBEditorRow38: TcxDBEditorRow
        Properties.Caption = 'Modo Texto 2'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOREPORTMODOTEXTO2'
        ID = 106
        ParentID = 104
        Index = 1
        Version = 1
      end
      object trvDBEditorRow34: TcxDBEditorRow
        Properties.Caption = 'Or'#231'amento'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOREPORTORCAMENTO'
        ID = 107
        ParentID = 104
        Index = 2
        Version = 1
      end
      object trvDBEditorRow41: TcxDBEditorRow
        Properties.Caption = 'Ordem Produ'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOREPORTORDEMPRODUCAO'
        ID = 108
        ParentID = 104
        Index = 3
        Version = 1
      end
      object trvDBEditorRow32: TcxDBEditorRow
        Properties.Caption = 'Venda'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOREPORTVENDA'
        ID = 109
        ParentID = 104
        Index = 4
        Version = 1
      end
      object trvDBEditorRow33: TcxDBEditorRow
        Properties.Caption = 'Venda Simples'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOREPORTVENDASIMPLES'
        ID = 110
        ParentID = 104
        Index = 5
        Version = 1
      end
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 492
    Top = 336
    object actNovo: TAction
      Caption = 'Novo'
      Hint = 'Novo'
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = actNovoExecute
    end
    object actAbrir: TAction
      Caption = 'Abrir'
      Hint = 'Abrir'
      ImageIndex = 1
      ShortCut = 16449
      OnExecute = actAbrirExecute
    end
    object actEditar: TAction
      Caption = 'Editar'
      Enabled = False
      Hint = 'Editar'
      ImageIndex = 7
      ShortCut = 16453
      OnExecute = actEditarExecute
    end
    object actSalvar: TAction
      Caption = 'Salvar'
      Enabled = False
      Hint = 'Salvar'
      ImageIndex = 2
      ShortCut = 16467
      OnExecute = actSalvarExecute
    end
    object actImprimir: TAction
      Caption = 'Imprimir'
      Enabled = False
      Hint = 'Imprimir'
      ImageIndex = 3
      ShortCut = 16457
    end
    object actExcluir: TAction
      Caption = 'Excluir'
      Enabled = False
      Hint = 'Excluir'
      ImageIndex = 5
      ShortCut = 16472
      OnExecute = actExcluirExecute
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      Enabled = False
      Hint = 'Cancelar'
      ImageIndex = 4
      ShortCut = 16474
      OnExecute = actCancelarExecute
    end
    object actPrimeiro: TAction
      Caption = 'Primeiro'
      Hint = 'Primeiro'
      ImageIndex = 8
      ShortCut = 16454
      OnExecute = actPrimeiroExecute
    end
    object actAnterior: TAction
      Caption = 'Anterior'
      Enabled = False
      Hint = 'Anterior'
      ImageIndex = 9
      ShortCut = 16468
      OnExecute = actAnteriorExecute
    end
    object actProximo: TAction
      Caption = 'Pr'#243'ximo'
      Enabled = False
      Hint = 'Pr'#243'ximo'
      ImageIndex = 10
      ShortCut = 16464
      OnExecute = actProximoExecute
    end
    object actUltimo: TAction
      Caption = #218'ltimo'
      Hint = #218'ltimo'
      ImageIndex = 11
      ShortCut = 16469
      OnExecute = actUltimoExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actcopiar: TAction
      Caption = 'Copiar'
      Enabled = False
      ImageIndex = 100
      OnExecute = actcopiarExecute
    end
    object actavisotarefa: TAction
      Caption = 'Aviso Tarefa'
      Enabled = False
      Visible = False
      OnExecute = actavisotarefaExecute
    end
  end
  object dts: TDataSource
    OnStateChange = dtsStateChange
    Left = 524
    Top = 336
  end
  object bmg1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dtmmain.imlMain
    ImageOptions.LargeImages = dtmmain.imlMain
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 456
    Top = 336
    DockControlHeights = (
      0
      0
      67
      0)
    object dxbrManager1Bar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'tpproduto'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 25
      DockingStyle = dsTop
      FloatLeft = 369
      FloatTop = 161
      FloatClientWidth = 62
      FloatClientHeight = 498
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbrlrgbtnNovo'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnAbrir'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnEditar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnsalvar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtncancelar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnexcluir'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnprimeiro'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnanterior'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnproximo'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnultimo'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnimprimir'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnfechar'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrManager1Bar1: TdxBar
      Caption = 'menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 27
      FloatTop = 131
      FloatClientWidth = 55
      FloatClientHeight = 21
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbrsbtmRegistro'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxbrsbtmRegistro: TdxBarSubItem
      Caption = '&Registro'
      Category = 0
      MergeOrder = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbrlrgbtnNovo'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnAbrir'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnEditar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnsalvar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtncancelar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnexcluir'
        end
        item
          Visible = True
          ItemName = 'dxbrsprtr1'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnprimeiro'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnanterior'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnproximo'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnultimo'
        end
        item
          Visible = True
          ItemName = 'dxbrsprtr2'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnimprimir'
        end
        item
          Visible = True
          ItemName = 'dxbrsprtr3'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnfechar'
        end>
    end
    object dxbrlrgbtnNovo: TdxBarLargeButton
      Action = actNovo
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnEditar: TdxBarLargeButton
      Action = actEditar
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnAbrir: TdxBarLargeButton
      Action = actAbrir
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnsalvar: TdxBarLargeButton
      Action = actSalvar
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtncancelar: TdxBarLargeButton
      Action = actCancelar
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnexcluir: TdxBarLargeButton
      Action = actExcluir
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtncopiar: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
      AutoGrayScale = False
    end
    object dxbrsprtr1: TdxBarSeparator
      Category = 0
      Visible = ivAlways
      ShowCaption = False
    end
    object dxbrlrgbtnprimeiro: TdxBarLargeButton
      Action = actPrimeiro
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnanterior: TdxBarLargeButton
      Action = actAnterior
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnproximo: TdxBarLargeButton
      Action = actProximo
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnultimo: TdxBarLargeButton
      Action = actUltimo
      Category = 0
      AutoGrayScale = False
    end
    object dxbrsprtr2: TdxBarSeparator
      Category = 0
      Visible = ivAlways
      ShowCaption = False
    end
    object dxbrlrgbtnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      AutoGrayScale = False
    end
    object dxbrsprtr3: TdxBarSeparator
      Category = 0
      Visible = ivAlways
      ShowCaption = False
    end
    object dxbrlrgbtnfechar: TdxBarLargeButton
      Action = actfechar
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actcopiar
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actavisotarefa
      Category = 0
    end
  end
end
