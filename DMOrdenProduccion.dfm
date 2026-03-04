object DatosOProduccion: TDatosOProduccion
  OnDestroy = DataModuleDestroy
  Height = 588
  Width = 961
  object QOProdCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select op.*,'
      '      cp.denominacion as MuestraComprobante,'
      
        '      s.detalle as MuestraSucursal,cl.razon_social as MuestraCli' +
        'ente,'
      '      cp.id_comprobante as Id_tipoComprobante,'
      
        '      pr.nrocpbte as MuestraNroPresup,pr.sub_nro as MuestraSubNr' +
        'o, pr.nro_orden_comp,pr.fecha_oc,pr.id_obra,pr.id_obra_sector,'
      '      ob.detalle as MuestraObra,sec.Sector as MuestraSector,'
      
        '      pr.fecha_entrega_2 as MuestraFechaEntrega_2,pr.fecha_entre' +
        'ga as MuestraFechaEntrega_1,'
      
        '      pr.tiene_plano as MuestraTienePlano,pr.referencia as Muest' +
        'raReferencia,'
      
        '      pri.nombre as MuestraNombreCOntato,pri.telefono as Muestra' +
        'TelefonoContacto, pri.email as MuestraCorreoContacto  from orden' +
        'produccion_cab op'
      'left join sucursal s on s.codigo=op.sucursal'
      'left join clientes cl on cl.codigo=op.cliente'
      'left join prescab pr on pr.id_pr=op.id_presupuesto'
      'left join obras ob on ob.codigo=pr.id_obra'
      
        'left join obras_sector sec on sec.id_sector = pr.id_obra_sector ' +
        'and sec.cod_obra=pr.id_obra'
      'left join pres_incid_contacto pri on pri.id_presupuesto=pr.id_pr'
      'left join comprobantes cp on cp.clase_comprob=op.ClaseCpbte and'
      '          cp.letra=op.Letraop and'
      '          cp.sucursal=op.sucursal and'
      '          cp.tipo_comprob=op.tipocpbte'
      'where op.id=:id')
    Left = 17
    Top = 19
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QOProdCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOProdCabPRODUCTOR: TStringField
      FieldName = 'PRODUCTOR'
      Origin = 'PRODUCTOR'
      Size = 50
    end
    object QOProdCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QOProdCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QOProdCabDEPOSITO_ORIGEN: TIntegerField
      FieldName = 'DEPOSITO_ORIGEN'
      Origin = 'DEPOSITO_ORIGEN'
    end
    object QOProdCabDEPOSITO_DESTINO: TIntegerField
      FieldName = 'DEPOSITO_DESTINO'
      Origin = 'DEPOSITO_DESTINO'
    end
    object QOProdCabLETRAOP: TStringField
      FieldName = 'LETRAOP'
      Origin = 'LETRAOP'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOProdCabSUCOP: TStringField
      FieldName = 'SUCOP'
      Origin = 'SUCOP'
      Required = True
      Size = 4
    end
    object QOProdCabNUMEROOP: TStringField
      FieldName = 'NUMEROOP'
      Origin = 'NUMEROOP'
      Required = True
      Size = 8
    end
    object QOProdCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QOProdCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QOProdCabNOMBRE_DEPOSITO_ORIGEN: TStringField
      FieldName = 'NOMBRE_DEPOSITO_ORIGEN'
      Origin = 'NOMBRE_DEPOSITO_ORIGEN'
      Size = 25
    end
    object QOProdCabNOMBRE_DEPOSITO_DESTINO: TStringField
      FieldName = 'NOMBRE_DEPOSITO_DESTINO'
      Origin = 'NOMBRE_DEPOSITO_DESTINO'
      Size = 25
    end
    object QOProdCabOBS1: TStringField
      FieldName = 'OBS1'
      Origin = 'OBS1'
      Size = 100
    end
    object QOProdCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QOProdCabESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOProdCabID_FCVTA: TIntegerField
      FieldName = 'ID_FCVTA'
      Origin = 'ID_FCVTA'
      Required = True
    end
    object QOProdCabCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object QOProdCabNOTAS: TMemoField
      FieldName = 'NOTAS'
      Origin = 'NOTAS'
      BlobType = ftMemo
    end
    object QOProdCabID_PRESUPUESTO: TIntegerField
      FieldName = 'ID_PRESUPUESTO'
      Origin = 'ID_PRESUPUESTO'
      Required = True
    end
    object QOProdCabSUB_NRO: TStringField
      FieldName = 'SUB_NRO'
      Origin = 'SUB_NRO'
      Required = True
      Size = 2
    end
    object QOProdCabMUESTRACOMPROBANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object QOProdCabMUESTRASUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object QOProdCabMUESTRACLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACLIENTE'
      Origin = 'RAZON_SOCIAL'
      ProviderFlags = []
      Size = 35
    end
    object QOProdCabID_TIPOCOMPROBANTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QOProdCabFECHA_INICIADA: TSQLTimeStampField
      FieldName = 'FECHA_INICIADA'
      Origin = 'FECHA_INICIADA'
      Required = True
    end
    object QOProdCabFECHA_INCIO_PROD: TSQLTimeStampField
      FieldName = 'FECHA_INCIO_PROD'
      Origin = 'FECHA_INCIO_PROD'
    end
    object QOProdCabFECHA_FINALIZADA: TSQLTimeStampField
      FieldName = 'FECHA_FINALIZADA'
      Origin = 'FECHA_FINALIZADA'
    end
    object QOProdCabFECHA_ENTREGA_PREV: TSQLTimeStampField
      FieldName = 'FECHA_ENTREGA_PREV'
      Origin = 'FECHA_ENTREGA_PREV'
    end
    object QOProdCabFECHA_INGENIERIA: TSQLTimeStampField
      FieldName = 'FECHA_INGENIERIA'
      Origin = 'FECHA_INGENIERIA'
    end
    object QOProdCabMUESTRANROPRESUP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANROPRESUP'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object QOProdCabNRO_ORDEN_COMP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NRO_ORDEN_COMP'
      Origin = 'NRO_ORDEN_COMP'
      ProviderFlags = []
    end
    object QOProdCabFECHA_OC: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'FECHA_OC'
      Origin = 'FECHA_OC'
      ProviderFlags = []
    end
    object QOProdCabID_OBRA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_OBRA'
      Origin = 'ID_OBRA'
      ProviderFlags = []
    end
    object QOProdCabID_OBRA_SECTOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_OBRA_SECTOR'
      Origin = 'ID_OBRA_SECTOR'
      ProviderFlags = []
    end
    object QOProdCabMUESTRAOBRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAOBRA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 100
    end
    object QOProdCabMUESTRASECTOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASECTOR'
      Origin = 'SECTOR'
      ProviderFlags = []
      Size = 100
    end
    object QOProdCabMUESTRAFECHAENTREGA_2: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAFECHAENTREGA_2'
      Origin = 'FECHA_ENTREGA_2'
      ProviderFlags = []
    end
    object QOProdCabMUESTRAFECHAENTREGA_1: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAFECHAENTREGA_1'
      Origin = 'FECHA_ENTREGA'
      ProviderFlags = []
    end
    object QOProdCabMUESTRATIENEPLANO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATIENEPLANO'
      Origin = 'TIENE_PLANO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object QOProdCabMUESTRAREFERENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAREFERENCIA'
      Origin = 'REFERENCIA'
      ProviderFlags = []
      Size = 50
    end
    object QOProdCabMUESTRANOMBRECONTATO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANOMBRECONTATO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 150
    end
    object QOProdCabMUESTRATELEFONOCONTACTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATELEFONOCONTACTO'
      Origin = 'TELEFONO'
      ProviderFlags = []
      Size = 25
    end
    object QOProdCabMUESTRACORREOCONTACTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACORREOCONTACTO'
      Origin = 'EMAIL'
      ProviderFlags = []
      Size = 100
    end
    object QOProdCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QOProdCabMUESTRASUBNRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUBNRO'
      Origin = 'SUB_NRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QOProdCabID_OP_PREV: TIntegerField
      FieldName = 'ID_OP_PREV'
      Origin = 'ID_OP_PREV'
      Required = True
    end
    object QOProdCabID_OP_NEXT: TIntegerField
      FieldName = 'ID_OP_NEXT'
      Origin = 'ID_OP_NEXT'
      Required = True
    end
  end
  object DSPOProdCab: TDataSetProvider
    DataSet = QOProdCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 108
    Top = 19
  end
  object CDSOProdCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPOProdCab'
    OnNewRecord = CDSOProdCabNewRecord
    Left = 203
    Top = 19
    object CDSOProdCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOProdCabPRODUCTOR: TStringField
      FieldName = 'PRODUCTOR'
      Origin = 'PRODUCTOR'
      Size = 50
    end
    object CDSOProdCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSOProdCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSOProdCabDEPOSITO_ORIGEN: TIntegerField
      FieldName = 'DEPOSITO_ORIGEN'
      Origin = 'DEPOSITO_ORIGEN'
      OnSetText = CDSOProdCabDEPOSITO_ORIGENSetText
    end
    object CDSOProdCabDEPOSITO_DESTINO: TIntegerField
      FieldName = 'DEPOSITO_DESTINO'
      Origin = 'DEPOSITO_DESTINO'
      OnSetText = CDSOProdCabDEPOSITO_DESTINOSetText
    end
    object CDSOProdCabLETRAOP: TStringField
      FieldName = 'LETRAOP'
      Origin = 'LETRAOP'
      Required = True
      Size = 1
    end
    object CDSOProdCabSUCOP: TStringField
      FieldName = 'SUCOP'
      Origin = 'SUCOP'
      Required = True
      OnSetText = CDSOProdCabSUCOPSetText
      Size = 4
    end
    object CDSOProdCabNUMEROOP: TStringField
      FieldName = 'NUMEROOP'
      Origin = 'NUMEROOP'
      Required = True
      OnSetText = CDSOProdCabNUMEROOPSetText
      Size = 8
    end
    object CDSOProdCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSOProdCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
      OnSetText = CDSOProdCabSUCURSALSetText
    end
    object CDSOProdCabNOMBRE_DEPOSITO_ORIGEN: TStringField
      FieldName = 'NOMBRE_DEPOSITO_ORIGEN'
      Origin = 'NOMBRE_DEPOSITO_ORIGEN'
      Size = 25
    end
    object CDSOProdCabNOMBRE_DEPOSITO_DESTINO: TStringField
      FieldName = 'NOMBRE_DEPOSITO_DESTINO'
      Origin = 'NOMBRE_DEPOSITO_DESTINO'
      Size = 25
    end
    object CDSOProdCabOBS1: TStringField
      FieldName = 'OBS1'
      Origin = 'OBS1'
      Size = 100
    end
    object CDSOProdCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object CDSOProdCabESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      OnChange = CDSOProdCabESTADOChange
      FixedChar = True
      Size = 1
    end
    object CDSOProdCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object CDSOProdCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSOProdCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
      OnSetText = CDSOProdCabID_TIPOCOMPROBANTESetText
    end
    object CDSOProdCabID_FCVTA: TIntegerField
      FieldName = 'ID_FCVTA'
      Origin = 'ID_FCVTA'
      Required = True
    end
    object CDSOProdCabCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      OnSetText = CDSOProdCabCLIENTESetText
      Size = 6
    end
    object CDSOProdCabMUESTRACLIENTE: TStringField
      FieldName = 'MUESTRACLIENTE'
      Origin = 'RAZON_SOCIAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSOProdCabNOTAS: TMemoField
      FieldName = 'NOTAS'
      Origin = 'NOTAS'
      BlobType = ftMemo
    end
    object CDSOProdCabID_PRESUPUESTO: TIntegerField
      FieldName = 'ID_PRESUPUESTO'
      Origin = 'ID_PRESUPUESTO'
      Required = True
    end
    object CDSOProdCabMUESTRANROPRESUP: TStringField
      FieldName = 'MUESTRANROPRESUP'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSOProdCabSUB_NRO: TStringField
      FieldName = 'SUB_NRO'
      Origin = 'SUB_NRO'
      Required = True
      Size = 2
    end
    object CDSOProdCabFECHA_INICIADA: TSQLTimeStampField
      FieldName = 'FECHA_INICIADA'
      Origin = 'FECHA_INICIADA'
      Required = True
    end
    object CDSOProdCabFECHA_INCIO_PROD: TSQLTimeStampField
      FieldName = 'FECHA_INCIO_PROD'
      Origin = 'FECHA_INCIO_PROD'
    end
    object CDSOProdCabFECHA_FINALIZADA: TSQLTimeStampField
      FieldName = 'FECHA_FINALIZADA'
      Origin = 'FECHA_FINALIZADA'
    end
    object CDSOProdCabFECHA_ENTREGA_PREV: TSQLTimeStampField
      FieldName = 'FECHA_ENTREGA_PREV'
      Origin = 'FECHA_ENTREGA_PREV'
    end
    object CDSOProdCabFECHA_INGENIERIA: TSQLTimeStampField
      FieldName = 'FECHA_INGENIERIA'
      Origin = 'FECHA_INGENIERIA'
    end
    object CDSOProdCabNRO_ORDEN_COMP: TStringField
      FieldName = 'NRO_ORDEN_COMP'
      Origin = 'NRO_ORDEN_COMP'
      ProviderFlags = []
    end
    object CDSOProdCabFECHA_OC: TSQLTimeStampField
      FieldName = 'FECHA_OC'
      Origin = 'FECHA_OC'
      ProviderFlags = []
    end
    object CDSOProdCabID_OBRA: TIntegerField
      FieldName = 'ID_OBRA'
      Origin = 'ID_OBRA'
      ProviderFlags = []
    end
    object CDSOProdCabID_OBRA_SECTOR: TIntegerField
      FieldName = 'ID_OBRA_SECTOR'
      Origin = 'ID_OBRA_SECTOR'
      ProviderFlags = []
    end
    object CDSOProdCabMUESTRAOBRA: TStringField
      FieldName = 'MUESTRAOBRA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 100
    end
    object CDSOProdCabMUESTRASECTOR: TStringField
      FieldName = 'MUESTRASECTOR'
      Origin = 'SECTOR'
      ProviderFlags = []
      Size = 100
    end
    object CDSOProdCabMUESTRAFECHAENTREGA_2: TSQLTimeStampField
      FieldName = 'MUESTRAFECHAENTREGA_2'
      Origin = 'FECHA_ENTREGA_2'
      ProviderFlags = []
    end
    object CDSOProdCabMUESTRAFECHAENTREGA_1: TSQLTimeStampField
      FieldName = 'MUESTRAFECHAENTREGA_1'
      Origin = 'FECHA_ENTREGA'
      ProviderFlags = []
    end
    object CDSOProdCabMUESTRATIENEPLANO: TStringField
      FieldName = 'MUESTRATIENEPLANO'
      Origin = 'TIENE_PLANO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CDSOProdCabMUESTRAREFERENCIA: TStringField
      FieldName = 'MUESTRAREFERENCIA'
      Origin = 'REFERENCIA'
      ProviderFlags = []
      Size = 50
    end
    object CDSOProdCabMUESTRANOMBRECONTATO: TStringField
      FieldName = 'MUESTRANOMBRECONTATO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 150
    end
    object CDSOProdCabMUESTRATELEFONOCONTACTO: TStringField
      FieldName = 'MUESTRATELEFONOCONTACTO'
      Origin = 'TELEFONO'
      ProviderFlags = []
      Size = 25
    end
    object CDSOProdCabMUESTRACORREOCONTACTO: TStringField
      FieldName = 'MUESTRACORREOCONTACTO'
      Origin = 'EMAIL'
      ProviderFlags = []
      Size = 100
    end
    object CDSOProdCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object CDSOProdCabMUESTRASUBNRO: TStringField
      FieldName = 'MUESTRASUBNRO'
      Origin = 'SUB_NRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object CDSOProdCabID_OP_PREV: TIntegerField
      FieldName = 'ID_OP_PREV'
      Origin = 'ID_OP_PREV'
      Required = True
      OnGetText = CDSOProdCabID_OP_PREVGetText
    end
    object CDSOProdCabID_OP_NEXT: TIntegerField
      FieldName = 'ID_OP_NEXT'
      Origin = 'ID_OP_NEXT'
      Required = True
      OnGetText = CDSOProdCabID_OP_NEXTGetText
    end
  end
  object ibgOProdCab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_ORDENPRODUCCION_CAB'
    SystemGenerators = False
    Left = 291
    Top = 19
  end
  object QOProdDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select od.*,s.siglas as MuestraSiglas,sd.cantidad_saldo as Muest' +
        'raSaldo, '
      
        'od.cantidad - coalesce((select sum(pd.cant_fabric) from postes_p' +
        'arte_diario pd where pd.id_oprod_det=od.id),0) as MuestraSaldoDi' +
        'ario,'
      ' s.reemplazo_stk as CodigoAlternativo,'
      '  pr.nrocpbte as MuestraPresupuesto,pr.sub_nro as MuestraSubNro,'
      
        '  coalesce( (select sum(pd.cant_fabric) from postes_parte_diario' +
        ' pd where pd.id_oprod_det=od.id),0) as MuestraPartesDiario'
      ''
      '  from ordenproduccion_det od'
      'left join stock s on s.codigo_stk=od.codigo'
      'left join ordenproduccion_sub_det sd on sd.id_det_op=od.id'
      'left join prescab pr on pr.id_pr=od.id_presu_cab'
      'where od.id_opcab=:id and od.particion<>'#39'S'#39)
    Left = 17
    Top = 75
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QOProdDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOProdDetID_OPCAB: TIntegerField
      FieldName = 'ID_OPCAB'
      Origin = 'ID_OPCAB'
      Required = True
    end
    object QOProdDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QOProdDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QOProdDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QOProdDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QOProdDetDEPOSITO_DESTINO: TIntegerField
      FieldName = 'DEPOSITO_DESTINO'
      Origin = 'DEPOSITO_DESTINO'
      Required = True
    end
    object QOProdDetSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QOProdDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QOProdDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QOProdDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object QOProdDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      Size = 1
    end
    object QOProdDetESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object QOProdDetCOSTO: TFloatField
      FieldName = 'COSTO'
      Origin = 'COSTO'
    end
    object QOProdDetEN_PLANIFICACION: TStringField
      FieldName = 'EN_PLANIFICACION'
      Origin = 'EN_PLANIFICACION'
      FixedChar = True
      Size = 1
    end
    object QOProdDetPARTICION: TStringField
      FieldName = 'PARTICION'
      Origin = 'PARTICION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOProdDetID_PRESU_CAB: TIntegerField
      FieldName = 'ID_PRESU_CAB'
      Origin = 'ID_PRESU_CAB'
      Required = True
    end
    object QOProdDetID_PRESU_DET: TIntegerField
      FieldName = 'ID_PRESU_DET'
      Origin = 'ID_PRESU_DET'
      Required = True
    end
    object QOProdDetMUESTRASIGLAS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASIGLAS'
      Origin = 'SIGLAS'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QOProdDetMUESTRASALDO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASALDO'
      Origin = 'CANTIDAD_SALDO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QOProdDetCODIGOALTERNATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGOALTERNATIVO'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
      ReadOnly = True
    end
    object QOProdDetESPECIFICACION: TStringField
      FieldName = 'ESPECIFICACION'
      Origin = 'ESPECIFICACION'
      Size = 45
    end
    object QOProdDetITEM_DETALLE: TStringField
      FieldName = 'ITEM_DETALLE'
      Origin = 'ITEM_DETALLE'
      Size = 50
    end
    object QOProdDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QOProdDetFECHA_ENTREGA: TSQLTimeStampField
      FieldName = 'FECHA_ENTREGA'
      Origin = 'FECHA_ENTREGA'
    end
    object QOProdDetFECHA_INIC_PRODUCC: TSQLTimeStampField
      FieldName = 'FECHA_INIC_PRODUCC'
      Origin = 'FECHA_INIC_PRODUCC'
    end
    object QOProdDetCANT_ENTREGADA: TFloatField
      FieldName = 'CANT_ENTREGADA'
      Origin = 'CANT_ENTREGADA'
      Required = True
    end
    object QOProdDetMUESTRAPRESUPUESTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAPRESUPUESTO'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object QOProdDetMUESTRASUBNRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUBNRO'
      Origin = 'SUB_NRO'
      ProviderFlags = []
      Size = 2
    end
    object QOProdDetMUESTRASALDODIARIO: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Saldo Diario'
      FieldName = 'MUESTRASALDODIARIO'
      Origin = 'MUESTRASALDODIARIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QOProdDetMUESTRAPARTESDIARIO: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Partes Diarios'
      FieldName = 'MUESTRAPARTESDIARIO'
      Origin = 'MUESTRAPARTESDIARIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QOProdDetP_VOLUMEN: TFloatField
      FieldName = 'P_VOLUMEN'
      Origin = 'P_VOLUMEN'
      Required = True
    end
    object QOProdDetP_PATS: TFloatField
      FieldName = 'P_PATS'
      Origin = 'P_PATS'
      Required = True
    end
    object QOProdDetP_AROS: TFloatField
      FieldName = 'P_AROS'
      Origin = 'P_AROS'
      Required = True
    end
    object QOProdDetP_TRENZA: TFloatField
      FieldName = 'P_TRENZA'
      Origin = 'P_TRENZA'
      Required = True
    end
    object QOProdDetP_CANIOS: TFloatField
      FieldName = 'P_CANIOS'
      Origin = 'P_CANIOS'
      Required = True
    end
    object QOProdDetP_ARMADURA: TFloatField
      FieldName = 'P_ARMADURA'
      Origin = 'P_ARMADURA'
      Required = True
    end
  end
  object DSPOProdDet: TDataSetProvider
    DataSet = QOProdDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 108
    Top = 75
  end
  object CDSOProdDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPOProdDet'
    OnNewRecord = CDSOProdDetNewRecord
    Left = 203
    Top = 75
    object CDSOProdDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOProdDetID_OPCAB: TIntegerField
      FieldName = 'ID_OPCAB'
      Origin = 'ID_OPCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOProdDetCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      OnGetText = CDSOProdDetCODIGOGetText
      OnSetText = CDSOProdDetCODIGOSetText
      Size = 8
    end
    object CDSOProdDetDETALLE: TStringField
      DisplayLabel = 'Detalles'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSOProdDetUNIDAD: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object CDSOProdDetDEPOSITO_DESTINO: TIntegerField
      FieldName = 'DEPOSITO_DESTINO'
      Origin = 'DEPOSITO_DESTINO'
      Required = True
    end
    object CDSOProdDetSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object CDSOProdDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSOProdDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSOProdDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object CDSOProdDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      Size = 1
    end
    object CDSOProdDetESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object CDSOProdDetEN_PLANIFICACION: TStringField
      Alignment = taCenter
      DisplayLabel = 'En Planif.'
      FieldName = 'EN_PLANIFICACION'
      Origin = 'EN_PLANIFICACION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOProdDetMUESTRACOPIAS: TIntegerField
      DisplayLabel = 'Copias'
      FieldKind = fkInternalCalc
      FieldName = 'MUESTRACOPIAS'
      ProviderFlags = []
    end
    object CDSOProdDetMUESTRASIGLAS: TStringField
      FieldName = 'MUESTRASIGLAS'
      Origin = 'SIGLAS'
      ProviderFlags = []
      Size = 2
    end
    object CDSOProdDetPARTICION: TStringField
      FieldName = 'PARTICION'
      Origin = 'PARTICION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOProdDetID_PRESU_DET: TIntegerField
      FieldName = 'ID_PRESU_DET'
      Origin = 'ID_PRESU_DET'
      Required = True
    end
    object CDSOProdDetID_PRESU_CAB: TIntegerField
      FieldName = 'ID_PRESU_CAB'
      Origin = 'ID_PRESU_CAB'
      Required = True
    end
    object CDSOProdDetCODIGOALTERNATIVO: TStringField
      FieldName = 'CODIGOALTERNATIVO'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
    end
    object CDSOProdDetCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      OnSetText = CDSOProdDetCANTIDADSetText
      DisplayFormat = ',0.000'
    end
    object CDSOProdDetCOSTO: TFloatField
      DisplayLabel = 'Costo'
      FieldName = 'COSTO'
      Origin = 'COSTO'
      DisplayFormat = ',0.00'
    end
    object CDSOProdDetMUESTRASALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'MUESTRASALDO'
      Origin = 'CANTIDAD_SALDO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object CDSOProdDetESPECIFICACION: TStringField
      DisplayLabel = 'Especificacion'
      FieldName = 'ESPECIFICACION'
      Origin = 'ESPECIFICACION'
      Size = 45
    end
    object CDSOProdDetITEM_DETALLE: TStringField
      DisplayLabel = 'Item Detalle'
      FieldName = 'ITEM_DETALLE'
      Origin = 'ITEM_DETALLE'
      Size = 50
    end
    object CDSOProdDetFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSOProdDetFECHA_ENTREGA: TSQLTimeStampField
      DisplayLabel = 'Fecha Entrega'
      FieldName = 'FECHA_ENTREGA'
      Origin = 'FECHA_ENTREGA'
    end
    object CDSOProdDetFECHA_INIC_PRODUCC: TSQLTimeStampField
      DisplayLabel = 'Fecha Ini. Producc'
      FieldName = 'FECHA_INIC_PRODUCC'
      Origin = 'FECHA_INIC_PRODUCC'
    end
    object CDSOProdDetCANT_ENTREGADA: TFloatField
      FieldName = 'CANT_ENTREGADA'
      Required = True
    end
    object CDSOProdDetMUESTRAPRESUPUESTO: TStringField
      FieldName = 'MUESTRAPRESUPUESTO'
      OnGetText = CDSOProdDetMUESTRAPRESUPUESTOGetText
      Size = 13
    end
    object CDSOProdDetMUESTRASUBNRO: TStringField
      FieldName = 'MUESTRASUBNRO'
      Size = 2
    end
    object CDSOProdDetMUESTRASALDODIARIO: TFloatField
      DisplayLabel = 'Saldo Diarios'
      FieldName = 'MUESTRASALDODIARIO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0,00'
    end
    object CDSOProdDetMUESTRAPARTESDIARIO: TFloatField
      DisplayLabel = 'Partes Diarios'
      FieldName = 'MUESTRAPARTESDIARIO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object CDSOProdDetMUESTRASALDOCALCULADO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MUESTRASALDOCALCULADO'
      Calculated = True
    end
    object CDSOProdDetP_VOLUMEN: TFloatField
      DisplayLabel = 'Volumen'
      FieldName = 'P_VOLUMEN'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSOProdDetP_PATS: TFloatField
      DisplayLabel = 'Pats.'
      FieldName = 'P_PATS'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSOProdDetP_AROS: TFloatField
      DisplayLabel = 'Aros'
      FieldName = 'P_AROS'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSOProdDetP_TRENZA: TFloatField
      DisplayLabel = 'Trenzas'
      FieldName = 'P_TRENZA'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSOProdDetP_CANIOS: TFloatField
      DisplayLabel = 'Ca'#241'os'
      FieldName = 'P_CANIOS'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSOProdDetP_ARMADURA: TFloatField
      DisplayLabel = 'Armadura'
      FieldName = 'P_ARMADURA'
      Required = True
      DisplayFormat = ',0.00'
    end
  end
  object ibgOProdDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_ORDENPRODUCCION_DET'
    SystemGenerators = False
    Left = 291
    Top = 75
  end
  object ibgOProdMov: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_ORDENPRODUCCION_MOV'
    SystemGenerators = False
    Left = 291
    Top = 136
  end
  object DSOProdMov: TDataSource
    DataSet = CDSOProdMov
    Left = 363
    Top = 136
  end
  object DSOProdDet: TDataSource
    DataSet = CDSOProdDet
    Left = 363
    Top = 75
  end
  object DSOProdObs: TDataSource
    DataSet = CDSOProdObs
    Left = 363
    Top = 199
  end
  object ibgOProdObs: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_ORDENPRODUCCION_OBS'
    SystemGenerators = False
    Left = 291
    Top = 199
  end
  object CDSOProdObs: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPOProdObs'
    OnNewRecord = CDSOProdObsNewRecord
    Left = 203
    Top = 199
    object CDSOProdObsID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOProdObsID_OPCAB: TIntegerField
      FieldName = 'ID_OPCAB'
      Origin = 'ID_OPCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOProdObsDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object CDSOProdObsFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
  end
  object DSPOProdObs: TDataSetProvider
    DataSet = QOProdObs
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 108
    Top = 199
  end
  object QOProdObs: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select oo.* from ordenproduccion_obs oo'
      'where oo.id_opcab=:id')
    Left = 17
    Top = 199
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QOProdObsID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOProdObsID_OPCAB: TIntegerField
      FieldName = 'ID_OPCAB'
      Origin = 'ID_OPCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOProdObsDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object QOProdObsFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
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
    Left = 577
    Top = 22
    object CDSDepositoNOMBRE: TStringField
      DisplayLabel = 'Deposito'
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSDepositoID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
    end
    object CDSDepositoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Visible = False
    end
  end
  object DSPDeposito: TDataSetProvider
    DataSet = DMMain_FD.QDeposito
    Left = 489
    Top = 22
  end
  object QStockProdCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.*,s.reemplazo_stk as MuestraAlternativo from stock_prod' +
        'uccion_Cab c'
      'left join  stock s on s.codigo_stk=c.codigo'
      'where c.codigo=:codigo')
    Left = 489
    Top = 267
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object QStockProdCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QStockProdCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object QStockProdCabDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QStockProdCabUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QStockProdCabAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      FixedChar = True
      Size = 1
    end
    object QStockProdCabCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QStockProdCabCOSTO: TCurrencyField
      FieldName = 'COSTO'
      Origin = 'COSTO'
      Required = True
    end
    object QStockProdCabMUESTRAALTERNATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAALTERNATIVO'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QStockProdDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select *  from stock_produccion_det where id_cab=:id')
    Left = 489
    Top = 336
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPStockProdDetalle: TDataSetProvider
    DataSet = QStockProdDet
    Options = []
    Left = 610
    Top = 336
  end
  object CDSStockProdDetalle: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPStockProdDetalle'
    Left = 738
    Top = 344
    object CDSStockProdDetalleID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSStockProdDetalleID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSStockProdDetalleCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object CDSStockProdDetalleDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSStockProdDetalleUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object CDSStockProdDetalleAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockProdDetalleCOSTO_STK: TFloatField
      FieldName = 'COSTO_STK'
      Origin = 'COSTO_STK'
    end
    object CDSStockProdDetalleCANTIDAD_REAL: TFloatField
      FieldName = 'CANTIDAD_REAL'
      Origin = 'CANTIDAD_REAL'
      Required = True
    end
    object CDSStockProdDetalleCANTIDAD_FISICA: TFloatField
      FieldName = 'CANTIDAD_FISICA'
      Origin = 'CANTIDAD_FISICA'
    end
    object CDSStockProdDetalleULTIMO_COSTO: TSQLTimeStampField
      FieldName = 'ULTIMO_COSTO'
      Origin = 'ULTIMO_COSTO'
    end
    object CDSStockProdDetalleCOSTO: TFloatField
      FieldName = 'COSTO'
      Origin = 'COSTO'
    end
  end
  object QComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      'id_comprobante=:id '
      'and sucursal=:suc '
      'and compra_venta='#39'V'#39' '
      'and tipo_comprob='#39'OR'#39)
    Left = 816
    Top = 26
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
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT C.razon_social  FROM Clientes C'
      'where (c.codigo=:codigo) and (c.activo<>'#39'N'#39')')
    Left = 752
    Top = 26
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMMain_FD.QSucursal
    Options = [poAllowCommandText]
    Left = 489
    Top = 78
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
    Left = 576
    Top = 80
    object CDSSucursalCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
    end
    object CDSSucursalDETALLE: TStringField
      DisplayWidth = 35
      FieldName = 'DETALLE'
      Size = 35
    end
    object CDSSucursalDIRECCION: TStringField
      DisplayWidth = 20
      FieldName = 'DIRECCION'
    end
    object CDSSucursalLOCALIDAD: TStringField
      DisplayWidth = 20
      FieldName = 'LOCALIDAD'
    end
    object CDSSucursalTELEFONO1: TStringField
      DisplayWidth = 15
      FieldName = 'TELEFONO1'
      Size = 15
    end
    object CDSSucursalTELEFONO2: TStringField
      DisplayWidth = 15
      FieldName = 'TELEFONO2'
      Size = 15
    end
  end
  object QBuscaComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes '
      'where  compra_venta='#39'V'#39' and tipo_comprob='#39'OR'#39
      'and sucursal=:suc '
      'and en_uso='#39'S'#39)
    Left = 749
    Top = 91
    ParamData = <
      item
        Position = 1
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QBuscaComprobID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaComprobTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QBuscaComprobCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object QBuscaComprobDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object QBuscaComprobSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QBuscaComprobLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QBuscaComprobPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object QBuscaComprobNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object QBuscaComprobNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object QBuscaComprobTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
      Origin = 'TOMA_NRO_DE'
    end
    object QBuscaComprobAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Origin = 'AFECTA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscaComprobAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Origin = 'AFECTA_CC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscaComprobDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscaComprobCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Origin = 'COMPRA_VENTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscaComprobCOPIAS: TIntegerField
      FieldName = 'COPIAS'
      Origin = 'COPIAS'
    end
    object QBuscaComprobREPORTE: TStringField
      FieldName = 'REPORTE'
      Origin = 'REPORTE'
      Size = 100
    end
    object QBuscaComprobIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      FixedChar = True
      Size = 1
    end
    object QBuscaComprobFISCAL: TStringField
      FieldName = 'FISCAL'
      Origin = 'FISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscaComprobNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Origin = 'NOMBREIMPRESORA'
      Size = 15
    end
    object QBuscaComprobPENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Origin = 'PENDIENTEIMPRESION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscaComprobLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Origin = 'LINEAS_DETALLE'
      Required = True
    end
    object QBuscaComprobCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Origin = 'CALCULA_IVA_ARTICULOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscaComprobDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Origin = 'DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscaComprobCAJA_DEFECTO: TIntegerField
      FieldName = 'CAJA_DEFECTO'
      Origin = 'CAJA_DEFECTO'
      Required = True
    end
    object QBuscaComprobDIVIDE_IVA: TStringField
      FieldName = 'DIVIDE_IVA'
      Origin = 'DIVIDE_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscaComprobFACTURAELECTRONICA: TStringField
      FieldName = 'FACTURAELECTRONICA'
      Origin = 'FACTURAELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscaComprobEN_USO: TStringField
      FieldName = 'EN_USO'
      Origin = 'EN_USO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscaComprobCODIGO_AFIP: TStringField
      FieldName = 'CODIGO_AFIP'
      Origin = 'CODIGO_AFIP'
      Size = 3
    end
    object QBuscaComprobID_AJUSTECC: TIntegerField
      FieldName = 'ID_AJUSTECC'
      Origin = 'ID_AJUSTECC'
    end
    object QBuscaComprobCENTRO_COSTO: TIntegerField
      FieldName = 'CENTRO_COSTO'
      Origin = 'CENTRO_COSTO'
    end
    object QBuscaComprobFILTRO_COMPROBANTES: TStringField
      FieldName = 'FILTRO_COMPROBANTES'
      Origin = 'FILTRO_COMPROBANTES'
      FixedChar = True
      Size = 1
    end
    object QBuscaComprobDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QBuscaComprobULTIMONRO: TIntegerField
      FieldName = 'ULTIMONRO'
      Origin = 'ULTIMONRO'
    end
    object QBuscaComprobEDITAR_NRO: TStringField
      FieldName = 'EDITAR_NRO'
      Origin = 'EDITAR_NRO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QTroqueles: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT T.*,s.detalle_stk as MuestraStock'
      'FROM TROQUELES T'
      'left JOIN ORDENPRODUCCION_DIARIO D ON D.ID = T.ID_PRODU_DIARIO'
      'left JOIN ORDENPRODUCCION_SUB_DET SD ON SD.ID = D.ID_SUBDET_PROD'
      'left JOIN ORDENPRODUCCION_DET DT ON DT.ID = SD.ID_DET_OP'
      'left JOIN ORDENPRODUCCION_CAB CB ON CB.ID = DT.ID_OPCAB'
      'left join stock s on s.codigo_stk=dt.codigo'
      'WHERE CB.ID = :ID_OP;'
      '')
    Left = 489
    Top = 440
    ParamData = <
      item
        Name = 'ID_OP'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QTroquelesID: TIntegerField
      DisplayLabel = 'Id Tr'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTroquelesID_PRODU_DIARIO: TIntegerField
      DisplayLabel = 'Producc.Diaria'
      FieldName = 'ID_PRODU_DIARIO'
      Origin = 'ID_PRODU_DIARIO'
    end
    object QTroquelesID_REMITO: TIntegerField
      DisplayLabel = 'Id Rto'
      FieldName = 'ID_REMITO'
      Origin = 'ID_REMITO'
    end
    object QTroquelesNRO_TROQUEL: TStringField
      DisplayLabel = 'Nro.Troquel'
      FieldName = 'NRO_TROQUEL'
      Origin = 'NRO_TROQUEL'
    end
    object QTroquelesFECHA_INGRESO: TSQLTimeStampField
      DisplayLabel = 'Fecha Ingreso'
      FieldName = 'FECHA_INGRESO'
      Origin = 'FECHA_INGRESO'
    end
    object QTroquelesFECHA_EGRESO: TSQLTimeStampField
      DisplayLabel = 'Fecha Sailida'
      FieldName = 'FECHA_EGRESO'
      Origin = 'FECHA_EGRESO'
    end
    object QTroquelesCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QTroquelesMUESTRASTOCK: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Detalle Articulo'
      FieldName = 'MUESTRASTOCK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
  end
  object DSTroqueles: TDataSource
    DataSet = QTroqueles
    Left = 576
    Top = 440
  end
  object QBuscaXCodAlternativos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.codigo_stk from stock s where s.reemplazo_stk=:cod')
    Left = 489
    Top = 211
    ParamData = <
      item
        Name = 'COD'
        DataType = ftString
        ParamType = ptInput
        Size = 20
        Value = Null
      end>
    object QBuscaXCodAlternativosCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
  end
  object QOProdMov: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select om.* from ordenproduccion_mov om'
      'where om.id_opdet=:id')
    Left = 17
    Top = 136
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPOProdMov: TDataSetProvider
    DataSet = QOProdMov
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 108
    Top = 136
  end
  object CDSOProdMov: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPOProdMov'
    OnNewRecord = CDSOProdMovNewRecord
    Left = 203
    Top = 136
    object CDSOProdMovID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSOProdMovID_OPDET: TIntegerField
      FieldName = 'ID_OPDET'
      Required = True
    end
    object CDSOProdMovID_OPCAB: TIntegerField
      FieldName = 'ID_OPCAB'
    end
    object CDSOProdMovFECHA_SALIDA: TSQLTimeStampField
      FieldName = 'FECHA_SALIDA'
    end
    object CDSOProdMovCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 8
    end
    object CDSOProdMovDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSOProdMovCANTIDAD_UNITARIA: TFloatField
      FieldName = 'CANTIDAD_UNITARIA'
      OnSetText = CDSOProdMovCANTIDAD_UNITARIASetText
    end
    object CDSOProdMovCANTIDAD_ESTIMADA: TFloatField
      FieldName = 'CANTIDAD_ESTIMADA'
    end
    object CDSOProdMovCANTIDAD_REAL: TFloatField
      FieldName = 'CANTIDAD_REAL'
    end
    object CDSOProdMovDEPOSITO_ORIGEN: TIntegerField
      FieldName = 'DEPOSITO_ORIGEN'
      Required = True
    end
    object CDSOProdMovTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSOProdMovCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSOProdMovNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object CDSOProdMovESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object CDSOProdMovAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QPartesDiarios: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'SELECT d.*, sd.CODIGO AS ARTICULO_CODIGO, sd.DETALLE AS ARTICULO' +
        '_DESCRIPCION FROM ORDENPRODUCCION_DIARIO d'
      '  JOIN ORDENPRODUCCION_SUB_DET sd ON d.ID_SUBDET_PROD = sd.ID'
      '  JOIN ORDENPRODUCCION_DET det    ON sd.ID_DET_OP = det.ID'
      'WHERE det.ID_OPCAB = :ID_op'
      'order by sd.codigo')
    Left = 184
    Top = 464
    ParamData = <
      item
        Name = 'ID_OP'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QPartesDiariosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPartesDiariosID_SUBDET_PROD: TIntegerField
      FieldName = 'ID_SUBDET_PROD'
      Origin = 'ID_SUBDET_PROD'
    end
    object QPartesDiariosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QPartesDiariosNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QPartesDiariosTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = 'TURNO'
    end
    object QPartesDiariosTIPO_MATERIAL: TIntegerField
      FieldName = 'TIPO_MATERIAL'
      Origin = 'TIPO_MATERIAL'
    end
    object QPartesDiariosESTACION: TIntegerField
      FieldName = 'ESTACION'
      Origin = 'ESTACION'
    end
    object QPartesDiariosCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QPartesDiariosOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      Size = 300
    end
    object QPartesDiariosNRORTO: TStringField
      FieldName = 'NRORTO'
      Origin = 'NRORTO'
      Size = 13
    end
    object QPartesDiariosID_AJUSTE_STOCK: TIntegerField
      FieldName = 'ID_AJUSTE_STOCK'
      Origin = 'ID_AJUSTE_STOCK'
      Required = True
    end
    object QPartesDiariosMODO_TRAZABILIDAD: TStringField
      FieldName = 'MODO_TRAZABILIDAD'
      Origin = 'MODO_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPartesDiariosNRO_LOTE: TStringField
      FieldName = 'NRO_LOTE'
      Origin = 'NRO_LOTE'
      Size = 15
    end
    object QPartesDiariosID_DET_PARTE_DIARIO: TIntegerField
      FieldName = 'ID_DET_PARTE_DIARIO'
      Origin = 'ID_DET_PARTE_DIARIO'
      Required = True
    end
    object QPartesDiariosARTICULO_CODIGO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Codigo'
      FieldName = 'ARTICULO_CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object QPartesDiariosARTICULO_DESCRIPCION: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descripcion'
      FieldName = 'ARTICULO_DESCRIPCION'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
  end
  object DSPartesDiarios: TDataSource
    DataSet = QPartesDiarios
    Left = 296
    Top = 472
  end
end
