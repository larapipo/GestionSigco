object FormMatafuego: TFormMatafuego
  Left = 0
  Top = 0
  Caption = 'Datos Matafuegos'
  ClientHeight = 195
  ClientWidth = 535
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 535
    Height = 154
    Align = alClient
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 10
      Width = 127
      Height = 16
      Caption = 'Numero de Matafuego'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 192
      Top = 10
      Width = 40
      Height = 16
      Caption = 'Agente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 360
      Top = 10
      Width = 59
      Height = 16
      Caption = 'Capacidad'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 24
      Top = 77
      Width = 103
      Height = 16
      Caption = 'Fecha Fabricacion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 192
      Top = 77
      Width = 35
      Height = 16
      Caption = 'Marca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edNumero: TEdit
      Left = 24
      Top = 32
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'edNumero'
    end
    object edAgente: TEdit
      Left = 192
      Top = 32
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'EDAGENTE'
    end
    object edMarca: TEdit
      Left = 192
      Top = 96
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = 'EDMARCA'
    end
    object edFechaFabricacion: TDatePicker
      Left = 24
      Top = 99
      Width = 113
      Height = 21
      Date = 44668.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TabOrder = 3
    end
    object edCapacidad: TJvCalcEdit
      Left = 360
      Top = 32
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
  end
  object pnPie: TPanel
    Left = 0
    Top = 154
    Width = 535
    Height = 41
    Align = alBottom
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 1
    object btOk: TBitBtn
      Left = 416
      Top = 6
      Width = 113
      Height = 29
      Align = alRight
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btOkClick
    end
    object btCancelar: TBitBtn
      Left = 306
      Top = 6
      Width = 110
      Height = 29
      Align = alRight
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btCancelarClick
    end
  end
  object QMatafuego: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select m.id,m.numero_matafuego,m.agente,m.capacidad,m.fecha_fabi' +
        'cacion,m.marca from productos_matafuegos m where m.id=:id')
    Left = 479
    Top = 215
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QMatafuegoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMatafuegoNUMERO_MATAFUEGO: TStringField
      FieldName = 'NUMERO_MATAFUEGO'
      Origin = 'NUMERO_MATAFUEGO'
    end
    object QMatafuegoAGENTE: TStringField
      FieldName = 'AGENTE'
      Origin = 'AGENTE'
      Size = 30
    end
    object QMatafuegoCAPACIDAD: TFloatField
      FieldName = 'CAPACIDAD'
      Origin = 'CAPACIDAD'
    end
    object QMatafuegoFECHA_FABICACION: TSQLTimeStampField
      FieldName = 'FECHA_FABICACION'
      Origin = 'FECHA_FABICACION'
    end
    object QMatafuegoMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 30
    end
  end
  object spAltaMatafuego: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end>
    StoredProcName = 'ABM_MATAFUEGO'
    Left = 192
    Top = 144
    ParamData = <
      item
        Position = 1
        Name = 'NUMERO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 2
        Name = 'AGENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 3
        Name = 'CAPACIDAD'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'FECHAFABRICACION'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'MARCA'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 6
        Name = 'ID_MATAFUEGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptOutput
      end>
  end
end
