object ServerMethods: TServerMethods
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  OnDestroy = DSServerModuleDestroy
  Height = 790
  Width = 984
  object QDeposito: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *  from depositos where id=:id')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 208
    Top = 104
    object QDepositoID: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID'
    end
    object QDepositoNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 25
      FieldName = 'NOMBRE'
      Size = 25
    end
    object QDepositoSUCURSAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'SUCURSAL'
      Visible = False
    end
    object QDepositoCENTRALIZA_STOCK: TStringField
      DisplayWidth = 3
      FieldName = 'CENTRALIZA_STOCK'
      Visible = False
      Size = 1
    end
  end
  object QCajaCab: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_cuenta_caja'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select cc.*, cta.Nombre as MuestraCtaCaja'
      'from Caja_Cab cc'
      '  left join cuenta_caja cta on cta.id_cuenta=cc.id_cuenta_caja'
      'where estado = 0 and cc.id_cuenta_caja= :id_cuenta_caja')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 531
    Top = 334
    object QCajaCabID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Required = True
    end
    object QCajaCabFECHA_INCIO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO'
      Required = True
    end
  end
  object DSPStock: TDataSetProvider
    DataSet = QStock
    Left = 306
    Top = 145
  end
  object DSPDeposito: TDataSetProvider
    DataSet = QDeposito
    Left = 306
    Top = 99
  end
  object QBuscaComprob: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from comprobantes'
      'where ( sucursal = :suc ) and ( compra_venta = '#39'V'#39' ) '
      '  and ( tipo_comprob in ( '#39'TK'#39','#39'FC'#39','#39'FO'#39','#39'NC'#39' )) '
      'order by sucursal,tipo_comprob')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 16
    Top = 472
  end
  object DSPBuscaComprob: TDataSetProvider
    DataSet = QBuscaComprob
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 98
    Top = 472
  end
  object QListaPrecios: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from  listaprecioespecialcab where'
      ' uso_administrador='#39'N'#39)
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 16
    Top = 518
  end
  object DSPBuscaDeposito: TDataSetProvider
    DataSet = QBuscaDeposito
    Left = 98
    Top = 373
  end
  object QBuscaSucursal: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select s.codigo,s.detalle,s.direccion,s.localidad,s.telefono1,s.' +
        'telefono2 from sucursal s')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 16
    Top = 320
  end
  object QBuscaDeposito: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select d.* from depositos d')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 16
    Top = 368
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = QBuscaSucursal
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 98
    Top = 320
  end
  object QStock: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'lista'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'lista'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select S.*, Ru.Detalle_Rubro as MuestraRubro,'
      '      Sub.Detalle_SubRubro as MuestraSubRubro,'
      '      M.Descripcion_Marca as MuestraMarca,'
      '      Ta.Descripcion as MuestraTasa,'
      '      ta.tasa as MuestraTasaPorcentaje,'
      '      STa.Descripcion as MuestraSobreTasa,'
      '      sta.tasa as MuestraSobreTasaProcentaje,'
      '      ((d.precio_gravado+d.precio_exento)*1) as MuestraPrecio,'
      
        '      (d.precio * 1) as MuestraPrecioIva,      pib.tasa as Muest' +
        'raTasaIIBB'
      ''
      '    from stock s'
      '      left join rubros ru on s.rubro_stk = ru.Codigo_rubro'
      
        '      left join subrubros sub on s.subrubro_stk = sub.Codigo_sub' +
        'rubro'
      '      left join marcas m on s.marca_stk = m.marca_stk'
      '      left join gravamen ta on s.tasa_iva = ta.codigo'
      '      left join gravamen Sta on s.Sobretasa_iva = Sta.codigo'
      
        '      left join listaprecioespecialArt d on d.codigoarticulo=s.c' +
        'odigo_stk'
      '      left join percepib pib on pib.codigo=s.tasa_ib'
      ''
      
        'where (S.Codigo_Stk = :codigo)  and (d.id_cab = :lista or :lista' +
        ' = -1)'
      ' ')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 208
    Top = 152
  end
  object QPersonal: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select p.* from personal p'
      'where p.codigo=:codigo'
      ' ')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 208
    Top = 488
    object QPersonalCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QPersonalNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object QPersonalDOMICILIO: TStringField
      FieldName = 'DOMICILIO'
      Size = 50
    end
  end
  object QBuscaVendedores: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select codigo,nombre,comision from personal '
      'where vendedor='#39'S'#39
      'order by nombre')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 208
    Top = 198
    object QBuscaVendedoresCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QBuscaVendedoresNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object QBuscaVendedoresCOMISION: TFMTBCDField
      FieldName = 'COMISION'
      Required = True
      Precision = 15
      Size = 3
    end
  end
  object DSPBuscaVendedor: TDataSetProvider
    DataSet = QBuscaVendedores
    Left = 306
    Top = 196
  end
  object DSPListaPrecio: TDataSetProvider
    DataSet = QListaPrecios
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 98
    Top = 518
  end
  object QEmpleadoDefecto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select codigo,nombre,comision from personal '
      'where vendedor='#39'S'#39
      'order by nombre')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 16
    Top = 566
  end
  object DSPEmpleadoDefecto: TDataSetProvider
    DataSet = QEmpleadoDefecto
    Left = 98
    Top = 566
  end
  object QListaCaja: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select c.* from cuenta_caja c where c.id_tipo_cta= 1')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 16
    Top = 424
  end
  object DSPListaCaja: TDataSetProvider
    DataSet = QListaCaja
    Left = 98
    Top = 429
  end
  object spCerrarCaja: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Precision = 8
        Name = 'FECHA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID_CAJA'
        ParamType = ptInput
      end>
    SQLConnection = ServerContainer.GestionPtoVta
    StoredProcName = 'CERRAR_SALDOS'
    Left = 688
    Top = 16
  end
  object QFcVtaCab: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TipoCpbte'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select Fc.*, Fp.Detalle as MuestraCondVenta, De.Nombre as Muestr' +
        'aDeposito,'
      
        'Su.Detalle as MuestraSucursal, Ldr.Nombre as MuestraLdr, Ldr.Dir' +
        'eccion as MuestraDireccionLdr,'
      'ins.Detalle as MuestraIva,cp.denominacion as MuestraComprobante,'
      
        'cp.id_comprobante as Id_TipoComprobante,v.nombre as MuestraVende' +
        'dor,prov.nombre as MuestraProveedor from FcVtaCab Fc'
      'left join personal v on v.codigo=fc.vendedor'
      'left join F_Pago Fp on Fp.Codigo=Fc.CondicionVta'
      'left join Depositos De  on De.Id=Fc.Deposito'
      'left join Sucursal Su  on Su.Codigo=Fc.Sucursal'
      'left join inscripcion ins on ins.codigo=Fc.TipoIva'
      
        'left join LdrCliente Ldr on ((Ldr.Codigo_Cliente=Fc.Codigo) and ' +
        '(Ldr.Codigo_Ldr=Fc.Ldr))'
      'left join poveedor prov on prov.codigo=fc.proveedor'
      'left join comprobantes cp on cp.clase_comprob=Fc.ClaseCpbte and'
      '          cp.letra=fc.LetraFac and'
      '          cp.sucursal=fc.sucursal and'
      '          cp.tipo_comprob=fc.tipocpbte and'
      '          cp.compra_venta='#39'V'#39
      'where Fc.TipoCpbte= :TipoCpbte'
      'and Fc.id_fc=:id')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 16
    Top = 16
    object QFcVtaCabID_FC: TIntegerField
      FieldName = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFcVtaCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object QFcVtaCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QFcVtaCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QFcVtaCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QFcVtaCabLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Size = 4
    end
    object QFcVtaCabNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Size = 8
    end
    object QFcVtaCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QFcVtaCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object QFcVtaCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object QFcVtaCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object QFcVtaCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object QFcVtaCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Required = True
    end
    object QFcVtaCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object QFcVtaCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
    end
    object QFcVtaCabFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Required = True
    end
    object QFcVtaCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object QFcVtaCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
      Required = True
    end
    object QFcVtaCabANULADO: TStringField
      FieldName = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabNRORTO: TStringField
      FieldName = 'NRORTO'
    end
    object QFcVtaCabN_OPERACION2: TFMTBCDField
      FieldName = 'N_OPERACION2'
      Precision = 15
      Size = 3
    end
    object QFcVtaCabNETOGRAV1: TFMTBCDField
      FieldName = 'NETOGRAV1'
      Required = True
      Precision = 15
      Size = 3
    end
    object QFcVtaCabNETOGRAV2: TFMTBCDField
      FieldName = 'NETOGRAV2'
      Required = True
      Precision = 15
      Size = 3
    end
    object QFcVtaCabDSTO: TFMTBCDField
      FieldName = 'DSTO'
      Required = True
      Precision = 15
      Size = 3
    end
    object QFcVtaCabDSTOIMPORTE: TFMTBCDField
      FieldName = 'DSTOIMPORTE'
      Required = True
      Precision = 15
      Size = 3
    end
    object QFcVtaCabNETOEXEN1: TFMTBCDField
      FieldName = 'NETOEXEN1'
      Required = True
      Precision = 15
      Size = 3
    end
    object QFcVtaCabNETOEXEN2: TFMTBCDField
      FieldName = 'NETOEXEN2'
      Required = True
      Precision = 15
      Size = 3
    end
    object QFcVtaCabTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Required = True
      Precision = 15
      Size = 3
    end
    object QFcVtaCabDEBE: TFMTBCDField
      FieldName = 'DEBE'
      Required = True
      Precision = 15
      Size = 3
    end
    object QFcVtaCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object QFcVtaCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object QFcVtaCabCPTE_MANUAL: TStringField
      FieldName = 'CPTE_MANUAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object QFcVtaCabFACTURANRO: TStringField
      FieldName = 'FACTURANRO'
      Size = 13
    end
    object QFcVtaCabZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object QFcVtaCabLDR: TIntegerField
      FieldName = 'LDR'
      Required = True
    end
    object QFcVtaCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object QFcVtaCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabNROENTREGA: TIntegerField
      FieldName = 'NROENTREGA'
    end
    object QFcVtaCabINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabTIPO_REMITO: TStringField
      FieldName = 'TIPO_REMITO'
      Size = 2
    end
    object QFcVtaCabIDREMITO: TIntegerField
      FieldName = 'IDREMITO'
    end
    object QFcVtaCabREDUCIDA: TStringField
      FieldName = 'REDUCIDA'
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabCOMSIONVENDEDOR: TFMTBCDField
      FieldName = 'COMSIONVENDEDOR'
      Required = True
      Precision = 15
      Size = 3
    end
    object QFcVtaCabLIQUIDADA: TStringField
      FieldName = 'LIQUIDADA'
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabFECHA_LIQUIDACION: TSQLTimeStampField
      FieldName = 'FECHA_LIQUIDACION'
    end
    object QFcVtaCabVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 6
    end
    object QFcVtaCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object QFcVtaCabNC_CONTADO: TStringField
      FieldName = 'NC_CONTADO'
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabCAJA_POR_DEFECTO: TIntegerField
      FieldName = 'CAJA_POR_DEFECTO'
    end
    object QFcVtaCabNRO_Z: TIntegerField
      FieldName = 'NRO_Z'
    end
    object QFcVtaCabVALORES_RECIBIDOS: TFMTBCDField
      FieldName = 'VALORES_RECIBIDOS'
      Required = True
      Precision = 15
      Size = 3
    end
    object QFcVtaCabPERCEPCION_IB_TASA: TFMTBCDField
      FieldName = 'PERCEPCION_IB_TASA'
      Required = True
      Precision = 15
      Size = 3
    end
    object QFcVtaCabPERCEPCION_IB_IMPORTE: TFMTBCDField
      FieldName = 'PERCEPCION_IB_IMPORTE'
      Required = True
      Precision = 15
      Size = 3
    end
    object QFcVtaCabPERCIBE_IB: TStringField
      FieldName = 'PERCIBE_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabPERCEPCION_IB_BASEIMPONIBLE: TFMTBCDField
      FieldName = 'PERCEPCION_IB_BASEIMPONIBLE'
      Required = True
      Precision = 15
      Size = 3
    end
    object QFcVtaCabRENGLONES: TSmallintField
      FieldName = 'RENGLONES'
      Required = True
    end
    object QFcVtaCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object QFcVtaCabNOTAPEDIDO_ID: TIntegerField
      FieldName = 'NOTAPEDIDO_ID'
    end
    object QFcVtaCabNOTAPEDIDO_NROCPBTE: TStringField
      FieldName = 'NOTAPEDIDO_NROCPBTE'
      Size = 13
    end
    object QFcVtaCabID_FC_CLON: TIntegerField
      FieldName = 'ID_FC_CLON'
    end
    object QFcVtaCabPRESUPUESTO_ID: TIntegerField
      FieldName = 'PRESUPUESTO_ID'
    end
    object QFcVtaCabPRESUPUESTO_NROCPBTE: TStringField
      FieldName = 'PRESUPUESTO_NROCPBTE'
      Size = 13
    end
    object QFcVtaCabMONEDA_CPBTE: TIntegerField
      FieldName = 'MONEDA_CPBTE'
    end
    object QFcVtaCabMONEDA_CPBTE_COTIZACION: TFMTBCDField
      FieldName = 'MONEDA_CPBTE_COTIZACION'
      Precision = 15
      Size = 3
    end
    object QFcVtaCabPOR_CTA_Y_ORDEN: TStringField
      FieldName = 'POR_CTA_Y_ORDEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 6
    end
    object QFcVtaCabTIPO_VTA: TStringField
      FieldName = 'TIPO_VTA'
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabID_RECEPCION_GTIA: TIntegerField
      FieldName = 'ID_RECEPCION_GTIA'
    end
    object QFcVtaCabJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
    end
    object QFcVtaCabJURIDICION_LOCALIDAD: TIntegerField
      FieldName = 'JURIDICION_LOCALIDAD'
    end
    object QFcVtaCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
    end
    object QFcVtaCabNUMERO_OPERACION: TStringField
      FieldName = 'NUMERO_OPERACION'
      Size = 8
    end
    object QFcVtaCabMUESTRACONDVENTA: TStringField
      FieldName = 'MUESTRACONDVENTA'
      ProviderFlags = []
    end
    object QFcVtaCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
    object QFcVtaCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object QFcVtaCabMUESTRALDR: TStringField
      FieldName = 'MUESTRALDR'
      ProviderFlags = []
      Size = 35
    end
    object QFcVtaCabMUESTRADIRECCIONLDR: TStringField
      FieldName = 'MUESTRADIRECCIONLDR'
      ProviderFlags = []
      Size = 35
    end
    object QFcVtaCabMUESTRAIVA: TStringField
      FieldName = 'MUESTRAIVA'
      ProviderFlags = []
      Size = 15
    end
    object QFcVtaCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object QFcVtaCabMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object QFcVtaCabMUESTRAPROVEEDOR: TStringField
      FieldName = 'MUESTRAPROVEEDOR'
      ProviderFlags = []
      Size = 35
    end
  end
  object QFcVtaDet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select d.* from FcVtaDet d'
      'where d.id_cabfac=:id')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 16
    Top = 65
    object QFcVtaDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFcVtaDetID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFcVtaDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 4
    end
    object QFcVtaDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 4
    end
    object QFcVtaDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QFcVtaDetRENGLON: TFMTBCDField
      FieldName = 'RENGLON'
      Precision = 15
      Size = 3
    end
    object QFcVtaDetFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Required = True
    end
    object QFcVtaDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object QFcVtaDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object QFcVtaDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object QFcVtaDetCANTIDAD: TFMTBCDField
      FieldName = 'CANTIDAD'
      Precision = 15
      Size = 3
    end
    object QFcVtaDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetIVA_TASA: TFMTBCDField
      FieldName = 'IVA_TASA'
      Precision = 15
      Size = 3
    end
    object QFcVtaDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Required = True
    end
    object QFcVtaDetIVA_SOBRETASA: TFMTBCDField
      FieldName = 'IVA_SOBRETASA'
      Precision = 15
      Size = 3
    end
    object QFcVtaDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object QFcVtaDetDESCUENTO: TFMTBCDField
      FieldName = 'DESCUENTO'
      Precision = 15
      Size = 3
    end
    object QFcVtaDetTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 15
      Size = 3
    end
    object QFcVtaDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object QFcVtaDetMARGEN: TFMTBCDField
      FieldName = 'MARGEN'
      Precision = 15
      Size = 3
    end
    object QFcVtaDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetCON_CODIGO_BARRA: TStringField
      FieldName = 'CON_CODIGO_BARRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetIB_TASA: TFMTBCDField
      FieldName = 'IB_TASA'
      Required = True
      Precision = 15
      Size = 3
    end
    object QFcVtaDetTIPOIB_TASA: TIntegerField
      FieldName = 'TIPOIB_TASA'
      Required = True
    end
    object QFcVtaDetLOTE: TIntegerField
      FieldName = 'LOTE'
    end
    object QFcVtaDetPRECIO_EDITABLE: TStringField
      FieldName = 'PRECIO_EDITABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Required = True
    end
    object QFcVtaDetCOTIZACION: TFMTBCDField
      FieldName = 'COTIZACION'
      Required = True
      Precision = 15
      Size = 3
    end
    object QFcVtaDetDETALLE_ADICIONAL: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Size = 100
    end
    object QFcVtaDetGRUPO_DETALLE: TIntegerField
      FieldName = 'GRUPO_DETALLE'
    end
    object QFcVtaDetCTA_ORDEN_ID_RECEPCION: TIntegerField
      FieldName = 'CTA_ORDEN_ID_RECEPCION'
    end
    object QFcVtaDetCTA_ORDEN_NROCPBTE: TStringField
      FieldName = 'CTA_ORDEN_NROCPBTE'
      Size = 13
    end
    object QFcVtaDetCTA_ORDEN_TIPOCPBTE: TStringField
      FieldName = 'CTA_ORDEN_TIPOCPBTE'
      Size = 4
    end
    object QFcVtaDetCTA_ORDEN_CALSECPBTE: TStringField
      FieldName = 'CTA_ORDEN_CALSECPBTE'
      Size = 4
    end
    object QFcVtaDetTOTAL_GRAVADO: TFMTBCDField
      FieldName = 'TOTAL_GRAVADO'
      Required = True
      Precision = 15
      Size = 3
    end
    object QFcVtaDetTOTAL_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_EXENTO'
      Required = True
      Precision = 15
      Size = 3
    end
    object QFcVtaDetUNIDADES_GRAVADO: TFloatField
      FieldName = 'UNIDADES_GRAVADO'
    end
    object QFcVtaDetUNIDADES_EXENTO: TFloatField
      FieldName = 'UNIDADES_EXENTO'
    end
    object QFcVtaDetUNIDADES_TOTAL: TFloatField
      FieldName = 'UNIDADES_TOTAL'
    end
    object QFcVtaDetMESES_GTIA: TIntegerField
      FieldName = 'MESES_GTIA'
      Required = True
    end
    object QFcVtaDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
    end
    object QFcVtaDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
    end
    object QFcVtaDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
    end
    object QFcVtaDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
    end
    object QFcVtaDetIVA_UNITARIO: TFloatField
      FieldName = 'IVA_UNITARIO'
      Required = True
    end
    object QFcVtaDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
    end
    object QFcVtaDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
    end
    object QFcVtaDetIVA_TOTAL: TFMTBCDField
      FieldName = 'IVA_TOTAL'
      Required = True
      Precision = 15
      Size = 3
    end
  end
  object DSPFcVtaCab: TDataSetProvider
    DataSet = QFcVtaCab
    UpdateMode = upWhereKeyOnly
    Left = 98
    Top = 16
  end
  object DSPFcVtaDet: TDataSetProvider
    DataSet = QFcVtaDet
    UpdateMode = upWhereKeyOnly
    Left = 98
    Top = 65
  end
  object QFcVtaImp: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select i.* from fcvtaimpuesto i'
      'where i.id_fcvtacab=:id')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 16
    Top = 118
    object QFcVtaImpID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFcVtaImpID_FCVTACAB: TIntegerField
      FieldName = 'ID_FCVTACAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QFcVtaImpCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
    end
    object QFcVtaImpDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object QFcVtaImpNETO: TFMTBCDField
      FieldName = 'NETO'
      Precision = 15
      Size = 3
    end
    object QFcVtaImpTASA: TFMTBCDField
      FieldName = 'TASA'
      Precision = 15
      Size = 3
    end
    object QFcVtaImpIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Precision = 15
      Size = 3
    end
  end
  object DSPFcVtaImp: TDataSetProvider
    DataSet = QFcVtaImp
    UpdateMode = upWhereKeyOnly
    Left = 98
    Top = 118
  end
  object IBCabFac: TIBGenerator
    DatabaseIBX = ServerContainer.GestionPtoVta
    GeneratorName = 'NEXT_ID_FC_VENTA_CAB'
    SystemGenerators = False
    Left = 848
    Top = 528
  end
  object IBGDetFac: TIBGenerator
    DatabaseIBX = ServerContainer.GestionPtoVta
    GeneratorName = 'NEXT_ID_FC_VENTA_DET'
    SystemGenerators = False
    Left = 776
    Top = 529
  end
  object IBGImpFac: TIBGenerator
    DatabaseIBX = ServerContainer.GestionPtoVta
    GeneratorName = 'NEXT_ID_FC_VENTA_IMPUESTO'
    SystemGenerators = False
    Left = 688
    Top = 526
  end
  object QClientes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT C.*  FROM Clientes C where c.codigo=:codigo')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 531
    Top = 384
    object QClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object QClientesDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object QClientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object QClientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object QClientesCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Required = True
    end
    object QClientesNRO_DE_CUIT: TStringField
      FieldName = 'NRO_DE_CUIT'
      Size = 13
    end
    object QClientesZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object QClientesNRODOCUMENTO: TStringField
      FieldName = 'NRODOCUMENTO'
      Size = 15
    end
    object QClientesID_FACTURAPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURAPORDEFECTO'
    end
    object QClientesID_FACTURACONTADOPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURACONTADOPORDEFECTO'
    end
    object QClientesID_NOTADEBITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTADEBITOPORDEFECTO'
    end
    object QClientesID_NOTACREDITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTACREDITOPORDEFECTO'
    end
    object QClientesID_TIKETPORDEFECTO: TIntegerField
      FieldName = 'ID_TIKETPORDEFECTO'
    end
    object QClientesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QClientesLISTAPRECIOS: TIntegerField
      FieldName = 'LISTAPRECIOS'
    end
  end
  object QIva: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from gravamen where codigo=:id')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 531
    Top = 232
    object QIvaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QIvaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object QIvaTASA: TFMTBCDField
      FieldName = 'TASA'
      Precision = 15
      Size = 3
    end
    object QIvaCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Required = True
    end
  end
  object spAgregaMovEfectivo: TSQLStoredProc
    GetMetadata = False
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID_CPBTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 2
        Name = 'TIPO_COMPROB'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 2
        Name = 'CLASE_COMPROB'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 13
        Name = 'NROCPBTE'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID_CUENTA_CAJA'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Precision = 8
        Name = 'FECHA_MOVIMIENTO'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 3
        Name = 'DEBE'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 3
        Name = 'HABER'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 1
        Name = 'TIPOOPERACION'
        ParamType = ptInput
      end>
    SQLConnection = ServerContainer.GestionPtoVta
    StoredProcName = 'AGREGAR_MOV_CAJA_EFECTIVO'
    Left = 793
    Top = 72
  end
  object QBuscaStockCodigo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select s.codigo_stk from stock s'
      'where s.codigo_stk = :codigo and (s.clase_articulo in (1,3))')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 531
    Top = 127
  end
  object QBuscaCodigoBarra: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select c.codigo_stk from codigobarra c'
      'where c.codigobarra = :codigo')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 531
    Top = 71
  end
  object QTraerRecargoDeLista: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'articulo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'lista'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select la.recargo,la.precio_gravado,la.precio_exento,la.precio,l' +
        'a.iva_importe from listaprecioespecialart la'
      'where la.codigoarticulo=:articulo and la.id_cab=:lista')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 531
    Top = 539
    object QTraerRecargoDeListaRECARGO: TFMTBCDField
      FieldName = 'RECARGO'
      Precision = 15
      Size = 3
    end
    object QTraerRecargoDeListaPRECIO_GRAVADO: TFMTBCDField
      FieldName = 'PRECIO_GRAVADO'
      Precision = 15
      Size = 3
    end
    object QTraerRecargoDeListaPRECIO_EXENTO: TFMTBCDField
      FieldName = 'PRECIO_EXENTO'
      Precision = 15
      Size = 3
    end
    object QTraerRecargoDeListaPRECIO: TFMTBCDField
      FieldName = 'PRECIO'
      Precision = 15
      Size = 3
    end
    object QTraerRecargoDeListaIVA_IMPORTE: TFMTBCDField
      FieldName = 'IVA_IMPORTE'
      Required = True
      Precision = 15
      Size = 3
    end
  end
  object QInscripcion: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from inscripcion where Codigo=:Codigo')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 208
    Top = 55
    object QInscripcionCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QInscripcionDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 15
    end
    object QInscripcionAPLICAPERCEPCIONIVA: TStringField
      FieldName = 'APLICAPERCEPCIONIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QInscripcionAPLICAPERCEPCIONIIBB: TStringField
      FieldName = 'APLICAPERCEPCIONIIBB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QInscripcionCOBRASOBRETASA: TStringField
      FieldName = 'COBRASOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QInscripcionDISCRIMINAIVA: TStringField
      FieldName = 'DISCRIMINAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPInscripcion: TDataSetProvider
    DataSet = QInscripcion
    Left = 306
    Top = 52
  end
  object QComprob: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from comprobantes where'
      ' id_comprobante = :id')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 531
    Top = 433
    object QComprobTIPO_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'TIPO_COMPROB'
      Origin = 'DBMAIN.COMPROBANTES.TIPO_COMPROB'
      Size = 2
    end
    object QComprobCLASE_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'CLASE_COMPROB'
      Origin = 'DBMAIN.COMPROBANTES.SIGLAS'
      Size = 2
    end
    object QComprobDENOMINACION: TStringField
      DisplayWidth = 15
      FieldName = 'DENOMINACION'
      Origin = 'DBMAIN.COMPROBANTES.DENOMINACION'
      Size = 15
    end
    object QComprobLETRA: TStringField
      DisplayWidth = 1
      FieldName = 'LETRA'
      Origin = 'DBMAIN.COMPROBANTES.LETRA'
      Size = 1
    end
    object QComprobREPORTE: TStringField
      DisplayWidth = 100
      FieldName = 'REPORTE'
      Origin = 'DBMAIN.COMPROBANTES.REPORTE'
      Size = 100
    end
    object QComprobCOPIAS: TIntegerField
      DisplayWidth = 10
      FieldName = 'COPIAS'
      Origin = 'DBMAIN.COMPROBANTES.COPIAS'
    end
    object QComprobFISCAL: TStringField
      DisplayWidth = 3
      FieldName = 'FISCAL'
      Origin = 'DBMAIN.COMPROBANTES.FISCAL'
      Size = 1
    end
    object QComprobNOMBREIMPRESORA: TStringField
      DisplayWidth = 15
      FieldName = 'NOMBREIMPRESORA'
      Origin = 'DBMAIN.COMPROBANTES.NOMBREIMPRESORA'
      Size = 15
    end
    object QComprobDESGLOZA_IVA: TStringField
      DisplayWidth = 1
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DBMAIN.COMPROBANTES.DESGLOZA_IVA'
      FixedChar = True
      Size = 1
    end
    object QComprobLINEAS_DETALLE: TSmallintField
      DisplayWidth = 10
      FieldName = 'LINEAS_DETALLE'
      Origin = 'DBMAIN.COMPROBANTES.LINEAS_DETALLE'
    end
    object QComprobCALCULA_IVA_ARTICULOS: TStringField
      DisplayWidth = 1
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Origin = 'DBMAIN.COMPROBANTES.CALCULA_IVA_ARTICULOS'
      FixedChar = True
      Size = 1
    end
    object QComprobNUMERARCION_PROPIA: TStringField
      DisplayWidth = 1
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'DBMAIN.COMPROBANTES.NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object QComprobAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QComprobantePorDefecto: TSQLQuery
    MaxBlobSize = -1
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
    SQL.Strings = (
      'select id_comprobante from comprobantes where'
      'tipo_comprob=:tipo and '
      'compra_venta=:compraventa and '
      'Sucursal=:sucursal and '
      'desgloza_iva=:DesglozaIva and'
      'defecto = '#39'S'#39' and'
      'en_uso='#39'S'#39)
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 547
    Top = 15
    object QComprobantePorDefectoID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
  end
  object QCondVentaDefecto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select min(codigopago) from condventa where codigocliente=:codig' +
        'o'
      'and por_defecto='#39'S'#39)
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 212
    Top = 6
  end
  object QPrimerConVta: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select Min(codigopago) from condventa where codigocliente=:codig' +
        'o')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 208
    Top = 542
  end
  object QCajadet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
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
      end>
    SQL.Strings = (
      
        'select d.*,f.anulado,f.impreso from TRAER_DETALLESCAJA(:id,:desd' +
        'e,:hasta) d'
      'left join fcvtacab f on f.id_fc=d.id_comprobante'
      'where (d.tipo_cpbte<>'#39'RC'#39') and (d.tipo_cpbte<>'#39'IC'#39')'
      '    order by  d.Fecha desc , d.nro_cpbte desc')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 208
    Top = 440
  end
  object DSPCajaDetIngresos: TDataSetProvider
    DataSet = QCajadet
    Left = 290
    Top = 441
  end
  object spAnular: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = ServerContainer.GestionPtoVta
    StoredProcName = 'ANULAR_FACTURA'
    Left = 689
    Top = 456
  end
  object QOpciones: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'opcion'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select valor from opciones where opcion = :opcion')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 531
    Top = 280
    object QOpcionesVALOR: TStringField
      FieldName = 'VALOR'
      Size = 100
    end
  end
  object spMarcarImpreso: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = ServerContainer.GestionPtoVta
    StoredProcName = 'MARCA_FC_IMPRESA'
    Left = 793
    Top = 455
  end
  object QComprobanteReporte: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from comprobantes where'
      ' id_comprobante = :id')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 531
    Top = 481
    object QComprobanteReporteREPORTE: TStringField
      FieldName = 'REPORTE'
      Size = 100
    end
  end
  object DSPVtaSubDet: TDataSetProvider
    DataSet = QVtaSubDetalle
    Left = 98
    Top = 168
  end
  object QVtaSubDetalle: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * from FcVtaSubDetalle where Id_DetFac= :id ')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 24
    Top = 168
    object QVtaSubDetalleID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVtaSubDetalleID_DETFAC: TIntegerField
      FieldName = 'ID_DETFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QVtaSubDetalleID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QVtaSubDetalleTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      FixedChar = True
      Size = 2
    end
    object QVtaSubDetalleCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      FixedChar = True
      Size = 2
    end
    object QVtaSubDetalleFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object QVtaSubDetalleNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QVtaSubDetalleCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object QVtaSubDetalleSERIE: TStringField
      FieldName = 'SERIE'
      Size = 50
    end
    object QVtaSubDetalleDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object QVtaSubDetalleTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QTCredito: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from t_credito')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 16
    Top = 216
  end
  object DSPTCredito: TDataSetProvider
    DataSet = QTCredito
    Left = 98
    Top = 216
  end
  object QTCreditoCoef: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_tc'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select c.* from t_credito_coeficientes c where c.id_tc = :id_tc')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 16
    Top = 264
  end
  object DSPTCreditoCoef: TDataSetProvider
    DataSet = QTCreditoCoef
    Left = 98
    Top = 264
  end
  object spAgregaMovTC: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID_CPBTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 2
        Name = 'TIPO_COMPROB'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 2
        Name = 'CLASE_COMPROB'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 13
        Name = 'NROCPBTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID_CUENTA_CAJA'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Precision = 8
        Name = 'FECHA_MOVIMIENTO'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 3
        Name = 'DEBE'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 3
        Name = 'HABER'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 1
        Name = 'TIPOOPERACION'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'FPAGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'IDTC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'TITULAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CUOTAS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 15
        Name = 'DOCUMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 3
        Name = 'UNIDADES'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 3
        Name = 'COTIZACION'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'MONEDA'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 3
        Name = 'UNIDADESNETO'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 3
        Name = 'IMPORTENETO'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 3
        Name = 'COEFICIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 3
        Name = 'VALORCUOTA'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 3
        Name = 'IMPORTERECARGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'IDCTABANCO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'NROCUPON'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 5
        Name = 'LOTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 8
        Name = 'TERMINAL'
        ParamType = ptInput
      end>
    SQLConnection = ServerContainer.GestionPtoVta
    StoredProcName = 'AGREGAR_MOV_CAJA_TC'
    Left = 688
    Top = 64
  end
  object QClaseTC: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from formapago f where f.id_tpago=4')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 208
    Top = 392
  end
  object DSPClaseTC: TDataSetProvider
    DataSet = QClaseTC
    Left = 306
    Top = 389
  end
  object DSPMovEfectivo: TDataSetProvider
    DataSet = QMovEfectivo
    UpdateMode = upWhereKeyOnly
    Left = 306
    Top = 241
  end
  object QMovEfectivo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from Mov_Efectivo  '
      ' where Id_Mov_Caja= :id')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 208
    Top = 249
    object QMovEfectivoID_EFECTIVO: TIntegerField
      FieldName = 'ID_EFECTIVO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovEfectivoID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovEfectivoID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object QMovEfectivoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object QMovEfectivoCOTIZACION: TFMTBCDField
      FieldName = 'COTIZACION'
      Required = True
      Precision = 15
      Size = 3
    end
    object QMovEfectivoUNIDADES: TFMTBCDField
      FieldName = 'UNIDADES'
      Required = True
      Precision = 15
      Size = 3
    end
    object QMovEfectivoIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Precision = 15
      Size = 3
    end
    object QMovEfectivoID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
    end
    object QMovEfectivoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
  end
  object QMovTCredito: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select M.*,'
      '  T.Descripcion as MuestraTC'
      'from Mov_TCredito M'
      '  left join T_Credito T on t.Id_Tc=m.id_Tc'
      'where M.Id_Mov_Caja= :id')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 208
    Top = 344
    object QMovTCreditoID_MOV_TC: TIntegerField
      FieldName = 'ID_MOV_TC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovTCreditoID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovTCreditoID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object QMovTCreditoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object QMovTCreditoID_TC: TIntegerField
      FieldName = 'ID_TC'
      Required = True
    end
    object QMovTCreditoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QMovTCreditoTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 30
    end
    object QMovTCreditoCAN_CUOTAS: TIntegerField
      FieldName = 'CAN_CUOTAS'
    end
    object QMovTCreditoN_DOCU: TStringField
      FieldName = 'N_DOCU'
      Size = 15
    end
    object QMovTCreditoUNIDADES: TFMTBCDField
      FieldName = 'UNIDADES'
      Precision = 15
      Size = 3
    end
    object QMovTCreditoCOTIZACION: TFMTBCDField
      FieldName = 'COTIZACION'
      Precision = 15
      Size = 3
    end
    object QMovTCreditoIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Required = True
      Precision = 15
      Size = 3
    end
    object QMovTCreditoOTROS: TStringField
      FieldName = 'OTROS'
      Size = 30
    end
    object QMovTCreditoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QMovTCreditoID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
    end
    object QMovTCreditoUNIDADES_NETO: TFMTBCDField
      FieldName = 'UNIDADES_NETO'
      Required = True
      Precision = 15
      Size = 3
    end
    object QMovTCreditoIMPORTE_NETO: TFMTBCDField
      FieldName = 'IMPORTE_NETO'
      Required = True
      Precision = 15
      Size = 3
    end
    object QMovTCreditoCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
      Required = True
    end
    object QMovTCreditoVALORCUOTA: TFMTBCDField
      FieldName = 'VALORCUOTA'
      Precision = 15
      Size = 3
    end
    object QMovTCreditoIMPORTE_RECARGO: TFMTBCDField
      FieldName = 'IMPORTE_RECARGO'
      Precision = 15
      Size = 3
    end
    object QMovTCreditoID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
    end
    object QMovTCreditoNRO_CUPON: TIntegerField
      FieldName = 'NRO_CUPON'
    end
    object QMovTCreditoFECHA_ACREDITACION: TSQLTimeStampField
      FieldName = 'FECHA_ACREDITACION'
    end
    object QMovTCreditoACREDITADA: TStringField
      FieldName = 'ACREDITADA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QMovTCreditoLOTE: TStringField
      FieldName = 'LOTE'
      Size = 5
    end
    object QMovTCreditoTERMINAL: TStringField
      FieldName = 'TERMINAL'
      Size = 8
    end
    object QMovTCreditoMUESTRATC: TStringField
      FieldName = 'MUESTRATC'
      ProviderFlags = []
      Size = 15
    end
  end
  object DSPMovTCredito: TDataSetProvider
    DataSet = QMovTCredito
    UpdateMode = upWhereKeyOnly
    Left = 298
    Top = 338
  end
  object DSPCajaMov: TDataSetProvider
    DataSet = QCajaMov
    UpdateMode = upWhereKeyOnly
    Left = 298
    Top = 289
  end
  object QCajaMov: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select M.*,'
      '  m.Id_FPago as id_fpagoOld,'
      '  F.descripcion as MuestraFormaPago,'
      '  cc.id_cuenta as MuestraIdCtaCaja ,'
      '  cc.nombre as MuestraCaja,'
      '  ccab.numerocaja as MuestraNroCaja,'
      '  t.descripcion as MuestraTarjeta'
      'from Caja_Mov M'
      '  left join cuenta_caja cc on cc.id_cuenta=m.id_cuenta_caja'
      '  left join FormaPago F on F.id_Fpago=M.id_Fpago'
      '  left join caja_cab ccab on ccab.id_caja=m.id_caja'
      '  left join Mov_TCredito tc on tc.id_mov_caja=m.id_mov_caja'
      '  left join t_credito t on t.id_tc=tc.id_tc'
      
        'where (m.Id_Comprobante=:id) and (m.Tipo_Comprob=:tipo) and (m.t' +
        'ipo_Operacion='#39'I'#39')'
      '')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 208
    Top = 297
    object QCajaMovID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCajaMovID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCajaMovFECHA_CAJA: TSQLTimeStampField
      FieldName = 'FECHA_CAJA'
    end
    object QCajaMovFECHA_OPERACION: TSQLTimeStampField
      FieldName = 'FECHA_OPERACION'
    end
    object QCajaMovTIPO_OPERACION: TStringField
      FieldName = 'TIPO_OPERACION'
      Size = 1
    end
    object QCajaMovTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QCajaMovCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Size = 2
    end
    object QCajaMovID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object QCajaMovNRO_COMPROBANTE: TStringField
      FieldName = 'NRO_COMPROBANTE'
      Required = True
      Size = 13
    end
    object QCajaMovHABER: TFMTBCDField
      FieldName = 'HABER'
      Precision = 15
      Size = 3
    end
    object QCajaMovDEBE: TFMTBCDField
      FieldName = 'DEBE'
      Precision = 15
      Size = 3
    end
    object QCajaMovID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Required = True
    end
    object QCajaMovID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object QCajaMovUNIDADES: TFMTBCDField
      FieldName = 'UNIDADES'
      Precision = 15
      Size = 3
    end
    object QCajaMovCOTIZACION: TFMTBCDField
      FieldName = 'COTIZACION'
      Precision = 15
      Size = 3
    end
    object QCajaMovID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
    end
    object QCajaMovMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QCajaMovID_FPAGOOLD: TIntegerField
      FieldName = 'ID_FPAGOOLD'
      ProviderFlags = []
    end
    object QCajaMovMUESTRAFORMAPAGO: TStringField
      FieldName = 'MUESTRAFORMAPAGO'
      ProviderFlags = []
    end
    object QCajaMovMUESTRAIDCTACAJA: TIntegerField
      FieldName = 'MUESTRAIDCTACAJA'
      ProviderFlags = []
    end
    object QCajaMovMUESTRACAJA: TStringField
      FieldName = 'MUESTRACAJA'
      ProviderFlags = []
      Size = 25
    end
    object QCajaMovMUESTRANROCAJA: TIntegerField
      FieldName = 'MUESTRANROCAJA'
      ProviderFlags = []
    end
    object QCajaMovMUESTRATARJETA: TStringField
      FieldName = 'MUESTRATARJETA'
      ProviderFlags = []
      Size = 15
    end
  end
  object QBuscaPLU: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select c.codigo_stk from codigobarra c'
      'where c.codigobarra = :codigo')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 531
    Top = 183
  end
  object DSPPersonal: TDataSetProvider
    DataSet = QPersonal
    Left = 290
    Top = 484
  end
  object DSPPrimerConVta: TDataSetProvider
    DataSet = QPrimerConVta
    Left = 290
    Top = 535
  end
  object DSPComprobantePorDefecto: TDataSetProvider
    DataSet = QComprobantePorDefecto
    Left = 432
    Top = 19
  end
  object DSPCondVtaPorDefecto: TDataSetProvider
    DataSet = QCondVentaDefecto
    Left = 306
    Top = 6
  end
  object DSPBuscaCodgioBarra: TDataSetProvider
    DataSet = QBuscaCodigoBarra
    Left = 416
    Top = 75
  end
  object DSPBuscaStockCodigo: TDataSetProvider
    DataSet = QBuscaStockCodigo
    Left = 416
    Top = 131
  end
  object DSPBuscaPLU: TDataSetProvider
    DataSet = QBuscaPLU
    Left = 416
    Top = 187
  end
  object DSPIva: TDataSetProvider
    DataSet = QIva
    Left = 416
    Top = 235
  end
  object DSPOpciones: TDataSetProvider
    DataSet = QOpciones
    Left = 416
    Top = 283
  end
  object DSPCajaCab: TDataSetProvider
    DataSet = QCajaCab
    Left = 416
    Top = 331
  end
  object DSPClientes: TDataSetProvider
    DataSet = QClientes
    Left = 416
    Top = 379
  end
  object DSPComprob: TDataSetProvider
    DataSet = QComprob
    Left = 416
    Top = 427
  end
  object DSPComprobanteReporte: TDataSetProvider
    DataSet = QComprobanteReporte
    Left = 416
    Top = 483
  end
  object DSPTrarRecgoDeLista: TDataSetProvider
    DataSet = QTraerRecargoDeLista
    Left = 416
    Top = 539
  end
  object QExistencia: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Unidad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from EXISTENCIA_STK_UNITARIO ( :Unidad , :codigo)')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 793
    Top = 224
  end
  object QArticulos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'lista'
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
      end>
    SQL.Strings = (
      
        'select l.codigoarticulo,s.detalle_stk,l.precio,l.rubro from list' +
        'aprecioespecialart l'
      'left join stock s on s.codigo_stk=l.codigoarticulo'
      'where l.id_cab = :lista'
      
        'and ( l.rubro = :rubro or :rubro = '#39'***'#39' ) and (s.clase_articulo' +
        ' in (1,3))'
      'order by s.detalle_stk')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 793
    Top = 296
  end
  object QRubro: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from rubros order by detalle_rubro')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 793
    Top = 344
  end
  object DSPRubro: TDataSetProvider
    DataSet = QRubro
    Left = 688
    Top = 352
  end
  object DSPArticulos: TDataSetProvider
    DataSet = QArticulos
    Left = 688
    Top = 296
  end
  object DSPExistencia: TDataSetProvider
    DataSet = QExistencia
    Left = 688
    Top = 228
  end
  object spAperturaCaja: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Precision = 8
        Name = 'FECHA_APERTURA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID_CTA_CAJA'
        ParamType = ptInput
      end>
    SQLConnection = ServerContainer.GestionPtoVta
    StoredProcName = 'ABRIR_CAJA'
    Left = 793
    Top = 16
  end
  object QBuscadorClientes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT C.codigo,nombre,razon_social FROM Clientes C where c.acti' +
        'vo='#39'S'#39' order by c.nombre')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 793
    Top = 120
    object QBuscadorClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QBuscadorClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QBuscadorClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
  end
  object DSPBuscadorClientes: TDataSetProvider
    DataSet = QBuscadorClientes
    Left = 688
    Top = 120
  end
  object QNroComprobante: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'clase'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'letra'
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
      end>
    SQL.Strings = (
      
        'select * from trae_nro_cpbte ( :clase, :tipo, :letra, :compraven' +
        'ta, :sucursal )')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 793
    Top = 168
    object QNroComprobanteLETRA: TStringField
      FieldName = 'LETRA'
      Size = 1
    end
    object QNroComprobantePREFIJO: TStringField
      FieldName = 'PREFIJO'
      Size = 4
    end
    object QNroComprobanteDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Size = 1
    end
    object QNroComprobanteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object QNroComprobanteVA_LIBRO_IVA: TStringField
      FieldName = 'VA_LIBRO_IVA'
      Size = 1
    end
    object QNroComprobanteCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Size = 2
    end
    object QNroComprobanteTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Size = 2
    end
    object QNroComprobanteCON_NUMERACION: TStringField
      FieldName = 'CON_NUMERACION'
      Size = 1
    end
    object QNroComprobanteCOPIAS: TIntegerField
      FieldName = 'COPIAS'
    end
    object QNroComprobanteVA_CTACTE: TStringField
      FieldName = 'VA_CTACTE'
      Size = 1
    end
    object QNroComprobanteIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Size = 1
    end
  end
  object DSPNroComprobante: TDataSetProvider
    DataSet = QNroComprobante
    Left = 688
    Top = 168
  end
  object DSPListaPrecioCab: TDataSetProvider
    DataSet = QListaPrecioCab
    Left = 688
    Top = 400
  end
  object QListaPrecioCab: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from listaprecioespecialcab')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 792
    Top = 400
    object QListaPrecioCabID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'DBMAIN.LISTAPRECIOESPECIALCAB.ID'
    end
    object QListaPrecioCabNOMBRE: TStringField
      DisplayWidth = 50
      FieldName = 'NOMBRE'
      Origin = 'DBMAIN.LISTAPRECIOESPECIALCAB.NOMBRE'
      Size = 50
    end
  end
  object spBorrarFc: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = ServerContainer.GestionPtoVta
    StoredProcName = 'BORRAR_FCVTACAB'
    Left = 881
    Top = 456
  end
  object QStock_Red: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'lista'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'lista'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select S.codigo_stk,s.detalle_stk,s.detalle_stk_adicional,s.unid' +
        'ad,s.costo_exento_stk,'
      
        '       s.costo_gravado_stk,s.costo_total_stk,s.modo_gravamen,s.t' +
        'asa_iva,s.sobretasa_iva,'
      
        '       s.controlastock,s.gravado_ib,s.control_serie,s.usa_codigo' +
        'barra,s.editaprecio,s.moneda,'
      '       s.tasa_ib,'
      '      Ta.Descripcion as MuestraTasa,'
      '      ta.tasa as MuestraTasaPorcentaje,'
      '      STa.Descripcion as MuestraSobreTasa,'
      '      sta.tasa as MuestraSobreTasaProcentaje,'
      '      ((d.precio_gravado+d.precio_exento)*1) as MuestraPrecio,'
      
        '      (d.precio * 1) as MuestraPrecioIva,      pib.tasa as Muest' +
        'raTasaIIBB'
      '    from stock s'
      '      left join gravamen ta on s.tasa_iva = ta.codigo'
      '      left join gravamen Sta on s.Sobretasa_iva = Sta.codigo'
      
        '      left join listaprecioespecialArt d on d.codigoarticulo=s.c' +
        'odigo_stk'
      '      left join percepib pib on pib.codigo=s.tasa_ib'
      
        'where (S.Codigo_Stk = :codigo)  and (d.id_cab = :lista or :lista' +
        ' = -1)'
      ' ')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 208
    Top = 600
    object QStock_RedCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object QStock_RedDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object QStock_RedDETALLE_STK_ADICIONAL: TStringField
      FieldName = 'DETALLE_STK_ADICIONAL'
      Size = 200
    end
    object QStock_RedUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object QStock_RedCOSTO_EXENTO_STK: TFMTBCDField
      FieldName = 'COSTO_EXENTO_STK'
      Required = True
      Precision = 15
      Size = 3
    end
    object QStock_RedCOSTO_GRAVADO_STK: TFMTBCDField
      FieldName = 'COSTO_GRAVADO_STK'
      Required = True
      Precision = 15
      Size = 3
    end
    object QStock_RedCOSTO_TOTAL_STK: TFMTBCDField
      FieldName = 'COSTO_TOTAL_STK'
      Required = True
      Precision = 15
      Size = 3
    end
    object QStock_RedMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
    end
    object QStock_RedTASA_IVA: TIntegerField
      FieldName = 'TASA_IVA'
      Required = True
    end
    object QStock_RedSOBRETASA_IVA: TIntegerField
      FieldName = 'SOBRETASA_IVA'
    end
    object QStock_RedCONTROLASTOCK: TStringField
      FieldName = 'CONTROLASTOCK'
      Required = True
      Size = 1
    end
    object QStock_RedGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStock_RedCONTROL_SERIE: TStringField
      FieldName = 'CONTROL_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStock_RedUSA_CODIGOBARRA: TStringField
      FieldName = 'USA_CODIGOBARRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStock_RedEDITAPRECIO: TStringField
      FieldName = 'EDITAPRECIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStock_RedTASA_IB: TIntegerField
      FieldName = 'TASA_IB'
      Required = True
    end
    object QStock_RedMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QStock_RedMUESTRATASA: TStringField
      FieldName = 'MUESTRATASA'
      ProviderFlags = []
      Size = 15
    end
    object QStock_RedMUESTRATASAPORCENTAJE: TFMTBCDField
      FieldName = 'MUESTRATASAPORCENTAJE'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
    object QStock_RedMUESTRASOBRETASA: TStringField
      FieldName = 'MUESTRASOBRETASA'
      ProviderFlags = []
      Size = 15
    end
    object QStock_RedMUESTRASOBRETASAPROCENTAJE: TFMTBCDField
      FieldName = 'MUESTRASOBRETASAPROCENTAJE'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
    object QStock_RedMUESTRAPRECIO: TFloatField
      FieldName = 'MUESTRAPRECIO'
      ProviderFlags = []
    end
    object QStock_RedMUESTRAPRECIOIVA: TFloatField
      FieldName = 'MUESTRAPRECIOIVA'
      ProviderFlags = []
    end
    object QStock_RedMUESTRATASAIIBB: TFMTBCDField
      FieldName = 'MUESTRATASAIIBB'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
  end
  object DSPStock_Reduc: TDataSetProvider
    DataSet = QStock_Red
    Left = 290
    Top = 601
  end
  object IBGId_Efectivo: TIBGenerator
    DatabaseIBX = ServerContainer.GestionPtoVta
    GeneratorName = 'NEXT_ID_MOV_EFECTIVO'
    SystemGenerators = False
    Left = 680
    Top = 600
  end
  object IBGId_Caja_Mov: TIBGenerator
    DatabaseIBX = ServerContainer.GestionPtoVta
    GeneratorName = 'NEXT_ID_CAJA_MOV'
    SystemGenerators = False
    Left = 760
    Top = 600
  end
  object IBGId_TCredito: TIBGenerator
    DatabaseIBX = ServerContainer.GestionPtoVta
    GeneratorName = 'NEXT_ID_MOV_TCREDITO'
    SystemGenerators = False
    Left = 848
    Top = 600
  end
  object QComprob_old: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
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
    SQL.Strings = (
      'select * from comprobantes where'
      ' (tipo_comprob=:tipo )'
      'and compra_venta='#39'V'#39
      'and sucursal=:suc'
      'and (( desgloza_iva=:desglozaiva) or ( :desglozaiva = '#39'*'#39' ) )')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 619
    Top = 433
    object StringField1: TStringField
      DisplayWidth = 2
      FieldName = 'TIPO_COMPROB'
      Origin = 'DBMAIN.COMPROBANTES.TIPO_COMPROB'
      Size = 2
    end
    object StringField2: TStringField
      DisplayWidth = 2
      FieldName = 'CLASE_COMPROB'
      Origin = 'DBMAIN.COMPROBANTES.SIGLAS'
      Size = 2
    end
    object StringField3: TStringField
      DisplayWidth = 15
      FieldName = 'DENOMINACION'
      Origin = 'DBMAIN.COMPROBANTES.DENOMINACION'
      Size = 15
    end
    object StringField4: TStringField
      DisplayWidth = 1
      FieldName = 'LETRA'
      Origin = 'DBMAIN.COMPROBANTES.LETRA'
      Size = 1
    end
    object StringField5: TStringField
      DisplayWidth = 100
      FieldName = 'REPORTE'
      Origin = 'DBMAIN.COMPROBANTES.REPORTE'
      Size = 100
    end
    object IntegerField1: TIntegerField
      DisplayWidth = 10
      FieldName = 'COPIAS'
      Origin = 'DBMAIN.COMPROBANTES.COPIAS'
    end
    object StringField6: TStringField
      DisplayWidth = 3
      FieldName = 'FISCAL'
      Origin = 'DBMAIN.COMPROBANTES.FISCAL'
      Size = 1
    end
    object StringField7: TStringField
      DisplayWidth = 15
      FieldName = 'NOMBREIMPRESORA'
      Origin = 'DBMAIN.COMPROBANTES.NOMBREIMPRESORA'
      Size = 15
    end
    object StringField8: TStringField
      DisplayWidth = 1
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DBMAIN.COMPROBANTES.DESGLOZA_IVA'
      FixedChar = True
      Size = 1
    end
    object SmallintField1: TSmallintField
      DisplayWidth = 10
      FieldName = 'LINEAS_DETALLE'
      Origin = 'DBMAIN.COMPROBANTES.LINEAS_DETALLE'
    end
    object StringField9: TStringField
      DisplayWidth = 1
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Origin = 'DBMAIN.COMPROBANTES.CALCULA_IVA_ARTICULOS'
      FixedChar = True
      Size = 1
    end
    object StringField10: TStringField
      DisplayWidth = 1
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'DBMAIN.COMPROBANTES.NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object StringField11: TStringField
      FieldName = 'AFECTA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField12: TStringField
      FieldName = 'AFECTA_CC'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end
