object DatosArmadoProductos: TDatosArmadoProductos
  OnDestroy = DataModuleDestroy
  Height = 603
  Width = 722
  object CDSArmadoCab: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FECHA'
        Attributes = [faRequired]
        DataType = ftTimeStamp
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
      end
      item
        Name = 'TIPOCPBTE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CLASECPBTE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'LETRA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PREFIJO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'DEPOSITO_ORIGEN'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DEPOSITO_DESTINO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CODIGOSERIE'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'ARMADOR'
        Attributes = [faRequired]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'FECHA_HORA'
        DataType = ftTimeStamp
      end
      item
        Name = 'USUSARIO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ESTADO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NROCPBTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'MUESTRADEPORIGEN'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'MUESTARDEPDESTINO'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'MUESTRAARMADOR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'MUESTRAPRODUCTO'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'ID_TIPOCOMPROBANTE'
        DataType = ftInteger
      end
      item
        Name = 'MUESTRASUCURSAL'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'MUESTRACOMPROBANTE'
        DataType = ftString
        Size = 15
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPArmadoCab'
    StoreDefs = True
    OnNewRecord = CDSArmadoCabNewRecord
    Left = 141
    Top = 8
    object CDSArmadoCabID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSArmadoCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object CDSArmadoCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSArmadoCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSArmadoCabLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSArmadoCabPREFIJO: TStringField
      FieldName = 'PREFIJO'
      OnSetText = CDSArmadoCabPREFIJOSetText
      Size = 4
    end
    object CDSArmadoCabNUMERO: TStringField
      FieldName = 'NUMERO'
      OnSetText = CDSArmadoCabNUMEROSetText
      Size = 8
    end
    object CDSArmadoCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      OnSetText = CDSArmadoCabCODIGOSetText
      Size = 8
    end
    object CDSArmadoCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      OnSetText = CDSArmadoCabSUCURSALSetText
    end
    object CDSArmadoCabDEPOSITO_ORIGEN: TIntegerField
      FieldName = 'DEPOSITO_ORIGEN'
      Required = True
      OnSetText = CDSArmadoCabDEPOSITO_ORIGENSetText
    end
    object CDSArmadoCabDEPOSITO_DESTINO: TIntegerField
      FieldName = 'DEPOSITO_DESTINO'
      Required = True
      OnSetText = CDSArmadoCabDEPOSITO_DESTINOSetText
    end
    object CDSArmadoCabCODIGOSERIE: TStringField
      FieldName = 'CODIGOSERIE'
      Size = 16
    end
    object CDSArmadoCabARMADOR: TStringField
      FieldName = 'ARMADOR'
      Required = True
      OnSetText = CDSArmadoCabARMADORSetText
      Size = 6
    end
    object CDSArmadoCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object CDSArmadoCabUSUSARIO: TStringField
      FieldName = 'USUSARIO'
      Size = 50
    end
    object CDSArmadoCabESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object CDSArmadoCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSArmadoCabMUESTRADEPORIGEN: TStringField
      FieldName = 'MUESTRADEPORIGEN'
      ProviderFlags = []
      Size = 25
    end
    object CDSArmadoCabMUESTARDEPDESTINO: TStringField
      FieldName = 'MUESTARDEPDESTINO'
      ProviderFlags = []
      Size = 25
    end
    object CDSArmadoCabMUESTRAARMADOR: TStringField
      FieldName = 'MUESTRAARMADOR'
      ProviderFlags = []
      Size = 50
    end
    object CDSArmadoCabMUESTRAPRODUCTO: TStringField
      FieldName = 'MUESTRAPRODUCTO'
      ProviderFlags = []
      Size = 45
    end
    object CDSArmadoCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
      OnSetText = CDSArmadoCabID_TIPOCOMPROBANTESetText
    end
    object CDSArmadoCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSArmadoCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
  end
  object DSPArmadoCab: TDataSetProvider
    DataSet = QArmadoCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 77
    Top = 8
  end
  object DSPArmadoDet: TDataSetProvider
    DataSet = QArmadoDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 85
    Top = 72
  end
  object CDSArmadoDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPArmadoDet'
    OnNewRecord = CDSArmadoDetNewRecord
    Left = 141
    Top = 64
    object CDSArmadoDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSArmadoDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSArmadoDetCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Required = True
      Size = 8
    end
    object CDSArmadoDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSArmadoDetCANTIDAD: TFloatField
      DisplayLabel = 'Cant.'
      DisplayWidth = 8
      FieldName = 'CANTIDAD'
      Required = True
      DisplayFormat = '0.00'
    end
    object CDSArmadoDetCOSTO_UNITARIO: TFloatField
      DisplayLabel = 'Costo'
      FieldName = 'COSTO_UNITARIO'
      DisplayFormat = '0.00'
    end
    object CDSArmadoDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object CDSArmadoDetNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object CDSArmadoDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      FixedChar = True
      Size = 1
    end
    object CDSArmadoDetNRO_SERIE: TStringField
      DisplayLabel = 'Nro.Serie'
      FieldName = 'NRO_SERIE'
      OnSetText = CDSArmadoDetNRO_SERIESetText
      Size = 50
    end
    object CDSArmadoDetDEPOSITO_ORIGEN: TIntegerField
      FieldName = 'DEPOSITO_ORIGEN'
      Required = True
    end
    object CDSArmadoDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSArmadoDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSArmadoDetLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSArmadoDetPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Size = 4
    end
    object CDSArmadoDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
  end
  object DSArmadoDet: TDataSource
    DataSet = CDSArmadoDet
    Left = 216
    Top = 72
  end
  object QBuscaComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes '
      'where sucursal=:suc and compra_venta='#39'V'#39' and tipo_comprob='#39'FP'#39)
    Left = 28
    Top = 175
    ParamData = <
      item
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPBuscaComprob: TDataSetProvider
    DataSet = QBuscaComprob
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 176
  end
  object CDSBuscaComprob: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaComprob'
    Left = 176
    Top = 184
    object CDSBuscaComprobID_COMPROBANTE: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSBuscaComprobDENOMINACION: TStringField
      DisplayLabel = 'Denominaci'#243'n'
      DisplayWidth = 15
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object CDSBuscaComprobCLASE_COMPROB: TStringField
      DisplayLabel = 'Clase'
      DisplayWidth = 2
      FieldName = 'CLASE_COMPROB'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSBuscaComprobLETRA: TStringField
      DisplayLabel = 'Let.'
      DisplayWidth = 1
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobPREFIJO: TStringField
      DisplayLabel = 'Pref.'
      DisplayWidth = 4
      FieldName = 'PREFIJO'
      Size = 4
    end
    object CDSBuscaComprobNUMERO: TStringField
      DisplayLabel = 'Numero'
      DisplayWidth = 8
      FieldName = 'NUMERO'
      Size = 8
    end
    object CDSBuscaComprobTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CDSBuscaComprobSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Visible = False
    end
    object CDSBuscaComprobNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
      Visible = False
    end
    object CDSBuscaComprobAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobCOPIAS: TIntegerField
      FieldName = 'COPIAS'
      Visible = False
    end
    object CDSBuscaComprobREPORTE: TStringField
      FieldName = 'REPORTE'
      Visible = False
      Size = 100
    end
    object CDSBuscaComprobIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobFISCAL: TStringField
      FieldName = 'FISCAL'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Visible = False
      Size = 15
    end
    object CDSBuscaComprobPENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Required = True
      Visible = False
    end
    object CDSBuscaComprobCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object QComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      'id_comprobante=:id  '
      'and sucursal=:suc '
      'and compra_venta='#39'V'#39' '
      'and tipo_comprob='#39'FP'#39)
    Left = 360
    Top = 192
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QComprobTIPO_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'TIPO_COMPROB'
      Origin = 'DBMAIN.COMPROBANTES.TIPO_COMPROB'
      Size = 2
    end
    object QComprobCLASE_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'CLASE_COMPROB'
      Origin = 'DBMAIN.COMPROBANTES.SIGLAS'
      Size = 2
    end
    object QComprobDENOMINACION: TStringField
      DisplayWidth = 15
      FieldName = 'DENOMINACION'
      Origin = 'DBMAIN.COMPROBANTES.DENOMINACION'
      Size = 15
    end
    object QComprobLETRA: TStringField
      DisplayWidth = 1
      FieldName = 'LETRA'
      Origin = 'DBMAIN.COMPROBANTES.LETRA'
      Size = 1
    end
    object QComprobID_COMPROBANTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_COMPROBANTE'
      Origin = 'DBMAIN.COMPROBANTES.ID_COMPROBANTE'
    end
    object QComprobCOPIAS: TIntegerField
      DisplayWidth = 10
      FieldName = 'COPIAS'
      Origin = 'DBMAIN.COMPROBANTES.COPIAS'
    end
    object QComprobREPORTE: TStringField
      DisplayWidth = 100
      FieldName = 'REPORTE'
      Origin = 'DBMAIN.COMPROBANTES.REPORTE'
      Size = 100
    end
    object QComprobSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QComprobPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Size = 4
    end
    object QComprobNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object QComprobNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object QComprobTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
    end
    object QComprobAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobIMPRIME: TStringField
      FieldName = 'IMPRIME'
      FixedChar = True
      Size = 1
    end
    object QComprobFISCAL: TStringField
      FieldName = 'FISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Size = 15
    end
    object QComprobPENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Required = True
    end
    object QComprobCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = []
    Left = 32
    Top = 264
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 120
    Top = 264
    object CDSBuscaSucursalCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSBuscaSucursalDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 35
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMMain_FD.QSucursal
    Options = [poAllowCommandText]
    Left = 346
    Top = 14
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSucursal'
    Left = 416
    Top = 6
    object CDSSucursalCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
    end
    object CDSSucursalDETALLE: TStringField
      DisplayWidth = 35
      FieldName = 'DETALLE'
      Size = 35
    end
    object CDSSucursalDIRECCION: TStringField
      DisplayWidth = 20
      FieldName = 'DIRECCION'
    end
    object CDSSucursalLOCALIDAD: TStringField
      DisplayWidth = 20
      FieldName = 'LOCALIDAD'
    end
    object CDSSucursalTELEFONO1: TStringField
      DisplayWidth = 15
      FieldName = 'TELEFONO1'
      Size = 15
    end
    object CDSSucursalTELEFONO2: TStringField
      DisplayWidth = 15
      FieldName = 'TELEFONO2'
      Size = 15
    end
    object CDSSucursalRECARGO: TFloatField
      FieldName = 'RECARGO'
    end
  end
  object DSPStock: TDataSetProvider
    DataSet = DMMain_FD.QStock
    Options = []
    Left = 344
    Top = 62
  end
  object CDSStock: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPStock'
    Left = 416
    Top = 60
    object CDSStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object CDSStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object CDSStockCOSTO_EXENTO_STK: TFloatField
      FieldName = 'COSTO_EXENTO_STK'
      Required = True
    end
    object CDSStockCOSTO_GRAVADO_STK: TFloatField
      FieldName = 'COSTO_GRAVADO_STK'
      Required = True
    end
    object CDSStockCOSTO_TOTAL_STK: TFloatField
      FieldName = 'COSTO_TOTAL_STK'
      Required = True
    end
    object CDSStockREEMPLAZO_STK: TStringField
      FieldName = 'REEMPLAZO_STK'
      Required = True
    end
    object CDSStockFIJACION_PRECIO_GRAVADO: TFloatField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Required = True
    end
    object CDSStockFIJACION_PRECIO_EXENTO: TFloatField
      FieldName = 'FIJACION_PRECIO_EXENTO'
      Required = True
    end
    object CDSStockFIJACION_PRECIO_TOTAL: TFloatField
      FieldName = 'FIJACION_PRECIO_TOTAL'
      Required = True
    end
    object CDSStockFUAP: TSQLTimeStampField
      FieldName = 'FUAP'
    end
    object CDSStockUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object CDSStockCONTROLASTOCK: TStringField
      FieldName = 'CONTROLASTOCK'
      Required = True
      Size = 1
    end
    object CDSStockCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Size = 10
    end
    object CDSStockUNIDAD_ULTIMAUSADA: TStringField
      FieldName = 'UNIDAD_ULTIMAUSADA'
      Size = 3
    end
    object CDSStockCONTROL_SERIE: TStringField
      FieldName = 'CONTROL_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockUNIDAD_COMPRA: TStringField
      FieldName = 'UNIDAD_COMPRA'
      Size = 3
    end
    object CDSStockCONTENIDO_COMPRA: TFloatField
      FieldName = 'CONTENIDO_COMPRA'
      Required = True
    end
    object CDSStockUSA_CODIGOBARRA: TStringField
      FieldName = 'USA_CODIGOBARRA'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object ibgCab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_PLANILLA_ARMADO_CAB'
    SystemGenerators = False
    Left = 272
    Top = 16
  end
  object ibgDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_PLANILLA_ARMADO_DET'
    SystemGenerators = False
    Left = 280
    Top = 64
  end
  object QDetalleProduccion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.codigo,c.detalle as DetalleProducto,'
      '   d.codigo_stk,d.detalle as DetalleArticulo,'
      '   d.cantidad_real,d.costo_stk,s.control_serie'
      '     from stock_produccion_cab c'
      'left join stock_produccion_det d on d.id_cab=c.id'
      'left join stock s on s.codigo_stk=d.codigo_stk'
      'where c.codigo=:codigo')
    Left = 488
    Top = 264
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QDetalleProduccionCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object QDetalleProduccionDETALLEPRODUCTO: TStringField
      FieldName = 'DETALLEPRODUCTO'
      Size = 45
    end
    object QDetalleProduccionCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object QDetalleProduccionDETALLEARTICULO: TStringField
      FieldName = 'DETALLEARTICULO'
      Size = 45
    end
    object QDetalleProduccionCANTIDAD_REAL: TFloatField
      FieldName = 'CANTIDAD_REAL'
    end
    object QDetalleProduccionCOSTO_STK: TFloatField
      FieldName = 'COSTO_STK'
    end
    object QDetalleProduccionCONTROL_SERIE: TStringField
      FieldName = 'CONTROL_SERIE'
      FixedChar = True
      Size = 1
    end
  end
  object DSPBuscaDeposito: TDataSetProvider
    DataSet = DMBuscadores.QBuscaDeposito
    Options = []
    Left = 24
    Top = 320
  end
  object CDSBuscaDeposito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaDeposito'
    Left = 120
    Top = 320
    object CDSBuscaDepositoNOMBRE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSBuscaDepositoID: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'ID'
      Required = True
    end
  end
  object DSPDeposito: TDataSetProvider
    DataSet = DMMain_FD.QDeposito
    Options = []
    Left = 340
    Top = 116
  end
  object CDSDeposito: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDeposito'
    Left = 416
    Top = 112
    object CDSDepositoID: TIntegerField
      FieldName = 'ID'
    end
    object CDSDepositoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSDepositoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
  end
  object CDSDetalleProduccion: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDetalleProduccion'
    Left = 284
    Top = 264
    object CDSDetalleProduccionCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object CDSDetalleProduccionDETALLEPRODUCTO: TStringField
      FieldName = 'DETALLEPRODUCTO'
      Size = 45
    end
    object CDSDetalleProduccionCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object CDSDetalleProduccionDETALLEARTICULO: TStringField
      FieldName = 'DETALLEARTICULO'
      Size = 45
    end
    object CDSDetalleProduccionCANTIDAD_REAL: TFloatField
      FieldName = 'CANTIDAD_REAL'
    end
    object CDSDetalleProduccionCOSTO_STK: TFloatField
      FieldName = 'COSTO_STK'
    end
    object CDSDetalleProduccionCONTROL_SERIE: TStringField
      FieldName = 'CONTROL_SERIE'
      FixedChar = True
      Size = 1
    end
  end
  object DSPDetalleProduccion: TDataSetProvider
    DataSet = QDetalleProduccion
    Left = 368
    Top = 264
  end
  object DSPBuscaNroSerie: TDataSetProvider
    DataSet = DMBuscadores.QBuscaNroSerie
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 528
    Top = 88
  end
  object CDSBuscaNroSerie: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'deposito'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaNroSerie'
    Left = 616
    Top = 88
    object CDSBuscaNroSerieID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSBuscaNroSerieCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object CDSBuscaNroSerieCODIGOSERIE: TStringField
      FieldName = 'CODIGOSERIE'
      Size = 50
    end
    object CDSBuscaNroSerieFECHAINGRESO: TSQLTimeStampField
      FieldName = 'FECHAINGRESO'
    end
    object CDSBuscaNroSerieFECHAEGRESO: TSQLTimeStampField
      FieldName = 'FECHAEGRESO'
    end
  end
  object QNroSerie: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,'
      'ss.fechaegreso from stock_series ss'
      
        'where ss.codigo_stk=:codigo and ss.codigoserie=:CodigoSerie and ' +
        'ss.fechaegreso is null and ss.deposito=:deposito')
    Left = 640
    Top = 9
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'CodigoSerie'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'deposito'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QNroSerieID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QNroSerieCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object QNroSerieCODIGOSERIE: TStringField
      FieldName = 'CODIGOSERIE'
      Size = 50
    end
    object QNroSerieFECHAINGRESO: TSQLTimeStampField
      FieldName = 'FECHAINGRESO'
    end
    object QNroSerieFECHAEGRESO: TSQLTimeStampField
      FieldName = 'FECHAEGRESO'
    end
  end
  object DSPPersonal: TDataSetProvider
    DataSet = DMMain_FD.QPersonal
    Options = []
    Left = 528
    Top = 152
  end
  object CDSPersonal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPersonal'
    Left = 616
    Top = 152
    object CDSPersonalNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object CDSPersonalCOMISION: TFloatField
      FieldName = 'COMISION'
      Required = True
    end
  end
  object DSPBuscaPersonal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaPersonal
    Options = []
    Left = 24
    Top = 376
  end
  object CDSBuscaPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaPersonal'
    Left = 112
    Top = 376
    object CDSBuscaPersonalNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSBuscaPersonalCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
  end
  object spAltaProductoStock: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'INGRESA_PRODUCTO_STOCK'
    Left = 624
    Top = 248
    ParamData = <
      item
        Name = 'NRO_SERIE'
        DataType = ftString
        Precision = 50
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end>
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    Left = 280
    Top = 328
    object CDSEmpresaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 30
    end
    object CDSEmpresaACTIVIDAD: TStringField
      FieldName = 'ACTIVIDAD'
      Size = 30
    end
    object CDSEmpresaDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 30
    end
    object CDSEmpresaLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 30
    end
    object CDSEmpresaCORREO: TStringField
      FieldName = 'CORREO'
      Size = 30
    end
    object CDSEmpresaTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Size = 10
    end
    object CDSEmpresaTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Size = 10
    end
    object CDSEmpresaCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSEmpresaCONDICIONIVA: TStringField
      FieldName = 'CONDICIONIVA'
      Size = 15
    end
    object CDSEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField
      FieldName = 'NRO_AGTE_RET_INGBRUTOS'
      Size = 15
    end
    object CDSEmpresaLOGO: TBlobField
      FieldName = 'LOGO'
      Size = 1
    end
    object CDSEmpresaCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSEmpresaNRO_AGTE_RET_GANANCIA: TStringField
      FieldName = 'NRO_AGTE_RET_GANANCIA'
      Size = 15
    end
    object CDSEmpresaAG_RET_GANANCIA: TStringField
      FieldName = 'AG_RET_GANANCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaAG_RET_ING_BRUTOS: TStringField
      FieldName = 'AG_RET_ING_BRUTOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField
      FieldName = 'AG_PERCEPCION_ING_BRUTOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaTASA_PERCEPCION_IB: TFloatField
      FieldName = 'TASA_PERCEPCION_IB'
    end
    object CDSEmpresaMINO_IMP_PERCEP_IB: TFloatField
      FieldName = 'MINO_IMP_PERCEP_IB'
    end
    object CDSEmpresaPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
    end
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = DMMain_FD.QEmpresa
    Left = 368
    Top = 328
  end
  object QArmadoCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select p.*,'
      '  o.nombre as MuestraDepOrigen,'
      '  d.nombre as MuestarDepDestino,'
      '  per.nombre as MuestraArmador,'
      '  s.detalle_stk as MuestraProducto,'
      '  cp.id_comprobante as Id_tipoComprobante,'
      '  cp.denominacion as MuestraComprobante,'
      '  suc.detalle as MuestraSucursal'
      '    from planilla_armado_cab p'
      'left join depositos o on o.id=p.deposito_origen'
      'left join depositos d on d.id=p.deposito_destino'
      'left join personal per on per.codigo=p.armador'
      'left join stock s on s.codigo_stk=p.codigo'
      'left join sucursal suc on suc.codigo=p.sucursal'
      'left join comprobantes cp on cp.clase_comprob=p.ClaseCpbte and'
      '          cp.letra=p.Letra and'
      '          cp.sucursal=p.sucursal and'
      '          cp.tipo_comprob=p.tipocpbte'
      'where p.id=:id')
    Left = 16
    Top = 7
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QArmadoCabID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QArmadoCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object QArmadoCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QArmadoCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      FixedChar = True
      Size = 2
    end
    object QArmadoCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      FixedChar = True
      Size = 2
    end
    object QArmadoCabLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QArmadoCabPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Size = 6
    end
    object QArmadoCabNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object QArmadoCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 8
    end
    object QArmadoCabDEPOSITO_ORIGEN: TIntegerField
      FieldName = 'DEPOSITO_ORIGEN'
      Required = True
    end
    object QArmadoCabDEPOSITO_DESTINO: TIntegerField
      FieldName = 'DEPOSITO_DESTINO'
      Required = True
    end
    object QArmadoCabCODIGOSERIE: TStringField
      FieldName = 'CODIGOSERIE'
      Size = 16
    end
    object QArmadoCabARMADOR: TStringField
      FieldName = 'ARMADOR'
      Required = True
      Size = 6
    end
    object QArmadoCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object QArmadoCabUSUSARIO: TStringField
      FieldName = 'USUSARIO'
      Size = 50
    end
    object QArmadoCabESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object QArmadoCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QArmadoCabMUESTRADEPORIGEN: TStringField
      FieldName = 'MUESTRADEPORIGEN'
      ProviderFlags = []
      Size = 25
    end
    object QArmadoCabMUESTARDEPDESTINO: TStringField
      FieldName = 'MUESTARDEPDESTINO'
      ProviderFlags = []
      Size = 25
    end
    object QArmadoCabMUESTRAARMADOR: TStringField
      FieldName = 'MUESTRAARMADOR'
      ProviderFlags = []
      Size = 50
    end
    object QArmadoCabMUESTRAPRODUCTO: TStringField
      FieldName = 'MUESTRAPRODUCTO'
      ProviderFlags = []
      Size = 45
    end
    object QArmadoCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
    end
    object QArmadoCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object QArmadoCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
  end
  object QArmadoDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select p.* from planilla_armado_det p where p.id_cab=:id')
    Left = 24
    Top = 72
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QArmadoDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QArmadoDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QArmadoDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 8
    end
    object QArmadoDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object QArmadoDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Required = True
    end
    object QArmadoDetCOSTO_UNITARIO: TFloatField
      FieldName = 'COSTO_UNITARIO'
    end
    object QArmadoDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object QArmadoDetNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object QArmadoDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      FixedChar = True
      Size = 1
    end
    object QArmadoDetNRO_SERIE: TStringField
      FieldName = 'NRO_SERIE'
      Size = 50
    end
    object QArmadoDetDEPOSITO_ORIGEN: TIntegerField
      FieldName = 'DEPOSITO_ORIGEN'
      Required = True
    end
    object QArmadoDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      FixedChar = True
      Size = 2
    end
    object QArmadoDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      FixedChar = True
      Size = 2
    end
    object QArmadoDetLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QArmadoDetPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Size = 4
    end
    object QArmadoDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QArmadoDetSUCURAL: TIntegerField
      FieldName = 'SUCURAL'
    end
  end
end
