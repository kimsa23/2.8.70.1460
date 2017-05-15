object frmdlgordprodcaopesagem: Tfrmdlgordprodcaopesagem
  Left = 296
  Top = 152
  Caption = 'Ordem de Produ'#231#227'o - Pesagem'
  ClientHeight = 756
  ClientWidth = 1034
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnlbottom: TPanel
    Left = 0
    Top = 709
    Width = 1034
    Height = 47
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btnok: TcxButton
      Left = 431
      Top = 11
      Width = 75
      Height = 25
      Caption = '&OK'
      Default = True
      TabOrder = 0
      OnClick = btnokClick
    end
    object btncancel: TcxButton
      Left = 528
      Top = 11
      Width = 75
      Height = 25
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object grd: TcxGrid
    Left = 0
    Top = 33
    Width = 1034
    Height = 676
    Align = alClient
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    object tbv: TcxGridDBBandedTableView
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
      Bands = <
        item
          Caption = 'Mat'#233'ria-Prima'
          Width = 154
        end
        item
          Caption = 'OP:'
          Width = 215
        end
        item
          Caption = 'OP:'
          Width = 215
        end
        item
          Caption = 'OP:'
          Width = 215
        end
        item
          Caption = 'OP:'
          Width = 215
        end>
      object tbvCDDIGITADO: TcxGridDBBandedColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'CDDIGITADO'
        Options.Focusing = False
        Styles.Content = dtmmain.cxStyle6
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvNULOTEBAG1: TcxGridDBBandedColumn
        Caption = 'Lote/Bag'
        DataBinding.FieldName = 'NULOTEBAG1'
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvCDDIGITADO1: TcxGridDBBandedColumn
        Caption = 'MP Substituta'
        DataBinding.FieldName = 'CDDIGITADO1'
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvNULOTEBAG2: TcxGridDBBandedColumn
        Caption = 'Lote/Bag'
        DataBinding.FieldName = 'NULOTEBAG2'
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvCDDIGITADO2: TcxGridDBBandedColumn
        Caption = 'MP Substituta'
        DataBinding.FieldName = 'CDDIGITADO2'
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvNULOTEBAG3: TcxGridDBBandedColumn
        Caption = 'Lote/Bag'
        DataBinding.FieldName = 'NULOTEBAG3'
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvCDDIGITADO3: TcxGridDBBandedColumn
        Caption = 'MP Substituta'
        DataBinding.FieldName = 'CDDIGITADO3'
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tbvNULOTEBAG4: TcxGridDBBandedColumn
        Caption = 'Lote/Bag'
        DataBinding.FieldName = 'NULOTEBAG4'
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tbvCDDIGITADO4: TcxGridDBBandedColumn
        Caption = 'MP Substituta'
        DataBinding.FieldName = 'CDDIGITADO4'
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
    end
    object grdLevel1: TcxGridLevel
      GridView = tbv
    end
  end
  object pnltop: TPanel
    Left = 0
    Top = 0
    Width = 1034
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object lbldtemissao: TcxLabel
      Left = 4
      Top = 8
      Caption = 'Emiss'#227'o'
    end
    object edtdtemissao: TcxDateEdit
      Left = 48
      Top = 7
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Width = 104
    end
    object lblcdfuncionario: TcxLabel
      Left = 150
      Top = 8
      Caption = 'Respons'#225'vel'
    end
    object cbxcdfuncionario: TcxLookupComboBox
      Left = 216
      Top = 7
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'CDFUNCIONARIO'
      Properties.ListColumns = <
        item
          FieldName = 'NMFUNCIONARIO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Width = 262
    end
    object lblcdequipamento: TcxLabel
      Left = 476
      Top = 8
      Caption = 'Balan'#231'a Aditivos'
    end
    object cbxcdequipamento: TcxLookupComboBox
      Left = 561
      Top = 7
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'CDEQUIPAMENTO'
      Properties.ListColumns = <
        item
          FieldName = 'NMEQUIPAMENTO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Width = 187
    end
    object lblcdequipamento2: TcxLabel
      Left = 749
      Top = 8
      Caption = 'Balan'#231'a Agregados'
    end
    object cbxcdequipamento2: TcxLookupComboBox
      Left = 845
      Top = 7
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'CDEQUIPAMENTO'
      Properties.ListColumns = <
        item
          FieldName = 'NMEQUIPAMENTO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      Width = 187
    end
  end
  object cds: TClientDataSet
    PersistDataPacket.Data = {
      350100009619E0BD01000000180000000900000000000300000035010A434444
      4947495441444F0100490000000100055749445448020002001E000A4E554C4F
      5445424147310100490000000100055749445448020002001E000A4E554C4F54
      45424147320100490000000100055749445448020002001E000A4E554C4F5445
      424147330100490000000100055749445448020002001E000A4E554C4F544542
      41473401004900000001000557494454480200020028000B4344444947495441
      444F310100490000000100055749445448020002001E000B4344444947495441
      444F320100490000000100055749445448020002001E000B4344444947495441
      444F330100490000000100055749445448020002001E000B4344444947495441
      444F340100490000000100055749445448020002001E000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CDDIGITADO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NULOTEBAG1'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NULOTEBAG2'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NULOTEBAG3'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NULOTEBAG4'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CDDIGITADO1'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CDDIGITADO2'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CDDIGITADO3'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CDDIGITADO4'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 368
    Top = 144
    object cdsCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      Size = 30
    end
    object cdsNULOTEBAG1: TStringField
      FieldName = 'NULOTEBAG1'
      Size = 30
    end
    object cdsNULOTEBAG2: TStringField
      FieldName = 'NULOTEBAG2'
      Size = 30
    end
    object cdsNULOTEBAG3: TStringField
      FieldName = 'NULOTEBAG3'
      Size = 30
    end
    object cdsNULOTEBAG4: TStringField
      FieldName = 'NULOTEBAG4'
      Size = 40
    end
    object cdsCDDIGITADO1: TStringField
      FieldName = 'CDDIGITADO1'
      OnValidate = cdsCDDIGITADO1Validate
      Size = 30
    end
    object cdsCDDIGITADO2: TStringField
      FieldName = 'CDDIGITADO2'
      OnValidate = cdsCDDIGITADO1Validate
      Size = 30
    end
    object cdsCDDIGITADO3: TStringField
      FieldName = 'CDDIGITADO3'
      OnValidate = cdsCDDIGITADO1Validate
      Size = 30
    end
    object cdsCDDIGITADO4: TStringField
      FieldName = 'CDDIGITADO4'
      OnValidate = cdsCDDIGITADO1Validate
      Size = 30
    end
  end
  object dts: TDataSource
    DataSet = cds
    Left = 400
    Top = 144
  end
end
