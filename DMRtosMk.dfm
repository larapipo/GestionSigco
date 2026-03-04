object DatosRtoMk: TDatosRtoMk
  OnDestroy = DataModuleDestroy
  Height = 488
  Width = 737
  object QRtoCab: TSQLQuery
    MaxBlobSize = -1
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
    SQL.Strings = (
      'select Rto.*,'
      '  Fp.Detalle as MuestraCondVenta,'
      '  De.Nombre as MuestraDeposito,'
      '  Su.Detalle as MuestraSucursal,'
      '  Ldr.Nombre as MuestraLdr,'
      '  Ldr.direccion as MuestraLDireccionLdr,'
      ''
      '  ins.Detalle as MuestraIva,'
      '  cp.denominacion as MuestraComprobante,'
      '  cp.id_comprobante as Id_TipoComprobante,'
      '  v.nombre as MuestraVendedor,'
      '  cl.telefono_Comercial_1 as MuestraTelefono1,'
      '  cl.telefono_Comercial_2 as MuestraTelefono2'
      ''
      ''
      'from rtocab_mkt Rto'
      'left join clientes cl on cl.codigo=rto.codigo'
      'left join F_Pago Fp on Fp.Codigo=Rto.CondicionVta'
      'left join personal v on v.codigo=rto.vendedor'
      'left join Depositos De  on De.Id=Rto.Deposito'
      'left join Sucursal Su  on Su.Codigo=Rto.Sucursal'
      'left join inscripcion ins on ins.codigo=Rto.TipoIva'
      
        'left join LdrCliente Ldr on ((Ldr.Codigo_Cliente=Rto.Codigo) and' +
        ' (Ldr.Codigo_Ldr=Rto.Ldr))'
      'left join comprobantes cp on cp.clase_comprob=Rto.ClaseCpbte and'
      '          cp.letra=Rto.LetraRto and'
      '          cp.sucursal=Rto.sucursal and'
      '          cp.tipo_comprob=Rto.tipocpbte and'
      '          cp.Compra_venta='#39'V'#39
      ''
      'where Rto.TipoCpbte= :TipoCpbte'
      'and Rto.id_Rto=:id')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 16
    Top = 8
    object QRtoCabID_RTO: TIntegerField
      FieldName = 'ID_RTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRtoCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QRtoCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QRtoCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QRtoCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QRtoCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QRtoCabLETRARTO: TStringField
      FieldName = 'LETRARTO'
      Size = 1
    end
    object QRtoCabSUCRTO: TStringField
      FieldName = 'SUCRTO'
      Size = 4
    end
    object QRtoCabNUMERORTO: TStringField
      FieldName = 'NUMERORTO'
      Size = 8
    end
    object QRtoCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QRtoCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object QRtoCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object QRtoCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object QRtoCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object QRtoCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object QRtoCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object QRtoCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
    end
    object QRtoCabFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
    end
    object QRtoCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object QRtoCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
    end
    object QRtoCabANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object QRtoCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object QRtoCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object QRtoCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object QRtoCabZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object QRtoCabLDR: TIntegerField
      FieldName = 'LDR'
    end
    object QRtoCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object QRtoCabVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 6
    end
    object QRtoCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object QRtoCabRENGLONES: TSmallintField
      FieldName = 'RENGLONES'
    end
    object QRtoCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object QRtoCabMUESTRACONDVENTA: TStringField
      FieldName = 'MUESTRACONDVENTA'
      ProviderFlags = []
    end
    object QRtoCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
    object QRtoCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object QRtoCabMUESTRALDR: TStringField
      FieldName = 'MUESTRALDR'
      ProviderFlags = []
      Size = 35
    end
    object QRtoCabMUESTRALDIRECCIONLDR: TStringField
      FieldName = 'MUESTRALDIRECCIONLDR'
      ProviderFlags = []
      Size = 35
    end
    object QRtoCabMUESTRAIVA: TStringField
      FieldName = 'MUESTRAIVA'
      ProviderFlags = []
      Size = 15
    end
    object QRtoCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object QRtoCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
    end
    object QRtoCabMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object QRtoCabMUESTRATELEFONO1: TStringField
      FieldName = 'MUESTRATELEFONO1'
      ProviderFlags = []
      Size = 10
    end
    object QRtoCabMUESTRATELEFONO2: TStringField
      FieldName = 'MUESTRATELEFONO2'
      ProviderFlags = []
      Size = 10
    end
    object QRtoCabVTATOTAL: TFMTBCDField
      FieldName = 'VTATOTAL'
      Precision = 15
      Size = 3
    end
    object QRtoCabCOSTOTOTAL: TFMTBCDField
      FieldName = 'COSTOTOTAL'
      Precision = 15
      Size = 3
    end
    object QRtoCabSALDO_TOTAL: TFMTBCDField
      FieldName = 'SALDO_TOTAL'
      Precision = 15
      Size = 3
    end
  end
  object SQLQuery2: TSQLQuery
    Params = <>
    Left = 648
    Top = 328
  end
  object SQLQuery3: TSQLQuery
    Params = <>
    Left = 616
    Top = 248
  end
  object SQLQuery4: TSQLQuery
    Params = <>
    Left = 624
    Top = 184
  end
  object QRtoDet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select d.* from rtodet_mkt d where d.id_cabrto=:id')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 16
    Top = 56
    object QRtoDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRtoDetID_CABRTO: TIntegerField
      FieldName = 'ID_CABRTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRtoDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QRtoDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QRtoDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QRtoDetRENGLON: TFMTBCDField
      FieldName = 'RENGLON'
      Precision = 15
      Size = 3
    end
    object QRtoDetFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
    end
    object QRtoDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object QRtoDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object QRtoDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object QRtoDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object QRtoDetCANTIDAD: TFMTBCDField
      FieldName = 'CANTIDAD'
      Precision = 15
      Size = 3
    end
    object QRtoDetCOSTO_UNITARIO: TFloatField
      FieldName = 'COSTO_UNITARIO'
    end
    object QRtoDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
    end
    object QRtoDetUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object QRtoDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
    end
    object QRtoDetCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
    end
    object QRtoDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
    end
    object QRtoDetIVA_TASA: TFMTBCDField
      FieldName = 'IVA_TASA'
      Precision = 15
      Size = 3
    end
    object QRtoDetIVA_SOBRETASA: TFMTBCDField
      FieldName = 'IVA_SOBRETASA'
      Precision = 15
      Size = 3
    end
    object QRtoDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
    end
    object QRtoDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
    end
    object QRtoDetUTILIDAD: TFMTBCDField
      FieldName = 'UTILIDAD'
      Precision = 15
      Size = 3
    end
    object QRtoDetMARGEN: TFMTBCDField
      FieldName = 'MARGEN'
      Precision = 15
      Size = 3
    end
    object QRtoDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object QRtoDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object QRtoDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Required = True
    end
    object QRtoDetCOTIZACION: TFMTBCDField
      FieldName = 'COTIZACION'
      Required = True
      Precision = 15
      Size = 3
    end
    object QRtoDetOBSERVACION: TStringField
      FieldName = 'OBSERVACION'
    end
    object QRtoDetDIAS: TIntegerField
      FieldName = 'DIAS'
      Required = True
    end
    object QRtoDetSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Required = True
      Precision = 15
      Size = 3
    end
  end
  object DSPRtoCab: TDataSetProvider
    DataSet = QRtoCab
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 8
  end
  object DataSetProvider2: TDataSetProvider
    Left = 576
    Top = 320
  end
  object DataSetProvider3: TDataSetProvider
    Left = 560
    Top = 248
  end
  object DataSetProvider4: TDataSetProvider
    Left = 584
    Top = 184
  end
  object DSPRtoDet: TDataSetProvider
    DataSet = QRtoDet
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 56
  end
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
    BeforePost = CDSRtoCabBeforePost
    OnNewRecord = CDSRtoCabNewRecord
    Left = 152
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
      Required = True
      Size = 2
    end
    object CDSRtoCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      OnSetText = CDSRtoCabSUCURSALSetText
    end
    object CDSRtoCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSRtoCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
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
    object CDSRtoCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
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
      OnSetText = CDSRtoCabDEPOSITOSetText
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
    object CDSRtoCabRENGLONES: TSmallintField
      FieldName = 'RENGLONES'
    end
    object CDSRtoCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
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
    object CDSRtoCabMUESTRALDIRECCIONLDR: TStringField
      FieldName = 'MUESTRALDIRECCIONLDR'
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
    object CDSRtoCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object CDSRtoCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object CDSRtoCabVTATOTAL: TFMTBCDField
      FieldName = 'VTATOTAL'
      Precision = 15
      Size = 3
    end
    object CDSRtoCabCOSTOTOTAL: TFMTBCDField
      FieldName = 'COSTOTOTAL'
      Precision = 15
      Size = 3
    end
    object CDSRtoCabSALDO_TOTAL: TFMTBCDField
      FieldName = 'SALDO_TOTAL'
      Precision = 15
      Size = 3
    end
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 504
    Top = 328
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 504
    Top = 248
  end
  object ClientDataSet4: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 520
    Top = 184
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
    AfterPost = CDSRtoDetAfterPost
    OnNewRecord = CDSRtoDetNewRecord
    Left = 152
    Top = 56
    object CDSRtoDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRtoDetID_CABRTO: TIntegerField
      FieldName = 'ID_CABRTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRtoDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
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
    object CDSRtoDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object CDSRtoDetCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOARTICULO'
      Required = True
      OnSetText = CDSRtoDetCODIGOARTICULOSetText
      Size = 8
    end
    object CDSRtoDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSRtoDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object CDSRtoDetCANTIDAD: TFMTBCDField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      OnSetText = CDSRtoDetCANTIDADSetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSRtoDetCOSTO_UNITARIO: TFloatField
      DisplayLabel = 'Costo Uni.'
      FieldName = 'COSTO_UNITARIO'
      OnSetText = CDSRtoDetCOSTO_UNITARIOSetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSRtoDetCOSTO_TOTAL: TFloatField
      DisplayLabel = 'Costo Total'
      FieldName = 'COSTO_TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSRtoDetUNITARIO: TFloatField
      DisplayLabel = 'Vta Uni.'
      FieldName = 'UNITARIO'
      OnSetText = CDSRtoDetUNITARIOSetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSRtoDetUNITARIO_TOTAL: TFloatField
      DisplayLabel = 'Vta Total'
      FieldName = 'UNITARIO_TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSRtoDetCOEFICIENTE: TFloatField
      DisplayLabel = 'Coef.'
      FieldName = 'COEFICIENTE'
      OnSetText = CDSRtoDetCOEFICIENTESetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSRtoDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
    end
    object CDSRtoDetIVA_TASA: TFMTBCDField
      FieldName = 'IVA_TASA'
      Precision = 15
      Size = 3
    end
    object CDSRtoDetIVA_SOBRETASA: TFMTBCDField
      FieldName = 'IVA_SOBRETASA'
      Precision = 15
      Size = 3
    end
    object CDSRtoDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
    end
    object CDSRtoDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
    end
    object CDSRtoDetUTILIDAD: TFMTBCDField
      FieldName = 'UTILIDAD'
      Precision = 15
      Size = 3
    end
    object CDSRtoDetMARGEN: TFMTBCDField
      DisplayLabel = 'Utilidad'
      FieldName = 'MARGEN'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
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
    object CDSRtoDetOBSERVACION: TStringField
      FieldName = 'OBSERVACION'
    end
    object CDSRtoDetDIAS: TIntegerField
      DisplayLabel = 'Dias'
      FieldName = 'DIAS'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSRtoDetSALDO: TFMTBCDField
      DisplayLabel = 'Saldo a Pagar'
      FieldName = 'SALDO'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
  end
  object DSRtoDet: TDataSource
    DataSet = CDSRtoDet
    Left = 216
    Top = 56
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
      'and tipo_comprob='#39'RK'#39
      'and compra_venta='#39'V'#39' '
      'and sucursal=:suc')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 480
    Top = 8
    object QComprobID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object QComprobTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Required = True
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
    object QComprobCAJA_DEFECTO: TIntegerField
      FieldName = 'CAJA_DEFECTO'
      Required = True
    end
    object QComprobDIVIDE_IVA: TStringField
      FieldName = 'DIVIDE_IVA'
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
  end
  object DSPStock: TDataSetProvider
    DataSet = DMMain_2.QStock
    Left = 80
    Top = 110
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
    Left = 152
    Top = 110
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
      ProviderFlags = []
      Size = 35
    end
    object CDSStockMUESTRASUBRUBRO: TStringField
      FieldName = 'MUESTRASUBRUBRO'
      ProviderFlags = []
      Size = 45
    end
    object CDSStockMUESTRAMARCA: TStringField
      FieldName = 'MUESTRAMARCA'
      ProviderFlags = []
      Size = 25
    end
    object CDSStockMUESTRATASA: TStringField
      FieldName = 'MUESTRATASA'
      ProviderFlags = []
      Size = 15
    end
    object CDSStockMUESTRATASAPORCENTAJE: TFMTBCDField
      FieldName = 'MUESTRATASAPORCENTAJE'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
    object CDSStockMUESTRASOBRETASA: TStringField
      FieldName = 'MUESTRASOBRETASA'
      ProviderFlags = []
      Size = 15
    end
    object CDSStockMUESTRASOBRETASAPROCENTAJE: TFMTBCDField
      FieldName = 'MUESTRASOBRETASAPROCENTAJE'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
    object CDSStockMUESTRATASAIB: TFMTBCDField
      FieldName = 'MUESTRATASAIB'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
    object CDSStockMUESTRATABLAPRECIODETALLE: TStringField
      FieldName = 'MUESTRATABLAPRECIODETALLE'
      ProviderFlags = []
      Size = 40
    end
    object CDSStockMUESTRATABLAPRECIO1: TFMTBCDField
      FieldName = 'MUESTRATABLAPRECIO1'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
    object CDSStockMUESTRATABLAPRECIO2: TFMTBCDField
      FieldName = 'MUESTRATABLAPRECIO2'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
  end
  object DSPDeposito: TDataSetProvider
    Left = 320
    Top = 158
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
  object DSPIva: TDataSetProvider
    DataSet = DMMain_2.QIva
    Left = 320
    Top = 215
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
  object DSPInscripcion: TDataSetProvider
    Left = 320
    Top = 11
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
  object DSPLdr: TDataSetProvider
    DataSet = DMMain_2.QLdr
    Left = 320
    Top = 58
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
  object DSPClientes: TDataSetProvider
    DataSet = DMMain_2.QClientes
    Left = 320
    Top = 104
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
    Left = 544
    Top = 8
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
    Left = 608
    Top = 8
  end
  object IBGRto_Cab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RTOCAB_MKT'
    SystemGenerators = False
    Left = 264
    Top = 8
  end
  object IBGRto_Det: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RTODET_MKT'
    SystemGenerators = False
    Left = 256
    Top = 56
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
    Left = 600
    Top = 72
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
    Left = 528
    Top = 72
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMMain_2.QSucursal
    Options = [poAllowCommandText]
    Left = 312
    Top = 326
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
    Left = 384
    Top = 326
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
  object DSPCondVenta: TDataSetProvider
    DataSet = DMMain_2.QCondVenta
    Left = 72
    Top = 169
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
    Left = 144
    Top = 169
    object CDSCondVentaCODIGOCLIENTE: TStringField
      FieldName = 'CODIGOCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSCondVentaCODIGOPAGO: TIntegerField
      FieldName = 'CODIGOPAGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
      ProviderFlags = []
      Required = True
    end
    object CDSCondVentaDIAS: TIntegerField
      FieldName = 'DIAS'
      ProviderFlags = []
    end
    object CDSCondVentaDESCUENTO_FPAGO: TFMTBCDField
      FieldName = 'DESCUENTO_FPAGO'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
  end
  object DSPBuscaVendedor: TDataSetProvider
    DataSet = DMBuscadores.QBuscaVendedores
    Left = 72
    Top = 234
  end
  object CDSBuscaVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaVendedor'
    Left = 144
    Top = 234
    object CDSBuscaVendedorCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSBuscaVendedorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSBuscaVendedorCOMISION: TFMTBCDField
      FieldName = 'COMISION'
      Required = True
      Precision = 15
      Size = 3
    end
  end
  object DSPBuscaDeposito: TDataSetProvider
    DataSet = DMBuscadores.QBuscaDeposito
    Left = 56
    Top = 293
  end
  object CDSBuscaDeposito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaDeposito'
    Left = 144
    Top = 293
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
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Left = 64
    Top = 352
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 128
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
  object DSPBuscaCondVenta: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCondVentaCliente
    Left = 48
    Top = 416
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
    Left = 128
    Top = 416
    object CDSBuscaCondVentaCODIGOCLIENTE: TStringField
      FieldName = 'CODIGOCLIENTE'
      Required = True
      Size = 6
    end
    object CDSBuscaCondVentaCODIGOPAGO: TIntegerField
      FieldName = 'CODIGOPAGO'
      Required = True
    end
    object CDSBuscaCondVentaDESCUENTO: TFMTBCDField
      FieldName = 'DESCUENTO'
      Precision = 15
      Size = 3
    end
    object CDSBuscaCondVentaPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaCondVentaDETALLE: TStringField
      FieldName = 'DETALLE'
      Required = True
    end
  end
end
