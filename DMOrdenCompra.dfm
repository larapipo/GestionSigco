object DatosOrdenCompra: TDatosOrdenCompra
  OnDestroy = DataModuleDestroy
  Height = 767
  Width = 1112
  object DSPOrdenCompraCab: TDataSetProvider
    DataSet = DMMain_FD.QOrdenCompCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 36
    Top = 8
  end
  object DSPOrdenCompraDet: TDataSetProvider
    DataSet = DMMain_FD.QOrdenCompDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 36
    Top = 58
  end
  object DSPProveedor: TDataSetProvider
    DataSet = DMMain_FD.QProveedores
    Options = []
    Left = 36
    Top = 384
  end
  object DSPBuscaCondCompra: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCondCompraProvee
    Options = []
    Left = 36
    Top = 246
  end
  object DSPStock: TDataSetProvider
    DataSet = DMMain_FD.QStock
    Options = []
    Left = 36
    Top = 198
  end
  object DSPIva: TDataSetProvider
    DataSet = DMMain_FD.QIva
    Options = []
    Left = 364
    Top = 61
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMMain_FD.QSucursal
    Options = []
    Left = 36
    Top = 340
  end
  object DSPImpuestos: TDataSetProvider
    DataSet = DMMain_FD.QOrdenCompImpuesto
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 36
    Top = 104
  end
  object DSPDeposito: TDataSetProvider
    DataSet = DMMain_FD.QDeposito
    Options = []
    Left = 356
    Top = 4
  end
  object IBGOrdenCompCab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_ORDENCOMPRACAB'
    SystemGenerators = False
    Left = 728
    Top = 320
  end
  object IBGOrdenCompDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_ORDENCOMPRADET'
    SystemGenerators = False
    Left = 736
    Top = 424
  end
  object IBGImpuestos: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_ORDENCOMPRAIMPUESTO'
    SystemGenerators = False
    Left = 736
    Top = 368
  end
  object DSPInscripcion: TDataSetProvider
    DataSet = DMMain_FD.QInscripcion
    Options = []
    Left = 352
    Top = 163
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = DMMain_FD.QEmpresa
    Options = []
    Left = 36
    Top = 427
  end
  object DSPOrdenCompraVtos: TDataSetProvider
    DataSet = DMMain_FD.QOrdenCompVtos
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 36
    Top = 154
  end
  object IBGOrdenCompVtos: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_ORDENCOMPRAVTOS'
    SystemGenerators = False
    Left = 736
    Top = 280
  end
  object DSTransportes: TDataSource
    DataSet = CDSTransportes
    Left = 568
    Top = 384
  end
  object DSImpuestos: TDataSource
    DataSet = CDSImpuestos
    Left = 248
    Top = 104
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
    Left = 440
    Top = 4
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
  object DSOrdenCompraDet: TDataSource
    DataSet = CDSOrdenCompraDet
    OnStateChange = DSOrdenCompraDetStateChange
    Left = 248
    Top = 58
  end
  object DSOrdenCompraVtos: TDataSource
    DataSet = CDSOrdenCompraVtos
    OnStateChange = DSOrdenCompraVtosStateChange
    Left = 248
    Top = 154
  end
  object CDSBuscaDeposito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaDeposito'
    Left = 128
    Top = 480
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
    Left = 36
    Top = 472
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = []
    Left = 552
    Top = 8
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 648
    Top = 8
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
  object CDSBuscaCondCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaCondCompra'
    Left = 136
    Top = 248
    object CDSBuscaCondCompraCODIGOPAGO: TIntegerField
      FieldName = 'CODIGOPAGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSBuscaCondCompraCODIGOPROVEE: TStringField
      FieldName = 'CODIGOPROVEE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 6
    end
    object CDSBuscaCondCompraDETALLE: TStringField
      FieldName = 'DETALLE'
      ProviderFlags = []
    end
    object CDSBuscaCondCompraDIAS: TIntegerField
      FieldName = 'DIAS'
      ProviderFlags = []
    end
    object CDSBuscaCondCompraDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object CDSBuscaCondCompraDESCUENTO_FPAGO: TFloatField
      FieldName = 'DESCUENTO_FPAGO'
    end
  end
  object DSPCondCompra: TDataSetProvider
    DataSet = DMMain_FD.QCondCompra
    Options = []
    Left = 36
    Top = 294
  end
  object CDSCondCompra: TClientDataSet
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
    ProviderName = 'DSPCondCompra'
    Left = 128
    Top = 296
    object CDSCondCompraCODIGOPROVEE: TStringField
      FieldName = 'CODIGOPROVEE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSCondCompraCODIGOPAGO: TIntegerField
      FieldName = 'CODIGOPAGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCondCompraDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object CDSCondCompraDETALLE: TStringField
      FieldName = 'DETALLE'
      ProviderFlags = []
      Required = True
    end
    object CDSCondCompraDIAS: TIntegerField
      FieldName = 'DIAS'
      ProviderFlags = []
    end
    object CDSCondCompraDESCUENTO_FPAGO: TFloatField
      FieldName = 'DESCUENTO_FPAGO'
      ProviderFlags = []
    end
  end
  object DSPPersonal: TDataSetProvider
    DataSet = DMMain_FD.QPersonal
    Options = []
    Left = 568
    Top = 64
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
    Left = 648
    Top = 64
    object CDSPersonalNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object CDSPersonalCOMISION: TFloatField
      FieldName = 'COMISION'
      Required = True
    end
    object CDSPersonalCARGO: TIntegerField
      FieldName = 'CARGO'
    end
    object CDSPersonalCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object CDSPersonalAUTORIZAOC: TStringField
      FieldName = 'AUTORIZAOC'
      Size = 1
    end
    object CDSPersonalSECTORDECOMPRA: TStringField
      FieldName = 'SECTORDECOMPRA'
      Size = 1
    end
  end
  object DSPBuscaVendedor: TDataSetProvider
    DataSet = DMBuscadores.QBuscaVendedores
    Options = []
    Left = 360
    Top = 110
  end
  object CDSBuscaVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaVendedor'
    Left = 448
    Top = 118
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
  object CDSOrdenCompCab: TClientDataSet
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
    ProviderName = 'DSPOrdenCompraCab'
    BeforeEdit = CDSOrdenCompCabBeforeEdit
    BeforePost = CDSOrdenCompCabBeforePost
    OnNewRecord = CDSOrdenCompCabNewRecord
    Left = 128
    Top = 8
    object CDSOrdenCompCabID_OC: TIntegerField
      FieldName = 'ID_OC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOrdenCompCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 2
    end
    object CDSOrdenCompCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSOrdenCompCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSOrdenCompCabCODIGO: TStringField
      FieldName = 'CODIGO'
      OnSetText = CDSOrdenCompCabCODIGOSetText
      Size = 6
    end
    object CDSOrdenCompCabLETRA: TStringField
      FieldName = 'LETRA'
      Size = 1
    end
    object CDSOrdenCompCabSUC: TStringField
      FieldName = 'SUC'
      OnSetText = CDSOrdenCompCabSUCSetText
      Size = 4
    end
    object CDSOrdenCompCabNUMERO: TStringField
      FieldName = 'NUMERO'
      OnSetText = CDSOrdenCompCabNUMEROSetText
      Size = 8
    end
    object CDSOrdenCompCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSOrdenCompCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSOrdenCompCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSOrdenCompCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSOrdenCompCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSOrdenCompCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object CDSOrdenCompCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSOrdenCompCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      OnSetText = CDSOrdenCompCabFECHASetText
    end
    object CDSOrdenCompCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object CDSOrdenCompCabCONDICIONCOMPRA: TIntegerField
      FieldName = 'CONDICIONCOMPRA'
      OnSetText = CDSOrdenCompCabCONDICIONCOMPRASetText
    end
    object CDSOrdenCompCabANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object CDSOrdenCompCabN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
    end
    object CDSOrdenCompCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSOrdenCompCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSOrdenCompCabDSTO: TFloatField
      FieldName = 'DSTO'
      OnSetText = CDSOrdenCompCabDSTOSetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSOrdenCompCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSOrdenCompCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSOrdenCompCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSOrdenCompCabIMPORTEEXCLUIDO1: TFloatField
      FieldName = 'IMPORTEEXCLUIDO1'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSOrdenCompCabIMPORTEEXCLUIDO2: TFloatField
      FieldName = 'IMPORTEEXCLUIDO2'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSOrdenCompCabNETOMONOTRIBUTO1: TFloatField
      FieldName = 'NETOMONOTRIBUTO1'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSOrdenCompCabNETOMONOTRIBUTO2: TFloatField
      FieldName = 'NETOMONOTRIBUTO2'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSOrdenCompCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSOrdenCompCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object CDSOrdenCompCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      OnSetText = CDSOrdenCompCabSUCURSALSetText
    end
    object CDSOrdenCompCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      OnSetText = CDSOrdenCompCabDEPOSITOSetText
    end
    object CDSOrdenCompCabAUTORIZO: TStringField
      FieldName = 'AUTORIZO'
      OnSetText = CDSOrdenCompCabAUTORIZOSetText
      Size = 6
    end
    object CDSOrdenCompCabREALIZO: TStringField
      FieldName = 'REALIZO'
      OnSetText = CDSOrdenCompCabREALIZOSetText
      Size = 6
    end
    object CDSOrdenCompCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object CDSOrdenCompCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Size = 1
    end
    object CDSOrdenCompCabESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object CDSOrdenCompCabFECHAAUTORIZACION: TSQLTimeStampField
      FieldName = 'FECHAAUTORIZACION'
    end
    object CDSOrdenCompCabFECHACUMPLIDA: TSQLTimeStampField
      FieldName = 'FECHACUMPLIDA'
    end
    object CDSOrdenCompCabOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object CDSOrdenCompCabNOTAS: TStringField
      FieldName = 'NOTAS'
      Size = 200
    end
    object CDSOrdenCompCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSOrdenCompCabTRANSPORTE: TIntegerField
      FieldName = 'TRANSPORTE'
    end
    object CDSOrdenCompCabTIPO: TSmallintField
      FieldName = 'TIPO'
      Required = True
    end
    object CDSOrdenCompCabTIPO_PROVEEDOR: TStringField
      FieldName = 'TIPO_PROVEEDOR'
      FixedChar = True
      Size = 1
    end
    object CDSOrdenCompCabID_PRESUPUESTO_OC: TIntegerField
      FieldName = 'ID_PRESUPUESTO_OC'
    end
    object CDSOrdenCompCabTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
      Size = 25
    end
    object CDSOrdenCompCabMUESTRACONDCOMPRA: TStringField
      FieldName = 'MUESTRACONDCOMPRA'
      ProviderFlags = []
    end
    object CDSOrdenCompCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
    object CDSOrdenCompCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSOrdenCompCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object CDSOrdenCompCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
      OnSetText = CDSOrdenCompCabID_TIPOCOMPROBANTESetText
    end
    object CDSOrdenCompCabMUESTRAREALIZO: TStringField
      FieldName = 'MUESTRAREALIZO'
      ProviderFlags = []
      Size = 50
    end
    object CDSOrdenCompCabMUESTRAAUTORIZO: TStringField
      FieldName = 'MUESTRAAUTORIZO'
      ProviderFlags = []
      Size = 50
    end
    object CDSOrdenCompCabMUESTRANUMEROPRESOC: TStringField
      FieldName = 'MUESTRANUMEROPRESOC'
      ProviderFlags = []
      Size = 8
    end
    object CDSOrdenCompCabMUESTRAID_PRESOC: TIntegerField
      FieldName = 'MUESTRAID_PRESOC'
      ProviderFlags = []
    end
    object CDSOrdenCompCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object CDSOrdenCompCabID_OCOMPRA_PREV: TIntegerField
      FieldName = 'ID_OCOMPRA_PREV'
      Required = True
    end
    object CDSOrdenCompCabNRO_OC_ANTERIOR: TStringField
      FieldName = 'NRO_OC_ANTERIOR'
      EditMask = 'a-0000-00000000;0;_'
      Size = 13
    end
    object CDSOrdenCompCabID_OCOMPRA_NEXT: TIntegerField
      FieldName = 'ID_OCOMPRA_NEXT'
      Required = True
    end
    object CDSOrdenCompCabNRO_OC_SIGUIEN: TStringField
      FieldName = 'NRO_OC_SIGUIEN'
      EditMask = 'a-0000-00000000;0;_'
      Size = 13
    end
    object CDSOrdenCompCabMUESTRACORREO: TStringField
      FieldName = 'MUESTRACORREO'
      ProviderFlags = []
      Size = 100
    end
  end
  object CDSOrdenCompraDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPOrdenCompraDet'
    BeforeInsert = CDSOrdenCompraDetBeforeInsert
    BeforePost = CDSOrdenCompraDetBeforePost
    AfterPost = CDSOrdenCompraDetAfterPost
    AfterDelete = CDSOrdenCompraDetAfterPost
    AfterScroll = CDSOrdenCompraDetAfterScroll
    OnCalcFields = CDSOrdenCompraDetCalcFields
    OnNewRecord = CDSOrdenCompraDetNewRecord
    Left = 128
    Top = 56
    object CDSOrdenCompraDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOrdenCompraDetID_CABOC: TIntegerField
      FieldName = 'ID_CABOC'
      Origin = 'ID_CABOC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSOrdenCompraDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSOrdenCompraDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSOrdenCompraDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSOrdenCompraDetRENGLON: TFloatField
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
    end
    object CDSOrdenCompraDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSOrdenCompraDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      OnGetText = CDSOrdenCompraDetCODIGOARTICULOGetText
      OnSetText = CDSOrdenCompraDetCODIGOARTICULOSetText
      Size = 8
    end
    object CDSOrdenCompraDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSOrdenCompraDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object CDSOrdenCompraDetCANTIDADPEDIDA: TFloatField
      FieldName = 'CANTIDADPEDIDA'
      Origin = 'CANTIDADPEDIDA'
      OnSetText = CDSOrdenCompraDetCANTIDADPEDIDASetText
    end
    object CDSOrdenCompraDetCANTIDADAUTORIZADA: TFloatField
      FieldName = 'CANTIDADAUTORIZADA'
      Origin = 'CANTIDADAUTORIZADA'
      OnSetText = CDSOrdenCompraDetCANTIDADAUTORIZADASetText
    end
    object CDSOrdenCompraDetCANTIDADRECIBIDA: TFloatField
      FieldName = 'CANTIDADRECIBIDA'
      Origin = 'CANTIDADRECIBIDA'
      OnSetText = CDSOrdenCompraDetCANTIDADRECIBIDASetText
    end
    object CDSOrdenCompraDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
      OnSetText = CDSOrdenCompraDetUNITARIO_TOTALSetText
    end
    object CDSOrdenCompraDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
    end
    object CDSOrdenCompraDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
    end
    object CDSOrdenCompraDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Size = 1
    end
    object CDSOrdenCompraDetIVA_TASA: TFloatField
      DisplayLabel = '%'
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
      DisplayFormat = '0.00'
    end
    object CDSOrdenCompraDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Origin = 'TIPOIVA_TASA'
    end
    object CDSOrdenCompraDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
      Origin = 'IVA_SOBRETASA'
    end
    object CDSOrdenCompraDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Origin = 'TIPOIVA_SOBRETASA'
    end
    object CDSOrdenCompraDetSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSOrdenCompraDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object CDSOrdenCompraDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object CDSOrdenCompraDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Size = 1
    end
    object CDSOrdenCompraDetTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.000'
    end
    object CDSOrdenCompraDetID_COMP_REC: TIntegerField
      FieldName = 'ID_COMP_REC'
      Origin = 'ID_COMP_REC'
      Required = True
    end
    object CDSOrdenCompraDetTIPO_COMP_REC: TStringField
      FieldName = 'TIPO_COMP_REC'
      Origin = 'TIPO_COMP_REC'
      Size = 2
    end
    object CDSOrdenCompraDetCLASE_COMP_REC: TStringField
      FieldName = 'CLASE_COMP_REC'
      Origin = 'CLASE_COMP_REC'
      Size = 2
    end
    object CDSOrdenCompraDetNRO_COMP_REC: TStringField
      FieldName = 'NRO_COMP_REC'
      Origin = 'NRO_COMP_REC'
      Size = 13
    end
    object CDSOrdenCompraDetMUESTRAPRESCANT: TFloatField
      FieldName = 'MUESTRAPRESCANT'
      Origin = 'PRESENTACION_CANTIDAD'
      ProviderFlags = []
    end
    object CDSOrdenCompraDetMUESTRAPRESUNI: TStringField
      FieldName = 'MUESTRAPRESUNI'
      Origin = 'PRESENTACION_UNIDAD'
      ProviderFlags = []
      Size = 3
    end
    object CDSOrdenCompraDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
    end
    object CDSOrdenCompraDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
    end
    object CDSOrdenCompraDetMUESTRAMONEDA: TStringField
      FieldName = 'MUESTRAMONEDA'
      Origin = 'SIGNO'
      ProviderFlags = []
      Size = 5
    end
    object CDSOrdenCompraDetMUESTRACODALTERNATIVO: TStringField
      FieldName = 'MUESTRACODALTERNATIVO'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
    end
    object CDSOrdenCompraDetDETALLE_ADICIONAL: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Origin = 'DETALLE_ADICIONAL'
      Size = 300
    end
    object CDSOrdenCompraDetID_DET_NOTAPEDIDO: TIntegerField
      FieldName = 'ID_DET_NOTAPEDIDO'
      Required = True
    end
    object CDSOrdenCompraDetMUESTRAPRECIOVTA: TFloatField
      FieldName = 'MUESTRAPRECIOVTA'
      ProviderFlags = []
    end
    object CDSOrdenCompraDetCANTIDAD: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CANTIDAD'
      ProviderFlags = []
    end
    object CDSOrdenCompraDetMUESTRACODIGOBARRA: TStringField
      FieldName = 'MUESTRACODIGOBARRA'
      ProviderFlags = []
      Size = 50
    end
    object CDSOrdenCompraDetMUESTRACODARTIPROVEE: TStringField
      FieldName = 'MUESTRACODARTIPROVEE'
      ProviderFlags = []
      Size = 15
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
    Left = 128
    Top = 200
    object CDSStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    Left = 128
    Top = 344
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
  object QVerifiComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select NroCpbte from fccompcab where'
      
        'nrocpbte=:Nro and clasecpbte=:clase and tipocpbte=:tipo and codi' +
        'go=:codigo')
    Left = 720
    Top = 128
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
  object CDSProveedor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPProveedor'
    Left = 128
    Top = 392
    object CDSProveedorCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    Left = 440
    Top = 61
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
    Left = 136
    Top = 104
    object CDSImpuestosID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSImpuestosCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      Required = True
    end
    object CDSImpuestosDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSImpuestosID_OCCAB: TIntegerField
      FieldName = 'ID_OCCAB'
      Required = True
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
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    Left = 128
    Top = 435
  end
  object QSumaOCNuevas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select sum(o.total) from ordencompracab o where o.fecha between ' +
        ':desde and :hasta and o.estado in ('#39'N'#39')')
    Left = 248
    Top = 216
    ParamData = <
      item
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object QSumaOC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select sum(o.total) from ordencompracab o where o.fecha between ' +
        ':desde and :hasta and o.estado in ('#39'A'#39', '#39'R'#39')')
    Left = 360
    Top = 216
    ParamData = <
      item
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object CDSOrdenCompraVtos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPOrdenCompraVtos'
    AfterDelete = CDSOrdenCompraVtosAfterDelete
    OnNewRecord = CDSOrdenCompraVtosNewRecord
    Left = 128
    Top = 154
    object CDSOrdenCompraVtosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOrdenCompraVtosID_OCCAB: TIntegerField
      FieldName = 'ID_OCCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOrdenCompraVtosDIAS: TSmallintField
      FieldName = 'DIAS'
      Required = True
      OnSetText = CDSOrdenCompraVtosDIASSetText
    end
    object CDSOrdenCompraVtosFECHA_VENCIMIEMTO: TSQLTimeStampField
      FieldName = 'FECHA_VENCIMIEMTO'
      Required = True
    end
    object CDSOrdenCompraVtosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Required = True
    end
  end
  object QPrimerConComp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select Min(codigopago) from condcompra where codigoprovee=:codig' +
        'o')
    Left = 608
    Top = 256
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
    Left = 440
    Top = 168
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
  object QSumaTotal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select sum(o.total) from ordencompracab o where o.fecha between ' +
        ':desde and :hasta and o.estado in ('#39'A'#39', '#39'R'#39','#39'N'#39')')
    Left = 720
    Top = 184
    ParamData = <
      item
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object QComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      'id_comprobante=:id  and (tipo_comprob='#39'OC'#39' )'
      'and compra_venta='#39'C'#39' and sucursal=:suc')
    Left = 448
    Top = 288
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
  object QBuscaCompr: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from comprobantes where sucursal=:suc and compra_venta=' +
        #39'C'#39' and'
      '(tipo_comprob='#39'OC'#39' )')
    Left = 232
    Top = 288
    ParamData = <
      item
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
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
    Left = 368
    Top = 288
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
  object DSPBuscaComprob: TDataSetProvider
    DataSet = QBuscaCompr
    Options = []
    Left = 312
    Top = 288
  end
  object CDSTransportes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTransportes'
    Left = 568
    Top = 336
    object CDSTransportesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSTransportesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSTransportesDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 50
    end
    object CDSTransportesTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 30
    end
    object CDSTransportesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 50
    end
  end
  object DSPTransportes: TDataSetProvider
    DataSet = QTransport
    Options = []
    Left = 488
    Top = 336
  end
  object QTransport: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from transportes order by nombre')
    Left = 488
    Top = 384
  end
  object QDarCumplidaOC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update ordencompracab oc set oc.estado='#39'R'#39','
      '                             oc.ID_OCOMPRA_NEXT = :next_id,'
      
        '                             oc.NRO_OC_SIGUIEN  = :next_nro wher' +
        'e oc.id_oc=:id')
    Left = 260
    Top = 450
    ParamData = <
      item
        Name = 'next_id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'next_nro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object CDSBuscaAutoriza: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaAutoriza'
    Left = 472
    Top = 448
    object CDSBuscaAutorizaNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 35
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSBuscaAutorizaCODIGO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSBuscaAutorizaCOMISION: TFloatField
      FieldName = 'COMISION'
      Required = True
      Visible = False
    end
    object CDSBuscaAutorizaMAX_OC_AUTORIZAR: TFloatField
      FieldName = 'MAX_OC_AUTORIZAR'
      Required = True
      Visible = False
    end
  end
  object DSPBuscaAutoriza: TDataSetProvider
    DataSet = DMBuscadores.QBuscaAutorizanOC
    Options = []
    Left = 376
    Top = 448
  end
  object QMonedas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from monedas where id=:id')
    Left = 726
    Top = 67
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
      'where s.codigo_stk = :codigo'
      '')
    Left = 511
    Top = 245
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
  object spCambiaPrecio: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CAMBIO_DE_PRECIOS_2'
    Left = 672
    Top = 544
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
  object spInformaCambioPrecio: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'INGRESA_HISTORIAL_PRECIOS'
    Left = 668
    Top = 493
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
  object CDSOCDetXML: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 136
    Top = 552
  end
  object CDSOCCabXML: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 544
  end
  object QAutorizarOC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update ordencompracab oc set oc.estado='#39'A'#39','
      '                             oc.autorizo = :Autorizo,'
      '                             oc.fechaautorizacion  = :fecha'
      'where oc.id_oc=:id'
      '')
    Left = 196
    Top = 450
    ParamData = <
      item
        Name = 'Autorizo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'fecha'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QPrimerComprador: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select min(p.codigo) from personal p'
      'where p.sectordecompra='#39'S'#39)
    Left = 568
    Top = 440
  end
  object QRecepciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select r.id_recmer,r.tipocpbte,r.clasecpbte,r.nrocpbte,r.fechare' +
        'cepcion from recepmercacab r'
      'where r.id_ordencompra= :id_ordencompr')
    Left = 248
    Top = 520
    ParamData = <
      item
        Name = 'id_ordencompr'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QFacturaComp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select fo.id_fc,fc.tipocpbte,fc.clasecpbte,fc.nrocpbte,fc.fechac' +
        'ompra from fccomp_ordencompra fo'
      'left join fccompcab fc on fc.id_fc=fo.id_fc'
      'where fo.id_oc=:id_ordencompra'
      '')
    Left = 248
    Top = 576
    ParamData = <
      item
        Name = 'id_ordencompra'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPRecepciones: TDataSetProvider
    DataSet = QRecepciones
    Options = []
    Left = 344
    Top = 520
  end
  object CDSRecepciones: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_ordencompr'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRecepciones'
    Left = 424
    Top = 528
    object CDSRecepcionesID_RECMER: TIntegerField
      FieldName = 'ID_RECMER'
      Required = True
      Visible = False
    end
    object CDSRecepcionesTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Required = True
      Visible = False
      Size = 2
    end
    object CDSRecepcionesCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Required = True
      Visible = False
      Size = 2
    end
    object CDSRecepcionesNROCPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro.Cpbte'
      DisplayWidth = 25
      FieldName = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0;_'
      Size = 13
    end
    object CDSRecepcionesFECHARECEPCION: TSQLTimeStampField
      FieldName = 'FECHARECEPCION'
      Required = True
      Visible = False
    end
  end
  object DSPFacturaComp: TDataSetProvider
    DataSet = QFacturaComp
    Options = []
    Left = 336
    Top = 576
  end
  object CDSFacturaComp: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_ordencompra'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFacturaComp'
    Left = 416
    Top = 584
    object CDSFacturaCompID_FC: TIntegerField
      FieldName = 'ID_FC'
      Required = True
      Visible = False
    end
    object CDSFacturaCompTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Visible = False
      Size = 2
    end
    object CDSFacturaCompCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Visible = False
      Size = 2
    end
    object CDSFacturaCompNROCPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro.Cpbte'
      DisplayWidth = 25
      FieldName = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0;_'
      Size = 13
    end
    object CDSFacturaCompFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
      Visible = False
    end
  end
  object DSRecepciones: TDataSource
    DataSet = CDSRecepciones
    Left = 512
    Top = 528
  end
  object DSFacturaComp: TDataSource
    DataSet = CDSFacturaComp
    Left = 504
    Top = 592
  end
  object QCambiaFechaCumplida: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update ordencompracab oc set  oc.fechaCumplida  = :fecha'
      'where oc.id_oc=:id'
      '')
    Left = 220
    Top = 378
    ParamData = <
      item
        Name = 'fecha'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QRecibirOC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDate
        TargetDataType = dtDateTime
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end>
    SQL.Strings = (
      
        '  update ordencompracab oc set oc.estado='#39'R'#39',oc.fechacumplida=:f' +
        'echa Where oc.id_oc=:id;')
    Left = 600
    Top = 616
    ParamData = <
      item
        Name = 'FECHA'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QVolverAutorizada: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDate
        TargetDataType = dtDateTime
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end>
    SQL.Strings = (
      
        '  update ordencompracab oc set oc.estado=:estado,oc.fechacumplid' +
        'a= null Where oc.id_oc=:id')
    Left = 704
    Top = 632
    ParamData = <
      item
        Name = 'ESTADO'
        DataType = ftString
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QLimpiarBorradorOC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from borrador_ordencompra b where b.id_oc=:id_oc')
    Left = 496
    Top = 656
    ParamData = <
      item
        Position = 1
        Name = 'ID_OC'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
