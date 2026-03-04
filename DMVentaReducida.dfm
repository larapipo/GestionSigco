object DatosVentaReducida: TDatosVentaReducida
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Left = 195
  Top = 151
  Height = 611
  Width = 812
  object QAnulacion: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'UPDATE FcVtaCab SET'
      'Anulado='#39'S'#39' WHERE id_fc=:id and tipoCpbte=:Tipo')
    Left = 424
    Top = 196
    ParamData = <
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
  end
  object wwDSImpuestos: TwwDataSource
    DataSet = wwCDSImpuestos
    Left = 24
    Top = 144
  end
  object DSPVentaCab: TDataSetProvider
    Left = 96
    Top = 43
  end
  object DSPCondVenta: TDataSetProvider
    Left = 96
    Top = 89
  end
  object wwCDSVentaCab: TwwClientDataSet
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
    ProviderName = 'DSPVentaCab'
    BeforePost = wwCDSVentaCabBeforePost
    OnNewRecord = wwCDSVentaCabNewRecord
    ValidateWithMask = True
    Left = 168
    Top = 43
    object wwCDSVentaCabLDR: TIntegerField
      FieldName = 'LDR'
      OnSetText = wwCDSVentaCabLDRSetText
    end
    object wwCDSVentaCabDeposito: TIntegerField
      FieldName = 'Deposito'
      OnSetText = wwCDSVentaCabDepositoSetText
    end
    object wwCDSVentaCabID_FC: TIntegerField
      FieldName = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object wwCDSVentaCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object wwCDSVentaCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object wwCDSVentaCabLETRAFAC: TStringField
      Alignment = taCenter
      FieldName = 'LETRAFAC'
      Size = 1
    end
    object wwCDSVentaCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object wwCDSVentaCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object wwCDSVentaCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object wwCDSVentaCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object wwCDSVentaCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object wwCDSVentaCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object wwCDSVentaCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object wwCDSVentaCabFECHAVTA: TDateTimeField
      FieldName = 'FECHAVTA'
      OnSetText = wwCDSVentaCabFECHAVTASetText
    end
    object wwCDSVentaCabFECHAVTO: TDateTimeField
      FieldName = 'FECHAVTO'
    end
    object wwCDSVentaCabANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object wwCDSVentaCabNRORTO: TStringField
      FieldName = 'NRORTO'
    end
    object wwCDSVentaCabN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
    end
    object wwCDSVentaCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      OnGetText = wwCDSVentaCabNETOGRAV1GetText
      OnSetText = wwCDSVentaCabNETOGRAV1SetText
    end
    object wwCDSVentaCabDSTO: TFloatField
      FieldName = 'DSTO'
      OnSetText = wwCDSVentaCabDSTOSetText
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object wwCDSVentaCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      OnGetText = wwCDSVentaCabDSTOIMPORTEGetText
    end
    object wwCDSVentaCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      OnSetText = wwCDSVentaCabNETOEXEN1SetText
    end
    object wwCDSVentaCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
    end
    object wwCDSVentaCabTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object wwCDSVentaCabDEBE: TFloatField
      FieldName = 'DEBE'
    end
    object wwCDSVentaCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object wwCDSVentaCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object wwCDSVentaCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object wwCDSVentaCabCPTE_MANUAL: TStringField
      FieldName = 'CPTE_MANUAL'
      Size = 1
    end
    object wwCDSVentaCabFACTURANRO: TStringField
      FieldName = 'FACTURANRO'
      Size = 13
    end
    object wwCDSVentaCabZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object wwCDSVentaCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object wwCDSVentaCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Size = 1
    end
    object wwCDSVentaCabNROENTREGA: TIntegerField
      FieldName = 'NROENTREGA'
    end
    object wwCDSVentaCabMUESTRACONDVENTA: TStringField
      FieldName = 'MUESTRACONDVENTA'
      ProviderFlags = []
    end
    object wwCDSVentaCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
    object wwCDSVentaCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object wwCDSVentaCabMUESTRALDR: TStringField
      FieldName = 'MUESTRALDR'
      ProviderFlags = []
      Size = 35
    end
    object wwCDSVentaCabMUESTRAIVA: TStringField
      FieldName = 'MUESTRAIVA'
      ProviderFlags = []
      Size = 15
    end
    object wwCDSVentaCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object wwCDSVentaCabINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Size = 1
    end
    object wwCDSVentaCabINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Size = 1
    end
    object wwCDSVentaCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object wwCDSVentaCabCODIGO: TStringField
      FieldName = 'CODIGO'
      OnSetText = wwCDSVentaCabCODIGOSetText
      Size = 6
    end
    object wwCDSVentaCabSUCFAC: TStringField
      FieldName = 'SUCFAC'
      OnSetText = wwCDSVentaCabSUCFACSetText
      Size = 4
    end
    object wwCDSVentaCabNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      OnSetText = wwCDSVentaCabNUMEROFACSetText
      Size = 8
    end
    object wwCDSVentaCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
      OnSetText = wwCDSVentaCabCONDICIONVTASetText
    end
    object wwCDSVentaCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      OnGetText = wwCDSVentaCabNETOGRAV2GetText
      OnSetText = wwCDSVentaCabNETOGRAV2SetText
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object wwCDSVentaCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
      OnSetText = wwCDSVentaCabID_TIPOCOMPROBANTESetText
    end
    object wwCDSVentaCabREDUCIDA: TStringField
      FieldName = 'REDUCIDA'
      Size = 1
    end
    object wwCDSVentaCabMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      ProviderFlags = []
      Size = 35
    end
    object wwCDSVentaCabCOMSIONVENDEDOR: TFloatField
      FieldName = 'COMSIONVENDEDOR'
    end
    object wwCDSVentaCabLIQUIDADA: TStringField
      FieldName = 'LIQUIDADA'
      Size = 1
    end
    object wwCDSVentaCabVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      OnSetText = wwCDSVentaCabVENDEDORSetText
      Size = 6
    end
    object wwCDSVentaCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object wwCDSVentaCabCAJA_POR_DEFECTO: TIntegerField
      FieldName = 'CAJA_POR_DEFECTO'
    end
    object wwCDSVentaCabNC_CONTADO: TStringField
      FieldName = 'NC_CONTADO'
      Size = 1
    end
    object wwCDSVentaCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      OnSetText = wwCDSVentaCabSUCURSALSetText
    end
    object wwCDSVentaCabRENGLONES: TSmallintField
      FieldName = 'RENGLONES'
    end
  end
  object wwCDSCondVenta: TwwClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CodigoCliente'
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
    ValidateWithMask = True
    Left = 168
    Top = 89
    object wwCDSCondVentaCodigoPago: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CodigoPago'
    end
    object wwCDSCondVentaDetalle: TStringField
      DisplayWidth = 20
      FieldName = 'Detalle'
      Origin = 'DBMAIN."F_Pago.DB".Detalle'
    end
    object wwCDSCondVentaCodigoCliente: TStringField
      DisplayWidth = 6
      FieldName = 'CodigoCliente'
      Visible = False
      Size = 6
    end
    object wwCDSCondVentaDescuento: TFloatField
      DisplayWidth = 10
      FieldName = 'Descuento'
      Visible = False
    end
    object wwCDSCondVentaDias: TIntegerField
      DisplayWidth = 10
      FieldName = 'Dias'
      Visible = False
    end
    object wwCDSCondVentaDescuento_FPago: TFloatField
      DisplayWidth = 10
      FieldName = 'Descuento_FPago'
      Visible = False
    end
  end
  object DSPImpuestos: TDataSetProvider
    Left = 96
    Top = 140
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
    OnNewRecord = wwCDSImpuestosNewRecord
    ValidateWithMask = True
    Left = 168
    Top = 140
    object wwCDSImpuestosID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object wwCDSImpuestosID_FCVTACAB: TIntegerField
      FieldName = 'ID_FCVTACAB'
    end
    object wwCDSImpuestosCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      OnSetText = wwCDSImpuestosCODIGO_GRAVAMENSetText
    end
    object wwCDSImpuestosDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object wwCDSImpuestosNETO: TFloatField
      FieldName = 'NETO'
      OnSetText = wwCDSImpuestosNETOSetText
      EditFormat = '0.00'
    end
    object wwCDSImpuestosTASA: TFloatField
      FieldName = 'TASA'
    end
    object wwCDSImpuestosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      OnSetText = wwCDSImpuestosIMPORTESetText
    end
  end
  object wwCDSClientes: TwwClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPClientes'
    ValidateWithMask = True
    Left = 168
    object wwCDSClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object wwCDSClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object wwCDSClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object wwCDSClientesDIRECCION_PARTICULAR: TStringField
      FieldName = 'DIRECCION_PARTICULAR'
      Size = 35
    end
    object wwCDSClientesDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object wwCDSClientesTELEFONO_PARTICULAR: TStringField
      FieldName = 'TELEFONO_PARTICULAR'
      Size = 10
    end
    object wwCDSClientesTELEFONO_COMERCIAL_1: TStringField
      FieldName = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object wwCDSClientesTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object wwCDSClientesTELEFONO_CELULAR: TStringField
      FieldName = 'TELEFONO_CELULAR'
      Size = 11
    end
    object wwCDSClientesID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
    end
    object wwCDSClientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object wwCDSClientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object wwCDSClientesCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
    end
    object wwCDSClientesEMITE_REMITO: TStringField
      FieldName = 'EMITE_REMITO'
      Size = 1
    end
    object wwCDSClientesEMITE_FACTURA: TStringField
      FieldName = 'EMITE_FACTURA'
      Size = 1
    end
    object wwCDSClientesNRO_DE_CUIT: TStringField
      FieldName = 'NRO_DE_CUIT'
      Size = 13
    end
    object wwCDSClientesACTIVO: TStringField
      FieldName = 'ACTIVO'
      Size = 1
    end
    object wwCDSClientesLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object wwCDSClientesSALDOINICIAL: TFloatField
      FieldName = 'SALDOINICIAL'
    end
    object wwCDSClientesOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object wwCDSClientesFECHAULTIMACOMPRA: TDateTimeField
      FieldName = 'FECHAULTIMACOMPRA'
    end
    object wwCDSClientesFECHAALTA: TDateTimeField
      FieldName = 'FECHAALTA'
    end
    object wwCDSClientesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object wwCDSClientesZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object wwCDSClientesID_FACTURAPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURAPORDEFECTO'
    end
    object wwCDSClientesVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 6
    end
  end
  object DSPClientes: TDataSetProvider
    DataSet = wwQClientes
    Left = 96
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
    Left = 400
    Top = 11
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
  object DSPInscripcion: TDataSetProvider
    Left = 336
    Top = 11
  end
  object DSPDeposito: TDataSetProvider
    DataSet = DMMain_2.QDeposito
    Left = 336
    Top = 102
  end
  object DSPIva: TDataSetProvider
    Left = 336
    Top = 151
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
    Left = 408
    Top = 151
    object wwCDSIvaCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'DBMAIN."gravamen.DB".Codigo'
    end
    object wwCDSIvaDescripcion: TStringField
      FieldName = 'Descripcion'
      Origin = 'DBMAIN."gravamen.DB".Descripcion'
      Size = 15
    end
    object wwCDSIvaTasa: TFloatField
      FieldName = 'Tasa'
      Origin = 'DBMAIN."gravamen.DB".Tasa'
      DisplayFormat = '0.00'
    end
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
    Left = 168
    Top = 190
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
  object DSPSucursal: TDataSetProvider
    Options = [poAllowCommandText]
    Left = 98
    Top = 190
  end
  object QDepositoStk: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from DepositoStk  where'
      '(Codigo_Deposito=:codigo_deposito) AND (Codigo_stk=:Codigo)'
      '')
    Left = 336
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'codigo_deposito'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
    object QDepositoStkID_DEPOSITO: TIntegerField
      FieldName = 'ID_DEPOSITO'
      Origin = 'DBMAIN.DEPOSITOSTK.ID_DEPOSITO'
    end
    object QDepositoStkCODIGO_DEPOSITO: TIntegerField
      FieldName = 'CODIGO_DEPOSITO'
      Origin = 'DBMAIN.DEPOSITOSTK.CODIGO_DEPOSITO'
    end
    object QDepositoStkCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'DBMAIN.DEPOSITOSTK.CODIGO_STK'
      Size = 8
    end
    object QDepositoStkSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'DBMAIN.DEPOSITOSTK.SUCURSAL'
    end
    object QDepositoStkINICIAL: TFloatField
      FieldName = 'INICIAL'
      Origin = 'DBMAIN.DEPOSITOSTK.INICIAL'
    end
    object QDepositoStkMINIMO: TFloatField
      FieldName = 'MINIMO'
      Origin = 'DBMAIN.DEPOSITOSTK.MINIMO'
    end
    object QDepositoStkMEDIO: TFloatField
      FieldName = 'MEDIO'
      Origin = 'DBMAIN.DEPOSITOSTK.MEDIO'
    end
    object QDepositoStkFISICO: TFloatField
      FieldName = 'FISICO'
      Origin = 'DBMAIN.DEPOSITOSTK.FISICO'
    end
    object QDepositoStkRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'DBMAIN.DEPOSITOSTK.RECARGO'
    end
    object QDepositoStkFUAPRECIOS: TDateTimeField
      FieldName = 'FUAPRECIOS'
      Origin = 'DBMAIN.DEPOSITOSTK.FUAPRECIOS'
    end
  end
  object DSPLdr: TDataSetProvider
    Left = 336
    Top = 58
  end
  object wwCDSLdr: TwwClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ldr'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPLdr'
    ValidateWithMask = True
    Left = 408
    Top = 58
    object wwCDSLdrCodigo_Ldr: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'Codigo_Ldr'
      Origin = 'DBMAIN."ldrcliente.DB".Codigo_Ldr'
    end
    object wwCDSLdrNombre: TStringField
      DisplayWidth = 35
      FieldName = 'Nombre'
      Origin = 'DBMAIN."ldrcliente.DB".Nombre'
      Size = 35
    end
    object wwCDSLdrDireccion: TStringField
      DisplayWidth = 35
      FieldName = 'Direccion'
      Origin = 'DBMAIN."ldrcliente.DB".Direccion'
      Size = 35
    end
    object wwCDSLdrCodigo_Cliente: TStringField
      DisplayWidth = 6
      FieldName = 'Codigo_Cliente'
      Origin = 'DBMAIN."ldrcliente.DB".Codigo_Cliente'
      Visible = False
      Size = 6
    end
    object wwCDSLdrCPostal: TStringField
      DisplayWidth = 8
      FieldName = 'CPostal'
      Origin = 'DBMAIN."ldrcliente.DB".CPostal'
      Visible = False
      Size = 8
    end
  end
  object QComprob: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from comprobantes where'
      'id_comprobante=:id  '
      
        'and (tipo_comprob='#39'FC'#39' or tipo_comprob='#39'NC'#39' or tipo_comprob='#39'ND'#39 +
        ' or tipo_comprob='#39'FO'#39')'
      'and compra_venta='#39'V'#39
      'and sucursal=:suc'
      '')
    Left = 344
    Top = 248
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
    object QComprobREPORTE: TStringField
      FieldName = 'REPORTE'
      Origin = 'DBMAIN.COMPROBANTES.REPORTE'
      Size = 100
    end
    object QComprobCOPIAS: TIntegerField
      FieldName = 'COPIAS'
      Origin = 'DBMAIN.COMPROBANTES.COPIAS'
    end
  end
  object IBGFc_Cab: TIBGenerator
    Database = 'DBMain'
    GeneratorName = 'NEXT_ID_FC_VENTA_CAB'
    SystemGenerators = False
    Left = 96
    Top = 240
  end
  object QPrimerLdr: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      
        'select min(Codigo_Ldr) From LdrCliente Where Codigo_Cliente=:Cod' +
        'igo')
    Left = 344
    Top = 296
    ParamData = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
  end
  object QPrimerConVta: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      
        'select Min(codigopago) from condventa where codigocliente=:codig' +
        'o')
    Left = 424
    Top = 248
    ParamData = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
  end
  object spVerificaPeriodFiscal: TStoredProc
    DatabaseName = 'DBMain'
    StoredProcName = 'VERIFICA_PERIODO_FISCAL'
    Left = 616
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ANIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MES'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COMPRA_VENTA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ESTADO'
        ParamType = ptOutput
      end>
  end
  object IBGFc_Impuestos: TIBGenerator
    Database = 'DBMain'
    GeneratorName = 'NEXT_ID_FC_VENTA_IMPUESTO'
    SystemGenerators = False
    Left = 96
    Top = 288
  end
  object QLdr: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from LdrCliente Where Codigo_Cliente=:Codigo')
    Left = 287
    Top = 252
    ParamData = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
    object QLdrCODIGO_CLIENTE: TStringField
      FieldName = 'CODIGO_CLIENTE'
      Origin = 'DBMAIN.LDRCLIENTE.CODIGO_CLIENTE'
      Size = 6
    end
    object QLdrCODIGO_LDR: TIntegerField
      FieldName = 'CODIGO_LDR'
      Origin = 'DBMAIN.LDRCLIENTE.CODIGO_LDR'
    end
    object QLdrNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'DBMAIN.LDRCLIENTE.NOMBRE'
      Size = 35
    end
    object QLdrDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DBMAIN.LDRCLIENTE.DIRECCION'
      Size = 35
    end
    object QLdrCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'DBMAIN.LDRCLIENTE.CPOSTAL'
      Size = 8
    end
  end
  object QGravamen: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from  gravamen where codigo=:codigo')
    Left = 216
    Top = 248
    ParamData = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object QGravamenCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'DBMAIN.GRAVAMEN.CODIGO'
    end
    object QGravamenDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DBMAIN.GRAVAMEN.DESCRIPCION'
      Size = 15
    end
    object QGravamenTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'DBMAIN.GRAVAMEN.TASA'
    end
  end
  object wwQCajaMov: TwwQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      
        'Select M.* , F.descripcion as MuestraFormaPago,cc.id_cuenta as M' +
        'uestraIdCtaCaja ,cc.nombre as MuestraCaja from Caja_Mov M'
      'left join cuenta_caja cc on cc.id_cuenta=m.id_cuenta_caja'
      'left join FormaPago F on F.id_Fpago=M.id_Fpago'
      
        'where (m.Id_Comprobante=:id) and (m.Tipo_Comprob=:tipo) and (m.t' +
        'ipo_Operacion='#39'I'#39')')
    ValidateWithMask = True
    Left = 244
    Top = 369
    ParamData = <
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
    object wwQCajaMovID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
    end
    object wwQCajaMovID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
    end
    object wwQCajaMovFECHA_CAJA: TDateTimeField
      FieldName = 'FECHA_CAJA'
    end
    object wwQCajaMovFECHA_OPERACION: TDateTimeField
      FieldName = 'FECHA_OPERACION'
    end
    object wwQCajaMovTIPO_OPERACION: TStringField
      FieldName = 'TIPO_OPERACION'
      Size = 1
    end
    object wwQCajaMovID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object wwQCajaMovTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Size = 2
    end
    object wwQCajaMovNRO_COMPROBANTE: TStringField
      FieldName = 'NRO_COMPROBANTE'
      Size = 13
    end
    object wwQCajaMovHABER: TFloatField
      FieldName = 'HABER'
    end
    object wwQCajaMovDEBE: TFloatField
      FieldName = 'DEBE'
    end
    object wwQCajaMovID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
    end
    object wwQCajaMovID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
    end
    object wwQCajaMovUNIDADES: TFloatField
      FieldName = 'UNIDADES'
    end
    object wwQCajaMovCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object wwQCajaMovMUESTRAFORMAPAGO: TStringField
      FieldName = 'MUESTRAFORMAPAGO'
      ProviderFlags = []
    end
    object wwQCajaMovCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Size = 2
    end
    object wwQCajaMovID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
    end
    object wwQCajaMovMONEDA: TIntegerField
      FieldName = 'MONEDA'
    end
    object wwQCajaMovMUESTRAIDCTACAJA: TIntegerField
      FieldName = 'MUESTRAIDCTACAJA'
      ProviderFlags = []
    end
    object wwQCajaMovMUESTRACAJA: TStringField
      FieldName = 'MUESTRACAJA'
      ProviderFlags = []
      Size = 25
    end
  end
  object wwCDSCajaMov: TwwClientDataSet
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
    ProviderName = 'DSPCajaMov'
    OnNewRecord = wwCDSCajaMovNewRecord
    ValidateWithMask = True
    Left = 168
    Top = 376
    object wwCDSCajaMovID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
    end
    object wwCDSCajaMovID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
    end
    object wwCDSCajaMovFECHA_CAJA: TDateTimeField
      FieldName = 'FECHA_CAJA'
    end
    object wwCDSCajaMovFECHA_OPERACION: TDateTimeField
      FieldName = 'FECHA_OPERACION'
    end
    object wwCDSCajaMovTIPO_OPERACION: TStringField
      FieldName = 'TIPO_OPERACION'
      Size = 1
    end
    object wwCDSCajaMovID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object wwCDSCajaMovTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Size = 2
    end
    object wwCDSCajaMovNRO_COMPROBANTE: TStringField
      FieldName = 'NRO_COMPROBANTE'
      Size = 13
    end
    object wwCDSCajaMovHABER: TFloatField
      FieldName = 'HABER'
    end
    object wwCDSCajaMovDEBE: TFloatField
      FieldName = 'DEBE'
    end
    object wwCDSCajaMovID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
    end
    object wwCDSCajaMovID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
    end
    object wwCDSCajaMovUNIDADES: TFloatField
      FieldName = 'UNIDADES'
    end
    object wwCDSCajaMovCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object wwCDSCajaMovMUESTRAFORMAPAGO: TStringField
      FieldName = 'MUESTRAFORMAPAGO'
      ProviderFlags = []
    end
    object wwCDSCajaMovCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Size = 2
    end
    object wwCDSCajaMovID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
    end
    object wwCDSCajaMovMONEDA: TIntegerField
      FieldName = 'MONEDA'
    end
    object wwCDSCajaMovMUESTRAIDCTACAJA: TIntegerField
      FieldName = 'MUESTRAIDCTACAJA'
      ProviderFlags = []
    end
    object wwCDSCajaMovMUESTRACAJA: TStringField
      FieldName = 'MUESTRACAJA'
      ProviderFlags = []
      Size = 25
    end
  end
  object DSPCajaMov: TDataSetProvider
    DataSet = wwQCajaMov
    Left = 90
    Top = 376
  end
  object DSPMovEfectivo: TDataSetProvider
    DataSet = wwQMovEfectivo
    Left = 86
    Top = 432
  end
  object wwCDSMovEfectivo: TwwClientDataSet
    Aggregates = <>
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPMovEfectivo'
    ValidateWithMask = True
    Left = 166
    Top = 432
    object wwCDSMovEfectivoID_EFECTIVO: TIntegerField
      FieldName = 'ID_EFECTIVO'
    end
    object wwCDSMovEfectivoID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
    end
    object wwCDSMovEfectivoID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
    end
    object wwCDSMovEfectivoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
    end
    object wwCDSMovEfectivoCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object wwCDSMovEfectivoUNIDADES: TFloatField
      FieldName = 'UNIDADES'
    end
    object wwCDSMovEfectivoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object wwCDSMovEfectivoID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
    end
    object wwCDSMovEfectivoMONEDA: TIntegerField
      FieldName = 'MONEDA'
    end
  end
  object wwQMovEfectivo: TwwQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from Mov_Efectivo  '
      ' where Id_Mov_Caja= :id')
    ValidateWithMask = True
    Left = 244
    Top = 433
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    object wwQMovEfectivoID_EFECTIVO: TIntegerField
      FieldName = 'ID_EFECTIVO'
      Origin = 'DBMAIN.MOV_EFECTIVO.ID_EFECTIVO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object wwQMovEfectivoID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
    end
    object wwQMovEfectivoID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
    end
    object wwQMovEfectivoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
    end
    object wwQMovEfectivoCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object wwQMovEfectivoUNIDADES: TFloatField
      FieldName = 'UNIDADES'
    end
    object wwQMovEfectivoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object wwQMovEfectivoID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'DBMAIN.MOV_EFECTIVO.ID_CUENTA_CAJA'
    end
    object wwQMovEfectivoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'DBMAIN.MOV_EFECTIVO.MONEDA'
    end
  end
  object IBGId_Efectivo: TIBGenerator
    Database = 'DBMain'
    GeneratorName = 'NEXT_ID_MOV_EFECTIVO'
    SystemGenerators = False
    Left = 336
    Top = 432
  end
  object IBGId_Caja_Mov: TIBGenerator
    Database = 'DBMain'
    GeneratorName = 'NEXT_ID_CAJA_MOV'
    SystemGenerators = False
    Left = 336
    Top = 376
  end
  object wwCDSCajaCab: TwwClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPCajaCab'
    ValidateWithMask = True
    Left = 424
    Top = 368
    object wwCDSCajaCabID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object wwCDSCajaCabID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
    end
    object wwCDSCajaCabFECHA_INCIO: TDateTimeField
      FieldName = 'FECHA_INCIO'
    end
    object wwCDSCajaCabFECHA_CIERRE: TDateTimeField
      FieldName = 'FECHA_CIERRE'
    end
    object wwCDSCajaCabSALDO_INCIAL: TFloatField
      FieldName = 'SALDO_INCIAL'
    end
    object wwCDSCajaCabESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object wwCDSCajaCabOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object wwCDSCajaCabMUESTRACTACAJA: TStringField
      FieldName = 'MUESTRACTACAJA'
      ProviderFlags = []
      Size = 25
    end
  end
  object DSPCajaCab: TDataSetProvider
    Left = 496
    Top = 368
  end
  object QFormaPago: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from FormaPago where id_Tpago=1'
      'order by id_fpago')
    Left = 424
    Top = 432
    object QFormaPagoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'DBMAIN.FORMAPAGO.ID_FPAGO'
    end
    object QFormaPagoID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'DBMAIN.FORMAPAGO.ID_TPAGO'
    end
    object QFormaPagoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DBMAIN.FORMAPAGO.DESCRIPCION'
    end
    object QFormaPagoCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'DBMAIN.FORMAPAGO.COTIZACION'
    end
    object QFormaPagoSIGNO: TStringField
      FieldName = 'SIGNO'
      Origin = 'DBMAIN.FORMAPAGO.UNIDAD_MONETARIA'
      Size = 5
    end
    object QFormaPagoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'DBMAIN.FORMAPAGO.MONEDA'
    end
  end
  object wwQClientes: TwwQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'SELECT C.*  FROM Clientes C'
      'where (c.codigo=:codigo)'
      ''
      ' '
      ' ')
    ValidateWithMask = True
    Left = 34
    Top = 3
    ParamData = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
  end
  object CDSBuscaDeposito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaDeposito'
    Left = 544
    Top = 29
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
  object DSPBuscaDeposito: TDataSetProvider
    DataSet = DMBuscadores.QBuscaDeposito
    Left = 640
    Top = 21
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
    Left = 408
    Top = 102
    object CDSDepositoId: TIntegerField
      DisplayWidth = 10
      FieldName = 'Id'
      Origin = 'DBMAIN."depositos.DB".Id'
    end
    object CDSDepositoNombre: TStringField
      DisplayWidth = 25
      FieldName = 'Nombre'
      Origin = 'DBMAIN."depositos.DB".Nombre'
      Size = 25
    end
    object CDSDepositoSucursal: TIntegerField
      DisplayWidth = 10
      FieldName = 'Sucursal'
      Origin = 'DBMAIN."depositos.DB".Sucursal'
    end
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Left = 32
    Top = 334
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 120
    Top = 334
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
  object DSPPersonal: TDataSetProvider
    DataSet = DMMain_2.QPersonal
    Left = 552
    Top = 288
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
    Left = 640
    Top = 280
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
  object DSPBuscaVendedor: TDataSetProvider
    DataSet = DMBuscadores.QBuscaVendedores
    Left = 568
    Top = 176
  end
  object CDSBuscaVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaVendedor'
    Left = 632
    Top = 176
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
  object DSPBuscaCondVenta: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCondVentaCliente
    Left = 560
    Top = 232
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
    Left = 632
    Top = 232
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
