object frmprogressbar: Tfrmprogressbar
  Left = 454
  Top = 293
  BorderStyle = bsNone
  Caption = 'frmprogressbar'
  ClientHeight = 29
  ClientWidth = 522
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 522
    Height = 29
    Align = alClient
  end
  object gau: TGauge
    Left = 0
    Top = 14
    Width = 522
    Height = 15
    ForeColor = clGradientActiveCaption
    Progress = 0
  end
  object gau1: TGauge
    Left = 0
    Top = 28
    Width = 522
    Height = 15
    ForeColor = clGradientActiveCaption
    Progress = 0
    Visible = False
  end
  object pnl: TPanel
    Left = 0
    Top = 0
    Width = 522
    Height = 14
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
  end
end
