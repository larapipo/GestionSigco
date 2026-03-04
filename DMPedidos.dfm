object DatosPedidos: TDatosPedidos
  OnDestroy = DataModuleDestroy
  Height = 544
  Width = 591
  object QPedidoCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id,c.fecha,c.fecha_envio,c.cliente,cl.nombre as Muestra' +
        'Nombre,c.facturado,c.pedido_prevision,vto_prevision,'
      
        '       cl.condicion_iva as MuestraIva,c.estado_prevision,c.id_pr' +
        'evision,c.fecha_hora,'
      
        '       c.id_factura,c.tipo_factura,c.notas,c.pedido_estable,c.di' +
        'a,c.hay_pendientes,c.id_pedido_origen,'
      
        '       case c.tipo_factura when '#39'FC'#39' Then (select f.nrocpbte fro' +
        'm fcvtacab f where f.id_fc=c.id_factura)'
      
        '                           when '#39'RE'#39' Then (select r.nrocpbte fro' +
        'm rtocab r where r.id_rto=c.id_factura)'
      
        '                           end  as MuestraNroCpbte,c.estado,sp.e' +
        'stado as MuestraEstado,c.id_sector from plantilla_pedido_cab c'
      'left join clientes cl on cl.codigo=c.cliente'
      'left join estados_pedidos sp on sp.id=c.estado'
      'where c.id = :id')
    Left = 28
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QPedidoCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPedidoCabCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object QPedidoCabMUESTRANOMBRE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object QPedidoCabFACTURADO: TStringField
      FieldName = 'FACTURADO'
      Origin = 'FACTURADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPedidoCabMUESTRAIVA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAIVA'
      Origin = 'CONDICION_IVA'
      ProviderFlags = []
    end
    object QPedidoCabPEDIDO_PREVISION: TStringField
      FieldName = 'PEDIDO_PREVISION'
      Origin = 'PEDIDO_PREVISION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPedidoCabESTADO_PREVISION: TStringField
      FieldName = 'ESTADO_PREVISION'
      Origin = 'ESTADO_PREVISION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPedidoCabID_PREVISION: TIntegerField
      FieldName = 'ID_PREVISION'
      Origin = 'ID_PREVISION'
      Required = True
    end
    object QPedidoCabID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Origin = 'ID_FACTURA'
    end
    object QPedidoCabTIPO_FACTURA: TStringField
      FieldName = 'TIPO_FACTURA'
      Origin = 'TIPO_FACTURA'
      Size = 2
    end
    object QPedidoCabNOTAS: TStringField
      FieldName = 'NOTAS'
      Origin = 'NOTAS'
      Size = 250
    end
    object QPedidoCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QPedidoCabFECHA_ENVIO: TSQLTimeStampField
      FieldName = 'FECHA_ENVIO'
      Origin = 'FECHA_ENVIO'
    end
    object QPedidoCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QPedidoCabVTO_PREVISION: TSQLTimeStampField
      FieldName = 'VTO_PREVISION'
      Origin = 'VTO_PREVISION'
    end
    object QPedidoCabPEDIDO_ESTABLE: TStringField
      FieldName = 'PEDIDO_ESTABLE'
      Origin = 'PEDIDO_ESTABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPedidoCabDIA: TSmallintField
      FieldName = 'DIA'
      Origin = 'DIA'
    end
    object QPedidoCabHAY_PENDIENTES: TStringField
      FieldName = 'HAY_PENDIENTES'
      Origin = 'HAY_PENDIENTES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPedidoCabID_PEDIDO_ORIGEN: TIntegerField
      FieldName = 'ID_PEDIDO_ORIGEN'
      Origin = 'ID_PEDIDO_ORIGEN'
      Required = True
    end
    object QPedidoCabMUESTRANROCPBTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANROCPBTE'
      Origin = 'MUESTRANROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object QPedidoCabESTADO: TIntegerField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
    end
    object QPedidoCabMUESTRAESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAESTADO'
      Origin = 'ESTADO'
      ProviderFlags = []
      Size = 25
    end
    object QPedidoCabID_SECTOR: TIntegerField
      FieldName = 'ID_SECTOR'
      Origin = 'ID_SECTOR'
    end
  end
  object DSPPedidoCab: TDataSetProvider
    DataSet = QPedidoCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 92
    Top = 16
  end
  object CDSPedidoCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPedidoCab'
    OnNewRecord = CDSPedidoCabNewRecord
    Left = 188
    Top = 16
    object CDSPedidoCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPedidoCabCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      OnSetText = CDSPedidoCabCLIENTESetText
      Size = 6
    end
    object CDSPedidoCabMUESTRANOMBRE: TStringField
      FieldName = 'MUESTRANOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object CDSPedidoCabFACTURADO: TStringField
      FieldName = 'FACTURADO'
      Origin = 'FACTURADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSPedidoCabMUESTRAIVA: TIntegerField
      FieldName = 'MUESTRAIVA'
      Origin = 'CONDICION_IVA'
      ProviderFlags = []
    end
    object CDSPedidoCabPEDIDO_PREVISION: TStringField
      FieldName = 'PEDIDO_PREVISION'
      Origin = 'PEDIDO_PREVISION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSPedidoCabESTADO_PREVISION: TStringField
      FieldName = 'ESTADO_PREVISION'
      Origin = 'ESTADO_PREVISION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSPedidoCabID_PREVISION: TIntegerField
      FieldName = 'ID_PREVISION'
      Origin = 'ID_PREVISION'
      Required = True
    end
    object CDSPedidoCabID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Origin = 'ID_FACTURA'
    end
    object CDSPedidoCabTIPO_FACTURA: TStringField
      FieldName = 'TIPO_FACTURA'
      Origin = 'TIPO_FACTURA'
      Size = 2
    end
    object CDSPedidoCabNOTAS: TStringField
      FieldName = 'NOTAS'
      Origin = 'NOTAS'
      Size = 250
    end
    object CDSPedidoCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSPedidoCabFECHA_ENVIO: TSQLTimeStampField
      FieldName = 'FECHA_ENVIO'
      Origin = 'FECHA_ENVIO'
    end
    object CDSPedidoCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object CDSPedidoCabVTO_PREVISION: TSQLTimeStampField
      FieldName = 'VTO_PREVISION'
      Origin = 'VTO_PREVISION'
    end
    object CDSPedidoCabPEDIDO_ESTABLE: TStringField
      FieldName = 'PEDIDO_ESTABLE'
      Origin = 'PEDIDO_ESTABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSPedidoCabDIA: TSmallintField
      FieldName = 'DIA'
    end
    object CDSPedidoCabHAY_PENDIENTES: TStringField
      FieldName = 'HAY_PENDIENTES'
      Required = True
      OnGetText = CDSPedidoCabHAY_PENDIENTESGetText
      FixedChar = True
      Size = 1
    end
    object CDSPedidoCabID_PEDIDO_ORIGEN: TIntegerField
      FieldName = 'ID_PEDIDO_ORIGEN'
      Required = True
    end
    object CDSPedidoCabMUESTRANROCPBTE: TStringField
      FieldName = 'MUESTRANROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSPedidoCabESTADO: TIntegerField
      FieldName = 'ESTADO'
      Required = True
    end
    object CDSPedidoCabMUESTRAESTADO: TStringField
      FieldName = 'MUESTRAESTADO'
      ProviderFlags = []
      Size = 25
    end
    object CDSPedidoCabID_SECTOR: TIntegerField
      FieldName = 'ID_SECTOR'
    end
  end
  object CDSPedidoDet: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPedidoDet'
    BeforeEdit = CDSPedidoDetBeforeEdit
    AfterPost = CDSPedidoDetAfterPost
    OnCalcFields = CDSPedidoDetCalcFields
    OnNewRecord = CDSPedidoDetNewRecord
    Left = 188
    Top = 80
    object CDSPedidoDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPedidoDetIDCAB: TIntegerField
      FieldName = 'IDCAB'
      Origin = 'IDCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSPedidoDetCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object CDSPedidoDetMUESTRADETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'MUESTRADETALLE'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object CDSPedidoDetCANTIDAD_PEDIDA: TFloatField
      DisplayLabel = 'Can.Pedida'
      FieldName = 'CANTIDAD_PEDIDA'
      Origin = 'CANTIDAD_PEDIDA'
      OnSetText = CDSPedidoDetCANTIDAD_PEDIDASetText
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPedidoDetCANTIDAD_UNID_PED: TFloatField
      DisplayLabel = 'Unid.Pedidas'
      FieldName = 'CANTIDAD_UNID_PED'
      Origin = 'CANTIDAD_UNID_PED'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPedidoDetCANTIDAD_UNID_ENTR: TFloatField
      DisplayLabel = 'Uni.Entreg.'
      FieldName = 'CANTIDAD_UNID_ENTR'
      Origin = 'CANTIDAD_UNID_ENTR'
      OnSetText = CDSPedidoDetCANTIDAD_UNID_ENTRSetText
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPedidoDetCANTIDAD_PRESENTACION: TFloatField
      DisplayLabel = 'Presenta.'
      FieldName = 'CANTIDAD_PRESENTACION'
      Origin = 'CANTIDAD_PRESENTACION'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPedidoDetMUESTRASUBRUB: TStringField
      DisplayLabel = 'Sub'
      FieldName = 'MUESTRASUBRUB'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      Size = 45
    end
    object CDSPedidoDetMUESTRAIDGRUPO: TIntegerField
      FieldName = 'MUESTRAIDGRUPO'
      Origin = 'ID_GRUPO'
      ProviderFlags = []
    end
    object CDSPedidoDetMUESTRAGRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'MUESTRAGRUPO'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 60
    end
    object CDSPedidoDetMUESTRAORDENGRUPO: TIntegerField
      FieldName = 'MUESTRAORDENGRUPO'
      Origin = 'ORDEN'
      ProviderFlags = []
    end
    object CDSPedidoDetORDEN_GRUPO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ORDEN_GRUPO'
      Size = 50
    end
    object CDSPedidoDetMUESTRAORDENPLA: TIntegerField
      FieldName = 'MUESTRAORDENPLA'
      Origin = 'ID_ORDEN'
      ProviderFlags = []
    end
    object CDSPedidoDetTOTALPEDIDO: TAggregateField
      FieldName = 'TOTALPEDIDO'
      Active = True
      DisplayName = ''
      Expression = 'sum(CANTIDAD_PEDIDA)'
    end
  end
  object DSPPedidoDet: TDataSetProvider
    DataSet = QPedidoDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 100
    Top = 80
  end
  object QPedidoDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select d.id,d.idcab,d.codigo,s.detalle_stk as MuestraDetalle,d.c' +
        'antidad_pedida,'
      
        'd.cantidad_unid_ped,d.cantidad_unid_entr,d.cantidad_presentacion' +
        ',sr.detalle_subrubro as MuestraSubRub,'
      
        'ptl.id_grupo as MuestraIDGrupo,ppg.descripcion as MuestraGrupo,p' +
        'pg.orden as MuestraOrdenGrupo,ptl.id_orden as MuestraOrdenPla fr' +
        'om plantilla_pedido_det d'
      'left join stock s on s.codigo_stk=d.codigo'
      'left join rubros r on r.codigo_rubro=s.rubro_stk'
      'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      'left join plantilla_pedido ptl on ptl.codigo=d.codigo'
      'left join plantilla_pedido_grupos ppg on ppg.id=ptl.id_grupo'
      'where d.idcab = :id and s.clase_articulo<>0'
      'order by sr.detalle_subrubro,ptl.id_orden')
    Left = 28
    Top = 80
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QPedidoDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPedidoDetIDCAB: TIntegerField
      FieldName = 'IDCAB'
      Origin = 'IDCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QPedidoDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object QPedidoDetMUESTRADETALLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADETALLE'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object QPedidoDetCANTIDAD_PEDIDA: TFloatField
      FieldName = 'CANTIDAD_PEDIDA'
      Origin = 'CANTIDAD_PEDIDA'
    end
    object QPedidoDetCANTIDAD_UNID_PED: TFloatField
      FieldName = 'CANTIDAD_UNID_PED'
      Origin = 'CANTIDAD_UNID_PED'
    end
    object QPedidoDetCANTIDAD_UNID_ENTR: TFloatField
      FieldName = 'CANTIDAD_UNID_ENTR'
      Origin = 'CANTIDAD_UNID_ENTR'
    end
    object QPedidoDetCANTIDAD_PRESENTACION: TFloatField
      FieldName = 'CANTIDAD_PRESENTACION'
      Origin = 'CANTIDAD_PRESENTACION'
    end
    object QPedidoDetMUESTRASUBRUB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUBRUB'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object QPedidoDetMUESTRAIDGRUPO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAIDGRUPO'
      Origin = 'ID_GRUPO'
      ProviderFlags = []
    end
    object QPedidoDetMUESTRAGRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAGRUPO'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 60
    end
    object QPedidoDetMUESTRAORDENGRUPO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAORDENGRUPO'
      Origin = 'ORDEN'
      ProviderFlags = []
    end
    object QPedidoDetMUESTRAORDENPLA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAORDENPLA'
      Origin = 'ID_ORDEN'
      ProviderFlags = []
    end
  end
  object QBuscadorPedido: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.id,c.fecha,c.cliente,cl.nombre as MuestraNombre,'
      
        '       c.facturado,c.pedido_prevision,c.id_factura,c.id_pedido_o' +
        'rigen,'
      
        '       c.tipo_factura,c.pedido_estable,case c.dia when 1 Then '#39'L' +
        'unes'#39
      
        '                                                  when 2 Then '#39'M' +
        'artes'#39
      
        '                                                  when 3 Then '#39'M' +
        'iercoles'#39
      
        '                                                  when 4 Then '#39'J' +
        'ueves'#39
      
        '                                                  when 5 Then '#39'V' +
        'iernes'#39
      
        '                                                  when 6 Then '#39'S' +
        'abado'#39
      
        '                                                  when 7 Then '#39'D' +
        'omingo'#39
      
        '                                                  else '#39'--'#39'  end' +
        ' as DiaSemana,'
      
        '         case c.tipo_factura when '#39'FC'#39' Then (select f.nrocpbte f' +
        'rom fcvtacab f where f.id_fc=c.id_factura)'
      
        '                             when '#39'RE'#39' Then (select r.nrocpbte f' +
        'rom rtocab r where r.id_rto=c.id_factura)'
      '                        end  as MuestraNroCpbte,'
      'C.ESTADO,ep.estado as MuestraEstado,'
      's.detalle as MuestraSector'
      ' from plantilla_pedido_cab c'
      'left join clientes cl on cl.codigo = c.cliente'
      'left join  estados_pedidos ep on ep.id=c.estado'
      'left join plantilla_pedido_sector s on s.id=c.id_sector'
      'where ( c.facturado= :Estado or :Estado='#39'*'#39') and '
      
        '      ( (c.pedido_prevision = :prevision and  c.estado_prevision' +
        '='#39'A'#39') or (:prevision='#39'*'#39' )) and (c.cliente<>'#39#39') and'
      '      ( c.pedido_estable = :estable or :estable='#39'*'#39' )'
      'order by c.cliente,c.fecha Asc'
      '')
    Left = 28
    Top = 128
    ParamData = <
      item
        Position = 1
        Name = 'ESTADO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 2
        Name = 'PREVISION'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 3
        Name = 'ESTABLE'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end>
  end
  object DSPBuscadorPedido: TDataSetProvider
    DataSet = QBuscadorPedido
    Options = []
    Left = 108
    Top = 136
  end
  object CDSBuscadorPedido: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FECHA'
        DataType = ftTimeStamp
      end
      item
        Name = 'CLIENTE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'MUESTRANOMBRE'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 35
      end
      item
        Name = 'FACTURADO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PEDIDO_PREVISION'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_FACTURA'
        DataType = ftInteger
      end
      item
        Name = 'ID_PEDIDO_ORIGEN'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TIPO_FACTURA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PEDIDO_ESTABLE'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DIASEMANA'
        Attributes = [faReadonly, faFixed]
        DataType = ftString
        Size = 9
      end
      item
        Name = 'MUESTRANROCPBTE'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 13
      end
      item
        Name = 'ESTADO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'MUESTRAESTADO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'MUESTRASECTOR'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'ndxID'
        Fields = 'Id'
        Options = [ixDescending]
      end>
    Params = <
      item
        DataType = ftFixedChar
        Name = 'ESTADO'
        ParamType = ptInput
        Size = 1
      end
      item
        DataType = ftFixedChar
        Name = 'PREVISION'
        ParamType = ptInput
        Size = 1
      end
      item
        DataType = ftFixedChar
        Name = 'ESTABLE'
        ParamType = ptInput
        Size = 1
      end>
    ProviderName = 'DSPBuscadorPedido'
    StoreDefs = True
    Left = 204
    Top = 144
    object IntegerField1: TIntegerField
      DisplayLabel = 'Nro.'
      DisplayWidth = 15
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 60
      FieldName = 'MUESTRANOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object StringField2: TStringField
      Alignment = taCenter
      DisplayLabel = 'Codigo'
      DisplayWidth = 14
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 14
    end
    object CDSBuscadorPedidoFECHA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha'
      DisplayWidth = 20
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSBuscadorPedidoPEDIDO_ESTABLE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Estable'
      DisplayWidth = 10
      FieldName = 'PEDIDO_ESTABLE'
      Origin = 'PEDIDO_ESTABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscadorPedidoPEDIDO_PREVISION: TStringField
      Alignment = taCenter
      DisplayLabel = 'O.Prev'
      DisplayWidth = 10
      FieldName = 'PEDIDO_PREVISION'
      Origin = 'PEDIDO_PREVISION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField3: TStringField
      Alignment = taCenter
      DisplayLabel = 'Fact.'
      DisplayWidth = 10
      FieldName = 'FACTURADO'
      Origin = 'FACTURADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscadorPedidoMUESTRANROCPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro.Cpbte'
      DisplayWidth = 30
      FieldName = 'MUESTRANROCPBTE'
      Origin = 'MUESTRANROCPBTE'
      ProviderFlags = []
      ReadOnly = True
      EditMask = 'a-0000-00000000;0'
      Size = 30
    end
    object CDSBuscadorPedidoDIASEMANA: TStringField
      DisplayLabel = 'Dia'
      FieldName = 'DIASEMANA'
      Origin = 'DIASEMANA'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 9
    end
    object CDSBuscadorPedidoID_PEDIDO_ORIGEN: TIntegerField
      DisplayLabel = 'Ped.Orig'
      FieldName = 'ID_PEDIDO_ORIGEN'
      Origin = 'ID_PEDIDO_ORIGEN'
      Required = True
      OnGetText = CDSBuscadorPedidoID_PEDIDO_ORIGENGetText
    end
    object CDSBuscadorPedidoMUESTRAESTADO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Estado'
      DisplayWidth = 28
      FieldName = 'MUESTRAESTADO'
      Origin = 'ESTADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object CDSBuscadorPedidoMUESTRASECTOR: TStringField
      DisplayLabel = 'Sector'
      FieldName = 'MUESTRASECTOR'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object ibgCab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_PLANTILLA_PEDIDO_CAB'
    SystemGenerators = False
    Left = 260
    Top = 17
  end
  object ibgDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_PLANTILLA_PEDIDO_DET'
    SystemGenerators = False
    Left = 260
    Top = 82
  end
  object QStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select S.codigo_stk,s.detalle_stk,s.presentacion_cantidad,Ru.Det' +
        'alle_Rubro as MuestraRubro,'
      '      Sub.Detalle_SubRubro as MuestraSubRubro'
      '      from stock s'
      '      left join rubros ru on s.rubro_stk = ru.Codigo_rubro'
      
        '      left join subrubros sub on s.subrubro_stk = sub.Codigo_sub' +
        'rubro'
      'where S.Codigo_Stk = :codigo')
    Left = 19
    Top = 210
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object DSPStock: TDataSetProvider
    DataSet = QStock
    Options = []
    Left = 99
    Top = 218
  end
  object CDSStock: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 8
      end>
    ProviderName = 'DSPStock'
    Left = 171
    Top = 210
    object CDSStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object CDSStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object CDSStockPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      Required = True
    end
    object CDSStockMUESTRARUBRO: TStringField
      FieldName = 'MUESTRARUBRO'
      ReadOnly = True
      Size = 35
    end
    object CDSStockMUESTRASUBRUBRO: TStringField
      FieldName = 'MUESTRASUBRUBRO'
      ReadOnly = True
      Size = 45
    end
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'SELECT C.*,z.detalle as MuestraZona, g.id as MuestraIDGarante  F' +
        'ROM Clientes C'
      'left join zona z on z.id_zona=c.zona'
      
        'left join clientes_garantes g on g.codigocliente=c.codigo and g.' +
        'por_defecto='#39'S'#39
      'where (c.codigo=:codigo) and (c.activo<>'#39'N'#39')'
      '')
    Left = 407
    Top = 168
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
    object QClientesCHEQUES: TStringField
      FieldName = 'CHEQUES'
      Origin = 'CHEQUES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesID_ADMINISTRACION: TIntegerField
      FieldName = 'ID_ADMINISTRACION'
      Origin = 'ID_ADMINISTRACION'
      Required = True
    end
    object QClientesMUESTRAZONA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAZONA'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QClientesMUESTRAIDGARANTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAIDGARANTE'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QHayRtos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select count(r.id_rto) from rtocab r where r.idfactura = :idfc')
    Left = 407
    Top = 112
    ParamData = <
      item
        Name = 'IDFC'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QHayRtosCOUNT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COUNT'
      Origin = 'COUNT'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QUpdateOrdenPlantilla: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update plantilla_pedido p set p.id_orden=:orden where p.codigo=:' +
        'codigo')
    Left = 407
    Top = 218
    ParamData = <
      item
        Name = 'ORDEN'
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object QPrevision: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select  d.*,c.fecha, c.facturado,c.pedido_prevision,'
      '        sr.detalle_subrubro as MuestraSubRub,'
      
        '        s.detalle_stk as MuestraDetalle from plantilla_pedido_ca' +
        'b c'
      'left join  plantilla_pedido_det d on d.idcab = c.id'
      'left join clientes cl on cl.codigo = c.cliente'
      'left join stock s on s.codigo_stk=d.codigo'
      'left join rubros r on r.codigo_rubro=s.rubro_stk'
      'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      
        'where  c.pedido_prevision = '#39'S'#39' and estado_prevision='#39'A'#39' and c.c' +
        'liente=:cliente')
    Left = 28
    Top = 314
    ParamData = <
      item
        Position = 1
        Name = 'CLIENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
  end
  object DSPPrevision: TDataSetProvider
    DataSet = QPrevision
    Options = []
    Left = 108
    Top = 314
  end
  object CDSPrevision: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
        Size = 6
      end>
    ProviderName = 'DSPPrevision'
    Left = 180
    Top = 314
    object CDSPrevisionID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPrevisionIDCAB: TIntegerField
      FieldName = 'IDCAB'
      Origin = 'IDCAB'
    end
    object CDSPrevisionCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object CDSPrevisionCANTIDAD_PEDIDA: TFloatField
      DisplayLabel = 'Cant.Pedida'
      FieldName = 'CANTIDAD_PEDIDA'
      Origin = 'CANTIDAD_PEDIDA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPrevisionCANTIDAD_UNID_PED: TFloatField
      DisplayLabel = 'Uni.Pedidas'
      FieldName = 'CANTIDAD_UNID_PED'
      Origin = 'CANTIDAD_UNID_PED'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPrevisionCANTIDAD_UNID_ENTR: TFloatField
      DisplayLabel = 'Uni.Entregadas'
      FieldName = 'CANTIDAD_UNID_ENTR'
      Origin = 'CANTIDAD_UNID_ENTR'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPrevisionCANTIDAD_PRESENTACION: TFloatField
      FieldName = 'CANTIDAD_PRESENTACION'
      Origin = 'CANTIDAD_PRESENTACION'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPrevisionFACTURADO: TStringField
      FieldName = 'FACTURADO'
      Origin = 'FACTURADO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object CDSPrevisionPEDIDO_PREVISION: TStringField
      FieldName = 'PEDIDO_PREVISION'
      Origin = 'PEDIDO_PREVISION'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object CDSPrevisionMUESTRASUBRUB: TStringField
      DisplayLabel = 'SubRub'
      FieldName = 'MUESTRASUBRUB'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object CDSPrevisionMUESTRADETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'MUESTRADETALLE'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object CDSPrevisionFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QComprobante: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.* from comprobantes c'
      'where c.tipo_comprob='#39'FC'#39' and'
      '      c.sucursal=:sucursal and'
      '      c.compra_venta='#39'V'#39)
    Left = 44
    Top = 392
    ParamData = <
      item
        Position = 1
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPComprobante: TDataSetProvider
    DataSet = QComprobante
    Options = []
    Left = 128
    Top = 392
  end
  object CDSComprobante: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    ProviderName = 'DSPComprobante'
    Left = 192
    Top = 392
    object CDSComprobanteID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSComprobanteTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSComprobanteCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSComprobanteDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object CDSComprobanteSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSComprobanteLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSComprobantePREFIJO: TStringField
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object CDSComprobanteNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object CDSComprobanteNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object CDSComprobanteTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
      Origin = 'TOMA_NRO_DE'
    end
    object CDSComprobanteAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Origin = 'AFECTA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobanteAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Origin = 'AFECTA_CC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobanteDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobanteCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Origin = 'COMPRA_VENTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobanteCOPIAS: TIntegerField
      FieldName = 'COPIAS'
      Origin = 'COPIAS'
    end
    object CDSComprobanteREPORTE: TStringField
      FieldName = 'REPORTE'
      Origin = 'REPORTE'
      Size = 100
    end
    object CDSComprobanteIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      FixedChar = True
      Size = 1
    end
    object CDSComprobanteFISCAL: TStringField
      FieldName = 'FISCAL'
      Origin = 'FISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobanteNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Origin = 'NOMBREIMPRESORA'
      Size = 15
    end
    object CDSComprobantePENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Origin = 'PENDIENTEIMPRESION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobanteLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Origin = 'LINEAS_DETALLE'
      Required = True
    end
    object CDSComprobanteCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Origin = 'CALCULA_IVA_ARTICULOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobanteDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Origin = 'DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QComprobantePorDefecto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select id_comprobante from comprobantes where'
      'tipo_comprob=:tipo and '
      'compra_venta=:compraventa and '
      'Sucursal=:sucursal and '
      'desgloza_iva=:DesglozaIva and'
      'defecto='#39'S'#39' and en_uso='#39'S'#39)
    Left = 48
    Top = 468
    ParamData = <
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
        Value = Null
      end
      item
        Name = 'COMPRAVENTA'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DESGLOZAIVA'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end>
  end
  object DSPComprobantePorDefecto: TDataSetProvider
    DataSet = QComprobantePorDefecto
    Options = []
    Left = 136
    Top = 467
  end
  object CDSComprobantePorDefecto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'compraventa'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DesglozaIva'
        ParamType = ptInput
      end>
    ProviderName = 'DSPComprobantePorDefecto'
    Left = 208
    Top = 467
  end
  object QStock_x_SubRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk from stock s where s.subrubro_stk = :subrubr' +
        'o'
      'and s.clase_articulo<>0'
      '')
    Left = 495
    Top = 416
    ParamData = <
      item
        Name = 'SUBRUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 5
        Value = Null
      end>
    object QStock_x_SubRubroCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
  end
  object spGeneraPendiente: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'GENERAR_PEDIDO_PENDIENTE'
    Left = 368
    Top = 416
    ParamData = <
      item
        Position = 1
        Name = 'ID_PEDIDO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spMarcarPedido: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'TOOLS_MARCA_PLANTILLA_PEDIDO'
    Left = 408
    Top = 288
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
