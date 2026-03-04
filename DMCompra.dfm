object DatosCompra: TDatosCompra
  OnDestroy = DataModuleDestroy
  Height = 857
  Width = 1300
  object DSPCompraCab: TDataSetProvider
    DataSet = DMMain_FD.QCompraCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 36
    Top = 8
  end
  object DSPCompraDet: TDataSetProvider
    DataSet = DMMain_FD.QCompraDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 36
    Top = 58
  end
  object DSPProveedor: TDataSetProvider
    DataSet = DMMain_FD.QProveedores
    Options = [poAllowCommandText]
    Left = 356
    Top = 8
  end
  object DSPCondCompra: TDataSetProvider
    DataSet = DMMain_FD.QCondCompra
    Options = []
    Left = 28
    Top = 318
  end
  object DSPStock: TDataSetProvider
    DataSet = QStockFD
    Left = 108
    Top = 270
  end
  object DSPDepositoStk: TDataSetProvider
    DataSet = DMMain_FD.QDepositoStk
    Options = []
    Left = 28
    Top = 371
  end
  object DSPIva: TDataSetProvider
    DataSet = DMMain_FD.QIva
    Options = [poAllowCommandText]
    Left = 356
    Top = 109
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMMain_FD.QSucursal
    Options = []
    Left = 28
    Top = 420
  end
  object DSPImpuestos: TDataSetProvider
    DataSet = DMMain_FD.QImpuestosComp
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 36
    Top = 112
  end
  object DSPPercepcionIVA: TDataSetProvider
    DataSet = DMMain_FD.QPercepcionIva
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 356
    Top = 160
  end
  object DSPPercepcionIB: TDataSetProvider
    DataSet = DMMain_FD.QPercepcionIB
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 348
    Top = 208
  end
  object DSPDeposito: TDataSetProvider
    DataSet = DMMain_FD.QDeposito
    Options = [poAllowCommandText]
    Left = 356
    Top = 52
  end
  object IBGFcCompCab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FC_COMPRA_CAB'
    SystemGenerators = False
    Left = 272
    Top = 288
  end
  object IBGFcCompDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FC_COMPRA_DET'
    SystemGenerators = False
    Left = 272
    Top = 336
  end
  object IBGImpuestos: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_IMPUESTOS_COMPRA'
    SystemGenerators = False
    Left = 280
    Top = 232
  end
  object IBGPercepcionIB: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_PERCEPCION_IB'
    SystemGenerators = False
    Left = 270
    Top = 426
  end
  object IBGPercepcionIVA: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_PERCEPCION_IVA'
    SystemGenerators = False
    Left = 592
    Top = 152
  end
  object DSPInscripcion: TDataSetProvider
    DataSet = DMMain_FD.QInscripcion
    Options = [poAllowCommandText]
    Left = 352
    Top = 419
  end
  object ibgCondPago: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_CONDPAGO_FC_COMPRA'
    SystemGenerators = False
    Left = 272
    Top = 480
  end
  object DSPComprSubDet: TDataSetProvider
    DataSet = DMMain_FD.QCompSubDetalle
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 160
  end
  object CDSCompraSubDetalle: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_DETFAC'
    MasterFields = 'ID'
    MasterSource = DSCompraDet
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPComprSubDet'
    BeforeInsert = CDSCompraSubDetalleBeforeInsert
    BeforeEdit = CDSCompraSubDetalleBeforeEdit
    BeforePost = CDSCompraSubDetalleBeforePost
    AfterPost = CDSCompraSubDetalleAfterPost
    BeforeDelete = CDSCompraSubDetalleBeforeDelete
    OnNewRecord = CDSCompraSubDetalleNewRecord
    Left = 112
    Top = 160
    object CDSCompraSubDetalleID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCompraSubDetalleID_DETFAC: TIntegerField
      FieldName = 'ID_DETFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSCompraSubDetalleID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSCompraSubDetalleTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 4
    end
    object CDSCompraSubDetalleCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 4
    end
    object CDSCompraSubDetalleFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object CDSCompraSubDetalleSERIE: TStringField
      FieldName = 'SERIE'
      OnSetText = CDSCompraSubDetalleSERIESetText
      Size = 50
    end
    object CDSCompraSubDetalleNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSCompraSubDetalleCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSCompraSubDetalleDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
  end
  object IBGFcCompSubDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FCCOMPSUBDETALLE'
    SystemGenerators = False
    Left = 272
    Top = 384
  end
  object DSCompraSubDetalle: TDataSource
    DataSet = CDSCompraSubDetalle
    Left = 208
    Top = 168
  end
  object DSOrdenCompra: TDataSource
    DataSet = CDSOCompra
    Left = 880
    Top = 144
  end
  object ibFcCom_OC: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FCCOMP_ORDENCOMPRA'
    SystemGenerators = False
    Left = 544
    Top = 360
  end
  object CDSOCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPOCompra'
    OnNewRecord = CDSOCompraNewRecord
    Left = 800
    Top = 152
    object CDSOCompraID_FC: TIntegerField
      FieldName = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOCompraID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOCompraID_OC: TIntegerField
      FieldName = 'ID_OC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSOCompraNUMERO_OC: TStringField
      FieldName = 'NUMERO_OC'
      Size = 13
    end
  end
  object DSPOCompra: TDataSetProvider
    DataSet = QOcompra
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 728
    Top = 152
  end
  object DSCompraDet: TDataSource
    DataSet = CDSCompraDet
    Left = 184
    Top = 64
  end
  object DSPercepcionIVA: TDataSource
    DataSet = CDSPercepcionIVA
    Left = 536
    Top = 160
  end
  object DSPercepcionIB: TDataSource
    DataSet = CDSPercepcionIB
    Left = 528
    Top = 208
  end
  object DSImpuestos: TDataSource
    DataSet = CDSImpuestos
    Left = 192
    Top = 120
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
    Left = 424
    Top = 60
    object CDSDepositoID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
    end
    object CDSDepositoNOMBRE: TStringField
      DisplayWidth = 25
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSDepositoSUCURSAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'SUCURSAL'
    end
  end
  object CDSBuscaDeposito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaDeposito'
    Left = 432
    Top = 264
    object CDSBuscaDepositoNOMBRE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 35
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
    Options = [poAllowCommandText]
    Left = 352
    Top = 264
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = [poAllowCommandText]
    Left = 352
    Top = 312
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 440
    Top = 312
    object CDSBuscaSucursalCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSBuscaSucursalDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 40
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object CDSCondCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CodigoPago'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCondCompra'
    Left = 112
    Top = 318
    object CDSCondCompraCODIGOPROVEE: TStringField
      FieldName = 'CODIGOPROVEE'
      Size = 6
    end
    object CDSCondCompraCODIGOPAGO: TIntegerField
      FieldName = 'CODIGOPAGO'
    end
    object CDSCondCompraDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSCondCompraDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object CDSCondCompraDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object CDSCondCompraDESCUENTO_FPAGO: TFloatField
      FieldName = 'DESCUENTO_FPAGO'
    end
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
    Left = 192
    Top = 270
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
    object CDSStockPLU_SECCION: TStringField
      FieldName = 'PLU_SECCION'
      Origin = 'PLU_SECCION'
      Required = True
      Size = 50
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
    Left = 424
    Top = 8
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
    object CDSProveedorCON_OCOMPRA: TStringField
      FieldName = 'CON_OCOMPRA'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object CDSIva: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPIva'
    Left = 424
    Top = 109
    object CDSIvaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSIvaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 15
    end
    object CDSIvaTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSIvaCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Origin = 'COLUMNA'
      Required = True
    end
  end
  object DSPCondPago: TDataSetProvider
    DataSet = DMMain_FD.QCondPago
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 28
    Top = 468
  end
  object DSPTasaPercepIVA: TDataSetProvider
    DataSet = DMMain_FD.QTasaPercepcioIva
    Left = 592
    Top = 8
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
    Left = 672
    Top = 8
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
    Left = 568
    Top = 72
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
    Left = 672
    Top = 56
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
  object CDSCompraCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'TipoCpbte'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCompraCab'
    BeforePost = CDSCompraCabBeforePost
    OnNewRecord = CDSCompraCabNewRecord
    Left = 110
    Top = 7
    object CDSCompraCabID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCompraCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSCompraCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSCompraCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSCompraCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      OnSetText = CDSCompraCabCodigoSetText
      Size = 350
    end
    object CDSCompraCabLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      OnChange = CDSCompraCabLetraFacChange
      FixedChar = True
      Size = 1
    end
    object CDSCompraCabSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Origin = 'SUCFAC'
      OnSetText = CDSCompraCabSucFacSetText
      Size = 4
    end
    object CDSCompraCabNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Origin = 'NUMEROFAC'
      OnSetText = CDSCompraCabNumeroFacSetText
      Size = 8
    end
    object CDSCompraCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSCompraCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSCompraCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object CDSCompraCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object CDSCompraCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object CDSCompraCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
    end
    object CDSCompraCabCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSCompraCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object CDSCompraCabCONDICIONCOMPRA: TIntegerField
      FieldName = 'CONDICIONCOMPRA'
      Origin = 'CONDICIONCOMPRA'
      Required = True
      OnSetText = CDSCompraCabCondicionCompraSetText
    end
    object CDSCompraCabANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraCabORDENCOMPRA: TStringField
      FieldName = 'ORDENCOMPRA'
      Origin = 'ORDENCOMPRA'
      Size = 8
    end
    object CDSCompraCabN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
      Origin = 'N_OPERACION2'
    end
    object CDSCompraCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      Origin = 'NETOGRAV1'
      OnSetText = CDSCompraCabNetoGrav1SetText
    end
    object CDSCompraCabDSTO: TFloatField
      FieldName = 'DSTO'
      Origin = 'DSTO'
      OnSetText = CDSCompraCabDSTOSetText
    end
    object CDSCompraCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      Origin = 'DSTOIMPORTE'
      OnSetText = CDSCompraCabDSTOIMPORTESetText
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSCompraCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      Origin = 'NETOGRAV2'
    end
    object CDSCompraCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      Origin = 'NETOEXEN1'
    end
    object CDSCompraCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      Origin = 'NETOEXEN2'
    end
    object CDSCompraCabIMPORTEEXCLUIDO2: TFloatField
      FieldName = 'IMPORTEEXCLUIDO2'
      Origin = 'IMPORTEEXCLUIDO2'
    end
    object CDSCompraCabIMPORTEEXCLUIDO1: TFloatField
      FieldName = 'IMPORTEEXCLUIDO1'
      Origin = 'IMPORTEEXCLUIDO1'
    end
    object CDSCompraCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSCompraCabDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
    end
    object CDSCompraCabAPLICA: TStringField
      FieldName = 'APLICA'
      Origin = 'APLICA'
      Size = 13
    end
    object CDSCompraCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 60
    end
    object CDSCompraCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      Size = 60
    end
    object CDSCompraCabSUCURSALCOMPRA: TIntegerField
      FieldName = 'SUCURSALCOMPRA'
      Origin = 'SUCURSALCOMPRA'
      Required = True
      OnSetText = CDSCompraCabSUCURSALCOMPRASetText
    end
    object CDSCompraCabZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object CDSCompraCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
      OnSetText = CDSCompraCabDepositoSetText
    end
    object CDSCompraCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraCabFECHAFISCAL: TSQLTimeStampField
      FieldName = 'FECHAFISCAL'
      Origin = 'FECHAFISCAL'
      Required = True
      OnSetText = CDSCompraCabFECHAFISCALSetText
    end
    object CDSCompraCabNETOMONOTRIBUTO1: TFloatField
      FieldName = 'NETOMONOTRIBUTO1'
      Origin = 'NETOMONOTRIBUTO1'
    end
    object CDSCompraCabNETOMONOTRIBUTO2: TFloatField
      FieldName = 'NETOMONOTRIBUTO2'
      Origin = 'NETOMONOTRIBUTO2'
    end
    object CDSCompraCabCPBTE_INTERNO: TStringField
      FieldName = 'CPBTE_INTERNO'
      Origin = 'CPBTE_INTERNO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraCabINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Origin = 'INGRESA_A_CTACTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraCabINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Origin = 'INGRESA_LIBRO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraCabREDUCIDA: TStringField
      FieldName = 'REDUCIDA'
      Origin = 'REDUCIDA'
      FixedChar = True
      Size = 1
    end
    object CDSCompraCabTIPO_PROVEEDOR: TStringField
      FieldName = 'TIPO_PROVEEDOR'
      Origin = 'TIPO_PROVEEDOR'
      FixedChar = True
      Size = 1
    end
    object CDSCompraCabJURIDICCION: TIntegerField
      FieldName = 'JURIDICCION'
      Origin = 'JURIDICCION'
    end
    object CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField
      FieldName = 'PERCEPCION_IB_BASEIMPONIBLE'
      Origin = 'PERCEPCION_IB_BASEIMPONIBLE'
    end
    object CDSCompraCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object CDSCompraCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object CDSCompraCabTOTAL_UNIDADES: TFloatField
      FieldName = 'TOTAL_UNIDADES'
      Origin = 'TOTAL_UNIDADES'
    end
    object CDSCompraCabMONEDA_CPBTE: TIntegerField
      FieldName = 'MONEDA_CPBTE'
      Origin = 'MONEDA_CPBTE'
    end
    object CDSCompraCabMONEDA_CPBTE_COTIZACION: TFloatField
      FieldName = 'MONEDA_CPBTE_COTIZACION'
      Origin = 'MONEDA_CPBTE_COTIZACION'
      OnChange = CDSCompraCabMONEDA_CPBTE_COTIZACIONChange
    end
    object CDSCompraCabMUESTRACONDCOMPRA: TStringField
      FieldName = 'MUESTRACONDCOMPRA'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object CDSCompraCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSCompraCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSCompraCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object CDSCompraCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
      OnSetText = CDSCompraCabID_TIPOCOMPROBANTESetText
    end
    object CDSCompraCabMUESTRAMONEDACPBTE: TStringField
      FieldName = 'MUESTRAMONEDACPBTE'
      Origin = 'MONEDA'
      ProviderFlags = []
      Size = 15
    end
    object CDSCompraCabMUESTRASIGNOMONEDACPBTE: TStringField
      FieldName = 'MUESTRASIGNOMONEDACPBTE'
      Origin = 'SIGNO'
      ProviderFlags = []
      Size = 5
    end
    object CDSCompraCabCAE: TStringField
      FieldName = 'CAE'
      Origin = 'CAE'
      Required = True
      Size = 50
    end
    object CDSCompraCabCAE_VENCIMIENTO: TSQLTimeStampField
      FieldName = 'CAE_VENCIMIENTO'
      Origin = 'CAE_VENCIMIENTO'
    end
    object CDSCompraCabFACTURA_ELECTRONICA: TStringField
      FieldName = 'FACTURA_ELECTRONICA'
      Origin = 'FACTURA_ELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraCabMUESTRACODIGOAFIP: TStringField
      FieldName = 'MUESTRACODIGOAFIP'
      Origin = 'CODIGO_AFIP'
      ProviderFlags = []
      Size = 3
    end
    object CDSCompraCabMUESTRAINSCRIPCIONIVA: TStringField
      FieldName = 'MUESTRAINSCRIPCIONIVA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 15
    end
    object CDSCompraCabNUMERO_OPERACION: TStringField
      FieldName = 'NUMERO_OPERACION'
      Origin = 'NUMERO_OPERACION'
      ProviderFlags = []
      Size = 8
    end
    object CDSCompraCabCOD_OPERACION_AFIP: TSingleField
      FieldName = 'COD_OPERACION_AFIP'
      Origin = 'COD_OPERACION_AFIP'
    end
    object CDSCompraCabTIPOCOMP_AFIP: TStringField
      FieldName = 'TIPOCOMP_AFIP'
      Origin = 'TIPOCOMP_AFIP'
      OnChange = CDSCompraCabTIPOCOMP_AFIPChange
      Size = 3
    end
    object CDSCompraCabFECHA_OPERACION: TSQLTimeStampField
      FieldName = 'FECHA_OPERACION'
      Origin = 'FECHA_OPERACION'
    end
    object CDSCompraCabLUGAR_REALIZA_AFIP: TStringField
      FieldName = 'LUGAR_REALIZA_AFIP'
      Origin = 'LUGAR_REALIZA_AFIP'
      Size = 30
    end
    object CDSCompraCabCOD_MOTIVO_AFIP: TIntegerField
      FieldName = 'COD_MOTIVO_AFIP'
      Origin = 'COD_MOTIVO_AFIP'
    end
    object CDSCompraCabFECHA_FAENA_AFIP: TSQLTimeStampField
      FieldName = 'FECHA_FAENA_AFIP'
      Origin = 'FECHA_FAENA_AFIP'
    end
    object CDSCompraCabFECHA_RECEP_AFIP: TSQLTimeStampField
      FieldName = 'FECHA_RECEP_AFIP'
      Origin = 'FECHA_RECEP_AFIP'
    end
    object CDSCompraCabDATOS_ADIC_AFIP: TStringField
      FieldName = 'DATOS_ADIC_AFIP'
      Origin = 'DATOS_ADIC_AFIP'
      Size = 100
    end
    object CDSCompraCabFECHA_INCIO_ACTIV: TSQLTimeStampField
      FieldName = 'FECHA_INCIO_ACTIV'
      Origin = 'FECHA_INCIO_ACTIV'
    end
    object CDSCompraCabCOD_CARACT_RECP_AFIP: TIntegerField
      FieldName = 'COD_CARACT_RECP_AFIP'
      Origin = 'COD_CARACT_RECP_AFIP'
    end
    object CDSCompraCabCOD_CARACT_EMIS_AFIP: TIntegerField
      FieldName = 'COD_CARACT_EMIS_AFIP'
      Origin = 'COD_CARACT_EMIS_AFIP'
    end
    object CDSCompraCabNRO_IIBB_RECEP: TStringField
      FieldName = 'NRO_IIBB_RECEP'
      Origin = 'NRO_IIBB_RECEP'
    end
    object CDSCompraCabNRO_RENSPA_RECEP: TStringField
      FieldName = 'NRO_RENSPA_RECEP'
      Origin = 'NRO_RENSPA_RECEP'
    end
    object CDSCompraCabNRO_RUCA_EMISOR_AFIP: TSingleField
      FieldName = 'NRO_RUCA_EMISOR_AFIP'
      Origin = 'NRO_RUCA_EMISOR_AFIP'
    end
    object CDSCompraCabNRO_RUCA_RECEPTOR_AFIP: TSingleField
      FieldName = 'NRO_RUCA_RECEPTOR_AFIP'
      Origin = 'NRO_RUCA_RECEPTOR_AFIP'
    end
    object CDSCompraCabNRO_RENSPA_EMISOR: TStringField
      FieldName = 'NRO_RENSPA_EMISOR'
      Origin = 'NRO_RENSPA_EMISOR'
    end
    object CDSCompraCabCODIGOBARRA_AFIP: TStringField
      FieldName = 'CODIGOBARRA_AFIP'
      Origin = 'CODIGOBARRA_AFIP'
      Size = 40
    end
    object CDSCompraCabCUIT_AUTORIZADO: TStringField
      FieldName = 'CUIT_AUTORIZADO'
      Origin = 'CUIT_AUTORIZADO'
      Size = 13
    end
    object CDSCompraCabNOMBRE_AUTORIZADO: TStringField
      FieldName = 'NOMBRE_AUTORIZADO'
      Origin = 'NOMBRE_AUTORIZADO'
      Size = 50
    end
    object CDSCompraCabTIPO_LIQUIDACION: TStringField
      FieldName = 'TIPO_LIQUIDACION'
      Origin = 'TIPO_LIQUIDACION'
      FixedChar = True
      Size = 1
    end
    object CDSCompraCabCUIT_AUTORIZADO_RECEP: TStringField
      FieldName = 'CUIT_AUTORIZADO_RECEP'
      Origin = 'CUIT_AUTORIZADO_RECEP'
      Size = 13
    end
    object CDSCompraCabID_CPBTE_ANULADO_LIQ: TIntegerField
      FieldName = 'ID_CPBTE_ANULADO_LIQ'
      Origin = 'ID_CPBTE_ANULADO_LIQ'
    end
    object CDSCompraCabRETENCION_IVA: TFloatField
      FieldName = 'RETENCION_IVA'
      Origin = 'RETENCION_IVA'
      Required = True
    end
    object CDSCompraCabDSCTO_CALC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'DSCTO_CALC'
      ProviderFlags = []
    end
    object CDSCompraCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraCabLOTE_AFIP: TStringField
      FieldName = 'LOTE_AFIP'
      Origin = 'LOTE_AFIP'
      Size = 8
    end
    object CDSCompraCabFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
      Origin = 'FECHACOMPRA'
      Required = True
      OnSetText = CDSCompraCabFECHACOMPRASetText
    end
    object CDSCompraCabID_OBRA: TIntegerField
      FieldName = 'ID_OBRA'
      Required = True
    end
    object CDSCompraCabMUESTRAOBRA: TStringField
      FieldName = 'MUESTRAOBRA'
      ProviderFlags = []
      Size = 100
    end
    object CDSCompraCabNC_POR_DIFERENCIA: TStringField
      FieldName = 'NC_POR_DIFERENCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object CDSCompraDet: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_CABFAC'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TIPOCPBTE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CLASECPBTE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'NROCPBTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'CODIGOPROVEEDOR'
        Attributes = [faRequired]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'RENGLON'
        DataType = ftFloat
      end
      item
        Name = 'CODIGOARTICULO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'DETALLE'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'DETALLE_ADICIONAL'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'UNIDAD'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CANTIDAD'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'UNIDADES_TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'UNIDADES_EXENTO'
        DataType = ftFloat
      end
      item
        Name = 'UNIDADES_GRAVADO'
        DataType = ftFloat
      end
      item
        Name = 'UNITARIO_TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'UNITARIO_EXENTO'
        DataType = ftFloat
      end
      item
        Name = 'UNITARIO_GRAVADO'
        DataType = ftFloat
      end
      item
        Name = 'DESGLOZAIVA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MODO_GRAVAMEN'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TIPOIVA_TASA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'IVA_TASA'
        DataType = ftFloat
      end
      item
        Name = 'TIPOIVA_SOBRETASA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'IVA_SOBRETASA'
        DataType = ftFloat
      end
      item
        Name = 'COSTO_TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'COSTO_EXENTO'
        DataType = ftFloat
      end
      item
        Name = 'COSTO_GRAVADO'
        DataType = ftFloat
      end
      item
        Name = 'DESCUENTO'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'DEPOSITO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'MARGEN'
        DataType = ftFloat
      end
      item
        Name = 'AFECTA_STOCK'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CALCULA_SOBRETASA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COSTO_IMP_INTERNO'
        DataType = ftFloat
      end
      item
        Name = 'UNIDADES_IMP_INTERNOS'
        DataType = ftFloat
      end
      item
        Name = 'UNITARIO_IMP_INTERNO'
        DataType = ftFloat
      end
      item
        Name = 'CON_NRO_SERIE'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_RECEPCION_CAB'
        DataType = ftInteger
      end
      item
        Name = 'ID_RECEPCION_DET'
        DataType = ftInteger
      end
      item
        Name = 'NRORECEPCION'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'GRAVADO_IB'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_MONEDA'
        DataType = ftInteger
      end
      item
        Name = 'COTIZACION'
        DataType = ftFloat
      end
      item
        Name = 'CONTROL_TRAZABILIDAD'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CANTIDAD_UNIDADES'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PRESENTACION_CANT'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'TIPO_LIQUI'
        DataType = ftInteger
      end
      item
        Name = 'CODIGO_RAZA'
        DataType = ftInteger
      end
      item
        Name = 'DETALLE_RAZA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'TROPA'
        DataType = ftInteger
      end
      item
        Name = 'CABEZAS'
        DataType = ftInteger
      end
      item
        Name = 'MUESTRAMONEDA'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'MUESTRACODALTERNATIVO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FECHACOMPRA'
        Attributes = [faRequired]
        DataType = ftTimeStamp
      end
      item
        Name = 'MUESTRACODIGOBARRA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'MUESTRAPRECIOVTA'
        DataType = ftFloat
      end
      item
        Name = 'CANTIDAD_INVENTARIO'
        Attributes = [faRequired]
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'CDSCompraDetIndex1'
      end>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCompraDet'
    StoreDefs = True
    AfterInsert = CDSCompraDetAfterInsert
    BeforePost = CDSCompraDetBeforePost
    AfterPost = CDSCompraDetAfterPost
    BeforeDelete = CDSCompraDetBeforeDelete
    AfterDelete = CDSCompraDetAfterDelete
    AfterScroll = CDSCompraDetAfterScroll
    OnCalcFields = CDSCompraDetCalcFields
    OnNewRecord = CDSCompraDetNewRecord
    OnPostError = CDSCompraDetPostError
    OnReconcileError = CDSCompraDetReconcileError
    Left = 112
    Top = 56
    object CDSCompraDetCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOARTICULO'
      Required = True
      OnGetText = CDSCompraDetCODIGOARTICULOGetText
      OnSetText = CDSCompraDetCODIGOARTICULOSetText
      EditMask = 'cccccccccccccccccccccccccccccccccccccccccccccccccc;0; '
      Size = 8
    end
    object CDSCompraDetCANTIDAD: TFloatField
      DisplayLabel = 'Cant.'
      FieldName = 'CANTIDAD'
      Required = True
      OnSetText = CDSCompraDetCANTIDADSetText
    end
    object CDSCompraDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      OnSetText = CDSCompraDetIVA_TASASetText
    end
    object CDSCompraDetTIPOIVA_TASA: TIntegerField
      DisplayLabel = 'Iva'
      FieldName = 'TIPOIVA_TASA'
      Required = True
      OnChange = CDSCompraDetTIPOIVA_TASAChange
    end
    object CDSCompraDetDESCUENTO: TFloatField
      DisplayLabel = 'Dscto.'
      FieldName = 'DESCUENTO'
      OnSetText = CDSCompraDetDESCUENTOSetText
    end
    object CDSCompraDetTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      OnSetText = CDSCompraDetTOTALSetText
    end
    object CDSCompraDetUNIDADES_TOTAL: TFloatField
      FieldName = 'UNIDADES_TOTAL'
      OnSetText = CDSCompraDetUNIDADES_TOTALSetText
    end
    object CDSCompraDetMUESTRAIVA: TFloatField
      FieldKind = fkLookup
      FieldName = 'MUESTRAIVA'
      LookupDataSet = CDSListaIVA
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TASA'
      KeyFields = 'TIPOIVA_TASA'
      ProviderFlags = []
      Lookup = True
    end
    object CDSCompraDetMUESTRARAZA: TStringField
      FieldKind = fkLookup
      FieldName = 'MUESTRARAZA'
      LookupDataSet = CDSRazaAFIP
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'CODIGO_RAZA'
      ProviderFlags = []
      Lookup = True
    end
    object CDSCompraDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCompraDetID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCompraDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSCompraDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSCompraDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSCompraDetCODIGOPROVEEDOR: TStringField
      FieldName = 'CODIGOPROVEEDOR'
      Required = True
      Size = 6
    end
    object CDSCompraDetRENGLON: TFloatField
      FieldName = 'RENGLON'
    end
    object CDSCompraDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSCompraDetDETALLE_ADICIONAL: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Size = 300
    end
    object CDSCompraDetUNIDAD: TStringField
      DisplayLabel = 'Uni'
      FieldName = 'UNIDAD'
      Size = 3
    end
    object CDSCompraDetUNIDADES_EXENTO: TFloatField
      FieldName = 'UNIDADES_EXENTO'
    end
    object CDSCompraDetUNIDADES_GRAVADO: TFloatField
      FieldName = 'UNIDADES_GRAVADO'
    end
    object CDSCompraDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
    end
    object CDSCompraDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
    end
    object CDSCompraDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
    end
    object CDSCompraDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object CDSCompraDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
    end
    object CDSCompraDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
    end
    object CDSCompraDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
    end
    object CDSCompraDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
    end
    object CDSCompraDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object CDSCompraDetMARGEN: TFloatField
      FieldName = 'MARGEN'
    end
    object CDSCompraDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraDetCOSTO_IMP_INTERNO: TFloatField
      FieldName = 'COSTO_IMP_INTERNO'
    end
    object CDSCompraDetUNIDADES_IMP_INTERNOS: TFloatField
      FieldName = 'UNIDADES_IMP_INTERNOS'
    end
    object CDSCompraDetUNITARIO_IMP_INTERNO: TFloatField
      FieldName = 'UNITARIO_IMP_INTERNO'
    end
    object CDSCompraDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraDetID_RECEPCION_CAB: TIntegerField
      FieldName = 'ID_RECEPCION_CAB'
    end
    object CDSCompraDetID_RECEPCION_DET: TIntegerField
      FieldName = 'ID_RECEPCION_DET'
    end
    object CDSCompraDetNRORECEPCION: TStringField
      FieldName = 'NRORECEPCION'
      Size = 13
    end
    object CDSCompraDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object CDSCompraDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
    end
    object CDSCompraDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object CDSCompraDetCONTROL_TRAZABILIDAD: TStringField
      FieldName = 'CONTROL_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraDetCANTIDAD_UNIDADES: TFloatField
      DisplayLabel = 'Unidades'
      FieldName = 'CANTIDAD_UNIDADES'
      Required = True
    end
    object CDSCompraDetPRESENTACION_CANT: TFloatField
      FieldName = 'PRESENTACION_CANT'
      Required = True
    end
    object CDSCompraDetTIPO_LIQUI: TIntegerField
      FieldName = 'TIPO_LIQUI'
    end
    object CDSCompraDetCODIGO_RAZA: TIntegerField
      FieldName = 'CODIGO_RAZA'
    end
    object CDSCompraDetDETALLE_RAZA: TStringField
      FieldName = 'DETALLE_RAZA'
      Size = 40
    end
    object CDSCompraDetTROPA: TIntegerField
      FieldName = 'TROPA'
    end
    object CDSCompraDetCABEZAS: TIntegerField
      FieldName = 'CABEZAS'
    end
    object CDSCompraDetMUESTRAMONEDA: TStringField
      FieldName = 'MUESTRAMONEDA'
      ProviderFlags = []
      Size = 5
    end
    object CDSCompraDetMUESTRACODALTERNATIVO: TStringField
      FieldName = 'MUESTRACODALTERNATIVO'
      ProviderFlags = []
    end
    object CDSCompraDetFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
      Required = True
    end
    object CDSCompraDetMUESTRACOPIAS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'MUESTRACOPIAS'
      ProviderFlags = []
    end
    object CDSCompraDetMUESTRACODIGOBARRA: TStringField
      Alignment = taCenter
      FieldName = 'MUESTRACODIGOBARRA'
      ProviderFlags = []
      Size = 50
    end
    object CDSCompraDetMUESTRAPRECIOVTA: TFloatField
      Alignment = taCenter
      FieldName = 'MUESTRAPRECIOVTA'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSCompraDetCANTIDAD_INVENTARIO: TFloatField
      DisplayLabel = 'Inven.'
      FieldName = 'CANTIDAD_INVENTARIO'
      DisplayFormat = ',0.000;-0.000;-'
    end
  end
  object CDSDepositoStk: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDepositoStk'
    Left = 112
    Top = 368
    object CDSDepositoStkID_DEPOSITO: TIntegerField
      FieldName = 'ID_DEPOSITO'
      Required = True
    end
    object CDSDepositoStkCODIGO_DEPOSITO: TIntegerField
      FieldName = 'CODIGO_DEPOSITO'
      Required = True
    end
    object CDSDepositoStkCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object CDSDepositoStkSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object CDSDepositoStkINICIAL: TFloatField
      FieldName = 'INICIAL'
    end
    object CDSDepositoStkMINIMO: TFloatField
      FieldName = 'MINIMO'
    end
    object CDSDepositoStkMEDIO: TFloatField
      FieldName = 'MEDIO'
    end
    object CDSDepositoStkFISICO: TFloatField
      FieldName = 'FISICO'
    end
    object CDSDepositoStkRECARGO: TFloatField
      FieldName = 'RECARGO'
      Required = True
    end
    object CDSDepositoStkFUAPRECIOS: TSQLTimeStampField
      FieldName = 'FUAPRECIOS'
    end
    object CDSDepositoStkMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      Size = 25
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
    Left = 112
    Top = 416
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
  object CDSCondPago: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPCondPago'
    OnNewRecord = CDSCondPagoNewRecord
    Left = 112
    Top = 464
    object CDSCondPagoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object CDSCondPagoID_FC: TIntegerField
      FieldName = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object CDSCondPagoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Visible = False
      FixedChar = True
      Size = 2
    end
    object CDSCondPagoNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Required = True
      Visible = False
      Size = 13
    end
    object CDSCondPagoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object CDSCondPagoITEM: TIntegerField
      FieldName = 'ITEM'
      Visible = False
    end
    object CDSCondPagoFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      DisplayWidth = 12
      FieldName = 'FECHA'
    end
    object CDSCondPagoDSCTO: TFloatField
      DisplayLabel = 'Dscto'
      FieldName = 'DSCTO'
      OnSetText = CDSCondPagoDSCTOSetText
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSCondPagoIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Visible = False
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSCondPagoCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Visible = False
      FixedChar = True
      Size = 2
    end
  end
  object CDSImpuestos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPImpuestos'
    BeforeEdit = CDSImpuestosBeforeEdit
    OnNewRecord = CDSImpuestosNewRecord
    Left = 112
    Top = 105
    object CDSImpuestosID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSImpuestosCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSImpuestosDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSImpuestosID_FCCOMPCAB: TIntegerField
      FieldName = 'ID_FCCOMPCAB'
      Required = True
    end
    object CDSImpuestosNETO: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'NETO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSImpuestosTASA: TFloatField
      FieldName = 'TASA'
    end
    object CDSImpuestosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      OnSetText = CDSImpuestosIMPORTESetText
    end
  end
  object CDSPercepcionIVA: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPPercepcionIVA'
    AfterEdit = CDSPercepcionIVAAfterEdit
    BeforePost = CDSPercepcionIVABeforePost
    AfterDelete = CDSPercepcionIVAAfterDelete
    OnNewRecord = CDSPercepcionIVANewRecord
    Left = 432
    Top = 160
    object CDSPercepcionIVAID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      Origin = 'ID_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPercepcionIVACODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Origin = 'CODIGO_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPercepcionIVADETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSPercepcionIVAID_FCCOMPCAB: TIntegerField
      FieldName = 'ID_FCCOMPCAB'
      Origin = 'ID_FCCOMPCAB'
      Required = True
    end
    object CDSPercepcionIVANETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
    end
    object CDSPercepcionIVATASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSPercepcionIVAIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      OnSetText = CDSImpuestosIMPORTESetText
    end
    object CDSPercepcionIVACODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
      Origin = 'CODIGOREGIMEN'
    end
  end
  object CDSPercepcionIB: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPPercepcionIB'
    AfterEdit = CDSPercepcionIBAfterEdit
    BeforePost = CDSPercepcionIBBeforePost
    AfterDelete = CDSPercepcionIBAfterDelete
    OnNewRecord = CDSPercepcionIBNewRecord
    Left = 432
    Top = 208
    object CDSPercepcionIBID_PERCEPCION: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSPercepcionIBCODIGO_PERCEPCION: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      OnSetText = CDSPercepcionIBCODIGO_PERCEPCIONSetText
    end
    object CDSPercepcionIBDETALLE: TStringField
      DisplayWidth = 20
      FieldName = 'DETALLE'
    end
    object CDSPercepcionIBID_FCCOMPCAB: TIntegerField
      FieldName = 'ID_FCCOMPCAB'
      Required = True
    end
    object CDSPercepcionIBNETO: TFloatField
      FieldName = 'NETO'
    end
    object CDSPercepcionIBTASA: TFloatField
      FieldName = 'TASA'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSPercepcionIBIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      OnSetText = CDSPercepcionIBIMPORTESetText
    end
    object CDSPercepcionIBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
    end
  end
  object QStockArticulo_IB: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.codigo_stk,s.actualizacosto,s.fijacion_precio_gravado,'
      '       s.fijacion_precio_exento, s.costo_gravado_stk,'
      '       s.costo_exento_stk, s.moneda,s.detalle_stk,'
      
        '       m.cotizacion as Moneda_cotizacion,m.signo as Moneda_signo' +
        ','
      '       m.moneda as Moneda_Detalle,'
      '       s.modo_gravamen,'
      
        '       (select sum(dpk.fisico) from depositostk dpk where dpk.co' +
        'digo_stk=s.codigo_stk) as Fisico'
      'from stock s'
      '  left join monedas m on m.id=s.moneda'
      'where s.codigo_stk = :codigo'
      '')
    Left = 935
    Top = 605
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QStockArticulo_IBCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object QStockArticulo_IBACTUALIZACOSTO: TStringField
      FieldName = 'ACTUALIZACOSTO'
      FixedChar = True
      Size = 1
    end
    object QStockArticulo_IBFIJACION_PRECIO_GRAVADO: TFloatField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Required = True
    end
    object QStockArticulo_IBFIJACION_PRECIO_EXENTO: TFloatField
      FieldName = 'FIJACION_PRECIO_EXENTO'
      Required = True
    end
    object QStockArticulo_IBCOSTO_GRAVADO_STK: TFloatField
      FieldName = 'COSTO_GRAVADO_STK'
      Required = True
    end
    object QStockArticulo_IBCOSTO_EXENTO_STK: TFloatField
      FieldName = 'COSTO_EXENTO_STK'
      Required = True
    end
    object QStockArticulo_IBMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QStockArticulo_IBDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object QStockArticulo_IBMONEDA_COTIZACION: TFloatField
      FieldName = 'MONEDA_COTIZACION'
    end
    object QStockArticulo_IBMONEDA_SIGNO: TStringField
      FieldName = 'MONEDA_SIGNO'
      Size = 5
    end
    object QStockArticulo_IBMONEDA_DETALLE: TStringField
      FieldName = 'MONEDA_DETALLE'
      Size = 15
    end
    object QStockArticulo_IBMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
    end
    object QStockArticulo_IBFISICO: TFloatField
      FieldName = 'FISICO'
    end
  end
  object QMonedas_IB: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from monedas where id=:id')
    Left = 934
    Top = 475
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QMonedas_IBID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QMonedas_IBMONEDA: TStringField
      FieldName = 'MONEDA'
      Size = 15
    end
    object QMonedas_IBCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object QMonedas_IBSIGNO: TStringField
      FieldName = 'SIGNO'
      Size = 5
    end
    object QMonedas_IBORDEN: TSmallintField
      FieldName = 'ORDEN'
      Required = True
    end
    object QMonedas_IBCOTIZACION_COMPRA: TFloatField
      FieldName = 'COTIZACION_COMPRA'
    end
  end
  object CDSInscripcion: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPInscripcion'
    Left = 432
    Top = 424
    object CDSInscripcionCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSInscripcionDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 15
    end
    object CDSInscripcionAPLICAPERCEPCIONIVA: TStringField
      FieldName = 'APLICAPERCEPCIONIVA'
      Origin = 'APLICAPERCEPCIONIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField
      FieldName = 'APLICAPERCEPCIONIIBB'
      Origin = 'APLICAPERCEPCIONIIBB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSInscripcionCOBRASOBRETASA: TStringField
      FieldName = 'COBRASOBRETASA'
      Origin = 'COBRASOBRETASA'
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
  object QComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      
        'id_comprobante=:id  and (tipo_comprob='#39'FC'#39' or tipo_comprob='#39'NC'#39' ' +
        'or tipo_comprob='#39'ND'#39')'
      'and compra_venta='#39'C'#39' and sucursal=:suc')
    Left = 432
    Top = 472
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QComprobID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object QComprobTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object QComprobSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QComprobLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
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
    object QComprobFACTURAELECTRONICA: TStringField
      FieldName = 'FACTURAELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobCOPIAS: TIntegerField
      FieldName = 'COPIAS'
    end
    object QComprobREPORTE: TStringField
      FieldName = 'REPORTE'
      Size = 100
    end
    object QComprobDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
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
    object QComprobFISCAL: TStringField
      FieldName = 'FISCAL'
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
    object QComprobCAJA_DEFECTO: TIntegerField
      FieldName = 'CAJA_DEFECTO'
      Required = True
    end
    object QComprobEN_USO: TStringField
      FieldName = 'EN_USO'
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
    object QComprobDIVIDE_IVA: TStringField
      FieldName = 'DIVIDE_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobCODIGO_AFIP: TStringField
      FieldName = 'CODIGO_AFIP'
      Size = 3
    end
    object QComprobID_AJUSTECC: TIntegerField
      FieldName = 'ID_AJUSTECC'
    end
    object QComprobCENTRO_COSTO: TIntegerField
      FieldName = 'CENTRO_COSTO'
    end
    object QComprobFILTRO_COMPROBANTES: TStringField
      FieldName = 'FILTRO_COMPROBANTES'
      FixedChar = True
      Size = 1
    end
    object QComprobDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object QComprobULTIMONRO: TIntegerField
      FieldName = 'ULTIMONRO'
    end
    object QComprobEDITAR_NRO: TStringField
      FieldName = 'EDITAR_NRO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QNroSerie_IB: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,'
      'ss.fechaegreso from stock_series ss'
      'where ss.codigo_stk=:codigo and ss.codigoserie=:CodigoSerie')
    Left = 936
    Top = 536
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
      end>
    object QNroSerie_IBID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QNroSerie_IBCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object QNroSerie_IBCODIGOSERIE: TStringField
      FieldName = 'CODIGOSERIE'
      Size = 50
    end
    object QNroSerie_IBFECHAINGRESO: TSQLTimeStampField
      FieldName = 'FECHAINGRESO'
    end
    object QNroSerie_IBFECHAEGRESO: TSQLTimeStampField
      FieldName = 'FECHAEGRESO'
    end
  end
  object QOcompra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select f.* from  FCCOMP_ORDENCOMPRA f '
      'where f.id_fc = :id')
    Left = 656
    Top = 152
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QOcompraID_FC: TIntegerField
      FieldName = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOcompraID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOcompraID_OC: TIntegerField
      FieldName = 'ID_OC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QOcompraNUMERO_OC: TStringField
      FieldName = 'NUMERO_OC'
      Size = 13
    end
  end
  object QBuscaComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from comprobantes where sucursal=:suc and compra_venta=' +
        #39'C'#39' and'
      '(tipo_comprob='#39'FC'#39' or tipo_comprob='#39'NC'#39' or tipo_comprob='#39'ND'#39')'
      'order by tipo_comprob')
    Left = 324
    Top = 535
    ParamData = <
      item
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPBuscaComprob: TDataSetProvider
    DataSet = QBuscaComprob
    Options = [poAllowCommandText]
    Left = 400
    Top = 528
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
    Left = 504
    Top = 536
    object CDSBuscaComprobTIPO_COMPROB: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tp'
      DisplayWidth = 6
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 4
    end
    object CDSBuscaComprobCLASE_COMPROB: TStringField
      Alignment = taCenter
      DisplayLabel = 'Cl'
      DisplayWidth = 6
      FieldName = 'CLASE_COMPROB'
      Required = True
      Size = 4
    end
    object CDSBuscaComprobDENOMINACION: TStringField
      DisplayLabel = 'Denominacion'
      DisplayWidth = 25
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object CDSBuscaComprobLETRA: TStringField
      Alignment = taCenter
      DisplayLabel = 'Letra'
      DisplayWidth = 5
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobPREFIJO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Suc.'
      DisplayWidth = 8
      FieldName = 'PREFIJO'
      Size = 4
    end
    object CDSBuscaComprobNUMERO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Numero'
      DisplayWidth = 12
      FieldName = 'NUMERO'
      Size = 8
    end
    object CDSBuscaComprobSUCURSAL: TIntegerField
      DisplayLabel = 'Suc.'
      DisplayWidth = 5
      FieldName = 'SUCURSAL'
    end
    object CDSBuscaComprobCODIGO_AFIP: TStringField
      DisplayLabel = 'Afip'
      DisplayWidth = 3
      FieldName = 'CODIGO_AFIP'
      Size = 2
    end
    object CDSBuscaComprobID_COMPROBANTE: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_COMPROBANTE'
      Required = True
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
    object CDSBuscaComprobFACTURAELECTRONICA: TStringField
      FieldName = 'FACTURAELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobEN_USO: TStringField
      FieldName = 'EN_USO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSCondPago: TDataSource
    DataSet = CDSCondPago
    Left = 184
    Top = 464
  end
  object CDSBuscaCondCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaCondCompra'
    Left = 440
    Top = 360
    object CDSBuscaCondCompraCODIGOPAGO: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGOPAGO'
      Required = True
    end
    object CDSBuscaCondCompraDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 20
      FieldName = 'DETALLE'
      Required = True
    end
    object CDSBuscaCondCompraDESCUENTO: TFloatField
      DisplayLabel = 'Dscto.'
      FieldName = 'DESCUENTO'
      DisplayFormat = '0.00'
    end
    object CDSBuscaCondCompraDIAS: TIntegerField
      DisplayLabel = 'Dias'
      FieldName = 'DIAS'
    end
    object CDSBuscaCondCompraCODIGOPROVEE: TStringField
      FieldName = 'CODIGOPROVEE'
      Required = True
      Visible = False
      Size = 6
    end
    object CDSBuscaCondCompraDESCUENTO_FPAGO: TFloatField
      FieldName = 'DESCUENTO_FPAGO'
      Visible = False
    end
  end
  object DSPBuscaCondCompra: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCondCompraProvee
    Options = [poAllowCommandText]
    Left = 352
    Top = 360
  end
  object spInformaCambioPrecio: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'INGRESA_HISTORIAL_PRECIOS'
    Left = 812
    Top = 77
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 2
        Name = 'COSTO_OLD'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'COSTO_OLD_GRAVADO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'COSTO_OLD_EXENTO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'COSTO_NEW'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'COSTO_NEW_GRAVADO'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'COSTO_NEW_EXENTO'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'FPRECIO_OLD'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'FPRECIO_OLD_GRAVADO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 10
        Name = 'FPRECIO_OLD_EXENTO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 11
        Name = 'FPRECIO_NEW'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 12
        Name = 'FPRECIO_NEW_GRAVADO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 13
        Name = 'FPRECIO_NEW_EXENTO'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 14
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 15
        Name = 'MOTIVO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 16
        Name = 'FECHA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 17
        Name = 'ID_CAMBIO_PRECIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 18
        Name = 'ID_FC_COMPRA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spCambiaPrecio: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CAMBIO_DE_PRECIOS_2'
    Left = 992
    Top = 288
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 2
        Name = 'FPEXENTO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'FPGRAVADO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'COSTOEXENTO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'COSTOGRAVADO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'ID_LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'RECARGO'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'FECHA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'DETALLE'
        DataType = ftString
        ParamType = ptInput
        Size = 45
      end>
  end
  object QBorrarAplicacionDelCpbte: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from movaplicacccompra ma '
      
        'where ma.id_cpbte=:id and ma.tipocpbte=:tipo and ma.clasecpbte=:' +
        'clase')
    Left = 184
    Top = 528
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'clase'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QBorrarTodasAplicaciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from movaplicacccompra m '
      'where m.aplica_id_cpbte=:id and m.aplica_tipocpbte=:tipo')
    Left = 47
    Top = 527
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end>
    object IntegerField1: TIntegerField
      DisplayWidth = 10
      FieldName = 'COUNT'
    end
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = DMMain_FD.QEmpresa
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 778
    Top = 19
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    Left = 852
    Top = 16
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
    object CDSEmpresaPUNITORIOS: TFloatField
      FieldName = 'PUNITORIOS'
      Required = True
    end
    object CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField
      FieldName = 'FECHA_INICIO_ACTI'
    end
    object CDSEmpresaNRO_RENSPA: TStringField
      FieldName = 'NRO_RENSPA'
    end
    object CDSEmpresaNRO_RUCA: TIntegerField
      FieldName = 'NRO_RUCA'
    end
    object CDSEmpresaCUIT_AUTORIZADO: TStringField
      FieldName = 'CUIT_AUTORIZADO'
      Size = 13
    end
    object CDSEmpresaNOMBRE_AUTORIZADO: TStringField
      FieldName = 'NOMBRE_AUTORIZADO'
      Size = 50
    end
  end
  object DSPCompLote: TDataSetProvider
    DataSet = DMMain_FD.QCompLotes
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 216
  end
  object CDSCompLote: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_DET'
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCompLote'
    BeforePost = CDSCompLoteBeforePost
    OnNewRecord = CDSCompLoteNewRecord
    Left = 112
    Top = 216
    object CDSCompLoteID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCompLoteID_DET: TIntegerField
      FieldName = 'ID_DET'
      Origin = 'ID_DET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSCompLoteID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSCompLoteCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object CDSCompLoteLOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 15
    end
    object CDSCompLoteCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object CDSCompLoteDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object CDSCompLoteTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Size = 2
    end
    object CDSCompLoteID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
      Required = True
    end
    object CDSCompLoteDESPACHO: TStringField
      FieldName = 'DESPACHO'
      Origin = 'DESPACHO'
    end
    object CDSCompLoteFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSCompLoteFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
  end
  object IBGCompLotes: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'next_id_fccomp_lotes'
    SystemGenerators = False
    Left = 280
    Top = 176
  end
  object DSCompLote: TDataSource
    DataSet = CDSCompLote
    Left = 200
    Top = 216
  end
  object DSPAplicaciones: TDataSetProvider
    DataSet = QAplicaciones
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 728
    Top = 200
  end
  object DSAplicaciones: TDataSource
    DataSet = CDSAplicaciones
    Left = 880
    Top = 200
  end
  object QAplicaciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select a.id_mov,a.id_movcccompra,a.fecha,a.id_cpbte,'
      
        '          a.tipocpbte,a.clasecpbte,a.numerocpbte,a.importe  from' +
        ' MovAplicaCCCompra a'
      'where a.aplica_id_cpbte = :Id and '
      '          a.aplica_tipocpbte = :tipo')
    Left = 640
    Top = 208
    ParamData = <
      item
        Name = 'Id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QAplicacionesID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Origin = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAplicacionesID_MOVCCCOMPRA: TIntegerField
      FieldName = 'ID_MOVCCCOMPRA'
      Origin = 'ID_MOVCCCOMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAplicacionesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QAplicacionesID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Required = True
    end
    object QAplicacionesTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QAplicacionesCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QAplicacionesNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Origin = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object QAplicacionesIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
  end
  object CDSAplicaciones: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPAplicaciones'
    Left = 800
    Top = 200
    object CDSAplicacionesID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAplicacionesID_MOVCCCOMPRA: TIntegerField
      FieldName = 'ID_MOVCCCOMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAplicacionesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSAplicacionesID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object CDSAplicacionesTIPOCPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tp'
      DisplayWidth = 3
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSAplicacionesCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSAplicacionesNUMEROCPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro.Cpte'
      DisplayWidth = 12
      FieldName = 'NUMEROCPBTE'
      Required = True
      EditMask = 'a-0000-00000000;0;_'
      Size = 13
    end
    object CDSAplicacionesIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
  end
  object DSPCaracterAFIP: TDataSetProvider
    DataSet = DMBuscadores.QCaracteresAFIP
    Options = []
    Left = 648
    Top = 312
  end
  object CDSCaracterEmisorAFIP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCaracterAFIP'
    Left = 736
    Top = 312
    object CDSCaracterEmisorAFIPCODIGO: TIntegerField
      DisplayWidth = 3
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSCaracterEmisorAFIPDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 60
    end
  end
  object DSPOperacionesAFIP: TDataSetProvider
    DataSet = DMBuscadores.QOperacionesAFIP
    Options = []
    Left = 648
    Top = 360
  end
  object CDSOperacionesAFIP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPOperacionesAFIP'
    Left = 736
    Top = 360
    object CDSOperacionesAFIPCODIGO: TIntegerField
      DisplayWidth = 3
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSOperacionesAFIPDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 25
    end
  end
  object DSPCortesAFIP: TDataSetProvider
    DataSet = DMBuscadores.QCortesAFIP
    Options = []
    Left = 648
    Top = 408
  end
  object CDSCortesAFIP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCortesAFIP'
    Left = 736
    Top = 408
    object CDSCortesAFIPCODIGO: TIntegerField
      DisplayWidth = 3
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSCortesAFIPDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 60
    end
  end
  object DSPTipoLiqAFIP: TDataSetProvider
    DataSet = DMBuscadores.QTipoLiqAFIP
    Options = []
    Left = 648
    Top = 456
  end
  object CDSTipoLiqAFIP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTipoLiqAFIP'
    Left = 736
    Top = 456
    object CDSTipoLiqAFIPCODIGO: TIntegerField
      DisplayWidth = 3
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSTipoLiqAFIPDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
  end
  object DSPMotivosAFIP: TDataSetProvider
    DataSet = DMBuscadores.QMotivosAFIP
    Options = []
    Left = 648
    Top = 504
  end
  object CDSMotivosAFIP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMotivosAFIP'
    Left = 736
    Top = 504
    object CDSMotivosAFIPCODIGO: TIntegerField
      DisplayWidth = 3
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSMotivosAFIPDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 60
    end
  end
  object DSPRazaAFIP: TDataSetProvider
    DataSet = DMBuscadores.QRazaAFIP
    Options = []
    Left = 648
    Top = 552
  end
  object CDSRazaAFIP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRazaAFIP'
    Left = 736
    Top = 552
    object CDSRazaAFIPCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSRazaAFIPDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 40
    end
  end
  object DSPTributosAFIP: TDataSetProvider
    DataSet = DMBuscadores.QTributosAFIP
    Options = []
    Left = 648
    Top = 600
  end
  object CDSTributosAFIP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTributosAFIP'
    Left = 736
    Top = 600
    object CDSTributosAFIPCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSTributosAFIPDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
  end
  object DSPGastosAFIP: TDataSetProvider
    DataSet = DMBuscadores.QGastosAFIP
    Options = []
    Left = 648
    Top = 648
  end
  object CDSGastosAFIP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPGastosAFIP'
    Left = 736
    Top = 648
    object IntegerField2: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
  end
  object DSCaracterEmisorAFIP: TDataSource
    DataSet = CDSCaracterEmisorAFIP
    Left = 848
    Top = 312
  end
  object DSOperacionesAFIP: TDataSource
    DataSet = CDSOperacionesAFIP
    Left = 840
    Top = 360
  end
  object DSCortesAFIP: TDataSource
    DataSet = CDSCortesAFIP
    Left = 840
    Top = 408
  end
  object DSTipoLiqAFIP: TDataSource
    DataSet = CDSTipoLiqAFIP
    Left = 840
    Top = 456
  end
  object DSMotivosAFIP: TDataSource
    DataSet = CDSMotivosAFIP
    Left = 840
    Top = 504
  end
  object DSRazaAFIP: TDataSource
    DataSet = CDSRazaAFIP
    Left = 840
    Top = 552
  end
  object DSTributosAFIP: TDataSource
    DataSet = CDSTributosAFIP
    Left = 840
    Top = 600
  end
  object DSGastosAFIP: TDataSource
    DataSet = CDSGastosAFIP
    Left = 840
    Top = 648
  end
  object DSPListaIVA: TDataSetProvider
    DataSet = DMBuscadores.QBuscaIva
    Options = []
    Left = 640
    Top = 696
  end
  object CDSListaIVA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPListaIVA'
    Left = 728
    Top = 696
    object CDSListaIVACODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSListaIVADESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object CDSListaIVACOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Required = True
    end
    object CDSListaIVATASA: TFloatField
      FieldName = 'TASA'
    end
  end
  object DSListaIVA: TDataSource
    DataSet = CDSListaIVA
    Left = 832
    Top = 696
  end
  object CDSCaracterRecepAFIP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCaracterAFIP'
    Left = 736
    Top = 256
    object CDSCaracterRecepAFIPCODIGO: TIntegerField
      DisplayWidth = 3
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSCaracterRecepAFIPDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 60
    end
  end
  object DSCaracterRecepAFIP: TDataSource
    DataSet = CDSCaracterRecepAFIP
    Left = 848
    Top = 256
  end
  object DSPCompraTributos: TDataSetProvider
    DataSet = DMMain_FD.QCompraTributos
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 36
    Top = 588
  end
  object CDSCompraTributos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCompraTributos'
    OnNewRecord = CDSCompraTributosNewRecord
    Left = 160
    Top = 592
    object CDSCompraTributosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCompraTributosID_FC: TIntegerField
      FieldName = 'ID_FC'
    end
    object CDSCompraTributosCODTRIBUTO: TIntegerField
      DisplayLabel = 'Cod.'
      FieldName = 'CODTRIBUTO'
    end
    object CDSCompraTributosDESCRIPCION: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'DESCRIPCION'
      Size = 50
    end
    object CDSCompraTributosBASEIMPONIBLE: TFloatField
      DisplayLabel = 'B.Imp'
      FieldName = 'BASEIMPONIBLE'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSCompraTributosALICUOTA: TFloatField
      DisplayLabel = 'Alic.%'
      FieldName = 'ALICUOTA'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSCompraTributosIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSCompraTributosMUESTRATRIBUTO: TStringField
      DisplayLabel = 'Tributo'
      FieldKind = fkLookup
      FieldName = 'MUESTRATRIBUTO'
      LookupDataSet = CDSTributosAFIP
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'CODTRIBUTO'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
  end
  object DSPCompraGastos: TDataSetProvider
    DataSet = DMMain_FD.QCompraGastos
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 36
    Top = 652
  end
  object CDSCompraGastos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCompraGastos'
    OnNewRecord = CDSCompraGastosNewRecord
    Left = 152
    Top = 648
    object CDSCompraGastosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCompraGastosID_FC: TIntegerField
      FieldName = 'ID_FC'
    end
    object CDSCompraGastosCODGASTO: TIntegerField
      DisplayLabel = 'Cod.'
      FieldName = 'CODGASTO'
    end
    object CDSCompraGastosDESCRIPCION: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'DESCRIPCION'
      Size = 60
    end
    object CDSCompraGastosBASEIMPONIBLE: TFloatField
      DisplayLabel = 'B.Imponi.'
      FieldName = 'BASEIMPONIBLE'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSCompraGastosALICUOTA: TFloatField
      DisplayLabel = 'Alic%'
      FieldName = 'ALICUOTA'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSCompraGastosALICUOTAIVA: TFloatField
      FieldName = 'ALICUOTAIVA'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSCompraGastosIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSCompraGastosMUESTRAGASTO: TStringField
      DisplayLabel = 'Gasto'
      FieldKind = fkLookup
      FieldName = 'MUESTRAGASTO'
      LookupDataSet = CDSGastosAFIP
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'CODGASTO'
      ProviderFlags = []
      Size = 60
      Lookup = True
    end
  end
  object DSCompraTributos: TDataSource
    DataSet = CDSCompraTributos
    Left = 256
    Top = 592
  end
  object DSCompraGastos: TDataSource
    DataSet = CDSCompraGastos
    Left = 256
    Top = 656
  end
  object DSPCompra_DTE: TDataSetProvider
    DataSet = DMMain_FD.QComp_DET
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 44
    Top = 724
  end
  object CDSCompra_DTE: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCompra_DTE'
    OnNewRecord = CDSCompra_DTENewRecord
    Left = 152
    Top = 720
    object CDSCompra_DTEID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCompra_DTEID_FC: TIntegerField
      FieldName = 'ID_FC'
    end
    object CDSCompra_DTENRO_DET: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'Nro Det'
      FieldName = 'NRO_DET'
      EditMask = '00000000-0;1'
    end
    object CDSCompra_DTENRO_RENSPA: TStringField
      DisplayLabel = 'Nro Renspa'
      FieldName = 'NRO_RENSPA'
      EditMask = '99.999.9.99999/aa;1'
    end
  end
  object DSCompraDTE: TDataSource
    DataSet = CDSCompra_DTE
    Left = 264
    Top = 720
  end
  object ib_Tributos: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FCCOMPTRIBUTO'
    SystemGenerators = False
    Left = 360
    Top = 592
  end
  object ib_gastos: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FCCOMPGASTOS'
    SystemGenerators = False
    Left = 360
    Top = 656
  end
  object ib_dte: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_DTE'
    SystemGenerators = False
    Left = 360
    Top = 728
  end
  object CDSCabeceraXML: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 480
    Top = 704
  end
  object CDSDetalleXML: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 480
    Top = 656
  end
  object CDSGastosXML: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 488
    Top = 608
  end
  object spReHaceMov: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'REHACE_MOV_CCCOMPRA'
    Left = 1008
    Top = 176
    ParamData = <
      item
        Name = 'CPBTE_ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'CPBTE_TIPO'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end
      item
        Name = 'CPBTE_CLASE'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end>
  end
  object QRetIVA: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select r.* from retenciones_iva_Liq r '
      'where r.id_liq = :id')
    Left = 632
    Top = 744
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRetIVAID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRetIVAID_LIQ: TIntegerField
      FieldName = 'ID_LIQ'
      Origin = 'ID_LIQ'
      Required = True
    end
    object QRetIVAFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object QRetIVANUMERO_RETENCION: TStringField
      FieldName = 'NUMERO_RETENCION'
      Origin = 'NUMERO_RETENCION'
      Required = True
      FixedChar = True
      Size = 14
    end
    object QRetIVACODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Origin = 'CODIGO_PROVEEDOR'
      Required = True
      Size = 6
    end
    object QRetIVACODIGO_REGIMEN: TIntegerField
      FieldName = 'CODIGO_REGIMEN'
      Origin = 'CODIGO_REGIMEN'
      Required = True
    end
    object QRetIVACONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      Size = 25
    end
    object QRetIVATASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QRetIVABASE_IMPONIBLE: TFloatField
      FieldName = 'BASE_IMPONIBLE'
      Origin = 'BASE_IMPONIBLE'
    end
    object QRetIVAMINIMO_NO_IMPONIBLE: TFloatField
      FieldName = 'MINIMO_NO_IMPONIBLE'
      Origin = 'MINIMO_NO_IMPONIBLE'
    end
    object QRetIVAIMPUESTO_RETENIDO: TFloatField
      FieldName = 'IMPUESTO_RETENIDO'
      Origin = 'IMPUESTO_RETENIDO'
    end
    object QRetIVAOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      BlobType = ftMemo
    end
    object QRetIVAANULADA: TStringField
      FieldName = 'ANULADA'
      Origin = 'ANULADA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRetIVAESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPRetIVA: TDataSetProvider
    DataSet = QRetIVA
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 696
    Top = 743
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
    Left = 768
    Top = 743
    object CDSRetIVAID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRetIVAID_LIQ: TIntegerField
      FieldName = 'ID_LIQ'
      Origin = 'ID_LIQ'
      Required = True
    end
    object CDSRetIVAFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object CDSRetIVANUMERO_RETENCION: TStringField
      FieldName = 'NUMERO_RETENCION'
      Origin = 'NUMERO_RETENCION'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CDSRetIVACODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Origin = 'CODIGO_PROVEEDOR'
      Required = True
      Size = 6
    end
    object CDSRetIVACODIGO_REGIMEN: TIntegerField
      FieldName = 'CODIGO_REGIMEN'
      Origin = 'CODIGO_REGIMEN'
      Required = True
    end
    object CDSRetIVACONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      Size = 25
    end
    object CDSRetIVATASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object CDSRetIVABASE_IMPONIBLE: TFloatField
      FieldName = 'BASE_IMPONIBLE'
      Origin = 'BASE_IMPONIBLE'
    end
    object CDSRetIVAMINIMO_NO_IMPONIBLE: TFloatField
      FieldName = 'MINIMO_NO_IMPONIBLE'
      Origin = 'MINIMO_NO_IMPONIBLE'
    end
    object CDSRetIVAIMPUESTO_RETENIDO: TFloatField
      FieldName = 'IMPUESTO_RETENIDO'
      Origin = 'IMPUESTO_RETENIDO'
    end
    object CDSRetIVAOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      BlobType = ftMemo
    end
    object CDSRetIVAANULADA: TStringField
      FieldName = 'ANULADA'
      Origin = 'ANULADA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSRetIVAESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSRetIva: TDataSource
    DataSet = CDSRetIVA
    Left = 835
    Top = 751
  end
  object ibgRetIVA: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RET_IVA_LIQ'
    SystemGenerators = False
    Left = 912
    Top = 743
  end
  object QVerificaNro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select NroCpbte,id_fc,TipoCpbte,ClaseCpbte from fccompcab where'
      'nrocpbte    = :Nro and '
      'codigo      = :codigo and '
      'TipoCpbte   = :Tipo and'
      '(ClaseCpbte = :Clase or :Clase = '#39'**'#39' )')
    Left = 1048
    Top = 696
    ParamData = <
      item
        Name = 'NRO'
        DataType = ftString
        ParamType = ptInput
        Size = 13
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Name = 'CLASE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
    object QVerificaNroNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QVerificaNroID_FC: TIntegerField
      FieldName = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVerificaNroTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QVerificaNroCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 2
    end
  end
  object QVerifiComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select NroCpbte from fccompcab '
      'where nrocpbte   = :Nro and '
      '      clasecpbte = :clase and '
      '      tipocpbte  = :tipo and '
      '      codigo     = :codigo')
    Left = 1048
    Top = 640
    ParamData = <
      item
        Name = 'NRO'
        DataType = ftString
        ParamType = ptInput
        Size = 13
        Value = Null
      end
      item
        Name = 'CLASE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
    object QVerifiComprobNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
  end
  object QBuscaAplicaiones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select count(m.id_mov) from '
      
        'movaplicacccompra m where m.aplica_id_cpbte=:id and m.aplica_tip' +
        'ocpbte=:tipo')
    Left = 272
    Top = 64
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
  end
  object QPrimerConComp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select Min(codigopago) from condcompra where codigoprovee=:codig' +
        'o')
    Left = 272
    Top = 120
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
  end
  object QBuscaPercionesIIBB: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from PercepIB')
    Left = 536
    Top = 432
    object QBuscaPercionesIIBBCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaPercionesIIBBDESCRIPCION: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'DESCRIPCION'
    end
    object QBuscaPercionesIIBBTASA: TFloatField
      DisplayLabel = '%'
      FieldName = 'TASA'
    end
    object QBuscaPercionesIIBBJURIDICION: TIntegerField
      DisplayLabel = 'Jurid.'
      FieldName = 'JURIDICION'
    end
    object QBuscaPercionesIIBBMINIMOAPLICABLE: TFloatField
      FieldName = 'MINIMOAPLICABLE'
      Visible = False
    end
    object QBuscaPercionesIIBBCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Visible = False
    end
  end
  object QStkArticulo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.codigo_stk,s.actualizacosto,s.fijacion_precio_gravado,'
      '       s.fijacion_precio_exento, s.costo_gravado_stk,'
      '       s.costo_exento_stk, s.moneda,s.detalle_stk,'
      
        '       m.cotizacion as Moneda_cotizacion,m.signo as Moneda_signo' +
        ','
      '       m.moneda as Moneda_Detalle,'
      '       s.modo_gravamen,'
      
        '       (select sum(dpk.fisico) from depositostk dpk where dpk.co' +
        'digo_stk=s.codigo_stk) as Fisico'
      'from stock s'
      '  left join monedas m on m.id=s.moneda'
      'where s.codigo_stk = :codigo')
    Left = 152
    Top = 792
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object QNroSerie: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,'
      'ss.fechaegreso from stock_series ss'
      'where ss.codigo_stk=:codigo and ss.codigoserie=:CodigoSerie')
    Left = 504
    Top = 8
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Name = 'CODIGOSERIE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
    object QNroSerieID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
  object QMonedas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from monedas where id=:id')
    Left = 672
    Top = 104
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QMonedasID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMonedasMONEDA: TStringField
      FieldName = 'MONEDA'
      Size = 15
    end
    object QMonedasCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object QMonedasSIGNO: TStringField
      FieldName = 'SIGNO'
      Size = 5
    end
    object QMonedasORDEN: TSmallintField
      FieldName = 'ORDEN'
      Required = True
    end
    object QMonedasCOTIZACION_COMPRA: TFloatField
      FieldName = 'COTIZACION_COMPRA'
    end
  end
  object QStockFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.* from  stock s where s.codigo_stk=:codigo')
    Left = 32
    Top = 272
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object spActualizaTasaIvaDetalle: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'REVISA_IVA_DET_COMPRA'
    Left = 960
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = 'ID_DETALLE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QActualizaDetalleStk: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update stock s set s.detalle_stk=:detalle where s.codigo_stk=:co' +
        'digo')
    Left = 984
    Top = 96
    ParamData = <
      item
        Name = 'DETALLE'
        DataType = ftString
        ParamType = ptInput
        Size = 45
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
  end
  object DSPStockArticulo: TDataSetProvider
    DataSet = QStkArticulo
    Options = []
    Left = 232
    Top = 792
  end
  object CDSStockArticulo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 8
      end>
    ProviderName = 'DSPStockArticulo'
    Left = 328
    Top = 792
    object CDSStockArticuloCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object CDSStockArticuloACTUALIZACOSTO: TStringField
      FieldName = 'ACTUALIZACOSTO'
      FixedChar = True
      Size = 1
    end
    object CDSStockArticuloFIJACION_PRECIO_GRAVADO: TFloatField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Required = True
    end
    object CDSStockArticuloFIJACION_PRECIO_EXENTO: TFloatField
      FieldName = 'FIJACION_PRECIO_EXENTO'
      Required = True
    end
    object CDSStockArticuloCOSTO_GRAVADO_STK: TFloatField
      FieldName = 'COSTO_GRAVADO_STK'
      Required = True
    end
    object CDSStockArticuloCOSTO_EXENTO_STK: TFloatField
      FieldName = 'COSTO_EXENTO_STK'
      Required = True
    end
    object CDSStockArticuloMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object CDSStockArticuloDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object CDSStockArticuloMONEDA_COTIZACION: TFloatField
      FieldName = 'MONEDA_COTIZACION'
      ReadOnly = True
    end
    object CDSStockArticuloMONEDA_SIGNO: TStringField
      FieldName = 'MONEDA_SIGNO'
      ReadOnly = True
      Size = 5
    end
    object CDSStockArticuloMONEDA_DETALLE: TStringField
      FieldName = 'MONEDA_DETALLE'
      ReadOnly = True
      Size = 15
    end
    object CDSStockArticuloMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
    end
    object CDSStockArticuloFISICO: TFloatField
      FieldName = 'FISICO'
      ReadOnly = True
    end
  end
  object DSPCarneCab: TDataSetProvider
    DataSet = DMMain_FD.QCarneCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 1056
    Top = 384
  end
  object DSPCarneDet: TDataSetProvider
    DataSet = DMMain_FD.QCarneDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 1048
    Top = 448
  end
  object CDSCarneCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_DETFAC'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCarneCab'
    Left = 1160
    Top = 384
    object CDSCarneCabID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCarneCabID_DET: TIntegerField
      FieldName = 'ID_DET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCarneCabCLASIFICACION: TStringField
      FieldName = 'CLASIFICACION'
      Size = 2
    end
    object CDSCarneCabNRO_TROPA: TStringField
      FieldName = 'NRO_TROPA'
      Size = 6
    end
    object CDSCarneCabT_KILOS: TIntegerField
      FieldName = 'T_KILOS'
      Required = True
    end
    object CDSCarneCabT_MEDIAS: TIntegerField
      FieldName = 'T_MEDIAS'
      Required = True
    end
  end
  object CDSCarneDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_DET'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCarneDet'
    Left = 1160
    Top = 448
    object CDSCarneDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCarneDetID_DET: TIntegerField
      FieldName = 'ID_DET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCarneDetMEDIA: TIntegerField
      FieldName = 'MEDIA'
    end
    object CDSCarneDetEN_STOCK: TStringField
      FieldName = 'EN_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object ibgCarneCab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'next_id_compcarne_cab'
    SystemGenerators = False
    Left = 1240
    Top = 392
  end
  object ibgCarneDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_COMPCARNE_DET'
    SystemGenerators = False
    Left = 1240
    Top = 456
  end
end
