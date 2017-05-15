object frmpontotrabalho: Tfrmpontotrabalho
  Left = 540
  Top = 129
  Caption = 'Ponto Trabalho'
  ClientHeight = 590
  ClientWidth = 1064
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 82
    Width = 1064
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 1064
      Height = 40
      Align = alTop
    end
    object lblcdfuncionario: TLabel
      Left = 3
      Top = 3
      Width = 91
      Height = 13
      Caption = 'Funcion'#225'rio (F4)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnDblClick = lblcdfuncionarioDblClick
    end
    object lbldtinicio: TLabel
      Left = 403
      Top = 3
      Width = 25
      Height = 13
      Caption = 'In'#237'cio'
    end
    object lbldttermino: TLabel
      Left = 526
      Top = 3
      Width = 38
      Height = 13
      Caption = 'T'#233'rmino'
    end
    object cbxcdfuncionario: TcxLookupComboBox
      Left = 125
      Top = 16
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'CDFUNCIONARIO'
      Properties.ListColumns = <
        item
          FieldName = 'NMFUNCIONARIO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.OnEditValueChanged = cbxcdfuncionarioPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = cbxcdfuncionarioEnter
      OnExit = cbxcdfuncionarioExit
      Width = 277
    end
    object edtdtinicio: TcxDateEdit
      Left = 403
      Top = 16
      Properties.OnEditValueChanged = cbxcdfuncionarioPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      Width = 121
    end
    object edtdttermino: TcxDateEdit
      Left = 526
      Top = 16
      Properties.OnEditValueChanged = cbxcdfuncionarioPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      Width = 121
    end
    object edtcdfuncionario: TcxButtonEdit
      Left = 3
      Top = 16
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcdfuncionarioPropertiesButtonClick
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtcdfuncionarioEnter
      OnExit = edtcdfuncionarioExit
      OnKeyPress = edtcdfuncionarioKeyPress
      Width = 121
    end
  end
  object pnl: TcxLabel
    Left = 0
    Top = 59
    Align = alTop
    AutoSize = False
    Caption = 'Ponto Trabalho'
    ParentFont = False
    Style.BorderStyle = ebsNone
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -17
    Style.Font.Name = 'Arial'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
    Height = 23
    Width = 1064
  end
  object grd: TcxGrid
    Left = 0
    Top = 145
    Width = 1064
    Height = 445
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    object tbv: TcxGridDBBandedTableView
      PopupMenu = pumrhocorrencia
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
      OnCustomDrawCell = tbvCustomDrawCell
      DataController.DataSource = dts
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          OnGetText = tbv2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
          FieldName = 'HRABONADA'
          Column = tbvHRABONADA
        end
        item
          Kind = skSum
          OnGetText = tbv2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
          FieldName = 'HRATRASO'
          Column = tbvHRATRASO
        end
        item
          Kind = skSum
          OnGetText = tbv2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
          FieldName = 'HRCREDITO'
          Column = tbvHRCREDITO
        end
        item
          Kind = skSum
          OnGetText = tbv2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
          FieldName = 'HRDEBITO'
          Column = tbvHRDEBITO
        end
        item
          Kind = skSum
          OnGetText = tbv2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
          FieldName = 'HREXTRA'
          Column = tbvHREXTRA
        end
        item
          Kind = skSum
          OnGetText = tbv2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
          FieldName = 'HRNOTURNO'
          Column = tbvHRNOTURNO
        end
        item
          Kind = skSum
          OnGetText = tbv2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
          FieldName = 'HRTRABALHADA'
          Column = tbvHRTRABALHADA
        end
        item
          Kind = skSum
          OnGetText = tbv2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
          FieldName = 'HREXTRA50'
          Column = tbvHREXTRA50
        end
        item
          Kind = skSum
          OnGetText = tbv2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
          FieldName = 'HREXTRA100'
          Column = tbvHREXTRA100
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Bands = <
        item
          Caption = 'Data'
        end
        item
          Caption = '1'#186' Per'#237'odo'
        end
        item
          Caption = '2'#186' Per'#237'odo'
        end
        item
          Caption = 'Totalizadores'
        end
        item
          Caption = 'Abono'
        end
        item
          Caption = 'Cor'
          Visible = False
        end>
      object tbvdia: TcxGridDBBandedColumn
        Caption = 'Dia'
        DataBinding.FieldName = 'DTEMISSAO'
        PropertiesClassName = 'TcxDateEditProperties'
        HeaderAlignmentHorz = taCenter
        Options.Focusing = False
        Styles.Content = dtmmain.cxStyle6
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvSemana: TcxGridDBBandedColumn
        Caption = 'Semana'
        DataBinding.FieldName = 'DTEMISSAO'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DisplayFormat = 'dddd'
        HeaderAlignmentHorz = taCenter
        Options.Focusing = False
        Styles.Content = dtmmain.cxStyle6
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvHRPONTO1: TcxGridDBBandedColumn
        Caption = 'Entrada'
        DataBinding.FieldName = 'HRPONTO1'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.TimeFormat = tfHourMin
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvHRPONTO2: TcxGridDBBandedColumn
        Caption = 'Sa'#237'da'
        DataBinding.FieldName = 'HRPONTO2'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.TimeFormat = tfHourMin
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvHRPONTO3: TcxGridDBBandedColumn
        Caption = 'Entrada'
        DataBinding.FieldName = 'HRPONTO3'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.TimeFormat = tfHourMin
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvHRPONTO4: TcxGridDBBandedColumn
        Caption = 'Sa'#237'da'
        DataBinding.FieldName = 'HRPONTO4'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.TimeFormat = tfHourMin
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvHRTRABALHADA: TcxGridDBBandedColumn
        Caption = 'H. Trab.'
        DataBinding.FieldName = 'HRTRABALHADA'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.TimeFormat = tfHourMin
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Focusing = False
        Styles.Content = dtmmain.cxStyle7
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvHRNOTURNO: TcxGridDBBandedColumn
        Caption = 'H. Not.'
        DataBinding.FieldName = 'HRNOTURNO'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.TimeFormat = tfHourMin
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Focusing = False
        Styles.Content = dtmmain.cxStyle7
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvHRABONADA: TcxGridDBBandedColumn
        Caption = 'H. Abonada'
        DataBinding.FieldName = 'HRABONADA'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.TimeFormat = tfHourMin
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Focusing = False
        Styles.Content = dtmmain.cxStyle7
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tbvHRATRASO: TcxGridDBBandedColumn
        Caption = 'Atraso'
        DataBinding.FieldName = 'HRATRASO'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.TimeFormat = tfHourMin
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Focusing = False
        Styles.Content = dtmmain.cxStyle7
        Position.BandIndex = 3
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tbvHRDEBITO: TcxGridDBBandedColumn
        Caption = 'H. D'#233'bito'
        DataBinding.FieldName = 'HRDEBITO'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.TimeFormat = tfHourMin
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Focusing = False
        Styles.Content = dtmmain.cxStyle7
        Position.BandIndex = 3
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tbvHREXTRA: TcxGridDBBandedColumn
        Caption = 'H. Extra'
        DataBinding.FieldName = 'HREXTRA'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.TimeFormat = tfHourMin
        Visible = False
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Focusing = False
        Styles.Content = dtmmain.cxStyle7
        Position.BandIndex = 3
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object tbvHRCREDITO: TcxGridDBBandedColumn
        Caption = 'H. Cr'#233'dito'
        DataBinding.FieldName = 'HRCREDITO'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.TimeFormat = tfHourMin
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Focusing = False
        Styles.Content = dtmmain.cxStyle7
        Position.BandIndex = 3
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object tbvboferiado: TcxGridDBBandedColumn
        DataBinding.FieldName = 'boferiado'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tbvHREXTRA100: TcxGridDBBandedColumn
        Caption = 'H Extra 100%'
        DataBinding.FieldName = 'HREXTRA100'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.TimeFormat = tfHourMin
        Options.Focusing = False
        Width = 75
        Position.BandIndex = 3
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object tbvHREXTRA50: TcxGridDBBandedColumn
        Caption = 'H Extra 50%'
        DataBinding.FieldName = 'HREXTRA50'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.TimeFormat = tfHourMin
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Focusing = False
        Width = 70
        Position.BandIndex = 3
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object tbvCDTPABONO1: TcxGridDBBandedColumn
        Caption = 'Abono 1'
        DataBinding.FieldName = 'CDTPABONO1'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownWidth = 150
        Properties.KeyFieldNames = 'CDTPABONO'
        Properties.ListColumns = <
          item
            FieldName = 'NMABREVIADO'
          end>
        Properties.ListOptions.ShowHeader = False
        OnCustomDrawCell = tbvCDTPABONO1CustomDrawCell
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvCDTPABONO2: TcxGridDBBandedColumn
        Caption = 'Abono 2'
        DataBinding.FieldName = 'CDTPABONO2'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownWidth = 150
        Properties.KeyFieldNames = 'CDTPABONO'
        Properties.ListColumns = <
          item
            FieldName = 'NMABREVIADO'
          end>
        Properties.ListOptions.ShowHeader = False
        OnCustomDrawCell = tbvCDTPABONO2CustomDrawCell
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvCDTPABONO3: TcxGridDBBandedColumn
        Caption = 'Abono 3'
        DataBinding.FieldName = 'CDTPABONO3'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownWidth = 150
        Properties.KeyFieldNames = 'CDTPABONO'
        Properties.ListColumns = <
          item
            FieldName = 'NMABREVIADO'
          end>
        Properties.ListOptions.ShowHeader = False
        OnCustomDrawCell = tbvCDTPABONO3CustomDrawCell
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tbvCDTPABONO4: TcxGridDBBandedColumn
        Caption = 'Abono 4'
        DataBinding.FieldName = 'CDTPABONO4'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownWidth = 150
        Properties.KeyFieldNames = 'CDTPABONO'
        Properties.ListColumns = <
          item
            FieldName = 'NMABREVIADO'
          end>
        Properties.ListOptions.ShowHeader = False
        OnCustomDrawCell = tbvCDTPABONO4CustomDrawCell
        Position.BandIndex = 4
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tbvCDTURNO: TcxGridDBBandedColumn
        Caption = 'Turno'
        DataBinding.FieldName = 'CDTURNO'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownWidth = 450
        Properties.KeyFieldNames = 'CDTURNO'
        Properties.ListColumns = <
          item
            FieldName = 'NMTURNO'
          end>
        Properties.ListOptions.ShowHeader = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tbvNUCOR1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NUCOR1'
        Visible = False
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvNUCOR2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NUCOR2'
        Visible = False
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvNUCOR3: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NUCOR3'
        Visible = False
        Position.BandIndex = 5
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tbvNUCOR4: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NUCOR4'
        Visible = False
        Position.BandIndex = 5
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
    object grdLevel1: TcxGridLevel
      GridView = tbv
    end
  end
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 123
    Width = 1064
    Height = 22
    Align = dalTop
    BarManager = bmg
    ExplicitTop = 164
  end
  object dts: TDataSource
    Left = 752
    Top = 63
  end
  object bmg: TdxBarManager
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
    Left = 848
    Top = 64
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
      Caption = 'pontotrabalho'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 21
      DockingStyle = dsTop
      FloatLeft = 392
      FloatTop = 299
      FloatClientWidth = 62
      FloatClientHeight = 494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btneditar'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'btnimportar'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnfechar'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 1
      UseOwnFont = True
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
    object bmgBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'ponto'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 346
      FloatTop = 220
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnfiltro'
        end
        item
          Visible = True
          ItemName = 'btnagrupar'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
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
          ItemName = 'dxbrlrgbtnfechar'
        end>
    end
    object dxbrlrgbtnfechar: TdxBarLargeButton
      Action = actfechar
      Category = 0
      AutoGrayScale = False
    end
    object btnfiltro: TdxBarButton
      Action = actfiltro
      Category = 0
    end
    object btnagrupar: TdxBarButton
      Action = actagrupar
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actexcel
      Category = 0
    end
    object btnimportar: TdxBarLargeButton
      Action = actimportar
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = popimportar
    end
    object dxBarButton1: TdxBarButton
      Action = actiponto
      Category = 0
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actprimeiro
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actultimo
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actproximo
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actanterior
      Category = 0
    end
    object btneditar: TdxBarLargeButton
      Action = acteditar
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = actCalcular
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = actsalvar
      Category = 0
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = actcancelar
      Category = 0
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = actatualizar
      Category = 0
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 816
    Top = 65
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actsetfocusrecurso: TAction
      ShortCut = 115
      OnExecute = actsetfocusrecursoExecute
    end
    object actatualizarquery: TAction
      ShortCut = 116
      OnExecute = actatualizarqueryExecute
    end
    object actfiltro: TAction
      Caption = 'Filtro'
      ImageIndex = 13
      OnExecute = actfiltroExecute
    end
    object actagrupar: TAction
      Caption = 'Agrupar'
      ImageIndex = 54
      OnExecute = actagruparExecute
    end
    object actexcel: TAction
      Caption = 'Excel'
      ImageIndex = 15
      OnExecute = actexcelExecute
    end
    object actimportar: TAction
      Caption = 'Importar'
      ImageIndex = 167
      OnExecute = actimportarExecute
    end
    object actiponto: TAction
      Caption = 'Iponto'
      OnExecute = actipontoExecute
    end
    object actprimeiro: TAction
      Caption = 'Primeiro'
      ImageIndex = 8
      OnExecute = actprimeiroExecute
    end
    object actanterior: TAction
      Caption = 'Anterior'
      ImageIndex = 9
      OnExecute = actanteriorExecute
    end
    object actproximo: TAction
      Caption = 'Pr'#243'ximo'
      ImageIndex = 10
      OnExecute = actproximoExecute
    end
    object actultimo: TAction
      Caption = #217'ltimo'
      ImageIndex = 11
      OnExecute = actultimoExecute
    end
    object acteditar: TAction
      AutoCheck = True
      Caption = 'Editar'
      Enabled = False
      ImageIndex = 7
      OnExecute = acteditarExecute
    end
    object actCalcular: TAction
      Caption = 'Calcular'
      Enabled = False
      ImageIndex = 14
      OnExecute = actCalcularExecute
    end
    object actsalvar: TAction
      Caption = 'Salvar'
      Enabled = False
      ImageIndex = 2
      OnExecute = actsalvarExecute
    end
    object actcancelar: TAction
      Caption = 'Cancelar'
      Enabled = False
      ImageIndex = 4
      OnExecute = actcancelarExecute
    end
    object actatualizar: TAction
      Caption = 'Atualizar'
      Enabled = False
      ImageIndex = 12
      OnExecute = actatualizarExecute
    end
  end
  object popimportar: TdxBarPopupMenu
    BarManager = bmg
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    Left = 784
    Top = 64
  end
  object pumrhocorrencia: TPopupMenu
    OnPopup = pumrhocorrenciaPopup
    Left = 879
    Top = 65
    object teste1: TMenuItem
      Caption = 'teste'
      Visible = False
      OnClick = teste1Click
    end
  end
end
