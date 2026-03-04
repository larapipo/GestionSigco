object DatosCompraReducida: TDatosCompraReducida
  OldCreateOrder = False
  Left = 389
  Top = 134
  Height = 612
  Width = 814
  object DSPCompraCab: TDataSetProvider
    DataSet = DMMain_2.QCompraCab
    UpdateMode = upWhereKeyOnly
    Left = 52
    Top = 8
  end
  object DSPProveedor: TDataSetProvider
    DataSet = DMMain_2.QProveedores
    Left = 372
    Top = 8
  end
  object DSPCondCompra: TDataSetProvider
    DataSet = DMMain_2.QCondCompra
    UpdateMode = upWhereKeyOnly
    Left = 52
    Top = 110
  end
  object DSPIva: TDataSetProvider
    DataSet = DMMain_2.QIva
    Left = 372
    Top = 93
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMMain_2.QSucursal
    UpdateMode = upWhereKeyOnly
    Left = 44
    Top = 156
  end
  object DSPImpuestos: TDataSetProvider
    DataSet = DMMain_2.QImpuestosComp
    Left = 52
    Top = 56
  end
  object DSPPercepcionIVA: TDataSetProvider
    DataSet = DMMain_2.QPercepcionIva
    UpdateMode = upWhereKeyOnly
    Left = 44
    Top = 208
  end
  object DSPPercepcionIB: TDataSetProvider
    DataSet = DMMain_2.QPercepcionIB
    UpdateMode = upWhereKeyOnly
    Left = 36
    Top = 256
  end
  object DSPDeposito: TDataSetProvider
    DataSet = DMMain_2.QDeposito
    Left = 372
    Top = 52
  end
  object IBGFcCompCab: TIBGenerator
    DatabaseIBX = DMMain_2.SQLConectionMain
    GeneratorName = 'NEXT_ID_FC_COMPRA_CAB'
    SystemGenerators = False
    Left = 272
    Top = 8
  end
  object IBGImpuestos: TIBGenerator
    DatabaseIBX = DMMain_2.SQLConectionMain
    GeneratorName = 'NEXT_ID_IMPUESTOS_COMPRA'
    SystemGenerators = False
    Left = 272
    Top = 56
  end
  object IBGPercepcionIB: TIBGenerator
    DatabaseIBX = DMMain_2.SQLConectionMain
    GeneratorName = 'NEXT_ID_PERCEPCION_IB'
    SystemGenerators = False
    Left = 304
    Top = 256
  end
  object IBGPercepcionIVA: TIBGenerator
    DatabaseIBX = DMMain_2.SQLConectionMain
    GeneratorName = 'NEXT_ID_PERCEPCION_IVA'
    SystemGenerators = False
    Left = 288
    Top = 200
  end
  object DSPInscripcion: TDataSetProvider
    DataSet = DMMain_2.QInscripcion
    Left = 368
    Top = 139
  end
  object DSPCajaMov: TDataSetProvider
    DataSet = wwQCajaMov
    Left = 26
    Top = 392
  end
  object DSPMovEfectivo: TDataSetProvider
    DataSet = wwQMovEfectivo
    Left = 22
    Top = 448
  end
  object IBGId_Efectivo: TIBGenerator
    DatabaseIBX = DMMain_2.SQLConectionMain
    GeneratorName = 'NEXT_ID_MOV_EFECTIVO'
    SystemGenerators = False
    Left = 304
    Top = 448
  end
  object IBGId_Caja_Mov: TIBGenerator
    DatabaseIBX = DMMain_2.SQLConectionMain
    GeneratorName = 'NEXT_ID_CAJA_MOV'
    SystemGenerators = False
    Left = 304
    Top = 392
  end
  object DSPCajaCab: TDataSetProvider
    Left = 24
    Top = 352
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Left = 616
    Top = 158
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 712
    Top = 158
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
    Left = 120
    Top = 110
    object CDSCondCompraCODIGOPROVEE: TStringField
      FieldName = 'CODIGOPROVEE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 6
    end
    object CDSCondCompraCODIGOPAGO: TIntegerField
      FieldName = 'CODIGOPAGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSCondCompraDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSCondCompraDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object CDSCondCompraDESCUENTO: TFMTBCDField
      FieldName = 'DESCUENTO'
      Precision = 15
      Size = 3
    end
    object CDSCondCompraDESCUENTO_FPAGO: TFMTBCDField
      FieldName = 'DESCUENTO_FPAGO'
      Precision = 15
      Size = 3
    end
  end
  object DSPBuscaCondCompra: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCondCompraProvee
    Left = 620
    Top = 14
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
    Left = 712
    Top = 17
    object StringField: TStringField
      FieldName = 'CODIGOPROVEE'
      Size = 6
    end
    object IntegerField1: TIntegerField
      FieldName = 'CODIGOPAGO'
    end
    object FloatField1: TFloatField
      FieldName = 'DESCUENTO'
    end
    object StringField2: TStringField
      FieldName = 'DETALLE'
    end
    object IntegerField2: TIntegerField
      FieldName = 'DIAS'
    end
    object FloatField2: TFloatField
      FieldName = 'DESCUENTO_FPAGO'
    end
  end
  object DSPTasaPercepIVA: TDataSetProvider
    DataSet = DMMain_2.QTasaPercepcioIva
    Left = 616
    Top = 64
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
    Left = 712
    Top = 64
    object CDSTasaPercepIVACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSTasaPercepIVADESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
    object CDSTasaPercepIVATASA: TFMTBCDField
      FieldName = 'TASA'
      Precision = 15
      Size = 3
    end
    object CDSTasaPercepIVAMINIMOAPLICABLE: TFMTBCDField
      FieldName = 'MINIMOAPLICABLE'
      Precision = 15
      Size = 3
    end
    object CDSTasaPercepIVACOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
    end
    object CDSTasaPercepIVACODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
    end
  end
  object DSPTasaPercepIIBB: TDataSetProvider
    DataSet = DMMain_2.QTasaPercepcioIB
    Left = 616
    Top = 112
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
    Left = 712
    Top = 112
    object CDSTasaPercepIIBBCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSTasaPercepIIBBDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
    object CDSTasaPercepIIBBTASA: TFMTBCDField
      FieldName = 'TASA'
      Precision = 15
      Size = 3
    end
    object CDSTasaPercepIIBBMINIMOAPLICABLE: TFMTBCDField
      FieldName = 'MINIMOAPLICABLE'
      Precision = 15
      Size = 3
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
    Left = 128
    Top = 8
    object CDSCompraCabID_FC: TIntegerField
      FieldName = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCompraCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSCompraCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSCompraCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSCompraCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      OnSetText = CDSCompraCabCodigoSetText
      Size = 6
    end
    object CDSCompraCabLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      FixedChar = True
      Size = 1
    end
    object CDSCompraCabSUCFAC: TStringField
      FieldName = 'SUCFAC'
      OnSetText = CDSCompraCabSucFacSetText
      Size = 4
    end
    object CDSCompraCabNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      OnSetText = CDSCompraCabNumeroFacSetText
      Size = 8
    end
    object CDSCompraCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSCompraCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSCompraCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSCompraCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSCompraCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSCompraCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object CDSCompraCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSCompraCabFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
      Required = True
      OnSetText = CDSCompraCabFECHACOMPRASetText
    end
    object CDSCompraCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object CDSCompraCabCONDICIONCOMPRA: TIntegerField
      FieldName = 'CONDICIONCOMPRA'
      Required = True
      OnSetText = CDSCompraCabCondicionCompraSetText
    end
    object CDSCompraCabANULADO: TStringField
      FieldName = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraCabORDENCOMPRA: TStringField
      FieldName = 'ORDENCOMPRA'
      Size = 8
    end
    object CDSCompraCabN_OPERACION2: TFMTBCDField
      FieldName = 'N_OPERACION2'
      Precision = 15
      Size = 3
    end
    object CDSCompraCabNETOGRAV1: TFMTBCDField
      FieldName = 'NETOGRAV1'
      Precision = 15
      Size = 3
    end
    object CDSCompraCabDSTO: TFMTBCDField
      FieldName = 'DSTO'
      OnSetText = CDSCompraCabDSTOSetText
      Precision = 15
      Size = 3
    end
    object CDSCompraCabDSTOIMPORTE: TFMTBCDField
      FieldName = 'DSTOIMPORTE'
      Precision = 15
      Size = 3
    end
    object CDSCompraCabNETOGRAV2: TFMTBCDField
      FieldName = 'NETOGRAV2'
      Precision = 15
      Size = 3
    end
    object CDSCompraCabNETOEXEN1: TFMTBCDField
      FieldName = 'NETOEXEN1'
      OnSetText = CDSCompraCabNETOEXEN1SetText
      Precision = 15
      Size = 3
    end
    object CDSCompraCabNETOEXEN2: TFMTBCDField
      FieldName = 'NETOEXEN2'
      Precision = 15
      Size = 3
    end
    object CDSCompraCabIMPORTEEXCLUIDO2: TFMTBCDField
      FieldName = 'IMPORTEEXCLUIDO2'
      Precision = 15
      Size = 3
    end
    object CDSCompraCabIMPORTEEXCLUIDO1: TFMTBCDField
      FieldName = 'IMPORTEEXCLUIDO1'
      OnSetText = CDSCompraCabIMPORTEEXCLUIDO1SetText
      Precision = 15
      Size = 3
    end
    object CDSCompraCabTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 15
      Size = 3
    end
    object CDSCompraCabDEBE: TFMTBCDField
      FieldName = 'DEBE'
      Precision = 15
      Size = 3
    end
    object CDSCompraCabAPLICA: TStringField
      FieldName = 'APLICA'
      Size = 13
    end
    object CDSCompraCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object CDSCompraCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object CDSCompraCabSUCURSALCOMPRA: TIntegerField
      FieldName = 'SUCURSALCOMPRA'
      Required = True
      OnSetText = CDSCompraCabSUCURSALCOMPRASetText
    end
    object CDSCompraCabZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object CDSCompraCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object CDSCompraCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraCabFECHAFISCAL: TSQLTimeStampField
      FieldName = 'FECHAFISCAL'
      Required = True
      OnSetText = CDSCompraCabFECHAFISCALSetText
    end
    object CDSCompraCabNETOMONOTRIBUTO1: TFMTBCDField
      FieldName = 'NETOMONOTRIBUTO1'
      OnSetText = CDSCompraCabNETOMONOTRIBUTO1SetText
      Precision = 15
      Size = 3
    end
    object CDSCompraCabNETOMONOTRIBUTO2: TFMTBCDField
      FieldName = 'NETOMONOTRIBUTO2'
      Precision = 15
      Size = 3
    end
    object CDSCompraCabCPBTE_INTERNO: TStringField
      FieldName = 'CPBTE_INTERNO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraCabINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraCabINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraCabREDUCIDA: TStringField
      FieldName = 'REDUCIDA'
      FixedChar = True
      Size = 1
    end
    object CDSCompraCabTIPO_PROVEEDOR: TStringField
      FieldName = 'TIPO_PROVEEDOR'
      FixedChar = True
      Size = 1
    end
    object CDSCompraCabJURIDICCION: TIntegerField
      FieldName = 'JURIDICCION'
    end
    object CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE: TFMTBCDField
      FieldName = 'PERCEPCION_IB_BASEIMPONIBLE'
      Precision = 15
      Size = 3
    end
    object CDSCompraCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object CDSCompraCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSCompraCabTOTAL_UNIDADES: TFMTBCDField
      FieldName = 'TOTAL_UNIDADES'
      Precision = 15
      Size = 3
    end
    object CDSCompraCabMONEDA_CPBTE: TIntegerField
      FieldName = 'MONEDA_CPBTE'
    end
    object CDSCompraCabMONEDA_CPBTE_COTIZACION: TFMTBCDField
      FieldName = 'MONEDA_CPBTE_COTIZACION'
      Precision = 15
      Size = 3
    end
    object CDSCompraCabMUESTRACONDCOMPRA: TStringField
      FieldName = 'MUESTRACONDCOMPRA'
      ProviderFlags = []
    end
    object CDSCompraCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
    object CDSCompraCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSCompraCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object CDSCompraCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
      OnSetText = CDSCompraCabID_TIPOCOMPROBANTESetText
    end
    object CDSCompraCabMUESTRAMONEDACPBTE: TStringField
      FieldName = 'MUESTRAMONEDACPBTE'
      ProviderFlags = []
      Size = 15
    end
    object CDSCompraCabMUESTRASIGNOMONEDACPBTE: TStringField
      FieldName = 'MUESTRASIGNOMONEDACPBTE'
      ProviderFlags = []
      Size = 5
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
    Left = 128
    Top = 156
    object CDSSucursalCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
    end
    object CDSSucursalDETALLE: TStringField
      DisplayWidth = 35
      FieldName = 'DETALLE'
      Size = 35
    end
    object CDSSucursalDIRECCION: TStringField
      DisplayWidth = 20
      FieldName = 'DIRECCION'
    end
    object CDSSucursalLOCALIDAD: TStringField
      DisplayWidth = 20
      FieldName = 'LOCALIDAD'
    end
    object CDSSucursalTELEFONO1: TStringField
      DisplayWidth = 15
      FieldName = 'TELEFONO1'
      Size = 15
    end
    object CDSSucursalTELEFONO2: TStringField
      DisplayWidth = 15
      FieldName = 'TELEFONO2'
      Size = 15
    end
    object CDSSucursalRECARGO: TFMTBCDField
      FieldName = 'RECARGO'
      Precision = 15
      Size = 3
    end
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
    Left = 456
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
  object CDSDeposito: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDeposito'
    Left = 456
    Top = 52
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
  object CDSImpuestos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPImpuestos'
    OnNewRecord = CDSImpuestosNewRecord
    Left = 128
    Top = 56
    object CDSImpuestosID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSImpuestosCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      Required = True
      OnSetText = CDSImpuestosCODIGO_GRAVAMENSetText
    end
    object CDSImpuestosDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSImpuestosID_FCCOMPCAB: TIntegerField
      FieldName = 'ID_FCCOMPCAB'
      Required = True
    end
    object CDSImpuestosNETO: TFMTBCDField
      FieldName = 'NETO'
      OnSetText = CDSImpuestosNETOSetText
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
      OnSetText = CDSImpuestosIMPORTESetText
      Precision = 15
      Size = 3
    end
  end
  object DSImpuestos: TDataSource
    DataSet = CDSImpuestos
    Left = 208
    Top = 56
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
    Left = 456
    Top = 93
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
    OnNewRecord = CDSPercepcionIVANewRecord
    Left = 128
    Top = 200
    object CDSPercepcionIVAID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPercepcionIVACODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Required = True
      OnSetText = CDSPercepcionIVACODIGO_PERCEPCIONSetText
    end
    object CDSPercepcionIVADETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSPercepcionIVAID_FCCOMPCAB: TIntegerField
      FieldName = 'ID_FCCOMPCAB'
      Required = True
    end
    object CDSPercepcionIVANETO: TFMTBCDField
      FieldName = 'NETO'
      OnSetText = CDSPercepcionIVANETOSetText
      Precision = 15
      Size = 3
    end
    object CDSPercepcionIVATASA: TFMTBCDField
      FieldName = 'TASA'
      Precision = 15
      Size = 3
    end
    object CDSPercepcionIVAIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      OnSetText = CDSPercepcionIVAIMPORTESetText
      Precision = 15
      Size = 3
    end
    object CDSPercepcionIVACODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
    end
  end
  object DSPercepcionIVA: TDataSource
    DataSet = CDSPercepcionIVA
    Left = 216
    Top = 200
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
    OnNewRecord = CDSPercepcionIBNewRecord
    Left = 128
    Top = 256
    object CDSPercepcionIBID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPercepcionIBCODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Required = True
      OnSetText = CDSPercepcionIBCODIGO_PERCEPCIONSetText
    end
    object CDSPercepcionIBDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSPercepcionIBID_FCCOMPCAB: TIntegerField
      FieldName = 'ID_FCCOMPCAB'
      Required = True
    end
    object CDSPercepcionIBNETO: TFMTBCDField
      FieldName = 'NETO'
      OnSetText = CDSPercepcionIBNETOSetText
      Precision = 15
      Size = 3
    end
    object CDSPercepcionIBTASA: TFMTBCDField
      FieldName = 'TASA'
      Precision = 15
      Size = 3
    end
    object CDSPercepcionIBIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      OnSetText = CDSPercepcionIBIMPORTESetText
      Precision = 15
      Size = 3
    end
    object CDSPercepcionIBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
    end
  end
  object DSPercepcionIB: TDataSource
    DataSet = CDSPercepcionIB
    Left = 216
    Top = 256
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
    Left = 456
    Top = 136
    object CDSInscripcionCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
    end
    object CDSInscripcionDETALLE: TStringField
      DisplayWidth = 15
      FieldName = 'DETALLE'
      Size = 15
    end
    object CDSInscripcionCOBRASOBRETASA: TStringField
      DisplayWidth = 1
      FieldName = 'COBRASOBRETASA'
      Size = 1
    end
    object CDSInscripcionAPLICAPERCEPCIONIVA: TStringField
      DisplayWidth = 1
      FieldName = 'APLICAPERCEPCIONIVA'
      Size = 1
    end
    object CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField
      DisplayWidth = 1
      FieldName = 'APLICAPERCEPCIONIIBB'
      Size = 1
    end
    object CDSInscripcionDISCRIMINAIVA: TStringField
      DisplayWidth = 1
      FieldName = 'DISCRIMINAIVA'
      Size = 1
    end
  end
  object wwCDSCajaCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPCajaCab'
    Left = 120
    Top = 352
    object wwCDSCajaCabID_CAJA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object wwCDSCajaCabID_CUENTA_CAJA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CUENTA_CAJA'
    end
    object wwCDSCajaCabFECHA_INCIO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'FECHA_INCIO'
    end
    object wwCDSCajaCabFECHA_CIERRE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'FECHA_CIERRE'
    end
    object wwCDSCajaCabSALDO_INCIAL: TFloatField
      DisplayWidth = 10
      FieldName = 'SALDO_INCIAL'
    end
    object wwCDSCajaCabESTADO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ESTADO'
    end
    object wwCDSCajaCabOBS: TMemoField
      DisplayWidth = 10
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object wwCDSCajaCabMUESTRACTACAJA: TStringField
      DisplayWidth = 25
      FieldName = 'MUESTRACTACAJA'
      ProviderFlags = []
      Size = 25
    end
  end
  object wwCDSCajaMov: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPCajaMov'
    OnNewRecord = wwCDSCajaMovNewRecord
    Left = 120
    Top = 392
    object wwCDSCajaMovID_MOV_CAJA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_MOV_CAJA'
    end
    object wwCDSCajaMovID_CAJA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CAJA'
    end
    object wwCDSCajaMovFECHA_CAJA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'FECHA_CAJA'
    end
    object wwCDSCajaMovFECHA_OPERACION: TDateTimeField
      DisplayWidth = 18
      FieldName = 'FECHA_OPERACION'
    end
    object wwCDSCajaMovTIPO_OPERACION: TStringField
      DisplayWidth = 1
      FieldName = 'TIPO_OPERACION'
      Size = 1
    end
    object wwCDSCajaMovID_COMPROBANTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_COMPROBANTE'
    end
    object wwCDSCajaMovTIPO_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'TIPO_COMPROB'
      Size = 2
    end
    object wwCDSCajaMovNRO_COMPROBANTE: TStringField
      DisplayWidth = 13
      FieldName = 'NRO_COMPROBANTE'
      Size = 13
    end
    object wwCDSCajaMovHABER: TFloatField
      DisplayWidth = 10
      FieldName = 'HABER'
    end
    object wwCDSCajaMovDEBE: TFloatField
      DisplayWidth = 10
      FieldName = 'DEBE'
    end
    object wwCDSCajaMovID_TPAGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_TPAGO'
    end
    object wwCDSCajaMovID_FPAGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_FPAGO'
    end
    object wwCDSCajaMovUNIDADES: TFloatField
      DisplayWidth = 10
      FieldName = 'UNIDADES'
    end
    object wwCDSCajaMovCOTIZACION: TFloatField
      DisplayWidth = 10
      FieldName = 'COTIZACION'
    end
    object wwCDSCajaMovMUESTRAFORMAPAGO: TStringField
      DisplayWidth = 20
      FieldName = 'MUESTRAFORMAPAGO'
      ProviderFlags = []
    end
    object wwCDSCajaMovCLASE_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'CLASE_COMPROB'
      Size = 2
    end
    object wwCDSCajaMovID_CUENTA_CAJA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CUENTA_CAJA'
    end
    object wwCDSCajaMovMONEDA: TIntegerField
      DisplayWidth = 10
      FieldName = 'MONEDA'
    end
    object wwCDSCajaMovMUESTRAIDCTACAJA: TIntegerField
      DisplayWidth = 10
      FieldName = 'MUESTRAIDCTACAJA'
      ProviderFlags = []
    end
    object wwCDSCajaMovMUESTRACAJA: TStringField
      DisplayWidth = 25
      FieldName = 'MUESTRACAJA'
      ProviderFlags = []
      Size = 25
    end
  end
  object wwCDSMovEfectivo: TClientDataSet
    Aggregates = <>
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPMovEfectivo'
    Left = 118
    Top = 448
    object wwCDSMovEfectivoID_EFECTIVO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_EFECTIVO'
    end
    object wwCDSMovEfectivoID_CAJA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CAJA'
    end
    object wwCDSMovEfectivoID_MOV_CAJA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_MOV_CAJA'
    end
    object wwCDSMovEfectivoID_FPAGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_FPAGO'
    end
    object wwCDSMovEfectivoCOTIZACION: TFloatField
      DisplayWidth = 10
      FieldName = 'COTIZACION'
    end
    object wwCDSMovEfectivoUNIDADES: TFloatField
      DisplayWidth = 10
      FieldName = 'UNIDADES'
    end
    object wwCDSMovEfectivoIMPORTE: TFloatField
      DisplayWidth = 10
      FieldName = 'IMPORTE'
    end
    object wwCDSMovEfectivoID_CUENTA_CAJA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CUENTA_CAJA'
    end
    object wwCDSMovEfectivoMONEDA: TIntegerField
      DisplayWidth = 10
      FieldName = 'MONEDA'
    end
  end
  object wwQCajaMov: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'Select M.* , F.descripcion as MuestraFormaPago,cc.id_cuenta as M' +
        'uestraIdCtaCaja ,cc.nombre as MuestraCaja from Caja_Mov M'
      'left join cuenta_caja cc on cc.id_cuenta=m.id_cuenta_caja'
      'left join FormaPago F on F.id_Fpago=M.id_Fpago'
      
        'where (m.Id_Comprobante=:id) and (m.Tipo_Comprob=:tipo) and (m.t' +
        'ipo_Operacion='#39'I'#39')')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 196
    Top = 393
    object wwQCajaMovID_MOV_CAJA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_MOV_CAJA'
    end
    object wwQCajaMovID_CAJA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CAJA'
    end
    object wwQCajaMovFECHA_CAJA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'FECHA_CAJA'
    end
    object wwQCajaMovFECHA_OPERACION: TDateTimeField
      DisplayWidth = 18
      FieldName = 'FECHA_OPERACION'
    end
    object wwQCajaMovTIPO_OPERACION: TStringField
      DisplayWidth = 1
      FieldName = 'TIPO_OPERACION'
      Size = 1
    end
    object wwQCajaMovID_COMPROBANTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_COMPROBANTE'
    end
    object wwQCajaMovTIPO_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'TIPO_COMPROB'
      Size = 2
    end
    object wwQCajaMovNRO_COMPROBANTE: TStringField
      DisplayWidth = 13
      FieldName = 'NRO_COMPROBANTE'
      Size = 13
    end
    object wwQCajaMovHABER: TFloatField
      DisplayWidth = 10
      FieldName = 'HABER'
    end
    object wwQCajaMovDEBE: TFloatField
      DisplayWidth = 10
      FieldName = 'DEBE'
    end
    object wwQCajaMovID_TPAGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_TPAGO'
    end
    object wwQCajaMovID_FPAGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_FPAGO'
    end
    object wwQCajaMovUNIDADES: TFloatField
      DisplayWidth = 10
      FieldName = 'UNIDADES'
    end
    object wwQCajaMovCOTIZACION: TFloatField
      DisplayWidth = 10
      FieldName = 'COTIZACION'
    end
    object wwQCajaMovMUESTRAFORMAPAGO: TStringField
      DisplayWidth = 20
      FieldName = 'MUESTRAFORMAPAGO'
      ProviderFlags = []
    end
    object wwQCajaMovCLASE_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'CLASE_COMPROB'
      Size = 2
    end
    object wwQCajaMovID_CUENTA_CAJA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CUENTA_CAJA'
    end
    object wwQCajaMovMONEDA: TIntegerField
      DisplayWidth = 10
      FieldName = 'MONEDA'
    end
    object wwQCajaMovMUESTRAIDCTACAJA: TIntegerField
      DisplayWidth = 10
      FieldName = 'MUESTRAIDCTACAJA'
      ProviderFlags = []
    end
    object wwQCajaMovMUESTRACAJA: TStringField
      DisplayWidth = 25
      FieldName = 'MUESTRACAJA'
      ProviderFlags = []
      Size = 25
    end
  end
  object wwQMovEfectivo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from Mov_Efectivo  '
      ' where Id_Mov_Caja= :id')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 196
    Top = 449
    object wwQMovEfectivoID_EFECTIVO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_EFECTIVO'
      Origin = 'DBMAIN.MOV_EFECTIVO.ID_EFECTIVO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object wwQMovEfectivoID_CAJA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CAJA'
    end
    object wwQMovEfectivoID_MOV_CAJA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_MOV_CAJA'
    end
    object wwQMovEfectivoID_FPAGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_FPAGO'
    end
    object wwQMovEfectivoCOTIZACION: TFloatField
      DisplayWidth = 10
      FieldName = 'COTIZACION'
    end
    object wwQMovEfectivoUNIDADES: TFloatField
      DisplayWidth = 10
      FieldName = 'UNIDADES'
    end
    object wwQMovEfectivoIMPORTE: TFloatField
      DisplayWidth = 10
      FieldName = 'IMPORTE'
    end
    object wwQMovEfectivoID_CUENTA_CAJA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'DBMAIN.MOV_EFECTIVO.ID_CUENTA_CAJA'
    end
    object wwQMovEfectivoMONEDA: TIntegerField
      DisplayWidth = 10
      FieldName = 'MONEDA'
      Origin = 'DBMAIN.MOV_EFECTIVO.MONEDA'
    end
  end
  object QComprob: TSQLQuery
    Params = <>
    SQL.Strings = (
      'select * from comprobantes where'
      
        'id_comprobante=:id  and (tipo_comprob='#39'FC'#39' or tipo_comprob='#39'NC'#39' ' +
        'or tipo_comprob='#39'ND'#39' or tipo_comprob='#39'FO'#39')'
      'and compra_venta='#39'C'#39' and sucursal=:suc'
      ''
      '')
    Left = 496
    Top = 464
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
  end
  object QVerifiComprob: TSQLQuery
    Params = <>
    SQL.Strings = (
      'select NroCpbte from fccompcab where'
      
        'nrocpbte=:Nro and clasecpbte=:clase and tipocpbte=:tipo and codi' +
        'go=:codigo')
    Left = 616
    Top = 456
  end
  object QGravamen: TSQLQuery
    Params = <>
    SQL.Strings = (
      'select * from  gravamen where codigo=:codigo')
    Left = 248
    Top = 328
    object QGravamenCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = 'DBMAIN.GRAVAMEN.CODIGO'
    end
    object QGravamenDESCRIPCION: TStringField
      DisplayWidth = 15
      FieldName = 'DESCRIPCION'
      Origin = 'DBMAIN.GRAVAMEN.DESCRIPCION'
      Size = 15
    end
    object QGravamenTASA: TFloatField
      DisplayWidth = 10
      FieldName = 'TASA'
      Origin = 'DBMAIN.GRAVAMEN.TASA'
    end
  end
  object QPercepIva: TSQLQuery
    Params = <>
    SQL.Strings = (
      'select * from percepiva where codigo=:codigo')
    Left = 320
    Top = 328
    object QPercepIvaCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = 'DBMAIN.PERCEPIVA.CODIGO'
    end
    object QPercepIvaDESCRIPCION: TStringField
      DisplayWidth = 20
      FieldName = 'DESCRIPCION'
      Origin = 'DBMAIN.PERCEPIVA.DESCRIPCION'
    end
    object QPercepIvaTASA: TFloatField
      DisplayWidth = 10
      FieldName = 'TASA'
      Origin = 'DBMAIN.PERCEPIVA.TASA'
    end
    object QPercepIvaMINIMOAPLICABLE: TFloatField
      DisplayWidth = 10
      FieldName = 'MINIMOAPLICABLE'
      Origin = 'DBMAIN.PERCEPIVA.MINIMOAPLICABLE'
    end
  end
  object QPercepIB: TSQLQuery
    Params = <>
    SQL.Strings = (
      'select * from percepIB where codigo=:codigo')
    Left = 392
    Top = 328
    object QPercepIBCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = 'DBMAIN.PERCEPIB.CODIGO'
    end
    object QPercepIBDESCRIPCION: TStringField
      DisplayWidth = 20
      FieldName = 'DESCRIPCION'
      Origin = 'DBMAIN.PERCEPIB.DESCRIPCION'
    end
    object QPercepIBTASA: TFloatField
      DisplayWidth = 10
      FieldName = 'TASA'
      Origin = 'DBMAIN.PERCEPIB.TASA'
    end
    object QPercepIBMINIMOAPLICABLE: TFloatField
      DisplayWidth = 10
      FieldName = 'MINIMOAPLICABLE'
      Origin = 'DBMAIN.PERCEPIB.MINIMOAPLICABLE'
    end
  end
  object QPrimerConComp: TSQLQuery
    Params = <>
    SQL.Strings = (
      
        'select Min(codigopago) from condcompra where codigoprovee=:codig' +
        'o')
    Left = 480
    Top = 344
  end
  object QFormaPago: TSQLQuery
    Params = <>
    SQL.Strings = (
      'select * from FormaPago where id_Tpago=1'
      'order by id_fpago')
    Left = 424
    Top = 448
    object QFormaPagoID_FPAGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_FPAGO'
      Origin = 'DBMAIN.FORMAPAGO.ID_FPAGO'
    end
    object QFormaPagoID_TPAGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_TPAGO'
      Origin = 'DBMAIN.FORMAPAGO.ID_TPAGO'
    end
    object QFormaPagoDESCRIPCION: TStringField
      DisplayWidth = 20
      FieldName = 'DESCRIPCION'
      Origin = 'DBMAIN.FORMAPAGO.DESCRIPCION'
    end
    object QFormaPagoCOTIZACION: TFloatField
      DisplayWidth = 10
      FieldName = 'COTIZACION'
      Origin = 'DBMAIN.FORMAPAGO.COTIZACION'
    end
    object QFormaPagoSIGNO: TStringField
      DisplayWidth = 5
      FieldName = 'SIGNO'
      Origin = 'DBMAIN.FORMAPAGO.UNIDAD_MONETARIA'
      Size = 5
    end
    object QFormaPagoMONEDA: TIntegerField
      DisplayWidth = 10
      FieldName = 'MONEDA'
      Origin = 'DBMAIN.FORMAPAGO.MONEDA'
    end
  end
  object QBuscaComprob: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select * from comprobantes where sucursal=:suc and compra_venta=' +
        #39'C'#39' and'
      '(tipo_comprob='#39'FC'#39' or tipo_comprob='#39'NC'#39' or tipo_comprob='#39'ND'#39')')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 436
    Top = 239
  end
  object DSPBuscaComprob: TDataSetProvider
    DataSet = QBuscaComprob
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 504
    Top = 240
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
    Left = 592
    Top = 189
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
      FieldName = 'CLASE_COMPROB'
      Required = True
      Size = 4
    end
    object CDSBuscaComprobDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object CDSBuscaComprobSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSBuscaComprobLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Size = 4
    end
    object CDSBuscaComprobNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobNUMERO: TStringField
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
end
