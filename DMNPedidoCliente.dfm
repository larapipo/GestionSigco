object DatosNPedidoClientes: TDatosNPedidoClientes
  OnDestroy = DataModuleDestroy
  Height = 615
  Width = 830
  object DSPNotaPedidoCab: TDataSetProvider
    DataSet = DMMain_FD.QNotaPedidoCab
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 55
  end
  object DSPNotaPedidoDet: TDataSetProvider
    DataSet = DMMain_FD.QNotaPedidoDet
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 102
  end
  object CDSNotaPedidoCab: TClientDataSet
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
    ProviderName = 'DSPNotaPedidoCab'
    BeforePost = CDSNotaPedidoCabBeforePost
    OnNewRecord = CDSNotaPedidoCabNewRecord
    Left = 134
    Top = 55
    object CDSNotaPedidoCabID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSNotaPedidoCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSNotaPedidoCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSNotaPedidoCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSNotaPedidoCabCODIGO: TStringField
      FieldName = 'CODIGO'
      OnSetText = CDSNotaPedidoCabCODIGOSetText
      Size = 6
    end
    object CDSNotaPedidoCabLETRANP: TStringField
      FieldName = 'LETRANP'
      Size = 1
    end
    object CDSNotaPedidoCabSUCNP: TStringField
      FieldName = 'SUCNP'
      OnSetText = CDSNotaPedidoCabSUCNPSetText
      Size = 4
    end
    object CDSNotaPedidoCabNUMERONP: TStringField
      FieldName = 'NUMERONP'
      OnSetText = CDSNotaPedidoCabNUMERONPSetText
      Size = 8
    end
    object CDSNotaPedidoCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSNotaPedidoCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSNotaPedidoCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSNotaPedidoCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSNotaPedidoCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSNotaPedidoCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object CDSNotaPedidoCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSNotaPedidoCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
    end
    object CDSNotaPedidoCabFECHAPEDIDO: TSQLTimeStampField
      FieldName = 'FECHAPEDIDO'
    end
    object CDSNotaPedidoCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object CDSNotaPedidoCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
      OnSetText = CDSNotaPedidoCabCONDICIONVTASetText
    end
    object CDSNotaPedidoCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      OnGetText = CDSNotaPedidoCabNETOGRAV1GetText
      DisplayFormat = ',0.00'
    end
    object CDSNotaPedidoCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      OnGetText = CDSNotaPedidoCabNETOGRAV2GetText
      DisplayFormat = ',0.00'
    end
    object CDSNotaPedidoCabDSTO: TFloatField
      FieldName = 'DSTO'
      OnSetText = CDSNotaPedidoCabDSTOSetText
      DisplayFormat = ',0.00'
    end
    object CDSNotaPedidoCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSNotaPedidoCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      DisplayFormat = ',0.00'
    end
    object CDSNotaPedidoCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      DisplayFormat = ',0.00'
    end
    object CDSNotaPedidoCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSNotaPedidoCabDEBE: TFloatField
      FieldName = 'DEBE'
    end
    object CDSNotaPedidoCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object CDSNotaPedidoCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object CDSNotaPedidoCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object CDSNotaPedidoCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      OnSetText = CDSNotaPedidoCabSUCURSALSetText
    end
    object CDSNotaPedidoCabZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object CDSNotaPedidoCabLDR: TIntegerField
      FieldName = 'LDR'
      OnSetText = CDSNotaPedidoCabLDRSetText
    end
    object CDSNotaPedidoCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      OnSetText = CDSNotaPedidoCabDEPOSITOSetText
    end
    object CDSNotaPedidoCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object CDSNotaPedidoCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Size = 1
    end
    object CDSNotaPedidoCabCOMISIONVENDEDOR: TFloatField
      FieldName = 'COMISIONVENDEDOR'
    end
    object CDSNotaPedidoCabVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      OnSetText = CDSNotaPedidoCabVENDEDORSetText
      Size = 6
    end
    object CDSNotaPedidoCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSNotaPedidoCabRENGLONES: TSmallintField
      FieldName = 'RENGLONES'
    end
    object CDSNotaPedidoCabORIGEN_ID_NOTA_PEDIDO: TIntegerField
      FieldName = 'ORIGEN_ID_NOTA_PEDIDO'
    end
    object CDSNotaPedidoCabORIGEN_TIPOCPBTE: TStringField
      FieldName = 'ORIGEN_TIPOCPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSNotaPedidoCabORIGEN_NROCPBTE: TStringField
      FieldName = 'ORIGEN_NROCPBTE'
      Size = 13
    end
    object CDSNotaPedidoCabCOPIA: TSmallintField
      FieldName = 'COPIA'
      Required = True
    end
    object CDSNotaPedidoCabENTREGA_ID_CPBTE: TIntegerField
      FieldName = 'ENTREGA_ID_CPBTE'
    end
    object CDSNotaPedidoCabENTREGA_TIPOCPBTE: TStringField
      FieldName = 'ENTREGA_TIPOCPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSNotaPedidoCabENTREGA_NROCPBTE: TStringField
      FieldName = 'ENTREGA_NROCPBTE'
      Size = 13
    end
    object CDSNotaPedidoCabESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object CDSNotaPedidoCabPRESUPUESTO_ID: TIntegerField
      FieldName = 'PRESUPUESTO_ID'
    end
    object CDSNotaPedidoCabPRESUPUESTO_NROCPBTE: TStringField
      FieldName = 'PRESUPUESTO_NROCPBTE'
      Size = 13
    end
    object CDSNotaPedidoCabMUESTRACONDVENTA: TStringField
      FieldName = 'MUESTRACONDVENTA'
      ProviderFlags = []
    end
    object CDSNotaPedidoCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
    object CDSNotaPedidoCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSNotaPedidoCabMUESTRALDR: TStringField
      FieldName = 'MUESTRALDR'
      ProviderFlags = []
      Size = 35
    end
    object CDSNotaPedidoCabMUESTRAIVA: TStringField
      FieldName = 'MUESTRAIVA'
      ProviderFlags = []
      Size = 15
    end
    object CDSNotaPedidoCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object CDSNotaPedidoCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
      OnSetText = CDSNotaPedidoCabID_TIPOCOMPROBANTESetText
    end
    object CDSNotaPedidoCabMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object CDSNotaPedidoCabFACTURA_ID: TIntegerField
      FieldName = 'FACTURA_ID'
    end
    object CDSNotaPedidoCabFACTURA_NROCPBTE: TStringField
      FieldName = 'FACTURA_NROCPBTE'
      Size = 13
    end
    object CDSNotaPedidoCabID_PEDIDO_MOVIL: TIntegerField
      FieldName = 'ID_PEDIDO_MOVIL'
    end
  end
  object CDSNotaPedidoDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPNotaPedidoDet'
    AfterInsert = CDSNotaPedidoDetAfterInsert
    BeforePost = CDSNotaPedidoDetBeforePost
    AfterPost = CDSNotaPedidoDetAfterPost
    AfterDelete = CDSNotaPedidoDetAfterDelete
    OnCalcFields = CDSNotaPedidoDetCalcFields
    OnNewRecord = CDSNotaPedidoDetNewRecord
    Left = 142
    Top = 118
    object CDSNotaPedidoDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSNotaPedidoDetID_CABNP: TIntegerField
      FieldName = 'ID_CABNP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSNotaPedidoDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSNotaPedidoDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSNotaPedidoDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSNotaPedidoDetRENGLON: TFloatField
      FieldName = 'RENGLON'
    end
    object CDSNotaPedidoDetFECHAPEDIOD: TSQLTimeStampField
      FieldName = 'FECHAPEDIOD'
    end
    object CDSNotaPedidoDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      OnGetText = CDSNotaPedidoDetCODIGOARTICULOGetText
      OnSetText = CDSNotaPedidoDetCODIGOARTICULOSetText
      Size = 8
    end
    object CDSNotaPedidoDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSNotaPedidoDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object CDSNotaPedidoDetCANTIDAD_PEDIDIA: TFloatField
      FieldName = 'CANTIDAD_PEDIDIA'
      OnSetText = CDSNotaPedidoDetCANTIDAD_PEDIDIASetText
    end
    object CDSNotaPedidoDetCANTIDAD_ENTREGADA: TFloatField
      FieldName = 'CANTIDAD_ENTREGADA'
      OnSetText = CDSNotaPedidoDetCANTIDAD_ENTREGADASetText
    end
    object CDSNotaPedidoDetCANTIDAD_FALTANTE: TFloatField
      FieldName = 'CANTIDAD_FALTANTE'
    end
    object CDSNotaPedidoDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Size = 1
    end
    object CDSNotaPedidoDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
    end
    object CDSNotaPedidoDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
    end
    object CDSNotaPedidoDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
    end
    object CDSNotaPedidoDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
    end
    object CDSNotaPedidoDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
    end
    object CDSNotaPedidoDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object CDSNotaPedidoDetTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object CDSNotaPedidoDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object CDSNotaPedidoDetMARGEN: TFloatField
      FieldName = 'MARGEN'
    end
    object CDSNotaPedidoDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Size = 1
    end
    object CDSNotaPedidoDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object CDSNotaPedidoDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object CDSNotaPedidoDetNRO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'NRO'
    end
    object CDSNotaPedidoDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
    end
    object CDSNotaPedidoDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object CDSNotaPedidoDetIVA_TOTAL: TFloatField
      FieldName = 'IVA_TOTAL'
      Required = True
    end
    object CDSNotaPedidoDetTOTAL_GRAVADO: TFloatField
      FieldName = 'TOTAL_GRAVADO'
      Required = True
    end
    object CDSNotaPedidoDetTOTAL_EXENTO: TFloatField
      FieldName = 'TOTAL_EXENTO'
      Required = True
    end
    object CDSNotaPedidoDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
    end
    object CDSNotaPedidoDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
    end
    object CDSNotaPedidoDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
    end
    object CDSNotaPedidoDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
    end
    object CDSNotaPedidoDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
    end
    object CDSNotaPedidoDetIVA_UNITARIO: TFloatField
      FieldName = 'IVA_UNITARIO'
      Required = True
    end
    object CDSNotaPedidoDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      OnGetText = CDSNotaPedidoDetUNITARIO_TOTALGetText
      OnSetText = CDSNotaPedidoDetUNITARIO_TOTALSetText
      DisplayFormat = '$ ,0.00'
      EditFormat = '$ ,0.00'
    end
    object CDSNotaPedidoDetMUESTRASIGNO: TStringField
      Alignment = taCenter
      FieldName = 'MUESTRASIGNO'
      ProviderFlags = []
      Size = 5
    end
    object CDSNotaPedidoDetMUESTRACODALTERNATIVO: TStringField
      FieldName = 'MUESTRACODALTERNATIVO'
      ProviderFlags = []
    end
    object CDSNotaPedidoDetCANTIDAD_UNIDADES: TFloatField
      FieldName = 'CANTIDAD_UNIDADES'
      Required = True
    end
    object CDSNotaPedidoDetPRESENTACION_CANTI: TFloatField
      FieldName = 'PRESENTACION_CANTI'
      Required = True
    end
  end
  object DSPInscripcion: TDataSetProvider
    DataSet = DMMain_FD.QInscripcion
    Options = [poAllowCommandText]
    Left = 32
    Top = 348
  end
  object DSPLdr: TDataSetProvider
    DataSet = DMMain_FD.QLDR
    Options = [poAllowCommandText]
    Left = 32
    Top = 489
  end
  object DSPDeposito: TDataSetProvider
    DataSet = DMMain_FD.QDeposito
    Options = []
    Left = 632
    Top = 6
  end
  object DSPIva: TDataSetProvider
    DataSet = DMMain_FD.QIva
    Options = [poAllowCommandText]
    Left = 32
    Top = 247
  end
  object DSPNotaPedidoImp: TDataSetProvider
    DataSet = DMMain_FD.QNotaPedidoImp
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 151
  end
  object CDSNotaPedidoImp: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPNotaPedidoImp'
    OnNewRecord = CDSNotaPedidoImpNewRecord
    Left = 134
    Top = 151
    object CDSNotaPedidoImpID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSNotaPedidoImpID_NPCAB: TIntegerField
      FieldName = 'ID_NPCAB'
    end
    object CDSNotaPedidoImpCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
    end
    object CDSNotaPedidoImpDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSNotaPedidoImpNETO: TFloatField
      FieldName = 'NETO'
    end
    object CDSNotaPedidoImpTASA: TFloatField
      FieldName = 'TASA'
    end
    object CDSNotaPedidoImpIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMMain_FD.QSucursal
    Options = [poAllowCommandText]
    Left = 32
    Top = 197
  end
  object IBGNP_Cab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_NPEDIDOCAB_CLIENTE'
    SystemGenerators = False
    Left = 224
    Top = 48
  end
  object IBGNP_Det: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_NPEDIDODET_CLIENTE'
    SystemGenerators = False
    Left = 296
    Top = 96
  end
  object IBGImpuesto: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_NPEDIDOIMP_CLIENTE'
    SystemGenerators = False
    Left = 304
    Top = 152
  end
  object DSNotaPedidoDet: TDataSource
    DataSet = CDSNotaPedidoDet
    Left = 224
    Top = 104
  end
  object DSNotaPedidoImp: TDataSource
    DataSet = CDSNotaPedidoImp
    Left = 224
    Top = 152
  end
  object CDSNPCabXML: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 400
    Top = 544
  end
  object CDSNPDetXML: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 544
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
    Left = 712
    Top = 8
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
  object CDSBuscaDeposito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaDeposito'
    Left = 134
    Top = 392
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
    Options = [poAllowCommandText]
    Left = 32
    Top = 392
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
    Left = 632
    Top = 528
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
    end
    object CDSExistenciaCOMPROMETIDO: TFloatField
      FieldName = 'COMPROMETIDO'
    end
    object CDSExistenciaSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object CDSExistenciaDEPOSITO_STK: TIntegerField
      FieldName = 'DEPOSITO_STK'
    end
    object CDSExistenciaEN_TRANSITO: TFloatField
      FieldName = 'EN_TRANSITO'
    end
    object CDSExistenciaDEPOSITO_NOMBRE: TStringField
      FieldName = 'DEPOSITO_NOMBRE'
      Size = 25
    end
  end
  object DSPExistencia: TDataSetProvider
    DataSet = DMMain_FD.QExistencia
    Options = []
    Left = 696
    Top = 528
  end
  object DSExistencia: TDataSource
    DataSet = CDSExistencia
    Left = 560
    Top = 528
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = [poAllowCommandText]
    Left = 32
    Top = 439
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 134
    Top = 439
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
    Left = 632
    Top = 152
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
    Left = 712
    Top = 152
    object CDSPersonalNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 30
    end
    object CDSPersonalCOMISION: TFloatField
      FieldName = 'COMISION'
      Origin = 'COMISION'
      Required = True
    end
  end
  object DSPBuscaVendedor: TDataSetProvider
    DataSet = DMBuscadores.QBuscaVendedores
    Options = [poAllowCommandText]
    Left = 32
    Top = 297
  end
  object CDSBuscaVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaVendedor'
    Left = 134
    Top = 297
    object CDSBuscaVendedorCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSBuscaVendedorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSBuscaVendedorCOMISION: TFloatField
      FieldName = 'COMISION'
      Required = True
    end
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
    Left = 136
    Top = 536
    object CDSBuscaLdrCODIGO_CLIENTE: TStringField
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
      Size = 8
    end
  end
  object DSPBuscaLdr: TDataSetProvider
    DataSet = DMBuscadores.QBuscaLdr
    Options = [poAllowCommandText]
    Left = 32
    Top = 536
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
    Left = 712
    Top = 56
    object CDSBuscaCondVentaCODIGOPAGO: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGOPAGO'
      Required = True
    end
    object CDSBuscaCondVentaDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 20
      FieldName = 'DETALLE'
      Required = True
    end
    object CDSBuscaCondVentaCODIGOCLIENTE: TStringField
      FieldName = 'CODIGOCLIENTE'
      Required = True
      Size = 6
    end
    object CDSBuscaCondVentaDIAS: TIntegerField
      FieldName = 'DIAS'
    end
  end
  object DSPBuscaCondVenta: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCondVentaCliente
    Options = []
    Left = 632
    Top = 56
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
    Left = 712
    Top = 104
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
  object DSPCondVenta: TDataSetProvider
    DataSet = DMMain_FD.QCondVenta
    Options = []
    Left = 632
    Top = 104
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
    Left = 134
    Top = 8
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
  end
  object DSPClientes: TDataSetProvider
    DataSet = DMMain_FD.QClientes
    Options = [poAllowCommandText]
    Left = 32
    Top = 8
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
    Left = 134
    Top = 199
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
  object QPrimerLdr: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select min(Codigo_Ldr) From LdrCliente Where Codigo_Cliente=:Cod' +
        'igo')
    Left = 544
    Top = 8
    ParamData = <
      item
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QPrimerConVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select Min(codigopago) from condventa where codigocliente=:codig' +
        'o')
    Left = 368
    Top = 56
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
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
    Left = 134
    Top = 248
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
    object CDSIvaCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Required = True
    end
  end
  object QCondVentaDefecto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select Min(codigopago) from condventa where codigocliente=:codig' +
        'o and'
      'por_defecto='#39'S'#39)
    Left = 368
    Top = 8
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
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
    Left = 134
    Top = 345
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
    Left = 134
    Top = 493
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
  object QTraerRecargoDeLista: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      ' select la.recargo from listaprecioespecialart la'
      '  where la.codigoarticulo=:articulo and la.id_cab=:lista')
    Left = 448
    Top = 56
    ParamData = <
      item
        Name = 'articulo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'lista'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTraerRecargoDeListaRECARGO: TFloatField
      FieldName = 'RECARGO'
    end
  end
  object QPrecioEspecial: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select preciopactado from precioespecialdet '
      'where codigoarticulo=:articulo and '
      'codigocliente=:cliente')
    Left = 544
    Top = 56
    ParamData = <
      item
        Name = 'articulo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'cliente'
        DataType = ftString
        ParamType = ptInput
      end>
    object QPrecioEspecialPRECIOPACTADO: TFloatField
      FieldName = 'PRECIOPACTADO'
    end
  end
  object DSPListaPrecios: TDataSetProvider
    DataSet = DMBuscadores.QBuscaListaPrecios
    Left = 272
    Top = 224
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
    Left = 352
    Top = 224
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
  object DSListaPrecios: TDataSource
    DataSet = CDSListaPrecios
    Left = 432
    Top = 224
  end
  object QBuscaListaPrecio: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select id from  listaprecioespecialcab where id=:id')
    Left = 368
    Top = 104
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QBuscaListaPrecioID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
    end
  end
  object QDepositoStk: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from DepositoStk  where'
      '(Codigo_Deposito=:codigo_deposito) AND (Codigo_stk=:Codigo)')
    Left = 448
    Top = 104
    ParamData = <
      item
        Name = 'codigo_deposito'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end>
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
    object QDepositoStkSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object QDepositoStkINICIAL: TFloatField
      FieldName = 'INICIAL'
    end
    object QDepositoStkMINIMO: TFloatField
      FieldName = 'MINIMO'
    end
    object QDepositoStkMEDIO: TFloatField
      FieldName = 'MEDIO'
    end
    object QDepositoStkFISICO: TFloatField
      FieldName = 'FISICO'
    end
    object QDepositoStkRECARGO: TFloatField
      FieldName = 'RECARGO'
      Required = True
    end
    object QDepositoStkFUAPRECIOS: TSQLTimeStampField
      FieldName = 'FUAPRECIOS'
    end
  end
  object QBuscaPedidoFC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select f.tipocpbte,f.clasecpbte,f.nrocpbte,f.fechavta from fcvta' +
        'cab f'
      'where f.notapedido_id=:id_pedido')
    Left = 592
    Top = 360
    ParamData = <
      item
        Name = 'id_pedido'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QBuscaPedidoFCTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QBuscaPedidoFCCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QBuscaPedidoFCNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QBuscaPedidoFCFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Required = True
    end
  end
  object QBuscaPedidoRT: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select r.tipocpbte,r.clasecpbte,r.nrocpbte,r.fechavta from rtoca' +
        'b r'
      'where r.notapedido_id=:id_pedido')
    Left = 592
    Top = 416
    ParamData = <
      item
        Name = 'id_pedido'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QBuscaPedidoRTTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QBuscaPedidoRTCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QBuscaPedidoRTNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QBuscaPedidoRTFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
    end
  end
  object QBuscaPedidoNP: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select r.tipocpbte,r.clasecpbte,r.nrocpbte,r.fechavta from rtoca' +
        'b r'
      'where r.notapedido_id=:id_pedido')
    Left = 592
    Top = 312
    ParamData = <
      item
        Name = 'id_pedido'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QBuscaPedidoNPTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QBuscaPedidoNPCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QBuscaPedidoNPNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QBuscaPedidoNPFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
    end
  end
  object QComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      'id_comprobante=:id '
      'and tipo_comprob='#39'PC'#39
      'and compra_venta='#39'V'#39' '
      'and sucursal=:suc')
    Left = 336
    Top = 392
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
  object spMarcarNP: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'MARCAR_NOTAPEDIDO_CLIENTE'
    Left = 432
    Top = 392
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end>
  end
  object spAnular: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ANULAR_NOTAPEDIDO_CLIENTE'
    Left = 440
    Top = 456
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end>
  end
  object DSPStock: TDataSetProvider
    DataSet = DMMain_FD.QStock
    Options = []
    Left = 632
    Top = 198
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
    Left = 712
    Top = 200
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
  object QStockPrecio: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from PRECIO_VENTA(:codigo,:lista,:deposito,:sucursal)')
    Left = 536
    Top = 200
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'lista'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'deposito'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QStockPrecioCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
    end
    object QStockPrecioPRECIO: TFloatField
      FieldName = 'PRECIO'
    end
    object QStockPrecioCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
    end
    object QStockPrecioCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
    end
  end
  object QMonedas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from monedas where id=:id')
    Left = 544
    Top = 104
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
  object QCoefPrecio: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(coeficiente)  from coeficientes_precios'
      'where codigo= :codigo and '
      '(id_lista_precio= :id_lista or :id_lista = -1 )'
      'and por_defecto = '#39'S'#39)
    Left = 592
    Top = 264
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'id_lista'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id_lista'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCoefPrecioMAX: TFloatField
      FieldName = 'MAX'
    end
  end
  object spDesmarcarNP: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'DESMARCAR_NPEDIDO_CLIENTE'
    Left = 440
    Top = 504
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'ESTADO'
        DataType = ftFixedChar
        Precision = 1
        ParamType = ptInput
      end>
  end
  object spVerificaHuerfanas: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'VERIFICA_NP_HUERFANAS'
    Left = 536
    Top = 464
  end
end
