object DatosLibroIvaVta: TDatosLibroIvaVta
  OnDestroy = DataModuleDestroy
  Height = 708
  Width = 1008
  object DSPIIBBJuridiccion: TDataSetProvider
    DataSet = QIIBBJuridiccion
    Left = 112
    Top = 16
  end
  object CDSIIBBJuridiccion: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPIIBBJuridiccion'
    OnCalcFields = CDSIIBBJuridiccionCalcFields
    Left = 200
    Top = 16
    object CDSIIBBJuridiccionJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
      Origin = 'JURIDICION'
      ProviderFlags = []
    end
    object CDSIIBBJuridiccionJURIDICION_DETALLE: TStringField
      FieldName = 'JURIDICION_DETALLE'
      Origin = 'JURIDICION_DETALLE'
      ProviderFlags = []
      Size = 25
    end
    object CDSIIBBJuridiccionMUESTRAJURIDICCION: TStringField
      FieldName = 'MUESTRAJURIDICCION'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object CDSIIBBJuridiccionNETO: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'NETO'
      Origin = 'NETO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object CDSIIBBJuridiccionIMPUESTO: TFloatField
      DisplayLabel = 'Impuesto'
      FieldName = 'IMPUESTO'
      Origin = 'IMPUESTO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSIIBBJuridiccionNETO_CAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'NETO_CAL'
    end
    object CDSIIBBJuridiccionTIPO_CPBTE: TStringField
      FieldName = 'TIPO_CPBTE'
      Origin = 'TIPO_CPBTE'
      Size = 2
    end
    object CDSIIBBJuridiccionIMPUESTO_CAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'IMPUESTO_CAL'
    end
    object CDSIIBBJuridiccionIMPORTEIVA: TFloatField
      FieldName = 'IMPORTEIVA'
      Origin = 'IMPORTEIVA'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSIIBBJuridiccionIMPORTEIVA_CAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'IMPORTEIVA_CAL'
    end
  end
  object DSPLibroIvaVenta: TDataSetProvider
    DataSet = QLibroIvaVenta
    Options = [poAllowCommandText]
    Left = 112
    Top = 72
  end
  object CDSLibroIvaVenta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPLibroIvaVenta'
    OnCalcFields = CDSLibroIvaVentaCalcFields
    Left = 216
    Top = 72
    object CDSLibroIvaVentaID: TIntegerField
      DisplayWidth = 4
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object CDSLibroIvaVentaTIPO_CPBTE: TStringField
      DisplayLabel = 'Tp'
      DisplayWidth = 4
      FieldName = 'TIPO_CPBTE'
      Origin = 'TIPO_CPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSLibroIvaVentaCLASE_CPBTE: TStringField
      DisplayLabel = 'Cl'
      DisplayWidth = 4
      FieldName = 'CLASE_CPBTE'
      Origin = 'CLASE_CPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSLibroIvaVentaNRO_CPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      DisplayWidth = 19
      FieldName = 'NRO_CPBTE'
      Origin = 'NRO_CPBTE'
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object CDSLibroIvaVentaMUESTRA_IVA: TStringField
      DisplayLabel = 'Inscripcion'
      DisplayWidth = 18
      FieldName = 'MUESTRA_IVA'
      Origin = 'MUESTRA_IVA'
      Size = 15
    end
    object CDSLibroIvaVentaRAZON_SOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      DisplayWidth = 45
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSLibroIvaVentaCONDICION_IVA: TIntegerField
      DisplayLabel = 'Iva'
      DisplayWidth = 3
      FieldName = 'CONDICION_IVA'
      Origin = 'CONDICION_IVA'
    end
    object CDSLibroIvaVentaCUIT: TStringField
      DisplayLabel = 'Cuit'
      DisplayWidth = 11
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSLibroIvaVentaSUCURSALVENTA: TIntegerField
      DisplayLabel = 'Suc.Vta'
      DisplayWidth = 2
      FieldName = 'SUCURSALVENTA'
      Origin = 'SUCURSALVENTA'
    end
    object CDSLibroIvaVentaNETO_EXENTO: TFloatField
      DisplayLabel = 'N.Exento'
      DisplayWidth = 15
      FieldName = 'NETO_EXENTO'
      Origin = 'NETO_EXENTO'
      Visible = False
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSLibroIvaVentaNETO_GRAVADO: TFloatField
      DisplayLabel = 'N.Grav'
      DisplayWidth = 15
      FieldName = 'NETO_GRAVADO'
      Origin = 'NETO_GRAVADO'
      Visible = False
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSLibroIvaVentaPERC_IB: TFloatField
      DisplayLabel = 'IIBB'
      DisplayWidth = 15
      FieldName = 'PERC_IB'
      Origin = 'PERC_IB'
      Visible = False
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSLibroIvaVentaPERC_IB_REC: TFloatField
      DisplayLabel = 'IIBB'
      FieldKind = fkCalculated
      FieldName = 'PERC_IB_REC'
      DisplayFormat = ',0.00;-,0.00;-'
      Calculated = True
    end
    object CDSLibroIvaVentaPERC_IVA_REC: TFloatField
      DisplayLabel = 'Perc.IVA'
      FieldKind = fkInternalCalc
      FieldName = 'PERC_IVA_REC'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSLibroIvaVentaPERC_IVA: TFloatField
      DisplayLabel = 'Perc.IVA'
      FieldName = 'PERC_IVA'
      Visible = False
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSLibroIvaVentaTOTAL: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 15
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Visible = False
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSLibroIvaVentaANULADO: TStringField
      DisplayLabel = 'Anulado'
      DisplayWidth = 4
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      FixedChar = True
      Size = 1
    end
    object CDSLibroIvaVentaCOL1: TFloatField
      DisplayWidth = 15
      FieldName = 'COL1'
      Origin = 'COL1'
      Visible = False
      DisplayFormat = ',0.00'
    end
    object CDSLibroIvaVentaCOL2: TFloatField
      DisplayWidth = 15
      FieldName = 'COL2'
      Origin = 'COL2'
      Visible = False
      DisplayFormat = ',0.00'
    end
    object CDSLibroIvaVentaCOL3: TFloatField
      DisplayWidth = 15
      FieldName = 'COL3'
      Origin = 'COL3'
      Visible = False
      DisplayFormat = ',0.00'
    end
    object CDSLibroIvaVentaCOL4: TFloatField
      DisplayWidth = 15
      FieldName = 'COL4'
      Origin = 'COL4'
      Visible = False
      DisplayFormat = ',0.00'
    end
    object CDSLibroIvaVentaCOL5: TFloatField
      DisplayWidth = 15
      FieldName = 'COL5'
      Origin = 'COL5'
      Visible = False
      DisplayFormat = ',0.00'
    end
    object CDSLibroIvaVentaCOL6: TFloatField
      FieldName = 'COL6'
      Origin = 'COL6'
      Visible = False
    end
    object CDSLibroIvaVentaTOTAL_REC: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 15
      FieldKind = fkInternalCalc
      FieldName = 'TOTAL_REC'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSLibroIvaVentaCOL1_REC: TFloatField
      DisplayWidth = 15
      FieldKind = fkInternalCalc
      FieldName = 'COL1_REC'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSLibroIvaVentaCOL2_REC: TFloatField
      DisplayWidth = 15
      FieldKind = fkInternalCalc
      FieldName = 'COL2_REC'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSLibroIvaVentaCOL3_REC: TFloatField
      DisplayWidth = 15
      FieldKind = fkInternalCalc
      FieldName = 'COL3_REC'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSLibroIvaVentaCOL4_REC: TFloatField
      DisplayWidth = 15
      FieldKind = fkInternalCalc
      FieldName = 'COL4_REC'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSLibroIvaVentaCOL5_REC: TFloatField
      DisplayWidth = 15
      FieldKind = fkInternalCalc
      FieldName = 'COL5_REC'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSLibroIvaVentaNETO_EXENTO_REC: TFloatField
      DisplayLabel = 'N.Exento'
      DisplayWidth = 15
      FieldKind = fkInternalCalc
      FieldName = 'NETO_EXENTO_REC'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSLibroIvaVentaNETO_GRAVADO_REC: TFloatField
      DisplayLabel = 'N.Grav.'
      DisplayWidth = 15
      FieldKind = fkInternalCalc
      FieldName = 'NETO_GRAVADO_REC'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSLibroIvaVentaJURIDICION: TIntegerField
      DisplayLabel = 'Juri'
      DisplayWidth = 15
      FieldName = 'JURIDICION'
      Origin = 'JURIDICION'
    end
    object CDSLibroIvaVentaJURIDICION_LOCALIDAD: TIntegerField
      DisplayLabel = 'J.Localidad'
      DisplayWidth = 15
      FieldName = 'JURIDICION_LOCALIDAD'
      Origin = 'JURIDICION_LOCALIDAD'
    end
    object CDSLibroIvaVentaJURIDICION_DETALLE: TStringField
      DisplayLabel = 'Jur.detalle'
      DisplayWidth = 36
      FieldName = 'JURIDICION_DETALLE'
      Origin = 'JURIDICION_DETALLE'
      Size = 25
    end
    object CDSLibroIvaVentaPREFIJO: TStringField
      DisplayWidth = 11
      FieldKind = fkInternalCalc
      FieldName = 'PREFIJO'
      Size = 4
    end
    object CDSLibroIvaVentaNUMERO: TStringField
      DisplayWidth = 12
      FieldKind = fkInternalCalc
      FieldName = 'NUMERO'
      Size = 8
    end
    object CDSLibroIvaVentaLETRA: TStringField
      DisplayWidth = 9
      FieldKind = fkInternalCalc
      FieldName = 'LETRA'
      Size = 1
    end
    object CDSLibroIvaVentaTIPODOCUMENTO: TStringField
      DisplayLabel = 'Tipo Documento'
      DisplayWidth = 23
      FieldKind = fkInternalCalc
      FieldName = 'TIPODOCUMENTO'
      Size = 2
    end
    object CDSLibroIvaVentaALCICUOTA: TFloatField
      DisplayWidth = 15
      FieldKind = fkInternalCalc
      FieldName = 'ALCICUOTA'
    end
    object CDSLibroIvaVentaCUIT_LIMPIO: TStringField
      DisplayWidth = 19
      FieldKind = fkInternalCalc
      FieldName = 'CUIT_LIMPIO'
      Size = 13
    end
    object CDSLibroIvaVentaMUESTRACOMPROBANTE: TStringField
      DisplayLabel = 'Comprobante'
      DisplayWidth = 33
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'MUESTRACOMPROBANTE'
      Size = 15
    end
    object CDSLibroIvaVentaCODIGO_AFIP: TStringField
      DisplayLabel = 'Afip'
      DisplayWidth = 5
      FieldName = 'CODIGO_AFIP'
      Origin = 'CODIGO_AFIP'
      Size = 3
    end
    object CDSLibroIvaVentaID_CPBTE: TIntegerField
      DisplayLabel = 'Id_Cpbte'
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object CDSLibroIvaVentaFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      DisplayWidth = 12
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSLibroIvaVentaFECHAVTO: TSQLTimeStampField
      DisplayLabel = 'F.Vto'
      DisplayWidth = 12
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
  end
  object DSPTitulos: TDataSetProvider
    DataSet = QTitulos
    Left = 112
    Top = 324
  end
  object CDSTitulos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTitulos'
    AfterOpen = CDSTitulosAfterOpen
    Left = 200
    Top = 324
    object CDSTitulosCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Origin = 'COLUMNA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSTitulosDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 15
    end
  end
  object DSPTotales: TDataSetProvider
    DataSet = QTotal
    Left = 112
    Top = 384
  end
  object CDSTotales: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPTotales'
    Left = 200
    Top = 384
    object CDSTotalesSUCURSALVENTA: TIntegerField
      FieldName = 'SUCURSALVENTA'
      Origin = 'SUCURSALVENTA'
      ProviderFlags = []
    end
    object CDSTotalesTIPO_CPBTE: TStringField
      FieldName = 'TIPO_CPBTE'
      Origin = 'TIPO_CPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSTotalesMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSTotalesTASA: TFloatField
      DisplayLabel = 'Tasa %'
      FieldName = 'TASA'
      Origin = 'TASA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object CDSTotalesNETO: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'NETO'
      Origin = 'NETO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object CDSTotalesIMPUESTO: TFloatField
      DisplayLabel = 'Impuesto'
      FieldName = 'IMPUESTO'
      Origin = 'IMPUESTO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
  end
  object DSLibroIvaVenta: TDataSource
    DataSet = CDSLibroIvaVenta
    Left = 297
    Top = 72
  end
  object DSTitulos: TDataSource
    DataSet = CDSTitulos
    Left = 289
    Top = 316
  end
  object DSTotales: TDataSource
    DataSet = CDSTotales
    Left = 289
    Top = 384
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = DMMain_FD.QEmpresa
    Options = [poAllowCommandText]
    Left = 106
    Top = 448
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    Left = 199
    Top = 448
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
  object DSLibroIvaDet: TDataSource
    DataSet = CDSLibroIvaDet
    Left = 297
    Top = 128
  end
  object DSPLibroIvaDet: TDataSetProvider
    DataSet = QLibroIvaDet
    Left = 112
    Top = 128
  end
  object CDSLibroIvaDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_DESDE'
        ParamType = ptInput
        Value = -1
      end
      item
        DataType = ftInteger
        Name = 'ID_HASTA'
        ParamType = ptInput
        Value = -1
      end>
    ProviderName = 'DSPLibroIvaDet'
    Left = 200
    Top = 128
    object CDSLibroIvaDetID_LIBRO_IVA: TIntegerField
      DisplayLabel = 'Id Libro'
      FieldName = 'ID_LIBRO_IVA'
      Origin = 'ID_LIBRO_IVA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSLibroIvaDetID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSLibroIvaDetNETO: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'NETO'
      Origin = 'NETO'
      DisplayFormat = ',0.00'
    end
    object CDSLibroIvaDetTASA: TFloatField
      DisplayLabel = 'Tasa'
      FieldName = 'TASA'
      Origin = 'TASA'
      DisplayFormat = ',0.00'
    end
    object CDSLibroIvaDetIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSLibroIvaDetCOLUMNA: TSmallintField
      DisplayLabel = 'Columna'
      FieldName = 'COLUMNA'
      Origin = 'COLUMNA'
    end
  end
  object DSPTipoCpbte: TDataSetProvider
    DataSet = QTipoCp
    Left = 112
    Top = 190
  end
  object CDSTipoCpbte: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTipoCpbte'
    Left = 200
    Top = 190
    object CDSTipoCpbteDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSTipoCpbteSIGLA: TStringField
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      Size = 2
    end
  end
  object DSTipoCpbte: TDataSource
    DataSet = CDSTipoCpbte
    Left = 297
    Top = 190
  end
  object DSPTotalesPorCategoria: TDataSetProvider
    DataSet = QTotalesPorCateg
    Left = 112
    Top = 254
  end
  object CDSTotalesPorCategoria: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPTotalesPorCategoria'
    Left = 200
    Top = 254
    object CDSTotalesPorCategoriaSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSTotalesPorCategoriaMUESTRASUCURSAL: TStringField
      DisplayLabel = 'Sucursal'
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'MUESTRASUCURSAL'
      Size = 35
    end
    object CDSTotalesPorCategoriaTIPOIVA: TIntegerField
      DisplayLabel = 'Tipo IVA'
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
    end
    object CDSTotalesPorCategoriaTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSTotalesPorCategoriaCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSTotalesPorCategoriaLETRAFAC: TStringField
      DisplayLabel = 'Letra'
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      FixedChar = True
      Size = 1
    end
    object CDSTotalesPorCategoriaTASA: TFloatField
      DisplayLabel = 'Tasa %'
      FieldName = 'TASA'
      Origin = 'TASA'
      DisplayFormat = ',0.00'
    end
    object CDSTotalesPorCategoriaMUESTRACOMPROBANTE: TStringField
      DisplayLabel = 'Comprobante'
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'MUESTRACOMPROBANTE'
      Size = 15
    end
    object CDSTotalesPorCategoriaMUESTRAINSCRIPCION: TStringField
      DisplayLabel = 'Tipo Inscripcion'
      FieldName = 'MUESTRAINSCRIPCION'
      Origin = 'MUESTRAINSCRIPCION'
      Size = 15
    end
    object CDSTotalesPorCategoriaMUESTRANETO: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'MUESTRANETO'
      Origin = 'MUESTRANETO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSTotalesPorCategoriaMUESTRAIMPUESTO: TFloatField
      DisplayLabel = 'Impuesto'
      FieldName = 'MUESTRAIMPUESTO'
      Origin = 'MUESTRAIMPUESTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSTotalesPorCategoriaTOTAL_SUMANETO_IMPUESTO: TFloatField
      DisplayLabel = 'Total Final'
      FieldName = 'TOTAL_SUMANETO_IMPUESTO'
      Origin = 'TOTAL_SUMANETO_IMPUESTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSTotalesPorCategoriaTOTAL: TFloatField
      DisplayLabel = 'Total Final'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSTotalesPorCategoriaTOTALNETO: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'TOTALNETO'
      Origin = 'TOTALNETO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSTotalesPorCategoriaTOTALEXENTO: TFloatField
      DisplayLabel = 'Exento'
      FieldName = 'TOTALEXENTO'
      Origin = 'TOTALEXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSTotalesPorCategoriaTOTALIIBB: TFloatField
      DisplayLabel = 'IIBB'
      FieldName = 'TOTALIIBB'
      Origin = 'TOTALIIBB'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSTotalesPorCategoriaTOTALPERCIVA: TFloatField
      DisplayLabel = 'Perc.IVA'
      FieldName = 'TOTALPERCIVA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSTotalesPorCategoria: TDataSource
    DataSet = CDSTotalesPorCategoria
    Left = 289
    Top = 254
  end
  object DSPIvaHolister: TDataSetProvider
    DataSet = QIvaHolister
    Left = 502
    Top = 24
  end
  object CDSIvaHolister: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPIvaHolister'
    OnCalcFields = CDSIvaHolisterCalcFields
    Left = 570
    Top = 24
    object CDSIvaHolisterFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSIvaHolisterTIPO_CPBTE: TStringField
      FieldName = 'TIPO_CPBTE'
      Origin = 'TIPO_CPBTE'
      Size = 2
    end
    object CDSIvaHolisterLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSIvaHolisterNRO_CPBTE: TStringField
      FieldName = 'NRO_CPBTE'
      Origin = 'NRO_CPBTE'
      Size = 13
    end
    object CDSIvaHolisterRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSIvaHolisterCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Origin = 'CONDICION_IVA'
    end
    object CDSIvaHolisterCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSIvaHolisterNETO_GRAVADO: TFloatField
      FieldName = 'NETO_GRAVADO'
      Origin = 'NETO_GRAVADO'
    end
    object CDSIvaHolisterALICUOTA: TFloatField
      FieldName = 'ALICUOTA'
      Origin = 'ALICUOTA'
    end
    object CDSIvaHolisterIVALIQ: TFloatField
      FieldName = 'IVALIQ'
      Origin = 'IVALIQ'
    end
    object CDSIvaHolisterIVADEBITO: TFloatField
      FieldName = 'IVADEBITO'
      Origin = 'IVADEBITO'
    end
    object CDSIvaHolisterNETO_EXENTO: TFloatField
      FieldName = 'NETO_EXENTO'
      Origin = 'NETO_EXENTO'
    end
    object CDSIvaHolisterTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object CDSIvaHolisterMUESTRA_IVA: TStringField
      FieldName = 'MUESTRA_IVA'
      Origin = 'MUESTRA_IVA'
      Size = 15
    end
  end
  object DSIvaHolister: TDataSource
    DataSet = CDSIvaHolister
    Left = 650
    Top = 24
  end
  object CDSVtaVizcay: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPVtaVizcay'
    Left = 570
    Top = 88
    object CDSVtaVizcayTIPOCOMPROBANTE: TStringField
      DisplayLabel = 'TipoComprobante'
      FieldName = 'TIPOCOMPROBANTE'
      Origin = 'TIPOCOMPROBANTE'
      FixedChar = True
      Size = 2
    end
    object CDSVtaVizcayPUNTOVENTA: TStringField
      DisplayLabel = 'PuntoVenta'
      FieldName = 'PUNTOVENTA'
      Origin = 'PUNTOVENTA'
      Size = 4
    end
    object CDSVtaVizcayNUMERO: TStringField
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object CDSVtaVizcayDENOMINACIONRECEPTOR: TStringField
      DisplayLabel = 'DenominacionReceptor'
      FieldName = 'DENOMINACIONRECEPTOR'
      Origin = 'DENOMINACIONRECEPTOR'
      Size = 35
    end
    object CDSVtaVizcayFECHAEMISION: TSQLTimeStampField
      DisplayLabel = 'F.Emisioin'
      FieldName = 'FECHAEMISION'
      Origin = 'FECHAEMISION'
    end
    object CDSVtaVizcayTIPODOCUMENTORECEPTOR: TIntegerField
      DisplayLabel = 'TipoDocumentoReceptor'
      FieldName = 'TIPODOCUMENTORECEPTOR'
      Origin = 'TIPODOCUMENTORECEPTOR'
    end
    object CDSVtaVizcayDOCUMENTORECEPTOR: TStringField
      DisplayLabel = 'DocumentoReceptor'
      FieldName = 'DOCUMENTORECEPTOR'
      Origin = 'DOCUMENTORECEPTOR'
      Size = 13
    end
    object CDSVtaVizcayNETO21: TFloatField
      FieldName = 'NETO21'
      Origin = 'NETO21'
    end
    object CDSVtaVizcayIVA21: TFloatField
      FieldName = 'IVA21'
      Origin = 'IVA21'
    end
    object CDSVtaVizcayBRUTO21: TFloatField
      FieldName = 'BRUTO21'
      Origin = 'BRUTO21'
    end
    object CDSVtaVizcayNETO10_5: TFloatField
      FieldName = 'NETO10_5'
      Origin = 'NETO10_5'
    end
    object CDSVtaVizcayIVA10_5: TFloatField
      FieldName = 'IVA10_5'
      Origin = 'IVA10_5'
    end
    object CDSVtaVizcayBRUTO10_5: TFloatField
      FieldName = 'BRUTO10_5'
      Origin = 'BRUTO10_5'
    end
    object CDSVtaVizcayNETO27: TFloatField
      FieldName = 'NETO27'
      Origin = 'NETO27'
    end
    object CDSVtaVizcayIVA27: TFloatField
      FieldName = 'IVA27'
      Origin = 'IVA27'
    end
    object CDSVtaVizcayBRUTO27: TFloatField
      FieldName = 'BRUTO27'
      Origin = 'BRUTO27'
    end
    object CDSVtaVizcayEXENTO: TFloatField
      FieldName = 'EXENTO'
      Origin = 'EXENTO'
    end
    object CDSVtaVizcayIMPUESTOSINTERNOS: TFloatField
      FieldName = 'IMPUESTOSINTERNOS'
      Origin = 'IMPUESTOSINTERNOS'
    end
  end
  object DSPVtaVizcay: TDataSetProvider
    DataSet = QVtaVizcay
    Left = 502
    Top = 88
  end
  object DSCompIVADeb: TDataSource
    DataSet = CDSCompIVADeb
    Left = 698
    Top = 150
  end
  object DSCompIVACre: TDataSource
    DataSet = CDSCompIVACre
    Left = 698
    Top = 217
  end
  object CDSCompIVADeb: TClientDataSet
    Aggregates = <>
    Filter = 'DETALLE='#39'DEBITOS'#39
    Filtered = True
    Params = <>
    ProviderName = 'DSPComposicionIVA'
    AfterOpen = CDSCompIVADebAfterOpen
    Left = 570
    Top = 152
    object CDSCompIVADebDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 10
    end
    object CDSCompIVADebID_IVA: TIntegerField
      FieldName = 'ID_IVA'
      Origin = 'ID_IVA'
      Visible = False
    end
    object CDSCompIVADebIVA_DESCRIPCION: TStringField
      DisplayLabel = 'Tipo Iva'
      FieldName = 'IVA_DESCRIPCION'
      Origin = 'IVA_DESCRIPCION'
      Size = 15
    end
    object CDSCompIVADebTASA_1: TFloatField
      FieldName = 'TASA_1'
      Origin = 'TASA_1'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebTASA_2: TFloatField
      FieldName = 'TASA_2'
      Origin = 'TASA_2'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebTASA_3: TFloatField
      FieldName = 'TASA_3'
      Origin = 'TASA_3'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebTASA_4: TFloatField
      FieldName = 'TASA_4'
      Origin = 'TASA_4'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebIIBB: TFloatField
      FieldName = 'IIBB'
      Origin = 'IIBB'
      DisplayFormat = ',0.00'
    end
    object CDSCompIVADebNETO_EXENTO: TFloatField
      DisplayLabel = 'N.Exento'
      FieldName = 'NETO_EXENTO'
      Origin = 'NETO_EXENTO'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebNETO_GRAVADO: TFloatField
      DisplayLabel = 'N.Gravado'
      FieldName = 'NETO_GRAVADO'
      Origin = 'NETO_GRAVADO'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebTOTALCALCULADO: TFloatField
      DisplayLabel = 'Total Verificado'
      FieldName = 'TOTALCALCULADO'
      Origin = 'TOTALCALCULADO'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebNETO1: TFloatField
      DisplayLabel = 'Neto 1'
      FieldName = 'NETO1'
      Origin = 'NETO1'
      DisplayFormat = ',0.00;,0.00,-'
    end
    object CDSCompIVADebNETO2: TFloatField
      DisplayLabel = 'Neto 2'
      FieldName = 'NETO2'
      Origin = 'NETO2'
      DisplayFormat = ',0.00;,0.00,-'
    end
    object CDSCompIVADebNETO3: TFloatField
      DisplayLabel = 'Neto 3'
      FieldName = 'NETO3'
      Origin = 'NETO3'
      DisplayFormat = ',0.00;,0.00,-'
    end
    object CDSCompIVADebNETO4: TFloatField
      DisplayLabel = 'Neto 4'
      FieldName = 'NETO4'
      Origin = 'NETO4'
      DisplayFormat = ',0.00;,0.00,-'
    end
    object CDSCompIVADebPORCTASA_1: TFloatField
      FieldName = 'PORCTASA_1'
      Origin = 'PORCTASA_1'
      DisplayFormat = ',0.00;,0.00,-'
    end
    object CDSCompIVADebPORCTASA_2: TFloatField
      FieldName = 'PORCTASA_2'
      Origin = 'PORCTASA_2'
      DisplayFormat = ',0.00;,0.00,-'
    end
    object CDSCompIVADebPORCTASA_3: TFloatField
      FieldName = 'PORCTASA_3'
      Origin = 'PORCTASA_3'
      DisplayFormat = ',0.00;,0.00,-'
    end
    object CDSCompIVADebPORCTASA_4: TFloatField
      FieldName = 'PORCTASA_4'
      Origin = 'PORCTASA_4'
      DisplayFormat = ',0.00;,0.00,-'
    end
    object CDSCompIVADebPERCIVA: TFloatField
      DisplayLabel = 'Perc.IVA'
      FieldName = 'PERCIVA'
      DisplayFormat = ',0.00;,0.00;-'
    end
  end
  object CDSCompIVACre: TClientDataSet
    Aggregates = <>
    Filter = 'DETALLE='#39'CREDITOS'#39
    Filtered = True
    Params = <>
    ProviderName = 'DSPComposicionIVA'
    AfterOpen = CDSCompIVACreAfterOpen
    Left = 570
    Top = 209
    object StringField1: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 10
    end
    object IntegerField1: TIntegerField
      FieldName = 'ID_IVA'
      Origin = 'ID_IVA'
      Visible = False
    end
    object StringField2: TStringField
      DisplayLabel = 'Tipo Iva'
      FieldName = 'IVA_DESCRIPCION'
      Origin = 'IVA_DESCRIPCION'
      Size = 15
    end
    object CDSCompIVACreNETO_GRAVADO: TFloatField
      DisplayLabel = 'Neto Grav.'
      FieldName = 'NETO_GRAVADO'
      Origin = 'NETO_GRAVADO'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreNETO_EXENTO: TFloatField
      DisplayLabel = 'Neto Exe.'
      FieldName = 'NETO_EXENTO'
      Origin = 'NETO_EXENTO'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreTOTALCALCULADO: TFloatField
      DisplayLabel = 'Total Verificado'
      FieldName = 'TOTALCALCULADO'
      Origin = 'TOTALCALCULADO'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreIIBB: TFloatField
      FieldName = 'IIBB'
      Origin = 'IIBB'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreNETO1: TFloatField
      DisplayLabel = 'Neto 1'
      FieldName = 'NETO1'
      Origin = 'NETO1'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreNETO2: TFloatField
      DisplayLabel = 'Neto 2'
      FieldName = 'NETO2'
      Origin = 'NETO2'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreNETO3: TFloatField
      DisplayLabel = 'Neto 3'
      FieldName = 'NETO3'
      Origin = 'NETO3'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreNETO4: TFloatField
      DisplayLabel = 'Neto 4'
      FieldName = 'NETO4'
      Origin = 'NETO4'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACrePORCTASA_1: TFloatField
      FieldName = 'PORCTASA_1'
      Origin = 'PORCTASA_1'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACrePORCTASA_2: TFloatField
      FieldName = 'PORCTASA_2'
      Origin = 'PORCTASA_2'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACrePORCTASA_3: TFloatField
      FieldName = 'PORCTASA_3'
      Origin = 'PORCTASA_3'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACrePORCTASA_4: TFloatField
      FieldName = 'PORCTASA_4'
      Origin = 'PORCTASA_4'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreTASA_1: TFloatField
      FieldName = 'TASA_1'
      Origin = 'TASA_1'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreTASA_2: TFloatField
      FieldName = 'TASA_2'
      Origin = 'TASA_2'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreTASA_3: TFloatField
      FieldName = 'TASA_3'
      Origin = 'TASA_3'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreTASA_4: TFloatField
      FieldName = 'TASA_4'
      Origin = 'TASA_4'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACrePERCIVA: TFloatField
      DisplayLabel = 'Perc.IVA'
      FieldName = 'PERCIVA'
      DisplayFormat = ',0.00;,0.00;-'
    end
  end
  object DSPComposicionIVA: TDataSetProvider
    DataSet = QComposicionIva
    Left = 502
    Top = 153
  end
  object CDSDebitos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDebitos'
    Left = 570
    Top = 368
    object CDSDebitosCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Origin = 'CONDICION_IVA'
      ProviderFlags = []
    end
    object CDSDebitosPERCEPIIBB: TFloatField
      FieldName = 'PERCEPIIBB'
      Origin = 'PERCEPIIBB'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object CDSDebitosNETOGRAVADO: TFloatField
      FieldName = 'NETOGRAVADO'
      Origin = 'NETOGRAVADO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosMUESTRA_IVA: TStringField
      FieldName = 'MUESTRA_IVA'
      Origin = 'MUESTRA_IVA'
      ProviderFlags = []
      Size = 15
    end
    object CDSDebitosEXENTO: TFloatField
      FieldName = 'EXENTO'
      Origin = 'EXENTO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosIVA: TFloatField
      FieldName = 'IVA'
      Origin = 'IVA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosIVA1: TFloatField
      FieldName = 'IVA1'
      Origin = 'IVA1'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosIVA2: TFloatField
      FieldName = 'IVA2'
      Origin = 'IVA2'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosIVA3: TFloatField
      FieldName = 'IVA3'
      Origin = 'IVA3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosIVA4: TFloatField
      FieldName = 'IVA4'
      Origin = 'IVA4'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosTASA1: TFloatField
      FieldName = 'TASA1'
      Origin = 'TASA1'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosTASA2: TFloatField
      FieldName = 'TASA2'
      Origin = 'TASA2'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosTASA3: TFloatField
      FieldName = 'TASA3'
      Origin = 'TASA3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosTASA4: TFloatField
      FieldName = 'TASA4'
      Origin = 'TASA4'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosPERCEPIVA: TFloatField
      FieldName = 'PERCEPIVA'
      ReadOnly = True
    end
  end
  object CDSCreditos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCreditos'
    Left = 570
    Top = 424
    object CDSCreditosCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Origin = 'CONDICION_IVA'
      ProviderFlags = []
    end
    object CDSCreditosMUESTRA_IVA: TStringField
      FieldName = 'MUESTRA_IVA'
      Origin = 'MUESTRA_IVA'
      ProviderFlags = []
      Size = 15
    end
    object CDSCreditosEXENTO: TFloatField
      FieldName = 'EXENTO'
      Origin = 'EXENTO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosNETOGRAVADO: TFloatField
      FieldName = 'NETOGRAVADO'
      Origin = 'NETOGRAVADO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosPERCEPIIBB: TFloatField
      FieldName = 'PERCEPIIBB'
      Origin = 'PERCEPIIBB'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosIVA: TFloatField
      FieldName = 'IVA'
      Origin = 'IVA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosIVA1: TFloatField
      FieldName = 'IVA1'
      Origin = 'IVA1'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosIVA2: TFloatField
      FieldName = 'IVA2'
      Origin = 'IVA2'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosIVA3: TFloatField
      FieldName = 'IVA3'
      Origin = 'IVA3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosIVA4: TFloatField
      FieldName = 'IVA4'
      Origin = 'IVA4'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosTASA1: TFloatField
      FieldName = 'TASA1'
      Origin = 'TASA1'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosTASA2: TFloatField
      FieldName = 'TASA2'
      Origin = 'TASA2'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosTASA3: TFloatField
      FieldName = 'TASA3'
      Origin = 'TASA3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosTASA4: TFloatField
      FieldName = 'TASA4'
      Origin = 'TASA4'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosPERCEPIVA: TFloatField
      FieldName = 'PERCEPIVA'
      ReadOnly = True
    end
  end
  object DSPCreditos: TDataSetProvider
    DataSet = QCred
    Left = 502
    Top = 432
  end
  object DSPDebitos: TDataSetProvider
    DataSet = QDeb
    Left = 502
    Top = 368
  end
  object QLibroIvaVenta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.* from tabla_listado_libro_iva_venta t'
      'order by id ')
    Left = 24
    Top = 72
  end
  object QIIBBJuridiccion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select t.tipo_cpbte, t.juridicion,t.juridicion_detalle,jr.detall' +
        'e as MuestraJuridiccion,'
      
        '  sum(t.neto_exento+t.neto_gravado) as Neto,sum(t.perc_ib) as Im' +
        'puesto,'
      
        '  sum (t.col1+t.col2+t.col3+t.col4) as ImporteIva from tabla_lis' +
        'tado_libro_iva_venta t'
      'left join juridiccion jr on jr.codigo=t.juridicion'
      ''
      
        'group by  t.tipo_cpbte, t.juridicion,t.juridicion_detalle,jr.det' +
        'alle'
      'order by t.juridicion')
    Left = 24
    Top = 16
  end
  object QTitulos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from Libro_Iva_Venta_Titulos order by columna')
    Left = 24
    Top = 320
  end
  object QTotal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select l.sucursalventa,l.tipo_cpbte,s.detalle as MuestraSucursal' +
        ','
      
        'i.tasa,sum(i.neto) as Neto,sum(i.importe) as Impuesto from libro' +
        '_iva_venta l'
      'join libro_iva_venta_det i on i.id_libro_iva = l.id'
      'join sucursal s on s.codigo = l.sucursalventa'
      
        'where (l.fecha between :desde and :hasta) and (l.anulado='#39'N'#39') an' +
        'd (i.importe>0)'
      'group by  l.sucursalventa,l.tipo_cpbte,s.detalle,i.tasa')
    Left = 24
    Top = 384
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object QLibroIvaDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from libro_iva_venta_det d where ( d.id_libro_iva betwe' +
        'en :id_desde and :id_hasta ) and d.importe>0'
      'order by id_libro_iva,id')
    Left = 24
    Top = 128
    ParamData = <
      item
        Position = 1
        Name = 'ID_DESDE'
        DataType = ftInteger
        ParamType = ptInput
        Value = -1
      end
      item
        Position = 2
        Name = 'ID_HASTA'
        DataType = ftInteger
        ParamType = ptInput
        Value = -1
      end>
  end
  object QTipoCp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from tipo_comprobante'
      
        'where tipo_de_operacion<>'#39'C'#39' and (sigla in ('#39'FC'#39','#39'NC'#39','#39'ND'#39','#39'FO'#39',' +
        #39'TK'#39'))')
    Left = 24
    Top = 192
  end
  object QTotalesPorCateg: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from totales_iva_new ( :desde , :hasta, :suc )')
    Left = 24
    Top = 256
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QComposicionIva: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from composicion_libro_iva_vta')
    Left = 432
    Top = 152
    object QComposicionIvaDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 10
    end
    object QComposicionIvaID_IVA: TIntegerField
      FieldName = 'ID_IVA'
      Origin = 'ID_IVA'
    end
    object QComposicionIvaIVA_DESCRIPCION: TStringField
      FieldName = 'IVA_DESCRIPCION'
      Origin = 'IVA_DESCRIPCION'
      Size = 15
    end
    object QComposicionIvaNETO1: TFloatField
      FieldName = 'NETO1'
      Origin = 'NETO1'
    end
    object QComposicionIvaNETO2: TFloatField
      FieldName = 'NETO2'
      Origin = 'NETO2'
    end
    object QComposicionIvaNETO3: TFloatField
      FieldName = 'NETO3'
      Origin = 'NETO3'
    end
    object QComposicionIvaNETO4: TFloatField
      FieldName = 'NETO4'
      Origin = 'NETO4'
    end
    object QComposicionIvaNETO_GRAVADO: TFloatField
      FieldName = 'NETO_GRAVADO'
      Origin = 'NETO_GRAVADO'
    end
    object QComposicionIvaTASA_1: TFloatField
      FieldName = 'TASA_1'
      Origin = 'TASA_1'
    end
    object QComposicionIvaTASA_2: TFloatField
      FieldName = 'TASA_2'
      Origin = 'TASA_2'
    end
    object QComposicionIvaTASA_3: TFloatField
      FieldName = 'TASA_3'
      Origin = 'TASA_3'
    end
    object QComposicionIvaTASA_4: TFloatField
      FieldName = 'TASA_4'
      Origin = 'TASA_4'
    end
    object QComposicionIvaNETO_EXENTO: TFloatField
      FieldName = 'NETO_EXENTO'
      Origin = 'NETO_EXENTO'
    end
    object QComposicionIvaIIBB: TFloatField
      FieldName = 'IIBB'
      Origin = 'IIBB'
    end
    object QComposicionIvaTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QComposicionIvaTOTALCALCULADO: TFloatField
      FieldName = 'TOTALCALCULADO'
      Origin = 'TOTALCALCULADO'
    end
    object QComposicionIvaPORCTASA_1: TFloatField
      FieldName = 'PORCTASA_1'
      Origin = 'PORCTASA_1'
    end
    object QComposicionIvaPORCTASA_2: TFloatField
      FieldName = 'PORCTASA_2'
      Origin = 'PORCTASA_2'
    end
    object QComposicionIvaPORCTASA_3: TFloatField
      FieldName = 'PORCTASA_3'
      Origin = 'PORCTASA_3'
    end
    object QComposicionIvaPORCTASA_4: TFloatField
      FieldName = 'PORCTASA_4'
      Origin = 'PORCTASA_4'
    end
    object QComposicionIvaPERCIVA: TFloatField
      FieldName = 'PERCIVA'
      Origin = 'PERCIVA'
    end
  end
  object QDeb: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select l.condicion_iva,l.muestra_iva, sum(l.neto_exento) as Exen' +
        'to,'
      '                       sum(l.neto_gravado) as NetoGravado,'
      '                       sum(l.perc_ib) as PercepIIBB,'
      '                       sum(l.perc_iva) as PercepIVA,'
      ''
      '                       (sum(l.col1)+'
      '                       sum(l.col2)+'
      '                       sum(l.col3)+'
      '                       sum(l.col4)) as Iva,'
      ''
      
        '                       max(t1.tasa) as Tasa1, sum(l.col1) as Iva' +
        '1,'
      
        '                       max(t2.tasa) as Tasa2, sum(l.col2) as Iva' +
        '2,'
      
        '                       max(t3.tasa) as Tasa3, sum(l.col3) as Iva' +
        '3,'
      
        '                       max(t4.tasa) as Tasa4, sum(l.col4) as Iva' +
        '4,'
      ''
      
        '                       sum(l.total) as Total from Tabla_listado_' +
        'libro_iva_venta l'
      
        'left join libro_iva_venta_det t1 on t1.columna=1 and t1.id_libro' +
        '_iva=l.id'
      
        'left join libro_iva_venta_det t2 on t2.columna=2 and t2.id_libro' +
        '_iva=l.id'
      
        'left join libro_iva_venta_det t3 on t3.columna=3 and t3.id_libro' +
        '_iva=l.id'
      
        'left join libro_iva_venta_det t4 on t4.columna=4 and t4.id_libro' +
        '_iva=l.id'
      ''
      'where l.tipo_cpbte<>'#39'NC'#39' and'
      '      l.anulado<>'#39'S'#39' and'
      '      ((l.sucursalventa=:sucursal) or ( :sucursal = -1))'
      'group by l.condicion_iva,l.muestra_iva')
    Left = 432
    Top = 368
    ParamData = <
      item
        Position = 1
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QCred: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select l.condicion_iva,l.muestra_iva,sum(l.neto_exento) as Exent' +
        'o,'
      '                       sum(l.neto_gravado) as NetoGravado,'
      '                       sum(l.perc_ib) as PercepIIBB,'
      '                       sum(l.perc_IVA) as PercepIVA,'
      ''
      '                       (sum(l.col1)+'
      '                       sum(l.col2)+'
      '                       sum(l.col3)+'
      '                       sum(l.col4)) as Iva,'
      ''
      
        '                       max(t1.tasa) as Tasa1, sum(l.col1) as Iva' +
        '1,'
      
        '                       max(t2.tasa) as Tasa2, sum(l.col2) as Iva' +
        '2,'
      
        '                       max(t3.tasa) as Tasa3, sum(l.col3) as Iva' +
        '3,'
      
        '                       max(t4.tasa) as Tasa4, sum(l.col4) as Iva' +
        '4,'
      ''
      
        '                       sum(l.total) as Total  from tabla_listado' +
        '_libro_iva_venta l'
      
        'left join libro_iva_venta_det t1 on t1.columna=1 and t1.id_libro' +
        '_iva=l.id'
      
        'left join libro_iva_venta_det t2 on t2.columna=2 and t2.id_libro' +
        '_iva=l.id'
      
        'left join libro_iva_venta_det t3 on t3.columna=3 and t3.id_libro' +
        '_iva=l.id'
      
        'left join libro_iva_venta_det t4 on t4.columna=4 and t4.id_libro' +
        '_iva=l.id'
      '                       '
      
        'where l.tipo_cpbte='#39'NC'#39' and l.anulado<>'#39'S'#39' and ((l.sucursalventa' +
        ' = :sucursal) or ( :sucursal = -1))'
      'group by l.condicion_iva,l.muestra_iva')
    Left = 432
    Top = 432
    ParamData = <
      item
        Position = 1
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QIvaHolister: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select l.fecha,l.tipo_cpbte,l.letra,l.nro_cpbte,l.razon_social,'
      
        '       l.condicion_iva,l.cuit,d.neto as Neto_Gravado, d.tasa as ' +
        'Alicuota,d.importe as IvaLiq,'
      
        '       d.importe as IvaDebito, l.neto_exento,l.total,i.detalle a' +
        's Muestra_Iva from libro_iva_venta_det d'
      'left join libro_iva_venta l on l.id=d.id_libro_iva'
      'left join inscripcion i on i.codigo=l.condicion_iva'
      'where d.neto>0')
    Left = 432
    Top = 24
  end
  object QVtaVizcay: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from ventas_toxml ( :DESDE,:hASTA)')
    Left = 432
    Top = 88
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object CDSCompIVADebCred: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'DSPComposicionIVA'
    AfterOpen = CDSCompIVADebCredAfterOpen
    Left = 570
    Top = 273
    object CDSCompIVADebCredDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 10
    end
    object CDSCompIVADebCredID_IVA: TIntegerField
      FieldName = 'ID_IVA'
      Origin = 'ID_IVA'
    end
    object CDSCompIVADebCredIVA_DESCRIPCION: TStringField
      DisplayLabel = 'Tipo Iva'
      FieldName = 'IVA_DESCRIPCION'
      Origin = 'IVA_DESCRIPCION'
      Size = 15
    end
    object CDSCompIVADebCredNETO1: TFloatField
      FieldName = 'NETO1'
      Origin = 'NETO1'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIVADebCredNETO2: TFloatField
      FieldName = 'NETO2'
      Origin = 'NETO2'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIVADebCredNETO3: TFloatField
      FieldName = 'NETO3'
      Origin = 'NETO3'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIVADebCredNETO4: TFloatField
      FieldName = 'NETO4'
      Origin = 'NETO4'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIVADebCredNETO_GRAVADO: TFloatField
      DisplayLabel = 'Neto Gravado'
      FieldName = 'NETO_GRAVADO'
      Origin = 'NETO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIVADebCredTASA_1: TFloatField
      FieldName = 'TASA_1'
      Origin = 'TASA_1'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIVADebCredTASA_2: TFloatField
      FieldName = 'TASA_2'
      Origin = 'TASA_2'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIVADebCredTASA_3: TFloatField
      FieldName = 'TASA_3'
      Origin = 'TASA_3'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIVADebCredTASA_4: TFloatField
      FieldName = 'TASA_4'
      Origin = 'TASA_4'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIVADebCredNETO_EXENTO: TFloatField
      DisplayLabel = 'Neto Exento'
      FieldName = 'NETO_EXENTO'
      Origin = 'NETO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIVADebCredIIBB: TFloatField
      FieldName = 'IIBB'
      Origin = 'IIBB'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIVADebCredTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIVADebCredTOTALCALCULADO: TFloatField
      DisplayLabel = 'Total Verificado'
      FieldName = 'TOTALCALCULADO'
      Origin = 'TOTALCALCULADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIVADebCredPORCTASA_1: TFloatField
      FieldName = 'PORCTASA_1'
      Origin = 'PORCTASA_1'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIVADebCredPORCTASA_2: TFloatField
      FieldName = 'PORCTASA_2'
      Origin = 'PORCTASA_2'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIVADebCredPORCTASA_3: TFloatField
      FieldName = 'PORCTASA_3'
      Origin = 'PORCTASA_3'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIVADebCredPORCTASA_4: TFloatField
      FieldName = 'PORCTASA_4'
      Origin = 'PORCTASA_4'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIVADebCredPERCIVA: TFloatField
      DisplayLabel = 'Perc.IVA'
      FieldName = 'PERCIVA'
      DisplayFormat = ',0.00;,0.00;-'
    end
  end
  object DSCompIVADebCred: TDataSource
    DataSet = CDSCompIVADebCred
    Left = 698
    Top = 281
  end
  object spAgruparLibroFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'TOOLS_AGRUPAR_LIBRO_IVA_VENTA'
    Left = 840
    Top = 80
    ParamData = <
      item
        Position = 1
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
  end
  object QMaxID: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(t.id) from tabla_listado_libro_iva_venta t'
      '')
    Left = 432
    Top = 504
  end
  object QMinID: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select min(t.id) from tabla_listado_libro_iva_venta t')
    Left = 568
    Top = 512
  end
  object FDQuery1: TFDQuery
    Left = 840
    Top = 544
  end
end
