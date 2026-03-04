object DatosPresupuestoOC: TDatosPresupuestoOC
  OnDestroy = DataModuleDestroy
  Height = 650
  Width = 805
  object DSPStock: TDataSetProvider
    DataSet = DMMain_FD.QStock
    Left = 28
    Top = 6
  end
  object CDSStock: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPStock'
    Left = 119
    Top = 7
    object CDSStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object CDSStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object CDSStockDETALLE_STK_ADICIONAL: TStringField
      FieldName = 'DETALLE_STK_ADICIONAL'
      Size = 200
    end
    object CDSStockCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Size = 25
    end
    object CDSStockRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Required = True
      Size = 3
    end
    object CDSStockSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Required = True
      Size = 5
    end
    object CDSStockMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Size = 4
    end
    object CDSStockTASA_IVA: TIntegerField
      FieldName = 'TASA_IVA'
      Required = True
    end
    object CDSStockSOBRETASA_IVA: TIntegerField
      FieldName = 'SOBRETASA_IVA'
    end
    object CDSStockCOSTO_EXENTO_STK: TFMTBCDField
      FieldName = 'COSTO_EXENTO_STK'
      Required = True
      Precision = 15
      Size = 3
    end
    object CDSStockCOSTO_GRAVADO_STK: TFMTBCDField
      FieldName = 'COSTO_GRAVADO_STK'
      Required = True
      Precision = 15
      Size = 3
    end
    object CDSStockCOSTO_TOTAL_STK: TFMTBCDField
      FieldName = 'COSTO_TOTAL_STK'
      Required = True
      Precision = 15
      Size = 3
    end
    object CDSStockREEMPLAZO_STK: TStringField
      FieldName = 'REEMPLAZO_STK'
      Required = True
    end
    object CDSStockFIJACION_PRECIO_GRAVADO: TFMTBCDField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Required = True
      Precision = 15
      Size = 3
    end
    object CDSStockFIJACION_PRECIO_EXENTO: TFMTBCDField
      FieldName = 'FIJACION_PRECIO_EXENTO'
      Required = True
      Precision = 15
      Size = 3
    end
    object CDSStockFIJACION_PRECIO_TOTAL: TFMTBCDField
      FieldName = 'FIJACION_PRECIO_TOTAL'
      Required = True
      Precision = 15
      Size = 3
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
    object CDSStockCLASE_ARTICULO: TIntegerField
      FieldName = 'CLASE_ARTICULO'
    end
    object CDSStockMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
    end
    object CDSStockCON_IMP_INT: TStringField
      FieldName = 'CON_IMP_INT'
      Size = 1
    end
    object CDSStockIMPUESTO_INTERNOS: TFMTBCDField
      FieldName = 'IMPUESTO_INTERNOS'
      Precision = 15
      Size = 3
    end
    object CDSStockGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockTASA_IB: TIntegerField
      FieldName = 'TASA_IB'
      Required = True
    end
    object CDSStockACTUALIZACOSTO: TStringField
      FieldName = 'ACTUALIZACOSTO'
      FixedChar = True
      Size = 1
    end
    object CDSStockDEPRODUCCION: TStringField
      FieldName = 'DEPRODUCCION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockPRODUCCIONDIRECTA: TStringField
      FieldName = 'PRODUCCIONDIRECTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockUNIDAD_COMPRA: TStringField
      FieldName = 'UNIDAD_COMPRA'
      Size = 3
    end
    object CDSStockCONTENIDO_COMPRA: TFMTBCDField
      FieldName = 'CONTENIDO_COMPRA'
      Required = True
      Precision = 15
      Size = 3
    end
    object CDSStockCONTROL_SERIE: TStringField
      FieldName = 'CONTROL_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockUSA_CODIGOBARRA: TStringField
      FieldName = 'USA_CODIGOBARRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockUNIDAD_ULTIMAUSADA: TStringField
      FieldName = 'UNIDAD_ULTIMAUSADA'
      Size = 3
    end
    object CDSStockID_TABLAPRECIOS: TIntegerField
      FieldName = 'ID_TABLAPRECIOS'
    end
    object CDSStockID_TABLAPRECIOSDETALLE: TIntegerField
      FieldName = 'ID_TABLAPRECIOSDETALLE'
    end
    object CDSStockCODIGO_PRECIO: TIntegerField
      FieldName = 'CODIGO_PRECIO'
    end
    object CDSStockFECHA_ALTA: TSQLTimeStampField
      FieldName = 'FECHA_ALTA'
    end
    object CDSStockCOSTO_GRAVADO_SOMBRA: TFMTBCDField
      FieldName = 'COSTO_GRAVADO_SOMBRA'
      Required = True
      Precision = 15
      Size = 3
    end
    object CDSStockCOSTO_EXENTO_SOMBRA: TFMTBCDField
      FieldName = 'COSTO_EXENTO_SOMBRA'
      Required = True
      Precision = 15
      Size = 3
    end
    object CDSStockFECHA_ACT_SOMBRA: TSQLTimeStampField
      FieldName = 'FECHA_ACT_SOMBRA'
    end
    object CDSStockFECHA_ULTIMAVTA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMAVTA'
    end
    object CDSStockMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object CDSStockCOSTO_GRAVADO_P: TFMTBCDField
      FieldName = 'COSTO_GRAVADO_P'
      Required = True
      Precision = 15
      Size = 3
    end
    object CDSStockCOSTO_EXENTO_P: TFMTBCDField
      FieldName = 'COSTO_EXENTO_P'
      Required = True
      Precision = 15
      Size = 3
    end
    object CDSStockCOSTO_TOTAL_P: TFMTBCDField
      FieldName = 'COSTO_TOTAL_P'
      Required = True
      Precision = 15
      Size = 3
    end
    object CDSStockPOSICION: TStringField
      FieldName = 'POSICION'
      Size = 10
    end
    object CDSStockPRESENTACION_UNIDAD: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      Size = 3
    end
    object CDSStockPRESENTACION_CANTIDAD: TFMTBCDField
      FieldName = 'PRESENTACION_CANTIDAD'
      Required = True
      Precision = 15
      Size = 3
    end
    object CDSStockEDITAPRECIO: TStringField
      FieldName = 'EDITAPRECIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockEDITADETALLE: TStringField
      FieldName = 'EDITADETALLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockURL: TStringField
      FieldName = 'URL'
      Size = 250
    end
    object CDSStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMA_COMPRA'
    end
    object CDSStockMUESTRARUBRO: TStringField
      FieldName = 'MUESTRARUBRO'
      Size = 35
    end
    object CDSStockMUESTRASUBRUBRO: TStringField
      FieldName = 'MUESTRASUBRUBRO'
      Size = 45
    end
    object CDSStockMUESTRAMARCA: TStringField
      FieldName = 'MUESTRAMARCA'
      Size = 25
    end
    object CDSStockMUESTRATASA: TStringField
      FieldName = 'MUESTRATASA'
      Size = 15
    end
    object CDSStockMUESTRATASAPORCENTAJE: TFMTBCDField
      FieldName = 'MUESTRATASAPORCENTAJE'
      Precision = 15
      Size = 3
    end
    object CDSStockMUESTRASOBRETASA: TStringField
      FieldName = 'MUESTRASOBRETASA'
      Size = 15
    end
    object CDSStockMUESTRASOBRETASAPROCENTAJE: TFMTBCDField
      FieldName = 'MUESTRASOBRETASAPROCENTAJE'
      Precision = 15
      Size = 3
    end
    object CDSStockMUESTRATASAIB: TFMTBCDField
      FieldName = 'MUESTRATASAIB'
      Precision = 15
      Size = 3
    end
    object CDSStockMUESTRATABLAPRECIODETALLE: TStringField
      FieldName = 'MUESTRATABLAPRECIODETALLE'
      Size = 40
    end
    object CDSStockMUESTRATABLAPRECIO1: TFMTBCDField
      FieldName = 'MUESTRATABLAPRECIO1'
      Precision = 15
      Size = 3
    end
    object CDSStockMUESTRATABLAPRECIO2: TFMTBCDField
      FieldName = 'MUESTRATABLAPRECIO2'
      Precision = 15
      Size = 3
    end
  end
  object DSPCondCompra: TDataSetProvider
    DataSet = DMMain_FD.QCondCompra
    Left = 28
    Top = 54
  end
  object CDSCondCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CodigoPago'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPCondCompra'
    Left = 119
    Top = 55
    object CDSCondCompraCODIGOPROVEE: TStringField
      FieldName = 'CODIGOPROVEE'
      Required = True
      Size = 6
    end
    object CDSCondCompraCODIGOPAGO: TIntegerField
      FieldName = 'CODIGOPAGO'
      Required = True
    end
    object CDSCondCompraDESCUENTO: TFMTBCDField
      FieldName = 'DESCUENTO'
      Precision = 15
      Size = 3
    end
    object CDSCondCompraDETALLE: TStringField
      FieldName = 'DETALLE'
      Required = True
    end
    object CDSCondCompraDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object CDSCondCompraDESCUENTO_FPAGO: TFMTBCDField
      FieldName = 'DESCUENTO_FPAGO'
      Precision = 15
      Size = 3
    end
  end
  object DSPProveedor: TDataSetProvider
    DataSet = DMMain_FD.QProveedores
    Left = 28
    Top = 97
  end
  object CDSProveedor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPProveedor'
    Left = 119
    Top = 103
    object CDSProveedorCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSProveedorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 35
    end
    object CDSProveedorRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSProveedorN_DE_CUENTA: TStringField
      FieldName = 'N_DE_CUENTA'
      Size = 14
    end
    object CDSProveedorID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
    end
    object CDSProveedorCOD_POSTAL: TStringField
      FieldName = 'COD_POSTAL'
      Size = 8
    end
    object CDSProveedorLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSProveedorDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSProveedorTELEFONO_1: TStringField
      FieldName = 'TELEFONO_1'
      Size = 10
    end
    object CDSProveedorTELEFONO_2: TStringField
      FieldName = 'TELEFONO_2'
      Size = 10
    end
    object CDSProveedorCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Required = True
    end
    object CDSProveedorN_DE_CUIT: TStringField
      FieldName = 'N_DE_CUIT'
      Size = 13
    end
    object CDSProveedorACTIVO: TStringField
      FieldName = 'ACTIVO'
      Size = 1
    end
    object CDSProveedorRETIENE_IVA: TStringField
      FieldName = 'RETIENE_IVA'
      Size = 1
    end
    object CDSProveedorRETIENE_IB: TStringField
      FieldName = 'RETIENE_IB'
      Size = 1
    end
    object CDSProveedorRETIENE_GANANCIAS: TStringField
      FieldName = 'RETIENE_GANANCIAS'
      Size = 1
    end
    object CDSProveedorIVA_SERVICIOS: TStringField
      FieldName = 'IVA_SERVICIOS'
      Size = 1
    end
    object CDSProveedorPRECIOS_CON_IVA: TStringField
      FieldName = 'PRECIOS_CON_IVA'
      Size = 1
    end
    object CDSProveedorOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object CDSProveedorNOMBRE_REPRESENTANTE: TStringField
      FieldName = 'NOMBRE_REPRESENTANTE'
      Size = 35
    end
    object CDSProveedorDIRECCION_REPRESENTANTE: TStringField
      FieldName = 'DIRECCION_REPRESENTANTE'
      Size = 35
    end
    object CDSProveedorTELEFONO_REPRESENTANTE: TStringField
      FieldName = 'TELEFONO_REPRESENTANTE'
      Size = 25
    end
    object CDSProveedorTIPO_PROVEEDOR: TStringField
      FieldName = 'TIPO_PROVEEDOR'
      Required = True
      Size = 1
    end
    object CDSProveedorFECHAULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'FECHAULTIMACOMPRA'
    end
    object CDSProveedorFECHAALTA: TSQLTimeStampField
      FieldName = 'FECHAALTA'
    end
    object CDSProveedorSALDO_INICIAL: TFMTBCDField
      FieldName = 'SALDO_INICIAL'
      Precision = 15
      Size = 3
    end
    object CDSProveedorID_PERC_IVA: TIntegerField
      FieldName = 'ID_PERC_IVA'
    end
    object CDSProveedorID_PERC_IBB: TIntegerField
      FieldName = 'ID_PERC_IBB'
    end
    object CDSProveedorID_PERC_IBB_2: TIntegerField
      FieldName = 'ID_PERC_IBB_2'
    end
    object CDSProveedorRUBRO: TIntegerField
      FieldName = 'RUBRO'
    end
    object CDSProveedorID_FACTURAPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURAPORDEFECTO'
    end
    object CDSProveedorEXENTO_GANACIA: TStringField
      FieldName = 'EXENTO_GANACIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSProveedorCODIGO_REGIMEN_RET_GANACIA: TIntegerField
      FieldName = 'CODIGO_REGIMEN_RET_GANACIA'
      Required = True
    end
    object CDSProveedorEXENTO_RETENCION_IB: TStringField
      FieldName = 'EXENTO_RETENCION_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSProveedorID_TASA_RETENCION_IB: TIntegerField
      FieldName = 'ID_TASA_RETENCION_IB'
      Required = True
    end
    object CDSProveedorNRO_IIBB: TStringField
      FieldName = 'NRO_IIBB'
      Size = 15
    end
    object CDSProveedorCORREO: TStringField
      FieldName = 'CORREO'
      Size = 100
    end
    object CDSProveedorCONV_MULTI: TStringField
      FieldName = 'CONV_MULTI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSProveedorMONEDA_PRECIOS: TIntegerField
      FieldName = 'MONEDA_PRECIOS'
    end
    object CDSProveedorTELEDISCADO: TStringField
      FieldName = 'TELEDISCADO'
      Size = 6
    end
    object CDSProveedorDESPERIVA: TStringField
      FieldName = 'DESPERIVA'
    end
    object CDSProveedorDESPERIB: TStringField
      FieldName = 'DESPERIB'
    end
    object CDSProveedorDESPERIB2: TStringField
      FieldName = 'DESPERIB2'
    end
    object CDSProveedorMUESTRADETALLERETIIBB: TStringField
      FieldName = 'MUESTRADETALLERETIIBB'
      Size = 25
    end
    object CDSProveedorMUESTRATASARETIIBB: TFMTBCDField
      FieldName = 'MUESTRATASARETIIBB'
      Precision = 15
      Size = 3
    end
    object CDSProveedorMUESTRAMINIMPONIRETIIBB: TFMTBCDField
      FieldName = 'MUESTRAMINIMPONIRETIIBB'
      Precision = 15
      Size = 3
    end
  end
  object DSPInscirpcion: TDataSetProvider
    DataSet = DMMain_FD.QInscripcion
    Left = 28
    Top = 145
  end
  object CDSInscripcion: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPInscirpcion'
    Left = 119
    Top = 151
    object CDSInscripcionCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CDSInscripcionDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 15
    end
    object CDSInscripcionCOBRASOBRETASA: TStringField
      FieldName = 'COBRASOBRETASA'
      Size = 1
    end
    object CDSInscripcionAPLICAPERCEPCIONIVA: TStringField
      FieldName = 'APLICAPERCEPCIONIVA'
      Size = 1
    end
    object CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField
      FieldName = 'APLICAPERCEPCIONIIBB'
      Size = 1
    end
    object CDSInscripcionDISCRIMINAIVA: TStringField
      FieldName = 'DISCRIMINAIVA'
      Size = 1
    end
  end
  object DSPIva: TDataSetProvider
    DataSet = DMMain_FD.QIva
    Left = 28
    Top = 189
  end
  object CDSIva: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPIva'
    Left = 119
    Top = 199
    object CDSIvaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSIvaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object CDSIvaTASA: TFMTBCDField
      FieldName = 'TASA'
      Precision = 15
      Size = 3
    end
    object CDSIvaCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Required = True
    end
  end
  object DSPBuscaCondCompra: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCondCompraProvee
    Left = 28
    Top = 238
  end
  object CDSBuscaCondCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CodigoPago'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPCondCompra'
    Left = 119
    Top = 247
    object IntegerField1: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGOPAGO'
    end
    object StringField2: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 20
      FieldName = 'DETALLE'
    end
    object FloatField1: TFloatField
      DisplayLabel = 'Dscto.'
      FieldName = 'DESCUENTO'
    end
    object IntegerField2: TIntegerField
      DisplayLabel = 'Dias'
      FieldName = 'DIAS'
    end
    object FloatField2: TFloatField
      FieldName = 'DESCUENTO_FPAGO'
      Visible = False
    end
    object StringField: TStringField
      FieldName = 'CODIGOPROVEE'
      Visible = False
      Size = 6
    end
  end
  object DSPBuscaVendedor: TDataSetProvider
    DataSet = DMBuscadores.QBuscaVendedores
    Left = 28
    Top = 296
  end
  object CDSBuscaVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaVendedor'
    Left = 119
    Top = 295
    object CDSBuscaVendedorCODIGO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSBuscaVendedorNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 35
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSBuscaVendedorCOMISION: TFMTBCDField
      FieldName = 'COMISION'
      Required = True
      Precision = 15
      Size = 3
    end
  end
  object DSPPresOC_cab: TDataSetProvider
    DataSet = QPresOC_Cab
    UpdateMode = upWhereKeyOnly
    Left = 328
    Top = 8
  end
  object CDSPresOC_Cab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPPresOC_cab'
    OnNewRecord = CDSPresOC_CabNewRecord
    Left = 432
    Top = 8
    object CDSPresOC_CabID_OC: TIntegerField
      FieldName = 'ID_OC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPresOC_CabCODIGO: TStringField
      FieldName = 'CODIGO'
      OnSetText = CDSPresOC_CabCODIGOSetText
      Size = 6
    end
    object CDSPresOC_CabNUMERO: TStringField
      FieldName = 'NUMERO'
      OnSetText = CDSPresOC_CabNUMEROSetText
      Size = 8
    end
    object CDSPresOC_CabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSPresOC_CabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSPresOC_CabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSPresOC_CabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSPresOC_CabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSPresOC_CabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object CDSPresOC_CabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSPresOC_CabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSPresOC_CabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object CDSPresOC_CabCONDICIONCOMPRA: TIntegerField
      FieldName = 'CONDICIONCOMPRA'
      OnSetText = CDSPresOC_CabCONDICIONCOMPRASetText
    end
    object CDSPresOC_CabANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object CDSPresOC_CabNETOGRAV1: TFMTBCDField
      FieldName = 'NETOGRAV1'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_CabNETOGRAV2: TFMTBCDField
      FieldName = 'NETOGRAV2'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_CabDSTO: TFMTBCDField
      FieldName = 'DSTO'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_CabDSTOIMPORTE: TFMTBCDField
      FieldName = 'DSTOIMPORTE'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_CabNETOEXEN1: TFMTBCDField
      FieldName = 'NETOEXEN1'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_CabNETOEXEN2: TFMTBCDField
      FieldName = 'NETOEXEN2'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_CabIMPORTEEXCLUIDO1: TFMTBCDField
      FieldName = 'IMPORTEEXCLUIDO1'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_CabIMPORTEEXCLUIDO2: TFMTBCDField
      FieldName = 'IMPORTEEXCLUIDO2'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_CabNETOMONOTRIBUTO1: TFMTBCDField
      FieldName = 'NETOMONOTRIBUTO1'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_CabNETOMONOTRIBUTO2: TFMTBCDField
      FieldName = 'NETOMONOTRIBUTO2'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_CabTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_CabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object CDSPresOC_CabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSPresOC_CabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object CDSPresOC_CabAUTORIZO: TStringField
      FieldName = 'AUTORIZO'
      Size = 6
    end
    object CDSPresOC_CabREALIZO: TStringField
      FieldName = 'REALIZO'
      OnSetText = CDSPresOC_CabREALIZOSetText
      Size = 6
    end
    object CDSPresOC_CabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object CDSPresOC_CabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Size = 1
    end
    object CDSPresOC_CabESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object CDSPresOC_CabOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object CDSPresOC_CabNOTAS: TStringField
      FieldName = 'NOTAS'
      Size = 200
    end
    object CDSPresOC_CabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSPresOC_CabTRANSPORTE: TIntegerField
      FieldName = 'TRANSPORTE'
    end
    object CDSPresOC_CabTIPO: TSmallintField
      FieldName = 'TIPO'
      Required = True
    end
    object CDSPresOC_CabID_ORDENCOMPRA: TIntegerField
      FieldName = 'ID_ORDENCOMPRA'
    end
    object CDSPresOC_CabID_LISTA_PROVEEDOR: TIntegerField
      FieldName = 'ID_LISTA_PROVEEDOR'
    end
    object CDSPresOC_CabNRO_LISTA_PROVEEDOR: TStringField
      FieldName = 'NRO_LISTA_PROVEEDOR'
      Size = 15
    end
    object CDSPresOC_CabFECHA_LISTA_PROVEEDOR: TSQLTimeStampField
      FieldName = 'FECHA_LISTA_PROVEEDOR'
    end
    object CDSPresOC_CabMUESTRAREALIZO: TStringField
      FieldName = 'MUESTRAREALIZO'
      ProviderFlags = []
      Size = 50
    end
    object CDSPresOC_CabMUESTRACONDCOMPRA: TStringField
      FieldName = 'MUESTRACONDCOMPRA'
      ProviderFlags = []
    end
    object CDSPresOC_CabMUESTRANROOC: TStringField
      FieldName = 'MUESTRANROOC'
      ProviderFlags = []
      Size = 13
    end
  end
  object ibgPresOC_Cab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_OC_CAB_EXT'
    SystemGenerators = False
    Left = 662
    Top = 16
  end
  object DSPPresOC_Det: TDataSetProvider
    DataSet = QPresOC_Det
    UpdateMode = upWhereKeyOnly
    Left = 328
    Top = 65
  end
  object CDSPresOC_Det: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPresOC_Det'
    AfterPost = CDSPresOC_DetAfterPost
    AfterDelete = CDSPresOC_DetAfterDelete
    OnNewRecord = CDSPresOC_DetNewRecord
    Left = 432
    Top = 63
    object CDSPresOC_DetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPresOC_DetID_CABOC: TIntegerField
      FieldName = 'ID_CABOC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPresOC_DetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSPresOC_DetCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOARTICULO'
      OnSetText = CDSPresOC_DetCODIGOARTICULOSetText
      Size = 8
    end
    object CDSPresOC_DetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSPresOC_DetUNIDAD: TStringField
      DisplayLabel = 'Uni'
      FieldName = 'UNIDAD'
      Size = 3
    end
    object CDSPresOC_DetCANTIDADPEDIDA: TFMTBCDField
      DisplayLabel = 'Cant.'
      FieldName = 'CANTIDADPEDIDA'
      OnSetText = CDSPresOC_DetCANTIDADPEDIDASetText
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_DetUNITARIO_TOTAL: TFMTBCDField
      DisplayLabel = 'Costo Uni.'
      FieldName = 'UNITARIO_TOTAL'
      OnSetText = CDSPresOC_DetUNITARIO_TOTALSetText
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_DetUNITARIO_GRAVADO: TFMTBCDField
      FieldName = 'UNITARIO_GRAVADO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_DetUNITARIO_EXENTO: TFMTBCDField
      FieldName = 'UNITARIO_EXENTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_DetTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_DetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Size = 1
    end
    object CDSPresOC_DetIVA_TASA: TFMTBCDField
      FieldName = 'IVA_TASA'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_DetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
    end
    object CDSPresOC_DetIVA_SOBRETASA: TFMTBCDField
      FieldName = 'IVA_SOBRETASA'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_DetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
    end
    object CDSPresOC_DetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object CDSPresOC_DetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
    end
    object CDSPresOC_DetUNITARIO_NETO_TOTAL: TFMTBCDField
      FieldName = 'UNITARIO_NETO_TOTAL'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_DetUNITARIO_NETO_GRAVADO: TFMTBCDField
      FieldName = 'UNITARIO_NETO_GRAVADO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_DetUNITARIO_NETO_EXENTO: TFMTBCDField
      FieldName = 'UNITARIO_NETO_EXENTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_DetUNITARIO_NETO_TOTAL_2: TFMTBCDField
      FieldName = 'UNITARIO_NETO_TOTAL_2'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_DetUNITARIO_NETO_GRAVADO_2: TFMTBCDField
      FieldName = 'UNITARIO_NETO_GRAVADO_2'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_DetUNITARIO_NETO_EXENTO_2: TFMTBCDField
      FieldName = 'UNITARIO_NETO_EXENTO_2'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_DetTOTAL_NETO: TFMTBCDField
      FieldName = 'TOTAL_NETO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_DetUNITARIO_FINAL_TOTAL: TFMTBCDField
      FieldName = 'UNITARIO_FINAL_TOTAL'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_DetUNITARIO_FINAL_GRAVADO: TFMTBCDField
      FieldName = 'UNITARIO_FINAL_GRAVADO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_DetUNITARIO_FINAL_EXENTO: TFMTBCDField
      FieldName = 'UNITARIO_FINAL_EXENTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_DetUNITARIO_FINAL_TOTAL_2: TFMTBCDField
      FieldName = 'UNITARIO_FINAL_TOTAL_2'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_DetUNITARIO_FINAL_GRAVADO_2: TFMTBCDField
      FieldName = 'UNITARIO_FINAL_GRAVADO_2'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_DetUNITARIO_FINAL_EXENTO_2: TFMTBCDField
      FieldName = 'UNITARIO_FINAL_EXENTO_2'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSPresOC_DetTOTAL_FINAL: TFMTBCDField
      FieldName = 'TOTAL_FINAL'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
  end
  object DSPresOC_Det: TDataSource
    DataSet = CDSPresOC_Det
    Left = 552
    Top = 80
  end
  object ibgPresOC_Det: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_OC_DET_EXT'
    SystemGenerators = False
    Left = 654
    Top = 80
  end
  object DSDesctoFacturables: TDataSource
    DataSet = CDSDsctoFacturables
    Left = 552
    Top = 128
  end
  object CDSDsctoFacturables: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDsctoFacturables'
    AfterPost = CDSDsctoFacturablesAfterPost
    AfterDelete = CDSDsctoFacturablesAfterDelete
    OnNewRecord = CDSDsctoFacturablesNewRecord
    Left = 432
    Top = 120
    object CDSDsctoFacturablesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDsctoFacturablesID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDsctoFacturablesTIPO: TIntegerField
      FieldName = 'TIPO'
      Required = True
      OnSetText = CDSDsctoFacturablesTIPOSetText
    end
    object CDSDsctoFacturablesDESCUENTO: TFMTBCDField
      DisplayLabel = '-%'
      FieldName = 'DESCUENTO'
      Required = True
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSDsctoFacturablesIMPORTE: TFMTBCDField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Required = True
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSDsctoFacturablesMUESTRADESCUENTO: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'MUESTRADESCUENTO'
      Size = 30
    end
    object CDSDsctoFacturablesEDITABLE: TStringField
      FieldName = 'EDITABLE'
      FixedChar = True
      Size = 1
    end
  end
  object DSPDsctoFacturables: TDataSetProvider
    DataSet = QDsctoFacturables
    UpdateMode = upWhereKeyOnly
    Left = 328
    Top = 120
  end
  object ibgDsctoFac: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_OC_DSTOS_FAC_EXT'
    SystemGenerators = False
    Left = 654
    Top = 128
  end
  object DSCostosFacturables: TDataSource
    DataSet = CDSCostosFacturables
    Left = 552
    Top = 176
  end
  object CDSCostosFacturables: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCostosFacturables'
    AfterPost = CDSCostosFacturablesAfterPost
    AfterDelete = CDSCostosFacturablesAfterDelete
    OnNewRecord = CDSCostosFacturablesNewRecord
    Left = 432
    Top = 174
    object CDSCostosFacturablesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCostosFacturablesID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCostosFacturablesTIPO: TIntegerField
      FieldName = 'TIPO'
      Required = True
      OnSetText = CDSCostosFacturablesTIPOSetText
    end
    object CDSCostosFacturablesPORCENTAJE: TFMTBCDField
      DisplayLabel = '+%'
      FieldName = 'PORCENTAJE'
      Required = True
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSCostosFacturablesIMPORTE: TFMTBCDField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Required = True
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSCostosFacturablesMUESTRARECARGO: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'MUESTRARECARGO'
      Size = 30
    end
    object CDSCostosFacturablesEDITABLE: TStringField
      FieldName = 'EDITABLE'
      FixedChar = True
      Size = 1
    end
  end
  object DSPCostosFacturables: TDataSetProvider
    DataSet = QCostosFacturables
    UpdateMode = upWhereKeyOnly
    Left = 328
    Top = 176
  end
  object ibgCostoFac: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_OC_COSTOS_FAC_EXT'
    SystemGenerators = False
    Left = 654
    Top = 176
  end
  object DSDsctoNoFac: TDataSource
    DataSet = CDSDsctoNoFac
    Left = 552
    Top = 224
  end
  object CDSDsctoNoFac: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPDsctoNoFac'
    AfterPost = CDSDsctoNoFacAfterPost
    AfterDelete = CDSDsctoNoFacAfterDelete
    OnNewRecord = CDSDsctoNoFacNewRecord
    Left = 432
    Top = 230
    object CDSDsctoNoFacID: TIntegerField
      FieldName = 'ID'
    end
    object CDSDsctoNoFacID_CAB: TIntegerField
      FieldName = 'ID_CAB'
    end
    object CDSDsctoNoFacTIPO: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      OnSetText = CDSDsctoNoFacTIPOSetText
    end
    object CDSDsctoNoFacMUESTRADESCUENTO: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'MUESTRADESCUENTO'
      ProviderFlags = []
      Size = 30
    end
    object CDSDsctoNoFacEDITABLE: TStringField
      FieldName = 'EDITABLE'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CDSDsctoNoFacDESCUENTO: TFMTBCDField
      DisplayLabel = '-%'
      FieldName = 'DESCUENTO'
      Required = True
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSDsctoNoFacIMPORTE: TFMTBCDField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Required = True
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
  end
  object DSPDsctoNoFac: TDataSetProvider
    DataSet = QDsctoNoFact
    UpdateMode = upWhereKeyOnly
    Left = 328
    Top = 232
  end
  object ibgDsctoNoFac: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_OC_DSTOS_NOFAC_EXT'
    SystemGenerators = False
    Left = 654
    Top = 224
  end
  object DSCostoNoFac: TDataSource
    DataSet = CDSCostoNoFac
    Left = 552
    Top = 272
  end
  object CDSCostoNoFac: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCostoNoFac'
    Left = 432
    Top = 289
    object CDSCostoNoFacID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCostoNoFacID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCostoNoFacTIPO: TIntegerField
      FieldName = 'TIPO'
      Required = True
      OnSetText = CDSCostoNoFacTIPOSetText
    end
    object CDSCostoNoFacPORCENTAJE: TFMTBCDField
      DisplayLabel = '+%'
      FieldName = 'PORCENTAJE'
      Required = True
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSCostoNoFacIMPORTE: TFMTBCDField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Required = True
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSCostoNoFacMUESTRARECARGO: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'MUESTRARECARGO'
      Size = 30
    end
    object CDSCostoNoFacEDITABLE: TStringField
      FieldName = 'EDITABLE'
      FixedChar = True
      Size = 1
    end
  end
  object DSPCostoNoFac: TDataSetProvider
    DataSet = QCostoNoFac
    UpdateMode = upWhereKeyOnly
    Left = 328
    Top = 288
  end
  object ibgCostoNoFac: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_OC_COSTOS_NOFAC_EXT'
    SystemGenerators = False
    Left = 654
    Top = 274
  end
  object CDSBuscadorRecargo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaRecargo'
    Left = 224
    Top = 376
    object CDSBuscadorRecargoDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 30
    end
    object CDSBuscadorRecargoRECARGO: TFloatField
      DisplayLabel = '%'
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
      DisplayFormat = '0.00'
    end
    object CDSBuscadorRecargoID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSPBuscaRecargo: TDataSetProvider
    DataSet = QBuscadorRec
    Left = 152
    Top = 376
  end
  object CDSBuscadorDscto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPbuscadorDescto'
    Left = 224
    Top = 424
    object CDSBuscadorDsctoDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 30
    end
    object CDSBuscadorDsctoDESCUENTO: TFloatField
      DisplayLabel = '%'
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      DisplayFormat = '0.00'
    end
    object CDSBuscadorDsctoID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSPbuscadorDescto: TDataSetProvider
    DataSet = QBuscadorDes
    Left = 152
    Top = 432
  end
  object DSPPersonal: TDataSetProvider
    DataSet = DMMain_2.QPersonal
    Left = 152
    Top = 483
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
    Left = 224
    Top = 483
    object CDSPersonalCARGO: TIntegerField
      FieldName = 'CARGO'
    end
    object CDSPersonalCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object CDSPersonalCTACONTABLE: TIntegerField
      FieldName = 'CTACONTABLE'
    end
    object CDSPersonalDOMICILIO: TStringField
      FieldName = 'DOMICILIO'
      Size = 50
    end
    object CDSPersonalESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      Size = 1
    end
    object CDSPersonalNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object CDSPersonalVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object CDSPersonalCOBRADOR: TStringField
      FieldName = 'COBRADOR'
      FixedChar = True
      Size = 1
    end
    object CDSPersonalACTIVO: TStringField
      FieldName = 'ACTIVO'
      FixedChar = True
      Size = 1
    end
    object CDSPersonalAUTORIZAOC: TStringField
      FieldName = 'AUTORIZAOC'
      Size = 1
    end
  end
  object QPresOC_Cab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cab.*,'
      '  r.nombre as MuestraRealizo,'
      '  Fp.Detalle as MuestraCondCompra,'
      '  oc.nrocpbte as MuestraNroOC'
      'from OC_CAB_EXT cab'
      '  left join personal r on r.codigo=cab.realizo'
      '  left join F_Pago Fp on Fp.Codigo=cab.CondicionCompra'
      '  left join ordencompracab oc on oc.id_presupuesto_oc=cab.id_oc'
      'where cab.id_oc=:id'
      '')
    Left = 248
    Top = 8
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QPresOC_Det: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from OC_DET_EXT det'
      'where det.id_caboc=:id'
      '')
    Left = 248
    Top = 64
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QDsctoFacturables: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select ds.*,d.detalle as MuestraDescuento,d.editable from OC_DST' +
        'OS_FAC_EXT ds'
      'left join presupuesto_oc_descuentos d on d.id=ds.tipo'
      'where ds.id_cab=:id'
      '')
    Left = 248
    Top = 120
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QCostosFacturables: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select ds.*,r.detalle as MuestraRecargo,r.editable from OC_costo' +
        's_FAC_EXT ds'
      'left join presupuesto_oc_recargos r on r.id=ds.tipo'
      'where ds.id_cab=:id'
      '')
    Left = 248
    Top = 176
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QDsctoNoFact: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select ds.*,d.detalle as MuestraDescuento,d.editable from OC_DST' +
        'OS_NOFAC_EXT ds'
      'left join presupuesto_oc_descuentos d on d.id=ds.tipo'
      'where ds.id_cab=:id'
      '')
    Left = 248
    Top = 232
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QCostoNoFac: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select ds.*,r.detalle as MuestraRecargo,r.editable from OC_costo' +
        's_NOFAC_EXT ds'
      'left join presupuesto_oc_recargos r on r.id=ds.tipo'
      'where ds.id_cab=:id'
      '')
    Left = 248
    Top = 288
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QBuscadorRec: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from PRESUPUESTO_OC_RECARGOS '
      '')
    Left = 72
    Top = 376
  end
  object QBuscadorDes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from PRESUPUESTO_OC_DESCUENTOS'
      '')
    Left = 64
    Top = 440
  end
  object QComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      'id_comprobante=:id  and (tipo_comprob='#39'OC'#39' )'
      'and compra_venta='#39'C'#39' and sucursal=:suc'
      '')
    Left = 328
    Top = 384
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QDescuentos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from PRESUPUESTO_OC_DESCUENTOS where id=:id')
    Left = 472
    Top = 376
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QDescuentosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDescuentosDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 30
    end
    object QDescuentosDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
    end
    object QDescuentosEDITABLE: TStringField
      FieldName = 'EDITABLE'
      Origin = 'EDITABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QRecargos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from PRESUPUESTO_OC_RECARGOS where id=:id'
      '')
    Left = 560
    Top = 376
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRecargosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRecargosDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 30
    end
    object QRecargosRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
    end
    object QRecargosEDITABLE: TStringField
      FieldName = 'EDITABLE'
      Origin = 'EDITABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QPrimerConComp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select Min(codigopago) from condcompra where codigoprovee=:codig' +
        'o'
      '')
    Left = 472
    Top = 432
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QPrimerConCompMIN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MIN'
      Origin = '"MIN"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QListaPrecioProv: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select l.* from lista_precios_prov_cabecera l'
      'where l.codigo_provee=:codigo'
      '')
    Left = 568
    Top = 440
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QListaPrecioProvID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QListaPrecioProvCODIGO_PROVEE: TStringField
      FieldName = 'CODIGO_PROVEE'
      Origin = 'CODIGO_PROVEE'
      Size = 6
    end
    object QListaPrecioProvNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 45
    end
    object QListaPrecioProvFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QListaPrecioProvOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object QListaPrecioProvLISTA_NRO: TStringField
      FieldName = 'LISTA_NRO'
      Origin = 'LISTA_NRO'
      Required = True
      Size = 15
    end
    object QListaPrecioProvRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
      Required = True
    end
  end
end
