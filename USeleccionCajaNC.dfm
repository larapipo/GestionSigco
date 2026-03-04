object FormSeleccionCajaNC: TFormSeleccionCajaNC
  Left = 439
  Top = 205
  Caption = 'Seleccion de Caja en Nota de Credito'
  ClientHeight = 442
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 554
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 554
      Height = 48
      Align = alTop
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 0
      object JvGradient3: TJvGradient
        Left = 0
        Top = 0
        Width = 554
        Height = 48
        Style = grVertical
        StartColor = clWhite
        EndColor = clGradientActiveCaption
        ExplicitLeft = 2
        ExplicitTop = 6
        ExplicitWidth = 463
        ExplicitHeight = 46
      end
      object Label3: TLabel
        Left = 11
        Top = 13
        Width = 124
        Height = 23
        Caption = 'Caja Original'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbcCajaOrigen: TDBLookupComboBox
        Left = 199
        Top = 9
        Width = 314
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID_CUENTA_CAJA'
        ListField = 'MUESTRACTACAJA'
        ListSource = DSCtaCaja
        ParentFont = False
        TabOrder = 0
      end
    end
    object pnPie: TPanel
      Left = 0
      Top = 73
      Width = 554
      Height = 48
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object JvGradient2: TJvGradient
        Left = 0
        Top = 0
        Width = 554
        Height = 48
        Style = grVertical
        StartColor = clWhite
        EndColor = clGradientActiveCaption
        ExplicitLeft = 2
        ExplicitTop = 25
        ExplicitWidth = 552
        ExplicitHeight = 46
      end
      object Label4: TLabel
        Left = 11
        Top = 13
        Width = 172
        Height = 23
        Caption = 'Caja Seleccionada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbcCajaDestino: TDBLookupComboBox
        Left = 199
        Top = 11
        Width = 314
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID_CUENTA_CAJA'
        ListField = 'MUESTRACTACAJA'
        ListSource = DSCajaDestino
        NullValueKey = 46
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object pnFinal: TPanel
    Left = 0
    Top = 121
    Width = 554
    Height = 88
    Align = alTop
    BevelOuter = bvLowered
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    object btAceptar: TBitBtn
      Left = 288
      Top = 19
      Width = 131
      Height = 45
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = btAceptarClick
    end
    object btCancelar: TBitBtn
      Left = 121
      Top = 19
      Width = 138
      Height = 45
      Cancel = True
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DEFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF0732DE0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FF
        0533EC0533EBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF0732DE0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FF0534EE
        0534ED0533EC0533EBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF0732DE0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FF0534EF
        0534EE0534ED0533EC0533EBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF07
        32DE0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FF0534F0
        0534EF0534EE0534ED0533EC0533ECFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE07
        32DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        0534F00534EF0534EE0534EE0534ED0533ECFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732E00732DF07
        32DF0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0434F00534EF0534EF0534EE0534ED0533ECFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0632E20732E10732E007
        32E00732DFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF0434F00534F00534EF0534EE0534ED0533ECFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0633E40633E30632E20732E207
        32E1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0434F00534F00534EF0534EE0534ED0533ECFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0633E60633E50633E40633E30632E3FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0434F10534F00534EF0534EE0534EE0534EDFF00
        FFFF00FFFF00FFFF00FFFF00FF0633E80633E70633E60633E50633E4FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0434F00534EF0534EF0534EE0534
        EDFF00FFFF00FFFF00FF0533EA0633E90633E80633E70633E60633E5FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0434F00534F00534EF0534
        EE0534EDFF00FF0533EB0533EB0533EA0533E90633E80633E7FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0434F10534F00534
        EF0534EE0534ED0533EC0533EC0533EB0533EA0533E9FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0434F10534
        F00534EF0534EE0534EE0534ED0533EC0533EBFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0434
        F10434F00534EF0534EF0534EE0534EDFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0434F30434
        F20434F10434F00534F00534EF0534EEFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0434F50434F40434
        F30434F20434F10434F10534F00534EF0534EEFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0435F70434F60434F50434
        F40434F30434F2FF00FF0434F10534F00534EF0534EEFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335F90335F80435F70434F60434
        F50434F4FF00FFFF00FFFF00FF0434F10434F00534EF0534EEFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF0335FA0335FA0335F90335F80435F70434
        F6FF00FFFF00FFFF00FFFF00FFFF00FF0434F10434F00534F00534EFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0335FB0335FB0335FB0335FA0335F90335F8FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0434F10434F10534F00534EFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0335FB0335FB0335FB0335FB0335FB0335FAFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0434F10434F10534F005
        34EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF0335FB0335FB0335FB0335FB0335FB0335FBFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0434F105
        34F00534EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0335FB0335FB0335FB0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF04
        34F10434F00534EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        0335FB0335FB0335FB0335FB0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF0434F10434F00534F0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB
        0335FB0335FB0335FB0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF0434F10434F10534F0FF00FFFF00FFFF00FFFF00FF0335FB0335FB
        0335FB0335FB0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF0434F1FF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB
        0335FB0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB
        0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB
        0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
      OnClick = btCancelarClick
    end
  end
  object DSCtaCaja: TDataSource
    DataSet = CDSCtaCaja
    Left = 256
    Top = 272
  end
  object CDSCtaCaja: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCaja'
    Left = 176
    Top = 272
    object CDSCtaCajaID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCtaCajaID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
    object CDSCtaCajaFECHA_INCIO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO'
      Origin = 'FECHA_INCIO'
      Required = True
    end
    object CDSCtaCajaFECHA_CIERRE: TSQLTimeStampField
      FieldName = 'FECHA_CIERRE'
      Origin = 'FECHA_CIERRE'
    end
    object CDSCtaCajaNUMEROCAJA: TIntegerField
      FieldName = 'NUMEROCAJA'
      Origin = 'NUMEROCAJA'
    end
    object CDSCtaCajaMUESTRACTACAJA: TStringField
      FieldName = 'MUESTRACTACAJA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
  end
  object DSPCtaCaja: TDataSetProvider
    DataSet = QCtaCaja
    Options = []
    Left = 104
    Top = 336
  end
  object CDSCajaDestino: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCtaCaja'
    Left = 176
    Top = 336
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
    object IntegerField3: TIntegerField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
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
    Left = 248
    Top = 336
  end
  object DSComprobante: TDataSource
    DataSet = CDSComprobantes
    Left = 240
    Top = 472
  end
  object CDSComprobantes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPComprobante'
    Left = 160
    Top = 464
    object CDSComprobantesID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'DBMAIN.COMPROBANTES.ID_COMPROBANTE'
    end
    object CDSComprobantesTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'DBMAIN.COMPROBANTES.TIPO_COMPROB'
      Size = 2
    end
    object CDSComprobantesCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'DBMAIN.COMPROBANTES.CLASE_COMPROB'
      Size = 2
    end
    object CDSComprobantesDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DBMAIN.COMPROBANTES.DENOMINACION'
      Size = 15
    end
    object CDSComprobantesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'DBMAIN.COMPROBANTES.SUCURSAL'
    end
    object CDSComprobantesMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Size = 35
    end
  end
  object DSPComprobante: TDataSetProvider
    DataSet = QComproba
    Left = 96
    Top = 464
  end
  object QComproba: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select c.id_comprobante,c.tipo_comprob,c.clase_comprob,c.denomin' +
        'acion,c.sucursal,s.detalle as MuestraSucursal from comprobantes ' +
        'c'
      'left join sucursal s on s.codigo=c.sucursal'
      'where c.tipo_comprob in ('#39'CX'#39') and c.compra_venta= '#39'V'#39)
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 40
    Top = 464
    object QComprobaID_COMPROBANTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_COMPROBANTE'
      Origin = 'DBMAIN.COMPROBANTES.ID_COMPROBANTE'
    end
    object QComprobaTIPO_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'TIPO_COMPROB'
      Origin = 'DBMAIN.COMPROBANTES.TIPO_COMPROB'
      Size = 2
    end
    object QComprobaCLASE_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'CLASE_COMPROB'
      Origin = 'DBMAIN.COMPROBANTES.CLASE_COMPROB'
      Size = 2
    end
    object QComprobaDENOMINACION: TStringField
      DisplayWidth = 15
      FieldName = 'DENOMINACION'
      Origin = 'DBMAIN.COMPROBANTES.DENOMINACION'
      Size = 15
    end
    object QComprobaSUCURSAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'SUCURSAL'
      Origin = 'DBMAIN.COMPROBANTES.SUCURSAL'
    end
    object QComprobaMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Size = 35
    end
  end
  object QCtaCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cc.*, cta.nombre as MuestraCtaCaja from Caja_cab cc'
      'left join cuenta_caja cta on cta.id_cuenta=cc.id_cuenta_caja'
      'where cc.estado=0 and cta.id_tipo_cta=1')
    Left = 40
    Top = 336
  end
  object QCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cc.*, cta.nombre as MuestraCtaCaja from Caja_cab cc'
      'left join cuenta_caja cta on cta.id_cuenta=cc.id_cuenta_caja'
      'where cta.id_tipo_cta=1'
      '')
    Left = 48
    Top = 272
  end
  object DSPCaja: TDataSetProvider
    DataSet = QCaja
    Options = []
    Left = 112
    Top = 272
  end
end
