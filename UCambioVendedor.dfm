object FormCambioVendedor: TFormCambioVendedor
  Left = 280
  Top = 187
  Caption = 'Cambiar Vendero/Cobrador'
  ClientHeight = 605
  ClientWidth = 509
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
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 509
    Height = 361
    Align = alTop
    TabOrder = 0
    object JvGradient2: TJvGradient
      Left = 1
      Top = 97
      Width = 507
      Height = 263
      Style = grVertical
      StartColor = clGradientInactiveCaption
      EndColor = clWhite
      ExplicitLeft = 0
      ExplicitTop = 98
      ExplicitWidth = 492
    end
    object lbNuevo: TLabel
      Left = 23
      Top = 116
      Width = 257
      Height = 23
      Caption = 'Vendedor/Cobrador Nuevo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object JvLabel1: TJvLabel
      Left = 23
      Top = 184
      Width = 68
      Height = 23
      Caption = 'Motivo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -19
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object pnCab: TPanel
      Left = 1
      Top = 1
      Width = 507
      Height = 96
      Margins.Left = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alTop
      Enabled = False
      TabOrder = 0
      object JvGradient1: TJvGradient
        Left = 1
        Top = 1
        Width = 505
        Height = 94
        Style = grVertical
        StartColor = clGradientInactiveCaption
        EndColor = clWhite
        ExplicitLeft = 2
        ExplicitTop = -4
        ExplicitWidth = 490
      end
      object lbActual: TLabel
        Left = 15
        Top = 9
        Width = 256
        Height = 23
        Caption = 'Vendedor/Cobrador Actual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbcVendedorOld: TDBLookupComboBox
        Left = 22
        Top = 38
        Width = 287
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'CODIGO'
        ListField = 'NOMBRE'
        ListSource = DSVendedorOld
        ParentFont = False
        TabOrder = 0
      end
    end
    object btOk: TBitBtn
      Left = 347
      Top = 283
      Width = 134
      Height = 46
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnClick = btOkClick
    end
    object btCancelar: TBitBtn
      Left = 216
      Top = 283
      Width = 125
      Height = 46
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
    end
    object dbcVendedorNew: TDBLookupComboBox
      Left = 23
      Top = 141
      Width = 287
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'NOMBRE'
      ListSource = DSVendedorNew
      ParentFont = False
      TabOrder = 1
    end
    object dbcMotivo: TDBLookupComboBox
      Left = 23
      Top = 213
      Width = 458
      Height = 27
      DataField = 'ID_MOTIVO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'ID'
      ListField = 'DETALLE'
      ListSource = DSMotivo
      ParentFont = False
      TabOrder = 4
    end
  end
  object CDSVendedorOld: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPVendedor'
    Left = 248
    Top = 280
    object CDSVendedorOldCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSVendedorOldNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
  end
  object CDSVendedorNew: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPVendedor'
    Left = 256
    Top = 368
    object CDSVendedorNewCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSVendedorNewNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
  end
  object DSVendedorNew: TDataSource
    DataSet = CDSVendedorNew
    Left = 344
    Top = 368
  end
  object DSVendedorOld: TDataSource
    DataSet = CDSVendedorOld
    Left = 336
    Top = 280
  end
  object DSPVendedor: TDataSetProvider
    DataSet = QVendedor
    Options = [poAllowCommandText]
    Left = 168
    Top = 312
  end
  object DSPMotivo: TDataSetProvider
    DataSet = QMotivo
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 232
    Top = 481
  end
  object CDSMotivo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMotivo'
    Left = 304
    Top = 481
    object CDSMotivoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMotivoDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 30
    end
  end
  object DSMotivo: TDataSource
    DataSet = CDSMotivo
    Left = 338
    Top = 481
  end
  object QVendedor: TFDQuery
    ObjectView = False
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select codigo,nombre from personal where (vendedor='#39'S'#39' or Cobrad' +
        'or='#39'S'#39') and Activo='#39'S'#39)
    Left = 88
    Top = 312
  end
  object QMotivo: TFDQuery
    ObjectView = False
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TABLA_MOTIVO_VALE '
      'order by detalle')
    Left = 144
    Top = 481
  end
end
