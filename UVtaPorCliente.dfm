inherited FormVtaClienteProducto: TFormVtaClienteProducto
  Left = 204
  Top = 106
  Caption = 'Análisis de Vtas de Clientes x Productos'
  ClientHeight = 585
  ClientWidth = 628
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 628
    Height = 505
    object RxLabel3: TRxLabel
      Left = 176
      Top = 3
      Width = 103
      Height = 13
      Caption = 'Período selecionado:'
    end
    object RxLabel1: TRxLabel
      Left = 288
      Top = 3
      Width = 33
      Height = 13
      Caption = 'Desde'
    end
    object RxLabel2: TRxLabel
      Left = 288
      Top = 42
      Width = 30
      Height = 13
      Caption = 'Hasta'
    end
    object RxLabel4: TRxLabel
      Left = 8
      Top = 3
      Width = 34
      Height = 13
      Caption = 'Cliente'
    end
    object RxLabel5: TRxLabel
      Left = 377
      Top = 252
      Width = 64
      Height = 13
      Caption = 'Importe Total'
    end
    object ceCliente: TComboEdit
      Left = 8
      Top = 19
      Width = 73
      Height = 21
      ClickKey = 16397
      GlyphKind = gkEllipsis
      ButtonWidth = 16
      NumGlyphs = 1
      TabOrder = 0
      OnButtonClick = BuscarClienteExecute
      OnKeyPress = ceClienteKeyPress
    end
    object edNombreCliente: TEdit
      Left = 8
      Top = 51
      Width = 257
      Height = 21
      Color = clInfoBk
      Enabled = False
      TabOrder = 1
    end
    object Desde: TDateEdit
      Left = 288
      Top = 19
      Width = 95
      Height = 21
      NumGlyphs = 2
      YearDigits = dyFour
      TabOrder = 2
    end
    object Hasta: TDateEdit
      Left = 288
      Top = 58
      Width = 98
      Height = 21
      NumGlyphs = 2
      YearDigits = dyFour
      TabOrder = 3
    end
    object wwDBGrid1: TwwDBGrid
      Left = 8
      Top = 83
      Width = 555
      Height = 153
      TabStop = False
      Selected.Strings = (
        'CODIGOARTICULO'#9'8'#9'Codigo'
        'DETALLE'#9'45'#9'Detalle'
        'CANT'#9'10'#9'Cantidad'
        'SUM'#9'10'#9'Importe'
        'porcentaje'#9'10'#9'%')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DSVtaCliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = True
      OnTitleButtonClick = wwDBGrid1TitleButtonClick
    end
    object DBChart1: TDBChart
      Left = 0
      Top = 275
      Width = 625
      Height = 225
      BackWall.Brush.Color = clWhite
      MarginBottom = 0
      MarginLeft = 0
      MarginRight = 0
      MarginTop = 0
      Title.Text.Strings = (
        'Grafico por Cantidad')
      Chart3DPercent = 10
      LeftAxis.Logarithmic = True
      Legend.Visible = False
      MaxPointsPerPage = 9
      View3DOptions.Elevation = 315
      View3DOptions.Perspective = 0
      View3DOptions.Rotation = 360
      View3DOptions.Zoom = 99
      TabOrder = 5
      object Series1: TBarSeries
        ColorEachPoint = True
        Marks.ArrowLength = 8
        Marks.Visible = True
        DataSource = Query1
        SeriesColor = clRed
        XLabelsSource = 'CODIGOARTICULO'
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Bar'
        YValues.Multiplier = 1
        YValues.Order = loNone
        YValues.ValueSource = 'CANT'
      end
      object Series2: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = True
        DataSource = Query1
        SeriesColor = clGreen
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1
        YValues.Order = loNone
        YValues.ValueSource = 'SUM'
      end
    end
    object ceSumaTotal: TCurrencyEdit
      Left = 448
      Top = 246
      Width = 97
      Height = 21
      TabStop = False
      AutoSize = False
      TabOrder = 6
    end
    object TrackBar: TTrackBar
      Left = 8
      Top = 242
      Width = 329
      Height = 29
      Orientation = trHorizontal
      Frequency = 1
      Position = 0
      SelEnd = 0
      SelStart = 0
      TabOrder = 7
      TabStop = False
      TickMarks = tmBoth
      TickStyle = tsAuto
      OnChange = TrackBarChange
    end
  end
  inherited ToolBar1: TToolBar
    Top = 505
    Width = 628
    inherited btNuevo: TBitBtn
      Visible = False
    end
    inherited btCancelar: TBitBtn
      Visible = False
    end
    inherited btModificar: TBitBtn
      Visible = False
    end
    inherited btBuscar: TBitBtn
      Visible = False
    end
    inherited btBorrar: TBitBtn
      Visible = False
    end
  end
  inherited Panel1: TPanel
    Top = 539
    Width = 628
  end
  object GroupBox1: TGroupBox [3]
    Left = 424
    Top = 8
    Width = 145
    Height = 65
    Caption = 'Series'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object PorCantidad: TCheckBox
      Left = 24
      Top = 16
      Width = 97
      Height = 17
      Action = MostrarSeries
      Caption = 'Por Canitdad'
      Checked = True
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      State = cbChecked
      TabOrder = 0
    end
    object PorImporte: TCheckBox
      Left = 24
      Top = 33
      Width = 97
      Height = 17
      Action = MostrarSeries
      Caption = 'Por Importe'
      Checked = True
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      State = cbChecked
      TabOrder = 1
    end
  end
  inherited ActionList1: TActionList
    object BuscarCliente: TAction
      Caption = 'BuscarCliente'
      OnExecute = BuscarClienteExecute
    end
    object MostrarSeries: TAction
      Caption = 'MostrarSeries'
      OnExecute = MostrarSeriesExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 368
    Top = 120
  end
  inherited QUltimoCodigo: TQuery
    Left = 48
    Top = 344
  end
  inherited wwBuscador: TwwLookupDialog
    Left = 536
    Top = 0
  end
  inherited MPSAutoSize1: TMPSAutoSize
    Left = 320
  end
  object QVtaCliente: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      
        'select d.codigoArticulo,d.detalle,Sum(d.cantidad) as cant,sum(d.' +
        'total) from fcvtadet d'
      
        'join fcvtacab c on c.codigo=:codigo and C.anulado='#39'N'#39' and c.id_f' +
        'c=d.id_cabfac'
      
        '                and c.tipocpbte<>'#39'NC'#39'  and c.tipocpbte<>'#39'ND'#39'  an' +
        'd c.fechavta>=:desde and c.fechavta<=:hasta'
      'group by d.codigoArticulo,d.detalle'
      ' ')
    Left = 136
    Top = 256
    ParamData = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'hasta'
        ParamType = ptUnknown
      end>
  end
  object DSPVtaCliente: TDataSetProvider
    DataSet = QVtaCliente
    Constraints = True
    Left = 226
    Top = 259
  end
  object CDSVtaCliente: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGOARTICULO'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'DETALLE'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'CANT'
        DataType = ftFloat
      end
      item
        Name = 'SUM'
        DataType = ftFloat
      end
      item
        Name = 'porcentaje'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'CANT'
        Fields = 'CANT'
        Options = [ixDescending]
      end
      item
        Name = 'SUM'
        Fields = 'SUM'
        Options = [ixDescending]
      end>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'hasta'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPVtaCliente'
    StoreDefs = True
    OnCalcFields = CDSVtaClienteCalcFields
    Left = 376
    Top = 234
    object CDSVtaClienteCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 8
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSVtaClienteDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 45
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSVtaClienteCANT: TFloatField
      DisplayLabel = 'Cantidad'
      DisplayWidth = 10
      FieldName = 'CANT'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object CDSVtaClienteSUM: TFloatField
      DisplayLabel = 'Importe'
      DisplayWidth = 10
      FieldName = 'SUM'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object CDSVtaClienteporcentaje: TFloatField
      DisplayLabel = '%'
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'porcentaje'
      ProviderFlags = []
      DisplayFormat = '% ##0.00'
      EditFormat = '% ##0.00'
    end
  end
  object DSVtaCliente: TDataSource
    DataSet = CDSVtaCliente
    Left = 418
    Top = 211
  end
  object QClientes: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      
        'SELECT C.Nombre, c.Razon_social,c.codigo, c.nro_de_cuit , c.Dire' +
        'ccion_Comercial, p.telediscado FROM Clientes C '
      'left join c_postal p on c.id_cod_postal=p.id_postal'
      'where (C.Activo='#39'S'#39')'
      'Order By c.Nombre')
    Left = 142
    Top = 396
    object QClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object QClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object QClientesNRO_DE_CUIT: TStringField
      FieldName = 'NRO_DE_CUIT'
      Size = 13
    end
    object QClientesDIRECCION_COMERCIAL: TStringField
      DisplayWidth = 35
      FieldName = 'DIRECCION_COMERCIAL'
      Visible = False
      Size = 35
    end
    object QClientesTELEDISCADO: TStringField
      DisplayWidth = 6
      FieldName = 'TELEDISCADO'
      Visible = False
      Size = 6
    end
  end
  object DSPClientes: TDataSetProvider
    DataSet = DMMain.wwQClientes
    Constraints = True
    Left = 160
    Top = 16
  end
  object CDSClientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPClientes'
    Left = 224
    Top = 16
    object CDSClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSClientesDIRECCION_PARTICULAR: TStringField
      FieldName = 'DIRECCION_PARTICULAR'
      Size = 35
    end
    object CDSClientesDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object CDSClientesTELEFONO_PARTICULAR: TStringField
      FieldName = 'TELEFONO_PARTICULAR'
      Size = 10
    end
    object CDSClientesTELEFONO_COMERCIAL_1: TStringField
      FieldName = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object CDSClientesTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object CDSClientesTELEFONO_CELULAR: TStringField
      FieldName = 'TELEFONO_CELULAR'
      Size = 11
    end
    object CDSClientesID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
    end
    object CDSClientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSClientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSClientesCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
    end
    object CDSClientesEMITE_REMITO: TStringField
      FieldName = 'EMITE_REMITO'
      Size = 1
    end
    object CDSClientesEMITE_FACTURA: TStringField
      FieldName = 'EMITE_FACTURA'
      Size = 1
    end
    object CDSClientesNRO_DE_CUIT: TStringField
      FieldName = 'NRO_DE_CUIT'
      Size = 13
    end
    object CDSClientesACTIVO: TStringField
      FieldName = 'ACTIVO'
      Size = 1
    end
    object CDSClientesLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object CDSClientesSALDOINICIAL: TFloatField
      FieldName = 'SALDOINICIAL'
    end
    object CDSClientesOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object CDSClientesFECHAULTIMACOMPRA: TDateTimeField
      FieldName = 'FECHAULTIMACOMPRA'
    end
    object CDSClientesFECHAALTA: TDateTimeField
      FieldName = 'FECHAALTA'
    end
    object CDSClientesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSClientesZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object CDSClientesMUESTRATELEDISCADO: TStringField
      FieldName = 'MUESTRATELEDISCADO'
      Size = 6
    end
  end
  object wwBuscadorCliente: TwwLookupDialog
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = QClientes
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 424
    Top = 144
  end
  object Query1: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      
        'select d.codigoArticulo,Sum(d.cantidad) as cant,sum(d.total) fro' +
        'm fcvtadet d'
      
        'join fcvtacab c on c.codigo=:codigo and C.anulado='#39'N'#39' and c.id_f' +
        'c=d.id_cabfac'
      
        '                and c.tipocpbte<>'#39'NC'#39'  and c.tipocpbte<>'#39'ND'#39'  an' +
        'd c.fechavta>=:desde and c.fechavta<=:hasta'
      'group by d.codigoArticulo')
    Left = 224
    Top = 456
    ParamData = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'hasta'
        ParamType = ptUnknown
      end>
  end
  object QSumaGeneral: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select Sum(d.cantidad) as cant,sum(d.total) from fcvtadet d'
      
        'join fcvtacab c on c.codigo=:codigo and C.anulado='#39'N'#39' and c.id_f' +
        'c=d.id_cabfac'
      
        '      and c.tipocpbte<>'#39'NC'#39'  and c.tipocpbte<>'#39'ND'#39'  and c.fechav' +
        'ta>=:desde and c.fechavta<=:hasta'
      '')
    Left = 144
    Top = 184
    ParamData = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'hasta'
        ParamType = ptUnknown
      end>
  end
end
