object FormCambioCodigoCliente: TFormCambioCodigoCliente
  Left = 427
  Top = 136
  Caption = 'cambio de Codigo Cliente'
  ClientHeight = 575
  ClientWidth = 420
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pn1: TPanel
    Left = 0
    Top = 0
    Width = 420
    Height = 303
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object lb2: TLabel
      Left = 21
      Top = 42
      Width = 86
      Height = 14
      Caption = 'Codigo Actual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb3: TLabel
      Left = 219
      Top = 42
      Width = 191
      Height = 14
      Caption = 'Nuevo Codigo(F12-Busca Libre)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btn4: TSpeedButton
      Left = 353
      Top = 63
      Width = 23
      Height = 22
      Hint = 'Verificar el Codigo si esta en uso'
      Action = Verificar
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF4A667C
        BE9596FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF6B9CC31E89E84B7AA3C89693FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4BB4FE51B5FF
        2089E94B7AA2C69592FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF51B7FE51B3FF1D87E64E7AA0CA9792FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        51B7FE4EB2FF1F89E64E7BA2B99497FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF52B8FE4BB1FF2787D95F6A76FF
        00FFB0857FC09F94C09F96BC988EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF55BDFFB5D6EDBF9D92BB9B8CE7DAC2FFFFE3FFFFE5FDFADAD8C3
        B3B58D85FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCEA795FD
        EEBEFFFFD8FFFFDAFFFFDBFFFFE6FFFFFBEADDDCAE837FFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFC1A091FBDCA8FEF7D0FFFFDBFFFFE3FFFFF8FFFF
        FDFFFFFDC6A99CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC1A091FEE3ACF1
        C491FCF2CAFFFFDDFFFFE4FFFFF7FFFFF7FFFFE9EEE5CBB9948CFF00FFFF00FF
        FF00FFFF00FFFF00FFC2A191FFE6AEEEB581F7DCAEFEFDD8FFFFDFFFFFE3FFFF
        E4FFFFE0F3ECD2BB968EFF00FFFF00FFFF00FFFF00FFFF00FFBC978CFBE7B7F4
        C791F2C994F8E5B9FEFCD8FFFFDDFFFFDCFFFFE0E2D2BAB68E86FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFD9C3A9FFFEE5F7DCB8F2C994F5D4A5FAE8BDFDF4
        C9FDFBD6B69089FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB58D85E8
        DEDDFFFEF2F9D8A3F4C48CF9D49FFDEAB8D0B49FB89086FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFAD827FC9AA9EEFE0B7EFDFB2E7CEACB890
        86B89086FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFBA968ABB988CB79188FF00FFFF00FFFF00FFFF00FF}
    end
    object lb5: TLabel
      Left = 219
      Top = 91
      Width = 163
      Height = 39
      Caption = 
        'Poner el Codigo y luego Verificarlo'#13#10'Si es Valido se habilitara ' +
        'el boton'#13#10'CAMBIAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object pn2: TPanel
      Left = 1
      Top = 175
      Width = 418
      Height = 127
      Align = alBottom
      BevelOuter = bvNone
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 0
      object lb4: TLabel
        Left = 14
        Top = 6
        Width = 361
        Height = 78
        Caption = 
          'Este procedimiento se debe hacer , cuando no haya opreaciones en' +
          ' curso. '#13#10'El mismo desactiva los eventos de la Base de datos y e' +
          'sto hace que no se '#13#10'produzcan los eventos de actualizaci'#243'n entr' +
          'e las tablas. '#13#10'Puede causar inconsistencia de datos. '#13#10'Por ello' +
          ' se debe hacer con el consentimento de los usuarios de que nadie' +
          ' '#13#10'este operando'
      end
      object lbEstado: TLabel
        Left = 14
        Top = 103
        Width = 42
        Height = 14
        Caption = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pn3: TPanel
      Left = 1
      Top = 1
      Width = 418
      Height = 35
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      object lb1: TLabel
        Left = 14
        Top = 10
        Width = 157
        Height = 14
        Caption = 'Cambio de Codigo Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pn4: TPanel
      Left = 1
      Top = 136
      Width = 418
      Height = 39
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      ParentBackground = False
      TabOrder = 2
      object btn1: TButton
        Left = 222
        Top = 3
        Width = 193
        Height = 33
        Action = Salir
        Align = alRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ModalResult = 2
        ParentFont = False
        TabOrder = 0
      end
      object btn3: TButton
        Left = 3
        Top = 3
        Width = 193
        Height = 33
        Action = Cambiar
        Align = alLeft
        Default = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ModalResult = 1
        ParentFont = False
        TabOrder = 1
      end
    end
    object ed1: TEdit
      Left = 21
      Top = 63
      Width = 121
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = 'ed1'
    end
    object ed2: TEdit
      Left = 219
      Top = 62
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 4
      OnEnter = ed2Enter
      OnExit = ed2Exit
      OnKeyDown = ed2KeyDown
      OnKeyPress = ed2KeyPress
    end
  end
  object actlst1: TActionList
    Left = 330
    Top = 316
    object Verificar: TAction
      OnExecute = VerificarExecute
    end
    object Cambiar: TAction
      Caption = 'Cambiar'
      Enabled = False
      OnExecute = CambiarExecute
    end
    object BuscadoCodigoFree: TAction
      Caption = 'BuscadoCodigoFree'
      OnExecute = BuscadoCodigoFreeExecute
    end
    object Salir: TAction
      Caption = 'Salir'
      OnExecute = SalirExecute
    end
  end
  object QCliente: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo from clientes where codigo=:codigo')
    Left = 56
    Top = 320
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QClienteCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
  end
  object QTrigerInactivosFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select rdb$trigger_name,rdb$trigger_inactive from rdb$triggers'
      '    where rdb$flags=1 and rdb$trigger_inactive=1')
    Left = 56
    Top = 432
    object QTrigerInactivosFDRDBTRIGGER_NAME: TWideStringField
      FieldName = 'RDB$TRIGGER_NAME'
      Origin = 'RDB$TRIGGER_NAME'
      FixedChar = True
      Size = 67
    end
    object QTrigerInactivosFDRDBTRIGGER_INACTIVE: TSmallintField
      FieldName = 'RDB$TRIGGER_INACTIVE'
      Origin = 'RDB$TRIGGER_INACTIVE'
    end
  end
  object QNombreTriggersFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select rdb$trigger_name,rdb$trigger_inactive from rdb$triggers'
      '    where rdb$flags=1')
    Left = 48
    Top = 504
    object QNombreTriggersFDRDBTRIGGER_NAME: TWideStringField
      FieldName = 'RDB$TRIGGER_NAME'
      Origin = 'RDB$TRIGGER_NAME'
      FixedChar = True
      Size = 67
    end
    object QNombreTriggersFDRDBTRIGGER_INACTIVE: TSmallintField
      FieldName = 'RDB$TRIGGER_INACTIVE'
      Origin = 'RDB$TRIGGER_INACTIVE'
    end
  end
  object QDriveTriggerFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'ALTER TRIGGER TAI_FCVTACAB INACTIVE')
    Left = 88
    Top = 488
  end
  object spcambiaCodigoFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CAMBIAR_CODIGO_CLIENTE'
    Left = 312
    Top = 392
    ParamData = <
      item
        Position = 1
        Name = 'CODIGONEW'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 2
        Name = 'CODIGOOLD'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
  end
  object QCodigoFree: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from buscar_codigo_free')
    Left = 176
    Top = 320
    object QCodigoFreeNEWCODIGO: TIntegerField
      FieldName = 'NEWCODIGO'
      Origin = 'NEWCODIGO'
    end
  end
end
