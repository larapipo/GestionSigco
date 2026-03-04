object DatosGastosBco: TDatosGastosBco
  OnDestroy = DataModuleDestroy
  Height = 607
  Width = 796
  object DSPBuscaIVA: TDataSetProvider
    DataSet = DMBuscadores.QBuscaIva
    Options = []
    Left = 24
    Top = 208
  end
  object DSPBuscaPercepIIBB: TDataSetProvider
    DataSet = DMBuscadores.QBuscaPercepIB
    Options = []
    Left = 24
    Top = 264
  end
  object CDSBuscaPercepIIBB: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaPercepIIBB'
    Left = 96
    Top = 248
    object CDSBuscaPercepIIBBCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
    end
    object CDSBuscaPercepIIBBDESCRIPCION: TStringField
      DisplayLabel = 'Descripci'#243'n'
      DisplayWidth = 20
      FieldName = 'DESCRIPCION'
    end
    object CDSBuscaPercepIIBBTASA: TFloatField
      DisplayLabel = '%'
      DisplayWidth = 10
      FieldName = 'TASA'
      DisplayFormat = '0.00'
    end
    object CDSBuscaPercepIIBBMINIMOAPLICABLE: TFloatField
      DisplayLabel = 'Min.Imponible'
      DisplayWidth = 10
      FieldName = 'MINIMOAPLICABLE'
      Visible = False
    end
    object CDSBuscaPercepIIBBCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Visible = False
    end
    object CDSBuscaPercepIIBBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
      Visible = False
    end
  end
  object CDSBuscaIVA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaIVA'
    Left = 96
    Top = 200
    object CDSBuscaIVACODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSBuscaIVADESCRIPCION: TStringField
      DisplayLabel = 'Descripci'#243'n'
      DisplayWidth = 15
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 15
    end
    object CDSBuscaIVATASA: TFloatField
      DisplayLabel = '%'
      DisplayWidth = 10
      FieldName = 'TASA'
      Origin = 'TASA'
      DisplayFormat = '0.00'
    end
    object CDSBuscaIVACOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Origin = 'COLUMNA'
      Required = True
      Visible = False
    end
  end
  object DSPBuscaPercepIVA: TDataSetProvider
    DataSet = DMBuscadores.QBuscaPercepIva
    Options = []
    Left = 24
    Top = 320
  end
  object CDSBuscaPercepIVA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaPercepIVA'
    Left = 104
    Top = 328
    object CDSBuscaPercepIVACODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSBuscaPercepIVADESCRIPCION: TStringField
      DisplayLabel = 'Descripci'#243'n'
      DisplayWidth = 20
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
    end
  end
  object QCtaBco: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.*,b.Nombre As MuestraBanco from cuenta_caja c '
      'join bancos b on b.id_banco=c.id_banco'
      'where c.id_cuenta=:id')
    Left = 360
    Top = 32
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QCtaBcoID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Origin = 'ID_CUENTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCtaBcoID_TIPO_CTA: TIntegerField
      FieldName = 'ID_TIPO_CTA'
      Origin = 'ID_TIPO_CTA'
      Required = True
    end
    object QCtaBcoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object QCtaBcoNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Origin = 'NRO_CUENTA'
      Size = 15
    end
    object QCtaBcoID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
    end
    object QCtaBcoCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QCtaBcoRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QCtaBcoMUESTRABANCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QConcepto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from conceptos_bancarios where codigo=:codigo')
    Left = 280
    Top = 32
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
        Value = Null
      end>
    object QConceptoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QConceptoDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
  end
  object QGravamen: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from  gravamen where codigo=:codigo')
    Left = 192
    Top = 144
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QGravamenCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QGravamenDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 15
    end
    object QGravamenTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QGravamenCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Origin = 'COLUMNA'
      Required = True
    end
  end
  object QPercepIva: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from percepiva where codigo=:codigo')
    Left = 184
    Top = 88
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QPercepIvaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPercepIvaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
    end
    object QPercepIvaTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QPercepIvaMINIMOAPLICABLE: TFloatField
      FieldName = 'MINIMOAPLICABLE'
      Origin = 'MINIMOAPLICABLE'
    end
    object QPercepIvaCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Origin = 'COLUMNA'
    end
    object QPercepIvaCODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
      Origin = 'CODIGOREGIMEN'
    end
  end
  object QPercepIB: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from percepIB where codigo=:codigo')
    Left = 184
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QPercepIBCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPercepIBDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
    end
    object QPercepIBTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QPercepIBMINIMOAPLICABLE: TFloatField
      FieldName = 'MINIMOAPLICABLE'
      Origin = 'MINIMOAPLICABLE'
    end
    object QPercepIBCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Origin = 'COLUMNA'
    end
    object QPercepIBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
      Origin = 'JURIDICION'
    end
  end
  object QRetenciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from mov_retenciones where id_cpbte=:id AND TIPOCPBTE='#39 +
        'GX'#39)
    Left = 96
    Top = 24
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRetencionesID_MOV_RETENCIONES: TIntegerField
      FieldName = 'ID_MOV_RETENCIONES'
      Origin = 'ID_MOV_RETENCIONES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRetencionesID_RETENCION: TIntegerField
      FieldName = 'ID_RETENCION'
      Origin = 'ID_RETENCION'
      Required = True
    end
    object QRetencionesDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QRetencionesTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QRetencionesCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QRetencionesNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object QRetencionesID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Required = True
    end
    object QRetencionesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QRetencionesFECHA_RETENCION: TSQLTimeStampField
      FieldName = 'FECHA_RETENCION'
      Origin = 'FECHA_RETENCION'
    end
    object QRetencionesNRO_RETENCION: TStringField
      FieldName = 'NRO_RETENCION'
      Origin = 'NRO_RETENCION'
    end
    object QRetencionesIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QRetencionesCODIGO_CLIENTE: TStringField
      FieldName = 'CODIGO_CLIENTE'
      Origin = 'CODIGO_CLIENTE'
      Required = True
      Size = 6
    end
    object QRetencionesCUIT_CLIENTE: TStringField
      FieldName = 'CUIT_CLIENTE'
      Origin = 'CUIT_CLIENTE'
      Size = 13
    end
    object QRetencionesJURIDICCION: TIntegerField
      FieldName = 'JURIDICCION'
      Origin = 'JURIDICCION'
    end
    object QRetencionesNOMBRE_CLIENTE: TStringField
      FieldName = 'NOMBRE_CLIENTE'
      Origin = 'NOMBRE_CLIENTE'
      Size = 35
    end
  end
  object QMov_PerIVA: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from GASTOS_BCO_PERCEPCIONIVA where Id_gastos_cab = :id')
    Left = 104
    Top = 88
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QMov_PerIVAID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMov_PerIVACODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Origin = 'CODIGO_PERCEPCION'
      Required = True
    end
    object QMov_PerIVADETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QMov_PerIVAID_GASTOS_CAB: TIntegerField
      FieldName = 'ID_GASTOS_CAB'
      Origin = 'ID_GASTOS_CAB'
      Required = True
    end
    object QMov_PerIVANETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
    end
    object QMov_PerIVATASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QMov_PerIVAIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QMov_PerIVACODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
      Origin = 'CODIGOREGIMEN'
    end
  end
  object QMov_IIBB: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from GASTOS_BCO_PERCEPCIONIB where Id_gasto_cab = :id')
    Left = 96
    Top = 144
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QMov_IIBBID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMov_IIBBCODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Origin = 'CODIGO_PERCEPCION'
      Required = True
    end
    object QMov_IIBBDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QMov_IIBBID_GASTO_CAB: TIntegerField
      FieldName = 'ID_GASTO_CAB'
      Origin = 'ID_GASTO_CAB'
      Required = True
    end
    object QMov_IIBBNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
    end
    object QMov_IIBBTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QMov_IIBBIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QMov_IIBBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
      Origin = 'JURIDICION'
    end
  end
  object QMov_Iva: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from GASTOS_BCO_IVA where Id_gasto_cab = :id')
    Left = 32
    Top = 144
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QMov_IvaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMov_IvaID_GASTO_CAB: TIntegerField
      FieldName = 'ID_GASTO_CAB'
      Origin = 'ID_GASTO_CAB'
      Required = True
    end
    object QMov_IvaCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      Origin = 'CODIGO_GRAVAMEN'
      Required = True
    end
    object QMov_IvaDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QMov_IvaNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
    end
    object QMov_IvaTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QMov_IvaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
  end
  object QGastoCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select g.*, coalesce((select count(r.id) from resumen_bco_det r ' +
        'where r.id_origen = g.id and r.tipo_origen='#39'GAS'#39'),0)  as IdResum' +
        'en from gastos_bco_cab g'
      'where g.id=:id')
    Left = 32
    Top = 24
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QGastoCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QGastoCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QGastoCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QGastoCabID_CTA_CAJA: TIntegerField
      FieldName = 'ID_CTA_CAJA'
      Origin = 'ID_CTA_CAJA'
      Required = True
    end
    object QGastoCabCTA_CAJA: TStringField
      FieldName = 'CTA_CAJA'
      Origin = 'CTA_CAJA'
      Size = 25
    end
    object QGastoCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QGastoCabID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      Required = True
    end
    object QGastoCabBANCO: TStringField
      FieldName = 'BANCO'
      Origin = 'BANCO'
    end
    object QGastoCabNUMERO_CTA: TStringField
      FieldName = 'NUMERO_CTA'
      Origin = 'NUMERO_CTA'
      Size = 15
    end
    object QGastoCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QGastoCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QGastoCabFECHAFISCAL: TSQLTimeStampField
      FieldName = 'FECHAFISCAL'
      Origin = 'FECHAFISCAL'
    end
    object QGastoCabTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object QGastoCabCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QGastoCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QGastoCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QGastoCabING_LIBROIVA: TStringField
      FieldName = 'ING_LIBROIVA'
      Origin = 'ING_LIBROIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QGastoCabCONTABILIZA: TStringField
      FieldName = 'CONTABILIZA'
      Origin = 'CONTABILIZA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QGastoCabIDRESUMEN: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'IDRESUMEN'
      Origin = 'IDRESUMEN'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QGastoDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from gastos_bco_det where id_gasto_cab=:id')
    Left = 32
    Top = 88
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QBuscadorCtaBco: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from cuenta_caja where id_tipo_cta=2')
    Left = 352
    Top = 304
    object QBuscadorCtaBcoID_CUENTA: TIntegerField
      DisplayLabel = 'Id Cta'
      DisplayWidth = 3
      FieldName = 'ID_CUENTA'
      Origin = 'ID_CUENTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscadorCtaBcoRAZONSOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      DisplayWidth = 30
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 30
    end
    object QBuscadorCtaBcoNRO_CUENTA: TStringField
      DisplayLabel = 'Nro.Cta'
      DisplayWidth = 10
      FieldName = 'NRO_CUENTA'
      Origin = 'NRO_CUENTA'
      Size = 10
    end
    object QBuscadorCtaBcoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Visible = False
      Size = 25
    end
    object QBuscadorCtaBcoCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Visible = False
      Size = 13
    end
    object QBuscadorCtaBcoID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      Visible = False
    end
    object QBuscadorCtaBcoID_TIPO_CTA: TIntegerField
      FieldName = 'ID_TIPO_CTA'
      Origin = 'ID_TIPO_CTA'
      Required = True
      Visible = False
    end
  end
  object QBuscadorConcepto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select detalle,codigo from conceptos_bancarios order by detalle')
    Left = 352
    Top = 360
    object QBuscadorConceptoDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
    object QBuscadorConceptoCODIGO: TStringField
      DisplayLabel = 'Cod.'
      DisplayWidth = 4
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
  end
  object QBuscadorTRetencion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select  * from  t_retenciones')
    Left = 352
    Top = 432
    object QBuscadorTRetencionID_RETENCION: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 5
      FieldName = 'ID_RETENCION'
      Origin = 'ID_RETENCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscadorTRetencionDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QBuscadorTRetencionTIPO: TSmallintField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Visible = False
    end
  end
  object QBorraMovimiento: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'delete from resumen_bco_det r where r.id_origen=:id and r.tipo_o' +
        'rigen='#39'GAS'#39)
    Left = 664
    Top = 32
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QJuridicion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from juridiccion order by detalle')
    Left = 352
    Top = 184
    object QJuridicionCODIGO: TIntegerField
      DisplayLabel = 'Cod.'
      DisplayWidth = 5
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QJuridicionDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 40
    end
  end
  object QRegimen: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from REGIMENRETENCIONIVA ')
    Left = 352
    Top = 240
  end
  object spIngresos_Egresos_bco: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end>
    StoredProcName = 'INGRESA_MOVGASTO_BANCO'
    Left = 664
    Top = 104
    ParamData = <
      item
        Position = 1
        Name = 'ID_CTA_CAJA_BCO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID_MOV'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'FECHA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'DEBE'
        DataType = ftFloat
        Precision = 15
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'NRO_BOLETA'
        DataType = ftString
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 6
        Name = 'DETALLE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 7
        Name = 'HABER'
        DataType = ftFloat
        Precision = 15
        NumericScale = 3
        ParamType = ptInput
      end>
  end
  object spIngreso_Retenciones: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end>
    StoredProcName = 'INGRESA_MOVRETENCION_BANCO'
    Left = 656
    Top = 208
    ParamData = <
      item
        Position = 1
        Name = 'ID_CTA_CAJA_BCO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID_MOV'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'FECHA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'DEBE'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'NRO_BOLETA'
        DataType = ftString
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 6
        Name = 'DETALLE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 7
        Name = 'HABER'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end>
  end
end
