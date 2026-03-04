object FormCambiarClaseCpbte: TFormCambiarClaseCpbte
  Left = 387
  Top = 213
  BorderIcons = [biSystemMenu]
  Caption = 'Cambiar Clase de Cpbte'
  ClientHeight = 462
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 625
    Height = 209
    Align = alTop
    TabOrder = 0
    object JvGradient2: TJvGradient
      Left = 1
      Top = 95
      Width = 623
      Height = 113
      Style = grVertical
      StartColor = clGradientInactiveCaption
      EndColor = clWhite
      ExplicitLeft = 33
    end
    object Label4: TLabel
      Left = 18
      Top = 108
      Width = 59
      Height = 19
      Caption = 'Sucursal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 255
      Top = 108
      Width = 138
      Height = 19
      Caption = 'Clase Comprobante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object pnDatosViejos: TPanel
      Left = 1
      Top = 1
      Width = 623
      Height = 94
      Align = alTop
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 0
      object JvGradient1: TJvGradient
        Left = 0
        Top = 0
        Width = 623
        Height = 94
        Style = grVertical
        StartColor = clGradientInactiveCaption
        EndColor = clWhite
        ExplicitWidth = 604
        ExplicitHeight = 74
      end
      object Label1: TLabel
        Left = 17
        Top = 9
        Width = 59
        Height = 19
        Caption = 'Sucursal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 359
        Top = 9
        Width = 35
        Height = 19
        Caption = 'Letra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 456
        Top = 9
        Width = 37
        Height = 19
        Caption = 'Clase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 400
        Top = 9
        Width = 32
        Height = 19
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edLetra: TEdit
        Left = 361
        Top = 34
        Width = 33
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'edLetra'
      end
      object edClase: TEdit
        Left = 456
        Top = 34
        Width = 50
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = 'edClase'
      end
      object dbeId: TDBEdit
        Left = 17
        Top = 34
        Width = 32
        Height = 27
        DataField = 'CODIGO'
        DataSource = DSSucursalOld
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object dbeDetalle: TDBEdit
        Left = 55
        Top = 34
        Width = 294
        Height = 27
        DataField = 'DETALLE'
        DataSource = DSSucursalOld
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object edTipo: TEdit
        Left = 400
        Top = 34
        Width = 50
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Text = 'edClase'
      end
    end
    object dbcComprobantes: TJvDBLookupCombo
      Left = 255
      Top = 133
      Width = 362
      Height = 26
      DropDownWidth = 300
      DisplayAllFields = True
      DisplayEmpty = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      LookupField = 'ID_COMPROBANTE'
      LookupDisplay = 'DENOMINACION;LETRA;CLASE_COMPROB'
      LookupSource = DSComprobantes
      ParentFont = False
      RightTrimmedLookup = True
      TabOrder = 1
    end
    object btOk: TBitBtn
      Left = 542
      Top = 166
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btOkClick
    end
    object btCancelar: TBitBtn
      Left = 453
      Top = 166
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 3
    end
    object dbcSucursalNew: TJvDBLookupCombo
      Left = 18
      Top = 133
      Width = 231
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      LookupField = 'CODIGO'
      LookupDisplay = 'DETALLE'
      LookupSource = DSSucursal
      ParentFont = False
      TabOrder = 4
      OnChange = dbcSucursalNewChange
    end
  end
  object DSSucursalOld: TDataSource
    DataSet = CDSSucursalOld
    Left = 304
    Top = 184
  end
  object DSSucursal: TDataSource
    DataSet = CDSSucursal
    Left = 304
    Top = 248
  end
  object DSComprobantes: TDataSource
    DataSet = CDSComprobantes
    Left = 304
    Top = 312
  end
  object CDSSucursalOld: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSucursalOld'
    Left = 216
    Top = 176
    object CDSSucursalOldCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSSucursalOldDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
  end
  object DSPSucursalOld: TDataSetProvider
    DataSet = QSucOld
    Left = 128
    Top = 176
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 216
    Top = 248
    object CDSSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
  end
  object DSPSucursal: TDataSetProvider
    DataSet = QSuc
    Left = 128
    Top = 248
  end
  object CDSComprobantes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'compraventa'
        ParamType = ptInput
      end>
    ProviderName = 'DSPComprobantes'
    Left = 216
    Top = 312
    object CDSComprobantesID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSComprobantesTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSComprobantesCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object CDSComprobantesDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object CDSComprobantesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSComprobantesLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object CDSComprobantesNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object CDSComprobantesTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
      Origin = 'TOMA_NRO_DE'
    end
    object CDSComprobantesAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Origin = 'AFECTA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Origin = 'AFECTA_CC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Origin = 'COMPRA_VENTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesCOPIAS: TIntegerField
      FieldName = 'COPIAS'
      Origin = 'COPIAS'
    end
    object CDSComprobantesREPORTE: TStringField
      FieldName = 'REPORTE'
      Origin = 'REPORTE'
      Size = 100
    end
    object CDSComprobantesIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesFISCAL: TStringField
      FieldName = 'FISCAL'
      Origin = 'FISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Origin = 'NOMBREIMPRESORA'
      Size = 15
    end
    object CDSComprobantesPENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Origin = 'PENDIENTEIMPRESION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Origin = 'LINEAS_DETALLE'
      Required = True
    end
    object CDSComprobantesCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Origin = 'CALCULA_IVA_ARTICULOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Origin = 'DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPComprobantes: TDataSetProvider
    DataSet = QComprob
    Left = 120
    Top = 312
  end
  object QSucOld: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo,detalle from Sucursal'
      'where codigo=:codigo')
    Left = 48
    Top = 176
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QSuc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo,detalle from Sucursal')
    Left = 48
    Top = 248
  end
  object QComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where sucursal=:sucursal '
      'and tipo_comprob=:Tipo and compra_venta=:compraventa')
    Left = 48
    Top = 312
    ParamData = <
      item
        Position = 1
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'Tipo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'compraventa'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object spCambiaClase: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'TOOLS_CAMBIARTIPOCPBTE'
    Left = 216
    Top = 376
    ParamData = <
      item
        Position = 1
        Name = 'IDCPBTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 3
        Name = 'CLASE_OLD'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 4
        Name = 'CLASE_NEW'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 5
        Name = 'LETRA_OLD'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 6
        Name = 'LETRA_NEW'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 7
        Name = 'SUCURSAL_OLD'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'SUCURSAL_NEW'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'LIBROIVA'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 10
        Name = 'CTACTE'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end>
  end
end
