object DatosModelo: TDatosModelo
  OnDestroy = DataModuleDestroy
  Height = 668
  Width = 891
  object DSPModeloCab: TDataSetProvider
    DataSet = QModeloCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 3
  end
  object DSPStock: TDataSetProvider
    DataSet = DMMain_FD.QStock
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 230
  end
  object DSPCondVenta: TDataSetProvider
    DataSet = DMMain_FD.QCondVenta
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 345
  end
  object DSPModeloDet: TDataSetProvider
    DataSet = QModeloDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 55
  end
  object DSPImpuestos: TDataSetProvider
    DataSet = QImpuestos
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 108
  end
  object DSPClientes: TDataSetProvider
    DataSet = DMMain_FD.QClientes
    UpdateMode = upWhereKeyOnly
    Left = 400
    Top = 64
  end
  object DSPInscripcion: TDataSetProvider
    DataSet = DMMain_FD.QInscripcion
    UpdateMode = upWhereKeyOnly
    Left = 400
    Top = 11
  end
  object DSPDeposito: TDataSetProvider
    DataSet = DMMain_FD.QDeposito
    Options = []
    Left = 24
    Top = 294
  end
  object DSPIva: TDataSetProvider
    DataSet = DMMain_FD.QIva
    Options = []
    Left = 24
    Top = 399
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMMain_FD.QSucursal
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 26
    Top = 174
  end
  object DSPLdr: TDataSetProvider
    DataSet = DMMain_FD.QLDR
    Options = []
    Left = 24
    Top = 450
  end
  object IBGFc_Det: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FCMODELODET'
    SystemGenerators = False
    Left = 288
    Top = 56
  end
  object IBGFc_Cab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FCMODELOCAB'
    SystemGenerators = False
    Left = 288
    Top = 8
  end
  object IBGFc_Impuestos: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FCMODELOIMPUESTO'
    SystemGenerators = False
    Left = 288
    Top = 112
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
    Left = 88
    Top = 294
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
    Left = 632
    Top = 48
    object CDSBuscaDepositoNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 25
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSBuscaDepositoID: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
    end
  end
  object DSPBuscaDeposito: TDataSetProvider
    DataSet = DMBuscadores.QBuscaDeposito
    Options = []
    Left = 552
    Top = 48
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
    Left = 88
    Top = 232
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
    object CDSStockIMPUESTO_INTERNOS: TFloatField
      FieldName = 'IMPUESTO_INTERNOS'
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
    object CDSStockCONTENIDO_COMPRA: TFloatField
      FieldName = 'CONTENIDO_COMPRA'
      Required = True
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
    object CDSStockCOSTO_GRAVADO_SOMBRA: TFloatField
      FieldName = 'COSTO_GRAVADO_SOMBRA'
      Required = True
    end
    object CDSStockCOSTO_EXENTO_SOMBRA: TFloatField
      FieldName = 'COSTO_EXENTO_SOMBRA'
      Required = True
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
    object CDSStockCOSTO_GRAVADO_P: TFloatField
      FieldName = 'COSTO_GRAVADO_P'
      Required = True
    end
    object CDSStockCOSTO_EXENTO_P: TFloatField
      FieldName = 'COSTO_EXENTO_P'
      Required = True
    end
    object CDSStockCOSTO_TOTAL_P: TFloatField
      FieldName = 'COSTO_TOTAL_P'
      Required = True
    end
    object CDSStockPOSICION: TStringField
      FieldName = 'POSICION'
      Size = 10
    end
    object CDSStockPRESENTACION_UNIDAD: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      Size = 3
    end
    object CDSStockPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      Required = True
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
    object CDSStockMUESTRATASAPORCENTAJE: TFloatField
      FieldName = 'MUESTRATASAPORCENTAJE'
    end
    object CDSStockMUESTRASOBRETASA: TStringField
      FieldName = 'MUESTRASOBRETASA'
      Size = 15
    end
    object CDSStockMUESTRASOBRETASAPROCENTAJE: TFloatField
      FieldName = 'MUESTRASOBRETASAPROCENTAJE'
    end
    object CDSStockMUESTRATASAIB: TFloatField
      FieldName = 'MUESTRATASAIB'
    end
    object CDSStockMUESTRATABLAPRECIODETALLE: TStringField
      FieldName = 'MUESTRATABLAPRECIODETALLE'
      Size = 40
    end
    object CDSStockMUESTRATABLAPRECIO1: TFloatField
      FieldName = 'MUESTRATABLAPRECIO1'
    end
    object CDSStockMUESTRATABLAPRECIO2: TFloatField
      FieldName = 'MUESTRATABLAPRECIO2'
    end
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = []
    Left = 552
    Top = 6
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 624
    Top = 6
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
  object DSPPersonal: TDataSetProvider
    DataSet = DMMain_FD.QPersonal
    Options = []
    Left = 552
    Top = 96
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
    Left = 624
    Top = 96
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
    Left = 552
    Top = 144
  end
  object CDSBuscaVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaVendedor'
    Left = 624
    Top = 144
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
    object CDSBuscaVendedorCOMISION: TFloatField
      FieldName = 'COMISION'
      Required = True
    end
  end
  object DSPBuscaCondVenta: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCondVentaCliente
    Options = []
    Left = 552
    Top = 192
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
    Left = 632
    Top = 192
    object CDSBuscaCondVentaCODIGOCLIENTE: TStringField
      FieldName = 'CODIGOCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSBuscaCondVentaCODIGOPAGO: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGOPAGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSBuscaCondVentaDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object CDSBuscaCondVentaPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaCondVentaDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 20
      FieldName = 'DETALLE'
      ProviderFlags = []
      Required = True
    end
  end
  object CDSClientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPClientes'
    Left = 464
    Top = 64
    object CDSClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 35
    end
    object CDSClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSClientesDIRECCION_PARTICULAR: TStringField
      FieldName = 'DIRECCION_PARTICULAR'
      Size = 35
    end
    object CDSClientesDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object CDSClientesTELEFONO_PARTICULAR: TStringField
      FieldName = 'TELEFONO_PARTICULAR'
      Size = 10
    end
    object CDSClientesTELEFONO_COMERCIAL_1: TStringField
      FieldName = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object CDSClientesTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object CDSClientesTELEFONO_CELULAR: TStringField
      FieldName = 'TELEFONO_CELULAR'
      Size = 11
    end
    object CDSClientesID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
    end
    object CDSClientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSClientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSClientesCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Required = True
    end
    object CDSClientesEMITE_REMITO: TStringField
      FieldName = 'EMITE_REMITO'
      FixedChar = True
      Size = 1
    end
    object CDSClientesEMITE_FACTURA: TStringField
      FieldName = 'EMITE_FACTURA'
      FixedChar = True
      Size = 1
    end
    object CDSClientesNRO_DE_CUIT: TStringField
      FieldName = 'NRO_DE_CUIT'
      Size = 13
    end
    object CDSClientesACTIVO: TStringField
      FieldName = 'ACTIVO'
      FixedChar = True
      Size = 1
    end
    object CDSClientesLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object CDSClientesSALDOINICIAL: TFloatField
      FieldName = 'SALDOINICIAL'
    end
    object CDSClientesOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object CDSClientesFECHAULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'FECHAULTIMACOMPRA'
    end
    object CDSClientesFECHAALTA: TSQLTimeStampField
      FieldName = 'FECHAALTA'
    end
    object CDSClientesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSClientesZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object CDSClientesVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 6
    end
    object CDSClientesULTIMOPAGO: TSQLTimeStampField
      FieldName = 'ULTIMOPAGO'
    end
    object CDSClientesLISTAPRECIOS: TIntegerField
      FieldName = 'LISTAPRECIOS'
    end
    object CDSClientesFECHANACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHANACIMIENTO'
    end
    object CDSClientesTIPODOCUMENTO: TSmallintField
      FieldName = 'TIPODOCUMENTO'
    end
    object CDSClientesNRODOCUMENTO: TStringField
      FieldName = 'NRODOCUMENTO'
      Size = 15
    end
    object CDSClientesCORREOELECTRONICO: TStringField
      FieldName = 'CORREOELECTRONICO'
      Size = 100
    end
    object CDSClientesID_FACTURAPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURAPORDEFECTO'
    end
    object CDSClientesID_FACTURACONTADOPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURACONTADOPORDEFECTO'
    end
    object CDSClientesID_NOTADEBITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTADEBITOPORDEFECTO'
    end
    object CDSClientesID_NOTACREDITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTACREDITOPORDEFECTO'
    end
    object CDSClientesID_TIKETPORDEFECTO: TIntegerField
      FieldName = 'ID_TIKETPORDEFECTO'
    end
    object CDSClientesPERCIBIR_IB: TStringField
      FieldName = 'PERCIBIR_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesINSCRIPTO_MULTICONVENIO: TStringField
      FieldName = 'INSCRIPTO_MULTICONVENIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField
      FieldName = 'FECHA_VENCIMI_DDJJ_MULTI'
    end
    object CDSClientesCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Size = 50
    end
    object CDSClientesTELEFONO_CONTACTO: TStringField
      FieldName = 'TELEFONO_CONTACTO'
      Size = 50
    end
    object CDSClientesCOBRADOR: TStringField
      FieldName = 'COBRADOR'
      Size = 6
    end
    object CDSClientesCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object CDSClientesLONGITUD: TStringField
      FieldName = 'LONGITUD'
      Size = 25
    end
    object CDSClientesLATITUD: TStringField
      FieldName = 'LATITUD'
      Size = 25
    end
    object CDSClientesDIRECCION_CALLE: TStringField
      FieldName = 'DIRECCION_CALLE'
      Size = 40
    end
    object CDSClientesDIRECCION_NUMERO: TStringField
      FieldName = 'DIRECCION_NUMERO'
      Size = 10
    end
    object CDSClientesDIRECCION_PISO: TStringField
      FieldName = 'DIRECCION_PISO'
      Size = 10
    end
    object CDSClientesDIRECCION_DEPTO: TStringField
      FieldName = 'DIRECCION_DEPTO'
      Size = 10
    end
    object CDSClientesDEUDAMAYOR30: TStringField
      FieldName = 'DEUDAMAYOR30'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesMUESTRATELEDISCADO: TStringField
      FieldName = 'MUESTRATELEDISCADO'
      Size = 6
    end
    object CDSClientesMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      Size = 50
    end
    object CDSClientesMUESTRACOBRADOR: TStringField
      FieldName = 'MUESTRACOBRADOR'
      Size = 50
    end
  end
  object CDSModeloCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPModeloCab'
    OnNewRecord = CDSModeloCabNewRecord
    Left = 168
    Top = 8
    object CDSModeloCabID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSModeloCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSModeloCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSModeloCabLETRA: TStringField
      Alignment = taCenter
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSModeloCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      OnSetText = CDSModeloCabCODIGOSetText
      Size = 6
    end
    object CDSModeloCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSModeloCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSModeloCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object CDSModeloCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object CDSModeloCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object CDSModeloCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
      Required = True
    end
    object CDSModeloCabCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSModeloCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
      Origin = 'CONDICIONVTA'
      Required = True
      OnSetText = CDSModeloCabCONDICIONVTASetText
    end
    object CDSModeloCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
      OnSetText = CDSModeloCabSUCURSALSetText
    end
    object CDSModeloCabZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object CDSModeloCabLDR: TIntegerField
      FieldName = 'LDR'
      Origin = 'LDR'
      Required = True
      OnSetText = CDSModeloCabLDRSetText
    end
    object CDSModeloCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
      OnSetText = CDSModeloCabDEPOSITOSetText
    end
    object CDSModeloCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSModeloCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Required = True
      OnChange = CDSModeloCabDESGLOZAIVAChange
      FixedChar = True
      Size = 1
    end
    object CDSModeloCabINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Origin = 'INGRESA_A_CTACTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSModeloCabINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Origin = 'INGRESA_LIBRO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSModeloCabVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      OnSetText = CDSModeloCabVENDEDORSetText
      Size = 6
    end
    object CDSModeloCabGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
    end
    object CDSModeloCabMUESTRACONDVENTA: TStringField
      FieldName = 'MUESTRACONDVENTA'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object CDSModeloCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSModeloCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSModeloCabMUESTRALDR: TStringField
      FieldName = 'MUESTRALDR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object CDSModeloCabMUESTRAIVA: TStringField
      FieldName = 'MUESTRAIVA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 15
    end
    object CDSModeloCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object CDSModeloCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
      OnSetText = CDSModeloCabID_TIPOCOMPROBANTESetText
    end
    object CDSModeloCabMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object CDSModeloCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      Origin = 'NETOGRAV1'
      OnGetText = CDSModeloCabNETOGRAV1GetText
    end
    object CDSModeloCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      Origin = 'NETOGRAV2'
      OnGetText = CDSModeloCabNETOGRAV2GetText
    end
    object CDSModeloCabDSTO: TFloatField
      FieldName = 'DSTO'
      Origin = 'DSTO'
      OnSetText = CDSModeloCabDSTOSetText
    end
    object CDSModeloCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      Origin = 'DSTOIMPORTE'
    end
    object CDSModeloCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      Origin = 'NETOEXEN1'
    end
    object CDSModeloCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      Origin = 'NETOEXEN2'
    end
    object CDSModeloCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
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
        Name = 'codigopago'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCondVenta'
    Left = 88
    Top = 345
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
    Left = 160
    Top = 112
    object CDSImpuestosID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      Origin = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSImpuestosID_FCMODELOCAB: TIntegerField
      FieldName = 'ID_FCMODELOCAB'
      Origin = 'ID_FCMODELOCAB'
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
    end
  end
  object DSVentaDet: TDataSource
    DataSet = CDSModeloDet
    Left = 232
    Top = 57
  end
  object DSImpuestos: TDataSource
    DataSet = CDSImpuestos
    Left = 224
    Top = 112
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
    Left = 88
    Top = 174
    object CDSSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
  object CDSModeloDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPModeloDet'
    AfterInsert = CDSModeloDetAfterInsert
    BeforePost = CDSModeloDetBeforePost
    AfterPost = CDSModeloDetAfterPost
    AfterDelete = CDSModeloDetAfterPost
    OnNewRecord = CDSModeloDetNewRecord
    Left = 168
    Top = 56
    object CDSModeloDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSModeloDetID_CABMODELO: TIntegerField
      FieldName = 'ID_CABMODELO'
      Origin = 'ID_CABMODELO'
      Required = True
    end
    object CDSModeloDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSModeloDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSModeloDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      OnSetText = CDSModeloDetCODIGOARTICULOSetText
      Size = 8
    end
    object CDSModeloDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSModeloDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object CDSModeloDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSModeloDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSModeloDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Origin = 'TIPOIVA_TASA'
      Required = True
    end
    object CDSModeloDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Origin = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object CDSModeloDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object CDSModeloDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSModeloDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSModeloDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Origin = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object CDSModeloDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
      Required = True
    end
    object CDSModeloDetRENGLON: TFloatField
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
    end
    object CDSModeloDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
      Required = True
      OnGetText = CDSModeloDetUNITARIO_TOTALGetText
      OnSetText = CDSModeloDetUNITARIO_TOTALSetText
      DisplayFormat = ',0.00'
    end
    object CDSModeloDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSModeloDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSModeloDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
      Required = True
    end
    object CDSModeloDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
      Required = True
    end
    object CDSModeloDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
      Required = True
    end
    object CDSModeloDetIVA_UNITARIO: TFloatField
      FieldName = 'IVA_UNITARIO'
      Origin = 'IVA_UNITARIO'
      Required = True
    end
    object CDSModeloDetIVA_TOTAL: TFloatField
      FieldName = 'IVA_TOTAL'
      Origin = 'IVA_TOTAL'
      Required = True
    end
    object CDSModeloDetTOTAL_GRAVADO: TFloatField
      FieldName = 'TOTAL_GRAVADO'
      Origin = 'TOTAL_GRAVADO'
      Required = True
    end
    object CDSModeloDetTOTAL_EXENTO: TFloatField
      FieldName = 'TOTAL_EXENTO'
      Origin = 'TOTAL_EXENTO'
      Required = True
    end
    object CDSModeloDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      OnSetText = CDSModeloDetCANTIDADSetText
    end
    object CDSModeloDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
    end
    object CDSModeloDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
      Origin = 'IVA_SOBRETASA'
    end
    object CDSModeloDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      OnSetText = CDSModeloDetDESCUENTOSetText
    end
    object CDSModeloDetTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      OnGetText = CDSModeloDetTOTALGetText
    end
    object CDSModeloDetMARGEN: TFloatField
      FieldName = 'MARGEN'
      Origin = 'MARGEN'
    end
    object CDSModeloDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
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
    Left = 464
    Top = 8
    object CDSInscripcionCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
  object CDSIva: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPIva'
    Left = 88
    Top = 400
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
    Left = 88
    Top = 448
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
  object DSPBuscaLdr: TDataSetProvider
    DataSet = DMBuscadores.QBuscaLdr
    Options = []
    Left = 544
    Top = 248
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
    Left = 632
    Top = 248
    object CDSBuscaLdrCODIGO_CLIENTE: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 6
      FieldName = 'CODIGO_CLIENTE'
      Required = True
      Size = 6
    end
    object CDSBuscaLdrCODIGO_LDR: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGO_LDR'
      Required = True
    end
    object CDSBuscaLdrDIRECCION: TStringField
      DisplayLabel = 'Direccion'
      DisplayWidth = 35
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSBuscaLdrNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 35
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSBuscaLdrCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Visible = False
      Size = 8
    end
  end
  object DSPBuscaComprob: TDataSetProvider
    DataSet = QBuscaComprob
    Options = [poAllowCommandText]
    Left = 320
    Top = 368
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
    Left = 416
    Top = 368
    object CDSBuscaComprobTIPO_COMPROB: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSBuscaComprobCLASE_COMPROB: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSBuscaComprobSUCURSAL: TIntegerField
      DisplayLabel = 'Suc'
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSBuscaComprobDENOMINACION: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 15
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object CDSBuscaComprobLETRA: TStringField
      DisplayLabel = 'Let'
      DisplayWidth = 1
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobPREFIJO: TStringField
      DisplayLabel = 'Pref.'
      DisplayWidth = 4
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object CDSBuscaComprobNUMERO: TStringField
      DisplayLabel = 'Numero'
      DisplayWidth = 8
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object CDSBuscaComprobID_COMPROBANTE: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSPListaGrupo: TDataSetProvider
    DataSet = QListaGrupo
    Options = []
    Left = 320
    Top = 416
  end
  object CDSListaGrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPListaGrupo'
    Left = 416
    Top = 416
    object CDSListaGrupoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSListaGrupoDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 30
    end
  end
  object DSListaGrupo: TDataSource
    DataSet = CDSListaGrupo
    Left = 496
    Top = 416
  end
  object QModeloCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select Fc.*,'
      '  Fp.Detalle as MuestraCondVenta,'
      '  De.Nombre as MuestraDeposito,'
      '  Su.Detalle as MuestraSucursal,'
      '  Ldr.Nombre as MuestraLdr,'
      '  ins.Detalle as MuestraIva,'
      '  cp.denominacion as MuestraComprobante,'
      '  cp.id_comprobante as Id_TipoComprobante,'
      '  v.nombre as MuestraVendedor from FcModeloCab Fc'
      'left join personal v on v.codigo=fc.vendedor'
      'left join F_Pago Fp on Fp.Codigo=Fc.CondicionVta'
      'join Depositos De  on De.Id=Fc.Deposito'
      'join Sucursal Su  on Su.Codigo=Fc.Sucursal'
      'join inscripcion ins on ins.codigo=Fc.TipoIva'
      
        'join LdrCliente Ldr on ((Ldr.Codigo_Cliente=Fc.Codigo) and (Ldr.' +
        'Codigo_Ldr=Fc.Ldr))'
      'left join comprobantes cp on cp.clase_comprob=Fc.ClaseCpbte and'
      '          cp.letra=fc.Letra and'
      '          cp.sucursal=fc.sucursal and'
      '          cp.tipo_comprob=fc.tipocpbte and'
      '          cp.compra_venta='#39'V'#39
      'where Fc.id_fc=:id'
      ''
      ' '
      ' ')
    Left = 16
    Top = 8
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QModeloCabID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QModeloCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QModeloCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QModeloCabLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QModeloCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object QModeloCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QModeloCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QModeloCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object QModeloCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QModeloCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QModeloCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
      Required = True
    end
    object QModeloCabCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QModeloCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
      Origin = 'CONDICIONVTA'
      Required = True
    end
    object QModeloCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      Origin = 'NETOGRAV1'
    end
    object QModeloCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      Origin = 'NETOGRAV2'
    end
    object QModeloCabDSTO: TFloatField
      FieldName = 'DSTO'
      Origin = 'DSTO'
    end
    object QModeloCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      Origin = 'DSTOIMPORTE'
    end
    object QModeloCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      Origin = 'NETOEXEN1'
    end
    object QModeloCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      Origin = 'NETOEXEN2'
    end
    object QModeloCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QModeloCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QModeloCabZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object QModeloCabLDR: TIntegerField
      FieldName = 'LDR'
      Origin = 'LDR'
      Required = True
    end
    object QModeloCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QModeloCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QModeloCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QModeloCabINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Origin = 'INGRESA_A_CTACTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QModeloCabINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Origin = 'INGRESA_LIBRO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QModeloCabVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object QModeloCabGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
    end
    object QModeloCabMUESTRACONDVENTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACONDVENTA'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QModeloCabMUESTRADEPOSITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QModeloCabMUESTRASUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QModeloCabMUESTRALDR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRALDR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QModeloCabMUESTRAIVA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAIVA'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QModeloCabMUESTRACOMPROBANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QModeloCabID_TIPOCOMPROBANTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QModeloCabMUESTRAVENDEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAVENDEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object QModeloDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select * from FcModeloDet where Id_CabModelo= :id ')
    Left = 24
    Top = 64
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QModeloDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QModeloDetID_CABMODELO: TIntegerField
      FieldName = 'ID_CABMODELO'
      Origin = 'ID_CABMODELO'
      Required = True
    end
    object QModeloDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QModeloDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QModeloDetRENGLON: TFloatField
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
    end
    object QModeloDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object QModeloDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QModeloDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QModeloDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QModeloDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
      Required = True
    end
    object QModeloDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
      Required = True
    end
    object QModeloDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
      Required = True
    end
    object QModeloDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QModeloDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QModeloDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
    end
    object QModeloDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Origin = 'TIPOIVA_TASA'
      Required = True
    end
    object QModeloDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
      Origin = 'IVA_SOBRETASA'
    end
    object QModeloDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Origin = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object QModeloDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
      Required = True
    end
    object QModeloDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
      Required = True
    end
    object QModeloDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
      Required = True
    end
    object QModeloDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
    end
    object QModeloDetTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QModeloDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QModeloDetMARGEN: TFloatField
      FieldName = 'MARGEN'
      Origin = 'MARGEN'
    end
    object QModeloDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QModeloDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QModeloDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Origin = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object QModeloDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
      Required = True
    end
    object QModeloDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QModeloDetIVA_UNITARIO: TFloatField
      FieldName = 'IVA_UNITARIO'
      Origin = 'IVA_UNITARIO'
      Required = True
    end
    object QModeloDetIVA_TOTAL: TFloatField
      FieldName = 'IVA_TOTAL'
      Origin = 'IVA_TOTAL'
      Required = True
    end
    object QModeloDetTOTAL_GRAVADO: TFloatField
      FieldName = 'TOTAL_GRAVADO'
      Origin = 'TOTAL_GRAVADO'
      Required = True
    end
    object QModeloDetTOTAL_EXENTO: TFloatField
      FieldName = 'TOTAL_EXENTO'
      Origin = 'TOTAL_EXENTO'
      Required = True
    end
  end
  object QImpuestos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select * from FcModeloImpuesto Where Id_FcModeloCab=:id')
    Left = 16
    Top = 112
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QPrimerConVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select Min(codigopago) from condventa where codigocliente=:codig' +
        'o')
    Left = 224
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
  end
  object QPrimerLdr: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select min(Codigo_Ldr) From LdrCliente Where Codigo_Cliente=:Cod' +
        'igo')
    Left = 232
    Top = 224
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
  end
  object QPrecioEspecial: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select preciopactado from precioespecialdet '
      'where codigoarticulo=:articulo and '
      'codigocliente=:cliente')
    Left = 328
    Top = 232
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
      'select * from comprobantes where'
      'id_comprobante=:id  '
      
        'and (tipo_comprob='#39'FC'#39' or tipo_comprob='#39'NC'#39' or tipo_comprob='#39'ND'#39 +
        ')'
      'and compra_venta='#39'V'#39
      'and sucursal=:suc')
    Left = 232
    Top = 288
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
  object QBuscaComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from comprobantes where sucursal=:suc and compra_venta=' +
        #39'V'#39' and'
      '(tipo_comprob='#39'FC'#39')')
    Left = 224
    Top = 352
    ParamData = <
      item
        Position = 1
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QListaGrupo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select g.* from gruposmodelo g ')
    Left = 224
    Top = 416
  end
  object QMonedas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from monedas where id=:id')
    Left = 536
    Top = 304
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
  object QTraerRecargoDeLista: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select la.recargo from listaprecioespecialart la'
      'where la.codigoarticulo=:articulo and la.id_cab=:lista')
    Left = 632
    Top = 296
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
  object QListaPrecioPorDefecto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select id,f_pago from  listaprecioespecialcab where pordefecto='#39 +
        'S'#39)
    Left = 536
    Top = 352
    object QListaPrecioPorDefectoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QListaPrecioPorDefectoF_PAGO: TIntegerField
      FieldName = 'F_PAGO'
      Origin = 'F_PAGO'
    end
  end
  object QCoefPrecio: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(coeficiente)  from coeficientes_precios'
      'where codigo= :codigo and '
      '(id_lista_precio= :id_lista or :id_lista = -1 )'
      'and por_defecto = '#39'S'#39)
    Left = 640
    Top = 352
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
  end
  object QDepositoStk: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from DepositoStk  where'
      '(Codigo_Deposito=:codigo_deposito) AND (Codigo_stk=:Codigo)')
    Left = 696
    Top = 432
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
  object QBuscador: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select fc.id_fc,fc.tipocpbte,fc.clasecpbte,fc.codigo,fc.nombre'
      'from fcmodelocab fc'
      'order by fc.nombre ')
    Left = 592
    Top = 536
  end
end
