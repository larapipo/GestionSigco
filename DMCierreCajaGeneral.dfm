object DatosCierreCajaGeneral: TDatosCierreCajaGeneral
  Height = 510
  Width = 989
  object QCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cc.*, cta.nombre as MuestraCtaCaja from Caja_cab cc '
      
        '                                    left join cuenta_caja cta on' +
        ' cta.id_cuenta=cc.id_cuenta_caja '
      
        '                                    where cc.estado=0 and cta.id' +
        '_tipo_cta=1'
      
        '                                    order by cc.id_caja,cc.estad' +
        'o,cc.fecha_incio ')
    Left = 32
    Top = 16
  end
  object DSPCaja: TDataSetProvider
    DataSet = QCaja
    Left = 96
    Top = 16
  end
  object CDSCaja: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCaja'
    Left = 170
    Top = 16
    object CDSCajaID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCajaID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
    object CDSCajaFECHA_INCIO: TSQLTimeStampField
      DisplayWidth = 8
      FieldName = 'FECHA_INCIO'
      Origin = 'FECHA_INCIO'
      Required = True
    end
    object CDSCajaFECHA_CIERRE: TSQLTimeStampField
      DisplayWidth = 8
      FieldName = 'FECHA_CIERRE'
      Origin = 'FECHA_CIERRE'
    end
    object CDSCajaSALDO_INCIAL: TFloatField
      FieldName = 'SALDO_INCIAL'
      Origin = 'SALDO_INCIAL'
    end
    object CDSCajaESTADO: TIntegerField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
    end
    object CDSCajaOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object CDSCajaNUMEROCAJA: TIntegerField
      DisplayWidth = 5
      FieldName = 'NUMEROCAJA'
      Origin = 'NUMEROCAJA'
    end
    object CDSCajaMUESTRACTACAJA: TStringField
      DisplayWidth = 18
      FieldName = 'MUESTRACTACAJA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
  end
  object DSPSucrusal: TDataSetProvider
    DataSet = QSucursal
    Options = []
    Left = 96
    Top = 135
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPSucrusal'
    Left = 168
    Top = 135
    object CDSSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
  end
  object QIdCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.id_caja, c.id_cuenta_caja from Caja_Cab c '
      'where c.estado=0 and c.id_cuenta_caja = :ID')
    Left = 536
    Top = 16
    ParamData = <
      item
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end>
    object QIdCajaID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QIdCajaID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
  end
  object QCliente: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.codigo,c.nombre,c.razon_social from clientes c'
      'where c.codigo=:codigo')
    Left = 628
    Top = 18
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftFixedChar
        ParamType = ptInput
        Value = Null
      end>
    object QClienteCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QClienteNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
  end
  object QCpbteVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes c'
      
        'where c.tipo_comprob in ('#39'FO'#39','#39'TK'#39') and c.compra_venta= '#39'V'#39' and ' +
        'c.sucursal=:suc and (c.id_comprobante=:codigo)')
    Left = 700
    Top = 18
    ParamData = <
      item
        Name = 'SUC'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QCpbteVtaID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCpbteVtaTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QCpbteVtaCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object QCpbteVtaDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object QCpbteVtaSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QCpbteVtaLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QCpbteVtaPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object QCpbteVtaNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object QCpbteVtaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object QCpbteVtaTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
      Origin = 'TOMA_NRO_DE'
    end
    object QCpbteVtaAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Origin = 'AFECTA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCpbteVtaAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Origin = 'AFECTA_CC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCpbteVtaDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCpbteVtaCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Origin = 'COMPRA_VENTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCpbteVtaCOPIAS: TIntegerField
      FieldName = 'COPIAS'
      Origin = 'COPIAS'
    end
    object QCpbteVtaREPORTE: TStringField
      FieldName = 'REPORTE'
      Origin = 'REPORTE'
      Size = 100
    end
    object QCpbteVtaIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      FixedChar = True
      Size = 1
    end
    object QCpbteVtaFISCAL: TStringField
      FieldName = 'FISCAL'
      Origin = 'FISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCpbteVtaNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Origin = 'NOMBREIMPRESORA'
      Size = 15
    end
    object QCpbteVtaPENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Origin = 'PENDIENTEIMPRESION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCpbteVtaLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Origin = 'LINEAS_DETALLE'
      Required = True
    end
    object QCpbteVtaCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Origin = 'CALCULA_IVA_ARTICULOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCpbteVtaDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Origin = 'DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCpbteVtaCAJA_DEFECTO: TIntegerField
      FieldName = 'CAJA_DEFECTO'
      Origin = 'CAJA_DEFECTO'
      Required = True
    end
    object QCpbteVtaDIVIDE_IVA: TStringField
      FieldName = 'DIVIDE_IVA'
      Origin = 'DIVIDE_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCpbteVtaFACTURAELECTRONICA: TStringField
      FieldName = 'FACTURAELECTRONICA'
      Origin = 'FACTURAELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCpbteVtaEN_USO: TStringField
      FieldName = 'EN_USO'
      Origin = 'EN_USO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCpbteVtaCODIGO_AFIP: TStringField
      FieldName = 'CODIGO_AFIP'
      Origin = 'CODIGO_AFIP'
      Size = 3
    end
    object QCpbteVtaID_AJUSTECC: TIntegerField
      FieldName = 'ID_AJUSTECC'
      Origin = 'ID_AJUSTECC'
    end
    object QCpbteVtaCENTRO_COSTO: TIntegerField
      FieldName = 'CENTRO_COSTO'
      Origin = 'CENTRO_COSTO'
    end
    object QCpbteVtaFILTRO_COMPROBANTES: TStringField
      FieldName = 'FILTRO_COMPROBANTES'
      Origin = 'FILTRO_COMPROBANTES'
      FixedChar = True
      Size = 1
    end
    object QCpbteVtaDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QCpbteVtaULTIMONRO: TIntegerField
      FieldName = 'ULTIMONRO'
      Origin = 'ULTIMONRO'
    end
    object QCpbteVtaEDITAR_NRO: TStringField
      FieldName = 'EDITAR_NRO'
      Origin = 'EDITAR_NRO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCpbteVtaCONTROLADOR_NROREG: TStringField
      FieldName = 'CONTROLADOR_NROREG'
      Origin = 'CONTROLADOR_NROREG'
    end
    object QCpbteVtaUSAR_CAEA: TStringField
      FieldName = 'USAR_CAEA'
      Origin = 'USAR_CAEA'
      FixedChar = True
      Size = 1
    end
    object QCpbteVtaCAEA: TStringField
      FieldName = 'CAEA'
      Origin = 'CAEA'
      Size = 50
    end
    object QCpbteVtaVENCIMIENTO_CAEA_DESDE: TSQLTimeStampField
      FieldName = 'VENCIMIENTO_CAEA_DESDE'
      Origin = 'VENCIMIENTO_CAEA_DESDE'
    end
    object QCpbteVtaVENCIMIENTO_CAEA_HASTA: TSQLTimeStampField
      FieldName = 'VENCIMIENTO_CAEA_HASTA'
      Origin = 'VENCIMIENTO_CAEA_HASTA'
    end
  end
  object QArticulo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from stock s'
      'where (:codigo is null) or (s.codigo_stk=:codigo)')
    Left = 772
    Top = 18
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftFixedChar
        ParamType = ptInput
        Value = Null
      end>
    object QArticuloCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QArticuloDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
  end
  object QBuscaPersonal: TFDQuery
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select p.Nombre,p.codigo,p.activo from personal p '
      
        'where (p.activo='#39'S'#39') and ((:codigo is null) or (p.codigo=:codigo' +
        '))'
      'order by p.nombre')
    Left = 601
    Top = 362
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
  end
  object DSPBuscaPersonal: TDataSetProvider
    DataSet = QBuscaPersonal
    Options = []
    Left = 681
    Top = 370
  end
  object CDSBuscaPersonal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 6
      end>
    ProviderName = 'DSPBuscaPersonal'
    Left = 761
    Top = 370
    object CDSBuscaPersonalNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object CDSBuscaPersonalCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSBuscaPersonalACTIVO: TStringField
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QCpbteAdelantos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select   c.ID_COMPROBANTE,c.TIPO_COMPROB,c.LETRA,c.prefijo, c.nu' +
        'mero,'
      
        '    c.CLASE_COMPROB, c.DENOMINACION,c.SUCURSAL from comprobantes' +
        ' c'
      
        'where (c.tipo_comprob='#39'VA'#39') and (c.sucursal=:sucursal) and ((:co' +
        'digo is null) or (c.ID_COMPROBANTE=:codigo))')
    Left = 540
    Top = 111
    ParamData = <
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end
      item
        Name = 'CODIGO'
        DataType = ftFixedChar
        ParamType = ptInput
      end>
    object QCpbteAdelantosID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCpbteAdelantosTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QCpbteAdelantosCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object QCpbteAdelantosDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object QCpbteAdelantosSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QCpbteAdelantosLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QCpbteAdelantosPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object QCpbteAdelantosNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
  end
  object QCpbteEgreso: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      'id_comprobante=:id '
      'and sucursal=:suc '
      'and compra_venta='#39'C'#39' '
      'and (tipo_comprob='#39'EC'#39')')
    Left = 632
    Top = 104
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
    object QCpbteEgresoID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCpbteEgresoTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QCpbteEgresoCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object QCpbteEgresoDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object QCpbteEgresoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QCpbteEgresoLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QCpbteEgresoPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object QCpbteEgresoNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object QCpbteEgresoNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object QCpbteEgresoTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
      Origin = 'TOMA_NRO_DE'
    end
    object QCpbteEgresoAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Origin = 'AFECTA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCpbteEgresoAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Origin = 'AFECTA_CC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCpbteEgresoDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCpbteEgresoCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Origin = 'COMPRA_VENTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCpbteEgresoCOPIAS: TIntegerField
      FieldName = 'COPIAS'
      Origin = 'COPIAS'
    end
    object QCpbteEgresoREPORTE: TStringField
      FieldName = 'REPORTE'
      Origin = 'REPORTE'
      Size = 100
    end
    object QCpbteEgresoIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      FixedChar = True
      Size = 1
    end
    object QCpbteEgresoFISCAL: TStringField
      FieldName = 'FISCAL'
      Origin = 'FISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCpbteEgresoNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Origin = 'NOMBREIMPRESORA'
      Size = 15
    end
    object QCpbteEgresoPENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Origin = 'PENDIENTEIMPRESION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCpbteEgresoLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Origin = 'LINEAS_DETALLE'
      Required = True
    end
    object QCpbteEgresoCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Origin = 'CALCULA_IVA_ARTICULOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCpbteEgresoDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Origin = 'DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCpbteEgresoCAJA_DEFECTO: TIntegerField
      FieldName = 'CAJA_DEFECTO'
      Origin = 'CAJA_DEFECTO'
      Required = True
    end
    object QCpbteEgresoDIVIDE_IVA: TStringField
      FieldName = 'DIVIDE_IVA'
      Origin = 'DIVIDE_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCpbteEgresoFACTURAELECTRONICA: TStringField
      FieldName = 'FACTURAELECTRONICA'
      Origin = 'FACTURAELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCpbteEgresoEN_USO: TStringField
      FieldName = 'EN_USO'
      Origin = 'EN_USO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCpbteEgresoCODIGO_AFIP: TStringField
      FieldName = 'CODIGO_AFIP'
      Origin = 'CODIGO_AFIP'
      Size = 3
    end
    object QCpbteEgresoID_AJUSTECC: TIntegerField
      FieldName = 'ID_AJUSTECC'
      Origin = 'ID_AJUSTECC'
    end
    object QCpbteEgresoCENTRO_COSTO: TIntegerField
      FieldName = 'CENTRO_COSTO'
      Origin = 'CENTRO_COSTO'
    end
    object QCpbteEgresoFILTRO_COMPROBANTES: TStringField
      FieldName = 'FILTRO_COMPROBANTES'
      Origin = 'FILTRO_COMPROBANTES'
      FixedChar = True
      Size = 1
    end
    object QCpbteEgresoDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QCpbteEgresoULTIMONRO: TIntegerField
      FieldName = 'ULTIMONRO'
      Origin = 'ULTIMONRO'
    end
    object QCpbteEgresoEDITAR_NRO: TStringField
      FieldName = 'EDITAR_NRO'
      Origin = 'EDITAR_NRO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCpbteEgresoCONTROLADOR_NROREG: TStringField
      FieldName = 'CONTROLADOR_NROREG'
      Origin = 'CONTROLADOR_NROREG'
    end
    object QCpbteEgresoUSAR_CAEA: TStringField
      FieldName = 'USAR_CAEA'
      Origin = 'USAR_CAEA'
      FixedChar = True
      Size = 1
    end
    object QCpbteEgresoCAEA: TStringField
      FieldName = 'CAEA'
      Origin = 'CAEA'
      Size = 50
    end
    object QCpbteEgresoVENCIMIENTO_CAEA_DESDE: TSQLTimeStampField
      FieldName = 'VENCIMIENTO_CAEA_DESDE'
      Origin = 'VENCIMIENTO_CAEA_DESDE'
    end
    object QCpbteEgresoVENCIMIENTO_CAEA_HASTA: TSQLTimeStampField
      FieldName = 'VENCIMIENTO_CAEA_HASTA'
      Origin = 'VENCIMIENTO_CAEA_HASTA'
    end
  end
  object CDSCajaTx: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCaja'
    Left = 170
    Top = 72
    object CDSCajaTxID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCajaTxID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
    object CDSCajaTxFECHA_INCIO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO'
      Origin = 'FECHA_INCIO'
      Required = True
    end
    object CDSCajaTxFECHA_CIERRE: TSQLTimeStampField
      FieldName = 'FECHA_CIERRE'
      Origin = 'FECHA_CIERRE'
    end
    object CDSCajaTxSALDO_INCIAL: TFloatField
      FieldName = 'SALDO_INCIAL'
      Origin = 'SALDO_INCIAL'
    end
    object CDSCajaTxESTADO: TIntegerField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
    end
    object CDSCajaTxOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object CDSCajaTxNUMEROCAJA: TIntegerField
      FieldName = 'NUMEROCAJA'
      Origin = 'NUMEROCAJA'
    end
    object CDSCajaTxMUESTRACTACAJA: TStringField
      FieldName = 'MUESTRACTACAJA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
  end
  object QFormaPagoTC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select Max(f.id_fpago) as id_fpago  from  formapago f'
      'where f.id_TPago=4')
    Left = 552
    Top = 200
    object QFormaPagoTCID_FPAGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
  end
  object QComprobaTX: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_comprobante,c.tipo_comprob,c.clase_comprob,c.denomin' +
        'acion,c.sucursal,s.detalle as MuestraSucursal from comprobantes ' +
        'c'
      'left join sucursal s on s.codigo=c.sucursal'
      
        'where c.tipo_comprob in ('#39'CX'#39') and c.compra_venta= '#39'V'#39'and c.sucu' +
        'rsal=:sucursal')
    Left = 32
    Top = 240
    ParamData = <
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object DSPComprobaTx: TDataSetProvider
    DataSet = QComprobaTX
    Left = 112
    Top = 240
  end
  object CDSComprobaTx: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SUCURSAL'
        ParamType = ptInput
      end>
    ProviderName = 'DSPComprobaTx'
    Left = 192
    Top = 240
    object CDSComprobaTxID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSComprobaTxTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Size = 2
    end
    object CDSComprobaTxCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Size = 2
    end
    object CDSComprobaTxDENOMINACION: TStringField
      DisplayWidth = 10
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object CDSComprobaTxSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSComprobaTxMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
  end
  object spCerrar_Caja: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CERRAR_SALDOS'
    Left = 504
    Top = 424
    ParamData = <
      item
        Position = 1
        Name = 'FECHA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID_CAJA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QSaldoCajaActual: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TRAER_SALDOS_CAJA(:id) where TPago=1')
    Left = 664
    Top = 240
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QSaldoCajaActualMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
    end
    object QSaldoCajaActualSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
    end
    object QSaldoCajaActualDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
    end
    object QSaldoCajaActualHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
    end
    object QSaldoCajaActualFPAGO: TSmallintField
      FieldName = 'FPAGO'
      Origin = 'FPAGO'
    end
    object QSaldoCajaActualTPAGO: TSmallintField
      FieldName = 'TPAGO'
      Origin = 'TPAGO'
    end
    object QSaldoCajaActualCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QSaldoCajaActualDISPONIBILIDAD: TFloatField
      FieldName = 'DISPONIBILIDAD'
      Origin = 'DISPONIBILIDAD'
    end
    object QSaldoCajaActualDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
  end
  object QSucursal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from sucursal'
      '')
    Left = 32
    Top = 136
    ParamData = <
      item
        Position = 1
        Name = 'Codigo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QSaldoIni: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cs.importe from caja_Saldos CS '
      
        'where cs.id_caja_cab=:id_caja and cs.estado_caja=0 and id_tpago=' +
        '1  ')
    Left = 456
    Top = 16
    ParamData = <
      item
        Name = 'ID_CAJA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QSaldoIniIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
  end
  object QTarjetas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.id_TC,t.Descripcion from T_Credito t')
    Left = 440
    Top = 104
  end
  object spAgregarGasto: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'GENERAR_EGRESO_CAJA'
    Left = 177
    Top = 425
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
        DataType = ftFloat
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
        Name = 'DETALLE'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 6
        Name = 'TIPO_CPBTE'
        DataType = ftString
        ParamType = ptOutput
        Size = 2
      end
      item
        Position = 7
        Name = 'CLASE_CPBTE'
        DataType = ftString
        ParamType = ptOutput
        Size = 2
      end
      item
        Position = 8
        Name = 'ID_EGRESO'
        DataType = ftInteger
        ParamType = ptOutput
      end
      item
        Position = 9
        Name = 'LETRA'
        DataType = ftString
        ParamType = ptOutput
        Size = 1
      end
      item
        Position = 10
        Name = 'SUC'
        DataType = ftString
        ParamType = ptOutput
        Size = 4
      end
      item
        Position = 11
        Name = 'NUMERO'
        DataType = ftString
        ParamType = ptOutput
        Size = 8
      end
      item
        Position = 12
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptOutput
      end>
  end
  object spAgregarVale: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'GENERAR_ADELANTO_SUELDO'
    Left = 73
    Top = 425
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
        Name = 'ID_MOTIVO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'EMPLEADO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 5
        Name = 'IMPORTE'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'DETALLE'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 7
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 8
        Name = 'ID_CTA_CAJA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'OBS'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 10
        Name = 'ID_ADELANTO'
        DataType = ftInteger
        ParamType = ptOutput
      end>
  end
  object spAgregarGastoDetalle: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'AGREGAR_DETALLE_EGRESO'
    Left = 361
    Top = 425
    ParamData = <
      item
        Position = 1
        Name = 'ID_EGRESO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 3
        Name = 'CLASE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 4
        Name = 'NROCPBTE'
        DataType = ftString
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 5
        Name = 'FECHA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'CODIGOGASTO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 7
        Name = 'IMPORTE'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
