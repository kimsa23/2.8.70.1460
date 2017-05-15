object frmRichEdit: TfrmRichEdit
  Left = 248
  Top = 171
  Caption = 'Editor'
  ClientHeight = 504
  ClientWidth = 858
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object rce: TRichEdit
    Left = 0
    Top = 21
    Width = 858
    Height = 464
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Lucida Console'
    Font.Style = []
    ParentFont = False
    PlainText = True
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
    WordWrap = False
    Zoom = 100
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 858
    Height = 21
    AutoSize = True
    ButtonHeight = 21
    ButtonWidth = 37
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 1
    object ToolButton2: TToolButton
      Left = 0
      Top = 0
      Action = actSalvar
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 485
    Width = 858
    Height = 19
    Panels = <>
  end
  object act: TActionList
    Left = 520
    Top = 24
    object actSalvar: TAction
      Caption = 'Salvar'
      Hint = 'Salvar'
      ImageIndex = 2
      ShortCut = 16467
      OnExecute = actSalvarExecute
    end
  end
end
