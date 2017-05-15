object frmdlgavisotarefa: Tfrmdlgavisotarefa
  Left = 656
  Top = 246
  BorderStyle = bsDialog
  Caption = 'Aviso de Tarefa'
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
    Left = 354
    Top = 529
    Width = 75
    Height = 25
    Caption = '&Fechar'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object grd: TcxGrid
    Left = 8
    Top = 8
    Width = 761
    Height = 513
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    object grdDBTableView1: TcxGridDBTableView
      OnKeyDown = grdDBTableView1KeyDown
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
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skCount
          Position = spFooter
          FieldName = 'CDTAREFA'
          Column = grdDBTableView1CDTAREFA
        end
        item
          Kind = skSum
          Position = spFooter
          FieldName = 'HRDURACAO'
        end
        item
          Kind = skSum
          Position = spFooter
          FieldName = 'HRESTIMADA'
        end>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.NavigatorHints = True
      OptionsData.CancelOnExit = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfAlwaysVisible
      OptionsView.Indicator = True
      object grdDBTableView1CDTAREFA: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'CDTAREFA'
        Width = 43
      end
      object grdDBTableView1NMTAREFA: TcxGridDBColumn
        Caption = 'Tarefa'
        DataBinding.FieldName = 'NMTAREFA'
        Width = 302
      end
      object grdDBTableView1NMCLIENTE: TcxGridDBColumn
        Caption = 'Cliente'
        DataBinding.FieldName = 'NMCLIENTE'
        Width = 149
      end
      object grdDBTableView1NMTPTAREFA: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'NMTPTAREFA'
        Width = 84
      end
      object grdDBTableView1DTEMISSAO: TcxGridDBColumn
        Caption = 'Emiss'#227'o'
        DataBinding.FieldName = 'DTEMISSAO'
        Width = 83
      end
      object grdDBTableView1FUNCIONARIO: TcxGridDBColumn
        Caption = 'Criador'
        DataBinding.FieldName = 'NMFUNCIONARIO'
        Width = 86
      end
      object grdDBTableView1NUCOR: TcxGridDBColumn
        Caption = 'Cor'
        DataBinding.FieldName = 'NUCOR'
        Visible = False
      end
    end
    object grdLevel1: TcxGridLevel
      GridView = grdDBTableView1
    end
  end
  object dts: TDataSource
    Left = 220
    Top = 524
  end
end
