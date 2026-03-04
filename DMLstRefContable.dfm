object DatosLstRefContable: TDatosLstRefContable
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Height = 545
  Width = 1144
  object QSaldoGastos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select extract(year from eg.fechagasto) as anio,extract(month fr' +
        'om eg.fechagasto) as mes,'
      
        'egc.nrocpbte,egc.id_egreso,egc.tipocpbte,egc.clasecpbte, eg.rubr' +
        'ogasto, eg.codigogasto,'
      
        'eg.detalle,rb.detalle as MuestraRubro,cpbte.id_comprobante as Mu' +
        'estraIdComprobante,'
      
        'cta.detalle as MuestraCta,eg.importe,cm.id_cuenta_caja,cc.nombre' +
        ',ccos.descripcion as CentroCosto from Egr_caja_detalle eg'
      
        'left join gastos_cuentas cta on (cta.codigo=eg.codigogasto and c' +
        'ta.codigo_rubro=eg.rubrogasto)'
      
        'left join aplica_ctro_costo ctrc on ctrc.id_cpbte=eg.id_cpbte an' +
        'd ctrc.tipocpbte=eg.tipocpbte and ctrc.concepto=eg.codigogasto'
      'left join centro_costo ccos on ccos.id=ctrc.ctro_costo'
      'left join gastos_rubros rb on rb.codigo=eg.rubrogasto'
      'left join egr_caja egc on egc.id_egreso=eg.id_cpbte'
      'left join caja_mov cm on cm.tipo_comprob=egc.tipocpbte and'
      '                         cm.clase_comprob=egc.clasecpbte and'
      '                         cm.id_comprobante=egc.id_egreso'
      'left join cuenta_caja cc on cc.id_cuenta=cm.id_cuenta_caja'
      
        'left join comprobantes cpbte on cpbte.tipo_comprob=egc.tipocpbte' +
        ' and'
      
        '                                cpbte.clase_comprob=egc.clasecpb' +
        'te and'
      '                                cpbte.letra=egc.letra and'
      
        '                                cpbte.sucursal=egc.sucursalventa' +
        ' and'
      '                                cpbte.compra_venta='#39'C'#39
      'where ( eg.fechagasto between :desde and :Hasta )'
      ' and ((egc.sucursalventa = :suc ) or ( :suc = -1 ))'
      ''
      
        'group by eg.fechagasto, egc.nrocpbte,egc.id_egreso,egc.tipocpbte' +
        ',egc.clasecpbte, eg.rubrogasto, eg.codigogasto, eg.detalle,rb.de' +
        'talle,'
      
        'cpbte.id_comprobante,cta.detalle ,eg.importe, cm.id_cuenta_caja,' +
        'cc.nombre,ccos.descripcion'
      ' order by eg.FechaGasto,eg.rubrogasto,eg.codigogasto')
    Left = 29
    Top = 26
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'Hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QGastosFcCompra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select extract(year from fc.fechacompra) as anio,extract(month f' +
        'rom fc.fechacompra) as mes,'
      
        '  d.codigoarticulo,s.detalle_stk,fc.sucursalcompra, Sum(d.total)' +
        ' as Total,ccos.descripcion as CentroCosto from fccompcab fc'
      'left join fccompdet d on d.id_cabfac= fc.id_fc'
      
        'left join aplica_ctro_costo ctrc on ctrc.id_cpbte=fc.id_fc and c' +
        'trc.tipocpbte=fc.tipocpbte and ctrc.concepto=d.codigoarticulo'
      'left join centro_costo ccos on ccos.id=ctrc.ctro_costo'
      'left join stock s on s.codigo_stk=d.codigoarticulo'
      'where fc.fechacompra between :desde and :hasta and'
      '      ( fc.sucursalcompra = :sucursal or :sucursal = -1 )'
      
        ' group by fc.fechacompra, d.codigoarticulo,s.detalle_stk,fc.sucu' +
        'rsalcompra,ccos.descripcion '
      ' ORDER BY fc.fechacompra, fc.sucursalcompra')
    Left = 29
    Top = 98
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QPersonal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select extract(year from ad.fecha) as anio,extract(month from ad' +
        '.fecha) as mes,'
      
        '  ad.codigo,p.nombre,ad.sucursal, Sum(ad.importe) as Total,ccos.' +
        'descripcion as CentroCosto from adelantos_sueldo ad'
      'left join personal p on p.codigo=ad.codigo'
      
        'left join aplica_ctro_costo ctrc on ctrc.id_cpbte=ad.id and ctrc' +
        '.tipocpbte=ad.tipocpbte and ctrc.concepto=ad.codigo'
      'left join centro_costo ccos on ccos.id=ctrc.ctro_costo'
      ''
      'where ad.fecha between :desde and :hasta and'
      '      ( ad.suc = :sucursal or :sucursal = -1 )'
      
        ' group by ad.fecha, ad.codigo,p.nombre,ad.sucursal,ccos.descripc' +
        'ion'
      ' ORDER BY ad.fecha, ad.sucursal')
    Left = 29
    Top = 154
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QGastosBco: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select extract(year from fc.fecha) as anio,extract(month from fc' +
        '.fecha) as mes,'
      
        '  d.codigo_concepto,s.detalle,fc.sucursal, Sum(d.haber) as Total' +
        ',ccos.descripcion as CentroCosto from gastos_bco_cab fc'
      '  left join gastos_bco_det d on d.id_gasto_cab= fc.id'
      '  left join conceptos_bancarios s on s.codigo=d.codigo_concepto'
      
        '  left join aplica_ctro_costo ctrc on ctrc.id_cpbte=fc.id and ct' +
        'rc.tipocpbte=fc.tipocpbte and ctrc.concepto=d.codigo_concepto'
      '  left join centro_costo ccos on ccos.id=ctrc.ctro_costo'
      'where fc.fecha between :desde and :hasta and'
      '      ( fc.sucursal = :sucursal or :sucursal = -1 )'
      
        ' group by fc.fecha, d.codigo_concepto,s.detalle,fc.sucursal,ccos' +
        '.descripcion'
      ' ORDER BY fc.fecha, fc.sucursal'
      '')
    Left = 29
    Top = 202
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPGastosBco: TDataSetProvider
    DataSet = QGastosBco
    Options = []
    Left = 120
    Top = 200
  end
  object DSPPersonal: TDataSetProvider
    DataSet = QPersonal
    Options = []
    Left = 120
    Top = 144
  end
  object DSPGastosFcCompra: TDataSetProvider
    DataSet = QGastosFcCompra
    Options = []
    Left = 120
    Top = 96
  end
  object DSPSaldoGastos: TDataSetProvider
    DataSet = QSaldoGastos
    Options = []
    Left = 112
    Top = 32
  end
  object CDSSaldoGastos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSaldoGastos'
    Left = 184
    Top = 32
    object CDSSaldoGastosNROCPBTE: TStringField
      Alignment = taCenter
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-####-########;0; '
      Size = 13
    end
    object CDSSaldoGastosID_EGRESO: TIntegerField
      FieldName = 'ID_EGRESO'
      Origin = 'ID_EGRESO'
    end
    object CDSSaldoGastosTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSSaldoGastosCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSSaldoGastosRUBROGASTO: TStringField
      FieldName = 'RUBROGASTO'
      Origin = 'RUBROGASTO'
      Size = 3
    end
    object CDSSaldoGastosCODIGOGASTO: TStringField
      DisplayLabel = 'Cta.Gasto'
      FieldName = 'CODIGOGASTO'
      Origin = 'CODIGOGASTO'
      Size = 6
    end
    object CDSSaldoGastosDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object CDSSaldoGastosMUESTRARUBRO: TStringField
      FieldName = 'MUESTRARUBRO'
      Origin = 'MUESTRARUBRO'
      Size = 50
    end
    object CDSSaldoGastosMUESTRAIDCOMPROBANTE: TIntegerField
      FieldName = 'MUESTRAIDCOMPROBANTE'
      Origin = 'MUESTRAIDCOMPROBANTE'
    end
    object CDSSaldoGastosMUESTRACTA: TStringField
      FieldName = 'MUESTRACTA'
      Origin = 'MUESTRACTA'
      Size = 50
    end
    object CDSSaldoGastosID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
    end
    object CDSSaldoGastosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object CDSSaldoGastosCTA_CONTABLE: TStringField
      DisplayLabel = 'Cta.Contable'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'CTA_CONTABLE'
      LookupDataSet = CDSCtaContable
      LookupKeyFields = 'CODIGOELEMENTO'
      LookupResultField = 'MUESTRACUENTA'
      KeyFields = 'CODIGOGASTO'
      Lookup = True
    end
    object CDSSaldoGastosCTA_CONTABLE_COD: TStringField
      DisplayLabel = 'Cod.Cta'
      FieldKind = fkLookup
      FieldName = 'CTA_CONTABLE_COD'
      LookupDataSet = CDSCtaContable
      LookupKeyFields = 'CODIGOELEMENTO'
      LookupResultField = 'MUESTRACODIGOCTA'
      KeyFields = 'CODIGOGASTO'
      Size = 15
      Lookup = True
    end
    object CDSSaldoGastosANIO: TSmallintField
      DisplayLabel = 'A'#241'o'
      FieldName = 'ANIO'
      Origin = 'ANIO'
    end
    object CDSSaldoGastosMES: TSmallintField
      DisplayLabel = 'Mes'
      FieldName = 'MES'
      Origin = 'MES'
    end
    object CDSSaldoGastosIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSSaldoGastosCENTROCOSTO: TStringField
      DisplayLabel = 'Centro de Costo'
      FieldName = 'CENTROCOSTO'
      Size = 45
    end
  end
  object DSSaldosGastos: TDataSource
    DataSet = CDSSaldoGastos
    Left = 272
    Top = 32
  end
  object DSGastosFcCompra: TDataSource
    DataSet = CDSGastosFCCompra
    Left = 280
    Top = 96
  end
  object CDSGastosFCCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    ProviderName = 'DSPGastosFcCompra'
    Left = 192
    Top = 96
    object CDSGastosFCCompraCODIGOARTICULO: TStringField
      DisplayLabel = 'Cod.Arti'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object CDSGastosFCCompraDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSGastosFCCompraSUCURSALCOMPRA: TIntegerField
      FieldName = 'SUCURSALCOMPRA'
      Origin = 'SUCURSALCOMPRA'
    end
    object CDSGastosFCCompraCTA_CONTABLE: TStringField
      DisplayLabel = 'Cta.Contable'
      FieldKind = fkLookup
      FieldName = 'CTA_CONTABLE'
      LookupDataSet = CDSCtaContableFc
      LookupKeyFields = 'CODIGOELEMENTO'
      LookupResultField = 'MUESTRACUENTA'
      KeyFields = 'CODIGOARTICULO'
      Size = 40
      Lookup = True
    end
    object CDSGastosFCCompraCTA_CONTABLE_COD: TStringField
      DisplayLabel = 'Cod.Cta'
      FieldKind = fkLookup
      FieldName = 'CTA_CONTABLE_COD'
      LookupDataSet = CDSCtaContableFc
      LookupKeyFields = 'CODIGOELEMENTO'
      LookupResultField = 'MUESTRACODIGOCTA'
      KeyFields = 'CODIGOARTICULO'
      Size = 15
      Lookup = True
    end
    object CDSGastosFCCompraANIO: TSmallintField
      DisplayLabel = 'A'#241'o'
      FieldName = 'ANIO'
      Origin = 'ANIO'
    end
    object CDSGastosFCCompraMES: TSmallintField
      DisplayLabel = 'Mes'
      FieldName = 'MES'
      Origin = 'MES'
    end
    object CDSGastosFCCompraTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object CDSGastosFCCompraCENTROCOSTO: TStringField
      DisplayLabel = 'Centro de Costo'
      FieldName = 'CENTROCOSTO'
      Size = 45
    end
  end
  object CDSPersonal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPersonal'
    Left = 192
    Top = 144
    object CDSPersonalCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSPersonalNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      ReadOnly = True
      Size = 50
    end
    object CDSPersonalSUCURSAL: TIntegerField
      DisplayLabel = 'Sucursal'
      FieldName = 'SUCURSAL'
      Required = True
    end
    object CDSPersonalCTA_CONTABLE: TStringField
      DisplayLabel = 'Cta.Contable'
      FieldKind = fkLookup
      FieldName = 'CTA_CONTABLE'
      LookupDataSet = CDSCtaContablePersonal
      LookupKeyFields = 'CODIGOELEMENTO'
      LookupResultField = 'MUESTRACUENTA'
      KeyFields = 'CODIGO'
      Lookup = True
    end
    object CDSPersonalCTA_CONTABLE_COD: TStringField
      DisplayLabel = 'Cod.Cta'
      FieldKind = fkLookup
      FieldName = 'CTA_CONTABLE_COD'
      LookupDataSet = CDSCtaContablePersonal
      LookupKeyFields = 'CODIGOELEMENTO'
      LookupResultField = 'MUESTRACODIGOCTA'
      KeyFields = 'CODIGO'
      Lookup = True
    end
    object CDSPersonalANIO: TSmallintField
      DisplayLabel = 'A'#241'o'
      FieldName = 'ANIO'
      ReadOnly = True
    end
    object CDSPersonalMES: TSmallintField
      DisplayLabel = 'Mes'
      FieldName = 'MES'
      ReadOnly = True
    end
    object CDSPersonalTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object CDSPersonalCENTROCOSTO: TStringField
      DisplayLabel = 'Centro de Costo'
      FieldName = 'CENTROCOSTO'
      ReadOnly = True
      Size = 45
    end
  end
  object DSPersonal: TDataSource
    DataSet = CDSPersonal
    Left = 280
    Top = 144
  end
  object DSGastosBco: TDataSource
    DataSet = CDSGastosBco
    Left = 280
    Top = 200
  end
  object CDSGastosBco: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    ProviderName = 'DSPGastosBco'
    Left = 192
    Top = 200
    object CDSGastosBcoCODIGO_CONCEPTO: TStringField
      DisplayLabel = 'Cod.Concep.'
      FieldName = 'CODIGO_CONCEPTO'
      Origin = 'CODIGO_CONCEPTO'
      Size = 3
    end
    object CDSGastosBcoDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
    object CDSGastosBcoSUCURSAL: TIntegerField
      DisplayLabel = 'Suc'
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object CDSGastosBcoCTA_CONTABLE: TStringField
      DisplayLabel = 'Cta Contable'
      FieldKind = fkLookup
      FieldName = 'CTA_CONTABLE'
      LookupDataSet = CDSCtaContableBco
      LookupKeyFields = 'CODIGOELEMENTO'
      LookupResultField = 'MUESTRACUENTA'
      KeyFields = 'CODIGO_CONCEPTO'
      Lookup = True
    end
    object CDSGastosBcoCTA_CONTABLE_COD: TStringField
      DisplayLabel = 'Cod.Cta'
      FieldKind = fkLookup
      FieldName = 'CTA_CONTABLE_COD'
      LookupDataSet = CDSCtaContableBco
      LookupKeyFields = 'CODIGOELEMENTO'
      LookupResultField = 'MUESTRACODIGOCTA'
      KeyFields = 'CODIGO_CONCEPTO'
      Lookup = True
    end
    object CDSGastosBcoTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSGastosBcoANIO: TSmallintField
      DisplayLabel = 'A'#241'o'
      FieldName = 'ANIO'
      Origin = 'ANIO'
    end
    object CDSGastosBcoMES: TSmallintField
      DisplayLabel = 'Mes'
      FieldName = 'MES'
      Origin = 'MES'
    end
    object CDSGastosBcoCENTROCOSTO: TStringField
      DisplayLabel = 'Centro de Costo'
      FieldName = 'CENTROCOSTO'
      Size = 45
    end
  end
  object QCtaContable: TFDQuery
    Connection = DMContable.fdcContables
    SQL.Strings = (
      'select r.idcuenta,c.descripcion as MuestraCuenta, '
      
        'r.codigoelemento,r.idtabla,c.codigo as MuestraCodigoCta from asi' +
        'entoscuentasuso r'
      'left join tablasgestion t on t.id=r.idtabla'
      'left join asientoscuentas c on c.id=r.idcuenta'
      'where upper( t.tabla ) = upper ( '#39'Gastos_cuentas'#39' ) ')
    Left = 685
    Top = 34
  end
  object DSPCtaContable: TDataSetProvider
    DataSet = QCtaContable
    Options = []
    Left = 768
    Top = 32
  end
  object CDSCtaContable: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCtaContable'
    Left = 864
    Top = 32
    object CDSCtaContableIDCUENTA: TIntegerField
      FieldName = 'IDCUENTA'
      Origin = 'IDCUENTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCtaContableCODIGOELEMENTO: TStringField
      FieldName = 'CODIGOELEMENTO'
      Origin = 'CODIGOELEMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSCtaContableIDTABLA: TIntegerField
      FieldName = 'IDTABLA'
      Origin = 'IDTABLA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCtaContableMUESTRACUENTA: TStringField
      FieldName = 'MUESTRACUENTA'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 40
    end
    object CDSCtaContableMUESTRACODIGOCTA: TStringField
      FieldName = 'MUESTRACODIGOCTA'
      Origin = 'CODIGO'
      ProviderFlags = []
      Size = 15
    end
  end
  object CDSCtaContableFc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCtaContableFC'
    Left = 864
    Top = 88
    object IntegerField1: TIntegerField
      FieldName = 'IDCUENTA'
      Origin = 'IDCUENTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'CODIGOELEMENTO'
      Origin = 'CODIGOELEMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object IntegerField2: TIntegerField
      FieldName = 'IDTABLA'
      Origin = 'IDTABLA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'MUESTRACUENTA'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 40
    end
    object CDSCtaContableFcMUESTRACODIGOCTA: TStringField
      FieldName = 'MUESTRACODIGOCTA'
      Origin = 'CODIGO'
      ProviderFlags = []
      Size = 15
    end
  end
  object DSPCtaContableFC: TDataSetProvider
    DataSet = QCtaContableFC
    Options = []
    Left = 768
    Top = 88
  end
  object QCtaContableFC: TFDQuery
    Connection = DMContable.fdcContables
    SQL.Strings = (
      'select r.idcuenta,c.descripcion as MuestraCuenta,'
      
        'r.codigoelemento,r.idtabla,c.codigo as MuestraCodigoCta from asi' +
        'entoscuentasuso r'
      'left join tablasgestion t on t.id=r.idtabla'
      'left join asientoscuentas c on c.id=r.idcuenta'
      
        'where (upper( t.tabla ) = upper ( '#39'stock'#39' )) and (t.descripcion ' +
        'containing '#39'Articulos/Concpetos por Compras'#39')')
    Left = 685
    Top = 82
  end
  object QCtaContablePersonal: TFDQuery
    Connection = DMContable.fdcContables
    SQL.Strings = (
      'select r.idcuenta,c.descripcion as MuestraCuenta,'
      
        'r.codigoelemento,r.idtabla,c.codigo as MuestraCodigoCta from asi' +
        'entoscuentasuso r'
      'left join tablasgestion t on t.id=r.idtabla'
      'left join asientoscuentas c on c.id=r.idcuenta'
      
        'where (upper( t.tabla ) = upper ( '#39'personal'#39' )) and (t.descripci' +
        'on containing '#39'Personal'#39')')
    Left = 685
    Top = 130
  end
  object QCtaContableBco: TFDQuery
    Connection = DMContable.fdcContables
    SQL.Strings = (
      'select r.idcuenta,c.descripcion as MuestraCuenta,'
      
        'r.codigoelemento,r.idtabla,c.codigo as MuestraCodigoCta from asi' +
        'entoscuentasuso r'
      'left join tablasgestion t on t.id=r.idtabla'
      'left join asientoscuentas c on c.id=r.idcuenta'
      
        'where (upper( t.tabla ) = upper ( '#39'Conceptos_Bancarios'#39' )) and (' +
        't.descripcion containing '#39'Conceptos Bancarios'#39')')
    Left = 685
    Top = 177
  end
  object DSPCtaContableBco: TDataSetProvider
    DataSet = QCtaContableBco
    Options = []
    Left = 768
    Top = 177
  end
  object DSPCtaContablePersonal: TDataSetProvider
    DataSet = QCtaContablePersonal
    Options = []
    Left = 768
    Top = 136
  end
  object CDSCtaContablePersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCtaContablePersonal'
    Left = 864
    Top = 136
    object IntegerField3: TIntegerField
      FieldName = 'IDCUENTA'
      Origin = 'IDCUENTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'CODIGOELEMENTO'
      Origin = 'CODIGOELEMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object IntegerField4: TIntegerField
      FieldName = 'IDTABLA'
      Origin = 'IDTABLA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField4: TStringField
      FieldName = 'MUESTRACUENTA'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 40
    end
    object StringField5: TStringField
      FieldName = 'MUESTRACODIGOCTA'
      Origin = 'CODIGO'
      ProviderFlags = []
      Size = 15
    end
  end
  object CDSCtaContableBco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCtaContableBco'
    Left = 864
    Top = 177
    object IntegerField5: TIntegerField
      FieldName = 'IDCUENTA'
      Origin = 'IDCUENTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField6: TStringField
      FieldName = 'CODIGOELEMENTO'
      Origin = 'CODIGOELEMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object IntegerField6: TIntegerField
      FieldName = 'IDTABLA'
      Origin = 'IDTABLA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField7: TStringField
      FieldName = 'MUESTRACUENTA'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 40
    end
    object StringField8: TStringField
      FieldName = 'MUESTRACODIGOCTA'
      Origin = 'CODIGO'
      ProviderFlags = []
      Size = 15
    end
  end
  object QSaldoIng: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select extract(year from eg.fechaingreso) as anio,extract(month ' +
        'from eg.fechaingreso) as mes,'
      
        'egc.nrocpbte,egc.id_ingreso,egc.tipocpbte,egc.clasecpbte, eg.rub' +
        'roingreso, eg.codigoingreso,'
      
        'eg.detalle,rb.detalle as MuestraRubro,cpbte.id_comprobante as Mu' +
        'estraIdComprobante,'
      
        'cta.detalle as MuestraCta,eg.importe,cm.id_cuenta_caja,cc.nombre' +
        ',ccos.descripcion as CentroCosto from ing_caja_detalle eg'
      
        'left join gastos_cuentas cta on (cta.codigo=eg.codigoingreso and' +
        ' cta.codigo_rubro=eg.rubroingreso)'
      
        'left join aplica_ctro_costo ctrc on ctrc.id_cpbte=eg.id_cpbte an' +
        'd ctrc.tipocpbte=eg.tipocpbte and ctrc.concepto=eg.codigoingreso'
      'left join centro_costo ccos on ccos.id=ctrc.ctro_costo'
      'left join gastos_rubros rb on rb.codigo=eg.rubroingreso'
      'left join ing_caja egc on egc.id_ingreso=eg.id_cpbte'
      'left join caja_mov cm on cm.tipo_comprob=egc.tipocpbte and'
      '                         cm.clase_comprob=egc.clasecpbte and'
      '                         cm.id_comprobante=egc.id_ingreso'
      'left join cuenta_caja cc on cc.id_cuenta=cm.id_cuenta_caja'
      
        'left join comprobantes cpbte on cpbte.tipo_comprob=egc.tipocpbte' +
        ' and'
      
        '                                cpbte.clase_comprob=egc.clasecpb' +
        'te and'
      '                                cpbte.letra=egc.letra and'
      
        '                                cpbte.sucursal=egc.sucursalventa' +
        ' and'
      '                                cpbte.compra_venta='#39'V'#39
      'where ( eg.fechaingreso between :desde and :Hasta )'
      ' and ((egc.sucursalventa = :suc ) or ( :suc = -1 ))')
    Left = 29
    Top = 274
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'Hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPSaldoIng: TDataSetProvider
    DataSet = QSaldoIng
    Options = []
    Left = 112
    Top = 280
  end
  object CDSSaldoIng: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSaldoIng'
    Left = 184
    Top = 280
    object CDSSaldoIngANIO: TSmallintField
      DisplayLabel = 'A'#241'o'
      FieldName = 'ANIO'
      Origin = 'ANIO'
    end
    object CDSSaldoIngMES: TSmallintField
      DisplayLabel = 'Mes'
      FieldName = 'MES'
      Origin = 'MES'
    end
    object CDSSaldoIngNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSSaldoIngID_INGRESO: TIntegerField
      FieldName = 'ID_INGRESO'
      Origin = 'ID_INGRESO'
    end
    object CDSSaldoIngTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSSaldoIngCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSSaldoIngRUBROINGRESO: TStringField
      FieldName = 'RUBROINGRESO'
      Origin = 'RUBROINGRESO'
      Size = 3
    end
    object CDSSaldoIngCODIGOINGRESO: TStringField
      DisplayLabel = 'Cta.Ingreso'
      FieldName = 'CODIGOINGRESO'
      Origin = 'CODIGOINGRESO'
      Size = 6
    end
    object CDSSaldoIngDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object CDSSaldoIngMUESTRARUBRO: TStringField
      FieldName = 'MUESTRARUBRO'
      Origin = 'MUESTRARUBRO'
      Size = 50
    end
    object CDSSaldoIngMUESTRAIDCOMPROBANTE: TIntegerField
      FieldName = 'MUESTRAIDCOMPROBANTE'
      Origin = 'MUESTRAIDCOMPROBANTE'
    end
    object CDSSaldoIngMUESTRACTA: TStringField
      FieldName = 'MUESTRACTA'
      Origin = 'MUESTRACTA'
      Size = 50
    end
    object CDSSaldoIngIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSSaldoIngID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
    end
    object CDSSaldoIngNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object CDSSaldoIngCTA_CONTABLE: TStringField
      DisplayLabel = 'Cta.Contable'
      FieldKind = fkLookup
      FieldName = 'CTA_CONTABLE'
      LookupDataSet = CDSCtaContableIng
      LookupKeyFields = 'CODIGOELEMENTO'
      LookupResultField = 'MUESTRACUENTA'
      KeyFields = 'CODIGOINGRESO'
      Lookup = True
    end
    object CDSSaldoIngCTA_CONTABLE_COD: TStringField
      DisplayLabel = 'Cod.Cta'
      FieldKind = fkLookup
      FieldName = 'CTA_CONTABLE_COD'
      LookupDataSet = CDSCtaContableIng
      LookupKeyFields = 'CODIGOELEMENTO'
      LookupResultField = 'MUESTRACODIGOCTA'
      KeyFields = 'CODIGOINGRESO'
      Lookup = True
    end
    object CDSSaldoIngCENTROCOSTO: TStringField
      DisplayLabel = 'Centro de Costo'
      FieldName = 'CENTROCOSTO'
      Size = 45
    end
  end
  object DSSaldoIng: TDataSource
    DataSet = CDSSaldoIng
    Left = 272
    Top = 280
  end
  object QCtaContableIng: TFDQuery
    Connection = DMContable.fdcContables
    SQL.Strings = (
      'select r.idcuenta,c.descripcion as MuestraCuenta, '
      
        'r.codigoelemento,r.idtabla,c.codigo as MuestraCodigoCta from asi' +
        'entoscuentasuso r'
      'left join tablasgestion t on t.id   = r.idtabla'
      'left join asientoscuentas c on c.id = r.idcuenta'
      'where upper( t.tabla ) = upper ( '#39'Gastos_cuentas'#39' ) ')
    Left = 685
    Top = 242
  end
  object DSPCtaContableIng: TDataSetProvider
    DataSet = QCtaContableIng
    Options = []
    Left = 768
    Top = 248
  end
  object CDSCtaContableIng: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCtaContableIng'
    Left = 864
    Top = 248
    object IntegerField7: TIntegerField
      FieldName = 'IDCUENTA'
      Origin = 'IDCUENTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField9: TStringField
      FieldName = 'CODIGOELEMENTO'
      Origin = 'CODIGOELEMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object IntegerField8: TIntegerField
      FieldName = 'IDTABLA'
      Origin = 'IDTABLA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField10: TStringField
      FieldName = 'MUESTRACUENTA'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 40
    end
    object StringField11: TStringField
      FieldName = 'MUESTRACODIGOCTA'
      Origin = 'CODIGO'
      ProviderFlags = []
      Size = 15
    end
  end
  object QTCGastoAranceles: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select '#39'Aranceles'#39', tc.fecha,tc.tipocpbte,tc.clasecpbte,tc.numer' +
        'ocpbte,tc.nro_liquidacion, tc.arancel,'
      
        '       extract( month from tc.fecha ) as mes,extract( year from ' +
        'tc.fecha ) as Anio from liquidacion_tc_cab tc'
      
        'where tc.fecha_fiscal between :desde and :hasta and tc.contabili' +
        'za='#39'S'#39' and tc.arancel>0')
    Left = 40
    Top = 360
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'Hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object QTCGastoFinaciero: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select '#39'Gasto Financiero'#39', tc.fecha,tc.tipocpbte,tc.clasecpbte,t' +
        'c.numerocpbte,tc.nro_liquidacion, tc.costo_financiero,'
      
        '       extract( month from tc.fecha ) as mes,extract( year from ' +
        'tc.fecha ) as Anio from liquidacion_tc_cab tc'
      
        'where tc.fecha_fiscal between :desde and :hasta and tc.contabili' +
        'za='#39'S'#39' and tc.costo_financiero>0')
    Left = 32
    Top = 416
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'Hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object DSPGastoAranceles: TDataSetProvider
    DataSet = QTCGastoAranceles
    Options = []
    Left = 112
    Top = 360
  end
  object CDSGastoAranceles: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPGastoAranceles'
    Left = 216
    Top = 360
    object CDSGastoArancelesCONSTANT: TStringField
      FieldName = 'CONSTANT'
      ReadOnly = True
      FixedChar = True
      Size = 9
    end
    object CDSGastoArancelesFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Required = True
    end
    object CDSGastoArancelesTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSGastoArancelesCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSGastoArancelesNUMEROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NUMEROCPBTE'
      Size = 13
    end
    object CDSGastoArancelesNRO_LIQUIDACION: TStringField
      DisplayLabel = 'Nro.Liquidacion'
      FieldName = 'NRO_LIQUIDACION'
      Size = 8
    end
    object CDSGastoArancelesARANCEL: TFloatField
      DisplayLabel = 'Arancel'
      FieldName = 'ARANCEL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSGastoArancelesMES: TSmallintField
      DisplayLabel = 'Mes'
      FieldName = 'MES'
      ReadOnly = True
    end
    object CDSGastoArancelesANIO: TSmallintField
      DisplayLabel = 'A'#241'o'
      FieldName = 'ANIO'
      ReadOnly = True
    end
  end
  object DSGastoAranceles: TDataSource
    DataSet = CDSGastoAranceles
    Left = 304
    Top = 360
  end
  object DSPTCGastoFinaciero: TDataSetProvider
    DataSet = QTCGastoFinaciero
    Options = []
    Left = 120
    Top = 424
  end
  object CDSTCGastoFinaciero: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPTCGastoFinaciero'
    Left = 216
    Top = 424
    object CDSTCGastoFinacieroCONSTANT: TStringField
      FieldName = 'CONSTANT'
      ReadOnly = True
      FixedChar = True
      Size = 16
    end
    object CDSTCGastoFinacieroFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Required = True
    end
    object CDSTCGastoFinacieroTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSTCGastoFinacieroCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSTCGastoFinacieroNUMEROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NUMEROCPBTE'
      Size = 13
    end
    object CDSTCGastoFinacieroNRO_LIQUIDACION: TStringField
      DisplayLabel = 'Nro.Liquidacion'
      FieldName = 'NRO_LIQUIDACION'
      Size = 8
    end
    object CDSTCGastoFinacieroCOSTO_FINANCIERO: TFloatField
      DisplayLabel = 'Codto Financiero'
      FieldName = 'COSTO_FINANCIERO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSTCGastoFinacieroMES: TSmallintField
      DisplayLabel = 'Mes'
      FieldName = 'MES'
      ReadOnly = True
    end
    object CDSTCGastoFinacieroANIO: TSmallintField
      DisplayLabel = 'A'#241'o'
      FieldName = 'ANIO'
      ReadOnly = True
    end
  end
  object DSTCGastoFinaciero: TDataSource
    DataSet = CDSTCGastoFinaciero
    Left = 304
    Top = 424
  end
  object QCtrCosto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id,c.descripcion from centro_costo c order by c.descrip' +
        'cion')
    Left = 677
    Top = 370
  end
  object DSPCtrCosto: TDataSetProvider
    DataSet = QCtrCosto
    Options = []
    Left = 736
    Top = 368
  end
  object CDSCtroCostoAranceles: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCtrCosto'
    Left = 800
    Top = 312
    object CDSCtroCostoArancelesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSCtroCostoArancelesDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 45
    end
  end
  object DSCtrCostoAranceles: TDataSource
    DataSet = CDSCtroCostoAranceles
    Left = 904
    Top = 304
  end
  object CDSCtroCostoFinanciero: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCtrCosto'
    Left = 800
    Top = 416
    object IntegerField9: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField12: TStringField
      FieldName = 'DESCRIPCION'
      Size = 45
    end
  end
  object DSCtroCostoFinanciero: TDataSource
    DataSet = CDSCtroCostoFinanciero
    Left = 864
    Top = 416
  end
end
