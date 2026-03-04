object DatosRemitos: TDatosRemitos
  OnDestroy = DataModuleDestroy
  Height = 705
  Width = 1071
  object DSPRtoCab: TDataSetProvider
    DataSet = DMMain_FD.QRemitoCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 11
  end
  object DSPStock: TDataSetProvider
    DataSet = DMMain_FD.QStock
    Options = []
    Left = 24
    Top = 254
  end
  object DSPCondVenta: TDataSetProvider
    DataSet = DMMain_FD.QCondVenta
    Options = []
    Left = 24
    Top = 161
  end
  object DSPRtoDet: TDataSetProvider
    DataSet = DMMain_FD.QRemitoDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 57
  end
  object DSPImpuestos: TDataSetProvider
    DataSet = DMMain_FD.QImpuestoRto
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 108
  end
  object DSPClientes: TDataSetProvider
    DataSet = DMMain_FD.QClientes
    Options = []
    Left = 320
    Top = 104
  end
  object DSPInscripcion: TDataSetProvider
    DataSet = DMMain_FD.QInscripcion
    Options = []
    Left = 320
    Top = 11
  end
  object DSPDeposito: TDataSetProvider
    DataSet = DMMain_FD.QDeposito
    Options = []
    Left = 320
    Top = 158
  end
  object DSPIva: TDataSetProvider
    DataSet = DMMain_FD.QIva
    Options = []
    Left = 320
    Top = 215
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMMain_FD.QSucursal
    Options = [poAllowCommandText]
    Left = 24
    Top = 206
  end
  object DSPLdr: TDataSetProvider
    DataSet = DMMain_FD.QLDR
    Options = []
    Left = 320
    Top = 58
  end
  object IBGRto_Det: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RTODET'
    SystemGenerators = False
    Left = 232
    Top = 64
  end
  object IBGRto_Cab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RTOCAB'
    SystemGenerators = False
    Left = 232
    Top = 16
  end
  object IBGImpuesto: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_IMPUESTO_RTO'
    SystemGenerators = False
    Left = 232
    Top = 120
  end
  object DSListaPrecios: TDataSource
    AutoEdit = False
    DataSet = CDSListaPrecio
    Left = 776
    Top = 224
  end
  object DSTransporte: TDataSource
    DataSet = CDSTransporte
    Left = 776
    Top = 272
  end
  object DSRtoDet: TDataSource
    DataSet = CDSRtoDet
    Left = 168
    Top = 65
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
    Left = 384
    Top = 159
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
    Left = 168
    Top = 120
  end
  object CDSBuscaDeposito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaDeposito'
    Left = 96
    Top = 301
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
    Left = 24
    Top = 301
  end
  object DSExistencia: TDataSource
    DataSet = CDSExistencia
    Left = 168
    Top = 440
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
    Left = 88
    Top = 448
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
      DisplayFormat = ',0.000'
    end
    object CDSExistenciaCOMPROMETIDO: TFloatField
      FieldName = 'COMPROMETIDO'
      DisplayFormat = ',0.000'
    end
    object CDSExistenciaSALDO: TFloatField
      FieldName = 'SALDO'
      DisplayFormat = ',0.000'
    end
    object CDSExistenciaDEPOSITO_STK: TIntegerField
      FieldName = 'DEPOSITO_STK'
    end
    object CDSExistenciaEN_TRANSITO: TFloatField
      FieldName = 'EN_TRANSITO'
      DisplayFormat = ',0.000'
    end
    object CDSExistenciaDEPOSITO_NOMBRE: TStringField
      FieldName = 'DEPOSITO_NOMBRE'
      Size = 25
    end
  end
  object DSPExistencia: TDataSetProvider
    DataSet = DMMain_FD.QExistencia
    Options = []
    Left = 8
    Top = 448
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = []
    Left = 16
    Top = 352
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 96
    Top = 352
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
  object DSPPersonal: TDataSetProvider
    DataSet = DMMain_FD.QPersonal
    Options = []
    Left = 312
    Top = 264
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
    Left = 384
    Top = 264
    object CDSPersonalNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object CDSPersonalCOMISION: TFloatField
      FieldName = 'COMISION'
      Required = True
    end
    object CDSPersonalMUESTRADEPOSITO: TIntegerField
      FieldName = 'MUESTRADEPOSITO'
    end
  end
  object DSPBuscaVendedor: TDataSetProvider
    DataSet = DMBuscadores.QBuscaVendedores
    Options = []
    Left = 16
    Top = 400
  end
  object CDSBuscaVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaVendedor'
    Left = 88
    Top = 400
    object CDSBuscaVendedorCODIGO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSBuscaVendedorNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 55
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSBuscaVendedorCOMISION: TFloatField
      DisplayLabel = '% Comision'
      FieldName = 'COMISION'
      Required = True
      EditFormat = '0.00'
    end
  end
  object DSPBuscaLdr: TDataSetProvider
    DataSet = DMBuscadores.QBuscaLdr
    Options = []
    Left = 312
    Top = 312
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
    Left = 384
    Top = 312
    object CDSBuscaLdrCODIGO_LDR: TIntegerField
      DisplayLabel = 'Ldr'
      DisplayWidth = 10
      FieldName = 'CODIGO_LDR'
      Required = True
    end
    object CDSBuscaLdrNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 35
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSBuscaLdrDIRECCION: TStringField
      DisplayLabel = 'Direccion'
      DisplayWidth = 35
      FieldName = 'DIRECCION'
      Size = 35
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
    Left = 312
    Top = 360
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
    Left = 384
    Top = 360
    object CDSBuscaCondVentaCODIGOPAGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOPAGO'
      Required = True
    end
    object CDSBuscaCondVentaDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Required = True
    end
    object CDSBuscaCondVentaDESCUENTO: TFloatField
      DisplayLabel = 'Dscto'
      DisplayWidth = 12
      FieldName = 'DESCUENTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSBuscaCondVentaPOR_DEFECTO: TStringField
      DisplayLabel = 'Def.'
      FieldName = 'POR_DEFECTO'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object CDSClientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPClientes'
    Left = 384
    Top = 105
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
    object CDSClientesTIPOABONO: TStringField
      FieldName = 'TIPOABONO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO_FC_ABONO'
    end
    object CDSClientesMES_ABONOANUAL: TIntegerField
      FieldName = 'MES_ABONOANUAL'
    end
    object CDSClientesFRANQUICIA: TStringField
      FieldName = 'FRANQUICIA'
      FixedChar = True
      Size = 1
    end
    object CDSClientesDIAS_MAYOR_30: TIntegerField
      FieldName = 'DIAS_MAYOR_30'
    end
    object CDSClientesID_DEPOSITO_FRANQUICIA: TIntegerField
      FieldName = 'ID_DEPOSITO_FRANQUICIA'
    end
    object CDSClientesID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
    end
    object CDSClientesIMPRIME_SALDOFACTURA: TStringField
      FieldName = 'IMPRIME_SALDOFACTURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesCORTAR_SERVICIO: TStringField
      FieldName = 'CORTAR_SERVICIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesCON_PLANPAGO: TStringField
      FieldName = 'CON_PLANPAGO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesDIRECCION_POSTAL: TStringField
      FieldName = 'DIRECCION_POSTAL'
      Size = 35
    end
    object CDSClientesCALLE_1: TStringField
      FieldName = 'CALLE_1'
      Size = 35
    end
    object CDSClientesCALLE_2: TStringField
      FieldName = 'CALLE_2'
      Size = 35
    end
    object CDSClientesVENDER_DE_CTDO: TStringField
      FieldName = 'VENDER_DE_CTDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesCORREOELECTRONICO_2: TStringField
      FieldName = 'CORREOELECTRONICO_2'
      Size = 100
    end
    object CDSClientesPRESENTO_F8001: TStringField
      FieldName = 'PRESENTO_F8001'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesDESDE_F8001: TSQLTimeStampField
      FieldName = 'DESDE_F8001'
    end
    object CDSClientesHASTA_F8001: TSQLTimeStampField
      FieldName = 'HASTA_F8001'
    end
    object CDSClientesID_TARJETACREDITO: TIntegerField
      FieldName = 'ID_TARJETACREDITO'
      Required = True
    end
    object CDSClientesNRO_TARJETA_C: TStringField
      FieldName = 'NRO_TARJETA_C'
    end
    object CDSClientesNRO_SEG_TC: TStringField
      FieldName = 'NRO_SEG_TC'
      FixedChar = True
      Size = 4
    end
    object CDSClientesID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Required = True
    end
    object CDSClientesNRO_CTA_BCO: TStringField
      FieldName = 'NRO_CTA_BCO'
      Size = 22
    end
    object CDSClientesOBSERVACIONES1: TStringField
      FieldName = 'OBSERVACIONES1'
      Size = 60
    end
    object CDSClientesOBSERVACIONES2: TStringField
      FieldName = 'OBSERVACIONES2'
      Size = 60
    end
    object CDSClientesAVISO: TStringField
      FieldName = 'AVISO'
      Size = 250
    end
  end
  object CDSRtoCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'TipoCpbte'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPRtoCab'
    BeforePost = CDSRtoCabBeforePost
    OnNewRecord = CDSRtoCabNewRecord
    Left = 96
    Top = 8
    object CDSRtoCabID_RTO: TIntegerField
      FieldName = 'ID_RTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRtoCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSRtoCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSRtoCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSRtoCabCODIGO: TStringField
      FieldName = 'CODIGO'
      OnSetText = CDSRtoCabCODIGOSetText
      Size = 6
    end
    object CDSRtoCabLETRARTO: TStringField
      FieldName = 'LETRARTO'
      Size = 1
    end
    object CDSRtoCabSUCRTO: TStringField
      FieldName = 'SUCRTO'
      OnSetText = CDSRtoCabSUCRTOSetText
      Size = 4
    end
    object CDSRtoCabNUMERORTO: TStringField
      FieldName = 'NUMERORTO'
      OnSetText = CDSRtoCabNUMERORTOSetText
      Size = 8
    end
    object CDSRtoCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSRtoCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSRtoCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSRtoCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSRtoCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSRtoCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object CDSRtoCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSRtoCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
    end
    object CDSRtoCabFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      OnChange = CDSRtoCabFECHAVTAChange
    end
    object CDSRtoCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object CDSRtoCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
      OnSetText = CDSRtoCabCONDICIONVTASetText
    end
    object CDSRtoCabANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object CDSRtoCabNROFACT: TStringField
      FieldName = 'NROFACT'
      EditMask = 'a-####-########;0;_'
      Size = 13
    end
    object CDSRtoCabN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
    end
    object CDSRtoCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      OnGetText = CDSRtoCabNETOGRAV1GetText
    end
    object CDSRtoCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      OnGetText = CDSRtoCabNETOGRAV2GetText
    end
    object CDSRtoCabDSTO: TFloatField
      FieldName = 'DSTO'
      OnSetText = CDSRtoCabDSTOSetText
    end
    object CDSRtoCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      OnGetText = CDSRtoCabDSTOIMPORTEGetText
    end
    object CDSRtoCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
    end
    object CDSRtoCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
    end
    object CDSRtoCabTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object CDSRtoCabDEBE: TFloatField
      FieldName = 'DEBE'
    end
    object CDSRtoCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object CDSRtoCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object CDSRtoCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object CDSRtoCabCPTE_MANUAL: TStringField
      FieldName = 'CPTE_MANUAL'
      Size = 1
    end
    object CDSRtoCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      OnSetText = CDSRtoCabSUCURSALSetText
    end
    object CDSRtoCabZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object CDSRtoCabLDR: TIntegerField
      FieldName = 'LDR'
      OnSetText = CDSRtoCabLDRSetText
    end
    object CDSRtoCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      OnSetText = CDSRtoCabDepositoSetText
    end
    object CDSRtoCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object CDSRtoCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      OnChange = CDSRtoCabDESGLOZAIVAChange
      Size = 1
    end
    object CDSRtoCabNROENTREGA: TIntegerField
      FieldName = 'NROENTREGA'
    end
    object CDSRtoCabINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Size = 1
    end
    object CDSRtoCabINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Size = 1
    end
    object CDSRtoCabIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
    end
    object CDSRtoCabCOMISIONVENDEDOR: TFloatField
      FieldName = 'COMISIONVENDEDOR'
    end
    object CDSRtoCabVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      OnSetText = CDSRtoCabVENDEDORSetText
      Size = 6
    end
    object CDSRtoCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSRtoCabNOTAPEDIDO_ID: TIntegerField
      FieldName = 'NOTAPEDIDO_ID'
    end
    object CDSRtoCabNOTAPEDIDO_NROCPBTE: TStringField
      FieldName = 'NOTAPEDIDO_NROCPBTE'
      Size = 13
    end
    object CDSRtoCabID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
    end
    object CDSRtoCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object CDSRtoCabTAREAS: TStringField
      FieldName = 'TAREAS'
      Required = True
      Size = 10
    end
    object CDSRtoCabPRESUPUESTO_ID: TIntegerField
      FieldName = 'PRESUPUESTO_ID'
    end
    object CDSRtoCabPRESUPUESTO_NROCPBTE: TStringField
      FieldName = 'PRESUPUESTO_NROCPBTE'
      EditMask = 'a-####-########;0'
      Size = 13
    end
    object CDSRtoCabNOTAVTA_ID: TIntegerField
      FieldName = 'NOTAVTA_ID'
    end
    object CDSRtoCabNOTAVTA_NROCPBTE: TStringField
      FieldName = 'NOTAVTA_NROCPBTE'
      Size = 13
    end
    object CDSRtoCabMUESTRACONDVENTA: TStringField
      FieldName = 'MUESTRACONDVENTA'
      ProviderFlags = []
    end
    object CDSRtoCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
    object CDSRtoCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSRtoCabMUESTRALDR: TStringField
      FieldName = 'MUESTRALDR'
      ProviderFlags = []
      Size = 35
    end
    object CDSRtoCabMUESTRAIVA: TStringField
      FieldName = 'MUESTRAIVA'
      ProviderFlags = []
      Size = 15
    end
    object CDSRtoCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object CDSRtoCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
      OnSetText = CDSRtoCabID_TIPOCOMPROBANTESetText
    end
    object CDSRtoCabMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object CDSRtoCabCON_GTIA_EXTENDIDA: TStringField
      FieldName = 'CON_GTIA_EXTENDIDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSRtoCabPOLIZA: TStringField
      FieldName = 'POLIZA'
    end
    object CDSRtoCabMUESTRATELEFONO1: TStringField
      FieldName = 'MUESTRATELEFONO1'
      ProviderFlags = []
      Size = 10
    end
    object CDSRtoCabMUESTRATELEFONO2: TStringField
      FieldName = 'MUESTRATELEFONO2'
      ProviderFlags = []
      Size = 10
    end
    object CDSRtoCabCANT_BULTOS: TIntegerField
      FieldName = 'CANT_BULTOS'
      Required = True
    end
    object CDSRtoCabMUESTRALDIRECCIONLDR: TStringField
      FieldName = 'MUESTRALDIRECCIONLDR'
      ProviderFlags = []
      Size = 35
    end
    object CDSRtoCabMUESTRACUITRANSPORTE: TStringField
      FieldName = 'MUESTRACUITRANSPORTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSRtoCabMUESTRACONDIVATRANSPORTE: TStringField
      FieldName = 'MUESTRACONDIVATRANSPORTE'
      ProviderFlags = []
      Size = 15
    end
    object CDSRtoCabREMITO_ELECTRONICO: TStringField
      FieldName = 'REMITO_ELECTRONICO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSRtoCabCAE: TStringField
      FieldName = 'CAE'
      Required = True
      Size = 50
    end
    object CDSRtoCabCAE_VENCIMIENTO: TSQLTimeStampField
      FieldName = 'CAE_VENCIMIENTO'
    end
    object CDSRtoCabMUESTRACODIGOAFIP: TStringField
      FieldName = 'MUESTRACODIGOAFIP'
      ProviderFlags = []
      Size = 3
    end
    object CDSRtoCabMUESTRAOBSCLIENTE1: TStringField
      FieldName = 'MUESTRAOBSCLIENTE1'
      ProviderFlags = []
      Size = 60
    end
    object CDSRtoCabMUESTRAOBSCLIENTE2: TStringField
      FieldName = 'MUESTRAOBSCLIENTE2'
      ProviderFlags = []
      Size = 60
    end
    object CDSRtoCabDEVOLUCION: TStringField
      FieldName = 'DEVOLUCION'
      Required = True
      OnChange = CDSRtoCabDEVOLUCIONChange
      FixedChar = True
      Size = 1
    end
    object CDSRtoCabMUESTRADIRTRANSPORTE: TStringField
      FieldName = 'MUESTRADIRTRANSPORTE'
      ProviderFlags = []
      Size = 50
    end
    object CDSRtoCabMUESTRATETRANSPORTE: TStringField
      FieldName = 'MUESTRATETRANSPORTE'
      ProviderFlags = []
      Size = 30
    end
    object CDSRtoCabMUESTRALOCALITRANSPORTE: TStringField
      FieldName = 'MUESTRALOCALITRANSPORTE'
      ProviderFlags = []
      Size = 50
    end
    object CDSRtoCabID_CHOFER: TIntegerField
      FieldName = 'ID_CHOFER'
    end
    object CDSRtoCabMUESTRACHOFER: TStringField
      FieldName = 'MUESTRACHOFER'
      ProviderFlags = []
      Size = 45
    end
    object CDSRtoCabTRASNPORTE_UNIDAD: TIntegerField
      FieldName = 'TRASNPORTE_UNIDAD'
    end
    object CDSRtoCabTRASNPORTE_ADICIONAL: TIntegerField
      FieldName = 'TRASNPORTE_ADICIONAL'
    end
    object CDSRtoCabMUESTRANOMBRETRANSPORTE: TStringField
      FieldName = 'MUESTRANOMBRETRANSPORTE'
      ProviderFlags = []
      Size = 50
    end
    object CDSRtoCabMUESTRACPOSTALLDR: TStringField
      FieldName = 'MUESTRACPOSTALLDR'
      ProviderFlags = []
      Size = 8
    end
    object CDSRtoCabMUESTRALOCALIDADLDR: TStringField
      FieldName = 'MUESTRALOCALIDADLDR'
      ProviderFlags = []
      Size = 40
    end
    object CDSRtoCabMUESTRATELE: TStringField
      FieldName = 'MUESTRATELE'
      ProviderFlags = []
      Size = 6
    end
    object CDSRtoCabPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Required = True
    end
    object CDSRtoCabMUESTRA_UNI_TRANSPORTE: TStringField
      FieldName = 'MUESTRA_UNI_TRANSPORTE'
      ProviderFlags = []
      Size = 25
    end
    object CDSRtoCabMUESTRA_AUX_TRANSPORTE: TStringField
      FieldName = 'MUESTRA_AUX_TRANSPORTE'
      ProviderFlags = []
      Size = 25
    end
    object CDSRtoCabID_TRANSFERENCIA: TIntegerField
      FieldName = 'ID_TRANSFERENCIA'
      Required = True
    end
    object CDSRtoCabMUESTRANOTAPEDIDO: TStringField
      FieldName = 'MUESTRANOTAPEDIDO'
      ProviderFlags = []
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object CDSRtoCabMUESTRA_ID_NOTAPEDIDO: TIntegerField
      FieldName = 'MUESTRA_ID_NOTAPEDIDO'
      ProviderFlags = []
    end
    object CDSRtoCabFECHA_DEVOLUCION_ALQ: TSQLTimeStampField
      FieldName = 'FECHA_DEVOLUCION_ALQ'
      OnChange = CDSRtoCabFECHA_DEVOLUCION_ALQChange
    end
    object CDSRtoCabRENGLONES: TSmallintField
      FieldName = 'RENGLONES'
    end
    object CDSRtoCabDIASALQ: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'DIASALQ'
      OnChange = CDSRtoCabDiasAlqChange
    end
    object CDSRtoCabFECHA_ENTREGA: TSQLTimeStampField
      FieldName = 'FECHA_ENTREGA'
      OnChange = CDSRtoCabFECHA_ENTREGAChange
    end
    object CDSRtoCabMUESTRAPROVINCIA: TStringField
      FieldName = 'MUESTRAPROVINCIA'
      ProviderFlags = []
    end
    object CDSRtoCabLETRACOT: TStringField
      FieldName = 'LETRACOT'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CDSRtoCabMUESTRADOMINIOUNIDTR: TStringField
      FieldName = 'MUESTRADOMINIOUNIDTR'
      ProviderFlags = []
      Size = 12
    end
    object CDSRtoCabCOT: TStringField
      FieldName = 'COT'
      Size = 25
    end
    object CDSRtoCabMUESTRADIRECCION_CALLE: TStringField
      FieldName = 'MUESTRADIRECCION_CALLE'
      ProviderFlags = []
      Size = 40
    end
    object CDSRtoCabMUESTRADIRECCION_NRO: TStringField
      FieldName = 'MUESTRADIRECCION_NRO'
      ProviderFlags = []
      Size = 10
    end
    object CDSRtoCabMUESTRADIRECCION_PISO: TStringField
      FieldName = 'MUESTRADIRECCION_PISO'
      ProviderFlags = []
      Size = 10
    end
    object CDSRtoCabMUESTRADIRECCION_DEPTO: TStringField
      FieldName = 'MUESTRADIRECCION_DEPTO'
      ProviderFlags = []
      Size = 10
    end
    object CDSRtoCabMUESTRANOMBREUSUARIOREAL: TStringField
      FieldName = 'MUESTRANOMBREUSUARIOREAL'
      ProviderFlags = []
      Size = 40
    end
    object CDSRtoCabREMITO_IMPRENTA: TStringField
      FieldName = 'REMITO_IMPRENTA'
      Size = 100
    end
    object CDSRtoCabREMITO_FECHA_RANGO: TStringField
      FieldName = 'REMITO_FECHA_RANGO'
      Size = 100
    end
    object CDSRtoCabREMITO_DIRECCION: TStringField
      FieldName = 'REMITO_DIRECCION'
      Size = 100
    end
    object CDSRtoCabREMITO_CAI: TStringField
      FieldName = 'REMITO_CAI'
      Size = 40
    end
    object CDSRtoCabREMITO_VENCIMIENTO_CAI: TStringField
      FieldName = 'REMITO_VENCIMIENTO_CAI'
    end
  end
  object CDSRtoDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRtoDet'
    BeforeInsert = CDSRtoDetBeforeInsert
    AfterInsert = CDSRtoDetAfterInsert
    BeforePost = CDSRtoDetBeforePost
    AfterPost = CDSRtoDetAfterPost
    AfterDelete = CDSRtoDetAfterDelete
    OnCalcFields = CDSRtoDetCalcFields
    OnNewRecord = CDSRtoDetNewRecord
    Left = 96
    Top = 57
    object CDSRtoDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRtoDetID_CABRTO: TIntegerField
      FieldName = 'ID_CABRTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSRtoDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSRtoDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSRtoDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSRtoDetRENGLON: TFloatField
      FieldName = 'RENGLON'
    end
    object CDSRtoDetFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
    end
    object CDSRtoDetCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOARTICULO'
      OnGetText = CDSRtoDetCODIGOARTICULOGetText
      OnSetText = CDSRtoDetCodigoArticuloSetText
      EditMask = 'cccccccccccccccccccccccccccccccccccccccccccccccccc;0; '
      Size = 8
    end
    object CDSRtoDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSRtoDetDETALLE_ADICIONAL: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Size = 300
    end
    object CDSRtoDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object CDSRtoDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      OnSetText = CDSRtoDetDescuentoSetText
    end
    object CDSRtoDetCANTIDAD: TFloatField
      DisplayWidth = 16
      FieldName = 'CANTIDAD'
      OnSetText = CDSRtoDetCantidadSetText
    end
    object CDSRtoDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Size = 1
    end
    object CDSRtoDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
    end
    object CDSRtoDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      OnSetText = CDSRtoDetIVA_TasaSetText
    end
    object CDSRtoDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
    end
    object CDSRtoDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
    end
    object CDSRtoDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
    end
    object CDSRtoDetTOTAL_GRAVADO: TFloatField
      FieldName = 'TOTAL_GRAVADO'
      Required = True
    end
    object CDSRtoDetTOTAL_EXENTO: TFloatField
      FieldName = 'TOTAL_EXENTO'
      Required = True
    end
    object CDSRtoDetTOTAL: TFloatField
      FieldName = 'TOTAL'
      OnGetText = CDSRtoDetTotalGetText
    end
    object CDSRtoDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object CDSRtoDetMARGEN: TFloatField
      FieldName = 'MARGEN'
    end
    object CDSRtoDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      OnGetText = CDSRtoDetAFECTA_STOCKGetText
      Size = 1
    end
    object CDSRtoDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object CDSRtoDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object CDSRtoDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Required = True
    end
    object CDSRtoDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Required = True
    end
    object CDSRtoDetLOTE: TIntegerField
      FieldName = 'LOTE'
      Required = True
    end
    object CDSRtoDetOBSERVACION: TStringField
      FieldName = 'OBSERVACION'
    end
    object CDSRtoDetNOTAVENTA_ID: TIntegerField
      FieldName = 'NOTAVENTA_ID'
    end
    object CDSRtoDetNOTAVENTA_ID_DET: TIntegerField
      FieldName = 'NOTAVENTA_ID_DET'
    end
    object CDSRtoDetNRO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'NRO'
    end
    object CDSRtoDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
    end
    object CDSRtoDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
    end
    object CDSRtoDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
    end
    object CDSRtoDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
    end
    object CDSRtoDetIVA_UNITARIO: TFloatField
      FieldName = 'IVA_UNITARIO'
      Required = True
    end
    object CDSRtoDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
    end
    object CDSRtoDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      OnGetText = CDSRtoDetUnitario_TotalGetText
      OnSetText = CDSRtoDetUnitario_TotalSetText
    end
    object CDSRtoDetIVA_TOTAL: TFloatField
      FieldName = 'IVA_TOTAL'
      Required = True
    end
    object CDSRtoDetMUESTRAMONEDA: TStringField
      FieldName = 'MUESTRAMONEDA'
      ProviderFlags = []
      Size = 15
    end
    object CDSRtoDetMUESTRASIGNO: TStringField
      FieldName = 'MUESTRASIGNO'
      ProviderFlags = []
      Size = 5
    end
    object CDSRtoDetMUESTRACONTENIDO: TFloatField
      FieldName = 'MUESTRACONTENIDO'
      ProviderFlags = []
    end
    object CDSRtoDetMUESTRAPRESENTACION: TFloatField
      FieldName = 'MUESTRAPRESENTACION'
      ProviderFlags = []
    end
    object CDSRtoDetCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Size = 50
    end
    object CDSRtoDetMUESTRACODALTERNATIVO: TStringField
      FieldName = 'MUESTRACODALTERNATIVO'
      ProviderFlags = []
    end
    object CDSRtoDetPRECIO_EDITABLE: TStringField
      FieldName = 'PRECIO_EDITABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSRtoDetCANT_FACTURA: TFloatField
      FieldName = 'CANT_FACTURA'
      Required = True
    end
    object CDSRtoDetPRESENTACION_CANT: TFloatField
      FieldName = 'PRESENTACION_CANT'
      Required = True
    end
    object CDSRtoDetCANTIDAD_UNIDADES: TFloatField
      FieldName = 'CANTIDAD_UNIDADES'
      Required = True
      OnSetText = CDSRtoDetCANTIDAD_UNIDADESSetText
      DisplayFormat = ',0.000'
      EditFormat = '0.000'
    end
    object CDSRtoDetID_MERCA_ACOPIO_DET: TIntegerField
      FieldName = 'ID_MERCA_ACOPIO_DET'
      Required = True
    end
    object CDSRtoDetMUESTRARUBRO: TStringField
      FieldName = 'MUESTRARUBRO'
      ProviderFlags = []
      Size = 3
    end
    object CDSRtoDetMUESTRADETALLERUBRO: TStringField
      FieldName = 'MUESTRADETALLERUBRO'
      ProviderFlags = []
      Size = 35
    end
    object CDSRtoDetMUESTRASUBRUB: TStringField
      FieldName = 'MUESTRASUBRUB'
      ProviderFlags = []
      Size = 5
    end
    object CDSRtoDetMUESTRADETALLESUBRUB: TStringField
      FieldName = 'MUESTRADETALLESUBRUB'
      ProviderFlags = []
      Size = 45
    end
    object CDSRtoDetPRESENTACION_UNIDAD: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      Size = 3
    end
    object CDSRtoDetID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      OnGetText = CDSRtoDetID_FACTURAGetText
    end
    object CDSRtoDetMUESTRAFACTURA: TStringField
      FieldName = 'MUESTRAFACTURA'
      ProviderFlags = []
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object CDSRtoDetCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = []
      Size = 6
    end
    object CDSRtoDetID_DET_OPRODUCCION: TIntegerField
      FieldName = 'ID_DET_OPRODUCCION'
      Required = True
    end
    object CDSRtoDetMUESTRALISTAPRECIO: TIntegerField
      FieldName = 'MUESTRALISTAPRECIO'
      ProviderFlags = []
    end
    object CDSRtoDetSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      ProviderFlags = []
    end
    object CDSRtoDetCONTROLA_TRAZABILIDAD: TStringField
      FieldName = 'CONTROLA_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
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
    Left = 96
    Top = 104
    object CDSImpuestosID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSImpuestosID_RTOCAB: TIntegerField
      FieldName = 'ID_RTOCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSImpuestosCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
    end
    object CDSImpuestosDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSImpuestosNETO: TFloatField
      FieldName = 'NETO'
    end
    object CDSImpuestosTASA: TFloatField
      FieldName = 'TASA'
    end
    object CDSImpuestosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
  end
  object CDSCondVenta: TClientDataSet
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
    ProviderName = 'DSPCondVenta'
    Left = 96
    Top = 161
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
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPSucursal'
    Left = 96
    Top = 206
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
    object CDSSucursalCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSSucursalRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
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
    Left = 96
    Top = 254
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
      Size = 300
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
    object CDSStockPLU_SECCION: TStringField
      FieldName = 'PLU_SECCION'
      Required = True
      Size = 50
    end
    object CDSStockCONTROL_TRAZABILIDAD: TStringField
      FieldName = 'CONTROL_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
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
    Left = 384
    Top = 9
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
    Left = 384
    Top = 57
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
  object CDSIva: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPIva'
    Left = 384
    Top = 215
    object CDSIvaCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSIvaDESCRIPCION: TStringField
      DisplayWidth = 15
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object CDSIvaTASA: TFloatField
      DisplayWidth = 16
      FieldName = 'TASA'
    end
    object CDSIvaCOLUMNA: TSmallintField
      DisplayWidth = 10
      FieldName = 'COLUMNA'
      Required = True
    end
  end
  object spRestaurarNV: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'DESMARCAR_NOTAVTA_DESDE_RTO'
    Left = 742
    Top = 11
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end>
  end
  object spPasaFiscal: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'INGRESAR_RTOS_A_FISCAL'
    Left = 742
    Top = 59
    ParamData = <
      item
        Name = 'ID_RTO'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'CLIENTE'
        DataType = ftString
        Precision = 6
        ParamType = ptInput
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Precision = 35
        ParamType = ptInput
      end
      item
        Name = 'FECHA'
        DataType = ftTimeStamp
        Precision = 8
        ParamType = ptInput
      end
      item
        Name = 'NROCPBTE'
        DataType = ftString
        Precision = 13
        ParamType = ptInput
      end
      item
        Name = 'IMPORTE'
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 2
        ParamType = ptInput
      end>
  end
  object QAnulacion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'UPDATE FcVtaCab SET'
      'Anulado='#39'S'#39' WHERE id_fc=:id and tipoCpbte=:Tipo')
    Left = 704
    Top = 564
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
  object CDSListaPrecio: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'uso'
        ParamType = ptInput
      end>
    ProviderName = 'DSPListaPrecio'
    Left = 712
    Top = 224
    object CDSListaPrecioID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSListaPrecioNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object CDSListaPrecioF_PAGO: TIntegerField
      FieldName = 'F_PAGO'
      Origin = 'F_PAGO'
    end
  end
  object DSPListaPrecio: TDataSetProvider
    DataSet = QListaPrecio
    Options = []
    Left = 656
    Top = 224
  end
  object CDSTransporte: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTransporte'
    Left = 712
    Top = 272
    object CDSTransporteID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSTransporteNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object CDSTransporteDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 50
    end
    object CDSTransporteTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Origin = 'TELEFONO'
      Size = 30
    end
    object CDSTransporteLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 50
    end
    object CDSTransporteCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
    end
    object CDSTransporteCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
  end
  object DSPTransporte: TDataSetProvider
    DataSet = QTransporte
    Options = []
    Left = 648
    Top = 272
  end
  object CDSTarea: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTarea'
    Left = 712
    Top = 328
    object CDSTareaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSTareaTAREA: TStringField
      FieldName = 'TAREA'
      Origin = 'TAREA'
    end
  end
  object DSPTarea: TDataSetProvider
    DataSet = QTarea
    Options = []
    Left = 648
    Top = 328
  end
  object spMarcarImpreso: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'MARCAR_RT_IMPRESO'
    Left = 740
    Top = 111
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end>
  end
  object spRestaurarPres: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'DESMARCAR_PRESUPUESTO_DESDE_RTO'
    Left = 742
    Top = 163
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end>
  end
  object spRestaurarNP: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'RECUPERAR_NP_CLIENTE'
    Left = 830
    Top = 331
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end>
  end
  object QLimpiarRtosSinFactura: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update rtocab r set r.idfactura=null, r.nrofact=null '
      'where r.idfactura<=1 and ( r.anulado='#39'N'#39' and r.anulado<>'#39'*'#39' )')
    Left = 720
    Top = 416
  end
  object QMarcarEntregado: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update rtocab r set r.idfactura=1 ,  r.nrofact='#39'S/N'#39' '
      'where r.id_rto = :id')
    Left = 920
    Top = 392
    ParamData = <
      item
        Name = 'id'
        ParamType = ptInput
      end>
  end
  object CDSDetalleXML: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 376
    Top = 493
  end
  object CDSMoneda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMoneda'
    Left = 96
    Top = 496
    object CDSMonedaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMonedaMONEDA: TStringField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Size = 15
    end
    object CDSMonedaCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object CDSMonedaSIGNO: TStringField
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      Size = 5
    end
    object CDSMonedaORDEN: TSmallintField
      FieldName = 'ORDEN'
      Origin = 'ORDEN'
      Required = True
    end
    object CDSMonedaCOTIZACION_COMPRA: TFloatField
      FieldName = 'COTIZACION_COMPRA'
      Origin = 'COTIZACION_COMPRA'
    end
  end
  object DSPMoneda: TDataSetProvider
    DataSet = QMoneda
    Options = []
    Left = 8
    Top = 496
  end
  object DSMoneda: TDataSource
    DataSet = CDSMoneda
    Left = 256
    Top = 488
  end
  object spNoFacturable: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'MARCAR_RT_NOFACTURABLE'
    Left = 520
    Top = 544
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end>
  end
  object spRecuperarRto: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'RECUPERAR_RTO'
    Left = 816
    Top = 384
    ParamData = <
      item
        Name = 'ID_RTO'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end>
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = DMMain_FD.QEmpresa
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 456
    Top = 227
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    Left = 538
    Top = 224
    object CDSEmpresaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object CDSEmpresaACTIVIDAD: TStringField
      FieldName = 'ACTIVIDAD'
      Origin = 'ACTIVIDAD'
      Size = 30
    end
    object CDSEmpresaDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 30
    end
    object CDSEmpresaLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 30
    end
    object CDSEmpresaCORREO: TStringField
      FieldName = 'CORREO'
      Origin = 'CORREO'
      Size = 30
    end
    object CDSEmpresaTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Origin = 'TELEFONO1'
      Size = 10
    end
    object CDSEmpresaTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Origin = 'TELEFONO2'
      Size = 10
    end
    object CDSEmpresaCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSEmpresaCONDICIONIVA: TStringField
      FieldName = 'CONDICIONIVA'
      Origin = 'CONDICIONIVA'
      Size = 15
    end
    object CDSEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField
      FieldName = 'NRO_AGTE_RET_INGBRUTOS'
      Origin = 'NRO_AGTE_RET_INGBRUTOS'
      Size = 15
    end
    object CDSEmpresaLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
    object CDSEmpresaCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object CDSEmpresaNRO_AGTE_RET_GANANCIA: TStringField
      FieldName = 'NRO_AGTE_RET_GANANCIA'
      Origin = 'NRO_AGTE_RET_GANANCIA'
      Size = 15
    end
    object CDSEmpresaAG_RET_GANANCIA: TStringField
      FieldName = 'AG_RET_GANANCIA'
      Origin = 'AG_RET_GANANCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaAG_RET_ING_BRUTOS: TStringField
      FieldName = 'AG_RET_ING_BRUTOS'
      Origin = 'AG_RET_ING_BRUTOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField
      FieldName = 'AG_PERCEPCION_ING_BRUTOS'
      Origin = 'AG_PERCEPCION_ING_BRUTOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaTASA_PERCEPCION_IB: TFloatField
      FieldName = 'TASA_PERCEPCION_IB'
      Origin = 'TASA_PERCEPCION_IB'
    end
    object CDSEmpresaMINO_IMP_PERCEP_IB: TFloatField
      FieldName = 'MINO_IMP_PERCEP_IB'
      Origin = 'MINO_IMP_PERCEP_IB'
    end
    object CDSEmpresaPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
      Origin = 'PROVINCIA'
    end
    object CDSEmpresaTASA_RET_IIBB: TFloatField
      FieldName = 'TASA_RET_IIBB'
      Origin = 'TASA_RET_IIBB'
      Required = True
    end
    object CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField
      FieldName = 'MINIMO_IMP_RET_IIBB'
      Origin = 'MINIMO_IMP_RET_IIBB'
      Required = True
    end
    object CDSEmpresaNOMBRE_FANTASIA: TStringField
      FieldName = 'NOMBRE_FANTASIA'
      Origin = 'NOMBRE_FANTASIA'
      Size = 50
    end
    object CDSEmpresaID_CPOSTAL: TIntegerField
      FieldName = 'ID_CPOSTAL'
      Origin = 'ID_POSTAL'
      ProviderFlags = []
    end
    object CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField
      FieldName = 'FECHA_INICIO_ACTI'
      Origin = 'FECHA_INICIO_ACTI'
    end
    object CDSEmpresaCODIGO_COT: TStringField
      FieldName = 'CODIGO_COT'
      Origin = 'CODIGO_COT'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaCOD_ACTIVIDAD: TStringField
      FieldName = 'COD_ACTIVIDAD'
      Origin = 'COD_ACTIVIDAD'
      Size = 10
    end
    object CDSEmpresaDIRECCION_NRO: TStringField
      FieldName = 'DIRECCION_NRO'
      Origin = 'DIRECCION_NRO'
      Size = 10
    end
    object CDSEmpresaPUNITORIOS: TFloatField
      FieldName = 'PUNITORIOS'
      Origin = 'PUNITORIOS'
      Required = True
    end
    object CDSEmpresaNRO_RENSPA: TStringField
      FieldName = 'NRO_RENSPA'
      Origin = 'NRO_RENSPA'
    end
    object CDSEmpresaNRO_RUCA: TIntegerField
      FieldName = 'NRO_RUCA'
      Origin = 'NRO_RUCA'
    end
    object CDSEmpresaCUIT_AUTORIZADO: TStringField
      FieldName = 'CUIT_AUTORIZADO'
      Origin = 'CUIT_AUTORIZADO'
      Size = 13
    end
    object CDSEmpresaNOMBRE_AUTORIZADO: TStringField
      FieldName = 'NOMBRE_AUTORIZADO'
      Origin = 'NOMBRE_AUTORIZADO'
      Size = 50
    end
    object CDSEmpresaCBU: TStringField
      FieldName = 'CBU'
      Origin = 'CBU'
      Size = 22
    end
    object CDSEmpresaAG_PERCEPCION_IVA: TStringField
      FieldName = 'AG_PERCEPCION_IVA'
      Origin = 'AG_PERCEPCION_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaMIN_IMP_PERCEPCION_IVA: TFloatField
      FieldName = 'MIN_IMP_PERCEPCION_IVA'
      Origin = 'MIN_IMP_PERCEPCION_IVA'
      Required = True
    end
    object CDSEmpresaTASA_LEY15311: TFloatField
      FieldName = 'TASA_LEY15311'
      Origin = 'TASA_LEY15311'
      Required = True
    end
  end
  object CDSUnidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPUnidades'
    Left = 240
    Top = 304
  end
  object DSPUnidades: TDataSetProvider
    Options = []
    Left = 232
    Top = 248
  end
  object DSPTroqueles: TDataSetProvider
    DataSet = QTroqueles
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 904
    Top = 248
  end
  object CDSTroqueles: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'cliente'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cliente'
        ParamType = ptInput
      end>
    ProviderName = 'DSPTroqueles'
    Left = 912
    Top = 200
    object CDSTroquelesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSTroquelesNRO_TROQUEL: TStringField
      DisplayLabel = 'Nro.Troquel'
      FieldName = 'NRO_TROQUEL'
      Origin = 'NRO_TROQUEL'
    end
    object CDSTroquelesFECHA_INGRESO: TSQLTimeStampField
      DisplayLabel = 'F.Ingreso'
      FieldName = 'FECHA_INGRESO'
      Origin = 'FECHA_INGRESO'
    end
    object CDSTroquelesFECHA_EGRESO: TSQLTimeStampField
      DisplayLabel = 'F.Egreso'
      FieldName = 'FECHA_EGRESO'
      Origin = 'FECHA_EGRESO'
    end
    object CDSTroquelesID_REMITO: TIntegerField
      FieldName = 'ID_REMITO'
      Origin = 'ID_REMITO'
    end
    object CDSTroquelesCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object CDSTroquelesDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 45
    end
  end
  object DSTroqueles: TDataSource
    DataSet = CDSTroqueles
    Left = 922
    Top = 152
  end
  object DSPRtoTroqueles: TDataSetProvider
    DataSet = DMMain_FD.QRemitoTroqueles
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 553
  end
  object CDSRtoTroqueles: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRtoTroqueles'
    OnNewRecord = CDSRtoTroquelesNewRecord
    Left = 104
    Top = 553
    object CDSRtoTroquelesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRtoTroquelesID_RTO: TIntegerField
      FieldName = 'ID_RTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRtoTroquelesID_TROQUEL: TIntegerField
      FieldName = 'ID_TROQUEL'
      Required = True
    end
    object CDSRtoTroquelesNRO_TROQUEL: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro.Troquel'
      FieldName = 'NRO_TROQUEL'
    end
    object CDSRtoTroquelesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
  end
  object ibgRtoTroquel: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RTO_TROQUELES'
    SystemGenerators = False
    Left = 272
    Top = 552
  end
  object DSRtoTroqueles: TDataSource
    DataSet = CDSRtoTroqueles
    Left = 176
    Top = 552
  end
  object QActualizaModifStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update rtodet rd set rd.afecta_stock = :estado where rd.id_cabrt' +
        'o=:id_rto')
    Left = 384
    Top = 568
    ParamData = <
      item
        Name = 'ESTADO'
        ParamType = ptInput
      end
      item
        Name = 'ID_RTO'
        ParamType = ptInput
      end>
  end
  object DSRtoCab: TDataSource
    DataSet = CDSRtoCab
    Left = 168
    Top = 16
  end
  object QMonedas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from monedas where id=:id')
    Left = 656
    Top = 80
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
  object QSaldos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo,nombre,ultimopago,'
      '   ImporteUltimoPago,'
      '   sum(vencido_1) as Vencido30,'
      '   sum(vencido_2) as Vencido60,'
      '   sum(vencido_3) as vencido90,'
      '   sum(revencido)  as muyvencido,'
      '   sum(anticipo) as Anticipos,'
      '   sum(vencido_1+vencido_2+vencido_3+revencido) as Total,'
      
        '  ((sum(vencido_1+vencido_2+vencido_3+revencido)) - (sum(anticip' +
        'o))) as Saldo'
      
        'from SALDO_MENSUAL_UN_CLIENTE(:codigo, :desde1,:desde2,:desde3,:' +
        'desde4 )'
      'group by codigo,nombre,ultimopago,ImporteUltimoPago')
    Left = 656
    Top = 16
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end
      item
        Name = 'DESDE1'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'DESDE2'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'DESDE3'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'DESDE4'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object QSaldosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object QSaldosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object QSaldosULTIMOPAGO: TSQLTimeStampField
      FieldName = 'ULTIMOPAGO'
      Origin = 'ULTIMOPAGO'
    end
    object QSaldosIMPORTEULTIMOPAGO: TFloatField
      FieldName = 'IMPORTEULTIMOPAGO'
      Origin = 'IMPORTEULTIMOPAGO'
    end
    object QSaldosVENCIDO30: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VENCIDO30'
      Origin = 'VENCIDO30'
      ProviderFlags = []
      ReadOnly = True
    end
    object QSaldosVENCIDO60: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VENCIDO60'
      Origin = 'VENCIDO60'
      ProviderFlags = []
      ReadOnly = True
    end
    object QSaldosVENCIDO90: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VENCIDO90'
      Origin = 'VENCIDO90'
      ProviderFlags = []
      ReadOnly = True
    end
    object QSaldosMUYVENCIDO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUYVENCIDO'
      Origin = 'MUYVENCIDO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QSaldosANTICIPOS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ANTICIPOS'
      Origin = 'ANTICIPOS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QSaldosTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QSaldosSALDO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QCoefPrecio: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(coeficiente)  from coeficientes_precios'
      'where codigo=:codigo and '
      '(id_lista_precio=:id_lista or :id_lista = -1 )'
      'and por_defecto='#39'S'#39)
    Left = 648
    Top = 152
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
  object QListaPrecio: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select id,nombre,f_pago from  listaprecioespecialcab '
      'where uso_administrador<>:uso')
    Left = 600
    Top = 224
    ParamData = <
      item
        Position = 1
        Name = 'uso'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QTransporte: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from transportes order by nombre')
    Left = 592
    Top = 272
  end
  object QTarea: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from tareas')
    Left = 592
    Top = 328
  end
  object QTroqueles: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.id,t.nro_troquel,t.fecha_ingreso,t.fecha_egreso,'
      '          t.id_remito, t.codigo,det.detalle from troqueles t'
      'left join ordenproduccion_diario d on d.id=t.id_produ_diario'
      'left join ordenproduccion_sub_det dt on dt.id=d.id_subdet_prod'
      'left join ordenproduccion_det det on det.id=dt.id_det_op'
      'left join ordenproduccion_cab cab on cab.id=det.id_opcab'
      'where (t.id_remito is null) or (t.id_remito < 0) and'
      '      ((cab.cliente = :cliente) or ( :cliente = '#39'******'#39' ))')
    Left = 920
    Top = 304
    ParamData = <
      item
        Position = 1
        Name = 'cliente'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'cliente'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      'id_comprobante=:id '
      'and tipo_comprob='#39'RE'#39
      'and compra_venta='#39'V'#39' '
      'and sucursal=:suc'
      'and en_uso='#39'S'#39)
    Left = 584
    Top = 424
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
    object QComprobCONTROLADOR_NROREG: TStringField
      FieldName = 'CONTROLADOR_NROREG'
      Origin = 'CONTROLADOR_NROREG'
    end
    object QComprobREMITO_IMPRENTA: TStringField
      FieldName = 'REMITO_IMPRENTA'
      Origin = 'REMITO_IMPRENTA'
      Size = 100
    end
    object QComprobREMITO_FECHA_RANGO: TStringField
      FieldName = 'REMITO_FECHA_RANGO'
      Origin = 'REMITO_FECHA_RANGO'
      Size = 100
    end
    object QComprobREMITO_DIRECCION: TStringField
      FieldName = 'REMITO_DIRECCION'
      Origin = 'REMITO_DIRECCION'
      Size = 100
    end
    object QComprobREMITO_CAI: TStringField
      FieldName = 'REMITO_CAI'
      Origin = 'REMITO_CAI'
      Size = 40
    end
    object QComprobREMITO_VENCIMIENTO_CAI: TStringField
      FieldName = 'REMITO_VENCIMIENTO_CAI'
      Origin = 'REMITO_VENCIMIENTO_CAI'
    end
  end
  object QDepositoStk: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from DepositoStk  where'
      '(Codigo_Deposito=:codigo_deposito) AND (Codigo_stk=:Codigo)')
    Left = 584
    Top = 480
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
  object QMoneda: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from monedas ')
    Left = 176
    Top = 496
  end
  object QCodigoBarra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select Max(cb.codigobarra) from codigobarra cb where cb.codigo_s' +
        'tk=:codigo')
    Left = 224
    Top = 192
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object QCodigoBarraMAX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAX'
      Origin = 'MAX'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object QUnidades: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from unidades')
    Left = 784
    Top = 560
  end
  object QTraerRecargoDeLista: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      ' select la.recargo from listaprecioespecialart la'
      '  where la.codigoarticulo=:articulo and la.id_cab=:lista')
    Left = 560
    Top = 112
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
  object QPrimerLdr: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select min(Codigo_Ldr) From LdrCliente Where Codigo_Cliente=:Cod' +
        'igo')
    Left = 464
    Top = 8
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QPrimerLdrMIN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MIN'
      Origin = 'MIN'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QPrimerConVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select Min(codigopago) from condventa where codigocliente=:codig' +
        'o')
    Left = 560
    Top = 8
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QPrimerConVtaMIN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MIN'
      Origin = 'MIN'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QPrecioEspecial: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select preciopactado from precioespecialdet '
      'where codigoarticulo=:articulo and '
      'codigocliente=:cliente')
    Left = 464
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
  object QCondVentaDefecto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select min(codigopago) from condventa where codigocliente=:codig' +
        'o'
      'and por_defecto='#39'S'#39)
    Left = 568
    Top = 64
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
  end
  object DSPBuscaLotes: TDataSetProvider
    DataSet = DMBuscadores.QBuscaLotes
    Options = [poAllowCommandText]
    Left = 474
    Top = 633
  end
  object IBGRtoLote: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RTO_LOTES'
    SystemGenerators = False
    Left = 904
    Top = 634
  end
  object CDSBuscaLotes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaLotes'
    Left = 384
    Top = 631
    object CDSBuscaLotesLOTE: TStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 15
      FieldName = 'LOTE'
      Size = 15
    end
    object CDSBuscaLotesDESPACHO: TStringField
      DisplayLabel = 'Despacho'
      DisplayWidth = 15
      FieldName = 'DESPACHO'
      Size = 15
    end
    object CDSBuscaLotesSALDO: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 16
      FieldName = 'SALDO'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSBuscaLotesID: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object CDSBuscaLotesCODIGO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 8
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 8
    end
    object CDSBuscaLotesFECHA_ENTRADA: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'FECHA_ENTRADA'
      Visible = False
    end
    object CDSBuscaLotesFECHA_VTO: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'FECHA_VTO'
      Visible = False
    end
    object CDSBuscaLotesCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      DisplayWidth = 16
      FieldName = 'CANTIDAD'
      Visible = False
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSBuscaLotesDEPOSITO: TIntegerField
      DisplayWidth = 10
      FieldName = 'DEPOSITO'
      Required = True
      Visible = False
    end
  end
  object QRtoLote: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select * from RTO_LOTES where Id_Rto = :id ')
    Left = 592
    Top = 632
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRtoLoteID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRtoLoteID_DET: TIntegerField
      FieldName = 'ID_DET'
      Origin = 'ID_DET'
    end
    object QRtoLoteID_RTO: TIntegerField
      FieldName = 'ID_RTO'
      Origin = 'ID_RTO'
    end
    object QRtoLoteID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
      Required = True
    end
    object QRtoLoteCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object QRtoLoteLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 15
    end
    object QRtoLoteDESPACHO: TStringField
      FieldName = 'DESPACHO'
      Origin = 'DESPACHO'
    end
    object QRtoLoteCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QRtoLoteFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QRtoLoteFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object QRtoLoteTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Size = 2
    end
    object QRtoLoteDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
  end
  object DSPRtoLote: TDataSetProvider
    DataSet = QRtoLote
    Left = 664
    Top = 632
  end
  object CDSRtoLote: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_DET'
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRtoLote'
    OnNewRecord = CDSRtoLoteNewRecord
    Left = 744
    Top = 632
    object CDSRtoLoteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSRtoLoteID_DET: TIntegerField
      FieldName = 'ID_DET'
    end
    object CDSRtoLoteID_RTO: TIntegerField
      FieldName = 'ID_RTO'
    end
    object CDSRtoLoteID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Required = True
      OnSetText = CDSRtoLoteID_LOTESetText
    end
    object CDSRtoLoteCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object CDSRtoLoteLOTE: TStringField
      FieldName = 'LOTE'
      Size = 15
    end
    object CDSRtoLoteDESPACHO: TStringField
      FieldName = 'DESPACHO'
    end
    object CDSRtoLoteCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object CDSRtoLoteFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSRtoLoteFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object CDSRtoLoteTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Size = 2
    end
    object CDSRtoLoteDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
  end
  object DSRtoLote: TDataSource
    DataSet = CDSRtoLote
    Left = 832
    Top = 632
  end
end
