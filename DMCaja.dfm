object DatosCaja: TDatosCaja
  OnDestroy = DataModuleDestroy
  Height = 771
  Width = 1005
  object DSPCajaCab: TDataSetProvider
    DataSet = QCajaCab
    Options = [poAllowCommandText]
    Left = 104
    Top = 16
  end
  object CDSCajaCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DSPCajaCab'
    Left = 168
    Top = 16
    object CDSCajaCabNUMEROCAJA: TIntegerField
      DisplayLabel = 'Nro.de Caja'
      FieldName = 'NUMEROCAJA'
      Origin = 'NUMEROCAJA'
    end
    object CDSCajaCabMUESTRACTACAJA: TStringField
      DisplayLabel = 'Detalle Cta de Caja'
      FieldName = 'MUESTRACTACAJA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSCajaCabID_CAJA: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCajaCabID_CUENTA_CAJA: TIntegerField
      DisplayLabel = 'Id Cta Caja'
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
    object CDSCajaCabSALDO_INCIAL: TFloatField
      DisplayLabel = 'Saldo Incial'
      FieldName = 'SALDO_INCIAL'
      Origin = 'SALDO_INCIAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCajaCabESTADO: TIntegerField
      DisplayLabel = 'Estado'
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
    end
    object CDSCajaCabOBS: TMemoField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object CDSCajaCabFECHA_INCIO: TSQLTimeStampField
      DisplayLabel = 'F.de Incio'
      DisplayWidth = 10
      FieldName = 'FECHA_INCIO'
      Origin = 'FECHA_INCIO'
      Required = True
    end
    object CDSCajaCabFECHA_CIERRE: TSQLTimeStampField
      DisplayLabel = 'F.de Cierre'
      DisplayWidth = 10
      FieldName = 'FECHA_CIERRE'
      Origin = 'FECHA_CIERRE'
    end
  end
  object DSCajaCab: TDataSource
    DataSet = CDSCajaCab
    Left = 236
    Top = 16
  end
  object DSRetenciones: TDataSource
    DataSet = CDSRetenciones
    Left = 236
    Top = 136
  end
  object DSDepositos: TDataSource
    DataSet = CDSDepositos
    Left = 236
    Top = 80
  end
  object DSSaldosTC: TDataSource
    DataSet = CDSSaldosTC
    Left = 236
    Top = 192
  end
  object DSSaldoFinal: TDataSource
    DataSet = CDSSaldoFinal
    Left = 236
    Top = 256
  end
  object DSChe3Recibidos: TDataSource
    DataSet = CDSChe3Recibidos
    Left = 236
    Top = 320
  end
  object DSPCheques: TDataSetProvider
    DataSet = QCheques
    Options = []
    Left = 572
    Top = 320
  end
  object DSPCajaDetIngresos: TDataSetProvider
    DataSet = QCajadet
    Options = []
    Left = 568
    Top = 224
  end
  object DSPCajaDetEgresos: TDataSetProvider
    DataSet = QCajadet
    Options = []
    Left = 568
    Top = 168
  end
  object DSPChe3Recibidos: TDataSetProvider
    DataSet = QChe3Recibidos
    Options = [poAllowCommandText]
    Left = 104
    Top = 320
  end
  object DSFPago: TDataSource
    DataSet = CDSFPago
    Left = 720
    Top = 16
  end
  object DSEfectivo: TDataSource
    DataSet = CDSEfectivo
    Left = 720
    Top = 112
  end
  object DSValores: TDataSource
    DataSet = CDSValores
    Left = 720
    Top = 64
  end
  object DSTxGeneradas: TDataSource
    DataSet = CDSTxGeneradas
    Left = 236
    Top = 432
  end
  object DSTxRecibidas: TDataSource
    DataSet = CDSTxRecibidas
    Left = 236
    Top = 376
  end
  object DSChe3Entregado: TDataSource
    DataSet = CDSChe3Entrgado
    Left = 740
    Top = 376
  end
  object DSCheques: TDataSource
    DataSet = CDSCheques
    Left = 740
    Top = 320
  end
  object DSPChe3Entregado: TDataSetProvider
    DataSet = QChe3Entregado
    Options = []
    Left = 572
    Top = 376
  end
  object DSDebitos: TDataSource
    DataSet = CDSDebitos
    Left = 236
    Top = 480
  end
  object DSMovTCCompra: TDataSource
    DataSet = CDSMovTCCompra
    Left = 748
    Top = 432
  end
  object DSMovTCVenta: TDataSource
    DataSet = CDSMovTCVenta
    Left = 748
    Top = 480
  end
  object CDSDepositos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'idcaja'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDepositos'
    Left = 168
    Top = 80
    object CDSDepositosID_MOV_CAJA: TIntegerField
      DisplayLabel = 'Id Mov caja'
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDepositosID_CAJA: TIntegerField
      DisplayLabel = 'Id Caja'
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      Required = True
    end
    object CDSDepositosTIPO_OPERACION: TStringField
      DisplayLabel = 'Tp.Op'
      FieldName = 'TIPO_OPERACION'
      Origin = 'TIPO_OPERACION'
      Size = 1
    end
    object CDSDepositosTIPO_COMPROB: TStringField
      DisplayLabel = 'Tc'
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSDepositosCLASE_COMPROB: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Size = 2
    end
    object CDSDepositosID_COMPROBANTE: TIntegerField
      DisplayLabel = 'Ic Cpbte.'
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSDepositosNRO_COMPROBANTE: TStringField
      DisplayLabel = 'NroCpbte'
      FieldName = 'NRO_COMPROBANTE'
      Origin = 'NRO_COMPROBANTE'
      Required = True
      Size = 13
    end
    object CDSDepositosID_TPAGO: TIntegerField
      DisplayLabel = 'T.PAgo'
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      Required = True
    end
    object CDSDepositosID_FPAGO: TIntegerField
      DisplayLabel = 'F.Pago'
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      Required = True
    end
    object CDSDepositosID_CUENTA_CAJA: TIntegerField
      DisplayLabel = 'Id.Cta Caja'
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
    end
    object CDSDepositosMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object CDSDepositosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = []
    end
    object CDSDepositosID_CTA_CAJA: TIntegerField
      FieldName = 'ID_CTA_CAJA'
      Origin = 'ID_CTA_CAJA'
      ProviderFlags = []
    end
    object CDSDepositosFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSDepositosNUMERO: TStringField
      DisplayLabel = 'Nro.Dep.'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      Size = 13
    end
    object CDSDepositosEFEC_CHEQ: TStringField
      DisplayLabel = 'E/C'
      FieldName = 'EFEC_CHEQ'
      Origin = 'EFEC_CHEQ'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CDSDepositosOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      ProviderFlags = []
      Size = 50
    end
    object CDSDepositosMUESTRACTA: TStringField
      DisplayLabel = 'Cuenta'
      FieldName = 'MUESTRACTA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSDepositosNUEMROCHE: TIntegerField
      DisplayLabel = 'Nr.Che'
      FieldName = 'NUEMROCHE'
      Origin = 'NUMERO'
      ProviderFlags = []
    end
    object CDSDepositosMUESTRAORIGEN: TStringField
      DisplayLabel = 'Origne'
      FieldName = 'MUESTRAORIGEN'
      Origin = 'ORIGEN'
      ProviderFlags = []
      Size = 30
    end
    object CDSDepositosHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDepositosDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDepositosSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSDepositosUNIDADES: TFloatField
      DisplayLabel = 'Unid.'
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDepositosCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object CDSDepositosIMPORTE: TFloatField
      DisplayLabel = 'Imprte'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDepositosFECHA_CAJA: TSQLTimeStampField
      DisplayLabel = 'Fecha Caja'
      FieldName = 'FECHA_CAJA'
      Origin = 'FECHA_CAJA'
    end
    object CDSDepositosFECHA_OPERACION: TSQLTimeStampField
      DisplayLabel = 'Fecha Op.'
      FieldName = 'FECHA_OPERACION'
      Origin = 'FECHA_OPERACION'
    end
  end
  object DSPDepositos: TDataSetProvider
    DataSet = QDepositos
    Options = [poAllowCommandText]
    Left = 104
    Top = 80
  end
  object CDSRetenciones: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'idcaja'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRetenciones'
    Left = 168
    Top = 136
    object CDSRetencionesIDRETENCION: TIntegerField
      FieldName = 'IDRETENCION'
      Origin = 'IDRETENCION'
    end
    object CDSRetencionesDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSRetencionesTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSRetencionesCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSRetencionesNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSRetencionesNRO_RETENCION: TStringField
      FieldName = 'NRO_RETENCION'
      Origin = 'NRO_RETENCION'
    end
    object CDSRetencionesIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object CDSRetencionesCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 35
    end
    object CDSRetencionesFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
    object CDSRetencionesFECHARETENCION: TSQLTimeStampField
      DisplayLabel = 'Fecha Ret.'
      FieldName = 'FECHARETENCION'
    end
  end
  object DSPRetenciones: TDataSetProvider
    DataSet = QRetenciones
    Options = [poAllowCommandText]
    Left = 104
    Top = 136
  end
  object CDSSaldosTC: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSaldosTC'
    Left = 168
    Top = 192
    object CDSSaldosTCMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
    end
    object CDSSaldosTCSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSSaldosTCDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSSaldosTCHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSSaldosTCFPAGO: TSmallintField
      FieldName = 'FPAGO'
      Origin = 'FPAGO'
    end
    object CDSSaldosTCTPAGO: TSmallintField
      FieldName = 'TPAGO'
      Origin = 'TPAGO'
    end
    object CDSSaldosTCCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object CDSSaldosTCDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSSaldosTCDISPONIBILIDAD: TFloatField
      FieldName = 'DISPONIBILIDAD'
      Origin = 'DISPONIBILIDAD'
    end
  end
  object DSPSaldosTC: TDataSetProvider
    DataSet = QSaldosTC
    Options = [poAllowCommandText]
    Left = 104
    Top = 192
  end
  object CDSSaldoFinal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSaldoFinal'
    Left = 168
    Top = 256
    object CDSSaldoFinalMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
    end
    object CDSSaldoFinalSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSSaldoFinalDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSSaldoFinalHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSSaldoFinalFPAGO: TSmallintField
      FieldName = 'FPAGO'
      Origin = 'FPAGO'
    end
    object CDSSaldoFinalTPAGO: TSmallintField
      FieldName = 'TPAGO'
      Origin = 'TPAGO'
    end
    object CDSSaldoFinalCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object CDSSaldoFinalDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSSaldoFinalDISPONIBILIDAD: TFloatField
      FieldName = 'DISPONIBILIDAD'
      Origin = 'DISPONIBILIDAD'
    end
  end
  object DSPSaldoFinal: TDataSetProvider
    DataSet = QSaldoFinal
    Options = [poAllowCommandText]
    Left = 104
    Top = 256
  end
  object CDSChe3Recibidos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_caja'
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
    ProviderName = 'DSPChe3Recibidos'
    Left = 168
    Top = 320
    object CDSChe3RecibidosID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSChe3RecibidosNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
    end
    object CDSChe3RecibidosMUESTRABANCO: TStringField
      FieldName = 'MUESTRABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
    end
    object CDSChe3RecibidosORIGEN: TStringField
      FieldName = 'ORIGEN'
      Origin = 'ORIGEN'
      ProviderFlags = []
      Size = 30
    end
    object CDSChe3RecibidosDESTINO: TStringField
      FieldName = 'DESTINO'
      Origin = 'DESTINO'
      ProviderFlags = []
      Size = 30
    end
    object CDSChe3RecibidosIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSChe3RecibidosFECHA_COBRO: TSQLTimeStampField
      DisplayLabel = 'Fecha Cobro'
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object CDSTxRecibidas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_caja'
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
    ProviderName = 'DSPTxRecibidas'
    Left = 168
    Top = 376
    object CDSTxRecibidasFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Required = True
    end
    object CDSTxRecibidasORIGEN: TStringField
      FieldName = 'ORIGEN'
      Origin = 'ORIGEN'
      Size = 30
    end
    object CDSTxRecibidasMUESTRABANCO: TStringField
      FieldName = 'MUESTRABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSTxRecibidasNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object CDSTxRecibidasIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;,0.00;-'
    end
  end
  object DSPTxRecibidas: TDataSetProvider
    DataSet = QTxRecibidas
    Options = [poAllowCommandText]
    Left = 104
    Top = 376
  end
  object CDSTxGeneradas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_caja'
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
    ProviderName = 'DSPTxGeneradas'
    Left = 168
    Top = 432
    object CDSTxGeneradasFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Required = True
    end
    object CDSTxGeneradasNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object CDSTxGeneradasORIGEN: TStringField
      FieldName = 'ORIGEN'
      Origin = 'ORIGEN'
      Size = 30
    end
    object CDSTxGeneradasMUESTRABANCO: TStringField
      FieldName = 'MUESTRABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSTxGeneradasIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;,0.00;-'
    end
  end
  object DSPTxGeneradas: TDataSetProvider
    DataSet = QTxGeneradas
    Options = [poAllowCommandText]
    Left = 104
    Top = 432
  end
  object CDSDebitos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_caja'
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
    ProviderName = 'DSPDebitos'
    Left = 168
    Top = 488
    object CDSDebitosNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object CDSDebitosORIGEN: TStringField
      FieldName = 'ORIGEN'
      Origin = 'ORIGEN'
      Size = 30
    end
    object CDSDebitosMUESTRABANCO: TStringField
      FieldName = 'MUESTRABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSDebitosIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDebitosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
  end
  object DSPDebitos: TDataSetProvider
    DataSet = QDebitos
    Options = [poAllowCommandText]
    Left = 104
    Top = 488
  end
  object CDSFPago: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPFPago'
    Left = 648
    Top = 16
    object CDSFPagoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSFPagoID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      Required = True
    end
    object CDSFPagoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
    end
    object CDSFPagoSIGNO: TStringField
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      Size = 5
    end
    object CDSFPagoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object CDSFPagoCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      Required = True
    end
    object CDSFPagoACUMULABLE: TStringField
      FieldName = 'ACUMULABLE'
      Origin = 'ACUMULABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPFPago: TDataSetProvider
    DataSet = QFPago
    Options = []
    Left = 576
    Top = 16
  end
  object CDSValores: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_fpago'
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
    ProviderName = 'DSPValores'
    Left = 648
    Top = 64
    object CDSValoresFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
    object CDSValoresTIPO_CPBTE: TStringField
      DisplayLabel = 'Tp.Cpb.'
      FieldName = 'TIPO_CPBTE'
      Origin = 'TIPO_CPBTE'
      Size = 2
    end
    object CDSValoresNRO_CPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NRO_CPBTE'
      Origin = 'NRO_CPBTE'
      EditMask = 'a-0000-00000000;0;_'
      Size = 13
    end
    object CDSValoresNOMBRE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 100
    end
    object CDSValoresSIGNO: TStringField
      DisplayLabel = '#'
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      Size = 5
    end
    object CDSValoresDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = '0.00'
    end
    object CDSValoresHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = '0.00'
    end
    object CDSValoresSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = '0.00'
    end
  end
  object DSPValores: TDataSetProvider
    DataSet = QValores
    Options = []
    Left = 576
    Top = 64
  end
  object CDSEfectivo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'idcaja'
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
    ProviderName = 'DSPEfectivo'
    Left = 648
    Top = 112
    object CDSEfectivoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSEfectivoTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Size = 2
    end
    object CDSEfectivoCLASE_COMPRO: TStringField
      FieldName = 'CLASE_COMPRO'
      Origin = 'CLASE_COMPRO'
      Size = 2
    end
    object CDSEfectivoNROCOMPROB: TStringField
      FieldName = 'NROCOMPROB'
      Origin = 'NROCOMPROB'
      EditMask = 'a-0000-00000000;0;_'
      Size = 13
    end
    object CDSEfectivoID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
    end
    object CDSEfectivoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
    end
    object CDSEfectivoMUESTRAFPAGO: TStringField
      FieldName = 'MUESTRAFPAGO'
      Origin = 'MUESTRAFPAGO'
    end
    object CDSEfectivoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 15
    end
    object CDSEfectivoNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 100
    end
    object CDSEfectivoSIGNO: TStringField
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      Size = 5
    end
    object CDSEfectivoDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;0'
    end
    object CDSEfectivoHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;-,0.00;0'
    end
    object CDSEfectivoCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object CDSEfectivoUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
    end
  end
  object DSPEfectivo: TDataSetProvider
    DataSet = QEfectivo
    Options = []
    Left = 568
    Top = 120
  end
  object CDSCajaDetEgresos: TClientDataSet
    Aggregates = <>
    Filter = 'Tipo_Operacion='#39'E'#39' and tipo_cpbte<>'#39'CC'#39
    Filtered = True
    PacketRecords = 4
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
    ProviderName = 'DSPCajaDetEgresos'
    Left = 648
    Top = 168
    object CDSCajaDetEgresosID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
    end
    object CDSCajaDetEgresosNRO_CPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NRO_CPBTE'
      Origin = 'NRO_CPBTE'
      Size = 13
    end
    object CDSCajaDetEgresosTIPO_CPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tp'
      FieldName = 'TIPO_CPBTE'
      Origin = 'TIPO_CPBTE'
      Size = 2
    end
    object CDSCajaDetEgresosCLASE_CPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Cl'
      FieldName = 'CLASE_CPBTE'
      Origin = 'CLASE_CPBTE'
      Size = 2
    end
    object CDSCajaDetEgresosDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object CDSCajaDetEgresosDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00;-,0.00;-'
    end
    object CDSCajaDetEgresosHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00;-,0.00;-'
    end
    object CDSCajaDetEgresosTIPO_OPERACION: TStringField
      FieldName = 'TIPO_OPERACION'
      Origin = 'TIPO_OPERACION'
      Size = 1
    end
    object CDSCajaDetEgresosMUESTRA_TIPOOPERACION: TStringField
      FieldName = 'MUESTRA_TIPOOPERACION'
      Origin = 'MUESTRA_TIPOOPERACION'
    end
    object CDSCajaDetEgresosID_ARQUEO_CAJA: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'V'
      FieldName = 'ID_ARQUEO_CAJA'
      OnGetText = CDSCajaDetEgresosID_ARQUEO_CAJAGetText
    end
    object CDSCajaDetEgresosFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
  end
  object CDSCajaDetIngresos: TClientDataSet
    Aggregates = <>
    Filter = 'Tipo_Operacion='#39'I'#39
    Filtered = True
    PacketRecords = 4
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
    ProviderName = 'DSPCajaDetIngresos'
    Left = 656
    Top = 224
    object CDSCajaDetIngresosID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
    end
    object CDSCajaDetIngresosNRO_CPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NRO_CPBTE'
      Origin = 'NRO_CPBTE'
      Size = 13
    end
    object CDSCajaDetIngresosTIPO_CPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tp'
      FieldName = 'TIPO_CPBTE'
      Origin = 'TIPO_CPBTE'
      Size = 2
    end
    object CDSCajaDetIngresosCLASE_CPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Cl'
      FieldName = 'CLASE_CPBTE'
      Origin = 'CLASE_CPBTE'
      Size = 2
    end
    object CDSCajaDetIngresosDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object CDSCajaDetIngresosDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00;-,0.00;-'
    end
    object CDSCajaDetIngresosHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00;-,0.00;-'
    end
    object CDSCajaDetIngresosTIPO_OPERACION: TStringField
      FieldName = 'TIPO_OPERACION'
      Origin = 'TIPO_OPERACION'
      Size = 1
    end
    object CDSCajaDetIngresosMUESTRA_TIPOOPERACION: TStringField
      FieldName = 'MUESTRA_TIPOOPERACION'
      Origin = 'MUESTRA_TIPOOPERACION'
    end
    object CDSCajaDetIngresosID_ARQUEO_CAJA: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'V'
      FieldName = 'ID_ARQUEO_CAJA'
      OnGetText = CDSCajaDetIngresosID_ARQUEO_CAJAGetText
    end
    object CDSCajaDetIngresosFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
    object CDSCajaDetIngresosCODIGO_VC: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_VC'
      Size = 6
    end
    object CDSCajaDetIngresosNOMBRE_VC: TStringField
      DisplayLabel = 'Nombre Cobrador'
      FieldName = 'NOMBRE_VC'
      Size = 50
    end
  end
  object DSCajaDetIngresos: TDataSource
    DataSet = CDSCajaDetIngresos
    Left = 752
    Top = 224
  end
  object CDSCheques: TClientDataSet
    Aggregates = <>
    PacketRecords = 4
    Params = <
      item
        DataType = ftInteger
        Name = 'id_caja'
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
    ProviderName = 'DSPCheques'
    Left = 656
    Top = 320
    object CDSChequesNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object CDSChequesMUESTRABANCO: TStringField
      FieldName = 'MUESTRABANCO'
      Origin = 'MUESTRABANCO'
      Required = True
    end
    object CDSChequesORDEN_DE: TStringField
      FieldName = 'ORDEN_DE'
      Origin = 'ORDEN_DE'
      Size = 30
    end
    object CDSChequesIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSChequesFECHA_EMISION: TSQLTimeStampField
      DisplayLabel = 'Fecha Emis'
      FieldName = 'FECHA_EMISION'
      Origin = 'FECHA_EMISION'
    end
    object CDSChequesFECHA_COBRO: TSQLTimeStampField
      DisplayLabel = 'Fecha Cob'
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
    end
  end
  object CDSChe3Entrgado: TClientDataSet
    Aggregates = <>
    PacketRecords = 4
    Params = <
      item
        DataType = ftInteger
        Name = 'id_caja'
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
    ProviderName = 'DSPChe3Entregado'
    Left = 648
    Top = 376
    object CDSChe3EntrgadoID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSChe3EntrgadoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
    end
    object CDSChe3EntrgadoMUESTRABANCO: TStringField
      FieldName = 'MUESTRABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
    end
    object CDSChe3EntrgadoORIGEN: TStringField
      FieldName = 'ORIGEN'
      Origin = 'ORIGEN'
      ProviderFlags = []
      Size = 30
    end
    object CDSChe3EntrgadoDESTINO: TStringField
      FieldName = 'DESTINO'
      Origin = 'DESTINO'
      ProviderFlags = []
      Size = 30
    end
    object CDSChe3EntrgadoIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSChe3EntrgadoFECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object CDSMovTCCompra: TClientDataSet
    Aggregates = <>
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
    ProviderName = 'DSPMovTCCompra'
    Left = 656
    Top = 432
    object CDSMovTCCompraID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      Required = True
    end
    object CDSMovTCCompraID_TARJETA: TIntegerField
      FieldName = 'ID_TARJETA'
      Origin = 'ID_TARJETA'
      Required = True
    end
    object CDSMovTCCompraMUESTRATARJETA: TStringField
      FieldName = 'MUESTRATARJETA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 30
    end
    object CDSMovTCCompraCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
      Origin = 'CUOTAS'
      Required = True
    end
    object CDSMovTCCompraTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSMovTCCompraCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovTCCompraNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSMovTCCompraNUMERO_CUPON: TIntegerField
      FieldName = 'NUMERO_CUPON'
      Origin = 'NUMERO_CUPON'
    end
    object CDSMovTCCompraPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Origin = 'PROVEEDOR'
      Size = 35
    end
    object CDSMovTCCompraIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSMovTCCompraFECHA_COMPRA: TSQLTimeStampField
      FieldName = 'FECHA_COMPRA'
    end
    object CDSMovTCCompraFECHA_CUPON: TSQLTimeStampField
      FieldName = 'FECHA_CUPON'
    end
  end
  object DSPMovTCCompra: TDataSetProvider
    DataSet = QMovTCCompra
    Options = []
    Left = 576
    Top = 432
  end
  object CDSMovTCVenta: TClientDataSet
    Aggregates = <>
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
    ProviderName = 'DSPMovTCVenta'
    Left = 656
    Top = 496
    object CDSMovTCVentaID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      Required = True
    end
    object CDSMovTCVentaID_TC: TIntegerField
      FieldName = 'ID_TC'
      Origin = 'ID_TC'
      Required = True
    end
    object CDSMovTCVentaMUESTRATARJETA: TStringField
      FieldName = 'MUESTRATARJETA'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 15
    end
    object CDSMovTCVentaCAN_CUOTAS: TIntegerField
      FieldName = 'CAN_CUOTAS'
      Origin = 'CAN_CUOTAS'
    end
    object CDSMovTCVentaTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      ProviderFlags = []
      Size = 2
    end
    object CDSMovTCVentaCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      ProviderFlags = []
      Size = 2
    end
    object CDSMovTCVentaNRO_COMPROBANTE: TStringField
      FieldName = 'NRO_COMPROBANTE'
      Origin = 'NRO_COMPROBANTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSMovTCVentaNRO_CUPON: TIntegerField
      FieldName = 'NRO_CUPON'
      Origin = 'NRO_CUPON'
    end
    object CDSMovTCVentaTITULAR: TStringField
      FieldName = 'TITULAR'
      Origin = 'TITULAR'
      Size = 30
    end
    object CDSMovTCVentaID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
    end
    object CDSMovTCVentaIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      Required = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSMovTCVentaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
  end
  object DSPMovTCVenta: TDataSetProvider
    DataSet = QMovTCVenta
    Options = []
    Left = 584
    Top = 496
  end
  object CDSCajas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'estado'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCajas'
    Left = 664
    Top = 560
    object CDSCajasMUESTRACTACAJA: TStringField
      DisplayLabel = 'Caja'
      DisplayWidth = 15
      FieldName = 'MUESTRACTACAJA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSCajasNUMEROCAJA: TIntegerField
      DisplayLabel = 'Nro.De Caja'
      DisplayWidth = 3
      FieldName = 'NUMEROCAJA'
      Origin = 'NUMEROCAJA'
    end
    object CDSCajasID_CUENTA_CAJA: TIntegerField
      DisplayLabel = 'Id.Cta Caja'
      DisplayWidth = 4
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
    object CDSCajasESTADO: TIntegerField
      DisplayWidth = 4
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      Visible = False
    end
    object CDSCajasID_CAJA: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 4
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object CDSCajasOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      Visible = False
      BlobType = ftMemo
    end
    object CDSCajasSALDO_INCIAL: TFloatField
      DisplayLabel = 'Importe'
      DisplayWidth = 8
      FieldName = 'SALDO_INCIAL'
      Origin = 'SALDO_INCIAL'
      Visible = False
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCajasFECHA_INCIO: TSQLTimeStampField
      DisplayLabel = 'Apertura'
      DisplayWidth = 8
      FieldName = 'FECHA_INCIO'
      Required = True
    end
    object CDSCajasFECHA_CIERRE: TSQLTimeStampField
      DisplayLabel = 'Cierre'
      DisplayWidth = 8
      FieldName = 'FECHA_CIERRE'
    end
  end
  object DSPCajas: TDataSetProvider
    DataSet = QCajas
    Options = [poAllowCommandText]
    Left = 584
    Top = 560
  end
  object DSCajaDetEgresos: TDataSource
    DataSet = CDSCajaDetEgresos
    Left = 736
    Top = 168
  end
  object CDSSaldoInicial: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSaldoInicial'
    Left = 168
    Top = 536
    object CDSSaldoInicialID_CAJA_SALDO: TIntegerField
      FieldName = 'ID_CAJA_SALDO'
      Origin = 'ID_CAJA_SALDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSSaldoInicialID_CAJA_CAB: TIntegerField
      FieldName = 'ID_CAJA_CAB'
      Origin = 'ID_CAJA_CAB'
      Required = True
    end
    object CDSSaldoInicialID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      Required = True
    end
    object CDSSaldoInicialID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      Required = True
    end
    object CDSSaldoInicialESTADO_CAJA: TSmallintField
      FieldName = 'ESTADO_CAJA'
      Origin = 'ESTADO_CAJA'
      Required = True
    end
    object CDSSaldoInicialOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      Size = 400
    end
    object CDSSaldoInicialMUESTRAFORMAPAGO: TStringField
      FieldName = 'MUESTRAFORMAPAGO'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
    end
    object CDSSaldoInicialIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSPSaldoInicial: TDataSetProvider
    DataSet = QSaldoInic
    Options = [poAllowCommandText]
    Left = 104
    Top = 536
  end
  object DSSaldoInicial: TDataSource
    DataSet = CDSSaldoInicial
    Left = 236
    Top = 536
  end
  object CDSAnuladas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPAnuladas'
    Left = 176
    Top = 592
    object CDSAnuladasID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAnuladasID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAnuladasTIPO_OPERACION: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPO_OPERACION'
      Origin = 'TIPO_OPERACION'
      Size = 1
    end
    object CDSAnuladasCLASE_COMPROB: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Size = 2
    end
    object CDSAnuladasID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSAnuladasNRO_COMPROBANTE: TStringField
      DisplayLabel = 'Nro.Cpbte.'
      FieldName = 'NRO_COMPROBANTE'
      Origin = 'NRO_COMPROBANTE'
      Required = True
      Size = 13
    end
    object CDSAnuladasID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      Required = True
    end
    object CDSAnuladasID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      Required = True
    end
    object CDSAnuladasID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
    end
    object CDSAnuladasMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object CDSAnuladasMUESTRANOMBRE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'MUESTRANOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object CDSAnuladasTIPO_COMPROB: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSAnuladasHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSAnuladasDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSAnuladasUNIDADES: TFloatField
      DisplayLabel = 'Unid.'
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSAnuladasCOTIZACION: TFloatField
      DisplayLabel = 'Cotiz.'
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSAnuladasFECHA_CAJA: TSQLTimeStampField
      DisplayLabel = 'Fecha Caja'
      FieldName = 'FECHA_CAJA'
      Origin = 'FECHA_CAJA'
    end
    object CDSAnuladasFECHA_OPERACION: TSQLTimeStampField
      DisplayLabel = 'Fecha Op.'
      FieldName = 'FECHA_OPERACION'
      Origin = 'FECHA_OPERACION'
    end
  end
  object DSPAnuladas: TDataSetProvider
    DataSet = QAnuladas
    Options = [poAllowCommandText]
    Left = 112
    Top = 592
  end
  object DSAnuladas: TDataSource
    DataSet = CDSAnuladas
    Left = 252
    Top = 584
  end
  object DSPResumenVta: TDataSetProvider
    DataSet = QResumenvta
    Options = []
    Left = 576
    Top = 632
  end
  object CDSResumentVta: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_caja'
        ParamType = ptInput
      end>
    ProviderName = 'DSPResumenVta'
    OnCalcFields = CDSResumentVtaCalcFields
    Left = 664
    Top = 632
    object CDSResumentVtaTOTAL_CIVA: TFloatField
      FieldName = 'TOTAL_CIVA'
      Origin = 'TOTAL_CIVA'
      ProviderFlags = []
    end
    object CDSResumentVtaTOTAL_REC: TFMTBCDField
      DisplayLabel = 'Total'
      FieldKind = fkInternalCalc
      FieldName = 'TOTAL_REC'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSResumentVtaCANTIDAD_REC: TFMTBCDField
      DisplayLabel = 'Cant.'
      FieldKind = fkInternalCalc
      FieldName = 'CANTIDAD_REC'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSResumentVtaTOTALCIVA_REC: TFMTBCDField
      DisplayLabel = 'T.con/Iva'
      FieldKind = fkInternalCalc
      FieldName = 'TOTALCIVA_REC'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSResumentVtaTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSResumentVtaCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      ProviderFlags = []
      Required = True
      Size = 8
    end
    object CDSResumentVtaDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 45
    end
    object CDSResumentVtaCANTIDAD: TFloatField
      DisplayLabel = 'Cant.'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSResumentVtaTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSResumentVtaFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object CDSResumentVtaDETALLE_RUBRO: TStringField
      DisplayLabel = 'Detalle Rubro'
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
  end
  object DSResumenVta: TDataSource
    DataSet = CDSResumentVta
    Left = 756
    Top = 632
  end
  object QCajaCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cc.*,cta.Nombre as MuestraCtaCaja  from Caja_Cab cc '
      'left join cuenta_caja cta on cta.id_cuenta=cc.id_cuenta_caja'
      'where id_caja=:id ')
    Left = 32
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = '1'
      end>
  end
  object QCajadet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    SQL.Strings = (
      'select * from TRAER_DETALLESCAJA(:id,:desde,:hasta)')
    Left = 488
    Top = 192
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object QDepositos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.*,d.*,cta.nombre as MuestraCta,che3.numero as NuemroChe' +
        ', che3.origen as MuestraOrigen from caja_mov c'
      'left join dep_banco_cab d on d.id=c.id_comprobante'
      'left join cuenta_caja cta on cta.id_cuenta=d.id_cta_caja'
      
        'left join cheque_tercero_mov che3 on che3.id_mov_caja_egresos=c.' +
        'id_mov_caja'
      'where c.id_caja=:idcaja and c.tipo_comprob='#39'DP'#39)
    Left = 32
    Top = 80
    ParamData = <
      item
        Position = 1
        Name = 'idcaja'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QRetenciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from LISTA_RETENCIONES_POR_CAJA ( :idcaja )')
    Left = 32
    Top = 136
    ParamData = <
      item
        Position = 1
        Name = 'idcaja'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QSaldosTC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TRAER_SALDOS_CAJA_tc(:id)')
    Left = 32
    Top = 184
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QSaldoFinal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TRAER_SALDOS_CAJA(:id)')
    Left = 32
    Top = 256
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QChe3Recibidos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select mv.id_mov_caja,ch.numero,b.nombre as MuestraBanco ,ch.ori' +
        'gen,ch.destino,'
      '    ch.fecha_cobro,ch.importe from caja_mov mv'
      'left join cheque_tercero ch on ch.id_mov_caja=mv.id_mov_caja'
      'left join bancos b on b.id_banco=ch.id_banco'
      
        'where( mv.id_caja=:id_caja and mv.id_TPago=3 ) and (mv.tipo_oper' +
        'acion='#39'I'#39') and'
      '       mv.tipo_comprob<>'#39'QX'#39' and'
      '     ( ( mv.fecha_operacion between :desde and :hasta ) or'
      '       ( :desde = '#39'01/01/1900'#39' and :hasta = '#39'01/01/9999'#39' ))')
    Left = 32
    Top = 320
    ParamData = <
      item
        Position = 1
        Name = 'id_caja'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
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
  object QTxRecibidas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select t.numero,t.importe,t.fecha,t.origen,c.nombre as MuestraBa' +
        'nco  from transf_banco_recibidas t '
      'join cuenta_caja c on c.id_cuenta=t.id_cuenta_banco'
      'where t.id_caja=:id_caja and'
      
        ' ( (t.fecha between :desde and :hasta)  or ( :desde <='#39'01/01/190' +
        '0'#39' and :hasta = '#39'01/01/9999'#39' ))'
      'order by t.fecha')
    Left = 32
    Top = 376
    ParamData = <
      item
        Position = 1
        Name = 'id_caja'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
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
  object QTxGeneradas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select t.numero,t.importe,t.fecha,t.origen,c.nombre as MuestraBa' +
        'nco  from transf_banco_emitidas t '
      'join cuenta_caja c on c.id_cuenta=t.id_cuenta_banco'
      'where t.id_caja=:id_caja and'
      
        ' ( (t.fecha between :desde and :hasta)  or ( :desde <='#39'01/01/190' +
        '0'#39' and :hasta = '#39'01/01/9999'#39' ) )'
      'order by t.fecha')
    Left = 32
    Top = 440
    ParamData = <
      item
        Position = 1
        Name = 'id_caja'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
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
  object QDebitos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select d.numero,d.importe,d.fecha,d.origen,c.nombre as MuestraBa' +
        'nco  from debitos_banco d '
      'join cuenta_caja c on c.id_cuenta=d.id_cuenta_banco'
      'where d.id_caja=:id_caja and'
      
        ' ( (d.fecha between :desde and :hasta)  or ( :desde <='#39'01/01/190' +
        '0'#39' and :hasta = '#39'01/01/9999'#39' ))'
      'order by d.fecha')
    Left = 24
    Top = 488
    ParamData = <
      item
        Position = 1
        Name = 'id_caja'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
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
  object QSaldoInic: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select cs.*,fp.descripcion as MuestraFormaPago from caja_Saldos ' +
        'CS '
      'left join formapago fp on fp.id_fpago=cs.id_fpago'
      'where cs.id_caja_cab=:id and cs.estado_caja=0 ')
    Left = 24
    Top = 536
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QAnuladas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select a.*,f.nombre as MuestraNombre from caja_mov_anulados a'
      
        'left join fcvtacab f on f.id_fc=a.id_comprobante and a.tipo_comp' +
        'rob='#39'FO'#39
      'where a.id_caja=:id'
      '')
    Left = 32
    Top = 592
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QCajaPorDefecto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cc.id_caja from Caja_cab cc'
      'where cc.estado=0 and cc.id_cuenta_caja=:id_cta_caja')
    Left = 376
    Top = 16
    ParamData = <
      item
        Name = 'ID_CTA_CAJA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QFPago: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from formapago where id_tpago<>2')
    Left = 496
    Top = 16
  end
  object QValores: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from sumar_valores_caja(:id,:id_fpago,:desde,:hasta)')
    Left = 488
    Top = 64
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'id_fpago'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object QEfectivo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from detalle_mov_valores(:idcaja,:desde,:hasta)  '
      'order by id_fpago,tipo_comprob,clase_compro,fecha, nrocomprob  ')
    Left = 488
    Top = 120
    ParamData = <
      item
        Position = 1
        Name = 'idcaja'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object QCheques: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from  che_emit_caja (:id_caja,:desde,:hasta)')
    Left = 488
    Top = 320
    ParamData = <
      item
        Position = 1
        Name = 'id_caja'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object QChe3Entregado: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select mv.id_mov_caja,ch.numero,b.nombre as MuestraBanco ,ch.ori' +
        'gen,'
      '   ch.destino,ch.fecha_cobro,ch.importe from caja_mov mv'
      'join cheque_tercero ch on ch.id_mov_caja_egresos=mv.id_mov_caja'
      'left join bancos b on b.id_banco=ch.id_banco'
      
        'where mv.id_caja=:id_caja and mv.id_TPago=3 and (mv.tipo_operaci' +
        'on='#39'E'#39') and'
      
        '      ((mv.fecha_operacion between :desde and :hasta)  or ( :des' +
        'de ='#39'01/01/1900'#39' and :hasta = '#39'01/01/9999'#39' )  )')
    Left = 488
    Top = 376
    ParamData = <
      item
        Position = 1
        Name = 'id_caja'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
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
  object QMovTCCompra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_caja,c.fecha_compra,c.fecha_cupon,c.id_tarjeta,t.nom' +
        'bre as MuestraTarjeta,'
      'c.importe,c.cuotas,c.tipocpbte,c.clasecpbte,'
      'c.nrocpbte,c.numero_cupon,c.proveedor from cupon_tc_compra c'
      '  left join tarjetacredito_comp t on t.id=c.id_tarjeta'
      'where c.id_caja=:id and'
      
        ' ( (c.fecha_compra between :desde and :hasta)  or ( :desde <='#39'01' +
        '/01/1900'#39' and :hasta = '#39'01/01/9999'#39' ))')
    Left = 488
    Top = 432
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
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
  object QMovTCVenta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_caja,c.fecha,c.id_tc,t.descripcion as MuestraTarjeta' +
        ','
      '(case when cc.tipo_comprob='#39'NC'#39' Then  c.importe*-1'
      'else'
      '  c.importe end) as importe'
      
        ',c.can_cuotas,cc.tipo_comprob,cc.clase_comprob, cc.nro_comproban' +
        'te,'
      'c.nro_cupon,c.titular,cc.id_comprobante'
      'from mov_tcredito  c'
      'left join t_credito t on t.id_tc=c.id_tc'
      'left join caja_mov cc on cc.id_mov_caja=c.id_mov_caja'
      'where c.id_caja=:id  and'
      
        ' ( (c.fecha between :desde and :hasta)  or ( :desde = '#39'01/01/190' +
        '0'#39' and :hasta = '#39'01/01/9999'#39' ))'
      ' order by t.descripcion')
    Left = 488
    Top = 488
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object QCajas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cc.*, cta.nombre as MuestraCtaCaja from Caja_cab cc'
      'left join cuenta_caja cta on cta.id_cuenta=cc.id_cuenta_caja'
      'where cc.estado=:estado'
      'order by cc.id_caja,cc.estado,cc.fecha_incio desc')
    Left = 488
    Top = 568
    ParamData = <
      item
        Position = 1
        Name = 'estado'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QResumenvta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.FechaVta, c.tipocpbte,d.codigoarticulo,d.detalle,(d.can' +
        'tidad) as cantidad,'
      '       ((d.total) * (1-((c.dsto)*0.01)) ) as Total,'
      
        '       ((d.iva_total+d.total)* (1-((c.dsto)*0.01))) as Total_civ' +
        'a,'
      '       st.rubro_stk,rb.detalle_rubro from caja_mov cm'
      
        '  left join fcvtacab c on c.id_fc=cm.id_comprobante and c.tipocp' +
        'bte=cm.tipo_comprob and cm.tipo_operacion='#39'I'#39
      '  join fcvtadet d on d.id_cabfac = c.id_fc'
      '  join stock st on st.codigo_stk=d.codigoarticulo'
      '  join rubros rb on rb.codigo_rubro=st.rubro_stk'
      
        'where c.anulado='#39'N'#39'  and cm.id_caja=:id_caja and ((cm.tipo_compr' +
        'ob='#39'FO'#39') or (cm.tipo_comprob='#39'TK'#39'))'
      '')
    Left = 480
    Top = 632
    ParamData = <
      item
        Position = 1
        Name = 'id_caja'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QTxPendientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.id from transferencias_caja t'
      'where t.estado='#39'N'#39)
    Left = 384
    Top = 520
  end
  object spCerrar_Caja: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CERRAR_SALDOS'
    Left = 376
    Top = 72
    ParamData = <
      item
        Position = 1
        Name = 'FECHA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID_CAJA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QArqueoCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.* from arqueo_caja_cab c where c.id_caja=:id')
    Left = 24
    Top = 656
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPArqueoCab: TDataSetProvider
    DataSet = QArqueoCab
    Options = [poAllowCommandText]
    Left = 96
    Top = 656
  end
  object CDSArqueoCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPArqueoCab'
    Left = 160
    Top = 656
    object CDSArqueoCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSArqueoCabID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      Required = True
    end
    object CDSArqueoCabID_CTA_CAJA: TIntegerField
      FieldName = 'ID_CTA_CAJA'
      Origin = 'ID_CTA_CAJA'
      Required = True
    end
    object CDSArqueoCabID_MOV_CAJA: TIntegerField
      DisplayLabel = 'Mov.Caja'
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      Required = True
    end
    object CDSArqueoCabSALDO_EFECTIVO: TFloatField
      DisplayLabel = 'Saldo Efectivo'
      FieldName = 'SALDO_EFECTIVO'
      Origin = 'SALDO_EFECTIVO'
      Required = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSArqueoCabSALDO_OTROS: TFloatField
      DisplayLabel = 'Otros'
      FieldName = 'SALDO_OTROS'
      Origin = 'SALDO_OTROS'
      Required = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSArqueoCabTOTAL_ARQUEO: TFloatField
      DisplayLabel = 'Total Arqueo'
      FieldName = 'TOTAL_ARQUEO'
      Origin = 'TOTAL_ARQUEO'
      Required = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSArqueoCabFECHA_HORA: TSQLTimeStampField
      DisplayLabel = 'Fecha/Hora'
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
      Required = True
    end
  end
  object DSArqueoCab: TDataSource
    DataSet = CDSArqueoCab
    Left = 236
    Top = 648
  end
  object QArqueoDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.id_caja,d.* from arqueo_caja_cab c'
      'left join arqueo_caja_det d on d.id_cab=c.id'
      'where c.id_caja=:id')
    Left = 488
    Top = 680
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPArqueoDet: TDataSetProvider
    DataSet = QArqueoDet
    Options = []
    Left = 576
    Top = 680
  end
  object CDSArqueoDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPArqueoDet'
    Left = 672
    Top = 696
    object CDSArqueoDetID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Required = True
    end
    object CDSArqueoDetID: TIntegerField
      FieldName = 'ID'
      ReadOnly = True
    end
    object CDSArqueoDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      ReadOnly = True
    end
    object CDSArqueoDetID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      ReadOnly = True
    end
    object CDSArqueoDetDENOMINACIO: TIntegerField
      DisplayLabel = 'Denominacion'
      FieldName = 'DENOMINACIO'
      ReadOnly = True
    end
    object CDSArqueoDetCANTIDAD: TIntegerField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSArqueoDetIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSArqueoDet: TDataSource
    DataSet = CDSArqueoDet
    Left = 772
    Top = 696
  end
  object QEmitidosVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_mov_caja,c.fecha_caja,c.fecha_operacion,c.tipo_compr' +
        'ob,c.clase_comprob,c.nro_comprobante,c.debe,c.haber,f.nrocpbte,f' +
        '.total,'
      '       c.debe-c.haber as Neto,t.id as Comanda from caja_mov c'
      
        'left join fcvtacab f on f.id_fc=c.id_comprobante and f.tipocpbte' +
        '=c.tipo_comprob'
      'left join ticket_cab t on t.id_factura=f.id_fc'
      'where c.id_caja=:id and'
      
        '(((c.tipo_comprob in ('#39'FO'#39','#39'TK'#39','#39'FC'#39')) and c.tipo_operacion='#39'I'#39')' +
        ' or  ((c.tipo_comprob in ('#39'NC'#39')) and c.tipo_operacion='#39'E'#39'))'
      '')
    Left = 800
    Top = 528
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSEmitidosVta: TDataSource
    DataSet = CDSEmitidosVta
    Left = 888
    Top = 432
  end
  object CDSEmitidosVta: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPEmitidosVta'
    Left = 888
    Top = 480
    object CDSEmitidosVtaID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object CDSEmitidosVtaFECHA_CAJA: TSQLTimeStampField
      FieldName = 'FECHA_CAJA'
    end
    object CDSEmitidosVtaFECHA_OPERACION: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA_OPERACION'
    end
    object CDSEmitidosVtaTIPO_COMPROB: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSEmitidosVtaCLASE_COMPROB: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASE_COMPROB'
      Size = 2
    end
    object CDSEmitidosVtaNRO_COMPROBANTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NRO_COMPROBANTE'
      Required = True
      EditMask = 'a-####-########;0'
      Size = 13
    end
    object CDSEmitidosVtaDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSEmitidosVtaHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSEmitidosVtaNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      ReadOnly = True
      Size = 13
    end
    object CDSEmitidosVtaTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSEmitidosVtaNETO: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'NETO'
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSEmitidosVtaCOMANDA: TIntegerField
      FieldName = 'COMANDA'
      ReadOnly = True
      OnGetText = CDSEmitidosVtaCOMANDAGetText
    end
  end
  object DSPEmitidosVta: TDataSetProvider
    DataSet = QEmitidosVta
    Options = []
    Left = 880
    Top = 528
  end
  object DSPREcibos: TDataSetProvider
    DataSet = QCajadet
    Options = []
    Left = 568
    Top = 272
  end
  object CDSRecibos: TClientDataSet
    Aggregates = <>
    Filter = 'Tipo_Operacion='#39'I'#39' and tipo_cpbte='#39'RC'#39
    Filtered = True
    PacketRecords = 4
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
    ProviderName = 'DSPCajaDetIngresos'
    Left = 656
    Top = 272
    object CDSRecibosFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
    object CDSRecibosID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object CDSRecibosNRO_CPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NRO_CPBTE'
      Size = 13
    end
    object CDSRecibosTIPO_CPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPO_CPBTE'
      Size = 2
    end
    object CDSRecibosCLASE_CPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASE_CPBTE'
      Size = 2
    end
    object CDSRecibosDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 100
    end
    object CDSRecibosDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      DisplayFormat = ',0.00'
    end
    object CDSRecibosHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      DisplayFormat = ',0.00'
    end
    object CDSRecibosTIPO_OPERACION: TStringField
      FieldName = 'TIPO_OPERACION'
      Size = 1
    end
    object CDSRecibosMUESTRA_TIPOOPERACION: TStringField
      FieldName = 'MUESTRA_TIPOOPERACION'
    end
    object CDSRecibosID_ARQUEO_CAJA: TIntegerField
      FieldName = 'ID_ARQUEO_CAJA'
    end
    object CDSRecibosCODIGO_VC: TStringField
      DisplayLabel = 'Codigo Cob'
      FieldName = 'CODIGO_VC'
      Size = 6
    end
    object CDSRecibosNOMBRE_VC: TStringField
      DisplayLabel = 'Cobrador'
      FieldName = 'NOMBRE_VC'
      Size = 50
    end
  end
  object DSRecibos: TDataSource
    DataSet = CDSRecibos
    Left = 752
    Top = 272
  end
  object spBorrarMov_Cpbte: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'TOOLS_BORRAR_MOV_CPBTE_INGR'
    Left = 864
    Top = 64
    ParamData = <
      item
        Position = 1
        Name = 'ID_COMPROBANTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'TIPOCOMPROB'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
  end
  object QBorrarCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from Caja_Cab cc '
      'where id_caja=:id ')
    Left = 864
    Top = 128
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = '1'
      end>
  end
  object QFacturasVsCobro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select f.id_fc,f.fechavta,f.nrocpbte, f.codigo,f.nombre,f.total ' +
        ', coalesce(sum(m.importe),0) as Pagado from fcvtacab f'
      'left join movaplicaccvta m on m.aplica_id_cpbte  = f.id_fc and'
      '                              m.aplica_tipocpbte = f.tipocpbte'
      
        'where (f.fechavta between :desde and :hasta) and (f.tipocpbte='#39'F' +
        'C'#39')'
      
        'group by f.id_fc,f.fechavta,f.nrocpbte, f.codigo,f.nombre,f.tota' +
        'l')
    Left = 904
    Top = 624
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object QFacturasVsCobroID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFacturasVsCobroFECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
    object QFacturasVsCobroNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object QFacturasVsCobroCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object QFacturasVsCobroNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QFacturasVsCobroTOTAL: TFloatField
      DisplayLabel = 'Total Facturado'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QFacturasVsCobroPAGADO: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cobro'
      FieldName = 'PAGADO'
      Origin = 'PAGADO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSFacVsCobro: TDataSource
    DataSet = QFacturasVsCobro
    Left = 904
    Top = 688
  end
  object DSpresuACobrar: TDataSource
    DataSet = CDSpresuACobrar
    Left = 904
    Top = 360
  end
  object CDSpresuACobrar: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'HASTA'
        ParamType = ptInput
      end>
    ProviderName = 'DSPpresuACobrar'
    Left = 904
    Top = 304
    object CDSpresuACobrarFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
    end
    object CDSpresuACobrarNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSpresuACobrarCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSpresuACobrarCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSpresuACobrarTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSpresuACobrarANULADO: TStringField
      FieldName = 'ANULADO'
      OnGetText = CDSpresuACobrarANULADOGetText
      Size = 1
    end
    object CDSpresuACobrarTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSpresuACobrarID_PR: TIntegerField
      FieldName = 'ID_PR'
      Required = True
    end
    object CDSpresuACobrarNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSpresuACobrarFACTURANRO: TStringField
      FieldName = 'FACTURANRO'
      Size = 13
    end
    object CDSpresuACobrarNOMBRE_CUENTA: TStringField
      FieldName = 'NOMBRE_CUENTA'
      ReadOnly = True
      Size = 25
    end
  end
  object DSPpresuACobrar: TDataSetProvider
    DataSet = QpresuACobrar
    Left = 904
    Top = 248
  end
  object QpresuACobrar: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT p.id_pr, p.fechavta, p.nrocpbte,'
      '    CASE '
      '        WHEN p.facturanro IS NULL THEN '#39'NO PAGADO'#39
      '        ELSE p.facturanro'
      '    END AS facturanro,'
      '    p.tipocpbte, p.codigo, p.nombre, p.cuit, p.total, p.anulado,'
      '    CASE '
      '        WHEN p.facturanro IS NULL THEN '#39'NO PAGADO'#39
      
        '        WHEN p.facturanro IS NOT NULL AND c.nombre IS NULL THEN ' +
        #39'--'#39
      '        ELSE c.nombre'
      '    END AS nombre_cuenta'
      'FROM prescab p'
      '  LEFT JOIN fcvtacab fc ON fc.id_fc = p.id_factura'
      
        '  LEFT JOIN caja_mov caja ON caja.nro_comprobante = fc.nrocpbte ' +
        'AND '
      
        '                             caja.tipo_comprob = fc.tipocpbte   ' +
        'AND '
      '                             caja.id_comprobante = fc.id_fc'
      '  LEFT JOIN cuenta_caja c ON c.id_cuenta = caja.id_cuenta_caja'
      'WHERE '
      '    (p.a_cobrar <> '#39'N'#39' OR p.facturanro IS NOT NULL)  '
      '    AND (p.fechavta BETWEEN :desde AND :hasta);')
    Left = 872
    Top = 208
    ParamData = <
      item
        Position = 1
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
end
