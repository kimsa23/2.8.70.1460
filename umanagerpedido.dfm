object frmmanagerpedido: Tfrmmanagerpedido
  Left = 514
  Top = 106
  ClientHeight = 526
  ClientWidth = 1199
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
  object nvb: TdxNavBar
    Left = 0
    Top = 22
    Width = 186
    Height = 504
    Align = alLeft
    ActiveGroupIndex = 0
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    ViewReal = 13
    object nvbPedido: TdxNavBarGroup
      Caption = 'Pedido'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OptionsGroupControl.ShowControl = True
      OptionsGroupControl.UseControl = True
      Links = <>
    end
    object nvbPedidoControl: TdxNavBarGroupControl
      Left = 1
      Top = 26
      Width = 184
      Height = 423
      Caption = 'nvbPedidoControl'
      TabOrder = 0
      GroupIndex = 0
      OriginalHeight = 41
      object trvpedido: TcxTreeView
        Left = 0
        Top = 0
        Width = 184
        Height = 423
        Align = alClient
        TabOrder = 0
        ReadOnly = True
        OnChange = trvpedidoChange
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 186
    Top = 22
    Width = 8
    Height = 504
    HotZoneClassName = 'TcxMediaPlayer9Style'
    AutoSnap = True
    Control = nvb
  end
  object pnlfundo: TPanel
    Left = 194
    Top = 22
    Width = 1005
    Height = 504
    Align = alClient
    TabOrder = 6
    object grd: TcxGrid
      Left = 1
      Top = 24
      Width = 1003
      Height = 296
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      object tbv: TcxGridDBTableView
        OnKeyDown = ExportarGradeExcel
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
        DataController.DataSource = dts
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            Position = spFooter
            FieldName = 'VLTOTAL'
            Column = tbvVLTOTAL
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'VLTOTAL'
            Column = tbvVLTOTAL
            DisplayText = 'Total'
          end
          item
            Format = ' ,0.000;- ,0.000'
            Kind = skSum
            Position = spFooter
            FieldName = 'qtitem'
            Column = tbvQTITEM
          end
          item
            Format = ' ,0.000;- ,0.000'
            Kind = skSum
            FieldName = 'qtitem'
            Column = tbvQTITEM
            DisplayText = 'Qtd'
          end
          item
            Format = ' ,0.000;- ,0.000'
            Kind = skSum
            Position = spFooter
            FieldName = 'qtatendida'
            Column = tbvQTATENDIDA
          end
          item
            Format = ' ,0.000;- ,0.000'
            Kind = skSum
            FieldName = 'qtatendida'
            Column = tbvQTATENDIDA
            DisplayText = 'Atendido'
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'VLTOTAL'
            Column = tbvVLTOTAL
          end
          item
            Format = ' ,0.000;- ,0.000'
            Kind = skSum
            FieldName = 'QTITEM'
            Column = tbvQTITEM
          end
          item
            Format = ' ,0.000;- ,0.000'
            Kind = skSum
            FieldName = 'QTATENDIDA'
            Column = tbvQTATENDIDA
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.NavigatorHints = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.Indicator = True
        object tbvCDPEDIDO: TcxGridDBColumn
          DataBinding.FieldName = 'CDPEDIDO'
          Visible = False
        end
        object tbvNMTPPEDIDO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'NMTPPEDIDO'
          Width = 100
        end
        object tbvNUPEDIDO: TcxGridDBColumn
          Caption = 'Pedido'
          DataBinding.FieldName = 'NUPEDIDO'
          Styles.Content = dtmmain.cxStyle1
          Width = 54
        end
        object tbvDTEMISSAO: TcxGridDBColumn
          Caption = 'Emiss'#227'o'
          DataBinding.FieldName = 'DTEMISSAO'
        end
        object tbvDTPRVENTREGA: TcxGridDBColumn
          Caption = 'Prv Entrega'
          DataBinding.FieldName = 'DTPRVENTREGA'
          SortIndex = 0
          SortOrder = soAscending
          Width = 63
        end
        object tbvDTFECHAMENTO: TcxGridDBColumn
          Caption = 'Fechamento'
          DataBinding.FieldName = 'DTFECHAMENTO'
        end
        object tbvCDCLIENTE: TcxGridDBColumn
          Caption = 'C'#243'd Cliente'
          DataBinding.FieldName = 'CDCLIENTE'
          Styles.Content = dtmmain.cxStyle1
        end
        object tbvNMCLIENTE: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'NMCLIENTE'
          Width = 262
        end
        object tbvVLTOTAL: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'VLTOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ' ,0.00;- ,0.00'
          Width = 104
        end
        object tbvNMCONDPAGTO: TcxGridDBColumn
          Caption = 'Condi'#231#227'o Pagto'
          DataBinding.FieldName = 'NMCONDPAGTO'
          OnCustomDrawCell = tbvNMCONDPAGTOCustomDrawCell
          Width = 93
        end
        object tbvNMREPRESENTANTE: TcxGridDBColumn
          Caption = 'Representante'
          DataBinding.FieldName = 'NMREPRESENTANTE'
          Width = 82
        end
        object tbvPRCOMISSAO: TcxGridDBColumn
          Caption = '% Comiss'#227'o'
          DataBinding.FieldName = 'PRCOMISSAO'
        end
        object tbvNMTPFRETE: TcxGridDBColumn
          Caption = 'Tp Frete'
          DataBinding.FieldName = 'NMTPFRETE'
          Width = 25
        end
        object tbvQTITEM: TcxGridDBColumn
          Caption = 'Qtd'
          DataBinding.FieldName = 'QTITEM'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ' ,0.000;- ,0.000'
        end
        object tbvQTATENDIDA: TcxGridDBColumn
          Caption = 'Qtd Atendida'
          DataBinding.FieldName = 'QTATENDIDA'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ' ,0.000;- ,0.000'
        end
        object tbvCDCONDPAGTO: TcxGridDBColumn
          Caption = 'CDCONDPAGTO'
          DataBinding.FieldName = 'cdcondpagto'
          Visible = False
        end
        object tbvNUCORCONDPAGTO: TcxGridDBColumn
          DataBinding.FieldName = 'NUCORCONDPAGTO'
          Visible = False
        end
        object tbvdsobservacao: TcxGridDBColumn
          Caption = 'Observa'#231#227'o'
          DataBinding.FieldName = 'DSOBSERVACAO'
          PropertiesClassName = 'TcxBlobEditProperties'
          Properties.BlobEditKind = bekMemo
          Properties.BlobPaintStyle = bpsText
          Width = 200
        end
      end
      object grdLevel1: TcxGridLevel
        GridView = tbv
      end
    end
    object spldetail: TcxSplitter
      Left = 1
      Top = 320
      Width = 1003
      Height = 8
      HotZoneClassName = 'TcxMediaPlayer9Style'
      AlignSplitter = salBottom
      Control = grddetail
      ExplicitWidth = 8
    end
    object pnl: TcxLabel
      Left = 1
      Top = 1
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
    object grddetail: TcxGrid
      Left = 1
      Top = 328
      Width = 1003
      Height = 175
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      LevelTabs.Style = 10
      LookAndFeel.NativeStyle = False
      object tbvdetail: TcxGridDBTableView
        OnKeyDown = ExportarGradeExcel
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
        OnCellDblClick = tbvdetailCellDblClick
        DataController.DataSource = dtsdetail
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'VLTOTAL'
            Column = tbvdetailVLTOTAL
          end
          item
            Format = ' ,0.000;- ,0.000'
            Kind = skSum
            FieldName = 'QTITEM'
            Column = tbvdetailQTITEM
          end
          item
            Format = ' ,0.000;- ,0.000'
            Kind = skSum
            FieldName = 'QTATENDIDA'
            Column = tbvdetailQTATENDIDA
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tbvdetailCDORCAMENTO: TcxGridDBColumn
          Caption = 'Or'#231'amento'
          DataBinding.FieldName = 'CDORCAMENTO'
          Options.Editing = False
          Styles.Content = dtmmain.cxStyle1
        end
        object tbvdetailCDTPORCAMENTO: TcxGridDBColumn
          Caption = 'Tipo Or'#231'amento'
          DataBinding.FieldName = 'CDTPORCAMENTO'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'CDTPORCAMENTO'
          Properties.ListColumns = <
            item
              FieldName = 'NMTPORCAMENTO'
            end>
          Properties.ListOptions.ShowHeader = False
          Options.Editing = False
          Width = 89
        end
        object tbvdetailCDITPEDIDO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'CDTPITPEDIDO'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 250
          Properties.KeyFieldNames = 'CDTPITPEDIDO'
          Properties.ListColumns = <
            item
              FieldName = 'NMTPITPEDIDO'
            end>
          Properties.ListOptions.ShowHeader = False
        end
        object tbvdetailCDPEDIDO: TcxGridDBColumn
          DataBinding.FieldName = 'CDPEDIDO'
          Visible = False
        end
        object tbvdetailCDDIGITADO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CDDIGITADO'
          Width = 91
        end
        object tbvdetailNMPRODUTO: TcxGridDBColumn
          Caption = 'Produto'
          DataBinding.FieldName = 'NMPRODUTO'
          Width = 387
        end
        object tbvdetailNUCOTACAO: TcxGridDBColumn
          Caption = 'Ordem Compra'
          DataBinding.FieldName = 'NUCOTACAO'
          Width = 79
        end
        object tbvdetailNUITEM: TcxGridDBColumn
          Caption = 'N'#186' '#205'tem'
          DataBinding.FieldName = 'NUITEM'
          Width = 45
        end
        object tbvdetailQTITEM: TcxGridDBColumn
          Caption = 'Qtd'
          DataBinding.FieldName = 'QTITEM'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ' ,0.000;- ,0.000'
          Width = 57
        end
        object tbvdetailQTATENDIDA: TcxGridDBColumn
          Caption = 'Qt Atendida'
          DataBinding.FieldName = 'QTATENDIDA'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ' ,0.000;- ,0.000'
        end
        object tbvdetailVLUNITARIO: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VLUNITARIO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object tbvdetailVLTOTAL: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'VLTOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
      end
      object grddetailLevel1: TcxGridLevel
        GridView = tbvdetail
      end
    end
  end
  object dts: TDataSource
    Left = 372
    Top = 112
  end
  object dtsdetail: TDataSource
    Left = 374
    Top = 140
  end
  object dxBarManager1: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default'
      'Tray Icon')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 540
    Top = 112
    DockControlHeights = (
      0
      0
      22
      0)
    object dxbrManager1Bar: TdxBar
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 0
      FloatTop = 164
      FloatClientWidth = 97
      FloatClientHeight = 44
      Images = dtmmain.imlMain
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton14'
        end
        item
          Visible = True
          ItemName = 'edtdti'
        end
        item
          Visible = True
          ItemName = 'edtdtf'
        end
        item
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton10: TdxBarButton
      Action = actfechar
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton11: TdxBarButton
      Action = actgerarsaida
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object edtdti: TcxBarEditItem
      Caption = 'Emiss'#227'o'
      Category = 0
      Hint = 'Data Inicial'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object edtdtf: TcxBarEditItem
      Caption = 'At'#233
      Category = 0
      Hint = 'Data Final'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object dxBarButton6: TdxBarButton
      Action = actestatisica
      Category = 0
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Consulta'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          Visible = True
          ItemName = 'dxBarButton13'
        end>
    end
    object dxBarButton12: TdxBarButton
      Action = actduplicata
      Category = 0
    end
    object dxBarButton13: TdxBarButton
      Action = acthistorico
      Category = 0
    end
    object dxBarButton14: TdxBarButton
      Action = actatualizar
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton7: TdxBarButton
      Caption = 'Ativar'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton8: TdxBarButton
      Caption = 'Desativar'
      Category = 1
      Visible = ivAlways
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 568
    Top = 112
    object actgerarsaida: TAction
      Caption = 'Gerar Nota Fiscal'
      ImageIndex = 19
      OnExecute = actgerarsaidaExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      ImageIndex = 111
      OnExecute = actfecharExecute
    end
    object actestatisica: TAction
      Caption = 'Estat'#237'stica'
      ShortCut = 16453
      OnExecute = actestatisicaExecute
    end
    object actduplicata: TAction
      Caption = 'Contas a Receber'
      ImageIndex = 32
      ShortCut = 16452
      OnExecute = actduplicataExecute
    end
    object acthistorico: TAction
      Caption = 'Hist'#243'rico Aprova'#231#227'o'
      OnExecute = acthistoricoExecute
    end
    object actabrircliente: TAction
      Hint = 'cliente'
      OnExecute = actabrirclienteExecute
    end
    object actabrirpedido: TAction
      Hint = 'pedido'
      OnExecute = actabrirpedidoExecute
    end
    object actatualizar: TAction
      Caption = 'Atualizar'
      ImageIndex = 12
      OnExecute = actatualizarExecute
    end
    object actabrirorcamento: TAction
      Hint = 'orcamento'
      OnExecute = actabrirorcamentoExecute
    end
  end
end
