object DatosCompraCtdo: TDatosCompraCtdo
  OnDestroy = DataModuleDestroy
  Height = 646
  Width = 840
  object DSPCompraCab: TDataSetProvider
    DataSet = DMMain_FD.QCompraCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 28
    Top = 8
  end
  object DSPCompraDet: TDataSetProvider
    DataSet = DMMain_FD.QCompraDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 28
    Top = 58
  end
  object DSPProveedor: TDataSetProvider
    DataSet = DMMain_FD.QProveedores
    Options = []
    Left = 364
    Top = 8
  end
  object DSPStock: TDataSetProvider
    DataSet = QStockFD
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 76
    Top = 454
  end
  object DSPDeposito: TDataSetProvider
    DataSet = DMMain_FD.QDeposito
    Options = []
    Left = 364
    Top = 108
  end
  object DSPDepositoStk: TDataSetProvider
    DataSet = DMMain_FD.QDepositoStk
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 28
    Top = 155
  end
  object DSPIva: TDataSetProvider
    DataSet = DMMain_FD.QIva
    Options = []
    Left = 364
    Top = 165
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMMain_FD.QSucursal
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 28
    Top = 212
  end
  object DSPImpuestos: TDataSetProvider
    DataSet = DMMain_FD.QImpuestosComp
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 28
    Top = 104
  end
  object DSPPercepcionIVA: TDataSetProvider
    DataSet = DMMain_FD.QPercepcionIva
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 364
    Top = 224
  end
  object DSPPercepcionIB: TDataSetProvider
    DataSet = DMMain_FD.QPercepcionIB
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 364
    Top = 272
  end
  object IBGFcCompCab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FC_COMPRA_CAB'
    SystemGenerators = False
    Left = 256
    Top = 16
  end
  object IBGFcCompDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FC_COMPRA_DET'
    SystemGenerators = False
    Left = 256
    Top = 64
  end
  object IBGImpuestos: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_IMPUESTOS_COMPRA'
    SystemGenerators = False
    Left = 256
    Top = 112
  end
  object IBGPercepcionIB: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_PERCEPCION_IB'
    SystemGenerators = False
    Left = 624
    Top = 264
  end
  object IBGPercepcionIVA: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_PERCEPCION_IVA'
    SystemGenerators = False
    Left = 624
    Top = 208
  end
  object DSPInscripcion: TDataSetProvider
    DataSet = DMMain_FD.QInscripcion
    Options = []
    Left = 364
    Top = 59
  end
  object DSPComprSubDet: TDataSetProvider
    DataSet = DMMain_FD.QCompSubDetalle
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 28
    Top = 264
  end
  object CDSCompraSubDetalle: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_DETFAC'
    MasterFields = 'ID'
    MasterSource = DSCompraDet
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPComprSubDet'
    BeforeInsert = CDSCompraSubDetalleBeforeInsert
    BeforeEdit = CDSCompraSubDetalleBeforeEdit
    BeforePost = CDSCompraSubDetalleBeforePost
    OnNewRecord = CDSCompraSubDetalleNewRecord
    Left = 104
    Top = 264
    object CDSCompraSubDetalleID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSCompraSubDetalleID_DETFAC: TIntegerField
      FieldName = 'ID_DETFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSCompraSubDetalleID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSCompraSubDetalleTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSCompraSubDetalleCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSCompraSubDetalleFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object CDSCompraSubDetalleNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSCompraSubDetalleCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSCompraSubDetalleSERIE: TStringField
      FieldName = 'SERIE'
      OnSetText = CDSCompraSubDetalleSERIESetText
      Size = 50
    end
    object CDSCompraSubDetalleDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
  end
  object DSCompraSubDetalle: TDataSource
    DataSet = CDSCompraSubDetalle
    Left = 192
    Top = 264
  end
  object IBGFcCompSubDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FCCOMPSUBDETALLE'
    SystemGenerators = False
    Left = 272
    Top = 256
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
    Left = 456
    Top = 108
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
  object DSCompraDet: TDataSource
    DataSet = CDSCompraDet
    Left = 184
    Top = 58
  end
  object CDSBuscaDeposito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaDeposito'
    Left = 112
    Top = 352
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
    Left = 28
    Top = 344
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = []
    Left = 28
    Top = 400
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 104
    Top = 400
    object CDSBuscaSucursalCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSBuscaSucursalDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 40
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object DSPTasaPercepIVA: TDataSetProvider
    DataSet = DMMain_FD.QTasaPercepcioIva
    Options = []
    Left = 364
    Top = 320
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
    Left = 456
    Top = 312
    object CDSTasaPercepIVACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSTasaPercepIVADESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
    object CDSTasaPercepIVATASA: TFloatField
      FieldName = 'TASA'
    end
    object CDSTasaPercepIVAMINIMOAPLICABLE: TFloatField
      FieldName = 'MINIMOAPLICABLE'
    end
    object CDSTasaPercepIVACOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
    end
    object CDSTasaPercepIVACODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
    end
  end
  object DSPTasaPercepIIBB: TDataSetProvider
    DataSet = DMMain_FD.QTasaPercepcioIB
    Options = []
    Left = 364
    Top = 368
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
    Left = 456
    Top = 360
    object CDSTasaPercepIIBBCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSTasaPercepIIBBDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
    object CDSTasaPercepIIBBTASA: TFloatField
      FieldName = 'TASA'
    end
    object CDSTasaPercepIIBBMINIMOAPLICABLE: TFloatField
      FieldName = 'MINIMOAPLICABLE'
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
    Left = 104
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
      EditMask = 'ccccccccccccc;0'
      Size = 6
    end
    object CDSCompraCabLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      OnChange = CDSCompraCabLetraFacChange
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
    object CDSCompraCabN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
    end
    object CDSCompraCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
    end
    object CDSCompraCabDSTO: TFloatField
      FieldName = 'DSTO'
      OnSetText = CDSCompraCabDSTOSetText
    end
    object CDSCompraCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      OnSetText = CDSCompraCabDSTOIMPORTESetText
    end
    object CDSCompraCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
    end
    object CDSCompraCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
    end
    object CDSCompraCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
    end
    object CDSCompraCabIMPORTEEXCLUIDO2: TFloatField
      FieldName = 'IMPORTEEXCLUIDO2'
    end
    object CDSCompraCabIMPORTEEXCLUIDO1: TFloatField
      FieldName = 'IMPORTEEXCLUIDO1'
    end
    object CDSCompraCabTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object CDSCompraCabDEBE: TFloatField
      FieldName = 'DEBE'
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
      OnSetText = CDSCompraCabDepositoSetText
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
    object CDSCompraCabNETOMONOTRIBUTO1: TFloatField
      FieldName = 'NETOMONOTRIBUTO1'
    end
    object CDSCompraCabNETOMONOTRIBUTO2: TFloatField
      FieldName = 'NETOMONOTRIBUTO2'
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
    object CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField
      FieldName = 'PERCEPCION_IB_BASEIMPONIBLE'
    end
    object CDSCompraCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object CDSCompraCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSCompraCabTOTAL_UNIDADES: TFloatField
      FieldName = 'TOTAL_UNIDADES'
    end
    object CDSCompraCabMONEDA_CPBTE: TIntegerField
      FieldName = 'MONEDA_CPBTE'
    end
    object CDSCompraCabMONEDA_CPBTE_COTIZACION: TFloatField
      FieldName = 'MONEDA_CPBTE_COTIZACION'
      OnChange = CDSCompraCabMONEDA_CPBTE_COTIZACIONChange
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
    object CDSCompraCabMUESTRAMONEDACPBTE: TStringField
      FieldName = 'MUESTRAMONEDACPBTE'
      ProviderFlags = []
      Size = 15
    end
    object CDSCompraCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
      OnSetText = CDSCompraCabID_TIPOCOMPROBANTESetText
    end
    object CDSCompraCabMUESTRASIGNOMONEDACPBTE: TStringField
      FieldName = 'MUESTRASIGNOMONEDACPBTE'
      ProviderFlags = []
      Size = 5
    end
    object CDSCompraCabNUMERO_OPERACION: TStringField
      FieldName = 'NUMERO_OPERACION'
      Size = 8
    end
    object CDSCompraCabCAE: TStringField
      FieldName = 'CAE'
      Required = True
      Size = 50
    end
    object CDSCompraCabCAE_VENCIMIENTO: TSQLTimeStampField
      FieldName = 'CAE_VENCIMIENTO'
    end
    object CDSCompraCabFACTURA_ELECTRONICA: TStringField
      FieldName = 'FACTURA_ELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraCabMUESTRACODIGOAFIP: TStringField
      FieldName = 'MUESTRACODIGOAFIP'
      ProviderFlags = []
      Size = 3
    end
    object CDSCompraCabMUESTRAINSCRIPCIONIVA: TStringField
      FieldName = 'MUESTRAINSCRIPCIONIVA'
      ProviderFlags = []
      Size = 15
    end
    object CDSCompraCabNRO_IIBB_RECEP: TStringField
      FieldName = 'NRO_IIBB_RECEP'
    end
    object CDSCompraCabRETENCION_IVA: TFloatField
      FieldName = 'RETENCION_IVA'
      Required = True
    end
    object CDSCompraCabTIPO_LIQUIDACION: TStringField
      FieldName = 'TIPO_LIQUIDACION'
      FixedChar = True
      Size = 1
    end
    object CDSCompraCabDSCTO_CALC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'DSCTO_CALC'
      ProviderFlags = []
    end
    object CDSCompraCabID_OBRA: TIntegerField
      FieldName = 'ID_OBRA'
      Required = True
    end
    object CDSCompraCabMUESTRAOBRA: TStringField
      FieldName = 'MUESTRAOBRA'
      ProviderFlags = []
      Size = 100
    end
    object CDSCompraCabNC_POR_DIFERENCIA: TStringField
      FieldName = 'NC_POR_DIFERENCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object CDSCompraDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPCompraDet'
    AfterInsert = CDSCompraDetAfterInsert
    BeforePost = CDSCompraDetBeforePost
    AfterPost = CDSCompraDetAfterPost
    BeforeDelete = CDSCompraDetBeforeDelete
    AfterDelete = CDSCompraDetAfterPost
    OnNewRecord = CDSCompraDetNewRecord
    Left = 104
    Top = 58
    object CDSCompraDetCodigoArticulo: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 50
      FieldName = 'CodigoArticulo'
      OnGetText = CDSCompraDetCodigoArticuloGetText
      OnSetText = CDSCompraDetCodigoArticuloSetText
      EditMask = 'cccccccccccccccccccccccccccccccccccccccccccccccccc;0; '
      Size = 8
    end
    object CDSCompraDetCANTIDAD: TFloatField
      DisplayLabel = 'Cant.'
      FieldName = 'CANTIDAD'
      Required = True
      OnSetText = CDSCompraDetCantidadSetText
    end
    object CDSCompraDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      OnSetText = CDSCompraDetIVA_TASASetText
    end
    object CDSCompraDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      OnSetText = CDSCompraDetDESCUENTOSetText
    end
    object CDSCompraDetTOTAL: TFloatField
      FieldName = 'TOTAL'
      OnSetText = CDSCompraDetTOTALSetText
    end
    object CDSCompraDetUNITARIO_IMP_INTERNO: TFloatField
      FieldName = 'UNITARIO_IMP_INTERNO'
      OnSetText = CDSCompraDetUNITARIO_IMP_INTERNOSetText
    end
    object CDSCompraDetUNIDADES_TOTAL: TFloatField
      FieldName = 'UNIDADES_TOTAL'
      OnSetText = CDSCompraDetUNIDADES_TOTALSetText
    end
    object CDSCompraDetID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSCompraDetID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Required = True
    end
    object CDSCompraDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSCompraDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSCompraDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSCompraDetCODIGOPROVEEDOR: TStringField
      FieldName = 'CODIGOPROVEEDOR'
      Required = True
      Size = 6
    end
    object CDSCompraDetRENGLON: TFloatField
      FieldName = 'RENGLON'
    end
    object CDSCompraDetFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
      Required = True
    end
    object CDSCompraDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSCompraDetDETALLE_ADICIONAL: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Size = 300
    end
    object CDSCompraDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object CDSCompraDetUNIDADES_EXENTO: TFloatField
      FieldName = 'UNIDADES_EXENTO'
    end
    object CDSCompraDetUNIDADES_GRAVADO: TFloatField
      FieldName = 'UNIDADES_GRAVADO'
    end
    object CDSCompraDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
    end
    object CDSCompraDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
    end
    object CDSCompraDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
    end
    object CDSCompraDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Required = True
    end
    object CDSCompraDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object CDSCompraDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
    end
    object CDSCompraDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
    end
    object CDSCompraDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
    end
    object CDSCompraDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
    end
    object CDSCompraDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object CDSCompraDetMARGEN: TFloatField
      FieldName = 'MARGEN'
    end
    object CDSCompraDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraDetCOSTO_IMP_INTERNO: TFloatField
      FieldName = 'COSTO_IMP_INTERNO'
    end
    object CDSCompraDetUNIDADES_IMP_INTERNOS: TFloatField
      FieldName = 'UNIDADES_IMP_INTERNOS'
    end
    object CDSCompraDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraDetID_RECEPCION_CAB: TIntegerField
      FieldName = 'ID_RECEPCION_CAB'
    end
    object CDSCompraDetID_RECEPCION_DET: TIntegerField
      FieldName = 'ID_RECEPCION_DET'
    end
    object CDSCompraDetNRORECEPCION: TStringField
      FieldName = 'NRORECEPCION'
      Size = 13
    end
    object CDSCompraDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object CDSCompraDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
    end
    object CDSCompraDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object CDSCompraDetCONTROL_TRAZABILIDAD: TStringField
      FieldName = 'CONTROL_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompraDetCANTIDAD_UNIDADES: TFloatField
      DisplayLabel = 'C.Unidad'
      FieldName = 'CANTIDAD_UNIDADES'
      Required = True
    end
    object CDSCompraDetPRESENTACION_CANT: TFloatField
      FieldName = 'PRESENTACION_CANT'
      Required = True
    end
    object CDSCompraDetTIPO_LIQUI: TIntegerField
      FieldName = 'TIPO_LIQUI'
    end
    object CDSCompraDetCODIGO_RAZA: TIntegerField
      FieldName = 'CODIGO_RAZA'
    end
    object CDSCompraDetDETALLE_RAZA: TStringField
      FieldName = 'DETALLE_RAZA'
      Size = 40
    end
    object CDSCompraDetTROPA: TIntegerField
      FieldName = 'TROPA'
    end
    object CDSCompraDetCABEZAS: TIntegerField
      FieldName = 'CABEZAS'
    end
    object CDSCompraDetMUESTRAMONEDA: TStringField
      FieldName = 'MUESTRAMONEDA'
      Size = 5
    end
    object CDSCompraDetMUESTRACODALTERNATIVO: TStringField
      FieldName = 'MUESTRACODALTERNATIVO'
    end
    object CDSCompraDetCANTIDAD_INVENTARIO: TFloatField
      DisplayLabel = 'Inven.'
      FieldName = 'CANTIDAD_INVENTARIO'
      Required = True
      DisplayFormat = ',0.000;-0.000;-'
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
    Left = 136
    Top = 454
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
    object CDSStockCOSTO_GRAVADO_STK: TFloatField
      FieldName = 'COSTO_GRAVADO_STK'
      Origin = 'COSTO_GRAVADO_STK'
      Required = True
    end
    object CDSStockCOSTO_IVA: TFloatField
      FieldName = 'COSTO_IVA'
      Origin = 'COSTO_IVA'
      Required = True
    end
    object CDSStockCOSTO_FINAL: TFloatField
      FieldName = 'COSTO_FINAL'
      Origin = 'COSTO_FINAL'
      Required = True
    end
    object CDSStockCOSTO_EXENTO_STK: TFloatField
      FieldName = 'COSTO_EXENTO_STK'
      Origin = 'COSTO_EXENTO_STK'
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
    object CDSStockFIJACION_PRECIO_IVA: TFloatField
      FieldName = 'FIJACION_PRECIO_IVA'
      Origin = 'FIJACION_PRECIO_IVA'
      Required = True
    end
    object CDSStockFIJACION_PRECIO_FINAL: TFloatField
      FieldName = 'FIJACION_PRECIO_FINAL'
      Origin = 'FIJACION_PRECIO_FINAL'
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
    object CDSStockCOMANDA: TStringField
      FieldName = 'COMANDA'
      Origin = 'COMANDA'
      FixedChar = True
      Size = 1
    end
    object CDSStockPORCENTAJE_SOBRECOSTO: TFloatField
      FieldName = 'PORCENTAJE_SOBRECOSTO'
      Origin = 'PORCENTAJE_SOBRECOSTO'
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
    object CDSStockADICIONAL_SOBRECOSTO: TFloatField
      FieldName = 'ADICIONAL_SOBRECOSTO'
      Origin = 'ADICIONAL_SOBRECOSTO'
      Required = True
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
    object CDSStockPRESENTACION_2_CANT: TFloatField
      FieldName = 'PRESENTACION_2_CANT'
      Origin = 'PRESENTACION_2_CANT'
      Required = True
    end
    object CDSStockTASA_MANUFACTURA: TStringField
      FieldName = 'TASA_MANUFACTURA'
      Origin = 'TASA_MANUFACTURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockPLU: TStringField
      FieldName = 'PLU'
      Origin = 'PLU'
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
    end
    object CDSStockTIPOADICIONAL: TStringField
      FieldName = 'TIPOADICIONAL'
      Origin = 'TIPOADICIONAL'
      Size = 10
    end
    object CDSStockLARGO_1: TFloatField
      FieldName = 'LARGO_1'
      Origin = 'LARGO_1'
      Required = True
    end
    object CDSStockLARGO_2: TFloatField
      FieldName = 'LARGO_2'
      Origin = 'LARGO_2'
      Required = True
    end
    object CDSStockLARGO_3: TFloatField
      FieldName = 'LARGO_3'
      Origin = 'LARGO_3'
      Required = True
    end
    object CDSStockROTURA_1: TFloatField
      FieldName = 'ROTURA_1'
      Origin = 'ROTURA_1'
      Required = True
    end
    object CDSStockROTURA_2: TFloatField
      FieldName = 'ROTURA_2'
      Origin = 'ROTURA_2'
      Required = True
    end
    object CDSStockCIMA: TFloatField
      FieldName = 'CIMA'
      Origin = 'CIMA'
      Required = True
    end
    object CDSStockBASE: TFloatField
      FieldName = 'BASE'
      Origin = 'BASE'
      Required = True
    end
    object CDSStockVOLUMEN: TFloatField
      FieldName = 'VOLUMEN'
      Origin = 'VOLUMEN'
      Required = True
    end
    object CDSStockPESO_CALCULADO: TFloatField
      FieldName = 'PESO_CALCULADO'
      Origin = 'PESO_CALCULADO'
      Required = True
    end
    object CDSStockPESO: TFloatField
      FieldName = 'PESO'
      Origin = 'PESO'
      Required = True
    end
    object CDSStockDIAMETRO_OLLA: TFloatField
      FieldName = 'DIAMETRO_OLLA'
      Origin = 'DIAMETRO_OLLA'
      Required = True
    end
    object CDSStockALTO_ACC: TFloatField
      FieldName = 'ALTO_ACC'
      Origin = 'ALTO_ACC'
      Required = True
    end
    object CDSStockMODO_IVA: TStringField
      FieldName = 'MODO_IVA'
      Origin = 'MODO_IVA'
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
      Required = True
      Size = 50
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
    object CDSProveedorSALDO_INICIAL: TFloatField
      FieldName = 'SALDO_INICIAL'
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
    object CDSProveedorMUESTRATASARETIIBB: TFloatField
      FieldName = 'MUESTRATASARETIIBB'
    end
    object CDSProveedorMUESTRAMINIMPONIRETIIBB: TFloatField
      FieldName = 'MUESTRAMINIMPONIRETIIBB'
    end
    object CDSProveedorID_FACTURACTDODEFECTO: TIntegerField
      FieldName = 'ID_FACTURACTDODEFECTO'
    end
  end
  object CDSDepositoStk: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo_Deposito'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Codigo_Stk'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPDepositoStk'
    Left = 104
    Top = 155
    object CDSDepositoStkID_DEPOSITO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_DEPOSITO'
    end
    object CDSDepositoStkCODIGO_DEPOSITO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO_DEPOSITO'
    end
    object CDSDepositoStkCODIGO_STK: TStringField
      DisplayWidth = 8
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object CDSDepositoStkSUCURSAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'SUCURSAL'
    end
    object CDSDepositoStkINICIAL: TFloatField
      DisplayWidth = 10
      FieldName = 'INICIAL'
    end
    object CDSDepositoStkMINIMO: TFloatField
      DisplayWidth = 10
      FieldName = 'MINIMO'
    end
    object CDSDepositoStkMEDIO: TFloatField
      DisplayWidth = 10
      FieldName = 'MEDIO'
    end
    object CDSDepositoStkFISICO: TFloatField
      DisplayWidth = 10
      FieldName = 'FISICO'
    end
    object CDSDepositoStkRECARGO: TFloatField
      DisplayWidth = 10
      FieldName = 'RECARGO'
    end
    object CDSDepositoStkFUAPRECIOS: TDateTimeField
      DisplayWidth = 18
      FieldName = 'FUAPRECIOS'
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
    Left = 456
    Top = 157
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
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPSucursal'
    Left = 104
    Top = 212
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
    Left = 104
    Top = 104
    object CDSImpuestosID_IMPUESTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_IMPUESTO'
    end
    object CDSImpuestosCODIGO_GRAVAMEN: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO_GRAVAMEN'
    end
    object CDSImpuestosDETALLE: TStringField
      DisplayWidth = 20
      FieldName = 'DETALLE'
    end
    object CDSImpuestosID_FCCOMPCAB: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_FCCOMPCAB'
    end
    object CDSImpuestosNETO: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'NETO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSImpuestosTASA: TFloatField
      FieldName = 'TASA'
    end
    object CDSImpuestosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      OnSetText = CDSImpuestosIMPORTESetText
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
    BeforePost = CDSPercepcionIVABeforePost
    AfterDelete = CDSPercepcionIVAAfterDelete
    OnNewRecord = CDSPercepcionIVANewRecord
    Left = 456
    Top = 208
    object CDSPercepcionIVAID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPercepcionIVACODIGOREGIMEN: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGOREGIMEN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSPercepcionIVACODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Required = True
    end
    object CDSPercepcionIVADETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSPercepcionIVAID_FCCOMPCAB: TIntegerField
      FieldName = 'ID_FCCOMPCAB'
      Required = True
    end
    object CDSPercepcionIVANETO: TFloatField
      FieldName = 'NETO'
    end
    object CDSPercepcionIVAIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      OnSetText = CDSPercepcionIVAIMPORTESetText
    end
    object CDSPercepcionIVATASA: TFloatField
      FieldName = 'TASA'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
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
    BeforePost = CDSPercepcionIBBeforePost
    AfterDelete = CDSPercepcionIBAfterDelete
    OnNewRecord = CDSPercepcionIBNewRecord
    Left = 456
    Top = 272
    object CDSPercepcionIBID_PERCEPCION: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSPercepcionIBCODIGO_PERCEPCION: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSPercepcionIBDETALLE: TStringField
      DisplayWidth = 20
      FieldName = 'DETALLE'
    end
    object CDSPercepcionIBID_FCCOMPCAB: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_FCCOMPCAB'
    end
    object CDSPercepcionIBJURIDICION: TIntegerField
      DisplayWidth = 10
      FieldName = 'JURIDICION'
    end
    object CDSPercepcionIBNETO: TFloatField
      FieldName = 'NETO'
    end
    object CDSPercepcionIBTASA: TFloatField
      FieldName = 'TASA'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSPercepcionIBIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      OnSetText = CDSPercepcionIBIMPORTESetText
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
    Left = 456
    Top = 59
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
  object DSDepositoStk: TDataSource
    DataSet = CDSDepositoStk
    Left = 184
    Top = 165
  end
  object DSImpuestos: TDataSource
    DataSet = CDSImpuestos
    Left = 184
    Top = 112
  end
  object DSPercepcionIVA: TDataSource
    DataSet = CDSPercepcionIVA
    Left = 564
    Top = 208
  end
  object DSPercepcionIB: TDataSource
    DataSet = CDSPercepcionIB
    Left = 540
    Top = 264
  end
  object QMonedas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from monedas where id=:id')
    Left = 742
    Top = 18
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
  object QVerifiComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select NroCpbte from fccompcab '
      'where nrocpbte   = :Nro and '
      '      clasecpbte = :clase and '
      '      tipocpbte  = :tipo and '
      '      codigo     = :codigo')
    Left = 632
    Top = 552
    ParamData = <
      item
        Name = 'Nro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'clase'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      'id_comprobante=:id  and (tipo_comprob='#39'FO'#39') and compra_venta='#39'C'#39
      'and sucursal=:suc')
    Left = 264
    Top = 424
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
    object QComprobNOMBREIMPRESORA: TStringField
      DisplayWidth = 15
      FieldName = 'NOMBREIMPRESORA'
      Origin = 'DBMAIN.COMPROBANTES.NOMBREIMPRESORA'
      Size = 15
    end
    object QComprobCAJA_DEFECTO: TIntegerField
      FieldName = 'CAJA_DEFECTO'
      Required = True
    end
  end
  object QBuscaComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from comprobantes where sucursal=:suc and compra_venta=' +
        #39'C'#39' and'
      '(tipo_comprob='#39'FO'#39')')
    Left = 236
    Top = 495
    ParamData = <
      item
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPBuscaComprob: TDataSetProvider
    DataSet = QBuscaComprob
    Options = [poAllowCommandText]
    Left = 344
    Top = 480
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
    Left = 456
    Top = 480
    object CDSBuscaComprobTIPO_COMPROB: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tp'
      DisplayWidth = 6
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 4
    end
    object CDSBuscaComprobCLASE_COMPROB: TStringField
      Alignment = taCenter
      DisplayLabel = 'Cl'
      DisplayWidth = 6
      FieldName = 'CLASE_COMPROB'
      Required = True
      Size = 4
    end
    object CDSBuscaComprobDENOMINACION: TStringField
      DisplayLabel = 'Compropbante'
      DisplayWidth = 25
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object CDSBuscaComprobLETRA: TStringField
      Alignment = taCenter
      DisplayLabel = 'Letra'
      DisplayWidth = 4
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobPREFIJO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Suc.'
      DisplayWidth = 5
      FieldName = 'PREFIJO'
      Size = 4
    end
    object CDSBuscaComprobNUMERO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Numero'
      DisplayWidth = 6
      FieldName = 'NUMERO'
      Size = 8
    end
    object CDSBuscaComprobSUCURSAL: TIntegerField
      DisplayLabel = 'Sucursal'
      DisplayWidth = 4
      FieldName = 'SUCURSAL'
    end
    object CDSBuscaComprobCODIGO_AFIP: TStringField
      DisplayLabel = 'Afip'
      DisplayWidth = 3
      FieldName = 'CODIGO_AFIP'
      Size = 2
    end
    object CDSBuscaComprobID_COMPROBANTE: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSBuscaComprobNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
      Visible = False
    end
    object CDSBuscaComprobAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobCOPIAS: TIntegerField
      FieldName = 'COPIAS'
      Visible = False
    end
    object CDSBuscaComprobREPORTE: TStringField
      FieldName = 'REPORTE'
      Visible = False
      Size = 100
    end
    object CDSBuscaComprobIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobFISCAL: TStringField
      FieldName = 'FISCAL'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Visible = False
      Size = 15
    end
    object CDSBuscaComprobPENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Required = True
      Visible = False
    end
    object CDSBuscaComprobCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobFACTURAELECTRONICA: TStringField
      FieldName = 'FACTURAELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobEN_USO: TStringField
      FieldName = 'EN_USO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QNroSerie: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,'
      'ss.fechaegreso from stock_series ss'
      'where ss.codigo_stk=:codigo and ss.codigoserie=:CodigoSerie')
    Left = 712
    Top = 328
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
  object QFormaPago: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from FormaPago where id_Tpago=1'
      'order by id_fpago')
    Left = 600
    Top = 464
    object QFormaPagoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object QFormaPagoID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Required = True
    end
    object QFormaPagoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
    object QFormaPagoCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Required = True
    end
    object QFormaPagoSIGNO: TStringField
      FieldName = 'SIGNO'
      Size = 5
    end
    object QFormaPagoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
  end
  object spInformaCambioPrecio: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'INGRESA_HISTORIAL_PRECIOS'
    Left = 624
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
        DataType = ftTimeStamp
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
  object spCambiaPrecio: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CAMBIO_DE_PRECIOS_2'
    Left = 621
    Top = 74
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
        Name = 'FPEXENTO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'FPGRAVADO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'COSTOEXENTO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'COSTOGRAVADO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'ID_LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'RECARGO'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'FECHA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'DETALLE'
        DataType = ftString
        ParamType = ptInput
        Size = 45
      end>
  end
  object QStockArticulo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.codigo_stk,s.actualizacosto,s.fijacion_precio_gravado,'
      '       s.fijacion_precio_exento, s.costo_gravado_stk,'
      '       s.costo_exento_stk, s.moneda,s.detalle_stk,'
      
        '       m.cotizacion as Moneda_cotizacion,m.signo as Moneda_signo' +
        ','
      '       m.moneda as Moneda_Detalle,'
      '       s.modo_gravamen,'
      
        '       (select sum(dpk.fisico) from depositostk dpk where dpk.co' +
        'digo_stk=s.codigo_stk) as Fisico'
      'from stock s'
      '  left join monedas m on m.id=s.moneda'
      'where s.codigo_stk = :codigo')
    Left = 719
    Top = 453
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QStockArticuloCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object QStockArticuloACTUALIZACOSTO: TStringField
      FieldName = 'ACTUALIZACOSTO'
      FixedChar = True
      Size = 1
    end
    object QStockArticuloFIJACION_PRECIO_GRAVADO: TFloatField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Required = True
    end
    object QStockArticuloFIJACION_PRECIO_EXENTO: TFloatField
      FieldName = 'FIJACION_PRECIO_EXENTO'
      Required = True
    end
    object QStockArticuloCOSTO_GRAVADO_STK: TFloatField
      FieldName = 'COSTO_GRAVADO_STK'
      Required = True
    end
    object QStockArticuloCOSTO_EXENTO_STK: TFloatField
      FieldName = 'COSTO_EXENTO_STK'
      Required = True
    end
    object QStockArticuloMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QStockArticuloDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object QStockArticuloMONEDA_COTIZACION: TFloatField
      FieldName = 'MONEDA_COTIZACION'
    end
    object QStockArticuloMONEDA_SIGNO: TStringField
      FieldName = 'MONEDA_SIGNO'
      Size = 5
    end
    object QStockArticuloMONEDA_DETALLE: TStringField
      FieldName = 'MONEDA_DETALLE'
      Size = 15
    end
    object QStockArticuloMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
    end
    object QStockArticuloFISICO: TFloatField
      FieldName = 'FISICO'
    end
  end
  object QVerificaNro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select NroCpbte,id_fc,TipoCpbte,ClaseCpbte from fccompcab where'
      'nrocpbte   = :Nro and '
      'codigo     = :codigo and '
      'TipoCpbte  = :Tipo and'
      '(ClaseCpbte = :Clase or :Clase = '#39'**'#39' )')
    Left = 735
    Top = 551
    ParamData = <
      item
        Name = 'Nro'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'CLASE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
    object QVerificaNroNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QVerificaNroID_FC: TIntegerField
      FieldName = 'ID_FC'
      Required = True
    end
    object QVerificaNroTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QVerificaNroCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 2
    end
  end
  object spReHaceMov: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'REHACE_MOV_CCCOMPRA'
    Left = 624
    Top = 344
    ParamData = <
      item
        Name = 'CPBTE_ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'CPBTE_TIPO'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end
      item
        Name = 'CPBTE_CLASE'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end>
  end
  object QStockFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.* from  stock s where s.codigo_stk=:codigo')
    Left = 16
    Top = 456
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QActualizaDetalleStk: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update stock s set s.detalle_stk=:detalle where s.codigo_stk=:co' +
        'digo')
    Left = 744
    Top = 200
    ParamData = <
      item
        Name = 'DETALLE'
        DataType = ftString
        ParamType = ptInput
        Size = 45
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
  end
end
