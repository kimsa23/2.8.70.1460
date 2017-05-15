object frmdlgsetavisotarefa: Tfrmdlgsetavisotarefa
  Left = 656
  Top = 246
  BorderStyle = bsDialog
  Caption = 'Configura'#231#227'o de Aviso de Tarefa'
  ClientHeight = 561
  ClientWidth = 784
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object btnok: TcxButton
    Left = 305
    Top = 529
    Width = 75
    Height = 25
    Caption = '&OK'
    Default = True
    LookAndFeel.NativeStyle = False
    ModalResult = 1
    TabOrder = 0
  end
  object btncancelar: TcxButton
    Left = 403
    Top = 529
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Cancelar'
    LookAndFeel.NativeStyle = False
    ModalResult = 2
    TabOrder = 1
  end
  object grd: TcxGrid
    Left = 8
    Top = 8
    Width = 769
    Height = 513
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    object cxGridDBTableView3: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
    end
    object grdDBTableView1: TcxGridDBTableView
      OnKeyDown = grdDBTableView1KeyDown
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.PriorPage.Enabled = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.NextPage.Enabled = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Enabled = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
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
      DataController.DataSource = dts
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLTOTAL'
        end
        item
          Kind = skSum
          FieldName = 'QTITEM'
        end
        item
          Kind = skSum
          FieldName = 'QTDIAS'
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grdDBTableView1CDEVENTOREGISTRO: TcxGridDBColumn
        Caption = 'Evento Registro'
        DataBinding.FieldName = 'CDEVENTOREGISTRO'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'CDEVENTOREGISTRO'
        Properties.ListColumns = <
          item
            FieldName = 'NMEVENTOREGISTRO'
          end>
        Properties.ListOptions.ShowHeader = False
        Width = 146
      end
      object grdDBTableView1CDTPTAREFA: TcxGridDBColumn
        Caption = 'Tipo Tarefa'
        DataBinding.FieldName = 'CDTPTAREFA'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'CDTPTAREFA'
        Properties.ListColumns = <
          item
            FieldName = 'NMTPTAREFA'
          end>
        Properties.ListOptions.ShowHeader = False
        Width = 231
      end
    end
    object cxGridLevel3: TcxGridLevel
      GridView = grdDBTableView1
    end
  end
  object dts: TDataSource
    Left = 220
    Top = 524
  end
end
