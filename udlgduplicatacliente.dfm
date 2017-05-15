object frmdlgduplicatacliente: Tfrmdlgduplicatacliente
  Left = 302
  Top = 88
  BorderStyle = bsDialog
  Caption = 'Contas a Receber'
  ClientHeight = 561
  ClientWidth = 804
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
    Width = 804
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
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLBAIXA'
          Column = tbvVLBAIXA
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLDUPLICATA'
          Column = tbvVLDUPLICATA
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
          Column = tbvvlsaldo
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object tbvNUDUPLICATA: TcxGridDBColumn
        Caption = 'Duplicata'
        DataBinding.FieldName = 'NUDUPLICATA'
        Width = 60
      end
      object tbvDTEMISSAO: TcxGridDBColumn
        Caption = 'Emiss'#227'o'
        DataBinding.FieldName = 'DTEMISSAO'
      end
      object tbvDTPRORROGACAO: TcxGridDBColumn
        Caption = 'Vencimento'
        DataBinding.FieldName = 'DTPRORROGACAO'
      end
      object tbvDTBAIXA: TcxGridDBColumn
        Caption = 'Baixa'
        DataBinding.FieldName = 'DTBAIXA'
      end
      object tbvVLDUPLICATA: TcxGridDBColumn
        Caption = 'Valor'
        DataBinding.FieldName = 'VLDUPLICATA'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object tbvvlsaldo: TcxGridDBColumn
        Caption = 'Saldo'
        DataBinding.FieldName = 'VLSALDO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object tbvVLBAIXA: TcxGridDBColumn
        Caption = 'Baixa'
        DataBinding.FieldName = 'VLBAIXA'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object tbvVLRECEBIDO: TcxGridDBColumn
        Caption = 'Recebido'
        DataBinding.FieldName = 'VLRECEBIDO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object tbvNMSTDUPLICATA: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'NMSTDUPLICATA'
        Width = 57
      end
    end
    object grdLevel1: TcxGridLevel
      GridView = tbv
    end
  end
  object pnl: TPanel
    Left = 0
    Top = 523
    Width = 804
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
    Top = 140
  end
end
