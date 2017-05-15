object frmcfop: Tfrmcfop
  Left = 422
  Top = 139
  ClientHeight = 583
  ClientWidth = 1020
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
  object Panel1: TPanel
    Left = 0
    Top = 63
    Width = 1020
    Height = 520
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object bvl1: TBevel
      Left = 0
      Top = 23
      Width = 1020
      Height = 42
      Align = alTop
      Shape = bsLeftLine
      ExplicitWidth = 1019
    end
    object Label1: TLabel
      Left = 5
      Top = 26
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label3: TLabel
      Left = 72
      Top = 26
      Width = 28
      Height = 13
      Caption = 'Nome'
      Transparent = True
    end
    object pnl: TcxLabel
      Left = 0
      Top = 0
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
    object edtnome: TcxDBTextEdit
      Left = 72
      Top = 40
      DataBinding.DataField = 'NMCFOP'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edtnomePropertiesChange
      TabOrder = 1
      Width = 617
    end
    object edtcodigo: TcxTextEdit
      Left = 5
      Top = 40
      TabOrder = 0
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 66
    end
    object vgr: TcxDBVerticalGrid
      Left = 0
      Top = 65
      Width = 1020
      Height = 455
      Align = alClient
      LayoutStyle = lsBandsView
      LookAndFeel.NativeStyle = False
      OptionsView.RowHeaderWidth = 341
      Navigator.Buttons.CustomButtons = <>
      TabOrder = 3
      DataController.DataSource = dts
      Version = 1
      object vgrboativar: TcxDBEditorRow
        Properties.Caption = 'Ativo'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOATIVAR'
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object vgrcdcfopdevolucao: TcxDBEditorRow
        Properties.Caption = 'Usar este CFOP na devolu'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.KeyFieldNames = 'CDCFOP'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMCFOP2'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDCFOPDEVOLUCAO'
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object vgrDBEditorRow4: TcxDBEditorRow
        Properties.Caption = 'Considerar para aplicar a regra de situa'#231#227'o no pedido de venda'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPEDIDO'
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object vgrDBEditorRow5: TcxDBEditorRow
        Properties.Caption = 'CT-e'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCTE'
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      object vgrDBEditorRow1: TcxDBEditorRow
        Properties.Caption = 'Descri'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxBlobEditProperties'
        Properties.EditProperties.BlobEditKind = bekMemo
        Properties.EditProperties.BlobPaintStyle = bpsText
        Properties.DataBinding.FieldName = 'DSCFOP'
        ID = 4
        ParentID = -1
        Index = 4
        Version = 1
      end
      object vgrDBEditorRow13: TcxDBEditorRow
        Properties.Caption = 'Devolu'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODEVOLUCAO'
        ID = 5
        ParentID = -1
        Index = 5
        Version = 1
      end
      object vgrDBEditorRow14: TcxDBEditorRow
        Properties.Caption = 'Calcular Difal'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODIFAL'
        ID = 6
        ParentID = -1
        Index = 6
        Version = 1
      end
      object vgrDBEditorRow3: TcxDBEditorRow
        Properties.Caption = 'Diferencial Al'#237'quota'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODIFERENCIALALIQUOTA'
        ID = 7
        ParentID = -1
        Index = 7
        Version = 1
      end
      object vgrDBEditorRow6: TcxDBEditorRow
        Properties.Caption = 'Estoque Terceiro'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOESTOQUETERCEIRO'
        ID = 8
        ParentID = -1
        Index = 8
        Version = 1
      end
      object vgrDBEditorRow7: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'ICMS Substitui'#231#227'o Tribut'#225'ria'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOICMSSUBTRIB'
        ID = 9
        ParentID = -1
        Index = 9
        Version = 1
      end
      object vgrDBEditorRow11: TcxDBEditorRow
        Properties.Caption = 'Aceita Produto de Substitui'#231#227'o Tribut'#225'ria'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOACEITAICMSSUBTRIB'
        ID = 10
        ParentID = 9
        Index = 0
        Version = 1
      end
      object vgrDBEditorRow2: TcxDBEditorRow
        Properties.Caption = 'Gerar Contas a Receber'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOGERACONTASRECEBER'
        ID = 11
        ParentID = -1
        Index = 10
        Version = 1
      end
      object vgrbolivroproducao: TcxDBEditorRow
        Properties.Caption = 'Livro Produ'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOLIVROPRODUCAO'
        ID = 12
        ParentID = -1
        Index = 11
        Version = 1
      end
      object vgrDBEditorRow9: TcxDBEditorRow
        Properties.Caption = 'Mensagem'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DSMENSAGEM'
        ID = 13
        ParentID = -1
        Index = 12
        Version = 1
      end
      object vgrCDTPITEM: TcxDBEditorRow
        Properties.Caption = 'Tipo de Item'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.KeyFieldNames = 'CDTPITEM'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMTPITEM'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDTPITEM'
        ID = 14
        ParentID = -1
        Index = 13
        Version = 1
      end
      object vgrDBEditorRow12: TcxDBEditorRow
        Properties.Caption = 'Usar em Dentro e Fora do Estado'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOUFDIFERENTE'
        ID = 15
        ParentID = -1
        Index = 14
        Version = 1
      end
      object vgrCategoryRow2: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Ciapi'
        ID = 16
        ParentID = -1
        Index = 15
        Version = 1
      end
      object vgrDBEditorRow23: TcxDBEditorRow
        Properties.Caption = 'Tributada e Exporta'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOTRIBUTADACIAPI'
        ID = 17
        ParentID = 16
        Index = 0
        Version = 1
      end
      object vgrDBEditorRow22: TcxDBEditorRow
        Properties.Caption = 'Sa'#237'da'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOSAIDACIAPI'
        ID = 18
        ParentID = 16
        Index = 1
        Version = 1
      end
      object vgrCategoryRow3: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Situa'#231#227'o Tribut'#225'ria Simples Nacional'
        ID = 19
        ParentID = -1
        Index = 16
        Version = 1
      end
      object vgrNUSTICMSSIMPLES: TcxDBEditorRow
        Properties.Caption = 'ICMS'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.KeyFieldNames = 'NUSTICMS'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMSTICMS'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'NUSTICMSSIMPLES'
        ID = 20
        ParentID = 19
        Index = 0
        Version = 1
      end
      object vgrNUSTIPISIMPLES: TcxDBEditorRow
        Properties.Caption = 'IPI'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'NUSTIPI'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMSTIPI'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'NUSTIPISIMPLES'
        ID = 21
        ParentID = 19
        Index = 1
        Version = 1
      end
      object vgrNUSTPISSIMPLES: TcxDBEditorRow
        Properties.Caption = 'PIS'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.KeyFieldNames = 'NUSTPIS'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMSTPIS'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'NUSTPISSIMPLES'
        ID = 22
        ParentID = 19
        Index = 2
        Version = 1
      end
      object vgrNUSTCOFINSSIMPLES: TcxDBEditorRow
        Properties.Caption = 'COFINS'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'NUSTCOFINS'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMSTCOFINS'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'NUSTCOFINSSIMPLES'
        ID = 23
        ParentID = 19
        Index = 3
        Version = 1
      end
      object vgrCategoryRow4: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Situa'#231#227'o Tribut'#225'ria D'#233'bito/Cr'#233'dito'
        ID = 24
        ParentID = -1
        Index = 17
        Version = 1
      end
      object vgrnusticms: TcxDBEditorRow
        Properties.Caption = 'ICMS'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.KeyFieldNames = 'NUSTICMS'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMSTICMS'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'NUSTICMS'
        ID = 25
        ParentID = 24
        Index = 0
        Version = 1
      end
      object vgrNUSTIPI: TcxDBEditorRow
        Properties.Caption = 'IPI'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.KeyFieldNames = 'NUSTIPI'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMSTIPI'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'NUSTIPI'
        ID = 26
        ParentID = 24
        Index = 1
        Version = 1
      end
      object vgrNUSTPIS: TcxDBEditorRow
        Properties.Caption = 'PIS'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'NUSTPIS'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMSTPIS'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'NUSTPIS'
        ID = 27
        ParentID = 24
        Index = 2
        Version = 1
      end
      object vgrNUSTCOFINS: TcxDBEditorRow
        Properties.Caption = 'COFINS'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'NUSTCOFINS'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMSTCOFINS'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'NUSTCOFINS'
        ID = 28
        ParentID = 24
        Index = 3
        Version = 1
      end
      object vgrCategoryRow5: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Lei da Transpar'#234'ncia'
        ID = 29
        ParentID = -1
        Index = 18
        Version = 1
      end
      object vgrDBEditorRow8: TcxDBEditorRow
        Properties.Caption = 'Exibir Valor Tributos'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOEXIBIRTRIBUTOS'
        ID = 30
        ParentID = 29
        Index = 0
        Version = 1
      end
      object vgrDBEditorRow10: TcxDBEditorRow
        Properties.Caption = 'Calcular pelo IBPT'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCALCULARIBPT'
        ID = 31
        ParentID = 29
        Index = 1
        Version = 1
      end
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 44
    object actAbrir: TAction
      Caption = 'Abrir'
      Hint = 'Abrir'
      ImageIndex = 1
      ShortCut = 16449
      OnExecute = actAbrirExecute
    end
    object actEditar: TAction
      Caption = 'Editar'
      Enabled = False
      Hint = 'Editar'
      ImageIndex = 7
      ShortCut = 16453
      OnExecute = actEditarExecute
    end
    object actSalvar: TAction
      Caption = 'Salvar'
      Enabled = False
      Hint = 'Salvar'
      ImageIndex = 2
      ShortCut = 16467
      OnExecute = actSalvarExecute
    end
    object actImprimir: TAction
      Caption = 'Imprimir'
      Enabled = False
      Hint = 'Imprimir'
      ImageIndex = 3
      ShortCut = 16457
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      Enabled = False
      Hint = 'Cancelar'
      ImageIndex = 4
      ShortCut = 16474
      OnExecute = actCancelarExecute
    end
    object actPrimeiro: TAction
      Caption = 'Primeiro'
      Hint = 'Primeiro'
      ImageIndex = 8
      ShortCut = 16454
      OnExecute = actPrimeiroExecute
    end
    object actAnterior: TAction
      Caption = 'Anterior'
      Enabled = False
      Hint = 'Anterior'
      ImageIndex = 9
      ShortCut = 16468
      OnExecute = actAnteriorExecute
    end
    object actProximo: TAction
      Caption = 'Pr'#243'ximo'
      Enabled = False
      Hint = 'Pr'#243'ximo'
      ImageIndex = 10
      ShortCut = 16464
      OnExecute = actProximoExecute
    end
    object actUltimo: TAction
      Caption = #218'ltimo'
      Hint = #218'ltimo'
      ImageIndex = 11
      ShortCut = 16469
      OnExecute = actUltimoExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actnovo: TAction
      Caption = 'Novo'
      Hint = 'Novo'
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = actnovoExecute
    end
  end
  object dts: TDataSource
    OnStateChange = dtsStateChange
    Left = 724
    Top = 32
  end
  object bmg1: TdxBarManager
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
    Left = 16
    DockControlHeights = (
      0
      0
      63
      0)
    object dxbrManager1Bar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'cfop'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 25
      DockingStyle = dsTop
      FloatLeft = 392
      FloatTop = 299
      FloatClientWidth = 62
      FloatClientHeight = 494
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnAbrir'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnEditar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnsalvar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtncancelar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnprimeiro'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnanterior'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnproximo'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnultimo'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnimprimir'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnfechar'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrManager1Bar1: TdxBar
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
    object dxbrsbtmRegistro: TdxBarSubItem
      Caption = '&Registro'
      Category = 0
      MergeOrder = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbrlrgbtnAbrir'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnEditar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnsalvar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtncancelar'
        end
        item
          Visible = True
          ItemName = 'dxbrsprtr1'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnprimeiro'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnanterior'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnproximo'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnultimo'
        end
        item
          Visible = True
          ItemName = 'dxbrsprtr2'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnimprimir'
        end
        item
          Visible = True
          ItemName = 'dxbrsprtr3'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnfechar'
        end>
    end
    object dxbrlrgbtnEditar: TdxBarLargeButton
      Action = actEditar
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnAbrir: TdxBarLargeButton
      Action = actAbrir
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnsalvar: TdxBarLargeButton
      Action = actSalvar
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtncancelar: TdxBarLargeButton
      Action = actCancelar
      Category = 0
      AutoGrayScale = False
    end
    object dxbrsprtr1: TdxBarSeparator
      Category = 0
      Visible = ivAlways
      ShowCaption = False
    end
    object dxbrlrgbtnprimeiro: TdxBarLargeButton
      Action = actPrimeiro
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnanterior: TdxBarLargeButton
      Action = actAnterior
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnproximo: TdxBarLargeButton
      Action = actProximo
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnultimo: TdxBarLargeButton
      Action = actUltimo
      Category = 0
      AutoGrayScale = False
    end
    object dxbrsprtr2: TdxBarSeparator
      Category = 0
      Visible = ivAlways
      ShowCaption = False
    end
    object dxbrlrgbtnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      AutoGrayScale = False
    end
    object dxbrsprtr3: TdxBarSeparator
      Category = 0
      Visible = ivAlways
      ShowCaption = False
    end
    object dxbrlrgbtnfechar: TdxBarLargeButton
      Action = actfechar
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actnovo
      Category = 0
    end
  end
end
