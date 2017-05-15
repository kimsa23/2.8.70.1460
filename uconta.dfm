object frmConta: TfrmConta
  Left = 480
  Top = 97
  ClientHeight = 580
  ClientWidth = 1316
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 67
    Width = 1316
    Height = 63
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label4: TLabel
      Left = 6
      Top = 28
      Width = 33
      Height = 13
      Caption = 'Codigo'
      Transparent = True
    end
    object Label3: TLabel
      Left = 78
      Top = 28
      Width = 28
      Height = 13
      Caption = 'Nome'
      Transparent = True
    end
    object Label5: TLabel
      Left = 315
      Top = 28
      Width = 30
      Height = 13
      Caption = 'Status'
      Transparent = True
    end
    object cbxcdstconta: TcxDBLookupComboBox
      Left = 313
      Top = 41
      DataBinding.DataField = 'CDSTCONTA'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDSTCONTA'
      Properties.ListColumns = <
        item
          FieldName = 'NMSTCONTA'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      Width = 249
    end
    object edtcodigo: TcxTextEdit
      Left = 6
      Top = 41
      TabOrder = 0
      OnEnter = edtcodigoEnter
      OnKeyDown = edtcodigoKeyDown
      OnKeyPress = edtcodigoKeyPress
      Width = 72
    end
    object edtnome: TcxDBTextEdit
      Left = 78
      Top = 41
      DataBinding.DataField = 'NMCONTA'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edtnomePropertiesChange
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      Width = 235
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
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 130
    Align = alTop
    Caption = 'Cadastro'
    TabOrder = 1
    Height = 126
    Width = 1316
    object Label6: TLabel
      Left = 4
      Top = 21
      Width = 21
      Height = 13
      Caption = 'Tipo'
      Transparent = True
    end
    object lblidcobranca: TLabel
      Left = 275
      Top = 63
      Width = 48
      Height = 13
      Caption = 'Id. Extrato'
      Transparent = True
    end
    object lblnuconta: TLabel
      Left = 4
      Top = 61
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      Transparent = True
    end
    object lblnuagencia: TLabel
      Left = 4
      Top = 39
      Width = 39
      Height = 13
      Caption = 'Ag'#234'ncia'
      Transparent = True
    end
    object lblnucntcontabil: TLabel
      Left = 3
      Top = 86
      Width = 69
      Height = 13
      Caption = 'Conta Contabil'
      Transparent = True
    end
    object lblcdcedente: TLabel
      Left = 275
      Top = 84
      Width = 62
      Height = 13
      Caption = 'C'#243'd Cedente'
      Transparent = True
    end
    object Label12: TLabel
      Left = 3
      Top = 106
      Width = 16
      Height = 13
      Caption = 'Cor'
      Transparent = True
    end
    object lblcdbanco: TLabel
      Left = 275
      Top = 39
      Width = 31
      Height = 13
      Caption = 'Banco'
      Transparent = True
    end
    object cbxcdtpconta: TcxDBLookupComboBox
      Left = 73
      Top = 14
      DataBinding.DataField = 'CDTPCONTA'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDTPCONTA'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPCONTA'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      Width = 472
    end
    object edtidcobranca: TcxDBTextEdit
      Left = 345
      Top = 56
      DataBinding.DataField = 'IDCOBRANCA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      Width = 199
    end
    object edtnucntcontabil: TcxDBTextEdit
      Left = 73
      Top = 79
      DataBinding.DataField = 'NUCNTCONTABIL'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      Width = 199
    end
    object edtnuconta: TcxDBTextEdit
      Left = 73
      Top = 58
      DataBinding.DataField = 'NUCONTA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      Width = 199
    end
    object edtcdcedente: TcxDBTextEdit
      Left = 345
      Top = 77
      DataBinding.DataField = 'CDCEDENTE'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      OnEnter = colorenter
      OnExit = colorexit
      Width = 199
    end
    object edtnucor: TcxDBColorComboBox
      Left = 73
      Top = 102
      DataBinding.DataField = 'NUCOR'
      DataBinding.DataSource = dts
      Properties.CustomColors = <>
      Properties.NamingConvention = cxncX11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      Width = 199
    end
    object edtnuagencia: TcxDBTextEdit
      Left = 73
      Top = 36
      DataBinding.DataField = 'NUAGENCIA'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      Width = 99
    end
    object cbxcdbanco: TcxDBLookupComboBox
      Left = 345
      Top = 36
      DataBinding.DataField = 'CDBANCO'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDBANCO'
      Properties.ListColumns = <
        item
          FieldName = 'NMBANCO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      Width = 199
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 0
    Top = 256
    Align = alTop
    Caption = 'Valores'
    TabOrder = 2
    Height = 85
    Width = 1316
    object Label14: TLabel
      Left = 5
      Top = 44
      Width = 57
      Height = 13
      Caption = 'Saldo Inicial'
      Transparent = True
    end
    object Label15: TLabel
      Left = 5
      Top = 20
      Width = 27
      Height = 13
      Caption = 'Limite'
      Transparent = True
    end
    object Label10: TLabel
      Left = 215
      Top = 44
      Width = 23
      Height = 13
      Caption = 'Data'
      Transparent = True
    end
    object Label13: TLabel
      Left = 331
      Top = 42
      Width = 54
      Height = 13
      Caption = 'Saldo Atual'
      Transparent = True
    end
    object lblvlextrato: TLabel
      Left = 331
      Top = 64
      Width = 63
      Height = 13
      Caption = 'Saldo Extrato'
      Transparent = True
    end
    object lblvlestratoinicial: TLabel
      Left = 5
      Top = 64
      Width = 63
      Height = 13
      Caption = 'Extrato Inicial'
      Transparent = True
    end
    object lbldtextrato: TLabel
      Left = 215
      Top = 64
      Width = 23
      Height = 13
      Caption = 'Data'
      Transparent = True
    end
    object edtvlsaldoinicial: TcxDBCalcEdit
      Left = 72
      Top = 37
      DataBinding.DataField = 'VLSALDOINICIAL'
      DataBinding.DataSource = dts
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      Width = 135
    end
    object edtvllimite: TcxDBCalcEdit
      Left = 72
      Top = 15
      DataBinding.DataField = 'VLLIMITE'
      DataBinding.DataSource = dts
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      Width = 135
    end
    object edtdtsaldo: TcxDBDateEdit
      Left = 242
      Top = 37
      DataBinding.DataField = 'DTSALDO'
      DataBinding.DataSource = dts
      Properties.OnValidate = edtdtsaldoPropertiesValidate
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      Width = 89
    end
    object lbl1: TcxDBLabel
      Left = 395
      Top = 38
      DataBinding.DataField = 'vlsaldo'
      DataBinding.DataSource = dts
      Style.TextColor = clHotLight
      Transparent = True
      Height = 21
      Width = 121
    end
    object txtvlextrato: TcxDBLabel
      Left = 395
      Top = 59
      DataBinding.DataField = 'VLEXTRATO'
      DataBinding.DataSource = dts
      Style.TextColor = clHotLight
      Transparent = True
      Height = 20
      Width = 121
    end
    object edtvlextratoinicial: TcxDBCalcEdit
      Left = 72
      Top = 57
      DataBinding.DataField = 'VLEXTRATOINICIAL'
      DataBinding.DataSource = dts
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      Width = 135
    end
    object edtdtextrato: TcxDBDateEdit
      Left = 242
      Top = 57
      DataBinding.DataField = 'DTEXTRATO'
      DataBinding.DataSource = dts
      Properties.OnValidate = edtdtextratoPropertiesValidate
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      Width = 89
    end
    object ckbboignorardocumentorepetido: TcxDBCheckBox
      Left = 240
      Top = 16
      Caption = 'Ignorar documento repetido na importa'#231#227'o do extrato'
      DataBinding.DataField = 'boignorardocumentorepetido'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Transparent = True
    end
  end
  object gbxboleto: TcxGroupBox
    Left = 0
    Top = 341
    Align = alClient
    Caption = 'Configura'#231#227'o do Boleto'
    TabOrder = 7
    Height = 239
    Width = 1316
    object grdsetboleto: TcxGrid
      Left = 2
      Top = 18
      Width = 1312
      Height = 219
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      object tbvsetboleto: TcxGridDBTableView
        OnKeyDown = exportarGradeExcel
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.PriorPage.Enabled = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.NextPage.Enabled = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Refresh.Enabled = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Enabled = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Enabled = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Enabled = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dtssetboleto
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tbvsetboletoNMSETBOLETO: TcxGridDBColumn
          Caption = 'Nome'
          DataBinding.FieldName = 'NMSETBOLETO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.CharCase = ecUpperCase
          Width = 150
        end
        object tbvsetboletoCDCEDENTE: TcxGridDBColumn
          Caption = 'C'#243'digo Cedente'
          DataBinding.FieldName = 'CDCEDENTE'
        end
        object tbvsetboletoNUBOLETA: TcxGridDBColumn
          Caption = 'N'#176' Boleto'
          DataBinding.FieldName = 'NUBOLETA'
          Width = 55
        end
        object tbvsetboletoNUCARTEIRA: TcxGridDBColumn
          Caption = 'N'#176' Carteira'
          DataBinding.FieldName = 'NUCARTEIRA'
          Width = 60
        end
        object tbvsetboletoCDTPCARTEIRABOLETO: TcxGridDBColumn
          Caption = 'Tipo Carteira'
          DataBinding.FieldName = 'CDTPCARTEIRABOLETO'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'CDTPCARTEIRABOLETO'
          Properties.ListColumns = <
            item
              FieldName = 'NMTPCARTEIRABOLETO'
            end>
          Properties.ListOptions.ShowHeader = False
          Width = 100
        end
        object tbvsetboletoDSMODALIDADE: TcxGridDBColumn
          Caption = 'Modalidade/Varia'#231#227'o Carteira'
          DataBinding.FieldName = 'DSMODALIDADE'
          Width = 155
        end
        object tbvsetboletoNUCONVENIO: TcxGridDBColumn
          Caption = 'N'#176' Conv'#234'nio'
          DataBinding.FieldName = 'NUCONVENIO'
          Width = 70
        end
        object tbvsetboletoNUREMESSA: TcxGridDBColumn
          Caption = 'N'#176' Remessa'
          DataBinding.FieldName = 'NUREMESSA'
          Width = 70
        end
        object tbvsetboletoTPARQUIVOCOBRANCA: TcxGridDBColumn
          Caption = 'Layout'
          DataBinding.FieldName = 'TPARQUIVOCOBRANCA'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.Items.Strings = (
            '240'
            '400')
          Width = 50
        end
        object tbvsetboletoCDSETBOLETORESPEMISSAO: TcxGridDBColumn
          Caption = 'Respons'#225'vel pela Emiss'#227'o'
          DataBinding.FieldName = 'CDSETBOLETORESPEMISSAO'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'CDSETBOLETORESPEMISSAO'
          Properties.ListColumns = <
            item
              FieldName = 'NMSETBOLETORESPEMISSAO'
            end>
          Properties.ListOptions.ShowHeader = False
          Width = 150
        end
        object tbvsetboletoCDSETBOLETOCARACTITULO: TcxGridDBColumn
          Caption = 'Caracter'#237'stica do T'#237'tulo'
          DataBinding.FieldName = 'CDSETBOLETOCARACTITULO'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'CDSETBOLETOCARACTITULO'
          Properties.ListColumns = <
            item
              FieldName = 'NMSETBOLETOCARACTITULO'
            end>
          Properties.ListOptions.ShowHeader = False
          Width = 130
        end
        object tbvsetboletoDSLOCALPAGAMENTO: TcxGridDBColumn
          Caption = 'Local Pagamento'
          DataBinding.FieldName = 'DSLOCALPAGAMENTO'
          PropertiesClassName = 'TcxBlobEditProperties'
          Properties.BlobEditKind = bekMemo
          Properties.BlobPaintStyle = bpsText
          Width = 110
        end
        object tbvsetboletoNUDIASPROTESTO: TcxGridDBColumn
          Caption = 'Dias Protesto'
          DataBinding.FieldName = 'NUDIASPROTESTO'
          PropertiesClassName = 'TcxSpinEditProperties'
          Width = 70
        end
        object tbvsetboletoDSINSTRUCAOBOLETA: TcxGridDBColumn
          Caption = 'Instru'#231#227'o'
          DataBinding.FieldName = 'DSINSTRUCAOBOLETA'
          PropertiesClassName = 'TcxBlobEditProperties'
          Properties.BlobEditKind = bekMemo
          Properties.BlobPaintStyle = bpsText
          Width = 150
        end
        object tbvsetboletoDSINSTRUCAO1: TcxGridDBColumn
          Caption = 'Instru'#231#227'o 1'
          DataBinding.FieldName = 'DSINSTRUCAO1'
          Width = 250
        end
        object tbvsetboletoDSINSTRUCAO2: TcxGridDBColumn
          Caption = 'Instru'#231#227'o 2'
          DataBinding.FieldName = 'DSINSTRUCAO2'
          Width = 250
        end
        object tbvsetboletoDSESPECIE: TcxGridDBColumn
          Caption = 'Esp'#233'cie'
          DataBinding.FieldName = 'DSESPECIE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.CharCase = ecUpperCase
          Width = 50
        end
        object tbvsetboletoBOACEITE: TcxGridDBColumn
          Caption = 'Aceite?'
          DataBinding.FieldName = 'BOACEITE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Width = 45
        end
        object tbvsetboletoDSPATHREMESSA: TcxGridDBColumn
          Caption = 'Diret'#243'rio Remessa'
          DataBinding.FieldName = 'DSPATHREMESSA'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = grdsetboletoDBTableView1DSPATHREMESSAPropertiesButtonClick
          Width = 200
        end
        object tbvsetboletoBODESPESARETORNOLIQUIDADO: TcxGridDBColumn
          Caption = 'Considerar a despesa no retorno Liquidado'
          DataBinding.FieldName = 'BODESPESARETORNOLIQUIDADO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Width = 210
        end
      end
      object grdsetboletoLevel1: TcxGridLevel
        GridView = tbvsetboleto
      end
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 524
    Top = 1
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
    object actboleto: TAction
      Caption = 'Boleto'
      Visible = False
      OnExecute = actboletoExecute
    end
    object actboletocarne: TAction
      Caption = 'Carne'
      Visible = False
      OnExecute = actboletocarneExecute
    end
    object actboletofatura: TAction
      Caption = 'Fatura'
      Visible = False
      OnExecute = actboletofaturaExecute
    end
    object actboletofr: TAction
      Caption = 'Boleto FR'
      Visible = False
      OnExecute = actboletofrExecute
    end
    object actlayoutimpressaoboleto: TAction
      Caption = 'Layout Boleto'
      OnExecute = actlayoutimpressaoboletoExecute
    end
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
    Left = 376
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
      Caption = 'conta'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 25
      DockingStyle = dsTop
      FloatLeft = 392
      FloatTop = 299
      FloatClientWidth = 62
      FloatClientHeight = 494
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
      FloatLeft = 845
      FloatTop = 334
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
    object bmg1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'boleto'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 805
      FloatTop = 490
      FloatClientWidth = 58
      FloatClientHeight = 88
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = False
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
          ItemName = 'dxbrsprtr1'
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
    object dxBarButton2: TdxBarButton
      Action = actboleto
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actboletocarne
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actboletofatura
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = actboletofr
      Category = 0
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actlayoutimpressaoboleto
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT * FROM CONTA WHERE CDEMPRESA=:CDEMPRESA AND CDCONTA=:CDCO' +
      'NTA'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'CDCONTA'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = dtmmain.sqlc
    Left = 592
    Top = 224
    object sdsCDCONTA: TIntegerField
      FieldName = 'CDCONTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDSTCONTA: TIntegerField
      FieldName = 'CDSTCONTA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDTPCONTA: TIntegerField
      FieldName = 'CDTPCONTA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDUSUARIO: TIntegerField
      FieldName = 'CDUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMCONTA: TStringField
      FieldName = 'NMCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsIDCOBRANCA: TStringField
      FieldName = 'IDCOBRANCA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsVLLIMITE: TFMTBCDField
      FieldName = 'VLLIMITE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsDTSALDO: TDateField
      FieldName = 'DTSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsNUCHEQUE: TIntegerField
      FieldName = 'NUCHEQUE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBOSALDO: TStringField
      FieldName = 'BOSALDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsVLSALDOINICIAL: TFMTBCDField
      FieldName = 'VLSALDOINICIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsNUCONTA: TStringField
      FieldName = 'NUCONTA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsVLEXTRATO: TFMTBCDField
      FieldName = 'VLEXTRATO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLEXTRATOINICIAL: TFMTBCDField
      FieldName = 'VLEXTRATOINICIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsDTEXTRATO: TDateField
      FieldName = 'DTEXTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDCEDENTE: TIntegerField
      FieldName = 'CDCEDENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUCOR: TIntegerField
      FieldName = 'NUCOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUCNTCONTABIL: TStringField
      FieldName = 'NUCNTCONTABIL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsBOIGNORARDOCUMENTOREPETIDO: TStringField
      FieldName = 'BOIGNORARDOCUMENTOREPETIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsNUAGENCIA: TStringField
      FieldName = 'NUAGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsCDBANCO: TIntegerField
      FieldName = 'CDBANCO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspBeforeUpdateRecord
    Left = 620
    Top = 224
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 648
    Top = 224
    object cdsCDCONTA: TIntegerField
      FieldName = 'CDCONTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDSTCONTA: TIntegerField
      FieldName = 'CDSTCONTA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDTPCONTA: TIntegerField
      FieldName = 'CDTPCONTA'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDTPCONTAValidate
    end
    object cdsCDUSUARIO: TIntegerField
      FieldName = 'CDUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMCONTA: TStringField
      FieldName = 'NMCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsIDCOBRANCA: TStringField
      FieldName = 'IDCOBRANCA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsVLLIMITE: TFMTBCDField
      FieldName = 'VLLIMITE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsDTSALDO: TDateField
      FieldName = 'DTSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsNUCHEQUE: TIntegerField
      FieldName = 'NUCHEQUE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBOSALDO: TStringField
      FieldName = 'BOSALDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsVLSALDOINICIAL: TFMTBCDField
      FieldName = 'VLSALDOINICIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsNUCONTA: TStringField
      FieldName = 'NUCONTA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsVLEXTRATO: TFMTBCDField
      FieldName = 'VLEXTRATO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLEXTRATOINICIAL: TFMTBCDField
      FieldName = 'VLEXTRATOINICIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsDTEXTRATO: TDateField
      FieldName = 'DTEXTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDCEDENTE: TIntegerField
      FieldName = 'CDCEDENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdssetboleto: TDataSetField
      FieldName = 'sdssetboleto'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUCOR: TIntegerField
      FieldName = 'NUCOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUCNTCONTABIL: TStringField
      FieldName = 'NUCNTCONTABIL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBOIGNORARDOCUMENTOREPETIDO: TStringField
      FieldName = 'BOIGNORARDOCUMENTOREPETIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNUAGENCIA: TStringField
      FieldName = 'NUAGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsCDBANCO: TIntegerField
      FieldName = 'CDBANCO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 676
    Top = 224
  end
  object sdssetboleto: TSQLDataSet
    CommandText = 
      'SELECT * FROM SETBOLETO WHERE CDEMPRESA=:CDEMPRESA AND CDCONTA=:' +
      'CDCONTA'
    DataSource = dts1
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDCONTA'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 592
    Top = 252
    object sdssetboletoCDSETBOLETO: TIntegerField
      FieldName = 'CDSETBOLETO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdssetboletoCDCONTA: TIntegerField
      FieldName = 'CDCONTA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssetboletoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssetboletoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssetboletoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssetboletoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssetboletoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssetboletoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssetboletoNUBOLETA: TIntegerField
      FieldName = 'NUBOLETA'
      ProviderFlags = [pfInUpdate]
    end
    object sdssetboletoNUCARTEIRA: TStringField
      FieldName = 'NUCARTEIRA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sdssetboletoNUCONVENIO: TStringField
      FieldName = 'NUCONVENIO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdssetboletoNUREMESSA: TIntegerField
      FieldName = 'NUREMESSA'
      ProviderFlags = [pfInUpdate]
    end
    object sdssetboletoTPARQUIVOCOBRANCA: TStringField
      DisplayWidth = 3
      FieldName = 'TPARQUIVOCOBRANCA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object sdssetboletoDSINSTRUCAOBOLETA: TBlobField
      FieldName = 'DSINSTRUCAOBOLETA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdssetboletoNMSETBOLETO: TStringField
      FieldName = 'NMSETBOLETO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sdssetboletoDSINSTRUCAO1: TStringField
      FieldName = 'DSINSTRUCAO1'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sdssetboletoDSINSTRUCAO2: TStringField
      FieldName = 'DSINSTRUCAO2'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sdssetboletoCDSETBOLETORESPEMISSAO: TIntegerField
      FieldName = 'CDSETBOLETORESPEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssetboletoCDSETBOLETOCARACTITULO: TIntegerField
      FieldName = 'CDSETBOLETOCARACTITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssetboletoDSESPECIE: TStringField
      FieldName = 'DSESPECIE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdssetboletoBOACEITE: TStringField
      FieldName = 'BOACEITE'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdssetboletoCDCEDENTE: TStringField
      FieldName = 'CDCEDENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdssetboletoDSMODALIDADE: TStringField
      FieldName = 'DSMODALIDADE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object sdssetboletoDSLOCALPAGAMENTO: TBlobField
      FieldName = 'DSLOCALPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdssetboletoDSPATHREMESSA: TStringField
      FieldName = 'DSPATHREMESSA'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sdssetboletoDSBOLETO: TBlobField
      FieldName = 'DSBOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdssetboletoDSBOLETOCARNE: TBlobField
      FieldName = 'DSBOLETOCARNE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdssetboletoDSBOLETOFATURA: TBlobField
      FieldName = 'DSBOLETOFATURA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdssetboletoDSBOLETOFR: TBlobField
      FieldName = 'DSBOLETOFR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdssetboletoCDTPCARTEIRABOLETO: TIntegerField
      FieldName = 'CDTPCARTEIRABOLETO'
      ProviderFlags = [pfInUpdate]
    end
    object sdssetboletoBODESPESARETORNOLIQUIDADO: TStringField
      FieldName = 'BODESPESARETORNOLIQUIDADO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdssetboletoNUDIASPROTESTO: TIntegerField
      FieldName = 'NUDIASPROTESTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdssetboletoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdssetboleto: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdssetboleto
    Params = <>
    BeforePost = cdssetboletoBeforePost
    OnNewRecord = cdssetboletoNewRecord
    Left = 648
    Top = 252
    object cdssetboletoCDSETBOLETO: TIntegerField
      FieldName = 'CDSETBOLETO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdssetboletoCDCONTA: TIntegerField
      FieldName = 'CDCONTA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssetboletoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssetboletoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssetboletoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssetboletoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssetboletoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssetboletoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssetboletoNUBOLETA: TIntegerField
      FieldName = 'NUBOLETA'
      ProviderFlags = [pfInUpdate]
    end
    object cdssetboletoNUCARTEIRA: TStringField
      FieldName = 'NUCARTEIRA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdssetboletoNUCARTEIRAValidate
      Size = 6
    end
    object cdssetboletoNUCONVENIO: TStringField
      FieldName = 'NUCONVENIO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdssetboletoNUREMESSA: TIntegerField
      FieldName = 'NUREMESSA'
      ProviderFlags = [pfInUpdate]
    end
    object cdssetboletoTPARQUIVOCOBRANCA: TStringField
      DisplayWidth = 3
      FieldName = 'TPARQUIVOCOBRANCA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdssetboletoDSINSTRUCAOBOLETA: TBlobField
      FieldName = 'DSINSTRUCAOBOLETA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdssetboletoNMSETBOLETO: TStringField
      FieldName = 'NMSETBOLETO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cdssetboletoDSINSTRUCAO1: TStringField
      FieldName = 'DSINSTRUCAO1'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cdssetboletoDSINSTRUCAO2: TStringField
      FieldName = 'DSINSTRUCAO2'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cdssetboletoCDSETBOLETORESPEMISSAO: TIntegerField
      FieldName = 'CDSETBOLETORESPEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssetboletoCDSETBOLETOCARACTITULO: TIntegerField
      FieldName = 'CDSETBOLETOCARACTITULO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssetboletoDSESPECIE: TStringField
      FieldName = 'DSESPECIE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdssetboletoBOACEITE: TStringField
      FieldName = 'BOACEITE'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdssetboletoCDCEDENTE: TStringField
      FieldName = 'CDCEDENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdssetboletoDSMODALIDADE: TStringField
      FieldName = 'DSMODALIDADE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdssetboletoDSLOCALPAGAMENTO: TBlobField
      FieldName = 'DSLOCALPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdssetboletoDSPATHREMESSA: TStringField
      FieldName = 'DSPATHREMESSA'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cdssetboletoDSBOLETO: TBlobField
      FieldName = 'DSBOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdssetboletoDSBOLETOCARNE: TBlobField
      FieldName = 'DSBOLETOCARNE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdssetboletoDSBOLETOFATURA: TBlobField
      FieldName = 'DSBOLETOFATURA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdssetboletoDSBOLETOFR: TBlobField
      FieldName = 'DSBOLETOFR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdssetboletoCDTPCARTEIRABOLETO: TIntegerField
      FieldName = 'CDTPCARTEIRABOLETO'
      ProviderFlags = [pfInUpdate]
    end
    object cdssetboletoBODESPESARETORNOLIQUIDADO: TStringField
      FieldName = 'BODESPESARETORNOLIQUIDADO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdssetboletoNUDIASPROTESTO: TIntegerField
      FieldName = 'NUDIASPROTESTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdssetboletoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtssetboleto: TDataSource
    DataSet = cdssetboleto
    Left = 692
    Top = 252
  end
  object dts1: TDataSource
    DataSet = sds
    OnStateChange = dtsStateChange
    Left = 760
    Top = 224
  end
  object pumopcoes: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end>
    UseOwnFont = False
    Left = 780
    Top = 100
  end
end
