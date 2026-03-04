object DatosAnulacionOPago: TDatosAnulacionOPago
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Height = 615
  Width = 842
  object IBGId_Anulacion: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_ANULACION_OPAGO'
    SystemGenerators = False
    Left = 312
    Top = 24
  end
  object DSPProveedor: TDataSetProvider
    DataSet = DMMain_FD.QProveedores
    Options = []
    Left = 40
    Top = 66
  end
  object DSPSucrusal: TDataSetProvider
    DataSet = DMMain_FD.QSucursal
    Options = []
    Left = 48
    Top = 120
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = DMMain_FD.QEmpresa
    Options = []
    Left = 48
    Top = 176
  end
  object CDSAnulacionOPago: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPAnulacionOPago'
    OnNewRecord = CDSAnulacionOPagoNewRecord
    Left = 160
    Top = 8
    object CDSAnulacionOPagoID_ANULACION: TIntegerField
      FieldName = 'ID_ANULACION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAnulacionOPagoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 4
    end
    object CDSAnulacionOPagoCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 4
    end
    object CDSAnulacionOPagoNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object CDSAnulacionOPagoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      OnSetText = CDSAnulacionOPagoCODIGOSetText
      Size = 6
    end
    object CDSAnulacionOPagoLETRA: TStringField
      FieldName = 'LETRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSAnulacionOPagoSUC: TStringField
      FieldName = 'SUC'
      Required = True
      OnSetText = CDSAnulacionOPagoSUCSetText
      Size = 4
    end
    object CDSAnulacionOPagoNUMERO: TStringField
      FieldName = 'NUMERO'
      Required = True
      OnSetText = CDSAnulacionOPagoNUMEROSetText
      Size = 8
    end
    object CDSAnulacionOPagoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSAnulacionOPagoRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSAnulacionOPagoCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSAnulacionOPagoLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSAnulacionOPagoTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object CDSAnulacionOPagoCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSAnulacionOPagoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object CDSAnulacionOPagoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object CDSAnulacionOPagoOBSERVACIONES1: TStringField
      FieldName = 'OBSERVACIONES1'
      Size = 60
    end
    object CDSAnulacionOPagoOBSERVACIONES2: TStringField
      FieldName = 'OBSERVACIONES2'
      Size = 60
    end
    object CDSAnulacionOPagoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
      OnSetText = CDSAnulacionOPagoSUCURSALSetText
    end
    object CDSAnulacionOPagoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSAnulacionOPagoMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSAnulacionOPagoMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object CDSAnulacionOPagoID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
      OnSetText = CDSAnulacionOPagoID_TIPOCOMPROBANTESetText
    end
  end
  object DSPAnulacionOPago: TDataSetProvider
    DataSet = DMMain_FD.QAnulacionOPago
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 48
    Top = 8
  end
  object DSAnulacionRetGanancia: TDataSource
    DataSet = CDSAnulacionRetGanancia
    OnStateChange = DSAnulacionRetGananciaStateChange
    Left = 32
    Top = 312
  end
  object CDSAnulacionRetGanancia: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPAnulacionRetGanancia'
    OnNewRecord = CDSAnulacionRetGananciaNewRecord
    Left = 304
    Top = 312
    object CDSAnulacionRetGananciaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAnulacionRetGananciaID_ANULACION_OP: TIntegerField
      FieldName = 'ID_ANULACION_OP'
      Required = True
    end
    object CDSAnulacionRetGananciaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object CDSAnulacionRetGananciaNUMERO_RETENCION: TStringField
      FieldName = 'NUMERO_RETENCION'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CDSAnulacionRetGananciaCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Required = True
      Size = 6
    end
    object CDSAnulacionRetGananciaCODIGO_REGIMEN: TIntegerField
      FieldName = 'CODIGO_REGIMEN'
      Required = True
    end
    object CDSAnulacionRetGananciaCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Size = 25
    end
    object CDSAnulacionRetGananciaTASA: TFloatField
      FieldName = 'TASA'
    end
    object CDSAnulacionRetGananciaMINIMO_NO_IMPONIBLE: TFloatField
      FieldName = 'MINIMO_NO_IMPONIBLE'
    end
    object CDSAnulacionRetGananciaPAGOS_ACUMULADOS: TFloatField
      FieldName = 'PAGOS_ACUMULADOS'
    end
    object CDSAnulacionRetGananciaIMPUESTO_RETENIDO: TFloatField
      FieldName = 'IMPUESTO_RETENIDO'
    end
    object CDSAnulacionRetGananciaOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object CDSAnulacionRetGananciaVALOR_MINIMO_IMPUESTO: TFloatField
      FieldName = 'VALOR_MINIMO_IMPUESTO'
    end
    object CDSAnulacionRetGananciaID_RETENCION: TIntegerField
      FieldName = 'ID_RETENCION'
      Required = True
    end
  end
  object DSPAnulacionRetGanancia: TDataSetProvider
    DataSet = QAnulacionRetGanancia
    Options = []
    Left = 208
    Top = 312
  end
  object ibgAnulaRet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_ANULACION_RET_GAN'
    SystemGenerators = False
    Left = 432
    Top = 312
  end
  object DSAnulacionRetIB: TDataSource
    DataSet = CDSAnulacionRetIB
    OnStateChange = DSAnulacionRetIBStateChange
    Left = 32
    Top = 376
  end
  object DSPAnulacionRetIB: TDataSetProvider
    DataSet = QAnulacionRetIB
    Options = []
    Left = 216
    Top = 368
  end
  object CDSAnulacionRetIB: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPAnulacionRetIB'
    OnNewRecord = CDSAnulacionRetIBNewRecord
    Left = 320
    Top = 376
    object CDSAnulacionRetIBID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSAnulacionRetIBCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSAnulacionRetIBNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSAnulacionRetIBCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSAnulacionRetIBFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSAnulacionRetIBID_CPBTE_ORIGEN: TIntegerField
      FieldName = 'ID_CPBTE_ORIGEN'
    end
    object CDSAnulacionRetIBTIPOCPBTE_ORIGEN: TStringField
      FieldName = 'TIPOCPBTE_ORIGEN'
      Size = 4
    end
    object CDSAnulacionRetIBCLASECPBTE_ORIGEN: TStringField
      FieldName = 'CLASECPBTE_ORIGEN'
      Size = 4
    end
    object CDSAnulacionRetIBNROCPBTE_ORIGEN: TStringField
      FieldName = 'NROCPBTE_ORIGEN'
      Size = 13
    end
    object CDSAnulacionRetIBNROCPBTE_RET: TStringField
      FieldName = 'NROCPBTE_RET'
      Size = 13
    end
    object CDSAnulacionRetIBTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object CDSAnulacionRetIBNETO_GRAVADO: TFloatField
      FieldName = 'NETO_GRAVADO'
      Required = True
    end
    object CDSAnulacionRetIBTASA_RETENCION: TFloatField
      FieldName = 'TASA_RETENCION'
      Required = True
    end
    object CDSAnulacionRetIBID_RETENCION_ING_BRU: TIntegerField
      FieldName = 'ID_RETENCION_ING_BRU'
      Required = True
    end
    object CDSAnulacionRetIBID_ANULACION_OP: TIntegerField
      FieldName = 'ID_ANULACION_OP'
      Required = True
    end
  end
  object ibgAnulaRetIB: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_ANULACION_RET_ING_BRUTO'
    SystemGenerators = False
    Left = 440
    Top = 376
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
    Left = 168
    Top = 66
    object CDSProveedorCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSProveedorNOMBRE: TStringField
      DisplayWidth = 35
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSProveedorRAZON_SOCIAL: TStringField
      DisplayWidth = 35
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSProveedorN_DE_CUENTA: TStringField
      DisplayWidth = 14
      FieldName = 'N_DE_CUENTA'
      Size = 14
    end
    object CDSProveedorID_COD_POSTAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_COD_POSTAL'
    end
    object CDSProveedorCOD_POSTAL: TStringField
      DisplayWidth = 8
      FieldName = 'COD_POSTAL'
      Size = 8
    end
    object CDSProveedorLOCALIDAD: TStringField
      DisplayWidth = 15
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSProveedorDIRECCION: TStringField
      DisplayWidth = 35
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSProveedorTELEFONO_1: TStringField
      DisplayWidth = 10
      FieldName = 'TELEFONO_1'
      Size = 10
    end
    object CDSProveedorTELEFONO_2: TStringField
      DisplayWidth = 10
      FieldName = 'TELEFONO_2'
      Size = 10
    end
    object CDSProveedorCONDICION_IVA: TIntegerField
      DisplayWidth = 10
      FieldName = 'CONDICION_IVA'
    end
    object CDSProveedorN_DE_CUIT: TStringField
      DisplayWidth = 13
      FieldName = 'N_DE_CUIT'
      Size = 13
    end
    object CDSProveedorACTIVO: TStringField
      DisplayWidth = 1
      FieldName = 'ACTIVO'
      Size = 1
    end
    object CDSProveedorRETIENE_IVA: TStringField
      DisplayWidth = 1
      FieldName = 'RETIENE_IVA'
      Size = 1
    end
    object CDSProveedorRETIENE_IB: TStringField
      DisplayWidth = 1
      FieldName = 'RETIENE_IB'
      Size = 1
    end
    object CDSProveedorRETIENE_GANANCIAS: TStringField
      DisplayWidth = 1
      FieldName = 'RETIENE_GANANCIAS'
      Size = 1
    end
    object CDSProveedorIVA_SERVICIOS: TStringField
      DisplayWidth = 1
      FieldName = 'IVA_SERVICIOS'
      Size = 1
    end
    object CDSProveedorPRECIOS_CON_IVA: TStringField
      DisplayWidth = 1
      FieldName = 'PRECIOS_CON_IVA'
      Size = 1
    end
    object CDSProveedorOBSERVACIONES: TMemoField
      DisplayWidth = 10
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object CDSProveedorNOMBRE_REPRESENTANTE: TStringField
      DisplayWidth = 35
      FieldName = 'NOMBRE_REPRESENTANTE'
      Size = 35
    end
    object CDSProveedorDIRECCION_REPRESENTANTE: TStringField
      DisplayWidth = 35
      FieldName = 'DIRECCION_REPRESENTANTE'
      Size = 35
    end
    object CDSProveedorTELEFONO_REPRESENTANTE: TStringField
      DisplayWidth = 25
      FieldName = 'TELEFONO_REPRESENTANTE'
      Size = 25
    end
    object CDSProveedorTIPO_PROVEEDOR: TStringField
      DisplayWidth = 1
      FieldName = 'TIPO_PROVEEDOR'
      Size = 1
    end
    object CDSProveedorID_PERC_IVA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_PERC_IVA'
    end
    object CDSProveedorID_PERC_IBB: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_PERC_IBB'
    end
    object CDSProveedorTELEDISCADO: TStringField
      DisplayWidth = 6
      FieldName = 'TELEDISCADO'
      Size = 6
    end
    object CDSProveedorDESPERIVA: TStringField
      DisplayWidth = 20
      FieldName = 'DESPERIVA'
    end
    object CDSProveedorDESPERIB: TStringField
      DisplayWidth = 20
      FieldName = 'DESPERIB'
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
    ProviderName = 'DSPSucrusal'
    Left = 160
    Top = 120
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
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    Left = 152
    Top = 176
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
  end
  object QAnulacionRetGanancia: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select r.* from anulacion_retenciones_ganancia r '
      'where r.id_anulacion_op=:id')
    Left = 120
    Top = 313
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QAnulacionRetGananciaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAnulacionRetGananciaID_ANULACION_OP: TIntegerField
      FieldName = 'ID_ANULACION_OP'
      Required = True
    end
    object QAnulacionRetGananciaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object QAnulacionRetGananciaNUMERO_RETENCION: TStringField
      FieldName = 'NUMERO_RETENCION'
      Required = True
      FixedChar = True
      Size = 14
    end
    object QAnulacionRetGananciaCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Required = True
      Size = 6
    end
    object QAnulacionRetGananciaCODIGO_REGIMEN: TIntegerField
      FieldName = 'CODIGO_REGIMEN'
      Required = True
    end
    object QAnulacionRetGananciaCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Size = 25
    end
    object QAnulacionRetGananciaTASA: TFloatField
      FieldName = 'TASA'
    end
    object QAnulacionRetGananciaMINIMO_NO_IMPONIBLE: TFloatField
      FieldName = 'MINIMO_NO_IMPONIBLE'
    end
    object QAnulacionRetGananciaPAGOS_ACUMULADOS: TFloatField
      FieldName = 'PAGOS_ACUMULADOS'
    end
    object QAnulacionRetGananciaIMPUESTO_RETENIDO: TFloatField
      FieldName = 'IMPUESTO_RETENIDO'
    end
    object QAnulacionRetGananciaOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object QAnulacionRetGananciaVALOR_MINIMO_IMPUESTO: TFloatField
      FieldName = 'VALOR_MINIMO_IMPUESTO'
    end
    object QAnulacionRetGananciaID_RETENCION: TIntegerField
      FieldName = 'ID_RETENCION'
      Required = True
    end
  end
  object QAnulacionRetIB: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select r.* from anulacion_ret_ing_bruto r '
      'where r.id_anulacion_op=:id')
    Left = 128
    Top = 369
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QAnulacionRetIBID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAnulacionRetIBCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object QAnulacionRetIBNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QAnulacionRetIBCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object QAnulacionRetIBFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QAnulacionRetIBID_CPBTE_ORIGEN: TIntegerField
      FieldName = 'ID_CPBTE_ORIGEN'
    end
    object QAnulacionRetIBTIPOCPBTE_ORIGEN: TStringField
      FieldName = 'TIPOCPBTE_ORIGEN'
      Size = 4
    end
    object QAnulacionRetIBCLASECPBTE_ORIGEN: TStringField
      FieldName = 'CLASECPBTE_ORIGEN'
      Size = 4
    end
    object QAnulacionRetIBNROCPBTE_ORIGEN: TStringField
      FieldName = 'NROCPBTE_ORIGEN'
      Size = 13
    end
    object QAnulacionRetIBNROCPBTE_RET: TStringField
      FieldName = 'NROCPBTE_RET'
      Size = 13
    end
    object QAnulacionRetIBTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object QAnulacionRetIBNETO_GRAVADO: TFloatField
      FieldName = 'NETO_GRAVADO'
      Required = True
    end
    object QAnulacionRetIBTASA_RETENCION: TFloatField
      FieldName = 'TASA_RETENCION'
      Required = True
    end
    object QAnulacionRetIBID_RETENCION_ING_BRU: TIntegerField
      FieldName = 'ID_RETENCION_ING_BRU'
      Required = True
    end
    object QAnulacionRetIBID_ANULACION_OP: TIntegerField
      FieldName = 'ID_ANULACION_OP'
      Required = True
    end
  end
  object QCheDebitado: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select r.id,r.id_cta_bco,r.fecha_ingr,r.fecha_cobro,r.detalle,r.' +
        'haber,'
      'ch.fecha_cobro,ch.fecha_debito,ch.importe from resumen_bco_det r'
      'left join cheque_propio ch on ch.id_cheque_pro= r.id_origen'
      'where r.id_origen=:id and r.tipo_origen='#39'CHP'#39)
    Left = 466
    Top = 497
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCheDebitadoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QCheDebitadoID_CTA_BCO: TIntegerField
      FieldName = 'ID_CTA_BCO'
      Required = True
    end
    object QCheDebitadoFECHA_INGR: TSQLTimeStampField
      FieldName = 'FECHA_INGR'
    end
    object QCheDebitadoFECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
    end
    object QCheDebitadoDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 50
    end
    object QCheDebitadoHABER: TFloatField
      FieldName = 'HABER'
    end
    object QCheDebitadoFECHA_COBRO_1: TSQLTimeStampField
      FieldName = 'FECHA_COBRO_1'
    end
    object QCheDebitadoFECHA_DEBITO: TSQLTimeStampField
      FieldName = 'FECHA_DEBITO'
    end
    object QCheDebitadoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
  end
  object QRetGanancia: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select r.* from retenciones_ganancia r '
      'where r.id=:id')
    Left = 544
    Top = 481
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRetGananciaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QRetGananciaID_OP: TIntegerField
      FieldName = 'ID_OP'
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
      Size = 1
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
  object QRetIIBB: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from cpbte_ret_ingbr_cab c where'
      'c.id=:id')
    Left = 544
    Top = 425
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRetIIBBID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QRetIIBBCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object QRetIIBBNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QRetIIBBDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object QRetIIBBCODIGOPOSTAL: TStringField
      FieldName = 'CODIGOPOSTAL'
      Size = 8
    end
    object QRetIIBBLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object QRetIIBBCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object QRetIIBBTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 4
    end
    object QRetIIBBCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 4
    end
    object QRetIIBBFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QRetIIBBLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QRetIIBBSUC: TStringField
      FieldName = 'SUC'
      Size = 4
    end
    object QRetIIBBNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object QRetIIBBSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QRetIIBBID_CPBTE_ORIGEN: TIntegerField
      FieldName = 'ID_CPBTE_ORIGEN'
    end
    object QRetIIBBTIPOCPBTE_ORIGEN: TStringField
      FieldName = 'TIPOCPBTE_ORIGEN'
      Size = 4
    end
    object QRetIIBBCLASECPBTE_ORIGEN: TStringField
      FieldName = 'CLASECPBTE_ORIGEN'
      Size = 4
    end
    object QRetIIBBNROCPBTE_ORIGEN: TStringField
      FieldName = 'NROCPBTE_ORIGEN'
      Size = 13
    end
    object QRetIIBBNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QRetIIBBTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object QRetIIBBNOMBRE_AGTE_RET: TStringField
      FieldName = 'NOMBRE_AGTE_RET'
      Size = 35
    end
    object QRetIIBBDIRECCION_AGTE_RET: TStringField
      FieldName = 'DIRECCION_AGTE_RET'
      Size = 35
    end
    object QRetIIBBCUIT_AGTE_RET: TStringField
      FieldName = 'CUIT_AGTE_RET'
      Size = 13
    end
    object QRetIIBBCPOSTAL_AGTE_RET: TStringField
      FieldName = 'CPOSTAL_AGTE_RET'
      Size = 8
    end
    object QRetIIBBLOCALIDAD_AGTE_RET: TStringField
      FieldName = 'LOCALIDAD_AGTE_RET'
      Size = 15
    end
    object QRetIIBBNRO_AGTE_RET: TStringField
      FieldName = 'NRO_AGTE_RET'
      Size = 15
    end
    object QRetIIBBNETO_GRAVADO: TFloatField
      FieldName = 'NETO_GRAVADO'
      Required = True
    end
    object QRetIIBBTASA_RETENCION: TFloatField
      FieldName = 'TASA_RETENCION'
      Required = True
    end
    object QRetIIBBANULADO: TStringField
      FieldName = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRetIIBBESTADO: TStringField
      FieldName = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRetIIBBNRO_IIBB: TStringField
      FieldName = 'NRO_IIBB'
      Size = 15
    end
  end
  object QCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select estado from caja_cab where id_caja=:id ')
    Left = 316
    Top = 174
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCajaESTADO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ESTADO'
    end
  end
  object QComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      'id_comprobante=:id  and '
      '(tipo_comprob='#39'XP'#39' )'
      'and compra_venta='#39'C'#39' '
      'and Sucursal=:suc')
    Left = 313
    Top = 94
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
    object QComprobID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object QComprobTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 4
    end
    object QComprobCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Required = True
      Size = 4
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
  end
end
