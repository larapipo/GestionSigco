object FormCotizacion: TFormCotizacion
  Left = 123
  Top = 193
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cotizaci'#243'n de Moneda'
  ClientHeight = 446
  ClientWidth = 688
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
  OnShow = FormShow
  TextHeight = 13
  object pn1: TPanel
    Left = 55
    Top = 45
    Width = 306
    Height = 156
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object JvGradient1: TJvGradient
      Left = 1
      Top = 1
      Width = 304
      Height = 144
      Align = alTop
      Style = grVertical
      StartColor = clWhite
      EndColor = clGradientInactiveCaption
      ExplicitWidth = 277
    end
    object lb1: TLabel
      Left = 10
      Top = 11
      Width = 139
      Height = 16
      Caption = 'Ingrese la Cotizaci'#243'n '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbMoneda: TLabel
      Left = 160
      Top = 11
      Width = 51
      Height = 16
      Caption = 'moneda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb2: TLabel
      Left = 44
      Top = 34
      Width = 83
      Height = 16
      Caption = 'En la Compra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb3: TLabel
      Left = 177
      Top = 34
      Width = 57
      Height = 16
      Caption = 'En la Vta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btIgnore: TBitBtn
      Left = 101
      Top = 101
      Width = 75
      Height = 25
      Kind = bkIgnore
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btIgnoreClick
    end
    object btOk: TBitBtn
      Left = 182
      Top = 101
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btOkClick
    end
    object edtVta: TJvValidateEdit
      Left = 177
      Top = 56
      Width = 81
      Height = 24
      Flat = False
      ParentFlat = False
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 3
      EditText = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edtCompra: TJvValidateEdit
      Left = 46
      Top = 56
      Width = 81
      Height = 24
      Flat = False
      ParentFlat = False
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 3
      EditText = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object DSMoneda: TDataSource
    DataSet = QMoneda
    Left = 436
    Top = 188
  end
  object QMoneda: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from monedas m where m.id=:id ')
    Left = 528
    Top = 120
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QMonedaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMonedaMONEDA: TStringField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Size = 15
    end
    object QMonedaCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QMonedaSIGNO: TStringField
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      Size = 5
    end
    object QMonedaORDEN: TSmallintField
      FieldName = 'ORDEN'
      Origin = 'ORDEN'
      Required = True
    end
    object QMonedaCOTIZACION_COMPRA: TFloatField
      FieldName = 'COTIZACION_COMPRA'
      Origin = 'COTIZACION_COMPRA'
    end
  end
  object spActualizar: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ACTUALIZA_COTIZACION_MONEDA'
    Left = 528
    Top = 224
    ParamData = <
      item
        Position = 1
        Name = 'MONEDA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'COTIZACION'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'COMPRA_VENTA'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end>
  end
end
