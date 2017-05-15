object frmManagerAutPagto: TfrmManagerAutPagto
  Left = 433
  Top = 226
  BorderStyle = bsSingle
  ClientHeight = 496
  ClientWidth = 909
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
  object grd: TcxGrid
    Left = 0
    Top = 76
    Width = 909
    Height = 420
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    LookAndFeel.NativeStyle = False
    object tbv: TcxGridDBTableView
      OnKeyDown = tbvKeyDown
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.PriorPage.Enabled = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.NextPage.Enabled = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Insert.Enabled = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Enabled = False
      Navigator.Buttons.Delete.Enabled = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Enabled = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Enabled = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Enabled = False
      Navigator.Buttons.Cancel.Visible = False
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
      DataController.DataSource = dts
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skCount
          Position = spFooter
          FieldName = 'CDAUTPAGTO'
          Column = tbvCDAUTPAGTO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'VLABATIMENTO'
          Column = tbvVLABATIMENTO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'VLAUTPAGTO'
          Column = tbvVLAUTPAGTO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'VLBAIXA'
          Column = tbvVLBAIXA
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'VLDESCONTO'
          Column = tbvVLDESCONTO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'VLDEVOLUCAO'
          Column = tbvVLDEVOLUCAO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'VLJUROS'
          Column = tbvVLJUROS
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'VLMULTA'
          Column = tbvVLMULTA
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'VLRECEBIDO'
          Column = tbvVLRECEBIDO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          Position = spFooter
          FieldName = 'VLSALDO'
          Column = tbvVLSALDO
        end
        item
          Kind = skCount
          Position = spFooter
          FieldName = 'NUDUPLICATA'
          Column = tbvNUDUPLICATA
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'CDAUTPAGTO'
          Column = tbvCDAUTPAGTO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLABATIMENTO'
          Column = tbvVLABATIMENTO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLAUTPAGTO'
          Column = tbvVLAUTPAGTO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLBAIXA'
          Column = tbvVLBAIXA
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLDESCONTO'
          Column = tbvVLDESCONTO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLDEVOLUCAO'
          Column = tbvVLDEVOLUCAO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLJUROS'
          Column = tbvVLJUROS
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLMULTA'
          Column = tbvVLMULTA
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLRECEBIDO'
          Column = tbvVLRECEBIDO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLSALDO'
          Column = tbvVLSALDO
        end
        item
          Kind = skCount
          FieldName = 'NUDUPLICATA'
          Column = tbvNUDUPLICATA
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Clique aqui para definir um filtro'
      FilterRow.ApplyChanges = fracImmediately
      OptionsBehavior.NavigatorHints = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.NoDataToDisplayInfoText = 'Sem dados para exibir'
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      object tbvCDAUTPAGTO: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'CDAUTPAGTO'
        Styles.Content = dtmmain.cxStyle1
        Width = 54
      end
      object tbvNUDUPLICATA: TcxGridDBColumn
        Caption = 'Documento'
        DataBinding.FieldName = 'NUDUPLICATA'
        Width = 71
      end
      object tbvCDFORNECEDOR: TcxGridDBColumn
        Caption = 'Cd'
        DataBinding.FieldName = 'CDFORNECEDOR'
        Styles.Content = dtmmain.cxStyle1
        Width = 90
      end
      object tbvRZSOCIAL: TcxGridDBColumn
        Caption = 'Fornecedor'
        DataBinding.FieldName = 'RZSOCIAL'
        Width = 128
      end
      object tbvDSHISTORICO: TcxGridDBColumn
        Caption = 'Hist'#243'rico'
        DataBinding.FieldName = 'DSHISTORICO'
        Width = 150
      end
      object tbvNMTPCOBRANCA: TcxGridDBColumn
        Caption = 'Tipo Cobran'#231'a'
        DataBinding.FieldName = 'NMTPCOBRANCA'
        Width = 112
      end
      object tbvCDCNTCUSTO: TcxGridDBColumn
        Caption = 'Centro Custo'
        DataBinding.FieldName = 'CDCNTCUSTO'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'CDCNTCUSTO'
        Properties.ListColumns = <
          item
            FieldName = 'NMCNTCUSTO'
          end>
        Properties.ListOptions.ShowHeader = False
        Width = 100
      end
      object tbvCDPLCONTA: TcxGridDBColumn
        Caption = 'Plano Contas'
        DataBinding.FieldName = 'CDPLCONTA'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'CDPLCONTA'
        Properties.ListColumns = <
          item
            FieldName = 'NUPLCONTA'
          end>
        Width = 168
      end
      object tbvDTEMISSAO: TcxGridDBColumn
        Caption = 'Emiss'#227'o'
        DataBinding.FieldName = 'DTEMISSAO'
        Width = 65
      end
      object tbvDTVENCIMENTO: TcxGridDBColumn
        Caption = 'Vencimento'
        DataBinding.FieldName = 'DTVENCIMENTO'
      end
      object tbvDTBAIXA: TcxGridDBColumn
        Caption = 'Dt Baixa'
        DataBinding.FieldName = 'DTBAIXA'
      end
      object tbvVLAUTPAGTO: TcxGridDBColumn
        Caption = 'Valor'
        DataBinding.FieldName = 'VLAUTPAGTO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object tbvVLSALDO: TcxGridDBColumn
        Caption = 'Saldo'
        DataBinding.FieldName = 'VLSALDO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object tbvVLBAIXA: TcxGridDBColumn
        Caption = 'Baixa'
        DataBinding.FieldName = 'VLBAIXA'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object tbvVLMULTA: TcxGridDBColumn
        Caption = 'Multa'
        DataBinding.FieldName = 'VLMULTA'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 64
      end
      object tbvVLJUROS: TcxGridDBColumn
        Caption = 'Juros'
        DataBinding.FieldName = 'VLJUROS'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 64
      end
      object tbvVLDESCONTO: TcxGridDBColumn
        Caption = 'Desconto'
        DataBinding.FieldName = 'VLDESCONTO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 64
      end
      object tbvVLDEVOLUCAO: TcxGridDBColumn
        Caption = 'Devolu'#231#227'o'
        DataBinding.FieldName = 'VLDEVOLUCAO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 64
      end
      object tbvVLABATIMENTO: TcxGridDBColumn
        Caption = 'Abatimento'
        DataBinding.FieldName = 'VLABATIMENTO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 64
      end
      object tbvVLRECEBIDO: TcxGridDBColumn
        Caption = 'Recebido'
        DataBinding.FieldName = 'VLRECEBIDO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object tbvNMSTAUTPAGTO: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'NMSTAUTPAGTO'
        Width = 55
      end
      object tbvDTPRORROGACAO: TcxGridDBColumn
        Caption = 'Prorrogacao'
        DataBinding.FieldName = 'DTPRORROGACAO'
        Visible = False
      end
      object tbvPRMORADIARIA: TcxGridDBColumn
        Caption = 'Mora'
        DataBinding.FieldName = 'PRMORADIARIA'
        Width = 30
      end
      object tbvNUCOR: TcxGridDBColumn
        DataBinding.FieldName = 'NUCOR'
        Visible = False
      end
      object tbvNUCORCONTA: TcxGridDBColumn
        DataBinding.FieldName = 'NUCORCONTA'
        Visible = False
      end
      object tbvPRMULTA: TcxGridDBColumn
        Caption = '% Multa'
        DataBinding.FieldName = 'PRMULTA'
      end
      object tbvnmusuario: TcxGridDBColumn
        Caption = 'Aprovado pagamento por'
        DataBinding.FieldName = 'nmusuario'
        Width = 200
      end
      object tbvtsaprovacao: TcxGridDBColumn
        Caption = 'Aprovado em'
        DataBinding.FieldName = 'tsaprovacao'
        Width = 120
      end
    end
    object grf: TcxGridDBChartView
      Categories.DataBinding.FieldName = 'DIA'
      Categories.DisplayText = 'Dia'
      DataController.DataSource = dtsgrafico
      DiagramArea.AxisValue.TickMarkKind = tmkCross
      DiagramArea.Styles.ValueCaptions = dtmmain.cxStyle1
      DiagramArea.Values.CaptionPosition = ldvcpAbove
      DiagramBar.Styles.ValueCaptions = dtmmain.cxStyle1
      DiagramBar.Values.CaptionPosition = cdvcpOutsideEnd
      DiagramColumn.Active = True
      DiagramColumn.Styles.ValueCaptions = dtmmain.cxStyle1
      DiagramColumn.Values.CaptionPosition = cdvcpInsideEnd
      DiagramLine.Styles.ValueCaptions = dtmmain.cxStyle1
      DiagramLine.Values.CaptionPosition = ldvcpAbove
      DiagramPie.Styles.ValueCaptions = dtmmain.cxStyle1
      DiagramPie.Values.CaptionPosition = pdvcpOutsideEnd
      DiagramPie.Values.CaptionItems = [pdvciCategory, pdvciValue, pdvciPercentage]
      DiagramStackedArea.Styles.ValueCaptions = dtmmain.cxStyle1
      DiagramStackedBar.Styles.ValueCaptions = dtmmain.cxStyle1
      DiagramStackedColumn.Styles.ValueCaptions = dtmmain.cxStyle1
      DiagramStackedColumn.Values.CaptionPosition = cdvcpCenter
      Title.Text = 'Mensal'
      ToolBox.Border = tbNone
      ToolBox.CustomizeButton = True
      ToolBox.DataLevelsInfoVisible = dlivAlways
      ToolBox.DiagramSelector = True
      ToolBox.Visible = tvAlways
      OnGetValueHint = grfGetValueHint
      object grfDataGroup1: TcxGridDBChartDataGroup
        DataBinding.FieldName = 'DIA'
        DisplayText = 'Data'
        SortOrder = soNone
        Visible = False
      end
      object grfDespesa: TcxGridDBChartSeries
        DataBinding.FieldName = 'VLDESPESA'
        DisplayText = 'Despesa'
      end
      object grfReceita: TcxGridDBChartSeries
        DataBinding.FieldName = 'VLRECEITA'
        DisplayText = 'Receita'
        GroupIndex = 1
      end
      object grfValor: TcxGridDBChartSeries
        DataBinding.FieldName = 'VALOR'
        DisplayText = 'Valor'
      end
    end
    object lvl: TcxGridLevel
      GridView = tbv
    end
  end
  object act: TActionManager
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 721
    Top = 179
    StyleName = 'XP Style'
    object actAbrirAutPagto: TAction
      Hint = 'autpagto'
      ImageIndex = 31
      OnExecute = actAbrirAutPagtoExecute
    end
    object actabrircliente: TAction
      Hint = 'cliente'
      OnExecute = actabrirclienteExecute
    end
    object actabrirduplicata: TAction
      Hint = 'duplicata'
      ImageIndex = 32
      OnExecute = actabrirduplicataExecute
    end
    object actabrirfornecedor: TAction
      Hint = 'fornecedor'
      OnExecute = actabrirfornecedorExecute
    end
    object actImprimir: TAction
      Caption = 'Imprimir'
      Hint = 'Imprimir'
      ImageIndex = 3
      OnExecute = actImprimirExecute
    end
    object actAtualizar: TAction
      Caption = 'Atualizar'
      Hint = 'Atualizar'
      ImageIndex = 12
      OnExecute = actAtualizarExecute
    end
    object actbaixa: TAction
      Caption = 'Baixa'
      ImageIndex = 22
      ShortCut = 16450
      OnExecute = actbaixaExecute
    end
    object actListagemAutPagto: TAction
      Caption = 'Listagem Contas a Pagar'
      Hint = 'Listagem Contas a Pagar'
      ImageIndex = 31
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actduplicata: TAction
      AutoCheck = True
      Caption = 'Receber'
      ImageIndex = 32
      OnExecute = actduplicataExecute
    end
    object actautpagto: TAction
      AutoCheck = True
      Caption = 'Pagar'
      ImageIndex = 31
      OnExecute = actautpagtoExecute
    end
    object actgrafico: TAction
      AutoCheck = True
      Caption = 'Gr'#225'fico'
      ImageIndex = 157
      OnExecute = actgraficoExecute
    end
    object actviewgroup: TAction
      AutoCheck = True
      Caption = 'Agrupar'
      Hint = 'Agrupar'
      ImageIndex = 54
      OnExecute = actviewgroupExecute
    end
    object actfiltro: TAction
      AutoCheck = True
      Caption = 'Filtro'
      ImageIndex = 13
      OnExecute = actfiltroExecute
    end
    object actimprimirautorizacaopagamento: TAction
      Caption = '500 - Autoriza'#231#227'o Pagamento'
      Visible = False
      OnExecute = actimprimirautorizacaopagamentoExecute
    end
    object actexcel: TAction
      Caption = 'Excel'
      ImageIndex = 15
      OnExecute = actexcelExecute
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
    Left = 749
    Top = 179
    DockControlHeights = (
      0
      0
      76
      0)
    object dxbrManager1Bar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'mautpagto'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 392
      FloatTop = 299
      FloatClientWidth = 62
      FloatClientHeight = 494
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnautpagto'
        end
        item
          Visible = True
          ItemName = 'btnduplicata'
        end
        item
          Visible = True
          ItemName = 'btngrafico'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
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
          ItemName = 'dxBarLargeButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'cbxstatus'
        end
        item
          Visible = True
          ItemName = 'cbxtpdata'
        end
        item
          Visible = True
          ItemName = 'edtdtinicio'
        end
        item
          Visible = True
          ItemName = 'edtdtfinal'
        end
        item
          Visible = True
          ItemName = 'cbxgrafico'
        end
        item
          Visible = True
          ItemName = 'cbxfaixa'
        end
        item
          Visible = True
          ItemName = 'cbxvalor'
        end
        item
          Visible = True
          ItemName = 'ckbsaldoconta'
        end
        item
          Visible = True
          ItemName = 'ckbbopedidoordcompra'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnfechar'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrlrgbtnfechar: TdxBarLargeButton
      Action = actfechar
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actAtualizar
      Category = 0
    end
    object btnfiltrar: TdxBarLargeButton
      Caption = 'Filtar'
      Category = 0
      Hint = 'Filtar'
      Visible = ivAlways
      ButtonStyle = bsChecked
      LargeImageIndex = 13
    end
    object dxBarSubItem1: TdxBarSubItem
      Action = actImprimir
      Category = 0
      ItemLinks = <>
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Contas a Pagar'
      Category = 0
      Hint = 'Contas a Pagar'
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Action = actListagemAutPagto
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actbaixa
      Category = 0
    end
    object btnduplicata: TdxBarLargeButton
      Action = actduplicata
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object btnautpagto: TdxBarLargeButton
      Action = actautpagto
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object btngrafico: TdxBarLargeButton
      Action = actgrafico
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object cbxstatus: TdxBarCombo
      Caption = 'Status'
      Category = 0
      Hint = 'Status'
      Visible = ivAlways
      OnChange = cbxstatusChange
      ShowCaption = True
      Width = 55
      Text = 'Aberta'
      Items.Strings = (
        'Aberta'
        'Quitada'
        'Todos')
      ItemIndex = 0
    end
    object cbxtpdata: TdxBarCombo
      Caption = 'Data'
      Category = 0
      Hint = 'Data'
      Visible = ivAlways
      OnChange = cbxtpdataChange
      ShowCaption = True
      Width = 75
      Text = 'Vencimento'
      Items.Strings = (
        'Vencimento'
        'Emiss'#227'o'
        'Baixa')
      ItemIndex = 0
    end
    object edtdtinicio: TcxBarEditItem
      Caption = 'Data'
      Category = 0
      Hint = 'Data'
      Visible = ivAlways
      OnChange = edtdtinicioChange
      ShowCaption = True
      Width = 78
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object edtdtfinal: TcxBarEditItem
      Caption = 'At'#233
      Category = 0
      Hint = 'At'#233
      Visible = ivAlways
      OnChange = edtdtfinalChange
      ShowCaption = True
      Width = 78
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object cbxgrafico: TcxBarEditItem
      Caption = 'Gr'#225'tico'
      Category = 0
      Hint = 'Gr'#225'tico'
      Visible = ivNever
      ShowCaption = True
      Width = 80
      PropertiesClassName = 'TcxComboBoxProperties'
      Properties.Items.Strings = (
        'Despesas'
        'Receitas'
        'Receitas X Despesas'
        'Saldo (Receitas - Despesas)'
        'Acumulado (Receita - Despesa)')
      Properties.OnCloseUp = cbxgraficoPropertiesCloseUp
      InternalEditValue = 'Despesas'
    end
    object cbxfaixa: TcxBarEditItem
      Caption = 'Faixa'
      Category = 0
      Hint = 'Faixa'
      Visible = ivNever
      ShowCaption = True
      Width = 50
      PropertiesClassName = 'TcxComboBoxProperties'
      Properties.Items.Strings = (
        'Di'#225'rio'
        'Mensal')
      Properties.OnCloseUp = cbxfaixaPropertiesCloseUp
      InternalEditValue = 'Di'#225'rio'
    end
    object cbxvalor: TcxBarEditItem
      Caption = 'Valor'
      Category = 0
      Hint = 'Valor'
      Visible = ivNever
      ShowCaption = True
      Width = 50
      PropertiesClassName = 'TcxComboBoxProperties'
      Properties.Items.Strings = (
        'Saldo'
        'Original')
      Properties.OnCloseUp = cbxvalorPropertiesCloseUp
      InternalEditValue = 'Original'
    end
    object ckbsaldoconta: TcxBarEditItem
      Caption = 'Saldo Conta'
      Category = 0
      Hint = 'Saldo Conta'
      Visible = ivNever
      OnChange = ckbsaldocontaChange
      ImageIndex = 0
      ShowCaption = True
      Width = 10
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      InternalEditValue = 'N'
    end
    object ckbbopedidoordcompra: TcxBarEditItem
      Caption = 'Pedido/Ord Com'
      Category = 0
      Hint = 'Pedido/Ord Com'
      Visible = ivNever
      OnChange = ckbbopedidoordcompraChange
      ShowCaption = True
      Width = 10
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      InternalEditValue = 'N'
    end
    object btnviewgroup: TdxBarLargeButton
      Action = actviewgroup
      Category = 0
      ButtonStyle = bsChecked
    end
    object btnfiltro: TdxBarLargeButton
      Action = actfiltro
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumimprimir
    end
    object dxBarButton3: TdxBarButton
      Action = actimprimirautorizacaopagamento
      Category = 0
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = actexcel
      Category = 0
    end
  end
  object dts: TDataSource
    DataSet = qry
    Left = 777
    Top = 179
  end
  object pumimprimir: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end>
    UseOwnFont = False
    Left = 853
    Top = 180
  end
  object qry: TFDQuery
    Connection = dtmmain.confire
    Left = 808
    Top = 179
  end
  object dtsgrafico: TDataSource
    Left = 776
    Top = 232
  end
end
