object FormCambiaBcoTx: TFormCambiaBcoTx
  Left = 0
  Top = 0
  Caption = 'Cambia Bco. en Tx'
  ClientHeight = 299
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 463
    Height = 299
    Align = alClient
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 14
      Width = 234
      Height = 25
      Caption = 'Cuenta Bancaria Original'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 126
      Width = 219
      Height = 25
      Caption = 'Cuenta Bancaria Nueva'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edOrigen: TEdit
      Left = 12
      Top = 45
      Width = 441
      Height = 33
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'edOrigen'
    end
    object btOk: TBitBtn
      Left = 273
      Top = 245
      Width = 180
      Height = 35
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = btOkClick
    end
    object btCancel: TBitBtn
      Left = 12
      Top = 245
      Width = 180
      Height = 35
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
    end
    object dbcCuenta: TDBLookupComboBox
      Left = 12
      Top = 157
      Width = 441
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'ID_CUENTA'
      ListField = 'NOMBRE'
      ListSource = DSCtaBco
      ParentFont = False
      TabOrder = 3
    end
  end
  object QCtaBco: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_cuenta, c.nombre, c.nro_cuenta from cuenta_caja c wh' +
        'ere c.id_tipo_cta=2')
    Left = 64
    Top = 216
  end
  object DSCtaBco: TDataSource
    DataSet = CDSCtaBco
    Left = 408
    Top = 112
  end
  object CDSCtaBco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCtaBco'
    Left = 240
    Top = 208
  end
  object DSPCtaBco: TDataSetProvider
    DataSet = QCtaBco
    Left = 152
    Top = 224
  end
  object spCambiarCta: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CAMBIA_CTA_BCO_TX'
    Left = 496
    Top = 224
    ParamData = <
      item
        Position = 1
        Name = 'ID_CTA_BCO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID_MOV'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'ORIGEN'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end>
  end
end
