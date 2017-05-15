object frmtpequipamento: Tfrmtpequipamento
  Left = 276
  Top = 134
  ClientHeight = 728
  ClientWidth = 1073
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
    Width = 1073
    Height = 665
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object bvl1: TBevel
      Left = 0
      Top = 23
      Width = 1073
      Height = 41
      Align = alTop
      ExplicitWidth = 1503
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
      DataBinding.DataField = 'NMTPEQUIPAMENTO'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edtnomePropertiesChange
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Width = 291
    end
    object edtcodigo: TcxTextEdit
      Left = 3
      Top = 39
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 66
    end
    object vgr: TcxDBVerticalGrid
      Left = 0
      Top = 64
      Width = 1073
      Height = 601
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LayoutStyle = lsBandsView
      LookAndFeel.NativeStyle = False
      OptionsView.RowHeaderWidth = 771
      Navigator.Buttons.CustomButtons = <>
      ParentFont = False
      TabOrder = 3
      DataController.DataSource = dts
      Version = 1
      object vgrCategoryRow4: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Aba'
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object vgrDBEditorRow14: TcxDBEditorRow
        Properties.Caption = 'Autorizada'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAUTORIZADA'
        ID = 1
        ParentID = 0
        Index = 0
        Version = 1
      end
      object vgrDBEditorRow22: TcxDBEditorRow
        Properties.Caption = 'Medidor'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMEDIDOR'
        ID = 2
        ParentID = 0
        Index = 1
        Version = 1
      end
      object vgrDBEditorRow34: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Apontamento de Produ'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAPONTAMENTO'
        ID = 3
        ParentID = -1
        Index = 1
        Version = 1
      end
      object vgrDBEditorRow27: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Baixa de Estoque Mat'#233'ria-Prima'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOBAIXAESTOQUE'
        ID = 4
        ParentID = 3
        Index = 0
        Version = 1
      end
      object vgrDBEditorRow38: TcxDBEditorRow
        Properties.Caption = 'Exibir a quantidade da formula'#231#227'o como refer'#234'ncia'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOREFERENCIAFORMULACAO'
        ID = 5
        ParentID = 4
        Index = 0
        Version = 1
      end
      object vgrDBEditorRow39: TcxDBEditorRow
        Properties.Caption = 'Exibir e consistir faixa de quantidade'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DataBinding.FieldName = 'BOFAIXA'
        ID = 6
        ParentID = 4
        Index = 1
        Version = 1
      end
      object vgrDBEditorRow26: TcxDBEditorRow
        Properties.Caption = 
          'Baixa de estoque Autom'#225'tico (trazer a quantidade da ordem de pro' +
          'du'#231#227'o)'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOBAIXAESTOQUEAUTOMATICO'
        ID = 7
        ParentID = 4
        Index = 2
        Version = 1
      end
      object vgrCDCOMPUTADOR: TcxDBEditorRow
        Properties.Caption = 'Computador para apontamento'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDCOMPUTADOR'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMCOMPUTADOR'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDCOMPUTADOR'
        ID = 8
        ParentID = 3
        Index = 1
        Version = 1
      end
      object vgrDBEditorRow43: TcxDBEditorRow
        Properties.Caption = 'Considerar o quociente de produ'#231#227'o de acordo com a formula'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOQUOCIENTE'
        ID = 9
        ParentID = 3
        Index = 2
        Version = 1
      end
      object vgrCategoryRow7: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Dados'
        ID = 10
        ParentID = 3
        Index = 3
        Version = 1
      end
      object vgrDBEditorRow31: TcxDBEditorRow
        Properties.Caption = 'C'#243'digo Pesagem'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPESAGEM'
        ID = 11
        ParentID = 10
        Index = 0
        Version = 1
      end
      object vgrDBEditorRow32: TcxDBEditorRow
        Properties.Caption = 'Comprimento'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCOMPRIMENTO'
        ID = 12
        ParentID = 10
        Index = 1
        Version = 1
      end
      object vgrDBEditorRow40: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Entrada de Estoque da Ordem de Produ'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOQTPRODUCAO'
        ID = 13
        ParentID = 10
        Index = 2
        Version = 1
      end
      object vgrDBEditorRow41: TcxDBEditorRow
        Properties.Caption = 'Quantidade ser a mesma que est'#225' na ordem de produ'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOQTPRODUCAOPREENCHIDA'
        ID = 14
        ParentID = 13
        Index = 0
        Version = 1
      end
      object vgrDBEditorRow45: TcxDBEditorRow
        Properties.Caption = 'N'#186' Estrutural'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BONUESTRUTURAL'
        ID = 15
        ParentID = 10
        Index = 3
        Version = 1
      end
      object vgrDBEditorRow52: TcxDBEditorRow
        Properties.Caption = 'Obrigat'#243'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BONUESTRUTURALOBRIGATORIO'
        ID = 16
        ParentID = 15
        Index = 0
        Version = 1
      end
      object vgrDBEditorRow36: TcxDBEditorRow
        Properties.Caption = 'Peso de mistura'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPSMISTURA'
        ID = 17
        ParentID = 10
        Index = 4
        Version = 1
      end
      object vgrDBEditorRow37: TcxDBEditorRow
        Properties.Caption = 'Quantidade de mistura'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOQTMISTURA'
        ID = 18
        ParentID = 10
        Index = 5
        Version = 1
      end
      object vgrDBEditorRow53: TcxDBEditorRow
        Properties.Caption = 'Quantidade de Pe'#231'as'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOQTPECA'
        ID = 19
        ParentID = 10
        Index = 6
        Version = 1
      end
      object vgrDBEditorRow42: TcxDBEditorRow
        Properties.Caption = 'Quantidade de Refugo'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOQTREFUGO'
        ID = 20
        ParentID = 10
        Index = 7
        Version = 1
      end
      object vgrDBEditorRow33: TcxDBEditorRow
        Properties.Caption = 'Reaproveitar Mat'#233'ria-Prima'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOREAPROVEITAR'
        ID = 21
        ParentID = 10
        Index = 8
        Version = 1
      end
      object vgrDBEditorRow29: TcxDBEditorRow
        Properties.Caption = 'Temperatura'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOTEMPERATURA'
        ID = 22
        ParentID = 10
        Index = 9
        Version = 1
      end
      object vgrDBEditorRow28: TcxDBEditorRow
        Properties.Caption = 'Vibra'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOVIBRACAO'
        ID = 23
        ParentID = 10
        Index = 10
        Version = 1
      end
      object vgrDBEditorRow48: TcxDBEditorRow
        Properties.Caption = 'Estanqueidade'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAPONTAMENTOESTANQUEIDADE'
        ID = 24
        ParentID = 3
        Index = 4
        Version = 1
      end
      object vgrDBEditorRow15: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Realizar Apontamento de tempo?'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAPONTAMENTOTEMPO'
        ID = 25
        ParentID = 3
        Index = 5
        Version = 1
      end
      object vgrDBEditorRow30: TcxDBEditorRow
        Properties.Caption = 'Apontamento para mais de um funcion'#225'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAPONTAMENTOTURMA'
        ID = 26
        ParentID = 25
        Index = 0
        Version = 1
      end
      object vgrDBEditorRow46: TcxDBEditorRow
        Properties.Caption = 'Exibir uma '#250'nica data para preenchimento manual'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.DataBinding.FieldName = 'BOMANUALDATAUNICA'
        ID = 27
        ParentID = 25
        Index = 1
        Version = 1
      end
      object vgrCDFUNCIONARIO: TcxDBEditorRow
        Properties.Caption = 'Funcion'#225'rio Fixo'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDFUNCIONARIO'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMFUNCIONARIO'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDFUNCIONARIO'
        ID = 28
        ParentID = 25
        Index = 2
        Version = 1
      end
      object vgrDBEditorRow35: TcxDBEditorRow
        Properties.Caption = 'Receber o equipamento da etapa anterior'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOEQUIPAMENTOANTERIOR'
        ID = 29
        ParentID = 3
        Index = 6
        Version = 1
      end
      object vgrDBEditorRow47: TcxDBEditorRow
        Properties.Caption = 'Rosca'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAPONTAMENTOROSCA'
        ID = 30
        ParentID = 3
        Index = 7
        Version = 1
      end
      object vgrCDSTORDPRODUCAO: TcxDBEditorRow
        Properties.Caption = 
          'Quando finalizar esta etapa mudar o status da ordem de produ'#231#227'o ' +
          'para'
        Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.EditProperties.KeyFieldNames = 'CDSTORDPRODUCAO'
        Properties.EditProperties.ListColumns = <
          item
            FieldName = 'NMSTORDPRODUCAO'
          end>
        Properties.EditProperties.ListOptions.ShowHeader = False
        Properties.DataBinding.FieldName = 'CDSTORDPRODUCAO'
        ID = 31
        ParentID = 3
        Index = 8
        Version = 1
      end
      object vgrDBEditorRow49: TcxDBEditorRow
        Properties.Caption = 'Tipo de Estado'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOAPONTAMENTOTPESTADO'
        ID = 32
        ParentID = 3
        Index = 9
        Version = 1
      end
      object vgrDBEditorRow50: TcxDBEditorRow
        Properties.Caption = 'Tipo de Grade'
        Properties.EditPropertiesClassName = 'TcxRadioGroupProperties'
        Properties.EditProperties.Columns = 4
        Properties.EditProperties.Items = <
          item
            Caption = 'Lan'#231'a'
            Value = 'L'
          end
          item
            Caption = 'Moldagem'
            Value = 'M'
          end
          item
            Caption = 'Normal'
            Value = 'N'
          end
          item
            Caption = 'Desmoldagem'
            Value = 'D'
          end
          item
            Caption = 'Expedi'#231#227'o'
            Value = 'E'
          end
          item
            Caption = 'Enformagem'
            Value = 'F'
          end
          item
            Caption = 'Tratamento T'#233'rmico'
            Value = 'T'
          end>
        Properties.DataBinding.FieldName = 'TPVIEW'
        ID = 33
        ParentID = 3
        Index = 10
        Version = 1
      end
      object vgrCategoryRow3: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Cadastro'
        ID = 34
        ParentID = -1
        Index = 2
        Version = 1
      end
      object vgrDBEditorRow11: TcxDBEditorRow
        Properties.Caption = 'Cor'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCOR'
        ID = 35
        ParentID = 34
        Index = 0
        Version = 1
      end
      object vgrDBEditorRow18: TcxDBEditorRow
        Properties.Caption = 'El'#233'trico Pneum'#225'tico'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOELETRICPNEUM'
        ID = 36
        ParentID = 34
        Index = 1
        Version = 1
      end
      object vgrDBEditorRow16: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Marca'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMARCA'
        ID = 37
        ParentID = 34
        Index = 2
        Version = 1
      end
      object vgrDBEditorRow9: TcxDBEditorRow
        Properties.Caption = 'Obrigat'#243'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMARCAOBRIGATORIO'
        ID = 38
        ParentID = 37
        Index = 0
        Version = 1
      end
      object vgrDBEditorRow13: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'Modelo'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMODELO'
        ID = 39
        ParentID = 34
        Index = 3
        Version = 1
      end
      object vgrDBEditorRow10: TcxDBEditorRow
        Properties.Caption = 'Obrigat'#243'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOMODELOOBRIGATORIO'
        ID = 40
        ParentID = 39
        Index = 0
        Version = 1
      end
      object vgrDBEditorRow12: TcxDBEditorRow
        Properties.Caption = 'N'#250'mero do Ano'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BONUANO'
        ID = 41
        ParentID = 34
        Index = 4
        Version = 1
      end
      object vgrDBEditorRow4: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'N'#250'mero Patrim'#244'nio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BONUPATRIMONIO'
        ID = 42
        ParentID = 34
        Index = 5
        Version = 1
      end
      object vgrDBEditorRow5: TcxDBEditorRow
        Properties.Caption = 'N'#250'mero Patrim'#244'nio Obrigat'#243'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BONUPATRIMONIOO'
        ID = 43
        ParentID = 42
        Index = 0
        Version = 1
      end
      object vgrDBEditorRow54: TcxDBEditorRow
        Properties.Caption = 'N'#250'mero da Placa'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BONUPLACA'
        ID = 44
        ParentID = 34
        Index = 6
        Version = 1
      end
      object vgrDBEditorRow1: TcxDBEditorRow
        Expanded = False
        Properties.Caption = 'N'#250'mero S'#233'rie'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BONUSERIE'
        ID = 45
        ParentID = 34
        Index = 7
        Version = 1
      end
      object vgrDBEditorRow2: TcxDBEditorRow
        Properties.Caption = 'Obrigat'#243'rio'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BONUSERIEO'
        ID = 46
        ParentID = 45
        Index = 0
        Version = 1
      end
      object vgrDBEditorRow3: TcxDBEditorRow
        Properties.Caption = 'N'#250'mero S'#233'rie Duplicado'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BONUSERIEDUPLICADO'
        ID = 47
        ParentID = 45
        Index = 1
        Version = 1
      end
      object vgrDBEditorRow55: TcxDBEditorRow
        Properties.Caption = 'Tipo Equipamento 2'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOTPEQUIPAMENTO2'
        ID = 48
        ParentID = 34
        Index = 8
        Version = 1
      end
      object vgrDBEditorRow23: TcxDBEditorRow
        Properties.Caption = 'Equipamento'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOEQUIPAMENTO'
        ID = 49
        ParentID = -1
        Index = 3
        Version = 1
      end
      object vgrCategoryRow2: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Valores'
        ID = 50
        ParentID = -1
        Index = 4
        Version = 1
      end
      object vgrDBEditorRow51: TcxDBEditorRow
        Properties.Caption = 'Diagn'#243'stico'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.EditProperties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Properties.DataBinding.FieldName = 'VLDIAGNOSTICO'
        ID = 51
        ParentID = 50
        Index = 0
        Version = 1
      end
      object vgrDBEditorRow24: TcxDBEditorRow
        Properties.Caption = 'Opera'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.EditProperties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Properties.DataBinding.FieldName = 'VLOPERACAO'
        ID = 52
        ParentID = 50
        Index = 1
        Version = 1
      end
      object vgrDBEditorRow25: TcxDBEditorRow
        Properties.Caption = 'Prepara'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCalcEditProperties'
        Properties.EditProperties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Properties.DataBinding.FieldName = 'VLPREPARACAO'
        ID = 53
        ParentID = 50
        Index = 2
        Version = 1
      end
      object vgrDBEditorRow21: TcxDBEditorRow
        Properties.Caption = 'Valor Hora'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOVLHORA'
        ID = 54
        ParentID = 50
        Index = 3
        Version = 1
      end
      object vgrCategoryRow5: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Loca'#231#227'o'
        ID = 55
        ParentID = -1
        Index = 5
        Version = 1
      end
      object vgrDBEditorRow19: TcxDBEditorRow
        Properties.Caption = 'Valor Equipamento'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOVLEQUIPAMENTO'
        ID = 56
        ParentID = 55
        Index = 0
        Version = 1
      end
      object vgrDBEditorRow7: TcxDBEditorRow
        Properties.Caption = 'Quantidade de itens para loca'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'boqtitem'
        ID = 57
        ParentID = 55
        Index = 1
        Version = 1
      end
      object vgrDBEditorRow17: TcxDBEditorRow
        Properties.Caption = 'Produto'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPRODUTO'
        ID = 58
        ParentID = 55
        Index = 2
        Version = 1
      end
      object vgrDBEditorRow8: TcxDBEditorRow
        Properties.Caption = 'Justificativa de mudan'#231'a de Status'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOJUSTIFICATIVASTATUS'
        ID = 59
        ParentID = 55
        Index = 3
        Version = 1
      end
      object vgrDBEditorRow44: TcxDBEditorRow
        Properties.Caption = 'Observa'#231#227'o'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BODSOBSERVACAO'
        ID = 60
        ParentID = -1
        Index = 6
        Version = 1
      end
      object vgrCategoryRow6: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Propriet'#225'rio'
        ID = 61
        ParentID = -1
        Index = 7
        Version = 1
      end
      object vgrDBEditorRow20: TcxDBEditorRow
        Properties.Caption = 'Pertence Empresa'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOPERTENCEEMPRESA'
        ID = 62
        ParentID = 61
        Index = 0
        Version = 1
      end
      object vgrDBEditorRow6: TcxDBEditorRow
        Properties.Caption = 'Cliente'
        Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
        Properties.EditProperties.ValueChecked = 'S'
        Properties.EditProperties.ValueUnchecked = 'N'
        Properties.DataBinding.FieldName = 'BOCLIENTE'
        ID = 63
        ParentID = 61
        Index = 1
        Version = 1
      end
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 380
    Top = 96
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
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      ImageIndex = 134
      ShortCut = 16463
      OnExecute = actopcoesExecute
    end
    object actprecolocacao: TAction
      Caption = 'Pre'#231'o Loca'#231#227'o'
      OnExecute = actprecolocacaoExecute
    end
    object actcopiar: TAction
      Caption = 'Copiar'
      Enabled = False
      ImageIndex = 100
      OnExecute = actcopiarExecute
    end
    object acttpequipamentousuario: TAction
      Caption = 'Usu'#225'rio'
      OnExecute = acttpequipamentousuarioExecute
    end
    object actexcluirmetodoprocesso: TAction
      Caption = 'Excluir do m'#233'todo processo'
      OnExecute = actexcluirmetodoprocessoExecute
    end
    object acttpinspecao: TAction
      Caption = 'Inspe'#231#227'o'
      OnExecute = acttpinspecaoExecute
    end
    object acttpequipamentoentrada: TAction
      Caption = 'Check Lista Entrada'
      OnExecute = acttpequipamentoentradaExecute
    end
    object acttpequipamentosaida: TAction
      Caption = 'Check List Sa'#237'da'
      OnExecute = acttpequipamentosaidaExecute
    end
  end
  object dts: TDataSource
    OnStateChange = dtsStateChange
    Left = 464
    Top = 96
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
    Left = 492
    Top = 96
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
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnimprimir'
        end
        item
          Visible = True
          ItemName = 'btnopcoes'
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
    object btnopcoes: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
    object dxBarButton1: TdxBarButton
      Action = actprecolocacao
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actcopiar
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = acttpequipamentousuario
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actexcluirmetodoprocesso
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = acttpinspecao
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = acttpequipamentoentrada
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = acttpequipamentosaida
      Category = 0
    end
  end
  object pumopcoes: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end>
    UseOwnFont = False
    Left = 408
    Top = 96
  end
end
