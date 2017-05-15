object frmdlghpedidoetapa: Tfrmdlghpedidoetapa
  Left = 359
  Top = 93
  BorderStyle = bsDialog
  Caption = 'Hist'#243'rico de Aprova'#231#227'o'
  ClientHeight = 561
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object grd: TcxGrid
    Left = 0
    Top = 0
    Width = 784
    Height = 523
    Align = alClient
    TabOrder = 0
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
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object tbvDSJUSTIFICATIVA: TcxGridDBColumn
        Caption = 'Justificativa'
        DataBinding.FieldName = 'DSJUSTIFICATIVA'
        PropertiesClassName = 'TcxBlobEditProperties'
        Properties.BlobEditKind = bekMemo
        Properties.BlobPaintStyle = bpsText
        Width = 81
      end
      object tbvTSHISTORICO: TcxGridDBColumn
        Caption = 'Registro'
        DataBinding.FieldName = 'TSHISTORICO'
        Width = 109
      end
      object tbvNMUSUARIO: TcxGridDBColumn
        Caption = 'Usu'#225'rio'
        DataBinding.FieldName = 'NMUSUARIO'
        Width = 59
      end
      object tbvNMCOMPUTADOR: TcxGridDBColumn
        Caption = 'Computador'
        DataBinding.FieldName = 'NMCOMPUTADOR'
        Width = 70
      end
      object tbvNMTPCREDITO: TcxGridDBColumn
        Caption = 'Cr'#233'dito'
        DataBinding.FieldName = 'NMTPCREDITO'
      end
      object tbvNMTPCOMERCIAL: TcxGridDBColumn
        Caption = 'Comercial'
        DataBinding.FieldName = 'NMTPCOMERCIAL'
      end
    end
    object grdLevel1: TcxGridLevel
      GridView = tbv
    end
  end
  object pnl: TPanel
    Left = 0
    Top = 523
    Width = 784
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btnfechar: TcxButton
      Left = 354
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      Default = True
      TabOrder = 0
      OnClick = btnfecharClick
    end
  end
  object dts: TDataSource
    Left = 371
    Top = 168
  end
end
