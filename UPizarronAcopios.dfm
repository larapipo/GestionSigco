object FormPizarronAcopios: TFormPizarronAcopios
  Left = 281
  Top = 77
  Caption = 'Acopios de Mercaderia'
  ClientHeight = 598
  ClientWidth = 1007
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 1007
    Height = 34
    Align = alTop
    Padding.Left = 2
    Padding.Top = 2
    Padding.Right = 2
    Padding.Bottom = 2
    TabOrder = 0
    object Label7: TLabel
      Left = 904
      Top = 8
      Width = 36
      Height = 13
      Cursor = crHandPoint
      Caption = 'Ajustes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = Label7Click
    end
    object BitBtn1: TBitBtn
      Left = 722
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Acopios'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 803
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Cerrar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 34
    Width = 1007
    Height = 564
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    object cxGrid1DBLayoutView1: TcxGridDBLayoutView
      OnDblClick = cxGrid1DBLayoutView1DblClick
      Navigator.Buttons.CustomButtons = <>
      Navigator.InfoPanel.Visible = True
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DSMercaCab
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.RecordScrollMode = rsmByRecord
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = 'Sin Datos'
      OptionsView.CarouselMode.BackgroundRecordAlphaLevel = 240
      OptionsView.CarouselMode.BackgroundRecordEndScale = 80
      OptionsView.CarouselMode.InterpolationMode = imHighQuality
      OptionsView.CarouselMode.PitchAngle = 60.000000000000000000
      OptionsView.CarouselMode.Radius = 500
      OptionsView.CarouselMode.RecordCount = 30
      OptionsView.CarouselMode.RollAngle = 15.000000000000000000
      OptionsView.MinValueWidth = 100
      OptionsView.RecordCaption.Height = 20
      OptionsView.RecordIndent = 20
      OptionsView.SeparatorColor = clAqua
      OptionsView.SeparatorWidth = 1
      OptionsView.SingleRecordStretch = srsClient
      OptionsView.ViewMode = lvvmMultiRow
      Styles.Background = cxStyle35
      Styles.Content = cxStyle9
      object cxGrid1DBLayoutView1DBLayoutViewItem1: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'ID'
        Visible = False
        LayoutItem = cxGrid1DBLayoutView1LayoutItem1
      end
      object cxGrid1DBLayoutView1DBLayoutViewItem2: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'FECHA'
        LayoutItem = cxGrid1DBLayoutView1LayoutItem2
      end
      object cxGrid1DBLayoutView1DBLayoutViewItem3: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'CLIENTE'
        LayoutItem = cxGrid1DBLayoutView1LayoutItem3
      end
      object cxGrid1DBLayoutView1DBLayoutViewItem4: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'NOMBRE'
        LayoutItem = cxGrid1DBLayoutView1LayoutItem4
      end
      object cxGrid1DBLayoutView1DBLayoutViewItem5: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'DIRECCION'
        LayoutItem = cxGrid1DBLayoutView1LayoutItem5
      end
      object cxGrid1DBLayoutView1DBLayoutViewItem6: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'CPOSTAL'
        LayoutItem = cxGrid1DBLayoutView1LayoutItem6
      end
      object cxGrid1DBLayoutView1DBLayoutViewItem7: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'LOCALIDAD'
        LayoutItem = cxGrid1DBLayoutView1LayoutItem7
      end
      object cxGrid1DBLayoutView1DBLayoutViewItem8: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'NROCPBTE'
        LayoutItem = cxGrid1DBLayoutView1LayoutItem8
      end
      object cxGrid1DBLayoutView1DBLayoutViewItem9: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'ID_FACTURA'
        Visible = False
        LayoutItem = cxGrid1DBLayoutView1LayoutItem9
      end
      object cxGrid1DBLayoutView1DBLayoutViewItem10: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'CUMPLIDO'
        Visible = False
        LayoutItem = cxGrid1DBLayoutView1LayoutItem10
      end
      object cxGrid1DBLayoutView1Group_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Template Card'
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object cxGrid1DBLayoutView1LayoutItem1: TcxGridLayoutItem
        Index = -1
      end
      object cxGrid1DBLayoutView1LayoutItem2: TcxGridLayoutItem
        Parent = cxGrid1DBLayoutView1Group1
        AlignHorz = ahLeft
        Index = 0
      end
      object cxGrid1DBLayoutView1LayoutItem3: TcxGridLayoutItem
        Parent = cxGrid1DBLayoutView1Group3
        AlignHorz = ahClient
        Index = 0
      end
      object cxGrid1DBLayoutView1LayoutItem4: TcxGridLayoutItem
        Parent = cxGrid1DBLayoutView1Group3
        SizeOptions.Width = 284
        Index = 1
      end
      object cxGrid1DBLayoutView1LayoutItem5: TcxGridLayoutItem
        Parent = cxGrid1DBLayoutView1Group2
        Index = 1
      end
      object cxGrid1DBLayoutView1LayoutItem6: TcxGridLayoutItem
        Parent = cxGrid1DBLayoutView1Group4
        AlignHorz = ahClient
        SizeOptions.Width = 129
        Index = 1
      end
      object cxGrid1DBLayoutView1LayoutItem7: TcxGridLayoutItem
        Parent = cxGrid1DBLayoutView1Group4
        SizeOptions.Width = 327
        Index = 0
      end
      object cxGrid1DBLayoutView1LayoutItem8: TcxGridLayoutItem
        Parent = cxGrid1DBLayoutView1Group1
        Index = 1
      end
      object cxGrid1DBLayoutView1LayoutItem9: TcxGridLayoutItem
        Index = -1
      end
      object cxGrid1DBLayoutView1LayoutItem10: TcxGridLayoutItem
        Index = -1
      end
      object cxGrid1DBLayoutView1Group1: TdxLayoutGroup
        Parent = cxGrid1DBLayoutView1Group_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        Index = 0
      end
      object cxGrid1DBLayoutView1Group2: TdxLayoutGroup
        Parent = cxGrid1DBLayoutView1Group_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        Index = 1
      end
      object cxGrid1DBLayoutView1Group3: TdxLayoutAutoCreatedGroup
        Parent = cxGrid1DBLayoutView1Group2
        LayoutDirection = ldHorizontal
        Index = 0
      end
      object cxGrid1DBLayoutView1Group4: TdxLayoutAutoCreatedGroup
        Parent = cxGrid1DBLayoutView1Group2
        LayoutDirection = ldHorizontal
        Index = 2
      end
    end
    object cxGrid1DBLayoutView2: TcxGridDBLayoutView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DSMercDet
      DataController.DetailKeyFieldNames = 'ID_CAB'
      DataController.MasterKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      object cxGrid1DBLayoutView2CODIGO: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'CODIGO'
        LayoutItem = cxGrid1DBLayoutView2LayoutItem3
      end
      object cxGrid1DBLayoutView2DETALLE: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'DETALLE'
        LayoutItem = cxGrid1DBLayoutView2LayoutItem4
      end
      object cxGrid1DBLayoutView2CANTIDAD: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'CANTIDAD'
        LayoutItem = cxGrid1DBLayoutView2LayoutItem5
      end
      object cxGrid1DBLayoutView2ENTREGADO: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'ENTREGADO'
        LayoutItem = cxGrid1DBLayoutView2LayoutItem6
      end
      object cxGrid1DBLayoutView2Group_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Template Card'
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object cxGrid1DBLayoutView2LayoutItem3: TcxGridLayoutItem
        Parent = cxGrid1DBLayoutView2Group_Root
        AlignHorz = ahLeft
        AlignVert = avTop
        SizeOptions.Height = 23
        SizeOptions.Width = 116
        Index = 0
      end
      object cxGrid1DBLayoutView2LayoutItem4: TcxGridLayoutItem
        Parent = cxGrid1DBLayoutView2Group_Root
        AlignVert = avTop
        SizeOptions.Width = 244
        Index = 1
      end
      object cxGrid1DBLayoutView2LayoutItem5: TcxGridLayoutItem
        Parent = cxGrid1DBLayoutView2Group_Root
        AlignHorz = ahClient
        AlignVert = avTop
        Index = 2
      end
      object cxGrid1DBLayoutView2LayoutItem6: TcxGridLayoutItem
        Parent = cxGrid1DBLayoutView2Group_Root
        Index = 3
      end
    end
    object cxGrid1Level1: TcxGridLevel
      Caption = 'Ordenes de Trabajo'
      GridView = cxGrid1DBLayoutView1
      Styles.Tab = cxStyle8
      object cxGrid1Level2: TcxGridLevel
        GridView = cxGrid1DBLayoutView2
      end
    end
  end
  object pnEstados: TJvPanel
    Left = 579
    Top = 40
    Width = 273
    Height = 481
    Movable = True
    BorderStyle = bsSingle
    TabOrder = 2
    Visible = False
    object Label1: TLabel
      Left = 30
      Top = 21
      Width = 95
      Height = 13
      Caption = 'Intervalo Animacion'
    end
    object Label2: TLabel
      Left = 30
      Top = 77
      Width = 101
      Height = 13
      Caption = 'Transparencia Fondo'
    end
    object Label3: TLabel
      Left = 30
      Top = 141
      Width = 112
      Height = 13
      Caption = 'Rango de Escala Fondo'
    end
    object Label4: TLabel
      Left = 30
      Top = 207
      Width = 74
      Height = 13
      Caption = 'Angulo de paso'
    end
    object Label5: TLabel
      Left = 30
      Top = 269
      Width = 27
      Height = 13
      Caption = 'Radio'
    end
    object Label6: TLabel
      Left = 30
      Top = 327
      Width = 68
      Height = 13
      Caption = 'Angulo Circulo'
    end
    object trAnumacion: TJvTrackBar
      Left = 24
      Top = 40
      Width = 177
      Height = 41
      Max = 1000
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnChange = trAnumacionChange
      ShowRange = False
      ToolTipSide = tsTop
    end
    object trFondo: TJvTrackBar
      Left = 24
      Top = 96
      Width = 177
      Height = 41
      Max = 1000
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      OnChange = trAnumacionChange
      ShowRange = False
      ToolTipSide = tsTop
    end
    object trEscala: TJvTrackBar
      Left = 24
      Top = 160
      Width = 177
      Height = 41
      Max = 1000
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
      OnChange = trAnumacionChange
      ShowRange = False
      ToolTipSide = tsTop
    end
    object trAnguloPaso: TJvTrackBar
      Left = 24
      Top = 226
      Width = 177
      Height = 41
      Max = 1000
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
      OnChange = trAnumacionChange
      ShowRange = False
      ToolTipSide = tsTop
    end
    object trRadio: TJvTrackBar
      Left = 24
      Top = 288
      Width = 177
      Height = 41
      Max = 1000
      ParentShowHint = False
      ShowHint = False
      TabOrder = 4
      OnChange = trAnumacionChange
      ShowRange = False
      ToolTipSide = tsTop
    end
    object trAmguloRadio: TJvTrackBar
      Left = 24
      Top = 346
      Width = 177
      Height = 41
      Max = 1000
      ParentShowHint = False
      ShowHint = False
      TabOrder = 5
      OnChange = trAnumacionChange
      ShowRange = False
      ToolTipSide = tsTop
    end
    object RgModiVisualizacion: TRadioGroup
      Left = 24
      Top = 393
      Width = 185
      Height = 65
      Caption = 'Modo Visualizacion'
      ItemIndex = 1
      Items.Strings = (
        'Tipo Carrusell'
        'En Mosaico')
      TabOrder = 6
      OnClick = RgModiVisualizacionClick
    end
  end
  object ActionList1: TActionList
    Left = 696
    Top = 352
    object LeerRto: TAction
      Caption = 'LeerRto'
      OnExecute = LeerRtoExecute
    end
    object LimpiarRto: TAction
      Caption = 'LimpiarRto'
      OnExecute = LimpiarRtoExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 712
    Top = 249
    object LimpiarRemitos: TMenuItem
      Action = LimpiarRto
      Caption = 'Limpiar Rtos'
    end
  end
  object CDSMercDet: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CAB'
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMercDet'
    Left = 568
    Top = 424
    object CDSMercDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMercDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMercDetCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Size = 8
    end
    object CDSMercDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSMercDetCANTIDAD: TFMTBCDField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSMercDetENTREGADO: TFMTBCDField
      DisplayLabel = 'Entregado'
      FieldName = 'ENTREGADO'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSMercDetSALDO: TFMTBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSMercDetFECHA_ULTIMAENTREGA: TSQLTimeStampField
      DisplayLabel = 'Ult.Entrega'
      FieldName = 'FECHA_ULTIMAENTREGA'
    end
    object CDSMercDetCUMPLIDO: TStringField
      FieldName = 'CUMPLIDO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object CDSMercCab: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMercCab'
    Left = 568
    Top = 360
    object CDSMercCabID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSMercCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSMercCabCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Required = True
      Size = 6
    end
    object CDSMercCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSMercCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSMercCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSMercCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSMercCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSMercCabID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Required = True
    end
    object CDSMercCabCUMPLIDO: TStringField
      FieldName = 'CUMPLIDO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPMercCab: TDataSetProvider
    DataSet = QMercCab
    UpdateMode = upWhereKeyOnly
    Left = 496
    Top = 360
  end
  object DSPMercDet: TDataSetProvider
    DataSet = QMercDet
    UpdateMode = upWhereKeyOnly
    Left = 496
    Top = 424
  end
  object QMercCab: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select cab.* from merca_enacopio_cab cab '
      'where cab.Cumplido = '#39'N'#39' ')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 424
    Top = 360
  end
  object QMercDet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select cab.* from merca_enacopio_Det cab where cab.id_cab = :id')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 424
    Top = 424
  end
  object DSMercaCab: TDataSource
    DataSet = CDSMercCab
    Left = 633
    Top = 362
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'cxPropertiesStore1'
    Left = 48
    Top = 88
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 160
    Top = 88
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWhite
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clSilver
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clYellow
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clYellow
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clAqua
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle13: TcxStyle
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 10862530
      TextColor = clBlack
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 13820129
      TextColor = clBlack
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10862530
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6392205
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 13820129
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 66
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13820129
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 13820129
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10862530
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6392205
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10862530
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clMaroon
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6392205
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle26: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clSilver
      TextColor = clBlack
    end
    object cxStyle27: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWhite
      TextColor = clBlack
    end
    object cxStyle28: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle29: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle30: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10841658
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle31: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle32: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle33: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle34: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clNavy
    end
    object cxStyle35: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
    object GridTableViewStyleSheetBrick: TcxGridTableViewStyleSheet
      Caption = 'Brick'
      BuiltIn = True
    end
    object GridTableViewStyleSheetWindowsClassic: TcxGridTableViewStyleSheet
      Caption = 'Windows Classic'
      Styles.Content = cxStyle25
      Styles.ContentEven = cxStyle26
      Styles.ContentOdd = cxStyle27
      Styles.Footer = cxStyle28
      Styles.Group = cxStyle29
      Styles.GroupByBox = cxStyle30
      Styles.Header = cxStyle31
      Styles.Inactive = cxStyle32
      Styles.Indicator = cxStyle33
      Styles.Preview = cxStyle34
      Styles.Selection = cxStyle35
      BuiltIn = True
    end
    object cxGridTableViewStyleSheet2: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
  end
  object DSMercDet: TDataSource
    DataSet = CDSMercDet
    Left = 649
    Top = 418
  end
end
