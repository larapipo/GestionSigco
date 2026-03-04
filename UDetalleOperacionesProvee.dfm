object FormDetalleOperacionesProvee: TFormDetalleOperacionesProvee
  Left = 228
  Top = 135
  AlphaBlend = True
  Caption = 'Detalle Operaciones Proveedor'
  ClientHeight = 650
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object pnSuperior: TPanel
    Left = 0
    Top = 0
    Width = 645
    Height = 357
    Align = alTop
    ParentBackground = False
    TabOrder = 0
    object dbgCompras1: TDBGrid
      Left = 1
      Top = 41
      Width = 320
      Height = 267
      Align = alLeft
      DataSource = DSCompras_1
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ANIO'
          Title.Alignment = taCenter
          Title.Caption = 'A'#241'o'
          Title.Color = clMoneyGreen
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MES'
          Title.Alignment = taCenter
          Title.Caption = 'Mes'
          Title.Color = clMoneyGreen
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Title.Color = clMoneyGreen
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAL_INCIDENCIA'
          Title.Alignment = taCenter
          Title.Caption = '%'
          Title.Color = clMoneyGreen
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 74
          Visible = True
        end>
    end
    object dbgCompras2: TDBGrid
      Left = 321
      Top = 41
      Width = 320
      Height = 267
      Align = alLeft
      DataSource = DSCompras_2
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ANIO'
          Title.Alignment = taCenter
          Title.Caption = 'A'#241'o'
          Title.Color = clTeal
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MES'
          Title.Alignment = taCenter
          Title.Caption = 'Mes'
          Title.Color = clTeal
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Title.Color = clTeal
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAL_INCIDENCIA'
          Title.Alignment = taCenter
          Title.Caption = '%'
          Title.Color = clTeal
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object pnCabecera: TPanel
      Left = 1
      Top = 1
      Width = 643
      Height = 40
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 2
      object Label1: TLabel
        Left = 16
        Top = 11
        Width = 171
        Height = 19
        Caption = 'Total de compras del'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 336
        Top = 11
        Width = 171
        Height = 19
        Caption = 'Total de compras del'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pnMedio: TPanel
      Left = 1
      Top = 308
      Width = 643
      Height = 48
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      object lbTotal1: TLabel
        Left = 230
        Top = 16
        Width = 28
        Height = 16
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTotal2: TLabel
        Left = 547
        Top = 16
        Width = 28
        Height = 16
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RadioGroup1: TRadioGroup
        Left = 0
        Top = 6
        Width = 172
        Height = 35
        Caption = 'Periodo Para ver detalle'
        Columns = 2
        ItemIndex = 1
        Items.Strings = (
          'A'#241'o Anterior'
          'A'#241'o Actual')
        TabOrder = 0
        OnClick = RadioGroup1Click
      end
    end
  end
  object pnInferior: TPanel
    Left = 0
    Top = 357
    Width = 645
    Height = 293
    Align = alClient
    Color = clInactiveCaptionText
    ParentBackground = False
    TabOrder = 1
    ExplicitHeight = 284
    object DBGrid3: TDBGrid
      Left = 1
      Top = 23
      Width = 643
      Height = 239
      Align = alClient
      DataSource = DSDetallesTotales
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnMouseDown = DBGrid3MouseDown
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGOARTICULO'
          Title.Alignment = taCenter
          Title.Caption = 'Codigo'
          Title.Color = clYellow
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Title.Caption = 'Detalle'
          Title.Color = clYellow
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 283
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAL_CANT'
          Title.Alignment = taCenter
          Title.Caption = 'Cant.'
          Title.Color = clYellow
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAL_PROMEDIO'
          Title.Alignment = taCenter
          Title.Caption = '$ Promed.'
          Title.Color = clYellow
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAL_TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Title.Color = clYellow
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAL_INCIDENCIA'
          Title.Alignment = taCenter
          Title.Caption = '%'
          Title.Color = clYellow
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object pn1: TPanel
      Left = 1
      Top = 1
      Width = 643
      Height = 22
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      object Label3: TLabel
        Left = 15
        Top = 5
        Width = 198
        Height = 14
        Caption = 'Detalles de Articulos Comprados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pn2: TPanel
      Left = 1
      Top = 262
      Width = 643
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 2
      ExplicitTop = 171
      object Label4: TLabel
        Left = 416
        Top = 6
        Width = 76
        Height = 13
        Caption = 'Cambiar de A'#241'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 15
        Top = 6
        Width = 65
        Height = 13
        Caption = 'Netos Sin IVA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 552
        Top = 2
        Width = 23
        Height = 22
        Caption = '>>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 523
        Top = 2
        Width = 23
        Height = 22
        Caption = '<<'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
    end
  end
  object DSDetallesTotales: TDataSource
    DataSet = CDSDetallesTotales
    Left = 480
    Top = 456
  end
  object DSCompras_1: TDataSource
    DataSet = CDSCompras_1
    Left = 280
    Top = 168
  end
  object DSCompras_2: TDataSource
    DataSet = CDSCompras_2
    Left = 544
    Top = 176
  end
  object CDSCompras_1: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'grupo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCompras_1'
    OnCalcFields = CDSCompras_1CalcFields
    Left = 200
    Top = 168
    object CDSCompras_1ANIO: TIntegerField
      FieldName = 'ANIO'
      Origin = 'ANIO'
    end
    object CDSCompras_1MES: TIntegerField
      FieldName = 'MES'
      Origin = 'MES'
    end
    object CDSCompras_1CAL_INCIDENCIA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CAL_INCIDENCIA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSCompras_1TOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
    end
  end
  object DSPCompras_1: TDataSetProvider
    DataSet = QCompras_1
    Options = []
    Left = 120
    Top = 168
  end
  object DSPCompras_2: TDataSetProvider
    DataSet = QCompra_2
    Options = []
    Left = 416
    Top = 176
  end
  object CDSCompras_2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'grupo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCompras_2'
    OnCalcFields = CDSCompras_2CalcFields
    Left = 480
    Top = 176
    object CDSCompras_2ANIO: TIntegerField
      FieldName = 'ANIO'
      Origin = 'ANIO'
    end
    object CDSCompras_2MES: TIntegerField
      FieldName = 'MES'
      Origin = 'MES'
    end
    object CDSCompras_2CAL_INCIDENCIA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CAL_INCIDENCIA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSCompras_2TOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
    end
  end
  object DSPDetalleTotales: TDataSetProvider
    DataSet = QDetallesTotal
    Options = []
    Left = 176
    Top = 456
  end
  object CDSDetallesTotales: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'grupo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'grupo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDetalleTotales'
    OnCalcFields = CDSDetallesTotalesCalcFields
    Left = 320
    Top = 448
    object CDSDetallesTotalesTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Required = True
      Size = 2
    end
    object CDSDetallesTotalesCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      ProviderFlags = []
      Required = True
      Size = 8
    end
    object CDSDetallesTotalesDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 45
    end
    object CDSDetallesTotalesCOSTO_PROMEDIO: TFloatField
      FieldName = 'COSTO_PROMEDIO'
      Origin = 'COSTO_PROMEDIO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSDetallesTotalesCAL_INCIDENCIA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CAL_INCIDENCIA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSDetallesTotalesCAL_TOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CAL_TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSDetallesTotalesCAL_CANT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CAL_CANT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSDetallesTotalesCAL_PROMEDIO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CAL_PROMEDIO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSDetallesTotalesCANT: TFloatField
      FieldName = 'CANT'
      Origin = 'CANT'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSDetallesTotalesTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QZumaCompras_1: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select sum(Total) as total from OPERACIONES_POR_PROVEEDOR(:codig' +
        'o,:desde,:hasta,:grupo)')
    Left = 40
    Top = 88
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'GRUPO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QZumaCompras_1TOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QCompras_1: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from OPERACIONES_POR_PROVEEDOR(:codigo,:desde,:hasta,:g' +
        'rupo)')
    Left = 40
    Top = 176
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'grupo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QZumaCompras_2: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select sum(Total) as total from OPERACIONES_POR_PROVEEDOR(:codig' +
        'o,:desde,:hasta,:grupo)')
    Left = 360
    Top = 96
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'GRUPO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QZumaCompras_2TOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QCompra_2: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from OPERACIONES_POR_PROVEEDOR(:codigo,:desde,:hasta,:g' +
        'rupo)')
    Left = 360
    Top = 184
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'grupo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QDetallesTotal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select fd.tipocpbte, fd.codigoarticulo,fd.detalle,'
      
        '       sum(fd.cantidad) as Cant,(sum(fd.total)/sum(fd.cantidad))' +
        ' Costo_promedio,'
      ' sum(fd.total) as Total from  fccompdet fd'
      'left join fccompcab fc on fc.id_fc=fd.id_cabfac'
      'left join comprobantes c on c.letra=fc.letrafac and'
      
        '                                         c.tipo_comprob=fc.tipoc' +
        'pbte and'
      
        '                                         c.clase_comprob=fc.clas' +
        'ecpbte and'
      '                                         c.compra_venta='#39'C'#39' and'
      
        '                                         c.sucursal=fc.sucursalc' +
        'ompra'
      
        'where (fd.fechacompra between :desde and :hasta ) and ( fc.codig' +
        'o=:codigo ) and'
      
        '      ((c.id_comprobante in ( select icp.id_cpbte from tabla_cpb' +
        'te_cccomp_det icp where icp.id_cab= :grupo )) or ( :grupo = -1 )' +
        ')'
      'group by fd.tipocpbte, fd.codigoarticulo,fd.detalle'
      'ORDER BY 6 desc')
    Left = 80
    Top = 445
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'grupo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'grupo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
