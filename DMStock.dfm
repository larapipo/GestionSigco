object DatosStock: TDatosStock
  OnDestroy = DataModuleDestroy
  Height = 921
  Width = 1227
  object DSMovStock: TDataSource
    AutoEdit = False
    DataSet = CDSMovStock
    Left = 675
    Top = 174
  end
  object DSPStock: TDataSetProvider
    DataSet = DMMain_FD.QStock
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 137
    Top = 7
  end
  object DSPDepositoStk: TDataSetProvider
    DataSet = DMMain_FD.QDepositoStk
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 569
    Top = 7
  end
  object IBGId_depositoStk: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_DEPOSITOSTK'
    SystemGenerators = False
    Left = 675
    Top = 8
  end
  object DSBuscaDeposito: TDataSource
    DataSet = CDSBuscaDeposito
    Left = 24
    Top = 216
  end
  object DSPProvStock: TDataSetProvider
    DataSet = QProvStock
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 249
    Top = 271
  end
  object CDSProvStock: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPProvStock'
    OnNewRecord = CDSProvStockNewRecord
    Left = 137
    Top = 272
    object CDSProvStockID_PROVEESTOCK: TIntegerField
      FieldName = 'ID_PROVEESTOCK'
      Origin = 'ID_PROVEESTOCK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSProvStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object CDSProvStockCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Origin = 'CODIGO_PROVEEDOR'
      Required = True
      OnSetText = CDSProvStockCODIGO_PROVEEDORSetText
      Size = 6
    end
    object CDSProvStockULTIMA_COMPRA: TSQLTimeStampField
      FieldName = 'ULTIMA_COMPRA'
      Origin = 'ULTIMA_COMPRA'
    end
    object CDSProvStockNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSProvStockTIPO_CPBTE: TStringField
      FieldName = 'TIPO_CPBTE'
      Origin = 'TIPO_CPBTE'
      Size = 2
    end
    object CDSProvStockCLASE_CPBTE: TStringField
      FieldName = 'CLASE_CPBTE'
      Origin = 'CLASE_CPBTE'
      Size = 2
    end
    object CDSProvStockID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object CDSProvStockCODIGO_FACTURACION: TStringField
      FieldName = 'CODIGO_FACTURACION'
      Origin = 'CODIGO_FACTURACION'
      Size = 15
    end
    object CDSProvStockCODIGO_REFERENCIA: TStringField
      FieldName = 'CODIGO_REFERENCIA'
      Origin = 'CODIGO_REFERENCIA'
      Size = 15
    end
    object CDSProvStockCODIGO_INTERNO: TStringField
      FieldName = 'CODIGO_INTERNO'
      Origin = 'CODIGO_INTERNO'
      Size = 15
    end
    object CDSProvStockRANKING: TIntegerField
      DisplayLabel = 'Rk'
      FieldName = 'RANKING'
      Origin = 'RANKING'
      Required = True
    end
    object CDSProvStockPORDEFECTO: TStringField
      FieldName = 'PORDEFECTO'
      Origin = 'PORDEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSProvStockMUESTRAPROVEEDOR: TStringField
      FieldName = 'MUESTRAPROVEEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object CDSProvStockCOSTO_BRUTO: TFloatField
      DisplayLabel = 'Cst.Bruto'
      FieldName = 'COSTO_BRUTO'
      Origin = 'COSTO_BRUTO'
      DisplayFormat = ',0.00'
    end
    object CDSProvStockCOSTO_NETO: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'COSTO_NETO'
      Origin = 'COSTO_NETO'
      DisplayFormat = ',0.00'
    end
    object CDSProvStockDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      DisplayFormat = ',0.00'
    end
  end
  object ibgId_ProStock: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_PROVEESTOCK'
    SystemGenerators = False
    Left = 392
    Top = 240
  end
  object CDSSeries: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPSeries'
    BeforeInsert = CDSSeriesBeforeInsert
    BeforeEdit = CDSSeriesBeforeEdit
    AfterScroll = CDSSeriesAfterScroll
    OnCalcFields = CDSSeriesCalcFields
    Left = 137
    Top = 320
    object CDSSeriesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSSeriesCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 8
    end
    object CDSSeriesCODIGOSERIE: TStringField
      FieldName = 'CODIGOSERIE'
      Origin = 'CODIGOSERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object CDSSeriesID_CPBTE_INGRESO: TIntegerField
      FieldName = 'ID_CPBTE_INGRESO'
      Origin = 'ID_CPBTE_INGRESO'
    end
    object CDSSeriesTIPOCPBTE_INGRESO: TStringField
      FieldName = 'TIPOCPBTE_INGRESO'
      Origin = 'TIPOCPBTE_INGRESO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSSeriesCLASECPBTE_INGRESO: TStringField
      FieldName = 'CLASECPBTE_INGRESO'
      Origin = 'CLASECPBTE_INGRESO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSSeriesNRO_CPBTE_INGRESO: TStringField
      FieldName = 'NRO_CPBTE_INGRESO'
      Origin = 'NRO_CPBTE_INGRESO'
      Size = 13
    end
    object CDSSeriesID_CPBTE_EGRESO: TIntegerField
      FieldName = 'ID_CPBTE_EGRESO'
      Origin = 'ID_CPBTE_EGRESO'
    end
    object CDSSeriesTIPOCPBTE_EGRESO: TStringField
      FieldName = 'TIPOCPBTE_EGRESO'
      Origin = 'TIPOCPBTE_EGRESO'
      FixedChar = True
      Size = 2
    end
    object CDSSeriesCLASECPBTE_EGRESO: TStringField
      FieldName = 'CLASECPBTE_EGRESO'
      Origin = 'CLASECPBTE_EGRESO'
      FixedChar = True
      Size = 2
    end
    object CDSSeriesNRO_CPBTE_EGRESO: TStringField
      FieldName = 'NRO_CPBTE_EGRESO'
      Origin = 'NRO_CPBTE_EGRESO'
      Size = 13
    end
    object CDSSeriesDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object CDSSeriesOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 200
    end
    object CDSSeriesALTA_POR_VTA: TStringField
      FieldName = 'ALTA_POR_VTA'
      Origin = 'ALTA_POR_VTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSSeriesMUESTRAPROVEEDOR: TStringField
      FieldName = 'MUESTRAPROVEEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object CDSSeriesMUESTRACLIENTE: TStringField
      FieldName = 'MUESTRACLIENTE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object CDSSeriesMUESTRAPROVEEDOR_2: TStringField
      FieldName = 'MUESTRAPROVEEDOR_2'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object CDSSeriesMUESTRAPROVEEDORFINAL: TStringField
      FieldKind = fkCalculated
      FieldName = 'MUESTRAPROVEEDORFINAL'
      ProviderFlags = []
      Size = 30
      Calculated = True
    end
    object CDSSeriesDATOS_ADICIONAL1: TStringField
      FieldName = 'DATOS_ADICIONAL1'
      Origin = 'DATOS_ADICIONAL1'
      Size = 45
    end
    object CDSSeriesDATOS_ADICIONAL2: TStringField
      FieldName = 'DATOS_ADICIONAL2'
      Origin = 'DATOS_ADICIONAL2'
      Size = 45
    end
    object CDSSeriesDATOS_ADICIONAL3: TStringField
      FieldName = 'DATOS_ADICIONAL3'
      Origin = 'DATOS_ADICIONAL3'
      Size = 45
    end
    object CDSSeriesDATOS_ADICIONAL4: TStringField
      FieldName = 'DATOS_ADICIONAL4'
      Origin = 'DATOS_ADICIONAL4'
      Size = 45
    end
    object CDSSeriesFECHAINGRESO: TSQLTimeStampField
      FieldName = 'FECHAINGRESO'
      Origin = 'FECHAINGRESO'
    end
    object CDSSeriesFECHAEGRESO: TSQLTimeStampField
      FieldName = 'FECHAEGRESO'
      Origin = 'FECHAEGRESO'
    end
  end
  object DSPSeries: TDataSetProvider
    DataSet = QSeries
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 249
    Top = 320
  end
  object DSSeries: TDataSource
    DataSet = CDSSeries
    Left = 24
    Top = 320
  end
  object DSPMovSeries: TDataSetProvider
    DataSet = QMovSeries
    Options = []
    Left = 249
    Top = 368
  end
  object CDSMovSeries: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPMovSeries'
    Left = 137
    Top = 368
    object CDSMovSeriesID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Origin = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovSeriesID_STOCK_SERIE: TIntegerField
      FieldName = 'ID_STOCK_SERIE'
      Origin = 'ID_STOCK_SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSMovSeriesCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Size = 8
    end
    object CDSMovSeriesID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object CDSMovSeriesTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSMovSeriesCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSMovSeriesNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSMovSeriesDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object CDSMovSeriesDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
    object CDSMovSeriesORIGEN: TStringField
      FieldName = 'ORIGEN'
      Origin = 'ORIGEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSMovSeriesMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSMovSeriesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
  end
  object DSMovSeries: TDataSource
    DataSet = CDSMovSeries
    Left = 24
    Top = 368
  end
  object DSCodigoBarra: TDataSource
    DataSet = CDSCodigoBarra
    Left = 392
    Top = 293
  end
  object DSPCodigoBasrra: TDataSetProvider
    DataSet = QCodigoBarra
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 569
    Top = 304
  end
  object CDSCodigoBarra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCodigoBasrra'
    BeforePost = CDSCodigoBarraBeforePost
    OnNewRecord = CDSCodigoBarraNewRecord
    Left = 675
    Top = 304
    object CDSCodigoBarraID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCodigoBarraCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSCodigoBarraCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Origin = 'CODIGOBARRA'
      OnSetText = CDSCodigoBarraCODIGOBARRASetText
      Size = 50
    end
    object CDSCodigoBarraPRESENTACION: TIntegerField
      FieldName = 'PRESENTACION'
      Origin = 'PRESENTACION'
    end
    object CDSCodigoBarraMUESTRAPRESENTACION: TStringField
      FieldKind = fkLookup
      FieldName = 'MUESTRAPRESENTACION'
      LookupDataSet = QListaPresentacion
      LookupKeyFields = 'ID'
      LookupResultField = 'DETALLE'
      KeyFields = 'PRESENTACION'
      ProviderFlags = []
      Size = 30
      Lookup = True
    end
    object CDSCodigoBarraPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      Origin = 'PRESENTACION_CANTIDAD'
      Required = True
    end
  end
  object ibgIdCodBarra: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_CODIGOBARRA'
    SystemGenerators = False
    Left = 744
    Top = 304
  end
  object DSListaInBruto: TDataSource
    DataSet = CDSListaIngBruto
    Left = 440
    Top = 568
  end
  object DSStockHistorial: TDataSource
    DataSet = CDSListaHistorial
    Left = 440
    Top = 512
  end
  object DSPListaArt: TDataSetProvider
    DataSet = QListArt
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 249
    Top = 424
  end
  object DSListaArt: TDataSource
    DataSet = CDSListaArt
    Left = 24
    Top = 424
  end
  object CDSDatosXML: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 904
    Top = 504
  end
  object DSBuscaMoneda: TDataSource
    DataSet = CDSBuscaMoneda
    Left = 24
    Top = 168
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
    BeforePost = CDSStockBeforePost
    OnCalcFields = CDSStockCalcFields
    OnNewRecord = CDSStockNewRecord
    OnPostError = CDSStockPostError
    Left = 249
    Top = 7
    object CDSStockCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnSetText = CDSStockCODIGO_STKSetText
      Size = 8
    end
    object CDSStockDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      OnSetText = CDSStockDETALLE_STKSetText
      Size = 45
    end
    object CDSStockDETALLE_STK_ADICIONAL: TStringField
      FieldName = 'DETALLE_STK_ADICIONAL'
      Origin = 'DETALLE_STK_ADICIONAL'
      Size = 300
    end
    object CDSStockDETALLE_CORTO: TStringField
      FieldName = 'DETALLE_CORTO'
      Origin = 'DETALLE_CORTO'
      Size = 18
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
      OnSetText = CDSStockRUBRO_STKSetText
      Size = 3
    end
    object CDSStockSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      Required = True
      OnSetText = CDSStockSUBRUBRO_STKSetText
      Size = 5
    end
    object CDSStockMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      OnSetText = CDSStockMARCA_STKSetText
      Size = 4
    end
    object CDSStockREEMPLAZO_STK: TStringField
      FieldName = 'REEMPLAZO_STK'
      Origin = 'REEMPLAZO_STK'
      Required = True
    end
    object CDSStockTASA_IVA: TIntegerField
      FieldName = 'TASA_IVA'
      Origin = 'TASA_IVA'
      Required = True
      OnChange = CDSStockTASA_IVAChange
    end
    object CDSStockSOBRETASA_IVA: TIntegerField
      FieldName = 'SOBRETASA_IVA'
      Origin = 'SOBRETASA_IVA'
      OnChange = CDSStockSOBRETASA_IVAChange
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
      OnChange = CDSStockCLASE_ARTICULOChange
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
      OnSetText = CDSStockID_TABLAPRECIOSSetText
    end
    object CDSStockID_TABLAPRECIOSDETALLE: TIntegerField
      FieldName = 'ID_TABLAPRECIOSDETALLE'
      Origin = 'ID_TABLAPRECIOSDETALLE'
    end
    object CDSStockCODIGO_PRECIO: TIntegerField
      FieldName = 'CODIGO_PRECIO'
      Origin = 'CODIGO_PRECIO'
      OnSetText = CDSStockCODIGO_PRECIOSetText
    end
    object CDSStockMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
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
    object CDSStockMUESTRARUBRO: TStringField
      FieldName = 'MUESTRARUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      Size = 35
    end
    object CDSStockMUESTRASUBRUBRO: TStringField
      FieldName = 'MUESTRASUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      Size = 45
    end
    object CDSStockMUESTRAMARCA: TStringField
      FieldName = 'MUESTRAMARCA'
      Origin = 'DESCRIPCION_MARCA'
      ProviderFlags = []
      Size = 25
    end
    object CDSStockMUESTRATASA: TStringField
      FieldName = 'MUESTRATASA'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 15
    end
    object CDSStockMUESTRASOBRETASA: TStringField
      FieldName = 'MUESTRASOBRETASA'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 15
    end
    object CDSStockMUESTRATABLAPRECIODETALLE: TStringField
      FieldName = 'MUESTRATABLAPRECIODETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 40
    end
    object CDSStockMUESTRAFIJACIONCONIVA: TFMTBCDField
      FieldKind = fkInternalCalc
      FieldName = 'MUESTRAFIJACIONCONIVA'
      ProviderFlags = []
    end
    object CDSStockMUESTRACOSTOCONIVA: TFMTBCDField
      FieldKind = fkInternalCalc
      FieldName = 'MUESTRACOSTOCONIVA'
      ProviderFlags = []
    end
    object CDSStockCOMANDA: TStringField
      FieldName = 'COMANDA'
      Origin = 'COMANDA'
      FixedChar = True
      Size = 1
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
    object CDSStockTASA_MANUFACTURA: TStringField
      FieldName = 'TASA_MANUFACTURA'
      Origin = 'TASA_MANUFACTURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockPLU: TStringField
      Alignment = taCenter
      FieldName = 'PLU'
      Origin = 'PLU'
      OnSetText = CDSStockPLUSetText
      Size = 5
    end
    object CDSStockPLU_2: TStringField
      Alignment = taCenter
      FieldName = 'PLU_2'
      Origin = 'PLU_2'
      OnSetText = CDSStockPLU_2SetText
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
      DisplayFormat = '0;0 ; '
      EditFormat = '0;0 ; '
    end
    object CDSStockLARGO_1: TFloatField
      FieldName = 'LARGO_1'
      Origin = 'LARGO_1'
      Required = True
      OnSetText = CDSStockLARGO_1SetText
      DisplayFormat = '0;0 ; '
      EditFormat = '0;0 ; '
    end
    object CDSStockLARGO_2: TFloatField
      FieldName = 'LARGO_2'
      Origin = 'LARGO_2'
      Required = True
      OnSetText = CDSStockLARGO_2SetText
      DisplayFormat = '0;0 ; '
      EditFormat = '0;0 ; '
    end
    object CDSStockLARGO_3: TFloatField
      FieldName = 'LARGO_3'
      Origin = 'LARGO_3'
      Required = True
      OnSetText = CDSStockLARGO_3SetText
      DisplayFormat = '0;0 ; '
      EditFormat = '0;0 ; '
    end
    object CDSStockROTURA_1: TFloatField
      FieldName = 'ROTURA_1'
      Origin = 'ROTURA_1'
      Required = True
      OnSetText = CDSStockROTURA_1SetText
      DisplayFormat = '0;0 ; '
      EditFormat = '0;0 ; '
    end
    object CDSStockROTURA_2: TFloatField
      FieldName = 'ROTURA_2'
      Origin = 'ROTURA_2'
      Required = True
      OnSetText = CDSStockROTURA_2SetText
      DisplayFormat = '0;0 ; '
      EditFormat = '0;0 ; '
    end
    object CDSStockCIMA: TFloatField
      FieldName = 'CIMA'
      Origin = 'CIMA'
      Required = True
      DisplayFormat = '0;0 ; '
      EditFormat = '0;0 ; '
    end
    object CDSStockBASE: TFloatField
      FieldName = 'BASE'
      Origin = 'BASE'
      Required = True
      DisplayFormat = '0;0 ; '
      EditFormat = '0;0 ; '
    end
    object CDSStockVOLUMEN: TFloatField
      FieldName = 'VOLUMEN'
      Origin = 'VOLUMEN'
      Required = True
      DisplayFormat = '0.0000'
      EditFormat = '0;0 ; '
    end
    object CDSStockPESO: TFloatField
      FieldName = 'PESO'
      Origin = 'PESO'
      Required = True
      DisplayFormat = ',0.000'
      EditFormat = '0;0 ; '
    end
    object CDSStockDIAMETRO_OLLA: TFloatField
      FieldName = 'DIAMETRO_OLLA'
      Origin = 'DIAMETRO_OLLA'
      Required = True
      DisplayFormat = '0;0 ; '
      EditFormat = '0;0 ; '
    end
    object CDSStockALTO_ACC: TFloatField
      FieldName = 'ALTO_ACC'
      Origin = 'ALTO_ACC'
      Required = True
      DisplayFormat = '0;0 ; '
      EditFormat = '0;0 ; '
    end
    object CDSStockMODO_IVA: TStringField
      FieldName = 'MODO_IVA'
      Origin = 'MODO_IVA'
      FixedChar = True
      Size = 1
    end
    object CDSStockTIPOADICIONAL: TStringField
      FieldName = 'TIPOADICIONAL'
      Origin = 'TIPOADICIONAL'
      Size = 10
    end
    object CDSStockPESO_CALCULADO: TFloatField
      FieldName = 'PESO_CALCULADO'
      Origin = 'PESO_CALCULADO'
      Required = True
    end
    object CDSStockCOSTO_GRAVADO_STK: TFloatField
      FieldName = 'COSTO_GRAVADO_STK'
      Origin = 'COSTO_GRAVADO_STK'
      Required = True
      OnSetText = CDSStockCOSTO_GRAVADO_STKSetText
      EditFormat = '0.000'
    end
    object CDSStockCOSTO_IVA: TFloatField
      FieldName = 'COSTO_IVA'
      Origin = 'COSTO_IVA'
      Required = True
      EditFormat = '0.000'
    end
    object CDSStockCOSTO_FINAL: TFloatField
      FieldName = 'COSTO_FINAL'
      Origin = 'COSTO_FINAL'
      Required = True
      OnSetText = CDSStockCOSTO_FINALSetText
      EditFormat = '0.000'
    end
    object CDSStockCOSTO_EXENTO_STK: TFloatField
      FieldName = 'COSTO_EXENTO_STK'
      Origin = 'COSTO_EXENTO_STK'
      Required = True
      OnSetText = CDSStockCOSTO_EXENTO_STKSetText
      EditFormat = '0.000'
    end
    object CDSStockCOSTO_TOTAL_STK: TFloatField
      FieldName = 'COSTO_TOTAL_STK'
      Origin = 'COSTO_TOTAL_STK'
      Required = True
      EditFormat = '0.000'
    end
    object CDSStockFIJACION_PRECIO_GRAVADO: TFloatField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Origin = 'FIJACION_PRECIO_GRAVADO'
      Required = True
      OnSetText = CDSStockFIJACION_PRECIO_GRAVADOSetText
      EditFormat = '0.000'
    end
    object CDSStockFIJACION_PRECIO_IVA: TFloatField
      FieldName = 'FIJACION_PRECIO_IVA'
      Origin = 'FIJACION_PRECIO_IVA'
      Required = True
      EditFormat = '0.000'
    end
    object CDSStockFIJACION_PRECIO_FINAL: TFloatField
      FieldName = 'FIJACION_PRECIO_FINAL'
      Origin = 'FIJACION_PRECIO_FINAL'
      Required = True
      OnSetText = CDSStockFIJACION_PRECIO_FINALSetText
      EditFormat = '0.000'
    end
    object CDSStockFIJACION_PRECIO_EXENTO: TFloatField
      FieldName = 'FIJACION_PRECIO_EXENTO'
      Origin = 'FIJACION_PRECIO_EXENTO'
      Required = True
      OnSetText = CDSStockFIJACION_PRECIO_EXENTOSetText
      EditFormat = '0.000'
    end
    object CDSStockFIJACION_PRECIO_TOTAL: TFloatField
      FieldName = 'FIJACION_PRECIO_TOTAL'
      Origin = 'FIJACION_PRECIO_TOTAL'
      Required = True
      OnChange = CDSStockFIJACION_PRECIO_TOTALChange
      EditFormat = '0.000'
    end
    object CDSStockADICIONAL_SOBRECOSTO: TFloatField
      FieldName = 'ADICIONAL_SOBRECOSTO'
      Origin = 'ADICIONAL_SOBRECOSTO'
      Required = True
    end
    object CDSStockIMPUESTO_INTERNOS: TFloatField
      FieldName = 'IMPUESTO_INTERNOS'
      Origin = 'IMPUESTO_INTERNOS'
      DisplayFormat = ',0.000'
    end
    object CDSStockCOSTO_GRAVADO_SOMBRA: TFloatField
      FieldName = 'COSTO_GRAVADO_SOMBRA'
      Origin = 'COSTO_GRAVADO_SOMBRA'
      Required = True
      OnSetText = CDSStockCOSTO_GRAVADO_SOMBRASetText
      EditFormat = '0.000'
    end
    object CDSStockCOSTO_EXENTO_SOMBRA: TFloatField
      FieldName = 'COSTO_EXENTO_SOMBRA'
      Origin = 'COSTO_EXENTO_SOMBRA'
      Required = True
      OnSetText = CDSStockCOSTO_EXENTO_SOMBRASetText
      EditFormat = '0.000'
    end
    object CDSStockCOSTO_GRAVADO_P: TFloatField
      FieldName = 'COSTO_GRAVADO_P'
      Origin = 'COSTO_GRAVADO_P'
      Required = True
      DisplayFormat = ',0.000'
      EditFormat = '0.000'
    end
    object CDSStockCOSTO_EXENTO_P: TFloatField
      FieldName = 'COSTO_EXENTO_P'
      Origin = 'COSTO_EXENTO_P'
      Required = True
      DisplayFormat = ',0.000'
      EditFormat = '0.000'
    end
    object CDSStockCOSTO_TOTAL_P: TFloatField
      FieldName = 'COSTO_TOTAL_P'
      Origin = 'COSTO_TOTAL_P'
      Required = True
      DisplayFormat = ',0.000'
      EditFormat = '0.000'
    end
    object CDSStockPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      Origin = 'PRESENTACION_CANTIDAD'
      Required = True
      DisplayFormat = ',0.000'
      EditFormat = '0.000'
    end
    object CDSStockCONTENIDO_COMPRA: TFloatField
      FieldName = 'CONTENIDO_COMPRA'
      Origin = 'CONTENIDO_COMPRA'
      Required = True
      DisplayFormat = ',0.0000'
      EditFormat = '0.000'
    end
    object CDSStockPORCENTAJE_SOBRECOSTO: TFloatField
      FieldName = 'PORCENTAJE_SOBRECOSTO'
      Origin = 'PORCENTAJE_SOBRECOSTO'
      DisplayFormat = '0.00'
    end
    object CDSStockPRESENTACION_2_CANT: TFloatField
      FieldName = 'PRESENTACION_2_CANT'
      Origin = 'PRESENTACION_2_CANT'
      Required = True
      DisplayFormat = ',0.0000'
    end
    object CDSStockMUESTRATASAPORCENTAJE: TFloatField
      FieldName = 'MUESTRATASAPORCENTAJE'
      Origin = 'TASA'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object CDSStockMUESTRASOBRETASAPROCENTAJE: TFloatField
      FieldName = 'MUESTRASOBRETASAPROCENTAJE'
      Origin = 'TASA'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object CDSStockMUESTRATASAIB: TFloatField
      FieldName = 'MUESTRATASAIB'
      Origin = 'TASA'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object CDSStockMUESTRATABLAPRECIO1: TFloatField
      FieldName = 'MUESTRATABLAPRECIO1'
      Origin = 'PRECIO1'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object CDSStockMUESTRATABLAPRECIO2: TFloatField
      FieldName = 'MUESTRATABLAPRECIO2'
      Origin = 'PRECIO1'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object CDSStockFECHA_ALTA: TSQLTimeStampField
      FieldName = 'FECHA_ALTA'
      Origin = 'FECHA_ALTA'
    end
    object CDSStockFECHA_ACT_SOMBRA: TSQLTimeStampField
      FieldName = 'FECHA_ACT_SOMBRA'
      Origin = 'FECHA_ACT_SOMBRA'
    end
    object CDSStockFECHA_ULTIMAVTA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMAVTA'
      Origin = 'FECHA_ULTIMAVTA'
    end
    object CDSStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMA_COMPRA'
      Origin = 'FECHA_ULTIMA_COMPRA'
    end
    object CDSStockFUAP: TSQLTimeStampField
      FieldName = 'FUAP'
      Origin = 'FUAP'
    end
    object CDSStockMUESTRACTAGASTO: TStringField
      FieldName = 'MUESTRACTAGASTO'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 50
    end
    object CDSStockMUESTRARUBROGASTO: TStringField
      FieldName = 'MUESTRARUBROGASTO'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 50
    end
    object CDSStockPERCIBE_IVA: TStringField
      FieldName = 'PERCIBE_IVA'
      Origin = 'PERCIBE_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockID_TASA_PERCEP_IVA: TIntegerField
      FieldName = 'ID_TASA_PERCEP_IVA'
      Origin = 'ID_TASA_PERCEP_IVA'
      Required = True
    end
    object CDSStockAPLICA_TASA_DIF: TStringField
      FieldName = 'APLICA_TASA_DIF'
      Origin = 'APLICA_TASA_DIF'
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
    object CDSStockPLU_SECCION: TStringField
      FieldName = 'PLU_SECCION'
      Origin = 'PLU_SECCION'
      Size = 50
    end
    object CDSStockPRESENTACION_TOLERANCIA: TFloatField
      FieldName = 'PRESENTACION_TOLERANCIA'
      Origin = 'PRESENTACION_TOLERANCIA'
      Required = True
    end
    object CDSStockDESCRIPCION_CORTA: TMemoField
      FieldName = 'DESCRIPCION_CORTA'
      Origin = 'DESCRIPCION_CORTA'
      BlobType = ftMemo
    end
    object CDSStockDESCRIPCION_LARGA: TMemoField
      FieldName = 'DESCRIPCION_LARGA'
      Origin = 'DESCRIPCION_LARGA'
      BlobType = ftMemo
    end
    object CDSStockCATEGORIAS_WEB: TStringField
      FieldName = 'CATEGORIAS_WEB'
      Origin = 'CATEGORIAS_WEB'
      Size = 100
    end
    object CDSStockARTICULO_VARIABLE: TStringField
      FieldName = 'ARTICULO_VARIABLE'
      Origin = 'ARTICULO_VARIABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockFOB: TSingleField
      FieldName = 'FOB'
      Origin = 'FOB'
      DisplayFormat = ',0.00'
    end
    object CDSStockCODIGO_ART_VARIABLE: TStringField
      FieldName = 'CODIGO_ART_VARIABLE'
      Origin = 'CODIGO_ART_VARIABLE'
      Size = 8
    end
    object CDSStockDIAS_VENCIMIENTO: TIntegerField
      FieldName = 'DIAS_VENCIMIENTO'
      Origin = 'DIAS_VENCIMIENTO'
    end
    object CDSStockFOTO: TBlobField
      FieldName = 'FOTO'
    end
  end
  object DSBuscaIva1: TDataSource
    DataSet = CDSBuscaIva1
    Left = 24
    Top = 64
  end
  object DSBuscaIva2: TDataSource
    DataSet = CDSBuscaIva2
    Left = 24
    Top = 112
  end
  object DSPBuscaIva: TDataSetProvider
    DataSet = DMBuscadores.QBuscaIva
    Options = []
    Left = 249
    Top = 95
  end
  object CDSBuscaIva1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaIva'
    Left = 137
    Top = 63
    object CDSBuscaIva1CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSBuscaIva1DESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 15
    end
    object CDSBuscaIva1TASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
  end
  object CDSBuscaIva2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaIva'
    Left = 137
    Top = 119
    object CDSBuscaIva2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSBuscaIva2DESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object CDSBuscaIva2TASA: TFloatField
      FieldName = 'TASA'
    end
  end
  object DSProStock: TDataSource
    DataSet = CDSProvStock
    Left = 24
    Top = 272
  end
  object CDSBuscaMarca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaMarca'
    Left = 488
    Top = 64
    object CDSBuscaMarcaDESCRIPCION_MARCA: TStringField
      DisplayLabel = 'Descripci'#243'n'
      DisplayWidth = 25
      FieldName = 'DESCRIPCION_MARCA'
      Size = 25
    end
    object CDSBuscaMarcaMARCA_STK: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 4
      FieldName = 'MARCA_STK'
      Required = True
      Size = 4
    end
  end
  object DSPBuscaMarca: TDataSetProvider
    DataSet = DMBuscadores.QBuscaMarca
    Options = []
    Left = 392
    Top = 56
  end
  object DSDepositoStk: TDataSource
    DataSet = CDSDepositoStk
    Left = 392
    Top = 6
  end
  object CDSDepositoStk: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPDepositoStk'
    OnCalcFields = CDSDepositoStkCalcFields
    OnNewRecord = CDSDepositoStkNewRecord
    Left = 488
    Top = 7
    object CDSDepositoStkID_DEPOSITO: TIntegerField
      FieldName = 'ID_DEPOSITO'
      Origin = 'ID_DEPOSITO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDepositoStkCODIGO_DEPOSITO: TIntegerField
      FieldName = 'CODIGO_DEPOSITO'
      Origin = 'CODIGO_DEPOSITO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnSetText = CDSDepositoStkCODIGO_DEPOSITOSetText
    end
    object CDSDepositoStkCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSDepositoStkSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object CDSDepositoStkMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSDepositoStkCOMPRAINCIAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'COMPRAINCIAL'
      ProviderFlags = []
      Calculated = True
    end
    object CDSDepositoStkCOMPRAMINIMO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'COMPRAMINIMO'
      ProviderFlags = []
      Calculated = True
    end
    object CDSDepositoStkCOMPRAMEDIO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'COMPRAMEDIO'
      ProviderFlags = []
      Calculated = True
    end
    object CDSDepositoStkCOMPRAFISICO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'COMPRAFISICO'
      ProviderFlags = []
      Calculated = True
    end
    object CDSDepositoStkPRECIOVENTA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRECIOVENTA'
      ProviderFlags = []
      Calculated = True
    end
    object CDSDepositoStkSECTOR: TStringField
      FieldName = 'SECTOR'
      Origin = 'SECTOR'
      Size = 2
    end
    object CDSDepositoStkUBICACION: TStringField
      FieldName = 'UBICACION'
      Origin = 'UBICACION'
      OnSetText = CDSDepositoStkUBICACIONSetText
      Size = 3
    end
    object CDSDepositoStkAVISO_MINIMOSTOCK: TStringField
      DisplayLabel = 'Av.Min'
      DisplayWidth = 8
      FieldName = 'AVISO_MINIMOSTOCK'
      Origin = 'AVISO_MINIMOSTOCK'
      FixedChar = True
      Size = 1
    end
    object CDSDepositoStkINICIAL: TFloatField
      FieldName = 'INICIAL'
      Origin = 'INICIAL'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSDepositoStkMINIMO: TFloatField
      FieldName = 'MINIMO'
      Origin = 'MINIMO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSDepositoStkMEDIO: TFloatField
      FieldName = 'MEDIO'
      Origin = 'MEDIO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSDepositoStkFISICO: TFloatField
      FieldName = 'FISICO'
      Origin = 'FISICO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSDepositoStkRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
      Required = True
    end
    object CDSDepositoStkUNIDADES: TFloatField
      DisplayLabel = 'Un.Stk'
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSDepositoStkFUAPRECIOS: TSQLTimeStampField
      FieldName = 'FUAPRECIOS'
      Origin = 'FUAPRECIOS'
    end
    object CDSDepositoStkFULTAJUSTE: TSQLTimeStampField
      FieldName = 'FULTAJUSTE'
      Origin = 'FULTAJUSTE'
    end
  end
  object DSListaUnidad: TDataSource
    DataSet = CDSListaUnidad
    Left = 675
    Top = 115
  end
  object CDSBuscaMoneda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaMoneda'
    Left = 137
    Top = 168
    object CDSBuscaMonedaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSBuscaMonedaMONEDA: TStringField
      FieldName = 'MONEDA'
      Size = 15
    end
  end
  object DSPBuscaMoneda: TDataSetProvider
    DataSet = DMBuscadores.QBuscaMoneda
    Options = []
    Left = 249
    Top = 168
  end
  object CDSBuscaDeposito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaDeposito'
    Left = 137
    Top = 216
    object CDSBuscaDepositoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSBuscaDepositoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
  end
  object DSPBuscaDeposito: TDataSetProvider
    DataSet = DMBuscadores.QBuscaDeposito
    Options = []
    Left = 249
    Top = 216
  end
  object DSListaDepositos: TDataSource
    DataSet = CDSListaDepositos
    Left = 488
    Top = 240
  end
  object CDSListaDepositos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPListaDepositos'
    Left = 569
    Top = 248
    object CDSListaDepositosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSListaDepositosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
  end
  object DSPListaDepositos: TDataSetProvider
    DataSet = DMBuscadores.QBuscaDeposito
    Options = []
    Left = 675
    Top = 248
  end
  object CDSListaIngBruto: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPListaIngBruto'
    Left = 504
    Top = 568
  end
  object DSPListaIngBruto: TDataSetProvider
    DataSet = QListaIngBruto
    Options = []
    Left = 576
    Top = 568
  end
  object CDSListaHistorial: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPListaHistorial'
    Left = 504
    Top = 520
    object CDSListaHistorialID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSListaHistorialCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSListaHistorialID_CAMBIO_PRECIO_GENERAL: TIntegerField
      FieldName = 'ID_CAMBIO_PRECIO_GENERAL'
      Origin = 'ID_CAMBIO_PRECIO_GENERAL'
    end
    object CDSListaHistorialMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Origin = 'MOTIVO'
      Size = 50
    end
    object CDSListaHistorialFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSListaHistorialUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object CDSListaHistorialCOSTO_GRAVADO_OLD: TFloatField
      FieldName = 'COSTO_GRAVADO_OLD'
      Origin = 'COSTO_GRAVADO_OLD'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSListaHistorialCOSTO_EXENTO_OLD: TFloatField
      FieldName = 'COSTO_EXENTO_OLD'
      Origin = 'COSTO_EXENTO_OLD'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSListaHistorialCOSTO_OLD: TFloatField
      FieldName = 'COSTO_OLD'
      Origin = 'COSTO_OLD'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSListaHistorialF_PRECIO_GRAVADO_OLD: TFloatField
      FieldName = 'F_PRECIO_GRAVADO_OLD'
      Origin = 'F_PRECIO_GRAVADO_OLD'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSListaHistorialF_PRECIO_EXENTO_OLD: TFloatField
      FieldName = 'F_PRECIO_EXENTO_OLD'
      Origin = 'F_PRECIO_EXENTO_OLD'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSListaHistorialFPRECIO_OLD: TFloatField
      FieldName = 'FPRECIO_OLD'
      Origin = 'FPRECIO_OLD'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSListaHistorialCOSTO_GRAVADO_NEW: TFloatField
      FieldName = 'COSTO_GRAVADO_NEW'
      Origin = 'COSTO_GRAVADO_NEW'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSListaHistorialCOSTO_EXENTO_NEW: TFloatField
      FieldName = 'COSTO_EXENTO_NEW'
      Origin = 'COSTO_EXENTO_NEW'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSListaHistorialCOSTO_NEW: TFloatField
      FieldName = 'COSTO_NEW'
      Origin = 'COSTO_NEW'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSListaHistorialF_PRECIO_GRAVADO_NEW: TFloatField
      FieldName = 'F_PRECIO_GRAVADO_NEW'
      Origin = 'F_PRECIO_GRAVADO_NEW'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSListaHistorialF_PRECIO_EXENTO_NEW: TFloatField
      FieldName = 'F_PRECIO_EXENTO_NEW'
      Origin = 'F_PRECIO_EXENTO_NEW'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSListaHistorialFPRECIO_NEW: TFloatField
      FieldName = 'FPRECIO_NEW'
      Origin = 'FPRECIO_NEW'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSListaHistorialID_FC_COMPRA: TIntegerField
      FieldName = 'ID_FC_COMPRA'
      Origin = 'ID_FC_COMPRA'
    end
  end
  object DSPListaHistorial: TDataSetProvider
    DataSet = QListaHistorial
    Options = []
    Left = 568
    Top = 520
  end
  object CDSBuscaTablaPrecioDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_cab'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaTablaPrecioDet'
    Left = 504
    Top = 440
    object CDSBuscaTablaPrecioDetCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
    end
    object CDSBuscaTablaPrecioDetPRECIO1: TFMTBCDField
      DisplayLabel = 'Precio 1'
      DisplayWidth = 10
      FieldName = 'PRECIO1'
      Precision = 15
      Size = 3
    end
    object CDSBuscaTablaPrecioDetPRECIO2: TFMTBCDField
      DisplayLabel = 'Precio 2'
      DisplayWidth = 10
      FieldName = 'PRECIO2'
      Precision = 15
      Size = 3
    end
    object CDSBuscaTablaPrecioDetID: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
    end
    object CDSBuscaTablaPrecioDetID_CAB: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_CAB'
      Visible = False
    end
  end
  object DSPBuscaTablaPrecioDet: TDataSetProvider
    DataSet = DMBuscadores.QBuscaTablaPrecioDet
    Options = []
    Left = 592
    Top = 440
  end
  object CDSBuscaTablaPrecioCab: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaTablaPrecioCab'
    Left = 504
    Top = 392
    object CDSBuscaTablaPrecioCabID: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSBuscaTablaPrecioCabDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 40
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 40
    end
    object CDSBuscaTablaPrecioCabFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Visible = False
    end
  end
  object DSPBuscaTablaPrecioCab: TDataSetProvider
    DataSet = DMBuscadores.QBuscaTablaPrecioCab
    Options = []
    Left = 584
    Top = 392
  end
  object CDSListaArt: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_CAB'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'RUBRO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SUBRUBRO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CODIGOARTICULO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'COSTO_GRAVADO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'COSTO_EXENTO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'COSTO_TOTAL'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'IVA_TASA'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'RECARGO'
        DataType = ftFloat
      end
      item
        Name = 'PRECIO_GRAVADO'
        DataType = ftFloat
      end
      item
        Name = 'IVA_IMPORTE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PRECIO_EXENTO'
        DataType = ftFloat
      end
      item
        Name = 'PRECIO'
        DataType = ftFloat
      end
      item
        Name = 'DESCUENTO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'REC_APLICAR'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'FECHA'
        DataType = ftTimeStamp
      end
      item
        Name = 'MUESTRALISTA'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'MUESTRAFECHA'
        Attributes = [faReadonly]
        DataType = ftTimeStamp
      end
      item
        Name = 'MUESTRAPORDEFECTO'
        Attributes = [faReadonly, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'HAYSUBDET'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'MUESTRADETALLESTOCK'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'MUESTRACODIGOBARRA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CODIGOALTERNATIVO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MUESTRAACTUALIZAPOREXCEPCION'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CLONADA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MUESTRACLONDE'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPListaArt'
    StoreDefs = True
    BeforeInsert = CDSListaArtBeforeInsert
    AfterScroll = CDSListaArtAfterScroll
    Left = 137
    Top = 424
    object CDSListaArtID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSListaArtID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSListaArtCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSListaArtMUESTRAFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha Lista'
      FieldName = 'MUESTRAFECHA'
      Origin = 'FECHA'
      ProviderFlags = []
    end
    object CDSListaArtMUESTRALISTA: TStringField
      FieldName = 'MUESTRALISTA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object CDSListaArtMUESTRAPORDEFECTO: TStringField
      FieldName = 'MUESTRAPORDEFECTO'
      Origin = 'PORDEFECTO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CDSListaArtHAYSUBDET: TIntegerField
      FieldName = 'HAYSUBDET'
      Origin = 'HAYSUBDET'
      ProviderFlags = []
    end
    object CDSListaArtRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
      OnSetText = CDSListaArtRECARGOSetText
      DisplayFormat = '0.00'
    end
    object CDSListaArtCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
      Required = True
      DisplayFormat = ',0.000'
    end
    object CDSListaArtCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
      Required = True
      DisplayFormat = ',0.000'
    end
    object CDSListaArtCOSTO_TOTAL: TFloatField
      DisplayLabel = 'Cost.Total'
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
      Required = True
      DisplayFormat = ',0.000'
    end
    object CDSListaArtIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
      Required = True
      DisplayFormat = '0.00'
    end
    object CDSListaArtPRECIO_GRAVADO: TFloatField
      DisplayLabel = 'Pr.Gravado'
      FieldName = 'PRECIO_GRAVADO'
      Origin = 'PRECIO_GRAVADO'
      DisplayFormat = ',0.000'
    end
    object CDSListaArtIVA_IMPORTE: TFloatField
      DisplayLabel = 'Iva'
      FieldName = 'IVA_IMPORTE'
      Origin = 'IVA_IMPORTE'
      Required = True
      DisplayFormat = ',0.000'
    end
    object CDSListaArtPRECIO_EXENTO: TFloatField
      DisplayLabel = 'Pr.Exento'
      FieldName = 'PRECIO_EXENTO'
      Origin = 'PRECIO_EXENTO'
      DisplayFormat = ',0.000'
    end
    object CDSListaArtPRECIO: TFloatField
      DisplayLabel = 'Precio'
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      OnSetText = CDSListaArtPRECIOSetText
      DisplayFormat = ',0.000'
    end
    object CDSListaArtDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      Required = True
    end
    object CDSListaArtREC_APLICAR: TFloatField
      FieldName = 'REC_APLICAR'
      Origin = 'REC_APLICAR'
      Required = True
      DisplayFormat = ',0.000'
    end
    object CDSListaArtMUESTRADETALLESTOCK: TStringField
      FieldName = 'MUESTRADETALLESTOCK'
      ProviderFlags = []
      Size = 45
    end
    object CDSListaArtMUESTRACODIGOBARRA: TStringField
      FieldName = 'MUESTRACODIGOBARRA'
      ProviderFlags = []
      Size = 50
    end
    object CDSListaArtRUBRO: TStringField
      FieldName = 'RUBRO'
      Required = True
      Size = 3
    end
    object CDSListaArtSUBRUBRO: TStringField
      FieldName = 'SUBRUBRO'
      Required = True
      Size = 5
    end
    object CDSListaArtFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSListaArtCODIGOALTERNATIVO: TStringField
      FieldName = 'CODIGOALTERNATIVO'
      ReadOnly = True
    end
    object CDSListaArtMUESTRAACTUALIZAPOREXCEPCION: TStringField
      FieldName = 'MUESTRAACTUALIZAPOREXCEPCION'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CDSListaArtCLONADA: TStringField
      FieldName = 'CLONADA'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CDSListaArtMUESTRACLONDE: TIntegerField
      DisplayLabel = 'Clon Lista'
      DisplayWidth = 5
      FieldName = 'MUESTRACLONDE'
      ProviderFlags = []
      OnGetText = CDSListaArtMUESTRACLONDEGetText
    end
  end
  object CDSStockFotos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPStockFotos'
    AfterScroll = CDSStockFotosAfterScroll
    OnNewRecord = CDSStockFotosNewRecord
    Left = 137
    Top = 488
    object CDSStockFotosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSStockFotosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSStockFotosFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'FOTO'
      Size = 100
    end
    object CDSStockFotosPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      Origin = 'POR_DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPStockFotos: TDataSetProvider
    DataSet = QStockFotos
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 249
    Top = 488
  end
  object ibgIdFoto: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_STOCK_FOTOS'
    SystemGenerators = False
    Left = 376
    Top = 488
  end
  object DSStockFotos: TDataSource
    DataSet = CDSStockFotos
    Left = 24
    Top = 488
  end
  object DSListaArtSubDet: TDataSource
    DataSet = CDSListaArtSubDet
    Left = 24
    Top = 544
  end
  object CDSListaArtSubDet: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_LISTADETALLE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CANTIDAD'
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
        Name = 'COSTO_TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'RECARGO'
        DataType = ftFloat
      end
      item
        Name = 'PRECIO_EXENTO'
        DataType = ftFloat
      end
      item
        Name = 'PRECIO_GRAVADO'
        DataType = ftFloat
      end
      item
        Name = 'IVA_TASA'
        DataType = ftFloat
      end
      item
        Name = 'IVA_IMPORTE'
        DataType = ftFloat
      end
      item
        Name = 'PRECIO'
        DataType = ftFloat
      end
      item
        Name = 'DESCUENTO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'ID_LISTA_SECUNDARIA'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPListaArtSubDet'
    StoreDefs = True
    BeforePost = CDSListaArtSubDetBeforePost
    AfterPost = CDSListaArtSubDetAfterPost
    AfterDelete = CDSListaArtSubDetAfterDelete
    OnNewRecord = CDSListaArtSubDetNewRecord
    Left = 137
    Top = 544
    object CDSListaArtSubDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSListaArtSubDetID_LISTADETALLE: TIntegerField
      FieldName = 'ID_LISTADETALLE'
      Origin = 'ID_LISTADETALLE'
      Required = True
    end
    object CDSListaArtSubDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object CDSListaArtSubDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.000'
    end
    object CDSListaArtSubDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
      DisplayFormat = ',0.000'
    end
    object CDSListaArtSubDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
      DisplayFormat = ',0.000'
    end
    object CDSListaArtSubDetDESCUENTO: TFloatField
      DisplayLabel = 'Dscto.'
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      Required = True
      DisplayFormat = ',0.000'
    end
    object CDSListaArtSubDetCOSTO_TOTAL: TFloatField
      DisplayLabel = 'Costo Total'
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
      DisplayFormat = ',0.000'
    end
    object CDSListaArtSubDetRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
      OnSetText = CDSListaArtSubDetRECARGOSetText
      DisplayFormat = ',0.000'
    end
    object CDSListaArtSubDetPRECIO_EXENTO: TFloatField
      FieldName = 'PRECIO_EXENTO'
      Origin = 'PRECIO_EXENTO'
      DisplayFormat = ',0.000'
    end
    object CDSListaArtSubDetPRECIO_GRAVADO: TFloatField
      FieldName = 'PRECIO_GRAVADO'
      Origin = 'PRECIO_GRAVADO'
      DisplayFormat = ',0.000'
    end
    object CDSListaArtSubDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
      DisplayFormat = ',0.000'
    end
    object CDSListaArtSubDetIVA_IMPORTE: TFloatField
      FieldName = 'IVA_IMPORTE'
      Origin = 'IVA_IMPORTE'
      DisplayFormat = ',0.000'
    end
    object CDSListaArtSubDetPRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      OnSetText = CDSListaArtSubDetPRECIOSetText
      DisplayFormat = ',0.000'
    end
    object CDSListaArtSubDetID_LISTA_SECUNDARIA: TIntegerField
      DisplayLabel = 'Lista Secundaria'
      DisplayWidth = 6
      FieldName = 'ID_LISTA_SECUNDARIA'
      Required = True
    end
  end
  object DSPListaArtSubDet: TDataSetProvider
    DataSet = QListaArtSubDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 249
    Top = 544
  end
  object ibgListaArtSubDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_LISTAESPECIALSUBDETALLE'
    SystemGenerators = False
    Left = 384
    Top = 544
  end
  object DSPTrazables: TDataSetProvider
    DataSet = QTrazables
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 249
    Top = 616
  end
  object CDSTrazables: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO_STK'
        Attributes = [faRequired]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'DETALLE_STK'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'RUBRO_STK'
        Attributes = [faRequired]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SUBRUBRO_STK'
        Attributes = [faRequired]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'DETALLE_RUBRO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 35
      end
      item
        Name = 'DETALLE_SUBRUBRO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 45
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DSPTrazables'
    StoreDefs = True
    BeforeInsert = CDSListaArtBeforeInsert
    AfterScroll = CDSListaArtAfterScroll
    Left = 137
    Top = 616
    object CDSTrazablesCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSTrazablesDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSTrazablesRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      Required = True
      Size = 3
    end
    object CDSTrazablesSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      Required = True
      Size = 5
    end
    object CDSTrazablesDETALLE_RUBRO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      Size = 35
    end
    object CDSTrazablesDETALLE_SUBRUBRO: TStringField
      DisplayLabel = 'Sub Rubro'
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      Size = 45
    end
  end
  object DSTrazables: TDataSource
    DataSet = CDSTrazables
    Left = 24
    Top = 616
  end
  object DSArticulosSeriesTrazab: TDataSource
    DataSet = CDSArticulosSeriesTrazab
    Left = 680
    Top = 624
  end
  object CDSArticulosSeriesTrazab: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPArticulosSeriesTrazab'
    Left = 576
    Top = 624
    object CDSArticulosSeriesTrazabCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSArticulosSeriesTrazabDETALLE_STK: TStringField
      DisplayLabel = 'Detalles'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSArticulosSeriesTrazabCONTROL_SERIE: TStringField
      Alignment = taCenter
      DisplayLabel = 'C/Serie'
      FieldName = 'CONTROL_SERIE'
      Origin = 'CONTROL_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSArticulosSeriesTrazabCONTROL_TRAZABILIDAD: TStringField
      Alignment = taCenter
      DisplayLabel = 'Trazable'
      FieldName = 'CONTROL_TRAZABILIDAD'
      Origin = 'CONTROL_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPArticulosSeriesTrazab: TDataSetProvider
    DataSet = QArticulosSeriesTrazab
    Options = []
    Left = 480
    Top = 624
  end
  object DSLotes: TDataSource
    DataSet = CDSLotes
    Left = 1016
    Top = 624
  end
  object DSPMovLote: TDataSetProvider
    DataSet = QMovLote
    Options = []
    Left = 500
    Top = 688
  end
  object CDSMovLote: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID_LOTE'
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovLote'
    Left = 572
    Top = 688
    object CDSMovLoteID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object CDSMovLoteID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
    end
    object CDSMovLoteCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object CDSMovLoteFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSMovLoteID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
    end
    object CDSMovLoteID_DETALLE_CPBTE: TIntegerField
      FieldName = 'ID_DETALLE_CPBTE'
      Origin = 'ID_DETALLE_CPBTE'
    end
    object CDSMovLoteTIPO_COMPROBANTE: TStringField
      DisplayLabel = 'Tp.'
      DisplayWidth = 3
      FieldName = 'TIPO_COMPROBANTE'
      Origin = 'TIPO_COMPROBANTE'
      Size = 2
    end
    object CDSMovLoteTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object CDSMovLoteDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object CDSMovLoteMUESTRANROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      DisplayWidth = 16
      FieldName = 'MUESTRANROCPBTE'
      Origin = 'MUESTRANROCPBTE'
      Size = 13
    end
    object CDSMovLoteMUESTRAOPERACION: TStringField
      DisplayLabel = 'Operacion'
      FieldName = 'MUESTRAOPERACION'
      Origin = 'MUESTRAOPERACION'
      Size = 15
    end
    object CDSMovLoteMUESTRADEPOSITO: TStringField
      DisplayLabel = 'Deposito'
      DisplayWidth = 20
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'MUESTRADEPOSITO'
      Size = 25
    end
    object CDSMovLoteMUESTRANOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 42
      FieldName = 'MUESTRANOMBRE'
      Origin = 'MUESTRANOMBRE'
      Size = 45
    end
    object CDSMovLoteENTRA: TFloatField
      DisplayLabel = 'Entran'
      FieldName = 'ENTRA'
      Origin = 'ENTRA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovLoteSALE: TFloatField
      DisplayLabel = 'Salen'
      FieldName = 'SALE'
      Origin = 'SALE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSMovLote: TDataSource
    DataSet = CDSMovLote
    Left = 628
    Top = 688
  end
  object QMovStk: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from ver_movimientos_stock ( :codigo, :deposito, :tipom' +
        'ovimiento, :desde, :hasta, :modo,:rtos)'
      'order by fecha,id,tipocpbte desc,clasecpbte,nrocpbte')
    Left = 392
    Top = 176
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'deposito'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'tipomovimiento'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'modo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'RTOS'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end>
  end
  object QLotes_: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select l.* from stock_lotes_impo l'
      'where l.codigo = :codigo')
    Left = 784
    Top = 624
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object QVerificaPLU: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select PLU from Stock where PLU = :codigo or plu_2=:codigo')
    Left = 1104
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 5
        Value = Null
      end>
    object QVerificaPLUPLU: TStringField
      FieldName = 'PLU'
      Origin = 'PLU'
      Size = 5
    end
  end
  object QListaUnidadFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from Unidades order by descripcion')
    Left = 392
    Top = 112
  end
  object QMarcaFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from Marcas where Marca_Stk=:Codigo')
    Left = 24
    Top = 680
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end>
  end
  object QProveedores: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT P.* , c.Telediscado, PerIva.Descripcion as DesPerIva,'
      'PerIB.Descripcion as DesPerIB,'
      'PerIB2.Descripcion as DesPerIB2,'
      'retib.detalle as MuestraDetalleRetIIBB,'
      'retib.tasa as MuestraTasaRetIIBB,'
      
        'retib.minimo_imponible as MuestraMinImponiRetIIBB FROM Poveedor ' +
        'P'
      'left join c_postal c on p.id_cod_postal=c.id_postal'
      'left join PercepIva PerIva on PerIva.Codigo=p.Id_Perc_Iva'
      'left join PercepIB PerIB on PerIB.Codigo=p.Id_Perc_IBB'
      'left join PercepIB PerIB2 on PerIB2.Codigo=p.Id_Perc_IBB_2'
      
        'left join tasas_ret_ibrutos retIB on RetIB.id=p.id_tasa_retencio' +
        'n_ib'
      'where P.Codigo = :Codigo'
      ' '
      ' '
      ' ')
    Left = 856
    Top = 416
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QProveedoresCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QProveedoresNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QProveedoresRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
  end
  object QDeposito: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select *  from depositos where id=:id')
    Left = 520
    Top = 736
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QDepositoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDepositoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object QDepositoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QDepositoCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Origin = 'CENTRALIZA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QVerificaStockConMov: TFDQuery
    Filtered = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from VERIFICA_MOV_STOCK ( :codigo )')
    Left = 1048
    Top = 472
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object QVerificaStockConMovESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 1
    end
  end
  object QBorraHistorial: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from STOCK_HISTORIAL_PRECIO where id=:id')
    Left = 760
    Top = 424
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QListaPresentacion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select *  from presentacion '
      'order by detalle')
    Left = 1040
    Top = 392
    object QListaPresentacionDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 30
    end
    object QListaPresentacionID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QBorraProvStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from proveestock p '
      'where p.codigo_proveedor = :proveedor and p.codigo_stk = :codigo')
    Left = 800
    Top = 504
    ParamData = <
      item
        Name = 'PROVEEDOR'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object QCodigoFree: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from BUSCAR_CODIGOSTOCK_FREE (:desde,:hasta)')
    Left = 1104
    Top = 136
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
    object QCodigoFreeNEWCODIGO: TIntegerField
      FieldName = 'NEWCODIGO'
      Origin = 'NEWCODIGO'
    end
  end
  object QMovLote: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end>
    SQL.Strings = (
      'select * from VISTA_MOV_STOCK_LOTE ( :codigo )'
      'order by id')
    Left = 416
    Top = 688
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QTiposAdicionales: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TIPO_ADICIONAL_STOCK')
    Left = 776
    Top = 352
    object QTiposAdicionalesTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 5
    end
    object QTiposAdicionalesDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 100
    end
    object QTiposAdicionalesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSTipoAdicional: TDataSource
    DataSet = QTiposAdicionales
    Left = 864
    Top = 352
  end
  object QListaHistorial: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select sh.* from stock_historial_precio sh where sh.codigo_stk =' +
        ' :Codigo '
      'order by sh.fecha desc')
    Left = 640
    Top = 520
    ParamData = <
      item
        Position = 1
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QSeccionPLU: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from  PLU_SECCION ')
    Left = 816
    Top = 278
  end
  object DSPSeccionPLU: TDataSetProvider
    DataSet = QSeccionPLU
    Options = []
    Left = 928
    Top = 288
  end
  object CDSSeccionPLU: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSeccionPLU'
    Left = 1008
    Top = 288
    object CDSSeccionPLUID: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'ID'
      Required = True
    end
    object CDSSeccionPLUDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 50
    end
    object CDSSeccionPLUPARENT: TIntegerField
      FieldName = 'PARENT'
      Required = True
    end
  end
  object DSSeccionPLU: TDataSource
    DataSet = CDSSeccionPLU
    Left = 1104
    Top = 288
  end
  object QProvStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select PS.* , P.Nombre as MuestraProveedor from PROVEESTOCK PS'
      'left join POVEEDOR P on ps.codigo_proveedor= p.codigo'
      'Where Codigo_Stk = :Codigo'
      'order by ps.ranking')
    Left = 312
    Top = 272
    ParamData = <
      item
        Position = 1
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QListArt: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select l.*,lc.nombre as MuestraLista,lc.fecha as MuestraFecha,'
      
        'lc.pordefecto as MuestraPorDefecto, 0 as  HaySubDet,s.detalle_st' +
        'k as MuestraDetalleStock,'
      's.reemplazo_stk as CodigoAlternativo,'
      
        '(select max(cb.codigobarra) from codigobarra cb where cb.codigo_' +
        'stk=l.codigoarticulo) as MuestraCodigoBarra,'
      
        'lc.actualiza_excepcion as MuestraActualizaPorExcepcion,lc.clonad' +
        'a,lc.id_lista_clonada as MuestraClonDe from listaprecioespeciala' +
        'rt l'
      'left join stock s on s.codigo_stk=l.codigoarticulo'
      'left join listaprecioespecialcab lc on lc.id = l.id_cab'
      'where l.codigoarticulo = :codigo'
      'order by l.id_cab')
    Left = 312
    Top = 424
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QListArtID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QListArtID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      Required = True
    end
    object QListArtRUBRO: TStringField
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
      Required = True
      Size = 3
    end
    object QListArtSUBRUBRO: TStringField
      FieldName = 'SUBRUBRO'
      Origin = 'SUBRUBRO'
      Required = True
      Size = 5
    end
    object QListArtCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object QListArtCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
      Required = True
    end
    object QListArtCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
      Required = True
    end
    object QListArtCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
      Required = True
    end
    object QListArtIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
      Required = True
    end
    object QListArtRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
    end
    object QListArtPRECIO_GRAVADO: TFloatField
      FieldName = 'PRECIO_GRAVADO'
      Origin = 'PRECIO_GRAVADO'
    end
    object QListArtIVA_IMPORTE: TFloatField
      FieldName = 'IVA_IMPORTE'
      Origin = 'IVA_IMPORTE'
      Required = True
    end
    object QListArtPRECIO_EXENTO: TFloatField
      FieldName = 'PRECIO_EXENTO'
      Origin = 'PRECIO_EXENTO'
    end
    object QListArtPRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
    end
    object QListArtDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      Required = True
    end
    object QListArtREC_APLICAR: TFloatField
      FieldName = 'REC_APLICAR'
      Origin = 'REC_APLICAR'
      Required = True
    end
    object QListArtFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QListArtMUESTRALISTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRALISTA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QListArtMUESTRAFECHA: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAFECHA'
      Origin = 'FECHA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QListArtMUESTRAPORDEFECTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAPORDEFECTO'
      Origin = 'PORDEFECTO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object QListArtHAYSUBDET: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HAYSUBDET'
      Origin = 'HAYSUBDET'
      ProviderFlags = []
      ReadOnly = True
    end
    object QListArtMUESTRADETALLESTOCK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADETALLESTOCK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object QListArtMUESTRACODIGOBARRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACODIGOBARRA'
      Origin = 'MUESTRACODIGOBARRA'
      ProviderFlags = []
      Size = 50
    end
    object QListArtCODIGOALTERNATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGOALTERNATIVO'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
      ReadOnly = True
    end
    object QListArtMUESTRAACTUALIZAPOREXCEPCION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAACTUALIZAPOREXCEPCION'
      Origin = 'ACTUALIZA_EXCEPCION'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object QListArtCLONADA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLONADA'
      Origin = 'CLONADA'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object QListArtMUESTRACLONDE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACLONDE'
      Origin = 'ID_LISTA_CLONADA'
      ProviderFlags = []
    end
  end
  object QSeries: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select ss.*,fc.nombre as MuestraProveedor,fv.nombre as MuestraCl' +
        'iente,'
      '  rc.nombre as MuestraProveedor_2 from stock_series ss'
      
        'left join fccompcab fc on fc.id_fc=ss.id_cpbte_ingreso and fc.ti' +
        'pocpbte=ss.tipocpbte_ingreso'
      
        'left join fcvtacab fv on fv.id_fc=ss.id_cpbte_egreso and fc.tipo' +
        'cpbte=ss.tipocpbte_egreso'
      
        'left join recepmercacab rc on rc.id_recmer=ss.id_cpbte_ingreso a' +
        'nd rc.tipocpbte=ss.tipocpbte_ingreso'
      'where ss.codigo_stk = :codigo'
      'order by ss.codigoserie desc')
    Left = 312
    Top = 320
    ParamData = <
      item
        Position = 1
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QMovSeries: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select m.*,d.nombre as MuestraDeposito from mov_stock_serie m '
      'left join depositos d on d.id = m.deposito'
      'where m.id_stock_serie = :id'
      'order by  m.fecha desc ,m.id_mov desc'
      '')
    Left = 312
    Top = 368
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QCodigoBarra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.*, p.detalle as MuestraPresentacion from codigobarra c'
      'left join presentacion p on p.id = c.presentacion'
      'where c.codigo_stk = :codigo'
      'order by c.presentacion_cantidad,c.codigobarra asc')
    Left = 488
    Top = 304
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QCodigoBarraID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCodigoBarraCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object QCodigoBarraCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Origin = 'CODIGOBARRA'
      Size = 50
    end
    object QCodigoBarraPRESENTACION: TIntegerField
      FieldName = 'PRESENTACION'
      Origin = 'PRESENTACION'
    end
    object QCodigoBarraPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      Origin = 'PRESENTACION_CANTIDAD'
      Required = True
    end
    object QCodigoBarraMUESTRAPRESENTACION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAPRESENTACION'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 30
    end
  end
  object QStockFotos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select sf.* from stock_fotos sf where sf.codigo=:codigo')
    Left = 312
    Top = 488
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QStockFotosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QStockFotosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QStockFotosFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'FOTO'
      Size = 100
    end
    object QStockFotosPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      Origin = 'POR_DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QListaArtSubDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select sd.* from listaprecioespecialsubdetalle sd'
      'where sd.id_listadetalle = :id')
    Left = 320
    Top = 544
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QListaArtSubDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QListaArtSubDetID_LISTADETALLE: TIntegerField
      FieldName = 'ID_LISTADETALLE'
      Origin = 'ID_LISTADETALLE'
      Required = True
    end
    object QListaArtSubDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QListaArtSubDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QListaArtSubDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
    end
    object QListaArtSubDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
    end
    object QListaArtSubDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
    end
    object QListaArtSubDetRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
    end
    object QListaArtSubDetPRECIO_EXENTO: TFloatField
      FieldName = 'PRECIO_EXENTO'
      Origin = 'PRECIO_EXENTO'
    end
    object QListaArtSubDetPRECIO_GRAVADO: TFloatField
      FieldName = 'PRECIO_GRAVADO'
      Origin = 'PRECIO_GRAVADO'
    end
    object QListaArtSubDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
    end
    object QListaArtSubDetIVA_IMPORTE: TFloatField
      FieldName = 'IVA_IMPORTE'
      Origin = 'IVA_IMPORTE'
    end
    object QListaArtSubDetPRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
    end
    object QListaArtSubDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      Required = True
    end
    object QListaArtSubDetID_LISTA_SECUNDARIA: TIntegerField
      FieldName = 'ID_LISTA_SECUNDARIA'
      Origin = 'ID_LISTA_SECUNDARIA'
      Required = True
    end
  end
  object QTrazables: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.codigo_stk,s.detalle_stk,s.rubro_stk,s.subrubro_stk,'
      '       r.detalle_rubro,sr.detalle_subrubro from stock s'
      'left join rubros r on r.codigo_rubro=s.rubro_stk'
      'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      'where s.control_trazabilidad='#39'S'#39' and s.clase_articulo>0'
      'order by s.detalle_stk')
    Left = 312
    Top = 616
  end
  object QArticulosSeriesTrazab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk,s.detalle_stk,s.control_serie,s.control_traz' +
        'abilidad'
      
        'from stock s where s.control_serie='#39'S'#39' or s.control_trazabilidad' +
        '='#39'S'#39)
    Left = 408
    Top = 624
  end
  object QListaIngBruto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from percepib')
    Left = 640
    Top = 568
  end
  object DSPMovStock: TDataSetProvider
    DataSet = QMovStk
    Options = []
    Left = 488
    Top = 184
  end
  object CDSMovStock: TClientDataSet
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
      end
      item
        DataType = ftString
        Name = 'tipomovimiento'
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
      end
      item
        DataType = ftString
        Name = 'modo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'RTOS'
        ParamType = ptInput
        Size = 1
      end>
    ProviderName = 'DSPMovStock'
    Left = 569
    Top = 192
    object CDSMovStockID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object CDSMovStockCOSTO: TFloatField
      FieldName = 'COSTO'
      Origin = 'COSTO'
    end
    object CDSMovStockFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSMovStockTIPOOPERACION: TStringField
      FieldName = 'TIPOOPERACION'
      Origin = 'TIPOOPERACION'
      Size = 1
    end
    object CDSMovStockTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSMovStockCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovStockNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSMovStockENTRA: TFloatField
      DisplayLabel = 'Entran'
      FieldName = 'ENTRA'
      Origin = 'ENTRA'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSMovStockDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSMovStockSALE: TFloatField
      DisplayLabel = 'Salen'
      FieldName = 'SALE'
      Origin = 'SALE'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSMovStockUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object CDSMovStockID_COMPROB: TIntegerField
      FieldName = 'ID_COMPROB'
      Origin = 'ID_COMPROB'
    end
    object CDSMovStockUNIDADES: TFloatField
      DisplayLabel = 'Unidades'
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
      DisplayFormat = ',0.000;-,0.000;-'
    end
  end
  object spMarcaProveeDefectoFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'MARCAR_PROVEESTOCK_DEFECTO'
    Left = 816
    Top = 16
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
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spAltaCBFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ALTA_CODIGOS_BARRA'
    Left = 816
    Top = 72
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
        Name = 'CODIGOBARRA'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 3
        Name = 'CANTIDAD_POR_BULTO'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end>
  end
  object spRearmarMovFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ARMAR_MOV_STOCK_POR_ARTICULO'
    Left = 928
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = 'I_CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object spCambioPrecioFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDateTime
      end
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDateTime
      end>
    StoredProcName = 'INGRESA_HISTORIAL_PRECIOS'
    Left = 928
    Top = 72
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
        DataType = ftDateTime
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
  object spAsociarListaProveedorFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ASOCIAR_LISTA_PROVEE'
    Left = 936
    Top = 144
    ParamData = <
      item
        Position = 1
        Name = 'CODPROVEEDOR'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 2
        Name = 'CODARTPROVEEDOR'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 3
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object QUltimoCodigoStk: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(s.codigo_stk) as codigo from stock s'
      'where (:prefijo is null) or (s.codigo_stk similar to :prefijo)')
    Left = 1104
    Top = 8
    ParamData = <
      item
        Name = 'PREFIJO'
        DataType = ftFixedChar
        ParamType = ptInput
        Value = Null
      end>
    object QUltimoCodigoStkCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
  end
  object CDSMarca: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 4
      end>
    ProviderName = 'DSPMarca'
    Left = 249
    Top = 680
    object CDSMarcaDESCRIPCION_MARCA: TStringField
      FieldName = 'DESCRIPCION_MARCA'
      Origin = 'DESCRIPCION_MARCA'
      Size = 25
    end
    object CDSMarcaMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object CDSMarcaOBSERVACION_MARCA: TStringField
      FieldName = 'OBSERVACION_MARCA'
      Origin = 'OBSERVACION_MARCA'
      Size = 40
    end
  end
  object DSPMarca: TDataSetProvider
    DataSet = QMarcaFD
    Left = 137
    Top = 680
  end
  object DSPListaUnidad: TDataSetProvider
    DataSet = QListaUnidadFD
    Left = 488
    Top = 120
  end
  object CDSListaUnidad: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPListaUnidad'
    Left = 569
    Top = 120
    object CDSListaUnidadID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSListaUnidadSIGLAS: TStringField
      FieldName = 'SIGLAS'
      Size = 3
    end
    object CDSListaUnidadDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
  end
  object QEnArtProduccion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select d.id_cab,c.codigo,c.detalle,d.cantidad_fisica ,d.codigo_s' +
        'tk from stock_produccion_det d'
      'left join stock_produccion_cab c on c.id=d.id_cab'
      'where d.codigo_stk=:codigo')
    Left = 776
    Top = 568
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
  end
  object DSPEnArtProduccion: TDataSetProvider
    DataSet = QEnArtProduccion
    Left = 864
    Top = 576
  end
  object CDSEnArtProduccion: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 8
      end>
    ProviderName = 'DSPEnArtProduccion'
    Left = 928
    Top = 568
    object CDSEnArtProduccionID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Required = True
    end
    object CDSEnArtProduccionCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      ReadOnly = True
      Size = 8
    end
    object CDSEnArtProduccionDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      ReadOnly = True
      Size = 45
    end
    object CDSEnArtProduccionCANTIDAD_FISICA: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD_FISICA'
    end
    object CDSEnArtProduccionCODIGO_STK: TStringField
      DisplayLabel = 'Codigo Stk'
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
  end
  object DSEnArtProduccion: TDataSource
    DataSet = CDSEnArtProduccion
    Left = 1024
    Top = 560
  end
  object CDSLotes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 8
      end>
    ProviderName = 'DSPLotes'
    Left = 936
    Top = 624
    object CDSLotesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSLotesID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSLotesCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object CDSLotesID_DETALLE_CPBTE: TIntegerField
      FieldName = 'ID_DETALLE_CPBTE'
      Origin = 'ID_DETALLE_CPBTE'
      Required = True
    end
    object CDSLotesLOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 15
    end
    object CDSLotesDESPACHO: TStringField
      DisplayLabel = 'Despacho'
      FieldName = 'DESPACHO'
      Origin = 'DESPACHO'
    end
    object CDSLotesCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object CDSLotesTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSLotesDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object CDSLotesSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
      Required = True
    end
    object CDSLotesFECHA_ENTRADA: TSQLTimeStampField
      DisplayLabel = 'F.de Entrada'
      FieldName = 'FECHA_ENTRADA'
      Origin = 'FECHA_ENTRADA'
    end
    object CDSLotesFECHA_VTO: TSQLTimeStampField
      DisplayLabel = 'Vencimiento'
      FieldName = 'FECHA_VTO'
      Origin = 'FECHA_VTO'
    end
  end
  object DSPLotes: TDataSetProvider
    DataSet = QLotes_
    Options = []
    Left = 864
    Top = 624
  end
  object DSPBuscaPercepIVA: TDataSetProvider
    DataSet = DMBuscadores.QBuscaPercepIva
    Options = []
    Left = 856
    Top = 696
  end
  object CDSBuscaPercepIVA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaPercepIVA'
    Left = 944
    Top = 696
    object CDSBuscaPercepIVACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSBuscaPercepIVADESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
    object CDSBuscaPercepIVATASA: TFloatField
      FieldName = 'TASA'
      DisplayFormat = '0.00'
    end
  end
  object DSPercepIVA: TDataSource
    DataSet = CDSBuscaPercepIVA
    Left = 1056
    Top = 696
  end
  object QTablaPrecioDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TABLA_PRECIOSDET'
      'where id_cab= :id_lista and codigo = :codigo')
    Left = 816
    Top = 144
    ParamData = <
      item
        Name = 'ID_LISTA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTablaPrecioDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTablaPrecioDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
    end
    object QTablaPrecioDetCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object QTablaPrecioDetPRECIO1: TFloatField
      FieldName = 'PRECIO1'
      Origin = 'PRECIO1'
    end
    object QTablaPrecioDetPRECIO2: TFloatField
      FieldName = 'PRECIO2'
      Origin = 'PRECIO2'
    end
  end
  object QTablaPrecioCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TABLA_PRECIOSCAB'
      'where id= :id')
    Left = 816
    Top = 200
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QTablaPrecioCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTablaPrecioCabDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 40
    end
    object QTablaPrecioCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
  end
  object spAMCategorias: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'AM_PLU_CATEGORAS'
    Left = 1032
    Top = 760
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'DETALLE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 3
        Name = 'PARENT'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spABMStockWord: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ABM_STOCK_WEB'
    Left = 904
    Top = 760
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
        Name = 'DETALLE'
        DataType = ftString
        ParamType = ptInput
        Size = 45
      end
      item
        Position = 3
        Name = 'DETALLE_ADICIONAL'
        DataType = ftString
        ParamType = ptInput
        Size = 200
      end
      item
        Position = 4
        Name = 'DESCRIPCION_CORTA'
        DataType = ftMemo
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'DESCRIPCION_LARGA'
        DataType = ftMemo
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'CATEGORIAS'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
  end
  object QVariaciones: TFDQuery
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select v.id,v.codigo,v.variacion,s.detalle_stk  from stock_varia' +
        'ciones v'
      'left join stock s on s.codigo_stk=v.variacion'
      'where v.codigo=:codigo')
    Left = 704
    Top = 849
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
  end
  object CDSVariaciones: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 8
      end>
    ProviderName = 'DSPVariaciones'
    Left = 920
    Top = 848
    object CDSVariacionesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSVariacionesCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 8
    end
    object CDSVariacionesVARIACION: TStringField
      FieldName = 'VARIACION'
      Required = True
      Size = 8
    end
    object CDSVariacionesDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      ReadOnly = True
      Size = 45
    end
  end
  object DSPVariaciones: TDataSetProvider
    DataSet = QVariaciones
    Left = 808
    Top = 848
  end
  object DSVariaciones: TDataSource
    DataSet = CDSVariaciones
    Left = 1040
    Top = 848
  end
  object QBuscadorArticulosWeb: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk,s.detalle_stk  from  stock s where s.publica' +
        'r_web='#39'S'#39' and s.articulo_variable='#39'V'#39)
    Left = 1104
    Top = 208
    object QBuscadorArticulosWebCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QBuscadorArticulosWebDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
  end
end
