object DatosImportaPtoVtaMorphi: TDatosImportaPtoVtaMorphi
  Height = 753
  Width = 1045
  object DSSucursal: TDataSource
    DataSet = MTSucursal
    Left = 424
    Top = 7
  end
  object DSCajas: TDataSource
    DataSet = MTCajas
    Left = 424
    Top = 64
  end
  object DSFPago: TDataSource
    DataSet = MTFPago
    Left = 424
    Top = 168
  end
  object DSEgresos: TDataSource
    DataSet = MTEgresos
    Left = 424
    Top = 240
  end
  object RESTClientSucursal: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://lafonte.dyndns.tv:3055/morphi/api1/sistema/sucursales'
    Params = <>
    RaiseExceptionOn500 = False
    SynchronizedEvents = False
    Left = 648
    Top = 8
  end
  object RESTRequestSucursal: TRESTRequest
    Client = RESTClientSucursal
    Params = <
      item
        Name = 'apikey'
        Value = '682A596A206CACED5937'
      end>
    Response = RESTResponseSucursal
    SynchronizedEvents = False
    Left = 528
    Top = 8
  end
  object RESTResponseSucursal: TRESTResponse
    ContentType = 'application/json'
    RootElement = 'DATOSSUCURSAL'
    Left = 752
    Top = 8
  end
  object RESTResponseDataSetAdapter2: TRESTResponseDataSetAdapter
    Dataset = MTSucursal
    FieldDefs = <>
    Response = RESTResponseSucursal
    Left = 848
    Top = 8
  end
  object MTSucursal: TFDMemTable
    AfterOpen = MTSucursalAfterOpen
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 976
    Top = 8
    object MTSucursalCOD_SUCURSAL: TWideStringField
      FieldName = 'COD_SUCURSAL'
      Size = 255
    end
    object MTSucursalCOD_EMPRESA: TWideStringField
      FieldName = 'COD_EMPRESA'
      Size = 255
    end
    object MTSucursalNOMBRE: TWideStringField
      FieldName = 'NOMBRE'
      Size = 255
    end
    object MTSucursalDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object MTSucursalCIUDAD: TWideStringField
      FieldName = 'CIUDAD'
      Size = 255
    end
    object MTSucursalPROVINCIA: TWideStringField
      FieldName = 'PROVINCIA'
      Size = 255
    end
    object MTSucursalCOD_POSTAL: TWideStringField
      FieldName = 'COD_POSTAL'
      Size = 255
    end
    object MTSucursalTELEFONO: TWideStringField
      FieldName = 'TELEFONO'
      Size = 255
    end
    object MTSucursalEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 255
    end
    object MTSucursalSERVERNAME_EXTERNO: TWideStringField
      FieldName = 'SERVERNAME_EXTERNO'
      Size = 255
    end
    object MTSucursalDATABASEPATH: TWideStringField
      FieldName = 'DATABASEPATH'
      Size = 255
    end
    object MTSucursalRANGO_CLIENTES: TWideStringField
      FieldName = 'RANGO_CLIENTES'
      Size = 255
    end
    object MTSucursalRANGO_PROVEEDORES: TWideStringField
      FieldName = 'RANGO_PROVEEDORES'
      Size = 255
    end
    object MTSucursalREPLICACIONACTIVA: TWideStringField
      FieldName = 'REPLICACIONACTIVA'
      Size = 255
    end
    object MTSucursalREPLICACIONCONFIG: TWideStringField
      FieldName = 'REPLICACIONCONFIG'
      Size = 255
    end
    object MTSucursalLATITUD: TWideStringField
      FieldName = 'LATITUD'
      Size = 255
    end
    object MTSucursalLONGITUD: TWideStringField
      FieldName = 'LONGITUD'
      Size = 255
    end
  end
  object RESTClientCajas: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://lafonte.dyndns.tv:3055/morphi/api1/sistema/listadocajas'
    Params = <>
    RaiseExceptionOn500 = False
    SynchronizedEvents = False
    Left = 648
    Top = 64
  end
  object RESTRequestCajas: TRESTRequest
    Client = RESTClientCajas
    Params = <
      item
        Name = 'apikey'
        Value = '682A596A206CACED5937'
      end
      item
        Name = 'sucursal'
        Value = '25'
      end
      item
        Name = 'desde'
        Value = '07/01/2021'
      end>
    Response = RESTResponseCajas
    SynchronizedEvents = False
    Left = 528
    Top = 64
  end
  object RESTResponseCajas: TRESTResponse
    ContentType = 'application/json'
    RootElement = 'LISTADOCAJAS'
    Left = 752
    Top = 64
  end
  object RESTResponseDataSetAdapterCajas: TRESTResponseDataSetAdapter
    Dataset = MTCajas
    FieldDefs = <>
    Response = RESTResponseCajas
    Left = 848
    Top = 64
  end
  object MTCajas: TFDMemTable
    AfterScroll = MTCajasAfterScroll
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 976
    Top = 64
    object MTCajasINDICE: TWideStringField
      DisplayLabel = 'Index'
      DisplayWidth = 10
      FieldName = 'INDICE'
      Size = 255
    end
    object MTCajasCTE_CODIGO: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CTE_CODIGO'
      Size = 255
    end
    object MTCajasNOMMBRESUCURSAL: TWideStringField
      DisplayWidth = 100
      FieldName = 'NOMMBRESUCURSAL'
      Visible = False
      Size = 255
    end
    object MTCajasFECHA_APERTURA: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'F.Apertura'
      DisplayWidth = 10
      FieldName = 'FECHA_APERTURA'
      Size = 255
    end
    object MTCajasFECHA_CIERRE: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'F.Cierre'
      DisplayWidth = 10
      FieldName = 'FECHA_CIERRE'
      Size = 255
    end
    object MTCajasINFORME: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Inf.'
      DisplayWidth = 5
      FieldName = 'INFORME'
      Size = 255
    end
    object MTCajasPREFIJO: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Prefi.'
      DisplayWidth = 6
      FieldName = 'PREFIJO'
      Size = 255
    end
    object MTCajasNUMERO: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Numero'
      DisplayWidth = 10
      FieldName = 'NUMERO'
      Size = 255
    end
    object MTCajasFAC_MONTO: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = 'Fc.Monto'
      DisplayWidth = 12
      FieldName = 'FAC_MONTO'
      Size = 255
    end
    object MTCajasFAC_IVA: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = 'Fc.IVA'
      DisplayWidth = 12
      FieldName = 'FAC_IVA'
      Size = 255
    end
    object MTCajasFAC_II: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = 'Fc.Imp.In'
      DisplayWidth = 12
      FieldName = 'FAC_II'
      Size = 255
    end
    object MTCajasFAC_PERCEP: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = 'FC.Percep.'
      DisplayWidth = 12
      FieldName = 'FAC_PERCEP'
      Size = 255
    end
    object MTCajasNC_MONTO: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = 'Nc.Monto'
      DisplayWidth = 12
      FieldName = 'NC_MONTO'
      Size = 255
    end
    object MTCajasNC_IVA: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = 'Nc.IVA'
      DisplayWidth = 12
      FieldName = 'NC_IVA'
      Size = 255
    end
    object MTCajasNC_II: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = 'Nc.Imp.Int.'
      DisplayWidth = 12
      FieldName = 'NC_II'
      Size = 255
    end
    object MTCajasNC_PERCEP: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = 'Nc.Percep'
      DisplayWidth = 12
      FieldName = 'NC_PERCEP'
      Size = 255
    end
    object MTCajasTOTAL_NETO_F: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = 'Total Neto/Nc'
      DisplayWidth = 12
      FieldName = 'TOTAL_NETO_F'
      Size = 255
    end
    object MTCajasTOTAL_EGRESOS: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = 'Total Egre.'
      DisplayWidth = 12
      FieldName = 'TOTAL_EGRESOS'
      Size = 255
    end
    object MTCajasTOTAL_INGRESOS: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = 'Total Ingr.'
      DisplayWidth = 12
      FieldName = 'TOTAL_INGRESOS'
      Size = 255
    end
    object MTCajasTOTAL_CAJA: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = 'Total Caja'
      DisplayWidth = 12
      FieldName = 'TOTAL_CAJA'
      Size = 255
    end
    object MTCajasULTIMA_FAC_A: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Ult.Fc A'
      DisplayWidth = 12
      FieldName = 'ULTIMA_FAC_A'
      Size = 255
    end
    object MTCajasULTIMA_FAC_B: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Ult.Fc B'
      DisplayWidth = 12
      FieldName = 'ULTIMA_FAC_B'
      Size = 255
    end
    object MTCajasULTIMA_NC_A: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Ult.Nc A'
      DisplayWidth = 12
      FieldName = 'ULTIMA_NC_A'
      Size = 255
    end
    object MTCajasULTIMA_NC_B: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Ult.Nc B'
      DisplayWidth = 12
      FieldName = 'ULTIMA_NC_B'
      Size = 255
    end
    object MTCajasSUCURSAL: TWideStringField
      Alignment = taCenter
      DisplayWidth = 12
      FieldName = 'SUCURSAL'
      Size = 255
    end
    object MTCajasRESULTADO: TFloatField
      DisplayLabel = 'Total Neto'
      FieldName = 'RESULTADO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
  end
  object RESTClientFPago: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 
      'http://lafonte.dyndns.tv:3055/morphi/api1/sistema/formapagoporca' +
      'ja'
    Params = <>
    RaiseExceptionOn500 = False
    SynchronizedEvents = False
    Left = 632
    Top = 176
  end
  object RESTRequestFPago: TRESTRequest
    Client = RESTClientFPago
    Params = <
      item
        Name = 'apikey'
        Value = '682A596A206CACED5937'
      end
      item
        Name = 'indice_caja'
      end
      item
        Name = 'dia_completo'
        Value = 'False'
      end>
    Response = RESTResponseFPago
    SynchronizedEvents = False
    Left = 528
    Top = 176
  end
  object RESTResponseFPago: TRESTResponse
    ContentType = 'application/json'
    RootElement = 'FORMASPAGOPORCAJA'
    Left = 752
    Top = 176
  end
  object RESTResponseDataSetAdapterFPago: TRESTResponseDataSetAdapter
    Dataset = MTFPago
    FieldDefs = <>
    Response = RESTResponseFPago
    Left = 848
    Top = 176
  end
  object MTFPago: TFDMemTable
    OnCalcFields = MTFPagoCalcFields
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtWideString
        TargetDataType = dtAnsiString
      end
      item
      end>
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 976
    Top = 168
    object MTFPagoINDICE: TWideStringField
      FieldName = 'INDICE'
      Visible = False
      Size = 255
    end
    object MTFPagoINDICE_CAJA: TWideStringField
      FieldName = 'INDICE_CAJA'
      Visible = False
      Size = 255
    end
    object MTFPagoCOD_PAGO: TWideStringField
      DisplayLabel = 'Cod.Pago'
      DisplayWidth = 5
      FieldName = 'COD_PAGO'
      Size = 255
    end
    object MTFPagoDESC_FORMAPAGO: TWideStringField
      DisplayLabel = 'Forma Pago'
      DisplayWidth = 12
      FieldName = 'DESC_FORMAPAGO'
      Size = 255
    end
    object MTFPagoIMPORTE: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = 'Importe'
      DisplayWidth = 15
      FieldName = 'IMPORTE'
      Size = 255
    end
    object MTFPagoLOTE_CCARD: TWideStringField
      FieldName = 'LOTE_CCARD'
      Visible = False
      Size = 255
    end
    object MTFPagoIMPORTE_VALUE: TFloatField
      DisplayLabel = '$ Importe'
      FieldKind = fkCalculated
      FieldName = 'IMPORTE_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
  end
  object RESTClientEgresos: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://lafonte.dyndns.tv:3055/morphi/api1/sistema/egresoscaja'
    Params = <>
    RaiseExceptionOn500 = False
    SynchronizedEvents = False
    Left = 648
    Top = 240
  end
  object RESTRequestEgresos: TRESTRequest
    Client = RESTClientEgresos
    Params = <
      item
        Name = 'apikey'
        Value = '682A596A206CACED5937'
      end
      item
        Name = 'indice_caja'
        Value = '3330007'
      end>
    Response = RESTResponseEgresos
    SynchronizedEvents = False
    Left = 528
    Top = 240
  end
  object RESTResponseEgresos: TRESTResponse
    ContentType = 'application/json'
    RootElement = 'EGRESOS'
    Left = 752
    Top = 248
  end
  object RESTResponseDataSetAdapterEgresos: TRESTResponseDataSetAdapter
    Dataset = MTEgresos
    FieldDefs = <>
    Response = RESTResponseEgresos
    Left = 848
    Top = 248
  end
  object MTEgresos: TFDMemTable
    OnCalcFields = MTEgresosCalcFields
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 976
    Top = 248
    object MTEgresosINDICE: TWideStringField
      FieldName = 'INDICE'
      Size = 255
    end
    object MTEgresosINDICE_CAJA: TWideStringField
      FieldName = 'INDICE_CAJA'
      Size = 255
    end
    object MTEgresosCTE_CODIGO: TWideStringField
      DisplayLabel = 'Cta.Cod.'
      DisplayWidth = 10
      FieldName = 'CTE_CODIGO'
      Size = 255
    end
    object MTEgresosTIPO: TWideStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 5
      FieldName = 'TIPO'
      Size = 255
    end
    object MTEgresosRUBRO_CAJA: TWideStringField
      DisplayLabel = 'Ru.Caja'
      DisplayWidth = 10
      FieldName = 'RUBRO_CAJA'
      Size = 255
    end
    object MTEgresosRUBRO: TWideStringField
      DisplayLabel = 'Rubro'
      DisplayWidth = 25
      FieldName = 'RUBRO'
      Size = 255
    end
    object MTEgresosDESCRIPCION: TWideStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 30
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object MTEgresosIMPORTE: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = 'Importe'
      DisplayWidth = 10
      FieldName = 'IMPORTE'
      Size = 255
    end
    object MTEgresosIMPORTE_VALUE: TFloatField
      DisplayLabel = '$ Importe'
      FieldKind = fkCalculated
      FieldName = 'IMPORTE_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
  end
  object DSCtasGastos: TDataSource
    DataSet = MTCtasGastos
    Left = 424
    Top = 320
  end
  object RESTClientCtasGastos: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://lafonte.dyndns.tv:3055/morphi/api1/sistema/rubroscaja'
    Params = <>
    RaiseExceptionOn500 = False
    SynchronizedEvents = False
    Left = 648
    Top = 336
  end
  object RESTRequestCtasGastos: TRESTRequest
    Client = RESTClientCtasGastos
    Params = <
      item
        Name = 'apikey'
        Value = '682A596A206CACED5937'
      end>
    Response = RESTResponseCtasGastos
    SynchronizedEvents = False
    Left = 528
    Top = 304
  end
  object RESTResponseCtasGastos: TRESTResponse
    ContentType = 'application/json'
    RootElement = 'RUBROS_CAJA'
    Left = 760
    Top = 312
  end
  object RESTResponseDataSetAdapterCtasGastos: TRESTResponseDataSetAdapter
    Dataset = MTCtasGastos
    FieldDefs = <>
    Response = RESTResponseCtasGastos
    Left = 848
    Top = 336
  end
  object MTCtasGastos: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 976
    Top = 320
    object MTCtasGastosCODIGO: TWideStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Size = 255
    end
    object MTCtasGastosTIPO: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = 'Tipo'
      DisplayWidth = 10
      FieldName = 'TIPO'
      Size = 10
    end
    object MTCtasGastosNOMBRE: TWideStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'NOMBRE'
      Size = 255
    end
    object MTCtasGastosINHABILITADO: TWideStringField
      FieldName = 'INHABILITADO'
      Size = 255
    end
    object MTCtasGastosCOD_TIPOVALOR: TWideStringField
      DisplayLabel = 'Tp/Val'
      FieldName = 'COD_TIPOVALOR'
      Size = 255
    end
  end
  object spAgregarGasto: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'INGRESAR_GASTOS_COMPLETO'
    Left = 256
    Top = 417
    ParamData = <
      item
        Position = 1
        Name = 'ID_COMPROBANTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'FECHA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'IMPORTE'
        DataType = ftFMTBcd
        Precision = 15
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 5
        Name = 'CODIGOGASTO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 6
        Name = 'ID_CUENTA_CAJA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'DETALLE'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 8
        Name = 'TIPO_CPBTE'
        DataType = ftString
        ParamType = ptOutput
        Size = 2
      end
      item
        Position = 9
        Name = 'CLASE_CPBTE'
        DataType = ftString
        ParamType = ptOutput
        Size = 2
      end
      item
        Position = 10
        Name = 'ID_EGRESO'
        DataType = ftInteger
        ParamType = ptOutput
      end
      item
        Position = 11
        Name = 'LETRA'
        DataType = ftString
        ParamType = ptOutput
        Size = 1
      end
      item
        Position = 12
        Name = 'SUC'
        DataType = ftString
        ParamType = ptOutput
        Size = 4
      end
      item
        Position = 13
        Name = 'NUMERO'
        DataType = ftString
        ParamType = ptOutput
        Size = 8
      end
      item
        Position = 14
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptOutput
      end>
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 
      'http://lafonte.dyndns.tv:3055/morphi/api1/sistema/formapagoporca' +
      'ja'
    Params = <>
    RaiseExceptionOn500 = False
    SynchronizedEvents = False
    Left = 480
    Top = 544
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Name = 'apikey'
        Value = 'B3C580E9E10AABC93AA3'
      end
      item
        Name = 'indice_caja'
        Value = '4421001'
      end
      item
        Name = 'dia_completo'
        Value = 'False'
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 584
    Top = 560
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    RootElement = 'FORMASPAGOPORCAJA'
    Left = 680
    Top = 560
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    Left = 792
    Top = 560
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 944
    Top = 560
  end
end
