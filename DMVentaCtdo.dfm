object DatosVentasCtdo: TDatosVentasCtdo
  OnCreate = DataModuleDestroy
  OnDestroy = DataModuleDestroy
  Height = 720
  Width = 1125
  object DSPImpuestos: TDataSetProvider
    DataSet = DMMain_FD.QImpuestosVta
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 20
    Top = 111
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMMain_FD.QSucursal
    Options = []
    Left = 20
    Top = 314
  end
  object DSPVentaDet: TDataSetProvider
    DataSet = DMMain_FD.QVentaDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 20
    Top = 60
  end
  object DSPVentaCab: TDataSetProvider
    DataSet = DMMain_FD.QVentaCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 20
    Top = 10
  end
  object DSPDeposito: TDataSetProvider
    DataSet = DMMain_FD.QDeposito
    Options = []
    Left = 20
    Top = 263
  end
  object DSPIva: TDataSetProvider
    DataSet = DMMain_FD.QIva
    Options = []
    Left = 338
    Top = 114
  end
  object DSPInscripcion: TDataSetProvider
    DataSet = DMMain_FD.QInscripcion
    Options = []
    Left = 338
    Top = 68
  end
  object DSPStock: TDataSetProvider
    DataSet = DMMain_FD.QStock
    Options = []
    Left = 20
    Top = 212
  end
  object DSPLdr: TDataSetProvider
    DataSet = DMMain_FD.QLDR
    Options = []
    Left = 338
    Top = 22
  end
  object IBGFc_Cab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FC_VENTA_CAB'
    SystemGenerators = False
    Left = 256
    Top = 104
  end
  object IBGFc_Det: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FC_VENTA_DET'
    SystemGenerators = False
    Left = 256
    Top = 56
  end
  object IBGFc_Impuestos: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FC_VENTA_IMPUESTO'
    SystemGenerators = False
    Left = 256
    Top = 8
  end
  object DSPVtaSubDet: TDataSetProvider
    DataSet = DMMain_FD.QVtaSubDetalle
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 20
    Top = 162
  end
  object CDSVtaSubDetalle: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_DETFAC'
    MasterFields = 'Id'
    MasterSource = DSVentaDet
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPVtaSubDet'
    BeforeInsert = CDSVtaSubDetalleBeforeInsert
    BeforeEdit = CDSVtaSubDetalleBeforeEdit
    BeforePost = CDSVtaSubDetalleBeforePost
    AfterPost = CDSVtaSubDetalleAfterPost
    BeforeDelete = CDSVtaSubDetalleBeforeDelete
    OnNewRecord = CDSVtaSubDetalleNewRecord
    Left = 96
    Top = 163
    object CDSVtaSubDetalleID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSVtaSubDetalleID_DETFAC: TIntegerField
      FieldName = 'ID_DETFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSVtaSubDetalleID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSVtaSubDetalleTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSVtaSubDetalleCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSVtaSubDetalleNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSVtaSubDetalleCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSVtaSubDetalleSERIE: TStringField
      FieldName = 'SERIE'
      OnSetText = CDSVtaSubDetalleSERIESetText
      Size = 50
    end
    object CDSVtaSubDetalleDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object CDSVtaSubDetalleHACERINGRESO: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'HACERINGRESO'
    end
    object CDSVtaSubDetalleTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object CDSVtaSubDetalleFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
  end
  object DSVtaSubDetalle: TDataSource
    DataSet = CDSVtaSubDetalle
    Left = 176
    Top = 160
  end
  object IBGFcVtaSubDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FCVTASUBDETALLE'
    SystemGenerators = False
    Left = 256
    Top = 152
  end
  object CDSDetalleXML: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 936
    Top = 336
  end
  object CDSFcVtaCabXML: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 840
    Top = 336
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
    Left = 96
    Top = 262
    object CDSDepositoId: TIntegerField
      DisplayWidth = 10
      FieldName = 'Id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSDepositoNombre: TStringField
      DisplayWidth = 25
      FieldName = 'Nombre'
      Size = 25
    end
    object CDSDepositoSucursal: TIntegerField
      DisplayWidth = 10
      FieldName = 'Sucursal'
    end
  end
  object DSVentaDet: TDataSource
    DataSet = CDSVentaDet
    Left = 176
    Top = 61
  end
  object DSImpuestos: TDataSource
    DataSet = CDSImpuestos
    Left = 176
    Top = 112
  end
  object DSExistencia: TDataSource
    DataSet = CDSExistencia
    Left = 864
    Top = 272
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
    Left = 792
    Top = 272
    object CDSExistenciaCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Size = 8
    end
    object CDSExistenciaDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSExistenciaFISICO: TFloatField
      FieldName = 'FISICO'
      Origin = 'FISICO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSExistenciaCOMPROMETIDO: TFloatField
      FieldName = 'COMPROMETIDO'
      Origin = 'COMPROMETIDO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSExistenciaSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSExistenciaDEPOSITO_STK: TIntegerField
      FieldName = 'DEPOSITO_STK'
      Origin = 'DEPOSITO_STK'
    end
    object CDSExistenciaEN_TRANSITO: TFloatField
      FieldName = 'EN_TRANSITO'
      Origin = 'EN_TRANSITO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSExistenciaDEPOSITO_NOMBRE: TStringField
      FieldName = 'DEPOSITO_NOMBRE'
      Origin = 'DEPOSITO_NOMBRE'
      Size = 25
    end
    object CDSExistenciaFULTAJUSTE: TSQLTimeStampField
      FieldName = 'FULTAJUSTE'
      Origin = 'FULTAJUSTE'
    end
    object CDSExistenciaSEC: TStringField
      DisplayLabel = 'Sec'
      FieldName = 'SEC'
      Origin = 'SEC'
      Size = 2
    end
    object CDSExistenciaUBIC: TStringField
      DisplayLabel = 'Ubic.'
      FieldName = 'UBIC'
      Origin = 'UBIC'
      Size = 3
    end
  end
  object DSPExistencia: TDataSetProvider
    DataSet = DMMain_FD.QExistencia
    Options = []
    Left = 720
    Top = 272
  end
  object CDSVentaCab: TClientDataSet
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
    ProviderName = 'DSPVentaCab'
    AfterEdit = CDSVentaCabAfterEdit
    BeforePost = CDSVentaCabBeforePost
    OnNewRecord = CDSVentaCabNewRecord
    Left = 96
    Top = 16
    object CDSVentaCabID_FC: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSVentaCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSVentaCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSVentaCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      OnSetText = CDSVentaCabCODIGOSetText
      Size = 6
    end
    object CDSVentaCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSVentaCabLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabSUCFAC: TStringField
      FieldName = 'SUCFAC'
      OnSetText = CDSVentaCabSUCFACSetText
      Size = 4
    end
    object CDSVentaCabNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      OnSetText = CDSVentaCabNUMEROFACSetText
      Size = 8
    end
    object CDSVentaCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSVentaCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSVentaCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSVentaCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSVentaCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSVentaCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Required = True
    end
    object CDSVentaCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSVentaCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
      OnChange = CDSVentaCabLISTAPRECIOChange
    end
    object CDSVentaCabFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Required = True
      OnSetText = CDSVentaCabFECHAVTASetText
    end
    object CDSVentaCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object CDSVentaCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
      Required = True
    end
    object CDSVentaCabANULADO: TStringField
      FieldName = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabNRORTO: TStringField
      DisplayWidth = 100
      FieldName = 'NRORTO'
      Size = 100
    end
    object CDSVentaCabN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
    end
    object CDSVentaCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      Required = True
      OnGetText = CDSVentaCabNETOGRAV1GetText
    end
    object CDSVentaCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      Required = True
      OnGetText = CDSVentaCabNETOGRAV2GetText
    end
    object CDSVentaCabDSTO: TFloatField
      FieldName = 'DSTO'
      Required = True
      OnSetText = CDSVentaCabDSTOSetText
    end
    object CDSVentaCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      Required = True
      OnGetText = CDSVentaCabDSTOIMPORTEGetText
      OnSetText = CDSVentaCabDSTOIMPORTESetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSVentaCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      Required = True
    end
    object CDSVentaCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      Required = True
    end
    object CDSVentaCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      Required = True
    end
    object CDSVentaCabDEBE: TFloatField
      FieldName = 'DEBE'
      Required = True
    end
    object CDSVentaCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object CDSVentaCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object CDSVentaCabCPTE_MANUAL: TStringField
      FieldName = 'CPTE_MANUAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
      OnSetText = CDSVentaCabSUCURSALSetText
    end
    object CDSVentaCabFACTURANRO: TStringField
      FieldName = 'FACTURANRO'
      Size = 13
    end
    object CDSVentaCabZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object CDSVentaCabLDR: TIntegerField
      FieldName = 'LDR'
      Required = True
      OnSetText = CDSVentaCabLDRSetText
    end
    object CDSVentaCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
      OnSetText = CDSVentaCabDEPOSITOSetText
    end
    object CDSVentaCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabNROENTREGA: TIntegerField
      FieldName = 'NROENTREGA'
    end
    object CDSVentaCabINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabTIPO_REMITO: TStringField
      FieldName = 'TIPO_REMITO'
      FixedChar = True
      Size = 2
    end
    object CDSVentaCabIDREMITO: TIntegerField
      FieldName = 'IDREMITO'
    end
    object CDSVentaCabREDUCIDA: TStringField
      FieldName = 'REDUCIDA'
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabCOMSIONVENDEDOR: TFloatField
      FieldName = 'COMSIONVENDEDOR'
      Required = True
    end
    object CDSVentaCabLIQUIDADA: TStringField
      FieldName = 'LIQUIDADA'
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabFECHA_LIQUIDACION: TSQLTimeStampField
      FieldName = 'FECHA_LIQUIDACION'
    end
    object CDSVentaCabVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      OnSetText = CDSVentaCabVENDEDORSetText
      Size = 6
    end
    object CDSVentaCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSVentaCabNC_CONTADO: TStringField
      FieldName = 'NC_CONTADO'
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabCAJA_POR_DEFECTO: TIntegerField
      FieldName = 'CAJA_POR_DEFECTO'
    end
    object CDSVentaCabNRO_Z: TIntegerField
      FieldName = 'NRO_Z'
    end
    object CDSVentaCabVALORES_RECIBIDOS: TFloatField
      FieldName = 'VALORES_RECIBIDOS'
      Required = True
    end
    object CDSVentaCabPERCEPCION_IB_TASA: TFloatField
      FieldName = 'PERCEPCION_IB_TASA'
      Required = True
    end
    object CDSVentaCabPERCEPCION_IB_IMPORTE: TFloatField
      FieldName = 'PERCEPCION_IB_IMPORTE'
      Required = True
    end
    object CDSVentaCabPERCIBE_IB: TStringField
      FieldName = 'PERCIBE_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField
      FieldName = 'PERCEPCION_IB_BASEIMPONIBLE'
      Required = True
    end
    object CDSVentaCabRENGLONES: TSmallintField
      FieldName = 'RENGLONES'
      Required = True
    end
    object CDSVentaCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object CDSVentaCabNOTAPEDIDO_ID: TIntegerField
      FieldName = 'NOTAPEDIDO_ID'
    end
    object CDSVentaCabNOTAPEDIDO_NROCPBTE: TStringField
      FieldName = 'NOTAPEDIDO_NROCPBTE'
      Size = 13
    end
    object CDSVentaCabID_FC_CLON: TIntegerField
      FieldName = 'ID_FC_CLON'
    end
    object CDSVentaCabPRESUPUESTO_ID: TIntegerField
      FieldName = 'PRESUPUESTO_ID'
    end
    object CDSVentaCabPRESUPUESTO_NROCPBTE: TStringField
      FieldName = 'PRESUPUESTO_NROCPBTE'
      Size = 13
    end
    object CDSVentaCabMONEDA_CPBTE: TIntegerField
      FieldName = 'MONEDA_CPBTE'
    end
    object CDSVentaCabMONEDA_CPBTE_COTIZACION: TFloatField
      FieldName = 'MONEDA_CPBTE_COTIZACION'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object CDSVentaCabPOR_CTA_Y_ORDEN: TStringField
      FieldName = 'POR_CTA_Y_ORDEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      OnSetText = CDSVentaCabPROVEEDORSetText
      Size = 6
    end
    object CDSVentaCabMUESTRACONDVENTA: TStringField
      FieldName = 'MUESTRACONDVENTA'
      ProviderFlags = []
    end
    object CDSVentaCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
      OnSetText = CDSVentaCabID_TIPOCOMPROBANTESetText
    end
    object CDSVentaCabMUESTRADEPOSITO: TStringField
      DisplayWidth = 25
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
    object CDSVentaCabMUESTRASUCURSAL: TStringField
      DisplayWidth = 35
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSVentaCabMUESTRALDR: TStringField
      DisplayWidth = 35
      FieldName = 'MUESTRALDR'
      ProviderFlags = []
      Size = 35
    end
    object CDSVentaCabMUESTRAIVA: TStringField
      DisplayWidth = 15
      FieldName = 'MUESTRAIVA'
      ProviderFlags = []
      Size = 15
    end
    object CDSVentaCabMUESTRACOMPROBANTE: TStringField
      DisplayWidth = 15
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object CDSVentaCabMUESTRAVENDEDOR: TStringField
      DisplayWidth = 35
      FieldName = 'MUESTRAVENDEDOR'
      ProviderFlags = []
      Size = 35
    end
    object CDSVentaCabMUESTRADIRECCIONLDR: TStringField
      DisplayWidth = 35
      FieldName = 'MUESTRADIRECCIONLDR'
      ProviderFlags = []
      Size = 35
    end
    object CDSVentaCabMUESTRAPROVEEDOR: TStringField
      FieldName = 'MUESTRAPROVEEDOR'
      ProviderFlags = []
      Size = 35
    end
    object CDSVentaCabTIPO_VTA: TStringField
      FieldName = 'TIPO_VTA'
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
    end
    object CDSVentaCabJURIDICION_LOCALIDAD: TIntegerField
      FieldName = 'JURIDICION_LOCALIDAD'
    end
    object CDSVentaCabCON_GTIA_EXTENDIDA: TStringField
      FieldName = 'CON_GTIA_EXTENDIDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabID_RECEPCION_GTIA: TIntegerField
      FieldName = 'ID_RECEPCION_GTIA'
    end
    object CDSVentaCabMESES_DE_GARANTIA: TIntegerField
      FieldName = 'MESES_DE_GARANTIA'
      Required = True
    end
    object CDSVentaCabPOLIZA: TStringField
      FieldName = 'POLIZA'
    end
    object CDSVentaCabVALOR_ASEGURADO: TFloatField
      FieldName = 'VALOR_ASEGURADO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSVentaCabMUESTRAMONEDACPBTE: TStringField
      FieldName = 'MUESTRAMONEDACPBTE'
      ProviderFlags = []
      Size = 15
    end
    object CDSVentaCabMUESTRASIGNOMONEDACPBTE: TStringField
      FieldName = 'MUESTRASIGNOMONEDACPBTE'
      ProviderFlags = []
      Size = 5
    end
    object CDSVentaCabID_NOTA_CAMBIO: TIntegerField
      FieldName = 'ID_NOTA_CAMBIO'
    end
    object CDSVentaCabNUMERO_OPERACION: TStringField
      FieldName = 'NUMERO_OPERACION'
      Size = 8
    end
    object CDSVentaCabMUESTRAESFRANQUICIA: TStringField
      FieldName = 'MUESTRAESFRANQUICIA'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabCAE: TStringField
      FieldName = 'CAE'
      Required = True
      Size = 50
    end
    object CDSVentaCabCAE_VENCIMIENTO: TSQLTimeStampField
      FieldName = 'CAE_VENCIMIENTO'
    end
    object CDSVentaCabFACTURA_ELECTRONICA: TStringField
      FieldName = 'FACTURA_ELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabABONO_PERIODO: TStringField
      FieldName = 'ABONO_PERIODO'
      Size = 6
    end
    object CDSVentaCabCANT_BULTOS: TIntegerField
      FieldName = 'CANT_BULTOS'
      Required = True
    end
    object CDSVentaCabCUOTAS_CC: TIntegerField
      FieldName = 'CUOTAS_CC'
      Required = True
    end
    object CDSVentaCabINTERVALO_CUOTA: TIntegerField
      FieldName = 'INTERVALO_CUOTA'
      Required = True
    end
    object CDSVentaCabMUESTRACODIGOAFIP: TStringField
      FieldName = 'MUESTRACODIGOAFIP'
      ProviderFlags = []
      Size = 3
    end
    object CDSVentaCabPAGO_A_CTA: TFloatField
      FieldName = 'PAGO_A_CTA'
      Required = True
    end
    object CDSVentaCabID_FC_CON_ADEL: TIntegerField
      FieldName = 'ID_FC_CON_ADEL'
      Required = True
    end
    object CDSVentaCabMUESTRAOBSCLIENTE1: TStringField
      FieldName = 'MUESTRAOBSCLIENTE1'
      ProviderFlags = []
      Size = 60
    end
    object CDSVentaCabMUESTRAOBSCLIENTE2: TStringField
      FieldName = 'MUESTRAOBSCLIENTE2'
      ProviderFlags = []
      Size = 60
    end
    object CDSVentaCabMUESTRAACOPIO: TIntegerField
      FieldName = 'MUESTRAACOPIO'
      ProviderFlags = []
    end
    object CDSVentaCabCENTRO_COSTO: TIntegerField
      FieldName = 'CENTRO_COSTO'
    end
    object CDSVentaCabID_PEDIDO_MORPHI: TIntegerField
      FieldName = 'ID_PEDIDO_MORPHI'
    end
    object CDSVentaCabMUESTRANOMBRECOMPLETO: TStringField
      FieldName = 'MUESTRANOMBRECOMPLETO'
      ProviderFlags = []
      Size = 100
    end
    object CDSVentaCabSALDO_ACTUAL_CC: TFloatField
      FieldName = 'SALDO_ACTUAL_CC'
    end
    object CDSVentaCabMUESTRAZONA: TStringField
      FieldName = 'MUESTRAZONA'
      ProviderFlags = []
      Size = 25
    end
    object CDSVentaCabNETONOGRAV1: TFloatField
      FieldName = 'NETONOGRAV1'
      Required = True
    end
    object CDSVentaCabNETONOGRAV2: TFloatField
      FieldName = 'NETONOGRAV2'
      Required = True
    end
    object CDSVentaCabFECHA_FISCAL: TSQLTimeStampField
      FieldName = 'FECHA_FISCAL'
    end
    object CDSVentaCabNRO_INTERNO: TStringField
      FieldName = 'NRO_INTERNO'
    end
    object CDSVentaCabFOB_TOTAL: TFloatField
      FieldName = 'FOB_TOTAL'
      Required = True
    end
    object CDSVentaCabNOTAS: TStringField
      FieldName = 'NOTAS'
      Size = 300
    end
    object CDSVentaCabMUESTRAUSACHE: TStringField
      FieldName = 'MUESTRAUSACHE'
      ProviderFlags = []
      OnChange = CDSVentaCabMUESTRAUSACHEChange
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabCBU: TStringField
      FieldName = 'CBU'
      Size = 22
    end
    object CDSVentaCabASOCIADO_TIPO: TIntegerField
      FieldName = 'ASOCIADO_TIPO'
    end
    object CDSVentaCabASOCIADO_PTOVTA: TIntegerField
      FieldName = 'ASOCIADO_PTOVTA'
    end
    object CDSVentaCabASOCIADO_NRO: TFloatField
      FieldName = 'ASOCIADO_NRO'
      Required = True
    end
    object CDSVentaCabASOCIADO_CPTEFCH: TStringField
      FieldName = 'ASOCIADO_CPTEFCH'
      Size = 8
    end
    object CDSVentaCabINF_X: TStringField
      FieldName = 'INF_X'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabVUELTO: TFloatField
      FieldName = 'VUELTO'
      Required = True
    end
    object CDSVentaCabHONORARIOS: TFloatField
      FieldName = 'HONORARIOS'
      Required = True
    end
    object CDSVentaCabHONORARIOS_PROCENTAJ: TFloatField
      FieldName = 'HONORARIOS_PROCENTAJ'
      Required = True
    end
    object CDSVentaCabCON_CAEA: TStringField
      FieldName = 'CON_CAEA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabCAEA_INFORMADO: TStringField
      FieldName = 'CAEA_INFORMADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabASOCIADO_ID_CPBTE: TIntegerField
      FieldName = 'ASOCIADO_ID_CPBTE'
      Required = True
    end
    object CDSVentaCabFACTURA_DE_ANTICIPO: TStringField
      FieldName = 'FACTURA_DE_ANTICIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabMUESTRANRONC: TStringField
      FieldName = 'MUESTRANRONC'
      ProviderFlags = []
      Size = 13
    end
    object CDSVentaCabMUESTRATIPONC: TStringField
      FieldName = 'MUESTRATIPONC'
      ProviderFlags = []
      Size = 2
    end
    object CDSVentaCabMUESTRACLASENC: TStringField
      FieldName = 'MUESTRACLASENC'
      ProviderFlags = []
      Size = 2
    end
    object CDSVentaCabMUESTRAID_NC: TIntegerField
      FieldName = 'MUESTRAID_NC'
      ProviderFlags = []
    end
    object CDSVentaCabQRIMAGE: TBlobField
      FieldName = 'QRIMAGE'
      Size = 1
    end
    object CDSVentaCabCONDICIONPEDIDO: TIntegerField
      FieldName = 'CONDICIONPEDIDO'
      Required = True
    end
    object CDSVentaCabCODIGO_ACTIVIDAD: TStringField
      FieldName = 'CODIGO_ACTIVIDAD'
      Required = True
      Size = 10
    end
    object CDSVentaCabPERCIBE_IVA: TStringField
      FieldName = 'PERCIBE_IVA'
      OnChange = CDSVentaCabPERCIBE_IVAChange
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabMINIMO_PERCI_IVA: TFloatField
      FieldName = 'MINIMO_PERCI_IVA'
    end
    object CDSVentaCabMUESTRANOMBREUSUARIOREAL: TStringField
      FieldName = 'MUESTRANOMBREUSUARIOREAL'
      ProviderFlags = []
      Size = 40
    end
    object CDSVentaCabID_GARANTE: TIntegerField
      FieldName = 'ID_GARANTE'
    end
    object CDSVentaCabPRIMER_VTO: TSQLTimeStampField
      FieldName = 'PRIMER_VTO'
    end
    object CDSVentaCabANTICIPO_VTO: TSQLTimeStampField
      FieldName = 'ANTICIPO_VTO'
    end
    object CDSVentaCabID_PAIS: TSmallintField
      FieldName = 'ID_PAIS'
    end
    object CDSVentaCabCUIT_PAIS: TStringField
      FieldName = 'CUIT_PAIS'
      Size = 13
    end
    object CDSVentaCabDOC_ADUANERO: TStringField
      FieldName = 'DOC_ADUANERO'
      Size = 15
    end
    object CDSVentaCabFECHA_CARGA: TSQLTimeStampField
      FieldName = 'FECHA_CARGA'
    end
    object CDSVentaCabDESTINO_DOCUMENTO: TStringField
      FieldName = 'DESTINO_DOCUMENTO'
      Size = 5
    end
    object CDSVentaCabPERMISO_EMBARQUE: TStringField
      FieldName = 'PERMISO_EMBARQUE'
      Size = 100
    end
    object CDSVentaCabINCOTERMS: TStringField
      FieldName = 'INCOTERMS'
      Size = 5
    end
    object CDSVentaCabTIPO_OPERACION_EXPO: TStringField
      FieldName = 'TIPO_OPERACION_EXPO'
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabMEDIO_TRANSPORTE_EXPO: TStringField
      FieldName = 'MEDIO_TRANSPORTE_EXPO'
    end
    object CDSVentaCabID_ADUANA: TIntegerField
      FieldName = 'ID_ADUANA'
    end
    object CDSVentaCabREFERENCIA_EXPO: TStringField
      FieldName = 'REFERENCIA_EXPO'
      Size = 30
    end
    object CDSVentaCabCAMBIO_EXPO: TFloatField
      FieldName = 'CAMBIO_EXPO'
    end
    object CDSVentaCabID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
    end
    object CDSVentaCabID_DESTINO: TIntegerField
      FieldName = 'ID_DESTINO'
    end
    object CDSVentaCabDEDUCE_GASTOS: TStringField
      FieldName = 'DEDUCE_GASTOS'
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabTRANSPORTE_UNIDAD: TIntegerField
      FieldName = 'TRANSPORTE_UNIDAD'
    end
    object CDSVentaCabTRANSPORTE_ADICIONAL: TIntegerField
      FieldName = 'TRANSPORTE_ADICIONAL'
    end
    object CDSVentaCabLOTEAFIP: TStringField
      FieldName = 'LOTEAFIP'
      Size = 8
    end
    object CDSVentaCabID_CHOFER: TIntegerField
      FieldName = 'ID_CHOFER'
    end
    object CDSVentaCabENVIAR_CPTE_MAIL: TStringField
      FieldName = 'ENVIAR_CPTE_MAIL'
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabKEY_PLANER: TStringField
      FieldName = 'KEY_PLANER'
      Size = 40
    end
    object CDSVentaCabMUESTRACOORPORATIVO: TStringField
      FieldName = 'MUESTRACOORPORATIVO'
      ProviderFlags = []
      Size = 6
    end
    object CDSVentaCabMUESTRAIDABONO: TIntegerField
      FieldName = 'MUESTRAIDABONO'
      ProviderFlags = []
    end
    object CDSVentaCabMUESTRANROABONO: TStringField
      FieldName = 'MUESTRANROABONO'
      ProviderFlags = []
      Size = 8
    end
    object CDSVentaCabMUESTRAAUXILIARTR: TStringField
      FieldName = 'MUESTRAAUXILIARTR'
      ProviderFlags = []
      Size = 25
    end
    object CDSVentaCabMUESTRALOCALITRANSPORTE: TStringField
      FieldName = 'MUESTRALOCALITRANSPORTE'
      ProviderFlags = []
      Size = 50
    end
    object CDSVentaCabMUESTRATRANSPORTE: TStringField
      FieldName = 'MUESTRATRANSPORTE'
      ProviderFlags = []
      Size = 50
    end
    object CDSVentaCabMUESTRA_UNI_TRANSPORTE: TStringField
      FieldName = 'MUESTRA_UNI_TRANSPORTE'
      ProviderFlags = []
      Size = 25
    end
    object CDSVentaCabMUESTRANRDOCCHOFER: TStringField
      FieldName = 'MUESTRANRDOCCHOFER'
      ProviderFlags = []
    end
    object CDSVentaCabMUESTRACHOFER: TStringField
      FieldName = 'MUESTRACHOFER'
      ProviderFlags = []
      Size = 45
    end
    object CDSVentaCabMUESTRATPDOCCHOFER: TStringField
      FieldName = 'MUESTRATPDOCCHOFER'
      ProviderFlags = []
      Size = 3
    end
    object CDSVentaCabMUESTRADOMINIOUNIDADTR: TStringField
      FieldName = 'MUESTRADOMINIOUNIDADTR'
      ProviderFlags = []
      Size = 12
    end
    object CDSVentaCabMUESTRATETRANSPORTE: TStringField
      FieldName = 'MUESTRATETRANSPORTE'
      ProviderFlags = []
      Size = 30
    end
    object CDSVentaCabMUESTRADIRTRANSPORTE: TStringField
      FieldName = 'MUESTRADIRTRANSPORTE'
      ProviderFlags = []
      Size = 50
    end
    object CDSVentaCabMUESTRANOMBRETRANSPORTE: TStringField
      FieldName = 'MUESTRANOMBRETRANSPORTE'
      ProviderFlags = []
      Size = 50
    end
    object CDSVentaCabMUESTRACONDIVATRANSPORTE: TStringField
      FieldName = 'MUESTRACONDIVATRANSPORTE'
      ProviderFlags = []
      Size = 15
    end
    object CDSVentaCabMUESTRACUITTRANSPORTE: TStringField
      FieldName = 'MUESTRACUITTRANSPORTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSVentaCabCOT: TStringField
      FieldName = 'COT'
      Size = 25
    end
    object CDSVentaCabMUESTRADIRECCION_CALLE: TStringField
      FieldName = 'MUESTRADIRECCION_CALLE'
      ProviderFlags = []
      Size = 40
    end
    object CDSVentaCabMUESTRADIRECCION_NRO: TStringField
      FieldName = 'MUESTRADIRECCION_NRO'
      ProviderFlags = []
      Size = 10
    end
    object CDSVentaCabMUESTRADIRECCION_PISO: TStringField
      FieldName = 'MUESTRADIRECCION_PISO'
      ProviderFlags = []
      Size = 10
    end
    object CDSVentaCabMUESTRADIRECCION_DEPTO: TStringField
      FieldName = 'MUESTRADIRECCION_DEPTO'
      ProviderFlags = []
      Size = 10
    end
    object CDSVentaCabLETRACOT: TStringField
      FieldName = 'LETRACOT'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabMUESTRAAPLICALEY15311: TStringField
      FieldName = 'MUESTRAAPLICALEY15311'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabID_OBRA: TIntegerField
      FieldName = 'ID_OBRA'
      Required = True
    end
    object CDSVentaCabMUESTRAOBRA: TStringField
      FieldName = 'MUESTRAOBRA'
      ProviderFlags = []
      Size = 100
    end
    object CDSVentaCabPROCESADA: TStringField
      FieldName = 'PROCESADA'
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabMUESTRATELEFONO_1: TStringField
      FieldName = 'MUESTRATELEFONO_1'
      ProviderFlags = []
      Size = 10
    end
    object CDSVentaCabMUESTRATELEFONO_2: TStringField
      FieldName = 'MUESTRATELEFONO_2'
      ProviderFlags = []
      Size = 10
    end
    object CDSVentaCabMUESTRATELEFONOMOVIL: TStringField
      FieldName = 'MUESTRATELEFONOMOVIL'
      ProviderFlags = []
      Size = 11
    end
    object CDSVentaCabNC_POR_DIFERENCIA: TStringField
      FieldName = 'NC_POR_DIFERENCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object CDSVentaDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPVentaDet'
    BeforeInsert = CDSVentaDetBeforeInsert
    AfterInsert = CDSVentaDetAfterInsert
    AfterEdit = CDSVentaDetAfterEdit
    BeforePost = CDSVentaDetBeforePost
    AfterPost = CDSVentaDetAfterPost
    BeforeDelete = CDSVentaDetBeforeDelete
    AfterDelete = CDSVentaDetAfterDelete
    AfterScroll = CDSVentaDetAfterScroll
    OnCalcFields = CDSVentaDetCalcFields
    OnNewRecord = CDSVentaDetNewRecord
    Left = 96
    Top = 65
    object CDSVentaDetCLASECPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSVentaDetGRAVADO_IB: TStringField
      DisplayWidth = 1
      FieldName = 'GRAVADO_IB'
      Origin = 'GRAVADO_IB'
      Size = 1
    end
    object CDSVentaDetCON_NRO_SERIE: TStringField
      DisplayWidth = 1
      FieldName = 'CON_NRO_SERIE'
      Origin = 'CON_NRO_SERIE'
      Size = 1
    end
    object CDSVentaDetCON_CODIGO_BARRA: TStringField
      DisplayWidth = 1
      FieldName = 'CON_CODIGO_BARRA'
      Origin = 'CON_CODIGO_BARRA'
      Size = 1
    end
    object CDSVentaDetTIPOIB_TASA: TIntegerField
      DisplayWidth = 10
      FieldName = 'TIPOIB_TASA'
      Origin = 'TIPOIB_TASA'
    end
    object CDSVentaDetID_MONEDA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
    end
    object CDSVentaDetNRO: TIntegerField
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'NRO'
      ProviderFlags = []
    end
    object CDSVentaDetLOTE: TIntegerField
      DisplayLabel = 'Lote'
      DisplayWidth = 10
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object CDSVentaDetPRECIO_EDITABLE: TStringField
      DisplayWidth = 1
      FieldName = 'PRECIO_EDITABLE'
      Origin = 'PRECIO_EDITABLE'
      FixedChar = True
      Size = 1
    end
    object CDSVentaDetGRUPO_DETALLE: TIntegerField
      DisplayWidth = 10
      FieldName = 'GRUPO_DETALLE'
      Origin = 'GRUPO_DETALLE'
    end
    object CDSVentaDetMUESTRAGRUPODETALLE: TStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'MUESTRAGRUPODETALLE'
      LookupDataSet = CDSBuscaGrupoVtaDet
      LookupKeyFields = 'ID'
      LookupResultField = 'GRUPO'
      KeyFields = 'GRUPO_DETALLE'
      ProviderFlags = []
      Size = 40
      Lookup = True
    end
    object CDSVentaDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSVentaDetID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Origin = 'ID_CABFAC'
      Required = True
    end
    object CDSVentaDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSVentaDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSVentaDetCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      OnGetText = CDSVentaDetCODIGOARTICULOGetText
      OnSetText = CDSVentaDetCodigoArticuloSetText
      EditMask = 'cccccccccccccccccccccccccccccccccccccccccccccccccc;0; '
      Size = 8
    end
    object CDSVentaDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSVentaDetUNIDAD: TStringField
      DisplayLabel = 'Uni.'
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object CDSVentaDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Origin = 'TIPOIVA_TASA'
      Required = True
    end
    object CDSVentaDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Origin = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object CDSVentaDetIVA_TOTAL: TFloatField
      FieldName = 'IVA_TOTAL'
      Origin = 'IVA_TOTAL'
      Required = True
    end
    object CDSVentaDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object CDSVentaDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaDetMUESTRAMONEDA: TStringField
      FieldName = 'MUESTRAMONEDA'
      Origin = 'SIGNO'
      ProviderFlags = []
      Size = 5
    end
    object CDSVentaDetCANTIDAD: TFloatField
      DisplayLabel = 'Cant.'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      OnSetText = CDSVentaDetCANTIDADSetText
    end
    object CDSVentaDetDESCUENTO: TFloatField
      DisplayLabel = 'Dcto'
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      OnSetText = CDSVentaDetDESCUENTOSetText
    end
    object CDSVentaDetTOTAL_EXENTO: TFloatField
      FieldName = 'TOTAL_EXENTO'
      Origin = 'TOTAL_EXENTO'
      Required = True
    end
    object CDSVentaDetTOTAL_GRAVADO: TFloatField
      FieldName = 'TOTAL_GRAVADO'
      Origin = 'TOTAL_GRAVADO'
      Required = True
    end
    object CDSVentaDetTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      OnGetText = CDSVentaDetTOTALGetText
      OnSetText = CDSVentaDetTOTALSetText
    end
    object CDSVentaDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
      OnSetText = CDSVentaDetIVA_TASASetText
    end
    object CDSVentaDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
      Origin = 'IVA_SOBRETASA'
    end
    object CDSVentaDetMARGEN: TFloatField
      FieldName = 'MARGEN'
      Origin = 'MARGEN'
    end
    object CDSVentaDetFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
    object CDSVentaDetMUESTRACONTENIDO: TFloatField
      FieldName = 'MUESTRACONTENIDO'
      Origin = 'CONTENIDO_COMPRA'
      ProviderFlags = []
    end
    object CDSVentaDetIB_TASA: TFloatField
      FieldName = 'IB_TASA'
      Origin = 'IB_TASA'
      Required = True
    end
    object CDSVentaDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      Required = True
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object CDSVentaDetRENGLON: TFloatField
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
    end
    object CDSVentaDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaDetMESES_GTIA: TIntegerField
      FieldName = 'MESES_GTIA'
      Origin = 'MESES_GTIA'
      Required = True
    end
    object CDSVentaDetUNIDADES_GRAVADO: TFloatField
      FieldName = 'UNIDADES_GRAVADO'
      Origin = 'UNIDADES_GRAVADO'
    end
    object CDSVentaDetUNIDADES_EXENTO: TFloatField
      FieldName = 'UNIDADES_EXENTO'
      Origin = 'UNIDADES_EXENTO'
    end
    object CDSVentaDetUNIDADES_TOTAL: TFloatField
      FieldName = 'UNIDADES_TOTAL'
      Origin = 'UNIDADES_TOTAL'
    end
    object CDSVentaDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
    end
    object CDSVentaDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
    end
    object CDSVentaDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSVentaDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
    end
    object CDSVentaDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
    end
    object CDSVentaDetUNITARIO_TOTAL: TFloatField
      DisplayLabel = '$ Unitario'
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
      OnGetText = CDSVentaDetUNITARIO_TOTALGetText
      OnSetText = CDSVentaDetUNITARIO_TOTALSetText
    end
    object CDSVentaDetIVA_UNITARIO: TFloatField
      FieldName = 'IVA_UNITARIO'
      Origin = 'IVA_UNITARIO'
      Required = True
    end
    object CDSVentaDetCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Origin = 'CODIGOBARRA'
      Size = 50
    end
    object CDSVentaDetMUESTRACODALTERNATIVO: TStringField
      FieldName = 'MUESTRACODALTERNATIVO'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
    end
    object CDSVentaDetDE_PRODUCCION: TStringField
      FieldName = 'DE_PRODUCCION'
      Origin = 'DE_PRODUCCION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaDetUNITARIO_TOTAL_OLD: TFloatField
      FieldName = 'UNITARIO_TOTAL_OLD'
      Origin = 'UNITARIO_TOTAL_OLD'
      Required = True
    end
    object CDSVentaDetUNITARIO_IVA_OLD: TFloatField
      FieldName = 'UNITARIO_IVA_OLD'
      Origin = 'UNITARIO_IVA_OLD'
      Required = True
    end
    object CDSVentaDetUNI_C_REC: TStringField
      FieldName = 'UNI_C_REC'
      Origin = 'UNI_C_REC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaDetMUESTRAGTIAOFICIAL: TStringField
      FieldName = 'MUESTRAGTIAOFICIAL'
      Origin = 'GARANTIAOFICIAL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CDSVentaDetCONTROL_TRAZABILIDAD: TStringField
      FieldName = 'CONTROL_TRAZABILIDAD'
      Origin = 'CONTROL_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaDetPRESENTACION_CANT: TFloatField
      FieldName = 'PRESENTACION_CANT'
      Origin = 'PRESENTACION_CANT'
      Required = True
    end
    object CDSVentaDetCANTIDAD_UNIDADES: TFloatField
      DisplayLabel = 'Can.Unid'
      FieldName = 'CANTIDAD_UNIDADES'
      Origin = 'CANTIDAD_UNIDADES'
      OnSetText = CDSVentaDetCANTIDAD_UNIDADESSetText
      DisplayFormat = '0.00'
    end
    object CDSVentaDetDETALLE_ADICIONAL: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Origin = 'DETALLE_ADICIONAL'
      Size = 300
    end
    object CDSVentaDetACOPIABLE: TStringField
      FieldName = 'ACOPIABLE'
      Origin = 'ACOPIABLE'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CDSVentaDetMUESTRAIVAMODIFICADO: TStringField
      FieldName = 'MUESTRAIVAMODIFICADO'
      Origin = 'IVA_MODIFICADO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CDSVentaDetPRESENTACION_UNIDAD: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      Origin = 'PRESENTACION_UNIDAD'
      Size = 3
    end
    object CDSVentaDetMUESTADIFERENCIAENTREGA: TFloatField
      FieldName = 'MUESTADIFERENCIAENTREGA'
      ProviderFlags = []
    end
    object CDSVentaDetUNITARIO_NETO_TOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'UNITARIO_NETO_TOTAL'
      ProviderFlags = []
      OnGetText = CDSVentaDetUNITARIO_NETO_TOTALGetText
    end
    object CDSVentaDetPERCIBE_IVA: TStringField
      FieldName = 'PERCIBE_IVA'
      FixedChar = True
      Size = 1
    end
    object CDSVentaDetTASA_PERCEP_IVA: TFloatField
      FieldName = 'TASA_PERCEP_IVA'
      Required = True
    end
    object CDSVentaDetID_TASA_PERCEPCION_IVA: TIntegerField
      FieldName = 'ID_TASA_PERCEPCION_IVA'
    end
    object CDSVentaDetPERCEPCION_IVA_DIFERENCIAL: TStringField
      FieldName = 'PERCEPCION_IVA_DIFERENCIAL'
      FixedChar = True
      Size = 1
    end
    object CDSVentaDetPRESENTACION_TOLERANCIA: TFloatField
      FieldName = 'PRESENTACION_TOLERANCIA'
      Required = True
    end
    object CDSVentaDetUNITARIO_TOTAL_OLD_2: TFloatField
      FieldName = 'UNITARIO_TOTAL_OLD_2'
      Required = True
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
    Top = 213
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
    object CDSStockGTIA_MESES: TIntegerField
      FieldName = 'GTIA_MESES'
      Origin = 'GTIA_MESES'
      Required = True
    end
    object CDSStockPORCENTAJE_SOBRECOSTO: TFloatField
      FieldName = 'PORCENTAJE_SOBRECOSTO'
      Origin = 'PORCENTAJE_SOBRECOSTO'
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
    object CDSStockPRESENTACION_TOLERANCIA: TFloatField
      FieldName = 'PRESENTACION_TOLERANCIA'
      Required = True
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
    Top = 311
    object CDSSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
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
    object CDSSucursalGENERA_XML_COMUN: TStringField
      FieldName = 'GENERA_XML_COMUN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSSucursalHOST: TStringField
      FieldName = 'HOST'
      Size = 250
    end
    object CDSSucursalCERTIFICADO_ELEC: TStringField
      FieldName = 'CERTIFICADO_ELEC'
      Size = 100
    end
    object CDSSucursalCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSSucursalRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSSucursalCOT_CLAVE: TStringField
      FieldName = 'COT_CLAVE'
    end
    object CDSSucursalCOT_CUIT: TStringField
      FieldName = 'COT_CUIT'
      Size = 13
    end
    object CDSSucursalAPLICA_LEY15311: TStringField
      FieldName = 'APLICA_LEY15311'
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
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPImpuestos'
    OnNewRecord = CDSImpuestosNewRecord
    Left = 96
    Top = 114
    object CDSImpuestosID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSImpuestosID_FCVTACAB: TIntegerField
      FieldName = 'ID_FCVTACAB'
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
  object CDSLdr: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ldr'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPLdr'
    Left = 400
    Top = 24
    object CDSLdrCODIGO_CLIENTE: TStringField
      FieldName = 'CODIGO_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSLdrCODIGO_LDR: TIntegerField
      FieldName = 'CODIGO_LDR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = []
    Left = 338
    Top = 160
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 400
    Top = 163
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
  object CDSInscripcion: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPInscripcion'
    Left = 400
    Top = 70
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
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPIva'
    Left = 400
    Top = 117
    object CDSIvaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
  object DSPPersonal: TDataSetProvider
    DataSet = DMMain_FD.QPersonal
    Options = []
    Left = 792
    Top = 224
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
    Left = 864
    Top = 224
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
    object CDSPersonalMUESTRADEPOSITO: TIntegerField
      FieldName = 'MUESTRADEPOSITO'
    end
  end
  object QPrecioTablaDetalle: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select td.precio1,td.precio2  from stock s'
      'left join tabla_preciosdet td on td.id=s.id_tablapreciosdetalle'
      'where s.codigo_stk=:codigo')
    Left = 576
    Top = 56
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object QPrecioTablaDetallePRECIO1: TFloatField
      FieldName = 'PRECIO1'
    end
    object QPrecioTablaDetallePRECIO2: TFloatField
      FieldName = 'PRECIO2'
    end
  end
  object DSPListaPrecios: TDataSetProvider
    DataSet = DMBuscadores.QBuscaListaPrecios
    Options = []
    Left = 496
    Top = 8
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
    Left = 560
    Top = 8
    object CDSListaPreciosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSListaPreciosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSListaPreciosF_PAGO: TIntegerField
      FieldName = 'F_PAGO'
    end
    object CDSListaPreciosEXCLUSIVO_EFECTIVO: TStringField
      FieldName = 'EXCLUSIVO_EFECTIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSListaPrecios: TDataSource
    DataSet = CDSListaPrecios
    Left = 632
    Top = 8
  end
  object QPrecioEspecial: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select preciopactado from precioespecialdet '
      'where codigoarticulo=:articulo and '
      'codigocliente=:cliente')
    Left = 584
    Top = 104
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
  object QMonedas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from monedas where id=:id')
    Left = 656
    Top = 104
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QMonedasID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'DBMAIN.MONEDAS.ID'
    end
    object QMonedasCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
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
  object CDSBuscaCodigoBarra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaCodigoBarra'
    Left = 400
    Top = 349
    object CDSBuscaCodigoBarraCODIGOBARRA: TStringField
      DisplayLabel = 'Codigo Barra'
      FieldName = 'CODIGOBARRA'
      Size = 50
    end
    object CDSBuscaCodigoBarraDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Visible = False
      Size = 45
    end
    object CDSBuscaCodigoBarraCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Visible = False
      Size = 8
    end
  end
  object DSPBuscaCodigoBarra: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCodigoBarra
    Options = [poAllowCommandText]
    Left = 338
    Top = 344
  end
  object CDSBuscaNroSerie: TClientDataSet
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
      end>
    ProviderName = 'DSPBuscaNroSerie'
    Left = 720
    Top = 168
    object CDSBuscaNroSerieCODIGOSERIE: TStringField
      DisplayLabel = 'Codigo Serie'
      DisplayWidth = 50
      FieldName = 'CODIGOSERIE'
      Size = 50
    end
    object CDSBuscaNroSerieCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Visible = False
      Size = 8
    end
    object CDSBuscaNroSerieFECHAINGRESO: TSQLTimeStampField
      FieldName = 'FECHAINGRESO'
      Visible = False
    end
    object CDSBuscaNroSerieFECHAEGRESO: TSQLTimeStampField
      FieldName = 'FECHAEGRESO'
      Visible = False
    end
    object CDSBuscaNroSerieID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
  end
  object DSPBuscaNroSerie: TDataSetProvider
    DataSet = DMBuscadores.QBuscaNroSerie
    Options = [poAllowCommandText]
    Left = 800
    Top = 168
  end
  object QNroSerie: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,'
      'ss.fechaegreso from stock_series ss'
      'where (ss.codigo_stk=:codigo and ss.codigoserie=:CodigoSerie'
      
        'and ss.fechaegreso is null) and ( ss.deposito=:deposito or :depo' +
        'sito = -1 )')
    Left = 720
    Top = 224
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
      end
      item
        Name = 'deposito'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'deposito'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QNroSerieID: TIntegerField
      FieldName = 'ID'
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
  object spIngSerie: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'GENERA_INGRESO_SERIE'
    Left = 808
    Top = 8
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        Precision = 8
        ParamType = ptInput
      end
      item
        Name = 'SERIE'
        DataType = ftString
        Precision = 50
        ParamType = ptInput
      end
      item
        Name = 'FECHA'
        DataType = ftTimeStamp
        Precision = 8
        ParamType = ptInput
      end
      item
        Name = 'DEPOSITO'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'ID_CPBTE'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'TIPOCPBTE'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end
      item
        Name = 'CLASECPBTE'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end
      item
        Name = 'NROCPBTE'
        DataType = ftString
        Precision = 13
        ParamType = ptInput
      end>
  end
  object DSPBuscaLdr: TDataSetProvider
    DataSet = DMBuscadores.QBuscaLdr
    Options = []
    Left = 338
    Top = 206
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
    Left = 400
    Top = 210
    object CDSBuscaLdrCODIGO_LDR: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGO_LDR'
      Required = True
    end
    object CDSBuscaLdrNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 45
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSBuscaLdrDIRECCION: TStringField
      DisplayLabel = 'Direcci'#243'n'
      DisplayWidth = 45
      FieldName = 'DIRECCION'
      FixedChar = True
      Size = 35
    end
    object CDSBuscaLdrCODIGO_CLIENTE: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 6
      FieldName = 'CODIGO_CLIENTE'
      Required = True
      Visible = False
      Size = 6
    end
    object CDSBuscaLdrCPOSTAL: TStringField
      DisplayLabel = '.Postal'
      DisplayWidth = 8
      FieldName = 'CPOSTAL'
      Visible = False
      Size = 8
    end
  end
  object QTCredito: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from T_Credito'
      'where id_tc=:codigo')
    Left = 576
    Top = 232
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTCreditoID_TC: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_TC'
      Origin = 'DBMAIN.T_CREDITO.ID_TC'
    end
    object QTCreditoDESCRIPCION: TStringField
      DisplayWidth = 15
      FieldName = 'DESCRIPCION'
      Origin = 'DBMAIN.T_CREDITO.DESCRIPCION'
      Size = 15
    end
    object QTCreditoCODIGOARTICULO: TStringField
      DisplayWidth = 8
      FieldName = 'CODIGOARTICULO'
      Origin = 'DBMAIN.T_CREDITO.CODIGOARTICULO'
      Size = 8
    end
  end
  object DSPBuscaGrupoVtaDet: TDataSetProvider
    DataSet = DMBuscadores.QBuscaGruposVtaDetalle
    Options = []
    Left = 20
    Top = 365
  end
  object CDSBuscaGrupoVtaDet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaGrupoVtaDet'
    Left = 96
    Top = 361
    object CDSBuscaGrupoVtaDetID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSBuscaGrupoVtaDetGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 40
    end
  end
  object QDepositoStk: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from DepositoStk  where'
      '(Codigo_Deposito=:codigo_deposito) AND (Codigo_stk=:Codigo)')
    Left = 808
    Top = 64
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
  object DSPBuscaDeposito: TDataSetProvider
    DataSet = DMBuscadores.QBuscaDeposito
    Options = []
    Left = 338
    Top = 298
  end
  object CDSBuscaDeposito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaDeposito'
    Left = 400
    Top = 303
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
  object DSPBuscaVendedor: TDataSetProvider
    DataSet = DMBuscadores.QBuscaVendedores
    Options = []
    Left = 338
    Top = 252
  end
  object CDSBuscaVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaVendedor'
    Left = 400
    Top = 256
    object CDSBuscaVendedorCODIGO: TStringField
      DisplayWidth = 12
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSBuscaVendedorNOMBRE: TStringField
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
  object DSPVtaDetConsig: TDataSetProvider
    DataSet = DMMain_FD.QVtaDetalleConsig
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 20
    Top = 415
  end
  object CDSVtaDetConsig: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPVtaDetConsig'
    OnNewRecord = CDSVtaDetConsigNewRecord
    Left = 96
    Top = 410
    object CDSVtaDetConsigID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSVtaDetConsigID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSVtaDetConsigID_DETFAC: TIntegerField
      FieldName = 'ID_DETFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSVtaDetConsigCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object CDSVtaDetConsigDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSVtaDetConsigCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSVtaDetConsigID_MOV_RECEPCION_CAB: TIntegerField
      FieldName = 'ID_MOV_RECEPCION_CAB'
    end
    object CDSVtaDetConsigID_MOV_RECEPCION_DET: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_MOV_RECEPCION_DET'
      OnSetText = CDSVtaDetConsigID_MOV_RECEPCION_DETSetText
    end
    object CDSVtaDetConsigLIQUIDADA: TStringField
      FieldName = 'LIQUIDADA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVtaDetConsigPRECIO_VTA: TFloatField
      FieldName = 'PRECIO_VTA'
      Required = True
    end
    object CDSVtaDetConsigPRECIO_COMPRA: TFloatField
      FieldName = 'PRECIO_COMPRA'
      Required = True
    end
    object CDSVtaDetConsigCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Required = True
      Size = 6
    end
    object CDSVtaDetConsigMUESTRARECEPCIONNRO: TStringField
      DisplayLabel = 'Nro.Recepci'#243'n'
      FieldName = 'MUESTRARECEPCIONNRO'
      EditMask = '-####-########;0;_'
      Size = 13
    end
  end
  object DSVtaDetConsig: TDataSource
    DataSet = CDSVtaDetConsig
    Left = 176
    Top = 416
  end
  object ibgFcVtaConsig: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FCVTADET_CONSIGNACIONES'
    SystemGenerators = False
    Left = 248
    Top = 416
  end
  object DSPBuscaRecepDetalle: TDataSetProvider
    DataSet = QBuscaRecDetalle
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 20
    Top = 466
  end
  object CDSBuscaRecepDetalle: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'proveedor'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaRecepDetalle'
    Left = 96
    Top = 467
    object CDSBuscaRecepDetalleID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSBuscaRecepDetalleID_CABREC: TIntegerField
      FieldName = 'ID_CABREC'
      Required = True
    end
    object CDSBuscaRecepDetalleNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      DisplayWidth = 13
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSBuscaRecepDetalleFECHARECEPCION: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      DisplayWidth = 18
      FieldName = 'FECHARECEPCION'
      Required = True
    end
    object CDSBuscaRecepDetalleCANTIDAD_SALDO: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 10
      FieldName = 'CANTIDAD_SALDO'
    end
    object CDSBuscaRecepDetalleUNITARIO_TOTAL: TFloatField
      DisplayLabel = 'Unitario'
      FieldName = 'UNITARIO_TOTAL'
      Visible = False
      DisplayFormat = ',0.00'
    end
  end
  object QRecepciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select d.id,d.id_cabrec,d.nrocpbte,d.fecharecepcion,d.cantidad_s' +
        'aldo,d.unitario_total from recepmercadet d'
      'where d.id = :id'
      '')
    Left = 664
    Top = 56
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRecepcionesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QRecepcionesID_CABREC: TIntegerField
      FieldName = 'ID_CABREC'
      Required = True
    end
    object QRecepcionesNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QRecepcionesFECHARECEPCION: TSQLTimeStampField
      FieldName = 'FECHARECEPCION'
      Required = True
    end
    object QRecepcionesCANTIDAD_SALDO: TFloatField
      FieldName = 'CANTIDAD_SALDO'
    end
    object QRecepcionesUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
    end
  end
  object QBuscaRecDetalle: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.id,d.id_cabrec,d.nrocpbte,d.fecharecepcion,'
      '       d.Cantidad_saldo,d.unitario_total from recepmercadet d'
      'where d.codigoarticulo=:codigo and'
      'd.codigoproveedor=:proveedor and'
      'd.cantidad_saldo>0')
    Left = 564
    Top = 656
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'proveedor'
        DataType = ftString
        ParamType = ptInput
      end>
    object QBuscaRecDetalleID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QBuscaRecDetalleID_CABREC: TIntegerField
      FieldName = 'ID_CABREC'
      Required = True
    end
    object QBuscaRecDetalleNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QBuscaRecDetalleFECHARECEPCION: TSQLTimeStampField
      FieldName = 'FECHARECEPCION'
      Required = True
    end
    object QBuscaRecDetalleCANTIDAD_SALDO: TFloatField
      FieldName = 'CANTIDAD_SALDO'
    end
    object QBuscaRecDetalleUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
    end
  end
  object DSPBuscaLodalidadJuri: TDataSetProvider
    DataSet = DMBuscadores.QBuscaLocalidadJuri
    Options = []
    Left = 554
    Top = 364
  end
  object CDSBuscaLocalidadJur: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaLodalidadJuri'
    Left = 632
    Top = 362
    object CDSBuscaLocalidadJurID: TIntegerField
      DisplayWidth = 3
      FieldName = 'ID'
      Required = True
    end
    object CDSBuscaLocalidadJurID_JURIDICION: TIntegerField
      DisplayWidth = 3
      FieldName = 'ID_JURIDICION'
    end
    object CDSBuscaLocalidadJurLOCALIDAD: TStringField
      DisplayWidth = 15
      FieldName = 'LOCALIDAD'
      Size = 25
    end
    object CDSBuscaLocalidadJurPROVINCIA: TStringField
      FieldName = 'PROVINCIA'
    end
    object CDSBuscaLocalidadJurPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object DSBuscaLocalidadJuri: TDataSource
    DataSet = CDSBuscaLocalidadJur
    Left = 704
    Top = 360
  end
  object QNCPorDefecto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.id_notacreditopordefecto,cp.denominacion,'
      
        '          cp.clase_comprob,cp.tipo_comprob,cp.sucursal from clie' +
        'ntes c'
      
        '  left join comprobantes cp on cp.id_comprobante=c.id_notacredit' +
        'opordefecto'
      'where c.codigo=:codigo')
    Left = 544
    Top = 464
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object QNCPorDefectoID_NOTACREDITOPORDEFECTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_NOTACREDITOPORDEFECTO'
    end
    object QNCPorDefectoDENOMINACION: TStringField
      DisplayWidth = 15
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object QNCPorDefectoCLASE_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'CLASE_COMPROB'
      FixedChar = True
      Size = 2
    end
    object QNCPorDefectoTIPO_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'TIPO_COMPROB'
      FixedChar = True
      Size = 2
    end
    object QNCPorDefectoSUCURSAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'SUCURSAL'
    end
  end
  object DSPComprobantePorDefecto: TDataSetProvider
    DataSet = DMMain_FD.QComprobantePorDefecto
    Options = []
    Left = 338
    Top = 482
  end
  object CDSComprobantePorDefecto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'compraventa'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DesglozaIva'
        ParamType = ptInput
      end>
    ProviderName = 'DSPComprobantePorDefecto'
    Left = 400
    Top = 489
  end
  object DSPMov_Carnes: TDataSetProvider
    DataSet = DMMain_FD.QMov_Carnes
    Options = []
    Left = 20
    Top = 517
  end
  object CDSMov_Carnes: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_DET'
    MasterFields = 'ID'
    MasterSource = DSVentaDet
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMov_Carnes'
    OnNewRecord = CDSMov_CarnesNewRecord
    Left = 96
    Top = 517
    object CDSMov_CarnesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSMov_CarnesID_DET: TIntegerField
      FieldName = 'ID_DET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMov_CarnesID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSMov_CarnesCLASIFICACION: TStringField
      FieldName = 'CLASIFICACION'
      Size = 2
    end
    object CDSMov_CarnesNRO_TROPA: TStringField
      FieldName = 'NRO_TROPA'
      Size = 6
    end
    object CDSMov_CarnesT_KILOS: TIntegerField
      FieldName = 'T_KILOS'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMov_CarnesT_MEDIAS: TIntegerField
      FieldName = 'T_MEDIAS'
      Required = True
      DisplayFormat = '000'
      EditFormat = '000'
    end
    object CDSMov_CarnesMEDIA_1: TIntegerField
      FieldName = 'MEDIA_1'
      OnSetText = CDSMov_CarnesMEDIA_1SetText
    end
    object CDSMov_CarnesMEDIA_2: TIntegerField
      FieldName = 'MEDIA_2'
      OnSetText = CDSMov_CarnesMEDIA_1SetText
    end
    object CDSMov_CarnesMEDIA_3: TIntegerField
      FieldName = 'MEDIA_3'
      OnSetText = CDSMov_CarnesMEDIA_1SetText
    end
    object CDSMov_CarnesMEDIA_4: TIntegerField
      FieldName = 'MEDIA_4'
      OnSetText = CDSMov_CarnesMEDIA_1SetText
    end
    object CDSMov_CarnesMEDIA_5: TIntegerField
      FieldName = 'MEDIA_5'
      OnSetText = CDSMov_CarnesMEDIA_1SetText
    end
    object CDSMov_CarnesMEDIA_6: TIntegerField
      FieldName = 'MEDIA_6'
      OnSetText = CDSMov_CarnesMEDIA_1SetText
    end
    object CDSMov_CarnesMEDIA_7: TIntegerField
      FieldName = 'MEDIA_7'
      OnSetText = CDSMov_CarnesMEDIA_1SetText
    end
    object CDSMov_CarnesMEDIA_8: TIntegerField
      FieldName = 'MEDIA_8'
      OnSetText = CDSMov_CarnesMEDIA_1SetText
    end
  end
  object DSMov_Carnes: TDataSource
    DataSet = CDSMov_Carnes
    Left = 176
    Top = 517
  end
  object ibgMov_Carne: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FCDET_CARNES'
    SystemGenerators = False
    Left = 240
    Top = 517
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = DMMain_FD.QEmpresa
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 338
    Top = 390
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    Left = 400
    Top = 396
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
    object CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField
      FieldName = 'FECHA_INICIO_ACTI'
    end
    object CDSEmpresaCOD_ACTIVIDAD: TStringField
      FieldName = 'COD_ACTIVIDAD'
      Size = 10
    end
    object CDSEmpresaNOMBRE_AUTORIZADO: TStringField
      FieldName = 'NOMBRE_AUTORIZADO'
      Size = 50
    end
    object CDSEmpresaID_CPOSTAL: TIntegerField
      FieldName = 'ID_CPOSTAL'
    end
    object CDSEmpresaNOMBRE_FANTASIA: TStringField
      FieldName = 'NOMBRE_FANTASIA'
      Size = 50
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
  object DSPFc_Prod_Det: TDataSetProvider
    DataSet = DMMain_FD.QFcVta_Prod_Det
    Options = [poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    Left = 656
    Top = 464
  end
  object DSPFc_Prod_Mov: TDataSetProvider
    DataSet = DMMain_FD.QFcVta_Prod_Mov
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 656
    Top = 528
  end
  object CDSFc_Prod_Det: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_FCDET'
    MasterFields = 'ID'
    MasterSource = DSVentaDet
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id_det'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFc_Prod_Det'
    OnNewRecord = CDSFc_Prod_DetNewRecord
    Left = 752
    Top = 456
    object CDSFc_Prod_DetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSFc_Prod_DetID_FCDET: TIntegerField
      FieldName = 'ID_FCDET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSFc_Prod_DetID_FCCAB: TIntegerField
      FieldName = 'ID_FCCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSFc_Prod_DetCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 8
    end
    object CDSFc_Prod_DetDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSFc_Prod_DetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object CDSFc_Prod_DetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      OnSetText = CDSFc_Prod_DetCANTIDADSetText
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
    end
    object CDSFc_Prod_DetDEPOSITO_DESTINO: TIntegerField
      FieldName = 'DEPOSITO_DESTINO'
      Required = True
    end
    object CDSFc_Prod_DetSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object CDSFc_Prod_DetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSFc_Prod_DetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Required = True
      Size = 1
    end
  end
  object CDSFc_Prod_Mov: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_FC_DET'
    MasterFields = 'ID'
    MasterSource = DSFc_Prod_Det
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id_det'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFc_Prod_Mov'
    BeforePost = CDSFc_Prod_MovBeforePost
    OnNewRecord = CDSFc_Prod_MovNewRecord
    Left = 752
    Top = 512
    object CDSFc_Prod_MovID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSFc_Prod_MovID_FC_DET: TIntegerField
      FieldName = 'ID_FC_DET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSFc_Prod_MovCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      OnSetText = CDSFc_Prod_MovCODIGOSetText
      Size = 8
    end
    object CDSFc_Prod_MovDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSFc_Prod_MovCANTIDAD_UNITARIA: TFloatField
      DisplayLabel = 'Can.Unita'
      FieldName = 'CANTIDAD_UNITARIA'
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
    end
    object CDSFc_Prod_MovCANTIDAD_ESTIMADA: TFloatField
      DisplayLabel = 'Can.Estim.'
      FieldName = 'CANTIDAD_ESTIMADA'
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
    end
    object CDSFc_Prod_MovCANTIDAD_REAL: TFloatField
      DisplayLabel = 'Camt.Real'
      FieldName = 'CANTIDAD_REAL'
      OnSetText = CDSFc_Prod_MovCANTIDAD_REALSetText
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
    end
    object CDSFc_Prod_MovDEPOSITO_ORIGEN: TIntegerField
      FieldName = 'DEPOSITO_ORIGEN'
    end
    object CDSFc_Prod_MovAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      FixedChar = True
      Size = 1
    end
  end
  object DSFc_Prod_Det: TDataSource
    DataSet = CDSFc_Prod_Det
    Left = 816
    Top = 456
  end
  object DSFc_Prod_Mov: TDataSource
    DataSet = CDSFc_Prod_Mov
    Left = 832
    Top = 512
  end
  object IbgId_Det_Pro: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_VTA_PROD_DET'
    SystemGenerators = False
    Left = 888
    Top = 456
  end
  object ibgId_mov_prod: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_VTA_PROD_MOV'
    SystemGenerators = False
    Left = 888
    Top = 512
  end
  object QStockProdDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cab.codigo,cab.detalle,det.codigo_stk,det.detalle,'
      
        'det.cantidad_real,det.cantidad_fisica,det.afecta_stock from stoc' +
        'k_produccion_cab cab'
      'left join stock_produccion_det det on det.id_cab=cab.id'
      'where cab.codigo=:codigo')
    Left = 720
    Top = 664
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object DSPStockProdDetalle: TDataSetProvider
    DataSet = QStockProdDet
    Options = []
    Left = 794
    Top = 664
  end
  object CDSStockProdDetalle: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPStockProdDetalle'
    Left = 866
    Top = 664
    object CDSStockProdDetalleCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object CDSStockProdDetalleDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSStockProdDetalleCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object CDSStockProdDetalleDETALLE_1: TStringField
      FieldName = 'DETALLE_1'
      Size = 45
    end
    object CDSStockProdDetalleCANTIDAD_REAL: TFloatField
      FieldName = 'CANTIDAD_REAL'
    end
    object CDSStockProdDetalleCANTIDAD_FISICA: TFloatField
      FieldName = 'CANTIDAD_FISICA'
    end
    object CDSStockProdDetalleAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      FixedChar = True
      Size = 1
    end
  end
  object QRecuperarRtos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update rtocab rto set  rto.idfactura=null,'
      'rto.nrofact=null,'
      'rto.anulado='#39'N'#39
      '      where  rto.id_rto = :id')
    Left = 840
    Top = 400
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPVentaLote: TDataSetProvider
    DataSet = DMMain_FD.QVentaLote
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 16
    Top = 562
  end
  object CDSVentaLote: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_DET'
    MasterFields = 'ID'
    MasterSource = DSVentaDet
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPVentaLote'
    OnNewRecord = CDSVentaLoteNewRecord
    Left = 96
    Top = 562
    object CDSVentaLoteID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSVentaLoteID_DET: TIntegerField
      FieldName = 'ID_DET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSVentaLoteID_FC: TIntegerField
      FieldName = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSVentaLoteID_LOTE: TIntegerField
      DisplayLabel = 'Id Lote'
      FieldName = 'ID_LOTE'
      Required = True
      OnSetText = CDSVentaLoteID_LOTESetText
    end
    object CDSVentaLoteCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object CDSVentaLoteLOTE: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
      Size = 15
    end
    object CDSVentaLoteCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSVentaLoteFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSVentaLoteFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object CDSVentaLoteDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object CDSVentaLoteTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Size = 2
    end
    object CDSVentaLoteDESPACHO: TStringField
      FieldName = 'DESPACHO'
    end
  end
  object DSVentaLote: TDataSource
    DataSet = CDSVentaLote
    Left = 176
    Top = 562
  end
  object IBGVtaLote: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'next_id_fcvta_lotes'
    SystemGenerators = False
    Left = 248
    Top = 562
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
    Left = 400
    Top = 543
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
  object DSPBuscaLotes: TDataSetProvider
    DataSet = DMBuscadores.QBuscaLotes
    Options = [poAllowCommandText]
    Left = 338
    Top = 537
  end
  object QNroBorrado: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select f.nrocpbte,f.razonsocial,f.Total  from fcvtacab f where f' +
        '.id_fc=:id')
    Left = 904
    Top = 64
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QNroBorradoNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QNroBorradoRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object QNroBorradoTOTAL: TFloatField
      FieldName = 'TOTAL'
      Required = True
    end
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT *  FROM Clientes '
      'where (codigo=:codigo) and (activo<>'#39'N'#39')')
    Left = 496
    Top = 56
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
    object QClientesID_ADMINISTRACION: TIntegerField
      FieldName = 'ID_ADMINISTRACION'
      Origin = 'ID_ADMINISTRACION'
      Required = True
    end
    object QClientesPERCIBE_IVA: TStringField
      FieldName = 'PERCIBE_IVA'
      Origin = 'PERCIBE_IVA'
      FixedChar = True
      Size = 1
    end
  end
  object QPrimerLdr: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select min(Codigo_Ldr) From LdrCliente Where Codigo_Cliente=:Cod' +
        'igo')
    Left = 176
    Top = 272
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
  object QComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      'id_comprobante=:id  '
      'and (tipo_comprob='#39'FO'#39') '
      'and compra_venta='#39'V'#39
      'and sucursal=:suc'
      'and (( desgloza_iva=:desglozaiva) or ( :desglozaiva = '#39'*'#39' ))'
      'and en_uso='#39'S'#39)
    Left = 496
    Top = 160
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
      end
      item
        Name = 'DESGLOZAIVA'
        DataType = ftString
        ParamType = ptInput
        Size = 1
        Value = Null
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
    object QComprobUSAR_CAEA: TStringField
      FieldName = 'USAR_CAEA'
      Origin = 'USAR_CAEA'
      FixedChar = True
      Size = 1
    end
  end
  object QBorraFc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from fcvtacab f where f.id_fc=:id')
    Left = 496
    Top = 104
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QBuscaRtos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select r.id_rto,r.nrocpbte from rtocab r where r.idfactura=:id')
    Left = 504
    Top = 232
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QBuscaRtosID_RTO: TIntegerField
      FieldName = 'ID_RTO'
      Origin = 'ID_RTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaRtosNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
  end
  object QPromo_Cantidad: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.codigo,c.cant_desde,c.descto,c.modo,s.detalle_stk as Mu' +
        'estraDetalle from promo_art_cantidad c'
      'left join stock s on s.codigo_stk=c.codigo'
      'where c.codigo = :codigo')
    Left = 976
    Top = 408
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object QPromo_CantidadCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QPromo_CantidadCANT_DESDE: TFloatField
      FieldName = 'CANT_DESDE'
      Origin = 'CANT_DESDE'
    end
    object QPromo_CantidadDESCTO: TFloatField
      FieldName = 'DESCTO'
      Origin = 'DESCTO'
    end
    object QPromo_CantidadMODO: TStringField
      FieldName = 'MODO'
      Origin = 'MODO'
      FixedChar = True
      Size = 1
    end
    object QPromo_CantidadMUESTRADETALLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADETALLE'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
  end
  object QCodigoBarra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select Max(cb.codigobarra) from codigobarra cb where cb.codigo_s' +
        'tk=:codigo')
    Left = 904
    Top = 8
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
  object QProveedores: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT p.*  FROM Poveedor p '
      'where p.Codigo=:Codigo')
    Left = 656
    Top = 224
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
  end
  object QCoefPrecio: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(coeficiente)  from coeficientes_precios'
      'where codigo=:codigo and '
      '(id_lista_precio=:id_lista or :id_lista = -1 )'
      'and por_defecto='#39#39)
    Left = 648
    Top = 160
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
  object QRecepMayor: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.id,d.id_cabrec,d.nrocpbte,d.fecharecepcion,'
      
        '       Max(d.Cantidad_saldo) As Cantidad_Saldo,c.codigo,c.razons' +
        'ocial from recepmercadet d'
      'left join recepmercacab c on c.id_recmer=d.id_cabrec'
      'where d.codigoarticulo=:codigo and c.codigo=:proveedor and'
      'd.cantidad_saldo>0'
      
        'group by d.id, d.id_cabrec,d.nrocpbte,d.fecharecepcion,c.codigo,' +
        'c.razonsocial')
    Left = 480
    Top = 646
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PROVEEDOR'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
    object QRecepMayorID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRecepMayorID_CABREC: TIntegerField
      FieldName = 'ID_CABREC'
      Origin = 'ID_CABREC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRecepMayorNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QRecepMayorFECHARECEPCION: TSQLTimeStampField
      FieldName = 'FECHARECEPCION'
      Origin = 'FECHARECEPCION'
      Required = True
    end
    object QRecepMayorCANTIDAD_SALDO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD_SALDO'
      Origin = 'CANTIDAD_SALDO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRecepMayorCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object QRecepMayorRAZONSOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
  end
  object QBuscaCodBarra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cb.* from codigobarra cb where cb.codigobarra=:codigo')
    Left = 1024
    Top = 64
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = Null
      end>
    object QBuscaCodBarraID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaCodBarraCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object QBuscaCodBarraCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Origin = 'CODIGOBARRA'
      Size = 50
    end
    object QBuscaCodBarraPRESENTACION: TIntegerField
      FieldName = 'PRESENTACION'
      Origin = 'PRESENTACION'
    end
    object QBuscaCodBarraPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      Origin = 'PRESENTACION_CANTIDAD'
      Required = True
    end
  end
  object QLocalidadJurDefecto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select id,id_juridicion from juridicion_localidad where por_defe' +
        'cto='#39'S'#39)
    Left = 1024
    Top = 216
    object QLocalidadJurDefectoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLocalidadJurDefectoID_JURIDICION: TIntegerField
      FieldName = 'ID_JURIDICION'
      Origin = 'ID_JURIDICION'
    end
  end
  object DSPercepcionIVA: TDataSource
    DataSet = CDSPercepcionIVA
    Left = 280
    Top = 632
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
    Left = 200
    Top = 632
    object CDSPercepcionIVAID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      Required = True
    end
    object CDSPercepcionIVACODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Required = True
    end
    object CDSPercepcionIVADETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSPercepcionIVAID_FCVTACAB: TIntegerField
      FieldName = 'ID_FCVTACAB'
      Required = True
    end
    object CDSPercepcionIVANETO: TFloatField
      FieldName = 'NETO'
      DisplayFormat = ',0.00'
    end
    object CDSPercepcionIVATASA: TFloatField
      FieldName = 'TASA'
      DisplayFormat = '0.00'
    end
    object CDSPercepcionIVAIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSPercepcionIVACODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
    end
  end
  object DSPPercepcionIVA: TDataSetProvider
    DataSet = DMMain_FD.QPercepcionIvaVta
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 108
    Top = 632
  end
  object IBGPercepcionIVA: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_PERCEPCION_IVA_VTA'
    SystemGenerators = False
    Left = 32
    Top = 632
  end
  object DSPVtaDetNovedades: TDataSetProvider
    DataSet = DMMain_FD.QVentaDetNovedades
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 824
    Top = 608
  end
  object CDSVtaDetNovedades: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPVtaDetNovedades'
    OnNewRecord = CDSVtaDetNovedadesNewRecord
    Left = 917
    Top = 608
    object CDSVtaDetNovedadesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object CDSVtaDetNovedadesID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object CDSVtaDetNovedadesTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Visible = False
      Size = 2
    end
    object CDSVtaDetNovedadesCODIGO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Size = 8
    end
    object CDSVtaDetNovedadesDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSVtaDetNovedadesPRECIO_OLD: TFloatField
      DisplayLabel = 'Precio OLD'
      DisplayWidth = 12
      FieldName = 'PRECIO_OLD'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSVtaDetNovedadesPRECIO: TFloatField
      DisplayLabel = 'Precio'
      DisplayWidth = 12
      FieldName = 'PRECIO'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSVtaDetNovedadesTIPO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Modo'
      DisplayWidth = 5
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVtaDetNovedadesFECHA_HORA: TSQLTimeStampField
      DisplayLabel = 'Fecha/Hora'
      DisplayWidth = 20
      FieldName = 'FECHA_HORA'
      Required = True
    end
    object CDSVtaDetNovedadesUSUARIO: TStringField
      DisplayLabel = 'Usuario'
      DisplayWidth = 30
      FieldName = 'USUARIO'
      Size = 50
    end
  end
  object ibgDetNovedades: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'next_id_fcvtadet_novedades'
    SystemGenerators = False
    Left = 1024
    Top = 608
  end
end
