object DatosImportacionComp_Input: TDatosImportacionComp_Input
  Height = 565
  Width = 726
  object CDSFcCompCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPFcCompCab'
    Left = 168
    Top = 24
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
    object CDSFcCompCabN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
    end
    object CDSFcCompCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
    end
    object CDSFcCompCabDSTO: TFloatField
      FieldName = 'DSTO'
    end
    object CDSFcCompCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
    end
    object CDSFcCompCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
    end
    object CDSFcCompCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
    end
    object CDSFcCompCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
    end
    object CDSFcCompCabIMPORTEEXCLUIDO2: TFloatField
      FieldName = 'IMPORTEEXCLUIDO2'
    end
    object CDSFcCompCabIMPORTEEXCLUIDO1: TFloatField
      FieldName = 'IMPORTEEXCLUIDO1'
    end
    object CDSFcCompCabTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object CDSFcCompCabDEBE: TFloatField
      FieldName = 'DEBE'
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
    object CDSFcCompCabNETOMONOTRIBUTO1: TFloatField
      FieldName = 'NETOMONOTRIBUTO1'
    end
    object CDSFcCompCabNETOMONOTRIBUTO2: TFloatField
      FieldName = 'NETOMONOTRIBUTO2'
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
    object CDSFcCompCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField
      FieldName = 'PERCEPCION_IB_BASEIMPONIBLE'
    end
    object CDSFcCompCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object CDSFcCompCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSFcCompCabTOTAL_UNIDADES: TFloatField
      FieldName = 'TOTAL_UNIDADES'
    end
    object CDSFcCompCabMONEDA_CPBTE: TIntegerField
      FieldName = 'MONEDA_CPBTE'
    end
    object CDSFcCompCabMONEDA_CPBTE_COTIZACION: TFloatField
      FieldName = 'MONEDA_CPBTE_COTIZACION'
    end
  end
  object DSCaja: TDataSource
    DataSet = CDSCaja
    Left = 536
    Top = 488
  end
  object CDSCaja: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCaja'
    Left = 608
    Top = 401
    object CDSCajaID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
    end
    object CDSCajaID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
    end
    object CDSCajaNUMEROCAJA: TIntegerField
      FieldName = 'NUMEROCAJA'
    end
    object CDSCajaMUESTRACAJA: TStringField
      FieldName = 'MUESTRACAJA'
      Size = 25
    end
  end
  object DSPCaja: TDataSetProvider
    DataSet = QC
    Options = []
    Left = 536
    Top = 392
  end
  object QC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'Select c.id_caja, c.id_cuenta_caja,c.numerocaja,cta.nombre as Mu' +
        'estraCaja from caja_cab c'
      'left join cuenta_caja cta on cta.id_cuenta=c.id_cuenta_caja'
      'where estado=0')
    Left = 472
    Top = 404
    object QCID_CAJA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CAJA'
    end
    object QCID_CUENTA_CAJA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CUENTA_CAJA'
    end
    object QCNUMEROCAJA: TIntegerField
      DisplayWidth = 10
      FieldName = 'NUMEROCAJA'
    end
    object QCMUESTRACAJA: TStringField
      DisplayWidth = 25
      FieldName = 'MUESTRACAJA'
      Size = 25
    end
  end
  object spIngresaMovCaja: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'AGREGAR_MOV_CAJA_EFECTIVO'
    Left = 360
    Top = 400
    ParamData = <
      item
        Name = 'ID_CPBTE'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'TIPO_COMPROB'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end
      item
        Name = 'CLASE_COMPROB'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end
      item
        Name = 'NROCPBTE'
        DataType = ftString
        Precision = 13
        ParamType = ptInput
      end
      item
        Name = 'ID_CUENTA_CAJA'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'FECHA_MOVIMIENTO'
        DataType = ftDateTime
        Precision = 8
        ParamType = ptInput
      end
      item
        Name = 'DEBE'
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Name = 'HABER'
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Name = 'TIPOOPERACION'
        DataType = ftString
        Precision = 1
        ParamType = ptInput
      end>
  end
  object QFcCompCondPago: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from condicionespago where id=:id')
    Left = 24
    Top = 320
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QFcCompCondPagoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QFcCompCondPagoID_FC: TIntegerField
      FieldName = 'ID_FC'
      Required = True
    end
    object QFcCompCondPagoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 4
    end
    object QFcCompCondPagoNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object QFcCompCondPagoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QFcCompCondPagoITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object QFcCompCondPagoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QFcCompCondPagoDSCTO: TFloatField
      FieldName = 'DSCTO'
    end
    object QFcCompCondPagoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QFcCompCondPagoCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 4
    end
  end
  object DSFcCompConPago: TDataSource
    DataSet = CDSFcCompCondPago
    Left = 104
    Top = 320
  end
  object CDSFcCompCondPago: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFcCompConPago'
    Left = 168
    Top = 312
    object CDSFcCompCondPagoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSFcCompCondPagoID_FC: TIntegerField
      FieldName = 'ID_FC'
      Required = True
    end
    object CDSFcCompCondPagoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 4
    end
    object CDSFcCompCondPagoNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object CDSFcCompCondPagoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSFcCompCondPagoITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object CDSFcCompCondPagoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSFcCompCondPagoDSCTO: TFloatField
      FieldName = 'DSCTO'
    end
    object CDSFcCompCondPagoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object CDSFcCompCondPagoCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 4
    end
  end
  object DSPFcCompConPago: TDataSetProvider
    DataSet = QFcCompCondPago
    Options = []
    Left = 232
    Top = 312
  end
  object ibgCondPago: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_CONDPAGO_FC_COMPRA'
    SystemGenerators = False
    Left = 312
    Top = 312
  end
  object CDSFcCompCondPagoXML: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 456
    Top = 304
  end
  object DSCompCondPagoXML: TDataSource
    DataSet = CDSFcCompCondPagoXML
    Left = 552
    Top = 304
  end
  object DSFcCompPerIBXML: TDataSource
    DataSet = CDSFcCompPerIBXML
    Left = 544
    Top = 248
  end
  object CDSFcCompPerIBXML: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 448
    Top = 248
  end
  object IBGPercepcionIB: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_PERCEPCION_IB'
    SystemGenerators = False
    Left = 320
    Top = 256
  end
  object DSPFcCompPerIB: TDataSetProvider
    DataSet = QFcCompPerIB
    Options = []
    Left = 240
    Top = 240
  end
  object CDSFcCompPerIB: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFcCompPerIB'
    Left = 168
    Top = 232
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
    object CDSFcCompPerIBNETO: TFloatField
      FieldName = 'NETO'
    end
    object CDSFcCompPerIBTASA: TFloatField
      FieldName = 'TASA'
    end
    object CDSFcCompPerIBIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object CDSFcCompPerIBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
    end
  end
  object DSFcCompPerIB: TDataSource
    DataSet = CDSFcCompPerIB
    Left = 88
    Top = 232
  end
  object QFcCompPerIB: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from fccomppercepcionib where id_percepcion=:id')
    Left = 24
    Top = 240
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QFcCompPerIBID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      Required = True
    end
    object QFcCompPerIBCODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Required = True
    end
    object QFcCompPerIBDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object QFcCompPerIBID_FCCOMPCAB: TIntegerField
      FieldName = 'ID_FCCOMPCAB'
      Required = True
    end
    object QFcCompPerIBNETO: TFloatField
      FieldName = 'NETO'
    end
    object QFcCompPerIBTASA: TFloatField
      FieldName = 'TASA'
    end
    object QFcCompPerIBIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QFcCompPerIBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
    end
  end
  object QFcCompPerIva: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from fccomppercepcioniva where id_percepcion=:id')
    Left = 24
    Top = 192
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QFcCompPerIvaID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      Required = True
    end
    object QFcCompPerIvaCODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Required = True
    end
    object QFcCompPerIvaDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object QFcCompPerIvaID_FCCOMPCAB: TIntegerField
      FieldName = 'ID_FCCOMPCAB'
      Required = True
    end
    object QFcCompPerIvaNETO: TFloatField
      FieldName = 'NETO'
    end
    object QFcCompPerIvaTASA: TFloatField
      FieldName = 'TASA'
    end
    object QFcCompPerIvaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QFcCompPerIvaCODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
    end
  end
  object DSFcCompPerIva: TDataSource
    DataSet = CDSFcCompPerIva
    Left = 96
    Top = 192
  end
  object CDSFcCompPerIva: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFcCompPerIva'
    Left = 160
    Top = 192
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
    object CDSFcCompPerIvaNETO: TFloatField
      FieldName = 'NETO'
    end
    object CDSFcCompPerIvaTASA: TFloatField
      FieldName = 'TASA'
    end
    object CDSFcCompPerIvaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object CDSFcCompPerIvaCODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
    end
  end
  object DSPFcCompPerIva: TDataSetProvider
    DataSet = QFcCompPerIva
    Options = []
    Left = 232
    Top = 192
  end
  object IBGPercepcionIVA: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_PERCEPCION_IVA'
    SystemGenerators = False
    Left = 320
    Top = 200
  end
  object CDSFcCompPerIvaXML: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 448
    Top = 192
  end
  object DSFcCompPerIvaXML: TDataSource
    DataSet = CDSFcCompPerIvaXML
    Left = 552
    Top = 208
  end
  object DSFcCompImpXML: TDataSource
    DataSet = CDSFcCompImpXML
    Left = 552
    Top = 152
  end
  object CDSFcCompImpXML: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 456
    Top = 144
  end
  object IBGImpuestos: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_IMPUESTOS_COMPRA'
    SystemGenerators = False
    Left = 320
    Top = 144
  end
  object DSPFcCompImp: TDataSetProvider
    DataSet = QFcCompImp
    Options = []
    Left = 232
    Top = 144
  end
  object CDSFcCompImp: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFcCompImp'
    Left = 160
    Top = 144
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
    object CDSFcCompImpNETO: TFloatField
      FieldName = 'NETO'
    end
    object CDSFcCompImpTASA: TFloatField
      FieldName = 'TASA'
    end
    object CDSFcCompImpIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
  end
  object DSFcCompImp: TDataSource
    DataSet = CDSFcCompImp
    Left = 88
    Top = 144
  end
  object QFcCompImp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from fccompImpuesto where id_impuesto=:id')
    Left = 24
    Top = 144
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QFcCompImpID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      Required = True
    end
    object QFcCompImpCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      Required = True
    end
    object QFcCompImpDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object QFcCompImpID_FCCOMPCAB: TIntegerField
      FieldName = 'ID_FCCOMPCAB'
      Required = True
    end
    object QFcCompImpNETO: TFloatField
      FieldName = 'NETO'
    end
    object QFcCompImpTASA: TFloatField
      FieldName = 'TASA'
    end
    object QFcCompImpIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
  end
  object QFcCompDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from fccompDet where id=:id')
    Left = 32
    Top = 80
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QFcCompDetID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QFcCompDetID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Required = True
    end
    object QFcCompDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 4
    end
    object QFcCompDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 4
    end
    object QFcCompDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QFcCompDetCODIGOPROVEEDOR: TStringField
      FieldName = 'CODIGOPROVEEDOR'
      Required = True
      Size = 6
    end
    object QFcCompDetRENGLON: TFloatField
      FieldName = 'RENGLON'
    end
    object QFcCompDetFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
      Required = True
    end
    object QFcCompDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object QFcCompDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object QFcCompDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object QFcCompDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Required = True
    end
    object QFcCompDetUNIDADES_TOTAL: TFloatField
      FieldName = 'UNIDADES_TOTAL'
    end
    object QFcCompDetUNIDADES_EXENTO: TFloatField
      FieldName = 'UNIDADES_EXENTO'
    end
    object QFcCompDetUNIDADES_GRAVADO: TFloatField
      FieldName = 'UNIDADES_GRAVADO'
    end
    object QFcCompDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
    end
    object QFcCompDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
    end
    object QFcCompDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
    end
    object QFcCompDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcCompDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcCompDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
    end
    object QFcCompDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Required = True
    end
    object QFcCompDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
    end
    object QFcCompDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object QFcCompDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
    end
    object QFcCompDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
    end
    object QFcCompDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
    end
    object QFcCompDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object QFcCompDetTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object QFcCompDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object QFcCompDetMARGEN: TFloatField
      FieldName = 'MARGEN'
    end
    object QFcCompDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcCompDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcCompDetCOSTO_IMP_INTERNO: TFloatField
      FieldName = 'COSTO_IMP_INTERNO'
    end
    object QFcCompDetUNIDADES_IMP_INTERNOS: TFloatField
      FieldName = 'UNIDADES_IMP_INTERNOS'
    end
    object QFcCompDetUNITARIO_IMP_INTERNO: TFloatField
      FieldName = 'UNITARIO_IMP_INTERNO'
    end
    object QFcCompDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcCompDetID_RECEPCION_CAB: TIntegerField
      FieldName = 'ID_RECEPCION_CAB'
    end
    object QFcCompDetID_RECEPCION_DET: TIntegerField
      FieldName = 'ID_RECEPCION_DET'
    end
    object QFcCompDetNRORECEPCION: TStringField
      FieldName = 'NRORECEPCION'
      Size = 13
    end
    object QFcCompDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object QFcCompDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
    end
    object QFcCompDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
  end
  object DSFcCompDet: TDataSource
    DataSet = CDSFcCompDet
    Left = 96
    Top = 80
  end
  object CDSFcCompDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFcCOmpDet'
    Left = 168
    Top = 80
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
    object CDSFcCompDetRENGLON: TFloatField
      FieldName = 'RENGLON'
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
    object CDSFcCompDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Required = True
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
    object CDSFcCompDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
    end
    object CDSFcCompDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Required = True
    end
    object CDSFcCompDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
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
    object CDSFcCompDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object CDSFcCompDetTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object CDSFcCompDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object CDSFcCompDetMARGEN: TFloatField
      FieldName = 'MARGEN'
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
    object CDSFcCompDetCOSTO_IMP_INTERNO: TFloatField
      FieldName = 'COSTO_IMP_INTERNO'
    end
    object CDSFcCompDetUNIDADES_IMP_INTERNOS: TFloatField
      FieldName = 'UNIDADES_IMP_INTERNOS'
    end
    object CDSFcCompDetUNITARIO_IMP_INTERNO: TFloatField
      FieldName = 'UNITARIO_IMP_INTERNO'
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
    object CDSFcCompDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
  end
  object DSPFcCompDet: TDataSetProvider
    DataSet = QFcCompDet
    Options = []
    Left = 232
    Top = 88
  end
  object IBGFcCompDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FC_COMPRA_DET'
    SystemGenerators = False
    Left = 320
    Top = 88
  end
  object CDSFcCompDetXML: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 456
    Top = 96
  end
  object DSFcCompDetXML: TDataSource
    DataSet = CDSFcCompDetXML
    Left = 552
    Top = 104
  end
  object DSFcCompCabXML: TDataSource
    DataSet = CDSFcCompCabXML
    Left = 552
    Top = 40
  end
  object CDSFcCompCabXML: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 448
    Top = 40
  end
  object QBuscaFc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from fccompcab where id_fc=:id ')
    Left = 640
    Top = 48
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object IBGFcCompCab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FC_COMPRA_CAB'
    SystemGenerators = False
    Left = 320
    Top = 32
  end
  object DSPFcCompCab: TDataSetProvider
    DataSet = QFcCompCab
    Options = []
    Left = 240
    Top = 24
  end
  object DSFcCompCab: TDataSource
    DataSet = CDSFcCompCab
    Left = 104
    Top = 24
  end
  object QFcCompCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from fccompcab where id_fc=:id ')
    Left = 40
    Top = 24
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QFcCompCabID_FC: TIntegerField
      FieldName = 'ID_FC'
      Required = True
    end
    object QFcCompCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 4
    end
    object QFcCompCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 4
    end
    object QFcCompCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QFcCompCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QFcCompCabLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      FixedChar = True
      Size = 1
    end
    object QFcCompCabSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Size = 4
    end
    object QFcCompCabNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Size = 8
    end
    object QFcCompCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QFcCompCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object QFcCompCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object QFcCompCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object QFcCompCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object QFcCompCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object QFcCompCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object QFcCompCabFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
      Required = True
    end
    object QFcCompCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object QFcCompCabCONDICIONCOMPRA: TIntegerField
      FieldName = 'CONDICIONCOMPRA'
      Required = True
    end
    object QFcCompCabANULADO: TStringField
      FieldName = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcCompCabORDENCOMPRA: TStringField
      FieldName = 'ORDENCOMPRA'
      Size = 8
    end
    object QFcCompCabN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
    end
    object QFcCompCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
    end
    object QFcCompCabDSTO: TFloatField
      FieldName = 'DSTO'
    end
    object QFcCompCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
    end
    object QFcCompCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
    end
    object QFcCompCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
    end
    object QFcCompCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
    end
    object QFcCompCabIMPORTEEXCLUIDO2: TFloatField
      FieldName = 'IMPORTEEXCLUIDO2'
    end
    object QFcCompCabIMPORTEEXCLUIDO1: TFloatField
      FieldName = 'IMPORTEEXCLUIDO1'
    end
    object QFcCompCabTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object QFcCompCabDEBE: TFloatField
      FieldName = 'DEBE'
    end
    object QFcCompCabAPLICA: TStringField
      FieldName = 'APLICA'
      Size = 13
    end
    object QFcCompCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object QFcCompCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object QFcCompCabSUCURSALCOMPRA: TIntegerField
      FieldName = 'SUCURSALCOMPRA'
      Required = True
    end
    object QFcCompCabZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object QFcCompCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object QFcCompCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcCompCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcCompCabFECHAFISCAL: TSQLTimeStampField
      FieldName = 'FECHAFISCAL'
      Required = True
    end
    object QFcCompCabNETOMONOTRIBUTO1: TFloatField
      FieldName = 'NETOMONOTRIBUTO1'
    end
    object QFcCompCabNETOMONOTRIBUTO2: TFloatField
      FieldName = 'NETOMONOTRIBUTO2'
    end
    object QFcCompCabCPBTE_INTERNO: TStringField
      FieldName = 'CPBTE_INTERNO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcCompCabINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcCompCabINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcCompCabREDUCIDA: TStringField
      FieldName = 'REDUCIDA'
      FixedChar = True
      Size = 1
    end
    object QFcCompCabTIPO_PROVEEDOR: TStringField
      FieldName = 'TIPO_PROVEEDOR'
      FixedChar = True
      Size = 1
    end
    object QFcCompCabJURIDICCION: TIntegerField
      FieldName = 'JURIDICCION'
    end
    object QFcCompCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField
      FieldName = 'PERCEPCION_IB_BASEIMPONIBLE'
    end
    object QFcCompCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object QFcCompCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object QFcCompCabTOTAL_UNIDADES: TFloatField
      FieldName = 'TOTAL_UNIDADES'
    end
    object QFcCompCabMONEDA_CPBTE: TIntegerField
      FieldName = 'MONEDA_CPBTE'
    end
    object QFcCompCabMONEDA_CPBTE_COTIZACION: TFloatField
      FieldName = 'MONEDA_CPBTE_COTIZACION'
    end
    object QFcCompCabNUMERO_OPERACION: TStringField
      FieldName = 'NUMERO_OPERACION'
      Size = 8
    end
  end
  object QVerifiComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select NroCpbte from fccompcab where'
      
        'nrocpbte=:Nro and clasecpbte=:clase and tipocpbte=:tipo and codi' +
        'go=:codigo')
    Left = 255
    Top = 399
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
end
