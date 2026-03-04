object DatosLiquidacionTC: TDatosLiquidacionTC
  OnDestroy = DataModuleDestroy
  Height = 695
  Width = 1066
  object QTerminales: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select m.terminal from mov_tcredito m'
      
        'where m.acreditada<>'#39'S'#39' and Not(m.terminal is null) and ( m.id_t' +
        'c= :id )'
      'group by m.terminal')
    Left = 24
    Top = 16
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object CDSTerminales: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPTerminales'
    Left = 152
    Top = 16
    object CDSTerminalesTERMINAL: TStringField
      FieldName = 'TERMINAL'
      Size = 8
    end
  end
  object DSPTerminales: TDataSetProvider
    DataSet = QTerminales
    Options = []
    Left = 80
    Top = 16
  end
  object DSTerminales: TDataSource
    DataSet = CDSTerminales
    Left = 232
    Top = 8
  end
  object DSLote: TDataSource
    DataSet = CDSLotes
    Left = 232
    Top = 72
  end
  object QLotes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select m.lote from mov_tcredito m'
      
        'where m.acreditada<>'#39'S'#39' and Not(m.lote is null) and ( m.id_tc= :' +
        'id )'
      'group by m.lote')
    Left = 24
    Top = 64
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object CDSLotes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPLotes'
    Left = 152
    Top = 64
    object CDSLotesLOTE: TStringField
      FieldName = 'LOTE'
      Size = 5
    end
  end
  object DSPLotes: TDataSetProvider
    DataSet = QLotes
    Options = []
    Left = 80
    Top = 64
  end
  object CDSMovTC: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_TC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Lote'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Terminal'
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
    ProviderName = 'DSPMovTC'
    Left = 152
    Top = 121
    object CDSMovTCID_MOV_TC: TIntegerField
      FieldName = 'ID_MOV_TC'
      Visible = False
    end
    object CDSMovTCACREDITADA: TStringField
      FieldName = 'ACREDITADA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSMovTCCAN_CUOTAS: TIntegerField
      DisplayLabel = 'Cuotas'
      FieldName = 'CAN_CUOTAS'
    end
    object CDSMovTCNRO_LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'NRO_LOTE'
      Size = 5
    end
    object CDSMovTCCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
      Visible = False
    end
    object CDSMovTCCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Visible = False
    end
    object CDSMovTCFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
    object CDSMovTCFECHA_ACREDITACION: TSQLTimeStampField
      FieldName = 'FECHA_ACREDITACION'
      Visible = False
    end
    object CDSMovTCID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Visible = False
    end
    object CDSMovTCID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Visible = False
    end
    object CDSMovTCID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
      Visible = False
    end
    object CDSMovTCID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Visible = False
    end
    object CDSMovTCID_TC: TIntegerField
      FieldName = 'ID_TC'
      Visible = False
    end
    object CDSMovTCIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovTCIMPORTE_NETO: TFloatField
      FieldName = 'IMPORTE_NETO'
      Visible = False
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovTCIMPORTE_RECARGO: TFloatField
      FieldName = 'IMPORTE_RECARGO'
      Visible = False
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovTCN_DOCU: TStringField
      FieldName = 'N_DOCU'
      Visible = False
      Size = 15
    end
    object CDSMovTCNRO_CUPON: TIntegerField
      DisplayLabel = 'N.Cupon'
      FieldName = 'NRO_CUPON'
    end
    object CDSMovTCTITULAR: TStringField
      FieldName = 'TITULAR'
      Visible = False
      Size = 30
    end
    object CDSMovTCVALORCUOTA: TFloatField
      FieldName = 'VALORCUOTA'
      Visible = False
    end
    object CDSMovTCTIPOP_COMPROB: TStringField
      FieldName = 'TIPOP_COMPROB'
      Visible = False
      Size = 2
    end
    object CDSMovTCCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Visible = False
      Size = 2
    end
    object CDSMovTCID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Visible = False
    end
    object CDSMovTCNRO_COMPROBANTE: TStringField
      FieldName = 'NRO_COMPROBANTE'
      Visible = False
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object CDSMovTCSUCURSAL: TIntegerField
      DisplayLabel = 'Suc'
      FieldName = 'SUCURSAL'
      Visible = False
    end
    object CDSMovTCSALDO_IMPORTE: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO_IMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovTCSALDO_IMPORTE_ORIGINAL: TFloatField
      FieldName = 'SALDO_IMPORTE_ORIGINAL'
      Visible = False
    end
    object CDSMovTCSELECCION: TBooleanField
      Alignment = taCenter
      DisplayLabel = 'Sel.'
      FieldKind = fkInternalCalc
      FieldName = 'SELECCION'
      Visible = False
    end
    object CDSMovTCDESCRIPCION_TC: TStringField
      DisplayLabel = 'T.de Credito'
      FieldName = 'DESCRIPCION_TC'
      Size = 15
    end
  end
  object DSPMovTC: TDataSetProvider
    DataSet = QMovTc
    Options = []
    Left = 80
    Top = 121
  end
  object DSMovTC: TDataSource
    DataSet = CDSMovTC
    Left = 232
    Top = 129
  end
  object QMovTc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from  LISTADO_CUPON_TC_ACREDITAR ( :id_TC , :Lote , :Te' +
        'rminal, :desde , :hasta )')
    Left = 24
    Top = 120
    ParamData = <
      item
        Position = 1
        Name = 'id_TC'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'Lote'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'Terminal'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object QLiqCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select l.*,t.descripcion as MuestraTarjeta,'
      
        '  s.detalle as MuestraSucursal,coalesce( b.id,0) as MuestraDepos' +
        'itado  from liquidacion_tc_cab l'
      'left join sucursal s on s.codigo=l.sucursal'
      'left join t_credito t on t.id_tc=l.id_tc'
      
        'left join resumen_bco_det b on b.id_origen=l.id and b.tipo_orige' +
        'n='#39'TCR'#39
      'where l.id=:id')
    Left = 352
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QLiqCabID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLiqCabID_TC: TIntegerField
      FieldName = 'ID_TC'
      Required = True
    end
    object QLiqCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object QLiqCabPERIODO_LIQUIDADO: TStringField
      FieldName = 'PERIODO_LIQUIDADO'
      Size = 6
    end
    object QLiqCabFECHA_FISCAL: TSQLTimeStampField
      FieldName = 'FECHA_FISCAL'
      Required = True
    end
    object QLiqCabLETRA: TStringField
      FieldName = 'LETRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QLiqCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QLiqCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QLiqCabSUC: TStringField
      FieldName = 'SUC'
      FixedChar = True
      Size = 4
    end
    object QLiqCabNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object QLiqCabNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Size = 13
    end
    object QLiqCabTOTAL_PRESENTACION: TFloatField
      FieldName = 'TOTAL_PRESENTACION'
    end
    object QLiqCabARANCEL: TFloatField
      FieldName = 'ARANCEL'
    end
    object QLiqCabIVA: TFloatField
      FieldName = 'IVA'
    end
    object QLiqCabIIBB: TFloatField
      FieldName = 'IIBB'
    end
    object QLiqCabGANANCIAS: TFloatField
      FieldName = 'GANANCIAS'
    end
    object QLiqCabCOSTO_FINANCIERO: TFloatField
      FieldName = 'COSTO_FINANCIERO'
    end
    object QLiqCabTOTAL_ACREDITADO: TFloatField
      FieldName = 'TOTAL_ACREDITADO'
    end
    object QLiqCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object QLiqCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object QLiqCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object QLiqCabPRESENTACION_ADICIONAL: TFloatField
      FieldName = 'PRESENTACION_ADICIONAL'
    end
    object QLiqCabNRO_LIQUIDACION: TStringField
      FieldName = 'NRO_LIQUIDACION'
      Size = 8
    end
    object QLiqCabNRO_LOTE: TStringField
      FieldName = 'NRO_LOTE'
      Size = 5
    end
    object QLiqCabNRO_TERMINAL: TStringField
      FieldName = 'NRO_TERMINAL'
      Size = 8
    end
    object QLiqCabID_CTA_BANCO: TIntegerField
      FieldName = 'ID_CTA_BANCO'
    end
    object QLiqCabNOMBRE_CTABCO: TStringField
      FieldName = 'NOMBRE_CTABCO'
      Size = 25
    end
    object QLiqCabMUESTRATARJETA: TStringField
      FieldName = 'MUESTRATARJETA'
      ProviderFlags = []
      Size = 15
    end
    object QLiqCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object QLiqCabING_LIBROIVA: TStringField
      FieldName = 'ING_LIBROIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QLiqCabCONTABILIZA: TStringField
      FieldName = 'CONTABILIZA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QLiqCabIMPORTES_EXENTOS: TFloatField
      FieldName = 'IMPORTES_EXENTOS'
    end
    object QLiqCabINGRESAR_RESUMENBANCARIO: TStringField
      FieldName = 'INGRESAR_RESUMENBANCARIO'
      Origin = 'INGRESAR_RESUMENBANCARIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QLiqCabMUESTRADEPOSITADO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Depositado'
      FieldName = 'MUESTRADEPOSITADO'
      Origin = 'MUESTRADEPOSITADO'
      ProviderFlags = []
    end
  end
  object QLiqDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select ld.* from liquidacion_tc_det ld where ld.id_liqcab=:id')
    Left = 352
    Top = 64
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QLiqDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLiqDetID_LIQCAB: TIntegerField
      FieldName = 'ID_LIQCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLiqDetID_MOV_TCREDITO: TIntegerField
      FieldName = 'ID_MOV_TCREDITO'
      Required = True
    end
    object QLiqDetIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Required = True
    end
    object QLiqDetFECHA_MOV: TSQLTimeStampField
      FieldName = 'FECHA_MOV'
      Required = True
    end
    object QLiqDetCUOTAS: TSmallintField
      FieldName = 'CUOTAS'
    end
    object QLiqDetNRO_CUPON: TIntegerField
      FieldName = 'NRO_CUPON'
    end
  end
  object QRetenciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from mov_retenciones where id_cpbte=:id and tipocpbte =' +
        ' :tipo')
    Left = 24
    Top = 184
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QRetencionesID_MOV_RETENCIONES: TIntegerField
      FieldName = 'ID_MOV_RETENCIONES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRetencionesID_RETENCION: TIntegerField
      FieldName = 'ID_RETENCION'
      Required = True
    end
    object QRetencionesDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object QRetencionesTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QRetencionesCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QRetencionesNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object QRetencionesID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object QRetencionesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QRetencionesFECHA_RETENCION: TSQLTimeStampField
      FieldName = 'FECHA_RETENCION'
    end
    object QRetencionesNRO_RETENCION: TStringField
      FieldName = 'NRO_RETENCION'
    end
    object QRetencionesIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QRetencionesCODIGO_CLIENTE: TStringField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
      Size = 6
    end
    object QRetencionesCUIT_CLIENTE: TStringField
      FieldName = 'CUIT_CLIENTE'
      Size = 13
    end
    object QRetencionesJURIDICCION: TIntegerField
      FieldName = 'JURIDICCION'
    end
    object QRetencionesNOMBRE_CLIENTE: TStringField
      FieldName = 'NOMBRE_CLIENTE'
      Size = 35
    end
  end
  object QBuscadorCtaBco: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from cuenta_caja where id_tipo_cta=2')
    Left = 32
    Top = 248
  end
  object CDSBuscadorCtaBco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscadorCtaBco'
    Left = 208
    Top = 248
    object CDSBuscadorCtaBcoID_CUENTA: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID_CUENTA'
    end
    object CDSBuscadorCtaBcoNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 25
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSBuscadorCtaBcoRAZONSOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      DisplayWidth = 35
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object DSPBuscadorCtaBco: TDataSetProvider
    DataSet = QBuscadorCtaBco
    Options = []
    Left = 104
    Top = 248
  end
  object QBuscadorTRet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from t_retenciones')
    Left = 32
    Top = 312
    object QBuscadorTRetID_RETENCION: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID_RETENCION'
      Origin = 'DBMAIN.T_RETENCIONES.ID_RETENCION'
    end
    object QBuscadorTRetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 20
      FieldName = 'DETALLE'
      Origin = 'DBMAIN.T_RETENCIONES.DETALLE'
    end
  end
  object DSPBuscadorTRet: TDataSetProvider
    DataSet = QBuscadorTRet
    Options = []
    Left = 104
    Top = 312
  end
  object CDSBuscadorTRet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscadorTRet'
    Left = 200
    Top = 312
    object CDSBuscadorTRetID_RETENCION: TIntegerField
      FieldName = 'ID_RETENCION'
    end
    object CDSBuscadorTRetDETALLE: TStringField
      FieldName = 'DETALLE'
    end
  end
  object QBuscadorTC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.id_tc,t.descripcion from t_credito t'
      'order by t.descripcion')
    Left = 32
    Top = 368
  end
  object DSPBuscadorTC: TDataSetProvider
    DataSet = QBuscadorTC
    Options = []
    Left = 104
    Top = 368
  end
  object CDSBuscadorTC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscadorTC'
    Left = 200
    Top = 368
    object CDSBuscadorTCDESCRIPCION: TStringField
      DisplayLabel = 'Descripci'#243'n'
      DisplayWidth = 25
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object CDSBuscadorTCID_TC: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID_TC'
      Required = True
    end
  end
  object QBuscaLiquidacion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select l.id,l.fecha,l.fecha_fiscal,l.numerocpbte,t.descripcion a' +
        's MuestraTarjeta,'
      'l.id_cta_banco as MuestraIDCtaBanco,'
      
        'l.nombre_ctaBco as MuestraNombreCta,l.ing_libroiva  from liquida' +
        'cion_tc_cab l'
      'left join t_credito t on t.id_tc=l.id_tc'
      'order by l.fecha desc')
    Left = 32
    Top = 424
  end
  object DSPBuscaLiquidacion: TDataSetProvider
    DataSet = QBuscaLiquidacion
    Options = []
    Left = 112
    Top = 424
  end
  object CDSBuscaLiquidacion: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaLiquidacion'
    Left = 200
    Top = 424
    object CDSBuscaLiquidacionFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      DisplayWidth = 18
      FieldName = 'FECHA'
      Required = True
    end
    object CDSBuscaLiquidacionMUESTRANOMBRECTA: TStringField
      DisplayLabel = 'Cta.de Banco'
      DisplayWidth = 25
      FieldName = 'MUESTRANOMBRECTA'
      Size = 25
    end
    object CDSBuscaLiquidacionMUESTRATARJETA: TStringField
      DisplayLabel = 'Tarjeta'
      DisplayWidth = 15
      FieldName = 'MUESTRATARJETA'
      Size = 15
    end
    object CDSBuscaLiquidacionNUMEROCPBTE: TStringField
      DisplayLabel = 'Nro.Liquidacion'
      DisplayWidth = 13
      FieldName = 'NUMEROCPBTE'
      Size = 13
    end
    object CDSBuscaLiquidacionING_LIBROIVA: TStringField
      DisplayLabel = 'Fiscal'
      DisplayWidth = 4
      FieldName = 'ING_LIBROIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaLiquidacionID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
    end
    object CDSBuscaLiquidacionFECHA_FISCAL: TSQLTimeStampField
      DisplayLabel = 'F.Fiscal'
      FieldName = 'FECHA_FISCAL'
      Required = True
      Visible = False
    end
    object CDSBuscaLiquidacionMUESTRAIDCTABANCO: TIntegerField
      DisplayLabel = 'Banco'
      FieldName = 'MUESTRAIDCTABANCO'
      Visible = False
    end
  end
  object IBGId_Retenciones: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'ID_MOV_RETENCIONES'
    SystemGenerators = False
    Left = 496
    Top = 408
  end
  object QLiq_Iva: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from liquidacion_tc_iva where Id_liq = :id')
    Left = 352
    Top = 115
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QLiq_IvaID_LIQ: TIntegerField
      FieldName = 'ID_LIQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLiq_IvaID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLiq_IvaCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      Required = True
    end
    object QLiq_IvaDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object QLiq_IvaNETO: TFloatField
      FieldName = 'NETO'
    end
    object QLiq_IvaTASA: TFloatField
      FieldName = 'TASA'
    end
    object QLiq_IvaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
  end
  object IBGIVA: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_LIQUIDACION_TC_IVA'
    SystemGenerators = False
    Left = 504
    Top = 360
  end
  object IBGIIBB: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_LIQUIDACION_TC_IIBB'
    SystemGenerators = False
    Left = 504
    Top = 302
  end
  object QLiq_IIBB: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from liquidacion_tc_IIBB where Id_liq = :id')
    Left = 352
    Top = 176
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QLiq_IIBBID_LIQ: TIntegerField
      FieldName = 'ID_LIQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLiq_IIBBID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLiq_IIBBCODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Required = True
    end
    object QLiq_IIBBDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object QLiq_IIBBNETO: TFloatField
      FieldName = 'NETO'
    end
    object QLiq_IIBBTASA: TFloatField
      FieldName = 'TASA'
    end
    object QLiq_IIBBIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QLiq_IIBBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
    end
  end
  object CDSBuscaIVA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaIVA'
    Left = 200
    Top = 472
    object CDSBuscaIVACODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 4
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
      DisplayWidth = 8
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
  object DSPBuscaIVA: TDataSetProvider
    DataSet = DMBuscadores.QBuscaIva
    Options = []
    Left = 112
    Top = 472
  end
  object QGravamen: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from  gravamen where codigo=:codigo')
    Left = 520
    Top = 80
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QGravamenCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QGravamenDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object QGravamenTASA: TFloatField
      FieldName = 'TASA'
    end
  end
  object QPercepIB: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from percepIB where codigo=:codigo')
    Left = 432
    Top = 16
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QPercepIBCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QPercepIBDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
    object QPercepIBTASA: TFloatField
      FieldName = 'TASA'
    end
    object QPercepIBMINIMOAPLICABLE: TFloatField
      FieldName = 'MINIMOAPLICABLE'
    end
    object QPercepIBCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
    end
    object QPercepIBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
    end
  end
  object CDSBuscaPercepIIBB: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaPercepIIBB'
    Left = 200
    Top = 528
    object CDSBuscaPercepIIBBCODIGO: TIntegerField
      DisplayWidth = 4
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSBuscaPercepIIBBDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
    end
    object CDSBuscaPercepIIBBTASA: TFloatField
      DisplayLabel = '%'
      DisplayWidth = 6
      FieldName = 'TASA'
      Origin = 'TASA'
      DisplayFormat = '0.00'
    end
    object CDSBuscaPercepIIBBMINIMOAPLICABLE: TFloatField
      DisplayLabel = 'Min.Impo'
      DisplayWidth = 8
      FieldName = 'MINIMOAPLICABLE'
      Origin = 'MINIMOAPLICABLE'
      Visible = False
      DisplayFormat = '0.00'
    end
    object CDSBuscaPercepIIBBCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Origin = 'COLUMNA'
      Visible = False
    end
    object CDSBuscaPercepIIBBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
      Origin = 'JURIDICION'
      Visible = False
    end
  end
  object DSPBuscaPercepIIBB: TDataSetProvider
    DataSet = DMBuscadores.QBuscaPercepIB
    Options = []
    Left = 120
    Top = 528
  end
  object QJuridicion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from juridiccion order by detalle')
    Left = 360
    Top = 456
  end
  object QRegimen: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from REGIMENRETENCIONIVA ')
    Left = 364
    Top = 511
  end
  object CDSJuridicion: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPJuridicion'
    Left = 504
    Top = 456
    object CDSJuridicionCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSJuridicionDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 40
    end
  end
  object DSPJuridicion: TDataSetProvider
    DataSet = QJuridicion
    Options = [poAllowCommandText]
    Left = 431
    Top = 456
  end
  object DSPRegimen: TDataSetProvider
    DataSet = QRegimen
    Options = [poAllowCommandText]
    Left = 431
    Top = 512
  end
  object CDSRegimen: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRegimen'
    Left = 504
    Top = 512
    object CDSRegimenCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSRegimenDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 100
    end
    object CDSRegimenCOD_IMPUESTO: TIntegerField
      FieldName = 'COD_IMPUESTO'
      Required = True
    end
  end
  object IBGPercepcionIVA: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_PERCEPCION_IVA'
    SystemGenerators = False
    Left = 504
    Top = 271
  end
  object QLiq_PerIva: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from liquidacion_TC_periva where id_liq=:id')
    Left = 346
    Top = 232
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QLiq_PerIvaID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLiq_PerIvaCODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLiq_PerIvaDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object QLiq_PerIvaID_LIQ: TIntegerField
      FieldName = 'ID_LIQ'
      Required = True
    end
    object QLiq_PerIvaNETO: TFloatField
      FieldName = 'NETO'
    end
    object QLiq_PerIvaTASA: TFloatField
      FieldName = 'TASA'
    end
    object QLiq_PerIvaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QLiq_PerIvaCODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
    end
  end
  object DSPBuscaPercepIVA: TDataSetProvider
    DataSet = DMBuscadores.QBuscaPercepIva
    Options = []
    Left = 112
    Top = 584
  end
  object CDSBuscaPercepIVA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaPercepIVA'
    Left = 200
    Top = 592
    object CDSBuscaPercepIVACODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 4
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
  object QPercepIva: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from percepiva where codigo=:codigo')
    Left = 426
    Top = 72
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QPercepIvaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QPercepIvaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
    object QPercepIvaTASA: TFloatField
      FieldName = 'TASA'
    end
    object QPercepIvaMINIMOAPLICABLE: TFloatField
      FieldName = 'MINIMOAPLICABLE'
    end
    object QPercepIvaCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
    end
    object QPercepIvaCODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
    end
  end
  object QCtaCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cc.*,'
      '  b.nombre as MuestraBanco'
      'from cuenta_caja cc'
      '  left join bancos b on b.id_banco=cc.id_banco'
      'where cc.id_cuenta=:id')
    Left = 544
    Top = 176
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCtaCajaID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Origin = 'ID_CUENTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCtaCajaID_TIPO_CTA: TIntegerField
      FieldName = 'ID_TIPO_CTA'
      Origin = 'ID_TIPO_CTA'
      Required = True
    end
    object QCtaCajaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object QCtaCajaNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Origin = 'NRO_CUENTA'
      Size = 15
    end
    object QCtaCajaID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
    end
    object QCtaCajaCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QCtaCajaRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QCtaCajaMUESTRABANCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object spIngresaMovBco: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'INGRESA_MOVTC_BANCO'
    Left = 712
    Top = 240
    ParamData = <
      item
        Position = 1
        Name = 'ID_CUENTA_BANCO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID_LIQUIDACION'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'FECHA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'IMPORTE'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'NRO_LIQUIDACION'
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
      end>
  end
end
