object frmtporcamento: Tfrmtporcamento
  Left = 458
  Top = 115
  ClientHeight = 810
  ClientWidth = 1035
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
    Top = 63
    Width = 1035
    Height = 747
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object bvl1: TBevel
      Left = 0
      Top = 23
      Width = 1035
      Height = 41
      Align = alTop
      ExplicitWidth = 1313
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
      Width = 296
    end
    object pnl: TcxLabel
      Left = 0
      Top = 0
      Align = alTop
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object edtnome: TcxDBTextEdit
      Left = 70
      Top = 39
      DataBinding.DataField = 'NMTPORCAMENTO'
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
    object vtg: TcxDBVerticalGrid
      Left = 0
      Top = 64
      Width = 1035
      Height = 683
      Align = alClient
      LayoutStyle = lsBandsView
      LookAndFeel.NativeStyle = False
      OptionsView.RowHeaderWidth = 700
      OptionsBehavior.GoToNextCellOnEnter = True
      Navigator.Buttons.CustomButtons = <>
      TabOrder = 4
      DataController.DataSource = dts
      Version = 1
      object vtgCategoryRow2: TcxCategoryRow
        Properties.Caption = 'Geral'
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow76: TcxDBEditorRow
        Properties.Caption = 'An'#225'lise Cr'#237'tica'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOANALISECRITICA'
        ID = 1
        ParentID = 0
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow91: TcxDBEditorRow
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
      object vtgDBEditorRow96: TcxDBEditorRow
        Properties.Caption = 'Contrato'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCONTRATO'
        ID = 3
        ParentID = 0
        Index = 2
        Version = 1
      end
      object vtgDBEditorRow99: TcxDBEditorRow
        Properties.Caption = 'Copiar com Planejamento Semanal'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCOPIARDIASEMANA'
        ID = 4
        ParentID = 0
        Index = 3
        Version = 1
      end
      object vtgDBEditorRow12: TcxDBEditorRow
        Properties.Caption = 'Cota'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCOTACAO'
        ID = 5
        ParentID = 0
        Index = 4
        Version = 1
      end
      object vtgCategoryRow12: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Email'
        ID = 6
        ParentID = 0
        Index = 5
        Version = 1
      end
      object vtgDBEditorRow82: TcxDBEditorRow
        Properties.Caption = 'e-mail c'#243'pia oculta'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'EMAILCOPIA'
        ID = 7
        ParentID = 6
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow83: TcxDBEditorRow
        Properties.Caption = 'T'#237'tulo'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DSTITULOEMAIL'
        ID = 8
        ParentID = 6
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow84: TcxDBEditorRow
        Properties.Caption = 'Assunto'
        Properties.EditPropertiesClassName = 'TcxBlobEditProperties'
        Properties.EditProperties.BlobEditKind = bekMemo
        Properties.EditProperties.BlobPaintStyle = bpsText
        Properties.DataBinding.FieldName = 'DSASSUNTOEMAIL'
        ID = 9
        ParentID = 6
        Index = 2
        Version = 1
      end
      object vtgCategoryRow8: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Funcion'#225'rio'
        ID = 10
        ParentID = 0
        Index = 6
        Version = 1
      end
      object vtgDBEditorRow73: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Or'#231'amentista'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOFUNCIONARIOORCAMENTISTA'
        ID = 11
        ParentID = 10
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow122: TcxDBEditorRow
        Properties.Caption = 'Descri'#231#227'o para o Campo'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DSORCAMENTISTA'
        ID = 12
        ParentID = 11
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow13: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Vendedor'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOFUNCIONARIO'
        ID = 13
        ParentID = 10
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow26: TcxDBEditorRow
        Properties.Caption = 'Associar Funcion'#225'rio ao Usu'#225'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOFUNCIONARIOUSUARIO'
        ID = 14
        ParentID = 13
        Index = 0
        Version = 1
      end
      object vtgBOGERARREQUISICAOPRODUCAO: TcxDBEditorRow
        Properties.Caption = 'Gerar Requisi'#231#227'o de Produ'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOGERARREQUISICAOPRODUCAO'
        ID = 15
        ParentID = 0
        Index = 7
        Version = 1
      end
      object vtgDBEditorRow87: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Guia Comercial'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCOMERCIAL'
        ID = 16
        ParentID = 0
        Index = 8
        Version = 1
      end
      object vtgDBEditorRow107: TcxDBEditorRow
        Properties.Caption = '% Juros Mensal'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRMORADIARIA'
        ID = 17
        ParentID = 16
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow106: TcxDBEditorRow
        Properties.Caption = '% Multa'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRMULTA'
        ID = 18
        ParentID = 16
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow3: TcxDBEditorRow
        Properties.Caption = 'Descri'#231#227'o para o campo Periodicidade'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'NMPERIODICIDADE'
        ID = 19
        ParentID = 16
        Index = 2
        Version = 1
      end
      object vtgDBEditorRow124: TcxDBEditorRow
        Properties.Caption = 'Descri'#231#227'o para o Campo Respons'#225'vel'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DSRESPONSAVEL'
        ID = 20
        ParentID = 16
        Index = 3
        Version = 1
      end
      object vtgDBEditorRow111: TcxDBEditorRow
        Properties.Caption = 'N'#186' de dias de medi'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        ID = 21
        ParentID = 16
        Index = 4
        Version = 1
      end
      object vtgDBEditorRow109: TcxDBEditorRow
        Properties.Caption = 'N'#186' de dias de rescis'#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BONUDIASRESCISAO'
        ID = 22
        ParentID = 16
        Index = 5
        Version = 1
      end
      object vtgDBEditorRow114: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Tag'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODSTAG'
        ID = 23
        ParentID = 16
        Index = 6
        Version = 1
      end
      object vtgDBEditorRow116: TcxDBEditorRow
        Properties.Caption = 'Descri'#231#227'o Tag'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'NMDSTAG'
        ID = 24
        ParentID = 23
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow113: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Tag 2'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODSTAG2'
        ID = 25
        ParentID = 16
        Index = 7
        Version = 1
      end
      object vtgDBEditorRow117: TcxDBEditorRow
        Properties.Caption = 'Descri'#231#227'o Tag 2'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'NMDSTAG2'
        ID = 26
        ParentID = 25
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow112: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Tag 3'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODSTAG3'
        ID = 27
        ParentID = 16
        Index = 8
        Version = 1
      end
      object vtgDBEditorRow118: TcxDBEditorRow
        Properties.Caption = 'Descri'#231#227'o Tag 3'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'NMDSTAG3'
        ID = 28
        ParentID = 27
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow115: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Tag 4'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODSTAG4'
        ID = 29
        ParentID = 16
        Index = 9
        Version = 1
      end
      object vtgDBEditorRow119: TcxDBEditorRow
        Properties.Caption = 'Descri'#231#227'o Tag 4'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'NMDSTAG4'
        ID = 30
        ParentID = 29
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow126: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Tag 5'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODSTAG5'
        ID = 31
        ParentID = 16
        Index = 10
        Version = 1
      end
      object vtgDBEditorRow125: TcxDBEditorRow
        Properties.Caption = 'Descri'#231#227'o Tag 5'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'NMDSTAG5'
        ID = 32
        ParentID = 31
        Index = 0
        Version = 1
      end
      object vtgBOJUSTIFICARMUDANCASTATUS: TcxDBEditorRow
        Properties.Caption = 'Justificar mudan'#231'ar de status'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOJUSTIFICARMUDANCASTATUS'
        ID = 33
        ParentID = 0
        Index = 9
        Version = 1
      end
      object vtgDBEditorRow14: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'N'#186' dias Entrega'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BONUDIAS'
        ID = 34
        ParentID = 0
        Index = 10
        Version = 1
      end
      object vtgDBEditorRow120: TcxDBEditorRow
        Properties.Caption = 'Descri'#231#227'o do Campo'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DSNUDIAS'
        ID = 35
        ParentID = 34
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow43: TcxDBEditorRow
        Properties.Caption = 'N'#186' dias Validade'
        Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
        Properties.DataBinding.FieldName = 'NUDIASVALIDADE'
        ID = 36
        ParentID = 0
        Index = 11
        Version = 1
      end
      object vtgDBEditorRow42: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Observa'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOOBSERVACAO'
        ID = 37
        ParentID = 0
        Index = 12
        Version = 1
      end
      object vtgDBEditorRow94: TcxDBEditorRow
        Properties.Caption = 'Adicionar observa'#231#227'o do Tipo'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOOBSERVACAOCOPIAR'
        ID = 38
        ParentID = 37
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow95: TcxDBEditorRow
        Properties.Caption = 'Observa'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxBlobEditProperties'
        Properties.EditProperties.BlobEditKind = bekMemo
        Properties.EditProperties.BlobPaintStyle = bpsText
        Properties.DataBinding.FieldName = 'DSOBSERVACAO'
        ID = 39
        ParentID = 38
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow41: TcxDBEditorRow
        Properties.Caption = 'Observa'#231#227'o Interna'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOOBSERVACAOINTERNA'
        ID = 40
        ParentID = 0
        Index = 13
        Version = 1
      end
      object vtgDBEditorRow104: TcxDBEditorRow
        Properties.Caption = 'Produto'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTO'
        ID = 41
        ParentID = 0
        Index = 14
        Version = 1
      end
      object vtgDBEditorRow38: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Representante'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOREPRESENTANTE'
        ID = 42
        ParentID = 0
        Index = 15
        Version = 1
      end
      object vtgDBEditorRow123: TcxDBEditorRow
        Properties.Caption = 'Descri'#231#227'o para o Campo'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DSREPRESENTANTE'
        ID = 43
        ParentID = 42
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow9: TcxDBEditorRow
        Properties.Caption = 'Tipo Cobran'#231'a'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOTPCOBRANCA'
        ID = 44
        ParentID = 0
        Index = 16
        Version = 1
      end
      object vtgCDTPPEDIDOMATERIAL: TcxDBEditorRow
        Properties.Caption = 'Tipo de Cota'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDTPPEDIDOMATERIAL'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMTPPEDIDOMATERIAL'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDTPPEDIDOMATERIAL'
        ID = 45
        ParentID = 0
        Index = 17
        Version = 1
      end
      object vtgDBEditorRow74: TcxDBEditorRow
        Properties.Caption = 'Tipo Data'
        Properties.EditPropertiesClassName = 'TcxRadioGroupProperties'
        Properties.EditProperties.Columns = 2
        Properties.EditProperties.Items = <
          item
            Caption = 'Entrega'
            Value = 'E'
          end
          item
            Caption = 'Resposta'
            Value = 'R'
          end>
        Properties.DataBinding.FieldName = 'TPDATA'
        ID = 46
        ParentID = 0
        Index = 18
        Version = 1
      end
      object vtgDBEditorRow10: TcxDBEditorRow
        Properties.Caption = 'Tipo Grade'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOTPGRADE'
        ID = 47
        ParentID = 0
        Index = 19
        Version = 1
      end
      object vtgDBEditorRow103: TcxDBEditorRow
        Properties.Caption = 'T'#237'tulo do Dimensional'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DSTITULODIMENSIONAL'
        ID = 48
        ParentID = 0
        Index = 20
        Version = 1
      end
      object vtgCategoryRow4: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Cliente'
        ID = 49
        ParentID = -1
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow8: TcxDBEditorRow
        Properties.Caption = 'Adicionar observa'#231#227'o do cliente'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODSOBSERVACAOCLIENTE'
        ID = 50
        ParentID = 49
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow75: TcxDBEditorRow
        Properties.Caption = 'Contato'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITCONTCLIENTE'
        ID = 51
        ParentID = 49
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow40: TcxDBEditorRow
        Properties.Caption = 'Endere'#231'o de Entrega'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCLIENTEENTREGA'
        ID = 52
        ParentID = 49
        Index = 2
        Version = 1
      end
      object vtgDBEditorRow16: TcxDBEditorRow
        Properties.Caption = 'Exibir Nome Cliente'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOEXIBIRNMCLIENTE'
        ID = 53
        ParentID = 49
        Index = 3
        Version = 1
      end
      object vtgDBEditorRow39: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Refer'#234'ncia'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCLIENTEREFERENCIA'
        ID = 54
        ParentID = 49
        Index = 4
        Version = 1
      end
      object vtgDBEditorRow121: TcxDBEditorRow
        Properties.Caption = 'Descri'#231#227'o do Campo'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DSREFERENCIA'
        ID = 55
        ParentID = 54
        Index = 0
        Version = 1
      end
      object vtgCategoryRow1: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Impostos/Valores'
        ID = 56
        ParentID = -1
        Index = 2
        Version = 1
      end
      object vtgDBEditorRow101: TcxDBEditorRow
        Properties.Caption = 'Acr'#233'scimo'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOACRESCIMO'
        ID = 57
        ParentID = 56
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow5: TcxDBEditorRow
        Properties.Caption = 'Desconto'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODESCONTO'
        ID = 58
        ParentID = 56
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow4: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Frete'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOFRETE'
        ID = 59
        ParentID = 56
        Index = 2
        Version = 1
      end
      object vtgDBEditorRow15: TcxDBEditorRow
        Properties.Caption = 'Transportadora'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOTRANSPORTADORA'
        ID = 60
        ParentID = 59
        Index = 0
        Version = 1
      end
      object vtgboicms: TcxDBEditorRow
        Properties.Caption = 'ICMS'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOICMS'
        ID = 61
        ParentID = 56
        Index = 3
        Version = 1
      end
      object vtgDBEditorRow1: TcxDBEditorRow
        Properties.Caption = 'ICMS Substitui'#231#227'o Tribut'#225'ria'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOICMSSUBTRIB'
        ID = 62
        ParentID = 56
        Index = 4
        Version = 1
      end
      object vtgboipi: TcxDBEditorRow
        Properties.Caption = 'IPI'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOIPI'
        ID = 63
        ParentID = 56
        Index = 5
        Version = 1
      end
      object vtgboiss: TcxDBEditorRow
        Properties.Caption = 'ISS'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOISS'
        ID = 64
        ParentID = 56
        Index = 6
        Version = 1
      end
      object vtgCategoryRow3: TcxCategoryRow
        Expanded = False
        Properties.Caption = #205'tem'
        ID = 65
        ParentID = -1
        Index = 3
        Version = 1
      end
      object vtgDBEditorRow102: TcxDBEditorRow
        Properties.Caption = 'Acr'#233'scimo'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMACRESCIMO'
        ID = 66
        ParentID = 65
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow100: TcxDBEditorRow
        Properties.Caption = 'Anal'#237'se Cr'#237'tica'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMANALISECRITICA'
        ID = 67
        ParentID = 65
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow18: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'C'#225'lculo'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCALCULO'
        ID = 68
        ParentID = 65
        Index = 2
        Version = 1
      end
      object vtgDBEditorRow30: TcxDBEditorRow
        Properties.Caption = 'Perfil'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMPERFIL'
        ID = 69
        ParentID = 68
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow90: TcxDBEditorRow
        Properties.Caption = 'Caldeiraria'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCALDEIRARIA'
        ID = 70
        ParentID = 68
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow36: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Mat'#233'ria-Prima'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMMATERIAL'
        ID = 71
        ParentID = 68
        Index = 2
        Version = 1
      end
      object vtgDBEditorRow47: TcxDBEditorRow
        Properties.Caption = 'COFINS'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMMATERIALCOFINS'
        ID = 72
        ParentID = 71
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow48: TcxDBEditorRow
        Properties.Caption = 'PIS'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMMATERIALPIS'
        ID = 73
        ParentID = 71
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow93: TcxDBEditorRow
        Properties.Caption = 'Copiar a medida para o '#237'tem'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMMATERIALFORMULA'
        ID = 74
        ParentID = 71
        Index = 2
        Version = 1
      end
      object vtgDBEditorRow35: TcxDBEditorRow
        Properties.Caption = 'Servi'#231'os Terceiros'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMCUSTO'
        ID = 75
        ParentID = 68
        Index = 3
        Version = 1
      end
      object vtgDBEditorRow34: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Recurso'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMRECURSO'
        ID = 76
        ParentID = 68
        Index = 4
        Version = 1
      end
      object vtgDBEditorRow65: TcxDBEditorRow
        Properties.Caption = 'Alterar valor'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMRECURSOALTERAVALOR'
        ID = 77
        ParentID = 76
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow72: TcxDBEditorRow
        Properties.Caption = 'Opera'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMRECURSOOPERACAO'
        ID = 78
        ParentID = 76
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow70: TcxDBEditorRow
        Properties.Caption = 'Prepara'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMRECURSOPREPARACAO'
        ID = 79
        ParentID = 76
        Index = 2
        Version = 1
      end
      object vtgDBEditorRow31: TcxDBEditorRow
        Properties.Caption = 'F'#243'rmula'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMFORMULA'
        ID = 80
        ParentID = 68
        Index = 5
        Version = 1
      end
      object vtgDBEditorRow89: TcxDBEditorRow
        Properties.Caption = 'Certificado'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCERTIFICADO'
        ID = 81
        ParentID = 65
        Index = 3
        Version = 1
      end
      object vtgDBEditorRow110: TcxDBEditorRow
        Properties.Caption = 'C'#243'digo da Periodicidade na grade'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMCDPERIODICIDADE'
        ID = 82
        ParentID = 65
        Index = 4
        Version = 1
      end
      object vtgDBEditorRow33: TcxDBEditorRow
        Properties.Caption = 'Condi'#231#227'o Pagamento'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMCONDPAGTO'
        ID = 83
        ParentID = 65
        Index = 5
        Version = 1
      end
      object vtgDBEditorRow20: TcxDBEditorRow
        Properties.Caption = 'Cota'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCOTACAOITEM'
        ID = 84
        ParentID = 65
        Index = 6
        Version = 1
      end
      object vtgDBEditorRow45: TcxDBEditorRow
        Properties.Caption = 'Data de Aprova'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMDTAPROVACAO'
        ID = 85
        ParentID = 65
        Index = 7
        Version = 1
      end
      object vtgDBEditorRow17: TcxDBEditorRow
        Properties.Caption = 'Data Previs'#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODTPRVENTREGAITEM'
        ID = 86
        ParentID = 65
        Index = 8
        Version = 1
      end
      object vtgDBEditorRow79: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Desconto'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMDESCONTO'
        ID = 87
        ParentID = 65
        Index = 9
        Version = 1
      end
      object vtgDBEditorRow22: TcxDBEditorRow
        Properties.Caption = 'Consistir % desconto m'#225'ximo'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMDESCONTOMAXIMO'
        ID = 88
        ParentID = 87
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow19: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Desenho'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODSDESENHO'
        ID = 89
        ParentID = 65
        Index = 10
        Version = 1
      end
      object vtgDBEditorRow28: TcxDBEditorRow
        Properties.Caption = 'Posi'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMDESENHOPOSICAO'
        ID = 90
        ParentID = 89
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow29: TcxDBEditorRow
        Properties.Caption = 'Revis'#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMDESENHOREVISAO'
        ID = 91
        ParentID = 89
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow81: TcxDBEditorRow
        Properties.Caption = 'Exibir or'#231'amento que possue o mesmo desenho'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMDESENHOANTERIOR'
        ID = 92
        ParentID = 89
        Index = 2
        Version = 1
      end
      object vtgDBEditorRow85: TcxDBEditorRow
        Properties.Caption = 'Digitar o nome do produto'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMDESCRICAO'
        ID = 93
        ParentID = 65
        Index = 11
        Version = 1
      end
      object vtgDBEditorRow98: TcxDBEditorRow
        Properties.Caption = 'Embalagem Produto'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTOEMBALAGEM'
        ID = 94
        ParentID = 65
        Index = 12
        Version = 1
      end
      object vtgCategoryRow13: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Exibir'
        ID = 95
        ParentID = 65
        Index = 13
        Version = 1
      end
      object vtgDBEditorRow97: TcxDBEditorRow
        Properties.Caption = 'Descri'#231#227'o do Produto'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMDSPRODUTO'
        ID = 96
        ParentID = 95
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow46: TcxDBEditorRow
        Properties.Caption = 'Classifica'#231#227'o Fiscal (NCM)'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMNUCLFISCAL'
        ID = 97
        ParentID = 95
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow27: TcxDBEditorRow
        Properties.Caption = 'Frete'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOEXIBIRFRETE'
        ID = 98
        ParentID = 95
        Index = 2
        Version = 1
      end
      object vtgDBEditorRow80: TcxDBEditorRow
        Properties.Caption = 'N'#250'mero Sequ'#234'ncia'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BONUSEQUENCIA'
        ID = 99
        ParentID = 95
        Index = 3
        Version = 1
      end
      object vtgDBEditorRow88: TcxDBEditorRow
        Properties.Caption = 'Informa'#231#245'es T'#233'cnica'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOINFTECNICA'
        ID = 100
        ParentID = 65
        Index = 14
        Version = 1
      end
      object vtgDBEditorRow24: TcxDBEditorRow
        Properties.Caption = 'Madeira'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMADEIRA'
        ID = 101
        ParentID = 65
        Index = 15
        Version = 1
      end
      object vtgDBEditorRow21: TcxDBEditorRow
        Properties.Caption = 'N'#250'mero Item'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BONUITEM'
        ID = 102
        ParentID = 65
        Index = 16
        Version = 1
      end
      object vtgDBEditorRow6: TcxDBEditorRow
        Properties.Caption = 'Observa'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODSOBSERVACAOITEM'
        ID = 103
        ParentID = 65
        Index = 17
        Version = 1
      end
      object vtgDBEditorRow108: TcxDBEditorRow
        Properties.Caption = 'Periodicidade'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMPERIODICIDADE'
        ID = 104
        ParentID = 65
        Index = 18
        Version = 1
      end
      object vtgDBEditorRow44: TcxDBEditorRow
        Properties.Caption = 'Prazo de Entrega'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMNUPRAZOENTREGA'
        ID = 105
        ParentID = 65
        Index = 19
        Version = 1
      end
      object vtgDBEditorRow105: TcxDBEditorRow
        Properties.Caption = 'Tipo'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMTP'
        ID = 106
        ParentID = 65
        Index = 20
        Version = 1
      end
      object vtgDBEditorRow11: TcxDBEditorRow
        Properties.Caption = 'Tipo ICMS'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMTPICMS'
        ID = 107
        ParentID = 65
        Index = 21
        Version = 1
      end
      object vtgDBEditorRow23: TcxDBEditorRow
        Properties.Caption = 'Tipo IPI'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMTPIPI'
        ID = 108
        ParentID = 65
        Index = 22
        Version = 1
      end
      object vtgCategoryRow11: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Valor Unit'#225'rio'
        ID = 109
        ParentID = 65
        Index = 23
        Version = 1
      end
      object vtgDBEditorRow7: TcxDBEditorRow
        Properties.Caption = 'Alterar valor unit'#225'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMALTERARVALOR'
        ID = 110
        ParentID = 109
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow2: TcxDBEditorRow
        Properties.Caption = 'Considerar o pre'#231'o a prazo de acordo com o tipo de cobran'#231'a'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMVLUNITARIOTPCOBRANCA'
        ID = 111
        ParentID = 109
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow25: TcxDBEditorRow
        Properties.Caption = 'Consistir valor m'#237'nimo'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMVLMINIMO'
        ID = 112
        ParentID = 109
        Index = 2
        Version = 1
      end
      object vtgCategoryRow5: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Mark-up'
        ID = 113
        ParentID = -1
        Index = 4
        Version = 1
      end
      object vtgDBEditorRow37: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Frete'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMARKUPFRETE'
        ID = 114
        ParentID = 113
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow55: TcxDBEditorRow
        Properties.Caption = 'Porcentagem'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.DataBinding.FieldName = 'PRMARKUPFRETE'
        ID = 115
        ParentID = 114
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow49: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Embalagens'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMARKUPEMBALAGEM'
        ID = 116
        ParentID = 113
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow56: TcxDBEditorRow
        Properties.Caption = 'Porcentagem'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.DataBinding.FieldName = 'PRMARKUPEMBALAGEM'
        ID = 117
        ParentID = 116
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow50: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Seguros'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMARKUPSEGURO'
        ID = 118
        ParentID = 113
        Index = 2
        Version = 1
      end
      object vtgDBEditorRow57: TcxDBEditorRow
        Properties.Caption = 'Porcentagem'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.DataBinding.FieldName = 'PRMARKUPSEGURO'
        ID = 119
        ParentID = 118
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow51: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Despesa Administrativa'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMARKUPDESPESAADMINISTRATIVA'
        ID = 120
        ParentID = 113
        Index = 3
        Version = 1
      end
      object vtgDBEditorRow58: TcxDBEditorRow
        Properties.Caption = 'Porcentagem'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.DataBinding.FieldName = 'PRMARKUPDESPESAADMINISTRATIVA'
        ID = 121
        ParentID = 120
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow54: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Despesa Comercial'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMARKUPDESPESACOMERCIAL'
        ID = 122
        ParentID = 113
        Index = 4
        Version = 1
      end
      object vtgDBEditorRow59: TcxDBEditorRow
        Properties.Caption = 'Porcentagem'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.DataBinding.FieldName = 'PRMARKUPDESPESACOMERCIAL'
        ID = 123
        ParentID = 122
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow52: TcxDBEditorRow
        Properties.Caption = 'Imposto de Renda/Contribui'#231#227'o Social'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.DataBinding.FieldName = 'PRMARKUPIRCS'
        ID = 124
        ParentID = 113
        Index = 5
        Version = 1
      end
      object vtgDBEditorRow53: TcxDBEditorRow
        Properties.Caption = 'Lucro L'#237'quido'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.DataBinding.FieldName = 'PRMARKUPLUCRO'
        ID = 125
        ParentID = 113
        Index = 6
        Version = 1
      end
      object vtgCategoryRow7: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Produto'
        ID = 126
        ParentID = 113
        Index = 7
        Version = 1
      end
      object vtgDBEditorRow68: TcxDBEditorRow
        Properties.Caption = 'COFINS'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.DataBinding.FieldName = 'ALCOFINS'
        ID = 127
        ParentID = 126
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow71: TcxDBEditorRow
        Properties.Caption = 'CSLL'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.DataBinding.FieldName = 'ALCSLL'
        ID = 128
        ParentID = 126
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow77: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'IPI'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.DataBinding.FieldName = 'ALIPI'
        ID = 129
        ParentID = 126
        Index = 2
        Version = 1
      end
      object vtgDBEditorRow78: TcxDBEditorRow
        Properties.Caption = 'Tipo IPI'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDTPIPI'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMTPIPI'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDTPIPI'
        ID = 130
        ParentID = 129
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow66: TcxDBEditorRow
        Properties.Caption = 'ICMS'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.DataBinding.FieldName = 'ALICMS'
        ID = 131
        ParentID = 126
        Index = 3
        Version = 1
      end
      object vtgDBEditorRow69: TcxDBEditorRow
        Properties.Caption = 'IRPJ'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.DataBinding.FieldName = 'ALIRPJ'
        ID = 132
        ParentID = 126
        Index = 4
        Version = 1
      end
      object vtgDBEditorRow67: TcxDBEditorRow
        Properties.Caption = 'PIS'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.DataBinding.FieldName = 'ALPIS'
        ID = 133
        ParentID = 126
        Index = 5
        Version = 1
      end
      object vtgALSIMPLES: TcxDBEditorRow
        Properties.Caption = 'Simples'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.DataBinding.FieldName = 'ALSIMPLES'
        ID = 134
        ParentID = 126
        Index = 6
        Version = 1
      end
      object vtgCategoryRow6: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Servi'#231'o'
        ID = 135
        ParentID = 113
        Index = 8
        Version = 1
      end
      object vtgDBEditorRow60: TcxDBEditorRow
        Properties.Caption = 'ISS'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.DataBinding.FieldName = 'ALISS'
        ID = 136
        ParentID = 135
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow61: TcxDBEditorRow
        Properties.Caption = 'PIS'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.DataBinding.FieldName = 'ALPISSERVICO'
        ID = 137
        ParentID = 135
        Index = 1
        Version = 1
      end
      object vtgDBEditorRow62: TcxDBEditorRow
        Properties.Caption = 'COFINS'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.DataBinding.FieldName = 'ALCOFINSSERVICO'
        ID = 138
        ParentID = 135
        Index = 2
        Version = 1
      end
      object vtgDBEditorRow63: TcxDBEditorRow
        Properties.Caption = 'IRPJ'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.DataBinding.FieldName = 'ALIRPJSERVICO'
        ID = 139
        ParentID = 135
        Index = 3
        Version = 1
      end
      object vtgDBEditorRow64: TcxDBEditorRow
        Properties.Caption = 'CSLL'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.DataBinding.FieldName = 'ALCSLLSERVICO'
        ID = 140
        ParentID = 135
        Index = 4
        Version = 1
      end
      object vtgALSIMPLESSERVICO: TcxDBEditorRow
        Properties.Caption = 'Simples'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.DataBinding.FieldName = 'ALSIMPLESSERVICO'
        ID = 141
        ParentID = 135
        Index = 5
        Version = 1
      end
      object vtgCategoryRow10: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Relat'#243'rio'
        ID = 142
        ParentID = -1
        Index = 5
        Version = 1
      end
      object vtgDBEditorRow32: TcxDBEditorRow
        Properties.Caption = 'Anal'#237'tico'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOREPORTANALITICO'
        ID = 143
        ParentID = 142
        Index = 0
        Version = 1
      end
      object vtgDBEditorRow92: TcxDBEditorRow
        Properties.Caption = 'Or'#231'amento'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOREPORTORCAMENTO'
        ID = 144
        ParentID = 142
        Index = 1
        Version = 1
      end
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 44
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
  end
  object dts: TDataSource
    OnStateChange = dtsStateChange
    Left = 156
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
    Left = 16
    DockControlHeights = (
      0
      0
      63
      0)
    object dxbrManager1Bar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'tporcamento'
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
  end
end
