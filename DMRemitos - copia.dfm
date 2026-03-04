object DatosRemitos: TDatosRemitos
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Height = 705
  Width = 1071
  object DSPRtoCab: TDataSetProvider
    DataSet = DMMain_2.QRemitoCab
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 11
  end
  object DSPStock: TDataSetProvider
    DataSet = DMMain_2.QStock
    Left = 24
    Top = 254
  end
  object DSPCondVenta: TDataSetProvider
    DataSet = DMMain_2.QCondVenta
    Left = 24
    Top = 161
  end
  object DSPRtoDet: TDataSetProvider
    DataSet = DMMain_2.QRemitoDet
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 57
  end
  object DSPImpuestos: TDataSetProvider
    DataSet = DMMain_2.QImpuestoRto
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 108
  end
  object DSPClientes: TDataSetProvider
    DataSet = DMMain_2.QClientes
    Left = 320
    Top = 104
  end
  object DSPInscripcion: TDataSetProvider
    DataSet = DMMain_2.QInscripcion
    Left = 320
    Top = 11
  end
  object DSPDeposito: TDataSetProvider
    DataSet = DMMain_2.QDeposito
    Left = 320
    Top = 158
  end
  object DSPIva: TDataSetProvider
    DataSet = DMMain_2.QIva
    Left = 320
    Top = 215
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMMain_2.QSucursal
    Options = [poAllowCommandText]
    Left = 24
    Top = 206
  end
  object DSPLdr: TDataSetProvider
    DataSet = DMMain_2.QLdr
    Left = 320
    Top = 58
  end
  object IBGRto_Det: TIBGenerator
    DatabaseIBX = DMMain_2.SQLConectionMain
    GeneratorName = 'NEXT_ID_RTODET'
    SystemGenerators = False
    Left = 232
    Top = 64
  end
  object IBGRto_Cab: TIBGenerator
    DatabaseIBX = DMMain_2.SQLConectionMain
    GeneratorName = 'NEXT_ID_RTOCAB'
    SystemGenerators = False
    Left = 232
    Top = 16
  end
  object IBGImpuesto: TIBGenerator
    DatabaseIBX = DMMain_2.SQLConectionMain
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
    object CDSExistenciaFISICO: TFMTBCDField
      FieldName = 'FISICO'
      Precision = 15
      Size = 3
    end
    object CDSExistenciaCOMPROMETIDO: TFMTBCDField
      FieldName = 'COMPROMETIDO'
      Precision = 15
      Size = 3
    end
    object CDSExistenciaSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object CDSExistenciaDEPOSITO_STK: TIntegerField
      FieldName = 'DEPOSITO_STK'
    end
    object CDSExistenciaEN_TRANSITO: TFMTBCDField
      FieldName = 'EN_TRANSITO'
      Precision = 15
      Size = 3
    end
    object CDSExistenciaDEPOSITO_NOMBRE: TStringField
      FieldName = 'DEPOSITO_NOMBRE'
      Size = 25
    end
  end
  object DSPExistencia: TDataSetProvider
    DataSet = DMMain_2.QExistencia
    Left = 8
    Top = 448
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
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
    DataSet = DMMain_2.QPersonal
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
    object CDSPersonalCOMISION: TFMTBCDField
      FieldName = 'COMISION'
      Required = True
      Precision = 15
      Size = 3
    end
  end
  object DSPBuscaVendedor: TDataSetProvider
    DataSet = DMBuscadores.QBuscaVendedores
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
    object CDSBuscaVendedorCOMISION: TFMTBCDField
      DisplayLabel = '% Comision'
      FieldName = 'COMISION'
      Required = True
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
  end
  object DSPBuscaLdr: TDataSetProvider
    DataSet = DMBuscadores.QBuscaLdr
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
    object CDSBuscaCondVentaDESCUENTO: TFMTBCDField
      DisplayLabel = 'Dscto'
      DisplayWidth = 12
      FieldName = 'DESCUENTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
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
    object CDSClientesLIMITE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_CREDITO'
      Precision = 15
      Size = 3
    end
    object CDSClientesSALDOINICIAL: TFMTBCDField
      FieldName = 'SALDOINICIAL'
      Precision = 15
      Size = 3
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
    object CDSRtoCabN_OPERACION2: TFMTBCDField
      FieldName = 'N_OPERACION2'
      Precision = 15
      Size = 3
    end
    object CDSRtoCabNETOGRAV1: TFMTBCDField
      FieldName = 'NETOGRAV1'
      OnGetText = CDSRtoCabNETOGRAV1GetText
      Precision = 15
      Size = 3
    end
    object CDSRtoCabNETOGRAV2: TFMTBCDField
      FieldName = 'NETOGRAV2'
      OnGetText = CDSRtoCabNETOGRAV2GetText
      Precision = 15
      Size = 3
    end
    object CDSRtoCabDSTO: TFMTBCDField
      FieldName = 'DSTO'
      OnSetText = CDSRtoCabDSTOSetText
      Precision = 15
      Size = 3
    end
    object CDSRtoCabDSTOIMPORTE: TFMTBCDField
      FieldName = 'DSTOIMPORTE'
      Precision = 15
      Size = 3
    end
    object CDSRtoCabNETOEXEN1: TFMTBCDField
      FieldName = 'NETOEXEN1'
      Precision = 15
      Size = 3
    end
    object CDSRtoCabNETOEXEN2: TFMTBCDField
      FieldName = 'NETOEXEN2'
      Precision = 15
      Size = 3
    end
    object CDSRtoCabTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 15
      Size = 3
    end
    object CDSRtoCabDEBE: TFMTBCDField
      FieldName = 'DEBE'
      Precision = 15
      Size = 3
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
    object CDSRtoCabCOMISIONVENDEDOR: TFMTBCDField
      FieldName = 'COMISIONVENDEDOR'
      Precision = 15
      Size = 3
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
    object CDSRtoCabRENGLONES: TSmallintField
      FieldName = 'RENGLONES'
    end
    object CDSRtoCabFECHA_DEVOLUCION_ALQ: TSQLTimeStampField
      FieldName = 'FECHA_DEVOLUCION_ALQ'
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
    object CDSRtoDetRENGLON: TFMTBCDField
      FieldName = 'RENGLON'
      Precision = 15
      Size = 3
    end
    object CDSRtoDetFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
    end
    object CDSRtoDetCODIGOARTICULO: TStringField
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
    object CDSRtoDetCANTIDAD: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'CANTIDAD'
      OnSetText = CDSRtoDetCantidadSetText
      Precision = 15
      Size = 3
    end
    object CDSRtoDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Size = 1
    end
    object CDSRtoDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
    end
    object CDSRtoDetIVA_TASA: TFMTBCDField
      FieldName = 'IVA_TASA'
      OnSetText = CDSRtoDetIVA_TasaSetText
      Precision = 15
      Size = 3
    end
    object CDSRtoDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
    end
    object CDSRtoDetIVA_SOBRETASA: TFMTBCDField
      FieldName = 'IVA_SOBRETASA'
      Precision = 15
      Size = 3
    end
    object CDSRtoDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
    end
    object CDSRtoDetDESCUENTO: TFMTBCDField
      FieldName = 'DESCUENTO'
      OnSetText = CDSRtoDetDescuentoSetText
      Precision = 15
      Size = 3
    end
    object CDSRtoDetTOTAL_GRAVADO: TFMTBCDField
      FieldName = 'TOTAL_GRAVADO'
      Required = True
      Precision = 15
      Size = 3
    end
    object CDSRtoDetTOTAL_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_EXENTO'
      Required = True
      Precision = 15
      Size = 3
    end
    object CDSRtoDetTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      OnGetText = CDSRtoDetTotalGetText
      Precision = 15
      Size = 3
    end
    object CDSRtoDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object CDSRtoDetMARGEN: TFMTBCDField
      FieldName = 'MARGEN'
      Precision = 15
      Size = 3
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
    object CDSRtoDetCOTIZACION: TFMTBCDField
      FieldName = 'COTIZACION'
      Required = True
      Precision = 15
      Size = 3
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
    object CDSRtoDetIVA_TOTAL: TFMTBCDField
      FieldName = 'IVA_TOTAL'
      Required = True
      Precision = 15
      Size = 3
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
    object CDSRtoDetMUESTRACONTENIDO: TFMTBCDField
      FieldName = 'MUESTRACONTENIDO'
      ProviderFlags = []
      Precision = 15
      Size = 4
    end
    object CDSRtoDetMUESTRAPRESENTACION: TFMTBCDField
      FieldName = 'MUESTRAPRESENTACION'
      ProviderFlags = []
      Precision = 15
      Size = 3
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
    object CDSRtoDetCANT_FACTURA: TFMTBCDField
      FieldName = 'CANT_FACTURA'
      Required = True
      Precision = 15
      Size = 3
    end
    object CDSRtoDetPRESENTACION_CANT: TFMTBCDField
      FieldName = 'PRESENTACION_CANT'
      Required = True
      Precision = 15
      Size = 3
    end
    object CDSRtoDetCANTIDAD_UNIDADES: TFMTBCDField
      FieldName = 'CANTIDAD_UNIDADES'
      Required = True
      DisplayFormat = ',0.000'
      EditFormat = '0.000'
      Precision = 15
      Size = 3
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
    object CDSImpuestosNETO: TFMTBCDField
      FieldName = 'NETO'
      Precision = 15
      Size = 3
    end
    object CDSImpuestosTASA: TFMTBCDField
      FieldName = 'TASA'
      Precision = 15
      Size = 3
    end
    object CDSImpuestosIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Precision = 15
      Size = 3
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
    object CDSCondVentaDESCUENTO: TFMTBCDField
      FieldName = 'DESCUENTO'
      Precision = 15
      Size = 3
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
    object CDSCondVentaDESCUENTO_FPAGO: TFMTBCDField
      FieldName = 'DESCUENTO_FPAGO'
      Precision = 15
      Size = 3
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
    object CDSSucursalRECARGO: TFMTBCDField
      FieldName = 'RECARGO'
      Precision = 15
      Size = 3
    end
    object CDSSucursalAPLICA_PERCEPCION_IIBB: TStringField
      FieldName = 'APLICA_PERCEPCION_IIBB'
      Required = True
      FixedChar = True
      Size = 1
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
    object CDSStockPLU_SECCION: TIntegerField
      FieldName = 'PLU_SECCION'
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
    object CDSIvaTASA: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'TASA'
      Precision = 15
      Size = 3
    end
    object CDSIvaCOLUMNA: TSmallintField
      DisplayWidth = 10
      FieldName = 'COLUMNA'
      Required = True
    end
  end
  object QPrimerLdr: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select min(Codigo_Ldr) From LdrCliente Where Codigo_Cliente=:Cod' +
        'igo')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 464
    Top = 8
  end
  object QPrecioEspecial: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'articulo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cliente'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select preciopactado from precioespecialdet '
      'where codigoarticulo=:articulo and '
      'codigocliente=:cliente')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 464
    Top = 56
    object QPrecioEspecialPRECIOPACTADO: TFMTBCDField
      FieldName = 'PRECIOPACTADO'
      Precision = 15
      Size = 3
    end
  end
  object QPrimerConVta: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select Min(codigopago) from condventa where codigocliente=:codig' +
        'o')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 552
    Top = 8
  end
  object QCondVentaDefecto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select min(codigopago) from condventa where codigocliente=:codig' +
        'o'
      'and por_defecto='#39'S'#39)
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 552
    Top = 56
  end
  object spRestaurarNV: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = DMMain_2.SQLConectionMain
    StoredProcName = 'DESMARCAR_NOTAVTA_DESDE_RTO'
    Left = 742
    Top = 11
  end
  object spPasaFiscal: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID_RTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 6
        Name = 'CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 35
        Name = 'NOMBRE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Precision = 8
        Name = 'FECHA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 13
        Name = 'NROCPBTE'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 2
        Name = 'IMPORTE'
        ParamType = ptInput
      end>
    SQLConnection = DMMain_2.SQLConectionMain
    StoredProcName = 'INGRESAR_RTOS_A_FISCAL'
    Left = 742
    Top = 59
  end
  object QTraerRecargoDeLista: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'articulo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'lista'
        ParamType = ptInput
      end>
    SQL.Strings = (
      ' select la.recargo from listaprecioespecialart la'
      '  where la.codigoarticulo=:articulo and la.id_cab=:lista')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 552
    Top = 104
    object QTraerRecargoDeListaRECARGO: TFMTBCDField
      FieldName = 'RECARGO'
      Precision = 15
      Size = 3
    end
  end
  object QCoefPrecio: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_lista'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_lista'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select max(coeficiente)  from coeficientes_precios'
      'where codigo=:codigo and '
      '(id_lista_precio=:id_lista or :id_lista = -1 )'
      'and por_defecto='#39'S'#39)
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 544
    Top = 168
  end
  object QAnulacion: TSQLQuery
    MaxBlobSize = -1
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
    SQL.Strings = (
      'UPDATE FcVtaCab SET'
      'Anulado='#39'S'#39' WHERE id_fc=:id and tipoCpbte=:Tipo')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 464
    Top = 164
  end
  object QMonedas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from monedas where id=:id')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 648
    Top = 64
    object QMonedasID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'DBMAIN.MONEDAS.ID'
    end
    object QMonedasCOTIZACION: TFMTBCDField
      FieldName = 'COTIZACION'
      Precision = 15
      Size = 3
    end
    object QMonedasMONEDA: TStringField
      FieldName = 'MONEDA'
      Size = 15
    end
    object QMonedasSIGNO: TStringField
      FieldName = 'SIGNO'
      Size = 5
    end
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
      Required = True
    end
    object CDSListaPrecioNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSListaPrecioF_PAGO: TIntegerField
      FieldName = 'F_PAGO'
    end
  end
  object DSPListaPrecio: TDataSetProvider
    DataSet = QListaPrecio
    Left = 656
    Top = 224
  end
  object QListaPrecio: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'uso'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select id,nombre,f_pago from  listaprecioespecialcab '
      'where uso_administrador<>:uso')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 584
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
      Required = True
    end
    object CDSTransporteNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSTransporteDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 50
    end
    object CDSTransporteTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 30
    end
    object CDSTransporteLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 50
    end
  end
  object DSPTransporte: TDataSetProvider
    DataSet = QTransporte
    Left = 648
    Top = 272
  end
  object QTransporte: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from transportes order by nombre')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 584
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
      Required = True
    end
    object CDSTareaTAREA: TStringField
      FieldName = 'TAREA'
    end
  end
  object DSPTarea: TDataSetProvider
    DataSet = QTarea
    Left = 648
    Top = 328
  end
  object QTarea: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from tareas')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 584
    Top = 328
  end
  object QComprob: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from comprobantes where'
      'id_comprobante=:id '
      'and tipo_comprob='#39'RE'#39
      'and compra_venta='#39'V'#39' '
      'and sucursal=:suc'
      'and en_uso='#39'S'#39)
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 520
    Top = 424
    object QComprobID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object QComprobTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QComprobCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Required = True
      FixedChar = True
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
    object QComprobCOPIAS: TIntegerField
      FieldName = 'COPIAS'
    end
    object QComprobREPORTE: TStringField
      FieldName = 'REPORTE'
      Size = 100
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
    object QComprobFACTURAELECTRONICA: TStringField
      FieldName = 'FACTURAELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobEN_USO: TStringField
      FieldName = 'EN_USO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobCODIGO_AFIP: TStringField
      FieldName = 'CODIGO_AFIP'
      Size = 3
    end
  end
  object QDepositoStk: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo_deposito'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from DepositoStk  where'
      '(Codigo_Deposito=:codigo_deposito) AND (Codigo_stk=:Codigo)')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 520
    Top = 472
    object QDepositoStkID_DEPOSITO: TIntegerField
      FieldName = 'ID_DEPOSITO'
      Required = True
    end
    object QDepositoStkCODIGO_DEPOSITO: TIntegerField
      FieldName = 'CODIGO_DEPOSITO'
      Required = True
    end
    object QDepositoStkCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object QDepositoStkINICIAL: TFMTBCDField
      FieldName = 'INICIAL'
      Precision = 15
      Size = 3
    end
    object QDepositoStkMINIMO: TFMTBCDField
      FieldName = 'MINIMO'
      Precision = 15
      Size = 3
    end
    object QDepositoStkMEDIO: TFMTBCDField
      FieldName = 'MEDIO'
      Precision = 15
      Size = 3
    end
    object QDepositoStkRECARGO: TFMTBCDField
      FieldName = 'RECARGO'
      Required = True
      Precision = 15
      Size = 3
    end
  end
  object spMarcarImpreso: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = DMMain_2.SQLConectionMain
    StoredProcName = 'MARCAR_RT_IMPRESO'
    Left = 740
    Top = 111
  end
  object QStockPrecio: TSQLQuery
    MaxBlobSize = -1
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
        Name = 'deposito'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from PRECIO_VENTA(:codigo,:lista,:deposito,:sucursal)')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 464
    Top = 112
    object QStockPrecioPRECIO: TFMTBCDField
      FieldName = 'PRECIO'
      Precision = 15
      Size = 2
    end
    object QStockPrecioCOSTO_TOTAL: TFMTBCDField
      FieldName = 'COSTO_TOTAL'
      Precision = 15
      Size = 2
    end
    object QStockPrecioCOSTO_EXENTO: TFMTBCDField
      FieldName = 'COSTO_EXENTO'
      Precision = 15
      Size = 2
    end
    object QStockPrecioCOSTO_GRAVADO: TFMTBCDField
      FieldName = 'COSTO_GRAVADO'
      Precision = 15
      Size = 2
    end
  end
  object spRestaurarPres: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = DMMain_2.SQLConectionMain
    StoredProcName = 'DESMARCAR_PRESUPUESTO_DESDE_RTO'
    Left = 742
    Top = 163
  end
  object spRestaurarNP: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 2
        Name = 'TIPO'
        ParamType = ptInput
      end>
    SQLConnection = DMMain_2.SQLConectionMain
    StoredProcName = 'RECUPERAR_NP_CLIENTE'
    Left = 774
    Top = 331
  end
  object QLimpiarRtosSinFactura: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'update rtocab r set r.idfactura=null, r.nrofact=null '
      'where r.idfactura<=1 and ( r.anulado='#39'N'#39' and r.anulado<>'#39'*'#39' )')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 752
    Top = 416
  end
  object QMarcarEntregado: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update rtocab r set r.idfactura=1 ,  r.nrofact='#39'S/N'#39' '
      'where r.id_rto = :id')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 896
    Top = 376
  end
  object QSaldos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde2'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde3'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde4'
        ParamType = ptInput
      end>
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
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 648
    Top = 16
    object QSaldosCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object QSaldosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object QSaldosULTIMOPAGO: TSQLTimeStampField
      FieldName = 'ULTIMOPAGO'
    end
    object QSaldosIMPORTEULTIMOPAGO: TFMTBCDField
      FieldName = 'IMPORTEULTIMOPAGO'
      Precision = 15
      Size = 3
    end
    object QSaldosVENCIDO30: TFMTBCDField
      FieldName = 'VENCIDO30'
      Precision = 15
      Size = 3
    end
    object QSaldosVENCIDO60: TFMTBCDField
      FieldName = 'VENCIDO60'
      Precision = 15
      Size = 2
    end
    object QSaldosVENCIDO90: TFMTBCDField
      FieldName = 'VENCIDO90'
      Precision = 15
      Size = 2
    end
    object QSaldosMUYVENCIDO: TFMTBCDField
      FieldName = 'MUYVENCIDO'
      Precision = 15
      Size = 2
    end
    object QSaldosANTICIPOS: TFMTBCDField
      FieldName = 'ANTICIPOS'
      Precision = 15
      Size = 3
    end
    object QSaldosTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object QSaldosSALDO: TFloatField
      FieldName = 'SALDO'
    end
  end
  object CDSDetalleXML: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 296
    Top = 501
  end
  object QMoneda: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from monedas ')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 160
    Top = 496
    object IntegerField1: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'DBMAIN.MONEDAS.ID'
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'COTIZACION'
      Precision = 15
      Size = 3
    end
    object StringField1: TStringField
      FieldName = 'MONEDA'
      Size = 15
    end
    object StringField2: TStringField
      FieldName = 'SIGNO'
      Size = 5
    end
  end
  object CDSMoneda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMoneda'
    Left = 96
    Top = 496
    object CDSMonedaID: TIntegerField
      FieldName = 'ID'
    end
    object CDSMonedaCOTIZACION: TFMTBCDField
      FieldName = 'COTIZACION'
      Precision = 15
      Size = 3
    end
    object CDSMonedaMONEDA: TStringField
      FieldName = 'MONEDA'
      Size = 15
    end
    object CDSMonedaSIGNO: TStringField
      FieldName = 'SIGNO'
      Size = 5
    end
  end
  object DSPMoneda: TDataSetProvider
    DataSet = QMoneda
    Left = 8
    Top = 496
  end
  object DSMoneda: TDataSource
    DataSet = CDSMoneda
    Left = 224
    Top = 496
  end
  object spNoFacturable: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = DMMain_2.SQLConectionMain
    StoredProcName = 'MARCAR_RT_NOFACTURABLE'
    Left = 488
    Top = 544
  end
  object spRecuperarRto: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID_RTO'
        ParamType = ptInput
      end>
    SQLConnection = DMMain_2.SQLConectionMain
    StoredProcName = 'RECUPERAR_RTO'
    Left = 648
    Top = 400
  end
  object QCodigoBarra: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select Max(cb.codigobarra) from codigobarra cb where cb.codigo_s' +
        'tk=:codigo')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 166
    Top = 201
    object QCodigoBarraMAX: TStringField
      FieldName = 'MAX'
      Size = 50
    end
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = DMMain_2.QEmpresa
    UpdateMode = upWhereKeyOnly
    Left = 464
    Top = 219
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    Left = 530
    Top = 224
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
    object CDSEmpresaTASA_PERCEPCION_IB: TFMTBCDField
      FieldName = 'TASA_PERCEPCION_IB'
      Precision = 15
      Size = 3
    end
    object CDSEmpresaMINO_IMP_PERCEP_IB: TFMTBCDField
      FieldName = 'MINO_IMP_PERCEP_IB'
      Precision = 15
      Size = 3
    end
    object CDSEmpresaPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
    end
    object CDSEmpresaTASA_RET_IIBB: TFMTBCDField
      FieldName = 'TASA_RET_IIBB'
      Required = True
      Precision = 15
      Size = 3
    end
    object CDSEmpresaMINIMO_IMP_RET_IIBB: TFMTBCDField
      FieldName = 'MINIMO_IMP_RET_IIBB'
      Required = True
      Precision = 15
      Size = 3
    end
  end
  object QCompVta: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select f.tipocpbte from fcvtacab f where f.id_fc = :id')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 856
    Top = 24
    object QCompVtaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 4
    end
  end
  object QUnidades: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from unidades')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 176
    Top = 296
  end
  object CDSUnidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPUnidades'
    Left = 232
    Top = 296
  end
  object DSPUnidades: TDataSetProvider
    DataSet = QUnidades
    Left = 208
    Top = 256
  end
  object CDSChoferes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPChoferes'
    Left = 968
    Top = 568
    object CDSChoferesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSChoferesID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
      Origin = 'ID_TRANSPORTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSChoferesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 45
    end
    object CDSChoferesTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      Origin = 'TIPO_DOC'
      Size = 3
    end
    object CDSChoferesNUMERO_DOC: TStringField
      FieldName = 'NUMERO_DOC'
      Origin = 'NUMERO_DOC'
    end
  end
  object DSPChoferes: TDataSetProvider
    DataSet = QChoferes
    Left = 872
    Top = 568
  end
  object DSPBuscaUnidades: TDataSetProvider
    DataSet = QBuscaUnidades
    Left = 880
    Top = 624
  end
  object CDSBuscaUnidades: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Params = <>
    ProviderName = 'DSPBuscaUnidades'
    Left = 968
    Top = 616
    object CDSBuscaUnidadesDESCRIPCION: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 25
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 25
    end
    object CDSBuscaUnidadesCAPACIDAD: TFloatField
      FieldName = 'CAPACIDAD'
      Origin = 'CAPACIDAD'
      Required = True
    end
    object CDSBuscaUnidadesDOMINIO: TStringField
      FieldName = 'DOMINIO'
      Origin = 'DOMINIO'
      Size = 12
    end
    object CDSBuscaUnidadesID: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSPBuscaAnexos: TDataSetProvider
    DataSet = QBuscaAnexos
    Left = 880
    Top = 512
  end
  object CDSBuscaAnexos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaAnexos'
    Left = 960
    Top = 512
    object CDSBuscaAnexosDESCRIPCION: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 25
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 25
    end
    object CDSBuscaAnexosID: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QTroqueles: TSQLQuery
    MaxBlobSize = -1
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
    SQL.Strings = (
      'select t.id,t.nro_troquel,t.fecha_ingreso,t.fecha_egreso,'
      '          t.id_remito, t.codigo,det.detalle from troqueles t'
      'left join ordenproduccion_diario d on d.id=t.id_produ_diario'
      'left join ordenproduccion_sub_det dt on dt.id=d.id_subdet_prod'
      'left join ordenproduccion_det det on det.id=dt.id_det_op'
      'left join ordenproduccion_cab cab on cab.id=det.id_opcab'
      'where (t.id_remito is null) or (t.id_remito < 0) and'
      '      ((cab.cliente = :cliente) or ( :cliente = '#39'******'#39' ))')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 928
    Top = 296
  end
  object DSPTroqueles: TDataSetProvider
    DataSet = QTroqueles
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
      Required = True
    end
    object CDSTroquelesNRO_TROQUEL: TStringField
      DisplayLabel = 'Nro.Troquel'
      FieldName = 'NRO_TROQUEL'
    end
    object CDSTroquelesFECHA_INGRESO: TSQLTimeStampField
      DisplayLabel = 'F.Ingreso'
      FieldName = 'FECHA_INGRESO'
    end
    object CDSTroquelesFECHA_EGRESO: TSQLTimeStampField
      DisplayLabel = 'F.Egreso'
      FieldName = 'FECHA_EGRESO'
    end
    object CDSTroquelesID_REMITO: TIntegerField
      FieldName = 'ID_REMITO'
    end
    object CDSTroquelesCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Size = 8
    end
    object CDSTroquelesDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 45
    end
  end
  object DSTroqueles: TDataSource
    DataSet = CDSTroqueles
    Left = 922
    Top = 152
  end
  object DSPRtoTroqueles: TDataSetProvider
    DataSet = DMMain_2.QRemitoTroqueles
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
    DatabaseIBX = DMMain_2.SQLConectionMain
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
  object QBuscaUnidades: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select u.* from unidades_tr u')
    Left = 792
    Top = 624
  end
  object QChoferes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.* from transporte_choferes c where c.id_transporte = :i' +
        'd')
    Left = 792
    Top = 568
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QBuscaAnexos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select u.* from UNID_AUX_TR u')
    Left = 792
    Top = 512
  end
end
