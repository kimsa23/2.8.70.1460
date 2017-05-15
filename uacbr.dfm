object frmsetacbr: Tfrmsetacbr
  Left = 700
  Top = 224
  BorderStyle = bsDialog
  Caption = 'Configura'#231#227'o'
  ClientHeight = 399
  ClientWidth = 826
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnSalvarConfig: TcxButton
    Left = 336
    Top = 368
    Width = 75
    Height = 25
    Action = actsalvar
    LookAndFeel.NativeStyle = False
    TabOrder = 3
  end
  object gbxcertificado: TcxGroupBox
    Left = 3
    Top = 4
    Caption = 'Certificado'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 0
    Height = 356
    Width = 273
    object lblcaminho: TLabel
      Left = 8
      Top = 16
      Width = 41
      Height = 13
      Caption = 'Caminho'
      Transparent = True
      Visible = False
    end
    object Label2: TLabel
      Left = 7
      Top = 47
      Width = 31
      Height = 13
      Caption = 'Senha'
      Transparent = True
    end
    object lblnumserie: TLabel
      Left = 7
      Top = 78
      Width = 79
      Height = 13
      Caption = 'N'#250'mero de S'#233'rie'
      Transparent = True
    end
    object Label7: TLabel
      Left = 8
      Top = 111
      Width = 57
      Height = 13
      Caption = 'Logo Marca'
      Transparent = True
    end
    object lbl1: TLabel
      Left = 8
      Top = 144
      Width = 165
      Height = 13
      Caption = 'Pasta para salvar os arquivos xml'#180's'
    end
    object sbtnGetCert: TcxButton
      Left = 234
      Top = 88
      Width = 23
      Height = 25
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
        07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
        0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      OptionsImage.NumGlyphs = 2
      TabOrder = 4
      OnClick = sbtnGetCertClick
    end
    object sbtnCaminhoCert: TcxButton
      Left = 234
      Top = 24
      Width = 23
      Height = 25
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
        07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
        0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      OptionsImage.NumGlyphs = 2
      TabOrder = 1
    end
    object edtNumSerie: TcxTextEdit
      Left = 7
      Top = 90
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Text = 'edtNumSerie'
      Width = 225
    end
    object edtSenha: TcxTextEdit
      Left = 7
      Top = 59
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = '*'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Width = 225
    end
    object edtCaminho: TcxTextEdit
      Left = 7
      Top = 27
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Width = 225
    end
    object edtLogoMarca: TcxTextEdit
      Left = 8
      Top = 124
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Width = 228
    end
    object edtPathLogs: TcxTextEdit
      Left = 8
      Top = 159
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      Width = 228
    end
    object btnPathSalvar: TcxButton
      Left = 235
      Top = 155
      Width = 23
      Height = 25
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
        07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
        0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      OptionsImage.NumGlyphs = 2
      TabOrder = 8
      OnClick = btnPathSalvarClick
    end
    object btnLogoMarca: TcxButton
      Left = 235
      Top = 120
      Width = 23
      Height = 25
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
        07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
        0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      OptionsImage.NumGlyphs = 2
      TabOrder = 6
      OnClick = btnLogoMarcaClick
    end
    object ckbbovtottribitem: TcxCheckBox
      Left = 8
      Top = 175
      Caption = 'Exibir total tributos por '#237'tem na impress'#227'o'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 9
      Transparent = True
    end
  end
  object gbxwebservice1: TcxGroupBox
    Left = 279
    Top = 4
    Caption = 'WebService'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 1
    Height = 356
    Width = 275
    object Label6: TLabel
      Left = 5
      Top = 17
      Width = 121
      Height = 13
      Caption = 'Selecione UF de Destino:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblformaemissao: TLabel
      Left = 4
      Top = 204
      Width = 71
      Height = 13
      Caption = 'Forma Emiss'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbldscontingencia: TLabel
      Left = 4
      Top = 225
      Width = 120
      Height = 13
      Caption = 'Justificativa Conting'#234'ncia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object cbxcduf: TcxLookupComboBox
      Left = 129
      Top = 15
      Properties.KeyFieldNames = 'CDUF'
      Properties.ListColumns = <
        item
          FieldName = 'SGUF'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Width = 140
    end
    object gbxProxy: TcxGroupBox
      Left = 4
      Top = 105
      Caption = 'Proxy'
      TabOrder = 3
      Height = 92
      Width = 265
      object Label8: TLabel
        Left = 8
        Top = 14
        Width = 22
        Height = 13
        Caption = 'Host'
        Transparent = True
      end
      object Label9: TLabel
        Left = 208
        Top = 14
        Width = 25
        Height = 13
        Caption = 'Porta'
        Transparent = True
      end
      object Label10: TLabel
        Left = 8
        Top = 47
        Width = 36
        Height = 13
        Caption = 'Usu'#225'rio'
        Transparent = True
      end
      object Label11: TLabel
        Left = 138
        Top = 47
        Width = 31
        Height = 13
        Caption = 'Senha'
        Transparent = True
      end
      object edtProxySenha: TcxTextEdit
        Left = 135
        Top = 59
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Width = 121
      end
      object edtProxyUser: TcxTextEdit
        Left = 8
        Top = 59
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Width = 121
      end
      object edtProxyHost: TcxTextEdit
        Left = 8
        Top = 26
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 193
      end
      object edtProxyPorta: TcxTextEdit
        Left = 208
        Top = 26
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Width = 50
      end
    end
    object rdgTipoAmb: TcxRadioGroup
      Left = 5
      Top = 37
      Caption = 'Selecione o Ambiente de Destino'
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Produ'#231#227'o'
        end
        item
          Caption = 'Homologa'#231#227'o'
        end>
      ItemIndex = 0
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Height = 42
      Width = 262
    end
    object ckbVisualizar: TcxCheckBox
      Left = 5
      Top = 84
      Caption = 'Visualizar Mensagem'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Transparent = True
    end
    object cbxformaemissao: TcxComboBox
      Left = 80
      Top = 200
      Properties.Items.Strings = (
        'Normal'
        'Conting'#234'ncia'
        'SCAN'
        'DPEC'
        'FSDA'
        'SVCAN'
        'SVCRS'
        'SVCSP'
        'OffLine')
      Properties.OnChange = cbxformaemissaoPropertiesChange
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Width = 189
    end
    object memdscontingencia: TcxMemo
      Left = 4
      Top = 239
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Height = 106
      Width = 265
    end
  end
  object gbxemail: TcxGroupBox
    Left = 557
    Top = 4
    Caption = 'Email'
    TabOrder = 2
    Height = 356
    Width = 260
    object Label3: TLabel
      Left = 2
      Top = 76
      Width = 72
      Height = 13
      Caption = 'Servidor SMTP'
      Transparent = True
    end
    object Label4: TLabel
      Left = 200
      Top = 76
      Width = 25
      Height = 13
      Caption = 'Porta'
      Transparent = True
    end
    object Label5: TLabel
      Left = 2
      Top = 116
      Width = 36
      Height = 13
      Caption = 'Usu'#225'rio'
      Transparent = True
    end
    object Label26: TLabel
      Left = 131
      Top = 116
      Width = 31
      Height = 13
      Caption = 'Senha'
      Transparent = True
    end
    object Label27: TLabel
      Left = 2
      Top = 156
      Width = 121
      Height = 13
      Caption = 'Assunto do email enviado'
      Transparent = True
    end
    object Label28: TLabel
      Left = 2
      Top = 217
      Width = 95
      Height = 13
      Caption = 'Mensagem do Email'
      Transparent = True
    end
    object memEmailMsg: TcxMemo
      Left = 2
      Top = 235
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 8
      Height = 100
      Width = 249
    end
    object ckbEmailSSL: TcxCheckBox
      Left = 2
      Top = 193
      Caption = 'SMTP exige conex'#227'o segura'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      Transparent = True
    end
    object edtEmailAssunto: TcxTextEdit
      Left = 2
      Top = 172
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Width = 249
    end
    object edtSmtpPass: TcxTextEdit
      Left = 131
      Top = 132
      Properties.EchoMode = eemPassword
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Width = 121
    end
    object edtSmtpUser: TcxTextEdit
      Left = 2
      Top = 132
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Width = 121
    end
    object edtSmtpHost: TcxTextEdit
      Left = 2
      Top = 92
      Enabled = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Width = 193
    end
    object edtSmtpPort: TcxTextEdit
      Left = 200
      Top = 92
      Enabled = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Width = 51
    end
    object ckbenviarpdf: TcxCheckBox
      Left = 169
      Top = 193
      Caption = 'Enviar PDF'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      Transparent = True
    end
    object rdgtpenvio: TcxRadioGroup
      Left = 4
      Top = 16
      Caption = 'Tipo Envio'
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Outlook'
          Value = 0
        end
        item
          Caption = 'Gmail'
          Value = 1
        end
        item
          Caption = 'UOL'
          Value = '3'
        end
        item
          Caption = 'Hotmail/Live/Outlook'
          Value = '2'
        end
        item
          Caption = 'Outro'
          Value = '4'
        end>
      Properties.OnChange = rdgtpenvioPropertiesChange
      ItemIndex = 0
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Height = 54
      Width = 251
    end
  end
  object btncancelar: TcxButton
    Left = 416
    Top = 368
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    LookAndFeel.NativeStyle = False
    ModalResult = 2
    TabOrder = 4
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 464
    Top = 232
  end
  object act: TActionList
    Images = dtmmain.imlMain
    Left = 495
    Top = 232
    object actsalvar: TAction
      Caption = 'Salvar'
      ImageIndex = 2
      OnExecute = actsalvarExecute
    end
  end
end
