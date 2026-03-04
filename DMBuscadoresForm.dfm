object DMBuscadores: TDMBuscadores
  OnDestroy = DataModuleDestroy
  Height = 703
  Width = 1094
  object QBuscaDeposito: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from depositos order by nombre')
    Left = 40
    Top = 16
    object QBuscaDepositoID: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object QBuscaDepositoNOMBRE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 25
      FieldName = 'NOMBRE'
      Visible = False
      Size = 25
    end
    object QBuscaDepositoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object QBuscaDepositoCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscaDepositoACTIVO: TStringField
      DisplayLabel = 'Activo'
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QBuscaSucursal_old: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from sucursal')
    Left = 936
    Top = 44
  end
  object QBuscaUnidades: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from unidades')
    Left = 144
    Top = 24
    object QBuscaUnidadesID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Required = True
    end
    object QBuscaUnidadesSIGLAS: TStringField
      DisplayLabel = 'Siglas'
      FieldName = 'SIGLAS'
      Size = 3
    end
    object QBuscaUnidadesDESCRIPCION: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DESCRIPCION'
    end
  end
  object QBuscaPresentacion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from presentacion')
    Left = 152
    Top = 76
    object IntegerField1: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'DBMAIN.PRESENTACION.ID'
    end
    object StringField1: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 30
      FieldName = 'DETALLE'
      Origin = 'DBMAIN.PRESENTACION.DETALLE'
      Size = 30
    end
  end
  object QBuscaMoneda: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from monedas')
    Left = 40
    Top = 198
    object QBuscaMonedaID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Required = True
    end
    object QBuscaMonedaMONEDA: TStringField
      DisplayLabel = 'Moneda'
      FieldName = 'MONEDA'
      Size = 15
    end
    object QBuscaMonedaCOTIZACION: TFloatField
      DisplayLabel = 'Cotizacion Vta'
      FieldName = 'COTIZACION'
    end
    object QBuscaMonedaSIGNO: TStringField
      DisplayLabel = 'Signo'
      FieldName = 'SIGNO'
      Size = 5
    end
    object QBuscaMonedaORDEN: TSmallintField
      FieldName = 'ORDEN'
      Required = True
    end
    object QBuscaMonedaCOTIZACION_COMPRA: TFloatField
      DisplayLabel = 'Cotizacion Comp.'
      FieldName = 'COTIZACION_COMPRA'
    end
  end
  object QBuscaGruposVtaDetalle: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from GRUPOS_DETALLEFACTURACION')
    Left = 40
    Top = 245
    object QBuscaGruposVtaDetalleID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QBuscaGruposVtaDetalleGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 40
    end
  end
  object QBuscaLdr: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from LdrCliente Where Codigo_Cliente=:Codigo')
    Left = 40
    Top = 293
    ParamData = <
      item
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QBuscaLdrCODIGO_CLIENTE: TStringField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
      Size = 6
    end
    object QBuscaLdrCODIGO_LDR: TIntegerField
      FieldName = 'CODIGO_LDR'
      Required = True
    end
    object QBuscaLdrNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QBuscaLdrDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object QBuscaLdrCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
  end
  object QBuscaNroSerie: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,ss.fec' +
        'haegreso,'
      'ss.deposito from stock_series ss'
      'where ss.codigo_stk =:codigo and'
      '      ss.deposito =:deposito and'
      '      ss.id_cpbte_egreso is null'
      '')
    Left = 152
    Top = 285
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'deposito'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QBuscaNroSerieID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QBuscaNroSerieCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object QBuscaNroSerieCODIGOSERIE: TStringField
      FieldName = 'CODIGOSERIE'
      Size = 50
    end
    object QBuscaNroSerieFECHAINGRESO: TSQLTimeStampField
      FieldName = 'FECHAINGRESO'
    end
    object QBuscaNroSerieFECHAEGRESO: TSQLTimeStampField
      FieldName = 'FECHAEGRESO'
    end
    object QBuscaNroSerieDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
  end
  object QBuscaCodigoBarra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk,s.detalle_stk,cb.codigobarra from codigobarr' +
        'a cb'
      'left join stock s on s.codigo_stk=cb.codigo_stk'
      'where cb.codigo_stk=:codigo')
    Left = 40
    Top = 338
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QBuscaCodigoBarraCODIGOBARRA: TStringField
      DisplayLabel = 'Codigo de Barra'
      DisplayWidth = 50
      FieldName = 'CODIGOBARRA'
      Size = 50
    end
    object QBuscaCodigoBarraDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 45
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object QBuscaCodigoBarraCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 8
      FieldName = 'CODIGO_STK'
      Size = 8
    end
  end
  object QConsultaCodigoSerie: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select ss.codigo_stk from stock_series ss'
      
        'where ( ss.codigoserie = :codigoserie ) and ( ss.id_cpbte_egreso' +
        ' is null )')
    Left = 264
    Top = 8
    ParamData = <
      item
        Name = 'codigoserie'
        DataType = ftString
        ParamType = ptInput
      end>
    object QConsultaCodigoSerieCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Size = 8
    end
  end
  object QBuscaSerieTransito: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.serie from transubdet t where t.serie=:Serie'
      'and t.estado='#39'T'#39' and t.codigoarticulo=:codigo')
    Left = 384
    Top = 8
    ParamData = <
      item
        Name = 'Serie'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QBuscaSerieTransitoSERIE: TStringField
      DisplayWidth = 50
      FieldName = 'SERIE'
      Size = 50
    end
  end
  object QBuscaInscripcion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select Codigo,Detalle,AplicaPercepcionIva,AplicaPercepcionIIBB f' +
        'rom Inscripcion')
    Left = 264
    Top = 143
    object QBuscaInscripcionCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QBuscaInscripcionDETALLE: TStringField
      DisplayWidth = 15
      FieldName = 'DETALLE'
      Size = 15
    end
    object QBuscaInscripcionAPLICAPERCEPCIONIVA: TStringField
      DisplayWidth = 1
      FieldName = 'APLICAPERCEPCIONIVA'
      Size = 1
    end
    object QBuscaInscripcionAPLICAPERCEPCIONIIBB: TStringField
      DisplayWidth = 1
      FieldName = 'APLICAPERCEPCIONIIBB'
      Size = 1
    end
  end
  object QBuscaCondCompraProvee: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select CC.*,  FP.Detalle, FP.Dias, FP.Descuento as Descuento_FPa' +
        'go from CondCompra CC'
      'inner join F_Pago FP on FP.Codigo=CC.CodigoPago'
      'where CC.CodigoProvee= :Codigo')
    Left = 264
    Top = 190
    ParamData = <
      item
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QBuscaCondCompraProveeCODIGOPAGO: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGOPAGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QBuscaCondCompraProveeCODIGOPROVEE: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGOPROVEE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
      Size = 6
    end
    object QBuscaCondCompraProveeDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 20
      FieldName = 'DETALLE'
      ProviderFlags = []
    end
    object QBuscaCondCompraProveeDIAS: TIntegerField
      DisplayWidth = 10
      FieldName = 'DIAS'
      ProviderFlags = []
      Visible = False
    end
    object QBuscaCondCompraProveeDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object QBuscaCondCompraProveeDESCUENTO_FPAGO: TFloatField
      FieldName = 'DESCUENTO_FPAGO'
    end
  end
  object QBuscaRubrosProv: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from rubros_proveedores order by detalle')
    Left = 264
    Top = 237
  end
  object QBuscaFPago: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from f_pago')
    Left = 264
    Top = 285
  end
  object QBuscaTasaRetIIBB: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TASAS_RET_IBRUTOS')
    Left = 264
    Top = 330
  end
  object QBuscaTasaRetGanancia: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TASAS_RET_GANANCIA')
    Left = 152
    Top = 330
  end
  object QBuscaCPostal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from C_Postal order by detalle_postal,Codigo_postal')
    Left = 928
    Top = 140
    object QBuscaCPostalID_POSTAL: TIntegerField
      FieldName = 'ID_POSTAL'
      Required = True
    end
    object QBuscaCPostalCODIGO_POSTAL: TStringField
      FieldName = 'CODIGO_POSTAL'
      Required = True
      Size = 8
    end
    object QBuscaCPostalDETALLE_POSTAL: TStringField
      FieldName = 'DETALLE_POSTAL'
      Required = True
      Size = 25
    end
    object QBuscaCPostalTELEDISCADO: TStringField
      FieldName = 'TELEDISCADO'
      Size = 6
    end
    object QBuscaCPostalPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
    end
  end
  object QBuscaPersonal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select p.Nombre,p.codigo,p.activo from personal p'
      'order by p.nombre')
    Left = 384
    Top = 97
    object QBuscaPersonalNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 30
      FieldName = 'NOMBRE'
      Size = 50
    end
    object QBuscaPersonalCODIGO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Size = 6
    end
    object QBuscaPersonalACTIVO: TStringField
      FieldName = 'ACTIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QBuscaBancos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from bancos '
      'order by Nombre')
    Left = 384
    Top = 143
    object QBuscaBancosID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Required = True
    end
    object QBuscaBancosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
    end
    object QBuscaBancosDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 30
    end
    object QBuscaBancosTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
    end
  end
  object QBuscaTCredito: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from T_Credito '
      ''
      'order by orden ')
    Left = 384
    Top = 190
    object QBuscaTCreditoID_TC: TIntegerField
      FieldName = 'ID_TC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaTCreditoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object QBuscaTCreditoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QBuscaTCreditoCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object QBuscaTCreditoRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object QBuscaCtaCajaBco: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from cuenta_caja where id_tipo_cta=2'
      'order by nombre')
    Left = 384
    Top = 237
    object QBuscaCtaCajaBcoID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Required = True
    end
    object QBuscaCtaCajaBcoID_TIPO_CTA: TIntegerField
      FieldName = 'ID_TIPO_CTA'
      Required = True
    end
    object QBuscaCtaCajaBcoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
    object QBuscaCtaCajaBcoNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Size = 15
    end
    object QBuscaCtaCajaBcoID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object QBuscaCtaCajaBcoCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object QBuscaCtaCajaBcoRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object QBuscaFormaPago: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from FormaPago')
    Left = 384
    Top = 285
    object QBuscaFormaPagoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object QBuscaFormaPagoID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Required = True
    end
    object QBuscaFormaPagoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
    object QBuscaFormaPagoCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Required = True
    end
    object QBuscaFormaPagoSIGNO: TStringField
      FieldName = 'SIGNO'
      Size = 5
    end
    object QBuscaFormaPagoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
  end
  object QBuscaCajaCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select ca.*,  cta.Nombre as MuestraCaja'
      'from Caja_Cab ca'
      '  inner join cuenta_caja cta on cta.id_cuenta=ca.id_cuenta_caja'
      'where ca.Estado = 0')
    Left = 384
    Top = 330
    object QBuscaCajaCabID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaCajaCabID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Required = True
    end
    object QBuscaCajaCabFECHA_INCIO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO'
      Required = True
    end
    object QBuscaCajaCabFECHA_CIERRE: TSQLTimeStampField
      FieldName = 'FECHA_CIERRE'
    end
    object QBuscaCajaCabSALDO_INCIAL: TFloatField
      FieldName = 'SALDO_INCIAL'
    end
    object QBuscaCajaCabESTADO: TIntegerField
      FieldName = 'ESTADO'
      Required = True
    end
    object QBuscaCajaCabOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object QBuscaCajaCabNUMEROCAJA: TIntegerField
      FieldName = 'NUMEROCAJA'
    end
    object QBuscaCajaCabMUESTRACAJA: TStringField
      FieldName = 'MUESTRACAJA'
      ProviderFlags = []
      Size = 25
    end
  end
  object QBuscaTarjetaCredito_Comp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select tcc.*,'
      '  tc.descripcion as MuestraTarjetaCredito,'
      '  b.nombre as MuestraBanco'
      'from  tarjetacredito_comp tcc'
      '  left join t_credito tc on tc.id_tc=tcc.id_tcredito'
      '  left join bancos b on b.id_banco=tcc.id_banco'
      '')
    Left = 504
    Top = 8
    object QBuscaTarjetaCredito_CompID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaTarjetaCredito_CompNRO_TARJETA: TStringField
      FieldName = 'NRO_TARJETA'
      Size = 16
    end
    object QBuscaTarjetaCredito_CompNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object QBuscaTarjetaCredito_CompID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Required = True
    end
    object QBuscaTarjetaCredito_CompMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QBuscaTarjetaCredito_CompID_TCREDITO: TIntegerField
      FieldName = 'ID_TCREDITO'
    end
    object QBuscaTarjetaCredito_CompMUESTRATARJETACREDITO: TStringField
      FieldName = 'MUESTRATARJETACREDITO'
      ProviderFlags = []
      Size = 15
    end
    object QBuscaTarjetaCredito_CompMUESTRABANCO: TStringField
      FieldName = 'MUESTRABANCO'
      ProviderFlags = []
    end
  end
  object QBuscaVendedores: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo,nombre,comision from personal '
      'where vendedor='#39'S'#39
      'order by nombre asc')
    Left = 504
    Top = 97
    object QBuscaVendedoresCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QBuscaVendedoresNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object QBuscaVendedoresCOMISION: TFloatField
      FieldName = 'COMISION'
      Required = True
    end
  end
  object QBuscaZona: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from zona order by detalle')
    Left = 504
    Top = 143
    object QBuscaZonaID_ZONA: TIntegerField
      FieldName = 'ID_ZONA'
      Required = True
    end
    object QBuscaZonaDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 25
    end
  end
  object QBuscaFC_Vta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      '( sucursal = :sucursal ) and ( compra_venta = '#39'V'#39' ) and'
      '( tipo_comprob = '#39'FC'#39'  )')
    Left = 504
    Top = 190
    ParamData = <
      item
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QBuscaNC_Vta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      '( sucursal = :sucursal ) and ( compra_venta = '#39'V'#39' ) and'
      '( tipo_comprob = '#39'NC'#39'  )')
    Left = 504
    Top = 237
    ParamData = <
      item
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QBuscaND_Vta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      '( sucursal = :sucursal ) and ( compra_venta = '#39'V'#39' ) and'
      '( tipo_comprob = '#39'ND'#39'  )')
    Left = 504
    Top = 285
    ParamData = <
      item
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QBuscaTk_Vta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      '( sucursal = :sucursal ) and ( compra_venta = '#39'V'#39' ) and'
      '( tipo_comprob = '#39'TK'#39' )')
    Left = 504
    Top = 330
    ParamData = <
      item
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QBuscaFO_Vta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      '(sucursal=:sucursal) and (compra_venta='#39'V'#39') and'
      '(tipo_comprob='#39'FO'#39' )')
    Left = 619
    Top = 8
    ParamData = <
      item
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QBuscaCategorias: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from clientes_categorias order by detalle')
    Left = 264
    Top = 376
    object QBuscaCategoriasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QBuscaCategoriasDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 30
    end
  end
  object QBuscaGrupoAbonos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select g.id,g.detalle,g.precio1,g.precio2 from cupon_abonos_grup' +
        'os g')
    Left = 504
    Top = 376
  end
  object QBuscaCondVentaCliente: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select CV.*,'
      '  FP.Detalle,'
      '  FP.Dias,'
      '  FP.Descuento as Descuento_FPago'
      'from CondVenta CV'
      '  inner join F_Pago FP on FP.Codigo=CV.CodigoPago'
      'where CV.CodigoCliente= :Codigo')
    Left = 40
    Top = 384
    ParamData = <
      item
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QBuscaCondVentaClienteCODIGOCLIENTE: TStringField
      FieldName = 'CODIGOCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QBuscaCondVentaClienteCODIGOPAGO: TIntegerField
      FieldName = 'CODIGOPAGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaCondVentaClienteDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object QBuscaCondVentaClientePOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscaCondVentaClienteDETALLE: TStringField
      FieldName = 'DETALLE'
      ProviderFlags = []
      Required = True
    end
    object QBuscaCondVentaClienteDIAS: TIntegerField
      FieldName = 'DIAS'
      ProviderFlags = []
    end
    object QBuscaCondVentaClienteDESCUENTO_FPAGO: TFloatField
      FieldName = 'DESCUENTO_FPAGO'
      ProviderFlags = []
    end
  end
  object QBuscaCobradores: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo,nombre,comision from personal '
      'where Cobrador='#39'S'#39
      'order by nombre')
    Left = 152
    Top = 376
    object QBuscaCobradoresCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Size = 6
    end
    object QBuscaCobradoresNOMBRE: TStringField
      DisplayWidth = 50
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object QBuscaLocalidadJuri: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from juridicion_localidad_w'
      'order by'
      'localidad,id_juridicion')
    Left = 40
    Top = 432
    object QBuscaLocalidadJuriID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QBuscaLocalidadJuriID_JURIDICION: TIntegerField
      FieldName = 'ID_JURIDICION'
    end
    object QBuscaLocalidadJuriLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 25
    end
    object QBuscaLocalidadJuriPROVINCIA: TStringField
      FieldName = 'PROVINCIA'
      Origin = 'PROVINCIA'
    end
    object QBuscaLocalidadJuriPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      FixedChar = True
      Size = 1
    end
  end
  object QBuscaArticuloGtiaExt: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select g.id,g.codigo,g.duracion,g.poliza,g.tasa_costo,g.tasa_vta' +
        ' from datos_gtia_extendida g'
      'where g.codigo = :codigo')
    Left = 376
    Top = 432
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QBuscaArticuloGtiaExtID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QBuscaArticuloGtiaExtCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object QBuscaArticuloGtiaExtDURACION: TIntegerField
      FieldName = 'DURACION'
    end
    object QBuscaArticuloGtiaExtPOLIZA: TStringField
      FieldName = 'POLIZA'
    end
    object QBuscaArticuloGtiaExtTASA_COSTO: TFloatField
      FieldName = 'TASA_COSTO'
    end
    object QBuscaArticuloGtiaExtTASA_VTA: TFloatField
      FieldName = 'TASA_VTA'
    end
  end
  object QGtia_Ext_Excepciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select g.tasa_costo,g.tasa_vta from datos_gtia_clientes g'
      'where g.codigo = :codigo and g.id_cab=:id')
    Left = 384
    Top = 488
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QGtia_Ext_ExcepcionesTASA_COSTO: TFloatField
      FieldName = 'TASA_COSTO'
    end
    object QGtia_Ext_ExcepcionesTASA_VTA: TFloatField
      FieldName = 'TASA_VTA'
    end
  end
  object QBuscaCorreoProveedor: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select correo from  POVEEDOR where codigo=:codigo')
    Left = 504
    Top = 424
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QBuscaCorreoProveedorCORREO: TStringField
      DisplayWidth = 100
      FieldName = 'CORREO'
      Size = 100
    end
  end
  object QBuscaCtaCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from cuenta_caja where id_tipo_cta=1'
      'order by nombre')
    Left = 264
    Top = 437
  end
  object QBuscaAcopio_Borrar: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select cab.id from merca_enacopio_cab cab where cab.id_Factura =' +
        ' :id')
    Left = 920
    Top = 616
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QBuscaAcopio_BorrarID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object QBuscaAutorizanOC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo,nombre,comision,max_oc_autorizar from personal '
      'where autorizaoc='#39'S'#39
      'order by nombre')
    Left = 40
    Top = 497
    object StringField2: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object StringField3: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object FMTBCDField1: TFloatField
      FieldName = 'COMISION'
      Required = True
    end
    object QBuscaAutorizanOCMAX_OC_AUTORIZAR: TFloatField
      FieldName = 'MAX_OC_AUTORIZAR'
      Required = True
    end
  end
  object QBuscaStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk as Codigo_stk,s.clase_articulo,s.detalle_stk' +
        ' from stock s'
      'where ( s.codigo_stk=:codigo )')
    Left = 928
    Top = 232
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QBuscaStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object QBuscaStockCLASE_ARTICULO: TIntegerField
      FieldName = 'CLASE_ARTICULO'
    end
    object QBuscaStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
  end
  object DSPBuscaComprob: TDataSetProvider
    DataSet = QBuscaComprob
    Options = [poAllowCommandText]
    Left = 512
    Top = 549
  end
  object CDSBuscaComprob: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'desglozaiva'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'desglozaiva'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaComprob'
    Left = 624
    Top = 549
    object CDSBuscaComprobTIPO_COMPROB: TStringField
      DisplayLabel = 'Tp'
      DisplayWidth = 2
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSBuscaComprobCLASE_COMPROB: TStringField
      DisplayLabel = 'Cl'
      DisplayWidth = 2
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSBuscaComprobDENOMINACION: TStringField
      DisplayLabel = 'Denominaci'#243'n'
      DisplayWidth = 15
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object CDSBuscaComprobLETRA: TStringField
      DisplayLabel = 'Letra'
      DisplayWidth = 1
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobPREFIJO: TStringField
      DisplayLabel = 'Pref.'
      DisplayWidth = 4
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object CDSBuscaComprobNUMERO: TStringField
      DisplayLabel = 'Numero'
      DisplayWidth = 8
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object CDSBuscaComprobID_COMPROBANTE: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSBuscaComprobSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Visible = False
    end
    object CDSBuscaComprobNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'NUMERARCION_PROPIA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
      Origin = 'TOMA_NRO_DE'
      Visible = False
    end
    object CDSBuscaComprobAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Origin = 'AFECTA_IVA'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Origin = 'AFECTA_CC'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DESGLOZA_IVA'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Origin = 'COMPRA_VENTA'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobCOPIAS: TIntegerField
      FieldName = 'COPIAS'
      Origin = 'COPIAS'
      Visible = False
    end
    object CDSBuscaComprobREPORTE: TStringField
      FieldName = 'REPORTE'
      Origin = 'REPORTE'
      Visible = False
      Size = 100
    end
    object CDSBuscaComprobIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobFISCAL: TStringField
      FieldName = 'FISCAL'
      Origin = 'FISCAL'
      Required = True
      Visible = False
      OnGetText = CDSBuscaComprobFISCALGetText
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Origin = 'NOMBREIMPRESORA'
      Visible = False
      Size = 15
    end
    object CDSBuscaComprobPENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Origin = 'PENDIENTEIMPRESION'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Origin = 'LINEAS_DETALLE'
      Required = True
      Visible = False
    end
    object CDSBuscaComprobCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Origin = 'CALCULA_IVA_ARTICULOS'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Origin = 'DEFECTO'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobEN_USO: TStringField
      FieldName = 'EN_USO'
      Origin = 'EN_USO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobFACTURAELECTRONICA: TStringField
      FieldName = 'FACTURAELECTRONICA'
      Required = True
      OnGetText = CDSBuscaComprobFACTURAELECTRONICAGetText
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobCODIGO_AFIP: TStringField
      FieldName = 'CODIGO_AFIP'
      Size = 3
    end
  end
  object QStockCodigo_Detalle: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk,s.detalle_stk from stock s where s.codigo_st' +
        'k=:codigo')
    Left = 144
    Top = 544
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QStockCodigo_DetalleCODIGO_STK: TStringField
      DisplayWidth = 8
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object QStockCodigo_DetalleDETALLE_STK: TStringField
      DisplayWidth = 45
      FieldName = 'DETALLE_STK'
      Size = 45
    end
  end
  object QBuscaCliente: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.codigo,c.nombre,c.razon_social from clientes c'
      'where ( c.activo in ( '#39'S'#39' ) )'
      'order by c.nombre')
    Left = 616
    Top = 56
  end
  object QBuscaRC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      '( sucursal = :sucursal ) and ( compra_venta = '#39'V'#39' ) and'
      '( tipo_comprob = '#39'RC'#39' )')
    Left = 624
    Top = 226
    ParamData = <
      item
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QBuscaLotes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.* from stock_lotes_impo s where s.saldo>0 and s.codigo ' +
        '= :codigo')
    Left = 616
    Top = 106
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QBuscaRubrosCliente: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from rubros_clientes order by detalle')
    Left = 616
    Top = 173
  end
  object DSPBuscaArtRtosPendientes: TDataSetProvider
    DataSet = QBuscaArtRtosPendientes
    Left = 776
    Top = 368
  end
  object CDSBuscaArtRtosPendientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaArtRtosPendientes'
    Left = 928
    Top = 368
    object CDSBuscaArtRtosPendientesCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSBuscaArtRtosPendientesDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 50
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSBuscaArtRtosPendientesCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00'
    end
    object CDSBuscaArtRtosPendientesTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      DisplayWidth = 4
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSBuscaArtRtosPendientesCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      DisplayWidth = 4
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSBuscaArtRtosPendientesNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      DisplayWidth = 15
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSBuscaArtRtosPendientesCODIGO: TStringField
      DisplayLabel = 'Cod.Cliente'
      DisplayWidth = 8
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      Size = 6
    end
    object CDSBuscaArtRtosPendientesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 40
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object CDSBuscaArtRtosPendientesID_RTO: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_RTO'
      Origin = 'ID_RTO'
      ProviderFlags = []
      Visible = False
    end
    object CDSBuscaArtRtosPendientesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
  end
  object QLstMotAjClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from MOTIVOS_AJUSTES_CLIENTES order by detalle')
    Left = 764
    Top = 9
  end
  object QLstMotAjProvee: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from MOTIVOS_AJUSTES_PROVEEDORES order by detalle')
    Left = 764
    Top = 105
  end
  object QOperacionesAFIP: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from afip_operaciones')
    Left = 40
    Top = 609
  end
  object QCaracteresAFIP: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from afip_caracteres')
    Left = 144
    Top = 609
  end
  object QCortesAFIP: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from afip_cortes')
    Left = 256
    Top = 609
  end
  object QTipoLiqAFIP: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from afip_tipoliquidacion')
    Left = 376
    Top = 609
  end
  object QMotivosAFIP: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from afip_motivos')
    Left = 768
    Top = 577
  end
  object QRazaAFIP: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from afip_razas')
    Left = 768
    Top = 529
  end
  object QTributosAFIP: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from afip_tributos')
    Left = 768
    Top = 481
  end
  object QGastosAFIP: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from afip_gastos')
    Left = 768
    Top = 433
  end
  object QBuscaStockPLU: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk as Codigo_stk,s.clase_articulo,s.detalle_stk' +
        ' from stock s'
      'where ( s.PLU=:codigo )')
    Left = 768
    Top = 232
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QBuscaStockPLUCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object QBuscaStockPLUCLASE_ARTICULO: TIntegerField
      FieldName = 'CLASE_ARTICULO'
    end
    object QBuscaStockPLUDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
  end
  object QBuscaMarca: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select * from Marcas Order By Descripcion_marca')
    Left = 768
    Top = 296
  end
  object QBuscaSucursal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from sucursal')
    Left = 768
    Top = 56
  end
  object QBuscaComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from comprobantes where sucursal=:suc and compra_venta=' +
        #39'V'#39' and'
      
        '(tipo_comprob='#39'FC'#39' or tipo_comprob='#39'NC'#39' or tipo_comprob='#39'ND'#39') an' +
        'd'
      '((desgloza_iva = :desglozaiva) or ( :desglozaiva = '#39'*'#39' ) )'
      'order by sucursal,tipo_comprob')
    Left = 384
    Top = 552
    ParamData = <
      item
        Position = 1
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'desglozaiva'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'desglozaiva'
        DataType = ftString
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
  object QBuscaIva: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from gravamen')
    Left = 152
    Top = 144
  end
  object QBuscaPercepIva: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from percepiva')
    Left = 264
    Top = 56
  end
  object QBuscaPercepIB: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from PercepIB')
    Left = 264
    Top = 104
  end
  object QConsultaPorCodAlt: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk, s.reemplazo_stk as CodAlt, s.detalle_stk, l' +
        'c.Nombre as Proveedor  from stock s'
      
        'left join lista_precios_prov_detalle lp on lp.codigo=s.codigo_st' +
        'k'
      'left join lista_precios_prov_cabecera lc on lc.id=lp.id_cab '
      'where ( s.reemplazo_stk = :codigo )')
    Left = 264
    Top = 488
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
        Value = '65'
      end>
    object QConsultaPorCodAltCODIGO_STK: TStringField
      DisplayLabel = 'Codigo Int'
      DisplayWidth = 9
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QConsultaPorCodAltCODALT: TStringField
      DisplayLabel = 'Codigo Alt'
      DisplayWidth = 10
      FieldName = 'CODALT'
      Origin = 'REEMPLAZO_STK'
      Required = True
    end
    object QConsultaPorCodAltDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object QConsultaPorCodAltPROVEEDOR: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Proveedor'
      FieldName = 'PROVEEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
  end
  object QBuscaArtRtosPendientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.id,d.codigoarticulo,d.detalle,d.cantidad,c.tipocpbte,'
      
        '       c.clasecpbte,c.nrocpbte,c.codigo,c.nombre,c.id_rto from r' +
        'todet d'
      'left join rtocab c on c.id_rto=d.id_cabrto'
      
        'where d.codigoarticulo = :codigo and ((c.idfactura is null) or (' +
        'c.idfactura=0)) and c.anulado='#39'N'#39)
    Left = 616
    Top = 288
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QBuscaTablaPrecioDet: TFDQuery
    ObjectView = False
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TABLA_PRECIOSDET'
      'where id_cab = :id_cab'
      'order by id')
    Left = 928
    Top = 488
    ParamData = <
      item
        Name = 'ID_CAB'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QBuscaTablaPrecioDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaTablaPrecioDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
    end
    object QBuscaTablaPrecioDetCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object QBuscaTablaPrecioDetPRECIO1: TFloatField
      FieldName = 'PRECIO1'
      Origin = 'PRECIO1'
    end
    object QBuscaTablaPrecioDetPRECIO2: TFloatField
      FieldName = 'PRECIO2'
      Origin = 'PRECIO2'
    end
  end
  object QBuscaTablaPrecioCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TABLA_PRECIOSCAB order by id')
    Left = 928
    Top = 432
  end
  object QBuscaRC_FD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      '( sucursal = :sucursal ) and ( compra_venta = '#39'V'#39' ) and'
      '( tipo_comprob = '#39'RC'#39' )')
    Left = 928
    Top = 296
    ParamData = <
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QBuscaCPostalFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from C_Postal order by detalle_postal,Codigo_postal')
    Left = 384
    Top = 56
  end
  object QDesctoArticulo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.descuento from stock_dsto_especial s where'
      '(s.codigo= :codigo) and ( :fecha between s.desde and s.hasta )')
    Left = 496
    Top = 608
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end
      item
        Name = 'FECHA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object QDesctoArticuloDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      Required = True
    end
  end
  object QBuscaCompAfip: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.* from COMPROBANTES_AFIP c '
      'where c.detalle<>'#39#39
      'order by detalle')
    Left = 264
    Top = 544
    object QBuscaCompAfipCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QBuscaCompAfipDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
  end
  object QBuscaListaPrecios: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select l.id,l.nombre,l.f_pago,l.EXCLUSIVO_EFECTIVO,l.actualiza_e' +
        'xcepcion from listaprecioespecialcab l '
      'where l.uso_administrador<>:uso'
      'order by l.nombre')
    Left = 504
    Top = 56
    ParamData = <
      item
        Position = 1
        Name = 'uso'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object QBuscaListaPreciosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaListaPreciosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object QBuscaListaPreciosF_PAGO: TIntegerField
      FieldName = 'F_PAGO'
      Origin = 'F_PAGO'
    end
    object QBuscaListaPreciosEXCLUSIVO_EFECTIVO: TStringField
      FieldName = 'EXCLUSIVO_EFECTIVO'
      Origin = 'EXCLUSIVO_EFECTIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscaListaPreciosACTUALIZA_EXCEPCION: TStringField
      FieldName = 'ACTUALIZA_EXCEPCION'
      Origin = 'ACTUALIZA_EXCEPCION'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QBuscaSubRubroFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select codigo_subrubro,detalle_subrubro,codigo_rubro from subrub' +
        'ros'
      'where (( codigo_rubro = :rubro ) or ( :rubro = '#39'***'#39' ))  '
      'order by detalle_subrubro')
    Left = 40
    Top = 144
    ParamData = <
      item
        Name = 'RUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
        Value = Null
      end>
    object QBuscaSubRubroFDCODIGO_SUBRUBRO: TStringField
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object QBuscaSubRubroFDDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Required = True
      Size = 45
    end
    object QBuscaSubRubroFDCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
  end
  object QBuscaRubroFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select  *  from Rubros Order By Detalle_Rubro')
    Left = 40
    Top = 80
    object QBuscaRubroFDCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QBuscaRubroFDDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
    object QBuscaRubroFDCONTROL_RUBRO: TStringField
      FieldName = 'CONTROL_RUBRO'
      Origin = 'CONTROL_RUBRO'
      Size = 1
    end
    object QBuscaRubroFDFUERA_PROMO: TStringField
      FieldName = 'FUERA_PROMO'
      Origin = 'FUERA_PROMO'
      FixedChar = True
      Size = 1
    end
    object QBuscaRubroFDORDEN: TIntegerField
      FieldName = 'ORDEN'
      Origin = 'ORDEN'
      Required = True
    end
  end
  object QBuscaxCuitProvee: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(p.codigo) as Codigo  from poveedor p'
      'where p.n_de_cuit = :cuit')
    Left = 768
    Top = 168
    ParamData = <
      item
        Name = 'CUIT'
        DataType = ftString
        ParamType = ptInput
        Size = 13
        Value = Null
      end>
    object QBuscaxCuitProveeCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInKey]
      ReadOnly = True
      Size = 6
    end
  end
end
