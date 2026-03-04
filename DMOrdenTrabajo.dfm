object DatosOrdenDeTrabajo: TDatosOrdenDeTrabajo
  Height = 805
  Width = 1211
  object DSPOTrabajoCab: TDataSetProvider
    DataSet = DMMain_FD.QOrdenTrabajoCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 11
  end
  object DSPStock: TDataSetProvider
    DataSet = DMMain_FD.QStock
    Options = []
    Left = 40
    Top = 254
  end
  object DSPCondVenta: TDataSetProvider
    DataSet = DMMain_FD.QCondVenta
    Options = []
    Left = 40
    Top = 209
  end
  object DSPOTrabajoDet: TDataSetProvider
    DataSet = DMMain_FD.QOrdenTrabajoDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 57
  end
  object DSPClientes: TDataSetProvider
    DataSet = DMMain_FD.QClientes
    Options = []
    Left = 40
    Top = 368
  end
  object DSPInscripcion: TDataSetProvider
    DataSet = DMMain_FD.QInscripcion
    Options = []
    Left = 424
    Top = 11
  end
  object DSPDeposito: TDataSetProvider
    DataSet = DMMain_FD.QDeposito
    Options = []
    Left = 424
    Top = 110
  end
  object DSPIva: TDataSetProvider
    DataSet = DMMain_FD.QIva
    Options = []
    Left = 424
    Top = 159
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMMain_FD.QSucursal
    Options = []
    Left = 426
    Top = 206
  end
  object DSPLdr: TDataSetProvider
    DataSet = DMMain_FD.QLDR
    Options = []
    Left = 424
    Top = 58
  end
  object ibgOT_Det: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_ORDENTRABAJODET'
    SystemGenerators = False
    Left = 312
    Top = 56
  end
  object ibgOT_Cab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_ORDENTRABAJOCAB'
    SystemGenerators = False
    Left = 312
    Top = 8
  end
  object DSPOTrabajoMov: TDataSetProvider
    DataSet = DMMain_FD.QOrdenTrabajoMovimientos
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 161
  end
  object ibgOT_Mov: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_ORDENTRABAJOMOV'
    SystemGenerators = False
    Left = 312
    Top = 168
  end
  object DSPBuscaProducto: TDataSetProvider
    DataSet = DMMain_FD.QProductos
    Options = []
    Left = 40
    Top = 310
  end
  object DSPBuscadorProductos: TDataSetProvider
    DataSet = QBuscadorProductos
    Options = []
    Left = 368
    Top = 528
  end
  object DSOperador: TDataSource
    DataSet = CDSOperarios
    Left = 568
    Top = 408
  end
  object DSPImpuestos: TDataSetProvider
    DataSet = DMMain_FD.QImpuestoOrdenTrabajo
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 108
  end
  object ibgImpuesto: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_ORDENTRABAJOIMPUESTO'
    SystemGenerators = False
    Left = 312
    Top = 104
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = DMMain_FD.QEmpresa
    Options = []
    Left = 40
    Top = 424
  end
  object DSPPenalizaciones: TDataSetProvider
    DataSet = QPenalizaciones
    Options = []
    Left = 368
    Top = 464
  end
  object CDSPenalizaciones: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPenalizaciones'
    OnNewRecord = CDSPenalizacionesNewRecord
    Left = 472
    Top = 464
    object CDSPenalizacionesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSPenalizacionesID_OT: TIntegerField
      FieldName = 'ID_OT'
      Required = True
    end
    object CDSPenalizacionesNRO_OT: TStringField
      FieldName = 'NRO_OT'
      Size = 13
    end
    object CDSPenalizacionesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSPenalizacionesEMPLEADO: TStringField
      FieldName = 'EMPLEADO'
      Size = 6
    end
    object CDSPenalizacionesPUNTOS: TFloatField
      FieldName = 'PUNTOS'
    end
    object CDSPenalizacionesMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 50
    end
  end
  object DSPenalizaciones: TDataSource
    DataSet = CDSPenalizaciones
    Left = 576
    Top = 464
  end
  object DSListaPrecios: TDataSource
    DataSet = CDSListaPrecios
    Left = 768
    Top = 304
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = []
    Left = 40
    Top = 480
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 128
    Top = 480
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
    Left = 232
    Top = 240
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
    Left = 312
    Top = 240
    object CDSPersonalCARGO: TIntegerField
      FieldName = 'CARGO'
      Origin = 'CARGO'
    end
    object CDSPersonalCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
    end
    object CDSPersonalCTACONTABLE: TIntegerField
      FieldName = 'CTACONTABLE'
      Origin = 'CTACONTABLE'
    end
    object CDSPersonalDOMICILIO: TStringField
      FieldName = 'DOMICILIO'
      Origin = 'DOMICILIO'
      Size = 50
    end
    object CDSPersonalESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      Origin = 'ESTADO_CIVIL'
      Size = 1
    end
    object CDSPersonalNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 30
    end
    object CDSPersonalTELEFONO_2: TStringField
      FieldName = 'TELEFONO_2'
      Origin = 'TELEFONO_2'
      Size = 15
    end
    object CDSPersonalMUESTRACARGO: TStringField
      FieldName = 'MUESTRACARGO'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 30
    end
    object CDSPersonalMUESTRACATEGORIA: TStringField
      FieldName = 'MUESTRACATEGORIA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 30
    end
    object CDSPersonalTELEFONO_1: TStringField
      FieldName = 'TELEFONO_1'
      Origin = 'TELEFONO_1'
      Size = 15
    end
    object CDSPersonalLOCALIDAD: TIntegerField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
    end
    object CDSPersonalMUESTRALOCALIDAD: TStringField
      FieldName = 'MUESTRALOCALIDAD'
      Origin = 'DETALLE_POSTAL'
      ProviderFlags = []
      Size = 25
    end
    object CDSPersonalMUESTRACPOSTAL: TStringField
      FieldName = 'MUESTRACPOSTAL'
      Origin = 'CODIGO_POSTAL'
      ProviderFlags = []
      Size = 8
    end
    object CDSPersonalCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 6
    end
    object CDSPersonalAUTORIZAOC: TStringField
      FieldName = 'AUTORIZAOC'
      Origin = 'AUTORIZAOC'
      Size = 1
    end
    object CDSPersonalSECTORDECOMPRA: TStringField
      FieldName = 'SECTORDECOMPRA'
      Origin = 'SECTORDECOMPRA'
      Size = 1
    end
    object CDSPersonalCORREO: TStringField
      FieldName = 'CORREO'
      Origin = 'CORREO'
      Size = 100
    end
    object CDSPersonalPOLITICACOMISION: TIntegerField
      FieldName = 'POLITICACOMISION'
      Origin = 'POLITICACOMISION'
    end
    object CDSPersonalMODODEPENDENCIA: TStringField
      FieldName = 'MODODEPENDENCIA'
      Origin = 'MODODEPENDENCIA'
      FixedChar = True
      Size = 1
    end
    object CDSPersonalVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object CDSPersonalCOBRADOR: TStringField
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
      FixedChar = True
      Size = 1
    end
    object CDSPersonalACTIVO: TStringField
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      FixedChar = True
      Size = 1
    end
    object CDSPersonalFECHA_INGRESO: TSQLTimeStampField
      FieldName = 'FECHA_INGRESO'
      Origin = 'FECHA_INGRESO'
    end
    object CDSPersonalFECHA_NACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHA_NACIMIENTO'
      Origin = 'FECHA_NACIMIENTO'
    end
    object CDSPersonalVALORHORA: TFloatField
      FieldName = 'VALORHORA'
      Origin = 'VALORHORA'
    end
    object CDSPersonalCOMISION: TFloatField
      FieldName = 'COMISION'
      Origin = 'COMISION'
      Required = True
    end
  end
  object DSPBuscaVendedor: TDataSetProvider
    DataSet = DMBuscadores.QBuscaVendedores
    Options = []
    Left = 32
    Top = 536
  end
  object CDSBuscaVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaVendedor'
    Left = 128
    Top = 536
    object CDSBuscaVendedorCODIGO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSBuscaVendedorNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 35
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSBuscaVendedorCOMISION: TFloatField
      FieldName = 'COMISION'
      Required = True
    end
  end
  object CDSOTrabajoCab: TClientDataSet
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
    ProviderName = 'DSPOTrabajoCab'
    BeforeEdit = CDSOTrabajoDetAfterInsert
    OnNewRecord = CDSOTrabajoCabNewRecord
    Left = 136
    Top = 16
    object CDSOTrabajoCabID_OT: TIntegerField
      FieldName = 'ID_OT'
      Origin = 'ID_OT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOTrabajoCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSOTrabajoCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSOTrabajoCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSOTrabajoCabDESCRIPCION: TMemoField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      BlobType = ftMemo
    end
    object CDSOTrabajoCabPRODUCTO: TIntegerField
      FieldName = 'PRODUCTO'
      Origin = 'PRODUCTO'
      OnSetText = CDSOTrabajoCabPRODUCTOSetText
    end
    object CDSOTrabajoCabLETRAOT: TStringField
      FieldName = 'LETRAOT'
      Origin = 'LETRAOT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoCabSUCOT: TStringField
      FieldName = 'SUCOT'
      Origin = 'SUCOT'
      OnSetText = CDSOTrabajoCabSUCOTSetText
      Size = 4
    end
    object CDSOTrabajoCabNUMEROOT: TStringField
      FieldName = 'NUMEROOT'
      Origin = 'NUMEROOT'
      OnSetText = CDSOTrabajoCabNUMEROOTSetText
      Size = 8
    end
    object CDSOTrabajoCabFECHAINICIO: TSQLTimeStampField
      FieldName = 'FECHAINICIO'
      Origin = 'FECHAINICIO'
      Required = True
      OnSetText = CDSOTrabajoCabFECHAINICIOSetText
    end
    object CDSOTrabajoCabFECHAESTIMADA: TSQLTimeStampField
      FieldName = 'FECHAESTIMADA'
      Origin = 'FECHAESTIMADA'
    end
    object CDSOTrabajoCabFECHAFINAL: TSQLTimeStampField
      FieldName = 'FECHAFINAL'
      Origin = 'FECHAFINAL'
    end
    object CDSOTrabajoCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
      Origin = 'CONDICIONVTA'
      OnSetText = CDSOTrabajoCabCONDICIONVTASetText
    end
    object CDSOTrabajoCabANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoCabNRORTO: TStringField
      FieldName = 'NRORTO'
      Origin = 'NRORTO'
    end
    object CDSOTrabajoCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Origin = 'IMPRESO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
      OnSetText = CDSOTrabajoCabSUCURSALSetText
    end
    object CDSOTrabajoCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      OnSetText = CDSOTrabajoCabDEPOSITOSetText
    end
    object CDSOTrabajoCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoCabRESPONSABLE_OT: TStringField
      FieldName = 'RESPONSABLE_OT'
      Origin = 'RESPONSABLE_OT'
      OnSetText = CDSOTrabajoCabRESPONSABLE_OTSetText
      Size = 6
    end
    object CDSOTrabajoCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object CDSOTrabajoCabESTADO: TIntegerField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
    end
    object CDSOTrabajoCabPRIORIDAD_INICIAL: TSmallintField
      FieldName = 'PRIORIDAD_INICIAL'
      Origin = 'PRIORIDAD_INICIAL'
    end
    object CDSOTrabajoCabDELTA_PRIORIDAD: TSmallintField
      FieldName = 'DELTA_PRIORIDAD'
      Origin = 'DELTA_PRIORIDAD'
    end
    object CDSOTrabajoCabPRIORIDAD: TSmallintField
      FieldName = 'PRIORIDAD'
      Origin = 'PRIORIDAD'
    end
    object CDSOTrabajoCabENTREGADO: TStringField
      FieldName = 'ENTREGADO'
      Origin = 'ENTREGADO'
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      OnSetText = CDSOTrabajoCabCODIGOSetText
      Size = 6
    end
    object CDSOTrabajoCabLDR: TIntegerField
      FieldName = 'LDR'
      Origin = 'LDR'
      OnSetText = CDSOTrabajoCabLDRSetText
    end
    object CDSOTrabajoCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSOTrabajoCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSOTrabajoCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object CDSOTrabajoCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
    end
    object CDSOTrabajoCabCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSOTrabajoCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object CDSOTrabajoCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object CDSOTrabajoCabZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object CDSOTrabajoCabFACTURA_ID_COMPROBANTE: TIntegerField
      FieldName = 'FACTURA_ID_COMPROBANTE'
      Origin = 'FACTURA_ID_COMPROBANTE'
      OnSetText = CDSOTrabajoCabFACTURA_ID_COMPROBANTESetText
    end
    object CDSOTrabajoCabFACTURANRO: TStringField
      FieldName = 'FACTURANRO'
      Origin = 'FACTURANRO'
      Size = 13
    end
    object CDSOTrabajoCabFACTURA_ID: TIntegerField
      FieldName = 'FACTURA_ID'
      Origin = 'FACTURA_ID'
    end
    object CDSOTrabajoCabFACTURA_TIPO: TStringField
      FieldName = 'FACTURA_TIPO'
      Origin = 'FACTURA_TIPO'
      Size = 2
    end
    object CDSOTrabajoCabFACTURA_CLASE: TStringField
      FieldName = 'FACTURA_CLASE'
      Origin = 'FACTURA_CLASE'
      Size = 2
    end
    object CDSOTrabajoCabFECHAFACTURA: TSQLTimeStampField
      FieldName = 'FECHAFACTURA'
      Origin = 'FECHAFACTURA'
    end
    object CDSOTrabajoCabRESPONSABLE_TURNO: TStringField
      FieldName = 'RESPONSABLE_TURNO'
      Origin = 'RESPONSABLE_TURNO'
      OnSetText = CDSOTrabajoCabRESPONSABLE_TURNOSetText
      Size = 6
    end
    object CDSOTrabajoCabARCHIVADA: TStringField
      FieldName = 'ARCHIVADA'
      Origin = 'ARCHIVADA'
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoCabRECLAMADA: TStringField
      FieldName = 'RECLAMADA'
      Origin = 'RECLAMADA'
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoCabTOTALHORAS: TSQLTimeStampField
      FieldName = 'TOTALHORAS'
      Origin = 'TOTALHORAS'
      DisplayFormat = '00:00'
    end
    object CDSOTrabajoCabOBSERVACION1: TMemoField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      BlobType = ftMemo
    end
    object CDSOTrabajoCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
      Origin = 'LISTAPRECIO'
    end
    object CDSOTrabajoCabMAILENVIADO: TStringField
      FieldName = 'MAILENVIADO'
      Origin = 'MAILENVIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoCabMUESTRACONDVENTA: TStringField
      FieldName = 'MUESTRACONDVENTA'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object CDSOTrabajoCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSOTrabajoCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSOTrabajoCabMUESTRALDR: TStringField
      FieldName = 'MUESTRALDR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object CDSOTrabajoCabMUESTRAIVA: TStringField
      FieldName = 'MUESTRAIVA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 15
    end
    object CDSOTrabajoCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object CDSOTrabajoCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
      OnSetText = CDSOTrabajoCabID_TIPOCOMPROBANTESetText
    end
    object CDSOTrabajoCabMUESTRARESPONSABLEOT: TStringField
      FieldName = 'MUESTRARESPONSABLEOT'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object CDSOTrabajoCabMUESTRARESPONSABLETURNO: TStringField
      FieldName = 'MUESTRARESPONSABLETURNO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object CDSOTrabajoCabMUESTRATIPOFACTURA: TStringField
      FieldName = 'MUESTRATIPOFACTURA'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object CDSOTrabajoCabMUESTRATELEFONO1: TStringField
      FieldName = 'MUESTRATELEFONO1'
      Origin = 'TELEFONO_COMERCIAL_1'
      ProviderFlags = []
      Size = 10
    end
    object CDSOTrabajoCabMUESTRATELEFONO2: TStringField
      FieldName = 'MUESTRATELEFONO2'
      Origin = 'TELEFONO_COMERCIAL_2'
      ProviderFlags = []
      Size = 10
    end
    object CDSOTrabajoCabOT_ANTERIOR_ID: TIntegerField
      FieldName = 'OT_ANTERIOR_ID'
      Origin = 'OT_ANTERIOR_ID'
      Required = True
    end
    object CDSOTrabajoCabOT_ANTERIOR_NROCPBTE: TStringField
      FieldName = 'OT_ANTERIOR_NROCPBTE'
      Origin = 'OT_ANTERIOR_NROCPBTE'
      Size = 13
    end
    object CDSOTrabajoCabTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Origin = 'TELEFONO1'
      Size = 10
    end
    object CDSOTrabajoCabTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Origin = 'TELEFONO2'
      Size = 10
    end
    object CDSOTrabajoCabCORREOELECTRONICO: TStringField
      FieldName = 'CORREOELECTRONICO'
      Origin = 'CORREOELECTRONICO'
      Size = 100
    end
    object CDSOTrabajoCabMUESTRACELULAR: TStringField
      FieldName = 'MUESTRACELULAR'
      Origin = 'TELEFONO_CELULAR'
      ProviderFlags = []
      Size = 11
    end
    object CDSOTrabajoCabMUESTRANRODOC: TStringField
      FieldName = 'MUESTRANRODOC'
      Origin = 'NRODOCUMENTO'
      ProviderFlags = []
      Size = 15
    end
    object CDSOTrabajoCabDESCRIPCIONPRODUCTO: TStringField
      FieldName = 'DESCRIPCIONPRODUCTO'
      Origin = 'DESCRIPCIONPRODUCTO'
      Required = True
      Size = 100
    end
    object CDSOTrabajoCabIDENTIFICADORPRODUCTO: TStringField
      FieldName = 'IDENTIFICADORPRODUCTO'
      Origin = 'IDENTIFICADORPRODUCTO'
      Required = True
      OnSetText = CDSOTrabajoCabIDENTIFICADORPRODUCTOSetText
      Size = 50
    end
    object CDSOTrabajoCabMOTIVO_OTRABAJO: TIntegerField
      FieldName = 'MOTIVO_OTRABAJO'
      Origin = 'MOTIVO_OTRABAJO'
      Required = True
    end
    object CDSOTrabajoCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object CDSOTrabajoCabFECHAESTIMADAFIN: TSQLTimeStampField
      FieldName = 'FECHAESTIMADAFIN'
      Origin = 'FECHAESTIMADAFIN'
    end
    object CDSOTrabajoCabTELEFONO_CELULAR: TStringField
      FieldName = 'TELEFONO_CELULAR'
      Origin = 'TELEFONO_CELULAR'
      Size = 11
    end
    object CDSOTrabajoCabID_AJUSTE_STOCK: TIntegerField
      FieldName = 'ID_AJUSTE_STOCK'
      Origin = 'ID_AJUSTE_STOCK'
      Required = True
    end
    object CDSOTrabajoCabMUESTRANROAJUSTE: TStringField
      FieldName = 'MUESTRANROAJUSTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object CDSOTrabajoCabOBSERVACION2: TMemoField
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      BlobType = ftMemo
    end
    object CDSOTrabajoCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      Origin = 'NETOGRAV1'
      OnGetText = CDSOTrabajoCabNETOGRAV1GetText
    end
    object CDSOTrabajoCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      Origin = 'NETOGRAV2'
      OnGetText = CDSOTrabajoCabNETOGRAV2GetText
    end
    object CDSOTrabajoCabDSTO: TFloatField
      FieldName = 'DSTO'
      Origin = 'DSTO'
      OnSetText = CDSOTrabajoCabDSTOSetText
    end
    object CDSOTrabajoCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      Origin = 'DSTOIMPORTE'
    end
    object CDSOTrabajoCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      Origin = 'NETOEXEN1'
    end
    object CDSOTrabajoCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      Origin = 'NETOEXEN2'
    end
    object CDSOTrabajoCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = '$0,0.00'
    end
    object CDSOTrabajoCabDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
    end
    object CDSOTrabajoCabPUNTOS: TFloatField
      FieldName = 'PUNTOS'
      Origin = 'PUNTOS'
    end
    object CDSOTrabajoCabSENIA: TFloatField
      FieldName = 'SENIA'
      Origin = 'SENIA'
      Required = True
    end
    object CDSOTrabajoCabPROBLEMA: TMemoField
      FieldName = 'PROBLEMA'
      Origin = 'PROBLEMA'
      BlobType = ftMemo
    end
    object CDSOTrabajoCabPASSWORD: TStringField
      FieldName = 'PASSWORD'
      Origin = 'PASSWORD'
      Size = 50
    end
    object CDSOTrabajoCabPATRON: TStringField
      FieldName = 'PATRON'
      Origin = 'PATRON'
      Size = 30
    end
    object CDSOTrabajoCabMUESTRAPRODUCTO: TStringField
      FieldName = 'MUESTRAPRODUCTO'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 100
    end
    object CDSOTrabajoCabMUESTRAMODELOPRODUCTO: TStringField
      FieldName = 'MUESTRAMODELOPRODUCTO'
      Origin = 'MODELO'
      ProviderFlags = []
      Size = 50
    end
    object CDSOTrabajoCabMUESTRACATEGORIAPRODUCTO: TStringField
      FieldName = 'MUESTRACATEGORIAPRODUCTO'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 50
    end
    object CDSOTrabajoCabMUESTRAMARCAPRODUCTO: TStringField
      FieldName = 'MUESTRAMARCAPRODUCTO'
      Origin = 'DESCRIPCION_MARCA'
      ProviderFlags = []
      Size = 25
    end
  end
  object CDSOTrabajoDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPOTrabajoDet'
    BeforeInsert = CDSOTrabajoDetBeforeInsert
    AfterInsert = CDSOTrabajoDetAfterInsert
    BeforeEdit = CDSOTrabajoDetBeforeEdit
    AfterEdit = CDSOTrabajoDetAfterEdit
    BeforePost = CDSOTrabajoDetBeforePost
    AfterPost = CDSOTrabajoDetAfterPost
    BeforeDelete = CDSOTrabajoDetBeforeDelete
    AfterDelete = CDSOTrabajoDetAfterDelete
    OnNewRecord = CDSOTrabajoDetNewRecord
    Left = 136
    Top = 65
    object CDSOTrabajoDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOTrabajoDetID_CABOT: TIntegerField
      FieldName = 'ID_CABOT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOTrabajoDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSOTrabajoDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSOTrabajoDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSOTrabajoDetFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Required = True
    end
    object CDSOTrabajoDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Required = True
      OnSetText = CDSOTrabajoDetCODIGOARTICULOSetText
      EditMask = 'cccccccccccccccccccccccccccccccccccccccccccccccccc;0; '
      Size = 8
    end
    object CDSOTrabajoDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSOTrabajoDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object CDSOTrabajoDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Required = True
    end
    object CDSOTrabajoDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object CDSOTrabajoDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object CDSOTrabajoDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoDetNEWREG: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'NEWREG'
    end
    object CDSOTrabajoDetCON_NROSERIE: TStringField
      FieldName = 'CON_NROSERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      OnSetText = CDSOTrabajoDetCANTIDADSetText
    end
    object CDSOTrabajoDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      OnGetText = CDSOTrabajoDetUNITARIO_TOTALGetText
      OnSetText = CDSOTrabajoDetUNITARIO_TOTALSetText
    end
    object CDSOTrabajoDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
    end
    object CDSOTrabajoDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
    end
    object CDSOTrabajoDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      OnSetText = CDSOTrabajoDetIVA_TASASetText
    end
    object CDSOTrabajoDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
    end
    object CDSOTrabajoDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
    end
    object CDSOTrabajoDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
    end
    object CDSOTrabajoDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
    end
    object CDSOTrabajoDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      OnSetText = CDSOTrabajoDetDESCUENTOSetText
    end
    object CDSOTrabajoDetTOTAL: TFloatField
      FieldName = 'TOTAL'
      OnGetText = CDSOTrabajoDetTOTALGetText
    end
    object CDSOTrabajoDetMARGEN: TFloatField
      FieldName = 'MARGEN'
    end
    object CDSOTrabajoDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Required = True
    end
    object CDSOTrabajoDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Required = True
    end
    object CDSOTrabajoDetRENGLON: TFloatField
      FieldName = 'RENGLON'
    end
  end
  object DSOTrabajoDet: TDataSource
    DataSet = CDSOTrabajoDet
    OnStateChange = DSOTrabajoDetStateChange
    Left = 232
    Top = 57
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
    Top = 112
    object CDSImpuestosID_OTCAB: TIntegerField
      FieldName = 'ID_OTCAB'
      Required = True
    end
    object CDSImpuestosID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      Required = True
    end
    object CDSImpuestosCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      Required = True
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
  object DSImpuestos: TDataSource
    DataSet = CDSImpuestos
    Left = 232
    Top = 104
  end
  object CDSOTrabajoMov: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPOTrabajoMov'
    BeforeOpen = CDSOTrabajoMovBeforeOpen
    AfterOpen = CDSOTrabajoMovAfterOpen
    BeforeEdit = CDSOTrabajoMovBeforeEdit
    BeforePost = CDSOTrabajoMovBeforePost
    AfterPost = CDSOTrabajoMovAfterPost
    BeforeDelete = CDSOTrabajoMovBeforeDelete
    AfterDelete = CDSOTrabajoMovAfterDelete
    OnNewRecord = CDSOTrabajoMovNewRecord
    Left = 136
    Top = 160
    object CDSOTrabajoMovID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOTrabajoMovID_OTCAB: TIntegerField
      FieldName = 'ID_OTCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOTrabajoMovDETALLE: TMemoField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      OnGetText = CDSOTrabajoMovDETALLEGetText
      BlobType = ftMemo
      Size = 1
    end
    object CDSOTrabajoMovHORAINICIO: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Inicio'
      FieldName = 'HORAINICIO'
      OnSetText = CDSOTrabajoMovHORAINICIOSetText
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object CDSOTrabajoMovHORAFINAL: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Finaliza'
      DisplayWidth = 34
      FieldName = 'HORAFINAL'
      OnSetText = CDSOTrabajoMovHORAFINALSetText
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object CDSOTrabajoMovPRUDUCTO: TIntegerField
      FieldName = 'PRUDUCTO'
    end
    object CDSOTrabajoMovTOTALTIEMPO: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'T.Total'
      FieldName = 'TOTALTIEMPO'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object CDSOTrabajoMovCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 6
    end
    object CDSOTrabajoMovOPERARIO: TStringField
      FieldName = 'OPERARIO'
      Size = 6
    end
    object CDSOTrabajoMovMAILENVIADO: TStringField
      FieldName = 'MAILENVIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoMovNewReg: TBooleanField
      DisplayWidth = 5
      FieldKind = fkInternalCalc
      FieldName = 'NewReg'
    end
    object CDSOTrabajoMovNomOperario: TStringField
      DisplayLabel = 'Operador'
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'NomOperario'
      LookupDataSet = CDSOperarios
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOMBRE'
      KeyFields = 'OPERARIO'
      Lookup = True
    end
    object CDSOTrabajoMovFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      OnSetText = CDSOTrabajoMovFECHASetText
    end
  end
  object DSOTrabajoMov: TDataSource
    DataSet = CDSOTrabajoMov
    Left = 232
    Top = 161
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
        Name = 'CodigoPago'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCondVenta'
    Left = 136
    Top = 209
    object CDSCondVentaCODIGOCLIENTE: TStringField
      FieldName = 'CODIGOCLIENTE'
      Required = True
      Size = 6
    end
    object CDSCondVentaCODIGOPAGO: TIntegerField
      FieldName = 'CODIGOPAGO'
      Required = True
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
    object CDSCondVentaDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object CDSCondVentaDESCUENTO_FPAGO: TFloatField
      FieldName = 'DESCUENTO_FPAGO'
      ReadOnly = True
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
    Left = 136
    Top = 254
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
    object CDSStockCOSTO_GRAVADO_STK: TFloatField
      FieldName = 'COSTO_GRAVADO_STK'
      Required = True
    end
    object CDSStockCOSTO_IVA: TFloatField
      FieldName = 'COSTO_IVA'
      Required = True
    end
    object CDSStockCOSTO_FINAL: TFloatField
      FieldName = 'COSTO_FINAL'
      Required = True
    end
    object CDSStockCOSTO_EXENTO_STK: TFloatField
      FieldName = 'COSTO_EXENTO_STK'
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
    object CDSStockFIJACION_PRECIO_IVA: TFloatField
      FieldName = 'FIJACION_PRECIO_IVA'
      Required = True
    end
    object CDSStockFIJACION_PRECIO_FINAL: TFloatField
      FieldName = 'FIJACION_PRECIO_FINAL'
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
    object CDSStockUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object CDSStockCONTROLASTOCK: TStringField
      FieldName = 'CONTROLASTOCK'
      Required = True
      Size = 1
    end
    object CDSStockCLASE_ARTICULO: TIntegerField
      FieldName = 'CLASE_ARTICULO'
    end
    object CDSStockMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
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
    object CDSStockUNIDAD_COMPRA: TStringField
      FieldName = 'UNIDAD_COMPRA'
      Size = 3
    end
    object CDSStockCONTENIDO_COMPRA: TFloatField
      FieldName = 'CONTENIDO_COMPRA'
      Required = True
    end
    object CDSStockMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object CDSStockPRESENTACION_UNIDAD: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      Size = 3
    end
    object CDSStockPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      Required = True
    end
    object CDSStockCONTROL_SERIE: TStringField
      FieldName = 'CONTROL_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object CDSBuscaProducto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaProducto'
    Left = 136
    Top = 312
    object CDSBuscaProductoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSBuscaProductoIDENTIFICADOR: TStringField
      FieldName = 'IDENTIFICADOR'
      Size = 50
    end
    object CDSBuscaProductoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object CDSBuscaProductoID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
    end
    object CDSBuscaProductoPROPIETARIO: TStringField
      FieldName = 'PROPIETARIO'
      Size = 6
    end
    object CDSBuscaProductoOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object CDSBuscaProductoMARCA: TStringField
      FieldName = 'MARCA'
      Size = 5
    end
    object CDSBuscaProductoMODELO: TStringField
      FieldName = 'MODELO'
      Size = 50
    end
    object CDSBuscaProductoMUESTRACATEGORIA: TStringField
      FieldName = 'MUESTRACATEGORIA'
      Size = 50
    end
    object CDSBuscaProductoMUESTRAPROPIETARIO: TStringField
      FieldName = 'MUESTRAPROPIETARIO'
      Size = 35
    end
    object CDSBuscaProductoMUESTRAMARCA: TStringField
      FieldName = 'MUESTRAMARCA'
      Size = 25
    end
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
    Left = 128
    Top = 368
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
    object CDSClientesNOMBRE_COMPLETO: TStringField
      FieldName = 'NOMBRE_COMPLETO'
      Size = 100
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
    object CDSClientesNRO_DE_CUIT: TStringField
      FieldName = 'NRO_DE_CUIT'
      Size = 13
    end
    object CDSClientesACTIVO: TStringField
      FieldName = 'ACTIVO'
      FixedChar = True
      Size = 1
    end
    object CDSClientesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSClientesVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 6
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
    object CDSClientesCORREOELECTRONICO_2: TStringField
      FieldName = 'CORREOELECTRONICO_2'
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
    object CDSClientesID_RECIBOPORDEFECTO: TIntegerField
      FieldName = 'ID_RECIBOPORDEFECTO'
    end
    object CDSClientesZONA: TIntegerField
      FieldName = 'ZONA'
    end
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    Left = 120
    Top = 424
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
    object CDSEmpresaTASA_RET_IIBB: TFloatField
      FieldName = 'TASA_RET_IIBB'
      Required = True
    end
    object CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField
      FieldName = 'MINIMO_IMP_RET_IIBB'
      Required = True
    end
    object CDSEmpresaPUNITORIOS: TFloatField
      FieldName = 'PUNITORIOS'
      Required = True
    end
    object CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField
      FieldName = 'FECHA_INICIO_ACTI'
    end
    object CDSEmpresaNRO_RENSPA: TStringField
      FieldName = 'NRO_RENSPA'
    end
    object CDSEmpresaNRO_RUCA: TIntegerField
      FieldName = 'NRO_RUCA'
    end
    object CDSEmpresaCUIT_AUTORIZADO: TStringField
      FieldName = 'CUIT_AUTORIZADO'
      Size = 13
    end
    object CDSEmpresaNOMBRE_AUTORIZADO: TStringField
      FieldName = 'NOMBRE_AUTORIZADO'
      Size = 50
    end
    object CDSEmpresaCBU: TStringField
      FieldName = 'CBU'
      Size = 22
    end
    object CDSEmpresaID_CPOSTAL: TIntegerField
      FieldName = 'ID_CPOSTAL'
    end
    object CDSEmpresaCOD_ACTIVIDAD: TStringField
      FieldName = 'COD_ACTIVIDAD'
      Size = 10
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
    object CDSEmpresaAG_PERCEPCION_IVA: TStringField
      FieldName = 'AG_PERCEPCION_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaMIN_IMP_PERCEPCION_IVA: TFloatField
      FieldName = 'MIN_IMP_PERCEPCION_IVA'
      Required = True
    end
    object CDSEmpresaTASA_LEY15311: TFloatField
      FieldName = 'TASA_LEY15311'
      Required = True
    end
    object CDSEmpresaDIRECCION_OPERACION: TStringField
      FieldName = 'DIRECCION_OPERACION'
      Size = 150
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
    Left = 496
    Top = 8
    object CDSInscripcionCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSInscripcionDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 15
    end
    object CDSInscripcionAPLICAPERCEPCIONIVA: TStringField
      FieldName = 'APLICAPERCEPCIONIVA'
      Origin = 'APLICAPERCEPCIONIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField
      FieldName = 'APLICAPERCEPCIONIIBB'
      Origin = 'APLICAPERCEPCIONIIBB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSInscripcionCOBRASOBRETASA: TStringField
      FieldName = 'COBRASOBRETASA'
      Origin = 'COBRASOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSInscripcionDISCRIMINAIVA: TStringField
      FieldName = 'DISCRIMINAIVA'
      Origin = 'DISCRIMINAIVA'
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
    Left = 496
    Top = 58
    object CDSLdrCODIGO_CLIENTE: TStringField
      FieldName = 'CODIGO_CLIENTE'
      Origin = 'CODIGO_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSLdrCODIGO_LDR: TIntegerField
      FieldName = 'CODIGO_LDR'
      Origin = 'CODIGO_LDR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSLdrNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSLdrDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object CDSLdrCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
  end
  object CDSDeposito: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDeposito'
    Left = 496
    Top = 110
    object CDSDepositoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSDepositoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object CDSDepositoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
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
    Left = 496
    Top = 159
    object CDSIvaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSIvaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object CDSIvaTASA: TFMTBCDField
      FieldName = 'TASA'
      Precision = 15
      Size = 3
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
    Left = 496
    Top = 206
    object CDSSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
    object CDSSucursalDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
    end
    object CDSSucursalLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
    end
    object CDSSucursalTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Origin = 'TELEFONO1'
      Size = 15
    end
    object CDSSucursalTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Origin = 'TELEFONO2'
      Size = 15
    end
    object CDSSucursalRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
    end
  end
  object CDSBuscadorProductos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscadorProductos'
    Left = 472
    Top = 528
    object CDSBuscadorProductosDESCRIPCION: TStringField
      DisplayLabel = 'Descripci'#243'n'
      DisplayWidth = 70
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 100
    end
    object CDSBuscadorProductosMUESTRAMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'MUESTRAMARCA'
      Origin = 'DESCRIPCION_MARCA'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object CDSBuscadorProductosMODELO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 50
    end
    object CDSBuscadorProductosID: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object CDSOperarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPOperarios'
    Left = 464
    Top = 408
    object CDSOperariosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSOperariosCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
  end
  object DSPOperarios: TDataSetProvider
    DataSet = DMBuscadores.QBuscaPersonal
    Options = []
    Left = 368
    Top = 408
  end
  object CDSListaPrecios: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'uso'
        ParamType = ptInput
        Size = 2
        Value = '*'
      end>
    ProviderName = 'DSPListaPrecios'
    Left = 688
    Top = 304
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
  object DSPListaPrecios: TDataSetProvider
    DataSet = DMBuscadores.QBuscaListaPrecios
    Options = []
    Left = 616
    Top = 304
  end
  object DSPBuscaComprob: TDataSetProvider
    DataSet = QBuscaComp
    Options = []
    Left = 360
    Top = 352
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
    Top = 352
    object CDSBuscaComprobTIPO_COMPROB: TStringField
      DisplayLabel = 'Tp.'
      DisplayWidth = 3
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSBuscaComprobCLASE_COMPROB: TStringField
      DisplayLabel = 'Cl.'
      DisplayWidth = 3
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object CDSBuscaComprobDENOMINACION: TStringField
      DisplayLabel = 'Denominaci'#243'n'
      DisplayWidth = 18
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object CDSBuscaComprobLETRA: TStringField
      DisplayLabel = 'Letra'
      DisplayWidth = 3
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobPREFIJO: TStringField
      DisplayLabel = 'Pref.'
      DisplayWidth = 5
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object CDSBuscaComprobNUMERO: TStringField
      DisplayLabel = 'Numero'
      DisplayWidth = 9
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object CDSBuscaComprobID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object CDSBuscaComprobSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Visible = False
    end
    object CDSBuscaComprobNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'NUMERARCION_PROPIA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
      Origin = 'TOMA_NRO_DE'
      Visible = False
    end
    object CDSBuscaComprobAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Origin = 'AFECTA_IVA'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Origin = 'AFECTA_CC'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DESGLOZA_IVA'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Origin = 'COMPRA_VENTA'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobCOPIAS: TIntegerField
      FieldName = 'COPIAS'
      Origin = 'COPIAS'
      Visible = False
    end
    object CDSBuscaComprobREPORTE: TStringField
      FieldName = 'REPORTE'
      Origin = 'REPORTE'
      Visible = False
      Size = 100
    end
    object CDSBuscaComprobIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobFISCAL: TStringField
      FieldName = 'FISCAL'
      Origin = 'FISCAL'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Origin = 'NOMBREIMPRESORA'
      Visible = False
      Size = 15
    end
    object CDSBuscaComprobPENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Origin = 'PENDIENTEIMPRESION'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Origin = 'LINEAS_DETALLE'
      Required = True
      Visible = False
    end
    object CDSBuscaComprobCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Origin = 'CALCULA_IVA_ARTICULOS'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Origin = 'DEFECTO'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobEN_USO: TStringField
      FieldName = 'EN_USO'
      Origin = 'EN_USO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobCODIGO_AFIP: TStringField
      FieldName = 'CODIGO_AFIP'
      Origin = 'CODIGO_AFIP'
      Size = 3
    end
    object CDSBuscaComprobULTIMONRO: TIntegerField
      FieldName = 'ULTIMONRO'
      Origin = 'ULTIMONRO'
    end
  end
  object DSPBuscaLdr: TDataSetProvider
    DataSet = DMBuscadores.QBuscaLdr
    Options = []
    Left = 424
    Top = 261
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
    Left = 504
    Top = 269
    object CDSBuscaLdrCODIGO_CLIENTE: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 6
      FieldName = 'CODIGO_CLIENTE'
      Required = True
      Size = 6
    end
    object CDSBuscaLdrCODIGO_LDR: TIntegerField
      DisplayLabel = 'Ldr'
      DisplayWidth = 10
      FieldName = 'CODIGO_LDR'
      Required = True
    end
    object CDSBuscaLdrDIRECCION: TStringField
      DisplayLabel = 'Direccion'
      DisplayWidth = 35
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSBuscaLdrNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 35
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSBuscaLdrCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Visible = False
      Size = 8
    end
  end
  object CDSMotivos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMotivos'
    Left = 736
    Top = 376
    object CDSMotivosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMotivosDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSMotivosPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      Origin = 'POR_DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPMotivos: TDataSetProvider
    DataSet = QMotivos
    Options = []
    Left = 680
    Top = 376
  end
  object DSMotivos: TDataSource
    DataSet = CDSMotivos
    Left = 792
    Top = 376
  end
  object QPrimerConVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select Min(codigopago) from condventa where codigocliente=:codig' +
        'o')
    Left = 600
    Top = 16
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
  end
  object QTraerRecargoDeLista: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select la.recargo from listaprecioespecialart la'
      'where la.codigoarticulo=:articulo and la.id_cab=:lista')
    Left = 704
    Top = 8
    ParamData = <
      item
        Name = 'ARTICULO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end
      item
        Name = 'LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTraerRecargoDeListaRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
    end
  end
  object QPrimerLdr: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select min(Codigo_Ldr) From LdrCliente Where Codigo_Cliente=:Cod' +
        'igo')
    Left = 600
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
  end
  object QPrecioEspecial: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select preciopactado from precioespecialdet '
      'where codigoarticulo=:articulo and '
      'codigocliente=:cliente')
    Left = 712
    Top = 88
    ParamData = <
      item
        Name = 'ARTICULO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end
      item
        Name = 'CLIENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
    object QPrecioEspecialPRECIOPACTADO: TFloatField
      FieldName = 'PRECIOPACTADO'
      Origin = 'PRECIOPACTADO'
    end
  end
  object QAnulacionFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'UPDATE FcVtaCab SET'
      'Anulado='#39'S'#39' WHERE id_fc= :id and tipoCpbte = :Tipo')
    Left = 912
    Top = 104
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
  end
  object QDepositoStk: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from DepositoStk  where'
      '(Codigo_Deposito=:codigo_deposito) AND (Codigo_stk=:Codigo)')
    Left = 600
    Top = 144
    ParamData = <
      item
        Name = 'CODIGO_DEPOSITO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
    object QDepositoStkID_DEPOSITO: TIntegerField
      FieldName = 'ID_DEPOSITO'
      Origin = 'ID_DEPOSITO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDepositoStkCODIGO_DEPOSITO: TIntegerField
      FieldName = 'CODIGO_DEPOSITO'
      Origin = 'CODIGO_DEPOSITO'
      Required = True
    end
    object QDepositoStkCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object QDepositoStkSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QDepositoStkINICIAL: TFloatField
      FieldName = 'INICIAL'
      Origin = 'INICIAL'
    end
    object QDepositoStkMINIMO: TFloatField
      FieldName = 'MINIMO'
      Origin = 'MINIMO'
    end
    object QDepositoStkMEDIO: TFloatField
      FieldName = 'MEDIO'
      Origin = 'MEDIO'
    end
    object QDepositoStkFISICO: TFloatField
      FieldName = 'FISICO'
      Origin = 'FISICO'
    end
    object QDepositoStkRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
      Required = True
    end
    object QDepositoStkFUAPRECIOS: TSQLTimeStampField
      FieldName = 'FUAPRECIOS'
      Origin = 'FUAPRECIOS'
    end
    object QDepositoStkSECTOR: TStringField
      FieldName = 'SECTOR'
      Origin = 'SECTOR'
      Size = 2
    end
    object QDepositoStkUBICACION: TStringField
      FieldName = 'UBICACION'
      Origin = 'UBICACION'
      Size = 3
    end
    object QDepositoStkFULTAJUSTE: TSQLTimeStampField
      FieldName = 'FULTAJUSTE'
      Origin = 'FULTAJUSTE'
    end
    object QDepositoStkUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
      Required = True
    end
    object QDepositoStkAVISO_MINIMOSTOCK: TStringField
      FieldName = 'AVISO_MINIMOSTOCK'
      Origin = 'AVISO_MINIMOSTOCK'
      FixedChar = True
      Size = 1
    end
  end
  object QMonedas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from monedas where id=:id')
    Left = 600
    Top = 208
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QMonedasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMonedasMONEDA: TStringField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Size = 15
    end
    object QMonedasCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QMonedasSIGNO: TStringField
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      Size = 5
    end
    object QMonedasORDEN: TSmallintField
      FieldName = 'ORDEN'
      Origin = 'ORDEN'
      Required = True
    end
    object QMonedasCOTIZACION_COMPRA: TFloatField
      FieldName = 'COTIZACION_COMPRA'
      Origin = 'COTIZACION_COMPRA'
    end
  end
  object QMotivos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from ORDENTRABAJO_MOTIVO')
    Left = 624
    Top = 376
  end
  object QVerificaProducto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select p.* from productos p '
      'where ( p.propietario = :codigo ) and( p.id=:id )')
    Left = 712
    Top = 168
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QVerificaProductoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVerificaProductoID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
      Required = True
    end
    object QVerificaProductoIDENTIFICADOR: TStringField
      FieldName = 'IDENTIFICADOR'
      Origin = 'IDENTIFICADOR'
      Size = 50
    end
    object QVerificaProductoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 100
    end
    object QVerificaProductoPROPIETARIO: TStringField
      FieldName = 'PROPIETARIO'
      Origin = 'PROPIETARIO'
      Required = True
      Size = 6
    end
    object QVerificaProductoOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 200
    end
  end
  object QComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      'id_comprobante = :id ')
    Left = 312
    Top = 296
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
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
  end
  object QBuscaComp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from comprobantes where sucursal=:suc and compra_venta=' +
        #39'V'#39' and'
      '(tipo_comprob='#39'OT'#39')')
    Left = 264
    Top = 360
    ParamData = <
      item
        Position = 1
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QBuscadorProductos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select p.*, m.descripcion_marca as MuestraMarca from productos p'
      'left join marcas m on m.marca_stk=p.marca'
      
        'where ( p.propietario is null ) or ( p.propietario = :codigo ) o' +
        'r (p.propietario = '#39#39')')
    Left = 264
    Top = 528
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object DSPOTrabajoSubDet: TDataSetProvider
    DataSet = QOTrabajoSubDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 368
    Top = 592
  end
  object CDSOTrabajoSubDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPOTrabajoSubDet'
    AfterPost = CDSOTrabajoSubDetAfterPost
    BeforeDelete = CDSOTrabajoSubDetBeforeDelete
    OnNewRecord = CDSOTrabajoSubDetNewRecord
    Left = 464
    Top = 592
    object CDSOTrabajoSubDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOTrabajoSubDetID_DETOT: TIntegerField
      FieldName = 'ID_DETOT'
      Origin = 'ID_DETOT'
      Required = True
    end
    object CDSOTrabajoSubDetID_CABOT: TIntegerField
      FieldName = 'ID_CABOT'
      Origin = 'ID_CABOT'
      Required = True
    end
    object CDSOTrabajoSubDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object CDSOTrabajoSubDetSERIE: TStringField
      DisplayLabel = 'Nro.Serie'
      FieldName = 'SERIE'
      Origin = 'SERIE'
      OnSetText = CDSOTrabajoSubDetSERIESetText
      Size = 50
    end
    object CDSOTrabajoSubDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object CDSOTrabajoSubDetTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object DSOTrabajosSubDet: TDataSource
    DataSet = CDSOTrabajoSubDet
    Left = 576
    Top = 584
  end
  object ibgSubDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'next_id_ordentrabajosubdet'
    SystemGenerators = False
    Left = 704
    Top = 592
  end
  object QBuscadorDeposito: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from Depositos')
    Left = 648
    Top = 536
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QBuscadorDepositoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscadorDepositoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
  end
  object DSPBuscadorDeposito: TDataSetProvider
    DataSet = QBuscadorDeposito
    Options = []
    Left = 744
    Top = 528
  end
  object CDSBuscadorDeposito: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscadorDeposito'
    Left = 872
    Top = 528
  end
  object CDSBuscaNroSerie: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftInteger
        Name = 'DEPOSITO'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaNroSerie'
    Left = 904
    Top = 31
    object CDSBuscaNroSerieID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSBuscaNroSerieCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object CDSBuscaNroSerieCODIGOSERIE: TStringField
      FieldName = 'CODIGOSERIE'
      Size = 50
    end
    object CDSBuscaNroSerieFECHAINGRESO: TSQLTimeStampField
      FieldName = 'FECHAINGRESO'
    end
    object CDSBuscaNroSerieFECHAEGRESO: TSQLTimeStampField
      FieldName = 'FECHAEGRESO'
    end
    object CDSBuscaNroSerieDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
  end
  object DSPBuscaNroSerie: TDataSetProvider
    DataSet = QBuscaNroSerie
    Options = [poAllowCommandText]
    Left = 840
    Top = 31
  end
  object QBuscaNroSerie: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,ss.fec' +
        'haegreso,'
      'ss.deposito from stock_series ss'
      'where ss.codigo_stk =:codigo and'
      '      ss.deposito =:deposito and'
      '      ss.id_cpbte_egreso is null'
      '')
    Left = 848
    Top = 104
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
        Name = 'DEPOSITO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QNroSerie: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,'
      'ss.fechaegreso from stock_series ss'
      'where (ss.codigo_stk=:codigo and ss.codigoserie=:CodigoSerie'
      
        'and ss.fechaegreso is null) and ( ss.deposito=:deposito or :depo' +
        'sito = -1 )')
    Left = 984
    Top = 208
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end
      item
        Name = 'CODIGOSERIE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'DEPOSITO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QNroSerieID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNroSerieCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Size = 8
    end
    object QNroSerieCODIGOSERIE: TStringField
      FieldName = 'CODIGOSERIE'
      Origin = 'CODIGOSERIE'
      Size = 50
    end
    object QNroSerieFECHAINGRESO: TSQLTimeStampField
      FieldName = 'FECHAINGRESO'
      Origin = 'FECHAINGRESO'
    end
    object QNroSerieFECHAEGRESO: TSQLTimeStampField
      FieldName = 'FECHAEGRESO'
      Origin = 'FECHAEGRESO'
    end
  end
  object DSPOTrabajoConsumible: TDataSetProvider
    DataSet = QOTrabajoConsumible
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 368
    Top = 656
  end
  object CDSOTrabajoConsumible: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPOTrabajoConsumible'
    AfterPost = CDSOTrabajoConsumibleAfterPost
    AfterDelete = CDSOTrabajoConsumibleAfterDelete
    OnNewRecord = CDSOTrabajoConsumibleNewRecord
    Left = 464
    Top = 656
    object CDSOTrabajoConsumibleID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOTrabajoConsumibleID_CABOT: TIntegerField
      FieldName = 'ID_CABOT'
      Origin = 'ID_CABOT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOTrabajoConsumibleCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      OnSetText = CDSOTrabajoConsumibleCODIGOSetText
      Size = 8
    end
    object CDSOTrabajoConsumibleMUESTRASTOCK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'MUESTRASTOCK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object CDSOTrabajoConsumibleCANT_ESTIMADA: TSingleField
      DisplayLabel = 'Estimado'
      FieldName = 'CANT_ESTIMADA'
      Origin = 'CANT_ESTIMADA'
      OnSetText = CDSOTrabajoConsumibleCANT_ESTIMADASetText
      DisplayFormat = ',0.000'
    end
    object CDSOTrabajoConsumibleCANT_CONSUMIDA: TSingleField
      DisplayLabel = 'Consumo'
      FieldName = 'CANT_CONSUMIDA'
      Origin = 'CANT_CONSUMIDA'
      OnSetText = CDSOTrabajoConsumibleCANT_CONSUMIDASetText
      DisplayFormat = ',0.000'
    end
    object CDSOTrabajoConsumiblePRECIO_UNITARIO: TSingleField
      DisplayLabel = '$ Unita.'
      FieldName = 'PRECIO_UNITARIO'
      Origin = 'PRECIO_UNITARIO'
      OnSetText = CDSOTrabajoConsumiblePRECIO_UNITARIOSetText
      DisplayFormat = ',0.000'
    end
    object CDSOTrabajoConsumibleAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoConsumibleTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      DisplayFormat = ',0.000'
    end
  end
  object DSOTrabajoConsumible: TDataSource
    DataSet = CDSOTrabajoConsumible
    Left = 584
    Top = 656
  end
  object ibgOTrabajoConsumible: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_ORDENTRABAJOCONSUMIBLES'
    SystemGenerators = False
    Left = 704
    Top = 656
  end
  object DSPModelos: TDataSetProvider
    DataSet = QBuscaModelos
    Options = []
    Left = 952
    Top = 424
  end
  object CDSModelos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPModelos'
    Left = 1024
    Top = 424
    object CDSModelosMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 50
    end
  end
  object QBuscaModelos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select p.modelo from productos p group by p.modelo')
    Left = 872
    Top = 424
  end
  object QBuscaIdent: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select p.id from productos p where p.identificador=:identificado' +
        'r')
    Left = 888
    Top = 208
    ParamData = <
      item
        Name = 'IDENTIFICADOR'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = Null
      end>
    object QBuscaIdentID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object ibgProducto: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 
      'NEXT_ID_PRODUCTOS                                               ' +
      '                             '
    SystemGenerators = False
    Left = 232
    Top = 304
  end
  object QUltCodProducto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(id) as ID from productos')
    Left = 1032
    Top = 560
    object QUltCodProductoID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
  end
  object QPenalizaciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from penalizaciones where id_ot=:id')
    Left = 264
    Top = 464
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QOTrabajoSubDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.* from ordentrabajosubdet d '
      'where d.id_cabot = :id')
    Left = 264
    Top = 592
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QOTrabajoSubDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOTrabajoSubDetID_DETOT: TIntegerField
      FieldName = 'ID_DETOT'
      Origin = 'ID_DETOT'
      Required = True
    end
    object QOTrabajoSubDetID_CABOT: TIntegerField
      FieldName = 'ID_CABOT'
      Origin = 'ID_CABOT'
      Required = True
    end
    object QOTrabajoSubDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object QOTrabajoSubDetSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 50
    end
    object QOTrabajoSubDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QOTrabajoSubDetTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object QOTrabajoConsumible: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.id,d.id_cabot,d.codigo,s.detalle_stk as MuestraStock,'
      '       d.cant_estimada,d.cant_consumida,d.precio_unitario,'
      '       d.total,d.afecta_stock from ordentrabajoconsumibles d'
      'left join stock s on s.codigo_stk=d.codigo'
      'where d.id_cabot = :id')
    Left = 264
    Top = 656
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QOTrabajoConsumibleID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOTrabajoConsumibleID_CABOT: TIntegerField
      FieldName = 'ID_CABOT'
      Origin = 'ID_CABOT'
      Required = True
    end
    object QOTrabajoConsumibleCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QOTrabajoConsumibleMUESTRASTOCK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASTOCK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object QOTrabajoConsumibleCANT_ESTIMADA: TSingleField
      FieldName = 'CANT_ESTIMADA'
      Origin = 'CANT_ESTIMADA'
    end
    object QOTrabajoConsumibleCANT_CONSUMIDA: TSingleField
      FieldName = 'CANT_CONSUMIDA'
      Origin = 'CANT_CONSUMIDA'
    end
    object QOTrabajoConsumiblePRECIO_UNITARIO: TSingleField
      FieldName = 'PRECIO_UNITARIO'
      Origin = 'PRECIO_UNITARIO'
    end
    object QOTrabajoConsumibleTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
    end
    object QOTrabajoConsumibleAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QCategoriaPorDef: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select max(id) as ID, detalle from categoria_productos where por' +
        'defecto='#39'S'#39' group by detalle')
    Left = 1032
    Top = 616
    object QCategoriaPorDefID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
    object QCategoriaPorDefDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
  end
  object CDSProducto: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPProducto'
    OnNewRecord = CDSProductoNewRecord
    Left = 1072
    Top = 312
    object CDSProductoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSProductoID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
    end
    object CDSProductoIDENTIFICADOR: TStringField
      FieldName = 'IDENTIFICADOR'
      Origin = 'IDENTIFICADOR'
      Size = 50
    end
    object CDSProductoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 100
    end
    object CDSProductoPROPIETARIO: TStringField
      FieldName = 'PROPIETARIO'
      Origin = 'PROPIETARIO'
      Size = 6
    end
    object CDSProductoOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 200
    end
    object CDSProductoMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 5
    end
    object CDSProductoMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 50
    end
    object CDSProductoMUESTRACATEGORIA: TStringField
      FieldName = 'MUESTRACATEGORIA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 50
    end
    object CDSProductoMUESTRAPROPIETARIO: TStringField
      FieldName = 'MUESTRAPROPIETARIO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object CDSProductoMUESTRAMARCA: TStringField
      FieldName = 'MUESTRAMARCA'
      Origin = 'DESCRIPCION_MARCA'
      ProviderFlags = []
      Size = 25
    end
  end
  object QOTrabajoMatafuegos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.id,d.id_ot,d.id_matafuego,'
      
        '       m.numero_matafuego,m.agente,m.capacidad,m.marca,m.fecha_f' +
        'abicacion,'
      
        '       d.fecha_ph,d.aprobado,d.opcion_ph,d.opcion_valvula,d.opci' +
        'on_manometro,'
      
        '       d.opcion_placa,d.opcion_manga,d.opcion_tobera,d.opcion_su' +
        'ncho,'
      '       d.opcion_pintura,d.fecha_realizado,d.tipo_trabajo'
      '  from ordentrabajo_matafuegos d'
      'left join productos_matafuegos m on m.id=d.id_matafuego'
      'where d.id_ot=:id')
    Left = 248
    Top = 704
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QOTrabajoMatafuegosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOTrabajoMatafuegosID_OT: TIntegerField
      FieldName = 'ID_OT'
      Origin = 'ID_OT'
      Required = True
    end
    object QOTrabajoMatafuegosID_MATAFUEGO: TIntegerField
      FieldName = 'ID_MATAFUEGO'
      Origin = 'ID_MATAFUEGO'
      Required = True
    end
    object QOTrabajoMatafuegosNUMERO_MATAFUEGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO_MATAFUEGO'
      Origin = 'NUMERO_MATAFUEGO'
      ProviderFlags = []
    end
    object QOTrabajoMatafuegosAGENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENTE'
      Origin = 'AGENTE'
      ProviderFlags = []
      Size = 30
    end
    object QOTrabajoMatafuegosCAPACIDAD: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CAPACIDAD'
      Origin = 'CAPACIDAD'
      ProviderFlags = []
    end
    object QOTrabajoMatafuegosMARCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MARCA'
      Origin = 'MARCA'
      ProviderFlags = []
      Size = 30
    end
    object QOTrabajoMatafuegosAPROBADO: TStringField
      FieldName = 'APROBADO'
      Origin = 'APROBADO'
      FixedChar = True
      Size = 1
    end
    object QOTrabajoMatafuegosOPCION_PH: TStringField
      FieldName = 'OPCION_PH'
      Origin = 'OPCION_PH'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOTrabajoMatafuegosOPCION_VALVULA: TStringField
      FieldName = 'OPCION_VALVULA'
      Origin = 'OPCION_VALVULA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOTrabajoMatafuegosOPCION_MANOMETRO: TStringField
      FieldName = 'OPCION_MANOMETRO'
      Origin = 'OPCION_MANOMETRO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOTrabajoMatafuegosOPCION_PLACA: TStringField
      FieldName = 'OPCION_PLACA'
      Origin = 'OPCION_PLACA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOTrabajoMatafuegosOPCION_MANGA: TStringField
      FieldName = 'OPCION_MANGA'
      Origin = 'OPCION_MANGA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOTrabajoMatafuegosOPCION_TOBERA: TStringField
      FieldName = 'OPCION_TOBERA'
      Origin = 'OPCION_TOBERA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOTrabajoMatafuegosOPCION_SUNCHO: TStringField
      FieldName = 'OPCION_SUNCHO'
      Origin = 'OPCION_SUNCHO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOTrabajoMatafuegosOPCION_PINTURA: TStringField
      FieldName = 'OPCION_PINTURA'
      Origin = 'OPCION_PINTURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOTrabajoMatafuegosTIPO_TRABAJO: TIntegerField
      FieldName = 'TIPO_TRABAJO'
      Origin = 'TIPO_TRABAJO'
      Required = True
    end
    object QOTrabajoMatafuegosFECHA_FABICACION: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'FECHA_FABICACION'
      Origin = 'FECHA_FABICACION'
      ProviderFlags = []
      ReadOnly = True
    end
    object QOTrabajoMatafuegosFECHA_PH: TSQLTimeStampField
      FieldName = 'FECHA_PH'
      Origin = 'FECHA_PH'
    end
    object QOTrabajoMatafuegosFECHA_REALIZADO: TSQLTimeStampField
      FieldName = 'FECHA_REALIZADO'
      Origin = 'FECHA_REALIZADO'
    end
  end
  object DSPOTrabajoMatafuegos: TDataSetProvider
    DataSet = QOTrabajoMatafuegos
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 368
    Top = 704
  end
  object CDSOTrabajoMatafuegos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPOTrabajoMatafuegos'
    OnNewRecord = CDSOTrabajoMatafuegosNewRecord
    Left = 464
    Top = 704
    object CDSOTrabajoMatafuegosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOTrabajoMatafuegosID_OT: TIntegerField
      FieldName = 'ID_OT'
      Origin = 'ID_OT'
      Required = True
    end
    object CDSOTrabajoMatafuegosID_MATAFUEGO: TIntegerField
      FieldName = 'ID_MATAFUEGO'
      Origin = 'ID_MATAFUEGO'
      Required = True
    end
    object CDSOTrabajoMatafuegosNUMERO_MATAFUEGO: TStringField
      FieldName = 'NUMERO_MATAFUEGO'
      Origin = 'NUMERO_MATAFUEGO'
      ProviderFlags = []
    end
    object CDSOTrabajoMatafuegosAGENTE: TStringField
      FieldName = 'AGENTE'
      Origin = 'AGENTE'
      ProviderFlags = []
      Size = 30
    end
    object CDSOTrabajoMatafuegosCAPACIDAD: TFloatField
      FieldName = 'CAPACIDAD'
      Origin = 'CAPACIDAD'
      ProviderFlags = []
    end
    object CDSOTrabajoMatafuegosMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      ProviderFlags = []
      Size = 30
    end
    object CDSOTrabajoMatafuegosAPROBADO: TStringField
      FieldName = 'APROBADO'
      Origin = 'APROBADO'
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoMatafuegosOPCION_PH: TStringField
      FieldName = 'OPCION_PH'
      Origin = 'OPCION_PH'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoMatafuegosOPCION_VALVULA: TStringField
      FieldName = 'OPCION_VALVULA'
      Origin = 'OPCION_VALVULA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoMatafuegosOPCION_MANOMETRO: TStringField
      FieldName = 'OPCION_MANOMETRO'
      Origin = 'OPCION_MANOMETRO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoMatafuegosOPCION_PLACA: TStringField
      FieldName = 'OPCION_PLACA'
      Origin = 'OPCION_PLACA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoMatafuegosOPCION_MANGA: TStringField
      FieldName = 'OPCION_MANGA'
      Origin = 'OPCION_MANGA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoMatafuegosOPCION_TOBERA: TStringField
      FieldName = 'OPCION_TOBERA'
      Origin = 'OPCION_TOBERA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoMatafuegosOPCION_SUNCHO: TStringField
      FieldName = 'OPCION_SUNCHO'
      Origin = 'OPCION_SUNCHO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoMatafuegosOPCION_PINTURA: TStringField
      FieldName = 'OPCION_PINTURA'
      Origin = 'OPCION_PINTURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOTrabajoMatafuegosTIPO_TRABAJO: TIntegerField
      FieldName = 'TIPO_TRABAJO'
      Origin = 'TIPO_TRABAJO'
      Required = True
    end
    object CDSOTrabajoMatafuegosFECHA_FABICACION: TSQLTimeStampField
      FieldName = 'FECHA_FABICACION'
      Origin = 'FECHA_FABICACION'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSOTrabajoMatafuegosFECHA_PH: TSQLTimeStampField
      FieldName = 'FECHA_PH'
      Origin = 'FECHA_PH'
    end
    object CDSOTrabajoMatafuegosFECHA_REALIZADO: TSQLTimeStampField
      FieldName = 'FECHA_REALIZADO'
      Origin = 'FECHA_REALIZADO'
    end
  end
  object DSOTrabajoMatafuegos: TDataSource
    DataSet = CDSOTrabajoMatafuegos
    Left = 584
    Top = 704
  end
  object ibgOTrabajoMatafuegos: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 
      'NEXT_ID_ORDENTRABAJO_MAT                                        ' +
      '                             '
    SystemGenerators = False
    Left = 704
    Top = 704
  end
  object QBuscaMatafuego: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select m.id,m.numero_matafuego,m.agente,m.capacidad,m.fecha_fabi' +
        'cacion,m.marca from productos_matafuegos m ')
    Left = 840
    Top = 667
    object QBuscaMatafuegoNUMERO_MATAFUEGO: TStringField
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO_MATAFUEGO'
      Origin = 'NUMERO_MATAFUEGO'
      Size = 8
    end
    object QBuscaMatafuegoAGENTE: TStringField
      DisplayLabel = 'Agente'
      DisplayWidth = 12
      FieldName = 'AGENTE'
      Origin = 'AGENTE'
      Size = 12
    end
    object QBuscaMatafuegoCAPACIDAD: TFloatField
      DisplayLabel = 'Capacidad'
      DisplayWidth = 5
      FieldName = 'CAPACIDAD'
      Origin = 'CAPACIDAD'
      DisplayFormat = ',0.00'
    end
    object QBuscaMatafuegoFECHA_FABICACION: TSQLTimeStampField
      FieldName = 'FECHA_FABICACION'
      Origin = 'FECHA_FABICACION'
      Visible = False
    end
    object QBuscaMatafuegoMARCA: TStringField
      DisplayWidth = 12
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Visible = False
      Size = 12
    end
    object QBuscaMatafuegoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
  end
  object QMatafuego: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select m.id,m.numero_matafuego,m.agente,m.capacidad,m.fecha_fabi' +
        'cacion,m.marca from productos_matafuegos m where m.id=:id')
    Left = 800
    Top = 608
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QMatafuegoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMatafuegoNUMERO_MATAFUEGO: TStringField
      FieldName = 'NUMERO_MATAFUEGO'
      Origin = 'NUMERO_MATAFUEGO'
    end
    object QMatafuegoAGENTE: TStringField
      FieldName = 'AGENTE'
      Origin = 'AGENTE'
      Size = 30
    end
    object QMatafuegoCAPACIDAD: TFloatField
      FieldName = 'CAPACIDAD'
      Origin = 'CAPACIDAD'
    end
    object QMatafuegoFECHA_FABICACION: TSQLTimeStampField
      FieldName = 'FECHA_FABICACION'
      Origin = 'FECHA_FABICACION'
    end
    object QMatafuegoMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 30
    end
  end
  object DSBuscaMatafuego: TDataSource
    DataSet = QBuscaMatafuego
    Left = 928
    Top = 664
  end
  object DSPProducto: TDataSetProvider
    DataSet = DMMain_FD.QProductos
    Options = []
    Left = 1000
    Top = 312
  end
end
