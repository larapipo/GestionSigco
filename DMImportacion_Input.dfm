object DatosImportacionInput: TDatosImportacionInput
  OnDestroy = DataModuleDestroy
  Height = 637
  Width = 871
  object DSFcVtaCab: TDataSource
    DataSet = QFcVtaCab
    Left = 88
    Top = 32
  end
  object DSFCVtaDet: TDataSource
    DataSet = QFcVtaDet
    Left = 88
    Top = 80
  end
  object DSFcVtaImp: TDataSource
    DataSet = QFcVtaImp
    Left = 88
    Top = 128
  end
  object IBGFcVtaDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FC_VENTA_DET'
    SystemGenerators = False
    Left = 160
    Top = 80
  end
  object IBGFcVtaCab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FC_VENTA_CAB'
    SystemGenerators = False
    Left = 160
    Top = 32
  end
  object IBGImpuestos: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FC_VENTA_IMPUESTO'
    SystemGenerators = False
    Left = 160
    Top = 128
  end
  object DSFcVtaCabXML: TDataSource
    DataSet = CDSFcVtaCabXML
    Left = 150
    Top = 203
  end
  object DSFcVtaDetXML: TDataSource
    DataSet = CDSFcVtaDetXML
    Left = 150
    Top = 267
  end
  object DSFcVtaImpXML: TDataSource
    DataSet = CDSFcVtaImpXML
    Left = 150
    Top = 331
  end
  object DSCajaMovXML: TDataSource
    DataSet = CDSCajaMovXML
    Left = 150
    Top = 387
  end
  object DSTCMovXML: TDataSource
    DataSet = CDSTCMovXML
    Left = 150
    Top = 435
  end
  object DSMovEfectivoXML: TDataSource
    DataSet = CDSMovEfectivoXML
    Left = 150
    Top = 491
  end
  object DSChe3XML: TDataSource
    DataSet = CDSChe3XML
    Left = 150
    Top = 547
  end
  object DSDepositos: TDataSource
    DataSet = QDepositos
    Left = 643
    Top = 173
  end
  object DSSuc: TDataSource
    DataSet = QBuscaSucursal
    Left = 544
    Top = 448
  end
  object QFcVtaCab: TFDQuery
    OnCalcFields = QFcVtaCabCalcFields
    OnNewRecord = QFcVtaCabNewRecord
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    SQL.Strings = (
      'select * from fcvtacab f where f.id_fc=:id ')
    Left = 16
    Top = 32
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QFcVtaCabID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFcVtaCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QFcVtaCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QFcVtaCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object QFcVtaCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QFcVtaCabLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Origin = 'SUCFAC'
      Size = 4
    end
    object QFcVtaCabNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Origin = 'NUMEROFAC'
      Size = 8
    end
    object QFcVtaCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QFcVtaCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QFcVtaCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object QFcVtaCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QFcVtaCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QFcVtaCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
      Required = True
    end
    object QFcVtaCabCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QFcVtaCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
      Origin = 'LISTAPRECIO'
    end
    object QFcVtaCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
      Origin = 'CONDICIONVTA'
      Required = True
    end
    object QFcVtaCabANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabNRORTO: TStringField
      FieldName = 'NRORTO'
      Origin = 'NRORTO'
      Size = 100
    end
    object QFcVtaCabN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
      Origin = 'N_OPERACION2'
    end
    object QFcVtaCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      Origin = 'NETOGRAV1'
      Required = True
    end
    object QFcVtaCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      Origin = 'NETOGRAV2'
      Required = True
    end
    object QFcVtaCabNETONOGRAV1: TFloatField
      FieldName = 'NETONOGRAV1'
      Origin = 'NETONOGRAV1'
      Required = True
    end
    object QFcVtaCabNETONOGRAV2: TFloatField
      FieldName = 'NETONOGRAV2'
      Origin = 'NETONOGRAV2'
      Required = True
    end
    object QFcVtaCabDSTO: TFloatField
      FieldName = 'DSTO'
      Origin = 'DSTO'
      Required = True
    end
    object QFcVtaCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      Origin = 'DSTOIMPORTE'
      Required = True
    end
    object QFcVtaCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      Origin = 'NETOEXEN1'
      Required = True
    end
    object QFcVtaCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      Origin = 'NETOEXEN2'
      Required = True
    end
    object QFcVtaCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
    end
    object QFcVtaCabDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
      Required = True
    end
    object QFcVtaCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Origin = 'IMPRESO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 60
    end
    object QFcVtaCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      Size = 60
    end
    object QFcVtaCabCPTE_MANUAL: TStringField
      FieldName = 'CPTE_MANUAL'
      Origin = 'CPTE_MANUAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QFcVtaCabFACTURANRO: TStringField
      FieldName = 'FACTURANRO'
      Origin = 'FACTURANRO'
      Size = 13
    end
    object QFcVtaCabZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object QFcVtaCabLDR: TIntegerField
      FieldName = 'LDR'
      Origin = 'LDR'
      Required = True
    end
    object QFcVtaCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QFcVtaCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabNROENTREGA: TIntegerField
      FieldName = 'NROENTREGA'
      Origin = 'NROENTREGA'
    end
    object QFcVtaCabINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Origin = 'INGRESA_A_CTACTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Origin = 'INGRESA_LIBRO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabTIPO_REMITO: TStringField
      FieldName = 'TIPO_REMITO'
      Origin = 'TIPO_REMITO'
      Size = 2
    end
    object QFcVtaCabIDREMITO: TIntegerField
      FieldName = 'IDREMITO'
      Origin = 'IDREMITO'
    end
    object QFcVtaCabREDUCIDA: TStringField
      FieldName = 'REDUCIDA'
      Origin = 'REDUCIDA'
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabCOMSIONVENDEDOR: TFloatField
      FieldName = 'COMSIONVENDEDOR'
      Origin = 'COMSIONVENDEDOR'
      Required = True
    end
    object QFcVtaCabLIQUIDADA: TStringField
      FieldName = 'LIQUIDADA'
      Origin = 'LIQUIDADA'
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabFECHA_LIQUIDACION: TSQLTimeStampField
      FieldName = 'FECHA_LIQUIDACION'
      Origin = 'FECHA_LIQUIDACION'
    end
    object QFcVtaCabVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object QFcVtaCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QFcVtaCabNC_CONTADO: TStringField
      FieldName = 'NC_CONTADO'
      Origin = 'NC_CONTADO'
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabCAJA_POR_DEFECTO: TIntegerField
      FieldName = 'CAJA_POR_DEFECTO'
      Origin = 'CAJA_POR_DEFECTO'
    end
    object QFcVtaCabNRO_Z: TIntegerField
      FieldName = 'NRO_Z'
      Origin = 'NRO_Z'
    end
    object QFcVtaCabVALORES_RECIBIDOS: TFloatField
      FieldName = 'VALORES_RECIBIDOS'
      Origin = 'VALORES_RECIBIDOS'
      Required = True
    end
    object QFcVtaCabPERCEPCION_IB_TASA: TFloatField
      FieldName = 'PERCEPCION_IB_TASA'
      Origin = 'PERCEPCION_IB_TASA'
      Required = True
    end
    object QFcVtaCabPERCEPCION_IB_IMPORTE: TFloatField
      FieldName = 'PERCEPCION_IB_IMPORTE'
      Origin = 'PERCEPCION_IB_IMPORTE'
      Required = True
    end
    object QFcVtaCabPERCIBE_IB: TStringField
      FieldName = 'PERCIBE_IB'
      Origin = 'PERCIBE_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField
      FieldName = 'PERCEPCION_IB_BASEIMPONIBLE'
      Origin = 'PERCEPCION_IB_BASEIMPONIBLE'
      Required = True
    end
    object QFcVtaCabRENGLONES: TSmallintField
      FieldName = 'RENGLONES'
      Origin = 'RENGLONES'
      Required = True
    end
    object QFcVtaCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QFcVtaCabNOTAPEDIDO_ID: TIntegerField
      FieldName = 'NOTAPEDIDO_ID'
      Origin = 'NOTAPEDIDO_ID'
    end
    object QFcVtaCabNOTAPEDIDO_NROCPBTE: TStringField
      FieldName = 'NOTAPEDIDO_NROCPBTE'
      Origin = 'NOTAPEDIDO_NROCPBTE'
      Size = 13
    end
    object QFcVtaCabID_FC_CLON: TIntegerField
      FieldName = 'ID_FC_CLON'
      Origin = 'ID_FC_CLON'
    end
    object QFcVtaCabPRESUPUESTO_ID: TIntegerField
      FieldName = 'PRESUPUESTO_ID'
      Origin = 'PRESUPUESTO_ID'
    end
    object QFcVtaCabPRESUPUESTO_NROCPBTE: TStringField
      FieldName = 'PRESUPUESTO_NROCPBTE'
      Origin = 'PRESUPUESTO_NROCPBTE'
      Size = 13
    end
    object QFcVtaCabMONEDA_CPBTE: TIntegerField
      FieldName = 'MONEDA_CPBTE'
      Origin = 'MONEDA_CPBTE'
    end
    object QFcVtaCabMONEDA_CPBTE_COTIZACION: TFloatField
      FieldName = 'MONEDA_CPBTE_COTIZACION'
      Origin = 'MONEDA_CPBTE_COTIZACION'
    end
    object QFcVtaCabPOR_CTA_Y_ORDEN: TStringField
      FieldName = 'POR_CTA_Y_ORDEN'
      Origin = 'POR_CTA_Y_ORDEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Origin = 'PROVEEDOR'
      Size = 6
    end
    object QFcVtaCabTIPO_VTA: TStringField
      FieldName = 'TIPO_VTA'
      Origin = 'TIPO_VTA'
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabID_RECEPCION_GTIA: TIntegerField
      FieldName = 'ID_RECEPCION_GTIA'
      Origin = 'ID_RECEPCION_GTIA'
    end
    object QFcVtaCabJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
      Origin = 'JURIDICION'
    end
    object QFcVtaCabJURIDICION_LOCALIDAD: TIntegerField
      FieldName = 'JURIDICION_LOCALIDAD'
      Origin = 'JURIDICION_LOCALIDAD'
    end
    object QFcVtaCabCON_GTIA_EXTENDIDA: TStringField
      FieldName = 'CON_GTIA_EXTENDIDA'
      Origin = 'CON_GTIA_EXTENDIDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabMESES_DE_GARANTIA: TIntegerField
      FieldName = 'MESES_DE_GARANTIA'
      Origin = 'MESES_DE_GARANTIA'
      Required = True
    end
    object QFcVtaCabPOLIZA: TStringField
      FieldName = 'POLIZA'
      Origin = 'POLIZA'
    end
    object QFcVtaCabVALOR_ASEGURADO: TFloatField
      FieldName = 'VALOR_ASEGURADO'
      Origin = 'VALOR_ASEGURADO'
    end
    object QFcVtaCabABONO_PERIODO: TStringField
      FieldName = 'ABONO_PERIODO'
      Origin = 'ABONO_PERIODO'
      Size = 6
    end
    object QFcVtaCabNUMERO_OPERACION: TStringField
      FieldName = 'NUMERO_OPERACION'
      Origin = 'NUMERO_OPERACION'
      Size = 8
    end
    object QFcVtaCabSALDO_ACTUAL_CC: TFloatField
      FieldName = 'SALDO_ACTUAL_CC'
      Origin = 'SALDO_ACTUAL_CC'
    end
    object QFcVtaCabID_NOTA_CAMBIO: TIntegerField
      FieldName = 'ID_NOTA_CAMBIO'
      Origin = 'ID_NOTA_CAMBIO'
    end
    object QFcVtaCabCAE: TStringField
      FieldName = 'CAE'
      Origin = 'CAE'
      Required = True
      Size = 50
    end
    object QFcVtaCabCAE_VENCIMIENTO: TSQLTimeStampField
      FieldName = 'CAE_VENCIMIENTO'
      Origin = 'CAE_VENCIMIENTO'
    end
    object QFcVtaCabFACTURA_ELECTRONICA: TStringField
      FieldName = 'FACTURA_ELECTRONICA'
      Origin = 'FACTURA_ELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabCANT_BULTOS: TIntegerField
      FieldName = 'CANT_BULTOS'
      Origin = 'CANT_BULTOS'
      Required = True
    end
    object QFcVtaCabCUOTAS_CC: TIntegerField
      FieldName = 'CUOTAS_CC'
      Origin = 'CUOTAS_CC'
      Required = True
    end
    object QFcVtaCabINTERVALO_CUOTA: TIntegerField
      FieldName = 'INTERVALO_CUOTA'
      Origin = 'INTERVALO_CUOTA'
      Required = True
    end
    object QFcVtaCabID_GARANTE: TIntegerField
      FieldName = 'ID_GARANTE'
      Origin = 'ID_GARANTE'
    end
    object QFcVtaCabPAGO_A_CTA: TFloatField
      FieldName = 'PAGO_A_CTA'
      Origin = 'PAGO_A_CTA'
      Required = True
    end
    object QFcVtaCabID_FC_CON_ADEL: TIntegerField
      FieldName = 'ID_FC_CON_ADEL'
      Origin = 'ID_FC_CON_ADEL'
      Required = True
    end
    object QFcVtaCabPRIMER_VTO: TSQLTimeStampField
      FieldName = 'PRIMER_VTO'
      Origin = 'PRIMER_VTO'
    end
    object QFcVtaCabANTICIPO_VTO: TSQLTimeStampField
      FieldName = 'ANTICIPO_VTO'
      Origin = 'ANTICIPO_VTO'
    end
    object QFcVtaCabCENTRO_COSTO: TIntegerField
      FieldName = 'CENTRO_COSTO'
      Origin = 'CENTRO_COSTO'
      Required = True
    end
    object QFcVtaCabID_PEDIDO_MORPHI: TIntegerField
      FieldName = 'ID_PEDIDO_MORPHI'
      Origin = 'ID_PEDIDO_MORPHI'
    end
    object QFcVtaCabID_PAIS: TSmallintField
      FieldName = 'ID_PAIS'
      Origin = 'ID_PAIS'
    end
    object QFcVtaCabCUIT_PAIS: TStringField
      FieldName = 'CUIT_PAIS'
      Origin = 'CUIT_PAIS'
      Size = 13
    end
    object QFcVtaCabDOC_ADUANERO: TStringField
      FieldName = 'DOC_ADUANERO'
      Origin = 'DOC_ADUANERO'
      Size = 15
    end
    object QFcVtaCabFECHA_CARGA: TSQLTimeStampField
      FieldName = 'FECHA_CARGA'
      Origin = 'FECHA_CARGA'
    end
    object QFcVtaCabNRO_INTERNO: TStringField
      FieldName = 'NRO_INTERNO'
      Origin = 'NRO_INTERNO'
    end
    object QFcVtaCabFOB_TOTAL: TFloatField
      FieldName = 'FOB_TOTAL'
      Origin = 'FOB_TOTAL'
      Required = True
    end
    object QFcVtaCabNOTAS: TStringField
      FieldName = 'NOTAS'
      Origin = 'NOTAS'
      Size = 300
    end
    object QFcVtaCabDESTINO_DOCUMENTO: TStringField
      FieldName = 'DESTINO_DOCUMENTO'
      Origin = 'DESTINO_DOCUMENTO'
      Size = 5
    end
    object QFcVtaCabPERMISO_EMBARQUE: TStringField
      FieldName = 'PERMISO_EMBARQUE'
      Origin = 'PERMISO_EMBARQUE'
      Size = 100
    end
    object QFcVtaCabINCOTERMS: TStringField
      FieldName = 'INCOTERMS'
      Origin = 'INCOTERMS'
      Size = 5
    end
    object QFcVtaCabCBU: TStringField
      FieldName = 'CBU'
      Origin = 'CBU'
      Size = 22
    end
    object QFcVtaCabASOCIADO_TIPO: TIntegerField
      FieldName = 'ASOCIADO_TIPO'
      Origin = 'ASOCIADO_TIPO'
    end
    object QFcVtaCabASOCIADO_PTOVTA: TIntegerField
      FieldName = 'ASOCIADO_PTOVTA'
      Origin = 'ASOCIADO_PTOVTA'
    end
    object QFcVtaCabASOCIADO_NRO: TFloatField
      FieldName = 'ASOCIADO_NRO'
      Origin = 'ASOCIADO_NRO'
      Required = True
    end
    object QFcVtaCabASOCIADO_CPTEFCH: TStringField
      FieldName = 'ASOCIADO_CPTEFCH'
      Origin = 'ASOCIADO_CPTEFCH'
      Size = 8
    end
    object QFcVtaCabINF_X: TStringField
      FieldName = 'INF_X'
      Origin = 'INF_X'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabTOTAL_CALCULADO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_CALCULADO'
      ProviderFlags = []
      Calculated = True
    end
    object QFcVtaCabFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
    object QFcVtaCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object QFcVtaCabFECHA_FISCAL: TSQLTimeStampField
      FieldName = 'FECHA_FISCAL'
      Origin = 'FECHA_FISCAL'
    end
    object QFcVtaCabCON_CAEA: TStringField
      FieldName = 'CON_CAEA'
      Origin = 'CON_CAEA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabCAEA_INFORMADO: TStringField
      FieldName = 'CAEA_INFORMADO'
      Origin = 'CAEA_INFORMADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabQRIMAGE: TBlobField
      FieldName = 'QRIMAGE'
      Origin = 'QRIMAGE'
    end
    object QFcVtaCabCONDICIONPEDIDO: TIntegerField
      FieldName = 'CONDICIONPEDIDO'
      Origin = 'CONDICIONPEDIDO'
      Required = True
    end
  end
  object QFcVtaDet: TFDQuery
    OnNewRecord = QFcVtaDetNewRecord
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.* from fcvtaDet d where d.id_cabfac = :id')
    Left = 16
    Top = 80
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QFcVtaDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFcVtaDetID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Origin = 'ID_CABFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFcVtaDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QFcVtaDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QFcVtaDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QFcVtaDetRENGLON: TFloatField
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
    end
    object QFcVtaDetFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
    object QFcVtaDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object QFcVtaDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QFcVtaDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QFcVtaDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QFcVtaDetUNIDADES_GRAVADO: TFloatField
      FieldName = 'UNIDADES_GRAVADO'
      Origin = 'UNIDADES_GRAVADO'
    end
    object QFcVtaDetUNIDADES_EXENTO: TFloatField
      FieldName = 'UNIDADES_EXENTO'
      Origin = 'UNIDADES_EXENTO'
    end
    object QFcVtaDetUNIDADES_TOTAL: TFloatField
      FieldName = 'UNIDADES_TOTAL'
      Origin = 'UNIDADES_TOTAL'
    end
    object QFcVtaDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
    end
    object QFcVtaDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
    end
    object QFcVtaDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
    end
    object QFcVtaDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
    end
    object QFcVtaDetIVA_UNITARIO: TFloatField
      FieldName = 'IVA_UNITARIO'
      Origin = 'IVA_UNITARIO'
      Required = True
    end
    object QFcVtaDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
    end
    object QFcVtaDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
    end
    object QFcVtaDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetTOTAL_EXENTO: TFloatField
      FieldName = 'TOTAL_EXENTO'
      Origin = 'TOTAL_EXENTO'
      Required = True
    end
    object QFcVtaDetTOTAL_GRAVADO: TFloatField
      FieldName = 'TOTAL_GRAVADO'
      Origin = 'TOTAL_GRAVADO'
      Required = True
    end
    object QFcVtaDetIVA_TOTAL: TFloatField
      FieldName = 'IVA_TOTAL'
      Origin = 'IVA_TOTAL'
      Required = True
    end
    object QFcVtaDetTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QFcVtaDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Origin = 'TIPOIVA_TASA'
      Required = True
    end
    object QFcVtaDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Origin = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object QFcVtaDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
    end
    object QFcVtaDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
      Origin = 'IVA_SOBRETASA'
    end
    object QFcVtaDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      Required = True
    end
    object QFcVtaDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QFcVtaDetMARGEN: TFloatField
      FieldName = 'MARGEN'
      Origin = 'MARGEN'
    end
    object QFcVtaDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Origin = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Origin = 'CON_NRO_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetCON_CODIGO_BARRA: TStringField
      FieldName = 'CON_CODIGO_BARRA'
      Origin = 'CON_CODIGO_BARRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetIB_TASA: TFloatField
      FieldName = 'IB_TASA'
      Origin = 'IB_TASA'
      Required = True
    end
    object QFcVtaDetTIPOIB_TASA: TIntegerField
      FieldName = 'TIPOIB_TASA'
      Origin = 'TIPOIB_TASA'
      Required = True
    end
    object QFcVtaDetLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object QFcVtaDetPRECIO_EDITABLE: TStringField
      FieldName = 'PRECIO_EDITABLE'
      Origin = 'PRECIO_EDITABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
      Required = True
    end
    object QFcVtaDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      Required = True
    end
    object QFcVtaDetDETALLE_ADICIONAL: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Origin = 'DETALLE_ADICIONAL'
      Size = 300
    end
    object QFcVtaDetGRUPO_DETALLE: TIntegerField
      FieldName = 'GRUPO_DETALLE'
      Origin = 'GRUPO_DETALLE'
    end
    object QFcVtaDetCTA_ORDEN_ID_RECEPCION: TIntegerField
      FieldName = 'CTA_ORDEN_ID_RECEPCION'
      Origin = 'CTA_ORDEN_ID_RECEPCION'
    end
    object QFcVtaDetCTA_ORDEN_NROCPBTE: TStringField
      FieldName = 'CTA_ORDEN_NROCPBTE'
      Origin = 'CTA_ORDEN_NROCPBTE'
      Size = 13
    end
    object QFcVtaDetCTA_ORDEN_TIPOCPBTE: TStringField
      FieldName = 'CTA_ORDEN_TIPOCPBTE'
      Origin = 'CTA_ORDEN_TIPOCPBTE'
      Size = 2
    end
    object QFcVtaDetCTA_ORDEN_CALSECPBTE: TStringField
      FieldName = 'CTA_ORDEN_CALSECPBTE'
      Origin = 'CTA_ORDEN_CALSECPBTE'
      Size = 2
    end
    object QFcVtaDetMESES_GTIA: TIntegerField
      FieldName = 'MESES_GTIA'
      Origin = 'MESES_GTIA'
      Required = True
    end
    object QFcVtaDetCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Origin = 'CODIGOBARRA'
      Size = 50
    end
    object QFcVtaDetDE_PRODUCCION: TStringField
      FieldName = 'DE_PRODUCCION'
      Origin = 'DE_PRODUCCION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetUNITARIO_TOTAL_OLD: TFloatField
      FieldName = 'UNITARIO_TOTAL_OLD'
      Origin = 'UNITARIO_TOTAL_OLD'
      Required = True
    end
    object QFcVtaDetUNITARIO_IVA_OLD: TFloatField
      FieldName = 'UNITARIO_IVA_OLD'
      Origin = 'UNITARIO_IVA_OLD'
      Required = True
    end
    object QFcVtaDetUNI_C_REC: TStringField
      FieldName = 'UNI_C_REC'
      Origin = 'UNI_C_REC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetITEM_OCOMPRA: TIntegerField
      FieldName = 'ITEM_OCOMPRA'
      Origin = 'ITEM_OCOMPRA'
    end
    object QFcVtaDetCONTROL_TRAZABILIDAD: TStringField
      FieldName = 'CONTROL_TRAZABILIDAD'
      Origin = 'CONTROL_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetCANTIDAD_UNIDADES: TFloatField
      FieldName = 'CANTIDAD_UNIDADES'
      Origin = 'CANTIDAD_UNIDADES'
    end
    object QFcVtaDetPRESENTACION_CANT: TFloatField
      FieldName = 'PRESENTACION_CANT'
      Origin = 'PRESENTACION_CANT'
      Required = True
    end
  end
  object QFcVtaImp: TFDQuery
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select f.* from fcvtaImpuesto f where f.id_fcvtacab = :id')
    Left = 16
    Top = 128
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QFcVtaImpID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      Origin = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFcVtaImpID_FCVTACAB: TIntegerField
      FieldName = 'ID_FCVTACAB'
      Origin = 'ID_FCVTACAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFcVtaImpCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      Origin = 'CODIGO_GRAVAMEN'
    end
    object QFcVtaImpDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QFcVtaImpNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
    end
    object QFcVtaImpTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QFcVtaImpIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
  end
  object QBuscaSucursal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo,detalle,host from sucursal')
    Left = 472
    Top = 456
    object QBuscaSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
    object QBuscaSucursalHOST: TStringField
      FieldName = 'HOST'
      Origin = 'HOST'
      Size = 250
    end
  end
  object QDepositos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from depositos order by nombre')
    Left = 576
    Top = 168
    object QDepositosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDepositosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object QDepositosSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QDepositosCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Origin = 'CENTRALIZA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QPrimerConVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select Min(codigopago) from condventa ')
    Left = 256
    Top = 32
  end
  object QBuscaCliente: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo,nombre from clientes where codigo=:codigo')
    Left = 256
    Top = 88
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QBuscaClienteCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QBuscaClienteNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
  end
  object spIngresarClienteFD: TFDStoredProc
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'INGRESAR_CLIENTE'
    Left = 568
    Top = 33
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 2
        Name = 'NOMBRE'
        DataType = ftString
        ParamType = ptInput
        Size = 35
      end
      item
        Position = 3
        Name = 'RAZON_SOCIAL'
        DataType = ftString
        ParamType = ptInput
        Size = 35
      end
      item
        Position = 4
        Name = 'DIRECCION'
        DataType = ftString
        ParamType = ptInput
        Size = 35
      end
      item
        Position = 5
        Name = 'TIPO_IVA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'CUIT'
        DataType = ftString
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 7
        Name = 'C_POSTAL'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 8
        Name = 'LOCALIDAD'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 9
        Name = 'TELEFONO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 10
        Name = 'VENDEDOR'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 11
        Name = 'ZONA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 12
        Name = 'OBSERVACIONES'
        DataType = ftMemo
        ParamType = ptInput
      end
      item
        Position = 13
        Name = 'MAIL'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 14
        Name = 'CUENTA_OP'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 15
        Name = 'TIPODOC'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Position = 16
        Name = 'NRODOCUMENTO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 17
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 18
        Name = 'CELULAR'
        DataType = ftString
        ParamType = ptInput
        Size = 11
      end
      item
        Position = 19
        Name = 'ID_POSTAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 20
        Name = 'CODIGO_ALTA'
        DataType = ftString
        ParamType = ptOutput
        Size = 6
      end>
  end
  object spLdrFD: TFDStoredProc
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'INGRESAR_LDR'
    Left = 648
    Top = 32
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 2
        Name = 'NOMBRE'
        DataType = ftString
        ParamType = ptInput
        Size = 35
      end
      item
        Position = 3
        Name = 'DIRECCION'
        DataType = ftString
        ParamType = ptInput
        Size = 35
      end
      item
        Position = 4
        Name = 'CPOSTAL'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object spIngresarConVentaFD: TFDStoredProc
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'INGRESAR_CONVENTA'
    Left = 760
    Top = 24
    ParamData = <
      item
        Position = 1
        Name = 'CONDICION'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
  end
  object spAgregaMovTCFD: TFDStoredProc
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end>
    StoredProcName = 'AGREGAR_MOV_CAJA_TC'
    Left = 360
    Top = 88
    ParamData = <
      item
        Position = 1
        Name = 'ID_CPBTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'TIPO_COMPROB'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 3
        Name = 'CLASE_COMPROB'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 4
        Name = 'NROCPBTE'
        DataType = ftString
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 5
        Name = 'ID_CUENTA_CAJA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'FECHA_MOVIMIENTO'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'DEBE'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'HABER'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'TIPOOPERACION'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 10
        Name = 'FPAGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 11
        Name = 'IDTC'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 12
        Name = 'TITULAR'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 13
        Name = 'CUOTAS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 14
        Name = 'DOCUMENTO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 15
        Name = 'UNIDADES'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 16
        Name = 'COTIZACION'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 17
        Name = 'MONEDA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 18
        Name = 'UNIDADESNETO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 19
        Name = 'IMPORTENETO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 20
        Name = 'COEFICIENTE'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 21
        Name = 'VALORCUOTA'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 22
        Name = 'IMPORTERECARGO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 23
        Name = 'IDCTABANCO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 24
        Name = 'NROCUPON'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 25
        Name = 'LOTE'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end
      item
        Position = 26
        Name = 'TERMINAL'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object spAgregaMovEfectivoFD: TFDStoredProc
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end>
    StoredProcName = 'AGREGAR_MOV_CAJA_EFECTIVO'
    Left = 360
    Top = 32
    ParamData = <
      item
        Position = 1
        Name = 'ID_CPBTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'TIPO_COMPROB'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 3
        Name = 'CLASE_COMPROB'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 4
        Name = 'NROCPBTE'
        DataType = ftString
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 5
        Name = 'ID_CUENTA_CAJA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'FECHA_MOVIMIENTO'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'DEBE'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'HABER'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'TIPOOPERACION'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end>
  end
  object spAgregaChe3FD: TFDStoredProc
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end>
    StoredProcName = 'AGREGAR_MOV_CAJA_CHE3'
    Left = 456
    Top = 96
    ParamData = <
      item
        Position = 1
        Name = 'ID_CPBTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'TIPO_COMPROB'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 3
        Name = 'CLASE_COMPROB'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 4
        Name = 'NROCPBTE'
        DataType = ftString
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 5
        Name = 'ID_CUENTA_CAJA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'FECHA_EMISION'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'FECHA_COBRO'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'FECHA_ENTRADA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'ORIGEN'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 10
        Name = 'UNIDADES'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 11
        Name = 'IMPORTE'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 12
        Name = 'TIPOOPERACION'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 13
        Name = 'FPAGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 14
        Name = 'ID_BANCO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 15
        Name = 'NUMERO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 16
        Name = 'COTIZACION'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 17
        Name = 'MONEDA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 18
        Name = 'CUIT'
        DataType = ftString
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 19
        Name = 'SUCURSAL'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 20
        Name = 'FIRMANTE'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
  end
  object CDSFcVtaCabXML: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 256
    Top = 208
  end
  object CDSFcVtaDetXML: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 256
    Top = 272
  end
  object CDSFcVtaImpXML: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 256
    Top = 336
  end
  object CDSCajaMovXML: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 256
    Top = 392
  end
  object CDSTCMovXML: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 256
    Top = 448
  end
  object CDSMovEfectivoXML: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 256
    Top = 496
  end
  object CDSChe3XML: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 256
    Top = 552
  end
  object DSMemory: TDataSource
    DataSet = MemoryData
    Left = 687
    Top = 385
  end
  object MemoryData: TJvMemoryData
    FieldDefs = <>
    Left = 775
    Top = 385
    object MemoryDataTIPOCPBTE: TStringField
      DisplayLabel = 'Tp.'
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object MemoryDataNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
    end
    object MemoryDataNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 45
    end
    object MemoryDataTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00:-'
    end
    object MemoryDataID: TIntegerField
      FieldName = 'ID'
    end
  end
  object QBorrarFC: TFDQuery
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from fcvtacab f where f.id_fc = :id')
    Left = 680
    Top = 464
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QFacturasImportadas: TFDQuery
    OnCalcFields = QFacturasImportadasCalcFields
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select f.id_fc,f.tipocpbte,f.clasecpbte,f.letrafac,'
      '       f.sucfac,f.numerofac,f.nrocpbte,'
      '       f.codigo,f.razonsocial, f.total from fcvtacab f'
      
        'where (f.fechavta between :desde and :hasta) and (f.sucursal=:su' +
        'c)')
    Left = 680
    Top = 536
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'SUC'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QFacturasImportadasID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFacturasImportadasTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QFacturasImportadasCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QFacturasImportadasLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFacturasImportadasSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Origin = 'SUCFAC'
      Size = 4
    end
    object QFacturasImportadasNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Origin = 'NUMEROFAC'
      Size = 8
    end
    object QFacturasImportadasNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object QFacturasImportadasCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object QFacturasImportadasRAZONSOCIAL: TStringField
      DisplayLabel = 'R.Social'
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QFacturasImportadasTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      DisplayFormat = ',0.00;,-,0.00;-'
    end
    object QFacturasImportadasTOTAL_REC: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkInternalCalc
      FieldName = 'TOTAL_REC'
      DisplayFormat = ',0.00;,-,0.00;-'
    end
  end
  object DSFacturasImportadas: TDataSource
    DataSet = QFacturasImportadas
    Left = 800
    Top = 536
  end
  object QTraeCodigoFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo_stk,Detalle_stk,rubro_stk,subrubro_stk from stock'
      'where codigo_stk = :codigo')
    Left = 496
    Top = 388
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
        Value = Null
      end>
    object QTraeCodigoFDCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QTraeCodigoFDDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object QTraeCodigoFDRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      Required = True
      Size = 3
    end
    object QTraeCodigoFDSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      Required = True
      Size = 5
    end
  end
  object spABMStock: TFDStoredProc
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ABM_STOCK'
    Left = 472
    Top = 36
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
        Name = 'DETALLE'
        DataType = ftString
        ParamType = ptInput
        Size = 45
      end
      item
        Position = 3
        Name = 'MARCA'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Position = 4
        Name = 'RUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 5
        Name = 'SUBRUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end
      item
        Position = 6
        Name = 'MODO_GRAVAMEN'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 7
        Name = 'TASA_IVA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'SOBRETASA_IVA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'COSTO_GRAVADO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 10
        Name = 'COSTO_EXENTO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 11
        Name = 'DETALLE_ADICIONAL'
        DataType = ftString
        ParamType = ptInput
        Size = 300
      end
      item
        Position = 12
        Name = 'CODIGO_ALTERNATIVO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 13
        Name = 'PRESENTACION_CANTIDAD'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 14
        Name = 'PRESENTACION_UNIDAD'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 15
        Name = 'MONEDA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSRubros: TDataSource
    DataSet = QRubro
    Left = 783
    Top = 104
  end
  object QRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select  *  from Rubros Order By Detalle_Rubro')
    Left = 719
    Top = 113
    object QRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QRubroDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
  end
  object QSubRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select codigo_subrubro,detalle_subrubro,codigo_rubro from subrub' +
        'ros'
      'where (( codigo_rubro = :rubro ) or ( :rubro = '#39'***'#39' ))  '
      'order by detalle_subrubro')
    Left = 719
    Top = 169
    ParamData = <
      item
        Name = 'RUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
        Value = Null
      end>
    object QSubRubroCODIGO_SUBRUBRO: TStringField
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object QSubRubroDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Required = True
      Size = 45
    end
    object QSubRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
  end
  object DSSubRubro: TDataSource
    DataSet = QSubRubro
    Left = 791
    Top = 168
  end
  object QCtaCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.*,cta.nombre as MuestraCaja from caja_cab c'
      'left join cuenta_caja cta on cta.id_cuenta=c.id_cuenta_caja'
      'where c.estado=0')
    Left = 368
    Top = 176
    object QCtaCajaID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCtaCajaID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
    object QCtaCajaFECHA_INCIO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO'
      Origin = 'FECHA_INCIO'
      Required = True
    end
    object QCtaCajaFECHA_CIERRE: TSQLTimeStampField
      FieldName = 'FECHA_CIERRE'
      Origin = 'FECHA_CIERRE'
    end
    object QCtaCajaSALDO_INCIAL: TFloatField
      FieldName = 'SALDO_INCIAL'
      Origin = 'SALDO_INCIAL'
    end
    object QCtaCajaESTADO: TIntegerField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
    end
    object QCtaCajaOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object QCtaCajaNUMEROCAJA: TIntegerField
      FieldName = 'NUMEROCAJA'
      Origin = 'NUMEROCAJA'
    end
    object QCtaCajaMUESTRACAJA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACAJA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
  end
  object DSCtaCaja: TDataSource
    DataSet = QCtaCaja
    Left = 440
    Top = 168
  end
end
