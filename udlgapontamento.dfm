object frmdlgapontamento: Tfrmdlgapontamento
  Left = 794
  Top = 28
  BorderStyle = bsDialog
  Caption = 'Apontamento'
  ClientHeight = 561
  ClientWidth = 911
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlok: TPanel
    Left = 0
    Top = 531
    Width = 911
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    object btnok: TcxButton
      Left = 362
      Top = 3
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btnokClick
    end
    object btncancelar: TcxButton
      Left = 466
      Top = 3
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancelar'
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btncancelarClick
    end
  end
  object pnlproduto: TPanel
    Left = 0
    Top = 306
    Width = 911
    Height = 225
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object dxBevel2: TdxBevel
      Left = 0
      Top = 0
      Width = 911
      Height = 23
      Align = alTop
      Shape = dxbsLineBottom
    end
    object lblnmproduto: TLabel
      Left = 220
      Top = 6
      Width = 315
      Height = 13
      AutoSize = False
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object grd: TcxGrid
      Left = 0
      Top = 23
      Width = 911
      Height = 202
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      LookAndFeel.NativeStyle = False
      object tbv: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
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
        DataController.DataSource = dts
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'QTITEM'
            Column = tbvQTITEM
          end
          item
            Kind = skSum
            FieldName = 'QTFORMULACAO'
            Column = tbvQTFORMULACAO
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object tbvCDPRODUTO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CDPRODUTO'
          Options.Focusing = False
        end
        object tbvNMPRODUTO: TcxGridDBColumn
          Caption = 'Produto'
          DataBinding.FieldName = 'NMPRODUTO'
          Options.Focusing = False
          Width = 399
        end
        object tbvNMUNIDADE: TcxGridDBColumn
          Caption = 'Unid'
          DataBinding.FieldName = 'NMUNIDADE'
          Options.Focusing = False
          Width = 35
        end
        object tbvQTITEM: TcxGridDBColumn
          Caption = 'Quantidade'
          DataBinding.FieldName = 'QTITEM'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 98
        end
        object tbvQTFORMULACAO: TcxGridDBColumn
          Caption = 'Qtd Formula'#231#227'o'
          DataBinding.FieldName = 'QTFORMULACAO'
          Options.Focusing = False
          Width = 85
        end
        object tbvQTFAIXAI: TcxGridDBColumn
          Caption = 'Faixa Inicial'
          DataBinding.FieldName = 'QTFAIXAI'
          Options.Focusing = False
        end
        object tbvQTFAIXAF: TcxGridDBColumn
          Caption = 'Faixa Final'
          DataBinding.FieldName = 'QTFAIXAF'
          Options.Focusing = False
        end
      end
      object grdLevel1: TcxGridLevel
        GridView = tbv
      end
    end
    object lblconsumo: TcxLabel
      Left = 1
      Top = 1
      AutoSize = False
      Caption = '&Produto'
      FocusControl = edtcdproduto
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 23
      Width = 91
    end
    object btnexcluirproduto: TcxButton
      Left = 663
      Top = 2
      Width = 120
      Height = 21
      Action = actexcluirproduto
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btninserirproduto: TcxButton
      Left = 540
      Top = 2
      Width = 120
      Height = 21
      Action = actinserirproduto
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtcdproduto: TcxButtonEdit
      Left = 87
      Top = 2
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcdprodutoPropertiesButtonClick
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = edtcdprodutoExit
      OnKeyDown = edtcdprodutoKeyDown
      Width = 121
    end
    object ckbbaixaestoque: TcxCheckBox
      Left = 783
      Top = 1
      Caption = 'Baixar estoque'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 5
    end
  end
  object pnldados: TPanel
    Left = 0
    Top = 213
    Width = 911
    Height = 52
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    object lblqttemperatura: TLabel
      Left = 1
      Top = 7
      Width = 84
      Height = 16
      Caption = '&Temperatura'
      FocusControl = edtqttemperatura
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblqtvibracao: TLabel
      Left = 172
      Top = 7
      Width = 57
      Height = 16
      Caption = '&Vibra'#231#227'o'
      FocusControl = edtqtvibracao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblcdpesagem: TLabel
      Left = 326
      Top = 7
      Width = 78
      Height = 16
      Caption = 'Cd &Pesagem'
      FocusControl = edtqtvibracao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblqtcomprimento: TLabel
      Left = 491
      Top = 7
      Width = 45
      Height = 16
      Caption = '&Compr.'
      FocusControl = edtqtvibracao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblpsmistura: TLabel
      Left = 1
      Top = 32
      Width = 84
      Height = 16
      Caption = 'Peso &Mistura'
      FocusControl = edtqtmistura
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblqtmistura: TLabel
      Left = 172
      Top = 29
      Width = 68
      Height = 16
      Caption = '&Qt Mistura'
      FocusControl = edtpsmistura
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblqtproducao: TLabel
      Left = 326
      Top = 28
      Width = 80
      Height = 16
      Caption = 'Qt Produ'#231#227'o'
      FocusControl = edtqtproducao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblqtrefugo: TLabel
      Left = 627
      Top = 28
      Width = 65
      Height = 16
      Caption = 'Qt Refugo'
      FocusControl = edtqtrefugo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblnuestrutural: TLabel
      Left = 627
      Top = 7
      Width = 49
      Height = 16
      Caption = 'N'#186' Estr.'
      FocusControl = edtqtvibracao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblqtpeca: TLabel
      Left = 491
      Top = 31
      Width = 50
      Height = 16
      Caption = 'Qt Pe'#231'a'
      FocusControl = edtqtpeca
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtcdpesagem: TcxSpinEdit
      Left = 406
      Top = 2
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Width = 85
    end
    object edtqttemperatura: TcxCalcEdit
      Left = 87
      Top = 2
      EditValue = 0.000000000000000000
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      Width = 85
    end
    object edtqtvibracao: TcxCalcEdit
      Left = 241
      Top = 2
      EditValue = 0.000000000000000000
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      Width = 85
    end
    object edtqtcomprimento: TcxTextEdit
      Left = 541
      Top = 2
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Width = 85
    end
    object ckbboreaproveitar: TcxCheckBox
      Left = 774
      Top = 3
      Caption = 'Reaproveitar (F3)'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 5
    end
    object edtqtmistura: TcxCalcEdit
      Left = 241
      Top = 26
      EditValue = 0.000000000000000000
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      OnEnter = colorenter
      OnExit = colorexit
      Width = 85
    end
    object edtpsmistura: TcxCalcEdit
      Left = 87
      Top = 26
      EditValue = 0.000000000000000000
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      OnEnter = colorenter
      OnExit = colorexit
      Width = 85
    end
    object edtqtproducao: TcxCalcEdit
      Left = 406
      Top = 26
      EditValue = 0.000000000000000000
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 8
      OnEnter = colorenter
      OnExit = edtqtproducaoExit
      Width = 85
    end
    object edtqtrefugo: TcxCalcEdit
      Left = 691
      Top = 26
      EditValue = 0.000000000000000000
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 10
      OnEnter = colorenter
      OnExit = colorexit
      Width = 85
    end
    object edtnuestrutural: TcxTextEdit
      Left = 691
      Top = 2
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Width = 85
    end
    object edtqtpeca: TcxCalcEdit
      Left = 541
      Top = 26
      EditValue = 0.000000000000000000
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 9
      OnEnter = colorenter
      OnExit = edtqtpecaExit
      Width = 85
    end
  end
  object pnltemporizador: TPanel
    Left = 0
    Top = 171
    Width = 911
    Height = 42
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object lblduracao: TLabel
      Left = 596
      Top = 13
      Width = 78
      Height = 23
      Caption = 'Dura'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object lblfim: TLabel
      Left = 389
      Top = 11
      Width = 35
      Height = 23
      Caption = 'Fim'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object lblinicio: TLabel
      Left = 162
      Top = 11
      Width = 55
      Height = 23
      Caption = 'In'#237'cio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object lbltemporizador: TcxLabel
      Left = 1
      Top = 8
      AutoSize = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -20
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 31
      Width = 160
    end
    object ckbmanual: TcxCheckBox
      Left = 800
      Top = 16
      Caption = 'Manual (F2)'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 5
      Visible = False
      OnClick = ckbmanualClick
    end
    object edthrduracao: TcxTimeEdit
      Left = 675
      Top = 10
      EditValue = 0d
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -20
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.BorderStyle = ebsNone
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.TextColor = clBlue
      StyleDisabled.ButtonStyle = btsDefault
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      Visible = False
      Width = 114
    end
    object edtdtinicio: TcxDateEdit
      Left = 221
      Top = 16
      Enabled = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Width = 97
    end
    object edthrinicio: TcxTimeEdit
      Left = 321
      Top = 16
      EditValue = 0d
      Enabled = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Width = 67
    end
    object edtdtfim: TcxDateEdit
      Left = 428
      Top = 16
      Enabled = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Width = 97
    end
    object edthrfim: TcxTimeEdit
      Left = 528
      Top = 16
      EditValue = 0d
      Enabled = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Width = 67
    end
  end
  object pnl: TcxLabel
    Left = 0
    Top = 0
    Align = alTop
    AutoSize = False
    ParentFont = False
    Style.BorderStyle = ebsNone
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -17
    Style.Font.Name = 'Arial'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
    Height = 23
    Width = 911
  end
  object pnlfuncionario: TPanel
    Left = 0
    Top = 49
    Width = 911
    Height = 122
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object bvlfuncionario: TdxBevel
      Left = 0
      Top = 0
      Width = 911
      Height = 23
      Align = alTop
    end
    object lblnmfuncionario: TLabel
      Left = 220
      Top = 6
      Width = 315
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblfuncionario: TcxLabel
      Left = 1
      Top = 1
      AutoSize = False
      Caption = '&Funcion'#225'rio'
      FocusControl = edtcdfuncionario
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 23
      Width = 89
    end
    object grdfuncionario: TcxGrid
      Left = 0
      Top = 23
      Width = 911
      Height = 99
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      LookAndFeel.NativeStyle = False
      object tbvfuncionario: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.PriorPage.Enabled = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.NextPage.Enabled = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Insert.Enabled = False
        Navigator.Buttons.Insert.Visible = False
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
        DataController.DataSource = dtsfuncionario
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object tbvfuncionarioCDFUNCIONARIO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CDFUNCIONARIO'
          Options.Focusing = False
          Width = 80
        end
        object tbvfuncionarioNMFUNCIONARIO: TcxGridDBColumn
          Caption = 'Funcion'#225'rio'
          DataBinding.FieldName = 'NMFUNCIONARIO'
          Options.Focusing = False
          Width = 457
        end
      end
      object grdfuncionarioLevel1: TcxGridLevel
        GridView = tbvfuncionario
      end
    end
    object cxButton1: TcxButton
      Left = 540
      Top = 2
      Width = 103
      Height = 21
      Action = actinserirfuncionario
      LookAndFeel.NativeStyle = False
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton2: TcxButton
      Left = 649
      Top = 2
      Width = 103
      Height = 21
      Action = actexcluirfuncionario
      LookAndFeel.NativeStyle = False
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton5: TcxButton
      Left = 758
      Top = 2
      Width = 138
      Height = 21
      Action = actinserirturma
      LookAndFeel.NativeStyle = False
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtcdfuncionario: TcxButtonEdit
      Left = 87
      Top = 2
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcdfuncionarioPropertiesButtonClick
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = edtcdfuncionarioExit
      OnKeyDown = edtcdfuncionarioKeyDown
      Width = 121
    end
  end
  object pnlequipamento: TPanel
    Left = 0
    Top = 23
    Width = 911
    Height = 26
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lblnmequipamento: TLabel
      Left = 87
      Top = 9
      Width = 442
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblequipamento: TcxLabel
      Left = 1
      Top = 5
      AutoSize = False
      Caption = '&Recurso'
      FocusControl = edtcdfuncionario
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 23
      Width = 89
    end
    object cbxcdequipamento: TcxLookupComboBox
      Left = 87
      Top = 5
      ParentFont = False
      Properties.KeyFieldNames = 'CDEQUIPAMENTO'
      Properties.ListColumns = <
        item
          FieldName = 'NMEQUIPAMENTO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      Width = 442
    end
    object lblratear: TcxLabel
      Left = 537
      Top = 0
      AutoSize = False
      Caption = 'Ratear e Duplicatar (F9)'
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -20
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Visible = False
      Height = 31
      Width = 252
    end
  end
  object pnldsobservacao: TPanel
    Left = 0
    Top = 265
    Width = 911
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object lbldsobservacao: TLabel
      Left = 1
      Top = 11
      Width = 77
      Height = 16
      Caption = 'O&bserva'#231#227'o'
      FocusControl = memdsobservacao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object memdsobservacao: TcxMemo
      Left = 92
      Top = 0
      Align = alRight
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      Height = 41
      Width = 819
    end
  end
  object act: TActionList
    Left = 397
    Top = 361
    object acttemporizador: TAction
      Caption = 'Iniciar (F8)'
      ShortCut = 119
      OnExecute = acttemporizadorExecute
    end
    object actinserirfuncionario: TAction
      Caption = 'Inserir (Ctrl+I)'
      ShortCut = 16457
      OnExecute = actinserirfuncionarioExecute
    end
    object actexcluirfuncionario: TAction
      Caption = 'Excluir (Ctrl+D)'
      ShortCut = 16452
      OnExecute = actexcluirfuncionarioExecute
    end
    object actinserirproduto: TAction
      Caption = 'Inserir (Ctrl+Alt+I)'
      ShortCut = 49225
      OnExecute = actinserirprodutoExecute
    end
    object actexcluirproduto: TAction
      Caption = 'Excluir (Ctrl+Alt+D)'
      ShortCut = 49220
      OnExecute = actexcluirprodutoExecute
    end
    object actinserirturma: TAction
      Caption = 'Inserir Turma (Ctrl+T)'
      ShortCut = 16468
      OnExecute = actinserirturmaExecute
    end
    object actfinalizar: TAction
      Caption = 'Finalizar (F12)'
      ShortCut = 123
      OnExecute = actfinalizarExecute
    end
    object actratear: TAction
      Enabled = False
      ShortCut = 120
      OnExecute = actratearExecute
    end
    object actativarmanual: TAction
      Enabled = False
      ShortCut = 113
      OnExecute = actativarmanualExecute
    end
    object actativarreaproveitar: TAction
      Enabled = False
      ShortCut = 114
      OnExecute = actativarreaproveitarExecute
    end
  end
  object tmr: TTimer
    Enabled = False
    OnTimer = tmrTimer
    Left = 427
    Top = 361
  end
  object dts: TDataSource
    Left = 357
    Top = 361
  end
  object dtsfuncionario: TDataSource
    Left = 354
    Top = 315
  end
end
