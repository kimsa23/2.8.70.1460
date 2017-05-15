object frmtpfaturamento: Tfrmtpfaturamento
  Left = 596
  Top = 157
  ClientHeight = 643
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
  object pnl: TcxLabel
    Left = 0
    Top = 63
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
  object pnl1: TPanel
    Left = 0
    Top = 86
    Width = 947
    Height = 557
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 6
    object Label1: TLabel
      Left = 5
      Top = 0
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label3: TLabel
      Left = 72
      Top = 0
      Width = 28
      Height = 13
      Caption = 'Nome'
      Transparent = True
    end
    object bvl1: TBevel
      Left = 0
      Top = 0
      Width = 947
      Height = 41
      Align = alTop
      ExplicitWidth = 1035
    end
    object edtcodigo: TcxTextEdit
      Left = 5
      Top = 14
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
      Top = 14
      DataBinding.DataField = 'NMTPFATURAMENTO'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edtnomePropertiesChange
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnKeyPress = nextcontrol
      Width = 505
    end
    object vgr: TcxDBVerticalGrid
      Left = 0
      Top = 41
      Width = 947
      Height = 516
      Align = alClient
      LayoutStyle = lsBandsView
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      OptionsView.RowHeaderWidth = 328
      Navigator.Buttons.CustomButtons = <>
      TabOrder = 2
      DataController.DataSource = dts
      Version = 1
      object vgrDBEditorRow2: TcxDBEditorRow
        Properties.Caption = 'Cliente'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCLIENTE'
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object vgrDBEditorRow3: TcxDBEditorRow
        Properties.Caption = 'Data Vencimento Fixa'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODTVENCIMENTOFIXA'
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object vgrCDEVENTOEMAIL: TcxDBEditorRow
        Properties.Caption = 'Email'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDEVENTOEMAIL'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMEVENTOEMAIL'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDEVENTOEMAIL'
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object vgrDBEditorRow5: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Pedido'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPEDIDO'
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      object vgrDBEditorRow8: TcxDBEditorRow
        Properties.Caption = 'Condi'#231#227'o Pagamento'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDCONDPAGTO'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMCONDPAGTO'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDCONDPAGTO'
        ID = 4
        ParentID = 3
        Index = 0
        Version = 1
      end
      object vgrDBEditorRow11: TcxDBEditorRow
        Properties.Caption = 'Produto Mensalidade'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDPRODUTO'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMPRODUTO'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDPRODUTOMENSALIDADE'
        ID = 5
        ParentID = 3
        Index = 1
        Version = 1
      end
      object vgrDBEditorRow14: TcxDBEditorRow
        Properties.Caption = 'Tipo Cobran'#231'a'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDTPCOBRANCA'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMTPCOBRANCA'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDTPCOBRANCA'
        ID = 6
        ParentID = 3
        Index = 2
        Version = 1
      end
      object vgrDBEditorRow16: TcxDBEditorRow
        Properties.Caption = 'Tipo Mensalidade'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDTPPEDIDO'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMTPPEDIDO'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDTPPEDIDOMENSALIDADE'
        ID = 7
        ParentID = 3
        Index = 3
        Version = 1
      end
      object vgrDBEditorRow29: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Campanha'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCAMPANHA'
        ID = 8
        ParentID = 3
        Index = 4
        Version = 1
      end
      object vgCDTPPEDIDOCAMPANHA: TcxDBEditorRow
        Properties.Caption = 'Tipo de Pedido'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDTPPEDIDO'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMTPPEDIDO'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDTPPEDIDOCAMPANHA'
        ID = 9
        ParentID = 8
        Index = 0
        Version = 1
      end
      object vgrDBEditorRow26: TcxDBEditorRow
        Properties.Caption = 'Tipo Arquivo'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDTPPEDIDO'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMTPPEDIDO'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDTPPEDIDOARQUIVO'
        ID = 10
        ParentID = 3
        Index = 5
        Version = 1
      end
      object vgrDBEditorRow20: TcxDBEditorRow
        Properties.Caption = 'N'#250'mero dias car'#234'ncia Mensalidade'
        Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
        Properties.DataBinding.FieldName = 'NUDIASCARENCIAMENSALIDADE'
        ID = 11
        ParentID = 3
        Index = 6
        Version = 1
      end
      object vgrDBEditorRow6: TcxDBEditorRow
        Properties.Caption = 'Per'#237'odo'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPERIODO'
        ID = 12
        ParentID = -1
        Index = 4
        Version = 1
      end
      object vgrDBEditorRow7: TcxDBEditorRow
        Properties.Caption = 'Produto'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTO'
        ID = 13
        ParentID = -1
        Index = 5
        Version = 1
      end
      object vgrDBEditorRow19: TcxDBEditorRow
        Properties.Caption = 'N'#250'mero Dias'
        Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
        Properties.DataBinding.FieldName = 'NUDIA'
        ID = 14
        ParentID = -1
        Index = 6
        Version = 1
      end
      object vgrCDROTA: TcxDBEditorRow
        Properties.Caption = 'Rota para impress'#227'o de Boletos'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDROTA'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMROTA'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDROTA'
        ID = 15
        ParentID = -1
        Index = 7
        Version = 1
      end
      object vgCDTPSAIDA: TcxDBEditorRow
        Properties.Caption = 'Tipo Nota Fiscal'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDTPSAIDA'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMTPSAIDA'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDTPSAIDA'
        ID = 16
        ParentID = -1
        Index = 8
        Version = 1
      end
      object vgrDBEditorRow21: TcxDBEditorRow
        Properties.Caption = 'Valor Acr'#233'scimo'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.EditProperties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Properties.DataBinding.FieldName = 'VLACRESCIMO'
        ID = 17
        ParentID = -1
        Index = 9
        Version = 1
      end
      object vgrDBEditorRow22: TcxDBEditorRow
        Properties.Caption = 'Valor M'#237'nimo'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.EditProperties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Properties.DataBinding.FieldName = 'VLMINIMO'
        ID = 18
        ParentID = -1
        Index = 10
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
      Visible = True
      WholeRow = False
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
