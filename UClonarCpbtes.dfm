object FormClonarCpbtes: TFormClonarCpbtes
  Left = 344
  Top = 185
  Caption = 'Clonar Comprobantes'
  ClientHeight = 304
  ClientWidth = 515
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
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 489
    Height = 201
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 93
      Width = 180
      Height = 23
      Caption = 'Sucursal de Origen'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 7
      Top = 32
      Width = 189
      Height = 23
      Caption = 'Sucursal de Destino'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbcOrigen: TJvDBLookupCombo
      Left = 218
      Top = 93
      Width = 217
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'CODIGO'
      LookupDisplay = 'DETALLE'
      LookupSource = DSSucOrigen
      ParentFont = False
      TabOrder = 0
    end
    object dbcDestino: TJvDBLookupCombo
      Left = 218
      Top = 32
      Width = 217
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'CODIGO'
      LookupDisplay = 'DETALLE'
      LookupSource = DSSucDestino
      ParentFont = False
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 360
      Top = 160
      Width = 83
      Height = 33
      Caption = 'Clonar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      ModalResult = 6
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object CDSSucOrigen: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 192
    Top = 152
    object CDSSucOrigenCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSSucOrigenDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Left = 104
    Top = 184
  end
  object CDSSucDestino: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 192
    Top = 224
    object CDSSucDestinoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSSucDestinoDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object DSSucDestino: TDataSource
    DataSet = CDSSucDestino
    Left = 288
    Top = 224
  end
  object DSSucOrigen: TDataSource
    DataSet = CDSSucOrigen
    Left = 288
    Top = 152
  end
  object spClonar: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CLONAR_CPBTES'
    Left = 456
    Top = 232
    ParamData = <
      item
        Position = 1
        Name = 'SUCURSAL_ORIG'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'SUCURSAL_DEST'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
