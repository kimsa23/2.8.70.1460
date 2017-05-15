object frmtpordcompra: Tfrmtpordcompra
  Left = 637
  Top = 214
  ClientHeight = 652
  ClientWidth = 1011
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
    Width = 1011
    Height = 589
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object bvl1: TBevel
      Left = 0
      Top = 23
      Width = 1011
      Height = 41
      Align = alTop
      ExplicitWidth = 1007
    end
    object Label1: TLabel
      Left = 3
      Top = 25
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label3: TLabel
      Left = 70
      Top = 25
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
      Left = 70
      Top = 39
      DataBinding.DataField = 'NMTPORDCOMPRA'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edtnomePropertiesChange
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Width = 291
    end
    object edtcodigo: TcxTextEdit
      Left = 3
      Top = 39
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 66
    end
    object cxDBVerticalGrid1: TcxDBVerticalGrid
      Left = 0
      Top = 64
      Width = 1011
      Height = 525
      Align = alClient
      LayoutStyle = lsBandsView
      LookAndFeel.NativeStyle = False
      OptionsView.RowHeaderWidth = 272
      Navigator.Buttons.CustomButtons = <>
      TabOrder = 3
      DataController.DataSource = dts
      Version = 1
      object cxDBVerticalGrid1CategoryRow5: TcxCategoryRow
        Properties.Caption = 'Geral'
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow30: TcxDBEditorRow
        Properties.Caption = 'Avaliar IQF'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOIQF'
        ID = 1
        ParentID = 0
        Index = 0
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow27: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Adicionar observa'#231#227'o do tipo'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOOBSERVACAOTPORDCOMPRA'
        ID = 2
        ParentID = 0
        Index = 1
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow28: TcxDBEditorRow
        Properties.Caption = 'Observa'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxBlobEditProperties'
        Properties.EditProperties.BlobEditKind = bekMemo
        Properties.EditProperties.BlobPaintStyle = bpsText
        Properties.DataBinding.FieldName = 'DSOBSERVACAO'
        ID = 3
        ParentID = 2
        Index = 0
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow17: TcxDBEditorRow
        Properties.Caption = 'Aprova'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAPROVACAO'
        ID = 4
        ParentID = 0
        Index = 2
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow16: TcxDBEditorRow
        Properties.Caption = 'Aprova'#231#227'o Financeiro'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAPROVACAOFINANCEIRO'
        ID = 5
        ParentID = 0
        Index = 3
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow26: TcxDBEditorRow
        Properties.Caption = 'Certificado Qualidade'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCERTIFICADO'
        ID = 6
        ParentID = 0
        Index = 4
        Version = 1
      end
      object cxDBVerticalGrid1CategoryRow1: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Digitar'
        ID = 7
        ParentID = 0
        Index = 5
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow6: TcxDBEditorRow
        Properties.Caption = 'Aplica'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAPLICACAODIGITAR'
        ID = 8
        ParentID = 7
        Index = 0
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow5: TcxDBEditorRow
        Properties.Caption = 'Solicitante'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOSOLICITANTEDIGITAR'
        ID = 9
        ParentID = 7
        Index = 1
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow4: TcxDBEditorRow
        Properties.Caption = 'Local'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOLOCALDIGITAR'
        ID = 10
        ParentID = 7
        Index = 2
        Version = 1
      end
      object cxDBVerticalGrid1CategoryRow6: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Email'
        ID = 11
        ParentID = 0
        Index = 6
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow21: TcxDBEditorRow
        Properties.Caption = 'e-mail c'#243'pia oculta'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'EMAILCOPIA'
        ID = 12
        ParentID = 11
        Index = 0
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow18: TcxDBEditorRow
        Properties.Caption = 'T'#237'tulo'
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DSTITULOEMAIL'
        ID = 13
        ParentID = 11
        Index = 1
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow19: TcxDBEditorRow
        Properties.Caption = 'Assunto'
        Properties.EditPropertiesClassName = 'TcxBlobEditProperties'
        Properties.EditProperties.BlobEditKind = bekMemo
        Properties.EditProperties.BlobPaintStyle = bpsText
        Properties.DataBinding.FieldName = 'DSASSUNTOEMAIL'
        ID = 14
        ParentID = 11
        Index = 2
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow11: TcxDBEditorRow
        Properties.Caption = 'F'#243'rmula'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOFORMULA'
        ID = 15
        ParentID = 0
        Index = 7
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow7: TcxDBEditorRow
        Properties.Caption = 'IPI'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOIPI'
        ID = 16
        ParentID = 0
        Index = 8
        Version = 1
      end
      object cxDBVerticalGrid1CategoryRow3: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Relat'#243'rios'
        ID = 17
        ParentID = 0
        Index = 9
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow2: TcxDBEditorRow
        Properties.Caption = 'Modelo 2'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMODELO2'
        ID = 18
        ParentID = 17
        Index = 0
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow1: TcxDBEditorRow
        Properties.Caption = 'Modelo 1'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMODELO1'
        ID = 19
        ParentID = 17
        Index = 1
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow3: TcxDBEditorRow
        Properties.Caption = 'Modelo 3'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMODELO3'
        ID = 20
        ParentID = 17
        Index = 2
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow14: TcxDBEditorRow
        Properties.Caption = 'Modelo 4'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMODELO4'
        ID = 21
        ParentID = 17
        Index = 3
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow15: TcxDBEditorRow
        Properties.Caption = 'Transportadora'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOTRANSPORTADORA'
        ID = 22
        ParentID = 0
        Index = 10
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow9: TcxDBEditorRow
        Properties.Caption = 'Vers'#227'o Documento'
        Properties.DataBinding.FieldName = 'DSVERSAODOCUMENTO'
        ID = 23
        ParentID = 0
        Index = 11
        Version = 1
      end
      object cxDBVerticalGrid1CategoryRow4: TcxCategoryRow
        Properties.Caption = #205'tens'
        ID = 24
        ParentID = -1
        Index = 1
        Version = 1
      end
      object cxDBVerticalGrid1CategoryRow2: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Metal Mec'#226'nico'
        ID = 25
        ParentID = 24
        Index = 0
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow24: TcxDBEditorRow
        Properties.Caption = 'Quantidade de Pe'#231'a'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMQTPECA'
        ID = 26
        ParentID = 25
        Index = 0
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow13: TcxDBEditorRow
        Properties.Caption = 'Associar a Ordem de Produ'#231#227'o?'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITPEDIDO'
        ID = 27
        ParentID = 25
        Index = 1
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow8: TcxDBEditorRow
        Properties.Caption = 'Aplica'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOTPAPLICACAOITENS'
        ID = 28
        ParentID = 24
        Index = 1
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow25: TcxDBEditorRow
        Properties.Caption = 'Casas decimais valor unit'#225'rio'
        Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
        Properties.EditProperties.MaxValue = 4.000000000000000000
        Properties.EditProperties.MinValue = 2.000000000000000000
        Properties.DataBinding.FieldName = 'NUITEMCASADECIMAL'
        ID = 29
        ParentID = 24
        Index = 2
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow23: TcxDBEditorRow
        Properties.Caption = 'Centro de Custo obrigat'#243'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCNTCUSTOOBRIGATORIO'
        ID = 30
        ParentID = 24
        Index = 3
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow29: TcxDBEditorRow
        Properties.Caption = 'Certificado'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMCERTIFICADO'
        ID = 31
        ParentID = 24
        Index = 4
        Version = 1
      end
      object cxDBVerticalGrid1CategoryRow7: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Exibir'
        ID = 32
        ParentID = 24
        Index = 5
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow20: TcxDBEditorRow
        Properties.Caption = 'NCM'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMNUCLFISCAL'
        ID = 33
        ParentID = 32
        Index = 0
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow22: TcxDBEditorRow
        Properties.Caption = 'Situa'#231#227'o Tribut'#225'ria do ICMS'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'NUSTICMS'
        ID = 34
        ParentID = 32
        Index = 1
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow12: TcxDBEditorRow
        Properties.Caption = 'F'#243'rmula'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMDSFORMULA'
        ID = 35
        ParentID = 24
        Index = 6
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow31: TcxDBEditorRow
        Properties.Caption = 'KM Atual e Final'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMKM'
        ID = 36
        ParentID = 24
        Index = 7
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow32: TcxDBEditorRow
        Properties.Caption = 'Or'#231'amento'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMORCAMENTO'
        ID = 37
        ParentID = 24
        Index = 8
        Version = 1
      end
      object cxDBVerticalGrid1DBEditorRow10: TcxDBEditorRow
        Properties.Caption = 'Observa'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOITEMDSOBSERVACAO'
        ID = 38
        ParentID = 24
        Index = 9
        Version = 1
      end
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 44
    object actNovo: TAction
      Caption = 'Novo'
      Hint = 'Novo'
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = actNovoExecute
    end
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
    object actExcluir: TAction
      Caption = 'Excluir'
      Enabled = False
      Hint = 'Excluir'
      ImageIndex = 5
      ShortCut = 16472
      OnExecute = actExcluirExecute
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
    object actcopiar: TAction
      Caption = 'Copiar'
      Enabled = False
      ImageIndex = 100
      OnExecute = actcopiarExecute
    end
  end
  object dts: TDataSource
    OnStateChange = dtsStateChange
    Left = 156
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
      Caption = 'tpproduto'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 25
      DockingStyle = dsTop
      FloatLeft = 369
      FloatTop = 161
      FloatClientWidth = 62
      FloatClientHeight = 498
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbrlrgbtnNovo'
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
          ItemName = 'dxbrlrgbtnexcluir'
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
          ItemName = 'dxBarLargeButton1'
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
          ItemName = 'dxbrlrgbtnNovo'
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
          ItemName = 'dxbrlrgbtnexcluir'
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
    object dxbrlrgbtnNovo: TdxBarLargeButton
      Action = actNovo
      Category = 0
      AutoGrayScale = False
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
    object dxbrlrgbtnexcluir: TdxBarLargeButton
      Action = actExcluir
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtncopiar: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
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
      Action = actcopiar
      Category = 0
    end
  end
end
