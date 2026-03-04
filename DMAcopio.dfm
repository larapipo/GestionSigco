object DatosAcopio: TDatosAcopio
  Height = 406
  Width = 814
  object DSPMercCab: TDataSetProvider
    DataSet = QMercCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 24
  end
  object CDSMercCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftString
        Name = 'FILTRADO'
        ParamType = ptInput
        Size = 1
      end>
    ProviderName = 'DSPMercCab'
    BeforeClose = CDSMercCabBeforeClose
    BeforeCancel = CDSMercCabBeforeCancel
    AfterScroll = CDSMercCabAfterScroll
    Left = 152
    Top = 24
    object CDSMercCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMercCabFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSMercCabCLIENTE: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 6
    end
    object CDSMercCabNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSMercCabDIRECCION: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object CDSMercCabCPOSTAL: TStringField
      DisplayLabel = 'C.Postal'
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object CDSMercCabLOCALIDAD: TStringField
      DisplayLabel = 'Localidad'
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object CDSMercCabNROCPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-####-########;0;_'
      Size = 13
    end
    object CDSMercCabID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Origin = 'ID_FACTURA'
      Required = True
    end
    object CDSMercCabCUMPLIDO: TStringField
      FieldName = 'CUMPLIDO'
      Origin = 'CUMPLIDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSMercCabOBS1: TStringField
      FieldName = 'OBS1'
      Origin = 'OBS1'
      Size = 60
    end
    object CDSMercCabOBS2: TStringField
      FieldName = 'OBS2'
      Origin = 'OBS2'
      Size = 60
    end
  end
  object DSMercCab: TDataSource
    DataSet = CDSMercCab
    Left = 222
    Top = 24
  end
  object DSMercDet: TDataSource
    DataSet = CDSMercDet
    Left = 222
    Top = 80
  end
  object CDSMercDet: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMercDet'
    BeforeEdit = CDSMercDetBeforeEdit
    Left = 152
    Top = 80
    object CDSMercDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object CDSMercDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      Required = True
      Visible = False
    end
    object CDSMercDetCODIGO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 12
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object CDSMercDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSMercDetCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.000'
    end
    object CDSMercDetENTREGADO: TFloatField
      DisplayLabel = 'Entregado'
      FieldName = 'ENTREGADO'
      Origin = 'ENTREGADO'
      OnChange = CDSMercDetENTREGADOChange
      DisplayFormat = ',0.000'
    end
    object CDSMercDetSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
      OnChange = CDSMercDetSALDOChange
      DisplayFormat = ',0.000'
    end
    object CDSMercDetFECHA_ULTIMAENTREGA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMAENTREGA'
      Origin = 'FECHA_ULTIMAENTREGA'
    end
    object CDSMercDetCUMPLIDO: TStringField
      FieldName = 'CUMPLIDO'
      Origin = 'CUMPLIDO'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSMercDetMUESTRASALDOORIGINAL: TFloatField
      FieldName = 'MUESTRASALDOORIGINAL'
      Origin = 'SALDO'
      ProviderFlags = []
      Visible = False
    end
    object CDSMercDetMUESTRAPRESENTACION: TFloatField
      FieldName = 'MUESTRAPRESENTACION'
      Origin = 'PRESENTACION_CANTIDAD'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object CDSMercDetSALDOTOTAL: TAggregateField
      FieldName = 'SALDOTOTAL'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'sum(saldo)'
    end
  end
  object DSPMercDet: TDataSetProvider
    DataSet = QMercDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 80
  end
  object QMercCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cab.* from merca_enacopio_cab cab '
      
        'where (cab.cliente = :codigo) and (cab.cumplido <> :filtrado or ' +
        ':filtrado='#39'*'#39')'
      'order by cab.fecha desc,cab.nrocpbte desc')
    Left = 16
    Top = 24
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 2
        Name = 'FILTRADO'
        DataType = ftString
        ParamType = ptInput
      end>
    object QMercCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMercCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QMercCabCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 6
    end
    object QMercCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QMercCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object QMercCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QMercCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QMercCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QMercCabID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Origin = 'ID_FACTURA'
      Required = True
    end
    object QMercCabCUMPLIDO: TStringField
      FieldName = 'CUMPLIDO'
      Origin = 'CUMPLIDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QMercCabOBS1: TStringField
      FieldName = 'OBS1'
      Origin = 'OBS1'
      Size = 60
    end
    object QMercCabOBS2: TStringField
      FieldName = 'OBS2'
      Origin = 'OBS2'
      Size = 60
    end
  end
  object QMercDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select cab.*,cab.saldo as MuestraSaldoOriginal,s.presentacion_ca' +
        'ntidad as MuestraPresentacion from merca_enacopio_Det cab'
      'left join stock s on s.codigo_stk=cab.codigo'
      'where cab.id_cab=:id')
    Left = 16
    Top = 80
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QMercDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMercDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      Required = True
    end
    object QMercDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object QMercDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QMercDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QMercDetENTREGADO: TFloatField
      FieldName = 'ENTREGADO'
      Origin = 'ENTREGADO'
    end
    object QMercDetSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
    end
    object QMercDetFECHA_ULTIMAENTREGA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMAENTREGA'
      Origin = 'FECHA_ULTIMAENTREGA'
    end
    object QMercDetCUMPLIDO: TStringField
      FieldName = 'CUMPLIDO'
      Origin = 'CUMPLIDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QMercDetMUESTRASALDOORIGINAL: TFloatField
      FieldName = 'MUESTRASALDOORIGINAL'
      Origin = 'SALDO'
      ProviderFlags = []
    end
    object QMercDetMUESTRAPRESENTACION: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAPRESENTACION'
      Origin = 'PRESENTACION_CANTIDAD'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSRtoDet: TDataSource
    DataSet = CDSRtoDet
    Left = 216
    Top = 296
  end
  object CDSRtoDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRtoDet'
    AfterEdit = CDSRtoDetAfterEdit
    BeforePost = CDSRtoDetBeforePost
    AfterPost = CDSRtoDetAfterPost
    BeforeDelete = CDSRtoDetBeforeDelete
    AfterScroll = CDSRtoDetAfterScroll
    OnNewRecord = CDSRtoDetNewRecord
    Left = 152
    Top = 296
    object CDSRtoDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRtoDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
    end
    object CDSRtoDetCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      OnSetText = CDSRtoDetCODIGOSetText
      Size = 8
    end
    object CDSRtoDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSRtoDetCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      OnSetText = CDSRtoDetCANTIDADSetText
      DisplayFormat = ',0.000'
    end
    object CDSRtoDetID_MERCA_ACOPIO_DET: TIntegerField
      FieldName = 'ID_MERCA_ACOPIO_DET'
      Origin = 'ID_MERCA_ACOPIO_DET'
    end
    object CDSRtoDetPRESENTACION_CANT: TFloatField
      FieldName = 'PRESENTACION_CANT'
      Origin = 'PRESENTACION_CANT'
      Required = True
      DisplayFormat = ',0.000'
    end
    object CDSRtoDetCANT_ORIGINAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CANT_ORIGINAL'
      DisplayFormat = ',0.000'
    end
    object CDSRtoDetCANTIDAD_UNIDAD: TFloatField
      FieldName = 'CANTIDAD_UNIDAD'
      Origin = 'CANTIDAD_UNIDAD'
      Required = True
      DisplayFormat = ',0.000'
    end
    object CDSRtoDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSRtoDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSRtoDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSRtoDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object CDSRtoDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 8
    end
  end
  object DSPRtoDet: TDataSetProvider
    DataSet = QRtoDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 296
  end
  object ibgDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RTO_ACOPIO_DET'
    SystemGenerators = False
    Left = 296
    Top = 296
  end
  object ibgCab: TIBGenerator
    DatabaseIBX = DMMain_2.SQLConectionMain
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RTO_ACOPIO_CAB'
    SystemGenerators = False
    Left = 296
    Top = 232
  end
  object DSPRtoCab: TDataSetProvider
    DataSet = QRtoCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 232
  end
  object CDSRtoCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRtoCab'
    AfterOpen = CDSRtoCabAfterOpen
    BeforeCancel = CDSRtoCabBeforeCancel
    OnNewRecord = CDSRtoCabNewRecord
    Left = 152
    Top = 232
    object CDSRtoCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRtoCabNUMERO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      OnSetText = CDSRtoCabNUMEROSetText
      Size = 8
    end
    object CDSRtoCabFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSRtoCabCLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object CDSRtoCabID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Origin = 'ID_FACTURA'
      Required = True
    end
    object CDSRtoCabNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSRtoCabDIRECCION: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object CDSRtoCabCPOSTAL: TStringField
      DisplayLabel = 'C.Postal'
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object CDSRtoCabLOCALIDAD: TStringField
      DisplayLabel = 'Localidad'
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object CDSRtoCabNRO_FACTURA: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro.Factura'
      FieldName = 'NRO_FACTURA'
      Origin = 'NRO_FACTURA'
      EditMask = 'a-####-########;0;_'
      Size = 13
    end
    object CDSRtoCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSRtoCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSRtoCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
      OnSetText = CDSRtoCabDEPOSITOSetText
    end
    object CDSRtoCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSRtoCabOBS1: TStringField
      FieldName = 'OBS1'
      Origin = 'OBS1'
      Size = 60
    end
    object CDSRtoCabOBS2: TStringField
      FieldName = 'OBS2'
      Origin = 'OBS2'
      Size = 60
    end
    object CDSRtoCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object CDSRtoCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object CDSRtoCabID_REMITO: TIntegerField
      FieldName = 'ID_REMITO'
      Origin = 'ID_REMITO'
    end
    object CDSRtoCabID_MERCA_ACOPIO_CAB: TIntegerField
      FieldName = 'ID_MERCA_ACOPIO_CAB'
      Origin = 'ID_MERCA_ACOPIO_CAB'
    end
    object CDSRtoCabCUMPLIDO: TStringField
      FieldName = 'CUMPLIDO'
      Origin = 'CUMPLIDO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CDSRtoCabNRO_REMITO: TStringField
      Alignment = taCenter
      FieldName = 'NRO_REMITO'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
  end
  object QRtoCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select  r.*,d.nombre as MuestraDeposito, rto.NROCPBTE as Nro_Rem' +
        'ito, mc.cumplido  from rto_acopio_cab r'
      'left join depositos d  on d.id=r.deposito'
      
        'left join merca_enacopio_cab mc on ((mc.id_factura=r.id_factura)' +
        ' or (mc.id=id_merca_acopio_cab))'
      'left join rtocab Rto on Rto.Id_rto=r.id_remito'
      'where r.id = :id')
    Left = 16
    Top = 232
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRtoCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRtoCabNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object QRtoCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QRtoCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QRtoCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QRtoCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QRtoCabCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object QRtoCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QRtoCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object QRtoCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QRtoCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QRtoCabID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Origin = 'ID_FACTURA'
      Required = True
    end
    object QRtoCabNRO_FACTURA: TStringField
      FieldName = 'NRO_FACTURA'
      Origin = 'NRO_FACTURA'
      Size = 13
    end
    object QRtoCabOBS1: TStringField
      FieldName = 'OBS1'
      Origin = 'OBS1'
      Size = 60
    end
    object QRtoCabOBS2: TStringField
      FieldName = 'OBS2'
      Origin = 'OBS2'
      Size = 60
    end
    object QRtoCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QRtoCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QRtoCabID_MERCA_ACOPIO_CAB: TIntegerField
      FieldName = 'ID_MERCA_ACOPIO_CAB'
      Origin = 'ID_MERCA_ACOPIO_CAB'
    end
    object QRtoCabID_REMITO: TIntegerField
      FieldName = 'ID_REMITO'
      Origin = 'ID_REMITO'
    end
    object QRtoCabMUESTRADEPOSITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object QRtoCabNRO_REMITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NRO_REMITO'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object QRtoCabCUMPLIDO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUMPLIDO'
      Origin = 'CUMPLIDO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
  end
  object QRtoDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select r.*  from rto_acopio_det r where r.id_cab = :id')
    Left = 16
    Top = 296
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRtoDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRtoDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
    end
    object QRtoDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QRtoDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QRtoDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QRtoDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QRtoDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object QRtoDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QRtoDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QRtoDetID_MERCA_ACOPIO_DET: TIntegerField
      FieldName = 'ID_MERCA_ACOPIO_DET'
      Origin = 'ID_MERCA_ACOPIO_DET'
    end
    object QRtoDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 8
    end
    object QRtoDetPRESENTACION_CANT: TFloatField
      FieldName = 'PRESENTACION_CANT'
      Origin = 'PRESENTACION_CANT'
      Required = True
    end
    object QRtoDetCANTIDAD_UNIDAD: TFloatField
      FieldName = 'CANTIDAD_UNIDAD'
      Origin = 'CANTIDAD_UNIDAD'
      Required = True
    end
  end
  object QUltimoCod: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(numero) from rto_acopio_cab')
    Left = 224
    Top = 232
  end
  object CDSBuscaDeposito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaDeposito'
    Left = 544
    Top = 104
    object CDSBuscaDepositoNOMBRE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 30
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSBuscaDepositoID: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
    end
  end
  object DSPBuscaDeposito: TDataSetProvider
    DataSet = DMBuscadores.QBuscaDeposito
    Options = []
    Left = 464
    Top = 96
  end
  object CDSDeposito: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPDeposito'
    Left = 552
    Top = 22
    object CDSDepositoID: TIntegerField
      FieldName = 'ID'
    end
    object CDSDepositoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSDepositoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
  end
  object DSPDeposito: TDataSetProvider
    DataSet = DMMain_FD.QDeposito
    Options = []
    Left = 472
    Top = 22
  end
  object ComBuscadorDeposito: TComBuscador
    Data = CDSBuscaDeposito
    Campo = 'ID'
    Titulo = 'Depositos'
    rOk = False
    Left = 416
    Top = 232
  end
  object ComBuscadorArt: TComBuscador
    Data = CDSMercDet
    Campo = 'CODIGO'
    rOk = False
    Left = 416
    Top = 296
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.* from clientes c where c.codigo=:codigo')
    Left = 596
    Top = 208
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    object QClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QClientesNOMBRE_COMPLETO: TStringField
      FieldName = 'NOMBRE_COMPLETO'
      Origin = 'NOMBRE_COMPLETO'
      Size = 100
    end
    object QClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object QClientesDIRECCION_PARTICULAR: TStringField
      FieldName = 'DIRECCION_PARTICULAR'
      Origin = 'DIRECCION_PARTICULAR'
      Size = 35
    end
    object QClientesDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Origin = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object QClientesTELEFONO_PARTICULAR: TStringField
      FieldName = 'TELEFONO_PARTICULAR'
      Origin = 'TELEFONO_PARTICULAR'
      Size = 10
    end
    object QClientesTELEFONO_COMERCIAL_1: TStringField
      FieldName = 'TELEFONO_COMERCIAL_1'
      Origin = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object QClientesTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Origin = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object QClientesTELEFONO_CELULAR: TStringField
      FieldName = 'TELEFONO_CELULAR'
      Origin = 'TELEFONO_CELULAR'
      Size = 11
    end
    object QClientesID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
      Origin = 'ID_COD_POSTAL'
    end
    object QClientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QClientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
  end
  object QAsignaIDMercCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select m.id from merca_enacopio_cab m where m.id_factura=:IdFact')
    Left = 608
    Top = 280
    ParamData = <
      item
        Name = 'IDFACT'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QAsignaIDMercCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
