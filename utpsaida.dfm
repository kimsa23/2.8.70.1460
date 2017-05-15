object frmtpsaida: Tfrmtpsaida
  Left = 652
  Top = 140
  ClientHeight = 621
  ClientWidth = 941
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
  object pnlTOP: TPanel
    Left = 0
    Top = 86
    Width = 941
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 0
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label3: TLabel
      Left = 72
      Top = 0
      Width = 28
      Height = 13
      Caption = 'Nome'
      Transparent = True
    end
    object Label2: TLabel
      Left = 364
      Top = 0
      Width = 76
      Height = 13
      Caption = 'Nome Reduzido'
      Transparent = True
    end
    object Label4: TLabel
      Left = 449
      Top = 1
      Width = 24
      Height = 13
      Caption = 'S'#233'rie'
      Transparent = True
    end
    object edtcodigo: TcxTextEdit
      Left = 5
      Top = 14
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
    object edtnome: TcxDBTextEdit
      Left = 72
      Top = 14
      DataBinding.DataField = 'NMTPSAIDA'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edtnomePropertiesChange
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyPress = nextcontrol
      Width = 291
    end
    object edtNMREDUZIDO: TcxDBTextEdit
      Left = 364
      Top = 14
      DataBinding.DataField = 'NMREDUZIDO'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      Width = 82
    end
    object cbxcdserie: TcxDBLookupComboBox
      Left = 447
      Top = 14
      DataBinding.DataField = 'CDSERIE'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDSERIE'
      Properties.ListColumns = <
        item
          FieldName = 'NMSERIE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.OnEditValueChanged = cbxcdseriePropertiesEditValueChanged
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = cbxcdserieEnter
      OnExit = colorexit
      Width = 154
    end
  end
  object pnl: TcxLabel
    Left = 0
    Top = 63
    Align = alTop
    ParentFont = False
    Style.BorderStyle = ebsSingle
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Arial'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object trv: TcxDBVerticalGrid
    Left = 0
    Top = 126
    Width = 941
    Height = 495
    Align = alClient
    LayoutStyle = lsBandsView
    LookAndFeel.NativeStyle = False
    OptionsView.RowHeaderWidth = 296
    Navigator.Buttons.CustomButtons = <>
    TabOrder = 1
    DataController.DataSource = dts
    Version = 1
    object trvCategoryRow1: TcxCategoryRow
      Properties.Caption = 'Configura'#231#227'o'
      ID = 0
      ParentID = -1
      Index = 0
      Version = 1
    end
    object trvDBEditorRow22: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'Adicionar observa'#231#227'o do tipo'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'boobservacaotpsaida'
      ID = 1
      ParentID = 0
      Index = 0
      Version = 1
    end
    object trvDBEditorRow58: TcxDBEditorRow
      Properties.Caption = 'Observa'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxBlobEditProperties'
      Properties.EditProperties.BlobEditKind = bekMemo
      Properties.EditProperties.BlobPaintStyle = bpsText
      Properties.DataBinding.FieldName = 'DSOBSERVACAO'
      ID = 2
      ParentID = 1
      Index = 0
      Version = 1
    end
    object trvDBEditorRow19: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'Alterar estoque'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOESTOQUE'
      ID = 3
      ParentID = 0
      Index = 1
      Version = 1
    end
    object trvtpentsai: TcxDBEditorRow
      Properties.Caption = 'Movimenta'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxRadioGroupProperties'
      Properties.EditProperties.Columns = 2
      Properties.EditProperties.Items = <
        item
          Caption = 'Entrada'
          Value = 'E'
        end
        item
          Caption = 'Sa'#237'da'
          Value = 'S'
        end>
      Properties.DataBinding.FieldName = 'tpentsai'
      ID = 4
      ParentID = 3
      Index = 0
      Version = 1
    end
    object trvDBEditorRow18: TcxDBEditorRow
      Properties.Caption = 'Arredondar de 0,005 para 0,01'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOARREDONDAR'
      ID = 5
      ParentID = 0
      Index = 2
      Version = 1
    end
    object trvDBEditorRow14: TcxDBEditorRow
      Properties.Caption = 'Calcular Lucro'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOLUCRO'
      ID = 6
      ParentID = 0
      Index = 3
      Version = 1
    end
    object trvDBEditorRow24: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'Comiss'#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOCOMISSAO'
      ID = 7
      ParentID = 0
      Index = 4
      Version = 1
    end
    object trvDBEditorRow6: TcxDBEditorRow
      Properties.Caption = 'Abater o desconto na comiss'#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BODESCONTOCOMISSAO'
      ID = 8
      ParentID = 7
      Index = 0
      Version = 1
    end
    object trvDBEditorRow3: TcxDBEditorRow
      Properties.Caption = 'Comiss'#227'o pelo tipo de comiss'#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOTPCOMISSAO'
      ID = 9
      ParentID = 7
      Index = 1
      Version = 1
    end
    object trvDBEditorRow7: TcxDBEditorRow
      Properties.Caption = 'Representante Obrigat'#243'rio'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOREPRESENTANTEOBRIGATORIO'
      ID = 10
      ParentID = 7
      Index = 2
      Version = 1
    end
    object trvCategoryRow6: TcxCategoryRow
      Expanded = False
      Properties.Caption = 'Email'
      ID = 11
      ParentID = 0
      Index = 5
      Version = 1
    end
    object trvDBEditorRow8: TcxDBEditorRow
      Properties.Caption = 'e-mail c'#243'pia oculta'
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.FieldName = 'EMAILCOPIA'
      ID = 12
      ParentID = 11
      Index = 0
      Version = 1
    end
    object trvDBEditorRow9: TcxDBEditorRow
      Properties.Caption = 'T'#237'tulo'
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.FieldName = 'DSTITULOEMAIL'
      ID = 13
      ParentID = 11
      Index = 1
      Version = 1
    end
    object trvDBEditorRow10: TcxDBEditorRow
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
    object trvDBEditorRow59: TcxDBEditorRow
      Properties.Caption = 'Exporta'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOEXPORTACAO'
      ID = 15
      ParentID = 0
      Index = 6
      Version = 1
    end
    object trvDBEditorRow20: TcxDBEditorRow
      Properties.Caption = 'Exportar contabilidade'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOEXPORTARXTDC'
      ID = 16
      ParentID = 0
      Index = 7
      Version = 1
    end
    object trvDBEditorRow27: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'Gera Contas a Receber'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BODUPLICATA'
      ID = 17
      ParentID = 0
      Index = 8
      Version = 1
    end
    object trvDBEditorRow26: TcxDBEditorRow
      Properties.Caption = 'Valor duplicata diferente valor total'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOVLDUPLICATADIFERENTEVLTOTAL'
      ID = 18
      ParentID = 17
      Index = 0
      Version = 1
    end
    object trvDBEditorRow17: TcxDBEditorRow
      Properties.Caption = 'Preencher o hist'#243'rico com NF+Cliente'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BODSHISTORICONF'
      ID = 19
      ParentID = 17
      Index = 1
      Version = 1
    end
    object trvDBEditorRow21: TcxDBEditorRow
      Properties.Caption = 'Importa'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOIMPORTACAO'
      ID = 20
      ParentID = 0
      Index = 9
      Version = 1
    end
    object trvbolocacao: TcxDBEditorRow
      Properties.Caption = 'Loca'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOLOCACAO'
      ID = 21
      ParentID = 0
      Index = 10
      Version = 1
    end
    object trvNUCASADECIMALQUANTIDADE: TcxDBEditorRow
      Properties.Caption = 'N'#186' Casas Decimais Quantidade na Impress'#227'o NFE'
      Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
      Properties.DataBinding.FieldName = 'NUCASADECIMALQUANTIDADE'
      ID = 22
      ParentID = 0
      Index = 11
      Version = 1
    end
    object trvDBEditorRow60: TcxDBEditorRow
      Properties.Caption = 'N'#186' Casas Decimais Valor Unit'#225'rio na Impress'#227'o NFE'
      Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
      Properties.DataBinding.FieldName = 'NUCASADECIMALVLUNITARIO'
      ID = 23
      ParentID = 0
      Index = 12
      Version = 1
    end
    object trvDBEditorRow25: TcxDBEditorRow
      Properties.Caption = 'Pedido'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOPEDIDO'
      ID = 24
      ParentID = 0
      Index = 13
      Version = 1
    end
    object trvDBEditorRow23: TcxDBEditorRow
      Properties.Caption = 'Pedido Compra do Cliente para sair no XML da Nota'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOPEDIDOCOMPRA'
      ID = 25
      ParentID = 0
      Index = 14
      Version = 1
    end
    object trvDBEditorRow38: TcxDBEditorRow
      Properties.Caption = 'Tipo de Pessoa'
      Properties.EditPropertiesClassName = 'TcxRadioGroupProperties'
      Properties.EditProperties.Columns = 2
      Properties.EditProperties.Items = <
        item
          Caption = 'Fornecedor'
          Value = 'F'
        end
        item
          Caption = 'Cliente'
          Value = 'C'
        end>
      Properties.DataBinding.FieldName = 'TPFORNCLIENTE'
      ID = 26
      ParentID = 0
      Index = 15
      Version = 1
    end
    object trvCategoryRow2: TcxCategoryRow
      Expanded = False
      Properties.Caption = 'Tributa'#231#227'o'
      ID = 27
      ParentID = -1
      Index = 1
      Version = 1
    end
    object trvDBEditorRow45: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'ICMS'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'boICMS'
      ID = 28
      ParentID = 27
      Index = 0
      Version = 1
    end
    object trvDBEditorRow63: TcxDBEditorRow
      Properties.Caption = 'Considerar o valor de outras despesas como reembolso'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'boicmsoutdespesareembolso'
      ID = 29
      ParentID = 28
      Index = 0
      Version = 1
    end
    object trvDBEditorRow65: TcxDBEditorRow
      Properties.Caption = 'Exibir Base ICMS na grade'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOEXIBIRVLBASEICMS'
      ID = 30
      ParentID = 28
      Index = 1
      Version = 1
    end
    object trvDBEditorRow66: TcxDBEditorRow
      Properties.Caption = 'Exibir Ajuste Base ICMS na grade'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOEXIBIRBASEICMSAJUSTE'
      ID = 31
      ParentID = 28
      Index = 2
      Version = 1
    end
    object trvDBEditorRow64: TcxDBEditorRow
      Properties.Caption = 'N'#227'o consistir a Al'#237'quota de redu'#231#227'o de ICMS para ST ICMS 20'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BONALICMSRED'
      ID = 32
      ParentID = 28
      Index = 3
      Version = 1
    end
    object trvDBEditorRow61: TcxDBEditorRow
      Properties.Caption = 
        'N'#227'o consistir a situa'#231#227'o tribut'#225'ria do ICMS do Produto com o CFO' +
        'P'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BONAOCONSISTESTICMSCFOP'
      ID = 33
      ParentID = 28
      Index = 4
      Version = 1
    end
    object trvDBEditorRow57: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'Substitui'#231#227'o Tribut'#225'ria'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOICMSSUBST'
      ID = 34
      ParentID = 28
      Index = 5
      Version = 1
    end
    object trvDBEditorRow4: TcxDBEditorRow
      Properties.Caption = 'Gerar contas a receber da Substitui'#231#227'o Tribut'#225'ria'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BODUPLICATAICMSST'
      ID = 35
      ParentID = 34
      Index = 0
      Version = 1
    end
    object trvDBEditorRow47: TcxDBEditorRow
      Properties.Caption = 'Reduzido'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOICMSRED'
      ID = 36
      ParentID = 28
      Index = 6
      Version = 1
    end
    object trvDBEditorRow56: TcxDBEditorRow
      Properties.Caption = 'IPI'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'boIPI'
      ID = 37
      ParentID = 27
      Index = 1
      Version = 1
    end
    object trvDBEditorRow55: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'ISS'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'boISS'
      ID = 38
      ParentID = 27
      Index = 2
      Version = 1
    end
    object trvDBEditorRow54: TcxDBEditorRow
      Properties.Caption = 'Reten'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BORETENCAOISS'
      ID = 39
      ParentID = 38
      Index = 0
      Version = 1
    end
    object trvDBEditorRow53: TcxDBEditorRow
      Properties.Caption = 'Aliquota'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.DataBinding.FieldName = 'ALISS'
      ID = 40
      ParentID = 38
      Index = 1
      Version = 1
    end
    object trvDBEditorRow50: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'COFINS'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'boCOFINS'
      ID = 41
      ParentID = 27
      Index = 3
      Version = 1
    end
    object trvDBEditorRow52: TcxDBEditorRow
      Properties.Caption = 'Servi'#231'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOCOFINSRET'
      ID = 42
      ParentID = 41
      Index = 0
      Version = 1
    end
    object trvDBEditorRow51: TcxDBEditorRow
      Properties.Caption = 'Reten'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BORETENCAOCOFINS'
      ID = 43
      ParentID = 41
      Index = 1
      Version = 1
    end
    object trvDBEditorRow49: TcxDBEditorRow
      Properties.Caption = 'Aliquota'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.DataBinding.FieldName = 'alcofins'
      ID = 44
      ParentID = 41
      Index = 2
      Version = 1
    end
    object trvDBEditorRow46: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'PIS'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'boPIS'
      ID = 45
      ParentID = 27
      Index = 4
      Version = 1
    end
    object trvDBEditorRow44: TcxDBEditorRow
      Properties.Caption = 'Servi'#231'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOPISRET'
      ID = 46
      ParentID = 45
      Index = 0
      Version = 1
    end
    object trvDBEditorRow43: TcxDBEditorRow
      Properties.Caption = 'Reten'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'boretencaopis'
      ID = 47
      ParentID = 45
      Index = 1
      Version = 1
    end
    object trvDBEditorRow42: TcxDBEditorRow
      Properties.Caption = 'Aliquota'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.DataBinding.FieldName = 'alpis'
      ID = 48
      ParentID = 45
      Index = 2
      Version = 1
    end
    object trvDBEditorRow41: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'Contribui'#231#227'o Social'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOCONTRIBSOCIAL'
      ID = 49
      ParentID = 27
      Index = 5
      Version = 1
    end
    object trvDBEditorRow40: TcxDBEditorRow
      Properties.Caption = 'Reten'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BORETENCAOCONTRIBSOCIAL'
      ID = 50
      ParentID = 49
      Index = 0
      Version = 1
    end
    object trvDBEditorRow39: TcxDBEditorRow
      Properties.Caption = 'Aliquota'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.DataBinding.FieldName = 'ALCONTRIBSOCIAL'
      ID = 51
      ParentID = 49
      Index = 1
      Version = 1
    end
    object trvDBEditorRow37: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'INSS'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOINSS'
      ID = 52
      ParentID = 27
      Index = 6
      Version = 1
    end
    object trvDBEditorRow36: TcxDBEditorRow
      Properties.Caption = 'Reten'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BORETENCAOINSS'
      ID = 53
      ParentID = 52
      Index = 0
      Version = 1
    end
    object trvDBEditorRow35: TcxDBEditorRow
      Properties.Caption = 'Aliquota'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.DataBinding.FieldName = 'alinss'
      ID = 54
      ParentID = 52
      Index = 1
      Version = 1
    end
    object trvDBEditorRow34: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'IRRF'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOIRRF'
      ID = 55
      ParentID = 27
      Index = 7
      Version = 1
    end
    object trvDBEditorRow33: TcxDBEditorRow
      Properties.Caption = 'Reten'#231#227'o'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BORETENCAOIRRF'
      ID = 56
      ParentID = 55
      Index = 0
      Version = 1
    end
    object trvDBEditorRow32: TcxDBEditorRow
      Properties.Caption = 'Aliquota'
      Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
      Properties.DataBinding.FieldName = 'alirrf'
      ID = 57
      ParentID = 55
      Index = 1
      Version = 1
    end
    object trvDBEditorRow29: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'Frete'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'bofrete'
      ID = 58
      ParentID = 27
      Index = 8
      Version = 1
    end
    object trvDBEditorRow30: TcxDBEditorRow
      Properties.Caption = 'Isen'#231#227'o ICMS Substitui'#231#227'o sobre Frete'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOFRETEISENTOICMSSUBST'
      ID = 59
      ParentID = 58
      Index = 0
      Version = 1
    end
    object trvDBEditorRow28: TcxDBEditorRow
      Properties.Caption = 'Calcular Frete Substitui'#231#227'o Tribut'#225'ria'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'bocalcularfretesub'
      ID = 60
      ParentID = 58
      Index = 1
      Version = 1
    end
    object trvDBEditorRow16: TcxDBEditorRow
      Properties.Caption = 'Redespacho'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOREDESPACHO'
      ID = 61
      ParentID = 58
      Index = 2
      Version = 1
    end
    object trvDBEditorRow31: TcxDBEditorRow
      Properties.Caption = 'Gerar RPA'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOGERARRPA'
      ID = 62
      ParentID = 58
      Index = 3
      Version = 1
    end
    object trvDBEditorRow12: TcxDBEditorRow
      Properties.Caption = 'Marca'
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.FieldName = 'dsmarca'
      ID = 63
      ParentID = 58
      Index = 4
      Version = 1
    end
    object trvDBEditorRow11: TcxDBEditorRow
      Properties.Caption = 'Esp'#233'cie'
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.FieldName = 'dsespecie'
      ID = 64
      ParentID = 58
      Index = 5
      Version = 1
    end
    object trvDBEditorRow13: TcxDBEditorRow
      Properties.Caption = 'Exibir Peso'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOEXIBIRPESO'
      ID = 65
      ParentID = 58
      Index = 6
      Version = 1
    end
    object trvDBEditorRow5: TcxDBEditorRow
      Properties.Caption = 'Ratear Peso'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BORATEARPESO'
      ID = 66
      ParentID = 58
      Index = 7
      Version = 1
    end
    object trvCategoryRow3: TcxCategoryRow
      Expanded = False
      Properties.Caption = 'CFOP'
      ID = 67
      ParentID = -1
      Index = 2
      Version = 1
    end
    object trvcdtpitem: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'Tipo de Item do Produto'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'CDTPITEM'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMTPITEM'
        end>
      Properties.DataBinding.FieldName = 'CDTPITEM'
      ID = 68
      ParentID = 67
      Index = 0
      Version = 1
    end
    object trvCategoryRow5: TcxCategoryRow
      Properties.Caption = 'Dentro da Unidade Federativa do Emitente'
      ID = 69
      ParentID = 68
      Index = 0
      Version = 1
    end
    object trvCDCFOPDUF: TcxDBEditorRow
      Properties.Caption = 'Sem Substitui'#231#227'o Tribut'#225'ria'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'CDCFOP'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMCFOP2'
        end>
      Properties.EditProperties.ListOptions.ShowHeader = False
      Properties.DataBinding.FieldName = 'CDCFOPDUF'
      ID = 70
      ParentID = 69
      Index = 0
      Version = 1
    end
    object trvCDCFOPDUFSUBTRIB: TcxDBEditorRow
      Properties.Caption = 'Com Substitui'#231#227'o Tribut'#225'ria'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'CDCFOP'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMCFOP2'
        end>
      Properties.EditProperties.ListOptions.ShowHeader = False
      Properties.DataBinding.FieldName = 'CDCFOPDUFSUBTRIB'
      ID = 71
      ParentID = 69
      Index = 1
      Version = 1
    end
    object trvCategoryRow4: TcxCategoryRow
      Properties.Caption = 'Fora da Unidade Federativa do Emitente'
      ID = 72
      ParentID = 68
      Index = 1
      Version = 1
    end
    object trvCDCFOPFUF: TcxDBEditorRow
      Properties.Caption = 'Sem Substitui'#231#227'o Tribut'#225'ria'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'CDCFOP'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMCFOP2'
        end>
      Properties.EditProperties.ListOptions.ShowHeader = False
      Properties.DataBinding.FieldName = 'CDCFOPFUF'
      ID = 73
      ParentID = 72
      Index = 0
      Version = 1
    end
    object trvCDCFOPFUFSUBTRIB: TcxDBEditorRow
      Properties.Caption = 'Com Substitui'#231#227'o Tribut'#225'ria'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'CDCFOP'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMCFOP2'
        end>
      Properties.EditProperties.ListOptions.ShowHeader = False
      Properties.DataBinding.FieldName = 'CDCFOPFUFSUBTRIB'
      ID = 74
      ParentID = 72
      Index = 1
      Version = 1
    end
    object trvCDTPITEMOUTRO: TcxDBEditorRow
      Expanded = False
      Properties.Caption = 'Tipo de Item do Produto'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'CDTPITEM'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMTPITEM'
        end>
      Properties.DataBinding.FieldName = 'CDTPITEMOUTRO'
      ID = 75
      ParentID = 67
      Index = 1
      Version = 1
    end
    object trvCategoryRow8: TcxCategoryRow
      Properties.Caption = 'Dentro da Unidade Federativa do Emitente'
      ID = 76
      ParentID = 75
      Index = 0
      Version = 1
    end
    object trvCDCFOPDUFOUTRO: TcxDBEditorRow
      Properties.Caption = 'Sem Substitui'#231#227'o Tribut'#225'ria'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'CDCFOP'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMCFOP2'
        end>
      Properties.DataBinding.FieldName = 'CDCFOPDUFOUTRO'
      ID = 77
      ParentID = 76
      Index = 0
      Version = 1
    end
    object trvCDCFOPDUFSUBTRIBOUTRO: TcxDBEditorRow
      Properties.Caption = 'Com Substitui'#231#227'o Tribut'#225'ria'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'CDCFOP'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMCFOP2'
        end>
      Properties.DataBinding.FieldName = 'CDCFOPDUFSUBTRIBOUTRO'
      ID = 78
      ParentID = 76
      Index = 1
      Version = 1
    end
    object trvCategoryRow9: TcxCategoryRow
      Properties.Caption = 'Fora da Unidade Federativa do Emitente'
      ID = 79
      ParentID = 75
      Index = 1
      Version = 1
    end
    object trvCDCFOPFUFOUTRO: TcxDBEditorRow
      Properties.Caption = 'Sem Substitui'#231#227'o Tribut'#225'ria'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'CDCFOP'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMCFOP2'
        end>
      Properties.DataBinding.FieldName = 'CDCFOPFUFOUTRO'
      ID = 80
      ParentID = 79
      Index = 0
      Version = 1
    end
    object trvCDCFOPFUFSUBTRIBOUTRO: TcxDBEditorRow
      Properties.Caption = 'Com Substitui'#231#227'o Tribut'#225'ria'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'CDCFOP'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMCFOP2'
        end>
      Properties.DataBinding.FieldName = 'CDCFOPFUFSUBTRIBOUTRO'
      ID = 81
      ParentID = 79
      Index = 1
      Version = 1
    end
    object trvpdv: TcxCategoryRow
      Expanded = False
      Properties.Caption = 'PDV'
      ID = 82
      ParentID = -1
      Index = 3
      Version = 1
    end
    object trvDBEditorRow1: TcxDBEditorRow
      Properties.Caption = 'N'#250'mero Caixa'
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.FieldName = 'NUCAIXA'
      ID = 83
      ParentID = 82
      Index = 0
      Version = 1
    end
    object trvDBEditorRow2: TcxDBEditorRow
      Properties.Caption = 'N'#250'mero S'#233'rie'
      Properties.EditPropertiesClassName = 'TcxTextEditProperties'
      Properties.DataBinding.FieldName = 'NUSERIE'
      ID = 84
      ParentID = 82
      Index = 1
      Version = 1
    end
    object trvcdmodelo: TcxDBEditorRow
      Properties.Caption = 'Modelo'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.DropDownListStyle = lsFixedList
      Properties.EditProperties.KeyFieldNames = 'CDMODELO'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'NMMODELO'
        end>
      Properties.EditProperties.ListOptions.ShowHeader = False
      Properties.DataBinding.FieldName = 'CDMODELO'
      ID = 85
      ParentID = 82
      Index = 2
      Version = 1
    end
    object trvCategoryRow7: TcxCategoryRow
      Expanded = False
      Properties.Caption = 'Itens'
      ID = 86
      ParentID = -1
      Index = 4
      Version = 1
    end
    object trvDBEditorRow62: TcxDBEditorRow
      Properties.Caption = 'Desconto por item'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOITEMDESCONTO'
      ID = 87
      ParentID = 86
      Index = 0
      Version = 1
    end
    object trvDBEditorRow15: TcxDBEditorRow
      Height = 17
      Properties.Caption = 'Informa'#231#227'o Adicional'
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.UseAlignmentWhenInplace = True
      Properties.EditProperties.ValueChecked = 'S'
      Properties.EditProperties.ValueUnchecked = 'N'
      Properties.DataBinding.FieldName = 'BOINFADICIONAL'
      ID = 88
      ParentID = 86
      Index = 1
      Version = 1
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 742
    Top = 100
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
    Left = 670
    Top = 100
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
    Left = 706
    Top = 100
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
      Caption = 'tpsaida'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 25
      DockingStyle = dsTop
      FloatLeft = 240
      FloatTop = 96
      FloatClientWidth = 62
      FloatClientHeight = 494
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
      FloatLeft = 235
      FloatTop = 192
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
