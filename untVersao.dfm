object frmVersao: TfrmVersao
  Left = 501
  Top = 289
  BorderStyle = bsNone
  Caption = 'Atualiza'#231#227'o'
  ClientHeight = 202
  ClientWidth = 367
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 367
    Height = 202
    Align = alClient
    TabOrder = 0
    object gau: TGauge
      Left = 8
      Top = 35
      Width = 353
      Height = 16
      ForeColor = clGradientActiveCaption
      Progress = 0
      Visible = False
    end
    object gau1: TGauge
      Left = 8
      Top = 69
      Width = 353
      Height = 16
      ForeColor = clGradientActiveCaption
      Progress = 0
      Visible = False
    end
    object lbllinha: TLabel
      Left = 8
      Top = 54
      Width = 3
      Height = 13
    end
    object lblarquivo: TLabel
      Left = 8
      Top = 21
      Width = 3
      Height = 13
    end
    object lblsql: TLabel
      Left = 8
      Top = 89
      Width = 69
      Height = 13
      Caption = 'Comando SQL'
    end
    object mem: TcxMemo
      Left = 8
      Top = 100
      Style.BorderStyle = ebsOffice11
      TabOrder = 0
      Height = 94
      Width = 355
    end
  end
end
