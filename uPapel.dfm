�
 TFRMPAPEL 0�  TPF0	TfrmPapelfrmPapelLeftyTopBorderStylebsDialogClientHeight<ClientWidth�Color	clBtnFace
ParentFont	OldCreateOrder	PositionpoScreenCenterOnShowFormShowPixelsPerInch`
TextHeight TLabelLabel1LeftTopWidthHeightCaptionNomeTransparent	  TcxDBTextEdit
edtnmpapelLeft0TopDataBinding.DataFieldNMPAPELDataBinding.DataSourcedtsProperties.CharCaseecUpperCaseStyle.LookAndFeel.NativeStyle%StyleDisabled.LookAndFeel.NativeStyle$StyleFocused.LookAndFeel.NativeStyle StyleHot.LookAndFeel.NativeStyleTabOrderWidth�  TcxCheckBoxckbInsercaoLeft#TopCaption   Continuar InserçãoStyle.LookAndFeel.NativeStyle%StyleDisabled.LookAndFeel.NativeStyle$StyleFocused.LookAndFeel.NativeStyle StyleHot.LookAndFeel.NativeStyleTabOrder Transparent	  	TcxButtonbtn2LeftOTopWidthKHeightCancel	Caption	&CancelarLookAndFeel.NativeStyleModalResultTabOrder  	TcxButtonbtnokLeft� TopWidthKHeightCaption&OkDefault	LookAndFeel.NativeStyleTabOrderOnClick
btnOkClick  TcxCheckBox	ckbativarLeftTop CaptionAtivarStyle.LookAndFeel.NativeStyle%StyleDisabled.LookAndFeel.NativeStyle$StyleFocused.LookAndFeel.NativeStyle StyleHot.LookAndFeel.NativeStyleTabOrderTransparent	OnClickckbativarClick  TcxCheckBox
ckbvisivelLeftDTop Caption   VisívelStyle.LookAndFeel.NativeStyle%StyleDisabled.LookAndFeel.NativeStyle$StyleFocused.LookAndFeel.NativeStyle StyleHot.LookAndFeel.NativeStyleTabOrderTransparent	OnClickckbvisivelClick  TcxGridgrdLeftTop8Width�Height�TabOrderLookAndFeel.NativeStyle TcxGridDBTableViewgrdDBTableView1	OnKeyDowngrdDBTableView1KeyDownNavigator.Buttons.CustomButtons #Navigator.Buttons.PriorPage.Enabled#Navigator.Buttons.PriorPage.Visible"Navigator.Buttons.NextPage.Enabled"Navigator.Buttons.NextPage.Visible Navigator.Buttons.Insert.Enabled Navigator.Buttons.Insert.Visible Navigator.Buttons.Append.Enabled Navigator.Buttons.Append.Visible Navigator.Buttons.Delete.Enabled Navigator.Buttons.Delete.Visible!Navigator.Buttons.Refresh.Enabled!Navigator.Buttons.Refresh.Visible&Navigator.Buttons.SaveBookmark.Enabled&Navigator.Buttons.SaveBookmark.Visible&Navigator.Buttons.GotoBookmark.Enabled&Navigator.Buttons.GotoBookmark.Visible Navigator.Buttons.Filter.Enabled Navigator.Buttons.Filter.VisibleNavigator.InfoPanel.DisplayMask[RecordIndex] de [RecordCount]Navigator.InfoPanel.Visible	Navigator.Visible	DataController.DataSourcedtscomatrib/DataController.Summary.DefaultGroupSummaryItems )DataController.Summary.FooterSummaryItems $DataController.Summary.SummaryGroups OptionsView.GroupByBoxOptionsView.Indicator	 TcxGridDBColumngrdDBTableView1COMDESCCaption
   PermissãoDataBinding.FieldNameCOMDESCOptions.FocusingWidth�  TcxGridDBColumngrdDBTableView1COMENABLEDCaptionAtivarDataBinding.FieldName
COMENABLEDPropertiesClassNameTcxCheckBoxPropertiesProperties.ValueCheckedSProperties.ValueUncheckedNWidth:  TcxGridDBColumngrdDBTableView1COMVISIBLECaption   VisívelDataBinding.FieldName
COMVISIBLEPropertiesClassNameTcxCheckBoxPropertiesProperties.ValueCheckedSProperties.ValueUncheckedNWidth,   TcxGridLevel	grdLevel1GridViewgrdDBTableView1   TSQLDataSetsdsCommandText*SELECT * FROM PAPEL WHERE CDPAPEL=:CDPAPELMaxBlobSize�ParamsDataType	ftIntegerNameCDPAPEL	ParamTypeptInputValue   SQLConnectiondtmmain.sqlcLeftTop TIntegerField
sdsCDPAPEL	FieldNameCDPAPELProviderFlags
pfInUpdate	pfInWherepfInKey Required	  TIntegerFieldsdsCDAPLICACAO	FieldNameCDAPLICACAOProviderFlags
pfInUpdate Required	  TStringField
sdsNMPAPEL	FieldNameNMPAPELProviderFlags
pfInUpdate Required	Size(  TStringField
sdsPAPTIPO	FieldNamePAPTIPOProviderFlags
pfInUpdate 	FixedChar	Size   TDataSetProviderdspDataSetsdsOptionspoIncFieldPropspoCascadeDeletespoCascadeUpdatespoAllowMultiRecordUpdatespoPropogateChanges 
UpdateModeupWhereKeyOnlyLeft6Top  TClientDataSetcds
Aggregates Params ProviderNamedspLeftRTop TIntegerField
cdsCDPAPEL	FieldNameCDPAPELProviderFlags
pfInUpdate	pfInWherepfInKey Required	  TIntegerFieldcdsCDAPLICACAO	FieldNameCDAPLICACAOProviderFlags
pfInUpdate Required	  TStringField
cdsNMPAPEL	FieldNameNMPAPELProviderFlags
pfInUpdate Required	Size(  TStringField
cdsPAPTIPO	FieldNamePAPTIPOProviderFlags
pfInUpdate 	FixedChar	Size  TDataSetFieldcdssdscomatrib	FieldNamesdscomatrib   TDataSourcedtsDataSetcdsLeft�Top  TDataSourcedts1DataSetsdsLeft�Top-  TSQLDataSetsdscomatribCommandText�SELECT C.COMCOD
,C.CDPAPEL
,R.COMDESC
,C.COMENABLED
,C.COMVISIBLE
,C.COMEXCETO
,C.COMATRIBUTO
,C.COMOPT 
FROM COMATRIB C
 INNER JOIN COMREG R ON R.COMCOD=C.COMCOD 
WHERE C.CDPAPEL=:CDPAPEL ORDER BY R.COMDESC
DataSourcedts1MaxBlobSize�ParamsDataType	ftIntegerNameCDPAPEL	ParamTypeptInputSize  SQLConnectiondtmmain.sqlcLeftTopI TIntegerFieldsdscomatribCOMCOD	FieldNameCOMCODProviderFlags
pfInUpdate	pfInWherepfInKey Required	  TIntegerFieldsdscomatribCDPAPEL	FieldNameCDPAPELProviderFlags
pfInUpdate	pfInWherepfInKey Required	  TStringFieldsdscomatribCOMDESC	FieldNameCOMDESCProviderFlags Sized  TStringFieldsdscomatribCOMENABLED	FieldName
COMENABLEDProviderFlags
pfInUpdate 	FixedChar	Size  TStringFieldsdscomatribCOMVISIBLE	FieldName
COMVISIBLEProviderFlags
pfInUpdate 	FixedChar	Size  TStringFieldsdscomatribCOMEXCETO	FieldName	COMEXCETOProviderFlags
pfInUpdate 	FixedChar	Size  TStringFieldsdscomatribCOMATRIBUTO	FieldNameCOMATRIBUTOProviderFlags
pfInUpdate 	FixedChar	Size  TStringFieldsdscomatribCOMOPT	FieldNameCOMOPTProviderFlags
pfInUpdate Sized   TClientDataSetcdscomatrib
Aggregates DataSetFieldcdssdscomatribParams LeftRTopI TIntegerFieldcdscomatribCOMCOD	FieldNameCOMCODProviderFlags
pfInUpdate	pfInWherepfInKey Required	  TIntegerFieldcdscomatribCDPAPEL	FieldNameCDPAPELProviderFlags
pfInUpdate	pfInWherepfInKey Required	  TStringFieldcdscomatribCOMDESC	FieldNameCOMDESCProviderFlags Sized  TStringFieldcdscomatribCOMENABLED	FieldName
COMENABLEDProviderFlags
pfInUpdate 	FixedChar	Size  TStringFieldcdscomatribCOMVISIBLE	FieldName
COMVISIBLEProviderFlags
pfInUpdate 	FixedChar	Size  TStringFieldcdscomatribCOMEXCETO	FieldName	COMEXCETOProviderFlags
pfInUpdate 	FixedChar	Size  TStringFieldcdscomatribCOMATRIBUTO	FieldNameCOMATRIBUTOProviderFlags
pfInUpdate 	FixedChar	Size  TStringFieldcdscomatribCOMOPT	FieldNameCOMOPTProviderFlags
pfInUpdate Sized   TDataSourcedtscomatribDataSetcdscomatribLeft�TopI   