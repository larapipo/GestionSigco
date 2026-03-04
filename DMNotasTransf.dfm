object DatosNotaTransferencia: TDatosNotaTransferencia
  OnDestroy = DataModuleDestroy
  Height = 502
  Width = 492
  object CDSNCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPNCab'
    AfterInsert = CDSNCabAfterInsert
    OnNewRecord = CDSNCabNewRecord
    Left = 159
    Top = 26
    object CDSNCabID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSNCabNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object CDSNCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSNCabSUBNUMERO: TStringField
      FieldName = 'SUBNUMERO'
      FixedChar = True
      Size = 2
    end
    object CDSNCabSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      Size = 6
    end
    object CDSNCabDEP_DESTINO: TIntegerField
      FieldName = 'DEP_DESTINO'
    end
    object CDSNCabDEP_ORIGEN: TIntegerField
      FieldName = 'DEP_ORIGEN'
      OnSetText = CDSNCabDEP_ORIGENSetText
    end
    object CDSNCabESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object CDSNCabNPEDIDO_ID: TIntegerField
      FieldName = 'NPEDIDO_ID'
    end
    object CDSNCabNPEDIDO_TIPO: TStringField
      FieldName = 'NPEDIDO_TIPO'
      FixedChar = True
      Size = 2
    end
    object CDSNCabNPEDIDO_CLASE: TStringField
      FieldName = 'NPEDIDO_CLASE'
      FixedChar = True
      Size = 2
    end
    object CDSNCabNPEDIDO_NROCPBTE: TStringField
      FieldName = 'NPEDIDO_NROCPBTE'
      EditMask = 'a-####-########;0'
      Size = 13
    end
    object CDSNCabOBS1: TStringField
      FieldName = 'OBS1'
      Size = 100
    end
    object CDSNCabOBS2: TStringField
      FieldName = 'OBS2'
      Size = 100
    end
    object CDSNCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSNCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Required = True
    end
    object CDSNCabMUESTRADESTINO: TStringField
      FieldName = 'MUESTRADESTINO'
      ProviderFlags = []
      Size = 25
    end
    object CDSNCabMUESTRAORIGEN: TStringField
      FieldName = 'MUESTRAORIGEN'
      ProviderFlags = []
      Size = 25
    end
    object CDSNCabMUESTRASOLICITANTE: TStringField
      FieldName = 'MUESTRASOLICITANTE'
      ProviderFlags = []
      Size = 50
    end
    object CDSNCabID_TRANSFERENCIA: TIntegerField
      FieldName = 'ID_TRANSFERENCIA'
    end
    object CDSNCabNRO_TRANSFERENCIA: TStringField
      FieldName = 'NRO_TRANSFERENCIA'
      Size = 13
    end
  end
  object CDSNDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPNDet'
    AfterInsert = CDSNDetAfterInsert
    BeforeEdit = CDSNDetBeforeEdit
    BeforePost = CDSNDetBeforePost
    AfterPost = CDSNDetAfterPost
    BeforeDelete = CDSNDetBeforeDelete
    OnNewRecord = CDSNDetNewRecord
    Left = 157
    Top = 89
    object CDSNDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSNDetID_TRANCAB: TIntegerField
      FieldName = 'ID_TRANCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSNDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSNDetCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      OnSetText = CDSNDetCODIGOSetText
      Size = 8
    end
    object CDSNDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSNDetUNIDAD: TStringField
      DisplayLabel = 'Unidad'
      FieldName = 'UNIDAD'
      Size = 3
    end
    object CDSNDetDEPOSITO_ORIGEN: TIntegerField
      DisplayLabel = 'Dep.Orig'
      FieldName = 'DEPOSITO_ORIGEN'
    end
    object CDSNDetDEPOSITO_DESTINO: TIntegerField
      DisplayLabel = 'Dep.Dst'
      FieldName = 'DEPOSITO_DESTINO'
    end
    object CDSNDetNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object CDSNDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      FixedChar = True
      Size = 1
    end
    object CDSNDetESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object CDSNDetLOTE: TIntegerField
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
      OnSetText = CDSNDetLOTESetText
    end
    object CDSNDetEAN: TStringField
      FieldName = 'EAN'
      Size = 50
    end
    object CDSNDetPOSICION: TStringField
      DisplayLabel = 'Posc.'
      FieldName = 'POSICION'
      Size = 10
    end
    object CDSNDetLOTECERRADO: TStringField
      DisplayLabel = '#'
      FieldName = 'LOTECERRADO'
      FixedChar = True
      Size = 1
    end
    object CDSNDetID_TRANSFERNCIA: TIntegerField
      FieldName = 'ID_TRANSFERNCIA'
    end
    object CDSNDetNRO_TRANSFERENCIA: TStringField
      FieldName = 'NRO_TRANSFERENCIA'
      Size = 13
    end
    object CDSNDetCANTIDAD_PEDIDA: TFloatField
      DisplayLabel = 'Pedido'
      FieldName = 'CANTIDAD_PEDIDA'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSNDetCANTIDAD_ENTREGADA: TFloatField
      DisplayLabel = 'Entregado'
      FieldName = 'CANTIDAD_ENTREGADA'
      OnSetText = CDSNDetCANTIDAD_ENTREGADASetText
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSNDetCANTIDAD_FALTANTE: TFloatField
      DisplayLabel = 'Faltante'
      FieldName = 'CANTIDAD_FALTANTE'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
  end
  object DSNDet: TDataSource
    DataSet = CDSNDet
    Left = 289
    Top = 93
  end
  object DSPNCab: TDataSetProvider
    DataSet = QNTCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 107
    Top = 25
  end
  object DSPNDet: TDataSetProvider
    DataSet = QNTDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 106
    Top = 90
  end
  object ibgCab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_NOTA_TRANSF_CAB'
    SystemGenerators = False
    Left = 291
    Top = 261
  end
  object IbgDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_NOTA_TRANSF_DET'
    SystemGenerators = False
    Left = 295
    Top = 207
  end
  object CDSNCabXML: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 60
    Top = 212
  end
  object CDSNDetXML: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 152
    Top = 216
  end
  object QNTCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select n.*,depd.nombre as MuestraDestino,depo.nombre as MuestraO' +
        'rigen,p.nombre as MuestraSolicitante  from  nota_transf_cab n'
      'left join depositos depd on depd.id=n.dep_destino'
      'left join depositos depo on depo.id=n.dep_origen'
      'left join personal p on p.codigo=n.solicitante'
      'where n.id=:id')
    Left = 51
    Top = 25
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QNTCabID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNTCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QNTCabNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object QNTCabSUBNUMERO: TStringField
      FieldName = 'SUBNUMERO'
      Size = 4
    end
    object QNTCabSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      Size = 6
    end
    object QNTCabDEP_DESTINO: TIntegerField
      FieldName = 'DEP_DESTINO'
    end
    object QNTCabDEP_ORIGEN: TIntegerField
      FieldName = 'DEP_ORIGEN'
    end
    object QNTCabESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object QNTCabNPEDIDO_ID: TIntegerField
      FieldName = 'NPEDIDO_ID'
    end
    object QNTCabNPEDIDO_TIPO: TStringField
      FieldName = 'NPEDIDO_TIPO'
      Size = 4
    end
    object QNTCabNPEDIDO_CLASE: TStringField
      FieldName = 'NPEDIDO_CLASE'
      Size = 4
    end
    object QNTCabNPEDIDO_NROCPBTE: TStringField
      FieldName = 'NPEDIDO_NROCPBTE'
      Size = 13
    end
    object QNTCabOBS1: TStringField
      FieldName = 'OBS1'
      Size = 100
    end
    object QNTCabOBS2: TStringField
      FieldName = 'OBS2'
      Size = 100
    end
    object QNTCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object QNTCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Required = True
    end
    object QNTCabID_TRANSFERENCIA: TIntegerField
      FieldName = 'ID_TRANSFERENCIA'
    end
    object QNTCabNRO_TRANSFERENCIA: TStringField
      FieldName = 'NRO_TRANSFERENCIA'
      Size = 13
    end
    object QNTCabMUESTRADESTINO: TStringField
      FieldName = 'MUESTRADESTINO'
      ProviderFlags = []
      Size = 25
    end
    object QNTCabMUESTRAORIGEN: TStringField
      FieldName = 'MUESTRAORIGEN'
      ProviderFlags = []
      Size = 25
    end
    object QNTCabMUESTRASOLICITANTE: TStringField
      FieldName = 'MUESTRASOLICITANTE'
      ProviderFlags = []
      Size = 50
    end
  end
  object QNTDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.* from nota_transf_det d'
      'where d.id_trancab=:id')
    Left = 53
    Top = 97
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QNTDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNTDetID_TRANCAB: TIntegerField
      FieldName = 'ID_TRANCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNTDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QNTDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 8
    end
    object QNTDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object QNTDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object QNTDetDEPOSITO_ORIGEN: TIntegerField
      FieldName = 'DEPOSITO_ORIGEN'
      Required = True
    end
    object QNTDetDEPOSITO_DESTINO: TIntegerField
      FieldName = 'DEPOSITO_DESTINO'
      Required = True
    end
    object QNTDetNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object QNTDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QNTDetCANTIDAD_PEDIDA: TFloatField
      FieldName = 'CANTIDAD_PEDIDA'
    end
    object QNTDetCANTIDAD_ENTREGADA: TFloatField
      FieldName = 'CANTIDAD_ENTREGADA'
    end
    object QNTDetCANTIDAD_FALTANTE: TFloatField
      FieldName = 'CANTIDAD_FALTANTE'
    end
    object QNTDetESTADO: TStringField
      FieldName = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QNTDetLOTE: TIntegerField
      FieldName = 'LOTE'
    end
    object QNTDetEAN: TStringField
      FieldName = 'EAN'
      Size = 50
    end
    object QNTDetPOSICION: TStringField
      FieldName = 'POSICION'
      Size = 10
    end
    object QNTDetLOTECERRADO: TStringField
      FieldName = 'LOTECERRADO'
      FixedChar = True
      Size = 1
    end
    object QNTDetID_TRANSFERNCIA: TIntegerField
      FieldName = 'ID_TRANSFERNCIA'
    end
    object QNTDetNRO_TRANSFERENCIA: TStringField
      FieldName = 'NRO_TRANSFERENCIA'
      Size = 13
    end
  end
  object QDeposito: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.* from depositos d'
      'where d.id=:id')
    Left = 228
    Top = 347
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QDepositoID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'DBMAIN.DEPOSITOS.ID'
    end
    object QDepositoNOMBRE: TStringField
      DisplayWidth = 25
      FieldName = 'NOMBRE'
      Origin = 'DBMAIN.DEPOSITOS.NOMBRE'
      Size = 25
    end
  end
  object QCBarra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(cb.codigobarra) as CodigoBarra from codigobarra cb'
      'where cb.codigo_stk=:codigo and cb.presentacion_cantidad=1')
    Left = 156
    Top = 348
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select S.* from stock s where S.Codigo_Stk=:codigo')
    Left = 291
    Top = 30
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object QStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object QStockDETALLE_STK_ADICIONAL: TStringField
      FieldName = 'DETALLE_STK_ADICIONAL'
      Size = 200
    end
    object QStockCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Size = 25
    end
    object QStockRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Required = True
      Size = 3
    end
    object QStockSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Required = True
      Size = 5
    end
    object QStockMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Size = 4
    end
    object QStockTASA_IVA: TIntegerField
      FieldName = 'TASA_IVA'
      Required = True
    end
    object QStockSOBRETASA_IVA: TIntegerField
      FieldName = 'SOBRETASA_IVA'
    end
    object QStockCOSTO_EXENTO_STK: TFloatField
      FieldName = 'COSTO_EXENTO_STK'
      Required = True
    end
    object QStockCOSTO_GRAVADO_STK: TFloatField
      FieldName = 'COSTO_GRAVADO_STK'
      Required = True
    end
    object QStockCOSTO_TOTAL_STK: TFloatField
      FieldName = 'COSTO_TOTAL_STK'
      Required = True
    end
    object QStockREEMPLAZO_STK: TStringField
      FieldName = 'REEMPLAZO_STK'
      Required = True
    end
    object QStockFIJACION_PRECIO_GRAVADO: TFloatField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Required = True
    end
    object QStockFIJACION_PRECIO_EXENTO: TFloatField
      FieldName = 'FIJACION_PRECIO_EXENTO'
      Required = True
    end
    object QStockFIJACION_PRECIO_TOTAL: TFloatField
      FieldName = 'FIJACION_PRECIO_TOTAL'
      Required = True
    end
    object QStockFUAP: TSQLTimeStampField
      FieldName = 'FUAP'
    end
    object QStockUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object QStockCONTROLASTOCK: TStringField
      FieldName = 'CONTROLASTOCK'
      Required = True
      Size = 1
    end
    object QStockCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Size = 10
    end
    object QStockCLASE_ARTICULO: TIntegerField
      FieldName = 'CLASE_ARTICULO'
    end
    object QStockMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
    end
    object QStockCON_IMP_INT: TStringField
      FieldName = 'CON_IMP_INT'
      Size = 1
    end
    object QStockIMPUESTO_INTERNOS: TFloatField
      FieldName = 'IMPUESTO_INTERNOS'
    end
    object QStockGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockTASA_IB: TIntegerField
      FieldName = 'TASA_IB'
      Required = True
    end
    object QStockACTUALIZACOSTO: TStringField
      FieldName = 'ACTUALIZACOSTO'
      FixedChar = True
      Size = 1
    end
    object QStockDEPRODUCCION: TStringField
      FieldName = 'DEPRODUCCION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockPRODUCCIONDIRECTA: TStringField
      FieldName = 'PRODUCCIONDIRECTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockUNIDAD_COMPRA: TStringField
      FieldName = 'UNIDAD_COMPRA'
      Size = 3
    end
    object QStockCONTENIDO_COMPRA: TFloatField
      FieldName = 'CONTENIDO_COMPRA'
      Required = True
    end
    object QStockCONTROL_SERIE: TStringField
      FieldName = 'CONTROL_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockUSA_CODIGOBARRA: TStringField
      FieldName = 'USA_CODIGOBARRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockUNIDAD_ULTIMAUSADA: TStringField
      FieldName = 'UNIDAD_ULTIMAUSADA'
      Size = 3
    end
    object QStockID_TABLAPRECIOS: TIntegerField
      FieldName = 'ID_TABLAPRECIOS'
    end
    object QStockID_TABLAPRECIOSDETALLE: TIntegerField
      FieldName = 'ID_TABLAPRECIOSDETALLE'
    end
    object QStockCODIGO_PRECIO: TIntegerField
      FieldName = 'CODIGO_PRECIO'
    end
    object QStockFECHA_ALTA: TSQLTimeStampField
      FieldName = 'FECHA_ALTA'
    end
    object QStockCOSTO_GRAVADO_SOMBRA: TFloatField
      FieldName = 'COSTO_GRAVADO_SOMBRA'
      Required = True
    end
    object QStockCOSTO_EXENTO_SOMBRA: TFloatField
      FieldName = 'COSTO_EXENTO_SOMBRA'
      Required = True
    end
    object QStockFECHA_ACT_SOMBRA: TSQLTimeStampField
      FieldName = 'FECHA_ACT_SOMBRA'
    end
    object QStockFECHA_ULTIMAVTA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMAVTA'
    end
    object QStockMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QStockCOSTO_GRAVADO_P: TFloatField
      FieldName = 'COSTO_GRAVADO_P'
      Required = True
    end
    object QStockCOSTO_EXENTO_P: TFloatField
      FieldName = 'COSTO_EXENTO_P'
      Required = True
    end
    object QStockCOSTO_TOTAL_P: TFloatField
      FieldName = 'COSTO_TOTAL_P'
      Required = True
    end
    object QStockPOSICION: TStringField
      FieldName = 'POSICION'
      Size = 10
    end
    object QStockPRESENTACION_UNIDAD: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      Size = 3
    end
    object QStockPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      Required = True
    end
    object QStockEDITAPRECIO: TStringField
      FieldName = 'EDITAPRECIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockEDITADETALLE: TStringField
      FieldName = 'EDITADETALLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockURL: TStringField
      FieldName = 'URL'
      Size = 250
    end
    object QStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMA_COMPRA'
    end
    object QStockCOMANDA: TStringField
      FieldName = 'COMANDA'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QBuscaCodigoBarra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cb.codigo_stk from codigobarra cb'
      'where cb.codigobarra = :codigo '
      '')
    Left = 73
    Top = 352
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
end
