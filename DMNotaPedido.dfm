object DatosOrdenCompra: TDatosOrdenCompra
  OldCreateOrder = False
  Left = 163
  Top = 56
  Height = 719
  Width = 918
  object wwDSCondCompra: TwwDataSource
    DataSet = wwCDSCondCompra
    Left = 28
    Top = 158
  end
  object wwDSProveedor: TwwDataSource
    DataSet = wwCDSProveedor
    Left = 288
    Top = 8
  end
  object wwDSOrdenCompraDet: TwwDataSource
    DataSet = wwCDSOrdenCompraDet
    Left = 28
    Top = 58
  end
  object wwCDSOrdenCompraCab: TwwClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'TipoCpbte'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPOrdenCompraCab'
    ValidateWithMask = True
    Left = 168
    Top = 8
    object wwCDSOrdenCompraCabID_OC: TIntegerField
      FieldName = 'ID_OC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object wwCDSOrdenCompraCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object wwCDSOrdenCompraCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object wwCDSOrdenCompraCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object wwCDSOrdenCompraCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object wwCDSOrdenCompraCabLETRA: TStringField
      FieldName = 'LETRA'
      Size = 1
    end
    object wwCDSOrdenCompraCabSUC: TStringField
      FieldName = 'SUC'
      Size = 4
    end
    object wwCDSOrdenCompraCabNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object wwCDSOrdenCompraCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object wwCDSOrdenCompraCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object wwCDSOrdenCompraCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object wwCDSOrdenCompraCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object wwCDSOrdenCompraCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object wwCDSOrdenCompraCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object wwCDSOrdenCompraCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object wwCDSOrdenCompraCabFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object wwCDSOrdenCompraCabFECHAVTO: TDateTimeField
      FieldName = 'FECHAVTO'
    end
    object wwCDSOrdenCompraCabCONDICIONCOMPRA: TIntegerField
      FieldName = 'CONDICIONCOMPRA'
    end
    object wwCDSOrdenCompraCabANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object wwCDSOrdenCompraCabN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
    end
    object wwCDSOrdenCompraCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
    end
    object wwCDSOrdenCompraCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
    end
    object wwCDSOrdenCompraCabDSTO: TFloatField
      FieldName = 'DSTO'
    end
    object wwCDSOrdenCompraCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
    end
    object wwCDSOrdenCompraCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
    end
    object wwCDSOrdenCompraCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
    end
    object wwCDSOrdenCompraCabIMPORTEEXCLUIDO1: TFloatField
      FieldName = 'IMPORTEEXCLUIDO1'
    end
    object wwCDSOrdenCompraCabIMPORTEEXCLUIDO2: TFloatField
      FieldName = 'IMPORTEEXCLUIDO2'
    end
    object wwCDSOrdenCompraCabNETOMONOTRIBUTO1: TFloatField
      FieldName = 'NETOMONOTRIBUTO1'
    end
    object wwCDSOrdenCompraCabNETOMONOTRIBUTO2: TFloatField
      FieldName = 'NETOMONOTRIBUTO2'
    end
    object wwCDSOrdenCompraCabTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object wwCDSOrdenCompraCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object wwCDSOrdenCompraCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object wwCDSOrdenCompraCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object wwCDSOrdenCompraCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object wwCDSOrdenCompraCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Size = 1
    end
    object wwCDSOrdenCompraCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object wwCDSOrdenCompraCabESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 1
    end
    object wwCDSOrdenCompraCabAUTORIZO: TStringField
      FieldName = 'AUTORIZO'
      Size = 50
    end
    object wwCDSOrdenCompraCabFECHAAUTORIZACION: TDateTimeField
      FieldName = 'FECHAAUTORIZACION'
    end
    object wwCDSOrdenCompraCabFECHAEFECTIVIZACION: TDateTimeField
      FieldName = 'FECHAEFECTIVIZACION'
    end
    object wwCDSOrdenCompraCabFECHACUMPLIDA: TDateTimeField
      FieldName = 'FECHACUMPLIDA'
    end
    object wwCDSOrdenCompraCabMUESTRACONDCOMPRA: TStringField
      FieldName = 'MUESTRACONDCOMPRA'
      ProviderFlags = []
    end
    object wwCDSOrdenCompraCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
    object wwCDSOrdenCompraCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object wwCDSOrdenCompraCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object wwCDSOrdenCompraCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
    end
    object wwCDSOrdenCompraCabOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
  end
  object DSPOrdenCompraCab: TDataSetProvider
    DataSet = DMMain.wwQOrdeCompraCab
    Constraints = True
    Left = 76
    Top = 8
  end
  object DSPOrdenCompraDet: TDataSetProvider
    DataSet = DMMain.wwQOrdenCompraDet
    Constraints = True
    Left = 108
    Top = 58
  end
  object DSPProveedor: TDataSetProvider
    DataSet = DMMain.wwQProveedores
    Constraints = True
    Left = 372
    Top = 8
  end
  object wwCDSOrdenCompraDet: TwwClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPOrdenCompraDet'
    ValidateWithMask = True
    Left = 192
    Top = 58
    object wwCDSOrdenCompraDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object wwCDSOrdenCompraDetID_CABOC: TIntegerField
      FieldName = 'ID_CABOC'
    end
    object wwCDSOrdenCompraDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object wwCDSOrdenCompraDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object wwCDSOrdenCompraDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object wwCDSOrdenCompraDetRENGLON: TFloatField
      FieldName = 'RENGLON'
    end
    object wwCDSOrdenCompraDetFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object wwCDSOrdenCompraDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object wwCDSOrdenCompraDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object wwCDSOrdenCompraDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object wwCDSOrdenCompraDetCANTIDADPEDIDA: TFloatField
      FieldName = 'CANTIDADPEDIDA'
    end
    object wwCDSOrdenCompraDetCANTIDADAUTORIZADA: TFloatField
      FieldName = 'CANTIDADAUTORIZADA'
    end
    object wwCDSOrdenCompraDetCANTIDADRECIBIDA: TFloatField
      FieldName = 'CANTIDADRECIBIDA'
    end
    object wwCDSOrdenCompraDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
    end
    object wwCDSOrdenCompraDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
    end
    object wwCDSOrdenCompraDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
    end
    object wwCDSOrdenCompraDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Size = 1
    end
    object wwCDSOrdenCompraDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
    end
    object wwCDSOrdenCompraDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
    end
    object wwCDSOrdenCompraDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
    end
    object wwCDSOrdenCompraDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
    end
    object wwCDSOrdenCompraDetSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object wwCDSOrdenCompraDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object wwCDSOrdenCompraDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object wwCDSOrdenCompraDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
    end
    object wwCDSOrdenCompraDetTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object wwCDSProveedor: TwwClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPProveedor'
    ValidateWithMask = True
    Left = 456
    Top = 8
    object wwCDSProveedorCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object wwCDSProveedorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object wwCDSProveedorRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object wwCDSProveedorN_DE_CUENTA: TStringField
      FieldName = 'N_DE_CUENTA'
      Size = 14
    end
    object wwCDSProveedorID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
    end
    object wwCDSProveedorCOD_POSTAL: TStringField
      FieldName = 'COD_POSTAL'
      Size = 8
    end
    object wwCDSProveedorLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object wwCDSProveedorDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object wwCDSProveedorTELEFONO_1: TStringField
      FieldName = 'TELEFONO_1'
      Size = 10
    end
    object wwCDSProveedorTELEFONO_2: TStringField
      FieldName = 'TELEFONO_2'
      Size = 10
    end
    object wwCDSProveedorCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
    end
    object wwCDSProveedorN_DE_CUIT: TStringField
      FieldName = 'N_DE_CUIT'
      Size = 13
    end
    object wwCDSProveedorACTIVO: TStringField
      FieldName = 'ACTIVO'
      Size = 1
    end
    object wwCDSProveedorRETIENE_IVA: TStringField
      FieldName = 'RETIENE_IVA'
      Size = 1
    end
    object wwCDSProveedorRETIENE_IB: TStringField
      FieldName = 'RETIENE_IB'
      Size = 1
    end
    object wwCDSProveedorRETIENE_GANANCIAS: TStringField
      FieldName = 'RETIENE_GANANCIAS'
      Size = 1
    end
    object wwCDSProveedorIVA_SERVICIOS: TStringField
      FieldName = 'IVA_SERVICIOS'
      Size = 1
    end
    object wwCDSProveedorPRECIOS_CON_IVA: TStringField
      FieldName = 'PRECIOS_CON_IVA'
      Size = 1
    end
    object wwCDSProveedorOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object wwCDSProveedorNOMBRE_REPRESENTANTE: TStringField
      FieldName = 'NOMBRE_REPRESENTANTE'
      Size = 35
    end
    object wwCDSProveedorDIRECCION_REPRESENTANTE: TStringField
      FieldName = 'DIRECCION_REPRESENTANTE'
      Size = 35
    end
    object wwCDSProveedorTELEFONO_REPRESENTANTE: TStringField
      FieldName = 'TELEFONO_REPRESENTANTE'
      Size = 25
    end
    object wwCDSProveedorTIPO_PROVEEDOR: TStringField
      FieldName = 'TIPO_PROVEEDOR'
      Size = 1
    end
    object wwCDSProveedorFECHAULTIMACOMPRA: TDateTimeField
      FieldName = 'FECHAULTIMACOMPRA'
    end
    object wwCDSProveedorFECHAALTA: TDateTimeField
      FieldName = 'FECHAALTA'
    end
    object wwCDSProveedorSALDO_INICIAL: TFloatField
      FieldName = 'SALDO_INICIAL'
    end
    object wwCDSProveedorID_PERC_IVA: TIntegerField
      FieldName = 'ID_PERC_IVA'
    end
    object wwCDSProveedorID_PERC_IBB: TIntegerField
      FieldName = 'ID_PERC_IBB'
    end
    object wwCDSProveedorTELEDISCADO: TStringField
      FieldName = 'TELEDISCADO'
      Size = 6
    end
    object wwCDSProveedorDESPERIVA: TStringField
      FieldName = 'DESPERIVA'
    end
    object wwCDSProveedorDESPERIB: TStringField
      FieldName = 'DESPERIB'
    end
  end
  object wwCDSCondCompra: TwwClientDataSet
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
    ProviderName = 'DSPCondCompra'
    ValidateWithMask = True
    Left = 192
    Top = 158
    object wwCDSCondCompraCODIGOPROVEE: TStringField
      FieldName = 'CODIGOPROVEE'
      Size = 6
    end
    object wwCDSCondCompraCODIGOPAGO: TIntegerField
      FieldName = 'CODIGOPAGO'
    end
    object wwCDSCondCompraDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object wwCDSCondCompraDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object wwCDSCondCompraDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object wwCDSCondCompraDESCUENTO_FPAGO: TFloatField
      FieldName = 'DESCUENTO_FPAGO'
    end
  end
  object wwCDSStock: TwwClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPStock'
    ValidateWithMask = True
    Left = 192
    Top = 110
    object wwCDSStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object wwCDSStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object wwCDSStockCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Size = 13
    end
    object wwCDSStockRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Size = 3
    end
    object wwCDSStockSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Size = 5
    end
    object wwCDSStockMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Size = 4
    end
    object wwCDSStockTASA_IVA: TIntegerField
      FieldName = 'TASA_IVA'
    end
    object wwCDSStockSOBRETASA_IVA: TIntegerField
      FieldName = 'SOBRETASA_IVA'
    end
    object wwCDSStockCOSTO_EXENTO_STK: TFloatField
      FieldName = 'COSTO_EXENTO_STK'
    end
    object wwCDSStockCOSTO_GRAVADO_STK: TFloatField
      FieldName = 'COSTO_GRAVADO_STK'
    end
    object wwCDSStockCOSTO_TOTAL_STK: TFloatField
      FieldName = 'COSTO_TOTAL_STK'
    end
    object wwCDSStockREEMPLAZO_STK: TStringField
      FieldName = 'REEMPLAZO_STK'
      Size = 8
    end
    object wwCDSStockFIJACION_PRECIO_GRAVADO: TFloatField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
    end
    object wwCDSStockFIJACION_PRECIO_EXENTO: TFloatField
      FieldName = 'FIJACION_PRECIO_EXENTO'
    end
    object wwCDSStockFIJACION_PRECIO_TOTAL: TFloatField
      FieldName = 'FIJACION_PRECIO_TOTAL'
    end
    object wwCDSStockFUAP: TDateTimeField
      FieldName = 'FUAP'
    end
    object wwCDSStockUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object wwCDSStockCONTROLASTOCK: TStringField
      FieldName = 'CONTROLASTOCK'
      Size = 1
    end
    object wwCDSStockCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Size = 10
    end
    object wwCDSStockCLASE_ARTICULO: TIntegerField
      FieldName = 'CLASE_ARTICULO'
    end
    object wwCDSStockMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
    end
    object wwCDSStockCON_IMP_INT: TStringField
      FieldName = 'CON_IMP_INT'
      Size = 1
    end
    object wwCDSStockIMPUESTO_INTERNOS: TFloatField
      FieldName = 'IMPUESTO_INTERNOS'
    end
  end
  object DSPCondCompra: TDataSetProvider
    DataSet = DMMain.wwQCondCompra
    Constraints = True
    Left = 108
    Top = 158
  end
  object DSPStock: TDataSetProvider
    DataSet = DMMain.wwQStock
    Constraints = True
    Left = 108
    Top = 110
  end
  object wwDSDepositoStk: TwwDataSource
    DataSet = wwCDSDepositoStk
    Left = 28
    Top = 205
  end
  object wwCDSDepositoStk: TwwClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo_Deposito'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Codigo_Stk'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPDepositoStk'
    ValidateWithMask = True
    Left = 192
    Top = 203
    object wwCDSDepositoStkID_DEPOSITO: TIntegerField
      FieldName = 'ID_DEPOSITO'
    end
    object wwCDSDepositoStkCODIGO_DEPOSITO: TIntegerField
      FieldName = 'CODIGO_DEPOSITO'
    end
    object wwCDSDepositoStkCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object wwCDSDepositoStkSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object wwCDSDepositoStkINICIAL: TFloatField
      FieldName = 'INICIAL'
    end
    object wwCDSDepositoStkMINIMO: TFloatField
      FieldName = 'MINIMO'
    end
    object wwCDSDepositoStkMEDIO: TFloatField
      FieldName = 'MEDIO'
    end
    object wwCDSDepositoStkFISICO: TFloatField
      FieldName = 'FISICO'
    end
    object wwCDSDepositoStkRECARGO: TFloatField
      FieldName = 'RECARGO'
    end
    object wwCDSDepositoStkFUAPRECIOS: TDateTimeField
      FieldName = 'FUAPRECIOS'
    end
  end
  object DSPDepositoStk: TDataSetProvider
    DataSet = DMMain.wwQDepositoStk
    Constraints = True
    Left = 108
    Top = 203
  end
  object DSPIva: TDataSetProvider
    DataSet = DMMain.wwQIva
    Constraints = True
    Left = 372
    Top = 109
  end
  object wwCDSIva: TwwClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPIva'
    ValidateWithMask = True
    Left = 456
    Top = 109
    object wwCDSIvaCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object wwCDSIvaDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 15
    end
    object wwCDSIvaTasa: TFloatField
      FieldName = 'Tasa'
    end
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMMain.wwQSucursal
    Constraints = True
    Left = 108
    Top = 252
  end
  object wwCDSSucursal: TwwClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPSucursal'
    ValidateWithMask = True
    Left = 192
    Top = 268
    object wwCDSSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object wwCDSSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
    object wwCDSSucursalDIRECCION: TStringField
      FieldName = 'DIRECCION'
    end
    object wwCDSSucursalLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
    end
    object wwCDSSucursalTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Size = 15
    end
    object wwCDSSucursalTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Size = 15
    end
    object wwCDSSucursalRECARGO: TFloatField
      FieldName = 'RECARGO'
    end
  end
  object DSPImpuestos: TDataSetProvider
    DataSet = DMMain.wwQImpuestoOrdenCompra
    Constraints = True
    Left = 364
    Top = 160
  end
  object wwCDSImpuestos: TwwClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPImpuestos'
    ValidateWithMask = True
    Left = 456
    Top = 160
    object wwCDSImpuestosID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
    end
    object wwCDSImpuestosCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
    end
    object wwCDSImpuestosDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object wwCDSImpuestosID_OCCAB: TIntegerField
      FieldName = 'ID_OCCAB'
    end
    object wwCDSImpuestosNETO: TFloatField
      FieldName = 'NETO'
    end
    object wwCDSImpuestosTASA: TFloatField
      FieldName = 'TASA'
    end
    object wwCDSImpuestosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
  end
  object wwDSDeposito: TwwDataSource
    DataSet = wwCDSDeposito
    Left = 288
    Top = 62
  end
  object DSPDeposito: TDataSetProvider
    DataSet = DMMain.wwQDeposito
    Constraints = True
    Left = 372
    Top = 60
  end
  object wwCDSDeposito: TwwClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPDeposito'
    ValidateWithMask = True
    Left = 456
    Top = 60
    object wwCDSDepositoID: TIntegerField
      FieldName = 'ID'
    end
    object wwCDSDepositoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
    object wwCDSDepositoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
  end
  object IBGOrdenCompCab: TIBGenerator
    Database = 'DBMain'
    GeneratorName = 'NEXT_ID_ORDENCOMPRACAB'
    SystemGenerators = False
    Left = 312
    Top = 304
  end
  object IBGOrdenCompDet: TIBGenerator
    Database = 'DBMain'
    GeneratorName = 'NEXT_ID_ORDENCOMPRADET'
    SystemGenerators = False
    Left = 400
    Top = 304
  end
  object IBGImpuestos: TIBGenerator
    Database = 'DBMain'
    GeneratorName = 'NEXT_ID_ORDENCOMPRAIMPUESTO'
    SystemGenerators = False
    Left = 472
    Top = 320
  end
  object QComprob: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from comprobantes where'
      
        'id_comprobante=:id  and (tipo_comprob='#39'FC'#39' or tipo_comprob='#39'NC'#39' ' +
        'or tipo_comprob='#39'ND'#39')'
      'and compra_venta='#39'C'#39' and sucursal=:suc')
    Left = 184
    Top = 368
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptUnknown
      end>
    object QComprobTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'DBMAIN.COMPROBANTES.TIPO_COMPROB'
      Size = 2
    end
    object QComprobCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'DBMAIN.COMPROBANTES.SIGLAS'
      Size = 2
    end
    object QComprobDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DBMAIN.COMPROBANTES.DENOMINACION'
      Size = 15
    end
    object QComprobLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'DBMAIN.COMPROBANTES.LETRA'
      Size = 1
    end
  end
  object wwDSImpuestos: TwwDataSource
    DataSet = wwCDSImpuestos
    Left = 288
    Top = 160
  end
  object DSPInscripcion: TDataSetProvider
    DataSet = DMMain.wwQInscripcion
    Constraints = True
    Left = 384
    Top = 427
  end
  object wwCDSInscripcion: TwwClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPInscripcion'
    ValidateWithMask = True
    Left = 456
    Top = 427
    object wwCDSInscripcionCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'DBMAIN.INSCRIPCION.CODIGO'
    end
    object wwCDSInscripcionDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DBMAIN.INSCRIPCION.DETALLE'
      Size = 15
    end
    object wwCDSInscripcionCOBRASOBRETASA: TStringField
      FieldName = 'COBRASOBRETASA'
      Size = 1
    end
    object wwCDSInscripcionAPLICAPERCEPCIONIVA: TStringField
      FieldName = 'APLICAPERCEPCIONIVA'
      Size = 1
    end
    object wwCDSInscripcionAPLICAPERCEPCIONIIBB: TStringField
      FieldName = 'APLICAPERCEPCIONIIBB'
      Size = 1
    end
    object wwCDSInscripcionDISCRIMINAIVA: TStringField
      FieldName = 'DISCRIMINAIVA'
      Size = 1
    end
  end
  object QVerifiComprob: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select NroCpbte from fccompcab where'
      
        'nrocpbte=:Nro and clasecpbte=:clase and tipocpbte=:tipo and codi' +
        'go=:codigo')
    Left = 48
    Top = 424
    ParamData = <
      item
        DataType = ftString
        Name = 'Nro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'clase'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
  end
  object QBuscaComprob: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      
        'select * from comprobantes where sucursal=:suc and compra_venta=' +
        #39'C'#39' and'
      '(tipo_comprob='#39'FC'#39' or tipo_comprob='#39'NC'#39' or tipo_comprob='#39'ND'#39')'
      ' '
      ' '
      '')
    Left = 404
    Top = 479
    ParamData = <
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptUnknown
      end>
  end
  object QPrimerConComp: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      
        'select Min(codigopago) from condcompra where codigoprovee=:codig' +
        'o')
    Left = 520
    Top = 384
    ParamData = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
  end
end
