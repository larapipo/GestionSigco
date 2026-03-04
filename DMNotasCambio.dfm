object DatosNotasCambio: TDatosNotasCambio
  OnDestroy = DataModuleDestroy
  Height = 650
  Width = 563
  object CDSNotaCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPNotaCab'
    OnNewRecord = CDSNotaCabNewRecord
    Left = 184
    Top = 56
    object CDSNotaCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSNotaCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSNotaCabNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object CDSNotaCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 100
    end
    object CDSNotaCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      Size = 100
    end
    object CDSNotaCabID_LISTA: TIntegerField
      FieldName = 'ID_LISTA'
      Origin = 'ID_LISTA'
    end
    object CDSNotaCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object CDSNotaCabID_AJUSTE: TIntegerField
      FieldName = 'ID_AJUSTE'
      Origin = 'ID_AJUSTE'
    end
    object CDSNotaCabID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Origin = 'ID_FACTURA'
    end
    object CDSNotaCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object CDSNotaCabCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      OnSetText = CDSNotaCabCLIENTESetText
      Size = 6
    end
    object CDSNotaCabCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Origin = 'CONDICION_IVA'
    end
    object CDSNotaCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      OnSetText = CDSNotaCabDEPOSITOSetText
    end
    object CDSNotaCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      OnSetText = CDSNotaCabSUCURSALSetText
    end
    object CDSNotaCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 45
    end
    object CDSNotaCabDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSNotaCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSNotaCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSNotaCabMUESTRATIPOFACTURA: TStringField
      FieldName = 'MUESTRATIPOFACTURA'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSNotaCabMUESTRACLASECPBT: TStringField
      FieldName = 'MUESTRACLASECPBT'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSNotaCabMUESTRANROFAC: TStringField
      FieldName = 'MUESTRANROFAC'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSNotaCabMUESTRATIPOAJUSTE: TStringField
      FieldName = 'MUESTRATIPOAJUSTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSNotaCabMUESTRACLASEAJUSTE: TStringField
      FieldName = 'MUESTRACLASEAJUSTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSNotaCabMUESTRANROAJUSTE: TStringField
      FieldName = 'MUESTRANROAJUSTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSNotaCabIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSPNotaCab: TDataSetProvider
    DataSet = QNotaCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 56
  end
  object CDSNotaDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPNotaDet'
    AfterPost = CDSNotaDetAfterPost
    AfterDelete = CDSNotaDetAfterDelete
    OnNewRecord = CDSNotaDetNewRecord
    Left = 192
    Top = 112
    object CDSNotaDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSNotaDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSNotaDetCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      OnGetText = CDSNotaDetCODIGOGetText
      OnSetText = CDSNotaDetCODIGOSetText
      EditMask = 'ccccccccccccccccccccccccccccccccccccccc;0; '
      Size = 8
    end
    object CDSNotaDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSNotaDetPRECIO_TOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'PRECIO_TOTAL'
      Origin = 'PRECIO_TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSNotaDetMUESTRACONTROLASTK: TStringField
      FieldName = 'MUESTRACONTROLASTK'
      Origin = 'CONTROLASTOCK'
      ProviderFlags = []
      Size = 1
    end
    object CDSNotaDetMUESTRACODALTERNATIVO: TStringField
      FieldName = 'MUESTRACODALTERNATIVO'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
    end
    object CDSNotaDetPRECIO_UNITARIO: TFloatField
      DisplayLabel = 'Pr.Unit.'
      FieldName = 'PRECIO_UNITARIO'
      Origin = 'PRECIO_UNITARIO'
      DisplayFormat = ',0.000'
    end
    object CDSNotaDetCANTIDAD: TFloatField
      DisplayLabel = 'Cant.'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      OnSetText = CDSNotaDetCANTIDADSetText
      DisplayFormat = ',0.00'
    end
  end
  object DSPNotaDet: TDataSetProvider
    DataSet = QNotaDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 112
  end
  object DSNotaDet: TDataSource
    DataSet = CDSNotaDet
    Left = 269
    Top = 112
  end
  object ibgCab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_NOTA_CAMBIO_CAB'
    SystemGenerators = False
    Left = 335
    Top = 122
  end
  object ibgDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_NOTA_CAMBIO_DET'
    SystemGenerators = False
    Left = 343
    Top = 170
  end
  object DSPListaPrecios: TDataSetProvider
    DataSet = DMBuscadores.QBuscaListaPrecios
    Options = []
    Left = 113
    Top = 166
  end
  object CDSListaPrecios: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'uso'
        ParamType = ptInput
      end>
    ProviderName = 'DSPListaPrecios'
    Left = 193
    Top = 174
    object CDSListaPreciosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSListaPreciosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object CDSListaPreciosF_PAGO: TIntegerField
      FieldName = 'F_PAGO'
      Origin = 'F_PAGO'
    end
  end
  object DSListaPrecios: TDataSource
    DataSet = CDSListaPrecios
    Left = 273
    Top = 166
  end
  object DSPStock: TDataSetProvider
    DataSet = QStock
    Options = []
    Left = 114
    Top = 8
  end
  object CDSStock: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'lista'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'lista'
        ParamType = ptInput
      end>
    ProviderName = 'DSPStock'
    Left = 184
    Top = 8
    object CDSStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSStockDETALLE_STK_ADICIONAL: TStringField
      FieldName = 'DETALLE_STK_ADICIONAL'
      Origin = 'DETALLE_STK_ADICIONAL'
      Size = 300
    end
    object CDSStockCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Size = 25
    end
    object CDSStockRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      Required = True
      Size = 3
    end
    object CDSStockSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      Required = True
      Size = 5
    end
    object CDSStockMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      Size = 4
    end
    object CDSStockTASA_IVA: TIntegerField
      FieldName = 'TASA_IVA'
      Origin = 'TASA_IVA'
      Required = True
    end
    object CDSStockSOBRETASA_IVA: TIntegerField
      FieldName = 'SOBRETASA_IVA'
      Origin = 'SOBRETASA_IVA'
    end
    object CDSStockCOSTO_GRAVADO_STK: TFloatField
      FieldName = 'COSTO_GRAVADO_STK'
      Origin = 'COSTO_GRAVADO_STK'
      Required = True
    end
    object CDSStockCOSTO_IVA: TFloatField
      FieldName = 'COSTO_IVA'
      Origin = 'COSTO_IVA'
      Required = True
    end
    object CDSStockCOSTO_FINAL: TFloatField
      FieldName = 'COSTO_FINAL'
      Origin = 'COSTO_FINAL'
      Required = True
    end
    object CDSStockCOSTO_EXENTO_STK: TFloatField
      FieldName = 'COSTO_EXENTO_STK'
      Origin = 'COSTO_EXENTO_STK'
      Required = True
    end
    object CDSStockCOSTO_TOTAL_STK: TFloatField
      FieldName = 'COSTO_TOTAL_STK'
      Origin = 'COSTO_TOTAL_STK'
      Required = True
    end
    object CDSStockREEMPLAZO_STK: TStringField
      FieldName = 'REEMPLAZO_STK'
      Origin = 'REEMPLAZO_STK'
      Required = True
    end
    object CDSStockFIJACION_PRECIO_GRAVADO: TFloatField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Origin = 'FIJACION_PRECIO_GRAVADO'
      Required = True
    end
    object CDSStockFIJACION_PRECIO_IVA: TFloatField
      FieldName = 'FIJACION_PRECIO_IVA'
      Origin = 'FIJACION_PRECIO_IVA'
      Required = True
    end
    object CDSStockFIJACION_PRECIO_FINAL: TFloatField
      FieldName = 'FIJACION_PRECIO_FINAL'
      Origin = 'FIJACION_PRECIO_FINAL'
      Required = True
    end
    object CDSStockFIJACION_PRECIO_EXENTO: TFloatField
      FieldName = 'FIJACION_PRECIO_EXENTO'
      Origin = 'FIJACION_PRECIO_EXENTO'
      Required = True
    end
    object CDSStockFIJACION_PRECIO_TOTAL: TFloatField
      FieldName = 'FIJACION_PRECIO_TOTAL'
      Origin = 'FIJACION_PRECIO_TOTAL'
      Required = True
    end
    object CDSStockFUAP: TSQLTimeStampField
      FieldName = 'FUAP'
      Origin = 'FUAP'
    end
    object CDSStockUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object CDSStockCONTROLASTOCK: TStringField
      FieldName = 'CONTROLASTOCK'
      Origin = 'CONTROLASTOCK'
      Required = True
      Size = 1
    end
    object CDSStockCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Origin = 'CODIGO_PROVEEDOR'
      Size = 10
    end
    object CDSStockCLASE_ARTICULO: TIntegerField
      FieldName = 'CLASE_ARTICULO'
      Origin = 'CLASE_ARTICULO'
    end
    object CDSStockMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Size = 1
    end
    object CDSStockCON_IMP_INT: TStringField
      FieldName = 'CON_IMP_INT'
      Origin = 'CON_IMP_INT'
      Size = 1
    end
    object CDSStockIMPUESTO_INTERNOS: TFloatField
      FieldName = 'IMPUESTO_INTERNOS'
      Origin = 'IMPUESTO_INTERNOS'
    end
    object CDSStockGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Origin = 'GRAVADO_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockTASA_IB: TIntegerField
      FieldName = 'TASA_IB'
      Origin = 'TASA_IB'
      Required = True
    end
    object CDSStockACTUALIZACOSTO: TStringField
      FieldName = 'ACTUALIZACOSTO'
      Origin = 'ACTUALIZACOSTO'
      FixedChar = True
      Size = 1
    end
    object CDSStockDEPRODUCCION: TStringField
      FieldName = 'DEPRODUCCION'
      Origin = 'DEPRODUCCION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockPRODUCCIONDIRECTA: TStringField
      FieldName = 'PRODUCCIONDIRECTA'
      Origin = 'PRODUCCIONDIRECTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockUNIDAD_COMPRA: TStringField
      FieldName = 'UNIDAD_COMPRA'
      Origin = 'UNIDAD_COMPRA'
      Size = 3
    end
    object CDSStockCONTENIDO_COMPRA: TFloatField
      FieldName = 'CONTENIDO_COMPRA'
      Origin = 'CONTENIDO_COMPRA'
      Required = True
    end
    object CDSStockCONTROL_SERIE: TStringField
      FieldName = 'CONTROL_SERIE'
      Origin = 'CONTROL_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockUSA_CODIGOBARRA: TStringField
      FieldName = 'USA_CODIGOBARRA'
      Origin = 'USA_CODIGOBARRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockUNIDAD_ULTIMAUSADA: TStringField
      FieldName = 'UNIDAD_ULTIMAUSADA'
      Origin = 'UNIDAD_ULTIMAUSADA'
      Size = 3
    end
    object CDSStockID_TABLAPRECIOS: TIntegerField
      FieldName = 'ID_TABLAPRECIOS'
      Origin = 'ID_TABLAPRECIOS'
    end
    object CDSStockID_TABLAPRECIOSDETALLE: TIntegerField
      FieldName = 'ID_TABLAPRECIOSDETALLE'
      Origin = 'ID_TABLAPRECIOSDETALLE'
    end
    object CDSStockCODIGO_PRECIO: TIntegerField
      FieldName = 'CODIGO_PRECIO'
      Origin = 'CODIGO_PRECIO'
    end
    object CDSStockFECHA_ALTA: TSQLTimeStampField
      FieldName = 'FECHA_ALTA'
      Origin = 'FECHA_ALTA'
    end
    object CDSStockCOSTO_GRAVADO_SOMBRA: TFloatField
      FieldName = 'COSTO_GRAVADO_SOMBRA'
      Origin = 'COSTO_GRAVADO_SOMBRA'
      Required = True
    end
    object CDSStockCOSTO_EXENTO_SOMBRA: TFloatField
      FieldName = 'COSTO_EXENTO_SOMBRA'
      Origin = 'COSTO_EXENTO_SOMBRA'
      Required = True
    end
    object CDSStockFECHA_ACT_SOMBRA: TSQLTimeStampField
      FieldName = 'FECHA_ACT_SOMBRA'
      Origin = 'FECHA_ACT_SOMBRA'
    end
    object CDSStockFECHA_ULTIMAVTA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMAVTA'
      Origin = 'FECHA_ULTIMAVTA'
    end
    object CDSStockMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object CDSStockCOSTO_GRAVADO_P: TFloatField
      FieldName = 'COSTO_GRAVADO_P'
      Origin = 'COSTO_GRAVADO_P'
      Required = True
    end
    object CDSStockCOSTO_EXENTO_P: TFloatField
      FieldName = 'COSTO_EXENTO_P'
      Origin = 'COSTO_EXENTO_P'
      Required = True
    end
    object CDSStockCOSTO_TOTAL_P: TFloatField
      FieldName = 'COSTO_TOTAL_P'
      Origin = 'COSTO_TOTAL_P'
      Required = True
    end
    object CDSStockPOSICION: TStringField
      FieldName = 'POSICION'
      Origin = 'POSICION'
      Size = 10
    end
    object CDSStockPRESENTACION_UNIDAD: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      Origin = 'PRESENTACION_UNIDAD'
      Size = 3
    end
    object CDSStockPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      Origin = 'PRESENTACION_CANTIDAD'
      Required = True
    end
    object CDSStockEDITAPRECIO: TStringField
      FieldName = 'EDITAPRECIO'
      Origin = 'EDITAPRECIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockEDITADETALLE: TStringField
      FieldName = 'EDITADETALLE'
      Origin = 'EDITADETALLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockURL: TStringField
      FieldName = 'URL'
      Origin = 'URL'
      Size = 250
    end
    object CDSStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMA_COMPRA'
      Origin = 'FECHA_ULTIMA_COMPRA'
    end
    object CDSStockCOMANDA: TStringField
      FieldName = 'COMANDA'
      Origin = 'COMANDA'
      FixedChar = True
      Size = 1
    end
    object CDSStockPORCENTAJE_SOBRECOSTO: TFloatField
      FieldName = 'PORCENTAJE_SOBRECOSTO'
      Origin = 'PORCENTAJE_SOBRECOSTO'
    end
    object CDSStockRUBRO_GASTO: TStringField
      FieldName = 'RUBRO_GASTO'
      Origin = 'RUBRO_GASTO'
      Required = True
      Size = 3
    end
    object CDSStockRUBRO_CTA_GASTO: TStringField
      FieldName = 'RUBRO_CTA_GASTO'
      Origin = 'RUBRO_CTA_GASTO'
      Required = True
      Size = 6
    end
    object CDSStockPUBLICAR_WEB: TStringField
      FieldName = 'PUBLICAR_WEB'
      Origin = 'PUBLICAR_WEB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockGTIA_MESES: TIntegerField
      FieldName = 'GTIA_MESES'
      Origin = 'GTIA_MESES'
      Required = True
    end
    object CDSStockGARANTIAOFICIAL: TStringField
      FieldName = 'GARANTIAOFICIAL'
      Origin = 'GARANTIAOFICIAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockADICIONAL_SOBRECOSTO: TFloatField
      FieldName = 'ADICIONAL_SOBRECOSTO'
      Origin = 'ADICIONAL_SOBRECOSTO'
      Required = True
    end
    object CDSStockIMPRIMIR_LSTPRECIOS: TStringField
      FieldName = 'IMPRIMIR_LSTPRECIOS'
      Origin = 'IMPRIMIR_LSTPRECIOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockCONTROL_TRAZABILIDAD: TStringField
      FieldName = 'CONTROL_TRAZABILIDAD'
      Origin = 'CONTROL_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockIVA_MODIFICADO: TStringField
      FieldName = 'IVA_MODIFICADO'
      Origin = 'IVA_MODIFICADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockSIGLAS: TStringField
      FieldName = 'SIGLAS'
      Origin = 'SIGLAS'
      Size = 2
    end
    object CDSStockPRESENTACION_2_CANT: TFloatField
      FieldName = 'PRESENTACION_2_CANT'
      Origin = 'PRESENTACION_2_CANT'
      Required = True
    end
    object CDSStockTASA_MANUFACTURA: TStringField
      FieldName = 'TASA_MANUFACTURA'
      Origin = 'TASA_MANUFACTURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockPLU: TStringField
      FieldName = 'PLU'
      Origin = 'PLU'
      Size = 5
    end
    object CDSStockACOPIABLE: TStringField
      FieldName = 'ACOPIABLE'
      Origin = 'ACOPIABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockCIKO_TIPO: TIntegerField
      FieldName = 'CIKO_TIPO'
      Origin = 'CIKO_TIPO'
      Required = True
    end
    object CDSStockTIPOADICIONAL: TStringField
      FieldName = 'TIPOADICIONAL'
      Origin = 'TIPOADICIONAL'
      Size = 10
    end
    object CDSStockLARGO_1: TFloatField
      FieldName = 'LARGO_1'
      Origin = 'LARGO_1'
      Required = True
    end
    object CDSStockLARGO_2: TFloatField
      FieldName = 'LARGO_2'
      Origin = 'LARGO_2'
      Required = True
    end
    object CDSStockLARGO_3: TFloatField
      FieldName = 'LARGO_3'
      Origin = 'LARGO_3'
      Required = True
    end
    object CDSStockROTURA_1: TFloatField
      FieldName = 'ROTURA_1'
      Origin = 'ROTURA_1'
      Required = True
    end
    object CDSStockROTURA_2: TFloatField
      FieldName = 'ROTURA_2'
      Origin = 'ROTURA_2'
      Required = True
    end
    object CDSStockCIMA: TFloatField
      FieldName = 'CIMA'
      Origin = 'CIMA'
      Required = True
    end
    object CDSStockBASE: TFloatField
      FieldName = 'BASE'
      Origin = 'BASE'
      Required = True
    end
    object CDSStockVOLUMEN: TFloatField
      FieldName = 'VOLUMEN'
      Origin = 'VOLUMEN'
      Required = True
    end
    object CDSStockPESO_CALCULADO: TFloatField
      FieldName = 'PESO_CALCULADO'
      Origin = 'PESO_CALCULADO'
      Required = True
    end
    object CDSStockPESO: TFloatField
      FieldName = 'PESO'
      Origin = 'PESO'
      Required = True
    end
    object CDSStockDIAMETRO_OLLA: TFloatField
      FieldName = 'DIAMETRO_OLLA'
      Origin = 'DIAMETRO_OLLA'
      Required = True
    end
    object CDSStockALTO_ACC: TFloatField
      FieldName = 'ALTO_ACC'
      Origin = 'ALTO_ACC'
      Required = True
    end
    object CDSStockMODO_IVA: TStringField
      FieldName = 'MODO_IVA'
      Origin = 'MODO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockDISPONIBLE: TStringField
      FieldName = 'DISPONIBLE'
      Origin = 'DISPONIBLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockMUESTRAPRECIO: TFloatField
      FieldName = 'MUESTRAPRECIO'
      Origin = 'MUESTRAPRECIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSStockMUESTRAPRECIOIVA: TFloatField
      FieldName = 'MUESTRAPRECIOIVA'
      Origin = 'MUESTRAPRECIOIVA'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 432
    Top = 328
    object CDSBuscaSucursalCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSBuscaSucursalDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Left = 344
    Top = 328
  end
  object CDSBuscaDeposito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaDeposito'
    Left = 432
    Top = 381
    object CDSBuscaDepositoNOMBRE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 25
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSBuscaDepositoID: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
    end
  end
  object DSPBuscaDeposito: TDataSetProvider
    DataSet = DMBuscadores.QBuscaDeposito
    Left = 352
    Top = 381
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMMain_FD.QSucursal
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 342
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
    Left = 112
    Top = 342
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
  end
  object CDSDeposito: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPDeposito'
    Left = 128
    Top = 416
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
    object CDSDepositoCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Size = 1
    end
  end
  object DSPDeposito: TDataSetProvider
    DataSet = DMMain_FD.QDeposito
    Options = []
    Left = 40
    Top = 422
  end
  object DSPInscripcion: TDataSetProvider
    DataSet = DMMain_FD.QInscripcion
    Options = []
    Left = 34
    Top = 286
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
    Left = 120
    Top = 288
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
  object QActualizaNotaIdFac: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update Nota_cambio_cab n set '
      'n.id_factura= :id_factura'
      'where n.id=:id'
      ' ')
    Left = 328
    Top = 456
    ParamData = <
      item
        Name = 'id_factura'
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object IntegerField2: TIntegerField
      FieldName = 'NUMERO'
    end
    object StringField1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 100
    end
    object StringField2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 100
    end
    object IntegerField3: TIntegerField
      FieldName = 'ID_LISTA'
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object IntegerField4: TIntegerField
      FieldName = 'ID_AJUSTE'
    end
    object IntegerField5: TIntegerField
      FieldName = 'ID_FACTURA'
    end
    object FMTBCDField1: TFloatField
      FieldName = 'IMPORTE'
    end
    object StringField3: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object StringField4: TStringField
      FieldName = 'CLIENTE'
      Size = 6
    end
    object IntegerField6: TIntegerField
      FieldName = 'CONDICION_IVA'
    end
    object IntegerField7: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object IntegerField8: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object StringField5: TStringField
      FieldName = 'NOMBRE'
      Size = 45
    end
    object StringField6: TStringField
      FieldName = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField7: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object StringField8: TStringField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
  end
  object QActualizaNotaIdAjus: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update Nota_cambio_cab n set '
      'n.id_ajuste =  :id_ajuste'
      'where n.id=:id'
      ' ')
    Left = 328
    Top = 512
    ParamData = <
      item
        Name = 'id_ajuste'
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object IntegerField9: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLTimeStampField3: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object IntegerField10: TIntegerField
      FieldName = 'NUMERO'
    end
    object StringField9: TStringField
      FieldName = 'OBSERVACION1'
      Size = 100
    end
    object StringField10: TStringField
      FieldName = 'OBSERVACION2'
      Size = 100
    end
    object IntegerField11: TIntegerField
      FieldName = 'ID_LISTA'
    end
    object SQLTimeStampField4: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object IntegerField12: TIntegerField
      FieldName = 'ID_AJUSTE'
    end
    object IntegerField13: TIntegerField
      FieldName = 'ID_FACTURA'
    end
    object FMTBCDField2: TFloatField
      FieldName = 'IMPORTE'
    end
    object StringField11: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object StringField12: TStringField
      FieldName = 'CLIENTE'
      Size = 6
    end
    object IntegerField14: TIntegerField
      FieldName = 'CONDICION_IVA'
    end
    object IntegerField15: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object IntegerField16: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object StringField13: TStringField
      FieldName = 'NOMBRE'
      Size = 45
    end
    object StringField14: TStringField
      FieldName = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField15: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object StringField16: TStringField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
  end
  object DSPExistencia: TDataSetProvider
    DataSet = DMMain_FD.QExistencia
    Options = []
    Left = 35
    Top = 237
  end
  object CDSExistencia: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'unidad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'fisico'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'fisico'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'usuario'
        ParamType = ptInput
      end>
    ProviderName = 'DSPExistencia'
    Left = 107
    Top = 237
    object CDSExistenciaCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object CDSExistenciaDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object CDSExistenciaFISICO: TFloatField
      FieldName = 'FISICO'
    end
    object CDSExistenciaCOMPROMETIDO: TFloatField
      FieldName = 'COMPROMETIDO'
    end
    object CDSExistenciaSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object CDSExistenciaDEPOSITO_STK: TIntegerField
      FieldName = 'DEPOSITO_STK'
    end
    object CDSExistenciaEN_TRANSITO: TFloatField
      FieldName = 'EN_TRANSITO'
    end
    object CDSExistenciaDEPOSITO_NOMBRE: TStringField
      FieldName = 'DEPOSITO_NOMBRE'
      Size = 25
    end
  end
  object DSExistencia: TDataSource
    DataSet = CDSExistencia
    Left = 171
    Top = 237
  end
  object QStock: TFDQuery
    ObjectView = False
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select S.*, ((d.precio_gravado+d.precio_exento)*1) as MuestraPre' +
        'cio,'
      '            (d.precio * 1) as MuestraPrecioIva'
      '    from stock s'
      
        '      left join listaprecioespecialArt d on d.codigoarticulo=s.c' +
        'odigo_stk'
      ''
      
        'where (S.Codigo_Stk = :codigo)  and (d.id_cab = :lista or :lista' +
        ' = -1) and (s.clase_articulo<>0)'
      ' ')
    Left = 48
    Top = 8
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'lista'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'lista'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT C.*  FROM Clientes C'
      'where (c.codigo=:codigo)')
    Left = 456
    Top = 48
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QClientesNOMBRE_COMPLETO: TStringField
      FieldName = 'NOMBRE_COMPLETO'
      Origin = 'NOMBRE_COMPLETO'
      Size = 100
    end
    object QClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object QClientesDIRECCION_PARTICULAR: TStringField
      FieldName = 'DIRECCION_PARTICULAR'
      Origin = 'DIRECCION_PARTICULAR'
      Size = 35
    end
    object QClientesDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Origin = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object QClientesTELEFONO_PARTICULAR: TStringField
      FieldName = 'TELEFONO_PARTICULAR'
      Origin = 'TELEFONO_PARTICULAR'
      Size = 10
    end
    object QClientesTELEFONO_COMERCIAL_1: TStringField
      FieldName = 'TELEFONO_COMERCIAL_1'
      Origin = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object QClientesTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Origin = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object QClientesTELEFONO_CELULAR: TStringField
      FieldName = 'TELEFONO_CELULAR'
      Origin = 'TELEFONO_CELULAR'
      Size = 11
    end
    object QClientesID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
      Origin = 'ID_COD_POSTAL'
    end
    object QClientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QClientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QClientesCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Origin = 'CONDICION_IVA'
      Required = True
    end
    object QClientesEMITE_REMITO: TStringField
      FieldName = 'EMITE_REMITO'
      Origin = 'EMITE_REMITO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesEMITE_FACTURA: TStringField
      FieldName = 'EMITE_FACTURA'
      Origin = 'EMITE_FACTURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesNRO_DE_CUIT: TStringField
      FieldName = 'NRO_DE_CUIT'
      Origin = 'NRO_DE_CUIT'
      Size = 13
    end
    object QClientesACTIVO: TStringField
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      FixedChar = True
      Size = 1
    end
    object QClientesLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
      Origin = 'LIMITE_CREDITO'
    end
    object QClientesSALDOINICIAL: TFloatField
      FieldName = 'SALDOINICIAL'
      Origin = 'SALDOINICIAL'
    end
    object QClientesOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      BlobType = ftMemo
    end
    object QClientesFECHAULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'FECHAULTIMACOMPRA'
      Origin = 'FECHAULTIMACOMPRA'
    end
  end
  object QNotaCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select n.*,s.detalle as MuestraSucursal,d.nombre as MuestraDepos' +
        'ito,'
      
        'f.tipocpbte as MuestraTipoFactura , f.clasecpbte as MuestraClase' +
        'Cpbt , f.nrocpbte as MuestraNroFac,'
      
        'r.tipocpbte as MuestraTipoAjuste, r.clasecpbte MuestraClaseAjust' +
        'e,r.nrocpbte as MuestraNroAjuste from Nota_cambio_cab n'
      'left join sucursal s on s.codigo=n.sucursal'
      'left join depositos d on d.id=n.deposito'
      'left join fcvtacab f on f.id_fc=n.id_factura'
      'left join rtomercacab r on r.id_rto=n.id_ajuste'
      'where n.id=:id')
    Left = 40
    Top = 56
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QNotaCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNotaCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QNotaCabNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object QNotaCabID_LISTA: TIntegerField
      FieldName = 'ID_LISTA'
      Origin = 'ID_LISTA'
    end
    object QNotaCabID_AJUSTE: TIntegerField
      FieldName = 'ID_AJUSTE'
      Origin = 'ID_AJUSTE'
      Required = True
    end
    object QNotaCabID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Origin = 'ID_FACTURA'
      Required = True
    end
    object QNotaCabIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QNotaCabCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object QNotaCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 45
    end
    object QNotaCabCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Origin = 'CONDICION_IVA'
    end
    object QNotaCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object QNotaCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QNotaCabDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QNotaCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 100
    end
    object QNotaCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      Size = 100
    end
    object QNotaCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QNotaCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QNotaCabMUESTRASUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QNotaCabMUESTRADEPOSITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QNotaCabMUESTRATIPOFACTURA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATIPOFACTURA'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QNotaCabMUESTRACLASECPBT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACLASECPBT'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QNotaCabMUESTRANROFAC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANROFAC'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object QNotaCabMUESTRATIPOAJUSTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATIPOAJUSTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QNotaCabMUESTRACLASEAJUSTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACLASEAJUSTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QNotaCabMUESTRANROAJUSTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANROAJUSTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
  end
  object QNotaDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select n.*,s.controlastock as MuestraControlaStk,s.reemplazo_stk' +
        ' as MuestraCodAlternativo from Nota_cambio_det n'
      'left join stock s on s.codigo_stk=n.codigo'
      'where n.id_cab=:id')
    Left = 48
    Top = 112
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QNotaDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNotaDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNotaDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QNotaDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QNotaDetPRECIO_UNITARIO: TFloatField
      FieldName = 'PRECIO_UNITARIO'
      Origin = 'PRECIO_UNITARIO'
    end
    object QNotaDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QNotaDetPRECIO_TOTAL: TFloatField
      FieldName = 'PRECIO_TOTAL'
      Origin = 'PRECIO_TOTAL'
    end
    object QNotaDetMUESTRACONTROLASTK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACONTROLASTK'
      Origin = 'CONTROLASTOCK'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QNotaDetMUESTRACODALTERNATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACODALTERNATIVO'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
