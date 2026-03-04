inherited FormHistorialPreciosProduccion: TFormHistorialPreciosProduccion
  Caption = 'Historial Precios Produccion'
  ClientHeight = 688
  ClientWidth = 1078
  ExplicitWidth = 1096
  ExplicitHeight = 729
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1078
    Height = 635
    Align = alClient
    ExplicitWidth = 1078
    ExplicitHeight = 612
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1078
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        1078
        49)
      object Label1: TLabel
        Left = 783
        Top = 3
        Width = 31
        Height = 13
        Anchors = [akRight]
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 805
      end
      object Label2: TLabel
        Left = 894
        Top = 3
        Width = 28
        Height = 13
        Anchors = [akRight]
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 916
      end
      object edDesde: TDateTimePicker
        Left = 783
        Top = 22
        Width = 105
        Height = 21
        Anchors = [akRight]
        Date = 45063.000000000000000000
        Time = 0.307592777775425900
        TabOrder = 0
      end
      object edHasta: TDateTimePicker
        Left = 894
        Top = 22
        Width = 105
        Height = 21
        Anchors = [akRight]
        Date = 45063.000000000000000000
        Time = 0.307592777775425900
        TabOrder = 1
      end
      object UpDown1: TUpDown
        Left = 1117
        Top = 23
        Width = 16
        Height = 20
        Hint = 'Cambia el Per'#237'odo'
        Anchors = [akRight, akBottom]
        Max = 10000
        ParentShowHint = False
        Position = 100
        ShowHint = True
        TabOrder = 2
      end
      object UpDown2: TUpDown
        Left = 1005
        Top = 23
        Width = 16
        Height = 20
        Hint = 'Cambia el Per'#237'odo'
        Anchors = [akRight, akBottom]
        Max = 10000
        ParentShowHint = False
        Position = 100
        ShowHint = True
        TabOrder = 3
        OnClick = UpDown2Click
      end
    end
    object cxDBPivotGrid1: TcxDBPivotGrid
      Left = 0
      Top = 49
      Width = 1078
      Height = 551
      Align = alClient
      DataSource = DSPrecios
      Groups = <>
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Seven'
      OptionsView.ColumnGrandTotals = False
      OptionsView.ColumnGrandTotalText = 'Totales'
      OptionsView.ColumnTotals = False
      OptionsView.RowGrandTotals = False
      OptionsView.RowTotals = False
      OptionsView.ShowHeaderFilterButtons = pgsfbWhenSelected
      TabOrder = 1
      ExplicitHeight = 528
      object cxDBPivotGrid1CODIGO_STK: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 0
        DataBinding.FieldName = 'CODIGO_STK'
        Options.AlwaysExpanded = True
        Visible = True
        Width = 90
        UniqueName = 'CODIGO_STK'
      end
      object cxDBPivotGrid1DETALLE_STK: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 1
        DataBinding.FieldName = 'DETALLE_STK'
        Options.AlwaysExpanded = True
        GroupExpanded = False
        TotalsVisibility = tvNone
        Visible = True
        Width = 320
        UniqueName = 'DETALLE_STK'
      end
      object cxDBPivotGrid1FPRECIO_OLD: TcxDBPivotGridField
        Area = faData
        AreaIndex = 0
        DataBinding.FieldName = 'PRECIO_VIEJO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        SummaryType = stMin
        Visible = True
        Width = 74
        UniqueName = 'FPRECIO_OLD'
      end
      object cxDBPivotGrid1FPRECIO_NEW: TcxDBPivotGridField
        Area = faData
        AreaIndex = 1
        DataBinding.FieldName = 'PRECIO_NUEVO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        SummaryType = stMax
        Visible = True
        Width = 88
        UniqueName = 'FPRECIO_NEW'
      end
      object cxDBPivotGrid1ANIO: TcxDBPivotGridField
        AreaIndex = 0
        DataBinding.FieldName = 'ANIO'
        Visible = True
        UniqueName = 'ANIO'
      end
      object cxDBPivotGrid1MES: TcxDBPivotGridField
        AreaIndex = 1
        DataBinding.FieldName = 'MES'
        Visible = True
        UniqueName = 'MES'
      end
      object cxDBPivotGrid1ANIO_MES: TcxDBPivotGridField
        AreaIndex = 5
        IsCaptionAssigned = True
        Caption = 'A'#241'o/Mes'
        DataBinding.FieldName = 'ANIO_MES'
        GroupExpanded = False
        TotalsVisibility = tvNone
        Visible = True
        Width = 120
        UniqueName = 'A'#241'o/Mes'
      end
      object cxDBPivotGrid1ID: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 5
        DataBinding.FieldName = 'ID'
        Width = 20
        UniqueName = 'Id'
      end
      object cxDBPivotGrid1FECHA: TcxDBPivotGridField
        AreaIndex = 4
        DataBinding.FieldName = 'FECHA'
        GroupExpanded = False
        Visible = True
        UniqueName = 'Fecha'
      end
      object cxDBPivotGrid1Field1: TcxDBPivotGridField
        AreaIndex = 6
        DataBinding.FieldName = 'VARIACION'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = True
        Width = 64
        UniqueName = 'Variacion'
      end
      object cxDBPivotGrid1Field2: TcxDBPivotGridField
        AreaIndex = 2
        DataBinding.FieldName = 'DETALLE_RUBRO'
        Visible = True
        UniqueName = 'Rubro'
      end
      object cxDBPivotGrid1Field3: TcxDBPivotGridField
        AreaIndex = 3
        DataBinding.FieldName = 'DETALLE_SUBRUBRO'
        Visible = True
        UniqueName = 'Sub Rubro'
      end
      object cxDBPivotGrid1Field4: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 0
        DataBinding.FieldName = 'FECHA_SINHORA'
        ImageAlign = taCenter
        Visible = True
        UniqueName = 'Fecha '
      end
      object cxDBPivotGrid1VARIACION: TcxDBPivotGridField
        Area = faData
        AreaIndex = 2
        DataBinding.FieldName = 'PORCENTAJE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Styles.Content = cxStyle1
        TotalsVisibility = tvNone
        Visible = True
        Width = 40
        OnCalculateCustomSummary = cxDBPivotGrid1VARIACIONCalculateCustomSummary
        UniqueName = '% Var.'
      end
      object cxDBPivotGrid1Field5: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 2
        DataBinding.FieldName = 'MINIMO'
        Options.AlwaysExpanded = True
        Options.Filtering = False
        Options.Sorting = False
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        GroupExpanded = False
        Visible = True
        UniqueName = 'MINIMO'
      end
      object cxDBPivotGrid1Field6: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 3
        DataBinding.FieldName = 'MAXIMO'
        Options.AlwaysExpanded = True
        Options.Filtering = False
        Options.Sorting = False
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        GroupExpanded = False
        Visible = True
        UniqueName = 'MAXIMO'
      end
      object cxDBPivotGrid1Field7: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 4
        DataBinding.FieldName = 'VARIACION_GRAL'
        Options.AlwaysExpanded = True
        Options.Filtering = False
        Options.Sorting = False
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00%;-,0.00%'
        TotalsVisibility = tvNone
        Visible = True
        Width = 60
        UniqueName = '% Dif.Gral'
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 600
      Width = 1078
      Height = 35
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 2
      ExplicitTop = 577
      object JvDBFindEdit1: TJvDBFindEdit
        Left = 134
        Top = 8
        Width = 443
        Height = 19
        Flat = True
        ParentFlat = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = ''
        TextHint = 'Buscar Por Descripcion'
        DataField = 'DETALLE_STK'
        DataSource = DSPrecios
        FindStyle = fsFilter
        FindMode = fmAnyPos
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 635
    Width = 1078
    Align = alBottom
    ExplicitTop = 612
    ExplicitWidth = 1078
    inherited btConfirma: TBitBtn
      Visible = False
    end
    inherited btNuevo: TBitBtn
      Visible = False
    end
    inherited btCancelar: TBitBtn
      Visible = False
    end
    inherited btModificar: TBitBtn
      Visible = False
    end
    inherited Pr: TSpeedButton
      Visible = False
    end
    inherited Ne: TSpeedButton
      Visible = False
    end
    inherited btBorrar: TBitBtn
      Visible = False
    end
    object btExcel: TBitBtn
      Left = 557
      Top = 0
      Width = 116
      Height = 29
      Caption = 'Exportar Excel'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF233F3F237F7F237F7F237F7F001F
        000F4B000F4B000F2C00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF237F7F47FFFF47FFFF47FFFF0F2C00005F3F1F97000F4B00FF00FF18233F
        4F88AF2F737F4F534F2F302FFF00FFFF00FF237F7F233F7F00007747BFBF237F
        7F237F7F1F97000F4B00FF00FF30477F9BD7FF63C0FF48B7FF30A3E34F93B733
        7797003F3F233F3F000077237F7F0F4B001F77001F97000F4B00FF00FF30477F
        77C8FFA7DBFF8FD0FF8FD0FF8FD0FF83CCFF0000770000EF0000AF0000777F14
        000F4B003F14003F0000FF00FF3B477F4BBBFFBFEFFF8FE7FF8FE7FF8FE7FF8F
        E7FF0000770000EF7F14007F1400BF28000F4B003F33007F1400FF00FF47477F
        67C0FFA3DFFF8FFFFF8FFFFF8FFFFF8FFFFF0000770000EF3F0037000037FF28
        00FF2800FF28007F1400FF00FF18577F77C8FF6FC7FFA7FFFF8FFFFF8FFFFF8F
        FFFF00003700007700007700003F7F14007F14007F14003F1400FF00FF285C7F
        77C8FF58BCFFCBF3FFCFFFFFBFFFFFAFFFFFAFFFFFAFFFFFAFFFFF93E3FFD0FF
        FF83C3DB171817FF00FFFF00FF30607F8BD0FF77C8FF5FBFFF77C8FF7FCCFF9B
        D7FFD3FFFFBFFFFFBFFFFFA7E7FFDFFFFFCFF3FF33575FFF00FFFF00FF30607F
        97FFFF8FFFFF8FFFFF8FFFFF8FFFFF83EFFF77DBFFA7DFFFC7EBFFCBEBFFF7FF
        FFF7FFFF7BAFC7FF00FFFF00FF30607F9FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8F
        FFFF8FFFFF8FFFFF83FFFF43BFF73B63833B647F435B7FFF00FFFF00FF30537F
        B7FBFF8FFFFF8FFFFFAFFFFFA3DBFF9BDBFF9FEBFFAFFBFFAFFFFF67D7FF3737
        37FF00FFFF00FFFF00FFFF00FFFF00FF93B7FF88D7FF7FD7FF87C7FF1C1F1CFF
        00FF23233F47477F3B477F30537FFF00FF000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00
        FFFF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF000000000000000000FF00FF000000}
      TabOrder = 7
      OnClick = btExcelClick
    end
  end
  inherited Panel1: TPanel
    Top = 665
    Width = 1078
    Align = alBottom
    ExplicitTop = 642
    ExplicitWidth = 1078
    inherited sbEstado: TStatusBar
      Width = 916
      ExplicitWidth = 916
    end
  end
  inherited ActionList1: TActionList
    Left = 744
  end
  inherited ImageList1: TImageList
    Left = 248
    Top = 168
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
  end
  object DSPrecios: TDataSource
    DataSet = CDSPrecios
    Left = 336
    Top = 376
  end
  object CDSPrecios: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftTimeStamp
        Name = 'DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'HASTA'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPrecios'
    OnCalcFields = CDSPreciosCalcFields
    Left = 432
    Top = 376
    object CDSPreciosDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object CDSPreciosANIO: TSmallintField
      DisplayLabel = 'A'#241'o'
      FieldName = 'ANIO'
      Origin = 'ANIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSPreciosMES: TSmallintField
      DisplayLabel = 'Mes'
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSPreciosFECHA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha/Hora'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSPreciosANIO_MES: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ANIO_MES'
      Size = 7
    end
    object CDSPreciosVARIACION: TFloatField
      DisplayLabel = 'Variacion'
      FieldName = 'VARIACION'
      Origin = 'VARIACION'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSPreciosDETALLE_RUBRO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object CDSPreciosDETALLE_SUBRUBRO: TStringField
      DisplayLabel = 'Sub Rubro'
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object CDSPreciosFECHA_SINHORA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha '
      FieldKind = fkCalculated
      FieldName = 'FECHA_SINHORA'
      Calculated = True
    end
    object CDSPreciosPORCENTAJE: TFloatField
      DisplayLabel = '% Var.'
      FieldKind = fkCalculated
      FieldName = 'PORCENTAJE'
      DisplayFormat = ',0.00;-,0.00;-'
      Calculated = True
    end
    object CDSPreciosPRECIO_VIEJO: TFloatField
      DisplayLabel = 'Pre.Viejo'
      FieldName = 'PRECIO_VIEJO'
      Origin = 'PRECIO_VIEJO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSPreciosPRECIO_NUEVO: TFloatField
      DisplayLabel = 'Pre.Nuevo'
      FieldName = 'PRECIO_NUEVO'
      Origin = 'PRECIO_NUEVO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSPreciosCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object CDSPreciosMAXIMO: TFloatField
      DisplayLabel = 'Ult.Actual.'
      FieldName = 'MAXIMO'
    end
    object CDSPreciosMINIMO: TFloatField
      DisplayLabel = '1'#186' Precio'
      FieldName = 'MINIMO'
    end
    object CDSPreciosVARIACION_GRAL: TFloatField
      DisplayLabel = '% Dif.Gral'
      FieldKind = fkInternalCalc
      FieldName = 'VARIACION_GRAL'
    end
  end
  object DSPPrecios: TDataSetProvider
    DataSet = QPrecios
    Left = 616
    Top = 376
  end
  object QPrecios: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select sh.Fecha, s.codigo_stk,s.detalle_stk,sh.precio_viejo,sh.p' +
        'recio_nuevo,(sh.precio_nuevo-sh.precio_viejo) as Variacion,'
      
        'extract(year from sh.fecha) as Anio, extract(month from sh.fecha' +
        ') as Mes,r.detalle_rubro,sr.detalle_subrubro,'
      
        '(select first 1 smax.precio_nuevo as Maximo from stock_produccio' +
        'n_historial smax'
      
        'where (smax.codigo=sh.codigo) and (smax.fecha between :desde and' +
        ' :hasta)'
      'order by smax.fecha desc ,smax.precio_nuevo desc),'
      
        '(select first 1 smin.precio_viejo as Minimo from stock_produccio' +
        'n_historial smin'
      
        'where (smin.codigo=sh.codigo) and (smin.fecha between :desde and' +
        ' :hasta)'
      'order by smin.fecha asc, smin.precio_viejo asc)'
      ''
      '  from stock_produccion_historial sh'
      'left join stock s on s.codigo_stk=sh.codigo'
      'left join rubros r on r.codigo_rubro=s.rubro_stk'
      'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      
        'where s.clase_articulo in (1,3) and (s.codigo_stk>'#39'00000000'#39') an' +
        'd (s.codigo_stk=:codigo or :codigo='#39'********'#39') and (sh.fecha bet' +
        'ween :desde and :hasta) '
      ''
      'order by sh.codigo, sh.fecha,sh.id'
      '')
    Left = 532
    Top = 376
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 2
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object SaveDialog1: TSaveDialog
    Left = 716
    Top = 320
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clBlack
    end
  end
  object QPrecios_ORIGINAL: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select sh.Fecha, s.codigo_stk,s.detalle_stk,sh.precio_viejo,sh.p' +
        'recio_nuevo,(sh.precio_nuevo-sh.precio_viejo) as Variacion,'
      
        'extract(year from sh.fecha) as Anio, extract(month from sh.fecha' +
        ') as Mes,r.detalle_rubro,sr.detalle_subrubro  from stock_producc' +
        'ion_historial sh'
      'left join stock s on s.codigo_stk=sh.codigo'
      'left join rubros r on r.codigo_rubro=s.rubro_stk'
      'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      
        'where s.clase_articulo in (1,3) and (s.codigo_stk>'#39'00000000'#39') an' +
        'd (s.codigo_stk=:codigo or :codigo='#39'********'#39') and (sh.fecha bet' +
        'ween :desde and :hasta) '
      ''
      'order by sh.codigo, sh.fecha,sh.id'
      '')
    Left = 532
    Top = 456
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 2
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
end
