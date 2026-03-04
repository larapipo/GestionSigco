object DatosNotaVenta: TDatosNotaVenta
  OnDestroy = DataModuleDestroy
  Height = 563
  Width = 669
  object CDSNVCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPNVCab'
    OnNewRecord = CDSNVCabNewRecord
    Left = 184
    Top = 24
    object CDSNVCabID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSNVCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 8
    end
    object CDSNVCabSUBNRO: TStringField
      FieldName = 'SUBNRO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSNVCabCODIGO: TStringField
      FieldName = 'CODIGO'
      OnSetText = CDSNVCabCODIGOSetText
      Size = 6
    end
    object CDSNVCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSNVCabLDR: TIntegerField
      FieldName = 'LDR'
      OnSetText = CDSNVCabLDRSetText
    end
    object CDSNVCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSNVCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSNVCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSNVCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSNVCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSNVCabVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      OnSetText = CDSNVCabVENDEDORSetText
      Size = 6
    end
    object CDSNVCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object CDSNVCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSNVCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object CDSNVCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
    end
    object CDSNVCabFECHAPEDIDO: TSQLTimeStampField
      FieldName = 'FECHAPEDIDO'
    end
    object CDSNVCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
      OnSetText = CDSNVCabCONDICIONVTASetText
    end
    object CDSNVCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object CDSNVCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object CDSNVCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object CDSNVCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSNVCabESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object CDSNVCabPRESUPUESTO_ID: TIntegerField
      FieldName = 'PRESUPUESTO_ID'
    end
    object CDSNVCabPRESUPUESTO_NROCPBTE: TStringField
      FieldName = 'PRESUPUESTO_NROCPBTE'
      Size = 13
    end
    object CDSNVCabDSTO: TFloatField
      FieldName = 'DSTO'
    end
    object CDSNVCabMUESTRALDR: TStringField
      FieldName = 'MUESTRALDR'
      ProviderFlags = []
      Size = 35
    end
    object CDSNVCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
    object CDSNVCabMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object CDSNVCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSNVCabMUESTRACONVENTA: TStringField
      FieldName = 'MUESTRACONVENTA'
      ProviderFlags = []
      Size = 15
    end
  end
  object CDSNVDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPNVDet'
    AfterInsert = CDSNVDetAfterInsert
    BeforeEdit = CDSNVDetBeforeEdit
    BeforePost = CDSNVDetBeforePost
    AfterPost = CDSNVDetAfterPost
    BeforeDelete = CDSNVDetBeforeDelete
    OnNewRecord = CDSNVDetNewRecord
    Left = 177
    Top = 80
    object CDSNVDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSNVDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSNVDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 8
    end
    object CDSNVDetRENGLON: TFloatField
      FieldName = 'RENGLON'
    end
    object CDSNVDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSNVDetCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOARTICULO'
      OnSetText = CDSNVDetCODIGOARTICULOSetText
      Size = 8
    end
    object CDSNVDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSNVDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object CDSNVDetCANTIDAD_PEDIDIA: TFloatField
      DisplayLabel = 'Can.Pedida'
      FieldName = 'CANTIDAD_PEDIDIA'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSNVDetCANTIDAD_ENTREGADA: TFloatField
      DisplayLabel = 'Cant.Entreg.'
      FieldName = 'CANTIDAD_ENTREGADA'
      OnSetText = CDSNVDetCANTIDAD_ENTREGADASetText
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSNVDetCANTIDAD_FALTANTE: TFloatField
      DisplayLabel = 'Faltante'
      FieldName = 'CANTIDAD_FALTANTE'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSNVDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      OnSetText = CDSNVDetUNITARIO_TOTALSetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSNVDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSNVDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSNVDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
    end
    object CDSNVDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
    end
    object CDSNVDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
    end
    object CDSNVDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
    end
    object CDSNVDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
    end
    object CDSNVDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSNVDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSNVDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSNVDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object CDSNVDetTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSNVDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object CDSNVDetLOTE: TIntegerField
      DisplayLabel = 'Nro.Lote'
      FieldName = 'LOTE'
      OnSetText = CDSNVDetLOTESetText
    end
    object CDSNVDetEAN: TStringField
      FieldName = 'EAN'
      Size = 50
    end
    object CDSNVDetOBSERVACION: TStringField
      FieldName = 'OBSERVACION'
      Size = 30
    end
    object CDSNVDetPOSICION: TStringField
      DisplayLabel = 'Posc.'
      FieldName = 'POSICION'
      Size = 10
    end
    object CDSNVDetLOTECERRADO: TStringField
      DisplayLabel = '#'
      FieldName = 'LOTECERRADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSNVDetRTO_ID: TIntegerField
      FieldName = 'RTO_ID'
    end
    object CDSNVDetRTO_NROCPBTE: TStringField
      FieldName = 'RTO_NROCPBTE'
      Size = 13
    end
    object CDSNVDetPESO: TFloatField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
  end
  object DSPNVCab: TDataSetProvider
    DataSet = QNVCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 24
  end
  object DSPNVDet: TDataSetProvider
    DataSet = QNVDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 80
  end
  object DSNVDet: TDataSource
    DataSet = CDSNVDet
    Left = 240
    Top = 80
  end
  object DSPInscripcion: TDataSetProvider
    DataSet = DMMain_FD.QInscripcion
    Left = 103
    Top = 139
  end
  object ibgIdcab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_NOTAVENTACAB'
    SystemGenerators = False
    Left = 328
    Top = 24
  end
  object ibgIdDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_NOTAVENTADET'
    SystemGenerators = False
    Left = 328
    Top = 80
  end
  object CDSNVCabXML: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    OnNewRecord = CDSNVCabNewRecord
    Left = 88
    Top = 336
  end
  object CDSNVDetXML: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    OnNewRecord = CDSNVCabNewRecord
    Left = 184
    Top = 336
  end
  object DSRemitos: TDataSource
    DataSet = CDSRemitos
    Left = 471
    Top = 424
  end
  object QNVCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select  n.*,'
      '        l.nombre as MuestraLDR,'
      '        d.nombre as MuestraDeposito,'
      '        p.nombre as MuestraVendedor,'
      '        s.detalle as MuestraSucursal,'
      '        tp.detalle as MuestraConVenta  from notaventacab n'
      
        'left join ldrcliente l on l.codigo_cliente=n.codigo and l.codigo' +
        '_ldr=n.ldr'
      'left join depositos d on d.id=n.deposito'
      'left join personal p on p.codigo=n.vendedor'
      'left join sucursal s on s.codigo=n.sucursal'
      'left join tipopago tp on tp.id_tpago=n.condicionvta'
      'where n.id = :id')
    Left = 32
    Top = 24
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QNVCabID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNVCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 8
    end
    object QNVCabSUBNRO: TStringField
      FieldName = 'SUBNRO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QNVCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object QNVCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QNVCabLDR: TIntegerField
      FieldName = 'LDR'
    end
    object QNVCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QNVCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object QNVCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object QNVCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object QNVCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object QNVCabVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 6
    end
    object QNVCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object QNVCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object QNVCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object QNVCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
    end
    object QNVCabFECHAPEDIDO: TSQLTimeStampField
      FieldName = 'FECHAPEDIDO'
    end
    object QNVCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
    end
    object QNVCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object QNVCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object QNVCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object QNVCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object QNVCabESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object QNVCabPRESUPUESTO_ID: TIntegerField
      FieldName = 'PRESUPUESTO_ID'
    end
    object QNVCabPRESUPUESTO_NROCPBTE: TStringField
      FieldName = 'PRESUPUESTO_NROCPBTE'
      Size = 13
    end
    object QNVCabDSTO: TFloatField
      FieldName = 'DSTO'
    end
    object QNVCabMUESTRALDR: TStringField
      FieldName = 'MUESTRALDR'
      ProviderFlags = []
      Size = 35
    end
    object QNVCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
    object QNVCabMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object QNVCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object QNVCabMUESTRACONVENTA: TStringField
      FieldName = 'MUESTRACONVENTA'
      ProviderFlags = []
      Size = 15
    end
  end
  object QNVDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from notaventadet'
      'where id_cab = :id')
    Left = 32
    Top = 80
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QNVDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNVDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNVDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 8
    end
    object QNVDetRENGLON: TFloatField
      FieldName = 'RENGLON'
    end
    object QNVDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QNVDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object QNVDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object QNVDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object QNVDetCANTIDAD_PEDIDIA: TFloatField
      FieldName = 'CANTIDAD_PEDIDIA'
    end
    object QNVDetCANTIDAD_ENTREGADA: TFloatField
      FieldName = 'CANTIDAD_ENTREGADA'
    end
    object QNVDetCANTIDAD_FALTANTE: TFloatField
      FieldName = 'CANTIDAD_FALTANTE'
    end
    object QNVDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
    end
    object QNVDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
    end
    object QNVDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
    end
    object QNVDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
    end
    object QNVDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
    end
    object QNVDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
    end
    object QNVDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
    end
    object QNVDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
    end
    object QNVDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
    end
    object QNVDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
    end
    object QNVDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
    end
    object QNVDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object QNVDetTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object QNVDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object QNVDetLOTE: TIntegerField
      FieldName = 'LOTE'
    end
    object QNVDetEAN: TStringField
      FieldName = 'EAN'
      Size = 50
    end
    object QNVDetOBSERVACION: TStringField
      FieldName = 'OBSERVACION'
      Size = 30
    end
    object QNVDetPOSICION: TStringField
      FieldName = 'POSICION'
      Size = 10
    end
    object QNVDetLOTECERRADO: TStringField
      FieldName = 'LOTECERRADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QNVDetRTO_ID: TIntegerField
      FieldName = 'RTO_ID'
    end
    object QNVDetRTO_NROCPBTE: TStringField
      FieldName = 'RTO_NROCPBTE'
      Size = 13
    end
    object QNVDetPESO: TFloatField
      FieldName = 'PESO'
    end
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT C.*  FROM Clientes C'
      'where (c.codigo=:codigo)')
    Left = 400
    Top = 24
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object QClientesDIRECCION_PARTICULAR: TStringField
      FieldName = 'DIRECCION_PARTICULAR'
      Size = 35
    end
    object QClientesDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object QClientesTELEFONO_PARTICULAR: TStringField
      FieldName = 'TELEFONO_PARTICULAR'
      Size = 10
    end
    object QClientesTELEFONO_COMERCIAL_1: TStringField
      FieldName = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object QClientesTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object QClientesTELEFONO_CELULAR: TStringField
      FieldName = 'TELEFONO_CELULAR'
      Size = 11
    end
    object QClientesID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
    end
    object QClientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object QClientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object QClientesCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Required = True
    end
    object QClientesEMITE_REMITO: TStringField
      FieldName = 'EMITE_REMITO'
      FixedChar = True
      Size = 1
    end
    object QClientesEMITE_FACTURA: TStringField
      FieldName = 'EMITE_FACTURA'
      FixedChar = True
      Size = 1
    end
    object QClientesNRO_DE_CUIT: TStringField
      FieldName = 'NRO_DE_CUIT'
      Size = 13
    end
    object QClientesACTIVO: TStringField
      FieldName = 'ACTIVO'
      FixedChar = True
      Size = 1
    end
    object QClientesLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object QClientesSALDOINICIAL: TFloatField
      FieldName = 'SALDOINICIAL'
    end
    object QClientesOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object QClientesFECHAULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'FECHAULTIMACOMPRA'
    end
    object QClientesFECHAALTA: TSQLTimeStampField
      FieldName = 'FECHAALTA'
    end
    object QClientesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QClientesZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object QClientesVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 6
    end
    object QClientesULTIMOPAGO: TSQLTimeStampField
      FieldName = 'ULTIMOPAGO'
    end
    object QClientesLISTAPRECIOS: TIntegerField
      FieldName = 'LISTAPRECIOS'
    end
    object QClientesFECHANACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHANACIMIENTO'
    end
    object QClientesTIPODOCUMENTO: TSmallintField
      FieldName = 'TIPODOCUMENTO'
    end
    object QClientesNRODOCUMENTO: TStringField
      FieldName = 'NRODOCUMENTO'
      Size = 15
    end
    object QClientesCORREOELECTRONICO: TStringField
      FieldName = 'CORREOELECTRONICO'
      Size = 100
    end
    object QClientesID_FACTURAPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURAPORDEFECTO'
    end
    object QClientesID_FACTURACONTADOPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURACONTADOPORDEFECTO'
    end
    object QClientesID_NOTADEBITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTADEBITOPORDEFECTO'
    end
    object QClientesID_NOTACREDITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTACREDITOPORDEFECTO'
    end
    object QClientesID_TIKETPORDEFECTO: TIntegerField
      FieldName = 'ID_TIKETPORDEFECTO'
    end
    object QClientesPERCIBIR_IB: TStringField
      FieldName = 'PERCIBIR_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesINSCRIPTO_MULTICONVENIO: TStringField
      FieldName = 'INSCRIPTO_MULTICONVENIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField
      FieldName = 'FECHA_VENCIMI_DDJJ_MULTI'
    end
    object QClientesCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Size = 50
    end
    object QClientesTELEFONO_CONTACTO: TStringField
      FieldName = 'TELEFONO_CONTACTO'
      Size = 50
    end
    object QClientesCOBRADOR: TStringField
      FieldName = 'COBRADOR'
      Size = 6
    end
    object QClientesCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object QClientesLONGITUD: TStringField
      FieldName = 'LONGITUD'
      Size = 25
    end
    object QClientesLATITUD: TStringField
      FieldName = 'LATITUD'
      Size = 25
    end
    object QClientesDIRECCION_CALLE: TStringField
      FieldName = 'DIRECCION_CALLE'
      Size = 40
    end
    object QClientesDIRECCION_NUMERO: TStringField
      FieldName = 'DIRECCION_NUMERO'
      Size = 10
    end
    object QClientesDIRECCION_PISO: TStringField
      FieldName = 'DIRECCION_PISO'
      Size = 10
    end
    object QClientesDIRECCION_DEPTO: TStringField
      FieldName = 'DIRECCION_DEPTO'
      Size = 10
    end
    object QClientesDEUDAMAYOR30: TStringField
      FieldName = 'DEUDAMAYOR30'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesTIPOABONO: TStringField
      FieldName = 'TIPOABONO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO_FC_ABONO'
    end
    object QClientesMES_ABONOANUAL: TIntegerField
      FieldName = 'MES_ABONOANUAL'
    end
  end
  object QStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select S.* from stock s where S.Codigo_Stk=:codigo')
    Left = 400
    Top = 88
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object QStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object QStockDETALLE_STK_ADICIONAL: TStringField
      FieldName = 'DETALLE_STK_ADICIONAL'
      Size = 200
    end
    object QStockCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Size = 25
    end
    object QStockRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Required = True
      Size = 3
    end
    object QStockSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Required = True
      Size = 5
    end
    object QStockMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Size = 4
    end
    object QStockTASA_IVA: TIntegerField
      FieldName = 'TASA_IVA'
      Required = True
    end
    object QStockSOBRETASA_IVA: TIntegerField
      FieldName = 'SOBRETASA_IVA'
    end
    object QStockCOSTO_EXENTO_STK: TFloatField
      FieldName = 'COSTO_EXENTO_STK'
      Required = True
    end
    object QStockCOSTO_GRAVADO_STK: TFloatField
      FieldName = 'COSTO_GRAVADO_STK'
      Required = True
    end
    object QStockCOSTO_TOTAL_STK: TFloatField
      FieldName = 'COSTO_TOTAL_STK'
      Required = True
    end
    object QStockREEMPLAZO_STK: TStringField
      FieldName = 'REEMPLAZO_STK'
      Required = True
    end
    object QStockPOSICION: TStringField
      FieldName = 'POSICION'
      Size = 10
    end
    object QStockMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
    end
    object QStockUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object QStockFIJACION_PRECIO_GRAVADO: TFloatField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Required = True
    end
    object QStockFIJACION_PRECIO_EXENTO: TFloatField
      FieldName = 'FIJACION_PRECIO_EXENTO'
      Required = True
    end
    object QStockFIJACION_PRECIO_TOTAL: TFloatField
      FieldName = 'FIJACION_PRECIO_TOTAL'
      Required = True
    end
  end
  object QIva: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from gravamen where codigo=:codigo')
    Left = 480
    Top = 32
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QIvaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QIvaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object QIvaTASA: TFloatField
      FieldName = 'TASA'
    end
    object QIvaCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Required = True
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
    Left = 176
    Top = 139
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
  object QPrimerLdr: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select min(Codigo_Ldr) From LdrCliente Where Codigo_Cliente=:Cod' +
        'igo')
    Left = 400
    Top = 144
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
    Left = 400
    Top = 200
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QCondVentaDefecto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select Min(codigopago) from condventa where codigocliente=:codig' +
        'o and'
      'por_defecto='#39'S'#39)
    Left = 480
    Top = 88
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QBuscaListaPrecio: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select id from  listaprecioespecialcab where id=:id')
    Left = 480
    Top = 144
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QBuscaListaPrecioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object QRemito: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select r.id_rto,r.fechavta,r.nrocpbte from rtocab r'
      'where r.notavta_id=:id')
    Left = 267
    Top = 422
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object CDSBarra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBarra'
    Left = 488
    Top = 304
    object CDSBarraCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Size = 50
    end
  end
  object DSPBarra: TDataSetProvider
    DataSet = QBarra
    Options = []
    Left = 424
    Top = 304
  end
  object QBarra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(cb.codigobarra) as CodigoBarra from codigobarra cb'
      'where cb.codigo_stk=:codigo and cb.presentacion_cantidad=1')
    Left = 369
    Top = 304
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object CDSRemitos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRemitos'
    Left = 392
    Top = 424
    object CDSRemitosID_RTO: TIntegerField
      FieldName = 'ID_RTO'
      Required = True
    end
    object CDSRemitosFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
    end
    object CDSRemitosNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
  end
  object DSPRemitos: TDataSetProvider
    DataSet = QRemito
    Options = []
    Left = 328
    Top = 424
  end
  object QBuscaCodigoBarra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cb.codigo_stk from codigobarra cb'
      'where cb.codigobarra = :codigo '
      '')
    Left = 65
    Top = 448
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object DSPPresuDet: TDataSetProvider
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 235
  end
  object CDSPresuDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPPresuDet'
    Left = 176
    Top = 232
    object CDSPresuDetID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object CDSPresuDetID_CABPRES: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CABPRES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object CDSPresuDetCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 50
      FieldName = 'CODIGOARTICULO'
      EditMask = 'cccccccccccccccccccccccccccccccccccccccccccccccccc;0; '
      Size = 8
    end
    object CDSPresuDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 45
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSPresuDetUNIDAD: TStringField
      DisplayLabel = 'Uni.'
      DisplayWidth = 3
      FieldName = 'UNIDAD'
      Size = 3
    end
    object CDSPresuDetTIPOCPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'TIPOCPBTE'
      Visible = False
      Size = 2
    end
    object CDSPresuDetNROCPBTE: TStringField
      DisplayWidth = 13
      FieldName = 'NROCPBTE'
      Visible = False
      Size = 13
    end
    object CDSPresuDetMODO_GRAVAMEN: TStringField
      DisplayWidth = 1
      FieldName = 'MODO_GRAVAMEN'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSPresuDetAFECTA_STOCK: TStringField
      DisplayWidth = 1
      FieldName = 'AFECTA_STOCK'
      Visible = False
      Size = 1
    end
    object CDSPresuDetCLASECPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'CLASECPBTE'
      Visible = False
      Size = 2
    end
    object CDSPresuDetFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
    end
    object CDSPresuDetCANTIDAD: TFloatField
      DisplayLabel = 'Cant.'
      FieldName = 'CANTIDAD'
    end
    object CDSPresuDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Size = 1
    end
    object CDSPresuDetIVA_TASA: TFloatField
      DisplayLabel = 'Iva'
      FieldName = 'IVA_TASA'
    end
    object CDSPresuDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
    end
    object CDSPresuDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
    end
    object CDSPresuDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
    end
    object CDSPresuDetDESCUENTO: TFloatField
      DisplayLabel = 'Dscto.'
      FieldName = 'DESCUENTO'
    end
    object CDSPresuDetTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
    end
    object CDSPresuDetSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSPresuDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object CDSPresuDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object CDSPresuDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Required = True
    end
    object CDSPresuDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Required = True
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
    end
    object CDSPresuDetACEPTADO: TStringField
      DisplayLabel = 'Vb'
      FieldName = 'ACEPTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSPresuDetNOTAS: TStringField
      FieldName = 'NOTAS'
      Size = 100
    end
    object CDSPresuDetCPBTESALIDA_ID: TIntegerField
      FieldName = 'CPBTESALIDA_ID'
    end
    object CDSPresuDetCPBTESALIDA_TIPO: TStringField
      FieldName = 'CPBTESALIDA_TIPO'
      FixedChar = True
      Size = 2
    end
    object CDSPresuDetCPBTESALIDA_CLASE: TStringField
      FieldName = 'CPBTESALIDA_CLASE'
      FixedChar = True
      Size = 2
    end
    object CDSPresuDetCPBTESALIDA_NROCPBTE: TStringField
      FieldName = 'CPBTESALIDA_NROCPBTE'
      Size = 13
    end
    object CDSPresuDetRENGLON: TFloatField
      FieldName = 'RENGLON'
    end
    object CDSPresuDetMARGEN: TFloatField
      FieldName = 'MARGEN'
    end
    object CDSPresuDetTOTAL_GRAVADO: TFloatField
      FieldName = 'TOTAL_GRAVADO'
      Required = True
    end
    object CDSPresuDetTOTAL_EXENTO: TFloatField
      FieldName = 'TOTAL_EXENTO'
      Required = True
    end
    object CDSPresuDetIVA_TOTAL: TFloatField
      FieldName = 'IVA_TOTAL'
      Required = True
    end
    object CDSPresuDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSPresuDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSPresuDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSPresuDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
    end
    object CDSPresuDetIVA_UNITARIO: TFloatField
      FieldName = 'IVA_UNITARIO'
      Required = True
    end
    object CDSPresuDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
    end
    object CDSPresuDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
    end
    object CDSPresuDetMUESTRASIGNO: TStringField
      FieldName = 'MUESTRASIGNO'
      ProviderFlags = []
      Size = 5
    end
  end
end
