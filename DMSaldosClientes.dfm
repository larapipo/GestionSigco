object DatosSaldoClientes: TDatosSaldoClientes
  OnDestroy = DataModuleDestroy
  Height = 643
  Width = 853
  object QSaldosClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end>
    SQL.Strings = (
      'with addressesXclients as ('
      'SELECT'
      '    c.codigo as client_code,'
      '    fp.detalle as direccion,'
      '    cv.por_defecto as Xdefecto'
      '  FROM'
      '    clientes c'
      '  LEFT JOIN condventa cv ON cv.codigocliente = c.codigo'
      '  LEFT JOIN f_pago fp ON fp.codigo = cv.codigopago),'
      ''
      ''
      'clienteXcondP as('
      '    SELECT'
      '    c.codigo AS codigo_cliente,'
      '    c.nombre AS nombre_cliente,'
      '    COALESCE('
      '        (SELECT a.direccion '
      '         FROM addressesXclients a '
      '         WHERE a.client_code = c.codigo AND a.Xdefecto = '#39'S'#39
      '         FETCH FIRST 1 ROW ONLY), '
      '        (SELECT a.direccion '
      '         FROM addressesXclients a '
      '         WHERE a.client_code = c.codigo '
      '         FETCH FIRST 1 ROW ONLY), '
      '        '#39'-'#39') AS cond_pago'
      'FROM '
      '    clientes c)'
      
        'select m.CODIGO, m.RAZON_SOCIAL, m.DIRECCION_COMERCIAL, m.TELEFO' +
        'NO_COMERCIAL_1,m.cpostal,m.localidad, '
      
        '       m.TELEFONO_COMERCIAL_2, m.VENDEDOR, v.nombre as nombreVen' +
        'dedor, m.ZONA, m.CORREOELECTRONICO, m.ULTIMOPAGO, m.ACTIVO,'
      
        '       m.LIMITE_CREDITO, m.FECHAULTIMACOMPRA,(SUM(m.DEBE)-SUM(m.' +
        'HABER)) AS saldo,m.cuit,m.telediscado,m.celular,m.nombre,cl.nomb' +
        're_completo,cond_pago  from movccvta_temporal m'
      '        left join clientes cl on cl.codigo=m.codigo'
      '        left join personal v on v.codigo = m.vendedor'
      
        '        left join clienteXcondP tp on tp.codigo_cliente=cl.codig' +
        'o'
      
        '        WHERE (m.tipo_vta = :tipovta or :tipovta = '#39'*'#39' ) and M.f' +
        'echavta<=:hasta and  m.id=:id '
      '       group by '
      
        '        m.CODIGO, m.RAZON_SOCIAL, m.DIRECCION_COMERCIAL, m.TELEF' +
        'ONO_COMERCIAL_1,m.cpostal,m.localidad, '
      
        '        m.TELEFONO_COMERCIAL_2, m.ZONA, m.CORREOELECTRONICO, m.U' +
        'LTIMOPAGO, m.ACTIVO,'
      
        '        m.LIMITE_CREDITO, m.FECHAULTIMACOMPRA,m.CUIT,m.teledisca' +
        'do,m.celular,m.nombre,cl.nombre_completo, m.VENDEDOR,v.nombre, c' +
        'ond_pago'
      
        '          having ((SUM(m.DEBE)-SUM(m.HABER))>= :menor) and ((SUM' +
        '(m.DEBE)-SUM(m.HABER))<=:mayor) and ((SUM(m.DEBE)-SUM(m.HABER))<' +
        '> 0);'
      '')
    Left = 40
    Top = 24
    ParamData = <
      item
        Position = 1
        Name = 'tipovta'
        DataType = ftFixedChar
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'tipovta'
        DataType = ftFixedChar
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'menor'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'mayor'
        DataType = ftFloat
        ParamType = ptInput
      end>
  end
  object QFiltroC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TABLA_CPBTE_CCVTA_CAB')
    Left = 40
    Top = 312
  end
  object QMovCC_2: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select m.codigo, m.razon_social,sum(m.saldo) as saldo from MOVCC' +
        'VTA_TEMPORAL  m'
      
        'where  ( m.tipo_vta = :tipovta or :tipovta = '#39#39'*'#39#39' ) and  m.sald' +
        'o>0 and m.fechavta <= :hasta and m.id=:id'
      'group by m.codigo, m.razon_social '
      'order by m.codigo')
    Left = 40
    Top = 256
    ParamData = <
      item
        Position = 1
        Name = 'tipovta'
        DataType = ftString
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QMovAplicacion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end>
    SQL.Strings = (
      'select * from MovAplicaCCVta ')
    Left = 40
    Top = 152
  end
  object QGarantes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtBCD
        TargetDataType = dtDouble
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end
      item
        SourceDataType = dtInt64
        TargetDataType = dtInt32
      end>
    SQL.Strings = (
      
        'select max(g.id) as ID, g.codigocliente, g.nombre,g.direccion,g.' +
        'telefono1 from clientes_garantes g'
      'group by g.codigocliente, g.nombre,g.direccion,g.telefono1')
    Left = 432
    Top = 32
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QMovCC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select m.codigo,m.fechavta,m.fechavto,m.detalle,m.debe,m.haber,'
      
        'm.saldo,m.tipo_vta, m.id_movccvta,m.tipocpbte,m.clasecpbte,m.id_' +
        'cpbte, m.razon_social,m.cuota from MOVCCVTA_TEMPORAL  m'
      'where ( m.tipo_vta = :tipovta or :tipovta = '#39'*'#39' ) and  m.saldo>0'
      
        ' and (M.fechavta <= :Hasta  and M.fechavta >= :Desde) and m.id =' +
        ':id'
      'order by m.codigo,m.fechavta'
      ''
      '')
    Left = 40
    Top = 88
    ParamData = <
      item
        Position = 1
        Name = 'tipovta'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 2
        Name = 'HASTA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'DESDE'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QMovACta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select m.* from MovACtaCCVta_temporal m'
      'where m.cliente=:codigo and m.id=:id and  m.Importe<>0'
      'order by m.fecha,m.numerocpbte')
    Left = 40
    Top = 208
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 2
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPSaldosClientes: TDataSetProvider
    DataSet = QSaldosClientes
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 32
  end
  object CDSSaldosCliente: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'RAZON_SOCIAL'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'DIRECCION_COMERCIAL'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'TELEFONO_COMERCIAL_1'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CPOSTAL'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'LOCALIDAD'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TELEFONO_COMERCIAL_2'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VENDEDOR'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'NOMBREVENDEDOR'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ZONA'
        DataType = ftInteger
      end
      item
        Name = 'CORREOELECTRONICO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ULTIMOPAGO'
        DataType = ftTimeStamp
      end
      item
        Name = 'ACTIVO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'LIMITE_CREDITO'
        DataType = ftFloat
      end
      item
        Name = 'FECHAULTIMACOMPRA'
        DataType = ftTimeStamp
      end
      item
        Name = 'SALDO'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'CUIT'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'TELEDISCADO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CELULAR'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'NOMBRE_COMPLETO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'COND_PAGO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftFixedChar
        Name = 'tipovta'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'tipovta'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'menor'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'mayor'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSaldosClientes'
    StoreDefs = True
    AfterOpen = CDSSaldosClienteAfterOpen
    BeforeClose = CDSSaldosClienteBeforeClose
    AfterScroll = CDSSaldosClienteAfterScroll
    Left = 208
    Top = 32
    object CDSSaldosClienteCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      Size = 6
    end
    object CDSSaldosClienteRAZON_SOCIAL: TStringField
      DisplayLabel = 'R.Social'
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSSaldosClienteNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object CDSSaldosClienteDIRECCION_COMERCIAL: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION_COMERCIAL'
      Origin = 'DIRECCION_COMERCIAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSSaldosClienteTELEFONO_COMERCIAL_1: TStringField
      DisplayLabel = 'Telef.'
      FieldName = 'TELEFONO_COMERCIAL_1'
      Origin = 'TELEFONO_COMERCIAL_1'
      ProviderFlags = []
      Size = 10
    end
    object CDSSaldosClienteCPOSTAL: TStringField
      DisplayLabel = 'C.Postal'
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      ProviderFlags = []
      Size = 8
    end
    object CDSSaldosClienteLOCALIDAD: TStringField
      DisplayLabel = 'Localidad'
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      ProviderFlags = []
      Size = 15
    end
    object CDSSaldosClienteTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Origin = 'TELEFONO_COMERCIAL_2'
      ProviderFlags = []
      Size = 10
    end
    object CDSSaldosClienteVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      ProviderFlags = []
      Size = 6
    end
    object CDSSaldosClienteZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
      ProviderFlags = []
    end
    object CDSSaldosClienteCORREOELECTRONICO: TStringField
      DisplayLabel = 'Correo Electronico'
      FieldName = 'CORREOELECTRONICO'
      Origin = 'CORREOELECTRONICO'
      ProviderFlags = []
      Size = 100
    end
    object CDSSaldosClienteACTIVO: TStringField
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      ProviderFlags = []
      Size = 1
    end
    object CDSSaldosClienteSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSSaldosClienteCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      ProviderFlags = []
      Size = 13
    end
    object CDSSaldosClienteTELEDISCADO: TStringField
      FieldName = 'TELEDISCADO'
      Origin = 'TELEDISCADO'
      ProviderFlags = []
      Size = 6
    end
    object CDSSaldosClienteSeleccion: TBooleanField
      DisplayLabel = 'V'
      FieldKind = fkInternalCalc
      FieldName = 'Seleccion'
    end
    object CDSSaldosClienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      ProviderFlags = []
      Size = 11
    end
    object CDSSaldosClienteNOMBRE_COMPLETO: TStringField
      DisplayLabel = 'Nombre Completo'
      FieldName = 'NOMBRE_COMPLETO'
      Origin = 'NOMBRE_COMPLETO'
      ProviderFlags = []
      Size = 100
    end
    object CDSSaldosClienteLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
      Origin = 'LIMITE_CREDITO'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSSaldosClienteULTIMOPAGO: TSQLTimeStampField
      DisplayLabel = 'Ult.Pago'
      FieldName = 'ULTIMOPAGO'
      Origin = 'ULTIMOPAGO'
    end
    object CDSSaldosClienteFECHAULTIMACOMPRA: TSQLTimeStampField
      DisplayLabel = 'Ult.Compra'
      FieldName = 'FECHAULTIMACOMPRA'
      Origin = 'FECHAULTIMACOMPRA'
    end
    object CDSSaldosClienteNOMBREVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOMBREVENDEDOR'
      ReadOnly = True
      Size = 50
    end
    object CDSSaldosClienteCOND_PAGO: TStringField
      FieldName = 'COND_PAGO'
      ReadOnly = True
    end
  end
  object CDSGarantes: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGOCLIENTE'
    MasterFields = 'CODIGO'
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPGarantes'
    Left = 576
    Top = 32
    object CDSGarantesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
    object CDSGarantesCODIGOCLIENTE: TStringField
      FieldName = 'CODIGOCLIENTE'
      Origin = 'CODIGOCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSGarantesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object CDSGarantesDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      ProviderFlags = []
      Size = 100
    end
    object CDSGarantesTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Origin = 'TELEFONO1'
      ProviderFlags = []
      Size = 15
    end
  end
  object DSPGarantes: TDataSetProvider
    DataSet = QGarantes
    Options = []
    Left = 512
    Top = 32
  end
  object CDSMovCC: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    IndexFieldNames = 'CODIGO'
    MasterFields = 'CODIGO'
    Params = <
      item
        DataType = ftString
        Name = 'tipovta'
        ParamType = ptInput
        Size = 1
      end
      item
        DataType = ftDate
        Name = 'HASTA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovCC'
    AfterScroll = CDSMovCCAfterScroll
    OnCalcFields = CDSMovCCCalcFields
    Left = 208
    Top = 88
    object CDSMovCCCODIGO: TStringField
      DisplayLabel = '+'
      DisplayWidth = 3
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 6
    end
    object CDSMovCCDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 20
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSMovCCTIPO_VTA: TStringField
      DisplayLabel = 'Tipo Vta.'
      FieldName = 'TIPO_VTA'
      Origin = 'TIPO_VTA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSMovCCID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
      Origin = 'ID_MOVCCVTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object CDSMovCCTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Visible = False
      Size = 2
    end
    object CDSMovCCCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Visible = False
      Size = 2
    end
    object CDSMovCCID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Visible = False
    end
    object CDSMovCCRAZON_SOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSMovCCMORA: TIntegerField
      DisplayLabel = 'Mora'
      FieldKind = fkInternalCalc
      FieldName = 'MORA'
    end
    object CDSMovCCINTERES: TFloatField
      DisplayLabel = 'Interes'
      FieldKind = fkInternalCalc
      FieldName = 'INTERES'
    end
    object CDSMovCCCUOTA: TIntegerField
      FieldName = 'CUOTA'
      Origin = 'CUOTA'
    end
    object CDSMovCCDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00'
    end
    object CDSMovCCSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = ',0.00'
    end
    object CDSMovCCHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00'
    end
    object CDSMovCCFECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha Vta'
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object CDSMovCCFECHAVTO: TSQLTimeStampField
      DisplayLabel = 'Fecha Vto.'
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object CDSMovCCSaldoTotal: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SaldoTotal'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = '$0,0.00;-$0,0.00;-'
      Expression = 'sum(saldo)'
    end
  end
  object DSPMovCC: TDataSetProvider
    DataSet = QMovCC
    Options = [poAllowCommandText]
    Left = 112
    Top = 88
  end
  object DSSaldosClientes: TDataSource
    DataSet = CDSSaldosCliente
    Left = 298
    Top = 32
  end
  object DSMovACta: TDataSource
    DataSet = CDSMovACta
    Left = 298
    Top = 200
  end
  object CDSMovACta: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    IndexFieldNames = 'CLIENTE'
    MasterFields = 'CODIGO'
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovACta'
    AfterScroll = CDSMovACtaAfterScroll
    Left = 208
    Top = 200
    object CDSMovACtaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovACtaID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Origin = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovACtaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 6
    end
    object CDSMovACtaID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Required = True
    end
    object CDSMovACtaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSMovACtaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovACtaNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Origin = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object CDSMovACtaDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSMovACtaID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
    end
    object CDSMovACtaIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSMovACtaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSMovACtaTotal: TAggregateField
      FieldName = 'Total'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = '$ 0,0.00;-$ 0,0.00;$ 0'
      Expression = 'sum(importe)'
    end
  end
  object DSPMovACta: TDataSetProvider
    DataSet = QMovACta
    Options = [poAllowCommandText]
    Left = 112
    Top = 200
  end
  object CDSMovAplicacion: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_MOVCCVTA'
    MasterFields = 'ID_MOVCCVTA'
    Params = <>
    ProviderName = 'DSPMovAplicacion'
    Left = 208
    Top = 144
    object CDSMovAplicacionTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      DisplayWidth = 3
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSMovAplicacionCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      DisplayWidth = 3
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovAplicacionNUMEROCPBTE: TStringField
      DisplayLabel = 'Nro.'
      DisplayWidth = 15
      FieldName = 'NUMEROCPBTE'
      Origin = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object CDSMovAplicacionDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 20
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSMovAplicacionIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      DisplayWidth = 10
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSMovAplicacionID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Origin = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object CDSMovAplicacionID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
      Origin = 'ID_MOVCCVTA'
      Required = True
      Visible = False
    end
    object CDSMovAplicacionCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Visible = False
      Size = 6
    end
    object CDSMovAplicacionID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Required = True
      Visible = False
    end
    object CDSMovAplicacionAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
      Origin = 'APLICA_ID_CPBTE'
      Required = True
      Visible = False
    end
    object CDSMovAplicacionAPLICA_TIPOCPBTE: TStringField
      FieldName = 'APLICA_TIPOCPBTE'
      Origin = 'APLICA_TIPOCPBTE'
      Visible = False
      Size = 2
    end
    object CDSMovAplicacionAPLICA_CLASECPBTE: TStringField
      FieldName = 'APLICA_CLASECPBTE'
      Origin = 'APLICA_CLASECPBTE'
      Visible = False
      Size = 2
    end
    object CDSMovAplicacionAPLICA_NROCPBTE: TStringField
      FieldName = 'APLICA_NROCPBTE'
      Origin = 'APLICA_NROCPBTE'
      Visible = False
      Size = 13
    end
    object CDSMovAplicacionCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Origin = 'CONCILIADO'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSMovAplicacionFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
  end
  object DSPMovAplicacion: TDataSetProvider
    DataSet = QMovAplicacion
    Options = [poAllowCommandText]
    Left = 112
    Top = 144
  end
  object DSMovCC: TDataSource
    DataSet = CDSMovCC
    Left = 298
    Top = 88
  end
  object DSMovAplicacion: TDataSource
    DataSet = CDSMovAplicacion
    Left = 298
    Top = 144
  end
  object DSMovCC_2: TDataSource
    DataSet = CDSMovCC_2
    Left = 298
    Top = 248
  end
  object CDSMovCC_2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'tipovta'
        ParamType = ptInput
        Size = 1
      end
      item
        DataType = ftString
        Name = 'tipovta'
        ParamType = ptInput
        Size = 1
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovCC_2'
    Left = 208
    Top = 248
    object CDSMovCC_2CODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSMovCC_2RAZON_SOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSMovCC_2SALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
  end
  object DSPMovCC_2: TDataSetProvider
    DataSet = QMovCC_2
    Options = [poAllowCommandText]
    Left = 112
    Top = 248
  end
  object DSPFiltroCab: TDataSetProvider
    DataSet = QFiltroC
    Left = 112
    Top = 304
  end
  object CDSFiltroCab: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPFiltroCab'
    Left = 208
    Top = 304
    object CDSFiltroCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSFiltroCabDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 25
    end
    object CDSFiltroCabGRUPO: TSmallintField
      FieldName = 'GRUPO'
    end
  end
  object DSFiltroCab: TDataSource
    DataSet = CDSFiltroCab
    Left = 296
    Top = 304
  end
  object DSFiltroDet: TDataSource
    DataSet = CDSFiltroDet
    Left = 296
    Top = 360
  end
  object CDSFiltroDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFiltroDet'
    Left = 208
    Top = 360
    object CDSFiltroDetID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSFiltroDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Required = True
    end
    object CDSFiltroDetID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
    end
    object CDSFiltroDetMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      Size = 15
    end
    object CDSFiltroDetMUESTRATIPO: TStringField
      FieldName = 'MUESTRATIPO'
      Size = 4
    end
    object CDSFiltroDetMUESTRACLASE: TStringField
      FieldName = 'MUESTRACLASE'
      Size = 4
    end
    object CDSFiltroDetMUESTRASUC: TStringField
      FieldName = 'MUESTRASUC'
      Size = 35
    end
  end
  object DSPFiltroDet: TDataSetProvider
    DataSet = QFiltroD
    Left = 104
    Top = 360
  end
  object QFiltroD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select tc.*,'
      'c.denominacion as MuestraComprobante,'
      'c.tipo_comprob as MuestraTipo,'
      'c.clase_comprob as MuestraClase,'
      's.detalle  as MuestraSuc from tabla_cpbte_ccvta_det tc'
      'left join comprobantes c on c.id_comprobante=tc.id_cpbte'
      'left join sucursal s on s.codigo=c.sucursal'
      'where tc.id_cab=:id'
      'order by s.detalle,c.tipo_comprob,c.clase_comprob'
      '')
    Left = 40
    Top = 368
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object spBorrarTemporales: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'BORRAR_MOVTMP_CCTEVTA'
    Left = 656
    Top = 32
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spGeneraMov: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'MOV_CTACTE_VTA_TODOS'
    Left = 728
    Top = 32
    ParamData = <
      item
        Position = 1
        Name = 'P_ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'P_SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'P_ZONA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'P_VENDEDOR'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 5
        Name = 'P_ACTIVO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 6
        Name = 'P_CPOSTAL'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 7
        Name = 'P_CATEGORIA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'P_COBRADOR'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
  end
  object QUltimoMovTemporal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtBCD
        TargetDataType = dtDouble
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end
      item
        SourceDataType = dtInt64
        TargetDataType = dtInt32
      end>
    SQL.Strings = (
      'select max(id) from movccvta_temporal')
    Left = 40
    Top = 424
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 656
    Top = 136
    object CDSSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Left = 728
    Top = 136
  end
  object CDSCobrador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCobrador'
    Left = 656
    Top = 184
    object CDSCobradorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSCobradorCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
  end
  object DSPCobrador: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCobradores
    Left = 728
    Top = 184
  end
  object CDSZona: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPZona'
    Left = 656
    Top = 232
    object CDSZonaID_ZONA: TIntegerField
      FieldName = 'ID_ZONA'
      Required = True
    end
    object CDSZonaDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 25
    end
  end
  object DSPZona: TDataSetProvider
    DataSet = DMBuscadores.QBuscaZona
    Left = 736
    Top = 232
  end
  object CDSCPostal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCPostal'
    Left = 656
    Top = 280
  end
  object DSPCPostal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCPostal
    Left = 736
    Top = 280
  end
  object DSPCategorias: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCategorias
    Left = 736
    Top = 328
  end
  object CDSCategorias: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCategorias'
    Left = 656
    Top = 328
    object CDSCategoriasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSCategoriasDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 30
    end
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    Left = 656
    Top = 376
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
  object DSPEmpresa: TDataSetProvider
    DataSet = DMMain_FD.QEmpresa
    Left = 730
    Top = 376
  end
  object CDSVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPVendedor'
    Left = 656
    Top = 88
    object StringField1: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
  end
  object DSPVendedor: TDataSetProvider
    DataSet = DMBuscadores.QBuscaVendedores
    Left = 728
    Top = 88
  end
  object CDSTotales: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 208
    Top = 432
    object CDSTotalesSaldoCC: TFloatField
      FieldName = 'SaldoCC'
      OnChange = CDSTotalesSaldoCCChange
      DisplayFormat = '$ 0,0.00;-$ 0,.00; -'
    end
    object CDSTotalesSaldoACta: TFloatField
      FieldName = 'SaldoACta'
      OnChange = CDSTotalesSaldoACtaChange
      DisplayFormat = '$ 0,0.00;-$ 0,.00; -'
    end
    object CDSTotalesSaldoFinal: TFloatField
      FieldName = 'SaldoFinal'
      DisplayFormat = '$ 0,0.00;-$ 0,.00; -'
    end
  end
  object DSTotales: TDataSource
    DataSet = CDSTotales
    Left = 288
    Top = 432
  end
end
