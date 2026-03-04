object DatosCCVta: TDatosCCVta
  OnDestroy = DataModuleDestroy
  Height = 608
  Width = 799
  object DSPListaClientes: TDataSetProvider
    DataSet = QListaClientes
    Left = 136
    Top = 32
  end
  object QListaClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.codigo,c.nombre,c.razon_social,c.direccion_comercial,(s' +
        'um(m.debe)-sum(m.haber)) as Saldo,'
      
        ' (select (sum(m.debe)-sum(m.haber)) as SAldoInicial from movccvt' +
        'a m where m.fechavta < :desde and m.cliente=c.codigo  ) from cli' +
        'entes c'
      'left join movccvta m on m.cliente=c.codigo'
      'where m.fechavta<=:hasta and c.activo='#39'S'#39' '
      'group by c.codigo,c.nombre,c.razon_social,c.direccion_comercial'
      '--having (sum(m.debe)-sum(m.haber))<>0'
      'order by c.codigo'
      '')
    Left = 56
    Top = 32
    ParamData = <
      item
        Name = 'DESDE'
        ParamType = ptInput
      end
      item
        Position = 1
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end>
  end
  object CDSListaClientes: TClientDataSet
    Aggregates = <>
    PacketRecords = 20
    Params = <
      item
        DataType = ftUnknown
        Name = 'DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'HASTA'
        ParamType = ptInput
      end>
    ProviderName = 'DSPListaClientes'
    Left = 224
    Top = 32
    object CDSListaClientesCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSListaClientesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object CDSListaClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSListaClientesDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Origin = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object CDSListaClientesSALDOINICIAL: TFloatField
      DisplayLabel = 'Saldo Inicial'
      FieldName = 'SALDOINICIAL'
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSListaClientesSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSListaClientesSeleccion: TBooleanField
      DisplayLabel = 'V'
      FieldKind = fkInternalCalc
      FieldName = 'Seleccion'
    end
  end
  object DSListaClientes: TDataSource
    DataSet = CDSListaClientes
    Left = 320
    Top = 32
  end
  object DSPMovCC: TDataSetProvider
    DataSet = QMovCC
    Options = [poAllowCommandText]
    Left = 136
    Top = 224
  end
  object QMovCC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select m.*,o.detalle as MuestraObra from MOV_CTACTE_VTA (:codigo' +
        ',:desde,:hasta ) m'
      'left join obras o on o.codigo=m.id_obra'
      'order by  '
      'm.cliente,m.fechavta,m.tipocpbte,m.nrocpbte ')
    Left = 48
    Top = 224
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'Desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'Hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object QSaldoIni: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select sum(s.debe)as debe, sum(s.haber) as haber from SALDO_INIC' +
        'IAL_CTACTE_VTA (:codigo,:desde ) s')
    Left = 48
    Top = 328
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 2
        Name = 'DESDE'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QSaldoIniDEBE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DEBE'
      Origin = 'DEBE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QSaldoIniHABER: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'HABER'
      Origin = 'HABER'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT C.*,cc.nombre as MuestraCoorporativo FROM Clientes C'
      'left join clientes cc on cc.codigo=c.codigo_coorporativo'
      'where (c.codigo=:codigo)')
    Left = 656
    Top = 40
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
    object QClientesLISTAPRECIOS: TIntegerField
      FieldName = 'LISTAPRECIOS'
      Origin = 'LISTAPRECIOS'
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
    object QClientesTIPOABONO: TStringField
      FieldName = 'TIPOABONO'
      Origin = 'TIPOABONO'
      Required = True
      FixedChar = True
      Size = 1
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
    object QClientesMUESTRACOORPORATIVO: TStringField
      FieldName = 'MUESTRACOORPORATIVO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object QClientesFECHAULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'FECHAULTIMACOMPRA'
      Origin = 'FECHAULTIMACOMPRA'
    end
    object QClientesFECHAALTA: TSQLTimeStampField
      FieldName = 'FECHAALTA'
      Origin = 'FECHAALTA'
    end
    object QClientesULTIMOPAGO: TSQLTimeStampField
      FieldName = 'ULTIMOPAGO'
      Origin = 'ULTIMOPAGO'
    end
    object QClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField
      FieldName = 'FECHA_VENCIMI_DDJJ_MULTI'
      Origin = 'FECHA_VENCIMI_DDJJ_MULTI'
    end
    object QClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO_FC_ABONO'
      Origin = 'FECHA_INCIO_FC_ABONO'
    end
    object QClientesVENCIMIENTO_TC: TSQLTimeStampField
      FieldName = 'VENCIMIENTO_TC'
      Origin = 'VENCIMIENTO_TC'
    end
    object QClientesFECHANACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHANACIMIENTO'
      Origin = 'FECHANACIMIENTO'
    end
    object QClientesDESDE_F8001: TSQLTimeStampField
      FieldName = 'DESDE_F8001'
      Origin = 'DESDE_F8001'
    end
    object QClientesHASTA_F8001: TSQLTimeStampField
      FieldName = 'HASTA_F8001'
      Origin = 'HASTA_F8001'
    end
  end
  object DSPSaldoInicial: TDataSetProvider
    DataSet = QSaldoIni
    Options = [poAllowCommandText]
    Left = 136
    Top = 328
  end
  object CDSSaldoInicial: TClientDataSet
    Aggregates = <>
    PacketRecords = 20
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftDate
        Name = 'DESDE'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSaldoInicial'
    Left = 216
    Top = 328
    object CDSSaldoInicialDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSSaldoInicialHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object CDSMovCC: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    FetchOnDemand = False
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'Desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPMovCC'
    OnCalcFields = CDSMovCCCalcFields
    Left = 216
    Top = 256
    object CDSMovCCCLIENTE: TStringField
      DisplayLabel = '+'
      DisplayWidth = 2
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Visible = False
      Size = 6
    end
    object CDSMovCCTIPOCPBTE: TStringField
      DisplayLabel = 'Tp.'
      DisplayWidth = 3
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Visible = False
      Size = 2
    end
    object CDSMovCCDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 21
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSMovCCNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      DisplayWidth = 15
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Visible = False
      EditMask = 'a-####-########;0'
      Size = 13
    end
    object CDSMovCCID_CPBTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Visible = False
    end
    object CDSMovCCID_MOVCCVTA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_MOVCCVTA'
      Origin = 'ID_MOVCCVTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object CDSMovCCID_COMPROBANTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
    end
    object CDSMovCCCLASECPBTE: TStringField
      Alignment = taCenter
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovCCTIPO: TStringField
      Alignment = taCenter
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object CDSMovCCOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      Size = 150
    end
    object CDSMovCCCUOTA: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Cta'
      FieldName = 'CUOTA'
      Origin = 'CUOTA'
      EditFormat = '0;0;-'
    end
    object CDSMovCCID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
    end
    object CDSMovCCSIGNOMONEDA: TStringField
      Alignment = taCenter
      DisplayLabel = 'M'
      FieldName = 'SIGNOMONEDA'
      Origin = 'SIGNOMONEDA'
      OnGetText = CDSMovCCSIGNOMONEDAGetText
      Size = 5
    end
    object CDSMovCCSaldoCC: TFloatField
      DisplayLabel = 'Saldo C.Cte'
      DisplayWidth = 16
      FieldKind = fkInternalCalc
      FieldName = 'SaldoCC'
      OnGetText = CDSMovCCSaldoCCGetText
      DisplayFormat = ',0.000;-,0.000;-'
      EditFormat = ',0.000'
    end
    object CDSMovCCFC_CONSOLIDAD: TStringField
      Alignment = taCenter
      DisplayLabel = 'Cons.'
      FieldName = 'FC_CONSOLIDAD'
      Origin = 'FC_CONSOLIDAD'
      OnGetText = CDSMovCCFC_CONSOLIDADGetText
      Size = 1
    end
    object CDSMovCCID_AJUSTE_CONSOLIDA: TIntegerField
      FieldName = 'ID_AJUSTE_CONSOLIDA'
      Origin = 'ID_AJUSTE_CONSOLIDA'
    end
    object CDSMovCCSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSMovCCCTA_ASOCIADA: TStringField
      Alignment = taCenter
      DisplayLabel = 'Cta.Orig.'
      FieldName = 'CTA_ASOCIADA'
      Origin = 'CTA_ASOCIADA'
      Size = 6
    end
    object CDSMovCCANIOMES: TStringField
      DisplayLabel = 'A'#241'o/Mes'
      FieldKind = fkCalculated
      FieldName = 'ANIOMES'
      Size = 7
      Calculated = True
    end
    object CDSMovCCSALDOCC_REC: TFloatField
      DisplayLabel = 'Saldo (r)'
      FieldKind = fkInternalCalc
      FieldName = 'SALDOCC_REC'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovCCDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      OnGetText = CDSMovCCDEBEGetText
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSMovCCHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      OnGetText = CDSMovCCHABERGetText
    end
    object CDSMovCCSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
      OnGetText = CDSMovCCSALDOGetText
    end
    object CDSMovCCCOTIZACION: TFloatField
      DisplayLabel = 'Cotz'
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      DisplayFormat = ',0.000'
    end
    object CDSMovCCFECHAVTA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha Vta'
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object CDSMovCCFECHAVTO: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha Vto'
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object CDSMovCCREMITOS: TStringField
      FieldName = 'REMITOS'
      Origin = 'REMITOS'
      Size = 100
    end
    object CDSMovCCMUESTRAOBRA: TStringField
      DisplayLabel = 'Nombre de Obra'
      FieldName = 'MUESTRAOBRA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 100
    end
  end
  object CDSCtaCte: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    FetchOnDemand = False
    Params = <
      item
        DataType = ftDate
        Name = 'Desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCtaCte'
    Left = 224
    Top = 96
    object CDSCtaCteCLIENTE: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 6
    end
    object CDSCtaCteID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
      Origin = 'ID_MOVCCVTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCtaCteID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object CDSCtaCteFECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha Vta'
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object CDSCtaCteFECHAVTO: TSQLTimeStampField
      DisplayLabel = 'Fecha Vto'
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object CDSCtaCteTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSCtaCteCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSCtaCteNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0;_'
      Size = 13
    end
    object CDSCtaCteDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCtaCteHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCtaCteSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCtaCteDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSCtaCteNRO_CUOTA: TIntegerField
      FieldName = 'NRO_CUOTA'
      Origin = 'NRO_CUOTA'
      Required = True
    end
    object CDSCtaCteID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
    end
    object CDSCtaCteCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object CDSCtaCteSALDOCC: TFloatField
      DisplayLabel = 'Saldo Cta'
      FieldKind = fkInternalCalc
      FieldName = 'SALDOCC'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSPCheRec: TDataSetProvider
    DataSet = QCheRec
    Left = 136
    Top = 384
  end
  object CDSCheRec: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCheRec'
    Left = 216
    Top = 384
    object CDSCheRecID_CHEQUE_TER: TIntegerField
      FieldName = 'ID_CHEQUE_TER'
      Origin = 'ID_CHEQUE_TER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCheRecID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      Required = True
    end
    object CDSCheRecMUESTRABANCO: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'MUESTRABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSCheRecMUESTRACLIENTE: TStringField
      FieldName = 'MUESTRACLIENTE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object CDSCheRecFIRMANTE: TStringField
      FieldName = 'FIRMANTE'
      Origin = 'FIRMANTE'
      Size = 30
    end
    object CDSCheRecCUIT: TStringField
      DisplayLabel = 'Cui'
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSCheRecDESTINO: TStringField
      FieldName = 'DESTINO'
      Origin = 'DESTINO'
      Size = 30
    end
    object CDSCheRecNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object CDSCheRecMUESTRAIDREC: TIntegerField
      FieldName = 'MUESTRAIDREC'
      Origin = 'ID_RC'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSCheRecMUESTRATIPORC: TStringField
      FieldName = 'MUESTRATIPORC'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object CDSCheRecMUESTRACLASEREC: TStringField
      FieldName = 'MUESTRACLASEREC'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object CDSCheRecMUESTRANROREC: TStringField
      FieldName = 'MUESTRANROREC'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object CDSCheRecFECHA_ENTRADA: TSQLTimeStampField
      DisplayLabel = 'F.Entrada'
      FieldName = 'FECHA_ENTRADA'
      Origin = 'FECHA_ENTRADA'
    end
    object CDSCheRecFECHA_SALIDA: TSQLTimeStampField
      DisplayLabel = 'F.Salida'
      FieldName = 'FECHA_SALIDA'
      Origin = 'FECHA_SALIDA'
    end
    object CDSCheRecFECHA_EMISION: TSQLTimeStampField
      DisplayLabel = 'F.Emision'
      FieldName = 'FECHA_EMISION'
      Origin = 'FECHA_EMISION'
    end
    object CDSCheRecFECHA_COBRO: TSQLTimeStampField
      DisplayLabel = 'F.Cobro'
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
    end
    object CDSCheRecIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
  end
  object DSCheRec: TDataSource
    DataSet = CDSCheRec
    Left = 288
    Top = 384
  end
  object QCheRec: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select ch.id_cheque_ter,ch.id_banco,b.nombre as MuestraBanco, r.' +
        'nombre as MuestraCliente, ch.firmante,'
      'ch.cuit,ch.destino,ch.importe,ch.numero,'
      
        'ch.fecha_entrada,ch.fecha_salida ,ch.fecha_emision,ch.fecha_cobr' +
        'o,'
      
        'r.id_rc as MuestraIdRec, r.tipocpbte as MuestraTipoRc , r.clasec' +
        'pbte as MuestraClaseRec,r.nrocpbte as MuestraNroRec'
      'from cheque_tercero ch'
      'left join bancos b on b.id_banco=ch.id_banco'
      'left join caja_mov cm on cm.id_mov_caja=ch.id_mov_caja'
      
        'left join recibos r on r.id_rc=cm.id_comprobante and cm.tipo_com' +
        'prob=r.tipocpbte and cm.clase_comprob=r.clasecpbte'
      ''
      'where r.codigo=:codigo')
    Left = 48
    Top = 384
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QCtaCte: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select m.* from movccvta m where m.fechavta between :desde and :' +
        'hasta'
      'order by m.cliente,m.fechavta,m.tipocpbte,m.nrocpbte')
    Left = 56
    Top = 88
    ParamData = <
      item
        Position = 2
        Name = 'Desde'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 3
        Name = 'Hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object DSPCtaCte: TDataSetProvider
    DataSet = QCtaCte
    Options = [poAllowCommandText]
    Left = 128
    Top = 88
  end
  object CDSMovObra: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Filtered = True
    FetchOnDemand = False
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'Desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPMovCC'
    OnCalcFields = CDSMovObraCalcFields
    Left = 216
    Top = 200
    object CDSMovObraID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
    end
    object CDSMovObraID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
    end
    object CDSMovObraCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 6
    end
    object CDSMovObraFECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha Recibo'
      FieldName = 'FECHAVTA'
    end
    object CDSMovObraFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object CDSMovObraTIPOCPBTE: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSMovObraCLASECPBTE: TStringField
      DisplayLabel = 'Clase'
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovObraNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSMovObraDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovObraHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovObraSALDO: TFloatField
      FieldName = 'SALDO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovObraDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
    end
    object CDSMovObraID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object CDSMovObraTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object CDSMovObraOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Size = 150
    end
    object CDSMovObraCUOTA: TIntegerField
      FieldName = 'CUOTA'
    end
    object CDSMovObraID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
    end
    object CDSMovObraCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object CDSMovObraSIGNOMONEDA: TStringField
      FieldName = 'SIGNOMONEDA'
      Size = 5
    end
    object CDSMovObraFC_CONSOLIDAD: TStringField
      FieldName = 'FC_CONSOLIDAD'
      Size = 1
    end
    object CDSMovObraID_AJUSTE_CONSOLIDA: TIntegerField
      FieldName = 'ID_AJUSTE_CONSOLIDA'
    end
    object CDSMovObraSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSMovObraCTA_ASOCIADA: TStringField
      FieldName = 'CTA_ASOCIADA'
      Size = 6
    end
    object CDSMovObraREMITOS: TStringField
      FieldName = 'REMITOS'
      Size = 100
    end
    object CDSMovObraID_OBRA: TIntegerField
      FieldName = 'ID_OBRA'
    end
    object CDSMovObraMUESTRAOBRA: TStringField
      DisplayLabel = 'Obra'
      FieldName = 'MUESTRAOBRA'
      ReadOnly = True
      Size = 100
    end
    object CDSMovObraSALDOCC_REC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SALDOCC_REC'
    end
    object CDSMovObraSALDO_RECIBO: TFloatField
      DisplayLabel = 'Saldo Rc'
      FieldName = 'SALDO_RECIBO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
end
