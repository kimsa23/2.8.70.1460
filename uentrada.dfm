object frmentrada: Tfrmentrada
  Left = 352
  Top = 196
  Hint = 'Abrir'
  ClientHeight = 708
  ClientWidth = 1449
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgc: TcxPageControl
    Left = 0
    Top = 191
    Width = 1449
    Height = 275
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Properties.ActivePage = tbsproduto
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dtmmain.imlMain
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 275
    ClientRectRight = 1449
    ClientRectTop = 25
    object tbsproduto: TcxTabSheet
      Caption = '&Produtos'
      ImageIndex = 24
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1449
        Height = 22
        Align = dalTop
        BarManager = bmg1
      end
      object grditentrada: TcxGrid
        Left = 0
        Top = 22
        Width = 1449
        Height = 228
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object tbv: TcxGridDBTableView
          OnKeyDown = tbvKeyDown
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Enabled = False
          Navigator.Buttons.NextPage.Visible = False
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
          OnCellDblClick = tbvCellDblClick
          DataController.DataSource = dtsitentrada
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = tbvQTITEM
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = tbvVLTOTAL
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLDESCONTO'
              Column = tbvVLDESCONTO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLOUTDESPESA'
              Column = tbvVLOUTDESPESA
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLSEGURO'
              Column = tbvVLSEGURO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLFRETE'
              Column = tbvVLFRETE
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'tbvVLBASEICMS'
              Column = tbvVLBASEICMS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLICMS'
              Column = tbvVLICMS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLIPI'
              Column = tbvVLBASEIPI
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLIPI'
              Column = tbvVLIPI
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASEPIS'
              Column = tbvVLBASEPIS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLPIS'
              Column = tbvVLPIS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASECOFINS'
              Column = tbvVLBASECOFINS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLCOFINS'
              Column = tbvVLCOFINS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASEICMSRED'
              Column = tbvVLBASEICMSRED
            end
            item
              Kind = skSum
              FieldName = 'PSBRUTO'
              Column = tbvPSBRUTO
            end
            item
              Kind = skSum
              FieldName = 'PSLIQUIDO'
              Column = tbvPSLIQUIDO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLATACADO'
              Column = tbvVLATACADO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASEICMSSUBTRIB'
              Column = tbvVLBASEICMSSUBTRIB
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLCOMISSAO'
              Column = tbvVLCOMISSAO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLCUSTO'
              Column = tbvVLCUSTO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLCUSTOBRUTO'
              Column = tbvVLCUSTOBRUTO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLCUSTOLIQUIDO'
              Column = tbvVLCUSTOLIQUIDO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLCUSTOMEDIO'
              Column = tbvVLCUSTOMEDIO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLCUSTOTOTAL'
              Column = tbvVLCUSTOTOTAL
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLDESCONTOITEM'
              Column = tbvVLDESCONTOITEM
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLDESPESAITEM'
              Column = tbvVLDESPESAITEM
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLESPECIAL'
              Column = tbvVLESPECIAL
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLFRETE'
              Column = tbvVLFRETE
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLFRETEITEM'
              Column = tbvVLFRETEITEM
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLICMSDIFALIQUOTA'
              Column = tbvVLICMSDIFALIQUOTA
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLICMSSUBTRIB'
              Column = tbvVLICMSSUBTRIB
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLICMSSUBTRIBITEM'
              Column = tbvVLICMSSUBTRIBITEM
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLLUCRO'
              Column = tbvVLLUCRO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLLUCROPRAZO'
              Column = tbvVLLUCROPRAZO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLOUTDESPESAITEM'
              Column = tbvVLOUTDESPESAITEM
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLSUPERSIMPLES'
              Column = tbvVLSUPERSIMPLES
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvCDORDCOMPRA: TcxGridDBColumn
            Caption = 'Ordem de Compra'
            DataBinding.FieldName = 'CDORDCOMPRA'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = grditentradaCDORDCOMPRAPropertiesButtonClick
            Visible = False
            Width = 95
          end
          object tbvCDORDPRODUCAO: TcxGridDBColumn
            Caption = 'Ord Produ'#231#227'o'
            DataBinding.FieldName = 'CDORDPRODUCAO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tbvCDORDPRODUCAOPropertiesButtonClick
            Visible = False
            Width = 71
          end
          object tbvCDCFOP: TcxGridDBColumn
            Caption = 'CFOP'
            DataBinding.FieldName = 'CDCFOP'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tbvCDCFOPPropertiesButtonClick
            Width = 60
          end
          object tbvCDDIGITADO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tbvCDDIGITADOPropertiesButtonClick
            Styles.Content = dtmmain.cxStyle1
            Width = 100
          end
          object tbvCDMODBCICMS: TcxGridDBColumn
            Caption = 'Mod BC ICMS'
            DataBinding.FieldName = 'CDMODBCICMS'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDMODBCICMS'
            Properties.ListColumns = <
              item
                FieldName = 'NMMODBCICMS'
              end>
            Properties.ListOptions.ShowHeader = False
            Visible = False
            Width = 75
          end
          object tbvCDMODBCSTICMS: TcxGridDBColumn
            Caption = 'Mod BC ICMS ST'
            DataBinding.FieldName = 'CDMODBCSTICMS'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDMODBCSTICMS'
            Properties.ListColumns = <
              item
                FieldName = 'NMMODBCSTICMS'
              end>
            Visible = False
            Width = 90
          end
          object tbvNMPRODUTO: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'NMPRODUTO'
            Options.Focusing = False
            Width = 230
          end
          object tbvNUCLFISCAL: TcxGridDBColumn
            Caption = 'NCM'
            DataBinding.FieldName = 'NUCLFISCAL'
            Options.Focusing = False
            Width = 60
          end
          object tbvNMUNIDADE: TcxGridDBColumn
            Caption = 'UN'
            DataBinding.FieldName = 'NMUNIDADE'
            Options.Focusing = False
            Width = 25
          end
          object tbvQTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 100
          end
          object tbvVLUNITARIO: TcxGridDBColumn
            Caption = 'Vl Unit'#225'rio'
            DataBinding.FieldName = 'VLUNITARIO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Width = 64
          end
          object tbvBOAJUSTETOTAL: TcxGridDBColumn
            Caption = 'Ajuste Total'
            DataBinding.FieldName = 'BOAJUSTETOTAL'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 65
          end
          object tbvVLTOTAL: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Options.Focusing = False
          end
          object tbvNUSTICMS: TcxGridDBColumn
            Caption = 'ST ICMS'
            DataBinding.FieldName = 'NUSTICMS'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 600
            Properties.KeyFieldNames = 'NUSTICMS'
            Properties.ListColumns = <
              item
                FieldName = 'NUSTICMS'
              end
              item
                FieldName = 'NMSTICMS1'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 50
          end
          object tbvNUSTIPI: TcxGridDBColumn
            Caption = 'ST IPI'
            DataBinding.FieldName = 'NUSTIPI'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 300
            Properties.KeyFieldNames = 'NUSTIPI'
            Properties.ListColumns = <
              item
                FieldName = 'NUSTIPI'
              end
              item
                FieldName = 'NMSTIPI1'
              end>
            Properties.ListOptions.ShowHeader = False
            Visible = False
            Width = 36
          end
          object tbvNUSTPIS: TcxGridDBColumn
            Caption = 'ST PIS'
            DataBinding.FieldName = 'NUSTPIS'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 750
            Properties.KeyFieldNames = 'NUSTPIS'
            Properties.ListColumns = <
              item
                FieldName = 'NUSTPIS'
              end
              item
                FieldName = 'NMSTPIS1'
              end>
            Properties.ListOptions.ShowHeader = False
            Visible = False
            Width = 40
          end
          object tbvNUSTCOFINS: TcxGridDBColumn
            Caption = 'ST COFINS'
            DataBinding.FieldName = 'NUSTCOFINS'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 750
            Properties.KeyFieldNames = 'NUSTCOFINS'
            Properties.ListColumns = <
              item
                FieldName = 'NUSTCOFINS'
              end
              item
                FieldName = 'NMSTCOFINS1'
              end>
            Properties.ListOptions.ShowHeader = False
            Visible = False
            Width = 65
          end
          object tbvBOALTERACUSTOMEDIO: TcxGridDBColumn
            Caption = 'Altera Custo M'#233'dio'
            DataBinding.FieldName = 'BOALTERACUSTOMEDIO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 100
          end
          object tbvPRDESCONTO: TcxGridDBColumn
            Caption = '% Desconto'
            DataBinding.FieldName = 'PRDESCONTO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object tbvVLDESCONTO: TcxGridDBColumn
            Caption = 'Vl Desconto'
            DataBinding.FieldName = 'VLDESCONTO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
          end
          object tbvVLOUTDESPESA: TcxGridDBColumn
            Caption = 'Outras Despesas'
            DataBinding.FieldName = 'VLOUTDESPESA'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
          end
          object tbvVLSEGURO: TcxGridDBColumn
            Caption = 'Seguro'
            DataBinding.FieldName = 'VLSEGURO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
          end
          object tbvVLFRETE: TcxGridDBColumn
            Caption = 'Frete'
            DataBinding.FieldName = 'VLFRETE'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
          end
          object tbvBORECUPERAICMS: TcxGridDBColumn
            Caption = 'Recupera ICMS'
            DataBinding.FieldName = 'BORECUPERAICMS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 85
          end
          object tbvVLBASEICMS: TcxGridDBColumn
            Caption = 'Base ICMS'
            DataBinding.FieldName = 'VLBASEICMS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
            Options.Focusing = False
          end
          object tbvALICMS: TcxGridDBColumn
            Caption = '% ICMS'
            DataBinding.FieldName = 'ALICMS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Width = 45
          end
          object tbvBOICMSAJUSTE: TcxGridDBColumn
            Caption = 'Ajuste de ICMS'
            DataBinding.FieldName = 'BOICMSAJUSTE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 80
          end
          object tbvVLICMS: TcxGridDBColumn
            Caption = 'Vl ICMS'
            DataBinding.FieldName = 'VLICMS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
            Options.Focusing = False
          end
          object tbvVLBASEICMSRED: TcxGridDBColumn
            Caption = 'Vl Base ICMS Reduzida'
            DataBinding.FieldName = 'VLBASEICMSRED'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
            Width = 120
          end
          object tbvALICMSRED: TcxGridDBColumn
            Caption = '% Redu'#231#227'o BC ICMS'
            DataBinding.FieldName = 'ALICMSRED'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Width = 155
          end
          object tbvVLBASEICMSSUBTRIB: TcxGridDBColumn
            Caption = 'Base ICMS Sub Trib'
            DataBinding.FieldName = 'VLBASEICMSSUBTRIB'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
            Width = 105
          end
          object tbvPRMRGVLADICIONADOICMSSUBTRIB: TcxGridDBColumn
            Caption = '% Margem Valor Agregado'
            DataBinding.FieldName = 'PRMRGVLADICIONADOICMSSUBTRIB'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Width = 140
          end
          object tbvALICMSSUBTRIB: TcxGridDBColumn
            Caption = '% ICMS Sub Trib'
            DataBinding.FieldName = 'ALICMSSUBTRIB'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Width = 90
          end
          object tbvVLICMSSUBTRIB: TcxGridDBColumn
            Caption = 'Vl ICMS Sub Trib'
            DataBinding.FieldName = 'VLICMSSUBTRIB'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
            Width = 90
          end
          object tbvBORECUPERAIPI: TcxGridDBColumn
            Caption = 'Recupera IPI'
            DataBinding.FieldName = 'BORECUPERAIPI'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 70
          end
          object tbvVLBASEIPI: TcxGridDBColumn
            Caption = 'Base IPI'
            DataBinding.FieldName = 'VLBASEIPI'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
          end
          object tbvALIPI: TcxGridDBColumn
            Caption = '% IPI'
            DataBinding.FieldName = 'ALIPI'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object tbvVLIPI: TcxGridDBColumn
            Caption = 'Vl IPI'
            DataBinding.FieldName = 'VLIPI'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
          end
          object tbvBORECUPERAPIS: TcxGridDBColumn
            Caption = 'Recupera PIS'
            DataBinding.FieldName = 'BORECUPERAPIS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 75
          end
          object tbvVLBASEPIS: TcxGridDBColumn
            Caption = 'Base PIS'
            DataBinding.FieldName = 'VLBASEPIS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
          end
          object tbvALPIS: TcxGridDBColumn
            Caption = '% PIS'
            DataBinding.FieldName = 'ALPIS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object tbvVLPIS: TcxGridDBColumn
            Caption = 'Vl PIS'
            DataBinding.FieldName = 'VLPIS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
          end
          object tbvBORECUPERACOFINS: TcxGridDBColumn
            Caption = 'Recupera COFINS'
            DataBinding.FieldName = 'BORECUPERACOFINS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 95
          end
          object tbvVLBASECOFINS: TcxGridDBColumn
            Caption = 'Base COFINS'
            DataBinding.FieldName = 'VLBASECOFINS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
          end
          object tbvALCOFINS: TcxGridDBColumn
            Caption = '% COFINS'
            DataBinding.FieldName = 'ALCOFINS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object tbvVLCOFINS: TcxGridDBColumn
            Caption = 'Vl COFINS'
            DataBinding.FieldName = 'VLCOFINS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
          end
          object tbvPSLIQUIDO: TcxGridDBColumn
            Caption = 'Peso L'#237'quido'
            DataBinding.FieldName = 'PSLIQUIDO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Width = 100
          end
          object tbvPSBRUTO: TcxGridDBColumn
            Caption = 'Peso Bruto'
            DataBinding.FieldName = 'PSBRUTO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Width = 100
          end
          object tbvPRCUSTO: TcxGridDBColumn
            Caption = '% Custo'
            DataBinding.FieldName = 'PRCUSTO'
            Visible = False
          end
          object tbvVLCUSTO: TcxGridDBColumn
            Caption = 'Vl CUSTO'
            DataBinding.FieldName = 'VLCUSTO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
          end
          object tbvPRVIGOR: TcxGridDBColumn
            Caption = '% VIGOR'
            DataBinding.FieldName = 'PRVIGOR'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object tbvVLCUSTOMEDIO: TcxGridDBColumn
            Caption = 'Custo M'#233'dio'
            DataBinding.FieldName = 'VLCUSTOMEDIO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
          end
          object tbvDTFABRICACAO: TcxGridDBColumn
            Caption = 'Data Fabrica'#231#227'o'
            DataBinding.FieldName = 'DTFABRICACAO'
            PropertiesClassName = 'TcxDateEditProperties'
            Visible = False
            Width = 90
          end
          object tbvDTVALIDADE: TcxGridDBColumn
            Caption = 'Data Validade'
            DataBinding.FieldName = 'DTVALIDADE'
            PropertiesClassName = 'TcxDateEditProperties'
            Visible = False
            Width = 80
          end
          object tbvPRLUCRO: TcxGridDBColumn
            Caption = '% Lucro'
            DataBinding.FieldName = 'PRLUCRO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Width = 60
          end
          object tbvVLVENDA: TcxGridDBColumn
            Caption = 'Vl Venda'
            DataBinding.FieldName = 'VLVENDA'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
          end
          object tbvPRLUCROATACADO: TcxGridDBColumn
            Caption = '% Lucro Atacado'
            DataBinding.FieldName = 'PRLUCROATACADO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Width = 90
          end
          object tbvVLATACADO: TcxGridDBColumn
            Caption = 'Vl Atacado'
            DataBinding.FieldName = 'VLATACADO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
          end
          object tbvPRLUCROESPECIAL: TcxGridDBColumn
            Caption = '% Lucro Especial'
            DataBinding.FieldName = 'PRLUCROESPECIAL'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Width = 90
          end
          object tbvVLESPECIAL: TcxGridDBColumn
            Caption = 'Vl Especial'
            DataBinding.FieldName = 'VLESPECIAL'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
          end
          object tbvBORECUPERAAJUSTEICMS: TcxGridDBColumn
            Caption = 'Recuperar ICMS CIAPI'
            DataBinding.FieldName = 'BORECUPERAAJUSTEICMS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 120
          end
          object tbvBOBASEIPIAJUSTE: TcxGridDBColumn
            Caption = 'Ajuste Base IPI'
            DataBinding.FieldName = 'BOBASEIPIAJUSTE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 80
          end
          object tbvBOBASEICMSAJUSTE: TcxGridDBColumn
            Caption = 'Ajuste Base ICMS'
            DataBinding.FieldName = 'BOBASEICMSAJUSTE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 95
          end
          object tbvBONDIFERENCIALALIQUOTA: TcxGridDBColumn
            Caption = 'N'#227'o tem diferencial de Al'#237'quota'
            DataBinding.FieldName = 'BONDIFERENCIALALIQUOTA'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 160
          end
          object tbvVLICMSDIFALIQUOTA: TcxGridDBColumn
            Caption = 'Vl ICMS Diferencial Al'#237'quota'
            DataBinding.FieldName = 'VLICMSDIFALIQUOTA'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Visible = False
          end
          object tbvBODIFERENCIALALIQUOTA: TcxGridDBColumn
            Caption = 'Diferencial de Al'#237'quota'
            DataBinding.FieldName = 'BODIFERENCIALALIQUOTA'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 120
          end
          object tbvBORECUPERAIPIESPECIAL: TcxGridDBColumn
            Caption = 'Recupera IPI Especial'
            DataBinding.FieldName = 'BORECUPERAIPIESPECIAL'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 115
          end
          object tbvBOBASEPISAJUSTE: TcxGridDBColumn
            Caption = 'Ajuste Base PIS'
            DataBinding.FieldName = 'BOBASEPISAJUSTE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 85
          end
          object tbvBOBASECOFINSAJUSTE: TcxGridDBColumn
            Caption = 'Ajuste Base COFINS'
            DataBinding.FieldName = 'BOBASECOFINSAJUSTE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 110
          end
          object tbvVLCUSTOBRUTO: TcxGridDBColumn
            Caption = 'Custo Bruto'
            DataBinding.FieldName = 'VLCUSTOBRUTO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
          end
          object tbvVLCUSTOLIQUIDO: TcxGridDBColumn
            Caption = 'Custo L'#237'quido'
            DataBinding.FieldName = 'VLCUSTOLIQUIDO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
          end
          object tbvPRCOMISSAO: TcxGridDBColumn
            Caption = '% Comiss'#227'o'
            DataBinding.FieldName = 'PRCOMISSAO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Width = 70
          end
          object tbvALSUPERSIMPLES: TcxGridDBColumn
            Caption = '% Super Simples'
            DataBinding.FieldName = 'ALSUPERSIMPLES'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Width = 90
          end
          object tbvVLSUPERSIMPLES: TcxGridDBColumn
            Caption = 'Vl Super Simples'
            DataBinding.FieldName = 'VLSUPERSIMPLES'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
          end
          object tbvVLCOMISSAO: TcxGridDBColumn
            Caption = 'Vl Comiss'#227'o'
            DataBinding.FieldName = 'VLCOMISSAO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
          end
          object tbvVLCUSTOTOTAL: TcxGridDBColumn
            Caption = 'Vl Custo Total'
            DataBinding.FieldName = 'VLCUSTOTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
          end
          object tbvVLPRECOVENDA: TcxGridDBColumn
            Caption = 'Vl Preco Venda'
            DataBinding.FieldName = 'VLPRECOVENDA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
          end
          object tbvVLPRECOANTERIOR: TcxGridDBColumn
            Caption = 'Vl Pre'#231'o Anterior'
            DataBinding.FieldName = 'VLPRECOANTERIOR'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
          end
          object tbvPRFRETE: TcxGridDBColumn
            Caption = '% Frete'
            DataBinding.FieldName = 'PRFRETE'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object tbvVLIPIITEM: TcxGridDBColumn
            Caption = 'Vl IPI Item'
            DataBinding.FieldName = 'VLIPIITEM'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
          end
          object tbvVLFRETEITEM: TcxGridDBColumn
            Caption = 'Vl Frete Item'
            DataBinding.FieldName = 'VLFRETEITEM'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
          end
          object tbvVLICMSSUBTRIBITEM: TcxGridDBColumn
            Caption = 'Vl ICMS Sub Trib Item'
            DataBinding.FieldName = 'VLICMSSUBTRIBITEM'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
            Width = 120
          end
          object tbvVLDESCONTOITEM: TcxGridDBColumn
            Caption = 'Vl Desconto Item'
            DataBinding.FieldName = 'VLDESCONTOITEM'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
          end
          object tbvVLOUTDESPESAITEM: TcxGridDBColumn
            Caption = 'Vl Outra Despesa Item'
            DataBinding.FieldName = 'VLOUTDESPESAITEM'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
            Width = 120
          end
          object tbvVLICMSDIFALIQUOTAITEM: TcxGridDBColumn
            Caption = 'Vl ICMS Diferencial de Al'#237'quota do Item'
            DataBinding.FieldName = 'VLICMSDIFALIQUOTAITEM'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
            Width = 200
          end
          object tbvCDBCCALCULOCREDITO: TcxGridDBColumn
            Caption = 'Base C'#225'lculo Cr'#233'dito'
            DataBinding.FieldName = 'CDBCCALCULOCREDITO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDBCCALCULOCREDITO'
            Properties.ListColumns = <
              item
                FieldName = 'NMBCCALCULOCREDITO'
              end>
            Visible = False
            Width = 120
          end
          object tbvPRDESPESAITEM: TcxGridDBColumn
            Caption = '% Despesa Item'
            DataBinding.FieldName = 'PRDESPESAITEM'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Options.Focusing = False
            Width = 90
          end
          object tbvVLDESPESAITEM: TcxGridDBColumn
            Caption = 'Vl Despesa Item'
            DataBinding.FieldName = 'VLDESPESAITEM'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
          end
          object tbvVLLUCRO: TcxGridDBColumn
            Caption = 'Vl Lucro'
            DataBinding.FieldName = 'VLLUCRO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
          end
          object tbvDSINFADICIONAL: TcxGridDBColumn
            Caption = 'Informa'#231#227'o Adicional'
            DataBinding.FieldName = 'DSINFADICIONAL'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Visible = False
            Width = 200
          end
          object tbvNUCNTCUSTO: TcxGridDBColumn
            Caption = 'Centro Custo'
            DataBinding.FieldName = 'NUCNTCUSTO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tbvNUCNTCUSTOPropertiesButtonClick
            Visible = False
            Width = 90
          end
          object tbvNMCNTCUSTO: TcxGridDBColumn
            Caption = 'Centro Custo'
            DataBinding.FieldName = 'NMCNTCUSTO'
            Visible = False
            Width = 150
          end
          object tbvNUPLCONTA: TcxGridDBColumn
            Caption = 'N'#186' Plano Contas'
            DataBinding.FieldName = 'NUPLCONTA'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tbvNUPLCONTAPropertiesButtonClick
            Visible = False
            Width = 100
          end
          object tbvNMPLCONTA: TcxGridDBColumn
            Caption = 'Plano Contas'
            DataBinding.FieldName = 'NMPLCONTA'
            Visible = False
            Options.Focusing = False
            Width = 150
          end
          object tbvVLPRECOPRAZO: TcxGridDBColumn
            Caption = 'Vl Pre'#231'o a Prazo'
            DataBinding.FieldName = 'VLPRECOPRAZO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
          end
          object tbvPRLUCROPRAZO: TcxGridDBColumn
            Caption = '% Lucro Prazo'
            DataBinding.FieldName = 'PRLUCROPRAZO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Width = 80
          end
          object tbvVLPRECOPRAZOANTERIOR: TcxGridDBColumn
            Caption = 'Vl Pre'#231'o Prazo Anterior'
            DataBinding.FieldName = 'VLPRECOPRAZOANTERIOR'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = False
            Options.Focusing = False
          end
          object tbvVLLUCROPRAZO: TcxGridDBColumn
            Caption = 'Vl Lucro Prazo'
            DataBinding.FieldName = 'VLLUCROPRAZO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = False
            Options.Focusing = False
          end
          object tbvBOAJUSTEIPI: TcxGridDBColumn
            Caption = 'Ajuste IPI'
            DataBinding.FieldName = 'BOAJUSTEIPI'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 60
          end
        end
        object lvlitentrada: TcxGridLevel
          GridView = tbv
        end
      end
    end
    object tbstributacao: TcxTabSheet
      Caption = '&Tributa'#231#227'o'
      object pnlconfigtributa: TPanel
        Left = 0
        Top = 0
        Width = 520
        Height = 250
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object lblicmssubst: TLabel
          Left = 1
          Top = 24
          Width = 60
          Height = 16
          Caption = 'ICMS Sub Tri'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblaliquota: TLabel
          Left = 176
          Top = 2
          Width = 38
          Height = 13
          Caption = 'Aliquota'
          Transparent = True
        end
        object lblvalor: TLabel
          Left = 247
          Top = 2
          Width = 24
          Height = 13
          Caption = 'Valor'
          Transparent = True
        end
        object lblbasecalculo: TLabel
          Left = 99
          Top = 2
          Width = 62
          Height = 13
          Caption = 'Base C'#225'lculo'
          Transparent = True
        end
        object lbliss: TLabel
          Left = 53
          Top = 65
          Width = 17
          Height = 16
          Caption = 'ISS'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblpis: TLabel
          Left = 53
          Top = 87
          Width = 17
          Height = 16
          Caption = 'PIS'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblcofins: TLabel
          Left = 27
          Top = 109
          Width = 40
          Height = 16
          Caption = 'COFINS'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Bevel4: TBevel
          Left = 504
          Top = 0
          Width = 16
          Height = 250
          Align = alRight
          Shape = bsRightLine
          ExplicitHeight = 133
        end
        object lblinss: TLabel
          Left = 44
          Top = 131
          Width = 25
          Height = 16
          Caption = 'INSS'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblcontribsocial: TLabel
          Left = 7
          Top = 153
          Width = 62
          Height = 16
          Caption = 'Contrib. Social'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblirrf: TLabel
          Left = 44
          Top = 175
          Width = 23
          Height = 16
          Caption = 'IRRF'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblfretesub: TLabel
          Left = 3
          Top = 194
          Width = 64
          Height = 16
          Caption = 'Frete sub Tribut'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object txtVLPIS: TcxDBLabel
          Left = 215
          Top = 84
          DataBinding.DataField = 'VLPIS'
          DataBinding.DataSource = dts
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 21
          Width = 100
        end
        object txtVLCOFINS: TcxDBLabel
          Left = 215
          Top = 107
          DataBinding.DataField = 'VLCOFINS'
          DataBinding.DataSource = dts
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 21
          Width = 100
        end
        object edtVLFRETESUB: TcxDBCalcEdit
          Left = 215
          Top = 192
          DataBinding.DataField = 'VLFRETESUB'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 12
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 100
        end
        object edtALFRETESUB: TcxDBCalcEdit
          Left = 167
          Top = 192
          DataBinding.DataField = 'ALFRETESUB'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 11
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 46
        end
        object edtVLBASEFRETESUB: TcxDBCalcEdit
          Left = 72
          Top = 192
          DataBinding.DataField = 'VLBASEFRETESUB'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 95
        end
        object edtVLIRRF: TcxDBCalcEdit
          Left = 215
          Top = 170
          DataBinding.DataField = 'VLIRRF'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 100
        end
        object edtVLCONTRIBSOCIAL: TcxDBCalcEdit
          Left = 215
          Top = 148
          DataBinding.DataField = 'VLCONTRIBSOCIAL'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 100
        end
        object edtVLINSS: TcxDBCalcEdit
          Left = 215
          Top = 124
          DataBinding.DataField = 'VLINSS'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 100
        end
        object edtVLISS: TcxDBCalcEdit
          Left = 215
          Top = 58
          DataBinding.DataField = 'VLISS'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 100
        end
        object edtVLICMSSUBTRIB: TcxDBCalcEdit
          Left = 215
          Top = 17
          DataBinding.DataField = 'VLICMSSUBTRIB'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 100
        end
        object edtVLBaSeICMSSUBTRIB: TcxDBCalcEdit
          Left = 72
          Top = 17
          DataBinding.DataField = 'VLBASEICMSSUBTRIB'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 95
        end
        object ckbBOCREDITOSTTRANSPORTE: TcxDBCheckBox
          Left = 314
          Top = 192
          Caption = 'Cr'#233'dito ICMS ST Transporte'
          DataBinding.DataField = 'BOCREDITOSTTRANSPORTE'
          DataBinding.DataSource = dts
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 13
          Transparent = True
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
        end
        object ckbBOICMSSTITEM: TcxDBCheckBox
          Left = 314
          Top = 38
          AutoSize = False
          Caption = 'Lan'#231'ar ICMS Sub Trib por item'
          DataBinding.DataField = 'BOICMSSTITEM'
          DataBinding.DataSource = dts
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Transparent = True
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Height = 21
          Width = 199
        end
        object ckbBOICMSSUBTRIBNTOTAL: TcxDBCheckBox
          Left = 314
          Top = 17
          Caption = 'ICMS Subst Trib n'#227'o faz parte do total'
          DataBinding.DataField = 'BOICMSSUBTRIBNTOTAL'
          DataBinding.DataSource = dts
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Transparent = True
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
        end
        object ckbboretencaocofins: TcxDBCheckBox
          Left = 314
          Top = 102
          Caption = 'Reten'#231#227'o'
          DataBinding.DataField = 'BORETENCAOCOFINS'
          DataBinding.DataSource = dts
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Transparent = True
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
        end
        object ckbboretencaopis: TcxDBCheckBox
          Left = 314
          Top = 80
          Caption = 'Reten'#231#227'o'
          DataBinding.DataField = 'BORETENCAOPIS'
          DataBinding.DataSource = dts
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          Transparent = True
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
        end
        object txtVLBASEPIS: TcxDBLabel
          Left = 77
          Top = 84
          DataBinding.DataField = 'VLBASEPIS'
          DataBinding.DataSource = dts
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Transparent = True
          Height = 21
          Width = 95
        end
        object txtVLBASECOFINS: TcxDBLabel
          Left = 77
          Top = 107
          DataBinding.DataField = 'VLBASECOFINS'
          DataBinding.DataSource = dts
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 21
          Width = 95
        end
      end
      object pnloutros: TPanel
        Left = 520
        Top = 0
        Width = 929
        Height = 250
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object lblpsliquido: TLabel
          Left = 2
          Top = 8
          Width = 54
          Height = 16
          Caption = 'Peso Liquido'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblpsbruto: TLabel
          Left = 2
          Top = 30
          Width = 47
          Height = 16
          Caption = 'Peso Bruto'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblqtvolume: TLabel
          Left = 2
          Top = 52
          Width = 50
          Height = 16
          Caption = 'Qtd Volume'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblnmespecievolume: TLabel
          Left = 2
          Top = 74
          Width = 34
          Height = 16
          Caption = 'Esp'#233'cie'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblvalorpercente: TLabel
          Left = 162
          Top = 88
          Width = 24
          Height = 13
          Caption = 'Valor'
          Transparent = True
        end
        object lblpercente: TLabel
          Left = 98
          Top = 88
          Width = 8
          Height = 13
          Caption = '%'
          Transparent = True
        end
        object lbldesconto: TLabel
          Left = 2
          Top = 109
          Width = 39
          Height = 16
          Caption = 'Desconto'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object edtNMESPECIEVOLUME: TcxDBTextEdit
          Left = 76
          Top = 67
          DataBinding.DataField = 'NMESPECIEVOLUME'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 120
        end
        object edtPRDESCONTO: TcxDBCalcEdit
          Left = 76
          Top = 102
          DataBinding.DataField = 'PRDESCONTO'
          DataBinding.DataSource = dts
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 46
        end
        object edtVLDESCONTO: TcxDBCurrencyEdit
          Left = 124
          Top = 102
          DataBinding.DataField = 'VLDESCONTO'
          DataBinding.DataSource = dts
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 74
        end
        object edtQTVOLUME: TcxDBCalcEdit
          Left = 76
          Top = 45
          DataBinding.DataField = 'QTVOLUME'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 120
        end
        object edtPSBRUTO: TcxDBCalcEdit
          Left = 76
          Top = 23
          DataBinding.DataField = 'PSBRUTO'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 120
        end
        object edtPSLIQUIDO: TcxDBCalcEdit
          Left = 76
          Top = 1
          DataBinding.DataField = 'PSLIQUIDO'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 120
        end
        object ckbBONARREDONDARPIS: TcxDBCheckBox
          Left = 76
          Top = 208
          Caption = 'N'#227'o arredondar PIS'
          DataBinding.DataField = 'BONARREDONDARPIS'
          DataBinding.DataSource = dts
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          Transparent = True
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
        end
        object ckbBONARREDONDARCOFINS: TcxDBCheckBox
          Left = 76
          Top = 187
          Caption = 'N'#227'o arredondar COFINS'
          DataBinding.DataField = 'BONARREDONDARCOFINS'
          DataBinding.DataSource = dts
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Transparent = True
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
        end
        object ckbBOARREDONDAR: TcxDBCheckBox
          Left = 76
          Top = 145
          Caption = 'Arredondar de 0,005 para 0,01'
          DataBinding.DataField = 'BOARREDONDAR'
          DataBinding.DataSource = dts
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          Transparent = True
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
        end
        object ckbBOIPIBCICMS: TcxDBCheckBox
          Left = 76
          Top = 126
          Caption = 'IPI faz parte da base de C'#225'lculo do ICMS'
          DataBinding.DataField = 'BOIPIBCICMS'
          DataBinding.DataSource = dts
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          Transparent = True
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
        end
        object ckbBODESCONTOITEM: TcxDBCheckBox
          Left = 199
          Top = 102
          Caption = 'Lan'#231'ar desconto por item'
          DataBinding.DataField = 'BODESCONTOITEM'
          DataBinding.DataSource = dts
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Transparent = True
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
        end
      end
    end
    object tbsobservacao: TcxTabSheet
      Caption = '&Observa'#231#227'o'
      ImageIndex = 62
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object memDSOBSERVACAO: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'DSOBSERVACAO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnEnter = colorenter
        OnExit = colorexit
        Height = 250
        Width = 1449
      end
    end
    object tbsinfoadic: TcxTabSheet
      Caption = 'Informa'#231#245'es &Adicionais'
      object Label18: TLabel
        Left = 3
        Top = 10
        Width = 100
        Height = 13
        Caption = 'Situa'#231#227'o Documento'
        Transparent = True
      end
      object lblnusubserie: TLabel
        Left = 3
        Top = 28
        Width = 44
        Height = 13
        Caption = 'Sub-s'#233'rie'
        Transparent = True
      end
      object lblgrupotensaoc500: TLabel
        Left = 3
        Top = 53
        Width = 68
        Height = 13
        Caption = 'Grupo Tens'#227'o'
        Transparent = True
      end
      object lbltpligacaoc500: TLabel
        Left = 3
        Top = 76
        Width = 62
        Height = 13
        Caption = 'Tipo Liga'#231#227'o'
        Transparent = True
      end
      object lblclconsumoagua: TLabel
        Left = 3
        Top = 120
        Width = 89
        Height = 13
        Caption = 'Classe Cons. '#193'gua'
        Transparent = True
      end
      object lblclconsumoenergia: TLabel
        Left = 3
        Top = 98
        Width = 100
        Height = 13
        Caption = 'Classe Cons. Energia'
        Transparent = True
      end
      object edtNUSUBSERIE: TcxDBTextEdit
        Left = 105
        Top = 24
        DataBinding.DataField = 'NUSUBSERIE'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 316
      end
      object cbxCDCLCONSUMOAGUA: TcxDBLookupComboBox
        Left = 105
        Top = 112
        DataBinding.DataField = 'CDCLCONSUMOENERGIA'
        DataBinding.DataSource = dts
        Properties.DropDownWidth = 600
        Properties.KeyFieldNames = 'CDCLCONSUMOAGUA'
        Properties.ListColumns = <
          item
            FieldName = 'NMCLCONSUMOAGUA'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        OnEnter = colorenter
        OnExit = colorexit
        Width = 316
      end
      object cbxCDCLCONSUMOENERGIA: TcxDBLookupComboBox
        Left = 105
        Top = 90
        DataBinding.DataField = 'CDCLCONSUMOENERGIA'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDCLCONSUMOENERGIA'
        Properties.ListColumns = <
          item
            FieldName = 'NMCLCONSUMOENERGIA'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        OnEnter = colorenter
        OnExit = colorexit
        Width = 316
      end
      object cbxCDTPLIGACAOC500: TcxDBLookupComboBox
        Left = 105
        Top = 68
        DataBinding.DataField = 'CDTPLIGACAOC500'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDTPLIGACAOC500'
        Properties.ListColumns = <
          item
            FieldName = 'NMTPLIGACAOC500'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        OnEnter = colorenter
        OnExit = colorexit
        Width = 316
      end
      object cbxCDGRUPOTENSAOC500: TcxDBLookupComboBox
        Left = 105
        Top = 45
        DataBinding.DataField = 'CDGRUPOTENSAOC500'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDGRUPOTENSAOC500'
        Properties.ListColumns = <
          item
            FieldName = 'NMGRUPOTENSAOC500'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        OnEnter = colorenter
        OnExit = colorexit
        Width = 316
      end
      object cbxNUSTDOCUMENTO: TcxDBLookupComboBox
        Left = 105
        Top = 2
        DataBinding.DataField = 'NUSTDOCUMENTO'
        DataBinding.DataSource = dts
        Properties.DropDownWidth = 450
        Properties.KeyFieldNames = 'NUSTDOCUMENTO'
        Properties.ListColumns = <
          item
            FieldName = 'NMSTDOCUMENTO2'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnEnter = colorenter
        OnExit = colorexit
        Width = 316
      end
      object gbxcte: TcxGroupBox
        Left = 3
        Top = 137
        Caption = 'Conhecimento de Transporte'
        TabOrder = 6
        Height = 90
        Width = 416
        object lbl2: TLabel
          Left = 5
          Top = 20
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          Transparent = True
        end
        object lbl3: TLabel
          Left = 3
          Top = 37
          Width = 42
          Height = 13
          Caption = 'Emiss'#227'o:'
          Transparent = True
        end
        object lbl4: TLabel
          Left = 3
          Top = 51
          Width = 57
          Height = 13
          Caption = 'Fornecedor:'
          Transparent = True
        end
        object lbl5: TLabel
          Left = 3
          Top = 69
          Width = 24
          Height = 13
          Caption = 'Valor'
          Transparent = True
        end
        object lbl6: TLabel
          Left = 195
          Top = 37
          Width = 40
          Height = 13
          Caption = 'Entrada:'
          Transparent = True
        end
        object txtVLTOTALCT: TcxDBLabel
          Left = 61
          Top = 67
          DataBinding.DataField = 'VLTOTALCT'
          DataBinding.DataSource = dts
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 21
          Width = 121
        end
        object txtNMFORNECEDORCT: TcxDBLabel
          Left = 61
          Top = 51
          DataBinding.DataField = 'NMFORNECEDORCT'
          DataBinding.DataSource = dts
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 21
          Width = 348
        end
        object txtDTENTRADACT: TcxDBLabel
          Left = 253
          Top = 37
          DataBinding.DataField = 'DTENTRADACT'
          DataBinding.DataSource = dts
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 21
          Width = 89
        end
        object txtDTEMISSAOCT: TcxDBLabel
          Left = 61
          Top = 37
          DataBinding.DataField = 'DTEMISSAOCT'
          DataBinding.DataSource = dts
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 21
          Width = 89
        end
        object edtNUENTRADACT: TcxDBButtonEdit
          Left = 46
          Top = 14
          DataBinding.DataField = 'NUENTRADACT'
          DataBinding.DataSource = dts
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = edtNUENTRADACTPropertiesButtonClick
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 139
        end
      end
    end
    object tbsxml: TcxTabSheet
      Caption = '&XML'
      TabVisible = False
      object dxBarDockControl2: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1449
        Height = 22
        Align = dalTop
        BarManager = bmg1
      end
      object memDSXML: TcxDBMemo
        Left = 0
        Top = 22
        Align = alClient
        DataBinding.DataField = 'DSXML'
        DataBinding.DataSource = dts
        TabOrder = 1
        Height = 228
        Width = 1449
      end
    end
    object tbsinfcomplementar: TcxTabSheet
      Caption = '&Informa'#231#245'es complementares'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Splitter2: TSplitter
        Left = 0
        Top = 122
        Width = 1449
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        ExplicitTop = 345
        ExplicitWidth = 1352
      end
      object grdentradaefd0450: TcxGrid
        Left = 0
        Top = 0
        Width = 1449
        Height = 122
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbventradaefd0450: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Enabled = False
          Navigator.Buttons.NextPage.Visible = False
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
          DataController.DataSource = dtsentradaefd0450
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbventradaefd0450CDEFD0450: TcxGridDBColumn
            Caption = 'Informa'#231#227'o Complementar'
            DataBinding.FieldName = 'CDEFD0450'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 500
            Properties.KeyFieldNames = 'CDEFD0450'
            Properties.ListColumns = <
              item
                FieldName = 'NMEFD0450'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 250
          end
          object tbventradaefd0450DSCOMPLEMENTO: TcxGridDBColumn
            Caption = 'Complemento'
            DataBinding.FieldName = 'DSCOMPLEMENTO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Width = 400
          end
        end
        object lvlentradaefd0450Level1: TcxGridLevel
          GridView = tbventradaefd0450
        end
      end
      object grdentradac111: TcxGrid
        Left = 0
        Top = 125
        Width = 1449
        Height = 125
        Align = alBottom
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object tbventradac111: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Enabled = False
          Navigator.Buttons.NextPage.Visible = False
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
          DataController.DataSource = dtsentradac111
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object tbventradac111CDTPC111: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'CDTPC111'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 500
            Properties.KeyFieldNames = 'CDTPC111'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPC111'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 350
          end
          object tbventradac111NUPROCESSO: TcxGridDBColumn
            Caption = 'N'#186' Processo'
            DataBinding.FieldName = 'NUPROCESSO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Width = 150
          end
        end
        object lvlentradac111: TcxGridLevel
          GridView = tbventradac111
        end
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 78
    Width = 1449
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label20: TLabel
      Left = 605
      Top = 1
      Width = 35
      Height = 13
      Caption = 'Modelo'
      Transparent = True
    end
    object lblcfop: TLabel
      Left = 438
      Top = 1
      Width = 28
      Height = 13
      Caption = 'CFOP'
      Transparent = True
    end
    object lbltpentrada: TLabel
      Left = 264
      Top = 1
      Width = 26
      Height = 13
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      OnDblClick = lbltpentradaDblClick
    end
    object Label3: TLabel
      Left = 178
      Top = 1
      Width = 51
      Height = 13
      Caption = 'Dt Entrada'
      Transparent = True
    end
    object Label2: TLabel
      Left = 93
      Top = 1
      Width = 53
      Height = 13
      Caption = 'Dt Emiss'#227'o'
      Transparent = True
    end
    object Label1: TLabel
      Left = 4
      Top = 1
      Width = 53
      Height = 13
      Caption = 'Nota Fiscal'
      Transparent = True
    end
    object lbl1: TLabel
      Left = 68
      Top = 1
      Width = 24
      Height = 13
      Caption = 'S'#233'rie'
    end
    object lblnuchavenfe: TLabel
      Left = 659
      Top = 1
      Width = 55
      Height = 13
      Caption = 'Chave NFE'
      Transparent = True
    end
    object txtnmcfop: TDBText
      Left = 497
      Top = 19
      Width = 105
      Height = 17
      DataField = 'NMCFOP'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
    end
    object edtcodigo: TcxTextEdit
      Left = 4
      Top = 15
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtcodigoEnter
      OnExit = colorexit
      OnKeyDown = edtcodigoKeyDown
      OnKeyPress = edtcodigoKeyPress
      Width = 63
    end
    object edtnuchavenfe: TcxDBTextEdit
      Left = 659
      Top = 15
      DataBinding.DataField = 'NUCHAVENFE'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      OnKeyPress = edtnuchavenfeKeyPress
      Width = 276
    end
    object edtnuserie: TcxDBTextEdit
      Left = 68
      Top = 15
      DataBinding.DataField = 'NUSERIE'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 24
    end
    object edtdtsaida: TcxDBDateEdit
      Left = 178
      Top = 15
      DataBinding.DataField = 'DTSAIDA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 84
    end
    object edtdtemissao: TcxDBDateEdit
      Left = 93
      Top = 15
      DataBinding.DataField = 'DTEMISSAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 85
    end
    object cbxnudocfiscalicms: TcxDBLookupComboBox
      Left = 606
      Top = 15
      DataBinding.DataField = 'NUDOCFISCALICMS'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'nudocfiscalicms'
      Properties.ListColumns = <
        item
          FieldName = 'nudocfiscalicms'
        end
        item
          FieldName = 'nmdocfiscalicms1'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.OnChange = cbx3PropertiesChange
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      OnEnter = colorenter
      OnExit = colorexit
      Width = 53
    end
    object cbxcdtpentrada: TcxDBLookupComboBox
      Left = 263
      Top = 15
      DataBinding.DataField = 'CDTPENTRADA'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 600
      Properties.KeyFieldNames = 'CDTPENTRADA'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPENTRADA2'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = cbxcdtpentradaEnter
      OnExit = colorexit
      Width = 170
    end
    object edtcdcfop: TcxDBButtonEdit
      Left = 434
      Top = 15
      DataBinding.DataField = 'CDCFOP'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcdcfopPropertiesButtonClick
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = edtcdcfopKeyDown
      OnKeyPress = edtcdfornecedorKeyPress
      Width = 61
    end
  end
  object gbxautpagto: TcxGroupBox
    Left = 0
    Top = 474
    Align = alBottom
    Caption = 'Contas a Pagar'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 4
    Height = 191
    Width = 1449
    object Bevel1: TBevel
      Left = 2
      Top = 18
      Width = 1445
      Height = 20
      Align = alTop
      Shape = bsBottomLine
      ExplicitTop = 19
      ExplicitWidth = 1383
    end
    object lblcdcondpagto: TLabel
      Left = 2
      Top = 19
      Width = 60
      Height = 13
      Caption = 'Cnd Pagto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 442
      Top = 19
      Width = 25
      Height = 13
      Caption = 'Cobr.'
      Transparent = True
    end
    object Label5: TLabel
      Left = 235
      Top = 19
      Width = 41
      Height = 13
      Caption = 'Hist'#243'rico'
      Transparent = True
    end
    object lblplconta: TLabel
      Left = 1033
      Top = 19
      Width = 45
      Height = 13
      Caption = 'Pl Contas'
      Transparent = True
    end
    object lblcntcusto: TLabel
      Left = 639
      Top = 20
      Width = 46
      Height = 13
      Caption = 'Cnt Custo'
      Transparent = True
    end
    object txtnmcondpagto: TDBText
      Left = 125
      Top = 17
      Width = 110
      Height = 17
      DataField = 'NMCONDPAGTO'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
    end
    object edtdshistorico: TcxDBTextEdit
      Left = 277
      Top = 14
      DataBinding.DataField = 'DSHISTORICO'
      DataBinding.DataSource = dts
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 165
    end
    object cbxcdtpcobranca: TcxDBLookupComboBox
      Left = 467
      Top = 13
      DataBinding.DataField = 'CDTPCOBRANCA'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'CDTPCOBRANCA'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPCOBRANCA'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      Width = 172
    end
    object bdcduplicata: TdxBarDockControl
      Left = 2
      Top = 38
      Width = 1445
      Height = 22
      Align = dalTop
      BarManager = bmg1
    end
    object txtnmplconta: TcxDBLabel
      Left = 1188
      Top = 15
      DataBinding.DataField = 'NMPLCONTA'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 157
    end
    object edtnuplconta: TcxDBButtonEdit
      Left = 1076
      Top = 13
      DataBinding.DataField = 'NUPLCONTA'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtNUPLCONTAPropertiesButtonClick
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = edtnuplcontaKeyDown
      Width = 112
    end
    object grdautpagto: TcxGrid
      Left = 2
      Top = 60
      Width = 1445
      Height = 129
      Align = alClient
      TabOrder = 9
      LookAndFeel.NativeStyle = False
      object tbvautpagto: TcxGridDBTableView
        OnKeyDown = tbvautpagtoKeyDown
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.PriorPage.Enabled = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.NextPage.Enabled = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Append.Enabled = False
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
        OnCellDblClick = tbvautpagtoCellDblClick
        OnCustomDrawCell = tbvautpagtoCustomDrawCell
        DataController.DataSource = dtsAutpagto
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'VLAUTPAGTO'
            Column = tbvautpagtoVLAUTPAGTO
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            FieldName = 'VLSALDO'
            Column = tbvautpagtoVLSALDO
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tbvautpagtoCDAUTPAGTO: TcxGridDBColumn
          Tag = 99
          Caption = 'Contas a Pagar'
          DataBinding.FieldName = 'CDAUTPAGTO'
          Options.Editing = False
          Styles.Content = dtmmain.cxStyle1
        end
        object tbvautpagtoDTVENCIMENTO: TcxGridDBColumn
          Caption = 'Dt Vencimento'
          DataBinding.FieldName = 'DTVENCIMENTO'
          PropertiesClassName = 'TcxDateEditProperties'
          Width = 80
        end
        object tbvautpagtoVLAUTPAGTO: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VLAUTPAGTO'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        end
        object tbvautpagtoVLSALDO: TcxGridDBColumn
          Caption = 'Saldo'
          DataBinding.FieldName = 'VLSALDO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object tbvautpagtoCDSTAUTPAGTO: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'CDSTAUTPAGTO'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'CDSTAUTPAGTO'
          Properties.ListColumns = <
            item
              FieldName = 'NMSTAUTPAGTO'
            end>
          Properties.ListOptions.ShowHeader = False
          Options.Focusing = False
          Width = 80
        end
        object tbvautpagtoCDTPCOBRANCA: TcxGridDBColumn
          Caption = 'Tipo Cobran'#231'a'
          DataBinding.FieldName = 'CDTPCOBRANCA'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 400
          Properties.KeyFieldNames = 'CDTPCOBRANCA'
          Properties.ListColumns = <
            item
              FieldName = 'NMTPCOBRANCA'
            end>
          Properties.ListOptions.ShowHeader = False
          Width = 139
        end
        object tbvautpagtoNUCNTCUSTO: TcxGridDBColumn
          Caption = 'Centro Custo'
          DataBinding.FieldName = 'NUCNTCUSTO'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = tbvautpagtoNUCNTCUSTOPropertiesButtonClick
          Visible = False
          Width = 100
        end
        object tbvautpagtoNMCNTCUSTO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'NMCNTCUSTO'
          Visible = False
          Width = 200
        end
        object tbvautpagtoNUPLCONTA: TcxGridDBColumn
          Caption = 'Plano de Contas'
          DataBinding.FieldName = 'NUPLCONTA'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = tbvautpagtoNUPLCONTAPropertiesButtonClick
          Visible = False
          Width = 100
        end
        object tbvautpagtoNMPLCONTA: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'NMPLCONTA'
          Visible = False
          Options.Focusing = False
          Width = 250
        end
        object tbvautpagtoNUCOR: TcxGridDBColumn
          DataBinding.FieldName = 'NUCOR'
          Visible = False
          IsCaptionAssigned = True
        end
        object tbvautpagtoNUCORCONTA: TcxGridDBColumn
          DataBinding.FieldName = 'NUCORCONTA'
          Visible = False
          IsCaptionAssigned = True
        end
        object tbvautpagtoTSAPROVACAO: TcxGridDBColumn
          Caption = 'Aprovado em'
          DataBinding.FieldName = 'TSAPROVACAO'
          Options.Focusing = False
          Width = 142
        end
        object tbvautpagtoNMUSUARIO: TcxGridDBColumn
          Caption = 'Aprovado por'
          DataBinding.FieldName = 'NMUSUARIO'
          Options.Focusing = False
          Width = 154
        end
      end
      object lvlautpagto: TcxGridLevel
        GridView = tbvautpagto
      end
    end
    object edtcdcondpagto: TcxDBButtonEdit
      Left = 62
      Top = 13
      DataBinding.DataField = 'CDCONDPAGTO'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcdcondpagtoPropertiesButtonClick
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = edtcdcondpagtoKeyDown
      OnKeyPress = edtcdfornecedorKeyPress
      Width = 61
    end
    object edtnucntcusto: TcxDBButtonEdit
      Left = 687
      Top = 13
      DataBinding.DataField = 'NUCNTCUSTO'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtnucntcustoPropertiesButtonClick
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = edtnucntcustoKeyDown
      Width = 112
    end
    object txtnmcntcusto: TcxDBLabel
      Left = 799
      Top = 15
      DataBinding.DataField = 'NMCNTCUSTO'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 180
    end
    object ckbBORATEIOPLCONTA: TcxDBCheckBox
      Left = 1341
      Top = 13
      Caption = 'Rateio'
      DataBinding.DataField = 'BORATEIOPLCONTA'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
    end
    object ckbborateiocntcusto: TcxDBCheckBox
      Left = 976
      Top = 13
      Caption = 'Rateio'
      DataBinding.DataField = 'BORATEIOCNTCUSTO'
      DataBinding.DataSource = dts
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
    end
  end
  object gbxfrete: TcxGroupBox
    Left = 0
    Top = 153
    Align = alTop
    Caption = 'Frete'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 2
    Height = 38
    Width = 1449
    object lblcdtransportadora: TLabel
      Left = 213
      Top = 20
      Width = 87
      Height = 13
      Caption = 'Transportadora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      OnDblClick = lblcdtransportadoraDblClick
    end
    object lblnuplaca: TLabel
      Left = 568
      Top = 20
      Width = 27
      Height = 13
      Caption = 'Placa'
      Transparent = True
    end
    object lblvlfrete: TLabel
      Left = 709
      Top = 20
      Width = 24
      Height = 13
      Caption = 'Valor'
      Transparent = True
    end
    object lblcdtpfrete: TLabel
      Left = 1
      Top = 20
      Width = 21
      Height = 13
      Caption = 'Tipo'
      Transparent = True
    end
    object txtnmtransportadora: TDBText
      Left = 363
      Top = 20
      Width = 206
      Height = 17
      DataField = 'NMTRANSPORTADORA'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
    end
    object edtCDTRANSPORTADORA: TcxDBButtonEdit
      Left = 301
      Top = 14
      DataBinding.DataField = 'CDTRANSPORTADORA'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtCDTRANSPORTADORAPropertiesButtonClick
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyPress = edtCDTRANSPORTADORAKeyPress
      Width = 60
    end
    object edtNUPLACA: TcxDBTextEdit
      Left = 598
      Top = 14
      DataBinding.DataField = 'NUPLACA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 60
    end
    object cbxcduf: TcxDBLookupComboBox
      Left = 660
      Top = 14
      DataBinding.DataField = 'CDUF'
      DataBinding.DataSource = dts
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
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      Width = 49
    end
    object ckbBOFRETEITEM: TcxDBCheckBox
      Left = 810
      Top = 15
      Caption = 'Lan'#231'ar frete por item'
      DataBinding.DataField = 'BOFRETEITEM'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Transparent = True
      OnEnter = colorenter
      OnExit = colorexit
    end
    object cbxcdtpfrete: TcxDBLookupComboBox
      Left = 23
      Top = 14
      DataBinding.DataField = 'CDTPFRETE'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 250
      Properties.KeyFieldNames = 'CDTPFRETE'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPFRETE'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      Width = 190
    end
    object edtVLFRETE: TcxDBCalcEdit
      Left = 735
      Top = 14
      DataBinding.DataField = 'VLFRETE'
      DataBinding.DataSource = dts
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      Width = 75
    end
  end
  object gbxemitente: TcxGroupBox
    Left = 0
    Top = 113
    Align = alTop
    Caption = 'Emitente'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 1
    Height = 40
    Width = 1449
    object lblcodigo: TLabel
      Left = 2
      Top = 18
      Width = 40
      Height = 13
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnDblClick = lblcodigoDblClick
    end
    object txtRZSOCIALC: TDBText
      Left = 185
      Top = 19
      Width = 350
      Height = 17
      DataField = 'RZSOCIALC'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
      OnDblClick = txtRZSOCIALCDblClick
    end
    object txtRZSOCIALF: TDBText
      Left = 185
      Top = 19
      Width = 350
      Height = 17
      DataField = 'RZSOCIALF'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
      OnDblClick = txtRZSOCIALFDblClick
    end
    object txtnmfornecedor: TDBText
      Left = 621
      Top = 19
      Width = 350
      Height = 17
      DataField = 'NMFORNECEDOR'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
      OnDblClick = txtRZSOCIALFDblClick
    end
    object Label6: TLabel
      Left = 542
      Top = 19
      Width = 71
      Height = 13
      Caption = 'Nome Fantasia'
      Transparent = True
    end
    object txtnmcliente: TDBText
      Left = 621
      Top = 19
      Width = 350
      Height = 17
      DataField = 'NMCLIENTE'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
      OnDblClick = txtRZSOCIALFDblClick
    end
    object edtcdcliente: TcxDBButtonEdit
      Left = 75
      Top = 14
      DataBinding.DataField = 'CDCLIENTE'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtCDCLIENTEPropertiesButtonClick
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = edtcdclienteKeyDown
      OnKeyPress = edtcdclienteKeyPress
      Width = 107
    end
    object edtcdfornecedor: TcxDBButtonEdit
      Left = 75
      Top = 14
      DataBinding.DataField = 'CDFORNECEDOR'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcdfornecedorPropertiesButtonClick
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = edtcdfornecedorKeyDown
      OnKeyPress = edtcdfornecedorKeyPress
      Width = 107
    end
  end
  object pnl: TPanel
    Left = 0
    Top = 59
    Width = 1449
    Height = 19
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 6
  end
  object splautpagto: TcxSplitter
    Left = 0
    Top = 466
    Width = 1449
    Height = 8
    HotZoneClassName = 'TcxMediaPlayer9Style'
    AlignSplitter = salBottom
    Control = gbxautpagto
  end
  object Panel2: TPanel
    Left = 0
    Top = 665
    Width = 1449
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 11
    object Bevel18: TBevel
      Left = 2
      Top = 19
      Width = 122
      Height = 24
    end
    object Bevel17: TBevel
      Left = 125
      Top = 19
      Width = 120
      Height = 24
    end
    object Bevel16: TBevel
      Left = 246
      Top = 19
      Width = 157
      Height = 24
    end
    object Bevel9: TBevel
      Left = 405
      Top = 19
      Width = 131
      Height = 24
    end
    object Bevel8: TBevel
      Left = 537
      Top = 19
      Width = 122
      Height = 24
    end
    object Bevel19: TBevel
      Left = 660
      Top = 19
      Width = 122
      Height = 24
    end
    object Bevel26: TBevel
      Left = 660
      Top = 1
      Width = 122
      Height = 18
    end
    object Bevel25: TBevel
      Left = 537
      Top = 1
      Width = 122
      Height = 18
    end
    object Bevel23: TBevel
      Left = 405
      Top = 1
      Width = 131
      Height = 18
    end
    object Bevel24: TBevel
      Left = 246
      Top = 1
      Width = 157
      Height = 18
    end
    object Bevel22: TBevel
      Left = 125
      Top = 1
      Width = 120
      Height = 18
    end
    object Bevel21: TBevel
      Left = 2
      Top = 1
      Width = 122
      Height = 18
    end
    object lblvlbaseicms: TLabel
      Left = 4
      Top = 0
      Width = 45
      Height = 16
      Caption = 'BC ICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblvlipi: TLabel
      Left = 126
      Top = 23
      Width = 13
      Height = 16
      Caption = 'IPI'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lblresumoprodutos: TLabel
      Left = 540
      Top = 0
      Width = 37
      Height = 16
      Caption = 'Produtos'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 783
      Top = 6
      Width = 59
      Height = 35
      Caption = 'Total'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = 35
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lblresumoservico: TLabel
      Left = 662
      Top = 0
      Width = 38
      Height = 16
      Caption = 'Servi'#231'os'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 537
      Top = 23
      Width = 30
      Height = 16
      Caption = 'Seguro'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 300
      Top = 23
      Width = 39
      Height = 16
      Caption = 'Desconto'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 249
      Top = 23
      Width = 8
      Height = 13
      Caption = '%'
      Transparent = True
    end
    object Label15: TLabel
      Left = 408
      Top = 23
      Width = 40
      Height = 16
      Caption = 'Out Desp'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label19: TLabel
      Left = 407
      Top = 0
      Width = 58
      Height = 16
      Caption = 'ICMS Substit'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object lblvlicms: TLabel
      Left = 126
      Top = 0
      Width = 27
      Height = 16
      Caption = 'ICMS'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label21: TLabel
      Left = 249
      Top = 0
      Width = 72
      Height = 16
      Caption = 'BC ICMS Subst'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblvlbaseipi: TLabel
      Left = 4
      Top = 23
      Width = 31
      Height = 16
      Caption = 'BC IPI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object txtVLICMS: TcxDBLabel
      Left = 156
      Top = -1
      DataBinding.DataField = 'VLICMS'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 85
    end
    object txtVLBASEICMS: TcxDBLabel
      Left = 46
      Top = -1
      DataBinding.DataField = 'VLBASEICMS'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 78
    end
    object edtVLOUTDESPESA: TcxDBCalcEdit
      Left = 449
      Top = 22
      DataBinding.DataField = 'VLOUTDESPESA'
      DataBinding.DataSource = dts
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 84
    end
    object cxDBCalcEdit2: TcxDBCalcEdit
      Left = 341
      Top = 22
      DataBinding.DataField = 'VLDESCONTO'
      DataBinding.DataSource = dts
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 60
    end
    object cxDBCalcEdit3: TcxDBCalcEdit
      Left = 260
      Top = 22
      DataBinding.DataField = 'PRDESCONTO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 38
    end
    object edtVLSEGURO: TcxDBCalcEdit
      Left = 574
      Top = 22
      DataBinding.DataField = 'VLSEGURO'
      DataBinding.DataSource = dts
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 85
    end
    object txtVLBASEICMSSUBTRIB: TcxDBLabel
      Left = 325
      Top = -1
      DataBinding.DataField = 'VLBASEICMSSUBTRIB'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 75
    end
    object txtVLICMSSUBTRIB: TcxDBLabel
      Left = 466
      Top = -1
      DataBinding.DataField = 'VLICMSSUBTRIB'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 69
    end
    object txtVLPRODUTO: TcxDBLabel
      Left = 579
      Top = -1
      DataBinding.DataField = 'VLPRODUTO'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 75
    end
    object txtVLSERVICO: TcxDBLabel
      Left = 701
      Top = -1
      DataBinding.DataField = 'VLSERVICO'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 75
    end
    object txtVLIPI: TcxDBLabel
      Left = 156
      Top = 23
      DataBinding.DataField = 'VLIPI'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 85
    end
    object cxDBLabel6: TcxDBLabel
      Left = 843
      Top = -2
      DataBinding.DataField = 'VLTOTAL'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -41
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 43
      Width = 200
    end
    object txtvlbaseipi: TcxDBLabel
      Left = 46
      Top = 23
      DataBinding.DataField = 'VLBASEIPI'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -12
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 78
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 326
    Top = 3
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
      OnExecute = actImprimirExecute
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
    object actGerarAutPagto: TAction
      Caption = 'Gerar Contas a Pagar'
      Enabled = False
      Hint = 'Gerar Duplicatas'
      ImageIndex = 31
      OnExecute = actGerarAutPagtoExecute
    end
    object actAbrirCliente: TAction
      Hint = 'cliente'
      ImageIndex = 35
      OnExecute = actAbrirClienteExecute
    end
    object actAbrirFornecedor: TAction
      Hint = 'fornecedor'
      ImageIndex = 36
      OnExecute = actAbrirFornecedorExecute
    end
    object actAbrirCondpagto: TAction
      Hint = 'condpagto'
      ImageIndex = 47
      OnExecute = actAbrirCondpagtoExecute
    end
    object actAbrirTransportadora: TAction
      Hint = 'transportadora'
      ImageIndex = 16
      OnExecute = actAbrirTransportadoraExecute
    end
    object actAbrirAutPagto: TAction
      Hint = 'autpagto'
      ImageIndex = 31
      OnExecute = actAbrirAutPagtoExecute
    end
    object actabrirproduto: TAction
      Hint = 'produto'
      ImageIndex = 24
      OnExecute = actabrirprodutoExecute
    end
    object actabrirordcompra: TAction
      Hint = 'ordcompra'
      OnExecute = actabrirordcompraExecute
    end
    object actabrirtpentrada: TAction
      Hint = 'tpentrada'
      ImageIndex = 27
      OnExecute = actabrirtpentradaExecute
    end
    object actimprimirautpagto: TAction
      Caption = 'Contas a Pagar'
      Hint = 'Contas a Pagar'
      OnExecute = actimprimirautpagtoExecute
    end
    object actExibirCampos: TAction
      Caption = 'Exibir Campos (F8)'
      Hint = 'Exibir Campos'
      ShortCut = 119
      OnExecute = actExibirCamposExecute
    end
    object actimprimirentrada: TAction
      Caption = '324 - Compra'
      Hint = 'Compra'
      OnExecute = actimprimirentradaExecute
    end
    object actabrirentrada: TAction
      Hint = 'entrada'
    end
    object actinsercaocdbarra: TAction
      Caption = 'C'#243'd barras'
      Enabled = False
      ImageIndex = 24
      OnExecute = actinsercaocdbarraExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actImportarNFE: TAction
      Caption = 'Importar NFE'
      ImageIndex = 144
      OnExecute = actImportarNFEExecute
    end
    object actimprimirnfe: TAction
      Caption = 'Imprimir'
      ImageIndex = 3
      OnExecute = actimprimirnfeExecute
    end
    object actexportarxml: TAction
      Caption = 'Exportar'
      ImageIndex = 134
      OnExecute = actexportarxmlExecute
    end
    object actparcelamento: TAction
      Caption = 'Parcelamento'
      Enabled = False
      ImageIndex = 144
      OnExecute = actparcelamentoExecute
    end
    object actbaixarautpagto: TAction
      Caption = 'Baixar Contas a Pagar'
      Enabled = False
      ImageIndex = 22
      OnExecute = actbaixarautpagtoExecute
    end
    object actmarkup: TAction
      Caption = 'Markup (F3)'
      ShortCut = 114
      Visible = False
      OnExecute = actmarkupExecute
    end
    object actimportarxml: TAction
      Caption = 'Importar'
      ImageIndex = 144
      OnExecute = actimportarxmlExecute
    end
    object actdevolucao: TAction
      Caption = 'Devolu'#231#227'o'
      Enabled = False
      OnExecute = actdevolucaoExecute
    end
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      ImageIndex = 134
      ShortCut = 16463
      OnExecute = actopcoesExecute
    end
    object actimprimirautorizacaopagto: TAction
      Caption = '500 - Autoriza'#231#227'o de Pagamento'
      OnExecute = actimprimirautorizacaopagtoExecute
    end
    object actmanifestodestinatario: TAction
      Caption = 'Manifesto Destinat'#225'rio'
      Enabled = False
      ImageIndex = 149
      OnExecute = actmanifestodestinatarioExecute
    end
    object actaprovacao: TAction
      Caption = 'Aprovar Pagamento'
      Enabled = False
      ImageIndex = 137
      ShortCut = 8308
      Visible = False
      OnExecute = actaprovacaoExecute
    end
    object actdesaprovacao: TAction
      Caption = 'Desaprovar pagamento'
      Enabled = False
      ImageIndex = 111
      ShortCut = 8309
      Visible = False
      OnExecute = actdesaprovacaoExecute
    end
    object actloteserie: TAction
      Caption = 'Lote S'#233'rie (F6)'
      ShortCut = 117
      OnExecute = actloteserieExecute
    end
  end
  object pum: TPopupMenu
    Left = 298
    Top = 3
    object Compra1: TMenuItem
      Action = actimprimirentrada
    end
    object AutorizaodePagamento1: TMenuItem
      Action = actimprimirautpagto
    end
  end
  object pumfields: TPopupMenu
    Left = 770
    Top = 131
    object ExibirCampos1: TMenuItem
      Action = actExibirCampos
    end
  end
  object bmg1: TdxBarManager
    AlwaysMerge = True
    AutoHideEmptyBars = True
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
    Left = 270
    Top = 3
    DockControlHeights = (
      0
      0
      59
      0)
    object dxbrManager1Bar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'entrada'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 21
      DockingStyle = dsTop
      FloatLeft = 245
      FloatTop = 260
      FloatClientWidth = 62
      FloatClientHeight = 456
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
          ItemName = 'btnimprimir'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
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
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
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
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbrsbtmRegistro'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmg1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'produto'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 78
      FloatTop = 50
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmg1Bar2: TdxBar
      BorderStyle = bbsNone
      Caption = 'xml'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 134
      FloatTop = 115
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton13'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object bmg1Bar3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'autpagto'
      CaptionButtons = <>
      DockControl = bdcduplicata
      DockedDockControl = bdcduplicata
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 481
      FloatTop = 19
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton17'
        end
        item
          Visible = True
          ItemName = 'dxBarButton18'
        end>
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
          ItemName = 'btnimprimir'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
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
    object dxbrsprtr2: TdxBarSeparator
      Category = 0
      Visible = ivAlways
      ShowCaption = False
    end
    object btnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = dxBarPopupMenu1
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
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Op'#231#245'es'
      Category = 0
      Visible = ivAlways
      ImageIndex = 134
      ItemLinks = <>
    end
    object dxBarButton1: TdxBarButton
      Action = actImportarNFE
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actinsercaocdbarra
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = actGerarAutPagto
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = actExibirCampos
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = actimprimirnfe
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton9: TdxBarButton
      Action = actexportarxml
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton10: TdxBarButton
      Action = actimprimirentrada
      Category = 0
    end
    object dxBarButton11: TdxBarButton
      Action = actimprimirautpagto
      Category = 0
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actImportarNFE
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actparcelamento
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actmarkup
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actimportarxml
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton12: TdxBarButton
      Action = actdevolucao
      Category = 0
    end
    object btnopcoes: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
    object dxBarButton6: TdxBarButton
      Action = actimprimirautorizacaopagto
      Category = 0
    end
    object dxBarButton13: TdxBarButton
      Action = actmanifestodestinatario
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton14: TdxBarButton
      Action = actaprovacao
      Category = 0
    end
    object dxBarButton15: TdxBarButton
      Action = actdesaprovacao
      Category = 0
    end
    object dxBarButton16: TdxBarButton
      Action = actloteserie
      Category = 0
    end
    object dxBarButton17: TdxBarButton
      Action = actparcelamento
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton18: TdxBarButton
      Action = actbaixarautpagto
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end>
    UseOwnFont = False
    Left = 512
    Top = 35
  end
  object pumopcoes: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton12'
      end
      item
        Visible = True
        ItemName = 'dxBarButton14'
      end
      item
        Visible = True
        ItemName = 'dxBarButton15'
      end>
    UseOwnFont = False
    Left = 827
    Top = 131
  end
  object nfe: TACBrNFe
    Configuracoes.Geral.SSLLib = libWinCrypt
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsMsXml
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.Geral.IncluirQRCodeXMLNFCe = False
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 60
    Configuracoes.WebServices.IntervaloTentativas = 2000
    Configuracoes.WebServices.QuebradeLinha = '|'
    Left = 468
    Top = 30
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 1056
    Top = 235
    object cdsCDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDTPENTRADA: TIntegerField
      FieldName = 'CDTPENTRADA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTPENTRADAValidate
    end
    object cdsCDCFOP: TIntegerField
      FieldName = 'CDCFOP'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDCFOPValidate
    end
    object cdsCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCONDPAGTO: TIntegerField
      FieldName = 'CDCONDPAGTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDCONDPAGTOValidate
    end
    object cdsCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTPCOBRANCAValidate
    end
    object cdsCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUSTDOCUMENTO: TStringField
      FieldName = 'NUSTDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsNUDOCFISCALICMS: TStringField
      FieldName = 'NUDOCFISCALICMS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUDOCFISCALICMSValidate
      FixedChar = True
      Size = 2
    end
    object cdsCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDTPLIGACAOC500: TIntegerField
      FieldName = 'CDTPLIGACAOC500'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDGRUPOTENSAOC500: TStringField
      FieldName = 'CDGRUPOTENSAOC500'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsCDCLCONSUMOAGUA: TStringField
      FieldName = 'CDCLCONSUMOAGUA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsCDCLCONSUMOENERGIA: TStringField
      FieldName = 'CDCLCONSUMOENERGIA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsNUENTRADA: TIntegerField
      FieldName = 'NUENTRADA'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsNUENTRADAValidate
    end
    object cdsDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsDTEMISSAOValidate
    end
    object cdsVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLLIQUIDO: TFMTBCDField
      FieldName = 'VLLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLLIQSDESC: TFMTBCDField
      FieldName = 'VLLIQSDESC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPRDESCONTO: TFloatField
      FieldName = 'PRDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsVLDESCONTOValidate
      Precision = 15
      Size = 2
    end
    object cdsVLSEGURO: TFMTBCDField
      FieldName = 'VLSEGURO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsVLSEGUROValidate
      Precision = 15
      Size = 2
    end
    object cdsVLOUTDESPESA: TFMTBCDField
      FieldName = 'VLOUTDESPESA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsVLOUTDESPESAValidate
      Precision = 15
      Size = 2
    end
    object cdsVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsVLFRETEValidate
      Precision = 15
      Size = 2
    end
    object cdsVLBASEIPI: TFMTBCDField
      FieldName = 'VLBASEIPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsVLICMSSUBTRIBValidate
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLBASEICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLBASEICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLBASEICMS: TFMTBCDField
      FieldName = 'VLBASEICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLISS: TFMTBCDField
      FieldName = 'VLISS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLISSSDESC: TFMTBCDField
      FieldName = 'VLISSSDESC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLBASEPIS: TFMTBCDField
      FieldName = 'VLBASEPIS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLPIS: TFMTBCDField
      FieldName = 'VLPIS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLBASECOFINS: TFMTBCDField
      FieldName = 'VLBASECOFINS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLCOFINS: TFMTBCDField
      FieldName = 'VLCOFINS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLIRRF: TFMTBCDField
      FieldName = 'VLIRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPSLIQUIDO: TFloatField
      FieldName = 'PSLIQUIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPSBRUTO: TFloatField
      FieldName = 'PSBRUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUPLACA: TStringField
      FieldName = 'NUPLACA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUPLACAValidate
      Size = 10
    end
    object cdsVLPRODUTO: TFMTBCDField
      FieldName = 'VLPRODUTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLSERVICO: TFMTBCDField
      FieldName = 'VLSERVICO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsQTVOLUME: TFloatField
      FieldName = 'QTVOLUME'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMESPECIEVOLUME: TStringField
      FieldName = 'NMESPECIEVOLUME'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsBOEXPORTADO: TStringField
      FieldName = 'BOEXPORTADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNMESPECIE: TStringField
      FieldName = 'NMESPECIE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsVLICMSSFRETENCONTRIB: TFMTBCDField
      FieldName = 'VLICMSSFRETENCONTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsDSHISTORICOValidate
      Size = 100
    end
    object cdsNUSUBSERIE: TStringField
      FieldName = 'NUSUBSERIE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsCDPROTOCOLO: TIntegerField
      FieldName = 'CDPROTOCOLO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPRLUCRO: TFloatField
      FieldName = 'PRLUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBOOPTANTESIMPLES: TStringField
      FieldName = 'BOOPTANTESIMPLES'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNUPLCONTA: TStringField
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUPLCONTAValidate
      Size = 100
    end
    object cdsDSXML: TBlobField
      FieldName = 'DSXML'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsBOPAGTOVISTA: TStringField
      FieldName = 'BOPAGTOVISTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsVLPISSUBTRIB: TFMTBCDField
      FieldName = 'VLPISSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLBASEPISSUBTRIB: TFMTBCDField
      FieldName = 'VLBASEPISSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsALPISSUBTRIB: TFloatField
      FieldName = 'ALPISSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLCOFINSSUBTRIB: TFMTBCDField
      FieldName = 'VLCOFINSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLBASECOFINSSUBTRIB: TFMTBCDField
      FieldName = 'VLBASECOFINSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsALCOFINSSUBTRIB: TFloatField
      FieldName = 'ALCOFINSSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUCHAVENFE: TStringField
      FieldName = 'NUCHAVENFE'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object cdsBORETENCAOPIS: TStringField
      FieldName = 'BORETENCAOPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBORETENCAOCOFINS: TStringField
      FieldName = 'BORETENCAOCOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsVLINSS: TFMTBCDField
      FieldName = 'VLINSS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLCONTRIBSOCIAL: TFMTBCDField
      FieldName = 'VLCONTRIBSOCIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsBOIPIBCICMS: TStringField
      FieldName = 'BOIPIBCICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsVLBASEFRETESUB: TFMTBCDField
      FieldName = 'VLBASEFRETESUB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsALFRETESUB: TFloatField
      FieldName = 'ALFRETESUB'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsALFRETESUBValidate
    end
    object cdsVLFRETESUB: TFMTBCDField
      FieldName = 'VLFRETESUB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsBOCREDITOSTTRANSPORTE: TStringField
      FieldName = 'BOCREDITOSTTRANSPORTE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsBOCREDITOSTTRANSPORTEValidate
      FixedChar = True
      Size = 1
    end
    object cdsBOICMSSUBTRIBNTOTAL: TStringField
      FieldName = 'BOICMSSUBTRIBNTOTAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNUSERIE: TStringField
      FieldName = 'NUSERIE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsNUCHAVENFSE: TStringField
      FieldName = 'NUCHAVENFSE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsVLCOFINSRET: TFMTBCDField
      FieldName = 'VLCOFINSRET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLPISRET: TFMTBCDField
      FieldName = 'VLPISRET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsCDENTRADACT: TIntegerField
      FieldName = 'CDENTRADACT'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUENTRADACT: TIntegerField
      FieldName = 'NUENTRADACT'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUENTRADACTValidate
    end
    object cdsBOFRETEITEM: TStringField
      FieldName = 'BOFRETEITEM'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsBOFRETEITEMValidate
      FixedChar = True
      Size = 1
    end
    object cdsNSEQEVENTO: TIntegerField
      FieldName = 'NSEQEVENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBOICMSSTITEM: TStringField
      FieldName = 'BOICMSSTITEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBOARREDONDAR: TStringField
      FieldName = 'BOARREDONDAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBODESCONTOITEM: TStringField
      FieldName = 'BODESCONTOITEM'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsBODESCONTOITEMValidate
      FixedChar = True
      Size = 1
    end
    object cdsBONARREDONDARCOFINS: TStringField
      FieldName = 'BONARREDONDARCOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBONARREDONDARPIS: TStringField
      FieldName = 'BONARREDONDARPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsDTEMISSAOCT: TDateField
      FieldName = 'DTEMISSAOCT'
      ProviderFlags = []
    end
    object cdsDTENTRADACT: TDateField
      FieldName = 'DTENTRADACT'
      ProviderFlags = []
    end
    object cdsVLTOTALCT: TFMTBCDField
      FieldName = 'VLTOTALCT'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsNMFORNECEDORCT: TStringField
      FieldName = 'NMFORNECEDORCT'
      ProviderFlags = []
      Size = 100
    end
    object cdssdsentradaefd0450: TDataSetField
      FieldName = 'sdsentradaefd0450'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsautpagto: TDataSetField
      FieldName = 'sdsautpagto'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsitentrada: TDataSetField
      FieldName = 'sdsitentrada'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMPLCONTA: TStringField
      FieldName = 'NMPLCONTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsRZSOCIALF: TStringField
      FieldName = 'RZSOCIALF'
      ProviderFlags = []
      Size = 100
    end
    object cdsRZSOCIALC: TStringField
      FieldName = 'RZSOCIALC'
      ProviderFlags = []
      Size = 100
    end
    object cdsNMCFOP: TStringField
      FieldName = 'NMCFOP'
      ProviderFlags = []
      Size = 100
    end
    object cdsNMTRANSPORTADORA: TStringField
      FieldName = 'NMTRANSPORTADORA'
      ProviderFlags = []
      Size = 100
    end
    object cdsNMCONDPAGTO: TStringField
      FieldName = 'NMCONDPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUCNTCUSTOValidate
      Size = 100
    end
    object cdsNMCNTCUSTO: TStringField
      FieldName = 'NMCNTCUSTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsCDTPFRETE: TStringField
      FieldName = 'CDTPFRETE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTPFRETEValidate
      Size = 1
    end
    object cdsVLRETENCAO: TFMTBCDField
      FieldName = 'VLRETENCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDFORNECEDORValidate
    end
    object cdsCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDCLIENTEValidate
    end
    object cdsCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTRANSPORTADORAValidate
    end
    object cdsBORATEIOCNTCUSTO: TStringField
      FieldName = 'BORATEIOCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsBORATEIOPLCONTA: TStringField
      FieldName = 'BORATEIOPLCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object cdsitentrada: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitentrada
    Params = <>
    BeforePost = cdsitentradaBeforePost
    AfterPost = cdsitentradaAfterPost
    AfterScroll = cdsitentradaAfterScroll
    OnNewRecord = cdsitentradaNewRecord
    Left = 1056
    Top = 263
    object cdsitentradaCDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitentradaCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitentradaCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitentradaCDCFOP: TIntegerField
      FieldName = 'CDCFOP'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitentradaCDCFOPValidate
    end
    object cdsitentradaCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitentradaCDDIGITADOValidate
      Size = 30
    end
    object cdsitentradaDSITENTRADA: TStringField
      FieldName = 'DSITENTRADA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsitentradaBOALTERACUSTOMEDIO: TStringField
      FieldName = 'BOALTERACUSTOMEDIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsitentradaQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitentradaQTITEMValidate
    end
    object cdsitentradaVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 5
    end
    object cdsitentradaVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaPRDESCONTO: TFloatField
      FieldName = 'PRDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitentradaVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaVLBASEICMS: TFMTBCDField
      FieldName = 'VLBASEICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitentradaALICMSValidate
    end
    object cdsitentradaVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaALICMSRED: TFloatField
      FieldName = 'ALICMSRED'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitentradaVLBASEICMSRED: TFMTBCDField
      FieldName = 'VLBASEICMSRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaVLBASEIPI: TFMTBCDField
      FieldName = 'VLBASEIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaALIPI: TFloatField
      FieldName = 'ALIPI'
      ProviderFlags = [pfInUpdate]
      OnValidate = TornarNuloAliquotaZerada
    end
    object cdsitentradaVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaVLSEGURO: TFMTBCDField
      FieldName = 'VLSEGURO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaPSLIQUIDO: TFloatField
      FieldName = 'PSLIQUIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitentradaPSBRUTO: TFloatField
      FieldName = 'PSBRUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitentradaBORECUPERAICMS: TStringField
      FieldName = 'BORECUPERAICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsitentradaBORECUPERAIPI: TStringField
      FieldName = 'BORECUPERAIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsitentradaBORECUPERAPIS: TStringField
      FieldName = 'BORECUPERAPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsitentradaVLBASEPIS: TFMTBCDField
      FieldName = 'VLBASEPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaALPIS: TFloatField
      FieldName = 'ALPIS'
      ProviderFlags = [pfInUpdate]
      OnValidate = TornarNuloAliquotaZerada
    end
    object cdsitentradaVLPIS: TFMTBCDField
      FieldName = 'VLPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object cdsitentradaVLBASECOFINS: TFMTBCDField
      FieldName = 'VLBASECOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaALCOFINS: TFloatField
      FieldName = 'ALCOFINS'
      ProviderFlags = [pfInUpdate]
      OnValidate = TornarNuloAliquotaZerada
    end
    object cdsitentradaVLCOFINS: TFMTBCDField
      FieldName = 'VLCOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object cdsitentradaPRCUSTO: TFMTBCDField
      FieldName = 'PRCUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaPRVIGOR: TFMTBCDField
      FieldName = 'PRVIGOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaVLOUTDESPESA: TFMTBCDField
      FieldName = 'VLOUTDESPESA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaVLCUSTOMEDIO: TFMTBCDField
      FieldName = 'VLCUSTOMEDIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object cdsitentradaVLCUSTO: TFMTBCDField
      FieldName = 'VLCUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object cdsitentradaBORECUPERACOFINS: TStringField
      FieldName = 'BORECUPERACOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsitentradaDTFABRICACAO: TDateField
      FieldName = 'DTFABRICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitentradaDTVALIDADE: TDateField
      FieldName = 'DTVALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitentradaVLSALDOVALOR: TFMTBCDField
      FieldName = 'VLSALDOVALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaPRLUCRO: TFloatField
      FieldName = 'PRLUCRO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitentradaPRLUCROValidate
    end
    object cdsitentradaVLICMSRED: TFMTBCDField
      FieldName = 'VLICMSRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaALICMSSUBTRIB: TFloatField
      FieldName = 'ALICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitentradaVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaVLBASEICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLBASEICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaVLVENDA: TFMTBCDField
      FieldName = 'VLVENDA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitentradaVLVENDAValidate
      Precision = 15
    end
    object cdsitentradaPRLUCROATACADO: TFloatField
      FieldName = 'PRLUCROATACADO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitentradaPRLUCROATACADOValidate
    end
    object cdsitentradaPRLUCROESPECIAL: TFloatField
      FieldName = 'PRLUCROESPECIAL'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitentradaPRLUCROESPECIALValidate
    end
    object cdsitentradaVLATACADO: TFMTBCDField
      FieldName = 'VLATACADO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitentradaVLATACADOValidate
      Precision = 15
    end
    object cdsitentradaVLESPECIAL: TFMTBCDField
      FieldName = 'VLESPECIAL'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitentradaVLESPECIALValidate
      Precision = 15
    end
    object cdsitentradaCDMODBCICMS: TIntegerField
      FieldName = 'CDMODBCICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitentradaCDMODBCSTICMS: TIntegerField
      FieldName = 'CDMODBCSTICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitentradaPRMRGVLADICIONADOICMSSUBTRIB: TFloatField
      FieldName = 'PRMRGVLADICIONADOICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitentradaPRREDBCICMS: TFloatField
      FieldName = 'PRREDBCICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitentradaNUSTICMS: TStringField
      FieldName = 'NUSTICMS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitentradaNUSTICMSValidate
      FixedChar = True
      Size = 3
    end
    object cdsitentradaNUSTIPI: TStringField
      FieldName = 'NUSTIPI'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitentradaNUSTIPIValidate
      FixedChar = True
      Size = 2
    end
    object cdsitentradaNUSTCOFINS: TStringField
      FieldName = 'NUSTCOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsitentradaNUSTPIS: TStringField
      FieldName = 'NUSTPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsitentradaBORECUPERAAJUSTEICMS: TStringField
      FieldName = 'BORECUPERAAJUSTEICMS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitentradaBORECUPERAAJUSTEICMSValidate
      FixedChar = True
      Size = 1
    end
    object cdsitentradaBOICMSAJUSTE: TStringField
      FieldName = 'BOICMSAJUSTE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitentradaBOICMSAJUSTEValidate
      FixedChar = True
      Size = 1
    end
    object cdsitentradaBOBASEIPIAJUSTE: TStringField
      FieldName = 'BOBASEIPIAJUSTE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitentradaBOBASEIPIAJUSTEValidate
      FixedChar = True
      Size = 1
    end
    object cdsitentradaBOAJUSTETOTAL: TStringField
      FieldName = 'BOAJUSTETOTAL'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitentradaBOAJUSTETOTALValidate
      FixedChar = True
      Size = 1
    end
    object cdsitentradaBOBASEICMSAJUSTE: TStringField
      FieldName = 'BOBASEICMSAJUSTE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitentradaBOBASEICMSAJUSTEValidate
      FixedChar = True
      Size = 1
    end
    object cdsitentradaBONDIFERENCIALALIQUOTA: TStringField
      FieldName = 'BONDIFERENCIALALIQUOTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsitentradaVLICMSDIFALIQUOTA: TFMTBCDField
      FieldName = 'VLICMSDIFALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaBODIFERENCIALALIQUOTA: TStringField
      FieldName = 'BODIFERENCIALALIQUOTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsitentradaCDITENTRADA: TIntegerField
      FieldName = 'CDITENTRADA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitentradaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitentradaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitentradaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitentradaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitentradaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitentradaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitentradaBORECUPERAIPIESPECIAL: TStringField
      FieldName = 'BORECUPERAIPIESPECIAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsitentradaCDITORDCOMPRA: TIntegerField
      FieldName = 'CDITORDCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitentradaCDORDCOMPRA: TIntegerField
      FieldName = 'CDORDCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitentradaBOBASEPISAJUSTE: TStringField
      FieldName = 'BOBASEPISAJUSTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsitentradaBOBASECOFINSAJUSTE: TStringField
      FieldName = 'BOBASECOFINSAJUSTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsitentradaVLCUSTOBRUTO: TFMTBCDField
      FieldName = 'VLCUSTOBRUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object cdsitentradaVLCUSTOLIQUIDO: TFMTBCDField
      FieldName = 'VLCUSTOLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object cdsitentradaPRCOMISSAO: TFloatField
      FieldName = 'PRCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitentradaALSUPERSIMPLES: TFloatField
      FieldName = 'ALSUPERSIMPLES'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitentradaVLSUPERSIMPLES: TFMTBCDField
      FieldName = 'VLSUPERSIMPLES'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaVLCUSTOTOTAL: TFMTBCDField
      FieldName = 'VLCUSTOTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaVLPRECOVENDA: TFMTBCDField
      FieldName = 'VLPRECOVENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaVLPRECOANTERIOR: TFMTBCDField
      FieldName = 'VLPRECOANTERIOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaPRFRETE: TFloatField
      FieldName = 'PRFRETE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitentradaVLIPIITEM: TFMTBCDField
      FieldName = 'VLIPIITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaVLFRETEITEM: TFMTBCDField
      FieldName = 'VLFRETEITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaVLICMSSUBTRIBITEM: TFMTBCDField
      FieldName = 'VLICMSSUBTRIBITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaVLDESCONTOITEM: TFMTBCDField
      FieldName = 'VLDESCONTOITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaVLOUTDESPESAITEM: TFMTBCDField
      FieldName = 'VLOUTDESPESAITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaVLICMSDIFALIQUOTAITEM: TFMTBCDField
      FieldName = 'VLICMSDIFALIQUOTAITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaCDBCCALCULOCREDITO: TStringField
      FieldName = 'CDBCCALCULOCREDITO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsitentradaPRDESPESAITEM: TFloatField
      FieldName = 'PRDESPESAITEM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitentradaVLDESPESAITEM: TFMTBCDField
      FieldName = 'VLDESPESAITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaVLLUCRO: TFMTBCDField
      FieldName = 'VLLUCRO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaDSINFADICIONAL: TBlobField
      FieldName = 'DSINFADICIONAL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsitentradaCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitentradaNUPLCONTA: TStringField
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitentradaNUPLCONTAValidate
      Size = 100
    end
    object cdsitentradaVLPRECOPRAZO: TFMTBCDField
      FieldName = 'VLPRECOPRAZO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaPRLUCROPRAZO: TFloatField
      FieldName = 'PRLUCROPRAZO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitentradaVLPRECOPRAZOANTERIOR: TFMTBCDField
      FieldName = 'VLPRECOPRAZOANTERIOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaVLLUCROPRAZO: TFMTBCDField
      FieldName = 'VLLUCROPRAZO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitentradaBOAJUSTEIPI: TStringField
      FieldName = 'BOAJUSTEIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsitentradaNMPLCONTA: TStringField
      FieldName = 'NMPLCONTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsitentradaNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdsitentradaNUCLFISCAL: TStringField
      FieldName = 'NUCLFISCAL'
      ProviderFlags = []
    end
    object cdsitentradaNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object cdsitentradaBOSERVICO: TStringField
      FieldName = 'BOSERVICO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsitentradaBOLOTEIMEI: TStringField
      FieldName = 'BOLOTEIMEI'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsitentradasdsitentradalote: TDataSetField
      FieldName = 'sdsitentradalote'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitentradaCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitentradaCDORDPRODUCAOValidate
    end
    object cdsitentradaNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitentradaNUCNTCUSTOValidate
      Size = 100
    end
    object cdsitentradaNMCNTCUSTO: TStringField
      FieldName = 'NMCNTCUSTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsitentradaVLRETENCAO: TFMTBCDField
      FieldName = 'VLRETENCAO'
      ProviderFlags = [pfInUpdate]
      Size = 0
    end
    object cdsitentradaVLBASEICMSNTRIBUTAVEL: TFMTBCDField
      FieldName = 'VLBASEICMSNTRIBUTAVEL'
      ProviderFlags = [pfInUpdate]
      Precision = 32
      Size = 0
    end
    object cdsitentradaVLBASEICMSORIGINAL: TFMTBCDField
      FieldName = 'VLBASEICMSORIGINAL'
      ProviderFlags = [pfInUpdate]
      Precision = 32
      Size = 0
    end
    object cdsitentradaVLTOTALCOMPLETO: TFMTBCDField
      FieldName = 'VLTOTALCOMPLETO'
      ProviderFlags = [pfInUpdate]
      Precision = 32
      Size = 0
    end
    object cdsitentradaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsautpagto: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsautpagto
    Params = <>
    AfterOpen = cdsautpagtoAfterOpen
    BeforePost = cdsautpagtoBeforePost
    AfterScroll = cdsautpagtoAfterScroll
    OnNewRecord = cdsautpagtoNewRecord
    Left = 1056
    Top = 291
    object cdsautpagtoCDAUTPAGTO: TIntegerField
      FieldName = 'CDAUTPAGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsautpagtoCDSTAUTPAGTO: TIntegerField
      FieldName = 'CDSTAUTPAGTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsautpagtoCDTPPAGAMENTO: TIntegerField
      FieldName = 'CDTPPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsautpagtoCDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsautpagtoCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsautpagtoCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsautpagtoCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsautpagtoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsautpagtoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsautpagtoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsautpagtoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsautpagtoCDUSUARIOBAIXA: TIntegerField
      FieldName = 'CDUSUARIOBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsautpagtoCDCONTA: TIntegerField
      FieldName = 'CDCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsautpagtoNUAUTPAGTO: TStringField
      FieldName = 'NUAUTPAGTO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsautpagtoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsautpagtoDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsautpagtoDTVENCIMENTOValidate
    end
    object cdsautpagtoDTPRORROGACAO: TDateField
      FieldName = 'DTPRORROGACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsautpagtoVLAUTPAGTO: TFMTBCDField
      FieldName = 'VLAUTPAGTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsautpagtoVLAUTPAGTOValidate
      Precision = 15
      Size = 2
    end
    object cdsautpagtoPRMORADIARIA: TFloatField
      FieldName = 'PRMORADIARIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsautpagtoDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cdsautpagtoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsautpagtoVLBAIXA: TFMTBCDField
      FieldName = 'VLBAIXA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsautpagtoVLPREVISTO: TFMTBCDField
      FieldName = 'VLPREVISTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsautpagtoVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsautpagtoPRMULTA: TFloatField
      FieldName = 'PRMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsautpagtoVLMULTA: TFMTBCDField
      FieldName = 'VLMULTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsautpagtoDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsautpagtoVLDEVOLUCAO: TFMTBCDField
      FieldName = 'VLDEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsautpagtoVLABATIMENTO: TFMTBCDField
      FieldName = 'VLABATIMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsautpagtoVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsautpagtoVLDEDUCAO: TFMTBCDField
      FieldName = 'VLDEDUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsautpagtoVLACRESCIMO: TFMTBCDField
      FieldName = 'VLACRESCIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsautpagtoVLJUROS: TFMTBCDField
      FieldName = 'VLJUROS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsautpagtoVLRECEBIDO: TFMTBCDField
      FieldName = 'VLRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsautpagtoBOENVIADO: TStringField
      FieldName = 'BOENVIADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsautpagtoBOIMPRESSA: TStringField
      FieldName = 'BOIMPRESSA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsautpagtoNUPLCONTA: TStringField
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsautpagtoNUPLCONTAValidate
      Size = 100
    end
    object cdsautpagtoDSPARCELA: TStringField
      FieldName = 'DSPARCELA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsautpagtoDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsautpagtoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsautpagtoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsautpagtoCDUSUARIOAPROVACAO: TIntegerField
      FieldName = 'CDUSUARIOAPROVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsautpagtoTSAPROVACAO: TSQLTimeStampField
      FieldName = 'TSAPROVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsautpagtoCDCOMPUTADORAPROVACAO: TIntegerField
      FieldName = 'CDCOMPUTADORAPROVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsautpagtoNMUSUARIO: TStringField
      FieldName = 'NMUSUARIO'
      ProviderFlags = []
      Size = 40
    end
    object cdsautpagtoNMPLCONTA: TStringField
      FieldName = 'NMPLCONTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsautpagtoNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsautpagtoNUCNTCUSTOValidate
      Size = 100
    end
    object cdsautpagtoNMCNTCUSTO: TStringField
      FieldName = 'NMCNTCUSTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsautpagtoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsautpagtoCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsautpagtoNUCOR: TIntegerField
      FieldName = 'NUCOR'
      ProviderFlags = []
    end
  end
  object cdsitentradalote: TClientDataSet
    Aggregates = <>
    DataSetField = cdsitentradasdsitentradalote
    Params = <>
    AfterInsert = cdsitentradaloteAfterInsert
    BeforePost = cdsitentradaloteBeforePost
    AfterDelete = cdsitentradaloteAfterDelete
    OnNewRecord = cdsitentradaloteNewRecord
    Left = 1055
    Top = 319
    object cdsitentradaloteCDITENTRADALOTE: TIntegerField
      FieldName = 'CDITENTRADALOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitentradaloteCDITENTRADA: TIntegerField
      FieldName = 'CDITENTRADA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitentradaloteCDITLOTE: TIntegerField
      FieldName = 'CDITLOTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitentradaloteCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitentradaloteCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitentradaloteCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitentradaloteCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitentradaloteTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitentradaloteTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitentradaloteNUIMEI: TStringField
      FieldName = 'NUIMEI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsitentradaloteCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsentradaefd0450: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsentradaefd0450
    Params = <>
    BeforePost = cdsentradaefd0450BeforePost
    OnNewRecord = cdsentradaefd0450NewRecord
    Left = 1055
    Top = 347
    object cdsentradaefd0450CDENTRADAEFD0450: TIntegerField
      FieldName = 'CDENTRADAEFD0450'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsentradaefd0450CDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsentradaefd0450CDEFD0450: TIntegerField
      FieldName = 'CDEFD0450'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsentradaefd0450CDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsentradaefd0450CDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsentradaefd0450CDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsentradaefd0450CDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsentradaefd0450DSCOMPLEMENTO: TStringField
      FieldName = 'DSCOMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cdsentradaefd0450TSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsentradaefd0450TSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsentradaefd0450sdsentradac111: TDataSetField
      FieldName = 'sdsentradac111'
    end
    object cdsentradaefd0450CDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsentradac111: TClientDataSet
    Aggregates = <>
    DataSetField = cdsentradaefd0450sdsentradac111
    Params = <>
    BeforePost = cdsentradac111BeforePost
    OnNewRecord = cdsentradac111NewRecord
    Left = 1056
    Top = 375
    object cdsentradac111CDENTRADAC111: TIntegerField
      FieldName = 'CDENTRADAC111'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsentradac111CDTPC111: TIntegerField
      FieldName = 'CDTPC111'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsentradac111CDENTRADAEFD0450: TIntegerField
      FieldName = 'CDENTRADAEFD0450'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsentradac111CDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsentradac111CDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsentradac111CDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsentradac111CDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsentradac111NUPROCESSO: TStringField
      FieldName = 'NUPROCESSO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsentradac111TSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsentradac111TSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsentradac111CDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 1085
    Top = 235
  end
  object dtsitentrada: TDataSource
    DataSet = cdsitentrada
    Left = 1085
    Top = 263
  end
  object dtsAutpagto: TDataSource
    DataSet = cdsautpagto
    OnStateChange = dtsAutpagtoStateChange
    Left = 1085
    Top = 291
  end
  object dtsitentradalote: TDataSource
    DataSet = cdsitentradalote
    Left = 1085
    Top = 319
  end
  object dtsentradaefd0450: TDataSource
    DataSet = cdsentradaefd0450
    Left = 1085
    Top = 347
  end
  object dtsentradac111: TDataSource
    DataSet = cdsentradac111
    Left = 1085
    Top = 375
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 1114
    Top = 235
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT ENTRADA.*'#13#10',CT.DTEMISSAO DTEMISSAOCT'#13#10',CT.DTSAIDA DTENTRA' +
      'DACT'#13#10',CT.VLTOTAL VLTOTALCT'#13#10',FCT.NMFORNECEDOR NMFORNECEDORCT'#13#10',' +
      'PLCONTA.NMPLCONTA'#13#10',F.RZSOCIAL RZSOCIALF'#13#10',C.RZSOCIAL RZSOCIALC'#13 +
      #10',F.NMFORNECEDOR'#13#10',C.NMCLIENTE'#13#10',CP.NMCONDPAGTO'#13#10',CFOP.NMCFOP'#13#10',' +
      'TRANSPORTADORA.NMTRANSPORTADORA'#13#10',CNTCUSTO.NMCNTCUSTO'#13#10'FROM ENTR' +
      'ADA'#13#10'LEFT JOIN ENTRADA CT ON CT.CDENTRADA=ENTRADA.CDENTRADACT AN' +
      'D CT.CDEMPRESA=ENTRADA.CDEMPRESA'#13#10'LEFT JOIN FORNECEDOR FCT ON FC' +
      'T.CDFORNECEDOR=CT.CDFORNECEDOR AND FCT.CDEMPRESA=CT.CDEMPRESA'#13#10'L' +
      'EFT JOIN PLCONTA ON PLCONTA.CDEMPRESA=ENTRADA.CDEMPRESA AND PLCO' +
      'NTA.CDPLCONTA=ENTRADA.CDPLCONTA'#13#10'LEFT JOIN CLIENTE C ON C.CDCLIE' +
      'NTE=ENTRADA.CDCLIENTE AND C.CDEMPRESA=ENTRADA.CDEMPRESA'#13#10'LEFT JO' +
      'IN FORNECEDOR F ON F.CDFORNECEDOR=ENTRADA.CDFORNECEDOR AND F.CDE' +
      'MPRESA=ENTRADA.CDEMPRESA'#13#10'LEFT JOIN CONDPAGTO CP ON CP.CDEMPRESA' +
      '=ENTRADA.CDEMPRESA AND CP.CDCONDPAGTO=ENTRADA.CDCONDPAGTO'#13#10'LEFT ' +
      'JOIN CFOP ON CFOP.CDCFOP=ENTRADA.CDCFOP'#13#10'LEFT JOIN TRANSPORTADOR' +
      'A ON TRANSPORTADORA.CDEMPRESA=ENTRADA.CDEMPRESA AND TRANSPORTADO' +
      'RA.CDTRANSPORTADORA=ENTRADA.CDTRANSPORTADORA'#13#10'LEFT JOIN CNTCUSTO' +
      ' ON CNTCUSTO.CDEMPRESA = ENTRADA.CDEMPRESA AND CNTCUSTO.CDCNTCUS' +
      'TO=ENTRADA.CDCNTCUSTO'#13#10'WHERE ENTRADA.CDEMPRESA=:CDEMPRESA AND EN' +
      'TRADA.CDENTRADA=:CDENTRADA'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDENTRADA'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 1027
    Top = 235
    object sdsCDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDTPENTRADA: TIntegerField
      FieldName = 'CDTPENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCFOP: TIntegerField
      FieldName = 'CDCFOP'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCONDPAGTO: TIntegerField
      FieldName = 'CDCONDPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUSTDOCUMENTO: TStringField
      FieldName = 'NUSTDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsNUDOCFISCALICMS: TStringField
      FieldName = 'NUDOCFISCALICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDTPLIGACAOC500: TIntegerField
      FieldName = 'CDTPLIGACAOC500'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDGRUPOTENSAOC500: TStringField
      FieldName = 'CDGRUPOTENSAOC500'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsCDCLCONSUMOAGUA: TStringField
      FieldName = 'CDCLCONSUMOAGUA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsCDCLCONSUMOENERGIA: TStringField
      FieldName = 'CDCLCONSUMOENERGIA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsNUENTRADA: TIntegerField
      FieldName = 'NUENTRADA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLLIQUIDO: TFMTBCDField
      FieldName = 'VLLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLLIQSDESC: TFMTBCDField
      FieldName = 'VLLIQSDESC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsPRDESCONTO: TFloatField
      FieldName = 'PRDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLSEGURO: TFMTBCDField
      FieldName = 'VLSEGURO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLOUTDESPESA: TFMTBCDField
      FieldName = 'VLOUTDESPESA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLBASEIPI: TFMTBCDField
      FieldName = 'VLBASEIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLBASEICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLBASEICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLBASEICMS: TFMTBCDField
      FieldName = 'VLBASEICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLISS: TFMTBCDField
      FieldName = 'VLISS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLISSSDESC: TFMTBCDField
      FieldName = 'VLISSSDESC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLBASEPIS: TFMTBCDField
      FieldName = 'VLBASEPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLPIS: TFMTBCDField
      FieldName = 'VLPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLBASECOFINS: TFMTBCDField
      FieldName = 'VLBASECOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLCOFINS: TFMTBCDField
      FieldName = 'VLCOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLIRRF: TFMTBCDField
      FieldName = 'VLIRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsPSLIQUIDO: TFloatField
      FieldName = 'PSLIQUIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPSBRUTO: TFloatField
      FieldName = 'PSBRUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUPLACA: TStringField
      FieldName = 'NUPLACA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsVLPRODUTO: TFMTBCDField
      FieldName = 'VLPRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLSERVICO: TFMTBCDField
      FieldName = 'VLSERVICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsQTVOLUME: TFloatField
      FieldName = 'QTVOLUME'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMESPECIEVOLUME: TStringField
      FieldName = 'NMESPECIEVOLUME'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsBOEXPORTADO: TStringField
      FieldName = 'BOEXPORTADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsNMESPECIE: TStringField
      FieldName = 'NMESPECIE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsVLICMSSFRETENCONTRIB: TFMTBCDField
      FieldName = 'VLICMSSFRETENCONTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNUSUBSERIE: TStringField
      FieldName = 'NUSUBSERIE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsCDPROTOCOLO: TIntegerField
      FieldName = 'CDPROTOCOLO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPRLUCRO: TFloatField
      FieldName = 'PRLUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBOOPTANTESIMPLES: TStringField
      FieldName = 'BOOPTANTESIMPLES'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsNUPLCONTA: TStringField
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsDSXML: TBlobField
      FieldName = 'DSXML'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsBOPAGTOVISTA: TStringField
      FieldName = 'BOPAGTOVISTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsVLPISSUBTRIB: TFMTBCDField
      FieldName = 'VLPISSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLBASEPISSUBTRIB: TFMTBCDField
      FieldName = 'VLBASEPISSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsALPISSUBTRIB: TFloatField
      FieldName = 'ALPISSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLCOFINSSUBTRIB: TFMTBCDField
      FieldName = 'VLCOFINSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLBASECOFINSSUBTRIB: TFMTBCDField
      FieldName = 'VLBASECOFINSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsALCOFINSSUBTRIB: TFloatField
      FieldName = 'ALCOFINSSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUCHAVENFE: TStringField
      FieldName = 'NUCHAVENFE'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object sdsBORETENCAOPIS: TStringField
      FieldName = 'BORETENCAOPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBORETENCAOCOFINS: TStringField
      FieldName = 'BORETENCAOCOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsVLINSS: TFMTBCDField
      FieldName = 'VLINSS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLCONTRIBSOCIAL: TFMTBCDField
      FieldName = 'VLCONTRIBSOCIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsBOIPIBCICMS: TStringField
      FieldName = 'BOIPIBCICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsVLBASEFRETESUB: TFMTBCDField
      FieldName = 'VLBASEFRETESUB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsALFRETESUB: TFloatField
      FieldName = 'ALFRETESUB'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLFRETESUB: TFMTBCDField
      FieldName = 'VLFRETESUB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsBOCREDITOSTTRANSPORTE: TStringField
      FieldName = 'BOCREDITOSTTRANSPORTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBOICMSSUBTRIBNTOTAL: TStringField
      FieldName = 'BOICMSSUBTRIBNTOTAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsNUSERIE: TStringField
      FieldName = 'NUSERIE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object sdsTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsNUCHAVENFSE: TStringField
      FieldName = 'NUCHAVENFSE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sdsVLCOFINSRET: TFMTBCDField
      FieldName = 'VLCOFINSRET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLPISRET: TFMTBCDField
      FieldName = 'VLPISRET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsCDENTRADACT: TIntegerField
      FieldName = 'CDENTRADACT'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUENTRADACT: TIntegerField
      FieldName = 'NUENTRADACT'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBOFRETEITEM: TStringField
      FieldName = 'BOFRETEITEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsNSEQEVENTO: TIntegerField
      FieldName = 'NSEQEVENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBOICMSSTITEM: TStringField
      FieldName = 'BOICMSSTITEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBOARREDONDAR: TStringField
      FieldName = 'BOARREDONDAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBODESCONTOITEM: TStringField
      FieldName = 'BODESCONTOITEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBONARREDONDARCOFINS: TStringField
      FieldName = 'BONARREDONDARCOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBONARREDONDARPIS: TStringField
      FieldName = 'BONARREDONDARPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsDTEMISSAOCT: TDateField
      FieldName = 'DTEMISSAOCT'
      ProviderFlags = []
    end
    object sdsDTENTRADACT: TDateField
      FieldName = 'DTENTRADACT'
      ProviderFlags = []
    end
    object sdsVLTOTALCT: TFMTBCDField
      FieldName = 'VLTOTALCT'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsNMFORNECEDORCT: TStringField
      FieldName = 'NMFORNECEDORCT'
      ProviderFlags = []
      Size = 100
    end
    object sdsNMPLCONTA: TStringField
      FieldName = 'NMPLCONTA'
      ProviderFlags = []
      Size = 100
    end
    object sdsRZSOCIALC: TStringField
      FieldName = 'RZSOCIALC'
      ProviderFlags = []
      Size = 100
    end
    object sdsRZSOCIALF: TStringField
      FieldName = 'RZSOCIALF'
      ProviderFlags = []
      Size = 100
    end
    object sdsNMCFOP: TStringField
      FieldName = 'NMCFOP'
      ProviderFlags = []
      Size = 100
    end
    object sdsNMTRANSPORTADORA: TStringField
      FieldName = 'NMTRANSPORTADORA'
      ProviderFlags = []
      Size = 100
    end
    object sdsNMCONDPAGTO: TStringField
      FieldName = 'NMCONDPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object sdsNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNMCNTCUSTO: TStringField
      FieldName = 'NMCNTCUSTO'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDTPFRETE: TStringField
      FieldName = 'CDTPFRETE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsVLRETENCAO: TFMTBCDField
      FieldName = 'VLRETENCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object sdsNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBORATEIOCNTCUSTO: TStringField
      FieldName = 'BORATEIOCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsBORATEIOPLCONTA: TStringField
      FieldName = 'BORATEIOPLCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object sdsitentrada: TSQLDataSet
    CommandText = 
      'SELECT ITENTRADA.*'#13#10',PLCONTA.NMPLCONTA'#13#10',PRODUTO.NMPRODUTO'#13#10',PRO' +
      'DUTO.NUCLFISCAL'#13#10',UNIDADE.NMUNIDADE'#13#10',TPPRODUTO.BOSERVICO'#13#10',TPPR' +
      'ODUTO.BOLOTEIMEI'#13#10',CNTCUSTO.NMCNTCUSTO'#13#10'FROM ITENTRADA'#13#10'LEFT JOI' +
      'N PLCONTA ON PLCONTA.CDEMPRESA=ITENTRADA.CDEMPRESA AND PLCONTA.C' +
      'DPLCONTA=ITENTRADA.CDPLCONTA'#13#10'LEFT JOIN PRODUTO ON PRODUTO.CDEMP' +
      'RESA=ITENTRADA.CDEMPRESA AND PRODUTO.CDPRODUTO=ITENTRADA.CDPRODU' +
      'TO'#13#10'LEFT JOIN UNIDADE ON UNIDADE.CDEMPRESA=PRODUTO.CDEMPRESA AND' +
      ' UNIDADE.CDUNIDADE=PRODUTO.CDUNIDADE'#13#10'LEFT JOIN TPPRODUTO ON TPP' +
      'RODUTO.CDEMPRESA=PRODUTO.CDEMPRESA AND TPPRODUTO.CDTPPRODUTO=PRO' +
      'DUTO.CDTPPRODUTO'#13#10'LEFT JOIN CNTCUSTO ON CNTCUSTO.CDEMPRESA=ITENT' +
      'RADA.CDEMPRESA AND CNTCUSTO.CDCNTCUSTO=ITENTRADA.CDCNTCUSTO'#13#10'WHE' +
      'RE ITENTRADA.CDEMPRESA=:CDEMPRESA AND ITENTRADA.CDENTRADA=:CDENT' +
      'RADA'
    DataSource = dts1
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDENTRADA'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 1026
    Top = 263
    object sdsitentradaCDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaCDCFOP: TIntegerField
      FieldName = 'CDCFOP'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsitentradaDSITENTRADA: TStringField
      FieldName = 'DSITENTRADA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsitentradaBOALTERACUSTOMEDIO: TStringField
      FieldName = 'BOALTERACUSTOMEDIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitentradaQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 5
    end
    object sdsitentradaVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaPRDESCONTO: TFloatField
      FieldName = 'PRDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaVLBASEICMS: TFMTBCDField
      FieldName = 'VLBASEICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaALICMSRED: TFloatField
      FieldName = 'ALICMSRED'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaVLBASEICMSRED: TFMTBCDField
      FieldName = 'VLBASEICMSRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaVLBASEIPI: TFMTBCDField
      FieldName = 'VLBASEIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaALIPI: TFloatField
      FieldName = 'ALIPI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaVLIPI: TFMTBCDField
      FieldName = 'VLIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaVLSEGURO: TFMTBCDField
      FieldName = 'VLSEGURO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaPSLIQUIDO: TFloatField
      FieldName = 'PSLIQUIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaPSBRUTO: TFloatField
      FieldName = 'PSBRUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaBORECUPERAICMS: TStringField
      FieldName = 'BORECUPERAICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitentradaBORECUPERAIPI: TStringField
      FieldName = 'BORECUPERAIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitentradaBORECUPERAPIS: TStringField
      FieldName = 'BORECUPERAPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitentradaVLBASEPIS: TFMTBCDField
      FieldName = 'VLBASEPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaALPIS: TFloatField
      FieldName = 'ALPIS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaVLPIS: TFMTBCDField
      FieldName = 'VLPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object sdsitentradaVLBASECOFINS: TFMTBCDField
      FieldName = 'VLBASECOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaALCOFINS: TFloatField
      FieldName = 'ALCOFINS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaVLCOFINS: TFMTBCDField
      FieldName = 'VLCOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object sdsitentradaPRCUSTO: TFMTBCDField
      FieldName = 'PRCUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaPRVIGOR: TFMTBCDField
      FieldName = 'PRVIGOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaVLOUTDESPESA: TFMTBCDField
      FieldName = 'VLOUTDESPESA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaVLCUSTOMEDIO: TFMTBCDField
      FieldName = 'VLCUSTOMEDIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object sdsitentradaVLCUSTO: TFMTBCDField
      FieldName = 'VLCUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object sdsitentradaBORECUPERACOFINS: TStringField
      FieldName = 'BORECUPERACOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitentradaDTFABRICACAO: TDateField
      FieldName = 'DTFABRICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaDTVALIDADE: TDateField
      FieldName = 'DTVALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaVLSALDOVALOR: TFMTBCDField
      FieldName = 'VLSALDOVALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaPRLUCRO: TFloatField
      FieldName = 'PRLUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaVLICMSRED: TFMTBCDField
      FieldName = 'VLICMSRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaALICMSSUBTRIB: TFloatField
      FieldName = 'ALICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaVLBASEICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLBASEICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaVLVENDA: TFMTBCDField
      FieldName = 'VLVENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object sdsitentradaPRLUCROATACADO: TFloatField
      FieldName = 'PRLUCROATACADO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaPRLUCROESPECIAL: TFloatField
      FieldName = 'PRLUCROESPECIAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaVLATACADO: TFMTBCDField
      FieldName = 'VLATACADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object sdsitentradaVLESPECIAL: TFMTBCDField
      FieldName = 'VLESPECIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object sdsitentradaCDMODBCICMS: TIntegerField
      FieldName = 'CDMODBCICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaCDMODBCSTICMS: TIntegerField
      FieldName = 'CDMODBCSTICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaPRMRGVLADICIONADOICMSSUBTRIB: TFloatField
      FieldName = 'PRMRGVLADICIONADOICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaPRREDBCICMS: TFloatField
      FieldName = 'PRREDBCICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaNUSTICMS: TStringField
      FieldName = 'NUSTICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object sdsitentradaNUSTIPI: TStringField
      FieldName = 'NUSTIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsitentradaNUSTCOFINS: TStringField
      FieldName = 'NUSTCOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsitentradaNUSTPIS: TStringField
      FieldName = 'NUSTPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsitentradaBORECUPERAAJUSTEICMS: TStringField
      FieldName = 'BORECUPERAAJUSTEICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitentradaBOICMSAJUSTE: TStringField
      FieldName = 'BOICMSAJUSTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitentradaBOBASEIPIAJUSTE: TStringField
      FieldName = 'BOBASEIPIAJUSTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitentradaBOAJUSTETOTAL: TStringField
      FieldName = 'BOAJUSTETOTAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitentradaBOBASEICMSAJUSTE: TStringField
      FieldName = 'BOBASEICMSAJUSTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitentradaBONDIFERENCIALALIQUOTA: TStringField
      FieldName = 'BONDIFERENCIALALIQUOTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitentradaVLICMSDIFALIQUOTA: TFMTBCDField
      FieldName = 'VLICMSDIFALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaBODIFERENCIALALIQUOTA: TStringField
      FieldName = 'BODIFERENCIALALIQUOTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitentradaCDITENTRADA: TIntegerField
      FieldName = 'CDITENTRADA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitentradaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitentradaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitentradaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitentradaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitentradaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitentradaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitentradaBORECUPERAIPIESPECIAL: TStringField
      FieldName = 'BORECUPERAIPIESPECIAL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitentradaCDITORDCOMPRA: TIntegerField
      FieldName = 'CDITORDCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaCDORDCOMPRA: TIntegerField
      FieldName = 'CDORDCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaBOBASEPISAJUSTE: TStringField
      FieldName = 'BOBASEPISAJUSTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitentradaBOBASECOFINSAJUSTE: TStringField
      FieldName = 'BOBASECOFINSAJUSTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitentradaVLCUSTOBRUTO: TFMTBCDField
      FieldName = 'VLCUSTOBRUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object sdsitentradaVLCUSTOLIQUIDO: TFMTBCDField
      FieldName = 'VLCUSTOLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object sdsitentradaPRCOMISSAO: TFloatField
      FieldName = 'PRCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaALSUPERSIMPLES: TFloatField
      FieldName = 'ALSUPERSIMPLES'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaVLSUPERSIMPLES: TFMTBCDField
      FieldName = 'VLSUPERSIMPLES'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaVLCUSTOTOTAL: TFMTBCDField
      FieldName = 'VLCUSTOTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaVLPRECOVENDA: TFMTBCDField
      FieldName = 'VLPRECOVENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaVLPRECOANTERIOR: TFMTBCDField
      FieldName = 'VLPRECOANTERIOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaPRFRETE: TFloatField
      FieldName = 'PRFRETE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaVLIPIITEM: TFMTBCDField
      FieldName = 'VLIPIITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaVLFRETEITEM: TFMTBCDField
      FieldName = 'VLFRETEITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaVLICMSSUBTRIBITEM: TFMTBCDField
      FieldName = 'VLICMSSUBTRIBITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaVLDESCONTOITEM: TFMTBCDField
      FieldName = 'VLDESCONTOITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaVLOUTDESPESAITEM: TFMTBCDField
      FieldName = 'VLOUTDESPESAITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaVLICMSDIFALIQUOTAITEM: TFMTBCDField
      FieldName = 'VLICMSDIFALIQUOTAITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaCDBCCALCULOCREDITO: TStringField
      FieldName = 'CDBCCALCULOCREDITO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsitentradaPRDESPESAITEM: TFloatField
      FieldName = 'PRDESPESAITEM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaVLDESPESAITEM: TFMTBCDField
      FieldName = 'VLDESPESAITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaVLLUCRO: TFMTBCDField
      FieldName = 'VLLUCRO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaDSINFADICIONAL: TBlobField
      FieldName = 'DSINFADICIONAL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsitentradaCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaNUPLCONTA: TStringField
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsitentradaVLPRECOPRAZO: TFMTBCDField
      FieldName = 'VLPRECOPRAZO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaPRLUCROPRAZO: TFloatField
      FieldName = 'PRLUCROPRAZO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaVLPRECOPRAZOANTERIOR: TFMTBCDField
      FieldName = 'VLPRECOPRAZOANTERIOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaVLLUCROPRAZO: TFMTBCDField
      FieldName = 'VLLUCROPRAZO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitentradaBOAJUSTEIPI: TStringField
      FieldName = 'BOAJUSTEIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsitentradaNMPLCONTA: TStringField
      FieldName = 'NMPLCONTA'
      ProviderFlags = []
      Size = 100
    end
    object sdsitentradaNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdsitentradaNUCLFISCAL: TStringField
      FieldName = 'NUCLFISCAL'
      ProviderFlags = []
    end
    object sdsitentradaNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object sdsitentradaBOSERVICO: TStringField
      FieldName = 'BOSERVICO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object sdsitentradaBOLOTEIMEI: TStringField
      FieldName = 'BOLOTEIMEI'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object sdsitentradaCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsitentradaNMCNTCUSTO: TStringField
      FieldName = 'NMCNTCUSTO'
      ProviderFlags = []
      Size = 100
    end
    object sdsitentradaVLRETENCAO: TFMTBCDField
      FieldName = 'VLRETENCAO'
      ProviderFlags = [pfInUpdate]
      Size = 0
    end
    object sdsitentradaVLBASEICMSNTRIBUTAVEL: TFMTBCDField
      FieldName = 'VLBASEICMSNTRIBUTAVEL'
      ProviderFlags = [pfInUpdate]
      Size = 0
    end
    object sdsitentradaVLBASEICMSORIGINAL: TFMTBCDField
      FieldName = 'VLBASEICMSORIGINAL'
      ProviderFlags = [pfInUpdate]
      Size = 0
    end
    object sdsitentradaVLTOTALCOMPLETO: TFMTBCDField
      FieldName = 'VLTOTALCOMPLETO'
      ProviderFlags = [pfInUpdate]
      Size = 0
    end
    object sdsitentradaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsautpagto: TSQLDataSet
    CommandText = 
      'SELECT AUTPAGTO.*'#13#10',PLCONTA.NMPLCONTA'#13#10',CNTCUSTO.NMCNTCUSTO'#13#10',US' +
      'UARIO.NMUSUARIO'#13#10',STAUTPAGTO.NUCOR'#13#10'FROM AUTPAGTO'#13#10'LEFT JOIN USU' +
      'ARIO ON USUARIO.CDUSUARIO=AUTPAGTO.CDUSUARIOAPROVACAO'#13#10'LEFT JOIN' +
      ' PLCONTA ON PLCONTA.CDEMPRESA=AUTPAGTO.CDEMPRESA AND PLCONTA.CDP' +
      'LCONTA=AUTPAGTO.CDPLCONTA'#13#10'LEFT JOIN CNTCUSTO ON CNTCUSTO.CDEMPR' +
      'ESA=AUTPAGTO.CDEMPRESA AND CNTCUSTO.CDCNTCUSTO=AUTPAGTO.CDCNTCUS' +
      'TO'#13#10'LEFT JOIN STAUTPAGTO ON STAUTPAGTO.CDSTAUTPAGTO=AUTPAGTO.CDS' +
      'TAUTPAGTO'#13#10'WHERE AUTPAGTO.CDEMPRESA=:CDEMPRESA AND AUTPAGTO.CDEN' +
      'TRADA=:CDENTRADA'
    DataSource = dts1
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDENTRADA'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 1027
    Top = 315
    object sdsautpagtoCDAUTPAGTO: TIntegerField
      FieldName = 'CDAUTPAGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsautpagtoCDSTAUTPAGTO: TIntegerField
      FieldName = 'CDSTAUTPAGTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsautpagtoCDTPPAGAMENTO: TIntegerField
      FieldName = 'CDTPPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsautpagtoCDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsautpagtoCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsautpagtoCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsautpagtoCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsautpagtoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsautpagtoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsautpagtoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsautpagtoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsautpagtoCDUSUARIOBAIXA: TIntegerField
      FieldName = 'CDUSUARIOBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsautpagtoCDCONTA: TIntegerField
      FieldName = 'CDCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsautpagtoNUAUTPAGTO: TStringField
      FieldName = 'NUAUTPAGTO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsautpagtoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsautpagtoDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsautpagtoDTPRORROGACAO: TDateField
      FieldName = 'DTPRORROGACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsautpagtoVLAUTPAGTO: TFMTBCDField
      FieldName = 'VLAUTPAGTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsautpagtoPRMORADIARIA: TFloatField
      FieldName = 'PRMORADIARIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsautpagtoDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sdsautpagtoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsautpagtoVLBAIXA: TFMTBCDField
      FieldName = 'VLBAIXA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsautpagtoVLPREVISTO: TFMTBCDField
      FieldName = 'VLPREVISTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsautpagtoVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsautpagtoPRMULTA: TFloatField
      FieldName = 'PRMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsautpagtoVLMULTA: TFMTBCDField
      FieldName = 'VLMULTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsautpagtoDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsautpagtoVLDEVOLUCAO: TFMTBCDField
      FieldName = 'VLDEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsautpagtoVLABATIMENTO: TFMTBCDField
      FieldName = 'VLABATIMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsautpagtoVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsautpagtoVLDEDUCAO: TFMTBCDField
      FieldName = 'VLDEDUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsautpagtoVLACRESCIMO: TFMTBCDField
      FieldName = 'VLACRESCIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsautpagtoVLJUROS: TFMTBCDField
      FieldName = 'VLJUROS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsautpagtoVLRECEBIDO: TFMTBCDField
      FieldName = 'VLRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsautpagtoBOENVIADO: TStringField
      FieldName = 'BOENVIADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsautpagtoBOIMPRESSA: TStringField
      FieldName = 'BOIMPRESSA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsautpagtoNUPLCONTA: TStringField
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsautpagtoDSPARCELA: TStringField
      FieldName = 'DSPARCELA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsautpagtoDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsautpagtoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsautpagtoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsautpagtoCDUSUARIOAPROVACAO: TIntegerField
      FieldName = 'CDUSUARIOAPROVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsautpagtoTSAPROVACAO: TSQLTimeStampField
      FieldName = 'TSAPROVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsautpagtoCDCOMPUTADORAPROVACAO: TIntegerField
      FieldName = 'CDCOMPUTADORAPROVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsautpagtoNMUSUARIO: TStringField
      FieldName = 'NMUSUARIO'
      ProviderFlags = []
      Size = 40
    end
    object sdsautpagtoNMPLCONTA: TStringField
      FieldName = 'NMPLCONTA'
      ProviderFlags = []
      Size = 100
    end
    object sdsautpagtoNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsautpagtoNMCNTCUSTO: TStringField
      FieldName = 'NMCNTCUSTO'
      ProviderFlags = []
      Size = 100
    end
    object sdsautpagtoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsautpagtoCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsautpagtoNUCOR: TIntegerField
      FieldName = 'NUCOR'
      ProviderFlags = []
    end
  end
  object sdsitentradalote: TSQLDataSet
    CommandText = 
      'SELECT * '#13#10'FROM ITENTRADALOTE '#13#10'WHERE CDEMPRESA=:CDEMPRESA AND C' +
      'DITENTRADA=:CDITENTRADA'
    DataSource = dts2
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDITENTRADA'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 1027
    Top = 290
    object sdsitentradaloteCDITENTRADALOTE: TIntegerField
      FieldName = 'CDITENTRADALOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitentradaloteCDITENTRADA: TIntegerField
      FieldName = 'CDITENTRADA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitentradaloteCDITLOTE: TIntegerField
      FieldName = 'CDITLOTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitentradaloteCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitentradaloteCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitentradaloteCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitentradaloteCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitentradaloteTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitentradaloteTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitentradaloteNUIMEI: TStringField
      FieldName = 'NUIMEI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsitentradaloteCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsentradaefd0450: TSQLDataSet
    CommandText = 
      'SELECT * '#13#10'FROM ENTRADAEFD0450 '#13#10'WHERE CDEMPRESA=:CDEMPRESA AND ' +
      'CDENTRADA=:CDENTRADA'
    DataSource = dts1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDENTRADA'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 1026
    Top = 347
    object sdsentradaefd0450CDENTRADAEFD0450: TIntegerField
      FieldName = 'CDENTRADAEFD0450'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsentradaefd0450CDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsentradaefd0450CDEFD0450: TIntegerField
      FieldName = 'CDEFD0450'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsentradaefd0450CDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsentradaefd0450CDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsentradaefd0450CDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsentradaefd0450CDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsentradaefd0450DSCOMPLEMENTO: TStringField
      FieldName = 'DSCOMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sdsentradaefd0450TSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsentradaefd0450TSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsentradaefd0450CDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsentradac111: TSQLDataSet
    CommandText = 
      'SELECT * FROM ENTRADAC111 WHERE CDEMPRESA=:CDEMPRESA AND CDENTRA' +
      'DAEFD0450=:CDENTRADAEFD0450'
    DataSource = dts3
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDENTRADAEFD0450'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 1026
    Top = 375
    object sdsentradac111CDENTRADAC111: TIntegerField
      FieldName = 'CDENTRADAC111'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsentradac111CDTPC111: TIntegerField
      FieldName = 'CDTPC111'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsentradac111CDENTRADAEFD0450: TIntegerField
      FieldName = 'CDENTRADAEFD0450'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsentradac111CDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsentradac111CDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsentradac111CDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsentradac111CDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsentradac111NUPROCESSO: TStringField
      FieldName = 'NUPROCESSO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsentradac111TSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsentradac111TSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsentradac111CDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    Left = 999
    Top = 235
  end
  object dts2: TDataSource
    DataSet = sdsitentrada
    Left = 1114
    Top = 262
  end
  object dts3: TDataSource
    DataSet = sdsentradaefd0450
    Left = 1114
    Top = 347
  end
end
