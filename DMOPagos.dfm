object DatosOPago: TDatosOPago
  OnDestroy = DataModuleDestroy
  Height = 758
  Width = 971
  object DSPOPago: TDataSetProvider
    DataSet = DMMain_FD.QOPago
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 8
  end
  object DSPMovAplicaCCCompra: TDataSetProvider
    DataSet = DMMain_FD.QMovAplicaCCCompra
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 58
  end
  object DSPMovCCCompra: TDataSetProvider
    DataSet = DMMain_FD.QMovCCCompra
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 110
  end
  object DSPProveedor: TDataSetProvider
    DataSet = DMMain_FD.QProveedores
    Options = []
    Left = 40
    Top = 154
  end
  object IBGId_Op: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_OPAGO'
    SystemGenerators = False
    Left = 248
    Top = 8
  end
  object IBGId_Mov_AplicaCCCompra: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_MOVAPLICACCCOMPRA'
    SystemGenerators = False
    Left = 360
    Top = 56
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = DMMain_FD.QEmpresa
    Options = []
    Left = 456
    Top = 112
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMMain_FD.QSucursal
    Options = []
    Left = 464
    Top = 8
  end
  object DSPIva: TDataSetProvider
    DataSet = DMMain_FD.QIva
    Options = []
    Left = 460
    Top = 61
  end
  object CDSRetIngBrCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPRetIngBrCab'
    OnNewRecord = CDSRetIngBrCabNewRecord
    Left = 216
    Top = 209
    object CDSRetIngBrCabID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRetIngBrCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSRetIngBrCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSRetIngBrCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSRetIngBrCabCODIGOPOSTAL: TStringField
      FieldName = 'CODIGOPOSTAL'
      Size = 8
    end
    object CDSRetIngBrCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSRetIngBrCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSRetIngBrCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSRetIngBrCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSRetIngBrCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSRetIngBrCabLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSRetIngBrCabSUC: TStringField
      FieldName = 'SUC'
      Size = 4
    end
    object CDSRetIngBrCabNUMERO: TStringField
      FieldName = 'NUMERO'
      OnSetText = CDSRetIngBrCabNUMEROSetText
      Size = 8
    end
    object CDSRetIngBrCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSRetIngBrCabID_CPBTE_ORIGEN: TIntegerField
      FieldName = 'ID_CPBTE_ORIGEN'
    end
    object CDSRetIngBrCabTIPOCPBTE_ORIGEN: TStringField
      FieldName = 'TIPOCPBTE_ORIGEN'
      Size = 2
    end
    object CDSRetIngBrCabCLASECPBTE_ORIGEN: TStringField
      FieldName = 'CLASECPBTE_ORIGEN'
      Size = 2
    end
    object CDSRetIngBrCabNROCPBTE_ORIGEN: TStringField
      FieldName = 'NROCPBTE_ORIGEN'
      Size = 13
    end
    object CDSRetIngBrCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSRetIngBrCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSRetIngBrCabNOMBRE_AGTE_RET: TStringField
      FieldName = 'NOMBRE_AGTE_RET'
      Size = 35
    end
    object CDSRetIngBrCabDIRECCION_AGTE_RET: TStringField
      FieldName = 'DIRECCION_AGTE_RET'
      Size = 35
    end
    object CDSRetIngBrCabCUIT_AGTE_RET: TStringField
      FieldName = 'CUIT_AGTE_RET'
      Size = 13
    end
    object CDSRetIngBrCabCPOSTAL_AGTE_RET: TStringField
      FieldName = 'CPOSTAL_AGTE_RET'
      Size = 8
    end
    object CDSRetIngBrCabLOCALIDAD_AGTE_RET: TStringField
      FieldName = 'LOCALIDAD_AGTE_RET'
      Size = 15
    end
    object CDSRetIngBrCabNRO_AGTE_RET: TStringField
      FieldName = 'NRO_AGTE_RET'
      Size = 15
    end
    object CDSRetIngBrCabNETO_GRAVADO: TFloatField
      FieldName = 'NETO_GRAVADO'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSRetIngBrCabTASA_RETENCION: TFloatField
      FieldName = 'TASA_RETENCION'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSRetIngBrCabANULADO: TStringField
      FieldName = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSRetIngBrCabESTADO: TStringField
      FieldName = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSRetIngBrCabNRO_IIBB: TStringField
      FieldName = 'NRO_IIBB'
      Size = 15
    end
  end
  object DSPRetIngBrCab: TDataSetProvider
    DataSet = QRetIngBrCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 209
  end
  object DSRetIngBrCab: TDataSource
    DataSet = CDSRetIngBrCab
    OnStateChange = DSRetIngBrCabStateChange
    Left = 307
    Top = 201
  end
  object CDSRetIngBrDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRetIngBrDet'
    AfterPost = CDSRetIngBrDetAfterPost
    OnNewRecord = CDSRetIngBrDetNewRecord
    Left = 216
    Top = 254
    object CDSRetIngBrDetID_DET: TIntegerField
      FieldName = 'ID_DET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRetIngBrDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSRetIngBrDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSRetIngBrDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 15
    end
    object CDSRetIngBrDetIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object CDSRetIngBrDetBASEIMPONIBLE: TFloatField
      FieldName = 'BASEIMPONIBLE'
    end
    object CDSRetIngBrDetPORCENTAJE: TFloatField
      FieldName = 'PORCENTAJE'
      OnSetText = CDSRetIngBrDetPORCENTAJESetText
    end
    object CDSRetIngBrDetRETENCION: TFloatField
      FieldName = 'RETENCION'
    end
    object CDSRetIngBrDetID_CPBTE_RETENIDO: TIntegerField
      FieldName = 'ID_CPBTE_RETENIDO'
    end
    object CDSRetIngBrDetTIPOCPBTE_RETENIDO: TStringField
      FieldName = 'TIPOCPBTE_RETENIDO'
      Size = 2
    end
    object CDSRetIngBrDetCLASECPBTE_RETENIDO: TStringField
      FieldName = 'CLASECPBTE_RETENIDO'
      Size = 2
    end
  end
  object DSPRetIngBrDet: TDataSetProvider
    DataSet = QRetIngBrDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 254
  end
  object DSRetIngBrDet: TDataSource
    DataSet = CDSRetIngBrDet
    Left = 299
    Top = 254
  end
  object IBGId_RetIngBr_Cab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RET_INGBR_CAB'
    SystemGenerators = False
    Left = 380
    Top = 209
  end
  object IBGId_RetIngBr_Det: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RET_INGBR_DET'
    SystemGenerators = False
    Left = 378
    Top = 254
  end
  object DSRetGanancia: TDataSource
    DataSet = CDSRetGanancia
    Left = 299
    Top = 303
  end
  object CDSRetGanancia: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRetGanancia'
    OnNewRecord = CDSRetGananciaNewRecord
    Left = 216
    Top = 303
    object CDSRetGananciaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRetGananciaID_OP: TIntegerField
      FieldName = 'ID_OP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRetGananciaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object CDSRetGananciaNUMERO_RETENCION: TStringField
      FieldName = 'NUMERO_RETENCION'
      Required = True
      OnSetText = CDSRetGananciaNUMERO_RETENCIONSetText
      FixedChar = True
      Size = 14
    end
    object CDSRetGananciaCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Required = True
      Size = 6
    end
    object CDSRetGananciaCODIGO_REGIMEN: TIntegerField
      FieldName = 'CODIGO_REGIMEN'
      Required = True
    end
    object CDSRetGananciaCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Size = 25
    end
    object CDSRetGananciaTASA: TFloatField
      FieldName = 'TASA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSRetGananciaMINIMO_NO_IMPONIBLE: TFloatField
      FieldName = 'MINIMO_NO_IMPONIBLE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSRetGananciaPAGOS_ACUMULADOS: TFloatField
      FieldName = 'PAGOS_ACUMULADOS'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSRetGananciaIMPUESTO_RETENIDO: TFloatField
      FieldName = 'IMPUESTO_RETENIDO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSRetGananciaOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
    end
    object CDSRetGananciaVALOR_MINIMO_IMPUESTO: TFloatField
      FieldName = 'VALOR_MINIMO_IMPUESTO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSRetGananciaANULADA: TStringField
      FieldName = 'ANULADA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSRetGananciaESTADO: TStringField
      FieldName = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPRetGanancia: TDataSetProvider
    DataSet = QRetGanancia
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 303
  end
  object Ibg_Retenciones: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RETENCIONES_GANANCIA'
    SystemGenerators = False
    Left = 376
    Top = 303
  end
  object QStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select S.*, Ru.Detalle_Rubro as MuestraRubro,'
      '      Sub.Detalle_SubRubro as MuestraSubRubro,'
      '      M.Descripcion_Marca as MuestraMarca,'
      '      Ta.Descripcion as MuestraTasa,'
      '      ta.tasa as MuestraTasaPorcentaje,'
      '      STa.Descripcion as MuestraSobreTasa,'
      '      sta.tasa as MuestraSobreTasaProcentaje,'
      '      ib.tasa as MuestraTasaIB,'
      '      tpc.detalle as MuestraTablaPrecioDetalle,'
      '      tpd.precio1 as MuestraTablaPrecio1,'
      '      tpd.precio1 as MuestraTablaPrecio2'
      '      from stock s'
      
        '      left join tabla_precioscab tpc on tpc.id = s.id_tablapreci' +
        'os'
      
        '      left join tabla_preciosdet tpd on tpd.id = s.id_tablapreci' +
        'osdetalle'
      '      left join rubros ru on s.rubro_stk = ru.Codigo_rubro'
      
        '      left join subrubros sub on s.subrubro_stk = sub.Codigo_sub' +
        'rubro'
      '      left join marcas m on s.marca_stk = m.marca_stk'
      '      left join gravamen ta on s.tasa_iva = ta.codigo'
      '      left join gravamen Sta on s.Sobretasa_iva = Sta.codigo'
      '      left join percepib ib on s.tasa_ib = ib.codigo'
      'where S.Codigo_Stk = :codigo'
      ' ')
    Left = 640
    Top = 8
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object QStockDETALLE_STK_ADICIONAL: TStringField
      FieldName = 'DETALLE_STK_ADICIONAL'
      Size = 200
    end
    object QStockCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Size = 25
    end
    object QStockRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Required = True
      Size = 3
    end
    object QStockSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Required = True
      Size = 5
    end
    object QStockMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Size = 4
    end
    object QStockTASA_IVA: TIntegerField
      FieldName = 'TASA_IVA'
      Required = True
    end
    object QStockSOBRETASA_IVA: TIntegerField
      FieldName = 'SOBRETASA_IVA'
    end
    object QStockCOSTO_EXENTO_STK: TFloatField
      FieldName = 'COSTO_EXENTO_STK'
      Required = True
    end
    object QStockCOSTO_GRAVADO_STK: TFloatField
      FieldName = 'COSTO_GRAVADO_STK'
      Required = True
    end
    object QStockCOSTO_TOTAL_STK: TFloatField
      FieldName = 'COSTO_TOTAL_STK'
      Required = True
    end
    object QStockREEMPLAZO_STK: TStringField
      FieldName = 'REEMPLAZO_STK'
      Required = True
    end
    object QStockFIJACION_PRECIO_GRAVADO: TFloatField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Required = True
    end
    object QStockFIJACION_PRECIO_EXENTO: TFloatField
      FieldName = 'FIJACION_PRECIO_EXENTO'
      Required = True
    end
    object QStockFIJACION_PRECIO_TOTAL: TFloatField
      FieldName = 'FIJACION_PRECIO_TOTAL'
      Required = True
    end
    object QStockFUAP: TSQLTimeStampField
      FieldName = 'FUAP'
    end
    object QStockUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object QStockCONTROLASTOCK: TStringField
      FieldName = 'CONTROLASTOCK'
      Required = True
      Size = 1
    end
    object QStockCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Size = 10
    end
    object QStockCLASE_ARTICULO: TIntegerField
      FieldName = 'CLASE_ARTICULO'
    end
    object QStockMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
    end
    object QStockCON_IMP_INT: TStringField
      FieldName = 'CON_IMP_INT'
      Size = 1
    end
    object QStockIMPUESTO_INTERNOS: TFloatField
      FieldName = 'IMPUESTO_INTERNOS'
    end
    object QStockGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockTASA_IB: TIntegerField
      FieldName = 'TASA_IB'
      Required = True
    end
    object QStockACTUALIZACOSTO: TStringField
      FieldName = 'ACTUALIZACOSTO'
      FixedChar = True
      Size = 1
    end
    object QStockDEPRODUCCION: TStringField
      FieldName = 'DEPRODUCCION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockPRODUCCIONDIRECTA: TStringField
      FieldName = 'PRODUCCIONDIRECTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockUNIDAD_COMPRA: TStringField
      FieldName = 'UNIDAD_COMPRA'
      Size = 3
    end
    object QStockCONTENIDO_COMPRA: TFloatField
      FieldName = 'CONTENIDO_COMPRA'
      Required = True
    end
    object QStockCONTROL_SERIE: TStringField
      FieldName = 'CONTROL_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockUSA_CODIGOBARRA: TStringField
      FieldName = 'USA_CODIGOBARRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockUNIDAD_ULTIMAUSADA: TStringField
      FieldName = 'UNIDAD_ULTIMAUSADA'
      Size = 3
    end
    object QStockID_TABLAPRECIOS: TIntegerField
      FieldName = 'ID_TABLAPRECIOS'
    end
    object QStockID_TABLAPRECIOSDETALLE: TIntegerField
      FieldName = 'ID_TABLAPRECIOSDETALLE'
    end
    object QStockCODIGO_PRECIO: TIntegerField
      FieldName = 'CODIGO_PRECIO'
    end
    object QStockFECHA_ALTA: TSQLTimeStampField
      FieldName = 'FECHA_ALTA'
    end
    object QStockCOSTO_GRAVADO_SOMBRA: TFloatField
      FieldName = 'COSTO_GRAVADO_SOMBRA'
      Required = True
    end
    object QStockCOSTO_EXENTO_SOMBRA: TFloatField
      FieldName = 'COSTO_EXENTO_SOMBRA'
      Required = True
    end
    object QStockFECHA_ACT_SOMBRA: TSQLTimeStampField
      FieldName = 'FECHA_ACT_SOMBRA'
    end
    object QStockFECHA_ULTIMAVTA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMAVTA'
    end
    object QStockMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QStockCOSTO_GRAVADO_P: TFloatField
      FieldName = 'COSTO_GRAVADO_P'
      Required = True
    end
    object QStockCOSTO_EXENTO_P: TFloatField
      FieldName = 'COSTO_EXENTO_P'
      Required = True
    end
    object QStockCOSTO_TOTAL_P: TFloatField
      FieldName = 'COSTO_TOTAL_P'
      Required = True
    end
    object QStockPOSICION: TStringField
      FieldName = 'POSICION'
      Size = 10
    end
    object QStockPRESENTACION_UNIDAD: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      Size = 3
    end
    object QStockPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      Required = True
    end
    object QStockEDITAPRECIO: TStringField
      FieldName = 'EDITAPRECIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockEDITADETALLE: TStringField
      FieldName = 'EDITADETALLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockURL: TStringField
      FieldName = 'URL'
      Size = 250
    end
    object QStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMA_COMPRA'
    end
    object QStockMUESTRARUBRO: TStringField
      FieldName = 'MUESTRARUBRO'
      ProviderFlags = []
      Size = 35
    end
    object QStockMUESTRASUBRUBRO: TStringField
      FieldName = 'MUESTRASUBRUBRO'
      ProviderFlags = []
      Size = 45
    end
    object QStockMUESTRAMARCA: TStringField
      FieldName = 'MUESTRAMARCA'
      ProviderFlags = []
      Size = 25
    end
    object QStockMUESTRATASA: TStringField
      FieldName = 'MUESTRATASA'
      ProviderFlags = []
      Size = 15
    end
    object QStockMUESTRATASAPORCENTAJE: TFloatField
      FieldName = 'MUESTRATASAPORCENTAJE'
      ProviderFlags = []
    end
    object QStockMUESTRASOBRETASA: TStringField
      FieldName = 'MUESTRASOBRETASA'
      ProviderFlags = []
      Size = 15
    end
    object QStockMUESTRASOBRETASAPROCENTAJE: TFloatField
      FieldName = 'MUESTRASOBRETASAPROCENTAJE'
      ProviderFlags = []
    end
    object QStockMUESTRATASAIB: TFloatField
      FieldName = 'MUESTRATASAIB'
      ProviderFlags = []
    end
    object QStockMUESTRATABLAPRECIODETALLE: TStringField
      FieldName = 'MUESTRATABLAPRECIODETALLE'
      ProviderFlags = []
      Size = 40
    end
    object QStockMUESTRATABLAPRECIO1: TFloatField
      FieldName = 'MUESTRATABLAPRECIO1'
      ProviderFlags = []
    end
    object QStockMUESTRATABLAPRECIO2: TFloatField
      FieldName = 'MUESTRATABLAPRECIO2'
      ProviderFlags = []
    end
  end
  object DSPStock: TDataSetProvider
    DataSet = DMMain_FD.QStock
    Options = []
    Left = 128
    Top = 430
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
    Left = 216
    Top = 432
    object CDSStockCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 8
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object CDSStockDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 45
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object CDSStockDETALLE_STK_ADICIONAL: TStringField
      FieldName = 'DETALLE_STK_ADICIONAL'
      Visible = False
      Size = 200
    end
    object CDSStockCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Visible = False
      Size = 25
    end
    object CDSStockRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Required = True
      Visible = False
      Size = 3
    end
    object CDSStockSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Required = True
      Visible = False
      Size = 5
    end
    object CDSStockMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Visible = False
      Size = 4
    end
    object CDSStockTASA_IVA: TIntegerField
      FieldName = 'TASA_IVA'
      Required = True
      Visible = False
    end
    object CDSStockSOBRETASA_IVA: TIntegerField
      FieldName = 'SOBRETASA_IVA'
      Visible = False
    end
    object CDSStockCOSTO_EXENTO_STK: TFloatField
      FieldName = 'COSTO_EXENTO_STK'
      Required = True
      Visible = False
    end
    object CDSStockCOSTO_GRAVADO_STK: TFloatField
      FieldName = 'COSTO_GRAVADO_STK'
      Required = True
      Visible = False
    end
    object CDSStockCOSTO_TOTAL_STK: TFloatField
      FieldName = 'COSTO_TOTAL_STK'
      Required = True
      Visible = False
    end
    object CDSStockREEMPLAZO_STK: TStringField
      FieldName = 'REEMPLAZO_STK'
      Required = True
      Visible = False
    end
    object CDSStockFIJACION_PRECIO_GRAVADO: TFloatField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Required = True
      Visible = False
    end
    object CDSStockFIJACION_PRECIO_EXENTO: TFloatField
      FieldName = 'FIJACION_PRECIO_EXENTO'
      Required = True
      Visible = False
    end
    object CDSStockFIJACION_PRECIO_TOTAL: TFloatField
      FieldName = 'FIJACION_PRECIO_TOTAL'
      Required = True
      Visible = False
    end
    object CDSStockFUAP: TSQLTimeStampField
      FieldName = 'FUAP'
      Visible = False
    end
    object CDSStockUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Visible = False
      Size = 3
    end
    object CDSStockCONTROLASTOCK: TStringField
      FieldName = 'CONTROLASTOCK'
      Required = True
      Visible = False
      Size = 1
    end
    object CDSStockCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Visible = False
      Size = 10
    end
    object CDSStockCLASE_ARTICULO: TIntegerField
      FieldName = 'CLASE_ARTICULO'
      Visible = False
    end
    object CDSStockMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Visible = False
      Size = 1
    end
    object CDSStockCON_IMP_INT: TStringField
      FieldName = 'CON_IMP_INT'
      Visible = False
      Size = 1
    end
    object CDSStockIMPUESTO_INTERNOS: TFloatField
      FieldName = 'IMPUESTO_INTERNOS'
      Visible = False
    end
    object CDSStockGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSStockTASA_IB: TIntegerField
      FieldName = 'TASA_IB'
      Required = True
      Visible = False
    end
    object CDSStockACTUALIZACOSTO: TStringField
      FieldName = 'ACTUALIZACOSTO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSStockDEPRODUCCION: TStringField
      FieldName = 'DEPRODUCCION'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSStockPRODUCCIONDIRECTA: TStringField
      FieldName = 'PRODUCCIONDIRECTA'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSStockUNIDAD_COMPRA: TStringField
      FieldName = 'UNIDAD_COMPRA'
      Visible = False
      Size = 3
    end
    object CDSStockCONTENIDO_COMPRA: TFloatField
      FieldName = 'CONTENIDO_COMPRA'
      Required = True
      Visible = False
    end
    object CDSStockCONTROL_SERIE: TStringField
      FieldName = 'CONTROL_SERIE'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSStockUSA_CODIGOBARRA: TStringField
      FieldName = 'USA_CODIGOBARRA'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSStockUNIDAD_ULTIMAUSADA: TStringField
      FieldName = 'UNIDAD_ULTIMAUSADA'
      Visible = False
      Size = 3
    end
    object CDSStockID_TABLAPRECIOS: TIntegerField
      FieldName = 'ID_TABLAPRECIOS'
      Visible = False
    end
    object CDSStockID_TABLAPRECIOSDETALLE: TIntegerField
      FieldName = 'ID_TABLAPRECIOSDETALLE'
      Visible = False
    end
    object CDSStockCODIGO_PRECIO: TIntegerField
      FieldName = 'CODIGO_PRECIO'
      Visible = False
    end
    object CDSStockFECHA_ALTA: TSQLTimeStampField
      FieldName = 'FECHA_ALTA'
      Visible = False
    end
    object CDSStockCOSTO_GRAVADO_SOMBRA: TFloatField
      FieldName = 'COSTO_GRAVADO_SOMBRA'
      Required = True
      Visible = False
    end
    object CDSStockCOSTO_EXENTO_SOMBRA: TFloatField
      FieldName = 'COSTO_EXENTO_SOMBRA'
      Required = True
      Visible = False
    end
    object CDSStockFECHA_ACT_SOMBRA: TSQLTimeStampField
      FieldName = 'FECHA_ACT_SOMBRA'
      Visible = False
    end
    object CDSStockFECHA_ULTIMAVTA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMAVTA'
      Visible = False
    end
    object CDSStockMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
      Visible = False
    end
    object CDSStockCOSTO_GRAVADO_P: TFloatField
      FieldName = 'COSTO_GRAVADO_P'
      Required = True
      Visible = False
    end
    object CDSStockCOSTO_EXENTO_P: TFloatField
      FieldName = 'COSTO_EXENTO_P'
      Required = True
      Visible = False
    end
    object CDSStockCOSTO_TOTAL_P: TFloatField
      FieldName = 'COSTO_TOTAL_P'
      Required = True
      Visible = False
    end
    object CDSStockPOSICION: TStringField
      FieldName = 'POSICION'
      Visible = False
      Size = 10
    end
    object CDSStockPRESENTACION_UNIDAD: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      Visible = False
      Size = 3
    end
    object CDSStockPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      Required = True
      Visible = False
    end
    object CDSStockEDITAPRECIO: TStringField
      FieldName = 'EDITAPRECIO'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSStockEDITADETALLE: TStringField
      FieldName = 'EDITADETALLE'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSStockURL: TStringField
      FieldName = 'URL'
      Visible = False
      Size = 250
    end
    object CDSStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMA_COMPRA'
      Visible = False
    end
    object CDSStockMUESTRARUBRO: TStringField
      FieldName = 'MUESTRARUBRO'
      Visible = False
      Size = 35
    end
    object CDSStockMUESTRASUBRUBRO: TStringField
      FieldName = 'MUESTRASUBRUBRO'
      Visible = False
      Size = 45
    end
    object CDSStockMUESTRAMARCA: TStringField
      FieldName = 'MUESTRAMARCA'
      Visible = False
      Size = 25
    end
    object CDSStockMUESTRATASA: TStringField
      FieldName = 'MUESTRATASA'
      Visible = False
      Size = 15
    end
    object CDSStockMUESTRATASAPORCENTAJE: TFloatField
      FieldName = 'MUESTRATASAPORCENTAJE'
      Visible = False
    end
    object CDSStockMUESTRASOBRETASA: TStringField
      FieldName = 'MUESTRASOBRETASA'
      Visible = False
      Size = 15
    end
    object CDSStockMUESTRASOBRETASAPROCENTAJE: TFloatField
      FieldName = 'MUESTRASOBRETASAPROCENTAJE'
      Visible = False
    end
    object CDSStockMUESTRATASAIB: TFloatField
      FieldName = 'MUESTRATASAIB'
      Visible = False
    end
    object CDSStockMUESTRATABLAPRECIODETALLE: TStringField
      FieldName = 'MUESTRATABLAPRECIODETALLE'
      Visible = False
      Size = 40
    end
    object CDSStockMUESTRATABLAPRECIO1: TFloatField
      FieldName = 'MUESTRATABLAPRECIO1'
      Visible = False
    end
    object CDSStockMUESTRATABLAPRECIO2: TFloatField
      FieldName = 'MUESTRATABLAPRECIO2'
      Visible = False
    end
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = []
    Left = 136
    Top = 488
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 224
    Top = 488
    object CDSBuscaSucursalCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSBuscaSucursalDETALLE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 35
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object QUltimoNumeroRetencion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT Max(Numero_retencion) from retenciones_ganancia')
    Left = 736
    Top = 8
  end
  object DSPInscripcion: TDataSetProvider
    DataSet = DMMain_FD.QInscripcion
    Options = []
    Left = 648
    Top = 69
  end
  object CDSInscripcion: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPInscripcion'
    Left = 728
    Top = 64
    object CDSInscripcionCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSInscripcionDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 15
    end
    object CDSInscripcionAPLICAPERCEPCIONIVA: TStringField
      FieldName = 'APLICAPERCEPCIONIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField
      FieldName = 'APLICAPERCEPCIONIIBB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSInscripcionCOBRASOBRETASA: TStringField
      FieldName = 'COBRASOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSInscripcionDISCRIMINAIVA: TStringField
      FieldName = 'DISCRIMINAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QPadron: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from PADRON_PROVEEDORES_EMBARGO'
      'where cuit=:cuit')
    Left = 824
    Top = 64
    ParamData = <
      item
        Name = 'cuit'
        DataType = ftString
        ParamType = ptInput
      end>
    object QPadronCUIT: TStringField
      FieldName = 'CUIT'
      Required = True
      Size = 13
    end
    object QPadronNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QPadronFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
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
    Left = 520
    Top = 64
    object CDSIvaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSIvaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object CDSIvaTASA: TFloatField
      FieldName = 'TASA'
    end
    object CDSIvaCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Required = True
    end
  end
  object DSPTasaPercepIVA: TDataSetProvider
    DataSet = DMMain_FD.QTasaPercepcioIva
    Options = []
    Left = 640
    Top = 168
  end
  object CDSTasaPercepIVA: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPTasaPercepIVA'
    Left = 728
    Top = 168
    object CDSTasaPercepIVACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSTasaPercepIVADESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
    object CDSTasaPercepIVATASA: TFloatField
      FieldName = 'TASA'
    end
    object CDSTasaPercepIVAMINIMOAPLICABLE: TFloatField
      FieldName = 'MINIMOAPLICABLE'
    end
    object CDSTasaPercepIVACOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
    end
    object CDSTasaPercepIVACODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
    end
  end
  object DSPTasaPercepIIBB: TDataSetProvider
    DataSet = DMMain_FD.QTasaPercepcioIB
    Options = []
    Left = 640
    Top = 224
  end
  object CDSTasaPercepIIBB: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPTasaPercepIIBB'
    Left = 728
    Top = 224
    object CDSTasaPercepIIBBCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSTasaPercepIIBBDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
    object CDSTasaPercepIIBBTASA: TFloatField
      FieldName = 'TASA'
    end
    object CDSTasaPercepIIBBMINIMOAPLICABLE: TFloatField
      FieldName = 'MINIMOAPLICABLE'
    end
    object CDSTasaPercepIIBBCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
    end
    object CDSTasaPercepIIBBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
    end
  end
  object CDSOPago: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPOPago'
    BeforePost = CDSOPagoBeforePost
    OnNewRecord = CDSOPagoNewRecord
    Left = 136
    Top = 8
    object CDSOPagoID_OP: TIntegerField
      FieldName = 'ID_OP'
      Origin = 'ID_OP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOPagoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSOPagoCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSOPagoNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSOPagoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      OnSetText = CDSOPagoCODIGOSetText
      Size = 6
    end
    object CDSOPagoLETRAOP: TStringField
      FieldName = 'LETRAOP'
      Origin = 'LETRAOP'
      OnSetText = CDSOPagoLETRAOPSetText
      Size = 1
    end
    object CDSOPagoSUCOP: TStringField
      FieldName = 'SUCOP'
      Origin = 'SUCOP'
      OnSetText = CDSOPagoSUCOPSetText
      Size = 4
    end
    object CDSOPagoNUMEROOP: TStringField
      FieldName = 'NUMEROOP'
      Origin = 'NUMEROOP'
      OnSetText = CDSOPagoNUMEROOPSetText
      Size = 8
    end
    object CDSOPagoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSOPagoRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSOPagoDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object CDSOPagoCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object CDSOPagoLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object CDSOPagoTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
    end
    object CDSOPagoCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSOPagoNRO_IIBB: TStringField
      FieldName = 'NRO_IIBB'
      Origin = 'NRO_IIBB'
      Size = 15
    end
    object CDSOPagoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      OnSetText = CDSOPagoFECHASetText
    end
    object CDSOPagoANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Size = 1
    end
    object CDSOPagoN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
      Origin = 'N_OPERACION2'
    end
    object CDSOPagoTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      OnSetText = CDSOPagoTOTALSetText
    end
    object CDSOPagoSALDO_APLICAR: TFloatField
      FieldName = 'SALDO_APLICAR'
      Origin = 'SALDO_APLICAR'
    end
    object CDSOPagoOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 60
    end
    object CDSOPagoOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      Size = 60
    end
    object CDSOPagoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      OnSetText = CDSOPagoSUCURSALSetText
    end
    object CDSOPagoDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      OnSetText = CDSOPagoDESCUENTOSetText
    end
    object CDSOPagoDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Size = 1
    end
    object CDSOPagoNC_ID_FC: TIntegerField
      FieldName = 'NC_ID_FC'
      Origin = 'NC_ID_FC'
    end
    object CDSOPagoNC_LETRAFAC: TStringField
      FieldName = 'NC_LETRAFAC'
      Origin = 'NC_LETRAFAC'
      Size = 1
    end
    object CDSOPagoNC_SUCFAC: TStringField
      FieldName = 'NC_SUCFAC'
      Origin = 'NC_SUCFAC'
      Size = 4
    end
    object CDSOPagoNC_NUMEROFAC: TStringField
      FieldName = 'NC_NUMEROFAC'
      Origin = 'NC_NUMEROFAC'
      Size = 8
    end
    object CDSOPagoTASA_PERCEPCIONIVA: TFloatField
      FieldName = 'TASA_PERCEPCIONIVA'
      Origin = 'TASA_PERCEPCIONIVA'
    end
    object CDSOPagoTASA_PERCEPCIONIB: TFloatField
      FieldName = 'TASA_PERCEPCIONIB'
      Origin = 'TASA_PERCEPCIONIB'
    end
    object CDSOPagoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object CDSOPagoTOTAL_NETO_GRAVADO: TFloatField
      FieldName = 'TOTAL_NETO_GRAVADO'
      Origin = 'TOTAL_NETO_GRAVADO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSOPagoTOTAL_PAGOS_DEL_MES: TFloatField
      FieldName = 'TOTAL_PAGOS_DEL_MES'
      Origin = 'TOTAL_PAGOS_DEL_MES'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSOPagoTOTAL_RETENIDO_MES: TFloatField
      FieldName = 'TOTAL_RETENIDO_MES'
      Origin = 'TOTAL_RETENIDO_MES'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = '0.00'
    end
    object CDSOPagoTASA_RETENCION_GANACIA: TFloatField
      FieldName = 'TASA_RETENCION_GANACIA'
      Origin = 'TASA_RETENCION_GANACIA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSOPagoMINIMO_NO_IMPONIBLE_GANANCIA: TFloatField
      FieldName = 'MINIMO_NO_IMPONIBLE_GANANCIA'
      Origin = 'MINIMO_NO_IMPONIBLE_GANANCIA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSOPagoRETIENE_GANACIAS: TStringField
      FieldName = 'RETIENE_GANACIAS'
      Origin = 'RETIENE_GANACIAS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOPagoRETENCION_GANACIA_GENERADO: TStringField
      FieldName = 'RETENCION_GANACIA_GENERADO'
      Origin = 'RETENCION_GANACIA_GENERADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOPagoCODIGO_REGIMENA_GANANCIA: TIntegerField
      FieldName = 'CODIGO_REGIMENA_GANANCIA'
      Origin = 'CODIGO_REGIMENA_GANANCIA'
    end
    object CDSOPagoCONCEPTO_RETENCION_GANACIA: TStringField
      FieldName = 'CONCEPTO_RETENCION_GANACIA'
      Origin = 'CONCEPTO_RETENCION_GANACIA'
      Size = 25
    end
    object CDSOPagoIMPUESTO_MINIMO_GANANCIA: TFloatField
      FieldName = 'IMPUESTO_MINIMO_GANANCIA'
      Origin = 'IMPUESTO_MINIMO_GANANCIA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSOPagoRETIENE_IIBB: TStringField
      FieldName = 'RETIENE_IIBB'
      Origin = 'RETIENE_IIBB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOPagoTASA_RETENCION_IIBB: TFloatField
      FieldName = 'TASA_RETENCION_IIBB'
      Origin = 'TASA_RETENCION_IIBB'
      Required = True
      DisplayFormat = '0.00'
    end
    object CDSOPagoMINIMO_IMPONIBLE_RET_IIBB: TFloatField
      FieldName = 'MINIMO_IMPONIBLE_RET_IIBB'
      Origin = 'MINIMO_IMPONIBLE_RET_IIBB'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSOPagoFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object CDSOPagoMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSOPagoMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object CDSOPagoID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
      OnSetText = CDSOPagoID_TIPOCOMPROBANTESetText
    end
    object CDSOPagoSUMAAPLICACIONES_: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SUMAAPLICACIONES_'
      ProviderFlags = []
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSOPagoDESCUENTO_PORCENTAJE: TFloatField
      FieldName = 'DESCUENTO_PORCENTAJE'
      Origin = 'DESCUENTO_PORCENTAJE'
      OnSetText = CDSOPagoDESCUENTO_PORCENTAJESetText
    end
    object CDSOPagoTOTAL_NETO: TFloatField
      FieldName = 'TOTAL_NETO'
      Origin = 'TOTAL_NETO'
      OnSetText = CDSOPagoTOTAL_NETOSetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSOPagoNUMERO_OPERACION: TStringField
      FieldName = 'NUMERO_OPERACION'
      Origin = 'NUMERO_OPERACION'
      Size = 8
    end
    object CDSOPagoMUESTRACORREO: TStringField
      FieldName = 'MUESTRACORREO'
      Origin = 'CORREO'
      ProviderFlags = []
      Size = 100
    end
    object CDSOPagoPERMITIR_MODIF_TOTAL: TStringField
      FieldName = 'PERMITIR_MODIF_TOTAL'
      Origin = 'PERMITIR_MODIF_TOTAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOPagoRET_GAN_X_ESCALA: TStringField
      FieldName = 'RET_GAN_X_ESCALA'
      Origin = 'RET_GAN_X_ESCALA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOPagoID_ESCALA_RET: TIntegerField
      FieldName = 'ID_ESCALA_RET'
      Origin = 'ID_ESCALA_RET'
      Required = True
    end
    object CDSOPagoGANC_ESCALA_DESDE: TFloatField
      DisplayLabel = 'Escala Desde'
      FieldName = 'GANC_ESCALA_DESDE'
      Origin = 'GANC_ESCALA_DESDE'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00;-,0.00;-'
    end
    object CDSOPagoGANC_ESCALA_HASTA: TFloatField
      DisplayLabel = 'Escala Hasta'
      FieldName = 'GANC_ESCALA_HASTA'
      Origin = 'GANC_ESCALA_HASTA'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00;-,0.00;-'
    end
    object CDSOPagoGANC_ESCALA_VARIAC: TFloatField
      DisplayLabel = 'Escala Variac.'
      FieldName = 'GANC_ESCALA_VARIAC'
      Origin = 'GANC_ESCALA_VARIAC'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00;-,0.00;-'
    end
    object CDSOPagoGANC_ESCALA_FIJO: TFloatField
      DisplayLabel = 'Escala Fijo'
      FieldName = 'GANC_ESCALA_FIJO'
      Origin = 'GANC_ESCALA_FIJO'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00;-,0.00;-'
    end
    object CDSOPagoGANC_ESCALA_EXCED: TFloatField
      DisplayLabel = 'Escala Exedente'
      FieldName = 'GANC_ESCALA_EXCED'
      Origin = 'GANC_ESCALA_EXCED'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00;-,0.00;-'
    end
    object CDSOPagoRETIENE_IVA: TStringField
      FieldName = 'RETIENE_IVA'
      Origin = 'RETIENE_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOPagoIVA_ACUMULADO: TFloatField
      FieldName = 'IVA_ACUMULADO'
      Origin = 'IVA_ACUMULADO'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSOPagoTASA_RET_IVA: TFloatField
      FieldName = 'TASA_RET_IVA'
      Origin = 'TASA_RET_IVA'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSOPagoCOD_RET_IVA: TIntegerField
      FieldName = 'COD_RET_IVA'
      Origin = 'COD_RET_IVA'
      Required = True
    end
    object CDSOPagoCONCEPTO_RET_IVA: TStringField
      FieldName = 'CONCEPTO_RET_IVA'
      Origin = 'CONCEPTO_RET_IVA'
      Required = True
      Size = 50
    end
    object CDSOPagoENTREGADO: TStringField
      FieldName = 'ENTREGADO'
      Origin = 'ENTREGADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOPagoID_OBRA: TIntegerField
      FieldName = 'ID_OBRA'
      Required = True
    end
    object CDSOPagoMUESTRAOBRA: TStringField
      FieldName = 'MUESTRAOBRA'
      ProviderFlags = []
      Size = 100
    end
  end
  object DSMovAplicaCCCompra: TDataSource
    DataSet = CDSMovAplicaCCCompra
    Left = 248
    Top = 61
  end
  object DSMovCCCompra: TDataSource
    DataSet = CDSMovCCCompra
    Left = 248
    Top = 112
  end
  object CDSMovAplicaCCCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovAplicaCCCompra'
    BeforeEdit = CDSMovAplicaCCCompraBeforeDelete
    BeforePost = CDSMovAplicaCCCompraBeforePost
    AfterPost = CDSMovAplicaCCCompraAfterPost
    BeforeDelete = CDSMovAplicaCCCompraBeforeDelete
    AfterDelete = CDSMovAplicaCCCompraAfterDelete
    AfterScroll = CDSMovAplicaCCCompraAfterScroll
    OnNewRecord = CDSMovAplicaCCCompraNewRecord
    Left = 136
    Top = 56
    object CDSMovAplicaCCCompraID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Origin = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovAplicaCCCompraID_MOVCCCOMPRA: TIntegerField
      FieldName = 'ID_MOVCCCOMPRA'
      Origin = 'ID_MOVCCCOMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovAplicaCCCompraFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSMovAplicaCCCompraPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Origin = 'PROVEEDOR'
      Required = True
      Size = 6
    end
    object CDSMovAplicaCCCompraID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Required = True
    end
    object CDSMovAplicaCCCompraTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSMovAplicaCCCompraCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovAplicaCCCompraNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Origin = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object CDSMovAplicaCCCompraIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      OnSetText = CDSMovAplicaCCCompraIMPORTESetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovAplicaCCCompraAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
      Origin = 'APLICA_ID_CPBTE'
      Required = True
    end
    object CDSMovAplicaCCCompraAPLICA_TIPOCPBTE: TStringField
      FieldName = 'APLICA_TIPOCPBTE'
      Origin = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object CDSMovAplicaCCCompraAPLICA_CLASECPBTE: TStringField
      FieldName = 'APLICA_CLASECPBTE'
      Origin = 'APLICA_CLASECPBTE'
      Size = 2
    end
    object CDSMovAplicaCCCompraAPLICA_NROCPBTE: TStringField
      FieldName = 'APLICA_NROCPBTE'
      Origin = 'APLICA_NROCPBTE'
      EditMask = 'a-####-########;0;_'
      Size = 13
    end
    object CDSMovAplicaCCCompraAPLICA_NETO: TFloatField
      FieldName = 'APLICA_NETO'
      Origin = 'APLICA_NETO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovAplicaCCCompraDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSMovAplicaCCCompraMUESTRAFECHACPBTE: TSQLTimeStampField
      FieldName = 'MUESTRAFECHACPBTE'
      Origin = 'FECHACOMPRA'
      ProviderFlags = []
    end
    object CDSMovAplicaCCCompraMUESTRATOTALFACTURA: TFloatField
      FieldName = 'MUESTRATOTALFACTURA'
      Origin = 'TOTAL'
      ProviderFlags = []
    end
    object CDSMovAplicaCCCompraCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Origin = 'CONCILIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSMovAplicaCCCompraAPLICA_IVA: TFloatField
      FieldName = 'APLICA_IVA'
      Origin = 'APLICA_IVA'
      Required = True
    end
  end
  object CDSMovCCCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovCCCompra'
    Left = 136
    Top = 104
    object CDSMovCCCompraID_MOVCCCOMPRA: TIntegerField
      FieldName = 'ID_MOVCCCOMPRA'
      Origin = 'ID_MOVCCCOMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovCCCompraID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Required = True
    end
    object CDSMovCCCompraPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Origin = 'PROVEEDOR'
      Size = 6
    end
    object CDSMovCCCompraFECHACOMPRA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha'
      FieldName = 'FECHACOMPRA'
      Origin = 'FECHACOMPRA'
    end
    object CDSMovCCCompraFECHAVTO: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Vto.'
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object CDSMovCCCompraTIPOCPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSMovCCCompraCLASECPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovCCCompraNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-####-########;0;_'
      Size = 13
    end
    object CDSMovCCCompraDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovCCCompraHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovCCCompraSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovCCCompraDETALLE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSMovCCCompraMUESTRAAPAGAR: TFloatField
      DisplayLabel = 'A Pagar'
      FieldName = 'MUESTRAAPAGAR'
      Origin = 'SALDO'
      ProviderFlags = []
      OnSetText = CDSMovCCCompraMUESTRAAPAGARSetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovCCCompraSELECCION: TBooleanField
      DisplayLabel = 'Sel'
      FieldKind = fkInternalCalc
      FieldName = 'SELECCION'
      ProviderFlags = []
    end
    object CDSMovCCCompraGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'ID_GRUPO'
      ProviderFlags = []
    end
    object CDSMovCCCompraFISCAL: TStringField
      FieldName = 'FISCAL'
      Origin = 'FISCAL'
      ProviderFlags = []
      Size = 1
    end
  end
  object CDSProveedor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPProveedor'
    Left = 136
    Top = 146
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
    object CDSProveedorSALDO_INICIAL: TFloatField
      FieldName = 'SALDO_INICIAL'
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
    object CDSProveedorMUESTRATASARETIIBB: TFloatField
      FieldName = 'MUESTRATASARETIIBB'
    end
    object CDSProveedorMUESTRAMINIMPONIRETIIBB: TFloatField
      FieldName = 'MUESTRAMINIMPONIRETIIBB'
    end
    object CDSProveedorRETENCION_IVA: TStringField
      FieldName = 'RETENCION_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSProveedorCODIGO_RET_IVA: TIntegerField
      FieldName = 'CODIGO_RET_IVA'
      Required = True
    end
    object CDSProveedorPORCENTAJE_RET_IVA: TSingleField
      FieldName = 'PORCENTAJE_RET_IVA'
      Required = True
    end
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPSucursal'
    Left = 520
    Top = 8
    object CDSSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
    object CDSSucursalDIRECCION: TStringField
      FieldName = 'DIRECCION'
    end
    object CDSSucursalLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
    end
    object CDSSucursalTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Size = 15
    end
    object CDSSucursalTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Size = 15
    end
    object CDSSucursalRECARGO: TFloatField
      FieldName = 'RECARGO'
    end
    object CDSSucursalAPLICA_PERCEPCION_IIBB: TStringField
      FieldName = 'APLICA_PERCEPCION_IIBB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSSucursalHOST: TStringField
      FieldName = 'HOST'
      Size = 250
    end
    object CDSSucursalCERTIFICADO_ELEC: TStringField
      FieldName = 'CERTIFICADO_ELEC'
      Size = 100
    end
    object CDSSucursalCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSSucursalRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSSucursalCOT_CLAVE: TStringField
      FieldName = 'COT_CLAVE'
    end
    object CDSSucursalCOT_CUIT: TStringField
      FieldName = 'COT_CUIT'
      Size = 13
    end
    object CDSSucursalAPLICA_LEY15311: TStringField
      FieldName = 'APLICA_LEY15311'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    Left = 520
    Top = 112
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
    object CDSEmpresaTASA_RET_IIBB: TFloatField
      FieldName = 'TASA_RET_IIBB'
      Required = True
    end
    object CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField
      FieldName = 'MINIMO_IMP_RET_IIBB'
      Required = True
    end
    object CDSEmpresaNOMBRE_FANTASIA: TStringField
      FieldName = 'NOMBRE_FANTASIA'
      Size = 50
    end
    object CDSEmpresaCODIGO_COT: TStringField
      FieldName = 'CODIGO_COT'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaDIRECCION_NRO: TStringField
      FieldName = 'DIRECCION_NRO'
      Size = 10
    end
  end
  object QRetIngBrCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cab.* from CPBTE_RET_INGBR_CAB cab'
      'where cab.tipocpbte_origen=:Tipo and'
      'cab.id_cpbte_Origen=:id')
    Left = 32
    Top = 201
    ParamData = <
      item
        Position = 1
        Name = 'Tipo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRetIngBrCabID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRetIngBrCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object QRetIngBrCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QRetIngBrCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object QRetIngBrCabCODIGOPOSTAL: TStringField
      FieldName = 'CODIGOPOSTAL'
      Size = 8
    end
    object QRetIngBrCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object QRetIngBrCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object QRetIngBrCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QRetIngBrCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QRetIngBrCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QRetIngBrCabLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QRetIngBrCabSUC: TStringField
      FieldName = 'SUC'
      Size = 4
    end
    object QRetIngBrCabNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object QRetIngBrCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QRetIngBrCabID_CPBTE_ORIGEN: TIntegerField
      FieldName = 'ID_CPBTE_ORIGEN'
    end
    object QRetIngBrCabTIPOCPBTE_ORIGEN: TStringField
      FieldName = 'TIPOCPBTE_ORIGEN'
      Size = 2
    end
    object QRetIngBrCabCLASECPBTE_ORIGEN: TStringField
      FieldName = 'CLASECPBTE_ORIGEN'
      Size = 2
    end
    object QRetIngBrCabNROCPBTE_ORIGEN: TStringField
      FieldName = 'NROCPBTE_ORIGEN'
      Size = 13
    end
    object QRetIngBrCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QRetIngBrCabTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object QRetIngBrCabNOMBRE_AGTE_RET: TStringField
      FieldName = 'NOMBRE_AGTE_RET'
      Size = 35
    end
    object QRetIngBrCabDIRECCION_AGTE_RET: TStringField
      FieldName = 'DIRECCION_AGTE_RET'
      Size = 35
    end
    object QRetIngBrCabCUIT_AGTE_RET: TStringField
      FieldName = 'CUIT_AGTE_RET'
      Size = 13
    end
    object QRetIngBrCabCPOSTAL_AGTE_RET: TStringField
      FieldName = 'CPOSTAL_AGTE_RET'
      Size = 8
    end
    object QRetIngBrCabLOCALIDAD_AGTE_RET: TStringField
      FieldName = 'LOCALIDAD_AGTE_RET'
      Size = 15
    end
    object QRetIngBrCabNRO_AGTE_RET: TStringField
      FieldName = 'NRO_AGTE_RET'
      Size = 15
    end
    object QRetIngBrCabNETO_GRAVADO: TFloatField
      FieldName = 'NETO_GRAVADO'
      Required = True
    end
    object QRetIngBrCabTASA_RETENCION: TFloatField
      FieldName = 'TASA_RETENCION'
      Required = True
    end
    object QRetIngBrCabANULADO: TStringField
      FieldName = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRetIngBrCabESTADO: TStringField
      FieldName = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRetIngBrCabNRO_IIBB: TStringField
      FieldName = 'NRO_IIBB'
      Size = 15
    end
  end
  object QRetIngBrDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select det.* from CPBTE_RET_INGBR_DET det '
      'where det.id_cab=:id')
    Left = 32
    Top = 254
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRetIngBrDetID_DET: TIntegerField
      FieldName = 'ID_DET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRetIngBrDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QRetIngBrDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QRetIngBrDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 15
    end
    object QRetIngBrDetIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QRetIngBrDetBASEIMPONIBLE: TFloatField
      FieldName = 'BASEIMPONIBLE'
    end
    object QRetIngBrDetPORCENTAJE: TFloatField
      FieldName = 'PORCENTAJE'
    end
    object QRetIngBrDetRETENCION: TFloatField
      FieldName = 'RETENCION'
    end
    object QRetIngBrDetID_CPBTE_RETENIDO: TIntegerField
      FieldName = 'ID_CPBTE_RETENIDO'
    end
    object QRetIngBrDetTIPOCPBTE_RETENIDO: TStringField
      FieldName = 'TIPOCPBTE_RETENIDO'
      Size = 2
    end
    object QRetIngBrDetCLASECPBTE_RETENIDO: TStringField
      FieldName = 'CLASECPBTE_RETENIDO'
      Size = 2
    end
  end
  object QRetGanancia: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select r.* from retenciones_ganancia r '
      'where r.id_op=:id')
    Left = 32
    Top = 303
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRetGananciaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRetGananciaID_OP: TIntegerField
      FieldName = 'ID_OP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRetGananciaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object QRetGananciaNUMERO_RETENCION: TStringField
      FieldName = 'NUMERO_RETENCION'
      Required = True
      FixedChar = True
      Size = 14
    end
    object QRetGananciaCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Required = True
      Size = 6
    end
    object QRetGananciaCODIGO_REGIMEN: TIntegerField
      FieldName = 'CODIGO_REGIMEN'
      Required = True
    end
    object QRetGananciaCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Size = 25
    end
    object QRetGananciaTASA: TFloatField
      FieldName = 'TASA'
    end
    object QRetGananciaMINIMO_NO_IMPONIBLE: TFloatField
      FieldName = 'MINIMO_NO_IMPONIBLE'
    end
    object QRetGananciaPAGOS_ACUMULADOS: TFloatField
      FieldName = 'PAGOS_ACUMULADOS'
    end
    object QRetGananciaIMPUESTO_RETENIDO: TFloatField
      FieldName = 'IMPUESTO_RETENIDO'
    end
    object QRetGananciaOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
    end
    object QRetGananciaVALOR_MINIMO_IMPUESTO: TFloatField
      FieldName = 'VALOR_MINIMO_IMPUESTO'
    end
    object QRetGananciaANULADA: TStringField
      FieldName = 'ANULADA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRetGananciaESTADO: TStringField
      FieldName = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QComprobRetIngBr: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select numero,letra,prefijo,tipo_comprob,clase_comprob,copias,re' +
        'porte'
      'from comprobantes where sucursal=:suc and compra_venta='#39'V'#39' and'
      '(tipo_comprob='#39'RB'#39')')
    Left = 425
    Top = 429
    ParamData = <
      item
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QComprobRetIngBrNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object QComprobRetIngBrLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QComprobRetIngBrPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Size = 4
    end
    object QComprobRetIngBrTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 4
    end
    object QComprobRetIngBrCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Required = True
      Size = 4
    end
    object QComprobRetIngBrCOPIAS: TIntegerField
      FieldName = 'COPIAS'
    end
    object QComprobRetIngBrREPORTE: TStringField
      FieldName = 'REPORTE'
      Size = 100
    end
  end
  object QComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes'
      'where id_comprobante=:id and tipo_comprob='#39'OP'#39' and sucursal=:suc'
      'and en_uso='#39'S'#39)
    Left = 40
    Top = 424
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
    object QComprobCAJA_DEFECTO: TIntegerField
      FieldName = 'CAJA_DEFECTO'
      Required = True
    end
    object QComprobAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QGrupoCpbte: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select id_grupo from mov_ctacte_comp_grupo  (:id)')
    Left = 832
    Top = 8
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QGrupoCpbteID_GRUPO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_GRUPO'
    end
  end
  object QAplicado: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from MovAplicaCCCompra'
      'where Id_MovCCCompra=:Id and id_cpbte<>:idcpbte')
    Left = 849
    Top = 121
    ParamData = <
      item
        Name = 'Id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'idcpbte'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QAplicadoID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Required = True
    end
    object QAplicadoID_MOVCCCOMPRA: TIntegerField
      FieldName = 'ID_MOVCCCOMPRA'
      Required = True
    end
    object QAplicadoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QAplicadoPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Required = True
      Size = 6
    end
    object QAplicadoID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object QAplicadoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QAplicadoCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QAplicadoNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object QAplicadoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QAplicadoAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
      Required = True
    end
    object QAplicadoAPLICA_TIPOCPBTE: TStringField
      FieldName = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object QAplicadoAPLICA_CLASECPBTE: TStringField
      FieldName = 'APLICA_CLASECPBTE'
      Size = 2
    end
    object QAplicadoAPLICA_NROCPBTE: TStringField
      FieldName = 'APLICA_NROCPBTE'
      Size = 13
    end
    object QAplicadoAPLICA_NETO: TFloatField
      FieldName = 'APLICA_NETO'
    end
    object QAplicadoDETALLE: TStringField
      FieldName = 'DETALLE'
    end
  end
  object QBuscaComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from comprobantes where sucursal=:suc and compra_venta=' +
        #39'C'#39' and'
      '(tipo_comprob='#39'OP'#39')')
    Left = 32
    Top = 495
    ParamData = <
      item
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
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
    Left = 400
    Top = 504
    object CDSBuscaComprobID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSBuscaComprobTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 4
    end
    object CDSBuscaComprobCLASE_COMPROB: TStringField
      DisplayLabel = 'Cls.Comprob'
      DisplayWidth = 2
      FieldName = 'CLASE_COMPROB'
      Required = True
      Size = 4
    end
    object CDSBuscaComprobDENOMINACION: TStringField
      DisplayLabel = 'Denominaci'#243'n'
      DisplayWidth = 15
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object CDSBuscaComprobSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSBuscaComprobLETRA: TStringField
      DisplayLabel = 'Letra'
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
    object CDSBuscaComprobNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobNUMERO: TStringField
      DisplayLabel = 'Numero'
      DisplayWidth = 8
      FieldName = 'NUMERO'
      Size = 8
    end
    object CDSBuscaComprobTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
    end
    object CDSBuscaComprobAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobCOPIAS: TIntegerField
      FieldName = 'COPIAS'
    end
    object CDSBuscaComprobREPORTE: TStringField
      FieldName = 'REPORTE'
      Size = 100
    end
    object CDSBuscaComprobIMPRIME: TStringField
      FieldName = 'IMPRIME'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobFISCAL: TStringField
      FieldName = 'FISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Size = 15
    end
    object CDSBuscaComprobPENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Required = True
    end
    object CDSBuscaComprobCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPBuscaComprob: TDataSetProvider
    DataSet = QBuscaComprob
    Options = []
    Left = 312
    Top = 488
  end
  object DSNCCab: TDataSource
    Left = 716
    Top = 287
  end
  object QTraer_Pagos_Proveedor: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from  TOTAL_PAGOS_MENSUAL_PROVEEDORES ( :CODIGO , :FECH' +
        'A )')
    Left = 504
    Top = 192
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FECHA'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QTraer_Pagos_ProveedorTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object QTraer_Pagos_ProveedorEXENTO: TStringField
      FieldName = 'EXENTO'
      Size = 1
    end
    object QTraer_Pagos_ProveedorCODIGO_REGIMEN: TIntegerField
      FieldName = 'CODIGO_REGIMEN'
    end
    object QTraer_Pagos_ProveedorPAGOS_ANTERIORES: TFloatField
      FieldName = 'PAGOS_ANTERIORES'
    end
    object QTraer_Pagos_ProveedorCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      FixedChar = True
      Size = 25
    end
    object QTraer_Pagos_ProveedorMINIMO_NO_IMPONIBLE: TFloatField
      FieldName = 'MINIMO_NO_IMPONIBLE'
    end
    object QTraer_Pagos_ProveedorTASA: TFloatField
      FieldName = 'TASA'
    end
    object QTraer_Pagos_ProveedorIMPUESTO_MINIMO: TFloatField
      FieldName = 'IMPUESTO_MINIMO'
    end
    object QTraer_Pagos_ProveedorEXENTO_ID: TIntegerField
      FieldName = 'EXENTO_ID'
    end
    object QTraer_Pagos_ProveedorPOR_ESCALA: TStringField
      FieldName = 'POR_ESCALA'
      Size = 1
    end
  end
  object QCalcular_Neto_Fc_Borrar: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TRAER_NETO_FC_COMPRA(:id,:a_pagar)')
    Left = 872
    Top = 672
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'a_pagar'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCalcular_Neto_Fc_BorrarTOTAL_NETO: TIntegerField
      FieldName = 'TOTAL_NETO'
    end
  end
  object DSPComprobantePorDefecto: TDataSetProvider
    DataSet = DMMain_FD.QComprobantePorDefecto
    Options = []
    Left = 680
    Top = 427
  end
  object CDSComprobantePorDefecto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'compraventa'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DesglozaIva'
        ParamType = ptInput
      end>
    ProviderName = 'DSPComprobantePorDefecto'
    Left = 840
    Top = 427
  end
  object QBorrarNc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Delete from fcCompcab fc'
      '  where fc.id_fc = :id and fc.tipocpbte = :Tipo'
      '')
    Left = 848
    Top = 232
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'Tipo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object spCalculaNeto: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'TRAER_NETO_FC_COMPRA'
    Left = 904
    Top = 80
    ParamData = <
      item
        Name = 'A_PAGAR'
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Name = 'TOTAL_NETO'
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 3
        ParamType = ptOutput
        Size = 8
      end
      item
        Name = 'ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end>
  end
  object QNetoFac: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select (f.netograv2+f.netomonotributo2) as neto ,f.total from fc' +
        'compcab f '
      'where f.id_fc=:id')
    Left = 552
    Top = 328
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QNetoFacNETO: TFloatField
      FieldName = 'NETO'
    end
    object QNetoFacTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object DSMovCC: TDataSource
    DataSet = CDSMovCC
    Left = 304
    Top = 552
  end
  object CDSMovCC: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    FetchOnDemand = False
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovCC'
    Left = 216
    Top = 544
    object CDSMovCCID_MOVCCCOMP: TIntegerField
      DisplayLabel = 'Id Mov'
      FieldName = 'ID_MOVCCCOMP'
    end
    object CDSMovCCID_CPBTE: TIntegerField
      DisplayLabel = 'Id Cpbtr'
      FieldName = 'ID_CPBTE'
    end
    object CDSMovCCCLIENTE: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CLIENTE'
      Size = 6
    end
    object CDSMovCCFECHACOMPRA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha'
      FieldName = 'FECHACOMPRA'
      DisplayFormat = 'dd/mm/yy'
    end
    object CDSMovCCFECHAVTO: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha Vto'
      FieldName = 'FECHAVTO'
    end
    object CDSMovCCTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSMovCCCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovCCNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSMovCCDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00;-,0.00;-'
    end
    object CDSMovCCHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00;-,0.00;-'
    end
    object CDSMovCCSALDO: TFloatField
      DisplayLabel = 'Saldo Org'
      FieldName = 'SALDO'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00;-,0.00;-'
    end
    object CDSMovCCDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
    end
    object CDSMovCCID_COMPROBANTE: TIntegerField
      DisplayLabel = 'Id Cpb'
      FieldName = 'ID_COMPROBANTE'
    end
    object CDSMovCCSALDOCC: TFloatField
      DisplayLabel = 'Saldo'
      FieldKind = fkInternalCalc
      FieldName = 'SALDOCC'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object DSPMovCC: TDataSetProvider
    DataSet = QMovCC
    Options = [poAllowCommandText]
    Left = 136
    Top = 544
  end
  object QSaldoInicial: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select sum(s.debe)as debe, sum(s.haber) as haber from SALDO_INIC' +
        'IAL_CTACTE_COMP (:codigo,:desde ) s')
    Left = 40
    Top = 624
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QSaldoInicialDEBE: TFloatField
      FieldName = 'DEBE'
    end
    object QSaldoInicialHABER: TFloatField
      FieldName = 'HABER'
    end
  end
  object QOPagoExcluidaGanacia: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from OPAGO_EXCLUIDAS_GANACIA where id= :id')
    Left = 848
    Top = 288
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object QIngMovGanancia: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'insert into retenc_ganancia_detalle  (id,'
      '                                      id_cpbte,'
      '                                      id_movaplicacioncc,'
      '                                      id_op,'
      '                                      neto,'
      '                                      nrocpbte,'
      '                                      total)'
      'values (gen_id(next_id_ret_ganan_detalle,1),:id_cpbte,'
      '                                            :id_mov,'
      '                                            :id_op,'
      '                                            :Neto,'
      '                                            :nrocpbte,'
      '                                            :total )')
    Left = 408
    Top = 560
    ParamData = <
      item
        Name = 'id_cpbte'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id_mov'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id_op'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'Neto'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'nrocpbte'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'total'
        DataType = ftFloat
        ParamType = ptInput
      end>
    object IntegerField2: TIntegerField
      FieldName = 'TOTAL_NETO'
    end
  end
  object QMovRetGanancia: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from retenc_ganancia_detalle rd where rd.id_op=:id_op')
    Left = 568
    Top = 504
    ParamData = <
      item
        Name = 'id_op'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QMovRetGananciaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovRetGananciaID_OP: TIntegerField
      FieldName = 'ID_OP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovRetGananciaID_MOVAPLICACIONCC: TIntegerField
      FieldName = 'ID_MOVAPLICACIONCC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovRetGananciaID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object QMovRetGananciaNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QMovRetGananciaNETO: TFloatField
      FieldName = 'NETO'
    end
    object QMovRetGananciaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object CDSMovRetGanancia: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_op'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovRetGanancia'
    OnNewRecord = CDSMovRetGananciaNewRecord
    Left = 768
    Top = 488
    object CDSMovRetGananciaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovRetGananciaID_OP: TIntegerField
      FieldName = 'ID_OP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovRetGananciaID_MOVAPLICACIONCC: TIntegerField
      FieldName = 'ID_MOVAPLICACIONCC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovRetGananciaID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object CDSMovRetGananciaNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSMovRetGananciaNETO: TFloatField
      FieldName = 'NETO'
    end
    object CDSMovRetGananciaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object DSPMovRetGanancia: TDataSetProvider
    DataSet = QMovRetGanancia
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 664
    Top = 504
  end
  object ibg_IdDetGanancia: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RET_GANAN_DETALLE'
    SystemGenerators = False
    Left = 882
    Top = 510
  end
  object QBorrarRetIIBB: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from CPBTE_RET_INGBR_CAB cab'
      'where cab.tipocpbte_origen=:Tipo and'
      'cab.id_cpbte_Origen=:id')
    Left = 848
    Top = 177
    ParamData = <
      item
        Name = 'Tipo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spReasignaCuit: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'REASIG_CUIT_OPAGO'
    Left = 904
    Top = 8
    ParamData = <
      item
        Name = 'ID_OP'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end>
  end
  object QEscalaRetenciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select t.* from tasas_ret_gan_escala t where t.cod_retencion=:co' +
        'digo and ( :valor between t.desde and t.hasta)')
    Left = 504
    Top = 248
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'valor'
        DataType = ftFloat
        ParamType = ptInput
      end>
    object QEscalaRetencionesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QEscalaRetencionesCOD_RETENCION: TIntegerField
      FieldName = 'COD_RETENCION'
    end
    object QEscalaRetencionesDESDE: TFloatField
      FieldName = 'DESDE'
    end
    object QEscalaRetencionesHASTA: TFloatField
      FieldName = 'HASTA'
    end
    object QEscalaRetencionesFIJO: TFloatField
      FieldName = 'FIJO'
    end
    object QEscalaRetencionesVARIA: TFloatField
      FieldName = 'VARIA'
    end
    object QEscalaRetencionesEXCEDENTE: TFloatField
      FieldName = 'EXCEDENTE'
    end
  end
  object DSRetIva: TDataSource
    DataSet = CDSRetIVA
    Left = 299
    Top = 367
  end
  object CDSRetIVA: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRetIVA'
    OnNewRecord = CDSRetIVANewRecord
    Left = 216
    Top = 367
    object CDSRetIVAID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSRetIVAID_OP: TIntegerField
      FieldName = 'ID_OP'
      Required = True
    end
    object CDSRetIVAFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object CDSRetIVANUMERO_RETENCION: TStringField
      FieldName = 'NUMERO_RETENCION'
      Required = True
      OnSetText = CDSRetIVANUMERO_RETENCIONSetText
      FixedChar = True
      Size = 14
    end
    object CDSRetIVACODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Required = True
      Size = 6
    end
    object CDSRetIVACODIGO_REGIMEN: TIntegerField
      FieldName = 'CODIGO_REGIMEN'
      Required = True
    end
    object CDSRetIVACONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Size = 25
    end
    object CDSRetIVATASA: TFloatField
      FieldName = 'TASA'
      OnSetText = CDSRetIVATASASetText
      DisplayFormat = ',0.00'
    end
    object CDSRetIVAMINIMO_NO_IMPONIBLE: TFloatField
      FieldName = 'MINIMO_NO_IMPONIBLE'
      DisplayFormat = ',0.00'
    end
    object CDSRetIVAIMPUESTO_RETENIDO: TFloatField
      FieldName = 'IMPUESTO_RETENIDO'
      DisplayFormat = ',0.00'
    end
    object CDSRetIVAOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
    end
    object CDSRetIVAANULADA: TStringField
      FieldName = 'ANULADA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSRetIVAESTADO: TStringField
      FieldName = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSRetIVABASE_IMPONIBLE: TFloatField
      FieldName = 'BASE_IMPONIBLE'
      DisplayFormat = ',0.00'
    end
  end
  object DSPRetIVA: TDataSetProvider
    DataSet = QretIVA
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 367
  end
  object ibgRetIVA: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'next_id_retenciones_iva'
    SystemGenerators = False
    Left = 376
    Top = 367
  end
  object QretIVA: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select r.* from retenciones_iva r '
      'where r.id_op=:id')
    Left = 32
    Top = 367
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QretIVAID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QretIVAID_OP: TIntegerField
      FieldName = 'ID_OP'
      Required = True
    end
    object QretIVAFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object QretIVANUMERO_RETENCION: TStringField
      FieldName = 'NUMERO_RETENCION'
      Required = True
      FixedChar = True
      Size = 14
    end
    object QretIVACODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Required = True
      Size = 6
    end
    object QretIVACODIGO_REGIMEN: TIntegerField
      FieldName = 'CODIGO_REGIMEN'
      Required = True
    end
    object QretIVACONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Size = 25
    end
    object QretIVATASA: TFloatField
      FieldName = 'TASA'
    end
    object QretIVAMINIMO_NO_IMPONIBLE: TFloatField
      FieldName = 'MINIMO_NO_IMPONIBLE'
    end
    object QretIVAIMPUESTO_RETENIDO: TFloatField
      FieldName = 'IMPUESTO_RETENIDO'
    end
    object QretIVAOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
    end
    object QretIVAANULADA: TStringField
      FieldName = 'ANULADA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QretIVAESTADO: TStringField
      FieldName = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QretIVABASE_IMPONIBLE: TFloatField
      FieldName = 'BASE_IMPONIBLE'
    end
  end
  object QIvaFac: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select sum(f.importe) as Impuesto from fccompimpuesto f'
      'where f.id_fccompcab=:id')
    Left = 560
    Top = 384
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QIvaFacIMPUESTO: TFloatField
      FieldName = 'IMPUESTO'
    end
  end
  object QUltimaRetIVA: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT Max(Numero_retencion) from retenciones_Iva')
    Left = 728
    Top = 120
  end
  object QACta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select m.* from MovACtaCCCompra m where m.Proveedor=:codigo and ' +
        'm.Importe<>0'
      'order by m.fecha,m.numerocpbte')
    Left = 568
    Top = 560
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object DSPACta: TDataSetProvider
    DataSet = QACta
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 648
    Top = 560
  end
  object CDSACta: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPACta'
    Left = 696
    Top = 560
    object CDSACtaID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Required = True
    end
    object CDSACtaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSACtaPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Required = True
      Size = 6
    end
    object CDSACtaID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object CDSACtaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSACtaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSACtaNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object CDSACtaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSACtaDETALLE: TStringField
      FieldName = 'DETALLE'
    end
  end
  object DSACta: TDataSource
    DataSet = CDSACta
    Left = 768
    Top = 560
  end
  object QGravarNetosAPlicados: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update ordenpago o '
      'set o.total_neto_gravado = :neto '
      'where o.id_op = :id')
    Left = 848
    Top = 352
    ParamData = <
      item
        Name = 'neto'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QMovAux: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select m.* from mov_adiccional_cccomp m'
      'where m.id_op = :id')
    Left = 168
    Top = 656
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QMovAuxID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovAuxFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QMovAuxCODIGO_PROV: TStringField
      FieldName = 'CODIGO_PROV'
      Required = True
      Size = 6
    end
    object QMovAuxID_TIPO: TIntegerField
      FieldName = 'ID_TIPO'
      Required = True
    end
    object QMovAuxDEBE: TFloatField
      FieldName = 'DEBE'
    end
    object QMovAuxHABER: TFloatField
      FieldName = 'HABER'
    end
    object QMovAuxID_OP: TIntegerField
      FieldName = 'ID_OP'
    end
  end
  object DSPMovAux: TDataSetProvider
    DataSet = QMovAux
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 232
    Top = 656
  end
  object CDSMovAux: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovAux'
    AfterPost = CDSMovAuxAfterPost
    AfterDelete = CDSMovAuxAfterPost
    OnNewRecord = CDSMovAuxNewRecord
    Left = 296
    Top = 656
    object CDSMovAuxID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovAuxFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
    object CDSMovAuxCODIGO_PROV: TStringField
      DisplayLabel = 'Cod.Provee.'
      FieldName = 'CODIGO_PROV'
      Required = True
      Size = 6
    end
    object CDSMovAuxID_TIPO: TIntegerField
      DisplayLabel = 'Cod.Tipo'
      FieldName = 'ID_TIPO'
      Required = True
    end
    object CDSMovAuxDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovAuxHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovAuxID_OP: TIntegerField
      FieldName = 'ID_OP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSMovAuxMUESTRATIPO: TStringField
      DisplayLabel = 'Tipo Mov.'
      FieldKind = fkLookup
      FieldName = 'MUESTRATIPO'
      LookupDataSet = CDSTipo
      LookupKeyFields = 'ID'
      LookupResultField = 'DETALLE'
      KeyFields = 'ID_TIPO'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
  end
  object IBGMovAux: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_MOV_AD_CCCOMP'
    SystemGenerators = False
    Left = 408
    Top = 664
  end
  object QTipo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.* from TIPO_ADICIONAL_CCCOMP t'
      'order by detalle')
    Left = 568
    Top = 624
  end
  object DSPTipo: TDataSetProvider
    DataSet = QTipo
    Options = []
    Left = 640
    Top = 624
  end
  object CDSTipo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTipo'
    Left = 704
    Top = 624
    object CDSTipoID: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'ID'
      Required = True
    end
    object CDSTipoDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 50
    end
  end
  object DSMovAux: TDataSource
    DataSet = CDSMovAux
    Left = 352
    Top = 664
  end
  object QRegimen: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from REGIMENRETENCIONIVA where codigo=:codigo')
    Left = 568
    Top = 680
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPRegimen: TDataSetProvider
    DataSet = QRegimen
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 632
    Top = 680
  end
  object CDSRegimen: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPRegimen'
    Left = 704
    Top = 680
    object CDSRegimenCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSRegimenDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 100
    end
  end
  object QMovCC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from MOV_CTACTE_COMP (:codigo,:desde,:hasta )'
      'order by  '
      'fechacompra,tipocpbte,nrocpbte ')
    Left = 32
    Top = 552
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
end
