object ServerMethodsAjustesStock: TServerMethodsAjustesStock
  OldCreateOrder = False
  Height = 564
  Width = 689
  object QStock: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'deposito'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select S.codigo_stk,s.detalle_stk,unidad,unidad_compra,'
      's.controlastock,s.control_serie,s.costo_total_stk,'
      
        's.contenido_compra,dep.fisico as MuestraFisico,s.clase_articulo ' +
        ' from stock s'
      
        'left join depositostk dep on dep.codigo_stk=s.Codigo_stk and dep' +
        '.codigo_deposito=:deposito'
      'where S.Codigo_Stk=:codigo')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 48
    Top = 208
    object QStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object QStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object QStockUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object QStockUNIDAD_COMPRA: TStringField
      FieldName = 'UNIDAD_COMPRA'
      Size = 3
    end
    object QStockCONTROLASTOCK: TStringField
      FieldName = 'CONTROLASTOCK'
      Required = True
      Size = 1
    end
    object QStockCONTROL_SERIE: TStringField
      FieldName = 'CONTROL_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockCOSTO_TOTAL_STK: TFMTBCDField
      FieldName = 'COSTO_TOTAL_STK'
      Required = True
      Precision = 15
      Size = 3
    end
    object QStockCONTENIDO_COMPRA: TFMTBCDField
      FieldName = 'CONTENIDO_COMPRA'
      Required = True
      Precision = 15
      Size = 3
    end
    object QStockMUESTRAFISICO: TFMTBCDField
      FieldName = 'MUESTRAFISICO'
      Precision = 15
      Size = 3
    end
    object QStockCLASE_ARTICULO: TIntegerField
      FieldName = 'CLASE_ARTICULO'
    end
  end
  object DSPStock: TDataSetProvider
    DataSet = QStock
    Left = 152
    Top = 206
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
      'select * from comprobantes '
      'where sucursal = :suc and compra_venta='#39'V'#39' and tipo_comprob='#39'AS'#39)
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 48
    Top = 263
  end
  object DSPBuscaComprob: TDataSetProvider
    DataSet = QBuscaComprob
    UpdateMode = upWhereKeyOnly
    Left = 152
    Top = 264
  end
  object QComprob: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from comprobantes where'
      'id_comprobante=:id  '
      'and sucursal=:suc '
      'and compra_venta='#39'V'#39' '
      'and tipo_comprob='#39'AS'#39)
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 48
    Top = 328
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
    object QComprobID_COMPROBANTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_COMPROBANTE'
      Origin = 'DBMAIN.COMPROBANTES.ID_COMPROBANTE'
    end
    object QComprobCOPIAS: TIntegerField
      DisplayWidth = 10
      FieldName = 'COPIAS'
      Origin = 'DBMAIN.COMPROBANTES.COPIAS'
    end
    object QComprobREPORTE: TStringField
      DisplayWidth = 100
      FieldName = 'REPORTE'
      Origin = 'DBMAIN.COMPROBANTES.REPORTE'
      Size = 100
    end
  end
  object DSPComprob: TDataSetProvider
    DataSet = QComprob
    Left = 152
    Top = 328
  end
  object spRecaculaCostos: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = ServerContainer.GestionPtoVta
    StoredProcName = 'REVALORIZAR_AJUSTESSTOCK'
    Left = 561
    Top = 176
  end
  object QCambiarFecha: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'FechaNueva'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'update rtomercacab r set r.fecha= :FechaNueva where r.id_rto= :i' +
        'd')
    Left = 560
    Top = 236
    object IntegerField1: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
    end
    object StringField1: TStringField
      DisplayWidth = 8
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object StringField2: TStringField
      DisplayWidth = 50
      FieldName = 'CODIGOSERIE'
      Size = 50
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'FECHAINGRESO'
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'FECHAEGRESO'
    end
  end
  object QAjusteSubDetalle: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * from rtomercasubdet where Id_rtoCab= :id ')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 48
    Top = 144
    object QAjusteSubDetalleID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAjusteSubDetalleID_RTODET: TIntegerField
      FieldName = 'ID_RTODET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QAjusteSubDetalleID_RTOCAB: TIntegerField
      FieldName = 'ID_RTOCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QAjusteSubDetalleTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      FixedChar = True
      Size = 2
    end
    object QAjusteSubDetalleCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      FixedChar = True
      Size = 2
    end
    object QAjusteSubDetalleFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object QAjusteSubDetalleNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QAjusteSubDetalleCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object QAjusteSubDetalleSERIE: TStringField
      FieldName = 'SERIE'
      Size = 50
    end
    object QAjusteSubDetalleDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object QAjusteSubDetalleTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QAjusteDet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_cab'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select rd.* ,'
      '   s.REEMPLAZO_STK as MuestraCodAlternativo from rtomercadet rd'
      'left join stock s on s.codigo_stk=rd.codigo'
      'where rd.id_rto_cab=:id_cab')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 48
    Top = 80
    object QAjusteDetID_RTO_DET: TIntegerField
      FieldName = 'ID_RTO_DET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAjusteDetID_RTO_CAB: TIntegerField
      FieldName = 'ID_RTO_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAjusteDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QAjusteDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 8
    end
    object QAjusteDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object QAjusteDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object QAjusteDetCANTIDAD: TFMTBCDField
      FieldName = 'CANTIDAD'
      Required = True
      Precision = 15
      Size = 3
    end
    object QAjusteDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QAjusteDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object QAjusteDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QAjusteDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QAjusteDetAFECTASTOCK: TStringField
      FieldName = 'AFECTASTOCK'
      Size = 1
    end
    object QAjusteDetSTOCK_ACTUAL_COMPRA: TFMTBCDField
      FieldName = 'STOCK_ACTUAL_COMPRA'
      Precision = 15
      Size = 3
    end
    object QAjusteDetSTOCK_ACTUAL_VTA: TFMTBCDField
      FieldName = 'STOCK_ACTUAL_VTA'
      Precision = 15
      Size = 3
    end
    object QAjusteDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QAjusteDetCOSTO_UNITARIO: TFMTBCDField
      FieldName = 'COSTO_UNITARIO'
      Required = True
      Precision = 15
      Size = 3
    end
    object QAjusteDetCOSTO_TOTAL: TFMTBCDField
      FieldName = 'COSTO_TOTAL'
      Required = True
      Precision = 15
      Size = 3
    end
    object QAjusteDetMUESTRACODALTERNATIVO: TStringField
      FieldName = 'MUESTRACODALTERNATIVO'
      ProviderFlags = []
    end
  end
  object QAjusteCab: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select rc.*,cp.denominacion as MuestraComprobante,'
      'cp.id_comprobante as Id_TipoComprobante,'
      's.detalle as MuestraSucursal,'
      'd.nombre as MuestraDeposito  from rtomercacab rc'
      'left join depositos d  on d.id=rc.deposito'
      'left join sucursal s on s.codigo=rc.sucursal'
      'left join comprobantes cp on cp.clase_comprob=rc.ClaseCpbte and'
      '          cp.letra=rc.Letra and'
      '          cp.sucursal=rc.sucursal and'
      '          cp.tipo_comprob=rc.tipocpbte'
      'where rc.id_rto=:id')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 48
    Top = 24
    object QAjusteCabID_RTO: TIntegerField
      FieldName = 'ID_RTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAjusteCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QAjusteCabLETRA: TStringField
      FieldName = 'LETRA'
      Size = 1
    end
    object QAjusteCabSUCRTO: TStringField
      FieldName = 'SUCRTO'
      Size = 4
    end
    object QAjusteCabNUMRTO: TStringField
      FieldName = 'NUMRTO'
      Size = 8
    end
    object QAjusteCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object QAjusteCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QAjusteCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QAjusteCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QAjusteCabOBS: TStringField
      FieldName = 'OBS'
      Size = 120
    end
    object QAjusteCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object QAjusteCabAJUSTE_CERO_STOCK: TStringField
      FieldName = 'AJUSTE_CERO_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QAjusteCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object QAjusteCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object QAjusteCabTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Required = True
      Precision = 15
      Size = 3
    end
    object QAjusteCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object QAjusteCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
    end
    object QAjusteCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object QAjusteCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
    object QAjusteCabMOTIVO: TIntegerField
      FieldName = 'MOTIVO'
      Required = True
    end
  end
  object DSPAjusteCab: TDataSetProvider
    DataSet = QAjusteCab
    UpdateMode = upWhereKeyOnly
    Left = 152
    Top = 24
  end
  object DSPAjusteDet: TDataSetProvider
    DataSet = QAjusteDet
    UpdateMode = upWhereKeyOnly
    Left = 152
    Top = 88
  end
  object DSPAjusteSubDet: TDataSetProvider
    DataSet = QAjusteSubDetalle
    Left = 152
    Top = 144
  end
  object IBGAjusteSubDet: TIBGenerator
    DatabaseIBX = ServerContainer.GestionPtoVta
    GeneratorName = 'NEXT_ID_RTOMERCASUBDET'
    SystemGenerators = False
    Left = 384
    Top = 24
  end
  object ibgAjusteDet: TIBGenerator
    DatabaseIBX = ServerContainer.GestionPtoVta
    GeneratorName = 'NEXT_ID_RTO_DET_MERCA'
    SystemGenerators = False
    Left = 384
    Top = 72
  end
  object ibgAjusteCab: TIBGenerator
    DatabaseIBX = ServerContainer.GestionPtoVta
    GeneratorName = 'NEXT_ID_RTO_CAB_MERCA'
    SystemGenerators = False
    Left = 384
    Top = 122
  end
  object QStkUnit_al: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'deposito'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'fecha'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select s.codigo_stk,s.fisico from stk_unitario_al (:deposito,:fe' +
        'cha,:codigo) s')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 40
    Top = 392
  end
  object DSPStkUnit_Al: TDataSetProvider
    DataSet = QStkUnit_al
    Left = 152
    Top = 392
  end
  object DSPMovimientos: TDataSetProvider
    DataSet = QMovimientos
    Left = 544
    Top = 400
  end
  object QMovimientos: TSQLQuery
    MaxBlobSize = -1
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
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'subrubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'subrubro'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'deposito'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'deposito'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select m.*, s.detalle_stk,s.rubro_stk,s.subrubro_stk,'
      'r.detalle_rubro,sr.detalle_subrubro from mov_stock m'
      'left join stock s on s.codigo_stk = m.codigo_articulo'
      'left join rubros r on r.codigo_rubro = s.rubro_stk'
      'left join subrubros sr on sr.codigo_subrubro = s.subrubro_stk'
      'where ( m.fecha between :desde and :hasta ) and'
      '      ( s.rubro_stk = :rubro or :rubro = '#39'***'#39' ) and'
      '      ( s.subrubro_stk = :subrubro or :subrubro = '#39'*****'#39' ) and'
      '      (m.deposito = :deposito or :deposito = -1 )'
      'order by m.codigo_articulo')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 440
    Top = 392
  end
end
