object FormPizarronOT: TFormPizarronOT
  Left = 250
  Top = 48
  Caption = 'Pizarron Ordenes de Trabajo'
  ClientHeight = 619
  ClientWidth = 947
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
    Top = 17
    Width = 947
    Height = 41
    Align = alTop
    TabOrder = 0
    object JvGradient1: TJvGradient
      Left = 1
      Top = 1
      Width = 945
      Height = 39
      Style = grVertical
      StartColor = clWhite
      EndColor = clGradientInactiveCaption
      ExplicitLeft = -39
      ExplicitWidth = 1025
    end
    object Label1: TLabel
      Left = 232
      Top = 13
      Width = 19
      Height = 13
      Caption = 'Mes'
    end
    object Label2: TLabel
      Left = 316
      Top = 13
      Width = 19
      Height = 13
      Caption = 'A'#241'o'
    end
    object Label9: TLabel
      Left = 888
      Top = 6
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
      OnClick = Label9Click
    end
    object BitBtn1: TBitBtn
      Left = 613
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Traer O.T'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 694
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cerrar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object edAnio: TSpinEdit
      Left = 341
      Top = 9
      Width = 57
      Height = 22
      MaxValue = 3000
      MinValue = 1900
      TabOrder = 2
      Value = 1900
      OnChange = edAnioChange
    end
    object edMes: TSpinEdit
      Left = 269
      Top = 9
      Width = 41
      Height = 22
      MaxValue = 12
      MinValue = 0
      TabOrder = 3
      Value = 1
      OnChange = edMesChange
    end
    object dbcVendedor: TJvDBLookupCombo
      Left = 19
      Top = 11
      Width = 196
      Height = 21
      DisplayEmpty = 'Todos Los Vendedores'
      EmptyValue = '******'
      LookupField = 'CODIGO'
      LookupDisplay = 'NOMBRE'
      LookupSource = DSBuscaVendedores
      TabOrder = 4
      OnChange = dbcVendedorChange
    end
    object CheckBox1: TCheckBox
      Left = 413
      Top = 9
      Width = 81
      Height = 17
      Caption = 'Todos'
      TabOrder = 5
      OnClick = CheckBox1Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 947
    Height = 17
    Align = alTop
    TabOrder = 1
    object JvGradient2: TJvGradient
      Left = 1
      Top = 1
      Width = 945
      Height = 15
      Style = grVertical
      StartColor = clWhite
      EndColor = clGradientInactiveCaption
      ExplicitLeft = 528
      ExplicitTop = 16
      ExplicitWidth = 100
      ExplicitHeight = 41
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 58
    Width = 947
    Height = 561
    Align = alClient
    TabOrder = 2
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    object cxGrid1DBLayoutView1: TcxGridDBLayoutView
      OnDblClick = cxGrid1DBLayoutView1DblClick
      Navigator.Buttons.CustomButtons = <>
      Navigator.InfoPanel.Visible = True
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DSOTrabajo
      DataController.KeyFieldNames = 'ID_OT'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.RecordScrollMode = rsmByRecord
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = 'Sin Datos'
      OptionsView.ScrollBars = ssVertical
      OptionsView.CarouselMode.BackgroundRecordAlphaLevel = 240
      OptionsView.CarouselMode.BackgroundRecordEndScale = 80
      OptionsView.CarouselMode.InterpolationMode = imHighQualityBicubic
      OptionsView.CarouselMode.PitchAngle = 60.000000000000000000
      OptionsView.CarouselMode.Radius = 500
      OptionsView.CarouselMode.RecordCount = 30
      OptionsView.CarouselMode.RollAngle = 15.000000000000000000
      OptionsView.CenterRecords = False
      OptionsView.MinValueWidth = 100
      OptionsView.RecordCaption.Height = 20
      OptionsView.RecordIndent = 5
      OptionsView.SeparatorColor = clAqua
      OptionsView.SeparatorWidth = 1
      OptionsView.SingleRecordStretch = srsClient
      OptionsView.ViewMode = lvvmMultiColumn
      Styles.Background = cxStyle35
      Styles.Content = cxStyle9
      object cxGrid1DBLayoutView1DBLayoutViewItem1: TcxGridDBLayoutViewItem
        Caption = 'Id'
        DataBinding.FieldName = 'ID_OT'
        LayoutItem = cxGrid1DBLayoutView1LayoutItem1
        Options.Editing = False
        Options.Focusing = False
      end
      object cxGrid1DBLayoutView1DBLayoutViewItem2: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'TIPOCPBTE'
        Visible = False
        LayoutItem = cxGrid1DBLayoutView1LayoutItem2
        Options.Editing = False
        Options.Focusing = False
      end
      object cxGrid1DBLayoutView1DBLayoutViewItem3: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'CLASECPBTE'
        Visible = False
        LayoutItem = cxGrid1DBLayoutView1LayoutItem3
        Options.Editing = False
        Options.Focusing = False
      end
      object cxGrid1DBLayoutView1DBLayoutViewItem4: TcxGridDBLayoutViewItem
        Caption = 'Sucursal'
        DataBinding.FieldName = 'SUCOT'
        Visible = False
        LayoutItem = cxGrid1DBLayoutView1LayoutItem4
        Options.Editing = False
        Options.Focusing = False
      end
      object cxGrid1DBLayoutView1DBLayoutViewItem5: TcxGridDBLayoutViewItem
        Caption = 'Nro.O.Trabajo'
        DataBinding.FieldName = 'NUMEROOT'
        Visible = False
        LayoutItem = cxGrid1DBLayoutView1LayoutItem5
        Options.Editing = False
        Options.Focusing = False
      end
      object cxGrid1DBLayoutView1DBLayoutViewItem6: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'LETRAOT'
        Visible = False
        LayoutItem = cxGrid1DBLayoutView1LayoutItem6
        Options.Editing = False
        Options.Focusing = False
      end
      object cxGrid1DBLayoutView1DBLayoutViewItem7: TcxGridDBLayoutViewItem
        Caption = 'Codigo:'
        DataBinding.FieldName = 'CODIGO'
        LayoutItem = cxGrid1DBLayoutView1LayoutItem7
        Options.Editing = False
        Options.Focusing = False
      end
      object cxGrid1DBLayoutView1DBLayoutViewItem8: TcxGridDBLayoutViewItem
        Caption = 'Nombre'
        DataBinding.FieldName = 'NOMBRE'
        LayoutItem = cxGrid1DBLayoutView1LayoutItem8
        Options.Editing = False
        Options.Focusing = False
      end
      object cxGrid1DBLayoutView1DBLayoutViewItem9: TcxGridDBLayoutViewItem
        Caption = 'Detalle'
        DataBinding.FieldName = 'DESCRIPCION'
        LayoutItem = cxGrid1DBLayoutView1LayoutItem9
        Options.Editing = False
        Options.Focusing = False
      end
      object cxGrid1DBLayoutView1DBLayoutViewItem10: TcxGridDBLayoutViewItem
        Caption = 'Nro.Cpbte'
        DataBinding.FieldName = 'NROCPBTE'
        LayoutItem = cxGrid1DBLayoutView1LayoutItem10
        Options.Editing = False
        Options.Focusing = False
      end
      object cxGrid1DBLayoutView1DBLayoutViewItem11: TcxGridDBLayoutViewItem
        Caption = 'Fecha'
        DataBinding.FieldName = 'FECHAINICIO'
        LayoutItem = cxGrid1DBLayoutView1LayoutItem11
        Options.Editing = False
        Options.Focusing = False
      end
      object cxGrid1DBLayoutView1DBLayoutViewItem12: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'PRIORIDAD'
        Visible = False
        LayoutItem = cxGrid1DBLayoutView1LayoutItem12
        Options.Editing = False
        Options.Focusing = False
      end
      object cxGrid1DBLayoutView1DBLayoutViewItem13: TcxGridDBLayoutViewItem
        Caption = 'Responsable'
        DataBinding.FieldName = 'REPONSABLE'
        LayoutItem = cxGrid1DBLayoutView1LayoutItem13
        Options.Editing = False
        Options.Focusing = False
      end
      object cxGrid1DBLayoutView1DBLayoutViewItem14: TcxGridDBLayoutViewItem
        Caption = 'Asignado'
        DataBinding.FieldName = 'ASIGNADO'
        LayoutItem = cxGrid1DBLayoutView1LayoutItem14
        Options.Editing = False
        Options.Focusing = False
      end
      object cxGrid1DBLayoutView1Item1: TcxGridDBLayoutViewItem
        Caption = 'Sucursal'
        DataBinding.FieldName = 'MUESTRASUCURSAL'
        LayoutItem = cxGrid1DBLayoutView1LayoutItem15
        Options.Editing = False
        Options.Focusing = False
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
        Parent = cxGrid1DBLayoutView1Group3
        AlignHorz = ahLeft
        SizeOptions.Width = 179
        Index = 0
      end
      object cxGrid1DBLayoutView1LayoutItem2: TcxGridLayoutItem
        Index = -1
      end
      object cxGrid1DBLayoutView1LayoutItem3: TcxGridLayoutItem
        Index = -1
      end
      object cxGrid1DBLayoutView1LayoutItem4: TcxGridLayoutItem
        AlignHorz = ahClient
        Index = -1
      end
      object cxGrid1DBLayoutView1LayoutItem5: TcxGridLayoutItem
        Index = -1
      end
      object cxGrid1DBLayoutView1LayoutItem6: TcxGridLayoutItem
        Index = -1
      end
      object cxGrid1DBLayoutView1LayoutItem7: TcxGridLayoutItem
        Parent = cxGrid1DBLayoutView1Group4
        AlignHorz = ahLeft
        Index = 0
      end
      object cxGrid1DBLayoutView1LayoutItem8: TcxGridLayoutItem
        Parent = cxGrid1DBLayoutView1Group4
        SizeOptions.Width = 386
        Index = 1
      end
      object cxGrid1DBLayoutView1LayoutItem9: TcxGridLayoutItem
        Parent = cxGrid1DBLayoutView1Group_Root
        SizeOptions.Height = 130
        SizeOptions.Width = 545
        Index = 2
      end
      object cxGrid1DBLayoutView1LayoutItem10: TcxGridLayoutItem
        Parent = cxGrid1DBLayoutView1Group2
        AlignHorz = ahClient
        Index = 0
      end
      object cxGrid1DBLayoutView1LayoutItem11: TcxGridLayoutItem
        Parent = cxGrid1DBLayoutView1Group2
        SizeOptions.Width = 173
        Index = 1
      end
      object cxGrid1DBLayoutView1LayoutItem12: TcxGridLayoutItem
        Index = -1
      end
      object cxGrid1DBLayoutView1LayoutItem13: TcxGridLayoutItem
        Parent = cxGrid1DBLayoutView1Group_Root
        Index = 3
      end
      object cxGrid1DBLayoutView1LayoutItem14: TcxGridLayoutItem
        Parent = cxGrid1DBLayoutView1Group_Root
        SizeOptions.Height = 38
        SizeOptions.Width = 417
        Index = 4
      end
      object cxGrid1DBLayoutView1Group1: TdxLayoutGroup
        Parent = cxGrid1DBLayoutView1Group_Root
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        Index = 0
      end
      object cxGrid1DBLayoutView1Group2: TdxLayoutAutoCreatedGroup
        Parent = cxGrid1DBLayoutView1Group1
        LayoutDirection = ldHorizontal
        Index = 1
      end
      object cxGrid1DBLayoutView1Group3: TdxLayoutGroup
        Parent = cxGrid1DBLayoutView1Group1
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        SizeOptions.Width = 227
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object cxGrid1DBLayoutView1Group4: TdxLayoutGroup
        Parent = cxGrid1DBLayoutView1Group_Root
        CaptionOptions.Text = 'Cliente'
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        Index = 1
      end
      object cxGrid1DBLayoutView1LayoutItem15: TcxGridLayoutItem
        Parent = cxGrid1DBLayoutView1Group3
        AlignHorz = ahLeft
        SizeOptions.Width = 345
        Index = 1
      end
    end
    object cxGrid1Level1: TcxGridLevel
      Caption = 'Ordenes de Trabajo'
      GridView = cxGrid1DBLayoutView1
      Styles.Tab = cxStyle8
    end
  end
  object pnEstados: TJvPanel
    Left = 651
    Top = 64
    Width = 273
    Height = 481
    Movable = True
    BorderStyle = bsSingle
    TabOrder = 3
    Visible = False
    OnExit = pnEstadosExit
    object Label3: TLabel
      Left = 30
      Top = 21
      Width = 95
      Height = 13
      Caption = 'Intervalo Animacion'
    end
    object Label4: TLabel
      Left = 30
      Top = 77
      Width = 101
      Height = 13
      Caption = 'Transparencia Fondo'
    end
    object Label5: TLabel
      Left = 30
      Top = 141
      Width = 112
      Height = 13
      Caption = 'Rango de Escala Fondo'
    end
    object Label6: TLabel
      Left = 30
      Top = 207
      Width = 74
      Height = 13
      Caption = 'Angulo de paso'
    end
    object Label7: TLabel
      Left = 30
      Top = 269
      Width = 27
      Height = 13
      Caption = 'Radio'
    end
    object Label8: TLabel
      Left = 30
      Top = 327
      Width = 68
      Height = 13
      Caption = 'Angulo Circulo'
    end
    object trAnumacion: TJvTrackBar
      Left = 24
      Top = 38
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
  object QOTrabajo: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'ano'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ano'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'mes'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'mes'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'responsable'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'responsable'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select o.id_ot,o.tipocpbte,o.clasecpbte,o.sucot,o.numeroot,'
      'o.letraot,o.nrocpbte,o.fechaInicio,  o.codigo,o.nombre,'
      
        '(o.descripcion ),o.prioridad,o.responsable_ot,p1.nombre as Repon' +
        'sable ,'
      
        'o.responsable_turno,p2.nombre as Asignado,s.detalle as MuestraSu' +
        'cursal from ordentrabajocab o'
      ''
      'left join personal p1 on p1.codigo=o.responsable_ot'
      'left join personal p2 on p2.codigo=o.responsable_turno'
      'left join sucursal s on s.codigo=o.sucursal'
      ''
      'where o.estado<>9 and'
      
        '      (extract(year from o.fechainicio) = :ano or :ano = 1900 ) ' +
        'and'
      
        '      (extract(month from o.fechainicio) = :mes or :mes = 0 ) an' +
        'd'
      
        '      (o.responsable_turno = :responsable or :responsable = '#39'***' +
        '***'#39' )')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 192
    Top = 160
  end
  object DSPOTrabajo: TDataSetProvider
    DataSet = QOTrabajo
    Left = 280
    Top = 168
  end
  object CDSOTrabajo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ano'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ano'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'mes'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'mes'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'responsable'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'responsable'
        ParamType = ptInput
      end>
    ProviderName = 'DSPOTrabajo'
    AfterScroll = CDSOTrabajoAfterScroll
    Left = 360
    Top = 168
    object CDSOTrabajoID_OT: TIntegerField
      FieldName = 'ID_OT'
      Required = True
    end
    object CDSOTrabajoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSOTrabajoCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSOTrabajoSUCOT: TStringField
      FieldName = 'SUCOT'
      Size = 4
    end
    object CDSOTrabajoNUMEROOT: TStringField
      FieldName = 'NUMEROOT'
      Size = 8
    end
    object CDSOTrabajoLETRAOT: TStringField
      FieldName = 'LETRAOT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSOTrabajoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSOTrabajoDESCRIPCION: TMemoField
      FieldName = 'DESCRIPCION'
      BlobType = ftMemo
      Size = 1
    end
    object CDSOTrabajoNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSOTrabajoFECHAINICIO: TSQLTimeStampField
      FieldName = 'FECHAINICIO'
      Required = True
    end
    object CDSOTrabajoPRIORIDAD: TSmallintField
      FieldName = 'PRIORIDAD'
    end
    object CDSOTrabajoREPONSABLE: TStringField
      FieldName = 'REPONSABLE'
      Size = 50
    end
    object CDSOTrabajoASIGNADO: TStringField
      FieldName = 'ASIGNADO'
      Size = 50
    end
    object CDSOTrabajoMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Size = 35
    end
  end
  object ActionList1: TActionList
    Left = 696
    Top = 352
    object LeerOT: TAction
      Caption = 'LeerOT'
      OnExecute = LeerOTExecute
    end
    object LimpiarOT: TAction
      Caption = 'LimpiarOT'
      OnExecute = LimpiarOTExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 712
    Top = 249
    object LimpiarOT1: TMenuItem
      Action = LimpiarOT
    end
  end
  object DSPBuscaVendedores: TDataSetProvider
    DataSet = DMBuscadores.QBuscaVendedores
    Left = 168
    Top = 512
  end
  object CDSBuscaVendedores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaVendedores'
    Left = 240
    Top = 512
    object CDSBuscaVendedoresCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSBuscaVendedoresNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object DSBuscaVendedores: TDataSource
    DataSet = CDSBuscaVendedores
    Left = 315
    Top = 512
  end
  object DSOTrabajo: TDataSource
    DataSet = CDSOTrabajo
    Left = 465
    Top = 178
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
end
