object frmManagerproduto: TfrmManagerproduto
  Left = 320
  Top = 96
  ClientHeight = 481
  ClientWidth = 1053
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
  object pnl: TPanel
    Left = 0
    Top = 59
    Width = 1053
    Height = 19
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = 'Gerenciador de Produto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 246
    Top = 78
    Width = 807
    Height = 403
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 119
    ExplicitHeight = 362
    object grd: TcxGrid
      Left = 0
      Top = 22
      Width = 807
      Height = 381
      Align = alClient
      DragMode = dmAutomatic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      object tbv: TcxGridDBTableView
        DragMode = dmAutomatic
        OnKeyDown = tbvKeyDown
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.PriorPage.Enabled = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.NextPage.Enabled = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Insert.Enabled = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Enabled = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Cancel.Visible = True
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
        OnCellDblClick = tbvCellDblClick
        OnCustomDrawCell = tbvCustomDrawCell
        DataController.DataSource = dtsproduto
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'QTESTOQUE'
            Column = tbvQTESTOQUE
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsSelection.MultiSelect = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tbvCDPRODUTO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CDPRODUTO'
          Options.Editing = False
          Options.Focusing = False
          Styles.Content = dtmmain.cxStyle1
        end
        object tbvNMPRODUTO: TcxGridDBColumn
          Caption = 'Nome'
          DataBinding.FieldName = 'NMPRODUTO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.CharCase = ecUpperCase
          Width = 250
        end
        object tbvBOATIVAR: TcxGridDBColumn
          Caption = 'Ativado'
          DataBinding.FieldName = 'BOATIVAR'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Width = 45
        end
        object tbvCDUNIDADE: TcxGridDBColumn
          Caption = 'Unid'
          DataBinding.FieldName = 'CDUNIDADE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 350
          Properties.KeyFieldNames = 'CDUNIDADE'
          Properties.ListColumns = <
            item
              FieldName = 'NMUNIDADE'
            end>
          Properties.ListOptions.RowSelect = False
          Width = 30
        end
        object tbvCDTPPRODUTO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'CDTPPRODUTO'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 350
          Properties.KeyFieldNames = 'CDTPPRODUTO'
          Properties.ListColumns = <
            item
              FieldName = 'NMTPPRODUTO'
            end>
          Properties.ListOptions.ShowHeader = False
        end
        object tbvCDALTERNATIVO: TcxGridDBColumn
          Caption = 'Cd Alternativo'
          DataBinding.FieldName = 'CDALTERNATIVO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.CharCase = ecUpperCase
          Width = 90
        end
        object tbvQTESTOQUE: TcxGridDBColumn
          Caption = 'Estoque'
          DataBinding.FieldName = 'QTESTOQUE'
          Options.Editing = False
        end
        object tbvQTESTMIN: TcxGridDBColumn
          Caption = 'Est M'#237'nimo'
          DataBinding.FieldName = 'QTESTMIN'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 70
        end
        object tbvQTESTMAX: TcxGridDBColumn
          Caption = 'Est M'#225'ximo'
          DataBinding.FieldName = 'QTESTMAX'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 70
        end
        object tbvVLVENDA: TcxGridDBColumn
          Caption = 'Vl Venda'
          DataBinding.FieldName = 'VLVENDA'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Width = 80
        end
        object tbvVLATACADO: TcxGridDBColumn
          Caption = 'Vl Atacado'
          DataBinding.FieldName = 'VLATACADO'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Width = 80
        end
        object tbvVLESPECIAL: TcxGridDBColumn
          Caption = 'Vl Especial'
          DataBinding.FieldName = 'VLESPECIAL'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Width = 80
        end
        object tbvVLCUSTO: TcxGridDBColumn
          Caption = 'Vl Custo'
          DataBinding.FieldName = 'VLCUSTO'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Width = 80
        end
        object tbvVLCUSTOMEDIO: TcxGridDBColumn
          Caption = 'Custo M'#233'dio'
          DataBinding.FieldName = 'VLCUSTOMEDIO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Editing = False
        end
        object tbvCDTPITEM: TcxGridDBColumn
          Caption = 'Tipo '#205'tem'
          DataBinding.FieldName = 'CDTPITEM'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 350
          Properties.KeyFieldNames = 'CDTPITEM'
          Properties.ListColumns = <
            item
              FieldName = 'NMTPITEM'
            end>
          Properties.ListOptions.ShowHeader = False
          Width = 120
        end
        object tbvNUCLFISCAL: TcxGridDBColumn
          Caption = 'NCM'
          DataBinding.FieldName = 'NUCLFISCAL'
          Width = 65
        end
        object tbvCDORIGEM: TcxGridDBColumn
          Caption = 'Origem'
          DataBinding.FieldName = 'CDORIGEM'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 350
          Properties.KeyFieldNames = 'CDORIGEM'
          Properties.ListColumns = <
            item
              FieldName = 'NMORIGEM'
            end>
          Properties.ListOptions.ShowHeader = False
        end
        object tbvNUSTICMS: TcxGridDBColumn
          Caption = 'ST ICMS'
          DataBinding.FieldName = 'NUSTICMS'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 350
          Properties.KeyFieldNames = 'NUSTICMS'
          Properties.ListColumns = <
            item
              FieldName = 'NMSTICMS'
            end>
          Properties.ListOptions.ShowHeader = False
          Width = 100
        end
        object tbvPSLIQUIDO: TcxGridDBColumn
          Caption = 'Peso L'#237'quido'
          DataBinding.FieldName = 'PSLIQUIDO'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 80
        end
        object tbvPSBRUTO: TcxGridDBColumn
          Caption = 'Peso Bruto'
          DataBinding.FieldName = 'PSBRUTO'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 80
        end
        object tbvQTPOLEGADA: TcxGridDBColumn
          Caption = 'Polegada'
          DataBinding.FieldName = 'QTPOLEGADA'
          Width = 70
        end
        object tbvQTESPESSURA: TcxGridDBColumn
          Caption = 'Espessura'
          DataBinding.FieldName = 'QTESPESSURA'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 70
        end
        object tbvQTLARGURA: TcxGridDBColumn
          Caption = 'Largura'
          DataBinding.FieldName = 'QTLARGURA'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 70
        end
        object tbvQTCOMPRIMENTO: TcxGridDBColumn
          Caption = 'Comprimento'
          DataBinding.FieldName = 'QTCOMPRIMENTO'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 80
        end
        object tbvCDMATERIAL: TcxGridDBColumn
          Caption = 'Material'
          DataBinding.FieldName = 'CDMATERIAL'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 350
          Properties.KeyFieldNames = 'CDMATERIAL'
          Properties.ListColumns = <
            item
              FieldName = 'NMMATERIAL'
            end>
          Properties.ListOptions.ShowHeader = False
          Width = 80
        end
        object tbvCDNORMA: TcxGridDBColumn
          Caption = 'Norma'
          DataBinding.FieldName = 'CDNORMA'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 350
          Properties.KeyFieldNames = 'CDNORMA'
          Properties.ListColumns = <
            item
              FieldName = 'NMNORMA'
            end>
          Properties.ListOptions.ShowHeader = False
          Width = 80
        end
        object tbvCDFORMA: TcxGridDBColumn
          Caption = 'Forma'
          DataBinding.FieldName = 'CDFORMA'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 350
          Properties.KeyFieldNames = 'CDFORMA'
          Properties.ListColumns = <
            item
              FieldName = 'NMFORMA'
            end>
          Properties.ListOptions.ShowHeader = False
          Width = 80
        end
        object tbvDSTAG1: TcxGridDBColumn
          Caption = 'Tag 1'
          DataBinding.FieldName = 'DSTAG1'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.CharCase = ecUpperCase
          Width = 80
        end
        object tbvDSTAG2: TcxGridDBColumn
          Caption = 'Tag 2'
          DataBinding.FieldName = 'DSTAG2'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.CharCase = ecUpperCase
          Width = 80
        end
      end
      object grdLevel1: TcxGridLevel
        GridView = tbv
      end
    end
    object dxBarDockControl2: TdxBarDockControl
      Left = 0
      Top = 0
      Width = 807
      Height = 22
      Align = dalTop
      BarManager = bmg1
    end
  end
  object spl1: TcxSplitter
    Left = 238
    Top = 78
    Width = 8
    Height = 403
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = trv
  end
  object trv: TcxTreeView
    Left = 0
    Top = 78
    Width = 238
    Height = 403
    Align = alLeft
    PopupMenu = pum
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 7
    OnClick = trvClick
    OnDragDrop = trvDragDrop
    OnDragOver = trvDragOver
    HideSelection = False
    Images = dtmmain.ImageList1
    ReadOnly = True
    RowSelect = True
    OnChange = trvChange
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 352
    Top = 4
    object actatualizar: TAction
      Caption = 'Atualizar'
      Hint = 'Atualizar'
      ImageIndex = 12
      ShortCut = 116
      OnExecute = actatualizarExecute
    end
    object actnovo: TAction
      Caption = 'Novo'
      ImageIndex = 0
      OnExecute = actnovoExecute
    end
    object actnovoproduto: TAction
      Caption = 'Novo Produto'
      ImageIndex = 0
      OnExecute = actnovoprodutoExecute
    end
    object actexcluir: TAction
      Caption = 'Excluir'
      ImageIndex = 5
      OnExecute = actexcluirExecute
    end
    object actabrirproduto: TAction
      Hint = 'produto'
      ImageIndex = 24
      OnExecute = actabrirprodutoExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actrenomear: TAction
      Caption = 'Renomear'
      ImageIndex = 127
      OnExecute = actrenomearExecute
    end
    object actexportarpdv: TAction
      Caption = 'Exportar PDV'
      OnExecute = actexportarpdvExecute
    end
    object Actviewgroup: TAction
      AutoCheck = True
      Caption = 'Agrupar'
      Hint = 'Agrupar'
      ImageIndex = 54
      OnExecute = ActviewgroupExecute
    end
    object actfiltro: TAction
      AutoCheck = True
      Caption = 'Filtro'
      Hint = 'Filtro'
      ImageIndex = 13
      OnExecute = actfiltroExecute
    end
    object actaplicarconfiguracaogrupo: TAction
      Caption = 'Aplicar configura'#231#227'o ao(s) grupo(s) filho(s)'
      ImageIndex = 69
      OnExecute = actaplicarconfiguracaogrupoExecute
    end
    object actaplicarconfiguracaoproduto: TAction
      Caption = 'Aplicar configura'#231#227'o a todos os produtos'
      ImageIndex = 24
      OnExecute = actaplicarconfiguracaoprodutoExecute
    end
    object actaplicarconfiguracaoprodutogrupo: TAction
      Caption = 'Aplicar configura'#231#227'o ao(s) produto(s) deste grupo'
      ImageIndex = 24
      OnExecute = actaplicarconfiguracaoprodutogrupoExecute
    end
    object actlocalizarproduto: TAction
      Caption = 'Localizar Produto'
      Hint = 'Localizar Produto'
      ImageIndex = 90
      OnExecute = actlocalizarprodutoExecute
    end
    object actmetodoprocesso: TAction
      Caption = 'M'#233'todo Processo'
      Hint = 'M'#233'todo Processo'
      ImageIndex = 24
      Visible = False
      OnExecute = actmetodoprocessoExecute
    end
    object actzerarestoque: TAction
      Caption = 'Zerar Estoque'
      OnExecute = actzerarestoqueExecute
    end
    object actzerarestoquesubgrupo: TAction
      Caption = 'Zerar Estoque de subgrupos'
      OnExecute = actzerarestoquesubgrupoExecute
    end
    object actexcel: TAction
      Hint = 'Exportar para Excel'
      ImageIndex = 15
      OnExecute = actexcelExecute
    end
    object actgrupopropriedade: TAction
      Caption = 'Propriedade'
      OnExecute = actgrupopropriedadeExecute
    end
    object actgrupotpcliente: TAction
      Caption = 'Tipo Cliente'
      OnExecute = actgrupotpclienteExecute
    end
  end
  object pum: TPopupMenu
    Images = dtmmain.imlMain
    OnPopup = pumPopup
    Left = 415
    Top = 4
    object Novo1: TMenuItem
      Action = actnovo
    end
    object Renomear2: TMenuItem
      Action = actrenomear
    end
    object Excluir1: TMenuItem
      Action = actexcluir
    end
    object ExportarPDV1: TMenuItem
      Action = actexportarpdv
    end
    object AplicarconfiguraoProduto1: TMenuItem
      Action = actaplicarconfiguracaoproduto
    end
    object Aplicarconfiguraoaosprodutosdestegrupo1: TMenuItem
      Action = actaplicarconfiguracaoprodutogrupo
    end
    object AplicarConfiguraoaosgruposfilhos1: TMenuItem
      Action = actaplicarconfiguracaogrupo
    end
    object NovoProduto1: TMenuItem
      Action = actnovoproduto
    end
    object ZerarEstoque1: TMenuItem
      Action = actzerarestoque
    end
    object ZerarEstoquedesubgrupos1: TMenuItem
      Action = actzerarestoquesubgrupo
    end
    object Propriedade1: TMenuItem
      Action = actgrupopropriedade
    end
    object ipoCliente1: TMenuItem
      Action = actgrupotpcliente
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
    Left = 208
    Top = 4
    DockControlHeights = (
      0
      0
      59
      0)
    object dxbrManager1Bar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'adqimanager'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 21
      DockingStyle = dsTop
      FloatLeft = 369
      FloatTop = 161
      FloatClientWidth = 62
      FloatClientHeight = 320
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnNovo'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnexcluir'
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
      BorderStyle = bbsNone
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
    object bmg1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'tblproduto'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 235
      FloatTop = 70
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'btnfiltro'
        end
        item
          Visible = True
          ItemName = 'btnviewgroup'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
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
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnNovo'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnexcluir'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnfechar'
        end>
    end
    object dxbrlrgbtnNovo: TdxBarLargeButton
      Action = actnovo
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnexcluir: TdxBarLargeButton
      Action = actexcluir
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnimprimir: TdxBarLargeButton
      Caption = 'Grupo de Produtos'
      Category = 0
      Hint = 'Grupo de Produtos'
      Visible = ivAlways
      AutoGrayScale = False
    end
    object dxbrlrgbtnfechar: TdxBarLargeButton
      Action = actfechar
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actatualizar
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actrenomear
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actlocalizarproduto
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = actmetodoprocesso
      Category = 0
    end
    object btnviewgroup: TdxBarButton
      Action = Actviewgroup
      Category = 0
      ButtonStyle = bsChecked
    end
    object btnfiltro: TdxBarButton
      Action = actfiltro
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton4: TdxBarButton
      Action = actlocalizarproduto
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = actmetodoprocesso
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = actnovoproduto
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = actexcel
      Category = 0
    end
  end
  object dtsproduto: TDataSource
    Left = 876
    Top = 214
  end
  object pm1: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <>
    UseOwnFont = False
    Left = 467
    Top = 4
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 276
    Top = 4
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      TextColor = clBlue
    end
  end
end
