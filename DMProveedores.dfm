object DatosProveedores: TDatosProveedores
  OnDestroy = DataModuleDestroy
  Height = 748
  Width = 1111
  object DSPProvee: TDataSetProvider
    DataSet = DMMain_FD.QProveedores
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 16
  end
  object DSPCondCompra: TDataSetProvider
    DataSet = DMMain_FD.QCondCompraProv
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 64
  end
  object CDSBuscaFPago: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaFPago'
    Left = 472
    Top = 136
    object CDSBuscaFPagoCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
    end
    object CDSBuscaFPagoDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
    end
    object CDSBuscaFPagoDIAS: TIntegerField
      DisplayLabel = 'Dias'
      FieldName = 'DIAS'
    end
    object CDSBuscaFPagoDESCUENTO: TFloatField
      DisplayLabel = 'Dscto'
      FieldName = 'DESCUENTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
  end
  object DSPBuscaFPago: TDataSetProvider
    DataSet = DMBuscadores.QBuscaFPago
    Options = []
    Left = 392
    Top = 136
  end
  object DSLstProveedores: TDataSource
    DataSet = CDSLstProveedores
    Left = 576
    Top = 80
  end
  object DSPLstProveedores: TDataSetProvider
    DataSet = QLstProveedores
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 392
    Top = 80
  end
  object DSBuscaRubrosProv: TDataSource
    DataSet = CDSRubrosProv
    Left = 216
    Top = 256
  end
  object DSListaComprobantes: TDataSource
    DataSet = CDSListaComprobantes
    Left = 760
    Top = 584
  end
  object DSTasaRetGanancia: TDataSource
    DataSet = CDSBuscaTasaRetGanacia
    Left = 216
    Top = 400
  end
  object DSBuscaTasaRetIIBB: TDataSource
    DataSet = CDSBuscaTasaRetIIBB
    Left = 216
    Top = 352
  end
  object CDSProveedor: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'NOMBRE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 35
      end
      item
        Name = 'RAZON_SOCIAL'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'N_DE_CUENTA'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'ID_COD_POSTAL'
        DataType = ftInteger
      end
      item
        Name = 'COD_POSTAL'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'LOCALIDAD'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DIRECCION'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'TELEFONO_1'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TELEFONO_2'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CONDICION_IVA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'N_DE_CUIT'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'ACTIVO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RETIENE_IVA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RETIENE_IB'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RETIENE_GANANCIAS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'IVA_SERVICIOS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PRECIOS_CON_IVA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'OBSERVACIONES'
        DataType = ftMemo
      end
      item
        Name = 'NOMBRE_REPRESENTANTE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'DIRECCION_REPRESENTANTE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'TELEFONO_REPRESENTANTE'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'TIPO_PROVEEDOR'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FECHAULTIMACOMPRA'
        DataType = ftTimeStamp
      end
      item
        Name = 'FECHAALTA'
        DataType = ftTimeStamp
      end
      item
        Name = 'SALDO_INICIAL'
        DataType = ftFloat
      end
      item
        Name = 'ID_PERC_IVA'
        DataType = ftInteger
      end
      item
        Name = 'ID_PERC_IBB'
        DataType = ftInteger
      end
      item
        Name = 'ID_PERC_IBB_2'
        DataType = ftInteger
      end
      item
        Name = 'ID_PERC_IBB_3'
        DataType = ftInteger
      end
      item
        Name = 'RUBRO'
        DataType = ftInteger
      end
      item
        Name = 'ID_FACTURAPORDEFECTO'
        DataType = ftInteger
      end
      item
        Name = 'ID_FACTURACTDODEFECTO'
        DataType = ftInteger
      end
      item
        Name = 'EXENTO_GANACIA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CODIGO_REGIMEN_RET_GANACIA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'EXENTO_RETENCION_IB'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_TASA_RETENCION_IB'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NRO_IIBB'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CORREO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CONV_MULTI'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MONEDA_PRECIOS'
        DataType = ftInteger
      end
      item
        Name = 'RUBRO_GASTO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SUB_RUB_GASTOS'
        Attributes = [faRequired]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CON_OCOMPRA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'AUTORIZADO_NOMBRE'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'AUTORIZADO_TIPODOC'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'AUTORIZADO_NRODOC'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'RETENCION_IVA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CODIGO_RET_IVA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PORCENTAJE_RET_IVA'
        Attributes = [faRequired]
        DataType = ftSingle
      end
      item
        Name = 'TELEDISCADO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'DESPERIVA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESPERIB'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESPERIB2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MUESTRADETALLERETIIBB'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'MUESTRATASARETIIBB'
        DataType = ftFloat
      end
      item
        Name = 'MUESTRAMINIMPONIRETIIBB'
        DataType = ftFloat
      end
      item
        Name = 'CBU'
        DataType = ftString
        Size = 22
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPProvee'
    StoreDefs = True
    BeforePost = CDSProveedorBeforePost
    OnNewRecord = CDSProveedorNewRecord
    Left = 120
    Top = 16
    object CDSProveedorCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnSetText = CDSProveedorCODIGOSetText
      Size = 6
    end
    object CDSProveedorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      OnSetText = CDSProveedorNOMBRESetText
      Size = 35
    end
    object CDSProveedorRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSProveedorN_DE_CUENTA: TStringField
      FieldName = 'N_DE_CUENTA'
      Origin = 'N_DE_CUENTA'
      Size = 14
    end
    object CDSProveedorID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
      Origin = 'ID_COD_POSTAL'
      OnSetText = CDSProveedorID_COD_POSTALSetText
    end
    object CDSProveedorCOD_POSTAL: TStringField
      FieldName = 'COD_POSTAL'
      Origin = 'COD_POSTAL'
      Size = 8
    end
    object CDSProveedorLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object CDSProveedorDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object CDSProveedorTELEFONO_1: TStringField
      FieldName = 'TELEFONO_1'
      Origin = 'TELEFONO_1'
      Size = 10
    end
    object CDSProveedorTELEFONO_2: TStringField
      FieldName = 'TELEFONO_2'
      Origin = 'TELEFONO_2'
      Size = 10
    end
    object CDSProveedorCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Origin = 'CONDICION_IVA'
      Required = True
    end
    object CDSProveedorN_DE_CUIT: TStringField
      FieldName = 'N_DE_CUIT'
      Origin = 'N_DE_CUIT'
      OnSetText = CDSProveedorN_DE_CUITSetText
      EditMask = '00-00000000-0;1;_'
      Size = 13
    end
    object CDSProveedorACTIVO: TStringField
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      Size = 1
    end
    object CDSProveedorRETIENE_IVA: TStringField
      FieldName = 'RETIENE_IVA'
      Origin = 'RETIENE_IVA'
      Size = 1
    end
    object CDSProveedorRETIENE_IB: TStringField
      FieldName = 'RETIENE_IB'
      Origin = 'RETIENE_IB'
      Size = 1
    end
    object CDSProveedorRETIENE_GANANCIAS: TStringField
      FieldName = 'RETIENE_GANANCIAS'
      Origin = 'RETIENE_GANANCIAS'
      Size = 1
    end
    object CDSProveedorIVA_SERVICIOS: TStringField
      FieldName = 'IVA_SERVICIOS'
      Origin = 'IVA_SERVICIOS'
      Size = 1
    end
    object CDSProveedorPRECIOS_CON_IVA: TStringField
      FieldName = 'PRECIOS_CON_IVA'
      Origin = 'PRECIOS_CON_IVA'
      Size = 1
    end
    object CDSProveedorOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      BlobType = ftMemo
    end
    object CDSProveedorNOMBRE_REPRESENTANTE: TStringField
      FieldName = 'NOMBRE_REPRESENTANTE'
      Origin = 'NOMBRE_REPRESENTANTE'
      Size = 35
    end
    object CDSProveedorDIRECCION_REPRESENTANTE: TStringField
      FieldName = 'DIRECCION_REPRESENTANTE'
      Origin = 'DIRECCION_REPRESENTANTE'
      Size = 35
    end
    object CDSProveedorTELEFONO_REPRESENTANTE: TStringField
      FieldName = 'TELEFONO_REPRESENTANTE'
      Origin = 'TELEFONO_REPRESENTANTE'
      Size = 25
    end
    object CDSProveedorTIPO_PROVEEDOR: TStringField
      FieldName = 'TIPO_PROVEEDOR'
      Origin = 'TIPO_PROVEEDOR'
      Required = True
      Size = 1
    end
    object CDSProveedorFECHAULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'FECHAULTIMACOMPRA'
      Origin = 'FECHAULTIMACOMPRA'
    end
    object CDSProveedorFECHAALTA: TSQLTimeStampField
      FieldName = 'FECHAALTA'
      Origin = 'FECHAALTA'
    end
    object CDSProveedorSALDO_INICIAL: TFloatField
      FieldName = 'SALDO_INICIAL'
      Origin = 'SALDO_INICIAL'
    end
    object CDSProveedorID_PERC_IVA: TIntegerField
      FieldName = 'ID_PERC_IVA'
      Origin = 'ID_PERC_IVA'
      OnSetText = CDSProveedorID_PERC_IVASetText
    end
    object CDSProveedorID_PERC_IBB: TIntegerField
      FieldName = 'ID_PERC_IBB'
      Origin = 'ID_PERC_IBB'
      OnSetText = CDSProveedorID_PERC_IBBSetText
    end
    object CDSProveedorID_PERC_IBB_2: TIntegerField
      FieldName = 'ID_PERC_IBB_2'
      Origin = 'ID_PERC_IBB_2'
      OnSetText = CDSProveedorID_PERC_IBB_2SetText
    end
    object CDSProveedorRUBRO: TIntegerField
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
    end
    object CDSProveedorID_FACTURAPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURAPORDEFECTO'
      Origin = 'ID_FACTURAPORDEFECTO'
    end
    object CDSProveedorEXENTO_GANACIA: TStringField
      FieldName = 'EXENTO_GANACIA'
      Origin = 'EXENTO_GANACIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSProveedorCODIGO_REGIMEN_RET_GANACIA: TIntegerField
      FieldName = 'CODIGO_REGIMEN_RET_GANACIA'
      Origin = 'CODIGO_REGIMEN_RET_GANACIA'
      ProviderFlags = []
      Required = True
    end
    object CDSProveedorEXENTO_RETENCION_IB: TStringField
      FieldName = 'EXENTO_RETENCION_IB'
      Origin = 'EXENTO_RETENCION_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSProveedorID_TASA_RETENCION_IB: TIntegerField
      FieldName = 'ID_TASA_RETENCION_IB'
      Origin = 'ID_TASA_RETENCION_IB'
      Required = True
    end
    object CDSProveedorNRO_IIBB: TStringField
      FieldName = 'NRO_IIBB'
      Origin = 'NRO_IIBB'
      Size = 15
    end
    object CDSProveedorCORREO: TStringField
      FieldName = 'CORREO'
      Origin = 'CORREO'
      Size = 100
    end
    object CDSProveedorCONV_MULTI: TStringField
      FieldName = 'CONV_MULTI'
      Origin = 'CONV_MULTI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSProveedorMONEDA_PRECIOS: TIntegerField
      FieldName = 'MONEDA_PRECIOS'
      Origin = 'MONEDA_PRECIOS'
    end
    object CDSProveedorTELEDISCADO: TStringField
      FieldName = 'TELEDISCADO'
      Origin = 'TELEDISCADO'
      ProviderFlags = []
      Size = 6
    end
    object CDSProveedorDESPERIVA: TStringField
      FieldName = 'DESPERIVA'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
    end
    object CDSProveedorDESPERIB: TStringField
      FieldName = 'DESPERIB'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
    end
    object CDSProveedorDESPERIB2: TStringField
      FieldName = 'DESPERIB2'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
    end
    object CDSProveedorMUESTRADETALLERETIIBB: TStringField
      FieldName = 'MUESTRADETALLERETIIBB'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 25
    end
    object CDSProveedorMUESTRATASARETIIBB: TFloatField
      FieldName = 'MUESTRATASARETIIBB'
      Origin = 'TASA'
      ProviderFlags = []
    end
    object CDSProveedorMUESTRAMINIMPONIRETIIBB: TFloatField
      FieldName = 'MUESTRAMINIMPONIRETIIBB'
      Origin = 'MINIMO_IMPONIBLE'
      ProviderFlags = []
    end
    object CDSProveedorRUBRO_GASTO: TStringField
      FieldName = 'RUBRO_GASTO'
      Origin = 'RUBRO_GASTO'
      Required = True
      Size = 3
    end
    object CDSProveedorSUB_RUB_GASTOS: TStringField
      FieldName = 'SUB_RUB_GASTOS'
      Origin = 'SUB_RUB_GASTOS'
      Required = True
      Size = 6
    end
    object CDSProveedorCON_OCOMPRA: TStringField
      FieldName = 'CON_OCOMPRA'
      Origin = 'CON_OCOMPRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSProveedorID_FACTURACTDODEFECTO: TIntegerField
      FieldName = 'ID_FACTURACTDODEFECTO'
      Origin = 'ID_FACTURACTDODEFECTO'
    end
    object CDSProveedorID_PERC_IBB_3: TIntegerField
      FieldName = 'ID_PERC_IBB_3'
      Origin = 'ID_PERC_IBB_3'
    end
    object CDSProveedorAUTORIZADO_NOMBRE: TStringField
      FieldName = 'AUTORIZADO_NOMBRE'
      Origin = 'AUTORIZADO_NOMBRE'
      Size = 25
    end
    object CDSProveedorAUTORIZADO_TIPODOC: TStringField
      FieldName = 'AUTORIZADO_TIPODOC'
      Origin = 'AUTORIZADO_TIPODOC'
      Size = 3
    end
    object CDSProveedorAUTORIZADO_NRODOC: TStringField
      FieldName = 'AUTORIZADO_NRODOC'
      Origin = 'AUTORIZADO_NRODOC'
      Size = 8
    end
    object CDSProveedorRETENCION_IVA: TStringField
      FieldName = 'RETENCION_IVA'
      Origin = 'RETENCION_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSProveedorCODIGO_RET_IVA: TIntegerField
      FieldName = 'CODIGO_RET_IVA'
      Origin = 'CODIGO_RET_IVA'
      Required = True
    end
    object CDSProveedorPORCENTAJE_RET_IVA: TSingleField
      FieldName = 'PORCENTAJE_RET_IVA'
      Origin = 'PORCENTAJE_RET_IVA'
      Required = True
      DisplayFormat = '0.00'
    end
    object CDSProveedorCBU: TStringField
      FieldName = 'CBU'
      Size = 22
    end
  end
  object DSCompras: TDataSource
    DataSet = CDSCompras
    Left = 736
    Top = 296
  end
  object DSDetalleCompras: TDataSource
    DataSet = CDSDetalleCompras
    Left = 736
    Top = 344
  end
  object DSDetallesTotales: TDataSource
    DataSet = CDSDetallesTotales
    Left = 736
    Top = 392
  end
  object CDSArticulosProveedor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'marca'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'marca'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SubRubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SubRubro'
        ParamType = ptInput
      end>
    ProviderName = 'DSPArticulosProveedor'
    AfterInsert = CDSArticulosProveedorAfterInsert
    BeforePost = CDSArticulosProveedorBeforePost
    OnCalcFields = CDSArticulosProveedorCalcFields
    OnNewRecord = CDSArticulosProveedorNewRecord
    Left = 624
    Top = 248
    object CDSArticulosProveedorCODIGO_PROVEEDOR: TStringField
      DisplayLabel = 'Codigo Prov.'
      FieldName = 'CODIGO_PROVEEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSArticulosProveedorCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnSetText = CDSArticulosProveedorCODIGO_STKSetText
      Size = 8
    end
    object CDSArticulosProveedorID_PROVEESTOCK: TIntegerField
      FieldName = 'ID_PROVEESTOCK'
      Required = True
    end
    object CDSArticulosProveedorCODIGO_FACTURACION: TStringField
      DisplayLabel = 'Cod.Factu.'
      FieldName = 'CODIGO_FACTURACION'
      Size = 15
    end
    object CDSArticulosProveedorCODIGO_INTERNO: TStringField
      DisplayLabel = 'Cod.Int'
      FieldName = 'CODIGO_INTERNO'
      Size = 15
    end
    object CDSArticulosProveedorCODIGO_REFERENCIA: TStringField
      DisplayLabel = 'Cod.Ref.'
      FieldName = 'CODIGO_REFERENCIA'
      Size = 15
    end
    object CDSArticulosProveedorULTIMA_COMPRA: TSQLTimeStampField
      DisplayLabel = 'Ult.Compra'
      FieldName = 'ULTIMA_COMPRA'
    end
    object CDSArticulosProveedorPORDEFECTO: TStringField
      DisplayLabel = 'x Def.'
      FieldName = 'PORDEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSArticulosProveedorCOSTO_NETO: TFloatField
      DisplayLabel = 'Costo'
      FieldName = 'COSTO_NETO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSArticulosProveedorRANKING: TIntegerField
      DisplayLabel = 'Rk'
      FieldName = 'RANKING'
      Required = True
    end
    object CDSArticulosProveedorMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      ProviderFlags = []
      Size = 4
    end
    object CDSArticulosProveedorDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object CDSArticulosProveedorRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      ProviderFlags = []
      Size = 3
    end
    object CDSArticulosProveedorSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      ProviderFlags = []
      Size = 5
    end
    object CDSArticulosProveedorRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSArticulosProveedorPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      ProviderFlags = []
    end
    object CDSArticulosProveedorPRESENTACION_UNIDAD: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      ProviderFlags = []
      Size = 3
    end
    object CDSArticulosProveedorUNIDAD: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'UNIDAD'
      ProviderFlags = []
      Size = 3
    end
    object CDSArticulosProveedorDESCRIPCION_MARCA: TStringField
      FieldName = 'DESCRIPCION_MARCA'
      ProviderFlags = []
      Size = 25
    end
    object CDSArticulosProveedorDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      ProviderFlags = []
      Size = 35
    end
    object CDSArticulosProveedorDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      Size = 45
    end
    object CDSArticulosProveedorCANTIDAD: TFloatField
      DisplayLabel = 'Existencia'
      FieldKind = fkCalculated
      FieldName = 'CANTIDAD'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Calculated = True
    end
  end
  object DSArticulosProveedor: TDataSource
    DataSet = CDSArticulosProveedor
    Left = 736
    Top = 248
  end
  object DSBuscaRubro: TDataSource
    DataSet = CDSBuscaRubro
    Left = 216
    Top = 496
  end
  object DSBuscaMarca: TDataSource
    DataSet = CDSBuscaMarca
    Left = 216
    Top = 592
  end
  object DSBuscaSubRubro: TDataSource
    DataSet = CDSBuscaSubRubro
    Left = 216
    Top = 544
  end
  object ibgIdProveeStock: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_PROVEESTOCK'
    SystemGenerators = False
    Left = 328
    Top = 256
  end
  object CDSCondCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCondCompra'
    BeforePost = CDSCondCompraBeforePost
    OnNewRecord = CDSCondCompraNewRecord
    OnPostError = CDSCondCompraPostError
    Left = 128
    Top = 64
    object CDSCondCompraCODIGOPAGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGOPAGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      OnSetText = CDSCondCompraCODIGOPAGOSetText
    end
    object CDSCondCompraCODIGOPROVEE: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGOPROVEE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 6
    end
    object CDSCondCompraDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSCondCompraDIAS: TIntegerField
      DisplayWidth = 10
      FieldName = 'DIAS'
      ProviderFlags = []
    end
    object CDSCondCompraDETALLE: TStringField
      DisplayWidth = 20
      FieldName = 'DETALLE'
      ProviderFlags = []
    end
    object CDSCondCompraDESCUENTO_FPAGO: TFloatField
      FieldName = 'DESCUENTO_FPAGO'
      ProviderFlags = []
    end
  end
  object CDSBuscaPercepIVA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaPercepIVA'
    Left = 128
    Top = 112
    object CDSBuscaPercepIVACODIGO: TIntegerField
      DisplayWidth = 5
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSBuscaPercepIVADESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
    end
  end
  object DSPBuscaPercepIVA: TDataSetProvider
    DataSet = DMBuscadores.QBuscaPercepIva
    Options = []
    Left = 32
    Top = 112
  end
  object CDSBuscaPercepIB: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaPercepIB'
    Left = 128
    Top = 160
    object CDSBuscaPercepIBCODIGO: TIntegerField
      DisplayWidth = 5
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSBuscaPercepIBDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
    end
    object CDSBuscaPercepIBCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Origin = 'COLUMNA'
      Visible = False
    end
    object CDSBuscaPercepIBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
      Origin = 'JURIDICION'
      Visible = False
    end
    object CDSBuscaPercepIBTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
      DisplayFormat = '0.00'
    end
    object CDSBuscaPercepIBMINIMOAPLICABLE: TFloatField
      FieldName = 'MINIMOAPLICABLE'
      Origin = 'MINIMOAPLICABLE'
      DisplayFormat = '0.00'
    end
  end
  object DSPBuscaPercepIB: TDataSetProvider
    DataSet = DMBuscadores.QBuscaPercepIB
    Options = []
    Left = 32
    Top = 160
  end
  object CDSBuscaInscripcion: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaInscripcion'
    Left = 128
    Top = 208
    object CDSBuscaInscripcionCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSBuscaInscripcionDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 15
    end
    object CDSBuscaInscripcionAPLICAPERCEPCIONIVA: TStringField
      FieldName = 'APLICAPERCEPCIONIVA'
      Size = 1
    end
    object CDSBuscaInscripcionAPLICAPERCEPCIONIIBB: TStringField
      FieldName = 'APLICAPERCEPCIONIIBB'
      Size = 1
    end
  end
  object DSPBuscaInscripcion: TDataSetProvider
    DataSet = DMBuscadores.QBuscaInscripcion
    Options = []
    Left = 32
    Top = 208
  end
  object QBuscarCuit: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo from poveedor where n_de_cuit=:cuit')
    Left = 480
    Top = 16
    ParamData = <
      item
        Name = 'cuit'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QLstProveedores: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select p.codigo,p.Nombre,p.Razon_social,p.direccion,i.detalle as' +
        ' MuestraInscripcion,p.n_de_cuit,p.cod_postal,p.localidad,p.telef' +
        'ono_1,p.telefono_2,p.correo,'
      'r.detalle as MuestraRubro,p.observaciones from poveedor p'
      'left join inscripcion i on i.codigo=p.condicion_iva'
      'left join Rubros_proveedores r on r.id=p.rubro '
      'order by p.nombre')
    Left = 304
    Top = 80
  end
  object CDSLstProveedores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPLstProveedores'
    Left = 480
    Top = 80
    object CDSLstProveedoresCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSLstProveedoresNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Required = True
      Size = 35
    end
    object CDSLstProveedoresRAZON_SOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSLstProveedoresDIRECCION: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSLstProveedoresMUESTRAINSCRIPCION: TStringField
      DisplayLabel = 'Inscripcion'
      FieldName = 'MUESTRAINSCRIPCION'
      Size = 15
    end
    object CDSLstProveedoresN_DE_CUIT: TStringField
      DisplayLabel = 'N.de Cuit'
      FieldName = 'N_DE_CUIT'
      Size = 13
    end
    object CDSLstProveedoresCOD_POSTAL: TStringField
      DisplayLabel = 'C.Postal'
      FieldName = 'COD_POSTAL'
      Size = 8
    end
    object CDSLstProveedoresLOCALIDAD: TStringField
      DisplayLabel = 'Localidad'
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSLstProveedoresTELEFONO_1: TStringField
      DisplayLabel = 'Telf.1'
      FieldName = 'TELEFONO_1'
      Size = 10
    end
    object CDSLstProveedoresTELEFONO_2: TStringField
      DisplayLabel = 'Telef.2'
      FieldName = 'TELEFONO_2'
      Size = 10
    end
    object CDSLstProveedoresMUESTRARUBRO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'MUESTRARUBRO'
      Size = 30
    end
    object CDSLstProveedoresOBSERVACIONES: TMemoField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Visible = False
      BlobType = ftMemo
      Size = 1
    end
    object CDSLstProveedoresCORREO: TStringField
      DisplayLabel = 'Correo'
      FieldName = 'CORREO'
      Size = 100
    end
  end
  object spMarcaProveeDefecto: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'MARCAR_PROVEESTOCK_DEFECTO'
    Left = 919
    Top = 443
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        Precision = 8
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end>
  end
  object QHayFacProvee: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select Max(id_fc) from FcCompCab where Codigo=:Codigo')
    Left = 392
    Top = 16
    ParamData = <
      item
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object QHayFacProveeMAX: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAX'
    end
  end
  object QHayMovCC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select max(m.id_movcccompra) from movcccompra m where m.proveedo' +
        'r=:codigo')
    Left = 313
    Top = 16
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object IntegerField4: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAX'
    end
  end
  object QTasaRetGanPorDefecto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo from TASAS_RET_GANANCIA'
      'where por_defecto='#39'S'#39)
    Left = 576
    Top = 16
    object QTasaRetGanPorDefectoCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
    end
  end
  object QZumaCompras: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select sum(Total) as total from OPERACIONES_POR_PROVEEDOR ( :cod' +
        'igo, :desde, :hasta, :grupo)')
    Left = 792
    Top = 16
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'grupo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QZumaComprasTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object QBuscaCodigo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo from poveedor where codigo=:codigo')
    Left = 688
    Top = 16
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object CDSRubrosProv: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaRubrosProv'
    Left = 128
    Top = 256
    object CDSRubrosProvID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSRubrosProvDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 30
    end
  end
  object DSPBuscaRubrosProv: TDataSetProvider
    DataSet = DMBuscadores.QBuscaRubrosProv
    Options = []
    Left = 32
    Top = 256
  end
  object DSBuscaCPostal: TDataSource
    DataSet = CDSBuscaCPostal
    Left = 216
    Top = 446
  end
  object CDSBuscaTasaRetIIBB: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaTasaRetIIBB'
    Left = 128
    Top = 352
    object CDSBuscaTasaRetIIBBID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Required = True
    end
    object CDSBuscaTasaRetIIBBDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 25
    end
    object CDSBuscaTasaRetIIBBTASA: TFloatField
      DisplayLabel = '%'
      FieldName = 'TASA'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSBuscaTasaRetIIBBMINIMO_IMPONIBLE: TFloatField
      DisplayLabel = 'Min.Imp'
      FieldName = 'MINIMO_IMPONIBLE'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
  end
  object DSPBuscaTasaRetIIBB: TDataSetProvider
    DataSet = DMBuscadores.QBuscaTasaRetIIBB
    Options = []
    Left = 32
    Top = 352
  end
  object CDSBuscaTasaRetGanacia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaTasaRetGanancia'
    Left = 128
    Top = 400
    object CDSBuscaTasaRetGanaciaCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSBuscaTasaRetGanaciaCONCEPTO: TStringField
      DisplayLabel = 'Concepto'
      FieldName = 'CONCEPTO'
      Size = 25
    end
    object CDSBuscaTasaRetGanaciaALICUOTA: TFloatField
      DisplayLabel = '%'
      FieldName = 'ALICUOTA'
    end
    object CDSBuscaTasaRetGanaciaMINIMO_NO_IMPONIBLE: TFloatField
      DisplayLabel = 'Min.Imponib'
      FieldName = 'MINIMO_NO_IMPONIBLE'
    end
    object CDSBuscaTasaRetGanaciaPOR_DEFECTO: TStringField
      DisplayLabel = 'X'
      FieldName = 'POR_DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaTasaRetGanaciaIMPUESTO_MINIMO: TFloatField
      DisplayLabel = 'Imp.Minim'
      FieldName = 'IMPUESTO_MINIMO'
    end
  end
  object DSPBuscaTasaRetGanancia: TDataSetProvider
    DataSet = DMBuscadores.QBuscaTasaRetGanancia
    Options = []
    Left = 32
    Top = 400
  end
  object QTraePrimerCondicionPago: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select min(codigo) from f_pago'
      'where codigo>0')
    Left = 744
    Top = 80
    object QTraePrimerCondicionPagoMIN: TIntegerField
      DisplayWidth = 10
      FieldName = 'MIN'
    end
  end
  object CDSBuscaCPostal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaCPostal'
    Left = 128
    Top = 448
    object CDSBuscaCPostalDETALLE_POSTAL: TStringField
      DisplayLabel = 'Localidad'
      DisplayWidth = 25
      FieldName = 'DETALLE_POSTAL'
      Origin = 'DETALLE_POSTAL'
      Size = 25
    end
    object CDSBuscaCPostalCODIGO_POSTAL: TStringField
      DisplayLabel = 'Cod.Postal'
      DisplayWidth = 8
      FieldName = 'CODIGO_POSTAL'
      Origin = 'CODIGO_POSTAL'
      Size = 8
    end
    object CDSBuscaCPostalID_POSTAL: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 5
      FieldName = 'ID_POSTAL'
      Origin = 'ID_POSTAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSBuscaCPostalTELEDISCADO: TStringField
      DisplayLabel = 'Tele.'
      FieldName = 'TELEDISCADO'
      Origin = 'TELEDISCADO'
      Visible = False
      Size = 6
    end
    object CDSBuscaCPostalPROVINCIA: TIntegerField
      DisplayLabel = 'Pcia'
      FieldName = 'PROVINCIA'
      Origin = 'PROVINCIA'
      Visible = False
    end
  end
  object DSPBuscaCPostal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCPostalFD
    Options = []
    Left = 32
    Top = 448
  end
  object QListaComprobantes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.id_comprobante,c.tipo_comprob,c.clase_comprob,'
      'c.denominacion,c.letra,c.sucursal,'
      's.detalle as MuestraSucursal from comprobantes c'
      'left join sucursal s on s.codigo = c.sucursal'
      'where (c.compra_venta='#39'C'#39') and'
      '(c.tipo_comprob='#39'FC'#39' )')
    Left = 423
    Top = 584
  end
  object CDSListaComprobantes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPListaComprobantes'
    Left = 624
    Top = 584
    object CDSListaComprobantesID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSListaComprobantesTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSListaComprobantesCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSListaComprobantesDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object CDSListaComprobantesLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSListaComprobantesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSListaComprobantesMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Size = 35
    end
  end
  object DSPListaComprobantes: TDataSetProvider
    DataSet = QListaComprobantes
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 528
    Top = 584
  end
  object QBorraInexistentes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'delete from proveestock ps where ps.codigo_stk not in (select s.' +
        'codigo_stk from stock s where s.codigo_stk=ps.codigo_stk)')
    Left = 936
    Top = 16
  end
  object QStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk,s.detalle_stk,s.marca_stk,s.rubro_stk,s.subr' +
        'ubro_stk,'
      
        'm.descripcion_marca,r.detalle_rubro,sr.detalle_subrubro,s.fijaci' +
        'on_precio_gravado from stock s'
      'left join marcas m on m.marca_stk=s.marca_stk'
      'left join rubros r on r.codigo_rubro=s.rubro_stk'
      'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      'where s.codigo_stk = :codigo')
    Left = 928
    Top = 112
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object QStockCODIGO_STK: TStringField
      DisplayWidth = 8
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object QStockDETALLE_STK: TStringField
      DisplayWidth = 45
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object QStockMARCA_STK: TStringField
      DisplayWidth = 4
      FieldName = 'MARCA_STK'
      Size = 4
    end
    object QStockRUBRO_STK: TStringField
      DisplayWidth = 3
      FieldName = 'RUBRO_STK'
      Size = 3
    end
    object QStockSUBRUBRO_STK: TStringField
      DisplayWidth = 5
      FieldName = 'SUBRUBRO_STK'
      Size = 5
    end
    object QStockDESCRIPCION_MARCA: TStringField
      DisplayWidth = 25
      FieldName = 'DESCRIPCION_MARCA'
      Size = 25
    end
    object QStockDETALLE_RUBRO: TStringField
      DisplayWidth = 35
      FieldName = 'DETALLE_RUBRO'
      Size = 35
    end
    object QStockDETALLE_SUBRUBRO: TStringField
      DisplayWidth = 45
      FieldName = 'DETALLE_SUBRUBRO'
      Size = 45
    end
    object QStockFIJACION_PRECIO_GRAVADO: TFloatField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Origin = 'FIJACION_PRECIO_GRAVADO'
      Required = True
    end
  end
  object CDSBuscaRubro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaRubro'
    Left = 128
    Top = 496
    object CDSBuscaRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CDSBuscaRubroDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
  end
  object DSPBuscaRubro: TDataSetProvider
    DataSet = DMBuscadores.QBuscaRubroFD
    Options = []
    Left = 32
    Top = 496
  end
  object CDSBuscaSubRubro: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaSubRubro'
    Left = 128
    Top = 544
    object CDSBuscaSubRubroCODIGO_SUBRUBRO: TStringField
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object CDSBuscaSubRubroDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Required = True
      Size = 45
    end
    object CDSBuscaSubRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
  end
  object DSPBuscaSubRubro: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSubRubroFD
    Options = []
    Left = 32
    Top = 544
  end
  object CDSBuscaMarca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaMarca'
    Left = 128
    Top = 592
    object CDSBuscaMarcaMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Required = True
      Size = 4
    end
    object CDSBuscaMarcaDESCRIPCION_MARCA: TStringField
      FieldName = 'DESCRIPCION_MARCA'
      Size = 25
    end
    object CDSBuscaMarcaOBSERVACION_MARCA: TStringField
      FieldName = 'OBSERVACION_MARCA'
      Size = 40
    end
  end
  object DSPBuscaMarca: TDataSetProvider
    DataSet = DMBuscadores.QBuscaMarca
    Options = []
    Left = 32
    Top = 592
  end
  object DSBuscaInscripcion: TDataSource
    DataSet = CDSBuscaInscripcion
    Left = 216
    Top = 208
  end
  object CDSCompras: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ANIO'
        DataType = ftInteger
      end
      item
        Name = 'MES'
        DataType = ftInteger
      end
      item
        Name = 'TOTAL'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
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
        Name = 'grupo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCompras'
    StoreDefs = True
    AfterScroll = CDSComprasAfterScroll
    OnCalcFields = CDSComprasCalcFields
    Left = 624
    Top = 296
    object CDSComprasANIO: TIntegerField
      FieldName = 'ANIO'
    end
    object CDSComprasMES: TIntegerField
      FieldName = 'MES'
    end
    object CDSComprasTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00'
    end
    object CDSComprasCAL_INCIDENCIA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CAL_INCIDENCIA'
      DisplayFormat = ',0.00'
      Calculated = True
    end
  end
  object DSPCompras: TDataSetProvider
    DataSet = QCompras
    Options = []
    Left = 528
    Top = 296
  end
  object QCompras: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from OPERACIONES_POR_PROVEEDOR ( :codigo , :desde , :ha' +
        'sta, :grupo )')
    Left = 423
    Top = 304
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'grupo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QDetalleCompras: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select fd.tipocpbte,'
      '       extract(year from fd.fechacompra) as anio,'
      '       extract(month from fd.fechacompra) as mes,'
      '       fd.codigoarticulo,fd.detalle,'
      '       sum(fd.cantidad) as Cant,'
      ' sum(fd.total) as Total from  fccompdet fd'
      'left join fccompcab fc on fc.id_fc=fd.id_cabfac'
      
        'where fd.fechacompra between :desde and :hasta and fc.codigo = :' +
        'codigo'
      
        'group by fd.tipocpbte, fd.fechacompra, fd.codigoarticulo,fd.deta' +
        'lle'
      'ORDER BY fd.fechacompra asc ,fd.tipocpbte, 7 desc')
    Left = 423
    Top = 352
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
      end
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object CDSDetalleCompras: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'TIPOCPBTE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ANIO'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'MES'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'CODIGOARTICULO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'DETALLE'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'CANT'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'TOTAL'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end>
    IndexDefs = <>
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
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDetalleCompras'
    StoreDefs = True
    OnCalcFields = CDSDetalleComprasCalcFields
    Left = 624
    Top = 344
    object CDSDetalleComprasTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSDetalleComprasANIO: TSmallintField
      FieldName = 'ANIO'
      Required = True
    end
    object CDSDetalleComprasMES: TSmallintField
      FieldName = 'MES'
      Required = True
    end
    object CDSDetalleComprasCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object CDSDetalleComprasDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSDetalleComprasCANT: TFloatField
      FieldName = 'CANT'
      DisplayFormat = ',0.00'
    end
    object CDSDetalleComprasTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00'
    end
    object CDSDetalleComprasCAL_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CAL_TOTAL'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object CDSDetalleComprasCAL_PROMEDIO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CAL_PROMEDIO'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object CDSDetalleComprasCAL_CANTIDAD: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CAL_CANTIDAD'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object CDSDetalleComprasCAL_INCIDENCIA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CAL_INCIDENCIA'
      DisplayFormat = ',0.00'
      Calculated = True
    end
  end
  object DSPDetalleCompras: TDataSetProvider
    DataSet = QDetalleCompras
    Options = []
    Left = 528
    Top = 344
  end
  object CDSDetallesTotales: TClientDataSet
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
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDetallesTotales'
    OnCalcFields = CDSDetallesTotalesCalcFields
    Left = 624
    Top = 392
    object CDSDetallesTotalesTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSDetallesTotalesCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object CDSDetallesTotalesDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSDetallesTotalesCANT: TFloatField
      FieldName = 'CANT'
      DisplayFormat = '###,###,###,##0.00'
    end
    object CDSDetallesTotalesTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,###,##0.00'
    end
    object CDSDetallesTotalesCAL_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CAL_TOTAL'
      DisplayFormat = '###,###,###,##0.00'
      Calculated = True
    end
    object CDSDetallesTotalesCAL_INCIDENCIA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CAL_INCIDENCIA'
      DisplayFormat = '###,###,###,##0.00'
      Calculated = True
    end
    object CDSDetallesTotalesCAL_CANT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CAL_CANT'
      DisplayFormat = '###,###,###,##0.00'
      Calculated = True
    end
    object CDSDetallesTotalesCAL_PROMEDIO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CAL_PROMEDIO'
      DisplayFormat = '###,###,###,##0.00'
      Calculated = True
    end
  end
  object DSPDetallesTotales: TDataSetProvider
    DataSet = QDetallesTotales
    Options = []
    Left = 528
    Top = 392
  end
  object QDetallesTotales: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select fd.tipocpbte,'
      '       fd.codigoarticulo,fd.detalle,'
      '       sum(fd.cantidad) as Cant,'
      ' sum(fd.total) as Total from  fccompdet fd'
      'left join fccompcab fc on fc.id_fc=fd.id_cabfac'
      
        'where fd.fechacompra between :desde and :hasta and fc.codigo = :' +
        'codigo'
      'group by fd.tipocpbte, fd.codigoarticulo,fd.detalle'
      'ORDER BY 5 desc')
    Left = 423
    Top = 400
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
      end
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object CDSPostal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPostal'
    Left = 128
    Top = 304
    object CDSPostalID_POSTAL: TIntegerField
      FieldName = 'ID_POSTAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPostalCODIGO_POSTAL: TStringField
      FieldName = 'CODIGO_POSTAL'
      Required = True
      Size = 8
    end
    object CDSPostalDETALLE_POSTAL: TStringField
      FieldName = 'DETALLE_POSTAL'
      Required = True
      Size = 25
    end
    object CDSPostalTELEDISCADO: TStringField
      FieldName = 'TELEDISCADO'
      Size = 6
    end
    object CDSPostalPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
    end
  end
  object DSPPostal: TDataSetProvider
    DataSet = DMMain_FD.QPostal
    Options = []
    Left = 32
    Top = 304
  end
  object CDSTasaPercepIVA: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPTasaPercepIVA'
    Left = 624
    Top = 488
    object CDSTasaPercepIVACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSTasaPercepIVADESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
    object CDSTasaPercepIVATASA: TFloatField
      FieldName = 'TASA'
    end
    object CDSTasaPercepIVAMINIMOAPLICABLE: TFloatField
      FieldName = 'MINIMOAPLICABLE'
    end
    object CDSTasaPercepIVACOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
    end
    object CDSTasaPercepIVACODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
    end
  end
  object DSPTasaPercepIVA: TDataSetProvider
    DataSet = DMMain_FD.QTasaPercepcioIva
    Options = []
    Left = 528
    Top = 488
  end
  object CDSTasaPercepIIBB: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPTasaPercepIIBB'
    Left = 624
    Top = 440
    object CDSTasaPercepIIBBCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSTasaPercepIIBBDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
    object CDSTasaPercepIIBBTASA: TFloatField
      FieldName = 'TASA'
    end
    object CDSTasaPercepIIBBMINIMOAPLICABLE: TFloatField
      FieldName = 'MINIMOAPLICABLE'
    end
    object CDSTasaPercepIIBBCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
    end
    object CDSTasaPercepIIBBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
    end
  end
  object DSPTasaPercepIIBB: TDataSetProvider
    DataSet = DMMain_FD.QTasaPercepcioIB
    Options = []
    Left = 528
    Top = 440
  end
  object CDSFPago: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFPago'
    Left = 624
    Top = 536
    object CDSFPagoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSFPagoDETALLE: TStringField
      FieldName = 'DETALLE'
      Required = True
    end
    object CDSFPagoDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object CDSFPagoDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
  end
  object DSPFPago: TDataSetProvider
    DataSet = DMMain_FD.QFPago
    Options = []
    Left = 528
    Top = 536
  end
  object DSCondCompra: TDataSource
    DataSet = CDSCondCompra
    Left = 216
    Top = 64
  end
  object QArtiProv: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select ps.codigo_proveedor,ps.codigo_stk,ps.id_proveestock,ps.co' +
        'digo_facturacion,ps.codigo_interno,'
      '       ps.codigo_referencia,ps.ultima_compra,ps.pordefecto,'
      '       ps.costo_neto,ps.ranking,'
      
        '       s.marca_stk,s.detalle_stk,s.rubro_stk,s.subrubro_stk,p.ra' +
        'zon_social,'
      '       s.presentacion_cantidad,s.presentacion_unidad,s.unidad,'
      
        '       m.descripcion_marca,r.detalle_rubro,sr.detalle_subrubro f' +
        'rom proveestock ps'
      'left join stock s on s.codigo_stk=ps.codigo_stk'
      'left join poveedor p on p.codigo=ps.codigo_proveedor'
      'left join marcas m on m.marca_stk=s.marca_stk'
      'left join rubros r on r.codigo_rubro=s.rubro_stk'
      'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      'where (ps.codigo_proveedor = :codigo) and'
      '      (s.marca_stk = :marca or :Marca = '#39'****'#39' ) and'
      '      (s.rubro_stk = :rubro or :Rubro = '#39'***'#39' ) and'
      '      (s.subrubro_stk = :SubRubro or :SubRubro = '#39'*****'#39' )'
      'order by s.detalle_stk')
    Left = 423
    Top = 248
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'marca'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'SubRubro'
        DataType = ftString
        ParamType = ptInput
      end>
    object QArtiProvCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QArtiProvCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QArtiProvID_PROVEESTOCK: TIntegerField
      FieldName = 'ID_PROVEESTOCK'
      Required = True
    end
    object QArtiProvCODIGO_FACTURACION: TStringField
      FieldName = 'CODIGO_FACTURACION'
      Size = 15
    end
    object QArtiProvCODIGO_INTERNO: TStringField
      FieldName = 'CODIGO_INTERNO'
      Size = 15
    end
    object QArtiProvCODIGO_REFERENCIA: TStringField
      FieldName = 'CODIGO_REFERENCIA'
      Size = 15
    end
    object QArtiProvULTIMA_COMPRA: TSQLTimeStampField
      FieldName = 'ULTIMA_COMPRA'
    end
    object QArtiProvPORDEFECTO: TStringField
      FieldName = 'PORDEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QArtiProvCOSTO_NETO: TFloatField
      FieldName = 'COSTO_NETO'
    end
    object QArtiProvRANKING: TIntegerField
      FieldName = 'RANKING'
      Required = True
    end
    object QArtiProvMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      ProviderFlags = []
      Size = 4
    end
    object QArtiProvDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object QArtiProvRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      ProviderFlags = []
      Size = 3
    end
    object QArtiProvSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      ProviderFlags = []
      Size = 5
    end
    object QArtiProvRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      ProviderFlags = []
      Size = 35
    end
    object QArtiProvPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      ProviderFlags = []
    end
    object QArtiProvPRESENTACION_UNIDAD: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      ProviderFlags = []
      Size = 3
    end
    object QArtiProvUNIDAD: TStringField
      FieldName = 'UNIDAD'
      ProviderFlags = []
      Size = 3
    end
    object QArtiProvDESCRIPCION_MARCA: TStringField
      FieldName = 'DESCRIPCION_MARCA'
      ProviderFlags = []
      Size = 25
    end
    object QArtiProvDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      ProviderFlags = []
      Size = 35
    end
    object QArtiProvDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      Size = 45
    end
  end
  object DSPArticulosProveedor: TDataSetProvider
    DataSet = QArtiProv
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 528
    Top = 248
  end
  object CopiaQArtiProv: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select ps.id_proveestock,ps.codigo_stk,ps.codigo_facturacion,ps.' +
        'codigo_interno,'
      
        '       ps.codigo_referencia,ps.ultima_compra,ps.pordefecto, ps.c' +
        'odigo_proveedor,'
      '       ps.costo_neto,ps.ranking,'
      
        '       s.marca_stk,s.detalle_stk,s.rubro_stk,s.subrubro_stk,p.ra' +
        'zon_social,'
      '       s.presentacion_cantidad,s.presentacion_unidad,s.unidad,'
      '       m.descripcion_marca,r.detalle_rubro,sr.detalle_subrubro,'
      
        '       (select sum(dp.fisico) from depositostk dp where dp.codig' +
        'o_stk=ps.codigo_stk) as Cantidad'
      ' from proveestock ps'
      'left join stock s on s.codigo_stk=ps.codigo_stk'
      'left join poveedor p on p.codigo=ps.codigo_proveedor'
      'left join marcas m on m.marca_stk=s.marca_stk'
      'left join rubros r on r.codigo_rubro=s.rubro_stk'
      'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      'where (ps.codigo_proveedor=:codigo) and '
      '           ((s.rubro_stk = :rubro or :rubro = '#39'***'#39') and'
      
        '            (s.subrubro_stk = :subrubro or :subrubro = '#39'*****'#39' )' +
        ' and '
      '            ( s.marca_stk = :marca or :marca = '#39'****'#39' ))')
    Left = 423
    Top = 464
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'subrubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'subrubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'marca'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'marca'
        DataType = ftString
        ParamType = ptInput
      end>
    object StringField1: TStringField
      FieldName = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object StringField2: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object IntegerField1: TIntegerField
      FieldName = 'ID_PROVEESTOCK'
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'CODIGO_FACTURACION'
      Size = 15
    end
    object StringField4: TStringField
      FieldName = 'CODIGO_INTERNO'
      Size = 15
    end
    object StringField5: TStringField
      FieldName = 'CODIGO_REFERENCIA'
      Size = 15
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'ULTIMA_COMPRA'
    end
    object StringField6: TStringField
      FieldName = 'PORDEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FMTBCDField1: TFloatField
      FieldName = 'COSTO_NETO'
    end
    object IntegerField2: TIntegerField
      FieldName = 'RANKING'
      Required = True
    end
    object StringField7: TStringField
      FieldName = 'MARCA_STK'
      ProviderFlags = []
      Size = 4
    end
    object StringField8: TStringField
      FieldName = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object StringField9: TStringField
      FieldName = 'RUBRO_STK'
      ProviderFlags = []
      Size = 3
    end
    object StringField10: TStringField
      FieldName = 'SUBRUBRO_STK'
      ProviderFlags = []
      Size = 5
    end
    object StringField11: TStringField
      FieldName = 'RAZON_SOCIAL'
      ProviderFlags = []
      Size = 35
    end
    object FMTBCDField2: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      ProviderFlags = []
    end
    object StringField12: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      ProviderFlags = []
      Size = 3
    end
    object StringField13: TStringField
      FieldName = 'UNIDAD'
      ProviderFlags = []
      Size = 3
    end
    object StringField14: TStringField
      FieldName = 'DESCRIPCION_MARCA'
      ProviderFlags = []
      Size = 25
    end
    object StringField15: TStringField
      FieldName = 'DETALLE_RUBRO'
      ProviderFlags = []
      Size = 35
    end
    object StringField16: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      Size = 45
    end
    object FMTBCDField3: TFloatField
      FieldName = 'CANTIDAD'
      ProviderFlags = []
    end
  end
  object QStockFisico: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select sum(dp.fisico) from depositostk dp '
      'left join depositos d on d.id=dp.codigo_deposito'
      'where dp.codigo_stk= :codigo and d.centraliza_stock='#39'S'#39)
    Left = 896
    Top = 248
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object DSRubros: TDataSource
    DataSet = CDSRubros
    Left = 824
    Top = 128
  end
  object DSCuentas: TDataSource
    DataSet = CDSCuentas
    Left = 824
    Top = 184
  end
  object CDSCuentas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Rubro'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCuentas'
    Left = 744
    Top = 184
    object CDSCuentasCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSCuentasCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CDSCuentasDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
    object CDSCuentasEXCLUYE: TStringField
      FieldName = 'EXCLUYE'
      Origin = 'EXCLUYE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object CDSRubros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRubros'
    Left = 736
    Top = 128
    object CDSRubrosCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 3
    end
    object CDSRubrosDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 50
    end
  end
  object DSPRubros: TDataSetProvider
    DataSet = QRub
    Options = []
    Left = 680
    Top = 128
  end
  object DSPCuentas: TDataSetProvider
    DataSet = QCta
    Options = []
    Left = 680
    Top = 184
  end
  object QCta: TFDQuery
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
      end
      item
        SourceDataType = dtWideString
        TargetDataType = dtAnsiString
      end>
    SQL.Strings = (
      'select * from gastos_cuentas '
      'where codigo_rubro = :Rubro'
      'order by detalle')
    Left = 616
    Top = 184
    ParamData = <
      item
        Position = 1
        Name = 'Rubro'
        DataType = ftWideString
        ParamType = ptInput
      end>
  end
  object QRub: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from gastos_rubros'
      'order by detalle')
    Left = 616
    Top = 128
  end
  object QActualizaCuitFc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update fccompcab f set f.cuit=(select p.n_de_cuit from poveedor ' +
        'p where p.codigo= :codigo)'
      'where f.codigo = :codigo')
    Left = 952
    Top = 352
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QListaCompCtdo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.id_comprobante,c.tipo_comprob,c.clase_comprob,'
      'c.denominacion,c.letra,c.sucursal,'
      's.detalle as MuestraSucursal from comprobantes c'
      'left join sucursal s on s.codigo=c.sucursal'
      'where (c.compra_venta='#39'C'#39') and'
      '(c.tipo_comprob='#39'FO'#39' )')
    Left = 423
    Top = 632
  end
  object DSPListaCompCtdo: TDataSetProvider
    DataSet = QListaCompCtdo
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 528
    Top = 632
  end
  object CDSListaCompCtdo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPListaCompCtdo'
    Left = 624
    Top = 632
    object CDSListaCompCtdoID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSListaCompCtdoTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSListaCompCtdoCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object CDSListaCompCtdoDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object CDSListaCompCtdoLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSListaCompCtdoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSListaCompCtdoMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Size = 35
    end
  end
  object DSListaCompCtdo: TDataSource
    DataSet = CDSListaCompCtdo
    Left = 760
    Top = 632
  end
  object QBuscaReg: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from REGIMENRETENCIONIVA order by detalle')
    Left = 423
    Top = 688
  end
  object DSPBuscaRegimen: TDataSetProvider
    DataSet = QBuscaReg
    Options = []
    Left = 528
    Top = 688
  end
  object CDSBuscaRegimen: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaRegimen'
    Left = 624
    Top = 688
    object CDSBuscaRegimenCODIGO: TIntegerField
      DisplayWidth = 3
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSBuscaRegimenDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 300
    end
    object CDSBuscaRegimenCOD_IMPUESTO: TIntegerField
      FieldName = 'COD_IMPUESTO'
      Origin = 'COD_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object spSincronizaListaPrecios: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'SINCRONIZA_PROVEESTOCK_LISTAPRO'
    Left = 968
    Top = 552
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
  end
  object QMarcaProveedor: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select p.*,m.descripcion_marca from proveedor_marcas p'
      'left join marcas m on m.marca_stk = p.marka'
      'where p.codigo=:codigo'
      '  ')
    Left = 31
    Top = 648
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QMarcaProveedorCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QMarcaProveedorMARKA: TStringField
      FieldName = 'MARKA'
      Origin = 'MARKA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object QMarcaProveedorDESCRIPCION_MARCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPCION_MARCA'
      Origin = 'DESCRIPCION_MARCA'
      ProviderFlags = []
      Required = True
      Size = 25
    end
  end
  object DSPMarcaProveedor: TDataSetProvider
    DataSet = QMarcaProveedor
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 648
  end
  object CDSMarcaProveedor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 6
      end>
    ProviderName = 'DSPMarcaProveedor'
    AfterInsert = CDSMarcaProveedorAfterInsert
    OnNewRecord = CDSMarcaProveedorNewRecord
    Left = 216
    Top = 648
    object CDSMarcaProveedorCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSMarcaProveedorMARKA: TStringField
      DisplayLabel = 'Cod.Marca'
      FieldName = 'MARKA'
      Origin = 'MARKA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnSetText = CDSMarcaProveedorMARKASetText
      Size = 4
    end
    object CDSMarcaProveedorDESCRIPCION_MARCA: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DESCRIPCION_MARCA'
      Origin = 'DESCRIPCION_MARCA'
      ProviderFlags = []
      Size = 25
    end
  end
  object DSMarcaProveedor: TDataSource
    DataSet = CDSMarcaProveedor
    Left = 304
    Top = 648
  end
end
