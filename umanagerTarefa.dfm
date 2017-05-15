object frmmanagertarefa: Tfrmmanagertarefa
  Left = 713
  Top = 166
  ClientHeight = 693
  ClientWidth = 1303
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
  object cxSplitter1: TcxSplitter
    Left = 185
    Top = 23
    Width = 8
    Height = 670
    HotZoneClassName = 'TcxMediaPlayer9Style'
    NativeBackground = False
    Control = dxNavBar1
    Color = clBtnFace
    ParentColor = False
  end
  object ntb: TNotebook
    Left = 193
    Top = 23
    Width = 1110
    Height = 670
    Align = alClient
    TabOrder = 2
    object TPage
      Left = 0
      Top = 0
      Caption = 'Tarefa'
      object doctarefa: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1110
        Height = 24
        Align = dalTop
        AllowDocking = False
        BarManager = bmg
      end
      object grd: TcxGrid
        Left = 0
        Top = 24
        Width = 1110
        Height = 188
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object tbvtarefa: TcxGridDBTableView
          OnDblClick = tbvtarefaDblClick
          OnKeyDown = tbvtarefaKeyDown
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
          OnCustomDrawCell = tbvtarefaCustomDrawCell
          DataController.DataSource = dts
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QTDURACAO'
              Column = tbvtarefaQTDURACAO
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.Indicator = True
          Styles.Selection = dtmmain.cxStyle5
          object tbvtarefaCDTAREFA: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDTAREFA'
            Width = 20
          end
          object tbvtarefaNMTPTAREFA1: TcxGridDBColumn
            Caption = 'Tipo 1'
            DataBinding.FieldName = 'NMTPTAREFA1'
            Width = 50
          end
          object tbvtarefaNMTAREFA: TcxGridDBColumn
            Caption = 'Tarefa'
            DataBinding.FieldName = 'NMTAREFA'
            Width = 232
          end
          object tbvtarefaDSOBSERVACAO: TcxGridDBColumn
            Caption = 'Ac'#227'o Realizada'
            DataBinding.FieldName = 'DSOBSERVACAO'
            Width = 207
          end
          object tbvtarefaNMCLIENTE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NMCLIENTE'
            Width = 92
          end
          object tbvtarefaNMITCONTCLIENTE: TcxGridDBColumn
            Caption = 'Contato'
            DataBinding.FieldName = 'NMITCONTCLIENTE'
            Width = 41
          end
          object tbvtarefaFUNCIONARIO: TcxGridDBColumn
            Caption = 'Criador'
            DataBinding.FieldName = 'NMFUNCIONARIO'
            Width = 38
          end
          object tbvtarefaNMSTTAREFA: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'NMSTTAREFA'
            Width = 47
          end
          object tbvtarefaNMTPTAREFA: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'NMTPTAREFA'
            Width = 47
          end
          object tbvtarefaDTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            Width = 37
          end
          object tbvtarefaHREMISSAO: TcxGridDBColumn
            Caption = 'Hora Emiss'#227'o'
            DataBinding.FieldName = 'HREMISSAO'
            Width = 36
          end
          object tbvtarefaDTTERMINO: TcxGridDBColumn
            Caption = 'T'#233'rmino'
            DataBinding.FieldName = 'DTTERMINO'
            Width = 39
          end
          object tbvtarefaDTPREVISTA: TcxGridDBColumn
            Caption = 'Prevista'
            DataBinding.FieldName = 'DTPREVISTA'
            Width = 39
          end
          object tbvtarefaDSTAG: TcxGridDBColumn
            Caption = 'Tag'
            DataBinding.FieldName = 'DSTAG'
            Width = 35
          end
          object tbvtarefaNUCOR: TcxGridDBColumn
            Caption = 'Cor'
            DataBinding.FieldName = 'NUCOR'
            Visible = False
          end
          object tbvtarefaDTEMISSAO1: TcxGridDBColumn
            Caption = 'Data A'#231#227'o'
            DataBinding.FieldName = 'DTEMISSAO1'
            Width = 37
          end
          object tbvtarefaHRINICIO: TcxGridDBColumn
            Caption = 'In'#237'cio'
            DataBinding.FieldName = 'HRINICIO'
            Width = 36
          end
          object tbvtarefaHRFIM: TcxGridDBColumn
            Caption = 'Fim'
            DataBinding.FieldName = 'HRFIM'
            Width = 39
          end
          object tbvtarefaQTDURACAO: TcxGridDBColumn
            Caption = 'Dura'#231#227'o'
            DataBinding.FieldName = 'QTDURACAO'
            Width = 37
          end
          object tbvtarefaCDFUNCIONARIO: TcxGridDBColumn
            DataBinding.FieldName = 'CDFUNCIONARIO'
            Visible = False
            IsCaptionAssigned = True
          end
          object tbvtarefaboresolvido: TcxGridDBColumn
            DataBinding.FieldName = 'BORESOLVIDO'
            Visible = False
            IsCaptionAssigned = True
          end
          object tbvtarefaCDFUNCIONARIO1: TcxGridDBColumn
            DataBinding.FieldName = 'CDFUNCIONARIO1'
            Visible = False
            IsCaptionAssigned = True
          end
          object tbvtarefaNMPRIORIDADE: TcxGridDBColumn
            Caption = 'Prioridade'
            DataBinding.FieldName = 'NMPRIORIDADE'
            Width = 65
          end
          object tbvtarefaNMPROJETO: TcxGridDBColumn
            Caption = 'Projeto'
            DataBinding.FieldName = 'NMPROJETO'
            Width = 75
          end
        end
        object grdLevel1: TcxGridLevel
          GridView = tbvtarefa
        end
      end
      object pgctarefa: TcxPageControl
        Left = 0
        Top = 220
        Width = 1110
        Height = 450
        Align = alBottom
        TabOrder = 2
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 446
        ClientRectLeft = 4
        ClientRectRight = 1106
        ClientRectTop = 4
      end
      object spltarefa: TcxSplitter
        Left = 0
        Top = 212
        Width = 1110
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salBottom
        Control = pgctarefa
        ExplicitWidth = 8
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Calend'#225'rio'
      object scdCalendario: TcxScheduler
        Left = 0
        Top = 24
        Width = 1110
        Height = 646
        DateNavigator.ShowDatesContainingHolidaysInColor = True
        DateNavigator.Visible = False
        ViewDay.Active = True
        ViewDay.TimeRulerMinutes = True
        Align = alClient
        ContentPopupMenu.UseBuiltInPopupMenu = False
        ContentPopupMenu.Items = []
        ControlBox.Visible = False
        EventOperations.DialogShowing = False
        EventOperations.ReadOnly = True
        EventPopupMenu.UseBuiltInPopupMenu = False
        EventPopupMenu.Items = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        OptionsCustomize.DynamicSizing = True
        OptionsView.GroupingKind = gkByDate
        OptionsView.HorzSplitterWidth = 3
        OptionsView.ResourceHeaders.MultilineCaptions = True
        OptionsView.ResourceHeaders.ImagePosition = ipTop
        OptionsView.ResourceHeaders.RotateCaptions = False
        OptionsView.ResourcesPerPage = 1
        OptionsView.RotateResourceCaptions = False
        OptionsView.ShowEventsWithoutResource = True
        OptionsView.VertSplitterWidth = 3
        OptionsView.ViewPosition = vpRight
        Storage = dbs
        TabOrder = 0
        Splitters = {
          010000007E000000900000008100000090000000010000009300000012020000}
        StoredClientBounds = {01000000010000005504000085020000}
      end
      object dxBarDockControl3: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1110
        Height = 24
        Align = dalTop
        BarManager = bmg
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Relat'#243'rio'
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1110
        Height = 19
        Align = alTop
        Alignment = taLeftJustify
        BevelInner = bvLowered
        BevelOuter = bvNone
        Caption = 'Configure as op'#231#245'es do relat'#243'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 0
      end
      object Panel2: TPanel
        Left = 0
        Top = 19
        Width = 1110
        Height = 91
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object lblemissao: TLabel
          Left = 5
          Top = 6
          Width = 39
          Height = 13
          Caption = 'Emiss'#227'o'
          FocusControl = edtdtemissaoi
          Transparent = True
        end
        object lblvencimento: TLabel
          Left = 225
          Top = 6
          Width = 56
          Height = 13
          Caption = 'Vencimento'
          FocusControl = edtdtvencimentoi
          Transparent = True
        end
        object lblatevencimento: TLabel
          Left = 326
          Top = 27
          Width = 16
          Height = 13
          Caption = '&At'#233
          FocusControl = edtdtvencimentof
          Transparent = True
        end
        object lblateemissao: TLabel
          Left = 106
          Top = 27
          Width = 16
          Height = 13
          Caption = '&At'#233
          FocusControl = edtdtvencimentof
          Transparent = True
        end
        object lblprventrega: TLabel
          Left = 7
          Top = 43
          Width = 41
          Height = 13
          Caption = 'Previs'#227'o'
          FocusControl = edtdtprventregai
          Transparent = True
        end
        object lblateprventrega: TLabel
          Left = 108
          Top = 64
          Width = 16
          Height = 13
          Caption = '&At'#233
          FocusControl = edtdtprventregaf
          Transparent = True
        end
        object lblentrega: TLabel
          Left = 228
          Top = 42
          Width = 37
          Height = 13
          Caption = 'Entrega'
          FocusControl = edtdtentregai
          Transparent = True
        end
        object lblateentrega: TLabel
          Left = 329
          Top = 63
          Width = 16
          Height = 13
          Caption = '&At'#233
          FocusControl = edtdtentregaf
          Transparent = True
        end
        object edtdtemissaoi: TDateTimePicker
          Left = 5
          Top = 22
          Width = 97
          Height = 21
          Date = 0.705061805601872000
          Time = 0.705061805601872000
          ShowCheckbox = True
          Checked = False
          TabOrder = 0
          Visible = False
        end
        object edtdtemissaof: TDateTimePicker
          Left = 128
          Top = 22
          Width = 97
          Height = 21
          Date = 37480.705824884300000000
          Time = 37480.705824884300000000
          ShowCheckbox = True
          Checked = False
          Enabled = False
          TabOrder = 1
          Visible = False
        end
        object edtdtvencimentoi: TDateTimePicker
          Left = 225
          Top = 22
          Width = 97
          Height = 21
          Date = 0.705061805601872000
          Time = 0.705061805601872000
          ShowCheckbox = True
          Checked = False
          TabOrder = 2
          Visible = False
        end
        object edtdtvencimentof: TDateTimePicker
          Left = 348
          Top = 22
          Width = 97
          Height = 21
          Date = 37480.705824884300000000
          Time = 37480.705824884300000000
          ShowCheckbox = True
          Checked = False
          Enabled = False
          TabOrder = 3
          Visible = False
        end
        object edtdtprventregai: TDateTimePicker
          Left = 7
          Top = 59
          Width = 97
          Height = 21
          Date = 0.705061805601872000
          Time = 0.705061805601872000
          ShowCheckbox = True
          Checked = False
          TabOrder = 4
          Visible = False
        end
        object edtdtprventregaf: TDateTimePicker
          Left = 130
          Top = 59
          Width = 97
          Height = 21
          Date = 37480.705824884300000000
          Time = 37480.705824884300000000
          ShowCheckbox = True
          Checked = False
          Enabled = False
          TabOrder = 5
          Visible = False
        end
        object edtdtentregai: TDateTimePicker
          Left = 228
          Top = 58
          Width = 97
          Height = 21
          Date = 0.705061805601872000
          Time = 0.705061805601872000
          ShowCheckbox = True
          Checked = False
          TabOrder = 6
          Visible = False
        end
        object edtdtentregaf: TDateTimePicker
          Left = 351
          Top = 58
          Width = 97
          Height = 21
          Date = 37480.705824884300000000
          Time = 37480.705824884300000000
          ShowCheckbox = True
          Checked = False
          Enabled = False
          TabOrder = 7
          Visible = False
        end
      end
      object pgc: TcxPageControl
        Left = 0
        Top = 110
        Width = 1110
        Height = 560
        Align = alClient
        TabOrder = 2
        Visible = False
        Properties.ActivePage = tbscliente
        Properties.CustomButtons.Buttons = <>
        Properties.Images = dtmmain.imlMain
        LookAndFeel.NativeStyle = False
        ClientRectBottom = 560
        ClientRectRight = 1110
        ClientRectTop = 25
        object tbscliente: TcxTabSheet
          Caption = '&Cliente'
          ImageIndex = 35
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object bvl4: TBevel
            Left = 0
            Top = 25
            Width = 1110
            Height = 41
            Align = alTop
            ExplicitWidth = 954
          end
          object lblcdcliente: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object lblnmcliente: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object edtcdcliente: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 2
          end
          object ToolBar6: TToolBar
            Left = 0
            Top = 0
            Width = 1110
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton23: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
            end
            object ToolButton24: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
            end
            object ToolButton29: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
            end
          end
          object lsvcliente: TcxListView
            Left = 0
            Top = 66
            Width = 1110
            Height = 469
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
              end>
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            ViewStyle = vsReport
          end
          object edtnmcliente: TEdit
            Left = 108
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 3
          end
        end
        object tbsfuncionario: TcxTabSheet
          Caption = 'Funcion'#225'rio'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object bvl1: TBevel
            Left = 0
            Top = 25
            Width = 1110
            Height = 41
            Align = alTop
            ExplicitWidth = 954
          end
          object Label3: TLabel
            Left = 4
            Top = 27
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Transparent = True
          end
          object Label4: TLabel
            Left = 108
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object ToolBar4: TToolBar
            Left = 0
            Top = 0
            Width = 1110
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton9: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Adicionar'
              ImageIndex = 0
            end
            object ToolButton10: TToolButton
              Left = 55
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
            end
            object ToolButton12: TToolButton
              Left = 97
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
            end
          end
          object lsvfuncionario: TcxListView
            Left = 0
            Top = 66
            Width = 1110
            Height = 469
            Align = alClient
            Columns = <
              item
                Caption = 'C'#243'digo'
                Width = 100
              end
              item
                Caption = 'Nome'
                Width = 500
              end>
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            ViewStyle = vsReport
          end
          object edtnmfuncionario: TEdit
            Left = 106
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
          end
          object edtcdfuncionario: TEdit
            Left = 3
            Top = 41
            Width = 102
            Height = 21
            TabOrder = 3
          end
        end
        object tbsitcontcliente: TcxTabSheet
          Caption = 'Contato Cliente'
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Bevel9: TBevel
            Left = 0
            Top = 25
            Width = 1110
            Height = 41
            Align = alTop
            ExplicitWidth = 954
          end
          object Label53: TLabel
            Left = 4
            Top = 27
            Width = 28
            Height = 13
            Caption = 'Nome'
            Transparent = True
          end
          object edtnmitcontcliente: TEdit
            Left = 3
            Top = 41
            Width = 334
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
          end
          object ToolBar27: TToolBar
            Left = 0
            Top = 0
            Width = 1110
            Height = 25
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 71
            Caption = 'ToolBar2'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object ToolButton73: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = 'Excluir'
              ImageIndex = 1
            end
            object ToolButton74: TToolButton
              Left = 42
              Top = 0
              AutoSize = True
              Caption = 'Excluir Todas'
              ImageIndex = 3
            end
          end
          object lsvnmitcontcliente: TcxListView
            Left = 0
            Top = 66
            Width = 1110
            Height = 469
            Align = alClient
            Columns = <
              item
                Caption = 'Nome'
                Width = 400
              end>
            RowSelect = True
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            ViewStyle = vsReport
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Gr'#225'fico'
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object lblopcao: TcxLabel
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Gerenciador de Tarefas'
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
  object dxNavBar1: TdxNavBar
    Left = 0
    Top = 23
    Width = 185
    Height = 670
    Align = alLeft
    ActiveGroupIndex = 0
    TabOrder = 7
    View = 17
    ViewStyle.ColorSchemeName = 'Blue'
    object nvbTarefa: TdxNavBarGroup
      Caption = 'Tarefa'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OptionsGroupControl.ShowControl = True
      OptionsGroupControl.UseControl = True
      Links = <>
    end
    object nvbRelatorio: TdxNavBarGroup
      Caption = 'Relat'#243'rio'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OptionsGroupControl.ShowControl = True
      OptionsGroupControl.UseControl = True
      Links = <>
    end
    object nvbGrafico: TdxNavBarGroup
      Caption = 'Gr'#225'fico'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <>
    end
    object nvbTarefaControl: TdxNavBarGroupControl
      Left = 1
      Top = 28
      Width = 183
      Height = 538
      Caption = 'nvbTarefaControl'
      TabOrder = 1
      GroupIndex = 0
      OriginalHeight = 421
      object trv: TcxTreeView
        Left = 0
        Top = 0
        Width = 183
        Height = 409
        Align = alClient
        TabOrder = 0
        HideSelection = False
        HotTrack = True
        ReadOnly = True
        RowSelect = True
        OnChange = trvChange
      end
      object nvd: TcxDateNavigator
        Left = 0
        Top = 409
        Width = 183
        Height = 129
        Align = alBottom
        FirstWeekOfYear = fwyFirstFourDays
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        StartOfWeek = swSunday
        TabOrder = 1
        Visible = False
        OnSelectionChanged = nvdSelectionChanged
      end
    end
    object nvbRelatorioControl: TdxNavBarGroupControl
      Left = 1
      Top = 28
      Width = 183
      Height = 421
      Caption = 'nvbRelatorioControl'
      TabOrder = 0
      GroupIndex = 1
      OriginalHeight = 41
      object trvrelatorio: TcxTreeView
        Left = 0
        Top = 0
        Width = 183
        Height = 421
        Align = alClient
        TabOrder = 0
        OnChange = trvrelatorioChange
      end
    end
  end
  object bmg: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dtmmain.imlMain
    ImageOptions.LargeImages = dtmmain.imlMain
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 265
    Top = 90
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar6: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'tarefapainel'
      CaptionButtons = <>
      DockControl = doctarefa
      DockedDockControl = doctarefa
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 637
      FloatTop = 143
      FloatClientWidth = 51
      FloatClientHeight = 66
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'btnviewgrouptarefa'
        end
        item
          Visible = True
          ItemName = 'btnfiltro'
        end
        item
          Visible = True
          ItemName = 'btnalturaautomatica'
        end
        item
          Visible = True
          ItemName = 'btnsemprojeto'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton11'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      RotateWhenVertical = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar8: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'calendariopainel'
      CaptionButtons = <>
      DockControl = dxBarDockControl3
      DockedDockControl = dxBarDockControl3
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 637
      FloatTop = 143
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          Visible = True
          ItemName = 'ntbviewcalendario'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = acttarefaatribuir
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = actatualizartarefa
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = actnovotarefa
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = actabrirtarefa
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = acteditartarefa
      Category = 0
    end
    object btnviewgrouptarefa: TdxBarButton
      Action = actviewgrouptarefa
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton15: TdxBarButton
      Action = actatualizarscheduler
      Category = 0
    end
    object ntbviewcalendario: TdxBarButton
      Action = actviewcalendario
      Category = 0
      ButtonStyle = bsChecked
    end
    object btnalturaautomatica: TdxBarButton
      Action = actalturaautomatica
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton11: TdxBarButton
      Action = actfechar
      Category = 0
    end
    object btnsemprojeto: TdxBarButton
      Action = actsemprojeto
      Category = 0
      ButtonStyle = bsChecked
    end
    object btnfiltro: TdxBarButton
      Action = actfiltro
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton1: TdxBarButton
      Action = actmudartarefa
      Category = 0
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 237
    Top = 90
    object acttarefaatribuir: TAction
      ImageIndex = 57
    end
    object actatualizartarefa: TAction
      Hint = 'Atualizar'
      ImageIndex = 12
      ShortCut = 116
      OnExecute = actatualizartarefaExecute
    end
    object actnovotarefa: TAction
      Hint = 'Novo'
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = actnovotarefaExecute
    end
    object actabrirtarefa: TAction
      Hint = 'Abrir'
      ImageIndex = 1
      ShortCut = 16449
      OnExecute = actabrirtarefaExecute
    end
    object acteditartarefa: TAction
      Hint = 'Editar'
      ImageIndex = 7
      ShortCut = 16453
      OnExecute = acteditartarefaExecute
    end
    object actviewgrouptarefa: TAction
      AutoCheck = True
      Hint = 'Agrupar'
      ImageIndex = 6
      OnExecute = actviewgrouptarefaExecute
    end
    object actatualizarscheduler: TAction
      ImageIndex = 12
      OnExecute = actatualizarschedulerExecute
    end
    object actviewcalendario: TAction
      Caption = 'Calend'#225'rio'
      ImageIndex = 29
      OnExecute = actviewcalendarioExecute
    end
    object actalturaautomatica: TAction
      AutoCheck = True
      Caption = 'Altura Autom'#225'tica'
      ImageIndex = 169
      OnExecute = actalturaautomaticaExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      OnExecute = actfecharExecute
    end
    object actsemprojeto: TAction
      AutoCheck = True
      Caption = 'Sem Projeto'
      Hint = 'Sem Projeto'
      ImageIndex = 150
      OnExecute = actsemprojetoExecute
    end
    object actfiltro: TAction
      AutoCheck = True
      Caption = 'Filtro'
      Hint = 'Filtrar'
      ImageIndex = 13
      OnExecute = actfiltroExecute
    end
    object actmudartarefa: TAction
      Caption = 'Mudar Tarefa'
      Hint = 'Mudar Tarefa'
      ImageIndex = 17
      OnExecute = actmudartarefaExecute
    end
  end
  object dts: TDataSource
    Left = 755
    Top = 86
  end
  object sdsscheduler: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmmain.sqlc
    Left = 644
    Top = 94
  end
  object dspscheduler: TDataSetProvider
    DataSet = sdsscheduler
    Left = 576
    Top = 94
  end
  object cdsscheduler: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'dsp'
    StoreDefs = True
    Left = 548
    Top = 94
  end
  object dtsscheduler: TDataSource
    DataSet = cdsscheduler
    Left = 609
    Top = 94
  end
  object dbs: TcxSchedulerDBStorage
    Tag = 1
    UseActualTimeRange = True
    Reminders.Active = False
    Resources.Items = <>
    CustomFields = <>
    DataSource = dtsscheduler
    FieldNames.ActualFinish = 'D1'
    FieldNames.ActualStart = 'D1'
    FieldNames.Caption = 'NMTAREFA'
    FieldNames.EventType = 'evento'
    FieldNames.Finish = 'TSFIM'
    FieldNames.ID = 'CDACAO'
    FieldNames.LabelColor = 'LABELCOLOR'
    FieldNames.Options = 'OPTIONS'
    FieldNames.ResourceID = 'CDFUNCIONARIO'
    FieldNames.Start = 'TSINICIO'
    FieldNames.State = 'STATE'
    Left = 209
    Top = 90
  end
  object cds1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp1'
    Left = 293
    Top = 90
  end
  object dsp1: TDataSetProvider
    DataSet = sds1
    Left = 321
    Top = 90
  end
  object dts1: TDataSource
    DataSet = cds1
    Left = 349
    Top = 90
  end
  object sds1: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmmain.sqlc
    Left = 377
    Top = 90
  end
end
