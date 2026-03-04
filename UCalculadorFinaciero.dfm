object FormCalculadorFinanciero: TFormCalculadorFinanciero
  Left = 376
  Top = 45
  BorderIcons = [biSystemMenu]
  Caption = 'Calculador Fianciero'
  ClientHeight = 593
  ClientWidth = 655
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 601
    Height = 465
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 25
      Width = 235
      Height = 25
      Caption = 'Monto de la Operaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 16
      Top = 69
      Width = 561
      Height = 12
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 24
      Top = 97
      Width = 189
      Height = 25
      Caption = 'Monto de Anticipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 162
      Top = 400
      Width = 197
      Height = 29
      Caption = 'Total Financiado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 24
      Top = 167
      Width = 188
      Height = 25
      Caption = 'Monto a Financiar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 16
      Top = 149
      Width = 561
      Height = 12
      Shape = bsTopLine
    end
    object Label5: TLabel
      Left = 24
      Top = 233
      Width = 190
      Height = 25
      Caption = 'Tarjeta de Credito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 284
      Top = 233
      Width = 73
      Height = 25
      Caption = 'Cuotas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel3: TBevel
      Left = 16
      Top = 217
      Width = 561
      Height = 12
      Shape = bsTopLine
    end
    object Label7: TLabel
      Left = 211
      Top = 337
      Width = 139
      Height = 29
      Caption = 'Valor Cuota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel4: TBevel
      Left = 16
      Top = 319
      Width = 561
      Height = 12
      Shape = bsTopLine
    end
    object edMonto: TJvCalcEdit
      Left = 384
      Top = 24
      Width = 161
      Height = 31
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 0
      ZeroEmpty = False
      DecimalPlacesAlwaysShown = False
      OnChange = edMontoChange
    end
    object edAnticipo: TJvCalcEdit
      Left = 384
      Top = 96
      Width = 161
      Height = 33
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 1
      DecimalPlacesAlwaysShown = False
      OnChange = edAnticipoChange
    end
    object edFianaciar: TJvCalcEdit
      Left = 384
      Top = 167
      Width = 161
      Height = 33
      DisplayFormat = ',0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 2
      DisabledTextColor = clGreen
      DecimalPlacesAlwaysShown = False
    end
    object edTotalFianciado: TJvCalcEdit
      Left = 368
      Top = 397
      Width = 177
      Height = 37
      DisplayFormat = ',0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 7
      DisabledTextColor = clBlue
      DecimalPlacesAlwaysShown = False
    end
    object dbcTarjeta: TJvDBLookupCombo
      Left = 24
      Top = 264
      Width = 254
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      LookupField = 'ID_TC'
      LookupDisplay = 'DESCRIPCION'
      LookupSource = DSTarjeta
      ParentFont = False
      TabOrder = 3
      OnClick = dbcTarjetaClick
    end
    object edValorCuota: TJvCalcEdit
      Left = 368
      Top = 337
      Width = 177
      Height = 37
      DisplayFormat = ',0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 6
      DisabledTextColor = clBlue
      DecimalPlacesAlwaysShown = False
    end
    object dbcCuota: TJvDBLookupCombo
      Left = 284
      Top = 264
      Width = 94
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      LookupField = 'ID'
      LookupDisplay = 'CUOTAS'
      LookupSource = DSCoeficientes
      ParentFont = False
      TabOrder = 4
      OnChange = dbcCuotaChange
    end
    object edCoeficiente: TJvCalcEdit
      Left = 384
      Top = 264
      Width = 161
      Height = 31
      TabStop = False
      DisplayFormat = ',0.0000000'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 5
      DisabledTextColor = clRed
      DecimalPlacesAlwaysShown = False
      OnChange = edCoeficienteChange
    end
  end
  object CDSBuscaTCredito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaTCredito'
    Left = 160
    Top = 392
    object CDSBuscaTCreditoID_TC: TIntegerField
      FieldName = 'ID_TC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSBuscaTCreditoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object CDSBuscaTCreditoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object CDSBuscaTCreditoCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSBuscaTCreditoRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object DSPBuscaTCredito: TDataSetProvider
    DataSet = DMBuscadores.QBuscaTCredito
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 392
  end
  object DSTarjeta: TDataSource
    DataSet = CDSBuscaTCredito
    Left = 272
    Top = 392
  end
  object DSCoeficientes: TDataSource
    DataSet = QCoeficiente
    Left = 168
    Top = 496
  end
  object QCoeficiente: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.* from T_CREDITO_COEFICIENTES c where c.id_tc = :id_tc')
    Left = 88
    Top = 489
    ParamData = <
      item
        Name = 'ID_TC'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QCoeficienteID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCoeficienteID_TC: TIntegerField
      FieldName = 'ID_TC'
      Origin = 'ID_TC'
      Required = True
    end
    object QCoeficienteCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
      Origin = 'CUOTAS'
    end
    object QCoeficienteCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
      Origin = 'COEFICIENTE'
      Required = True
    end
  end
end
