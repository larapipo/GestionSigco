object DatosRecibos: TDatosRecibos
  Height = 748
  Width = 1060
  object DSPRecibo: TDataSetProvider
    DataSet = DMMain_FD.QRecibo
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 12
  end
  object DSPClientes: TDataSetProvider
    DataSet = DMMain_FD.QClientes
    Options = []
    Left = 32
    Top = 115
  end
  object DSPSucrusal: TDataSetProvider
    DataSet = DMMain_FD.QSucursal
    Options = []
    Left = 32
    Top = 63
  end
  object DSPMovAplicaCCVta: TDataSetProvider
    DataSet = DMMain_FD.QMovAplicaCCVta
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 166
  end
  object DSPMovCCVta: TDataSetProvider
    DataSet = DMMain_FD.QMovCCVta
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 220
  end
  object IBGId_recibo: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RECIBO'
    SystemGenerators = False
    Left = 216
    Top = 16
  end
  object IBGId_AplicacionCCVta: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_MOVAPLICACCCVTA'
    SystemGenerators = False
    Left = 304
    Top = 208
  end
  object IBGId_Retenciones: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'ID_MOV_RETENCIONES'
    SystemGenerators = False
    Left = 312
    Top = 296
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = QEmpresa
    Left = 288
    Top = 16
  end
  object DSPRetenciones: TDataSetProvider
    DataSet = QRetenciones
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 300
  end
  object DSRetenciones: TDataSource
    DataSet = CDSRetenciones
    Left = 240
    Top = 304
  end
  object DSJur_Reg: TDataSource
    DataSet = CDSJur_Reg
    Left = 712
    Top = 616
  end
  object DSPMovACta: TDataSetProvider
    DataSet = QMovACta
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 592
    Top = 15
  end
  object CDSMovACta: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPMovACta'
    Left = 640
    Top = 16
    object CDSMovACtaID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovACtaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSMovACtaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Required = True
      Size = 6
    end
    object CDSMovACtaID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object CDSMovACtaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSMovACtaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovACtaNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object CDSMovACtaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovACtaDETALLE: TStringField
      FieldName = 'DETALLE'
    end
  end
  object DSMovACta: TDataSource
    DataSet = CDSMovACta
    Left = 720
    Top = 16
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = []
    Left = 288
    Top = 64
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 344
    Top = 64
    object CDSBuscaSucursalCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSBuscaSucursalDETALLE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 35
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
  end
  object DSPPersonal: TDataSetProvider
    DataSet = DMMain_FD.QPersonal
    Options = []
    Left = 288
    Top = 160
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
    Left = 344
    Top = 160
    object CDSPersonalNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 30
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
    object CDSPersonalCOMISION: TFloatField
      FieldName = 'COMISION'
      Origin = 'COMISION'
      Required = True
    end
  end
  object DSPBuscaCobrador: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCobradores
    Options = []
    Left = 288
    Top = 112
  end
  object CDSBuscaCobrador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaCobrador'
    Left = 344
    Top = 112
    object CDSBuscaCobradorCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSBuscaCobradorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object CDSRecibo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPRecibo'
    OnNewRecord = CDSReciboNewRecord
    Left = 104
    Top = 12
    object CDSReciboID_RC: TIntegerField
      FieldName = 'ID_RC'
      Origin = 'ID_RC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSReciboTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSReciboCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSReciboNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSReciboCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      OnSetText = CDSReciboCODIGOSetText
      Size = 6
    end
    object CDSReciboLETRARC: TStringField
      FieldName = 'LETRARC'
      Origin = 'LETRARC'
      OnSetText = CDSReciboLETRARCSetText
      Size = 1
    end
    object CDSReciboSUCRC: TStringField
      FieldName = 'SUCRC'
      Origin = 'SUCRC'
      OnSetText = CDSReciboSUCRCSetText
      Size = 4
    end
    object CDSReciboNUMERORC: TStringField
      FieldName = 'NUMERORC'
      Origin = 'NUMERORC'
      OnSetText = CDSReciboNUMERORCSetText
      Size = 8
    end
    object CDSReciboNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSReciboRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSReciboDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object CDSReciboCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object CDSReciboLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object CDSReciboTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
    end
    object CDSReciboCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSReciboFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSReciboANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Size = 1
    end
    object CDSReciboVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      OnSetText = CDSReciboVENDEDORSetText
      Size = 6
    end
    object CDSReciboSALDO_APLICAR: TFloatField
      FieldName = 'SALDO_APLICAR'
      Origin = 'SALDO_APLICAR'
    end
    object CDSReciboIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Origin = 'IMPRESO'
      Size = 1
    end
    object CDSReciboOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 60
    end
    object CDSReciboOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      Size = 60
    end
    object CDSReciboSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      OnSetText = CDSReciboSUCURSALSetText
    end
    object CDSReciboZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object CDSReciboTOTAL_NETO: TFloatField
      FieldName = 'TOTAL_NETO'
      Origin = 'TOTAL_NETO'
      OnGetText = CDSReciboTOTAL_NETOGetText
      OnSetText = CDSReciboTOTAL_NETOSetText
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSReciboPORCENTAJE_DSCTO: TFloatField
      FieldName = 'PORCENTAJE_DSCTO'
      Origin = 'PORCENTAJE_DSCTO'
      OnSetText = CDSReciboPORCENTAJE_DSCTOSetText
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSReciboIMPORTE_DSCTO: TFloatField
      FieldName = 'IMPORTE_DSCTO'
      Origin = 'IMPORTE_DSCTO'
      OnGetText = CDSReciboIMPORTE_DSCTOGetText
      OnSetText = CDSReciboIMPORTE_DSCTOSetText
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSReciboTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      OnGetText = CDSReciboTOTALGetText
      OnSetText = CDSReciboTOTALSetText
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSReciboUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object CDSReciboFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object CDSReciboCPBTE_MANUAL: TStringField
      FieldName = 'CPBTE_MANUAL'
      Origin = 'CPBTE_MANUAL'
      FixedChar = True
      Size = 1
    end
    object CDSReciboNC_ID: TIntegerField
      FieldName = 'NC_ID'
      Origin = 'NC_ID'
    end
    object CDSReciboNC_TIPOCPBTE: TStringField
      FieldName = 'NC_TIPOCPBTE'
      Origin = 'NC_TIPOCPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSReciboNC_CLASECPBTE: TStringField
      FieldName = 'NC_CLASECPBTE'
      Origin = 'NC_CLASECPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSReciboNC_NROCOMPROB: TStringField
      FieldName = 'NC_NROCOMPROB'
      Origin = 'NC_NROCOMPROB'
      Size = 13
    end
    object CDSReciboN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
      Origin = 'N_OPERACION2'
    end
    object CDSReciboMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSReciboMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object CDSReciboID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
      OnSetText = CDSReciboID_TIPOCOMPROBANTESetText
    end
    object CDSReciboMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object CDSReciboMUESTRAIVA: TStringField
      FieldName = 'MUESTRAIVA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 15
    end
    object CDSReciboNUMERO_OPERACION: TStringField
      FieldName = 'NUMERO_OPERACION'
      Origin = 'NUMERO_OPERACION'
      Size = 8
    end
    object CDSReciboNRO_RECIBO_INTERMO: TIntegerField
      FieldName = 'NRO_RECIBO_INTERMO'
      Origin = 'NRO_RECIBO_INTERMO'
    end
    object CDSReciboID_REC_CUPON: TIntegerField
      FieldName = 'ID_REC_CUPON'
      Origin = 'ID_REC_CUPON'
    end
    object CDSReciboIMPORTE_RECARGO: TFloatField
      FieldName = 'IMPORTE_RECARGO'
      Origin = 'IMPORTE_RECARGO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSReciboLOTE_COBRO_TC: TStringField
      FieldName = 'LOTE_COBRO_TC'
      Origin = 'LOTE_COBRO_TC'
      Size = 8
    end
    object CDSReciboMUESTRANCREDITO: TStringField
      FieldName = 'MUESTRANCREDITO'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSReciboMUESTRACHEQUES: TStringField
      FieldName = 'MUESTRACHEQUES'
      Origin = 'CHEQUES'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CDSReciboID_OBRA: TIntegerField
      FieldName = 'ID_OBRA'
      Origin = 'ID_OBRA'
      Required = True
    end
    object CDSReciboMUESTRAOBRA: TStringField
      FieldName = 'MUESTRAOBRA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 100
    end
    object CDSReciboMONEDA_ALTERNATIVA: TIntegerField
      FieldName = 'MONEDA_ALTERNATIVA'
      Origin = 'MONEDA_ALTERNATIVA'
      Required = True
    end
    object CDSReciboCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      Required = True
      DisplayFormat = ',0.000'
    end
    object CDSReciboMUESTRASIGNOMONEDA: TStringField
      FieldName = 'MUESTRASIGNOMONEDA'
      Origin = 'SIGNO'
      ProviderFlags = []
      Size = 5
    end
    object CDSReciboMUESTANCIMPORTE: TFloatField
      FieldName = 'MUESTANCIMPORTE'
      Origin = 'TOTAL'
      ProviderFlags = []
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
    ProviderName = 'DSPSucrusal'
    Left = 104
    Top = 64
    object CDSSucursalCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSSucursalDETALLE: TStringField
      DisplayWidth = 35
      FieldName = 'DETALLE'
      Size = 35
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
    Left = 104
    Top = 120
    object CDSClientesCODIGO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 6
    end
    object CDSClientesNOMBRE: TStringField
      DisplayWidth = 35
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSClientesRAZON_SOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      DisplayWidth = 35
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSClientesDIRECCION_COMERCIAL: TStringField
      DisplayLabel = 'Direcci'#243'n'
      DisplayWidth = 35
      FieldName = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object CDSClientesCPOSTAL: TStringField
      DisplayWidth = 8
      FieldName = 'CPOSTAL'
      Visible = False
      Size = 8
    end
    object CDSClientesLOCALIDAD: TStringField
      DisplayWidth = 15
      FieldName = 'LOCALIDAD'
      Visible = False
      Size = 15
    end
    object CDSClientesNRO_DE_CUIT: TStringField
      DisplayWidth = 13
      FieldName = 'NRO_DE_CUIT'
      Visible = False
      Size = 13
    end
    object CDSClientesCONDICION_IVA: TIntegerField
      DisplayWidth = 10
      FieldName = 'CONDICION_IVA'
      Visible = False
    end
    object CDSClientesZONA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ZONA'
      Visible = False
    end
    object CDSClientesSUCURSAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'SUCURSAL'
      Visible = False
    end
    object CDSClientesVENDEDOR: TStringField
      DisplayWidth = 6
      FieldName = 'VENDEDOR'
      Size = 6
    end
    object CDSClientesCOBRADOR: TStringField
      DisplayWidth = 6
      FieldName = 'COBRADOR'
      Size = 6
    end
    object CDSClientesID_RECIBOPORDEFECTO: TIntegerField
      FieldName = 'ID_RECIBOPORDEFECTO'
    end
    object CDSClientesACTIVO: TStringField
      FieldName = 'ACTIVO'
      FixedChar = True
      Size = 1
    end
    object CDSClientesCODIGO_COORPORATIVO: TStringField
      FieldName = 'CODIGO_COORPORATIVO'
      Size = 6
    end
    object CDSClientesMUESTRACOBRADOR: TStringField
      FieldName = 'MUESTRACOBRADOR'
      ProviderFlags = []
      Size = 50
    end
    object CDSClientesTIPOABONO: TStringField
      FieldName = 'TIPOABONO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesCHEQUES: TStringField
      FieldName = 'CHEQUES'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    Left = 344
    Top = 16
    object CDSEmpresaNombre: TStringField
      DisplayWidth = 30
      FieldName = 'Nombre'
      Origin = 'NOMBRE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 30
    end
    object CDSEmpresaActividad: TStringField
      DisplayWidth = 30
      FieldName = 'Actividad'
      Origin = 'ACTIVIDAD'
      Size = 30
    end
    object CDSEmpresaDireccion: TStringField
      DisplayWidth = 30
      FieldName = 'Direccion'
      Origin = 'DIRECCION'
      Size = 30
    end
    object CDSEmpresaLocalidad: TStringField
      DisplayWidth = 30
      FieldName = 'Localidad'
      Origin = 'LOCALIDAD'
      Size = 30
    end
    object CDSEmpresaCorreo: TStringField
      DisplayWidth = 30
      FieldName = 'Correo'
      Origin = 'CORREO'
      Size = 30
    end
    object CDSEmpresaTelefono1: TStringField
      DisplayWidth = 10
      FieldName = 'Telefono1'
      Origin = 'TELEFONO1'
      Size = 10
    end
    object CDSEmpresaTelefono2: TStringField
      DisplayWidth = 10
      FieldName = 'Telefono2'
      Origin = 'TELEFONO2'
      Size = 10
    end
    object CDSEmpresaLogo: TGraphicField
      DisplayWidth = 10
      FieldName = 'Logo'
      Origin = 'LOGO'
      BlobType = ftGraphic
    end
    object CDSEmpresaCuit: TStringField
      DisplayWidth = 13
      FieldName = 'Cuit'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSEmpresaPUNITORIOS: TFloatField
      FieldName = 'PUNITORIOS'
      Origin = 'PUNITORIOS'
      Required = True
    end
    object CDSEmpresaPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
      Origin = 'PROVINCIA'
    end
    object CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField
      FieldName = 'FECHA_INICIO_ACTI'
      Origin = 'FECHA_INICIO_ACTI'
    end
    object CDSEmpresaCOD_ACTIVIDAD: TStringField
      FieldName = 'COD_ACTIVIDAD'
      Origin = 'COD_ACTIVIDAD'
      Size = 10
    end
    object CDSEmpresaNOMBRE_FANTASIA: TStringField
      FieldName = 'NOMBRE_FANTASIA'
      Origin = 'NOMBRE_FANTASIA'
      Size = 50
    end
  end
  object CDSMovAplicaCCVta: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPMovAplicaCCVta'
    BeforeEdit = CDSMovAplicaCCVtaBeforeDelete
    BeforePost = CDSMovAplicaCCVtaBeforePost
    AfterPost = CDSMovAplicaCCVtaAfterPost
    BeforeDelete = CDSMovAplicaCCVtaBeforeDelete
    AfterDelete = CDSMovAplicaCCVtaAfterDelete
    OnNewRecord = CDSMovAplicaCCVtaNewRecord
    Left = 112
    Top = 168
    object CDSMovAplicaCCVtaID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovAplicaCCVtaID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovAplicaCCVtaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSMovAplicaCCVtaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Required = True
      Size = 6
    end
    object CDSMovAplicaCCVtaID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object CDSMovAplicaCCVtaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSMovAplicaCCVtaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovAplicaCCVtaNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object CDSMovAplicaCCVtaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      OnSetText = CDSMovAplicaCCVtaIMPORTESetText
    end
    object CDSMovAplicaCCVtaAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
      Required = True
    end
    object CDSMovAplicaCCVtaAPLICA_TIPOCPBTE: TStringField
      FieldName = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object CDSMovAplicaCCVtaAPLICA_CLASECPBTE: TStringField
      FieldName = 'APLICA_CLASECPBTE'
      Size = 2
    end
    object CDSMovAplicaCCVtaAPLICA_NROCPBTE: TStringField
      FieldName = 'APLICA_NROCPBTE'
      EditMask = 'a-####-########;0;_'
      Size = 13
    end
    object CDSMovAplicaCCVtaDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSMovAplicaCCVtaCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSMovAplicaCCVtaMUESTRAFECHACPBTE: TSQLTimeStampField
      FieldName = 'MUESTRAFECHACPBTE'
      ProviderFlags = []
    end
    object CDSMovAplicaCCVtaMUESTRATOTALFC: TFloatField
      FieldName = 'MUESTRATOTALFC'
      ProviderFlags = []
    end
    object CDSMovAplicaCCVtaMUESTRAMORA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'MUESTRAMORA'
      ProviderFlags = []
    end
  end
  object DSMovAplicaCCVta: TDataSource
    DataSet = CDSMovAplicaCCVta
    Left = 216
    Top = 174
  end
  object CDSMovCCVta: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovCCVta'
    OnCalcFields = CDSMovCCVtaCalcFields
    Left = 112
    Top = 224
    object CDSMovCCVtaID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovCCVtaID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
    end
    object CDSMovCCVtaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 6
    end
    object CDSMovCCVtaFECHAVTA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha'
      FieldName = 'FECHAVTA'
    end
    object CDSMovCCVtaFECHAVTO: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'F.Vto'
      FieldName = 'FECHAVTO'
    end
    object CDSMovCCVtaTIPOCPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSMovCCVtaCLASECPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovCCVtaNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      EditMask = 'a-####-########;0;_'
      Size = 13
    end
    object CDSMovCCVtaDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
    end
    object CDSMovCCVtaHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
    end
    object CDSMovCCVtaSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
    end
    object CDSMovCCVtaDETALLE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
    end
    object CDSMovCCVtaMUESTRAAPAGAR: TFloatField
      DisplayLabel = 'Imp.a Pagar'
      FieldName = 'MUESTRAAPAGAR'
      ProviderFlags = []
      OnSetText = CDSMovCCVtaMUESTRAAPAGARSetText
    end
    object CDSMovCCVtaMUESTRAMORA: TIntegerField
      DisplayLabel = 'Mora'
      FieldKind = fkInternalCalc
      FieldName = 'MUESTRAMORA'
      ProviderFlags = []
    end
    object CDSMovCCVtaMUESTRAPUNITORIO: TFloatField
      DisplayLabel = 'Puni.'
      FieldKind = fkInternalCalc
      FieldName = 'MUESTRAPUNITORIO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovCCVtaNRO_CUOTA: TIntegerField
      DisplayLabel = 'N.Cuota'
      FieldName = 'NRO_CUOTA'
    end
    object CDSMovCCVtaSELECCION: TBooleanField
      Alignment = taCenter
      DisplayLabel = 'Sel.'
      FieldKind = fkInternalCalc
      FieldName = 'SELECCION'
    end
    object CDSMovCCVtaMUESTRAGRUPO: TIntegerField
      FieldName = 'MUESTRAGRUPO'
      ProviderFlags = []
    end
    object CDSMovCCVtaMUESTRATOTAL: TFloatField
      FieldName = 'MUESTRATOTAL'
      ProviderFlags = []
    end
    object CDSMovCCVtaMUESTRATIPOVTA: TStringField
      FieldName = 'MUESTRATIPOVTA'
      ProviderFlags = []
      Size = 1
    end
  end
  object DSMovCCVta: TDataSource
    DataSet = CDSMovCCVta
    Left = 216
    Top = 224
  end
  object QGrupoCpbte: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select id_grupo from mov_ctacte_vta_grupo  ( :id )')
    Left = 207
    Top = 68
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QGrupoCpbteID_GRUPO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_GRUPO'
    end
  end
  object QCheUsado: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select ch.id_mov_caja_egresos from cheque_tercero ch'
      'where ch.id_cheque_ter = :id_cheque')
    Left = 440
    Top = 64
    ParamData = <
      item
        Name = 'id_cheque'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QRetenciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from mov_retenciones where id_cpbte=:id and tipocpbte='#39 +
        'RC'#39)
    Left = 32
    Top = 304
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRetencionesID_MOV_RETENCIONES: TIntegerField
      FieldName = 'ID_MOV_RETENCIONES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRetencionesID_RETENCION: TIntegerField
      FieldName = 'ID_RETENCION'
      Required = True
    end
    object QRetencionesDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object QRetencionesTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QRetencionesCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QRetencionesNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object QRetencionesID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object QRetencionesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QRetencionesFECHA_RETENCION: TSQLTimeStampField
      FieldName = 'FECHA_RETENCION'
    end
    object QRetencionesNRO_RETENCION: TStringField
      FieldName = 'NRO_RETENCION'
    end
    object QRetencionesIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QRetencionesCODIGO_CLIENTE: TStringField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
      Size = 6
    end
    object QRetencionesCUIT_CLIENTE: TStringField
      FieldName = 'CUIT_CLIENTE'
      Size = 13
    end
    object QRetencionesJURIDICCION: TIntegerField
      FieldName = 'JURIDICCION'
    end
    object QRetencionesNOMBRE_CLIENTE: TStringField
      FieldName = 'NOMBRE_CLIENTE'
      Size = 35
    end
  end
  object CDSRetenciones: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPRetenciones'
    BeforePost = CDSRetencionesBeforePost
    AfterPost = CDSRetencionesAfterPost
    AfterDelete = CDSRetencionesAfterDelete
    OnNewRecord = CDSRetencionesNewRecord
    Left = 168
    Top = 304
    object CDSRetencionesID_RETENCION: TIntegerField
      DisplayLabel = 'Cod.'
      DisplayWidth = 8
      FieldName = 'ID_RETENCION'
      OnSetText = CDSRetencionesID_RETENCIONSetText
    end
    object CDSRetencionesJURIDICCION: TIntegerField
      DisplayLabel = 'Juridicc.'
      DisplayWidth = 9
      FieldName = 'JURIDICCION'
    end
    object CDSRetencionesFECHA_RETENCION: TSQLTimeStampField
      DisplayLabel = 'F.de Reten.'
      DisplayWidth = 15
      FieldName = 'FECHA_RETENCION'
      OnSetText = CDSRetencionesFECHA_RETENCIONSetText
    end
    object CDSRetencionesDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 39
      FieldName = 'DETALLE'
    end
    object CDSRetencionesNRO_RETENCION: TStringField
      DisplayLabel = 'Nro.de Ret.'
      DisplayWidth = 17
      FieldName = 'NRO_RETENCION'
    end
    object CDSRetencionesIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      DisplayWidth = 14
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSRetencionesFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      DisplayWidth = 17
      FieldName = 'FECHA'
      Visible = False
    end
    object CDSRetencionesID_MOV_RETENCIONES: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_MOV_RETENCIONES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object CDSRetencionesTIPOCPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'TIPOCPBTE'
      Required = True
      Visible = False
      Size = 2
    end
    object CDSRetencionesCLASECPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'CLASECPBTE'
      Visible = False
      Size = 2
    end
    object CDSRetencionesNROCPBTE: TStringField
      DisplayWidth = 13
      FieldName = 'NROCPBTE'
      Required = True
      Visible = False
      Size = 13
    end
    object CDSRetencionesID_CPBTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CPBTE'
      Required = True
      Visible = False
    end
    object CDSRetencionesCODIGO_CLIENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO_CLIENTE'
      Required = True
      Visible = False
      Size = 6
    end
    object CDSRetencionesCUIT_CLIENTE: TStringField
      DisplayWidth = 13
      FieldName = 'CUIT_CLIENTE'
      Visible = False
      Size = 13
    end
    object CDSRetencionesNOMBRE_CLIENTE: TStringField
      DisplayWidth = 35
      FieldName = 'NOMBRE_CLIENTE'
      Visible = False
      Size = 35
    end
    object CDSRetencionesMUESTRAJURIDICCION: TStringField
      Alignment = taCenter
      DisplayLabel = 'Juri.'
      DisplayWidth = 5
      FieldKind = fkLookup
      FieldName = 'MUESTRAJURIDICCION'
      LookupDataSet = CDSJur_Reg
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODIGO'
      KeyFields = 'JURIDICCION'
      OnChange = CDSRetencionesMUESTRAJURIDICCIONChange
      Size = 5
      Lookup = True
    end
  end
  object QMovACta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from MovACtaCCVta'
      'where cliente = :codigo and Importe > 0.02'
      ' order by fecha,numerocpbte')
    Left = 528
    Top = 16
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object QMovACtaID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovACtaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QMovACtaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Required = True
      Size = 6
    end
    object QMovACtaID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object QMovACtaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QMovACtaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QMovACtaNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object QMovACtaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QMovACtaDETALLE: TStringField
      FieldName = 'DETALLE'
    end
  end
  object QVerificaValoresTransferidos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.id from TRANSFERENCIAS_CAJA_DETALLE t'
      'where t.id_cheque=:id_cheque')
    Left = 440
    Top = 120
    ParamData = <
      item
        Name = 'id_cheque'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spCalcular_Porcentaje_: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'TRAER_NETO_FC_VTA'
    Left = 728
    Top = 128
    ParamData = <
      item
        Name = 'A_PAGAR'
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Name = 'PORCENTAJE'
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 3
        ParamType = ptOutput
        Size = 8
      end
      item
        Name = 'ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end>
  end
  object CDSTRetencion: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPTRetencion'
    Left = 120
    Top = 376
    object CDSTRetencionID_RETENCION: TIntegerField
      FieldName = 'ID_RETENCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSTRetencionDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSTRetencionTIPO: TSmallintField
      FieldName = 'TIPO'
    end
  end
  object DSPTRetencion: TDataSetProvider
    DataSet = DMMain_FD.QTRetencion
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 376
  end
  object CDSBuscaTRetencion: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaTRetencion'
    Left = 656
    Top = 296
    object CDSBuscaTRetencionID_RETENCION: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID_RETENCION'
      Origin = 'ID_RETENCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSBuscaTRetencionDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 20
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
  end
  object DSPBuscaTRetencion: TDataSetProvider
    DataSet = QBuscaTRetencion
    Options = []
    Left = 544
    Top = 304
  end
  object CDSImpuestosFac: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPImpuestosFac'
    Left = 192
    Top = 512
    object CDSImpuestosFacID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSImpuestosFacID_FCVTACAB: TIntegerField
      FieldName = 'ID_FCVTACAB'
    end
    object CDSImpuestosFacCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
    end
    object CDSImpuestosFacDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSImpuestosFacNETO: TFloatField
      FieldName = 'NETO'
    end
    object CDSImpuestosFacTASA: TFloatField
      FieldName = 'TASA'
    end
    object CDSImpuestosFacIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
  end
  object DSPImpuestosFac: TDataSetProvider
    DataSet = QImpuestosFac
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 512
  end
  object QImpuestosFac: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select fc.* from fcvtaimpuesto fc  where fc.id_fcvtacab=:id')
    Left = 32
    Top = 512
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object CDSDetallesNC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPDetalleNC'
    Left = 192
    Top = 456
    object CDSDetallesNCID: TIntegerField
      FieldName = 'ID'
    end
    object CDSDetallesNCCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object CDSDetallesNCDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
  end
  object DSPDetalleNC: TDataSetProvider
    DataSet = QDetallesNc
    Options = []
    Left = 104
    Top = 448
  end
  object QDetallesNc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from recibos_detalles_nc')
    Left = 32
    Top = 448
    object QDetallesNcID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'DBMAIN.RECIBOS_DETALLES_NC.ID'
    end
    object QDetallesNcCODIGO: TStringField
      DisplayWidth = 8
      FieldName = 'CODIGO'
      Origin = 'DBMAIN.RECIBOS_DETALLES_NC.CODIGO'
      Size = 8
    end
    object QDetallesNcDETALLE: TStringField
      DisplayWidth = 45
      FieldName = 'DETALLE'
      Origin = 'DBMAIN.RECIBOS_DETALLES_NC.DETALLE'
      Size = 45
    end
  end
  object QBorrarNc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Delete from fcvtacab fc'
      '  where fc.id_fc = :id and fc.tipocpbte = :Tipo'
      '')
    Left = 552
    Top = 200
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'Tipo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object DSPInscripcion: TDataSetProvider
    DataSet = DMMain_FD.QInscripcion
    Options = []
    Left = 512
    Top = 371
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
    Left = 632
    Top = 371
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
  object QJur_Reg: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from juridiccion order by detalle')
    Left = 496
    Top = 616
  end
  object DSPJur_Reg: TDataSetProvider
    DataSet = QJur_Reg
    Options = [poAllowCommandText]
    Left = 568
    Top = 616
  end
  object CDSJur_Reg: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPJur_Reg'
    Left = 632
    Top = 616
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 40
    end
  end
  object QBuscaTRetencion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from t_retenciones')
    Left = 440
    Top = 297
  end
  object QCaja_Estado: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select estado from caja_cab where id_caja=:id ')
    Left = 448
    Top = 176
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QCaja_EstadoESTADO: TIntegerField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
    end
  end
  object QCalcular_PorcentajeFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TRAER_NETO_FC_VTA(:a_pagar, :id)')
    Left = 680
    Top = 208
    ParamData = <
      item
        Name = 'A_PAGAR'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes'
      'where id_comprobante=:id '
      'and tipo_comprob='#39'RC'#39' '
      'and compra_venta='#39'V'#39' '
      'and sucursal=:suc'
      'and en_uso='#39'S'#39)
    Left = 360
    Top = 376
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
  end
  object QFacturaFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select fc.netoexen2 from fcvtacab fc  where fc.id_fc=:id')
    Left = 432
    Top = 376
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QFacturaFDNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      Origin = 'NETOEXEN2'
      Required = True
    end
  end
  object QNDPorDefecto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.ID_NOTADEBITOPORDEFECTO,cp.denominacion,cp.clase_compro' +
        'b,cp.tipo_comprob,cp.sucursal from clientes c'
      
        'left join comprobantes cp on cp.id_comprobante=c.ID_NOTADEBITOPO' +
        'RDEFECTO'
      'where c.codigo=:codigo and not(cp.id_comprobante is null)')
    Left = 552
    Top = 136
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QNDPorDefectoID_NOTADEBITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTADEBITOPORDEFECTO'
      Origin = 'ID_NOTADEBITOPORDEFECTO'
    end
    object QNDPorDefectoDENOMINACION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QNDPorDefectoCLASE_COMPROB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QNDPorDefectoTIPO_COMPROB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QNDPorDefectoSUCURSAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QNCPorDefecto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_notacreditopordefecto,cp.denominacion,cp.clase_compr' +
        'ob,cp.tipo_comprob,cp.sucursal from clientes c'
      
        'left join comprobantes cp on cp.id_comprobante=c.id_notacreditop' +
        'ordefecto'
      'where c.codigo=:codigo and not(cp.id_comprobante is null)')
    Left = 552
    Top = 88
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QNCPorDefectoID_NOTACREDITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTACREDITOPORDEFECTO'
      Origin = 'ID_NOTACREDITOPORDEFECTO'
    end
    object QNCPorDefectoDENOMINACION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QNCPorDefectoCLASE_COMPROB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QNCPorDefectoTIPO_COMPROB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QNCPorDefectoSUCURSAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QTipoFcCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select Fc.tipo_vta from fcvtacab fc where  Fc.id_fc=:id')
    Left = 648
    Top = 80
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QTipoFcCabTIPO_VTA: TStringField
      FieldName = 'TIPO_VTA'
      Origin = 'TIPO_VTA'
      FixedChar = True
      Size = 1
    end
  end
  object QEmpresa: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select e.*, c.id_postal as id_cpostal,p.codigo_cot from Empresa ' +
        'e'
      'left join c_postal c on c.codigo_postal = e.cpostal'
      'left join provincia p on p.id_pro=e.provincia'
      '')
    Left = 436
    Top = 15
    object QEmpresaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object QEmpresaACTIVIDAD: TStringField
      FieldName = 'ACTIVIDAD'
      Origin = 'ACTIVIDAD'
      Size = 30
    end
    object QEmpresaDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 30
    end
    object QEmpresaLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 30
    end
    object QEmpresaCORREO: TStringField
      FieldName = 'CORREO'
      Origin = 'CORREO'
      Size = 30
    end
    object QEmpresaTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Origin = 'TELEFONO1'
      Size = 10
    end
    object QEmpresaTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Origin = 'TELEFONO2'
      Size = 10
    end
    object QEmpresaCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QEmpresaCONDICIONIVA: TStringField
      FieldName = 'CONDICIONIVA'
      Origin = 'CONDICIONIVA'
      Size = 15
    end
    object QEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField
      FieldName = 'NRO_AGTE_RET_INGBRUTOS'
      Origin = 'NRO_AGTE_RET_INGBRUTOS'
      Size = 15
    end
    object QEmpresaLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
    object QEmpresaCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QEmpresaNRO_AGTE_RET_GANANCIA: TStringField
      FieldName = 'NRO_AGTE_RET_GANANCIA'
      Origin = 'NRO_AGTE_RET_GANANCIA'
      Size = 15
    end
    object QEmpresaAG_RET_GANANCIA: TStringField
      FieldName = 'AG_RET_GANANCIA'
      Origin = 'AG_RET_GANANCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QEmpresaAG_RET_ING_BRUTOS: TStringField
      FieldName = 'AG_RET_ING_BRUTOS'
      Origin = 'AG_RET_ING_BRUTOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField
      FieldName = 'AG_PERCEPCION_ING_BRUTOS'
      Origin = 'AG_PERCEPCION_ING_BRUTOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QEmpresaTASA_PERCEPCION_IB: TFloatField
      FieldName = 'TASA_PERCEPCION_IB'
      Origin = 'TASA_PERCEPCION_IB'
    end
    object QEmpresaMINO_IMP_PERCEP_IB: TFloatField
      FieldName = 'MINO_IMP_PERCEP_IB'
      Origin = 'MINO_IMP_PERCEP_IB'
    end
    object QEmpresaPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
      Origin = 'PROVINCIA'
    end
    object QEmpresaTASA_RET_IIBB: TFloatField
      FieldName = 'TASA_RET_IIBB'
      Origin = 'TASA_RET_IIBB'
      Required = True
    end
    object QEmpresaMINIMO_IMP_RET_IIBB: TFloatField
      FieldName = 'MINIMO_IMP_RET_IIBB'
      Origin = 'MINIMO_IMP_RET_IIBB'
      Required = True
    end
    object QEmpresaPUNITORIOS: TFloatField
      FieldName = 'PUNITORIOS'
      Origin = 'PUNITORIOS'
      Required = True
    end
    object QEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField
      FieldName = 'FECHA_INICIO_ACTI'
      Origin = 'FECHA_INICIO_ACTI'
    end
    object QEmpresaNRO_RENSPA: TStringField
      FieldName = 'NRO_RENSPA'
      Origin = 'NRO_RENSPA'
    end
    object QEmpresaNRO_RUCA: TIntegerField
      FieldName = 'NRO_RUCA'
      Origin = 'NRO_RUCA'
    end
    object QEmpresaCUIT_AUTORIZADO: TStringField
      FieldName = 'CUIT_AUTORIZADO'
      Origin = 'CUIT_AUTORIZADO'
      Size = 13
    end
    object QEmpresaNOMBRE_AUTORIZADO: TStringField
      FieldName = 'NOMBRE_AUTORIZADO'
      Origin = 'NOMBRE_AUTORIZADO'
      Size = 50
    end
    object QEmpresaCBU: TStringField
      FieldName = 'CBU'
      Origin = 'CBU'
      Size = 22
    end
    object QEmpresaID_CPOSTAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CPOSTAL'
      Origin = 'ID_POSTAL'
      ProviderFlags = []
    end
    object QEmpresaCOD_ACTIVIDAD: TStringField
      FieldName = 'COD_ACTIVIDAD'
      Origin = 'COD_ACTIVIDAD'
      Size = 10
    end
    object QEmpresaNOMBRE_FANTASIA: TStringField
      FieldName = 'NOMBRE_FANTASIA'
      Origin = 'NOMBRE_FANTASIA'
      Size = 50
    end
  end
  object QRcTemp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select b.id,b.cliente,c.nombre, b.fechapago,Sum(b.importe) as Im' +
        'porte from borrador_recibo b'
      '                 left join clientes c on c.codigo=b.cliente '
      '                group by b.id,b.cliente,c.nombre, b.fechapago ')
    Left = 488
    Top = 456
    object QRcTempID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRcTempCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object QRcTempNOMBRE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QRcTempFECHAPAGO: TSQLTimeStampField
      FieldName = 'FECHAPAGO'
      Origin = 'FECHAPAGO'
    end
    object QRcTempIMPORTE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QRcTempDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select b.* from borrador_recibo b'
      'where b.id=:id')
    Left = 488
    Top = 520
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRcTempDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRcTempDetID_DET: TIntegerField
      FieldName = 'ID_DET'
      Origin = 'ID_DET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRcTempDetCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object QRcTempDetID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
    end
    object QRcTempDetID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
    end
    object QRcTempDetFECHAPAGO: TSQLTimeStampField
      FieldName = 'FECHAPAGO'
      Origin = 'FECHAPAGO'
    end
    object QRcTempDetFECHAEMISION: TSQLTimeStampField
      FieldName = 'FECHAEMISION'
      Origin = 'FECHAEMISION'
    end
    object QRcTempDetFECHACOBRO: TSQLTimeStampField
      FieldName = 'FECHACOBRO'
      Origin = 'FECHACOBRO'
    end
    object QRcTempDetID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
    end
    object QRcTempDetNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object QRcTempDetIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
  end
  object CDSRcTem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRcTemp'
    Left = 664
    Top = 456
    object CDSRcTemID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSRcTemCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 6
    end
    object CDSRcTemNOMBRE: TStringField
      FieldName = 'NOMBRE'
      ReadOnly = True
      Size = 35
    end
    object CDSRcTemFECHAPAGO: TSQLTimeStampField
      FieldName = 'FECHAPAGO'
    end
    object CDSRcTemIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
  end
  object CDSRcTempDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRcTempDet'
    Left = 680
    Top = 520
    object CDSRcTempDetID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSRcTempDetID_DET: TIntegerField
      FieldName = 'ID_DET'
      Required = True
    end
    object CDSRcTempDetCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 6
    end
    object CDSRcTempDetID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
    end
    object CDSRcTempDetID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
    end
    object CDSRcTempDetFECHAPAGO: TSQLTimeStampField
      FieldName = 'FECHAPAGO'
    end
    object CDSRcTempDetFECHAEMISION: TSQLTimeStampField
      FieldName = 'FECHAEMISION'
    end
    object CDSRcTempDetFECHACOBRO: TSQLTimeStampField
      FieldName = 'FECHACOBRO'
    end
    object CDSRcTempDetID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object CDSRcTempDetNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object CDSRcTempDetIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
  end
  object DSPRcTemp: TDataSetProvider
    DataSet = QRcTemp
    Options = [poFetchBlobsOnDemand]
    UpdateMode = upWhereKeyOnly
    Left = 576
    Top = 456
  end
  object DSPRcTempDet: TDataSetProvider
    DataSet = QRcTempDet
    Options = []
    Left = 576
    Top = 520
  end
  object DSLstMonedas: TDataSource
    DataSet = CDSLstMonedas
    Left = 320
    Top = 588
  end
  object QLstMonedas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from monedas ')
    Left = 24
    Top = 588
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QLstMonedasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLstMonedasMONEDA: TStringField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Size = 15
    end
    object QLstMonedasCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QLstMonedasSIGNO: TStringField
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      Size = 5
    end
    object QLstMonedasORDEN: TSmallintField
      FieldName = 'ORDEN'
      Origin = 'ORDEN'
      Required = True
    end
    object QLstMonedasCOTIZACION_COMPRA: TFloatField
      FieldName = 'COTIZACION_COMPRA'
      Origin = 'COTIZACION_COMPRA'
    end
  end
  object DSPLstMonedas: TDataSetProvider
    DataSet = QLstMonedas
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 588
  end
  object CDSLstMonedas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPLstMonedas'
    Left = 216
    Top = 588
    object CDSLstMonedasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSLstMonedasMONEDA: TStringField
      FieldName = 'MONEDA'
      Size = 15
    end
    object CDSLstMonedasCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object CDSLstMonedasSIGNO: TStringField
      FieldName = 'SIGNO'
      Size = 5
    end
    object CDSLstMonedasORDEN: TSmallintField
      FieldName = 'ORDEN'
      Required = True
    end
    object CDSLstMonedasCOTIZACION_COMPRA: TFloatField
      FieldName = 'COTIZACION_COMPRA'
    end
  end
  object QAPlicacionNC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select  m.id_mov,'
      '        m.aplica_tipocpbte,'
      '        m.aplica_clasecpbte,'
      '        m.aplica_nrocpbte,'
      '        m.detalle,'
      '        m.importe'
      'from movaplicaccvta m where m.id_cpbte=:id_nc')
    Left = 864
    Top = 592
    ParamData = <
      item
        Name = 'ID_NC'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QAPlicacionNCID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Origin = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAPlicacionNCAPLICA_TIPOCPBTE: TStringField
      FieldName = 'APLICA_TIPOCPBTE'
      Origin = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object QAPlicacionNCAPLICA_CLASECPBTE: TStringField
      FieldName = 'APLICA_CLASECPBTE'
      Origin = 'APLICA_CLASECPBTE'
      Size = 2
    end
    object QAPlicacionNCAPLICA_NROCPBTE: TStringField
      FieldName = 'APLICA_NROCPBTE'
      Origin = 'APLICA_NROCPBTE'
      Size = 13
    end
    object QAPlicacionNCDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QAPlicacionNCIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
  end
  object DSAplicacionNC: TDataSource
    DataSet = QAPlicacionNC
    Left = 944
    Top = 584
  end
end
