object DatosLibroIvaCompra: TDatosLibroIvaCompra
  Height = 583
  Width = 947
  object DSListado: TDataSource
    DataSet = CDSListado
    Left = 278
    Top = 22
  end
  object DSPListado: TDataSetProvider
    DataSet = QListado
    Options = [poAllowCommandText]
    Left = 111
    Top = 14
  end
  object QListado: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select l.*,coalesce( f.lote_afip,'#39#39') as LoteAfip from LISTADO_LI' +
        'BRO_IVA_COMPRA l'
      'left join fccompcab f on f.id_fc=l.id_cpbte'
      'where l.total>0')
    Left = 40
    Top = 14
  end
  object CDSListado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPListado'
    AfterScroll = CDSListadoAfterScroll
    OnCalcFields = CDSListadoCalcFields
    Left = 196
    Top = 14
    object CDSListadoMUESTRA_IVA: TStringField
      DisplayLabel = 'Tipo Iva'
      FieldName = 'MUESTRA_IVA'
      Origin = 'MUESTRA_IVA'
      Size = 15
    end
    object CDSListadoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object CDSListadoTIPO_CPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPO_CPBTE'
      Origin = 'TIPO_CPBTE'
      Size = 2
    end
    object CDSListadoCLASE_CPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASE_CPBTE'
      Origin = 'CLASE_CPBTE'
      Size = 2
    end
    object CDSListadoNRO_CPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      DisplayWidth = 16
      FieldName = 'NRO_CPBTE'
      Origin = 'NRO_CPBTE'
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object CDSListadoRAZON_SOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSListadoCONDICION_IVA: TIntegerField
      DisplayLabel = 'Cond.Iva'
      FieldName = 'CONDICION_IVA'
      Origin = 'CONDICION_IVA'
    end
    object CDSListadoCUIT: TStringField
      DisplayLabel = 'Cuit'
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSListadoSUCURSALCOMPRA: TIntegerField
      DisplayLabel = 'Suc.'
      FieldName = 'SUCURSALCOMPRA'
      Origin = 'SUCURSALCOMPRA'
    end
    object CDSListadoNETO_EXCLUIDO_REC: TFloatField
      DisplayLabel = 'N.Excluido'
      FieldKind = fkInternalCalc
      FieldName = 'NETO_EXCLUIDO_REC'
      DisplayFormat = ',0.00;,-0.00;-'
      EditFormat = ',0.00'
    end
    object CDSListadoNETO_EXENTO_REC: TFloatField
      DisplayLabel = 'N.Exento'
      FieldKind = fkInternalCalc
      FieldName = 'NETO_EXENTO_REC'
      DisplayFormat = ',0.00;,-0.00;-'
      EditFormat = ',0.00'
    end
    object CDSListadoNETO_GRAVADO_REC: TFloatField
      DisplayLabel = 'N.Gravado'
      FieldKind = fkInternalCalc
      FieldName = 'NETO_GRAVADO_REC'
      DisplayFormat = ',0.00;,-0.00;-'
      EditFormat = ',0.00'
    end
    object CDSListadoNETO_MONOTRIBUTO_REC: TFloatField
      DisplayLabel = 'N.Monot'
      FieldKind = fkInternalCalc
      FieldName = 'NETO_MONOTRIBUTO_REC'
      DisplayFormat = ',0.00;,-0.00;-'
      EditFormat = ',0.00'
    end
    object CDSListadoTOTAL_REC: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkInternalCalc
      FieldName = 'TOTAL_REC'
      DisplayFormat = ',0.00;,-0.00;-'
      EditFormat = ',0.00'
    end
    object CDSListadoCOL1_REC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'COL1_REC'
      DisplayFormat = ',0.00;,-0.00;-'
      EditFormat = ',0.00'
    end
    object CDSListadoCOL2_REC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'COL2_REC'
      DisplayFormat = ',0.00;,-0.00;-'
      EditFormat = ',0.00'
    end
    object CDSListadoCOL3_REC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'COL3_REC'
      DisplayFormat = ',0.00;,-0.00;-'
      EditFormat = ',0.00'
    end
    object CDSListadoCOL4_REC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'COL4_REC'
      DisplayFormat = ',0.00;,-0.00;-'
      EditFormat = ',0.00'
    end
    object CDSListadoCOL5_REC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'COL5_REC'
      DisplayFormat = ',0.00;,-0.00;-'
      EditFormat = ',0.00'
    end
    object CDSListadoCOL6_REC: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'COL6_REC'
      DisplayFormat = ',0.00;,-0.00;-'
      EditFormat = ',0.00'
    end
    object CDSListadoCOL7_REC: TFloatField
      DisplayLabel = 'Col.Aux'
      FieldKind = fkInternalCalc
      FieldName = 'COL7_REC'
      DisplayFormat = ',0.00;,-0.00;-'
    end
    object CDSListadoID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object CDSListadoCODIGO_AFIP: TStringField
      DisplayLabel = 'Afip'
      FieldName = 'CODIGO_AFIP'
      Origin = 'CODIGO_AFIP'
      Size = 3
    end
    object CDSListadoNETO_EXCLUIDO: TFloatField
      DisplayLabel = 'N.Excluido'
      FieldName = 'NETO_EXCLUIDO'
      Origin = 'NETO_EXCLUIDO'
      DisplayFormat = ',0.00;,-0.00;-'
    end
    object CDSListadoNETO_EXENTO: TFloatField
      DisplayLabel = 'N.Exento'
      FieldName = 'NETO_EXENTO'
      Origin = 'NETO_EXENTO'
      DisplayFormat = ',0.00;,-0.00;-'
    end
    object CDSListadoNETO_GRAVADO: TFloatField
      DisplayLabel = 'N.Gravado'
      FieldName = 'NETO_GRAVADO'
      Origin = 'NETO_GRAVADO'
      DisplayFormat = ',0.00;,-0.00;-'
    end
    object CDSListadoNETO_MONOTRIBUTO: TFloatField
      DisplayLabel = 'N.Monotributi'
      FieldName = 'NETO_MONOTRIBUTO'
      Origin = 'NETO_MONOTRIBUTO'
      DisplayFormat = ',0.00;,-0.00;-'
    end
    object CDSListadoTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;,-0.00;-'
    end
    object CDSListadoCOL1: TFloatField
      FieldName = 'COL1'
      Origin = 'COL1'
      DisplayFormat = ',0.00;,-0.00;-'
    end
    object CDSListadoCOL2: TFloatField
      FieldName = 'COL2'
      Origin = 'COL2'
      DisplayFormat = ',0.00;,-0.00;-'
    end
    object CDSListadoCOL3: TFloatField
      FieldName = 'COL3'
      Origin = 'COL3'
      DisplayFormat = ',0.00;,-0.00;-'
    end
    object CDSListadoCOL4: TFloatField
      FieldName = 'COL4'
      Origin = 'COL4'
      DisplayFormat = ',0.00;,-0.00;-'
    end
    object CDSListadoCOL5: TFloatField
      FieldName = 'COL5'
      Origin = 'COL5'
      DisplayFormat = ',0.00;,-0.00;-'
    end
    object CDSListadoCOL6: TFloatField
      FieldName = 'COL6'
      Origin = 'COL6'
      DisplayFormat = ',0.00;,-0.00;-'
    end
    object CDSListadoCOL7: TFloatField
      FieldName = 'COL7'
      Origin = 'COL7'
      DisplayFormat = ',0.00;,-0.00;-'
    end
    object CDSListadoTIPO_LIQ: TStringField
      FieldName = 'TIPO_LIQ'
      Origin = 'TIPO_LIQ'
      Size = 1
    end
    object CDSListadoRET_IVA: TFloatField
      FieldName = 'RET_IVA'
      Origin = 'RET_IVA'
    end
    object CDSListadoLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      Size = 1
    end
    object CDSListadoFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha Fiscal'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSListadoFECHA_FACTURA: TSQLTimeStampField
      DisplayLabel = 'Fecha Fac.'
      FieldName = 'FECHA_FACTURA'
      Origin = 'FECHA_FACTURA'
    end
    object CDSListadoLOTEAFIP: TStringField
      DisplayLabel = 'Lote Import.'
      FieldName = 'LOTEAFIP'
      ReadOnly = True
      Size = 8
    end
  end
  object DSTotales: TDataSource
    DataSet = CDSTotales
    Left = 248
    Top = 176
  end
  object DSPTotales: TDataSetProvider
    DataSet = QTotales
    Left = 103
    Top = 176
  end
  object CDSTotales: TClientDataSet
    Aggregates = <>
    Params = <
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
    ProviderName = 'DSPTotales'
    Left = 180
    Top = 176
    object CDSTotalesTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSTotalesTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object CDSTotalesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      ProviderFlags = []
    end
    object CDSTotalesNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object CDSTotalesMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSTotalesIMPUESTO: TFloatField
      FieldName = 'IMPUESTO'
      Origin = 'IMPUESTO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
  end
  object QTotales: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select l.tipocpbte,l.tasa,l.sucursal ,s.detalle as MuestraSucurs' +
        'al,'
      
        '  sum(l.neto) as Neto,Sum(l.impuesto) as Impuesto from libro_iva' +
        '_compra_totales l'
      'join sucursal s on s.codigo = l.sucursal'
      'where ( l.sucursal = :sucursal ) or ( :sucursal = -1 )'
      'group by l.tipocpbte,l.tasa, l.sucursal,s.detalle'
      'order by  l.sucursal, l.tipocpbte,l.tasa')
    Left = 40
    Top = 176
    ParamData = <
      item
        Position = 1
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPPercIIBB: TDataSetProvider
    DataSet = QPercIIBB
    Options = [poRetainServerOrder]
    Left = 103
    Top = 128
  end
  object CDSPercIIBB: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPercIIBB'
    Left = 180
    Top = 128
    object CDSPercIIBBCODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Origin = 'CODIGO_PERCEPCION'
      Required = True
    end
    object CDSPercIIBBDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSPercIIBBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
      Origin = 'JURIDICION'
    end
    object CDSPercIIBBNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
    end
    object CDSPercIIBBIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
  end
  object QPercIIBB: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select f.codigo_percepcion,f.detalle,'
      'f.juridicion,f.neto,f.importe from fccomppercepcionib f'
      'where f.id_fccompcab = :id')
    Left = 40
    Top = 128
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPLibroIvaDet: TDataSetProvider
    DataSet = QLibroIvaDet
    Left = 103
    Top = 72
  end
  object CDSLibroIvaDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPLibroIvaDet'
    Left = 180
    Top = 72
    object CDSLibroIvaDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSLibroIvaDetID_LIBRO_IVA: TIntegerField
      FieldName = 'ID_LIBRO_IVA'
      Origin = 'ID_LIBRO_IVA'
    end
    object CDSLibroIvaDetTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object CDSLibroIvaDetIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object CDSLibroIvaDetNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
    end
    object CDSLibroIvaDetCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Origin = 'COLUMNA'
    end
  end
  object QLibroIvaDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from libro_iva_compra_det d '
      'where d.id_libro_iva=:id and d.importe>0')
    Left = 40
    Top = 72
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSTitulos: TDataSource
    DataSet = CDSTitulos
    Left = 254
    Top = 234
  end
  object DSPTitulos: TDataSetProvider
    DataSet = QTitulos
    Left = 103
    Top = 234
  end
  object CDSTitulos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTitulos'
    AfterOpen = CDSTitulosAfterOpen
    Left = 180
    Top = 234
    object CDSTitulosCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Required = True
    end
    object CDSTitulosDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 15
    end
  end
  object QTitulos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from Libro_Iva_Compra_Titulos order by columna')
    Left = 40
    Top = 240
  end
  object DSCompIVACre: TDataSource
    DataSet = CDSCompIVACre
    Left = 365
    Top = 310
  end
  object DSCompIVADeb: TDataSource
    DataSet = CDSCompIVADeb
    Left = 365
    Top = 382
  end
  object CDSCompIVADeb: TClientDataSet
    Aggregates = <>
    Filter = 'DETALLE='#39'DEBITOS'#39
    Filtered = True
    Params = <>
    ProviderName = 'DSPComposicionIVA'
    AfterOpen = CDSCompIVADebAfterOpen
    Left = 493
    Top = 376
    object CDSCompIVADebDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 10
    end
    object CDSCompIVADebID_IVA: TIntegerField
      FieldName = 'ID_IVA'
      Origin = 'ID_IVA'
      Visible = False
    end
    object CDSCompIVADebIVA_DESCRIPCION: TStringField
      DisplayLabel = 'Tipo Iva'
      FieldName = 'IVA_DESCRIPCION'
      Origin = 'IVA_DESCRIPCION'
      Size = 15
    end
    object CDSCompIVADebTASA_1: TFloatField
      DisplayLabel = 'Tasa 1'
      FieldName = 'TASA_1'
      Origin = 'TASA_1'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebTASA_2: TFloatField
      DisplayLabel = 'Tasa 2'
      FieldName = 'TASA_2'
      Origin = 'TASA_2'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebTASA_3: TFloatField
      DisplayLabel = 'Tasa 3'
      FieldName = 'TASA_3'
      Origin = 'TASA_3'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebTASA_4: TFloatField
      DisplayLabel = 'Tasa 4'
      FieldName = 'TASA_4'
      Origin = 'TASA_4'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebNETO_GRAVADO: TFloatField
      DisplayLabel = 'Neto Gravado'
      FieldName = 'NETO_GRAVADO'
      Origin = 'NETO_GRAVADO'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebNETO_EXENTO: TFloatField
      DisplayLabel = 'Neto Exento'
      FieldName = 'NETO_EXENTO'
      Origin = 'NETO_EXENTO'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebNETO_MONOTRIBUTO: TFloatField
      DisplayLabel = 'Neto Monot.'
      FieldName = 'NETO_MONOTRIBUTO'
      Origin = 'NETO_MONOTRIBUTO'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebNETO_EXCLUIDO: TFloatField
      DisplayLabel = 'Neto Excluido'
      FieldName = 'NETO_EXCLUIDO'
      Origin = 'NETO_EXCLUIDO'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebPORCTASA_1: TFloatField
      FieldName = 'PORCTASA_1'
      Origin = 'PORCTASA_1'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebPORCTASA_2: TFloatField
      FieldName = 'PORCTASA_2'
      Origin = 'PORCTASA_2'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebPORCTASA_3: TFloatField
      FieldName = 'PORCTASA_3'
      Origin = 'PORCTASA_3'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebPORCTASA_4: TFloatField
      FieldName = 'PORCTASA_4'
      Origin = 'PORCTASA_4'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebIIBB: TFloatField
      FieldName = 'IIBB'
      Origin = 'IIBB'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebPERIVA: TFloatField
      DisplayLabel = 'Pr.Iva'
      FieldName = 'PERIVA'
      Origin = 'PERIVA'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebTOTALCALCULADO: TFloatField
      DisplayLabel = 'Total Verificado'
      FieldName = 'TOTALCALCULADO'
      Origin = 'TOTALCALCULADO'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebNETO_1: TFloatField
      FieldName = 'NETO_1'
      Origin = 'NETO_1'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebNETO_2: TFloatField
      FieldName = 'NETO_2'
      Origin = 'NETO_2'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebNETO_3: TFloatField
      FieldName = 'NETO_3'
      Origin = 'NETO_3'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVADebNETO_4: TFloatField
      FieldName = 'NETO_4'
      Origin = 'NETO_4'
      DisplayFormat = ',0.00;,0.00;-'
    end
  end
  object CDSCompIVACre: TClientDataSet
    Aggregates = <>
    Filter = 'DETALLE='#39'CREDITOS'#39
    Filtered = True
    Params = <>
    ProviderName = 'DSPComposicionIVA'
    AfterOpen = CDSCompIVACreAfterOpen
    Left = 485
    Top = 304
    object CDSCompIVACreDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 10
    end
    object CDSCompIVACreIVA_DESCRIPCION: TStringField
      DisplayLabel = 'Tipo Iva'
      FieldName = 'IVA_DESCRIPCION'
      Origin = 'IVA_DESCRIPCION'
      Size = 15
    end
    object CDSCompIVACreID_IVA: TIntegerField
      FieldName = 'ID_IVA'
      Origin = 'ID_IVA'
    end
    object CDSCompIVACreNETO_GRAVADO: TFloatField
      DisplayLabel = 'Neto Gravado'
      FieldName = 'NETO_GRAVADO'
      Origin = 'NETO_GRAVADO'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreNETO_EXENTO: TFloatField
      DisplayLabel = 'Neto Exento'
      FieldName = 'NETO_EXENTO'
      Origin = 'NETO_EXENTO'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreNETO_MONOTRIBUTO: TFloatField
      DisplayLabel = 'Neto Monotr.'
      FieldName = 'NETO_MONOTRIBUTO'
      Origin = 'NETO_MONOTRIBUTO'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreNETO_EXCLUIDO: TFloatField
      DisplayLabel = 'Neto Excluido'
      FieldName = 'NETO_EXCLUIDO'
      Origin = 'NETO_EXCLUIDO'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreTASA_1: TFloatField
      DisplayLabel = 'Tasa 1'
      FieldName = 'TASA_1'
      Origin = 'TASA_1'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreTASA_2: TFloatField
      DisplayLabel = 'Tasa 2'
      FieldName = 'TASA_2'
      Origin = 'TASA_2'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreTASA_3: TFloatField
      DisplayLabel = 'Tasa 3'
      FieldName = 'TASA_3'
      Origin = 'TASA_3'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreTASA_4: TFloatField
      DisplayLabel = 'Tasa 4'
      FieldName = 'TASA_4'
      Origin = 'TASA_4'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreIIBB: TFloatField
      FieldName = 'IIBB'
      Origin = 'IIBB'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACrePERIVA: TFloatField
      DisplayLabel = 'Pr.IVA'
      FieldName = 'PERIVA'
      Origin = 'PERIVA'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreTOTALCALCULADO: TFloatField
      DisplayLabel = 'Total Verificado'
      FieldName = 'TOTALCALCULADO'
      Origin = 'TOTALCALCULADO'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACrePORCTASA_1: TFloatField
      FieldName = 'PORCTASA_1'
      Origin = 'PORCTASA_1'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACrePORCTASA_2: TFloatField
      FieldName = 'PORCTASA_2'
      Origin = 'PORCTASA_2'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACrePORCTASA_3: TFloatField
      FieldName = 'PORCTASA_3'
      Origin = 'PORCTASA_3'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACrePORCTASA_4: TFloatField
      FieldName = 'PORCTASA_4'
      Origin = 'PORCTASA_4'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreNETO_1: TFloatField
      FieldName = 'NETO_1'
      Origin = 'NETO_1'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreNETO_2: TFloatField
      FieldName = 'NETO_2'
      Origin = 'NETO_2'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreNETO_3: TFloatField
      FieldName = 'NETO_3'
      Origin = 'NETO_3'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCompIVACreNETO_4: TFloatField
      FieldName = 'NETO_4'
      Origin = 'NETO_4'
      DisplayFormat = ',0.00;,0.00;-'
    end
  end
  object DSPComposicionIVA: TDataSetProvider
    DataSet = QComposicionIva
    Left = 597
    Top = 312
  end
  object QComposicionIva: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from composicion_libro_iva_compra')
    Left = 720
    Top = 312
  end
  object DSPCreditos: TDataSetProvider
    DataSet = QCreditos
    Left = 536
    Top = 72
  end
  object CDSCreditos: TClientDataSet
    Aggregates = <>
    Params = <
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
    ProviderName = 'DSPCreditos'
    Left = 616
    Top = 72
    object CDSCreditosCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Origin = 'CONDICION_IVA'
      ProviderFlags = []
    end
    object CDSCreditosMUESTRA_IVA: TStringField
      FieldName = 'MUESTRA_IVA'
      Origin = 'MUESTRA_IVA'
      ProviderFlags = []
      Size = 15
    end
    object CDSCreditosSUCURSALCOMPRA: TIntegerField
      FieldName = 'SUCURSALCOMPRA'
      Origin = 'SUCURSALCOMPRA'
      ProviderFlags = []
    end
    object CDSCreditosMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSCreditosMONTOEXENTO: TFloatField
      FieldName = 'MONTOEXENTO'
      Origin = 'MONTOEXENTO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosNETOGRAVADO: TFloatField
      FieldName = 'NETOGRAVADO'
      Origin = 'NETOGRAVADO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosIVA: TFloatField
      FieldName = 'IVA'
      Origin = 'IVA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosPERCIVA: TFloatField
      FieldName = 'PERCIVA'
      Origin = 'PERCIVA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosPERCIBB: TFloatField
      FieldName = 'PERCIBB'
      Origin = 'PERCIBB'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosTASA1: TFloatField
      FieldName = 'TASA1'
      Origin = 'TASA1'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosTASA2: TFloatField
      FieldName = 'TASA2'
      Origin = 'TASA2'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosTASA3: TFloatField
      FieldName = 'TASA3'
      Origin = 'TASA3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosTASA4: TFloatField
      FieldName = 'TASA4'
      Origin = 'TASA4'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosIVA1: TFloatField
      FieldName = 'IVA1'
      Origin = 'IVA1'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosIVA2: TFloatField
      FieldName = 'IVA2'
      Origin = 'IVA2'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosIVA3: TFloatField
      FieldName = 'IVA3'
      Origin = 'IVA3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSCreditosIVA4: TFloatField
      FieldName = 'IVA4'
      Origin = 'IVA4'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
  end
  object QCreditos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select l.condicion_iva,l.muestra_iva,l.sucursalcompra,s.detalle ' +
        'as MuestraSucursal,(sum(l.neto_excluido) +'
      '                       sum(l.neto_exento) +'
      '                       sum(l.neto_monotributo)) as MontoExento,'
      '                       sum(l.neto_gravado) as NetoGravado,'
      
        '                       (sum(l.col1)+sum(l.col2)+sum(l.col3)+sum(' +
        'l.col4)) as Iva,'
      '                       sum(l.col5) as PercIVA,'
      '                       sum(l.col6) as PercIBB,'
      '                       sum(l.total) as Total,'
      
        '                       max(t1.tasa) as Tasa1, sum(l.col1) as Iva' +
        '1,'
      
        '                       max(t2.tasa) as Tasa2, sum(l.col2) as Iva' +
        '2,'
      
        '                       max(t3.tasa) as Tasa3, sum(l.col3) as Iva' +
        '3,'
      
        '                       max(t4.tasa) as Tasa4, sum(l.col4) as Iva' +
        '4 from  LISTADO_LIBRO_IVA_COMPRA l'
      
        'left join libro_iva_compra_det t1 on t1.columna=1 and t1.id_libr' +
        'o_iva=l.id'
      
        'left join libro_iva_compra_det t2 on t2.columna=2 and t2.id_libr' +
        'o_iva=l.id'
      
        'left join libro_iva_compra_det t3 on t3.columna=3 and t3.id_libr' +
        'o_iva=l.id'
      
        'left join libro_iva_compra_det t4 on t4.columna=4 and t4.id_libr' +
        'o_iva=l.id'
      'join sucursal s on s.codigo = l.sucursalcompra'
      
        'where l.tipo_cpbte='#39'NC'#39' and ( l.sucursalcompra = :sucursal or :s' +
        'ucursal = -1 )'
      
        'group by l.condicion_iva,l.muestra_iva,l.sucursalcompra,s.detall' +
        'e'
      'order by l.sucursalcompra,l.condicion_iva')
    Left = 464
    Top = 72
    ParamData = <
      item
        Position = 1
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPDebitos: TDataSetProvider
    DataSet = QDebitos
    Left = 536
    Top = 128
  end
  object CDSDebitos: TClientDataSet
    Aggregates = <>
    Params = <
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
    ProviderName = 'DSPDebitos'
    Left = 616
    Top = 128
    object CDSDebitosCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Origin = 'CONDICION_IVA'
      ProviderFlags = []
    end
    object CDSDebitosMUESTRA_IVA: TStringField
      FieldName = 'MUESTRA_IVA'
      Origin = 'MUESTRA_IVA'
      ProviderFlags = []
      Size = 15
    end
    object CDSDebitosSUCURSALCOMPRA: TIntegerField
      FieldName = 'SUCURSALCOMPRA'
      Origin = 'SUCURSALCOMPRA'
      ProviderFlags = []
    end
    object CDSDebitosMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSDebitosMONTOEXENTO: TFloatField
      FieldName = 'MONTOEXENTO'
      Origin = 'MONTOEXENTO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosNETOGRAVADO: TFloatField
      FieldName = 'NETOGRAVADO'
      Origin = 'NETOGRAVADO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosIVA: TFloatField
      FieldName = 'IVA'
      Origin = 'IVA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosPERCIVA: TFloatField
      FieldName = 'PERCIVA'
      Origin = 'PERCIVA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosPERCIBB: TFloatField
      FieldName = 'PERCIBB'
      Origin = 'PERCIBB'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosTASA1: TFloatField
      FieldName = 'TASA1'
      Origin = 'TASA1'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosIVA1: TFloatField
      FieldName = 'IVA1'
      Origin = 'IVA1'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosTASA2: TFloatField
      FieldName = 'TASA2'
      Origin = 'TASA2'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosIVA2: TFloatField
      FieldName = 'IVA2'
      Origin = 'IVA2'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosTASA3: TFloatField
      FieldName = 'TASA3'
      Origin = 'TASA3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosIVA3: TFloatField
      FieldName = 'IVA3'
      Origin = 'IVA3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosTASA4: TFloatField
      FieldName = 'TASA4'
      Origin = 'TASA4'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosIVA4: TFloatField
      FieldName = 'IVA4'
      Origin = 'IVA4'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
  end
  object QDebitos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select l.condicion_iva,l.muestra_iva,l.sucursalcompra,s.detalle ' +
        'as MuestraSucursal, (sum(l.neto_excluido) +'
      '                       sum(l.neto_exento) +'
      '                       sum(l.neto_monotributo)) as MontoExento,'
      '                       sum(l.neto_gravado) as NetoGravado,'
      
        '                       (sum(l.col1)+sum(l.col2)+sum(l.col3)+sum(' +
        'l.col4)) as Iva,'
      '                       sum(l.col5) as PercIVA,'
      '                       sum(l.col6) as PercIBB,'
      '                       sum(l.total) as Total,'
      
        '                       max(t1.tasa) as Tasa1, sum(l.col1) as Iva' +
        '1,'
      
        '                       max(t2.tasa) as Tasa2, sum(l.col2) as Iva' +
        '2,'
      
        '                       max(t3.tasa) as Tasa3, sum(l.col3) as Iva' +
        '3,'
      
        '                       max(t4.tasa) as Tasa4, sum(l.col4) as Iva' +
        '4 from  LISTADO_LIBRO_IVA_COMPRA l'
      
        'left join libro_iva_compra_det t1 on t1.columna=1 and t1.id_libr' +
        'o_iva= l.id'
      
        'left join libro_iva_compra_det t2 on t2.columna=2 and t2.id_libr' +
        'o_iva= l.id'
      
        'left join libro_iva_compra_det t3 on t3.columna=3 and t3.id_libr' +
        'o_iva= l.id'
      
        'left join libro_iva_compra_det t4 on t4.columna=4 and t4.id_libr' +
        'o_iva= l.id'
      'join sucursal s on s.codigo = l.sucursalcompra'
      
        'where l.tipo_cpbte<>'#39'NC'#39' and  ( l.sucursalcompra = :sucursal or ' +
        ':sucursal = -1 )'
      
        'group by l.condicion_iva,l.muestra_iva,l.sucursalcompra,s.detall' +
        'e'
      'order by l.sucursalcompra,l.condicion_iva')
    Left = 464
    Top = 128
    ParamData = <
      item
        Position = 1
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPDetalleMercaderia: TDataSetProvider
    DataSet = QDetalleMercaderias
    Left = 536
    Top = 176
  end
  object CDSDetalleMercaderia: TClientDataSet
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
      end>
    ProviderName = 'DSPDetalleMercaderia'
    OnCalcFields = CDSDetalleMercaderiaCalcFields
    Left = 616
    Top = 176
    object CDSDetalleMercaderiaCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      ProviderFlags = []
      Required = True
      Size = 8
    end
    object CDSDetalleMercaderiaDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 45
    end
    object CDSDetalleMercaderiaRUBRO_STK: TStringField
      DisplayLabel = 'Cod.Rubro'
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      ProviderFlags = []
      Size = 3
    end
    object CDSDetalleMercaderiaSUBRUBRO_STK: TStringField
      DisplayLabel = 'Cod.Sub Rub.'
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      ProviderFlags = []
      Size = 5
    end
    object CDSDetalleMercaderiaCLASE_ARTICULO: TIntegerField
      DisplayLabel = 'Cl.Art.'
      FieldName = 'CLASE_ARTICULO'
      Origin = 'CLASE_ARTICULO'
      ProviderFlags = []
    end
    object CDSDetalleMercaderiaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSDetalleMercaderiaDETALLE_RUBRO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      Size = 35
    end
    object CDSDetalleMercaderiaDETALLE_SUBRUBRO: TStringField
      DisplayLabel = 'Sub Rubro'
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      Size = 45
    end
    object CDSDetalleMercaderiaIMPORTE_REC: TFloatField
      DisplayLabel = 'Importe'
      FieldKind = fkInternalCalc
      FieldName = 'IMPORTE_REC'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSDetalleMercaderiaCANTIDAD_REC: TFloatField
      DisplayLabel = 'Canti.'
      FieldKind = fkInternalCalc
      FieldName = 'CANTIDAD_REC'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSDetalleMercaderiaCANTIDAD: TFloatField
      DisplayLabel = 'Cant.'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDetalleMercaderiaIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
  end
  object DSDetalleMercaderia: TDataSource
    DataSet = CDSDetalleMercaderia
    Left = 748
    Top = 176
  end
  object QDetalleMercaderias: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select f.tipocpbte,d.codigoarticulo,d.detalle,s.rubro_stk,s.subr' +
        'ubro_stk,s.clase_articulo,'
      
        '       r.detalle_rubro,sr.detalle_subrubro, sum(d.cantidad) as C' +
        'antidad, Sum(d.total) as Importe from fccompdet d'
      '  left join fccompcab f on f.id_fc=d.id_cabfac'
      '  left join stock s on s.codigo_stk=d.codigoarticulo'
      '  left join rubros r on r.codigo_rubro=s.rubro_stk'
      '  left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      ''
      
        'where d.id_cabfac in (select l.id_cpbte from libro_iva_compra l)' +
        ' and'
      '           (f.fechacompra between :desde and :hasta )'
      '  group by f.tipocpbte,d.codigoarticulo,d.detalle,s.rubro_stk,'
      '           s.subrubro_stk,s.clase_articulo,r.detalle_rubro,'
      '           sr.detalle_subrubro'
      '  order by s.rubro_stk,s.subrubro_stk,d.codigoarticulo')
    Left = 464
    Top = 176
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
      end>
  end
  object DSPCtaContable: TDataSetProvider
    DataSet = QCtaContable
    Left = 536
    Top = 14
  end
  object CDSCtaContable: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCtaContable'
    Left = 616
    Top = 14
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
  object QCtaContable: TFDQuery
    Connection = DMContable.fdcContables
    SQL.Strings = (
      'select r.idcuenta,c.descripcion as MuestraCuenta, '
      
        'r.codigoelemento,r.idtabla,c.codigo as MuestraCodigoCta from asi' +
        'entoscuentasuso r'
      'left join tablasgestion t on t.id=r.idtabla'
      'left join asientoscuentas c on c.id=r.idcuenta'
      'where upper( t.tabla ) = upper ( '#39'Gastos_cuentas'#39' ) ')
    Left = 464
    Top = 14
  end
  object DataSource1: TDataSource
    Left = 712
    Top = 14
  end
  object CDSCompIvaDebCredito: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'DSPComposicionIVA'
    AfterOpen = CDSCompIvaDebCreditoAfterOpen
    Left = 533
    Top = 448
    object CDSCompIvaDebCreditoTASA_1: TFloatField
      DisplayLabel = 'Tasa 1'
      FieldName = 'TASA_1'
      Origin = 'TASA_1'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIvaDebCreditoTASA_2: TFloatField
      DisplayLabel = 'Tasa 2'
      FieldName = 'TASA_2'
      Origin = 'TASA_2'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIvaDebCreditoTASA_3: TFloatField
      DisplayLabel = 'Tasa 3'
      FieldName = 'TASA_3'
      Origin = 'TASA_3'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIvaDebCreditoTASA_4: TFloatField
      DisplayLabel = 'Tasa 4'
      FieldName = 'TASA_4'
      Origin = 'TASA_4'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIvaDebCreditoDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 10
    end
    object CDSCompIvaDebCreditoID_IVA: TIntegerField
      FieldName = 'ID_IVA'
      Origin = 'ID_IVA'
    end
    object CDSCompIvaDebCreditoIVA_DESCRIPCION: TStringField
      DisplayLabel = 'Tipo Inscripcion'
      FieldName = 'IVA_DESCRIPCION'
      Origin = 'IVA_DESCRIPCION'
      Size = 15
    end
    object CDSCompIvaDebCreditoIIBB: TFloatField
      FieldName = 'IIBB'
      Origin = 'IIBB'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIvaDebCreditoPERIVA: TFloatField
      DisplayLabel = 'Per.IVA'
      FieldName = 'PERIVA'
      Origin = 'PERIVA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIvaDebCreditoTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIvaDebCreditoPORCTASA_1: TFloatField
      FieldName = 'PORCTASA_1'
      Origin = 'PORCTASA_1'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIvaDebCreditoPORCTASA_2: TFloatField
      FieldName = 'PORCTASA_2'
      Origin = 'PORCTASA_2'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIvaDebCreditoPORCTASA_3: TFloatField
      FieldName = 'PORCTASA_3'
      Origin = 'PORCTASA_3'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIvaDebCreditoPORCTASA_4: TFloatField
      FieldName = 'PORCTASA_4'
      Origin = 'PORCTASA_4'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIvaDebCreditoNETO_1: TFloatField
      FieldName = 'NETO_1'
      Origin = 'NETO_1'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIvaDebCreditoNETO_2: TFloatField
      FieldName = 'NETO_2'
      Origin = 'NETO_2'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIvaDebCreditoNETO_3: TFloatField
      FieldName = 'NETO_3'
      Origin = 'NETO_3'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIvaDebCreditoNETO_4: TFloatField
      FieldName = 'NETO_4'
      Origin = 'NETO_4'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIvaDebCreditoNETO_GRAVADO: TFloatField
      DisplayLabel = 'Neto Gravado'
      FieldName = 'NETO_GRAVADO'
      Origin = 'NETO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIvaDebCreditoNETO_EXENTO: TFloatField
      DisplayLabel = 'Neto Exento'
      FieldName = 'NETO_EXENTO'
      Origin = 'NETO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIvaDebCreditoNETO_MONOTRIBUTO: TFloatField
      DisplayLabel = 'N.Monotrib.'
      FieldName = 'NETO_MONOTRIBUTO'
      Origin = 'NETO_MONOTRIBUTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIvaDebCreditoNETO_EXCLUIDO: TFloatField
      DisplayLabel = 'Neto Excluido'
      FieldName = 'NETO_EXCLUIDO'
      Origin = 'NETO_EXCLUIDO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCompIvaDebCreditoTOTALCALCULADO: TFloatField
      DisplayLabel = 'T.Calculado'
      FieldName = 'TOTALCALCULADO'
      Origin = 'TOTALCALCULADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSCompIvaDebCredito: TDataSource
    DataSet = CDSCompIvaDebCredito
    Left = 365
    Top = 454
  end
  object QLimpiaIIBHuerfanos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from fccomppercepcionib ib where ib.id_fccompcab in ('
      'select f.id_fc from fccompcab f where f.total<1)')
    Left = 96
    Top = 400
  end
  object QLimpiaIIBCero: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from fccomppercepcionib ib where ib.Importe<=0')
    Left = 96
    Top = 472
  end
  object QListadoProveedores: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select  distinct (razon_social) from LISTADO_LIBRO_IVA_COMPRA'
      'where total>0'
      'order by razon_social')
    Left = 56
    Top = 310
    object QListadoProveedoresRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
  end
end
