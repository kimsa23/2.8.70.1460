object frmcartacorrecaocte: Tfrmcartacorrecaocte
  Left = 511
  Top = 121
  BorderStyle = bsDialog
  Caption = 'Carta Corre'#231#227'o CTE'
  ClientHeight = 561
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grd: TcxGrid
    Left = 0
    Top = 96
    Width = 800
    Height = 429
    TabOrder = 8
    LookAndFeel.NativeStyle = False
    object tbv: TcxGridDBTableView
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
      DataController.DataSource = dts
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object tbvCDCARTACORRECAOCTEGRUPO: TcxGridDBColumn
        Caption = 'Grupo'
        DataBinding.FieldName = 'CDCARTACORRECAOCTEGRUPO'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'CDCARTACORRECAOCTEGRUPO'
        Properties.ListColumns = <
          item
            FieldName = 'NMCARTACORRECAOCTEGRUPO'
          end>
        Properties.ListOptions.ShowHeader = False
        Options.Editing = False
        Width = 150
      end
      object tbvCDCARTACORRECAOCTEITEM: TcxGridDBColumn
        Caption = 'Campo'
        DataBinding.FieldName = 'CDCARTACORRECAOCTEITEM'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownWidth = 500
        Properties.KeyFieldNames = 'CDCARTACORRECAOCTEITEM'
        Properties.ListColumns = <
          item
            FieldName = 'NMCARTACORRECAOCTEITEM'
          end>
        Properties.ListOptions.ShowHeader = False
        Options.Editing = False
        Width = 200
      end
      object tbvDSITCARTACORRECAOCTE: TcxGridDBColumn
        Caption = 'Valor'
        DataBinding.FieldName = 'DSITCARTACORRECAOCTE'
        Options.Editing = False
        Width = 350
      end
      object tbvNUITEM: TcxGridDBColumn
        Caption = 'Item'
        DataBinding.FieldName = 'NUITEM'
        Options.Editing = False
      end
    end
    object grdLevel1: TcxGridLevel
      GridView = tbv
    end
  end
  object btnok: TcxButton
    Left = 310
    Top = 533
    Width = 75
    Height = 25
    Caption = '&OK'
    Default = True
    Enabled = False
    LookAndFeel.NativeStyle = False
    ModalResult = 1
    TabOrder = 9
  end
  object btncancelar: TcxButton
    Left = 398
    Top = 533
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Cancelar'
    LookAndFeel.NativeStyle = False
    ModalResult = 2
    TabOrder = 10
  end
  object cbxcdcartacorrecaoctegrupo: TcxDBLookupComboBox
    Left = 59
    Top = 2
    DataBinding.DataField = 'CDCARTACORRECAOCTEGRUPO'
    DataBinding.DataSource = dts
    Properties.KeyFieldNames = 'CDCARTACORRECAOCTEGRUPO'
    Properties.ListColumns = <
      item
        FieldName = 'NMCARTACORRECAOCTEGRUPO'
      end>
    Properties.ListOptions.ShowHeader = False
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 0
    OnEnter = colorenter
    OnExit = cbxcdcartacorrecaoctegrupoExit
    Width = 719
  end
  object cbxcdcartacorrecaocteitem: TcxDBLookupComboBox
    Left = 59
    Top = 24
    DataBinding.DataField = 'CDCARTACORRECAOCTEITEM'
    DataBinding.DataSource = dts
    Properties.KeyFieldNames = 'CDCARTACORRECAOCTEITEM'
    Properties.ListColumns = <
      item
        FieldName = 'NMCARTACORRECAOCTEITEM'
      end>
    Properties.ListOptions.ShowHeader = False
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 1
    OnEnter = colorenter
    OnExit = colorexit
    Width = 719
  end
  object cxLabel1: TcxLabel
    Left = 0
    Top = 6
    Caption = 'Grupo'
    Transparent = True
  end
  object cxLabel2: TcxLabel
    Left = 0
    Top = 28
    Caption = 'Item'
    Transparent = True
  end
  object edtDSITCARTACORRECAOCTE: TcxDBTextEdit
    Left = 59
    Top = 46
    DataBinding.DataField = 'DSITCARTACORRECAOCTE'
    DataBinding.DataSource = dts
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 2
    OnEnter = colorenter
    OnExit = colorexit
    Width = 719
  end
  object cxLabel3: TcxLabel
    Left = 0
    Top = 50
    Caption = 'Novo Valor '
    Transparent = True
  end
  object edtnuitem: TcxDBSpinEdit
    Left = 59
    Top = 68
    DataBinding.DataField = 'NUITEM'
    DataBinding.DataSource = dts
    Properties.MinValue = 1.000000000000000000
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 3
    OnEnter = colorenter
    OnExit = colorexit
    Width = 300
  end
  object cxLabel4: TcxLabel
    Left = 0
    Top = 72
    Caption = 'N'#186' '#205'tem'
    Transparent = True
  end
  object btnsalvar: TcxButton
    Left = 625
    Top = 70
    Width = 75
    Height = 25
    Action = actsalvar
    LookAndFeel.NativeStyle = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
  end
  object btnexcluir: TcxButton
    Left = 706
    Top = 70
    Width = 75
    Height = 25
    Action = actexcluir
    LookAndFeel.NativeStyle = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
  end
  object btnnovo: TcxButton
    Left = 472
    Top = 70
    Width = 75
    Height = 25
    Action = actnovo
    LookAndFeel.NativeStyle = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object btneditar: TcxButton
    Left = 548
    Top = 70
    Width = 75
    Height = 25
    Action = acteditar
    LookAndFeel.NativeStyle = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
  object cds: TClientDataSet
    PersistDataPacket.Data = {
      910000009619E0BD010000001800000004000000000003000000910017434443
      41525441434F52524543414F435445475255504F040001000000000016434443
      41525441434F52524543414F4354454954454D0400010000000000064E554954
      454D040001000000000014445349544341525441434F52524543414F43544502
      0049000000010005574944544802000200F4010000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CDCARTACORRECAOCTEGRUPO'
        DataType = ftInteger
      end
      item
        Name = 'CDCARTACORRECAOCTEITEM'
        DataType = ftInteger
      end
      item
        Name = 'NUITEM'
        DataType = ftInteger
      end
      item
        Name = 'DSITCARTACORRECAOCTE'
        DataType = ftString
        Size = 500
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 232
    Top = 528
    object cdsCDCARTACORRECAOCTEGRUPO: TIntegerField
      FieldName = 'CDCARTACORRECAOCTEGRUPO'
    end
    object cdsCDCARTACORRECAOCTEITEM: TIntegerField
      FieldName = 'CDCARTACORRECAOCTEITEM'
    end
    object cdsNUITEM: TIntegerField
      FieldName = 'NUITEM'
    end
    object cdsDSITCARTACORRECAOCTE: TStringField
      FieldName = 'DSITCARTACORRECAOCTE'
      Size = 500
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 264
    Top = 528
  end
  object act: TActionList
    Images = dtmmain.imlMain
    Left = 488
    Top = 224
    object actnovo: TAction
      Caption = '&Novo'
      Hint = ' '
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = actnovoExecute
    end
    object actexcluir: TAction
      Caption = 'Excluir'
      Hint = ' '
      ImageIndex = 5
      ShortCut = 16472
      OnExecute = actexcluirExecute
    end
    object acteditar: TAction
      Caption = '&Editar'
      Hint = ' '
      ImageIndex = 7
      ShortCut = 16453
      OnExecute = acteditarExecute
    end
    object actsalvar: TAction
      Caption = '&Salvar'
      Hint = ' '
      ImageIndex = 2
      ShortCut = 16467
      OnExecute = actsalvarExecute
    end
  end
end
