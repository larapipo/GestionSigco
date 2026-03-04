object DatosImportacioComp: TDatosImportacioComp
  OldCreateOrder = False
  Height = 454
  Width = 888
  object QFcCompCab: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'Desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from FcCompCab'
      'where fechacompra>=:Desde and fechacompra<=:Hasta'
      'order by id_fc')
    SQLConnection = SQLConectionImportacion
    Left = 40
    Top = 56
  end
  object DSPFcCompCab: TDataSetProvider
    DataSet = QFcCompCab
    Left = 104
    Top = 56
  end
  object CDSFcCompCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'Desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFcCompCab'
    Left = 184
    Top = 56
    object CDSFcCompCabID_FC: TIntegerField
      FieldName = 'ID_FC'
      Required = True
    end
    object CDSFcCompCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 4
    end
    object CDSFcCompCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 4
    end
    object CDSFcCompCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSFcCompCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSFcCompCabLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      FixedChar = True
      Size = 1
    end
    object CDSFcCompCabSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Size = 4
    end
    object CDSFcCompCabNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Size = 8
    end
    object CDSFcCompCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSFcCompCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSFcCompCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSFcCompCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSFcCompCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSFcCompCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object CDSFcCompCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSFcCompCabFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
      Required = True
    end
    object CDSFcCompCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object CDSFcCompCabCONDICIONCOMPRA: TIntegerField
      FieldName = 'CONDICIONCOMPRA'
      Required = True
    end
    object CDSFcCompCabANULADO: TStringField
      FieldName = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcCompCabORDENCOMPRA: TStringField
      FieldName = 'ORDENCOMPRA'
      Size = 8
    end
    object CDSFcCompCabN_OPERACION2: TFMTBCDField
      FieldName = 'N_OPERACION2'
      Precision = 15
      Size = 3
    end
    object CDSFcCompCabNETOGRAV1: TFMTBCDField
      FieldName = 'NETOGRAV1'
      Precision = 15
      Size = 3
    end
    object CDSFcCompCabDSTO: TFMTBCDField
      FieldName = 'DSTO'
      Precision = 15
      Size = 3
    end
    object CDSFcCompCabDSTOIMPORTE: TFMTBCDField
      FieldName = 'DSTOIMPORTE'
      Precision = 15
      Size = 3
    end
    object CDSFcCompCabNETOGRAV2: TFMTBCDField
      FieldName = 'NETOGRAV2'
      Precision = 15
      Size = 3
    end
    object CDSFcCompCabNETOEXEN1: TFMTBCDField
      FieldName = 'NETOEXEN1'
      Precision = 15
      Size = 3
    end
    object CDSFcCompCabNETOEXEN2: TFMTBCDField
      FieldName = 'NETOEXEN2'
      Precision = 15
      Size = 3
    end
    object CDSFcCompCabIMPORTEEXCLUIDO2: TFMTBCDField
      FieldName = 'IMPORTEEXCLUIDO2'
      Precision = 15
      Size = 3
    end
    object CDSFcCompCabIMPORTEEXCLUIDO1: TFMTBCDField
      FieldName = 'IMPORTEEXCLUIDO1'
      Precision = 15
      Size = 3
    end
    object CDSFcCompCabTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 15
      Size = 3
    end
    object CDSFcCompCabDEBE: TFMTBCDField
      FieldName = 'DEBE'
      Precision = 15
      Size = 3
    end
    object CDSFcCompCabAPLICA: TStringField
      FieldName = 'APLICA'
      Size = 13
    end
    object CDSFcCompCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object CDSFcCompCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object CDSFcCompCabSUCURSALCOMPRA: TIntegerField
      FieldName = 'SUCURSALCOMPRA'
      Required = True
    end
    object CDSFcCompCabZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object CDSFcCompCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object CDSFcCompCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcCompCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcCompCabFECHAFISCAL: TSQLTimeStampField
      FieldName = 'FECHAFISCAL'
      Required = True
    end
    object CDSFcCompCabNETOMONOTRIBUTO1: TFMTBCDField
      FieldName = 'NETOMONOTRIBUTO1'
      Precision = 15
      Size = 3
    end
    object CDSFcCompCabNETOMONOTRIBUTO2: TFMTBCDField
      FieldName = 'NETOMONOTRIBUTO2'
      Precision = 15
      Size = 3
    end
    object CDSFcCompCabCPBTE_INTERNO: TStringField
      FieldName = 'CPBTE_INTERNO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcCompCabINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcCompCabINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcCompCabREDUCIDA: TStringField
      FieldName = 'REDUCIDA'
      FixedChar = True
      Size = 1
    end
    object CDSFcCompCabTIPO_PROVEEDOR: TStringField
      FieldName = 'TIPO_PROVEEDOR'
      FixedChar = True
      Size = 1
    end
    object CDSFcCompCabJURIDICCION: TIntegerField
      FieldName = 'JURIDICCION'
    end
    object CDSFcCompCabPERCEPCION_IB_BASEIMPONIBLE: TFMTBCDField
      FieldName = 'PERCEPCION_IB_BASEIMPONIBLE'
      Precision = 15
      Size = 3
    end
    object CDSFcCompCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object CDSFcCompCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSFcCompCabTOTAL_UNIDADES: TFMTBCDField
      FieldName = 'TOTAL_UNIDADES'
      Precision = 15
      Size = 3
    end
    object CDSFcCompCabMONEDA_CPBTE: TIntegerField
      FieldName = 'MONEDA_CPBTE'
    end
    object CDSFcCompCabMONEDA_CPBTE_COTIZACION: TFMTBCDField
      FieldName = 'MONEDA_CPBTE_COTIZACION'
      Precision = 15
      Size = 3
    end
    object CDSFcCompCabNUMERO_OPERACION: TStringField
      FieldName = 'NUMERO_OPERACION'
      Size = 8
    end
  end
  object DSFcCompCab: TDataSource
    DataSet = CDSFcCompCab
    Left = 272
    Top = 64
  end
  object DSFcCompDet: TDataSource
    DataSet = CDSFcCompDet
    Left = 272
    Top = 120
  end
  object CDSFcCompDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_desde'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFcCompDet'
    Left = 184
    Top = 120
    object CDSFcCompDetID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSFcCompDetID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Required = True
    end
    object CDSFcCompDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 4
    end
    object CDSFcCompDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 4
    end
    object CDSFcCompDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSFcCompDetCODIGOPROVEEDOR: TStringField
      FieldName = 'CODIGOPROVEEDOR'
      Required = True
      Size = 6
    end
    object CDSFcCompDetRENGLON: TFMTBCDField
      FieldName = 'RENGLON'
      Precision = 15
      Size = 3
    end
    object CDSFcCompDetFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
      Required = True
    end
    object CDSFcCompDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object CDSFcCompDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSFcCompDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object CDSFcCompDetCANTIDAD: TFMTBCDField
      FieldName = 'CANTIDAD'
      Required = True
      Precision = 15
      Size = 3
    end
    object CDSFcCompDetUNIDADES_TOTAL: TFloatField
      FieldName = 'UNIDADES_TOTAL'
    end
    object CDSFcCompDetUNIDADES_EXENTO: TFloatField
      FieldName = 'UNIDADES_EXENTO'
    end
    object CDSFcCompDetUNIDADES_GRAVADO: TFloatField
      FieldName = 'UNIDADES_GRAVADO'
    end
    object CDSFcCompDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
    end
    object CDSFcCompDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
    end
    object CDSFcCompDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
    end
    object CDSFcCompDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcCompDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcCompDetIVA_TASA: TFMTBCDField
      FieldName = 'IVA_TASA'
      Precision = 15
      Size = 3
    end
    object CDSFcCompDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Required = True
    end
    object CDSFcCompDetIVA_SOBRETASA: TFMTBCDField
      FieldName = 'IVA_SOBRETASA'
      Precision = 15
      Size = 3
    end
    object CDSFcCompDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object CDSFcCompDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
    end
    object CDSFcCompDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
    end
    object CDSFcCompDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
    end
    object CDSFcCompDetDESCUENTO: TFMTBCDField
      FieldName = 'DESCUENTO'
      Precision = 15
      Size = 3
    end
    object CDSFcCompDetTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 15
      Size = 3
    end
    object CDSFcCompDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object CDSFcCompDetMARGEN: TFMTBCDField
      FieldName = 'MARGEN'
      Precision = 15
      Size = 3
    end
    object CDSFcCompDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcCompDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcCompDetCOSTO_IMP_INTERNO: TFMTBCDField
      FieldName = 'COSTO_IMP_INTERNO'
      Precision = 15
      Size = 3
    end
    object CDSFcCompDetUNIDADES_IMP_INTERNOS: TFMTBCDField
      FieldName = 'UNIDADES_IMP_INTERNOS'
      Precision = 15
      Size = 3
    end
    object CDSFcCompDetUNITARIO_IMP_INTERNO: TFMTBCDField
      FieldName = 'UNITARIO_IMP_INTERNO'
      Precision = 15
      Size = 3
    end
    object CDSFcCompDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcCompDetID_RECEPCION_CAB: TIntegerField
      FieldName = 'ID_RECEPCION_CAB'
    end
    object CDSFcCompDetID_RECEPCION_DET: TIntegerField
      FieldName = 'ID_RECEPCION_DET'
    end
    object CDSFcCompDetNRORECEPCION: TStringField
      FieldName = 'NRORECEPCION'
      Size = 13
    end
    object CDSFcCompDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object CDSFcCompDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
    end
    object CDSFcCompDetCOTIZACION: TFMTBCDField
      FieldName = 'COTIZACION'
      Precision = 15
      Size = 3
    end
  end
  object DSPFcCompDet: TDataSetProvider
    DataSet = QFcCompDet
    Left = 104
    Top = 120
  end
  object QFcCompDet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_desde'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_hasta'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from fccompdet where id_cabfac '
      'between :id_desde and :id_hasta')
    SQLConnection = SQLConectionImportacion
    Left = 40
    Top = 120
  end
  object QFcCompImp: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_desde'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_hasta'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from fccompimpuesto where id_fccompcab'
      'between :id_desde and :id_hasta')
    SQLConnection = SQLConectionImportacion
    Left = 32
    Top = 168
  end
  object DSPFcCompImp: TDataSetProvider
    DataSet = QFcCompImp
    Left = 112
    Top = 168
  end
  object CDSFcCompImp: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_desde'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFcCompImp'
    Left = 184
    Top = 168
    object CDSFcCompImpID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      Required = True
    end
    object CDSFcCompImpCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      Required = True
    end
    object CDSFcCompImpDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSFcCompImpID_FCCOMPCAB: TIntegerField
      FieldName = 'ID_FCCOMPCAB'
      Required = True
    end
    object CDSFcCompImpNETO: TFMTBCDField
      FieldName = 'NETO'
      Precision = 15
      Size = 3
    end
    object CDSFcCompImpTASA: TFMTBCDField
      FieldName = 'TASA'
      Precision = 15
      Size = 3
    end
    object CDSFcCompImpIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Precision = 15
      Size = 3
    end
  end
  object DSFcCompImp: TDataSource
    DataSet = CDSFcCompImp
    Left = 272
    Top = 168
  end
  object QCondPago: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_desde'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_hasta'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from condicionespago where id_fc'
      'between :id_desde and :id_hasta')
    SQLConnection = SQLConectionImportacion
    Left = 416
    Top = 24
  end
  object DSPCondPago: TDataSetProvider
    DataSet = QCondPago
    Left = 488
    Top = 24
  end
  object CDSCondPago: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_desde'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCondPago'
    Left = 552
    Top = 24
    object CDSCondPagoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSCondPagoID_FC: TIntegerField
      FieldName = 'ID_FC'
      Required = True
    end
    object CDSCondPagoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 4
    end
    object CDSCondPagoNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object CDSCondPagoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSCondPagoITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object CDSCondPagoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSCondPagoDSCTO: TFMTBCDField
      FieldName = 'DSCTO'
      Precision = 15
      Size = 3
    end
    object CDSCondPagoIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Precision = 15
      Size = 3
    end
    object CDSCondPagoCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 4
    end
  end
  object DSCondPago: TDataSource
    DataSet = CDSCondPago
    Left = 616
    Top = 24
  end
  object DSFcCompPerIva: TDataSource
    DataSet = CDSFcCompPerIva
    Left = 600
    Top = 88
  end
  object CDSFcCompPerIva: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_desde'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFcCompPerIva'
    Left = 560
    Top = 88
    object CDSFcCompPerIvaID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      Required = True
    end
    object CDSFcCompPerIvaCODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Required = True
    end
    object CDSFcCompPerIvaDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSFcCompPerIvaID_FCCOMPCAB: TIntegerField
      FieldName = 'ID_FCCOMPCAB'
      Required = True
    end
    object CDSFcCompPerIvaNETO: TFMTBCDField
      FieldName = 'NETO'
      Precision = 15
      Size = 3
    end
    object CDSFcCompPerIvaTASA: TFMTBCDField
      FieldName = 'TASA'
      Precision = 15
      Size = 3
    end
    object CDSFcCompPerIvaIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Precision = 15
      Size = 3
    end
    object CDSFcCompPerIvaCODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
    end
  end
  object DSPFcCompPerIva: TDataSetProvider
    DataSet = QFcCompPerIva
    Left = 472
    Top = 88
  end
  object QFcCompPerIva: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_desde'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_hasta'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from FCCOMPPERCEPCIONIVA where id_fccompcab'
      'between :id_desde and :id_hasta')
    SQLConnection = SQLConectionImportacion
    Left = 408
    Top = 88
  end
  object CDSFcCompPerIB: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_desde'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFcCompPerIB'
    Left = 208
    Top = 224
    object CDSFcCompPerIBID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      Required = True
    end
    object CDSFcCompPerIBCODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Required = True
    end
    object CDSFcCompPerIBDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSFcCompPerIBID_FCCOMPCAB: TIntegerField
      FieldName = 'ID_FCCOMPCAB'
      Required = True
    end
    object CDSFcCompPerIBNETO: TFMTBCDField
      FieldName = 'NETO'
      Precision = 15
      Size = 3
    end
    object CDSFcCompPerIBTASA: TFMTBCDField
      FieldName = 'TASA'
      Precision = 15
      Size = 3
    end
    object CDSFcCompPerIBIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Precision = 15
      Size = 3
    end
    object CDSFcCompPerIBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
    end
  end
  object DSFcCompPerIB: TDataSource
    DataSet = CDSFcCompPerIB
    Left = 280
    Top = 224
  end
  object DSPFcCompPerIB: TDataSetProvider
    DataSet = QFcCompPerIB
    Left = 112
    Top = 224
  end
  object QFcCompPerIB: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_desde'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_hasta'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from FCCOMPPERCEPCIONIB where id_fccompcab'
      'between :id_desde and :id_hasta')
    SQLConnection = SQLConectionImportacion
    Left = 32
    Top = 224
  end
  object SQLConectionImportacion: TSQLConnection
    ConnectionName = 'IBConnection'
    DriverName = 'Interbase'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      
        'Database=C:\Proyectos Delphi\GestionComercial\Tablas IB\gestionv' +
        '3.lar'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=regulador'
      'ServerCharSet='
      'SQLDialect=1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    Left = 40
    Top = 8
  end
end
