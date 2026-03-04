object DatosPresupuesto: TDatosPresupuesto
  OnDestroy = DataModuleDestroy
  Height = 793
  Width = 981
  object DSPPresuCab: TDataSetProvider
    DataSet = DMMain_FD.QPresuCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 232
    Top = 21
  end
  object DSPCondVenta: TDataSetProvider
    DataSet = DMMain_FD.QCondVenta
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 163
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMMain_FD.QSucursal
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 114
  end
  object DSPPresuDet: TDataSetProvider
    DataSet = DMMain_FD.QPresuDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 232
    Top = 83
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = DMMain_FD.QEmpresa
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 217
  end
  object DSPImpuestos: TDataSetProvider
    DataSet = DMMain_FD.QImpuestoPresu
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 232
    Top = 208
  end
  object DSPInscripcion: TDataSetProvider
    DataSet = DMMain_FD.QInscripcion
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 65
  end
  object DSPIva: TDataSetProvider
    DataSet = DMMain_FD.QIva
    Options = []
    Left = 232
    Top = 146
  end
  object DSPLdr: TDataSetProvider
    DataSet = DMMain_FD.QLDR
    Options = []
    Left = 32
    Top = 270
  end
  object DSPStock: TDataSetProvider
    DataSet = DMMain_FD.QStock
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 315
  end
  object DSPDeposito: TDataSetProvider
    DataSet = DMMain_FD.QDeposito
    Options = []
    Left = 232
    Top = 333
  end
  object ibg_PreCab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_PRESUCAB'
    SystemGenerators = False
    Left = 472
    Top = 8
  end
  object ibg_PreDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_PRESUDET'
    SystemGenerators = False
    Left = 464
    Top = 64
  end
  object ibg_PreImp: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_PRESUIMP'
    SystemGenerators = False
    Left = 464
    Top = 144
  end
  object DSListaPrecios: TDataSource
    DataSet = CDSListaPrecios
    Left = 760
    Top = 192
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
    Left = 328
    Top = 332
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
  object DSImpuestos: TDataSource
    DataSet = CDSImpuestos
    Left = 424
    Top = 194
  end
  object CDSBuscaDeposito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaDeposito'
    Left = 117
    Top = 368
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
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 365
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = []
    Left = 32
    Top = 522
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 117
    Top = 525
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
    object CDSBuscaSucursalDIRECCION: TStringField
      FieldName = 'DIRECCION'
    end
    object CDSBuscaSucursalLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
    end
    object CDSBuscaSucursalRECARGO: TFloatField
      FieldName = 'RECARGO'
    end
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
    Left = 117
    Top = 67
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
  object CDSCondCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCondCompra'
    Left = 133
    Top = 17
    object CDSCondCompraCODIGOPROVEE: TStringField
      FieldName = 'CODIGOPROVEE'
      Required = True
      Size = 6
    end
    object CDSCondCompraCODIGOPAGO: TIntegerField
      FieldName = 'CODIGOPAGO'
      Required = True
    end
    object CDSCondCompraDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object CDSCondCompraDETALLE: TStringField
      FieldName = 'DETALLE'
      Required = True
    end
    object CDSCondCompraDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object CDSCondCompraDESCUENTO_FPAGO: TFloatField
      FieldName = 'DESCUENTO_FPAGO'
    end
  end
  object DSPCondCompra: TDataSetProvider
    DataSet = DMMain_FD.QCondCompra
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 14
  end
  object DSPPersonal: TDataSetProvider
    DataSet = DMMain_FD.QPersonal
    Options = []
    Left = 664
    Top = 432
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
    Left = 736
    Top = 432
    object CDSPersonalNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object CDSPersonalCOMISION: TFloatField
      FieldName = 'COMISION'
      Required = True
    end
  end
  object DSPBuscaVendedor: TDataSetProvider
    DataSet = DMBuscadores.QBuscaVendedores
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 412
  end
  object CDSBuscaVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaVendedor'
    Left = 117
    Top = 416
    object CDSBuscaVendedorCODIGO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Codigo'
      DisplayWidth = 16
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSBuscaVendedorNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 60
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSBuscaVendedorCOMISION: TFloatField
      DisplayLabel = '% Comis.'
      FieldName = 'COMISION'
      Required = True
      DisplayFormat = '0.00'
    end
  end
  object DSPBuscaLdr: TDataSetProvider
    DataSet = DMBuscadores.QBuscaLdr
    Options = []
    Left = 32
    Top = 468
  end
  object CDSBuscaLdr: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaLdr'
    Left = 117
    Top = 471
    object CDSBuscaLdrCODIGO_LDR: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 16
      FieldName = 'CODIGO_LDR'
      Required = True
    end
    object CDSBuscaLdrNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 70
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSBuscaLdrDIRECCION: TStringField
      DisplayLabel = 'Direccion'
      DisplayWidth = 70
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSBuscaLdrCODIGO_CLIENTE: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGO_CLIENTE'
      Required = True
      Visible = False
      Size = 6
    end
    object CDSBuscaLdrCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Visible = False
      Size = 8
    end
  end
  object DSPBuscaCondVenta: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCondVentaCliente
    Options = []
    Left = 32
    Top = 576
  end
  object CDSBuscaCondVenta: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaCondVenta'
    Left = 117
    Top = 579
    object CDSBuscaCondVentaCODIGOPAGO: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGOPAGO'
      Required = True
    end
    object CDSBuscaCondVentaDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 25
      FieldName = 'DETALLE'
      Required = True
    end
    object CDSBuscaCondVentaDESCUENTO: TFloatField
      DisplayLabel = '% Dscto.'
      FieldName = 'DESCUENTO'
      DisplayFormat = ',0.00'
    end
    object CDSBuscaCondVentaCODIGOCLIENTE: TStringField
      FieldName = 'CODIGOCLIENTE'
      Required = True
      Visible = False
      Size = 6
    end
    object CDSBuscaCondVentaPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
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
    Left = 117
    Top = 117
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
  object CDSCondVenta: TClientDataSet
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
    ProviderName = 'DSPCondVenta'
    Left = 117
    Top = 167
    object CDSCondVentaCODIGOCLIENTE: TStringField
      FieldName = 'CODIGOCLIENTE'
      Required = True
      Size = 6
    end
    object CDSCondVentaCODIGOPAGO: TIntegerField
      FieldName = 'CODIGOPAGO'
      Required = True
    end
    object CDSCondVentaDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object CDSCondVentaPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCondVentaDETALLE: TStringField
      FieldName = 'DETALLE'
      Required = True
    end
    object CDSCondVentaDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object CDSCondVentaDESCUENTO_FPAGO: TFloatField
      FieldName = 'DESCUENTO_FPAGO'
    end
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    Left = 117
    Top = 217
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
    object CDSEmpresaCBU: TStringField
      FieldName = 'CBU'
      Size = 22
    end
    object CDSEmpresaID_CPOSTAL: TIntegerField
      FieldName = 'ID_CPOSTAL'
    end
    object CDSEmpresaCOD_ACTIVIDAD: TStringField
      FieldName = 'COD_ACTIVIDAD'
      Size = 10
    end
    object CDSEmpresaNOMBRE_FANTASIA: TStringField
      FieldName = 'NOMBRE_FANTASIA'
      Size = 50
    end
    object CDSEmpresaTASA_RET_IIBB: TFloatField
      FieldName = 'TASA_RET_IIBB'
      Required = True
    end
    object CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField
      FieldName = 'FECHA_INICIO_ACTI'
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
  object CDSImpuestos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPImpuestos'
    OnNewRecord = CDSImpuestosNewRecord
    Left = 328
    Top = 208
    object CDSImpuestosID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      Origin = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSImpuestosID_PRESCAB: TIntegerField
      FieldName = 'ID_PRESCAB'
      Origin = 'ID_PRESCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSImpuestosCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      Origin = 'CODIGO_GRAVAMEN'
    end
    object CDSImpuestosDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSImpuestosNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
    end
    object CDSImpuestosTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object CDSImpuestosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
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
    Left = 117
    Top = 319
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
      Size = 200
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
    object CDSStockCOSTO_EXENTO_STK: TFloatField
      FieldName = 'COSTO_EXENTO_STK'
      Origin = 'COSTO_EXENTO_STK'
      Required = True
    end
    object CDSStockCOSTO_GRAVADO_STK: TFloatField
      FieldName = 'COSTO_GRAVADO_STK'
      Origin = 'COSTO_GRAVADO_STK'
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
    object CDSStockMUESTRATASAPORCENTAJE: TFloatField
      FieldName = 'MUESTRATASAPORCENTAJE'
      Origin = 'TASA'
      ProviderFlags = []
    end
    object CDSStockMUESTRASOBRETASA: TStringField
      FieldName = 'MUESTRASOBRETASA'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 15
    end
    object CDSStockMUESTRASOBRETASAPROCENTAJE: TFloatField
      FieldName = 'MUESTRASOBRETASAPROCENTAJE'
      Origin = 'TASA'
      ProviderFlags = []
    end
    object CDSStockMUESTRATASAIB: TFloatField
      FieldName = 'MUESTRATASAIB'
      Origin = 'TASA'
      ProviderFlags = []
    end
    object CDSStockMUESTRATABLAPRECIODETALLE: TStringField
      FieldName = 'MUESTRATABLAPRECIODETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 40
    end
    object CDSStockMUESTRATABLAPRECIO1: TFloatField
      FieldName = 'MUESTRATABLAPRECIO1'
      Origin = 'PRECIO1'
      ProviderFlags = []
    end
    object CDSStockMUESTRATABLAPRECIO2: TFloatField
      FieldName = 'MUESTRATABLAPRECIO2'
      Origin = 'PRECIO1'
      ProviderFlags = []
    end
    object CDSStockPORCENTAJE_SOBRECOSTO: TFloatField
      FieldName = 'PORCENTAJE_SOBRECOSTO'
      Origin = 'PORCENTAJE_SOBRECOSTO'
    end
    object CDSStockPERCIBE_IVA: TStringField
      FieldName = 'PERCIBE_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockID_TASA_PERCEP_IVA: TIntegerField
      FieldName = 'ID_TASA_PERCEP_IVA'
      Required = True
    end
    object CDSStockAPLICA_TASA_DIF: TStringField
      FieldName = 'APLICA_TASA_DIF'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object CDSPresuCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPresuCab'
    AfterEdit = CDSPresuCabAfterEdit
    BeforePost = CDSPresuCabBeforePost
    OnNewRecord = CDSPresuCabNewRecord
    OnReconcileError = CDSPresuCabReconcileError
    Left = 328
    Top = 21
    object CDSPresuCabID_PR: TIntegerField
      FieldName = 'ID_PR'
      Origin = 'ID_PR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPresuCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSPresuCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSPresuCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSPresuCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      OnSetText = CDSPresuCabCODIGOSetText
      Size = 6
    end
    object CDSPresuCabLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      Size = 1
    end
    object CDSPresuCabSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Origin = 'SUCFAC'
      OnSetText = CDSPresuCabSUCFACSetText
      Size = 4
    end
    object CDSPresuCabNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Origin = 'NUMEROFAC'
      OnSetText = CDSPresuCabNUMEROFACSetText
      Size = 8
    end
    object CDSPresuCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSPresuCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSPresuCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object CDSPresuCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object CDSPresuCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object CDSPresuCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
    end
    object CDSPresuCabCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSPresuCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
      Origin = 'CONDICIONVTA'
      OnSetText = CDSPresuCabCONDICIONVTASetText
    end
    object CDSPresuCabANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Size = 1
    end
    object CDSPresuCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
      Origin = 'LISTAPRECIO'
    end
    object CDSPresuCabNRORTO: TStringField
      FieldName = 'NRORTO'
      Origin = 'NRORTO'
    end
    object CDSPresuCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Origin = 'IMPRESO'
      Size = 1
    end
    object CDSPresuCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 60
    end
    object CDSPresuCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      Size = 60
    end
    object CDSPresuCabCPTE_MANUAL: TStringField
      FieldName = 'CPTE_MANUAL'
      Origin = 'CPTE_MANUAL'
      Size = 1
    end
    object CDSPresuCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      OnSetText = CDSPresuCabSUCURSALSetText
    end
    object CDSPresuCabZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object CDSPresuCabID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Origin = 'ID_FACTURA'
      Required = True
    end
    object CDSPresuCabFACTURANRO: TStringField
      FieldName = 'FACTURANRO'
      Origin = 'FACTURANRO'
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object CDSPresuCabLDR: TIntegerField
      FieldName = 'LDR'
      Origin = 'LDR'
      OnSetText = CDSPresuCabLDRSetText
    end
    object CDSPresuCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      OnSetText = CDSPresuCabDEPOSITOSetText
    end
    object CDSPresuCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object CDSPresuCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      OnChange = CDSPresuCabDESGLOZAIVAChange
      Size = 1
    end
    object CDSPresuCabNROENTREGA: TIntegerField
      FieldName = 'NROENTREGA'
      Origin = 'NROENTREGA'
    end
    object CDSPresuCabVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      OnSetText = CDSPresuCabVENDEDORSetText
      Size = 6
    end
    object CDSPresuCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object CDSPresuCabNOTAS: TMemoField
      FieldName = 'NOTAS'
      Origin = 'NOTAS'
      BlobType = ftMemo
    end
    object CDSPresuCabDIAS_VIGENCIA_PRESUPESTO: TIntegerField
      FieldName = 'DIAS_VIGENCIA_PRESUPESTO'
      Origin = 'DIAS_VIGENCIA_PRESUPESTO'
      Required = True
      OnSetText = CDSPresuCabDIAS_VIGENCIA_PRESUPESTOSetText
    end
    object CDSPresuCabMUESTRACONDVENTA: TStringField
      FieldName = 'MUESTRACONDVENTA'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object CDSPresuCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSPresuCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSPresuCabMUESTRALDR: TStringField
      FieldName = 'MUESTRALDR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object CDSPresuCabMUESTRAIVA: TStringField
      FieldName = 'MUESTRAIVA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 15
    end
    object CDSPresuCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object CDSPresuCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
      OnSetText = CDSPresuCabID_TIPOCOMPROBANTESetText
    end
    object CDSPresuCabMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object CDSPresuCabMUESTRANOTAVENTA_ID: TIntegerField
      FieldName = 'MUESTRANOTAVENTA_ID'
      Origin = 'ID'
      ProviderFlags = []
    end
    object CDSPresuCabMUESTRANOTAVENTA_NRO: TStringField
      FieldName = 'MUESTRANOTAVENTA_NRO'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 8
    end
    object CDSPresuCabMONEDA_CPBTE: TIntegerField
      FieldName = 'MONEDA_CPBTE'
      Origin = 'MONEDA_CPBTE'
    end
    object CDSPresuCabMUESTRAMONEDACPBTE: TStringField
      FieldName = 'MUESTRAMONEDACPBTE'
      Origin = 'MONEDA'
      ProviderFlags = []
      Size = 15
    end
    object CDSPresuCabMUESTRASIGNOMONEDACPBTE: TStringField
      FieldName = 'MUESTRASIGNOMONEDACPBTE'
      Origin = 'SIGNO'
      ProviderFlags = []
      Size = 5
    end
    object CDSPresuCabPERCIB_IB: TStringField
      FieldName = 'PERCIB_IB'
      Origin = 'PERCIB_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSPresuCabSUB_NRO: TStringField
      FieldName = 'SUB_NRO'
      Origin = 'SUB_NRO'
      Required = True
      Size = 2
    end
    object CDSPresuCabMUESTRAFACTURA: TStringField
      FieldName = 'MUESTRAFACTURA'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSPresuCabMUESTRAREMITO: TStringField
      FieldName = 'MUESTRAREMITO'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSPresuCabN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
      Origin = 'N_OPERACION2'
    end
    object CDSPresuCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      Origin = 'NETOGRAV1'
      OnGetText = CDSPresuCabNETOGRAV1GetText
    end
    object CDSPresuCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      Origin = 'NETOGRAV2'
      OnGetText = CDSPresuCabNETOGRAV2GetText
    end
    object CDSPresuCabDSTO: TFloatField
      FieldName = 'DSTO'
      Origin = 'DSTO'
      OnSetText = CDSPresuCabDSTOSetText
    end
    object CDSPresuCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      Origin = 'DSTOIMPORTE'
      OnGetText = CDSPresuCabDSTOIMPORTEGetText
      OnSetText = CDSPresuCabDSTOIMPORTESetText
    end
    object CDSPresuCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      Origin = 'NETOEXEN1'
    end
    object CDSPresuCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      Origin = 'NETOEXEN2'
    end
    object CDSPresuCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object CDSPresuCabDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
    end
    object CDSPresuCabCOMISIONVENDEDOR: TFloatField
      FieldName = 'COMISIONVENDEDOR'
      Origin = 'COMISIONVENDEDOR'
    end
    object CDSPresuCabMONEDA_CPBTE_COTIZACION: TFloatField
      FieldName = 'MONEDA_CPBTE_COTIZACION'
      Origin = 'MONEDA_CPBTE_COTIZACION'
    end
    object CDSPresuCabPERCEPCION_IB_TASA: TFloatField
      FieldName = 'PERCEPCION_IB_TASA'
      Origin = 'PERCEPCION_IB_TASA'
      Required = True
    end
    object CDSPresuCabPERCECEPION_IB_IMPORTE: TFloatField
      FieldName = 'PERCECEPION_IB_IMPORTE'
      Origin = 'PERCECEPION_IB_IMPORTE'
      Required = True
    end
    object CDSPresuCabPERCECPION_IB_BASEIMPONIBLE: TFloatField
      FieldName = 'PERCECPION_IB_BASEIMPONIBLE'
      Origin = 'PERCECPION_IB_BASEIMPONIBLE'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSPresuCabREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 50
    end
    object CDSPresuCabID_PRESU_NEXT: TIntegerField
      FieldName = 'ID_PRESU_NEXT'
      Origin = 'ID_PRESU_NEXT'
    end
    object CDSPresuCabID_PRESU_PREV: TIntegerField
      FieldName = 'ID_PRESU_PREV'
      Origin = 'ID_PRESU_PREV'
    end
    object CDSPresuCabNRO_PRE_NEXT: TStringField
      FieldName = 'NRO_PRE_NEXT'
      Origin = 'NRO_PRE_NEXT'
      Size = 13
    end
    object CDSPresuCabNRO_PRE_PREV: TStringField
      FieldName = 'NRO_PRE_PREV'
      Origin = 'NRO_PRE_PREV'
      Size = 13
    end
    object CDSPresuCabPLAZO_ENTREGA: TIntegerField
      FieldName = 'PLAZO_ENTREGA'
      Origin = 'PLAZO_ENTREGA'
      Required = True
      OnSetText = CDSPresuCabPLAZO_ENTREGASetText
    end
    object CDSPresuCabCUMPLIO_TECNICA: TStringField
      FieldName = 'CUMPLIO_TECNICA'
      Origin = 'CUMPLIO_TECNICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSPresuCabCUMPLIO_FINANCIERA: TStringField
      FieldName = 'CUMPLIO_FINANCIERA'
      Origin = 'CUMPLIO_FINANCIERA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSPresuCabNRO_ORDEN_COMP: TStringField
      FieldName = 'NRO_ORDEN_COMP'
      Origin = 'NRO_ORDEN_COMP'
    end
    object CDSPresuCabID_OBRA: TIntegerField
      FieldName = 'ID_OBRA'
      Origin = 'ID_OBRA'
      OnSetText = CDSPresuCabID_OBRASetText
    end
    object CDSPresuCabMUESTRAOPRODUCCION: TStringField
      FieldName = 'MUESTRAOPRODUCCION'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSPresuCabID_OPRODUCC: TIntegerField
      FieldName = 'ID_OPRODUCC'
      Origin = 'ID'
      ProviderFlags = []
    end
    object CDSPresuCabID_FACT: TIntegerField
      FieldName = 'ID_FACT'
      Origin = 'ID_FC'
      ProviderFlags = []
    end
    object CDSPresuCabID_RTO: TIntegerField
      FieldName = 'ID_RTO'
      Origin = 'ID_RTO'
      ProviderFlags = []
    end
    object CDSPresuCabFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object CDSPresuCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object CDSPresuCabFECHAVTO_PRESUPUESTO: TSQLTimeStampField
      FieldName = 'FECHAVTO_PRESUPUESTO'
      Origin = 'FECHAVTO_PRESUPUESTO'
    end
    object CDSPresuCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object CDSPresuCabFECHA_TECNICA: TSQLTimeStampField
      FieldName = 'FECHA_TECNICA'
      Origin = 'FECHA_TECNICA'
    end
    object CDSPresuCabFECHA_FINANCIERA: TSQLTimeStampField
      FieldName = 'FECHA_FINANCIERA'
      Origin = 'FECHA_FINANCIERA'
    end
    object CDSPresuCabFECHA_ENTREGA: TSQLTimeStampField
      FieldName = 'FECHA_ENTREGA'
      Origin = 'FECHA_ENTREGA'
    end
    object CDSPresuCabFECHA_OC: TSQLTimeStampField
      FieldName = 'FECHA_OC'
      Origin = 'FECHA_OC'
    end
    object CDSPresuCabFECHA_REVISION: TSQLTimeStampField
      FieldName = 'FECHA_REVISION'
      Origin = 'FECHA_REVISION'
    end
    object CDSPresuCabID_OBRA_SECTOR: TIntegerField
      FieldName = 'ID_OBRA_SECTOR'
      Origin = 'ID_OBRA_SECTOR'
    end
    object CDSPresuCabNROCPBTE2: TStringField
      FieldName = 'NROCPBTE2'
      Origin = 'NROCPBTE2'
      Required = True
      Size = 15
    end
    object CDSPresuCabTIPO_OBRA: TIntegerField
      FieldName = 'TIPO_OBRA'
      Origin = 'TIPO_OBRA'
      Required = True
    end
    object CDSPresuCabFECHA_ENTREGA_2: TSQLTimeStampField
      FieldName = 'FECHA_ENTREGA_2'
      Origin = 'FECHA_ENTREGA_2'
    end
    object CDSPresuCabTIENE_PLANO: TStringField
      FieldName = 'TIENE_PLANO'
      Origin = 'TIENE_PLANO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSPresuCabID_FACTURA_ANTICIPO: TIntegerField
      FieldName = 'ID_FACTURA_ANTICIPO'
      Origin = 'ID_FACTURA_ANTICIPO'
      Required = True
    end
    object CDSPresuCabMUESTRAFACTURAANTICIPO: TStringField
      FieldName = 'MUESTRAFACTURAANTICIPO'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      EditMask = 'A-0000-00000000;0'
      Size = 13
    end
    object CDSPresuCabMUESTRAOBRA: TStringField
      FieldName = 'MUESTRAOBRA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 100
    end
    object CDSPresuCabMUESTRACONTACO: TStringField
      FieldName = 'MUESTRACONTACO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 150
    end
    object CDSPresuCabMUESTRACORREOCONTACTO: TStringField
      FieldName = 'MUESTRACORREOCONTACTO'
      Origin = 'EMAIL'
      ProviderFlags = []
      Size = 100
    end
    object CDSPresuCabPARA_ACOPIO: TStringField
      FieldName = 'PARA_ACOPIO'
      Origin = 'PARA_ACOPIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSPresuCabMUESTRADIRECCIONSUC: TStringField
      FieldName = 'MUESTRADIRECCIONSUC'
      Origin = 'DIRECCION'
      ProviderFlags = []
    end
    object CDSPresuCabMUESTRARAZONSSUC: TStringField
      FieldName = 'MUESTRARAZONSSUC'
      Origin = 'RAZONSOCIAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSPresuCabMUESTRALOCALIDADSUC: TStringField
      FieldName = 'MUESTRALOCALIDADSUC'
      Origin = 'LOCALIDAD'
      ProviderFlags = []
    end
    object CDSPresuCabNETO_ACUMULADO: TFloatField
      FieldName = 'NETO_ACUMULADO'
      Origin = 'NETO_ACUMULADO'
      Required = True
    end
    object CDSPresuCabMARGEN_GENERAL: TFloatField
      FieldName = 'MARGEN_GENERAL'
      Origin = 'MARGEN_GENERAL'
      Required = True
      DisplayFormat = '% ,0.00'
    end
    object CDSPresuCabMUESTRALDRDIRECCION: TStringField
      FieldName = 'MUESTRALDRDIRECCION'
      Origin = 'DIRECCION'
      ProviderFlags = []
      Size = 35
    end
    object CDSPresuCabMUESTRANOMBREUSUARIOREAL: TStringField
      FieldName = 'MUESTRANOMBREUSUARIOREAL'
      Origin = 'REAL_NAME'
      ProviderFlags = []
      Size = 40
    end
    object CDSPresuCabPERCIBE_IVA: TStringField
      FieldName = 'PERCIBE_IVA'
      Origin = 'PERCIBE_IVA'
      FixedChar = True
      Size = 1
    end
    object CDSPresuCabA_COBRAR: TStringField
      FieldName = 'A_COBRAR'
      Origin = 'A_COBRAR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSPresuCabMINIMO_PERC_IVA: TFloatField
      FieldName = 'MINIMO_PERC_IVA'
      Origin = 'MINIMO_PERC_IVA'
      Required = True
    end
  end
  object CDSPresuDet: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_CABPRES'
        DataType = ftInteger
      end
      item
        Name = 'TIPOCPBTE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CLASECPBTE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'NROCPBTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'RENGLON'
        DataType = ftFloat
      end
      item
        Name = 'CODIGOARTICULO'
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
        Name = 'DESGLOZAIVA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESCUENTO'
        DataType = ftFloat
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
        Name = 'UNITARIO_GRAVADO'
        DataType = ftFloat
      end
      item
        Name = 'IVA_UNITARIO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'UNITARIO_EXENTO'
        DataType = ftFloat
      end
      item
        Name = 'UNITARIO_TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_EXENTO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_GRAVADO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'IVA_TOTAL'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'IVA_TASA'
        DataType = ftFloat
      end
      item
        Name = 'TIPOIVA_TASA'
        DataType = ftInteger
      end
      item
        Name = 'IVA_SOBRETASA'
        DataType = ftFloat
      end
      item
        Name = 'TIPOIVA_SOBRETASA'
        DataType = ftInteger
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
      end
      item
        Name = 'DEPOSITO'
        DataType = ftInteger
      end
      item
        Name = 'CALCULA_SOBRETASA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MODO_GRAVAMEN'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MARGEN'
        DataType = ftFloat
      end
      item
        Name = 'AFECTA_STOCK'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_MONEDA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'COTIZACION'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'ACEPTADO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NOTAS'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CPBTESALIDA_ID'
        DataType = ftInteger
      end
      item
        Name = 'CPBTESALIDA_TIPO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CPBTESALIDA_CLASE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CPBTESALIDA_NROCPBTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'TIPOIB_TASA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'IB_TASA'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'GRAVADO_IB'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ITEM_NRO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'MUESTRASIGNO'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'MUESTRACODALTERNATIVO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MUESTRADEPRODUCC'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ITEMCANTIDAD'
        DataType = ftFloat
      end
      item
        Name = 'ITEMGRAVADO'
        DataType = ftFloat
      end
      item
        Name = 'ITEMEXENTO'
        DataType = ftFloat
      end
      item
        Name = 'ITEMIVA'
        DataType = ftFloat
      end
      item
        Name = 'ITEMTOTAL'
        DataType = ftFloat
      end
      item
        Name = 'ITMEDETALLE'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'CANTIDADTOTAL'
        DataType = ftFloat
      end
      item
        Name = 'ESPECIFICACION'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'FECHAVTA'
        DataType = ftTimeStamp
      end
      item
        Name = 'PERCIBE_IVA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TASA_PERCEP_IVA'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'ID_TASA_PERCEPCION_IVA'
        DataType = ftInteger
      end
      item
        Name = 'PERCEPCION_IVA_DIFERENCIAL'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MUESTRAPRODUCIDOS'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'CDSPresuDetIndex1'
        Fields = 'ITEM_NRO'
      end>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPPresuDet'
    StoreDefs = True
    BeforeEdit = CDSPresuDetBeforeEdit
    BeforePost = CDSPresuDetBeforePost
    AfterPost = CDSPresuDetAfterPost
    BeforeDelete = CDSPresuDetBeforeDelete
    AfterDelete = CDSPresuDetAfterPost
    AfterScroll = CDSPresuDetAfterScroll
    OnCalcFields = CDSPresuDetCalcFields
    OnNewRecord = CDSPresuDetNewRecord
    Left = 328
    Top = 83
    object CDSPresuDetID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object CDSPresuDetID_CABPRES: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CABPRES'
      Origin = 'ID_CABPRES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object CDSPresuDetCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 50
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      OnGetText = CDSPresuDetCODIGOARTICULOGetText
      OnSetText = CDSPresuDetCODIGOARTICULOSetText
      EditMask = 'cccccccccccccccccccccccccccccccccccccccccccccccccc;0; '
      Size = 8
    end
    object CDSPresuDetDETALLE: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 45
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSPresuDetUNIDAD: TStringField
      DisplayLabel = 'Uni.'
      DisplayWidth = 3
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object CDSPresuDetTIPOCPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Visible = False
      Size = 2
    end
    object CDSPresuDetNROCPBTE: TStringField
      DisplayWidth = 13
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Visible = False
      Size = 13
    end
    object CDSPresuDetMODO_GRAVAMEN: TStringField
      DisplayWidth = 1
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSPresuDetAFECTA_STOCK: TStringField
      DisplayWidth = 1
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Visible = False
      Size = 1
    end
    object CDSPresuDetCLASECPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Visible = False
      Size = 2
    end
    object CDSPresuDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Size = 1
    end
    object CDSPresuDetTIPOIVA_TASA: TIntegerField
      DisplayLabel = 'Iva'
      FieldName = 'TIPOIVA_TASA'
      Origin = 'TIPOIVA_TASA'
    end
    object CDSPresuDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Origin = 'TIPOIVA_SOBRETASA'
    end
    object CDSPresuDetSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSPresuDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object CDSPresuDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object CDSPresuDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
      Required = True
    end
    object CDSPresuDetACEPTADO: TStringField
      DisplayLabel = 'Vb'
      FieldName = 'ACEPTADO'
      Origin = 'ACEPTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSPresuDetNOTAS: TStringField
      FieldName = 'NOTAS'
      Origin = 'NOTAS'
      Size = 100
    end
    object CDSPresuDetCPBTESALIDA_ID: TIntegerField
      FieldName = 'CPBTESALIDA_ID'
      Origin = 'CPBTESALIDA_ID'
    end
    object CDSPresuDetCPBTESALIDA_TIPO: TStringField
      FieldName = 'CPBTESALIDA_TIPO'
      Origin = 'CPBTESALIDA_TIPO'
      FixedChar = True
      Size = 2
    end
    object CDSPresuDetCPBTESALIDA_CLASE: TStringField
      FieldName = 'CPBTESALIDA_CLASE'
      Origin = 'CPBTESALIDA_CLASE'
      FixedChar = True
      Size = 2
    end
    object CDSPresuDetCPBTESALIDA_NROCPBTE: TStringField
      FieldName = 'CPBTESALIDA_NROCPBTE'
      Origin = 'CPBTESALIDA_NROCPBTE'
      Size = 13
    end
    object CDSPresuDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSPresuDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSPresuDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSPresuDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
    end
    object CDSPresuDetIVA_UNITARIO: TFloatField
      FieldName = 'IVA_UNITARIO'
      Origin = 'IVA_UNITARIO'
      Required = True
    end
    object CDSPresuDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
    end
    object CDSPresuDetUNITARIO_TOTAL: TFloatField
      DisplayLabel = 'Unitario'
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
      OnGetText = CDSPresuDetUNITARIO_TOTALGetText
      OnSetText = CDSPresuDetUNITARIO_TOTALSetText
      DisplayFormat = ',0.00'
    end
    object CDSPresuDetMUESTRASIGNO: TStringField
      FieldName = 'MUESTRASIGNO'
      Origin = 'SIGNO'
      ProviderFlags = []
      Size = 5
    end
    object CDSPresuDetTIPOIB_TASA: TIntegerField
      FieldName = 'TIPOIB_TASA'
      Origin = 'TIPOIB_TASA'
      Required = True
    end
    object CDSPresuDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Origin = 'GRAVADO_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSPresuDetMUESTRACODALTERNATIVO: TStringField
      FieldName = 'MUESTRACODALTERNATIVO'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
    end
    object CDSPresuDetDETALLE_ADICIONAL: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Origin = 'DETALLE_ADICIONAL'
      Size = 300
    end
    object CDSPresuDetITEM_NRO: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM_NRO'
      Origin = 'ITEM_NRO'
      Required = True
    end
    object CDSPresuDetMUESTRAITEM: TIntegerField
      DisplayLabel = 'Itm'
      FieldKind = fkInternalCalc
      FieldName = 'MUESTRAITEM'
      ProviderFlags = []
    end
    object CDSPresuDetMUESTRA_UNIT_NETO: TFloatField
      DisplayLabel = 'Uni.Neto'
      FieldKind = fkInternalCalc
      FieldName = 'MUESTRA_UNIT_NETO'
      ProviderFlags = []
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPresuDetCANTIDAD: TFloatField
      DisplayLabel = 'Cant.'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      OnSetText = CDSPresuDetCANTIDADSetText
    end
    object CDSPresuDetTOTAL_EXENTO: TFloatField
      FieldName = 'TOTAL_EXENTO'
      Origin = 'TOTAL_EXENTO'
      Required = True
    end
    object CDSPresuDetTOTAL_GRAVADO: TFloatField
      FieldName = 'TOTAL_GRAVADO'
      Origin = 'TOTAL_GRAVADO'
      Required = True
    end
    object CDSPresuDetIVA_TOTAL: TFloatField
      FieldName = 'IVA_TOTAL'
      Origin = 'IVA_TOTAL'
      Required = True
    end
    object CDSPresuDetIVA_TASA: TFloatField
      DisplayLabel = 'Iva'
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
      OnSetText = CDSPresuDetIVA_TASASetText
    end
    object CDSPresuDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
      Origin = 'IVA_SOBRETASA'
    end
    object CDSPresuDetDESCUENTO: TFloatField
      DisplayLabel = 'Dscto.'
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      OnSetText = CDSPresuDetDESCUENTOSetText
    end
    object CDSPresuDetTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      OnGetText = CDSPresuDetTOTALGetText
    end
    object CDSPresuDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      Required = True
      DisplayFormat = ',0.000'
    end
    object CDSPresuDetRENGLON: TFloatField
      DisplayLabel = '#'
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
    end
    object CDSPresuDetMARGEN: TFloatField
      DisplayLabel = 'Margen'
      FieldName = 'MARGEN'
      Origin = 'MARGEN'
      DisplayFormat = '0.00'
    end
    object CDSPresuDetIB_TASA: TFloatField
      FieldName = 'IB_TASA'
      Origin = 'IB_TASA'
      Required = True
    end
    object CDSPresuDetMUESTRADEPRODUCC: TStringField
      FieldName = 'MUESTRADEPRODUCC'
      Origin = 'DEPRODUCCION'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CDSPresuDetITEMCANTIDAD: TFloatField
      FieldName = 'ITEMCANTIDAD'
      Origin = 'ITEMCANTIDAD'
      ProviderFlags = []
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPresuDetITEMGRAVADO: TFloatField
      FieldName = 'ITEMGRAVADO'
      Origin = 'ITEMGRAVADO'
      ProviderFlags = []
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPresuDetITEMEXENTO: TFloatField
      FieldName = 'ITEMEXENTO'
      Origin = 'ITEMEXENTO'
      ProviderFlags = []
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPresuDetITEMIVA: TFloatField
      FieldName = 'ITEMIVA'
      Origin = 'ITEMIVA'
      ProviderFlags = []
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPresuDetITEMTOTAL: TFloatField
      FieldName = 'ITEMTOTAL'
      Origin = 'ITEMTOTAL'
      ProviderFlags = []
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPresuDetITMEDETALLE: TStringField
      FieldName = 'ITMEDETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 45
    end
    object CDSPresuDetORDEN_ITEM: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ORDEN_ITEM'
      ProviderFlags = []
    end
    object CDSPresuDetCANTIDADTOTAL: TFloatField
      FieldName = 'CANTIDADTOTAL'
      Origin = 'CANTIDADTOTAL'
      ProviderFlags = []
    end
    object CDSPresuDetESPECIFICACION: TStringField
      DisplayLabel = 'Especificacion'
      FieldName = 'ESPECIFICACION'
      Origin = 'ESPECIFICACION'
      Size = 45
    end
    object CDSPresuDetITEM_CONDETALLE: TStringField
      DisplayLabel = 'Detalle Item'
      FieldKind = fkCalculated
      FieldName = 'ITEM_CONDETALLE'
      ProviderFlags = []
      Size = 50
      Calculated = True
    end
    object CDSPresuDetTOTAL_FINAL: TFloatField
      DisplayLabel = 'Tot.Final'
      FieldKind = fkInternalCalc
      FieldName = 'TOTAL_FINAL'
      ProviderFlags = []
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPresuDetFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object CDSPresuDetPERCIBE_IVA: TStringField
      FieldName = 'PERCIBE_IVA'
      Origin = 'PERCIBE_IVA'
      FixedChar = True
      Size = 1
    end
    object CDSPresuDetTASA_PERCEP_IVA: TFloatField
      FieldName = 'TASA_PERCEP_IVA'
      Origin = 'TASA_PERCEP_IVA'
      Required = True
    end
    object CDSPresuDetID_TASA_PERCEPCION_IVA: TIntegerField
      FieldName = 'ID_TASA_PERCEPCION_IVA'
      Origin = 'ID_TASA_PERCEPCION_IVA'
    end
    object CDSPresuDetPERCEPCION_IVA_DIFERENCIAL: TStringField
      FieldName = 'PERCEPCION_IVA_DIFERENCIAL'
      Origin = 'PERCEPCION_IVA_DIFERENCIAL'
      FixedChar = True
      Size = 1
    end
    object CDSPresuDetMUESTRAPRODUCIDOS: TFloatField
      FieldName = 'MUESTRAPRODUCIDOS'
      ProviderFlags = []
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
    Left = 328
    Top = 145
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
  end
  object CDSLdr: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ldr'
        ParamType = ptInput
      end>
    ProviderName = 'DSPLdr'
    Left = 117
    Top = 273
    object CDSLdrCODIGO_CLIENTE: TStringField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
      Size = 6
    end
    object CDSLdrCODIGO_LDR: TIntegerField
      FieldName = 'CODIGO_LDR'
      Required = True
    end
    object CDSLdrNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSLdrDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSLdrCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
  end
  object DSPresuDet: TDataSource
    DataSet = CDSPresuDet
    Left = 400
    Top = 64
  end
  object DSPListaPrecios: TDataSetProvider
    DataSet = DMBuscadores.QBuscaListaPrecios
    Left = 592
    Top = 192
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
    Left = 672
    Top = 192
    object CDSListaPreciosID: TIntegerField
      FieldName = 'ID'
    end
    object CDSListaPreciosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSListaPreciosF_PAGO: TIntegerField
      FieldName = 'F_PAGO'
    end
  end
  object CDSPresuDetXML: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    BeforePost = CDSPresuDetBeforePost
    AfterPost = CDSPresuDetAfterPost
    AfterDelete = CDSPresuDetAfterPost
    AfterScroll = CDSPresuDetAfterScroll
    OnNewRecord = CDSPresuDetNewRecord
    Left = 736
    Top = 376
  end
  object QFcAsociada: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select f.id_fc,f.tipocpbte,f.clasecpbte from  fcvtacab f where f' +
        '.id_fc=:id')
    Left = 328
    Top = 395
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QFcAsociadaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QFcAsociadaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QFcAsociadaID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QPrimerLdr: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select min(Codigo_Ldr) From LdrCliente Where Codigo_Cliente=:Cod' +
        'igo')
    Left = 568
    Top = 8
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
  end
  object QMonedas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from monedas where id=:id')
    Left = 656
    Top = 8
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QMonedasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMonedasMONEDA: TStringField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Size = 15
    end
    object QMonedasCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QMonedasSIGNO: TStringField
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      Size = 5
    end
    object QMonedasORDEN: TSmallintField
      FieldName = 'ORDEN'
      Origin = 'ORDEN'
      Required = True
    end
    object QMonedasCOTIZACION_COMPRA: TFloatField
      FieldName = 'COTIZACION_COMPRA'
      Origin = 'COTIZACION_COMPRA'
    end
  end
  object QPrimerConVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select Min(codigopago) from condventa where codigocliente=:codig' +
        'o')
    Left = 568
    Top = 56
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT C.*  FROM Clientes C'
      'where (c.codigo=:codigo)')
    Left = 568
    Top = 104
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
    object QClientesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QClientesZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object QClientesVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object QClientesLISTAPRECIOS: TIntegerField
      FieldName = 'LISTAPRECIOS'
      Origin = 'LISTAPRECIOS'
    end
    object QClientesTIPODOCUMENTO: TSmallintField
      FieldName = 'TIPODOCUMENTO'
      Origin = 'TIPODOCUMENTO'
    end
    object QClientesNRODOCUMENTO: TStringField
      FieldName = 'NRODOCUMENTO'
      Origin = 'NRODOCUMENTO'
      Size = 15
    end
    object QClientesCORREOELECTRONICO: TStringField
      FieldName = 'CORREOELECTRONICO'
      Origin = 'CORREOELECTRONICO'
      Size = 100
    end
    object QClientesCORREOELECTRONICO_2: TStringField
      FieldName = 'CORREOELECTRONICO_2'
      Origin = 'CORREOELECTRONICO_2'
      Size = 100
    end
    object QClientesID_FACTURAPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURAPORDEFECTO'
      Origin = 'ID_FACTURAPORDEFECTO'
    end
    object QClientesID_FACTURACONTADOPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURACONTADOPORDEFECTO'
      Origin = 'ID_FACTURACONTADOPORDEFECTO'
    end
    object QClientesID_NOTADEBITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTADEBITOPORDEFECTO'
      Origin = 'ID_NOTADEBITOPORDEFECTO'
    end
    object QClientesID_NOTACREDITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTACREDITOPORDEFECTO'
      Origin = 'ID_NOTACREDITOPORDEFECTO'
    end
    object QClientesID_TIKETPORDEFECTO: TIntegerField
      FieldName = 'ID_TIKETPORDEFECTO'
      Origin = 'ID_TIKETPORDEFECTO'
    end
    object QClientesID_RECIBOPORDEFECTO: TIntegerField
      FieldName = 'ID_RECIBOPORDEFECTO'
      Origin = 'ID_RECIBOPORDEFECTO'
    end
    object QClientesTIPOABONO: TStringField
      FieldName = 'TIPOABONO'
      Origin = 'TIPOABONO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesID_PLANTILLA: TIntegerField
      FieldName = 'ID_PLANTILLA'
      Origin = 'ID_PLANTILLA'
      Required = True
    end
    object QClientesPERCIBIR_IB: TStringField
      FieldName = 'PERCIBIR_IB'
      Origin = 'PERCIBIR_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesINSCRIPTO_MULTICONVENIO: TStringField
      FieldName = 'INSCRIPTO_MULTICONVENIO'
      Origin = 'INSCRIPTO_MULTICONVENIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Origin = 'CONTACTO'
      Size = 50
    end
    object QClientesTELEFONO_CONTACTO: TStringField
      FieldName = 'TELEFONO_CONTACTO'
      Origin = 'TELEFONO_CONTACTO'
      Size = 50
    end
    object QClientesCOBRADOR: TStringField
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
      Size = 6
    end
    object QClientesCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
    end
    object QClientesLONGITUD: TStringField
      FieldName = 'LONGITUD'
      Origin = 'LONGITUD'
      Size = 25
    end
    object QClientesLATITUD: TStringField
      FieldName = 'LATITUD'
      Origin = 'LATITUD'
      Size = 25
    end
    object QClientesDIRECCION_CALLE: TStringField
      FieldName = 'DIRECCION_CALLE'
      Origin = 'DIRECCION_CALLE'
      Size = 40
    end
    object QClientesDIRECCION_NUMERO: TStringField
      FieldName = 'DIRECCION_NUMERO'
      Origin = 'DIRECCION_NUMERO'
      Size = 10
    end
    object QClientesDIRECCION_PISO: TStringField
      FieldName = 'DIRECCION_PISO'
      Origin = 'DIRECCION_PISO'
      Size = 10
    end
    object QClientesDIRECCION_DEPTO: TStringField
      FieldName = 'DIRECCION_DEPTO'
      Origin = 'DIRECCION_DEPTO'
      Size = 10
    end
    object QClientesDEUDAMAYOR30: TStringField
      FieldName = 'DEUDAMAYOR30'
      Origin = 'DEUDAMAYOR30'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesDIAS_MAYOR_30: TIntegerField
      FieldName = 'DIAS_MAYOR_30'
      Origin = 'DIAS_MAYOR_30'
    end
    object QClientesMES_ABONOANUAL: TIntegerField
      FieldName = 'MES_ABONOANUAL'
      Origin = 'MES_ABONOANUAL'
    end
    object QClientesFRANQUICIA: TStringField
      FieldName = 'FRANQUICIA'
      Origin = 'FRANQUICIA'
      FixedChar = True
      Size = 1
    end
    object QClientesID_DEPOSITO_FRANQUICIA: TIntegerField
      FieldName = 'ID_DEPOSITO_FRANQUICIA'
      Origin = 'ID_DEPOSITO_FRANQUICIA'
    end
    object QClientesID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
      Origin = 'ID_TRANSPORTE'
    end
    object QClientesIMPRIME_SALDOFACTURA: TStringField
      FieldName = 'IMPRIME_SALDOFACTURA'
      Origin = 'IMPRIME_SALDOFACTURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCORTAR_SERVICIO: TStringField
      FieldName = 'CORTAR_SERVICIO'
      Origin = 'CORTAR_SERVICIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCON_PLANPAGO: TStringField
      FieldName = 'CON_PLANPAGO'
      Origin = 'CON_PLANPAGO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesDIRECCION_POSTAL: TStringField
      FieldName = 'DIRECCION_POSTAL'
      Origin = 'DIRECCION_POSTAL'
      Size = 35
    end
    object QClientesCALLE_1: TStringField
      FieldName = 'CALLE_1'
      Origin = 'CALLE_1'
      Size = 35
    end
    object QClientesCALLE_2: TStringField
      FieldName = 'CALLE_2'
      Origin = 'CALLE_2'
      Size = 35
    end
    object QClientesVENDER_DE_CTDO: TStringField
      FieldName = 'VENDER_DE_CTDO'
      Origin = 'VENDER_DE_CTDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesPRESENTO_F8001: TStringField
      FieldName = 'PRESENTO_F8001'
      Origin = 'PRESENTO_F8001'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesID_TARJETACREDITO: TIntegerField
      FieldName = 'ID_TARJETACREDITO'
      Origin = 'ID_TARJETACREDITO'
      Required = True
    end
    object QClientesNRO_TARJETA_C: TStringField
      FieldName = 'NRO_TARJETA_C'
      Origin = 'NRO_TARJETA_C'
    end
    object QClientesNRO_SEG_TC: TStringField
      FieldName = 'NRO_SEG_TC'
      Origin = 'NRO_SEG_TC'
      FixedChar = True
      Size = 4
    end
    object QClientesID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      Required = True
    end
    object QClientesNRO_CTA_BCO: TStringField
      FieldName = 'NRO_CTA_BCO'
      Origin = 'NRO_CTA_BCO'
      Size = 22
    end
    object QClientesCODIGO_COORPORATIVO: TStringField
      FieldName = 'CODIGO_COORPORATIVO'
      Origin = 'CODIGO_COORPORATIVO'
      Size = 6
    end
    object QClientesCUENTA_OPERATIVA: TStringField
      FieldName = 'CUENTA_OPERATIVA'
      Origin = 'CUENTA_OPERATIVA'
      Size = 10
    end
    object QClientesTARJETA_CLIENTE: TStringField
      FieldName = 'TARJETA_CLIENTE'
      Origin = 'TARJETA_CLIENTE'
    end
    object QClientesFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object QClientesCON_MONITOREO: TStringField
      FieldName = 'CON_MONITOREO'
      Origin = 'CON_MONITOREO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCON_GPRS: TStringField
      FieldName = 'CON_GPRS'
      Origin = 'CON_GPRS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCON_HOSTING: TStringField
      FieldName = 'CON_HOSTING'
      Origin = 'CON_HOSTING'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCOMUNITARIO: TStringField
      FieldName = 'COMUNITARIO'
      Origin = 'COMUNITARIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesID_PRESTADOR: TIntegerField
      FieldName = 'ID_PRESTADOR'
      Origin = 'ID_PRESTADOR'
    end
    object QClientesMES_ADICIONAL: TIntegerField
      FieldName = 'MES_ADICIONAL'
      Origin = 'MES_ADICIONAL'
    end
    object QClientesMES_SEMESTRAL: TIntegerField
      FieldName = 'MES_SEMESTRAL'
      Origin = 'MES_SEMESTRAL'
    end
    object QClientesMOROSO: TStringField
      FieldName = 'MOROSO'
      Origin = 'MOROSO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesPLANTILLA_CIVA: TStringField
      FieldName = 'PLANTILLA_CIVA'
      Origin = 'PLANTILLA_CIVA'
      FixedChar = True
      Size = 1
    end
    object QClientesOBSERVACIONES1: TStringField
      FieldName = 'OBSERVACIONES1'
      Origin = 'OBSERVACIONES1'
      Size = 60
    end
    object QClientesOBSERVACIONES2: TStringField
      FieldName = 'OBSERVACIONES2'
      Origin = 'OBSERVACIONES2'
      Size = 60
    end
    object QClientesAVISO: TStringField
      FieldName = 'AVISO'
      Origin = 'AVISO'
      Size = 250
    end
    object QClientesRUBRO: TIntegerField
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
    end
    object QClientesENVIAR_CPTE_MAIL: TStringField
      FieldName = 'ENVIAR_CPTE_MAIL'
      Origin = 'ENVIAR_CPTE_MAIL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesNRO_IP: TStringField
      FieldName = 'NRO_IP'
      Origin = 'NRO_IP'
      Size = 15
    end
    object QClientesCHEQUES: TStringField
      FieldName = 'CHEQUES'
      Origin = 'CHEQUES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesID_ADMINISTRACION: TIntegerField
      FieldName = 'ID_ADMINISTRACION'
      Origin = 'ID_ADMINISTRACION'
      Required = True
    end
    object QClientesFECHAULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'FECHAULTIMACOMPRA'
      Origin = 'FECHAULTIMACOMPRA'
    end
    object QClientesFECHAALTA: TSQLTimeStampField
      FieldName = 'FECHAALTA'
      Origin = 'FECHAALTA'
    end
    object QClientesULTIMOPAGO: TSQLTimeStampField
      FieldName = 'ULTIMOPAGO'
      Origin = 'ULTIMOPAGO'
    end
    object QClientesFECHANACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHANACIMIENTO'
      Origin = 'FECHANACIMIENTO'
    end
    object QClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField
      FieldName = 'FECHA_VENCIMI_DDJJ_MULTI'
      Origin = 'FECHA_VENCIMI_DDJJ_MULTI'
    end
    object QClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO_FC_ABONO'
      Origin = 'FECHA_INCIO_FC_ABONO'
    end
    object QClientesDESDE_F8001: TSQLTimeStampField
      FieldName = 'DESDE_F8001'
      Origin = 'DESDE_F8001'
    end
    object QClientesHASTA_F8001: TSQLTimeStampField
      FieldName = 'HASTA_F8001'
      Origin = 'HASTA_F8001'
    end
    object QClientesVENCIMIENTO_TC: TSQLTimeStampField
      FieldName = 'VENCIMIENTO_TC'
      Origin = 'VENCIMIENTO_TC'
    end
  end
  object QTraerRecargoDeLista: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select la.recargo from listaprecioespecialart la'
      'where la.codigoarticulo=:articulo and la.id_cab=:lista')
    Left = 656
    Top = 56
    ParamData = <
      item
        Name = 'ARTICULO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end
      item
        Name = 'LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTraerRecargoDeListaRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
    end
  end
  object QBuscaListaPrecio: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select id from  listaprecioespecialcab where id=:id')
    Left = 656
    Top = 104
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QBuscaListaPrecioID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QCoefPrecio: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(coeficiente)  from coeficientes_precios'
      'where codigo=:codigo and '
      '(id_lista_precio=:id_lista or :id_lista = -1 )'
      'and por_defecto='#39'S'#39)
    Left = 760
    Top = 112
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end
      item
        Name = 'ID_LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCoefPrecioMAX: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MAX'
      Origin = 'MAX'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QDepositoStk: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from DepositoStk  where'
      '(Codigo_Deposito=:codigo_deposito) AND (Codigo_stk=:Codigo)')
    Left = 752
    Top = 56
    ParamData = <
      item
        Name = 'CODIGO_DEPOSITO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
    object QDepositoStkID_DEPOSITO: TIntegerField
      FieldName = 'ID_DEPOSITO'
      Origin = 'ID_DEPOSITO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDepositoStkCODIGO_DEPOSITO: TIntegerField
      FieldName = 'CODIGO_DEPOSITO'
      Origin = 'CODIGO_DEPOSITO'
      Required = True
    end
    object QDepositoStkCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object QDepositoStkSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QDepositoStkINICIAL: TFloatField
      FieldName = 'INICIAL'
      Origin = 'INICIAL'
    end
    object QDepositoStkMINIMO: TFloatField
      FieldName = 'MINIMO'
      Origin = 'MINIMO'
    end
    object QDepositoStkMEDIO: TFloatField
      FieldName = 'MEDIO'
      Origin = 'MEDIO'
    end
    object QDepositoStkFISICO: TFloatField
      FieldName = 'FISICO'
      Origin = 'FISICO'
    end
    object QDepositoStkRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
      Required = True
    end
    object QDepositoStkFUAPRECIOS: TSQLTimeStampField
      FieldName = 'FUAPRECIOS'
      Origin = 'FUAPRECIOS'
    end
    object QDepositoStkSECTOR: TStringField
      FieldName = 'SECTOR'
      Origin = 'SECTOR'
      Size = 2
    end
    object QDepositoStkUBICACION: TStringField
      FieldName = 'UBICACION'
      Origin = 'UBICACION'
      Size = 3
    end
    object QDepositoStkFULTAJUSTE: TSQLTimeStampField
      FieldName = 'FULTAJUSTE'
      Origin = 'FULTAJUSTE'
    end
    object QDepositoStkUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
      Required = True
    end
    object QDepositoStkAVISO_MINIMOSTOCK: TStringField
      FieldName = 'AVISO_MINIMOSTOCK'
      Origin = 'AVISO_MINIMOSTOCK'
      FixedChar = True
      Size = 1
    end
  end
  object QPrecioEspecial: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select preciopactado from precioespecialdet '
      'where codigoarticulo=:articulo and '
      'codigocliente=:cliente')
    Left = 752
    Top = 8
    ParamData = <
      item
        Name = 'ARTICULO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end
      item
        Name = 'CLIENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
    object QPrecioEspecialPRECIOPACTADO: TFloatField
      FieldName = 'PRECIOPACTADO'
      Origin = 'PRECIOPACTADO'
    end
  end
  object QComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes '
      'where id_comprobante= :id  '
      'and sucursal=:suc '
      'and compra_venta='#39'V'#39' '
      'and (tipo_comprob='#39'PR'#39')'
      'and en_uso='#39'S'#39)
    Left = 232
    Top = 396
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
    object QComprobID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QComprobTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object QComprobSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QComprobLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QComprobPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object QComprobNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object QComprobNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object QComprobTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
      Origin = 'TOMA_NRO_DE'
    end
    object QComprobAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Origin = 'AFECTA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Origin = 'AFECTA_CC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Origin = 'COMPRA_VENTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobCOPIAS: TIntegerField
      FieldName = 'COPIAS'
      Origin = 'COPIAS'
    end
    object QComprobREPORTE: TStringField
      FieldName = 'REPORTE'
      Origin = 'REPORTE'
      Size = 100
    end
    object QComprobIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      FixedChar = True
      Size = 1
    end
    object QComprobFISCAL: TStringField
      FieldName = 'FISCAL'
      Origin = 'FISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Origin = 'NOMBREIMPRESORA'
      Size = 15
    end
    object QComprobPENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Origin = 'PENDIENTEIMPRESION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Origin = 'LINEAS_DETALLE'
      Required = True
    end
    object QComprobCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Origin = 'CALCULA_IVA_ARTICULOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Origin = 'DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobCAJA_DEFECTO: TIntegerField
      FieldName = 'CAJA_DEFECTO'
      Origin = 'CAJA_DEFECTO'
      Required = True
    end
    object QComprobDIVIDE_IVA: TStringField
      FieldName = 'DIVIDE_IVA'
      Origin = 'DIVIDE_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobFACTURAELECTRONICA: TStringField
      FieldName = 'FACTURAELECTRONICA'
      Origin = 'FACTURAELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobEN_USO: TStringField
      FieldName = 'EN_USO'
      Origin = 'EN_USO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobCODIGO_AFIP: TStringField
      FieldName = 'CODIGO_AFIP'
      Origin = 'CODIGO_AFIP'
      Size = 3
    end
    object QComprobID_AJUSTECC: TIntegerField
      FieldName = 'ID_AJUSTECC'
      Origin = 'ID_AJUSTECC'
    end
    object QComprobCENTRO_COSTO: TIntegerField
      FieldName = 'CENTRO_COSTO'
      Origin = 'CENTRO_COSTO'
    end
    object QComprobFILTRO_COMPROBANTES: TStringField
      FieldName = 'FILTRO_COMPROBANTES'
      Origin = 'FILTRO_COMPROBANTES'
      FixedChar = True
      Size = 1
    end
    object QComprobDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QComprobULTIMONRO: TIntegerField
      FieldName = 'ULTIMONRO'
      Origin = 'ULTIMONRO'
    end
    object QComprobEDITAR_NRO: TStringField
      FieldName = 'EDITAR_NRO'
      Origin = 'EDITAR_NRO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QNotas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from tabla_notas')
    Left = 232
    Top = 458
    object QNotasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNotasNOTAS: TMemoField
      FieldName = 'NOTAS'
      Origin = 'NOTAS'
      BlobType = ftMemo
    end
  end
  object DSPPresuSubDet: TDataSetProvider
    DataSet = DMMain_FD.QPresuSubDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 232
    Top = 271
  end
  object CDSPresuSubDet: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ITEM_NRO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_CAB'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DETALLE'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'CANTIDAD'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_GRAVADO'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_EXENTO'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_IVA'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_UNIT_FINAL'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_NETO'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_FINAL'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'NdxItem'
        Fields = 'ITEM_NRO'
      end>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPresuSubDet'
    StoreDefs = True
    OnCalcFields = CDSPresuSubDetCalcFields
    OnNewRecord = CDSPresuSubDetNewRecord
    Left = 328
    Top = 270
    object CDSPresuSubDetITEM_NRO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'It.Nr'
      FieldName = 'ITEM_NRO'
      Origin = 'ITEM_NRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPresuSubDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPresuSubDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSPresuSubDetCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      OnSetText = CDSPresuSubDetCANTIDADSetText
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPresuSubDetTOTAL_GRAVADO: TFloatField
      DisplayLabel = 'Valor .Unitario'
      FieldName = 'TOTAL_GRAVADO'
      Origin = 'TOTAL_GRAVADO'
      OnGetText = CDSPresuSubDetTOTAL_GRAVADOGetText
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPresuSubDetTOTAL_UNIT_FINAL: TFloatField
      DisplayLabel = 'Valor .Unit.Final'
      FieldKind = fkInternalCalc
      FieldName = 'TOTAL_UNIT_FINAL'
      ProviderFlags = []
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPresuSubDetTOTAL_NETO: TFloatField
      DisplayLabel = 'T.Neto'
      FieldKind = fkInternalCalc
      FieldName = 'TOTAL_NETO'
      ProviderFlags = []
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPresuSubDetTOTAL_EXENTO: TFloatField
      DisplayLabel = 'T.Exen'
      FieldName = 'TOTAL_EXENTO'
      Origin = 'TOTAL_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPresuSubDetTOTAL_IVA: TFloatField
      DisplayLabel = 'Iva'
      FieldName = 'TOTAL_IVA'
      Origin = 'TOTAL_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPresuSubDetTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      OnGetText = CDSPresuSubDetTOTALGetText
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPresuSubDetTOTAL_FINAL: TFloatField
      DisplayLabel = 'Total C/Iva'
      FieldKind = fkInternalCalc
      FieldName = 'TOTAL_FINAL'
      ProviderFlags = []
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSPresuSubDet: TDataSource
    DataSet = CDSPresuSubDet
    Left = 424
    Top = 240
  end
  object spCpteDestino: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CPBTE_DESTINO_PRESU'
    Left = 742
    Top = 288
    ParamData = <
      item
        Position = 1
        Name = 'ID_PRESUPUESTO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptOutput
      end
      item
        Position = 3
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptOutput
        Size = 2
      end
      item
        Position = 4
        Name = 'NRO'
        DataType = ftString
        ParamType = ptOutput
        Size = 13
      end>
  end
  object spActualizarCotizacionDetalle: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'RECOTIZAR_DET_PRESUPUESTO'
    Left = 608
    Top = 290
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QUltimoSubNro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(p.sub_nro) from prescab p'
      '  where p.numerofac=:nro and p.letrafac=:letra and p.sucfac=:suc')
    Left = 600
    Top = 424
    ParamData = <
      item
        Name = 'NRO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end
      item
        Name = 'LETRA'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'SUC'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end>
  end
  object QVerificaOrdenProduccion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select op.id,op.NroCpbte,op.fecha_iniciada from ordenproduccion_' +
        'cab op where op.id_presupuesto=:id')
    Left = 504
    Top = 424
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QVerificaOrdenProduccionID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVerificaOrdenProduccionNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QVerificaOrdenProduccionFECHA_INICIADA: TSQLTimeStampField
      FieldName = 'FECHA_INICIADA'
      Origin = 'FECHA_INICIADA'
      Required = True
    end
  end
  object QObras: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select o.* from obras o where o.estado='#39'A'#39)
    Left = 520
    Top = 504
  end
  object DSPObras: TDataSetProvider
    DataSet = QObras
    Options = []
    Left = 600
    Top = 504
  end
  object CDSObras: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPObras'
    Left = 656
    Top = 496
    object CDSObrasDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object CDSObrasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSObras: TDataSource
    DataSet = CDSObras
    Left = 712
    Top = 496
  end
  object QIncidencias: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select i.* from PRES_Incidencias i '
      'where i.ID_PRESUPUESTO = :ID '
      '')
    Left = 232
    Top = 521
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QIncidenciasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QIncidenciasID_PRESUPUESTO: TIntegerField
      FieldName = 'ID_PRESUPUESTO'
      Origin = 'ID_PRESUPUESTO'
      Required = True
    end
    object QIncidenciasDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 200
    end
    object QIncidenciasUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QIncidenciasANIO_MES: TIntegerField
      FieldName = 'ANIO_MES'
      Origin = 'ANIO_MES'
    end
    object QIncidenciasCOLOR_FUENTE: TIntegerField
      FieldName = 'COLOR_FUENTE'
      Origin = 'COLOR_FUENTE'
    end
    object QIncidenciasCOLOR_BRUSH: TIntegerField
      FieldName = 'COLOR_BRUSH'
      Origin = 'COLOR_BRUSH'
    end
    object QIncidenciasBOLD: TSmallintField
      FieldName = 'BOLD'
      Origin = 'BOLD'
      Required = True
    end
    object QIncidenciasFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QIncidenciasPROX_FECHA_CONTACTO: TSQLTimeStampField
      FieldName = 'PROX_FECHA_CONTACTO'
      Origin = 'PROX_FECHA_CONTACTO'
    end
  end
  object QContacto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.* from PRES_Incid_contacto c '
      'where c.ID_PRESUPUESTO = :ID ')
    Left = 232
    Top = 584
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QContactoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QContactoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 150
    end
    object QContactoTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Origin = 'TELEFONO'
      Size = 25
    end
    object QContactoID_PRESUPUESTO: TIntegerField
      FieldName = 'ID_PRESUPUESTO'
      Origin = 'ID_PRESUPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QContactoASUNTO: TStringField
      FieldName = 'ASUNTO'
      Origin = 'ASUNTO'
      Size = 200
    end
    object QContactoNOMBRE_2: TStringField
      FieldName = 'NOMBRE_2'
      Origin = 'NOMBRE_2'
      Size = 150
    end
    object QContactoTELEFONO_2: TStringField
      FieldName = 'TELEFONO_2'
      Origin = 'TELEFONO_2'
      Size = 25
    end
  end
  object DSPContacto: TDataSetProvider
    DataSet = QContacto
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 320
    Top = 520
  end
  object DSPIncidencias: TDataSetProvider
    DataSet = QIncidencias
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 320
    Top = 457
  end
  object CDSIncidencias: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPIncidencias'
    OnNewRecord = CDSIncidenciasNewRecord
    Left = 400
    Top = 488
    object CDSIncidenciasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSIncidenciasID_PRESUPUESTO: TIntegerField
      FieldName = 'ID_PRESUPUESTO'
      Origin = 'ID_PRESUPUESTO'
      Required = True
    end
    object CDSIncidenciasDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 200
    end
    object CDSIncidenciasUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object CDSIncidenciasANIO_MES: TIntegerField
      FieldName = 'ANIO_MES'
      Origin = 'ANIO_MES'
    end
    object CDSIncidenciasCOLOR_FUENTE: TIntegerField
      FieldName = 'COLOR_FUENTE'
      Origin = 'COLOR_FUENTE'
    end
    object CDSIncidenciasCOLOR_BRUSH: TIntegerField
      FieldName = 'COLOR_BRUSH'
      Origin = 'COLOR_BRUSH'
    end
    object CDSIncidenciasBOLD: TSmallintField
      FieldName = 'BOLD'
      Origin = 'BOLD'
      Required = True
    end
  end
  object CDSContacto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPContacto'
    OnNewRecord = CDSContactoNewRecord
    Left = 400
    Top = 576
    object CDSContactoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSContactoNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 150
    end
    object CDSContactoTELEFONO: TStringField
      DisplayLabel = 'Telefono'
      FieldName = 'TELEFONO'
      Origin = 'TELEFONO'
      Size = 25
    end
    object CDSContactoID_PRESUPUESTO: TIntegerField
      FieldName = 'ID_PRESUPUESTO'
      Origin = 'ID_PRESUPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSContactoASUNTO: TStringField
      FieldName = 'ASUNTO'
      Origin = 'ASUNTO'
      Size = 200
    end
    object CDSContactoNOMBRE_2: TStringField
      FieldName = 'NOMBRE_2'
      Origin = 'NOMBRE_2'
      Size = 150
    end
    object CDSContactoTELEFONO_2: TStringField
      FieldName = 'TELEFONO_2'
      Origin = 'TELEFONO_2'
      Size = 25
    end
  end
  object ibgDetalle: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'next_id_pres_incidencias'
    SystemGenerators = False
    Left = 448
    Top = 504
  end
  object QObrasSector: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select o.* from obras_sector o where o.cod_obra =:obra')
    Left = 520
    Top = 560
    ParamData = <
      item
        Name = 'OBRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QObrasSectorID_SECTOR: TIntegerField
      FieldName = 'ID_SECTOR'
      Origin = 'ID_SECTOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QObrasSectorCOD_OBRA: TIntegerField
      FieldName = 'COD_OBRA'
      Origin = 'COD_OBRA'
      Required = True
    end
    object QObrasSectorSECTOR: TStringField
      FieldName = 'SECTOR'
      Origin = 'SECTOR'
      Size = 100
    end
  end
  object DSPObraSector: TDataSetProvider
    DataSet = QObrasSector
    Options = []
    Left = 600
    Top = 560
  end
  object CDSObrasSector: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'OBRA'
        ParamType = ptInput
      end>
    ProviderName = 'DSPObraSector'
    Left = 664
    Top = 560
    object CDSObrasSectorID_SECTOR: TIntegerField
      FieldName = 'ID_SECTOR'
      Required = True
    end
    object CDSObrasSectorCOD_OBRA: TIntegerField
      FieldName = 'COD_OBRA'
      Required = True
    end
    object CDSObrasSectorSECTOR: TStringField
      FieldName = 'SECTOR'
      Size = 100
    end
  end
  object DSObrasSector: TDataSource
    DataSet = CDSObrasSector
    Left = 744
    Top = 552
  end
  object QTipoObra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select o.* from obras_Tipo o')
    Left = 520
    Top = 608
    ParamData = <
      item
        Position = 1
        Name = 'OBRA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPTipoObra: TDataSetProvider
    DataSet = QTipoObra
    Options = []
    Left = 600
    Top = 608
  end
  object CDSTipoObra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'OBRA'
        ParamType = ptInput
      end>
    ProviderName = 'DSPTipoObra'
    Left = 664
    Top = 608
    object CDSTipoObraID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSTipoObraDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 50
    end
  end
  object DSTipoObra: TDataSource
    DataSet = CDSTipoObra
    Left = 744
    Top = 608
  end
  object QDatosObra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select o.codigo,o.detalle from obras o where o.codigo=:codigo')
    Left = 816
    Top = 496
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QDatosObraCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDatosObraDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
  end
  object IBGPercepcionIVA: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'next_id_prespercepcioniva'
    SystemGenerators = False
    Left = 448
    Top = 688
  end
  object DSPPercepcionIVA: TDataSetProvider
    DataSet = DMMain_FD.QPercecpionIvaPres
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 572
    Top = 688
  end
  object CDSPercepcionIVA: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPercepcionIVA'
    OnNewRecord = CDSPercepcionIVANewRecord
    Left = 661
    Top = 688
    object CDSPercepcionIVAID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      Origin = 'ID_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPercepcionIVACODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Origin = 'CODIGO_PERCEPCION'
      Required = True
    end
    object CDSPercepcionIVADETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSPercepcionIVAID_PR: TIntegerField
      FieldName = 'ID_PR'
      Origin = 'ID_PR'
      Required = True
    end
    object CDSPercepcionIVANETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
      DisplayFormat = ',0.00'
    end
    object CDSPercepcionIVATASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
      DisplayFormat = ',0.00'
    end
    object CDSPercepcionIVAIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSPercepcionIVACODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
      Origin = 'CODIGOREGIMEN'
    end
  end
  object DSPercepcionIVA: TDataSource
    DataSet = CDSPercepcionIVA
    Left = 773
    Top = 696
  end
  object QLstMonedas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from monedas ')
    Left = 280
    Top = 688
    object QLstMonedasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLstMonedasMONEDA: TStringField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Size = 15
    end
    object QLstMonedasCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QLstMonedasSIGNO: TStringField
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      Size = 5
    end
    object QLstMonedasORDEN: TSmallintField
      FieldName = 'ORDEN'
      Origin = 'ORDEN'
      Required = True
    end
    object QLstMonedasCOTIZACION_COMPRA: TFloatField
      FieldName = 'COTIZACION_COMPRA'
      Origin = 'COTIZACION_COMPRA'
    end
  end
  object DSLstMonedas: TDataSource
    DataSet = QLstMonedas
    Left = 192
    Top = 688
  end
end
