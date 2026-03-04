object DMImportarStockRemoto: TDMImportarStockRemoto
  OldCreateOrder = False
  Height = 718
  Width = 900
  object DSPMarcas: TDataSetProvider
    DataSet = QMarcas
    Left = 216
    Top = 40
  end
  object CDSMarcas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMarcas'
    Left = 288
    Top = 40
    object CDSMarcasMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object CDSMarcasDESCRIPCION_MARCA: TStringField
      FieldName = 'DESCRIPCION_MARCA'
      Origin = 'DESCRIPCION_MARCA'
      Size = 25
    end
    object CDSMarcasOBSERVACION_MARCA: TStringField
      FieldName = 'OBSERVACION_MARCA'
      Origin = 'OBSERVACION_MARCA'
      Size = 40
    end
  end
  object CDSStock: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPStock'
    Left = 280
    Top = 96
    object CDSStockCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSStockDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
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
    object CDSStockPLU_SECCION: TIntegerField
      FieldName = 'PLU_SECCION'
    end
  end
  object DSPDepositos: TDataSetProvider
    DataSet = QDepositos
    Left = 208
    Top = 152
  end
  object DSPSubRubro: TDataSetProvider
    DataSet = QSubRubro
    Left = 208
    Top = 208
  end
  object CDSSubRubro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSubRubro'
    Left = 280
    Top = 208
    object CDSSubRubroCODIGO_SUBRUBRO: TStringField
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object CDSSubRubroDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Required = True
      Size = 45
    end
    object CDSSubRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
    object CDSSubRubroCONTROL_SUBRUBRO: TStringField
      FieldName = 'CONTROL_SUBRUBRO'
      Origin = 'CONTROL_SUBRUBRO'
      FixedChar = True
      Size = 1
    end
    object CDSSubRubroFUERA_PROMO: TStringField
      FieldName = 'FUERA_PROMO'
      Origin = 'FUERA_PROMO'
      FixedChar = True
      Size = 1
    end
  end
  object CDSDepositos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPDepositos'
    Left = 280
    Top = 152
    object CDSDepositosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDepositosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object CDSDepositosSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object CDSDepositosCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Origin = 'CENTRALIZA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QListaCab: TFDQuery
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select l.* from listaprecioespecialcab l ORDER BY L.ID'
      ''
      '')
    Left = 385
    Top = 305
    object QListaCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QListaCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object QListaCabRECARGOBASE: TFloatField
      FieldName = 'RECARGOBASE'
      Origin = 'RECARGOBASE'
    end
    object QListaCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QListaCabPORDEFECTO: TStringField
      FieldName = 'PORDEFECTO'
      Origin = 'PORDEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QListaCabF_PAGO: TIntegerField
      FieldName = 'F_PAGO'
      Origin = 'F_PAGO'
    end
    object QListaCabUSO_ADMINISTRADOR: TStringField
      FieldName = 'USO_ADMINISTRADOR'
      Origin = 'USO_ADMINISTRADOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QListaCabCLONADA: TStringField
      FieldName = 'CLONADA'
      Origin = 'CLONADA'
      FixedChar = True
      Size = 1
    end
    object QListaCabID_LISTA_CLONADA: TIntegerField
      FieldName = 'ID_LISTA_CLONADA'
      Origin = 'ID_LISTA_CLONADA'
    end
    object QListaCabCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
      Origin = 'COEFICIENTE'
    end
    object QListaCabEXCLUSIVO_EFECTIVO: TStringField
      FieldName = 'EXCLUSIVO_EFECTIVO'
      Origin = 'EXCLUSIVO_EFECTIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPListaCab: TDataSetProvider
    DataSet = QListaCab
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 448
    Top = 304
  end
  object CDSListaCab: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'DSPListaCab'
    Left = 520
    Top = 304
    object CDSListaCabID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSListaCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSListaCabRECARGOBASE: TFloatField
      FieldName = 'RECARGOBASE'
    end
    object CDSListaCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSListaCabPORDEFECTO: TStringField
      FieldName = 'PORDEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSListaCabF_PAGO: TIntegerField
      FieldName = 'F_PAGO'
    end
    object CDSListaCabUSO_ADMINISTRADOR: TStringField
      FieldName = 'USO_ADMINISTRADOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSListaCabCLONADA: TStringField
      FieldName = 'CLONADA'
      FixedChar = True
      Size = 1
    end
    object CDSListaCabID_LISTA_CLONADA: TIntegerField
      FieldName = 'ID_LISTA_CLONADA'
    end
    object CDSListaCabCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
    end
    object CDSListaCabEXCLUSIVO_EFECTIVO: TStringField
      FieldName = 'EXCLUSIVO_EFECTIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object CDSListaPrecios: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPListaPrecios'
    Left = 520
    Top = 352
    object CDSListaPreciosCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object CDSListaPreciosRUBRO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
      Required = True
      Size = 3
    end
    object CDSListaPreciosSUBRUBRO: TStringField
      DisplayLabel = 'Sub Rubro'
      FieldName = 'SUBRUBRO'
      Origin = 'SUBRUBRO'
      Required = True
      Size = 5
    end
    object CDSListaPreciosCOSTO_GRAVADO: TFloatField
      DisplayLabel = 'C.Gravado'
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
      Required = True
    end
    object CDSListaPreciosCOSTO_EXENTO: TFloatField
      DisplayLabel = 'Costo Exento'
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
      Required = True
    end
    object CDSListaPreciosCOSTO_TOTAL: TFloatField
      DisplayLabel = 'Costo Total'
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
      Required = True
    end
    object CDSListaPreciosIVA_TASA: TFloatField
      DisplayLabel = 'Iva'
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
      Required = True
    end
    object CDSListaPreciosRECARGO: TFloatField
      DisplayLabel = 'Recargo'
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
    end
    object CDSListaPreciosPRECIO_GRAVADO: TFloatField
      DisplayLabel = 'P.Gravado'
      FieldName = 'PRECIO_GRAVADO'
      Origin = 'PRECIO_GRAVADO'
    end
    object CDSListaPreciosIVA_IMPORTE: TFloatField
      DisplayLabel = 'Iva Imp'
      FieldName = 'IVA_IMPORTE'
      Origin = 'IVA_IMPORTE'
      Required = True
    end
    object CDSListaPreciosPRECIO_EXENTO: TFloatField
      DisplayLabel = 'Exento'
      FieldName = 'PRECIO_EXENTO'
      Origin = 'PRECIO_EXENTO'
    end
    object CDSListaPreciosPRECIO: TFloatField
      DisplayLabel = 'Precio'
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
    end
    object CDSListaPreciosDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      Required = True
      Visible = False
    end
    object CDSListaPreciosREC_APLICAR: TFloatField
      FieldName = 'REC_APLICAR'
      Origin = 'REC_APLICAR'
      Required = True
      Visible = False
    end
    object CDSListaPreciosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Visible = False
    end
    object CDSListaPreciosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSListaPreciosID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Required = True
    end
  end
  object DSPListaPrecios: TDataSetProvider
    DataSet = QListaPrecios
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 448
    Top = 352
  end
  object QListaPrecios: TFDQuery
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select la.* from listaprecioespecialart la'
      'left join stock s on s.codigo_stk=la.codigoarticulo'
      ''
      'where la.id_cab=:id AND s.CLASE_ARTICULO IN (1,3) '
      '')
    Left = 384
    Top = 353
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QCodigosBarra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from codigobarra')
    Left = 541
    Top = 464
  end
  object DSPCodigoBarra: TDataSetProvider
    DataSet = QCodigosBarra
    Left = 597
    Top = 472
  end
  object CDSCodigoBarra: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCodigoBarra'
    Left = 677
    Top = 471
    object CDSCodigoBarraID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSCodigoBarraCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object CDSCodigoBarraCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Size = 50
    end
    object CDSCodigoBarraPRESENTACION: TIntegerField
      FieldName = 'PRESENTACION'
    end
    object CDSCodigoBarraPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      Required = True
    end
  end
  object CDSDep: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPDep'
    Left = 400
    Top = 479
    object CDSDepID_DEPOSITO: TIntegerField
      FieldName = 'ID_DEPOSITO'
      Origin = 'ID_DEPOSITO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDepCODIGO_DEPOSITO: TIntegerField
      FieldName = 'CODIGO_DEPOSITO'
      Origin = 'CODIGO_DEPOSITO'
      Required = True
    end
    object CDSDepCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object CDSDepSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object CDSDepINICIAL: TFloatField
      FieldName = 'INICIAL'
      Origin = 'INICIAL'
    end
    object CDSDepMINIMO: TFloatField
      FieldName = 'MINIMO'
      Origin = 'MINIMO'
    end
    object CDSDepMEDIO: TFloatField
      FieldName = 'MEDIO'
      Origin = 'MEDIO'
    end
    object CDSDepFISICO: TFloatField
      FieldName = 'FISICO'
      Origin = 'FISICO'
    end
    object CDSDepRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
      Required = True
    end
    object CDSDepFUAPRECIOS: TSQLTimeStampField
      FieldName = 'FUAPRECIOS'
      Origin = 'FUAPRECIOS'
    end
    object CDSDepSECTOR: TStringField
      FieldName = 'SECTOR'
      Origin = 'SECTOR'
      Size = 2
    end
    object CDSDepUBICACION: TStringField
      FieldName = 'UBICACION'
      Origin = 'UBICACION'
      Size = 3
    end
    object CDSDepFULTAJUSTE: TSQLTimeStampField
      FieldName = 'FULTAJUSTE'
      Origin = 'FULTAJUSTE'
    end
    object CDSDepUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
      Required = True
    end
    object CDSDepAVISO_MINIMOSTOCK: TStringField
      FieldName = 'AVISO_MINIMOSTOCK'
      Origin = 'AVISO_MINIMOSTOCK'
      FixedChar = True
      Size = 1
    end
  end
  object DSPDep: TDataSetProvider
    DataSet = QDep
    Left = 344
    Top = 479
  end
  object QDep: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from depositostk')
    Left = 296
    Top = 479
  end
  object CDSRubro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRubro'
    Left = 128
    Top = 479
    object CDSRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CDSRubroDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
    object CDSRubroCONTROL_RUBRO: TStringField
      FieldName = 'CONTROL_RUBRO'
      Origin = 'CONTROL_RUBRO'
      Size = 1
    end
    object CDSRubroFUERA_PROMO: TStringField
      FieldName = 'FUERA_PROMO'
      Origin = 'FUERA_PROMO'
      FixedChar = True
      Size = 1
    end
  end
  object DSPRubro: TDataSetProvider
    DataSet = QRubro
    Left = 56
    Top = 479
  end
  object QRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from rubros')
    Left = 16
    Top = 479
  end
  object DSPStock: TDataSetProvider
    DataSet = QStock
    Left = 208
    Top = 104
  end
  object QMarcas: TXDataset
    SQL.Strings = (
      'select * from marcas')
    Params = <>
    Left = 128
    Top = 40
  end
  object QStock: TXDataset
    SQL.Strings = (
      'select * from stock')
    Params = <>
    Left = 128
    Top = 96
  end
  object QDepositos: TXDataset
    SQL.Strings = (
      'select * from depositos')
    Params = <>
    Left = 128
    Top = 152
  end
  object QSubRubro: TXDataset
    SQL.Strings = (
      'select * from subrubros')
    Params = <>
    Left = 112
    Top = 208
  end
  object XDataset1: TXDataset
    SQL.Strings = (
      'select l.* from listaprecioespecialcab l ORDER BY L.ID'
      ''
      '')
    Params = <>
    Left = 385
    Top = 305
  end
  object XDataset2: TXDataset
    Params = <>
    Left = 384
    Top = 352
  end
  object XDataset3: TXDataset
    Params = <>
    Left = 544
    Top = 464
  end
  object XDataset4: TXDataset
    Params = <>
    Left = 296
    Top = 480
  end
  object XDataset5: TXDataset
    Params = <>
    Left = 16
    Top = 480
  end
  object RemoteDBDatabase: TRemoteDBDatabase
    Connected = False
    UserName = 'remotedb'
    Password = 'business'
    Left = 48
    Top = 32
  end
end
