object FrameCtaContable: TFrameCtaContable
  Left = 0
  Top = 0
  Width = 361
  Height = 58
  AutoSize = True
  Color = clBtnFace
  Padding.Left = 3
  Padding.Top = 3
  Padding.Bottom = 3
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  object pnBase: TPanel
    Left = 3
    Top = 3
    Width = 358
    Height = 52
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object dbtNombre: TDBText
      Left = 75
      Top = 22
      Width = 260
      Height = 17
      DataField = 'MUESTRACUENTA'
      DataSource = DSCtaContable
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 64
      Height = 13
      Caption = 'Cta.Contable'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ceCodigo: TJvDBComboEdit
      Left = 8
      Top = 18
      Width = 65
      Height = 23
      Margins.Left = 1
      Margins.Top = 1
      ClickKey = 0
      DataField = 'IDCUENTA'
      DataSource = DSCtaContable
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000A000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFC000003300000033000000FFC00000}
      ButtonWidth = 16
      TabOrder = 0
      OnButtonClick = ceCodigoButtonClick
      OnKeyDown = ceCodigoKeyDown
      OnKeyPress = ceCodigoKeyPress
    end
  end
  object CDSCtaContable: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'tabla'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SubIndice'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCtaContable'
    Left = 256
    Top = 128
    object CDSCtaContableIDCUENTA: TIntegerField
      FieldName = 'IDCUENTA'
      Origin = 'IDCUENTA'
      Required = True
    end
    object CDSCtaContableMUESTRACUENTA: TStringField
      FieldName = 'MUESTRACUENTA'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 40
    end
    object CDSCtaContableCODIGOELEMENTO: TStringField
      FieldName = 'CODIGOELEMENTO'
      Origin = 'CODIGOELEMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSCtaContableIDTABLA: TIntegerField
      FieldName = 'IDTABLA'
      Origin = 'IDTABLA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSPCtaContable: TDataSetProvider
    DataSet = QRelacionCtas
    Options = []
    Left = 136
    Top = 120
  end
  object DSCtaContable: TDataSource
    DataSet = CDSCtaContable
    Left = 360
    Top = 120
  end
  object DSPCtaContable_Comp: TDataSetProvider
    DataSet = QRelacionCtas_2
    Options = []
    Left = 144
    Top = 185
  end
  object CDSCtaContableCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'tabla'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SubIndice'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCtaContable_Comp'
    Left = 264
    Top = 185
    object CDSCtaContableCompraIDCUENTA: TIntegerField
      FieldName = 'IDCUENTA'
      Origin = 'IDCUENTA'
      Required = True
    end
    object CDSCtaContableCompraMUESTRACUENTA: TStringField
      FieldName = 'MUESTRACUENTA'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 40
    end
    object CDSCtaContableCompraCODIGOELEMENTO: TStringField
      FieldName = 'CODIGOELEMENTO'
      Origin = 'CODIGOELEMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSCtaContableCompraIDTABLA: TIntegerField
      FieldName = 'IDTABLA'
      Origin = 'IDTABLA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSCtaContableCompra: TDataSource
    DataSet = CDSCtaContableCompra
    Left = 368
    Top = 185
  end
  object QRelacionCtas: TFDQuery
    Connection = DMContable.fdcContables
    SQL.Strings = (
      
        'select r.idcuenta,c.descripcion as MuestraCuenta, r.codigoelemen' +
        'to,r.idtabla from asientoscuentasuso r'
      'left join tablasgestion t on t.id=r.idtabla'
      'left join asientoscuentas c on c.id=r.idcuenta'
      
        'where upper( t.tabla ) = upper ( :tabla ) and r.codigoelemento =' +
        ' :codigo and ((t.descripcion containing :SubIndice ))')
    Left = 48
    Top = 120
    ParamData = <
      item
        Position = 1
        Name = 'tabla'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'SubIndice'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QRelacionCtas_2: TFDQuery
    Connection = DMContable.fdcContables
    SQL.Strings = (
      
        'select r.idcuenta,c.descripcion as MuestraCuenta, r.codigoelemen' +
        'to,r.idtabla from asientoscuentasuso r'
      'left join tablasgestion t on t.id=r.idtabla'
      'left join asientoscuentas c on c.id=r.idcuenta'
      
        'where upper( t.tabla ) = upper ( :tabla ) and r.codigoelemento =' +
        ' :codigo and ((t.descripcion containing :SubIndice ))')
    Left = 48
    Top = 184
    ParamData = <
      item
        Position = 1
        Name = 'tabla'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'SubIndice'
        DataType = ftString
        ParamType = ptInput
      end>
  end
end
