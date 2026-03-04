object DatosLiqGranos: TDatosLiqGranos
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Height = 643
  Width = 755
  object QLiqCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cab.*,cp.id_comprobante as Id_TipoComprobante,'
      'su.detalle as MuestraSucursal,'
      'cp.denominacion as MuestraComprobante from liqgranos_cab cab '
      'left join Sucursal Su  on Su.Codigo=cab.Sucursal'
      
        'left join comprobantes cp on cp.clase_comprob = cab.ClaseCpbte a' +
        'nd'
      '                             cp.letra = cab.LetraFac and'
      '                             cp.sucursal = cab.sucursal and'
      '                             cp.tipo_comprob = cab.tipocpbte and'
      '                             cp.compra_venta = '#39'V'#39
      'where cab.id_lq =:id')
    Left = 40
    Top = 24
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QLiqCabID_LQ: TIntegerField
      FieldName = 'ID_LQ'
      Origin = 'ID_LQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLiqCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object QLiqCabFECHAFISCAL: TSQLTimeStampField
      FieldName = 'FECHAFISCAL'
      Origin = 'FECHAFISCAL'
      Required = True
    end
    object QLiqCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QLiqCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QLiqCabTIPO_OPERACION: TIntegerField
      FieldName = 'TIPO_OPERACION'
      Origin = 'TIPO_OPERACION'
      Required = True
    end
    object QLiqCabTIPO_ACTIVIDAD: TIntegerField
      FieldName = 'TIPO_ACTIVIDAD'
      Origin = 'TIPO_ACTIVIDAD'
      Required = True
    end
    object QLiqCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QLiqCabLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      FixedChar = True
      Size = 1
    end
    object QLiqCabSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Origin = 'SUCFAC'
      Size = 4
    end
    object QLiqCabNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Origin = 'NUMEROFAC'
      Size = 8
    end
    object QLiqCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object QLiqCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QLiqCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QLiqCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object QLiqCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QLiqCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QLiqCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
    end
    object QLiqCabCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QLiqCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 60
    end
    object QLiqCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      Size = 60
    end
    object QLiqCabINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Origin = 'INGRESA_A_CTACTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QLiqCabINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Origin = 'INGRESA_LIBRO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QLiqCabMERCADERIA_NROPBTE: TStringField
      FieldName = 'MERCADERIA_NROPBTE'
      Origin = 'MERCADERIA_NROPBTE'
      Size = 13
    end
    object QLiqCabMERCADERIA_GRADO: TStringField
      FieldName = 'MERCADERIA_GRADO'
      Origin = 'MERCADERIA_GRADO'
      Size = 2
    end
    object QLiqCabMERCADERIA_FACTOR: TFloatField
      FieldName = 'MERCADERIA_FACTOR'
      Origin = 'MERCADERIA_FACTOR'
    end
    object QLiqCabMERCADERIA_CON_PROTEI: TFloatField
      FieldName = 'MERCADERIA_CON_PROTEI'
      Origin = 'MERCADERIA_CON_PROTEI'
    end
    object QLiqCabMERCADERIA_PESO: TFloatField
      FieldName = 'MERCADERIA_PESO'
      Origin = 'MERCADERIA_PESO'
    end
    object QLiqCabMERCADERIA_PROCEDEN: TIntegerField
      FieldName = 'MERCADERIA_PROCEDEN'
      Origin = 'MERCADERIA_PROCEDEN'
    end
    object QLiqCabOPERACION_CANTIDAD: TFloatField
      FieldName = 'OPERACION_CANTIDAD'
      Origin = 'OPERACION_CANTIDAD'
    end
    object QLiqCabOPERACION_PRECIOKG: TFloatField
      FieldName = 'OPERACION_PRECIOKG'
      Origin = 'OPERACION_PRECIOKG'
    end
    object QLiqCabOPERACION_SUBTOT: TFloatField
      FieldName = 'OPERACION_SUBTOT'
      Origin = 'OPERACION_SUBTOT'
    end
    object QLiqCabOPERACION_COD_ALICUOTAIVA: TIntegerField
      FieldName = 'OPERACION_COD_ALICUOTAIVA'
      Origin = 'OPERACION_COD_ALICUOTAIVA'
      Required = True
    end
    object QLiqCabOPERACION_ALICUOTA: TFloatField
      FieldName = 'OPERACION_ALICUOTA'
      Origin = 'OPERACION_ALICUOTA'
      Required = True
    end
    object QLiqCabOPERACION_IMPO_IVA: TFloatField
      FieldName = 'OPERACION_IMPO_IVA'
      Origin = 'OPERACION_IMPO_IVA'
      Required = True
    end
    object QLiqCabOPERACION_OPER_CIVA: TFloatField
      FieldName = 'OPERACION_OPER_CIVA'
      Origin = 'OPERACION_OPER_CIVA'
      Required = True
    end
    object QLiqCabCONDICION_PRECIO_TN: TFloatField
      FieldName = 'CONDICION_PRECIO_TN'
      Origin = 'CONDICION_PRECIO_TN'
    end
    object QLiqCabCONDICION_GRADO: TStringField
      FieldName = 'CONDICION_GRADO'
      Origin = 'CONDICION_GRADO'
      Size = 2
    end
    object QLiqCabCONDICION_GRANO: TIntegerField
      FieldName = 'CONDICION_GRANO'
      Origin = 'CONDICION_GRANO'
    end
    object QLiqCabCONDICION_FLETE: TFloatField
      FieldName = 'CONDICION_FLETE'
      Origin = 'CONDICION_FLETE'
    end
    object QLiqCabCONDICION_PUERTO: TIntegerField
      FieldName = 'CONDICION_PUERTO'
      Origin = 'CONDICION_PUERTO'
    end
    object QLiqCabTOTAL_OPERACION: TFloatField
      FieldName = 'TOTAL_OPERACION'
      Origin = 'TOTAL_OPERACION'
    end
    object QLiqCabTOTAL_RET_AFIP: TFloatField
      FieldName = 'TOTAL_RET_AFIP'
      Origin = 'TOTAL_RET_AFIP'
    end
    object QLiqCabNETO_A_PAGAR: TFloatField
      FieldName = 'NETO_A_PAGAR'
      Origin = 'NETO_A_PAGAR'
    end
    object QLiqCabTOTAL_PERCEPCIONES: TFloatField
      FieldName = 'TOTAL_PERCEPCIONES'
      Origin = 'TOTAL_PERCEPCIONES'
    end
    object QLiqCabTOTAL_OTRAS_RETENCIONES: TFloatField
      FieldName = 'TOTAL_OTRAS_RETENCIONES'
      Origin = 'TOTAL_OTRAS_RETENCIONES'
    end
    object QLiqCabIVARG2300: TFloatField
      FieldName = 'IVARG2300'
      Origin = 'IVARG2300'
    end
    object QLiqCabTOTAL_DEDUCIONES: TFloatField
      FieldName = 'TOTAL_DEDUCIONES'
      Origin = 'TOTAL_DEDUCIONES'
    end
    object QLiqCabPAGO_SEGUN_COND: TFloatField
      FieldName = 'PAGO_SEGUN_COND'
      Origin = 'PAGO_SEGUN_COND'
    end
    object QLiqCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QLiqCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QLiqCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QLiqCabID_TIPOCOMPROBANTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
    end
    object QLiqCabMUESTRASUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object QLiqCabMUESTRACOMPROBANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object QLiqCabCOE: TStringField
      FieldName = 'COE'
      Origin = 'COE'
      Size = 12
    end
  end
  object QLiqDeducciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select ded.* from liqgranos_deducciones ded where ded.id_liq =:i' +
        'd')
    Left = 40
    Top = 88
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QLiqDeduccionesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLiqDeduccionesID_LIQ: TIntegerField
      FieldName = 'ID_LIQ'
      Origin = 'ID_LIQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QLiqDeduccionesCONCEPTOS: TStringField
      FieldName = 'CONCEPTOS'
      Origin = 'CONCEPTOS'
      Size = 2
    end
    object QLiqDeduccionesDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 30
    end
    object QLiqDeduccionesCOD_ALICUOTA: TIntegerField
      FieldName = 'COD_ALICUOTA'
      Origin = 'COD_ALICUOTA'
      Required = True
    end
    object QLiqDeduccionesPORCENTAJE: TFloatField
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
    end
    object QLiqDeduccionesBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
      Origin = 'BASE_CALCULO'
    end
    object QLiqDeduccionesALICUOTA: TFloatField
      FieldName = 'ALICUOTA'
      Origin = 'ALICUOTA'
    end
    object QLiqDeduccionesIMPORTE_IVA: TFloatField
      FieldName = 'IMPORTE_IVA'
      Origin = 'IMPORTE_IVA'
    end
    object QLiqDeduccionesDEDUCIONES: TFloatField
      FieldName = 'DEDUCIONES'
      Origin = 'DEDUCIONES'
    end
  end
  object QLiqRetenciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select r.* from liqgranos_retenciones r where r.id_liq=:id')
    Left = 40
    Top = 160
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QLiqRetencionesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLiqRetencionesID_LIQ: TIntegerField
      FieldName = 'ID_LIQ'
      Origin = 'ID_LIQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLiqRetencionesCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      Required = True
      Size = 2
    end
    object QLiqRetencionesDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 30
    end
    object QLiqRetencionesCERT_RET: TStringField
      FieldName = 'CERT_RET'
      Origin = 'CERT_RET'
    end
    object QLiqRetencionesIMP_CERT_RET: TFloatField
      FieldName = 'IMP_CERT_RET'
      Origin = 'IMP_CERT_RET'
    end
    object QLiqRetencionesFECHA_CERT: TSQLTimeStampField
      FieldName = 'FECHA_CERT'
      Origin = 'FECHA_CERT'
    end
    object QLiqRetencionesBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
      Origin = 'BASE_CALCULO'
    end
    object QLiqRetencionesALICUOTA: TFloatField
      FieldName = 'ALICUOTA'
      Origin = 'ALICUOTA'
    end
    object QLiqRetencionesRETENCION: TFloatField
      FieldName = 'RETENCION'
      Origin = 'RETENCION'
    end
    object QLiqRetencionesSUMA: TIntegerField
      FieldName = 'SUMA'
      Origin = 'SUMA'
      Required = True
    end
  end
  object QLiq_Puertos: TFDQuery
    BeforeInsert = QLiq_PuertosBeforeInsert
    AfterPost = QLiq_PuertosAfterPost
    AfterDelete = QLiq_PuertosAfterPost
    OnNewRecord = QLiq_PuertosNewRecord
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select p.* from liqgranos_puertos p'
      'order by descripcion')
    Left = 584
    Top = 64
    object QLiq_PuertosCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLiq_PuertosDESCRIPCION: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 25
    end
  end
  object QLiq_GradosGranos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select g.* from liqgranos_grados_granos g')
    Left = 584
    Top = 16
    object QLiq_GradosGranosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object QLiq_GradosGranosDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 15
    end
  end
  object QLiq_TActividad: TFDQuery
    BeforeInsert = QLiq_TActividadBeforeInsert
    AfterPost = QLiq_TActividadAfterPost
    AfterDelete = QLiq_TActividadAfterPost
    OnNewRecord = QLiq_TActividadNewRecord
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.* from liqgranos_tipoactividad t'
      'order by t.detalle')
    Left = 584
    Top = 112
    object QLiq_TActividadCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLiq_TActividadDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
  end
  object QLiq_TCertificado: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.* from liqgranos_tipocertificado t')
    Left = 584
    Top = 160
    object QLiq_TCertificadoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLiq_TCertificadoDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
  end
  object QLiq_TDeducion: TFDQuery
    Active = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.* from liqgranos_tipodeducion t')
    Left = 584
    Top = 208
    object QLiq_TDeducionCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object QLiq_TDeducionDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
  end
  object QBuscaSucursal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo,detalle from sucursal')
    Left = 416
    Top = 456
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT C.* FROM Clientes C'
      ''
      'where (c.codigo=:codigo) and (c.activo<>'#39'N'#39')')
    Left = 136
    Top = 304
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QClientesNOMBRE_COMPLETO: TStringField
      FieldName = 'NOMBRE_COMPLETO'
      Origin = 'NOMBRE_COMPLETO'
      Size = 100
    end
    object QClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object QClientesDIRECCION_PARTICULAR: TStringField
      FieldName = 'DIRECCION_PARTICULAR'
      Origin = 'DIRECCION_PARTICULAR'
      Size = 35
    end
    object QClientesDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Origin = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object QClientesTELEFONO_PARTICULAR: TStringField
      FieldName = 'TELEFONO_PARTICULAR'
      Origin = 'TELEFONO_PARTICULAR'
      Size = 10
    end
    object QClientesTELEFONO_COMERCIAL_1: TStringField
      FieldName = 'TELEFONO_COMERCIAL_1'
      Origin = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object QClientesTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Origin = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object QClientesTELEFONO_CELULAR: TStringField
      FieldName = 'TELEFONO_CELULAR'
      Origin = 'TELEFONO_CELULAR'
      Size = 11
    end
    object QClientesID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
      Origin = 'ID_COD_POSTAL'
    end
    object QClientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QClientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QClientesCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Origin = 'CONDICION_IVA'
      Required = True
    end
    object QClientesEMITE_REMITO: TStringField
      FieldName = 'EMITE_REMITO'
      Origin = 'EMITE_REMITO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesEMITE_FACTURA: TStringField
      FieldName = 'EMITE_FACTURA'
      Origin = 'EMITE_FACTURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesNRO_DE_CUIT: TStringField
      FieldName = 'NRO_DE_CUIT'
      Origin = 'NRO_DE_CUIT'
      Size = 13
    end
    object QClientesACTIVO: TStringField
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      FixedChar = True
      Size = 1
    end
    object QClientesLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
      Origin = 'LIMITE_CREDITO'
    end
    object QClientesSALDOINICIAL: TFloatField
      FieldName = 'SALDOINICIAL'
      Origin = 'SALDOINICIAL'
    end
    object QClientesOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      BlobType = ftMemo
    end
    object QClientesFECHAULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'FECHAULTIMACOMPRA'
      Origin = 'FECHAULTIMACOMPRA'
    end
    object QClientesFECHAALTA: TSQLTimeStampField
      FieldName = 'FECHAALTA'
      Origin = 'FECHAALTA'
    end
    object QClientesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QClientesZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object QClientesVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object QClientesULTIMOPAGO: TSQLTimeStampField
      FieldName = 'ULTIMOPAGO'
      Origin = 'ULTIMOPAGO'
    end
    object QClientesLISTAPRECIOS: TIntegerField
      FieldName = 'LISTAPRECIOS'
      Origin = 'LISTAPRECIOS'
    end
    object QClientesFECHANACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHANACIMIENTO'
      Origin = 'FECHANACIMIENTO'
    end
    object QClientesTIPODOCUMENTO: TSmallintField
      FieldName = 'TIPODOCUMENTO'
      Origin = 'TIPODOCUMENTO'
    end
    object QClientesNRODOCUMENTO: TStringField
      FieldName = 'NRODOCUMENTO'
      Origin = 'NRODOCUMENTO'
      Size = 15
    end
    object QClientesCORREOELECTRONICO: TStringField
      FieldName = 'CORREOELECTRONICO'
      Origin = 'CORREOELECTRONICO'
      Size = 100
    end
    object QClientesCORREOELECTRONICO_2: TStringField
      FieldName = 'CORREOELECTRONICO_2'
      Origin = 'CORREOELECTRONICO_2'
      Size = 100
    end
    object QClientesID_FACTURAPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURAPORDEFECTO'
      Origin = 'ID_FACTURAPORDEFECTO'
    end
    object QClientesID_FACTURACONTADOPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURACONTADOPORDEFECTO'
      Origin = 'ID_FACTURACONTADOPORDEFECTO'
    end
    object QClientesID_NOTADEBITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTADEBITOPORDEFECTO'
      Origin = 'ID_NOTADEBITOPORDEFECTO'
    end
    object QClientesID_NOTACREDITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTACREDITOPORDEFECTO'
      Origin = 'ID_NOTACREDITOPORDEFECTO'
    end
    object QClientesID_TIKETPORDEFECTO: TIntegerField
      FieldName = 'ID_TIKETPORDEFECTO'
      Origin = 'ID_TIKETPORDEFECTO'
    end
    object QClientesID_RECIBOPORDEFECTO: TIntegerField
      FieldName = 'ID_RECIBOPORDEFECTO'
      Origin = 'ID_RECIBOPORDEFECTO'
    end
    object QClientesTIPOABONO: TStringField
      FieldName = 'TIPOABONO'
      Origin = 'TIPOABONO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesID_PLANTILLA: TIntegerField
      FieldName = 'ID_PLANTILLA'
      Origin = 'ID_PLANTILLA'
      Required = True
    end
    object QClientesPERCIBIR_IB: TStringField
      FieldName = 'PERCIBIR_IB'
      Origin = 'PERCIBIR_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesINSCRIPTO_MULTICONVENIO: TStringField
      FieldName = 'INSCRIPTO_MULTICONVENIO'
      Origin = 'INSCRIPTO_MULTICONVENIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField
      FieldName = 'FECHA_VENCIMI_DDJJ_MULTI'
      Origin = 'FECHA_VENCIMI_DDJJ_MULTI'
    end
    object QClientesCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Origin = 'CONTACTO'
      Size = 50
    end
    object QClientesTELEFONO_CONTACTO: TStringField
      FieldName = 'TELEFONO_CONTACTO'
      Origin = 'TELEFONO_CONTACTO'
      Size = 50
    end
    object QClientesCOBRADOR: TStringField
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
      Size = 6
    end
    object QClientesCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
    end
    object QClientesLONGITUD: TStringField
      FieldName = 'LONGITUD'
      Origin = 'LONGITUD'
      Size = 25
    end
    object QClientesLATITUD: TStringField
      FieldName = 'LATITUD'
      Origin = 'LATITUD'
      Size = 25
    end
    object QClientesDIRECCION_CALLE: TStringField
      FieldName = 'DIRECCION_CALLE'
      Origin = 'DIRECCION_CALLE'
      Size = 40
    end
    object QClientesDIRECCION_NUMERO: TStringField
      FieldName = 'DIRECCION_NUMERO'
      Origin = 'DIRECCION_NUMERO'
      Size = 10
    end
    object QClientesDIRECCION_PISO: TStringField
      FieldName = 'DIRECCION_PISO'
      Origin = 'DIRECCION_PISO'
      Size = 10
    end
    object QClientesDIRECCION_DEPTO: TStringField
      FieldName = 'DIRECCION_DEPTO'
      Origin = 'DIRECCION_DEPTO'
      Size = 10
    end
    object QClientesDEUDAMAYOR30: TStringField
      FieldName = 'DEUDAMAYOR30'
      Origin = 'DEUDAMAYOR30'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesDIAS_MAYOR_30: TIntegerField
      FieldName = 'DIAS_MAYOR_30'
      Origin = 'DIAS_MAYOR_30'
    end
    object QClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO_FC_ABONO'
      Origin = 'FECHA_INCIO_FC_ABONO'
    end
    object QClientesMES_ABONOANUAL: TIntegerField
      FieldName = 'MES_ABONOANUAL'
      Origin = 'MES_ABONOANUAL'
    end
    object QClientesFRANQUICIA: TStringField
      FieldName = 'FRANQUICIA'
      Origin = 'FRANQUICIA'
      FixedChar = True
      Size = 1
    end
    object QClientesID_DEPOSITO_FRANQUICIA: TIntegerField
      FieldName = 'ID_DEPOSITO_FRANQUICIA'
      Origin = 'ID_DEPOSITO_FRANQUICIA'
    end
    object QClientesID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
      Origin = 'ID_TRANSPORTE'
    end
    object QClientesIMPRIME_SALDOFACTURA: TStringField
      FieldName = 'IMPRIME_SALDOFACTURA'
      Origin = 'IMPRIME_SALDOFACTURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCORTAR_SERVICIO: TStringField
      FieldName = 'CORTAR_SERVICIO'
      Origin = 'CORTAR_SERVICIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCON_PLANPAGO: TStringField
      FieldName = 'CON_PLANPAGO'
      Origin = 'CON_PLANPAGO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesDIRECCION_POSTAL: TStringField
      FieldName = 'DIRECCION_POSTAL'
      Origin = 'DIRECCION_POSTAL'
      Size = 35
    end
    object QClientesCALLE_1: TStringField
      FieldName = 'CALLE_1'
      Origin = 'CALLE_1'
      Size = 35
    end
    object QClientesCALLE_2: TStringField
      FieldName = 'CALLE_2'
      Origin = 'CALLE_2'
      Size = 35
    end
    object QClientesVENDER_DE_CTDO: TStringField
      FieldName = 'VENDER_DE_CTDO'
      Origin = 'VENDER_DE_CTDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesPRESENTO_F8001: TStringField
      FieldName = 'PRESENTO_F8001'
      Origin = 'PRESENTO_F8001'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesDESDE_F8001: TSQLTimeStampField
      FieldName = 'DESDE_F8001'
      Origin = 'DESDE_F8001'
    end
    object QClientesHASTA_F8001: TSQLTimeStampField
      FieldName = 'HASTA_F8001'
      Origin = 'HASTA_F8001'
    end
    object QClientesID_TARJETACREDITO: TIntegerField
      FieldName = 'ID_TARJETACREDITO'
      Origin = 'ID_TARJETACREDITO'
      Required = True
    end
    object QClientesNRO_TARJETA_C: TStringField
      FieldName = 'NRO_TARJETA_C'
      Origin = 'NRO_TARJETA_C'
    end
    object QClientesNRO_SEG_TC: TStringField
      FieldName = 'NRO_SEG_TC'
      Origin = 'NRO_SEG_TC'
      FixedChar = True
      Size = 4
    end
    object QClientesID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      Required = True
    end
    object QClientesNRO_CTA_BCO: TStringField
      FieldName = 'NRO_CTA_BCO'
      Origin = 'NRO_CTA_BCO'
      Size = 22
    end
    object QClientesCODIGO_COORPORATIVO: TStringField
      FieldName = 'CODIGO_COORPORATIVO'
      Origin = 'CODIGO_COORPORATIVO'
      Size = 6
    end
    object QClientesCUENTA_OPERATIVA: TStringField
      FieldName = 'CUENTA_OPERATIVA'
      Origin = 'CUENTA_OPERATIVA'
      Size = 10
    end
    object QClientesTARJETA_CLIENTE: TStringField
      FieldName = 'TARJETA_CLIENTE'
      Origin = 'TARJETA_CLIENTE'
    end
    object QClientesVENCIMIENTO_TC: TSQLTimeStampField
      FieldName = 'VENCIMIENTO_TC'
      Origin = 'VENCIMIENTO_TC'
    end
    object QClientesFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object QClientesCON_MONITOREO: TStringField
      FieldName = 'CON_MONITOREO'
      Origin = 'CON_MONITOREO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCON_GPRS: TStringField
      FieldName = 'CON_GPRS'
      Origin = 'CON_GPRS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCON_HOSTING: TStringField
      FieldName = 'CON_HOSTING'
      Origin = 'CON_HOSTING'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCOMUNITARIO: TStringField
      FieldName = 'COMUNITARIO'
      Origin = 'COMUNITARIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesID_PRESTADOR: TIntegerField
      FieldName = 'ID_PRESTADOR'
      Origin = 'ID_PRESTADOR'
    end
    object QClientesMES_ADICIONAL: TIntegerField
      FieldName = 'MES_ADICIONAL'
      Origin = 'MES_ADICIONAL'
    end
    object QClientesMES_SEMESTRAL: TIntegerField
      FieldName = 'MES_SEMESTRAL'
      Origin = 'MES_SEMESTRAL'
    end
    object QClientesMOROSO: TStringField
      FieldName = 'MOROSO'
      Origin = 'MOROSO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesPLANTILLA_CIVA: TStringField
      FieldName = 'PLANTILLA_CIVA'
      Origin = 'PLANTILLA_CIVA'
      FixedChar = True
      Size = 1
    end
    object QClientesOBSERVACIONES1: TStringField
      FieldName = 'OBSERVACIONES1'
      Origin = 'OBSERVACIONES1'
      Size = 60
    end
    object QClientesOBSERVACIONES2: TStringField
      FieldName = 'OBSERVACIONES2'
      Origin = 'OBSERVACIONES2'
      Size = 60
    end
    object QClientesAVISO: TStringField
      FieldName = 'AVISO'
      Origin = 'AVISO'
      Size = 250
    end
    object QClientesRUBRO: TIntegerField
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
    end
    object QClientesENVIAR_CPTE_MAIL: TStringField
      FieldName = 'ENVIAR_CPTE_MAIL'
      Origin = 'ENVIAR_CPTE_MAIL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesNRO_IP: TStringField
      FieldName = 'NRO_IP'
      Origin = 'NRO_IP'
      Size = 15
    end
  end
  object QLiq_TRetencion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.* from liqgranos_tiporetencion t'
      'order by t.suma,codigo')
    Left = 584
    Top = 320
    object QLiq_TRetencionCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object QLiq_TRetencionDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QLiq_TRetencionSUMA: TIntegerField
      FieldName = 'SUMA'
      Origin = 'SUMA'
      Required = True
    end
  end
  object QSucursal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.* from sucursal s where s.codigo=:codigo')
    Left = 656
    Top = 528
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
    object QSucursalDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
    end
    object QSucursalLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
    end
    object QSucursalTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Origin = 'TELEFONO1'
      Size = 15
    end
    object QSucursalTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Origin = 'TELEFONO2'
      Size = 15
    end
    object QSucursalRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
    end
    object QSucursalAPLICA_PERCEPCION_IIBB: TStringField
      FieldName = 'APLICA_PERCEPCION_IIBB'
      Origin = 'APLICA_PERCEPCION_IIBB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QSucursalGENERA_XML_COMUN: TStringField
      FieldName = 'GENERA_XML_COMUN'
      Origin = 'GENERA_XML_COMUN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QSucursalHOST: TStringField
      FieldName = 'HOST'
      Origin = 'HOST'
      Size = 250
    end
    object QSucursalCERTIFICADO_ELEC: TStringField
      FieldName = 'CERTIFICADO_ELEC'
      Origin = 'CERTIFICADO_ELEC'
      Size = 100
    end
    object QSucursalCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QSucursalRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object QLiq_TGranos: TFDQuery
    BeforeInsert = QLiq_TGranosBeforeInsert
    AfterPost = QLiq_TGranosAfterPost
    AfterDelete = QLiq_TGranosAfterPost
    OnNewRecord = QLiq_TGranosNewRecord
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.* from liqgranos_tipograno t'
      'order by t.detalle')
    Left = 584
    Top = 264
    object QLiq_TGranosID: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLiq_TGranosDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
  end
  object DSPLiqCab: TDataSetProvider
    DataSet = QLiqCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 24
  end
  object CDSLiqCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPLiqCab'
    OnNewRecord = CDSLiqCabNewRecord
    Left = 224
    Top = 24
    object CDSLiqCabID_LQ: TIntegerField
      FieldName = 'ID_LQ'
      Origin = 'ID_LQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSLiqCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object CDSLiqCabFECHAFISCAL: TSQLTimeStampField
      FieldName = 'FECHAFISCAL'
      Origin = 'FECHAFISCAL'
      Required = True
    end
    object CDSLiqCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSLiqCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSLiqCabTIPO_OPERACION: TIntegerField
      FieldName = 'TIPO_OPERACION'
      Origin = 'TIPO_OPERACION'
      Required = True
    end
    object CDSLiqCabTIPO_ACTIVIDAD: TIntegerField
      FieldName = 'TIPO_ACTIVIDAD'
      Origin = 'TIPO_ACTIVIDAD'
      Required = True
    end
    object CDSLiqCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
      OnSetText = CDSLiqCabSUCURSALSetText
    end
    object CDSLiqCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSLiqCabLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      FixedChar = True
      Size = 1
    end
    object CDSLiqCabSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Origin = 'SUCFAC'
      OnSetText = CDSLiqCabSUCFACSetText
      Size = 4
    end
    object CDSLiqCabNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Origin = 'NUMEROFAC'
      OnSetText = CDSLiqCabNUMEROFACSetText
      Size = 8
    end
    object CDSLiqCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      OnSetText = CDSLiqCabCODIGOSetText
      Size = 6
    end
    object CDSLiqCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSLiqCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSLiqCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object CDSLiqCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object CDSLiqCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object CDSLiqCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
    end
    object CDSLiqCabCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSLiqCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 60
    end
    object CDSLiqCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      Size = 60
    end
    object CDSLiqCabINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Origin = 'INGRESA_A_CTACTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSLiqCabINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Origin = 'INGRESA_LIBRO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSLiqCabMERCADERIA_NROPBTE: TStringField
      FieldName = 'MERCADERIA_NROPBTE'
      Origin = 'MERCADERIA_NROPBTE'
      Size = 13
    end
    object CDSLiqCabMERCADERIA_GRADO: TStringField
      FieldName = 'MERCADERIA_GRADO'
      Origin = 'MERCADERIA_GRADO'
      Size = 2
    end
    object CDSLiqCabMERCADERIA_FACTOR: TFloatField
      FieldName = 'MERCADERIA_FACTOR'
      Origin = 'MERCADERIA_FACTOR'
    end
    object CDSLiqCabMERCADERIA_CON_PROTEI: TFloatField
      FieldName = 'MERCADERIA_CON_PROTEI'
      Origin = 'MERCADERIA_CON_PROTEI'
    end
    object CDSLiqCabMERCADERIA_PESO: TFloatField
      FieldName = 'MERCADERIA_PESO'
      Origin = 'MERCADERIA_PESO'
      DisplayFormat = ',0.00'
    end
    object CDSLiqCabMERCADERIA_PROCEDEN: TIntegerField
      FieldName = 'MERCADERIA_PROCEDEN'
      Origin = 'MERCADERIA_PROCEDEN'
    end
    object CDSLiqCabOPERACION_CANTIDAD: TFloatField
      FieldName = 'OPERACION_CANTIDAD'
      Origin = 'OPERACION_CANTIDAD'
      OnSetText = CDSLiqCabOPERACION_CANTIDADSetText
      DisplayFormat = ',0.00'
    end
    object CDSLiqCabOPERACION_PRECIOKG: TFloatField
      FieldName = 'OPERACION_PRECIOKG'
      Origin = 'OPERACION_PRECIOKG'
      OnSetText = CDSLiqCabOPERACION_PRECIOKGSetText
      DisplayFormat = ',0.00'
    end
    object CDSLiqCabOPERACION_SUBTOT: TFloatField
      FieldName = 'OPERACION_SUBTOT'
      Origin = 'OPERACION_SUBTOT'
      OnChange = CDSLiqCabOPERACION_SUBTOTChange
      DisplayFormat = ',0.00'
    end
    object CDSLiqCabOPERACION_COD_ALICUOTAIVA: TIntegerField
      FieldName = 'OPERACION_COD_ALICUOTAIVA'
      Origin = 'OPERACION_COD_ALICUOTAIVA'
      Required = True
    end
    object CDSLiqCabOPERACION_ALICUOTA: TFloatField
      FieldName = 'OPERACION_ALICUOTA'
      Origin = 'OPERACION_ALICUOTA'
      Required = True
      OnSetText = CDSLiqCabOPERACION_ALICUOTASetText
    end
    object CDSLiqCabOPERACION_IMPO_IVA: TFloatField
      FieldName = 'OPERACION_IMPO_IVA'
      Origin = 'OPERACION_IMPO_IVA'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSLiqCabOPERACION_OPER_CIVA: TFloatField
      FieldName = 'OPERACION_OPER_CIVA'
      Origin = 'OPERACION_OPER_CIVA'
      Required = True
      OnChange = CDSLiqCabOPERACION_OPER_CIVAChange
      DisplayFormat = ',0.00'
    end
    object CDSLiqCabCONDICION_PRECIO_TN: TFloatField
      FieldName = 'CONDICION_PRECIO_TN'
      Origin = 'CONDICION_PRECIO_TN'
      DisplayFormat = ',0.000'
    end
    object CDSLiqCabCONDICION_GRADO: TStringField
      FieldName = 'CONDICION_GRADO'
      Origin = 'CONDICION_GRADO'
      Size = 2
    end
    object CDSLiqCabCONDICION_GRANO: TIntegerField
      FieldName = 'CONDICION_GRANO'
      Origin = 'CONDICION_GRANO'
    end
    object CDSLiqCabCONDICION_FLETE: TFloatField
      FieldName = 'CONDICION_FLETE'
      Origin = 'CONDICION_FLETE'
      DisplayFormat = ',0.00'
    end
    object CDSLiqCabCONDICION_PUERTO: TIntegerField
      FieldName = 'CONDICION_PUERTO'
      Origin = 'CONDICION_PUERTO'
    end
    object CDSLiqCabTOTAL_OPERACION: TFloatField
      FieldName = 'TOTAL_OPERACION'
      Origin = 'TOTAL_OPERACION'
      DisplayFormat = ',0.00'
    end
    object CDSLiqCabTOTAL_RET_AFIP: TFloatField
      FieldName = 'TOTAL_RET_AFIP'
      Origin = 'TOTAL_RET_AFIP'
      DisplayFormat = ',0.00'
    end
    object CDSLiqCabNETO_A_PAGAR: TFloatField
      FieldName = 'NETO_A_PAGAR'
      Origin = 'NETO_A_PAGAR'
      DisplayFormat = ',0.00'
    end
    object CDSLiqCabTOTAL_PERCEPCIONES: TFloatField
      FieldName = 'TOTAL_PERCEPCIONES'
      Origin = 'TOTAL_PERCEPCIONES'
      DisplayFormat = ',0.00'
    end
    object CDSLiqCabTOTAL_OTRAS_RETENCIONES: TFloatField
      FieldName = 'TOTAL_OTRAS_RETENCIONES'
      Origin = 'TOTAL_OTRAS_RETENCIONES'
      DisplayFormat = ',0.00'
    end
    object CDSLiqCabIVARG2300: TFloatField
      FieldName = 'IVARG2300'
      Origin = 'IVARG2300'
      DisplayFormat = ',0.00'
    end
    object CDSLiqCabTOTAL_DEDUCIONES: TFloatField
      FieldName = 'TOTAL_DEDUCIONES'
      Origin = 'TOTAL_DEDUCIONES'
      DisplayFormat = ',0.00'
    end
    object CDSLiqCabPAGO_SEGUN_COND: TFloatField
      FieldName = 'PAGO_SEGUN_COND'
      Origin = 'PAGO_SEGUN_COND'
      DisplayFormat = ',0.00'
    end
    object CDSLiqCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object CDSLiqCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object CDSLiqCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
      OnSetText = CDSLiqCabID_TIPOCOMPROBANTESetText
    end
    object CDSLiqCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSLiqCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object CDSLiqCabMUESTRACOD_IVA: TFloatField
      FieldKind = fkLookup
      FieldName = 'MUESTRACOD_IVA'
      LookupDataSet = QGravamen
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TASA'
      KeyFields = 'OPERACION_COD_ALICUOTAIVA'
      ProviderFlags = []
      Lookup = True
    end
    object CDSLiqCabCOE: TStringField
      FieldName = 'COE'
      Origin = 'COE'
      Size = 12
    end
  end
  object DSPLiqDeducciones: TDataSetProvider
    DataSet = QLiqDeducciones
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 88
  end
  object CDSLiqDeducciones: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPLiqDeducciones'
    AfterPost = CDSLiqDeduccionesAfterPost
    OnNewRecord = CDSLiqDeduccionesNewRecord
    Left = 232
    Top = 96
    object CDSLiqDeduccionesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSLiqDeduccionesID_LIQ: TIntegerField
      FieldName = 'ID_LIQ'
      Origin = 'ID_LIQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSLiqDeduccionesCONCEPTOS: TStringField
      DisplayLabel = 'Concepto'
      FieldName = 'CONCEPTOS'
      Origin = 'CONCEPTOS'
      Size = 2
    end
    object CDSLiqDeduccionesMUESTRACONCEPTO: TStringField
      DisplayLabel = 'Concpeto'
      FieldKind = fkLookup
      FieldName = 'MUESTRACONCEPTO'
      LookupDataSet = QLiq_TDeducion
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DETALLE'
      KeyFields = 'CONCEPTOS'
      Lookup = True
    end
    object CDSLiqDeduccionesPORCENTAJE: TFloatField
      DisplayLabel = '%'
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
      DisplayFormat = ',0.00'
    end
    object CDSLiqDeduccionesBASE_CALCULO: TFloatField
      DisplayLabel = 'Base de Calculo'
      FieldName = 'BASE_CALCULO'
      Origin = 'BASE_CALCULO'
      OnSetText = CDSLiqDeduccionesBASE_CALCULOSetText
      DisplayFormat = ',0.00'
    end
    object CDSLiqDeduccionesALICUOTA: TFloatField
      DisplayLabel = 'Alicuota'
      FieldName = 'ALICUOTA'
      Origin = 'ALICUOTA'
      OnSetText = CDSLiqDeduccionesALICUOTASetText
      DisplayFormat = '0.00'
    end
    object CDSLiqDeduccionesIMPORTE_IVA: TFloatField
      DisplayLabel = 'Importe Iva'
      FieldName = 'IMPORTE_IVA'
      Origin = 'IMPORTE_IVA'
      OnSetText = CDSLiqDeduccionesIMPORTE_IVASetText
      DisplayFormat = ',0.00'
    end
    object CDSLiqDeduccionesDEDUCIONES: TFloatField
      DisplayLabel = 'Deducciones'
      FieldName = 'DEDUCIONES'
      Origin = 'DEDUCIONES'
      DisplayFormat = ',0.00'
    end
    object CDSLiqDeduccionesDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 30
    end
    object CDSLiqDeduccionesCOD_ALICUOTA: TIntegerField
      FieldName = 'COD_ALICUOTA'
      Origin = 'COD_ALICUOTA'
      Required = True
    end
    object CDSLiqDeduccionesMUESTRAIVA: TFloatField
      DisplayLabel = 'IVA'
      FieldKind = fkLookup
      FieldName = 'MUESTRAIVA'
      LookupDataSet = QGravamen
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TASA'
      KeyFields = 'COD_ALICUOTA'
      Lookup = True
    end
  end
  object CDSLiqRetenciones: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSpLiqRetenciones'
    BeforePost = CDSLiqRetencionesBeforePost
    AfterPost = CDSLiqRetencionesAfterPost
    OnNewRecord = CDSLiqRetencionesNewRecord
    Left = 224
    Top = 168
    object CDSLiqRetencionesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSLiqRetencionesID_LIQ: TIntegerField
      FieldName = 'ID_LIQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSLiqRetencionesCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Required = True
      Size = 2
    end
    object CDSLiqRetencionesDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 30
    end
    object CDSLiqRetencionesCERT_RET: TStringField
      DisplayLabel = 'Cert.Ret.'
      FieldName = 'CERT_RET'
    end
    object CDSLiqRetencionesIMP_CERT_RET: TFloatField
      DisplayLabel = 'Imp.Cert.Ret.'
      FieldName = 'IMP_CERT_RET'
      DisplayFormat = ',0.00'
    end
    object CDSLiqRetencionesFECHA_CERT: TSQLTimeStampField
      DisplayLabel = 'Fecha Cert.'
      FieldName = 'FECHA_CERT'
      EditMask = '!99/99/00;1;_'
    end
    object CDSLiqRetencionesBASE_CALCULO: TFloatField
      DisplayLabel = 'Base Calculo'
      FieldName = 'BASE_CALCULO'
      DisplayFormat = ',0.00'
    end
    object CDSLiqRetencionesALICUOTA: TFloatField
      DisplayLabel = 'Alicuota '
      FieldName = 'ALICUOTA'
      OnSetText = CDSLiqRetencionesALICUOTASetText
      DisplayFormat = ',0.00'
    end
    object CDSLiqRetencionesRETENCION: TFloatField
      DisplayLabel = 'Rtencion'
      FieldName = 'RETENCION'
      DisplayFormat = ',0.00'
    end
    object CDSLiqRetencionesMUESTRACONCPETO: TStringField
      DisplayLabel = 'Concpeto'
      FieldKind = fkLookup
      FieldName = 'MUESTRACONCPETO'
      LookupDataSet = QLiq_TRetencion
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DETALLE'
      KeyFields = 'CONCEPTO'
      Lookup = True
    end
    object CDSLiqRetencionesSUMA: TIntegerField
      FieldName = 'SUMA'
      Required = True
    end
  end
  object DSpLiqRetenciones: TDataSetProvider
    DataSet = QLiqRetenciones
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 160
  end
  object ibgCab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'next_id_liqgranos_cab'
    SystemGenerators = False
    Left = 320
    Top = 24
  end
  object ibgDeduciones: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_LIQGRANOS_DEDUCCIONES'
    SystemGenerators = False
    Left = 320
    Top = 96
  end
  object ibgRetenciones: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_LIQGRANOS_RETENCIONES'
    SystemGenerators = False
    Left = 320
    Top = 168
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = DMMain_2.QEmpresa
    UpdateMode = upWhereKeyOnly
    Left = 427
    Top = 381
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    Left = 499
    Top = 386
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
      Size = 1
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
    object CDSEmpresaTASA_PERCEPCION_IB: TFMTBCDField
      FieldName = 'TASA_PERCEPCION_IB'
      Precision = 15
      Size = 3
    end
    object CDSEmpresaMINO_IMP_PERCEP_IB: TFMTBCDField
      FieldName = 'MINO_IMP_PERCEP_IB'
      Precision = 15
      Size = 3
    end
    object CDSEmpresaPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
    end
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = []
    Left = 232
    Top = 303
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 312
    Top = 304
    object CDSBuscaSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSBuscaSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
  end
  object DSGradosGranos: TDataSource
    DataSet = QLiq_GradosGranos
    Left = 696
    Top = 16
  end
  object DSTCertificados: TDataSource
    DataSet = QLiq_TCertificado
    Left = 696
    Top = 160
  end
  object DSTDeducion: TDataSource
    DataSet = QLiq_TDeducion
    Left = 696
    Top = 208
  end
  object DSTGranos: TDataSource
    DataSet = QLiq_TGranos
    Left = 696
    Top = 256
  end
  object DSTRetenciones: TDataSource
    DataSet = QLiq_TRetencion
    Left = 696
    Top = 304
  end
  object DSPuertos: TDataSource
    DataSet = QLiq_Puertos
    Left = 696
    Top = 64
  end
  object DSTActividad: TDataSource
    DataSet = QLiq_TActividad
    Left = 696
    Top = 112
  end
  object DSDeducciones: TDataSource
    DataSet = CDSLiqDeducciones
    Left = 400
    Top = 96
  end
  object DSRetenciones: TDataSource
    DataSet = CDSLiqRetenciones
    Left = 408
    Top = 176
  end
  object QComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      'id_comprobante=:id  '
      'and (tipo_comprob='#39'LG'#39' )'
      'and compra_venta='#39'V'#39
      'and sucursal=:suc')
    Left = 328
    Top = 520
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
  object QGravamen: TFDQuery
    Active = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from gravamen')
    Left = 152
    Top = 464
    object QGravamenCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QGravamenDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 15
    end
    object QGravamenTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
      DisplayFormat = '0.00'
    end
  end
  object DSGravamen: TDataSource
    DataSet = QGravamen
    Left = 224
    Top = 456
  end
end
