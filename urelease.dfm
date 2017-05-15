object frmRelease: TfrmRelease
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Release'
  ClientHeight = 604
  ClientWidth = 993
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnltela: TPanel
    Left = 0
    Top = 28
    Width = 993
    Height = 576
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object trv: TcxTreeView
      Left = 0
      Top = 0
      Width = 230
      Height = 383
      Align = alLeft
      Style.HotTrack = True
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnChange = trvChange
    end
    object grd: TcxGrid
      Left = 238
      Top = 0
      Width = 755
      Height = 383
      Align = alClient
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      object tbv: TcxGridDBTableView
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
        DataController.DataSource = dts
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tbvcdqpchamado: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'cdqpchamado'
          Width = 50
        end
        object tbvcdqptpchamado: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'Cdqptpchamado'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 200
          Properties.KeyFieldNames = 'CDQPTPCHAMADO'
          Properties.ListColumns = <
            item
              FieldName = 'NMQPTPCHAMADO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dtsqptpchamado
          Width = 110
        end
        object tbvCDTAREFA: TcxGridDBColumn
          Caption = 'Tarefa'
          DataBinding.FieldName = 'CDTAREFA'
          Width = 50
        end
        object tbvcdqptela: TcxGridDBColumn
          Caption = 'Tela/Processo'
          DataBinding.FieldName = 'CDQPTELA'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 200
          Properties.KeyFieldNames = 'CDQPTELA'
          Properties.ListColumns = <
            item
              FieldName = 'NMQPTELA'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dtsqptela
          Width = 120
        end
        object tbvcdqpstchamado: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'cdqpstchamado'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 200
          Properties.KeyFieldNames = 'CDQPSTCHAMADO'
          Properties.ListColumns = <
            item
              FieldName = 'nmqpstchamado'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dtsqpstchamado
          Width = 75
        end
        object tbvcdqpversao: TcxGridDBColumn
          Caption = 'Vers'#227'o'
          DataBinding.FieldName = 'cdqpversao'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'cdqpversao'
          Properties.ListColumns = <
            item
              FieldName = 'nuversao'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dtsqpversao
          Width = 85
        end
        object tbvdsqpchamado: TcxGridDBColumn
          Caption = 'Chamado'
          DataBinding.FieldName = 'DSQPCHAMADO'
          Width = 480
        end
      end
      object tbvqptela: TcxGridDBTableView
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
        DataController.DataSource = dtsqptela
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tbvqptelacdqptela: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'cdqptela'
        end
        object tbvqptelanmqptela: TcxGridDBColumn
          Caption = 'Tela'
          DataBinding.FieldName = 'nmqptela'
        end
      end
      object tbvqpstchamado: TcxGridDBTableView
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
        DataController.DataSource = dtsqpstchamado
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object tbvqpstchamadocdqpstchamado: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'cdqpstchamado'
        end
        object tbvqpstchamadonmqpstchamado: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'nmqpstchamado'
        end
      end
      object tbvqptpchamado: TcxGridDBTableView
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
        DataController.DataSource = dtsqptpchamado
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tbvqptpchamadocdqptpchamado: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'cdqptpchamado'
        end
        object tbvqptpchamadonmqptpchamado: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'nmqptpchamado'
        end
      end
      object tbvqpversao: TcxGridDBTableView
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
        DataController.DataSource = dtsqpversao
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tbvqpversaocdqpversao: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'cdqpversao'
        end
        object tbvqpversaonuversao: TcxGridDBColumn
          Caption = 'Vers'#227'o'
          DataBinding.FieldName = 'nuversao'
          Width = 74
        end
        object tbvqpversaocdqpstversao: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'cdqpstversao'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'cdqpstversao'
          Properties.ListColumns = <
            item
              FieldName = 'nmqpstversao'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dtsqpstversao
          Width = 92
        end
        object tbvqpversaots: TcxGridDBColumn
          Caption = 'Criado em '
          DataBinding.FieldName = 'ts'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Kind = ckDateTime
          Width = 111
        end
        object tbvqpversaotsdisponivel: TcxGridDBColumn
          Caption = 'Liberado em '
          DataBinding.FieldName = 'tsdisponivel'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Kind = ckDateTime
          Width = 113
        end
      end
      object lvl: TcxGridLevel
        GridView = tbv
      end
    end
    object spl: TcxSplitter
      Left = 230
      Top = 0
      Width = 8
      Height = 383
      HotZoneClassName = 'TcxMediaPlayer9Style'
    end
    object pgc: TcxPageControl
      Left = 0
      Top = 383
      Width = 993
      Height = 193
      Align = alBottom
      TabOrder = 3
      Properties.ActivePage = tbsChamado
      Properties.CustomButtons.Buttons = <>
      LookAndFeel.NativeStyle = False
      ClientRectBottom = 193
      ClientRectRight = 993
      ClientRectTop = 24
      object tbsChamado: TcxTabSheet
        Caption = 'Chamado'
        ImageIndex = 5
        object lblqptela: TLabel
          Left = 4
          Top = 5
          Width = 67
          Height = 13
          Caption = 'Tela/Processo'
          Transparent = True
        end
        object lblqptpchamado: TLabel
          Left = 350
          Top = 5
          Width = 20
          Height = 13
          Caption = 'Tipo'
          Transparent = True
        end
        object lblqpstchamado: TLabel
          Left = 654
          Top = 5
          Width = 31
          Height = 13
          Caption = 'Status'
          Transparent = True
        end
        object lbldsqpchamado: TLabel
          Left = 4
          Top = 24
          Width = 45
          Height = 13
          Caption = 'Chamado'
          Transparent = True
        end
        object lblcnpj: TLabel
          Left = 4
          Top = 116
          Width = 33
          Height = 13
          Caption = 'Cliente'
          Transparent = True
          Visible = False
        end
        object lblqpversao: TLabel
          Left = 654
          Top = 116
          Width = 33
          Height = 13
          Caption = 'Vers'#227'o'
          Transparent = True
        end
        object lblcdtarefa: TLabel
          Left = 350
          Top = 118
          Width = 32
          Height = 13
          Caption = 'Tarefa'
          Transparent = True
        end
        object cbxcdqptela: TcxDBLookupComboBox
          Left = 75
          Top = 2
          DataBinding.DataField = 'cdqptela'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'cdqptela'
          Properties.ListColumns = <
            item
              FieldName = 'nmqptela'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dtsqptela
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Width = 275
        end
        object cbxcdqptpchamado: TcxDBLookupComboBox
          Left = 383
          Top = 2
          DataBinding.DataField = 'cdqptpchamado'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'cdqptpchamado'
          Properties.ListColumns = <
            item
              FieldName = 'nmqptpchamado'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dtsqptpchamado
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Width = 268
        end
        object cbxcdqpstchamado: TcxDBLookupComboBox
          Left = 688
          Top = 2
          DataBinding.DataField = 'cdqpstchamado'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'cdqpstchamado'
          Properties.ListColumns = <
            item
              FieldName = 'nmqpstchamado'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dtsqpstchamado
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Width = 275
        end
        object memdsqpchamado: TcxDBMemo
          Left = 77
          Top = 23
          DataBinding.DataField = 'dsqpchamado'
          DataBinding.DataSource = dts
          TabOrder = 3
          Height = 89
          Width = 886
        end
        object btnok: TcxButton
          Left = 413
          Top = 139
          Width = 75
          Height = 25
          Action = actok
          TabOrder = 7
        end
        object btncancelar: TcxButton
          Left = 504
          Top = 139
          Width = 75
          Height = 25
          Action = actcancelar
          TabOrder = 8
        end
        object cbxcnpj: TcxDBLookupComboBox
          Left = 77
          Top = 113
          DataBinding.DataField = 'cnpj'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'cnpj'
          Properties.ListColumns = <
            item
              FieldName = 'nome'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dtsclientes
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Visible = False
          Width = 275
        end
        object cbxcdqpversao: TcxDBLookupComboBox
          Left = 688
          Top = 113
          DataBinding.DataField = 'cdqpversao'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'cdqpversao'
          Properties.ListColumns = <
            item
              FieldName = 'nuversao'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dtsqpversao
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Width = 275
        end
        object edtcdtarefa: TcxDBTextEdit
          Left = 383
          Top = 113
          DataBinding.DataField = 'cdtarefa'
          DataBinding.DataSource = dts
          TabOrder = 5
          Width = 268
        end
      end
    end
  end
  object dts: TDataSource
    DataSet = qry
    Left = 304
    Top = 136
  end
  object qry: TFDQuery
    AfterScroll = qryAfterScroll
    Connection = dtmmain.consite
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    Left = 391
    Top = 136
  end
  object dtsqptpchamado: TDataSource
    DataSet = qryqptpchamado
    Left = 304
    Top = 184
  end
  object qryqptpchamado: TFDQuery
    Connection = dtmmain.consite
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    SQL.Strings = (
      'SELECT * FROM qptpchamado order by nmqptpchamado')
    Left = 391
    Top = 184
  end
  object dtsqpstchamado: TDataSource
    DataSet = qryqpstchamado
    Left = 304
    Top = 232
  end
  object qryqpstchamado: TFDQuery
    Connection = dtmmain.consite
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    SQL.Strings = (
      'SELECT * FROM qpstchamado order by nmqpstchamado')
    Left = 391
    Top = 232
  end
  object dtsqptela: TDataSource
    DataSet = qryqptela
    Left = 304
    Top = 280
  end
  object qryqptela: TFDQuery
    Connection = dtmmain.consite
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    SQL.Strings = (
      'SELECT * FROM qptela order by nmqptela')
    Left = 391
    Top = 280
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
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 504
    Top = 288
    DockControlHeights = (
      0
      0
      28
      0)
    object bmgBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      Caption = 'Release'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 1017
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Images = dtmmain.imlMain
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnnovo'
        end
        item
          Visible = True
          ItemName = 'btnEditar'
        end
        item
          Visible = True
          ItemName = 'btnAcompanhamento'
        end
        item
          Visible = True
          ItemName = 'btntela'
        end
        item
          Visible = True
          ItemName = 'btnVersao'
        end
        item
          Visible = True
          ItemName = 'btnStatus'
        end
        item
          Visible = True
          ItemName = 'btnTipo'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object btnnovo: TdxBarButton
      Action = actNovo
      Category = 0
    end
    object btntela: TdxBarButton
      Action = actqptela
      Category = 0
    end
    object btnAcompanhamento: TdxBarButton
      Action = actqpacompanhamento
      Category = 0
    end
    object btnVersao: TdxBarButton
      Action = actqpversao
      Category = 0
    end
    object btnStatus: TdxBarButton
      Action = actqpstchamado
      Category = 0
    end
    object btnTipo: TdxBarButton
      Action = actqptpchamado
      Category = 0
    end
    object btnEditar: TdxBarButton
      Action = actEditar
      Category = 0
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    Left = 552
    Top = 292
    object actNovo: TAction
      Caption = 'Novo'
      ImageIndex = 0
      Visible = False
      OnExecute = actNovoExecute
    end
    object actqptela: TAction
      Caption = 'Tela'
      OnExecute = actqptelaExecute
    end
    object actqpstchamado: TAction
      Caption = 'Status'
      OnExecute = actqpstchamadoExecute
    end
    object actqptpchamado: TAction
      Caption = 'Tipo'
      OnExecute = actqptpchamadoExecute
    end
    object actqpversao: TAction
      Caption = 'Vers'#227'o'
      OnExecute = actqpversaoExecute
    end
    object actqpacompanhamento: TAction
      Caption = 'Acompanhamento'
      Visible = False
      OnExecute = actqpacompanhamentoExecute
    end
    object actEditar: TAction
      Caption = 'Editar'
      ImageIndex = 7
      Visible = False
      OnExecute = actEditarExecute
    end
    object actok: TAction
      Caption = 'Ok'
      OnExecute = actokExecute
    end
    object actcancelar: TAction
      Caption = 'Cancelar'
      OnExecute = actcancelarExecute
    end
  end
  object dtsqpversao: TDataSource
    DataSet = qryqpversao
    Left = 304
    Top = 88
  end
  object qryqpversao: TFDQuery
    Connection = dtmmain.consite
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    SQL.Strings = (
      'SELECT * FROM qpversao order by nuversao desc')
    Left = 391
    Top = 88
  end
  object dtsqpstversao: TDataSource
    DataSet = qryqpstversao
    Left = 472
    Top = 96
  end
  object qryqpstversao: TFDQuery
    Connection = dtmmain.consite
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT * FROM qpstversao')
    Left = 547
    Top = 96
  end
  object qryclientes: TFDQuery
    Connection = dtmmain.consite
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    SQL.Strings = (
      'SELECT cnpj,nome FROM clientes order by nome')
    Left = 391
    Top = 328
  end
  object dtsclientes: TDataSource
    DataSet = qryclientes
    Left = 304
    Top = 328
  end
end
