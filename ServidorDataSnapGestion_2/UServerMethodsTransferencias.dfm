object ServerMethodstransferecias: TServerMethodstransferecias
  OldCreateOrder = False
  Height = 601
  Width = 929
  object QTranDet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_cab'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from trandet td'
      'where td.id_trancab=:id_cab')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 38
    Top = 53
    object QTranDetID_TRANDET: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_TRANDET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QTranDetID_TRANCAB: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_TRANCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QTranDetDETALLE: TStringField
      DisplayWidth = 45
      FieldName = 'DETALLE'
      Size = 45
    end
    object QTranDetUNIDAD: TStringField
      DisplayWidth = 3
      FieldName = 'UNIDAD'
      Size = 3
    end
    object QTranDetDEPOSITO_ORIGEN: TIntegerField
      DisplayWidth = 10
      FieldName = 'DEPOSITO_ORIGEN'
    end
    object QTranDetDEPOSITO_DESTINO: TIntegerField
      DisplayWidth = 10
      FieldName = 'DEPOSITO_DESTINO'
    end
    object QTranDetSUCURSAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'SUCURSAL'
    end
    object QTranDetCODIGO: TStringField
      DisplayWidth = 8
      FieldName = 'CODIGO'
      Size = 8
    end
    object QTranDetNROCPBTE: TStringField
      DisplayWidth = 13
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QTranDetTIPOCPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QTranDetCLASECPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QTranDetAFECTA_STOCK: TStringField
      DisplayWidth = 1
      FieldName = 'AFECTA_STOCK'
      Origin = 'DBMAIN.TRANDET.AFECTA_STOCK'
      Size = 1
    end
    object QTranDetCON_NRO_SERIE: TStringField
      DisplayWidth = 1
      FieldName = 'CON_NRO_SERIE'
      Size = 1
    end
    object QTranDetESTADO: TStringField
      DisplayWidth = 1
      FieldName = 'ESTADO'
      Origin = 'DBMAIN.TRANDET.ESTADO'
      FixedChar = True
      Size = 1
    end
    object QTranDetCANTIDAD: TFMTBCDField
      FieldName = 'CANTIDAD'
      Precision = 15
      Size = 3
    end
    object QTranDetPRECIO: TFMTBCDField
      FieldName = 'PRECIO'
      Precision = 15
      Size = 3
    end
    object QTranDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QTranDetPRECIO_TOTAL: TFMTBCDField
      FieldName = 'PRECIO_TOTAL'
      Precision = 15
      Size = 3
    end
    object QTranDetCOSTO: TFMTBCDField
      FieldName = 'COSTO'
      Precision = 15
      Size = 3
    end
    object QTranDetCOSTO_TOTAL: TFMTBCDField
      FieldName = 'COSTO_TOTAL'
      Precision = 15
      Size = 3
    end
  end
  object QTraerPrecio: TSQLQuery
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
      
        'select (la.precio+la.precio_exento) as PrecioConIva,la.precio_gr' +
        'avado,la.recargo from listaprecioespecialart la'
      'where la.codigoarticulo=:articulo and la.id_cab=:lista')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 569
    Top = 85
    object QTraerPrecioPRECIOCONIVA: TFloatField
      FieldName = 'PRECIOCONIVA'
    end
    object QTraerPrecioPRECIO_GRAVADO: TFMTBCDField
      FieldName = 'PRECIO_GRAVADO'
      Precision = 15
      Size = 3
    end
    object QTraerPrecioRECARGO: TFMTBCDField
      FieldName = 'RECARGO'
      Precision = 15
      Size = 3
    end
  end
  object spUltimaUnidad: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Precision = 3
        Name = 'UNIDAD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 8
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = ServerContainer.GestionPtoVta
    StoredProcName = 'ULTIMA_UNIDAD_USADA'
    Left = 833
    Top = 214
  end
  object QUltimoCodigo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 38
    Top = 344
  end
  object QTranCab: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select tr.*,'
      '  cp.denominacion as MuestraComprobante,'
      '  s.detalle as MuestraSucursal,'
      '  cp.id_comprobante as Id_tipoComprobante,'
      '  fc.nrocpbte as MuestraFactura,'
      '  fc.tipocpbte as MuestraTipoFc,'
      '  fc.clasecpbte as MuestraClaseFc,'
      '  ds.sucursal as MuestraSucDestino from trancab tr'
      'left join sucursal s on s.codigo=tr.sucursal'
      'left join fcvtacab fc on fc.id_fc=tr.id_factura_franquicia'
      'left join depositos ds on ds.id=tr.deposito_destino'
      'left join comprobantes cp on cp.clase_comprob=tr.ClaseCpbte and'
      '          cp.letra=tr.Letratr and'
      '          cp.sucursal=tr.sucursal and'
      '          cp.tipo_comprob=tr.tipocpbte'
      'where tr.id_trcab=:id'
      '')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 38
    Top = 5
    object QTranCabID_TRCAB: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_TRCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QTranCabTIPOCPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QTranCabCLASECPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QTranCabDEPOSITO_ORIGEN: TIntegerField
      DisplayWidth = 10
      FieldName = 'DEPOSITO_ORIGEN'
    end
    object QTranCabDEPOSITO_DESTINO: TIntegerField
      DisplayWidth = 10
      FieldName = 'DEPOSITO_DESTINO'
    end
    object QTranCabLETRATR: TStringField
      DisplayWidth = 1
      FieldName = 'LETRATR'
      Size = 1
    end
    object QTranCabSUCTR: TStringField
      DisplayWidth = 4
      FieldName = 'SUCTR'
      Size = 4
    end
    object QTranCabNUMEROTR: TStringField
      DisplayWidth = 8
      FieldName = 'NUMEROTR'
      Size = 8
    end
    object QTranCabNROCPBTE: TStringField
      DisplayWidth = 13
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QTranCabSUCURSAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'SUCURSAL'
    end
    object QTranCabMUESTRACOMPROBANTE: TStringField
      DisplayWidth = 15
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object QTranCabMUESTRASUCURSAL: TStringField
      DisplayWidth = 35
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object QTranCabNOMBRE_DEPOSITO_ORIGEN: TStringField
      DisplayWidth = 25
      FieldName = 'NOMBRE_DEPOSITO_ORIGEN'
      Size = 25
    end
    object QTranCabNOMBRE_DEPOSITO_DESTINO: TStringField
      DisplayWidth = 25
      FieldName = 'NOMBRE_DEPOSITO_DESTINO'
      Size = 25
    end
    object QTranCabOBS1: TStringField
      DisplayWidth = 100
      FieldName = 'OBS1'
      Size = 100
    end
    object QTranCabOBS2: TStringField
      DisplayWidth = 100
      FieldName = 'OBS2'
      Size = 100
    end
    object QTranCabID_TIPOCOMPROBANTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
    end
    object QTranCabUSUARIO: TStringField
      DisplayWidth = 50
      FieldName = 'USUARIO'
      Size = 50
    end
    object QTranCabESTADO: TStringField
      DisplayWidth = 1
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object QTranCabRECIBIDO_POR: TStringField
      DisplayWidth = 50
      FieldName = 'RECIBIDO_POR'
      Size = 50
    end
    object QTranCabLISTAPRECIO: TIntegerField
      DisplayWidth = 10
      FieldName = 'LISTAPRECIO'
    end
    object QTranCabNOTA_TX_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'NOTA_TX_ID'
    end
    object QTranCabNOTA_TX_NUMERO: TStringField
      DisplayWidth = 13
      FieldName = 'NOTA_TX_NUMERO'
      Size = 13
    end
    object QTranCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object QTranCabTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 15
      Size = 3
    end
    object QTranCabCOSTO_TOTAL: TFMTBCDField
      FieldName = 'COSTO_TOTAL'
      Precision = 15
      Size = 3
    end
    object QTranCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object QTranCabFECHA_RECECION: TSQLTimeStampField
      FieldName = 'FECHA_RECECION'
    end
    object QTranCabID_FACTURA_FRANQUICIA: TIntegerField
      FieldName = 'ID_FACTURA_FRANQUICIA'
      Required = True
    end
    object QTranCabMUESTRAFACTURA: TStringField
      FieldName = 'MUESTRAFACTURA'
      ProviderFlags = []
      Size = 13
    end
    object QTranCabMUESTRATIPOFC: TStringField
      FieldName = 'MUESTRATIPOFC'
      ProviderFlags = []
      Size = 2
    end
    object QTranCabMUESTRACLASEFC: TStringField
      FieldName = 'MUESTRACLASEFC'
      ProviderFlags = []
      Size = 2
    end
    object QTranCabMUESTRASUCDESTINO: TIntegerField
      FieldName = 'MUESTRASUCDESTINO'
      ProviderFlags = []
    end
  end
  object QTranSubDetalle: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * from transubdet where Id_Cabtra= :id')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 38
    Top = 101
    object QTranSubDetalleID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QTranSubDetalleID_DETTRA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_DETTRA'
    end
    object QTranSubDetalleID_CABTRA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CABTRA'
    end
    object QTranSubDetalleTIPOCPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QTranSubDetalleCLASECPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QTranSubDetalleNROCPBTE: TStringField
      DisplayWidth = 13
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QTranSubDetalleCODIGOARTICULO: TStringField
      DisplayWidth = 8
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object QTranSubDetalleSERIE: TStringField
      DisplayWidth = 50
      FieldName = 'SERIE'
      Size = 50
    end
    object QTranSubDetalleDEPOSITO: TIntegerField
      DisplayWidth = 10
      FieldName = 'DEPOSITO'
    end
    object QTranSubDetalleDEPOSITOORIGEN: TIntegerField
      DisplayWidth = 10
      FieldName = 'DEPOSITOORIGEN'
    end
    object QTranSubDetalleFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
  end
  object QControlCpbteExistente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'clase'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'letra'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'suc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'numero'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select rc.id_trcab from trancab rc'
      'where rc.tipocpbte = :tipo and'
      '      rc.clasecpbte = :clase and'
      '      rc.letratr = :letra and'
      '      rc.suctr = :suc and'
      '      rc.numerotr = :numero and'
      '      rc.sucursal = :sucursal')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 328
    Top = 117
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
      'select la.recargo from listaprecioespecialart la'
      'where la.codigoarticulo=:articulo and la.id_cab=:lista')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 569
    Top = 149
    object QTraerRecargoDeListaRECARGO: TFMTBCDField
      FieldName = 'RECARGO'
      Precision = 15
      Size = 3
    end
  end
  object QListaPrecios: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'uso'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select id,nombre,f_pago from  listaprecioespecialcab'
      ' where uso_administrador<>:uso')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 321
    Top = 221
    object QListaPreciosID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
    end
    object QListaPreciosNOMBRE: TStringField
      DisplayWidth = 50
      FieldName = 'NOMBRE'
      Size = 50
    end
    object QListaPreciosF_PAGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'F_PAGO'
    end
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
      'update trancab r set r.fecha= :FechaNueva where r.id_trcab= :id')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 569
    Top = 376
  end
  object QCambiarFechaRec: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'FechaNueva'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'update trancab r set r.fecha_rececion= :FechaNueva where r.id_tr' +
        'cab= :id')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 569
    Top = 312
  end
  object spConfirmar: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Precision = 1
        Name = 'ESTADO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID_TRANSFERENCIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 50
        Name = 'USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 8
        Name = 'FECHA'
        ParamType = ptInput
      end>
    SQLConnection = ServerContainer.GestionPtoVta
    StoredProcName = 'APLICA_ESTADO_TRANSF_STOCK'
    Left = 833
    Top = 304
  end
  object QDepositoStk: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo_deposito'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from DepositoStk  where'
      '(Codigo_Deposito=:codigo_deposito) AND (Codigo_stk=:Codigo)')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 569
    Top = 32
    object QDepositoStkID_DEPOSITO: TIntegerField
      FieldName = 'ID_DEPOSITO'
      Required = True
    end
    object QDepositoStkCODIGO_DEPOSITO: TIntegerField
      FieldName = 'CODIGO_DEPOSITO'
      Required = True
    end
    object QDepositoStkCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object QDepositoStkSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object QDepositoStkINICIAL: TFMTBCDField
      FieldName = 'INICIAL'
      Precision = 15
      Size = 3
    end
    object QDepositoStkMINIMO: TFMTBCDField
      FieldName = 'MINIMO'
      Precision = 15
      Size = 3
    end
    object QDepositoStkMEDIO: TFMTBCDField
      FieldName = 'MEDIO'
      Precision = 15
      Size = 3
    end
    object QDepositoStkFISICO: TFMTBCDField
      FieldName = 'FISICO'
      Precision = 15
      Size = 3
    end
    object QDepositoStkRECARGO: TFMTBCDField
      FieldName = 'RECARGO'
      Required = True
      Precision = 15
      Size = 3
    end
    object QDepositoStkFUAPRECIOS: TSQLTimeStampField
      FieldName = 'FUAPRECIOS'
    end
  end
  object QCompPrimero: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select Max(id_comprobante) from comprobantes '
      'where  compra_venta='#39'V'#39' and tipo_comprob='#39'TX'#39
      'and sucursal=:suc')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 328
    Top = 16
  end
  object QCompDefecto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select id_comprobante from comprobantes '
      'where  compra_venta='#39'V'#39' and tipo_comprob='#39'TX'#39
      'and sucursal=:suc'
      'and defecto='#39'S'#39)
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 328
    Top = 64
    object QCompDefectoID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
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
      'id_comprobante=:id '
      'and sucursal=:suc '
      'and compra_venta='#39'V'#39' '
      'and tipo_comprob='#39'TX'#39)
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 328
    Top = 168
    object QComprobID_COMPROBANTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_COMPROBANTE'
      Origin = 'DBMAIN.COMPROBANTES.ID_COMPROBANTE'
    end
    object QComprobTIPO_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'TIPO_COMPROB'
      Origin = 'DBMAIN.COMPROBANTES.TIPO_COMPROB'
      Size = 2
    end
    object QComprobCLASE_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'CLASE_COMPROB'
      Origin = 'DBMAIN.COMPROBANTES.CLASE_COMPROB'
      Size = 2
    end
    object QComprobDENOMINACION: TStringField
      DisplayWidth = 15
      FieldName = 'DENOMINACION'
      Origin = 'DBMAIN.COMPROBANTES.DENOMINACION'
      Size = 15
    end
    object QComprobSUCURSAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'SUCURSAL'
      Origin = 'DBMAIN.COMPROBANTES.SUCURSAL'
    end
    object QComprobLETRA: TStringField
      DisplayWidth = 1
      FieldName = 'LETRA'
      Origin = 'DBMAIN.COMPROBANTES.LETRA'
      Size = 1
    end
    object QComprobPREFIJO: TStringField
      DisplayWidth = 4
      FieldName = 'PREFIJO'
      Origin = 'DBMAIN.COMPROBANTES.PREFIJO'
      Size = 4
    end
    object QComprobNUMERO: TStringField
      DisplayWidth = 8
      FieldName = 'NUMERO'
      Origin = 'DBMAIN.COMPROBANTES.NUMERO'
      Size = 8
    end
    object QComprobNUMERARCION_PROPIA: TStringField
      DisplayWidth = 1
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'DBMAIN.COMPROBANTES.NUMERARCION_PROPIA'
      Size = 1
    end
    object QComprobTOMA_NRO_DE: TIntegerField
      DisplayWidth = 10
      FieldName = 'TOMA_NRO_DE'
      Origin = 'DBMAIN.COMPROBANTES.TOMA_NRO_DE'
    end
    object QComprobAFECTA_IVA: TStringField
      DisplayWidth = 1
      FieldName = 'AFECTA_IVA'
      Origin = 'DBMAIN.COMPROBANTES.AFECTA_IVA'
      Size = 1
    end
    object QComprobAFECTA_CC: TStringField
      DisplayWidth = 1
      FieldName = 'AFECTA_CC'
      Origin = 'DBMAIN.COMPROBANTES.AFECTA_CC'
      Size = 1
    end
    object QComprobDESGLOZA_IVA: TStringField
      DisplayWidth = 1
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DBMAIN.COMPROBANTES.DESGLOZA_IVA'
      Size = 1
    end
    object QComprobCOMPRA_VENTA: TStringField
      DisplayWidth = 1
      FieldName = 'COMPRA_VENTA'
      Origin = 'DBMAIN.COMPROBANTES.COMPRA_VENTA'
      Size = 1
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
    object QComprobIMPRIME: TStringField
      DisplayWidth = 1
      FieldName = 'IMPRIME'
      Origin = 'DBMAIN.COMPROBANTES.IMPRIME'
      Size = 1
    end
    object QComprobLINEAS_DETALLE: TSmallintField
      DisplayWidth = 10
      FieldName = 'LINEAS_DETALLE'
      Origin = 'DBMAIN.COMPROBANTES.LINEAS_DETALLE'
    end
  end
  object QBrowse: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tabla'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dato'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select min(:id) from :tabla where :id > :dato')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 38
    Top = 296
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
      'where  compra_venta='#39'V'#39' and tipo_comprob='#39'TX'#39
      'and sucursal=:suc')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 38
    Top = 152
  end
  object DSPDeposito: TDataSetProvider
    DataSet = QDeposito
    Left = 124
    Top = 212
  end
  object DSPBuscaComprob: TDataSetProvider
    DataSet = QBuscaComprob
    Left = 124
    Top = 160
  end
  object DSPTranCab: TDataSetProvider
    DataSet = QTranCab
    UpdateMode = upWhereKeyOnly
    Left = 124
    Top = 10
  end
  object DSPTranDet: TDataSetProvider
    DataSet = QTranDet
    UpdateMode = upWhereKeyOnly
    Left = 124
    Top = 56
  end
  object DSPTranSubDet: TDataSetProvider
    DataSet = QTranSubDetalle
    UpdateMode = upWhereKeyOnly
    Left = 124
    Top = 105
  end
  object DSPStock: TDataSetProvider
    DataSet = QStock
    Left = 128
    Top = 406
  end
  object DSPSucursal: TDataSetProvider
    DataSet = QSucursal
    Options = [poAllowCommandText]
    Left = 130
    Top = 462
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = QBuscaSucursal
    Left = 128
    Top = 521
  end
  object DSPBuscaDeposito: TDataSetProvider
    DataSet = QBuscaDeposito
    Left = 124
    Top = 257
  end
  object DSPListaPrecios: TDataSetProvider
    DataSet = QListaPrecios
    Left = 416
    Top = 224
  end
  object DSPExistencia: TDataSetProvider
    DataSet = QExistencia
    Left = 664
    Top = 232
  end
  object ibgTranCab: TIBGenerator
    DatabaseIBX = ServerContainer.GestionPtoVta
    GeneratorName = 'NEXT_ID_TRAN_CAB'
    SystemGenerators = False
    Left = 224
    Top = 10
  end
  object ibgTranDet: TIBGenerator
    DatabaseIBX = ServerContainer.GestionPtoVta
    GeneratorName = 'NEXT_ID_TRAN_DET'
    SystemGenerators = False
    Left = 224
    Top = 64
  end
  object IBGTranSubDet: TIBGenerator
    DatabaseIBX = ServerContainer.GestionPtoVta
    GeneratorName = 'NEXT_ID_TRANSUBDET'
    SystemGenerators = False
    Left = 224
    Top = 121
  end
  object QDeposito: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select d.* from depositos d where d.id = :id')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 38
    Top = 200
  end
  object QBuscaDeposito: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select d.* from depositos d order by d.nombre')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 38
    Top = 248
  end
  object DSPBrowse: TDataSetProvider
    DataSet = QBrowse
    Left = 124
    Top = 304
  end
  object DSPUltimoCodigo: TDataSetProvider
    DataSet = QUltimoCodigo
    Left = 124
    Top = 352
  end
  object QStock: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
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
      '      ib.tasa as MuestraTasaIB,'
      '      tpc.detalle as MuestraTablaPrecioDetalle,'
      '      tpd.precio1 as MuestraTablaPrecio1,'
      '      tpd.precio1 as MuestraTablaPrecio2'
      '      from stock s'
      
        '      left join tabla_precioscab tpc on tpc.id = s.id_tablapreci' +
        'os'
      
        '      left join tabla_preciosdet tpd on tpd.id = s.id_tablapreci' +
        'osdetalle'
      '      left join rubros ru on s.rubro_stk = ru.Codigo_rubro'
      
        '      left join subrubros sub on s.subrubro_stk = sub.Codigo_sub' +
        'rubro'
      '      left join marcas m on s.marca_stk = m.marca_stk'
      '      left join gravamen ta on s.tasa_iva = ta.codigo'
      '      left join gravamen Sta on s.Sobretasa_iva = Sta.codigo'
      '      left join percepib ib on s.tasa_ib = ib.codigo'
      'where S.Codigo_Stk = :codigo')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 40
    Top = 400
  end
  object QSucursal: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from sucursal where codigo = :codigo')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 40
    Top = 456
  end
  object QBuscaSucursal: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select codigo,detalle from sucursal ')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 40
    Top = 512
  end
  object DSPDepositoStk: TDataSetProvider
    DataSet = QDepositoStk
    Left = 664
    Top = 32
  end
  object DSPComprob: TDataSetProvider
    DataSet = QComprob
    Left = 416
    Top = 168
  end
  object DSPControlCpbteExistente: TDataSetProvider
    DataSet = QControlCpbteExistente
    Left = 416
    Top = 120
  end
  object DSPCompDefecto: TDataSetProvider
    DataSet = QCompDefecto
    Left = 416
    Top = 64
  end
  object DSPCompPrimmero: TDataSetProvider
    DataSet = QCompPrimero
    Left = 424
    Top = 16
  end
  object DSPTraerPrecio: TDataSetProvider
    DataSet = QTraerPrecio
    Left = 664
    Top = 96
  end
  object DSPTraerRecargoDeLista: TDataSetProvider
    DataSet = QTraerRecargoDeLista
    Left = 656
    Top = 152
  end
  object QExistencia: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'unidad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'fisico'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'fisico'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'usuario'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select codigo_stk,detalle_stk,fisico,comprometido,'
      '       fisico-comprometido-en_transito as Saldo,'
      '       deposito_stk,en_transito,deposito_nombre'
      'from existencia_stk_unitario (:unidad,:codigo)'
      
        'where ((fisico-comprometido-en_transito <> :fisico ) or ( :fisic' +
        'o = 1 ))'
      
        'and  existencia_stk_unitario.deposito_stk in (select u.deposito ' +
        'from deposito_usuario u where u.id_usuario = :usuario)'
      'order by deposito_stk')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 568
    Top = 232
  end
  object QMovTX: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'deposito'
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
      
        'select mov.id_mov,mov.codigo_articulo,mov.fecha,mov.tipooperacio' +
        'n,'
      'mov.tipocpbte,mov.clasecpbte,mov.nrocpbte,mov.detalle,mov.entra,'
      
        'mov.sale,s.detalle_stk,(s.fijacion_precio_total/s.contenido_comp' +
        'ra) as fijacion_precio_total,'
      
        's.unidad,s.contenido_compra,mov.deposito as MuestraCodigoDeposit' +
        'o,'
      'dep.nombre as MuestranombreDepo,'
      
        'tr.deposito_origen,tr.deposito_destino,tr.nombre_deposito_destin' +
        'o,tr.nombre_deposito_origen,'
      'tr.fecha_rececion,mov.id_cpbte,'
      
        'tr.fecha_hora,tr.recibido_por,tr.usuario,((s.fijacion_precio_tot' +
        'al/s.contenido_compra)*(mov.sale+mov.entra)) as CostoToal from m' +
        'ov_stock mov'
      'left join  stock s on s.codigo_stk=mov.codigo_articulo'
      'left join depositos dep on dep.id=mov.deposito'
      'left join trancab tr on tr.id_trcab=mov.id_cpbte'
      'where mov.deposito=:deposito and'
      'mov.fecha>=:desde and mov.fecha<=:hasta'
      'and mov.tipooperacion='#39'X'#39
      'order by s.detalle_stk')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 568
    Top = 440
  end
  object DSPMovTx: TDataSetProvider
    DataSet = QMovTX
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 640
    Top = 440
  end
end
