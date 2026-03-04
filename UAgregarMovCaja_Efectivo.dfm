object FormAgregarMovCaja_Efectivo: TFormAgregarMovCaja_Efectivo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Agregar MovCaja Efectivo'
  ClientHeight = 422
  ClientWidth = 653
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnBas: TPanel
    Left = 0
    Top = 41
    Width = 653
    Height = 333
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 278
    object Label1: TLabel
      Left = 11
      Top = 13
      Width = 121
      Height = 23
      Caption = 'Caja Destino'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 11
      Top = 68
      Width = 48
      Height = 23
      Caption = 'Debe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 11
      Top = 116
      Width = 57
      Height = 23
      Caption = 'Haber'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 11
      Top = 176
      Width = 55
      Height = 23
      Caption = 'Fecha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbcCajaDestino: TDBLookupComboBox
      Left = 159
      Top = 11
      Width = 275
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'ID_CUENTA_CAJA'
      ListField = 'MUESTRACTACAJA'
      NullValueKey = 46
      ParentFont = False
      TabOrder = 0
    end
    object edDebe: TJvCalcEdit
      Left = 313
      Top = 74
      Width = 121
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 1
      DecimalPlacesAlwaysShown = False
    end
    object edHaber: TJvCalcEdit
      Left = 313
      Top = 115
      Width = 121
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 2
      DecimalPlacesAlwaysShown = False
    end
    object edFecha: TDateTimePicker
      Left = 313
      Top = 176
      Width = 121
      Height = 21
      Date = 44712.000000000000000000
      Time = 0.324521342590742300
      TabOrder = 3
    end
  end
  object pnCab: TPanel
    Left = 0
    Top = 0
    Width = 653
    Height = 41
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
  end
  object pnPie: TPanel
    Left = 0
    Top = 374
    Width = 653
    Height = 48
    Align = alBottom
    Color = clMenuHighlight
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 319
    object btOk: TBitBtn
      Left = 516
      Top = 6
      Width = 131
      Height = 36
      Align = alRight
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btOkClick
    end
  end
  object spAgregarMovCaja: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'AGREGAR_MOV_CAJA_EFECTIVO'
    Left = 496
    Top = 241
    ParamData = <
      item
        Position = 1
        Name = 'ID_CPBTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'TIPO_COMPROB'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 3
        Name = 'CLASE_COMPROB'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 4
        Name = 'NROCPBTE'
        DataType = ftString
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 5
        Name = 'ID_CUENTA_CAJA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'FECHA_MOVIMIENTO'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'DEBE'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'HABER'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'TIPOOPERACION'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 10
        Name = 'FPAGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QCtaCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cc.*, cta.nombre as MuestraCtaCaja from Caja_cab cc'
      'left join cuenta_caja cta on cta.id_cuenta=cc.id_cuenta_caja'
      'where cc.estado=0')
    Left = 56
    Top = 329
  end
  object DSPCtaCaja: TDataSetProvider
    DataSet = QCtaCaja
    Options = []
    Left = 128
    Top = 328
  end
  object CDSCajaDestino: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCtaCaja'
    Left = 200
    Top = 328
    object IntegerField1: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'FECHA_INCIO'
      Origin = 'FECHA_INCIO'
      Required = True
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'FECHA_CIERRE'
      Origin = 'FECHA_CIERRE'
    end
    object CDSCajaDestinoSALDO_INCIAL: TFloatField
      FieldName = 'SALDO_INCIAL'
      Origin = 'SALDO_INCIAL'
    end
    object IntegerField3: TIntegerField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
    end
    object MemoField1: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object IntegerField4: TIntegerField
      FieldName = 'NUMEROCAJA'
      Origin = 'NUMEROCAJA'
    end
    object StringField1: TStringField
      FieldName = 'MUESTRACTACAJA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
  end
  object DSCajaDestino: TDataSource
    DataSet = CDSCajaDestino
    Left = 288
    Top = 328
  end
end
