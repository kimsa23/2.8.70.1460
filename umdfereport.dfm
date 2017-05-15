object frmmdfereport: Tfrmmdfereport
  Left = 378
  Top = 202
  ClientHeight = 144
  ClientWidth = 352
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DAMDFE: TACBrMDFeDAMDFEFR
    PathPDF = 'C:\Program Files (x86)\Borland\Delphi7\Bin\'
    ImprimirHoraSaida = False
    MostrarPreview = True
    MostrarStatus = True
    TipoDAMDFe = tiSemGeracao
    TamanhoPapel = tpA4
    NumCopias = 1
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    MDFeCancelada = False
    MDFeEncerrado = False
    SelecionaImpressora = False
    EspessuraBorda = 1
    Left = 75
    Top = 21
  end
end
