object frmtpentrada: Tfrmtpentrada
  Left = 675
  Top = 111
  ClientHeight = 654
  ClientWidth = 947
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
  object dxbrdckcntrl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 947
    Height = 63
    Align = dalTop
    BarManager = bmg1
  end
  object pnl1: TPanel
    Left = 0
    Top = 63
    Width = 947
    Height = 591
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 5
    object Label1: TLabel
      Left = 5
      Top = 22
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label3: TLabel
      Left = 72
      Top = 22
      Width = 28
      Height = 13
      Caption = 'Nome'
      Transparent = True
    end
    object Label2: TLabel
      Left = 364
      Top = 22
      Width = 76
      Height = 13
      Caption = 'Nome Reduzido'
      Transparent = True
    end
    object Bevel1: TBevel
      Left = 0
      Top = 23
      Width = 947
      Height = 38
      Align = alTop
      ExplicitWidth = 969
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
    object edtcodigo: TcxTextEdit
      Left = 5
      Top = 36
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 66
    end
    object edtnome: TcxDBTextEdit
      Left = 72
      Top = 36
      DataBinding.DataField = 'NMTPENTRADA'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edtnomePropertiesChange
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnKeyPress = nextcontrol
      Width = 291
    end
    object edtnmreduzido: TcxDBTextEdit
      Left = 364
      Top = 36
      DataBinding.DataField = 'NMREDUZIDO'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnKeyPress = nextcontrol
      Width = 82
    end
    object trv: TcxDBVerticalGrid
      Left = 0
      Top = 61
      Width = 947
      Height = 530
      Align = alClient
      LayoutStyle = lsBandsView
      LookAndFeel.NativeStyle = False
      OptionsView.RowHeaderWidth = 438
      Navigator.Buttons.CustomButtons = <>
      TabOrder = 4
      DataController.DataSource = dts
      Version = 1
      object trvCategoryRow1: TcxCategoryRow
        Properties.Caption = 'Configura'#231#227'o'
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object trvDBEditorRow19: TcxDBEditorRow
        Properties.Caption = 'Altera Estoque?'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOESTOQUE'
        ID = 1
        ParentID = 0
        Index = 0
        Version = 1
      end
      object trvDBEditorRow2: TcxDBEditorRow
        Properties.Caption = 'Centro Custo'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCNTCUSTO'
        ID = 2
        ParentID = 0
        Index = 1
        Version = 1
      end
      object trvDBEditorRow27: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Gera Contas a Pagar'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAUTPAGTO'
        ID = 3
        ParentID = 0
        Index = 2
        Version = 1
      end
      object trvDBEditorRow17: TcxDBEditorRow
        Properties.Caption = 'Preencher o hist'#243'rico com NF+Cliente'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODSHISTORICONF'
        ID = 4
        ParentID = 3
        Index = 0
        Version = 1
      end
      object trvDBEditorRow25: TcxDBEditorRow
        Properties.Caption = 'Ordem Compra'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOORDCOMPRA'
        ID = 5
        ParentID = 0
        Index = 3
        Version = 1
      end
      object trvDBEditorRow4: TcxDBEditorRow
        Properties.Caption = 'Plano Contas'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPLCONTA'
        ID = 6
        ParentID = 0
        Index = 4
        Version = 1
      end
      object trvDBEditorRow38: TcxDBEditorRow
        Properties.Caption = 'Tipo de Pessoa'
        Properties.EditPropertiesClassName = 'TcxRadioGroupProperties'
        Properties.EditProperties.Columns = 2
        Properties.EditProperties.Items = <
          item
            Caption = 'Fornecedor'
            Value = 'F'
          end
          item
            Caption = 'Cliente'
            Value = 'C'
          end>
        Properties.DataBinding.FieldName = 'TPFORNCLIENTE'
        ID = 7
        ParentID = 0
        Index = 5
        Version = 1
      end
      object trvCategoryRow2: TcxCategoryRow
        Properties.Caption = 'Tributa'#231#227'o'
        ID = 8
        ParentID = -1
        Index = 1
        Version = 1
      end
      object trvNUDOCFISCALICMS: TcxDBEditorRow
        Properties.Caption = 'Documento Fiscal ICMS'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'NUDOCFISCALICMS'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMDOCFISCALICMS'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'NUDOCFISCALICMS'
        ID = 9
        ParentID = 8
        Index = 0
        Version = 1
      end
      object trvDBEditorRow50: TcxDBEditorRow
        Properties.Caption = 'COFINS'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'boCOFINS'
        ID = 10
        ParentID = 8
        Index = 1
        Version = 1
      end
      object trvDBEditorRow29: TcxDBEditorRow
        Properties.Caption = 'Frete'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'bofrete'
        ID = 11
        ParentID = 8
        Index = 2
        Version = 1
      end
      object trvDBEditorRow45: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'ICMS'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'boICMS'
        ID = 12
        ParentID = 8
        Index = 3
        Version = 1
      end
      object trvDBEditorRow57: TcxDBEditorRow
        Properties.Caption = 'Substitui'#231#227'o Tribut'#225'ria'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOICMSSUBST'
        ID = 13
        ParentID = 12
        Index = 0
        Version = 1
      end
      object trvDBEditorRow56: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'IPI'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'boIPI'
        ID = 14
        ParentID = 8
        Index = 4
        Version = 1
      end
      object trvDBEditorRow1: TcxDBEditorRow
        Properties.Caption = 'IPI faz parte base de c'#225'lculo ICMS'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOIPIBCICMS'
        ID = 15
        ParentID = 14
        Index = 0
        Version = 1
      end
      object trvDBEditorRow46: TcxDBEditorRow
        Properties.Caption = 'PIS'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'boPIS'
        ID = 16
        ParentID = 8
        Index = 5
        Version = 1
      end
      object trvCategoryRow7: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Reten'#231#227'o'
        ID = 17
        ParentID = 8
        Index = 6
        Version = 1
      end
      object trvDBEditorRow51: TcxDBEditorRow
        Properties.Caption = 'COFINS'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BORETENCAOCOFINS'
        ID = 18
        ParentID = 17
        Index = 0
        Version = 1
      end
      object trvDBEditorRow40: TcxDBEditorRow
        Properties.Caption = 'Contribui'#231#227'o Social'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BORETENCAOCONTRIBSOCIAL'
        ID = 19
        ParentID = 17
        Index = 1
        Version = 1
      end
      object trvDBEditorRow36: TcxDBEditorRow
        Properties.Caption = 'INSS'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BORETENCAOINSS'
        ID = 20
        ParentID = 17
        Index = 2
        Version = 1
      end
      object trvDBEditorRow33: TcxDBEditorRow
        Properties.Caption = 'IRRF'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BORETENCAOIRRF'
        ID = 21
        ParentID = 17
        Index = 3
        Version = 1
      end
      object trvDBEditorRow3: TcxDBEditorRow
        Properties.Caption = 'ISS'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BORETENCAOISS'
        ID = 22
        ParentID = 17
        Index = 4
        Version = 1
      end
      object trvDBEditorRow43: TcxDBEditorRow
        Properties.Caption = 'PIS'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'boretencaopis'
        ID = 23
        ParentID = 17
        Index = 5
        Version = 1
      end
      object trvCategoryRow3: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'CFOP'
        ID = 24
        ParentID = -1
        Index = 2
        Version = 1
      end
      object trvCategoryRow5: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Dentro da Unidade Federativa do Emitente'
        ID = 25
        ParentID = 24
        Index = 0
        Version = 1
      end
      object trvCDCFOPDUF: TcxDBEditorRow
        Properties.Caption = 'Sem Substitui'#231#227'o Tribut'#225'ria'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDCFOP'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMCFOP2'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDCFOPDUF'
        ID = 26
        ParentID = 25
        Index = 0
        Version = 1
      end
      object trvCDCFOPDUFSUBTRIB: TcxDBEditorRow
        Properties.Caption = 'Com Substitui'#231#227'o Tribut'#225'ria'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDCFOP'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMCFOP2'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDCFOPDUFSUBTRIB'
        ID = 27
        ParentID = 25
        Index = 1
        Version = 1
      end
      object trvCategoryRow4: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Fora da Unidade Federativa do Emitente'
        ID = 28
        ParentID = 24
        Index = 1
        Version = 1
      end
      object trvCDCFOPFUF: TcxDBEditorRow
        Properties.Caption = 'Sem Substitui'#231#227'o Tribut'#225'ria'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDCFOP'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMCFOP2'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDCFOPFUF'
        ID = 29
        ParentID = 28
        Index = 0
        Version = 1
      end
      object trvCDCFOPFUFSUBTRIB: TcxDBEditorRow
        Properties.Caption = 'Com Substitui'#231#227'o Tribut'#225'ria'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDCFOP'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMCFOP2'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDCFOPFUFSUBTRIB'
        ID = 30
        ParentID = 28
        Index = 1
        Version = 1
      end
      object trvCategoryRow6: TcxCategoryRow
        Properties.Caption = 'Itens'
        ID = 31
        ParentID = -1
        Index = 3
        Version = 1
      end
      object trvDBEditorRow7: TcxDBEditorRow
        Properties.Caption = 'Data de Fabrica'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODTFABRICACAO'
        ID = 32
        ParentID = 31
        Index = 0
        Version = 1
      end
      object trvDBEditorRow6: TcxDBEditorRow
        Properties.Caption = 'Data de Validade'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODTVALIDADE'
        ID = 33
        ParentID = 31
        Index = 1
        Version = 1
      end
      object trvDBEditorRow5: TcxDBEditorRow
        Properties.Caption = 'Informa'#231#227'o Adicional'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOINFADICIONAL'
        ID = 34
        ParentID = 31
        Index = 2
        Version = 1
      end
      object trvDBEditorRow9: TcxDBEditorRow
        Properties.Caption = 'Inser'#231#227'o C'#243'digo Barras'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOINSERCAOCDBARRA'
        ID = 35
        ParentID = 31
        Index = 3
        Version = 1
      end
      object trvDBEditorRow8: TcxDBEditorRow
        Properties.Caption = 'Markup'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMARKUP'
        ID = 36
        ParentID = 31
        Index = 4
        Version = 1
      end
      object trvBOORDPRODUCAO: TcxDBEditorRow
        Properties.Caption = 'Ordem de Produ'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOORDPRODUCAO'
        ID = 37
        ParentID = 31
        Index = 5
        Version = 1
      end
      object trvDBEditorRow10: TcxDBEditorRow
        Properties.Caption = 'Porcentagem Lucro'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'bolucro'
        ID = 38
        ParentID = 31
        Index = 6
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
    Left = 520
    DockControlHeights = (
      0
      0
      0
      0)
    object dxbrManager1Bar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'tpentrada'
      CaptionButtons = <>
      DockControl = dxbrdckcntrl1
      DockedDockControl = dxbrdckcntrl1
      DockedLeft = 0
      DockedTop = 25
      FloatLeft = 369
      FloatTop = 161
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
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxbrManager1Bar1: TdxBar
      Caption = 'menu'
      CaptionButtons = <>
      DockControl = dxbrdckcntrl1
      DockedDockControl = dxbrdckcntrl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 59
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
    object dxbrsprtr2: TdxBarSeparator
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
