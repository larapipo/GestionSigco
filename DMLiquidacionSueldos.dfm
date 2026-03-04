object DatosLiquidacionSueldo: TDatosLiquidacionSueldo
  OnDestroy = DataModuleDestroy
  Height = 697
  Width = 782
  object QConceptosCate: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'Select cc.*,c.sueldo_basico,c.valorhora,c.tipo_liquidacion From ' +
        'personal_categoria_concep cc'
      'left join personal_categoria c on c.id=cc.idcategoria'
      'Where Cc.idcategoria=:idcategoria'
      'Order By cc.renglon desc')
    Left = 40
    Top = 152
    ParamData = <
      item
        Position = 1
        Name = 'idcategoria'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPConceptosCategorias: TDataSetProvider
    DataSet = QConceptosCate
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 155
    Top = 152
  end
  object CDSConceptosCategorias: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'idcategoria'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPConceptosCategorias'
    Left = 267
    Top = 152
    object CDSConceptosCategoriasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSConceptosCategoriasIDCATEGORIA: TIntegerField
      FieldName = 'IDCATEGORIA'
      Origin = 'IDCATEGORIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSConceptosCategoriasIDCONCEPTO: TIntegerField
      FieldName = 'IDCONCEPTO'
      Origin = 'IDCONCEPTO'
    end
    object CDSConceptosCategoriasTIPO_CONCEPTO: TStringField
      FieldName = 'TIPO_CONCEPTO'
      Origin = 'TIPO_CONCEPTO'
      Size = 2
    end
    object CDSConceptosCategoriasCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      Size = 30
    end
    object CDSConceptosCategoriasCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object CDSConceptosCategoriasIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object CDSConceptosCategoriasPORCENTAJE: TFloatField
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
    end
    object CDSConceptosCategoriasVALORHORA: TFloatField
      FieldName = 'VALORHORA'
      Origin = 'VALORHORA'
      ProviderFlags = []
    end
    object CDSConceptosCategoriasTIPO_LIQUIDACION: TSmallintField
      FieldName = 'TIPO_LIQUIDACION'
      Origin = 'TIPO_LIQUIDACION'
      ProviderFlags = []
    end
    object CDSConceptosCategoriasRENGLON: TIntegerField
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
      Required = True
    end
    object CDSConceptosCategoriasSUELDO_BASICO: TFloatField
      FieldName = 'SUELDO_BASICO'
      Origin = 'SUELDO_BASICO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QConcepto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select * From personal_Conceptos where id=:id')
    Left = 632
    Top = 296
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QConceptoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConceptoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 2
    end
    object QConceptoCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      Size = 30
    end
    object QConceptoCALCULO: TStringField
      FieldName = 'CALCULO'
      Origin = 'CALCULO'
      Size = 3
    end
    object QConceptoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QConceptoPORCENTAJE: TFloatField
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
    end
    object QConceptoMINIMO: TFloatField
      FieldName = 'MINIMO'
      Origin = 'MINIMO'
    end
    object QConceptoCONCEPTOBASE: TIntegerField
      FieldName = 'CONCEPTOBASE'
      Origin = 'CONCEPTOBASE'
    end
    object QConceptoCOLUMNA: TIntegerField
      FieldName = 'COLUMNA'
      Origin = 'COLUMNA'
    end
    object QConceptoMAXIMO: TIntegerField
      FieldName = 'MAXIMO'
      Origin = 'MAXIMO'
    end
    object QConceptoVISIBLE: TStringField
      FieldName = 'VISIBLE'
      Origin = 'VISIBLE'
      Size = 1
    end
    object QConceptoCONCEPTOBASE2: TIntegerField
      FieldName = 'CONCEPTOBASE2'
      Origin = 'CONCEPTOBASE2'
    end
  end
  object QHoras: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select (h.canitdadhoras) from Personal_horas h'
      
        'where ( h.empleado=:codigo and h.fecha between :desde and :hasta' +
        ' )'
      '      and h.liquidado='#39'N'#39)
    Left = 527
    Top = 288
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object QHorasCANITDADHORAS: TFloatField
      FieldName = 'CANITDADHORAS'
      Origin = 'CANITDADHORAS'
    end
  end
  object QNovedades: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select n.id,n.desde,n.hasta,n.liquidado,c.idconcepto,c.tipo_conc' +
        'epto,'
      
        '       c.concepto,c.cantidad,c.porcentaje,c.importe from persona' +
        'l_novedades_cab n'
      'left join personal_novedades_conceptos c on c.id_cab=n.id'
      '  where n.empleado = :empleado and n.liquidado<>'#39'S'#39)
    Left = 619
    Top = 392
    ParamData = <
      item
        Name = 'EMPLEADO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QNovedadesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNovedadesDESDE: TSQLTimeStampField
      FieldName = 'DESDE'
      Origin = 'DESDE'
    end
    object QNovedadesHASTA: TSQLTimeStampField
      FieldName = 'HASTA'
      Origin = 'HASTA'
    end
    object QNovedadesLIQUIDADO: TStringField
      FieldName = 'LIQUIDADO'
      Origin = 'LIQUIDADO'
      FixedChar = True
      Size = 1
    end
    object QNovedadesIDCONCEPTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDCONCEPTO'
      Origin = 'IDCONCEPTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QNovedadesTIPO_CONCEPTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_CONCEPTO'
      Origin = 'TIPO_CONCEPTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QNovedadesCONCEPTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QNovedadesCANTIDAD: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      ProviderFlags = []
      ReadOnly = True
    end
    object QNovedadesPORCENTAJE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QNovedadesIMPORTE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QEmpleado_: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select p.*,ct.detalle as MUESTRACATEGORIA from personal p '
      'left join personal_categoria ct on ct.id=p.categoria'
      'where codigo=:codigo')
    Left = 395
    Top = 168
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
  end
  object QEmbargos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select e.empleado,d.* from personal_embargos_cab e'
      'left join personal_embargos_detalle d on d.id_cab=e.id'
      'where e.empleado = :empleado ')
    Left = 40
    Top = 224
    ParamData = <
      item
        Position = 1
        Name = 'empleado'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPEmbargos: TDataSetProvider
    DataSet = QEmbargos
    Options = []
    Left = 131
    Top = 224
  end
  object CDSEmbargos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'empleado'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPEmbargos'
    Left = 243
    Top = 232
    object CDSEmbargosEMPLEADO: TStringField
      FieldName = 'EMPLEADO'
      Origin = 'EMPLEADO'
      Size = 6
    end
    object CDSEmbargosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSEmbargosID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSEmbargosMONTO_FIJO: TFloatField
      FieldName = 'MONTO_FIJO'
      Origin = 'MONTO_FIJO'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSEmbargosMONTO_MINIMO: TFloatField
      FieldName = 'MONTO_MINIMO'
      Origin = 'MONTO_MINIMO'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSEmbargosPORCENTAJE1: TFloatField
      FieldName = 'PORCENTAJE1'
      Origin = 'PORCENTAJE1'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSEmbargosPORCENTAJE2: TFloatField
      FieldName = 'PORCENTAJE2'
      Origin = 'PORCENTAJE2'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSEmbargosIMPORTE_DEDUCCION: TFloatField
      FieldName = 'IMPORTE_DEDUCCION'
      Origin = 'IMPORTE_DEDUCCION'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSEmbargosINCLUYE_EXENTO: TStringField
      FieldName = 'INCLUYE_EXENTO'
      Origin = 'INCLUYE_EXENTO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
  end
  object QLstEmpleados: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select e.codigo,e.nombre,e.cuil,e.categoria,E.fecha_ingreso,e.do' +
        'micilio,ct.sueldo_basico,ct.Detalle as MuestraCategoria from per' +
        'sonal e'
      'left join personal_horas h on h.empleado=e.codigo'
      'LEFT JOIN PERSONAL_CATEGORIA CT ON CT.id= E.categoria'
      
        'where (e.categoria = :id_categoria or :id_categoria=-1) AND (CT.' +
        'sueldo_basico>0)  and (e.activo='#39'S'#39')')
    Left = 64
    Top = 585
    ParamData = <
      item
        Position = 1
        Name = 'id_categoria'
        DataType = ftInteger
        ParamType = ptInput
        Value = '0'
      end>
  end
  object QProduccion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'Select p.*,l.detalle as MuestraLugar from personal_produccion_de' +
        't p'
      'left join personal_lugar_tarea l on l.id=p.idlugar'
      'where p.empleado=:codigo and p.fecha between :desde and :hasta'
      'and p.liquidado='#39'N'#39)
    Left = 56
    Top = 401
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object QProduccionID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QProduccionID_CONCEPTO: TIntegerField
      FieldName = 'ID_CONCEPTO'
      Origin = 'ID_CONCEPTO'
    end
    object QProduccionDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 30
    end
    object QProduccionCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QProduccionVALOR_UNITARIO: TFloatField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
    end
    object QProduccionVALOR_TOTAL: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
    end
    object QProduccionLEGAJO: TIntegerField
      FieldName = 'LEGAJO'
      Origin = 'LEGAJO'
    end
    object QProduccionLIQUIDADO: TStringField
      FieldName = 'LIQUIDADO'
      Origin = 'LIQUIDADO'
      Size = 1
    end
    object QProduccionIDRECIBO: TIntegerField
      FieldName = 'IDRECIBO'
      Origin = 'IDRECIBO'
    end
    object QProduccionIDLUGAR: TIntegerField
      FieldName = 'IDLUGAR'
      Origin = 'IDLUGAR'
    end
    object QProduccionIDLIQUIDACION: TIntegerField
      FieldName = 'IDLIQUIDACION'
      Origin = 'IDLIQUIDACION'
    end
    object QProduccionMUESTRALUGAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRALUGAR'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QProduccionFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QProduccionEMPLEADO: TStringField
      FieldName = 'EMPLEADO'
      Origin = 'EMPLEADO'
      Size = 6
    end
  end
  object DSProduccion: TDataSource
    DataSet = QProduccion
    Left = 128
    Top = 400
  end
  object QHorasRecibos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select h.*,l.detalle as MuestraLugar from  personal_horas h'
      'left join personal_lugar_tarea l on l.id=h.idlugar'
      'where h.idrecibo=:idrecibo')
    Left = 64
    Top = 457
    ParamData = <
      item
        Position = 1
        Name = 'idrecibo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPHorasRecibo: TDataSetProvider
    DataSet = QHorasRecibos
    Options = []
    Left = 133
    Top = 456
  end
  object CDSHorasRecibo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDRECIBO'
    MasterFields = 'ID'
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'idrecibo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPHorasRecibo'
    Left = 193
    Top = 456
    object CDSHorasReciboID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSHorasReciboEMPLEADO: TStringField
      FieldName = 'EMPLEADO'
      Size = 6
    end
    object CDSHorasReciboLEGAJO: TIntegerField
      FieldName = 'LEGAJO'
    end
    object CDSHorasReciboFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSHorasReciboENTRADA: TSQLTimeStampField
      FieldName = 'ENTRADA'
    end
    object CDSHorasReciboSALIDA: TSQLTimeStampField
      FieldName = 'SALIDA'
    end
    object CDSHorasReciboCANITDADHORAS: TFloatField
      FieldName = 'CANITDADHORAS'
    end
    object CDSHorasReciboLIQUIDADO: TStringField
      FieldName = 'LIQUIDADO'
      FixedChar = True
      Size = 1
    end
    object CDSHorasReciboIDLIQUIDACION: TIntegerField
      FieldName = 'IDLIQUIDACION'
    end
    object CDSHorasReciboIDRECIBO: TIntegerField
      FieldName = 'IDRECIBO'
    end
    object CDSHorasReciboIDLUGAR: TIntegerField
      FieldName = 'IDLUGAR'
      Required = True
    end
    object CDSHorasReciboMUESTRALUGAR: TStringField
      FieldName = 'MUESTRALUGAR'
      ReadOnly = True
      Size = 30
    end
  end
  object DSHorasRecibo: TDataSource
    DataSet = CDSHorasRecibo
    Left = 304
    Top = 456
  end
  object QProduccionRecibo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'SELECT * FROM personal_produccion_det p WHERE p.idrecibo=:idreci' +
        'bo'
      'order by p.fecha')
    Left = 64
    Top = 503
    ParamData = <
      item
        Position = 1
        Name = 'idrecibo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPPruccionRecibo: TDataSetProvider
    DataSet = QProduccionRecibo
    Options = []
    Left = 141
    Top = 503
  end
  object CDSProduccionRecibo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDRECIBO'
    MasterFields = 'ID'
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'idrecibo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPPruccionRecibo'
    Left = 217
    Top = 503
    object CDSProduccionReciboID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSProduccionReciboFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSProduccionReciboID_CONCEPTO: TIntegerField
      FieldName = 'ID_CONCEPTO'
    end
    object CDSProduccionReciboDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 30
    end
    object CDSProduccionReciboCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object CDSProduccionReciboVALOR_UNITARIO: TFloatField
      FieldName = 'VALOR_UNITARIO'
    end
    object CDSProduccionReciboVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object CDSProduccionReciboLEGAJO: TIntegerField
      FieldName = 'LEGAJO'
    end
    object CDSProduccionReciboLIQUIDADO: TStringField
      FieldName = 'LIQUIDADO'
      FixedChar = True
      Size = 1
    end
    object CDSProduccionReciboIDRECIBO: TIntegerField
      FieldName = 'IDRECIBO'
    end
    object CDSProduccionReciboIDLUGAR: TIntegerField
      FieldName = 'IDLUGAR'
    end
    object CDSProduccionReciboIDLIQUIDACION: TIntegerField
      FieldName = 'IDLIQUIDACION'
    end
    object CDSProduccionReciboEMPLEADO: TStringField
      FieldName = 'EMPLEADO'
      Size = 6
    end
  end
  object DSProduccionRecibo: TDataSource
    DataSet = CDSProduccionRecibo
    Left = 304
    Top = 503
  end
  object QDetalleRecibo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select dr.* From personal_Recibo_detalle dr'
      'Where dr.idrecibo = :idRecibo'
      'order by dr.idconcepto')
    Left = 395
    Top = 97
    ParamData = <
      item
        Position = 1
        Name = 'idrecibo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QDetalleReciboID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDetalleReciboIDRECIBO: TIntegerField
      FieldName = 'IDRECIBO'
      Origin = 'IDRECIBO'
    end
    object QDetalleReciboTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 2
    end
    object QDetalleReciboIDCONCEPTO: TIntegerField
      FieldName = 'IDCONCEPTO'
      Origin = 'IDCONCEPTO'
    end
    object QDetalleReciboCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      Size = 30
    end
    object QDetalleReciboCALCULO: TStringField
      FieldName = 'CALCULO'
      Origin = 'CALCULO'
      Size = 3
    end
    object QDetalleReciboIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QDetalleReciboPORCENTAJE: TFloatField
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
    end
    object QDetalleReciboCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QDetalleReciboREMUNERACION: TFloatField
      FieldName = 'REMUNERACION'
      Origin = 'REMUNERACION'
    end
    object QDetalleReciboREMUNERACIONEXENTA: TFloatField
      FieldName = 'REMUNERACIONEXENTA'
      Origin = 'REMUNERACIONEXENTA'
    end
    object QDetalleReciboRETENCION: TFloatField
      FieldName = 'RETENCION'
      Origin = 'RETENCION'
    end
    object QDetalleReciboBASE: TFloatField
      FieldName = 'BASE'
      Origin = 'BASE'
    end
    object QDetalleReciboNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
  end
  object DSPDetalleRecibos: TDataSetProvider
    DataSet = QDetalleRecibo
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 483
    Top = 96
  end
  object CDSDetalleRecibo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDRECIBO'
    MasterFields = 'ID'
    MasterSource = DSRecibos
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'idrecibo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPDetalleRecibos'
    AfterPost = CDSDetalleReciboAfterPost
    AfterDelete = CDSDetalleReciboAfterDelete
    OnNewRecord = CDSDetalleReciboNewRecord
    Left = 547
    Top = 96
    object CDSDetalleReciboID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSDetalleReciboIDRECIBO: TIntegerField
      FieldName = 'IDRECIBO'
      Origin = 'IDRECIBO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSDetalleReciboTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 2
    end
    object CDSDetalleReciboIDCONCEPTO: TIntegerField
      FieldName = 'IDCONCEPTO'
      Origin = 'IDCONCEPTO'
      OnSetText = CDSDetalleReciboIDCONCEPTOSetText
    end
    object CDSDetalleReciboCONCEPTO: TStringField
      DisplayLabel = 'Concepto'
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      Size = 30
    end
    object CDSDetalleReciboCALCULO: TStringField
      FieldName = 'CALCULO'
      Origin = 'CALCULO'
      Size = 3
    end
    object CDSDetalleReciboIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;,0.00;-'
      EditFormat = '0.00;0.00;-'
    end
    object CDSDetalleReciboPORCENTAJE: TFloatField
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
      DisplayFormat = ',0.00;,0.00;-'
      EditFormat = '0.00;0.00;-'
    end
    object CDSDetalleReciboCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00;,0.00;-'
      EditFormat = '0.00;0.00;-'
    end
    object CDSDetalleReciboREMUNERACION: TFloatField
      DisplayLabel = 'Remuneracion'
      FieldName = 'REMUNERACION'
      Origin = 'REMUNERACION'
      OnSetText = CDSDetalleReciboREMUNERACIONSetText
      DisplayFormat = ',0.00;,0.00;-'
      EditFormat = '0.00;0.00;-'
    end
    object CDSDetalleReciboREMUNERACIONEXENTA: TFloatField
      DisplayLabel = 'Exentas'
      FieldName = 'REMUNERACIONEXENTA'
      Origin = 'REMUNERACIONEXENTA'
      OnSetText = CDSDetalleReciboREMUNERACIONEXENTASetText
      DisplayFormat = ',0.00;,0.00;-'
      EditFormat = '0.00;0.00;-'
    end
    object CDSDetalleReciboRETENCION: TFloatField
      DisplayLabel = 'Retenciones'
      FieldName = 'RETENCION'
      Origin = 'RETENCION'
      OnSetText = CDSDetalleReciboRETENCIONSetText
      DisplayFormat = ',0.00;,0.00;-'
      EditFormat = '0.00;0.00;-'
    end
    object CDSDetalleReciboBASE: TFloatField
      DisplayLabel = 'Base'
      FieldName = 'BASE'
      Origin = 'BASE'
      DisplayFormat = ',0.00;,0.00;-'
      EditFormat = '0.00;0.00;-'
    end
    object CDSDetalleReciboNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      DisplayFormat = '0.00;0.00;-'
      EditFormat = '0.00;0.00;-'
    end
  end
  object QRecibos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'Select r.*,l.nombre as MuestraTipoLiquidacion,c.detalle as Muest' +
        'raCategoria From personal_recibo r'
      
        'left join PERSONAL_LIQUIDACION_TIPO l on l.id = r.tipo_liquidaci' +
        'on'
      'left join personal_categoria c on c.id=r.categoria'
      'Where r.IdLiquidacion = :idliquidacion')
    Left = 400
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = 'idliquidacion'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRecibosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRecibosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QRecibosIDLIQUIDACION: TIntegerField
      FieldName = 'IDLIQUIDACION'
      Origin = 'IDLIQUIDACION'
    end
    object QRecibosEMPLEADO: TStringField
      FieldName = 'EMPLEADO'
      Origin = 'EMPLEADO'
      Size = 6
    end
    object QRecibosLEGAJO: TIntegerField
      FieldName = 'LEGAJO'
      Origin = 'LEGAJO'
    end
    object QRecibosNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object QRecibosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 30
    end
    object QRecibosDIRECCIONEMPLEADO: TStringField
      FieldName = 'DIRECCIONEMPLEADO'
      Origin = 'DIRECCIONEMPLEADO'
      Size = 40
    end
    object QRecibosCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
    end
    object QRecibosINGRESO: TSQLTimeStampField
      FieldName = 'INGRESO'
      Origin = 'INGRESO'
    end
    object QRecibosSECCION: TIntegerField
      FieldName = 'SECCION'
      Origin = 'SECCION'
    end
    object QRecibosVALORHORA: TFloatField
      FieldName = 'VALORHORA'
      Origin = 'VALORHORA'
    end
    object QRecibosIDEMPLEADOR: TIntegerField
      FieldName = 'IDEMPLEADOR'
      Origin = 'IDEMPLEADOR'
    end
    object QRecibosEMPLEADOR: TStringField
      FieldName = 'EMPLEADOR'
      Origin = 'EMPLEADOR'
      Size = 30
    end
    object QRecibosDIRECCIONEMPLEADOR: TStringField
      FieldName = 'DIRECCIONEMPLEADOR'
      Origin = 'DIRECCIONEMPLEADOR'
      Size = 40
    end
    object QRecibosCAJAJUBILACION: TStringField
      FieldName = 'CAJAJUBILACION'
      Origin = 'CAJAJUBILACION'
      Size = 10
    end
    object QRecibosLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
    end
    object QRecibosREMUNERACIONES: TFloatField
      FieldName = 'REMUNERACIONES'
      Origin = 'REMUNERACIONES'
      Required = True
    end
    object QRecibosREMUNERACIONESEXENTAS: TFloatField
      FieldName = 'REMUNERACIONESEXENTAS'
      Origin = 'REMUNERACIONESEXENTAS'
      Required = True
    end
    object QRecibosRETENCIONES: TFloatField
      FieldName = 'RETENCIONES'
      Origin = 'RETENCIONES'
      Required = True
    end
    object QRecibosNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
      Required = True
    end
    object QRecibosENLETRAS: TStringField
      FieldName = 'ENLETRAS'
      Origin = 'ENLETRAS'
      Size = 80
    end
    object QRecibosACUMULADOAGUINALDO: TFloatField
      FieldName = 'ACUMULADOAGUINALDO'
      Origin = 'ACUMULADOAGUINALDO'
      Required = True
    end
    object QRecibosDEPOSITADO: TStringField
      FieldName = 'DEPOSITADO'
      Origin = 'DEPOSITADO'
    end
    object QRecibosCUITEMPLEADOR: TStringField
      FieldName = 'CUITEMPLEADOR'
      Origin = 'CUITEMPLEADOR'
      Size = 13
    end
    object QRecibosCUIL_EMPLEADO: TStringField
      FieldName = 'CUIL_EMPLEADO'
      Origin = 'CUIL_EMPLEADO'
      Size = 13
    end
    object QRecibosDESDE: TSQLTimeStampField
      FieldName = 'DESDE'
      Origin = 'DESDE'
    end
    object QRecibosHASTA: TSQLTimeStampField
      FieldName = 'HASTA'
      Origin = 'HASTA'
    end
    object QRecibosTIPO_LIQUIDACION: TIntegerField
      FieldName = 'TIPO_LIQUIDACION'
      Origin = 'TIPO_LIQUIDACION'
    end
    object QRecibosBASICO: TFloatField
      FieldName = 'BASICO'
      Origin = 'BASICO'
    end
    object QRecibosPERIODO: TStringField
      FieldName = 'PERIODO'
      Origin = 'PERIODO'
      Size = 6
    end
    object QRecibosMUESTRATIPOLIQUIDACION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATIPOLIQUIDACION'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 30
    end
    object QRecibosMUESTRACATEGORIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACATEGORIA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 30
    end
  end
  object DSPRecibos: TDataSetProvider
    DataSet = QRecibos
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 483
    Top = 16
  end
  object CDSRecibos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'idliquidacion'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPRecibos'
    OnNewRecord = CDSRecibosNewRecord
    OnReconcileError = CDSRecibosReconcileError
    Left = 547
    Top = 16
    object CDSRecibosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRecibosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSRecibosIDLIQUIDACION: TIntegerField
      FieldName = 'IDLIQUIDACION'
    end
    object CDSRecibosEMPLEADO: TStringField
      FieldName = 'EMPLEADO'
      Size = 6
    end
    object CDSRecibosLEGAJO: TIntegerField
      FieldName = 'LEGAJO'
    end
    object CDSRecibosNUMERO: TIntegerField
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO'
    end
    object CDSRecibosNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 30
    end
    object CDSRecibosDIRECCIONEMPLEADO: TStringField
      FieldName = 'DIRECCIONEMPLEADO'
      Size = 40
    end
    object CDSRecibosCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object CDSRecibosINGRESO: TSQLTimeStampField
      FieldName = 'INGRESO'
    end
    object CDSRecibosSECCION: TIntegerField
      FieldName = 'SECCION'
    end
    object CDSRecibosVALORHORA: TFloatField
      FieldName = 'VALORHORA'
    end
    object CDSRecibosIDEMPLEADOR: TIntegerField
      FieldName = 'IDEMPLEADOR'
    end
    object CDSRecibosEMPLEADOR: TStringField
      FieldName = 'EMPLEADOR'
      Size = 30
    end
    object CDSRecibosDIRECCIONEMPLEADOR: TStringField
      FieldName = 'DIRECCIONEMPLEADOR'
      Size = 40
    end
    object CDSRecibosCAJAJUBILACION: TStringField
      FieldName = 'CAJAJUBILACION'
      Size = 10
    end
    object CDSRecibosLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
    end
    object CDSRecibosREMUNERACIONES: TFloatField
      FieldName = 'REMUNERACIONES'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSRecibosREMUNERACIONESEXENTAS: TFloatField
      FieldName = 'REMUNERACIONESEXENTAS'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSRecibosRETENCIONES: TFloatField
      FieldName = 'RETENCIONES'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSRecibosNETO: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'NETO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSRecibosENLETRAS: TStringField
      FieldName = 'ENLETRAS'
      Size = 80
    end
    object CDSRecibosDEPOSITADO: TStringField
      FieldName = 'DEPOSITADO'
    end
    object CDSRecibosACUMULADOAGUINALDO: TFloatField
      FieldName = 'ACUMULADOAGUINALDO'
    end
    object CDSRecibosCUITEMPLEADOR: TStringField
      FieldName = 'CUITEMPLEADOR'
      Size = 13
    end
    object CDSRecibosCUIL_EMPLEADO: TStringField
      FieldName = 'CUIL_EMPLEADO'
      Size = 13
    end
    object CDSRecibosDESDE: TSQLTimeStampField
      FieldName = 'DESDE'
    end
    object CDSRecibosHASTA: TSQLTimeStampField
      FieldName = 'HASTA'
    end
    object CDSRecibosTIPO_LIQUIDACION: TIntegerField
      FieldName = 'TIPO_LIQUIDACION'
    end
    object CDSRecibosBASICO: TFloatField
      FieldName = 'BASICO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSRecibosPERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 6
    end
    object CDSRecibosMUESTRATIPOLIQUIDACION: TStringField
      FieldName = 'MUESTRATIPOLIQUIDACION'
      ProviderFlags = []
      Size = 30
    end
    object CDSRecibosMUESTRACATEGORIA: TStringField
      DisplayLabel = 'Categoria'
      FieldName = 'MUESTRACATEGORIA'
      ProviderFlags = []
      Size = 30
    end
  end
  object QEmpresa: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from empresa')
    Left = 472
    Top = 512
    ParamData = <
      item
        Position = 1
        Name = 'idrecibo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = QEmpresa
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 531
    Top = 512
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    MasterFields = 'ID'
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'idrecibo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPEmpresa'
    Left = 595
    Top = 512
    object CDSEmpresaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object CDSEmpresaACTIVIDAD: TStringField
      FieldName = 'ACTIVIDAD'
      Origin = 'ACTIVIDAD'
      Size = 30
    end
    object CDSEmpresaDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 30
    end
    object CDSEmpresaLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 30
    end
    object CDSEmpresaCORREO: TStringField
      FieldName = 'CORREO'
      Origin = 'CORREO'
      Size = 30
    end
    object CDSEmpresaTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Origin = 'TELEFONO1'
      Size = 10
    end
    object CDSEmpresaTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Origin = 'TELEFONO2'
      Size = 10
    end
    object CDSEmpresaCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSEmpresaCONDICIONIVA: TStringField
      FieldName = 'CONDICIONIVA'
      Origin = 'CONDICIONIVA'
      Size = 15
    end
    object CDSEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField
      FieldName = 'NRO_AGTE_RET_INGBRUTOS'
      Origin = 'NRO_AGTE_RET_INGBRUTOS'
      Size = 15
    end
    object CDSEmpresaLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
    object CDSEmpresaCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object CDSEmpresaNRO_AGTE_RET_GANANCIA: TStringField
      FieldName = 'NRO_AGTE_RET_GANANCIA'
      Origin = 'NRO_AGTE_RET_GANANCIA'
      Size = 15
    end
    object CDSEmpresaAG_RET_GANANCIA: TStringField
      FieldName = 'AG_RET_GANANCIA'
      Origin = 'AG_RET_GANANCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaAG_RET_ING_BRUTOS: TStringField
      FieldName = 'AG_RET_ING_BRUTOS'
      Origin = 'AG_RET_ING_BRUTOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField
      FieldName = 'AG_PERCEPCION_ING_BRUTOS'
      Origin = 'AG_PERCEPCION_ING_BRUTOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaTASA_PERCEPCION_IB: TFloatField
      FieldName = 'TASA_PERCEPCION_IB'
      Origin = 'TASA_PERCEPCION_IB'
    end
    object CDSEmpresaMINO_IMP_PERCEP_IB: TFloatField
      FieldName = 'MINO_IMP_PERCEP_IB'
      Origin = 'MINO_IMP_PERCEP_IB'
    end
    object CDSEmpresaPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
      Origin = 'PROVINCIA'
    end
    object CDSEmpresaTASA_RET_IIBB: TFloatField
      FieldName = 'TASA_RET_IIBB'
      Origin = 'TASA_RET_IIBB'
      Required = True
    end
    object CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField
      FieldName = 'MINIMO_IMP_RET_IIBB'
      Origin = 'MINIMO_IMP_RET_IIBB'
      Required = True
    end
    object CDSEmpresaPUNITORIOS: TFloatField
      FieldName = 'PUNITORIOS'
      Origin = 'PUNITORIOS'
      Required = True
    end
    object CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField
      FieldName = 'FECHA_INICIO_ACTI'
      Origin = 'FECHA_INICIO_ACTI'
    end
    object CDSEmpresaNRO_RENSPA: TStringField
      FieldName = 'NRO_RENSPA'
      Origin = 'NRO_RENSPA'
    end
    object CDSEmpresaNRO_RUCA: TIntegerField
      FieldName = 'NRO_RUCA'
      Origin = 'NRO_RUCA'
    end
    object CDSEmpresaCUIT_AUTORIZADO: TStringField
      FieldName = 'CUIT_AUTORIZADO'
      Origin = 'CUIT_AUTORIZADO'
      Size = 13
    end
    object CDSEmpresaNOMBRE_AUTORIZADO: TStringField
      FieldName = 'NOMBRE_AUTORIZADO'
      Origin = 'NOMBRE_AUTORIZADO'
      Size = 50
    end
    object CDSEmpresaCBU: TStringField
      FieldName = 'CBU'
      Origin = 'CBU'
      Size = 22
    end
    object CDSEmpresaAG_PERCEPCION_IVA: TStringField
      FieldName = 'AG_PERCEPCION_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaCOD_ACTIVIDAD: TStringField
      FieldName = 'COD_ACTIVIDAD'
      Size = 10
    end
    object CDSEmpresaNOMBRE_FANTASIA: TStringField
      FieldName = 'NOMBRE_FANTASIA'
      Size = 50
    end
    object CDSEmpresaDIRECCION_NRO: TStringField
      FieldName = 'DIRECCION_NRO'
      Size = 10
    end
    object CDSEmpresaMIN_IMP_PERCEPCION_IVA: TFloatField
      FieldName = 'MIN_IMP_PERCEPCION_IVA'
      Required = True
    end
  end
  object QCategorias: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from personal_categoria')
    Left = 625
    Top = 596
    object QCategoriasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCategoriasDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 30
    end
    object QCategoriasVALORHORA: TFloatField
      FieldName = 'VALORHORA'
      Origin = 'VALORHORA'
    end
    object QCategoriasTIPO_LIQUIDACION: TSmallintField
      FieldName = 'TIPO_LIQUIDACION'
      Origin = 'TIPO_LIQUIDACION'
      Required = True
    end
    object QCategoriasSUELDO_BASICO: TFloatField
      FieldName = 'SUELDO_BASICO'
      Origin = 'SUELDO_BASICO'
      Required = True
    end
  end
  object QLiquidacion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select l.* from personal_liquidaciones l where l.id = :id')
    Left = 48
    Top = 17
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QLiquidacionID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLiquidacionPERIODO: TStringField
      FieldName = 'PERIODO'
      Origin = 'PERIODO'
    end
    object QLiquidacionTIPOLIQUIDACION: TIntegerField
      FieldName = 'TIPOLIQUIDACION'
      Origin = 'TIPOLIQUIDACION'
    end
    object QLiquidacionFECHALIQUIDACION: TSQLTimeStampField
      FieldName = 'FECHALIQUIDACION'
      Origin = 'FECHALIQUIDACION'
    end
    object QLiquidacionDESDE: TSQLTimeStampField
      FieldName = 'DESDE'
      Origin = 'DESDE'
    end
    object QLiquidacionHASTA: TSQLTimeStampField
      FieldName = 'HASTA'
      Origin = 'HASTA'
    end
    object QLiquidacionDEPOSITO: TStringField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object QLiquidacionCOBRO: TStringField
      FieldName = 'COBRO'
      Origin = 'COBRO'
      Size = 30
    end
    object QLiquidacionBANCO: TStringField
      FieldName = 'BANCO'
      Origin = 'BANCO'
    end
    object QLiquidacionNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
      Required = True
    end
    object QLiquidacionCERRADA: TStringField
      FieldName = 'CERRADA'
      Origin = 'CERRADA'
      FixedChar = True
      Size = 1
    end
    object QLiquidacionID_EMPLEADOR: TIntegerField
      FieldName = 'ID_EMPLEADOR'
      Origin = 'ID_EMPLEADOR'
      Required = True
    end
    object QLiquidacionID_CATEGORIAS: TIntegerField
      FieldName = 'ID_CATEGORIAS'
      Origin = 'ID_CATEGORIAS'
    end
    object QLiquidacionID_LUGAR: TIntegerField
      FieldName = 'ID_LUGAR'
      Origin = 'ID_LUGAR'
    end
  end
  object QLugar: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from personal_lugar_tarea')
    Left = 513
    Top = 588
    object QLugarID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLugarDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 30
    end
    object QLugarVALORHORA: TFloatField
      FieldName = 'VALORHORA'
      Origin = 'VALORHORA'
    end
  end
  object QTipoLiquidacion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from personal_liquidacion_tipo')
    Left = 417
    Top = 588
    object QTipoLiquidacionID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTipoLiquidacionNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 30
    end
  end
  object ibgRecibos: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'GEN_RECIBOSEMPLEADO_ID'
    SystemGenerators = False
    Left = 699
    Top = 16
  end
  object QCategoria: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.* from personal_categoria c where c.id=:id')
    Left = 41
    Top = 100
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 30
    end
    object FloatField1: TFloatField
      FieldName = 'VALORHORA'
      Origin = 'VALORHORA'
    end
    object SmallintField1: TSmallintField
      FieldName = 'TIPO_LIQUIDACION'
      Origin = 'TIPO_LIQUIDACION'
      Required = True
    end
    object FloatField2: TFloatField
      FieldName = 'SUELDO_BASICO'
      Origin = 'SUELDO_BASICO'
      Required = True
    end
  end
  object DSPCategoria: TDataSetProvider
    DataSet = QCategoria
    Left = 136
    Top = 96
  end
  object CDSCategoria: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCategoria'
    Left = 216
    Top = 96
    object CDSCategoriaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCategoriaDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 30
    end
    object CDSCategoriaVALORHORA: TFloatField
      FieldName = 'VALORHORA'
      Origin = 'VALORHORA'
    end
    object CDSCategoriaTIPO_LIQUIDACION: TSmallintField
      FieldName = 'TIPO_LIQUIDACION'
      Origin = 'TIPO_LIQUIDACION'
      Required = True
    end
    object CDSCategoriaSUELDO_BASICO: TFloatField
      FieldName = 'SUELDO_BASICO'
      Origin = 'SUELDO_BASICO'
      Required = True
    end
  end
  object ibgId_detalle: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'GEN_DETALLERECIBOS_ID'
    SystemGenerators = False
    Left = 699
    Top = 88
  end
  object DSRecibos: TDataSource
    DataSet = CDSRecibos
    Left = 615
    Top = 16
  end
  object DSDetalleRecibos: TDataSource
    DataSet = CDSDetalleRecibo
    Left = 607
    Top = 96
  end
  object CDSEmpleado: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 6
      end>
    ProviderName = 'DSPEmpleado'
    Left = 560
    Top = 168
    object CDSEmpleadoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSEmpleadoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSEmpleadoDOMICILIO: TStringField
      FieldName = 'DOMICILIO'
      Size = 50
    end
    object CDSEmpleadoLOCALIDAD: TIntegerField
      FieldName = 'LOCALIDAD'
    end
    object CDSEmpleadoTELEFONO_1: TStringField
      FieldName = 'TELEFONO_1'
      Size = 15
    end
    object CDSEmpleadoTELEFONO_2: TStringField
      FieldName = 'TELEFONO_2'
      Size = 15
    end
    object CDSEmpleadoCTACONTABLE: TIntegerField
      FieldName = 'CTACONTABLE'
    end
    object CDSEmpleadoCARGO: TIntegerField
      FieldName = 'CARGO'
    end
    object CDSEmpleadoCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object CDSEmpleadoFECHA_INGRESO: TSQLTimeStampField
      FieldName = 'FECHA_INGRESO'
    end
    object CDSEmpleadoFECHA_NACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHA_NACIMIENTO'
    end
    object CDSEmpleadoESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      FixedChar = True
      Size = 1
    end
    object CDSEmpleadoCOMISION: TFloatField
      FieldName = 'COMISION'
      Required = True
    end
    object CDSEmpleadoVALORHORA: TFloatField
      FieldName = 'VALORHORA'
    end
    object CDSEmpleadoAUTORIZAOC: TStringField
      FieldName = 'AUTORIZAOC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpleadoSECTORDECOMPRA: TStringField
      FieldName = 'SECTORDECOMPRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpleadoCORREO: TStringField
      FieldName = 'CORREO'
      Size = 100
    end
    object CDSEmpleadoPOLITICACOMISION: TIntegerField
      FieldName = 'POLITICACOMISION'
    end
    object CDSEmpleadoMODODEPENDENCIA: TStringField
      FieldName = 'MODODEPENDENCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpleadoVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpleadoCOBRADOR: TStringField
      FieldName = 'COBRADOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpleadoACTIVO: TStringField
      FieldName = 'ACTIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpleadoMAX_OC_AUTORIZAR: TFloatField
      FieldName = 'MAX_OC_AUTORIZAR'
      Required = True
    end
    object CDSEmpleadoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSEmpleadoCUIL: TStringField
      FieldName = 'CUIL'
      Required = True
      Size = 13
    end
    object CDSEmpleadoCLAVEWEB: TStringField
      FieldName = 'CLAVEWEB'
      Size = 13
    end
    object CDSEmpleadoCODIGO_RELOJ: TStringField
      FieldName = 'CODIGO_RELOJ'
      Size = 10
    end
    object CDSEmpleadoLEGAJO: TStringField
      FieldName = 'LEGAJO'
      Size = 15
    end
    object CDSEmpleadoAFILIADO: TStringField
      FieldName = 'AFILIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpleadoMUESTRACATEGORIA: TStringField
      FieldName = 'MUESTRACATEGORIA'
      ProviderFlags = []
      Size = 30
    end
  end
  object DSPEmpleado: TDataSetProvider
    DataSet = QEmpleado_
    Options = []
    Left = 480
    Top = 168
  end
  object CDSLiquidacion: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPLiquidacion'
    OnNewRecord = CDSLiquidacionNewRecord
    Left = 200
    Top = 16
    object CDSLiquidacionID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSLiquidacionPERIODO: TStringField
      FieldName = 'PERIODO'
      Origin = 'PERIODO'
    end
    object CDSLiquidacionTIPOLIQUIDACION: TIntegerField
      FieldName = 'TIPOLIQUIDACION'
      Origin = 'TIPOLIQUIDACION'
    end
    object CDSLiquidacionFECHALIQUIDACION: TSQLTimeStampField
      FieldName = 'FECHALIQUIDACION'
      Origin = 'FECHALIQUIDACION'
    end
    object CDSLiquidacionDESDE: TSQLTimeStampField
      FieldName = 'DESDE'
      Origin = 'DESDE'
    end
    object CDSLiquidacionHASTA: TSQLTimeStampField
      FieldName = 'HASTA'
      Origin = 'HASTA'
    end
    object CDSLiquidacionDEPOSITO: TStringField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object CDSLiquidacionCOBRO: TStringField
      FieldName = 'COBRO'
      Origin = 'COBRO'
      Size = 30
    end
    object CDSLiquidacionBANCO: TStringField
      FieldName = 'BANCO'
      Origin = 'BANCO'
    end
    object CDSLiquidacionNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
      Required = True
    end
    object CDSLiquidacionCERRADA: TStringField
      FieldName = 'CERRADA'
      Origin = 'CERRADA'
      FixedChar = True
      Size = 1
    end
    object CDSLiquidacionID_EMPLEADOR: TIntegerField
      FieldName = 'ID_EMPLEADOR'
      Origin = 'ID_EMPLEADOR'
      Required = True
    end
    object CDSLiquidacionID_CATEGORIAS: TIntegerField
      FieldName = 'ID_CATEGORIAS'
      Origin = 'ID_CATEGORIAS'
    end
    object CDSLiquidacionID_LUGAR: TIntegerField
      FieldName = 'ID_LUGAR'
      Origin = 'ID_LUGAR'
    end
  end
  object DSPLiquidacion: TDataSetProvider
    DataSet = QLiquidacion
    Options = []
    Left = 136
    Top = 16
  end
  object QHorasTrabajadas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select h.*,l.detalle as MuestraLugar from  personal_horas h'
      'left join personal_lugar_tarea l on l.id=h.idlugar'
      'where h.empleado=:codigo and h.fecha between :desde and :hasta'
      'and h.liquidado='#39'N'#39)
    Left = 48
    Top = 313
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object QHorasTrabajadasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QHorasTrabajadasEMPLEADO: TStringField
      FieldName = 'EMPLEADO'
      Origin = 'EMPLEADO'
      Size = 6
    end
    object QHorasTrabajadasLEGAJO: TIntegerField
      FieldName = 'LEGAJO'
      Origin = 'LEGAJO'
    end
    object QHorasTrabajadasFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QHorasTrabajadasENTRADA: TSQLTimeStampField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
    end
    object QHorasTrabajadasSALIDA: TSQLTimeStampField
      DisplayLabel = 'Salida'
      FieldName = 'SALIDA'
      Origin = 'SALIDA'
    end
    object QHorasTrabajadasCANITDADHORAS: TFloatField
      FieldName = 'CANITDADHORAS'
      Origin = 'CANITDADHORAS'
    end
    object QHorasTrabajadasLIQUIDADO: TStringField
      FieldName = 'LIQUIDADO'
      Origin = 'LIQUIDADO'
      FixedChar = True
      Size = 1
    end
    object QHorasTrabajadasIDLIQUIDACION: TIntegerField
      FieldName = 'IDLIQUIDACION'
      Origin = 'IDLIQUIDACION'
    end
    object QHorasTrabajadasIDRECIBO: TIntegerField
      FieldName = 'IDRECIBO'
      Origin = 'IDRECIBO'
    end
    object QHorasTrabajadasIDLUGAR: TIntegerField
      FieldName = 'IDLUGAR'
      Origin = 'IDLUGAR'
      Required = True
    end
    object QHorasTrabajadasMUESTRALUGAR: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Lugar'
      FieldName = 'MUESTRALUGAR'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
  end
  object QUltimaLiqi: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(id) from Personal_liquidaciones')
    Left = 280
    Top = 16
  end
end
