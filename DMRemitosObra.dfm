object DatosRemitosObra: TDatosRemitosObra
  OnDestroy = DataModuleDestroy
  Height = 537
  Width = 783
  object CDSRtoCab: TClientDataSet
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
    ProviderName = 'DSPRtoCab'
    OnNewRecord = CDSRtoCabNewRecord
    Left = 104
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
    object CDSRtoCabCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
      OnSetText = CDSRtoCabCODIGOSetText
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
    object CDSRtoCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
    end
    object CDSRtoCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSRtoCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object CDSRtoCabESTADO: TStringField
      FieldName = 'ESTADO'
      Required = True
      Size = 1
    end
    object CDSRtoCabANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object CDSRtoCabNROFACT: TStringField
      FieldName = 'NROFACT'
      Size = 13
    end
    object CDSRtoCabN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
    end
    object CDSRtoCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00'
    end
    object CDSRtoCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Required = True
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
    object CDSRtoCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
      OnSetText = CDSRtoCabSUCURSALSetText
    end
    object CDSRtoCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
      OnSetText = CDSRtoCabDEPOSITOSetText
    end
    object CDSRtoCabNROENTREGA: TIntegerField
      FieldName = 'NROENTREGA'
    end
    object CDSRtoCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSRtoCabRENGLONES: TSmallintField
      FieldName = 'RENGLONES'
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
    object CDSRtoCabMUESTRAOBRA: TStringField
      FieldName = 'MUESTRAOBRA'
      ProviderFlags = []
      Size = 100
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
    AfterInsert = CDSRtoDetAfterInsert
    BeforePost = CDSRtoDetBeforePost
    AfterPost = CDSRtoDetAfterPost
    OnNewRecord = CDSRtoDetNewRecord
    Left = 104
    Top = 56
    object CDSRtoDetID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSRtoDetID_CABRTO: TIntegerField
      FieldName = 'ID_CABRTO'
      Required = True
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
    object CDSRtoDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSRtoDetCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Required = True
      OnSetText = CDSRtoDetCODIGOSetText
      Size = 8
    end
    object CDSRtoDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSRtoDetCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      OnSetText = CDSRtoDetCANTIDADSetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSRtoDetUNIDAD: TStringField
      DisplayLabel = 'Uni.'
      FieldName = 'UNIDAD'
      Size = 3
    end
    object CDSRtoDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
    end
    object CDSRtoDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
    end
    object CDSRtoDetUNITARIO_TOTAL: TFloatField
      DisplayLabel = '$ Unitario'
      FieldName = 'UNITARIO_TOTAL'
      OnSetText = CDSRtoDetUNITARIO_TOTALSetText
      DisplayFormat = ',0.00'
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
    object CDSRtoDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
    end
    object CDSRtoDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
    end
    object CDSRtoDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
    end
    object CDSRtoDetTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
    end
    object CDSRtoDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object CDSRtoDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Size = 1
    end
    object CDSRtoDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSRtoDetCON_CODIGO_BARRA: TStringField
      FieldName = 'CON_CODIGO_BARRA'
      Required = True
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
    object CDSRtoDetMUESTRAMONEDA: TStringField
      FieldName = 'MUESTRAMONEDA'
      Size = 15
    end
    object CDSRtoDetMUESTRASIGNO: TStringField
      FieldName = 'MUESTRASIGNO'
      Size = 5
    end
  end
  object CDSRtoSubDetalle: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRtoSubDetalle'
    Left = 104
    Top = 104
    object CDSRtoSubDetalleID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRtoSubDetalleID_RTODET: TIntegerField
      FieldName = 'ID_RTODET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRtoSubDetalleID_RTOCAB: TIntegerField
      FieldName = 'ID_RTOCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRtoSubDetalleTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 4
    end
    object CDSRtoSubDetalleCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 4
    end
    object CDSRtoSubDetalleFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object CDSRtoSubDetalleNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSRtoSubDetalleCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 8
    end
    object CDSRtoSubDetalleSERIE: TStringField
      FieldName = 'SERIE'
      Size = 50
    end
    object CDSRtoSubDetalleDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object CDSRtoSubDetalleTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPRtoCab: TDataSetProvider
    DataSet = DMMain_FD.QRtoObraCab
    Options = []
    Left = 24
    Top = 8
  end
  object DSPRtoDet: TDataSetProvider
    DataSet = DMMain_FD.QRtoObraDet
    Options = []
    Left = 24
    Top = 56
  end
  object DSPRtoSubDetalle: TDataSetProvider
    DataSet = DMMain_FD.QRtoObraSubDet
    Options = []
    Left = 24
    Top = 104
  end
  object DSRetDet: TDataSource
    DataSet = CDSRtoDet
    Left = 184
    Top = 56
  end
  object DSRtoSubDetalle: TDataSource
    DataSet = CDSRtoSubDetalle
    Left = 184
    Top = 104
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMMain_FD.QSucursal
    Options = []
    Left = 24
    Top = 216
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
    Top = 216
    object CDSSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
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
  end
  object CDSDepositos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPDepositos'
    Left = 88
    Top = 264
    object CDSDepositosID: TIntegerField
      FieldName = 'ID'
    end
    object CDSDepositosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSDepositosSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
  end
  object DSPDepositos: TDataSetProvider
    DataSet = DMMain_FD.QDeposito
    Options = []
    Left = 24
    Top = 264
  end
  object IBGRto_Cab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RTO_OBRACAB'
    SystemGenerators = False
    Left = 360
    Top = 272
  end
  object IBGRto_Det: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RTO_OBRADET'
    SystemGenerators = False
    Left = 360
    Top = 328
  end
  object IBGRto_Sub: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RTO_OBRASUBDET'
    SystemGenerators = False
    Left = 368
    Top = 392
  end
  object DSPStock: TDataSetProvider
    DataSet = DMMain_FD.QStock
    Options = []
    Left = 24
    Top = 158
  end
  object DSPobras: TDataSetProvider
    DataSet = DMMain_FD.QObras
    Options = []
    Left = 296
    Top = 64
  end
  object CDSObras: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPobras'
    Left = 352
    Top = 64
    object CDSObrasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSObrasDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 100
    end
    object CDSObrasFEHCHAINCIO: TSQLTimeStampField
      FieldName = 'FEHCHAINCIO'
      Required = True
    end
    object CDSObrasFECHAFINAL: TSQLTimeStampField
      FieldName = 'FECHAFINAL'
    end
    object CDSObrasESTADO: TStringField
      FieldName = 'ESTADO'
      Required = True
      Size = 1
    end
    object CDSObrasRESPONSABLE: TStringField
      FieldName = 'RESPONSABLE'
      Size = 60
    end
    object CDSObrasDIREECION: TStringField
      FieldName = 'DIREECION'
      Size = 60
    end
    object CDSObrasLISTAPRECIOS: TIntegerField
      FieldName = 'LISTAPRECIOS'
      Required = True
    end
  end
  object CDSBuscaDeposito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaDeposito'
    Left = 568
    Top = 8
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
    Left = 512
    Top = 8
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
    Left = 352
    Top = 11
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
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSExistenciaCOMPROMETIDO: TFloatField
      FieldName = 'COMPROMETIDO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSExistenciaSALDO: TFloatField
      FieldName = 'SALDO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSExistenciaDEPOSITO_STK: TIntegerField
      FieldName = 'DEPOSITO_STK'
    end
    object CDSExistenciaEN_TRANSITO: TFloatField
      FieldName = 'EN_TRANSITO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSExistenciaDEPOSITO_NOMBRE: TStringField
      FieldName = 'DEPOSITO_NOMBRE'
      Size = 25
    end
  end
  object DSExistencia: TDataSource
    DataSet = CDSExistencia
    Left = 416
    Top = 11
  end
  object DSPExistencia: TDataSetProvider
    DataSet = DMMain_FD.QExistencia
    Options = []
    Left = 296
    Top = 11
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = []
    Left = 512
    Top = 54
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 568
    Top = 54
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
  object CDSStock: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPStock'
    Left = 104
    Top = 160
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
  object QComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      'id_comprobante=:id '
      'and tipo_comprob='#39'RO'#39
      'and compra_venta='#39'V'#39' '
      'and sucursal=:suc')
    Left = 216
    Top = 352
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
    object QComprobCOPIAS: TIntegerField
      DisplayWidth = 10
      FieldName = 'COPIAS'
      Origin = 'DBMAIN.COMPROBANTES.COPIAS'
    end
    object QComprobREPORTE: TStringField
      DisplayWidth = 100
      FieldName = 'REPORTE'
      Origin = 'DBMAIN.COMPROBANTES.REPORTE'
      Size = 100
    end
    object QComprobLINEAS_DETALLE: TSmallintField
      DisplayWidth = 10
      FieldName = 'LINEAS_DETALLE'
      Origin = 'DBMAIN.COMPROBANTES.LINEAS_DETALLE'
    end
  end
  object QNroEntrega: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select count(id_rto) from rto_obracab Rto'
      'where Rto.codigo= :codigo')
    Left = 208
    Top = 272
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
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
    Left = 528
    Top = 133
    object CDSListaPreciosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSListaPreciosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSListaPreciosF_PAGO: TIntegerField
      FieldName = 'F_PAGO'
    end
  end
  object DSListaPrecios: TDataSource
    DataSet = CDSListaPrecios
    Left = 608
    Top = 133
  end
  object DSPListaPrecios: TDataSetProvider
    DataSet = DMBuscadores.QBuscaListaPrecios
    Options = []
    Left = 448
    Top = 133
  end
  object QMonedas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from monedas where id=:id')
    Left = 496
    Top = 239
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QMonedasID: TIntegerField
      FieldName = 'ID'
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
end
