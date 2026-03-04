inherited FormABMBase5: TFormABMBase5
  Caption = 'FormABMBase5'
  ClientHeight = 565
  ClientWidth = 969
  ExplicitWidth = 987
  ExplicitHeight = 606
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 969
    Height = 473
    ExplicitWidth = 969
    ExplicitHeight = 473
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 969
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
      ExplicitTop = 8
      DesignSize = (
        969
        49)
      object Label1: TLabel
        Left = 786
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
        ExplicitLeft = 856
      end
      object Label2: TLabel
        Left = 897
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
        ExplicitLeft = 967
      end
      object edDesde: TDateTimePicker
        Left = 786
        Top = 22
        Width = 105
        Height = 21
        Anchors = [akRight]
        Date = 45063.000000000000000000
        Time = 0.307592777775425900
        TabOrder = 0
        ExplicitLeft = 806
      end
      object edHasta: TDateTimePicker
        Left = 897
        Top = 22
        Width = 105
        Height = 21
        Anchors = [akRight]
        Date = 45063.000000000000000000
        Time = 0.307592777775425900
        TabOrder = 1
        ExplicitLeft = 917
      end
      object UpDown1: TUpDown
        Left = 1008
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
    end
    object cxDBPivotGrid1: TcxDBPivotGrid
      Left = 0
      Top = 49
      Width = 969
      Height = 389
      Align = alClient
      DataSource = DSPrecios
      Groups = <>
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Seven'
      OptionsView.ColumnGrandTotalText = 'Precios'
      OptionsView.RowTotals = False
      OptionsView.ShowHeaderFilterButtons = pgsfbWhenSelected
      TabOrder = 1
      ExplicitLeft = -355
      ExplicitTop = -62
      ExplicitWidth = 1085
      ExplicitHeight = 503
      object cxDBPivotGrid1CODIGO_STK: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 0
        DataBinding.FieldName = 'CODIGO_STK'
        Visible = True
        Width = 90
        UniqueName = 'CODIGO_STK'
      end
      object cxDBPivotGrid1DETALLE_STK: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 1
        DataBinding.FieldName = 'DETALLE_STK'
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
        Visible = True
        Width = 71
        UniqueName = 'FPRECIO_OLD'
      end
      object cxDBPivotGrid1FPRECIO_NEW: TcxDBPivotGridField
        Area = faData
        AreaIndex = 1
        DataBinding.FieldName = 'PRECIO_NUEVO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
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
        AreaIndex = 2
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
        Area = faData
        AreaIndex = 2
        DataBinding.FieldName = 'VARIACION'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = True
        Width = 70
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
      object cxDBPivotGrid1Field5: TcxDBPivotGridField
        AreaIndex = 6
        DataBinding.FieldName = 'PORCENTAJE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = True
        UniqueName = '% Var.'
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 438
      Width = 969
      Height = 35
      Align = alBottom
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 2
      ExplicitLeft = -355
      ExplicitTop = 406
      ExplicitWidth = 1085
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
        FindStyle = fsFilter
        FindMode = fmAnyPos
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 473
    Width = 969
  end
  inherited Panel1: TPanel
    Top = 503
    Width = 969
    inherited sbEstado: TStatusBar
      Width = 807
    end
  end
  inherited ActionList1: TActionList
    Left = 672
    Top = 88
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
    Left = 440
    Top = 384
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
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
  end
  object DSPPrecios: TDataSetProvider
    DataSet = QPrecios
    Left = 656
    Top = 352
  end
  object QPrecios: TFDQuery
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
    Left = 564
    Top = 384
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
