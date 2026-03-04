object DatosImportarStock: TDatosImportarStock
  OnDestroy = DataModuleDestroy
  Height = 711
  Width = 728
  object DSPDep: TDataSetProvider
    DataSet = QDep
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 576
    Top = 440
  end
  object CDSDep: TClientDataSet
    Aggregates = <>
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
    ProviderName = 'DSPDep'
    OnNewRecord = CDSDepNewRecord
    Left = 632
    Top = 440
    object CDSDepID_DEPOSITO: TIntegerField
      FieldName = 'ID_DEPOSITO'
      Origin = 'ID_DEPOSITO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDepCODIGO_DEPOSITO: TIntegerField
      FieldName = 'CODIGO_DEPOSITO'
      Origin = 'CODIGO_DEPOSITO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDepCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object CDSDepSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object CDSDepAVISO_MINIMOSTOCK: TStringField
      FieldName = 'AVISO_MINIMOSTOCK'
      Origin = 'AVISO_MINIMOSTOCK'
      FixedChar = True
      Size = 1
    end
    object CDSDepINICIAL: TFloatField
      FieldName = 'INICIAL'
      Origin = 'INICIAL'
    end
    object CDSDepMINIMO: TFloatField
      FieldName = 'MINIMO'
      Origin = 'MINIMO'
    end
    object CDSDepMEDIO: TFloatField
      FieldName = 'MEDIO'
      Origin = 'MEDIO'
    end
    object CDSDepFISICO: TFloatField
      FieldName = 'FISICO'
      Origin = 'FISICO'
    end
    object CDSDepRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
      Required = True
    end
    object CDSDepFUAPRECIOS: TSQLTimeStampField
      FieldName = 'FUAPRECIOS'
      Origin = 'FUAPRECIOS'
    end
    object CDSDepSECTOR: TStringField
      FieldName = 'SECTOR'
      Origin = 'SECTOR'
      Size = 2
    end
    object CDSDepUBICACION: TStringField
      FieldName = 'UBICACION'
      Origin = 'UBICACION'
      Size = 3
    end
    object CDSDepFULTAJUSTE: TSQLTimeStampField
      FieldName = 'FULTAJUSTE'
      Origin = 'FULTAJUSTE'
    end
    object CDSDepUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
      Required = True
    end
  end
  object QDep: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from depositostk '
      'where codigo_deposito= :deposito and codigo_stk= :codigo')
    Left = 528
    Top = 440
    ParamData = <
      item
        Position = 1
        Name = 'deposito'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QDepID_DEPOSITO: TIntegerField
      FieldName = 'ID_DEPOSITO'
      Origin = 'ID_DEPOSITO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDepCODIGO_DEPOSITO: TIntegerField
      FieldName = 'CODIGO_DEPOSITO'
      Origin = 'CODIGO_DEPOSITO'
      Required = True
    end
    object QDepCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object QDepSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QDepINICIAL: TFloatField
      FieldName = 'INICIAL'
      Origin = 'INICIAL'
    end
    object QDepMINIMO: TFloatField
      FieldName = 'MINIMO'
      Origin = 'MINIMO'
    end
    object QDepMEDIO: TFloatField
      FieldName = 'MEDIO'
      Origin = 'MEDIO'
    end
    object QDepFISICO: TFloatField
      FieldName = 'FISICO'
      Origin = 'FISICO'
    end
    object QDepRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
      Required = True
    end
    object QDepFUAPRECIOS: TSQLTimeStampField
      FieldName = 'FUAPRECIOS'
      Origin = 'FUAPRECIOS'
    end
    object QDepSECTOR: TStringField
      FieldName = 'SECTOR'
      Origin = 'SECTOR'
      Size = 2
    end
    object QDepUBICACION: TStringField
      FieldName = 'UBICACION'
      Origin = 'UBICACION'
      Size = 3
    end
    object QDepFULTAJUSTE: TSQLTimeStampField
      FieldName = 'FULTAJUSTE'
      Origin = 'FULTAJUSTE'
    end
    object QDepUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
      Required = True
    end
    object QDepAVISO_MINIMOSTOCK: TStringField
      FieldName = 'AVISO_MINIMOSTOCK'
      Origin = 'AVISO_MINIMOSTOCK'
      FixedChar = True
      Size = 1
    end
  end
  object ibgIdDep: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_DEPOSITOSTK'
    SystemGenerators = False
    Left = 680
    Top = 441
  end
  object DSPMarca: TDataSetProvider
    DataSet = QMarca
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 16
  end
  object CDSMarca: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMarca'
    Left = 192
    Top = 24
    object CDSMarcaMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object CDSMarcaDESCRIPCION_MARCA: TStringField
      FieldName = 'DESCRIPCION_MARCA'
      Origin = 'DESCRIPCION_MARCA'
      Size = 25
    end
    object CDSMarcaOBSERVACION_MARCA: TStringField
      FieldName = 'OBSERVACION_MARCA'
      Origin = 'OBSERVACION_MARCA'
      Size = 40
    end
  end
  object QMarca: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from marcas'
      'where marca_stk=:codigo')
    Left = 24
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QMarcaMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object QMarcaDESCRIPCION_MARCA: TStringField
      FieldName = 'DESCRIPCION_MARCA'
      Origin = 'DESCRIPCION_MARCA'
      Size = 25
    end
    object QMarcaOBSERVACION_MARCA: TStringField
      FieldName = 'OBSERVACION_MARCA'
      Origin = 'OBSERVACION_MARCA'
      Size = 40
    end
  end
  object DSPRubro: TDataSetProvider
    DataSet = QRubro
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 88
  end
  object CDSRubro: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRubro'
    Left = 192
    Top = 88
    object CDSRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CDSRubroDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
    object CDSRubroCONTROL_RUBRO: TStringField
      FieldName = 'CONTROL_RUBRO'
      Origin = 'CONTROL_RUBRO'
      Size = 1
    end
    object CDSRubroFUERA_PROMO: TStringField
      FieldName = 'FUERA_PROMO'
      Origin = 'FUERA_PROMO'
      FixedChar = True
      Size = 1
    end
    object CDSRubroORDEN: TIntegerField
      FieldName = 'ORDEN'
      Origin = 'ORDEN'
      Required = True
    end
  end
  object QRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from rubros'
      'where codigo_rubro=:codigo')
    Left = 24
    Top = 80
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QRubroDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
    object QRubroCONTROL_RUBRO: TStringField
      FieldName = 'CONTROL_RUBRO'
      Origin = 'CONTROL_RUBRO'
      Size = 1
    end
    object QRubroFUERA_PROMO: TStringField
      FieldName = 'FUERA_PROMO'
      Origin = 'FUERA_PROMO'
      FixedChar = True
      Size = 1
    end
    object QRubroORDEN: TIntegerField
      FieldName = 'ORDEN'
      Origin = 'ORDEN'
      Required = True
    end
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      
        'Database=C:\Proyectos Delphi\GestionComercial\Tablas IB\GESTIONV' +
        '3.FDB'
      'User_Name=sysdba'
      'Password=regulador'
      'DriverID=FB')
    LoginPrompt = False
    Left = 616
    Top = 32
  end
  object QBorrarArticulo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from stock s where s.codigo_stk = :codigo')
    Left = 40
    Top = 392
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
  end
  object QInactivarStk: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update stock s set s.clase_articulo = 0 where s.codigo_stk = :co' +
        'digo')
    Left = 48
    Top = 464
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
  end
  object QVerificaStockConMov: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from VERIFICA_MOV_STOCK ( :codigo )')
    Left = 64
    Top = 544
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object QVerificaStockConMovESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 1
    end
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 616
    Top = 136
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 616
    Top = 247
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 616
    Top = 184
  end
  object QStockLocal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.codigo_stk from  stock s')
    Left = 168
    Top = 393
    object QStockLocalCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
  end
  object DSPSubRubro: TDataSetProvider
    DataSet = QSubRubro
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 144
  end
  object CDSSubRubro: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSubRubro'
    Left = 192
    Top = 144
    object CDSSubRubroCODIGO_SUBRUBRO: TStringField
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object CDSSubRubroDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Required = True
      Size = 45
    end
    object CDSSubRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
    object CDSSubRubroCONTROL_SUBRUBRO: TStringField
      FieldName = 'CONTROL_SUBRUBRO'
      Origin = 'CONTROL_SUBRUBRO'
      FixedChar = True
      Size = 1
    end
    object CDSSubRubroFUERA_PROMO: TStringField
      FieldName = 'FUERA_PROMO'
      Origin = 'FUERA_PROMO'
      FixedChar = True
      Size = 1
    end
  end
  object QSubRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from subrubros'
      'where codigo_subrubro=:codigo')
    Left = 24
    Top = 144
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QSubRubroCODIGO_SUBRUBRO: TStringField
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object QSubRubroDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Required = True
      Size = 45
    end
    object QSubRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
    object QSubRubroCONTROL_SUBRUBRO: TStringField
      FieldName = 'CONTROL_SUBRUBRO'
      Origin = 'CONTROL_SUBRUBRO'
      FixedChar = True
      Size = 1
    end
    object QSubRubroFUERA_PROMO: TStringField
      FieldName = 'FUERA_PROMO'
      Origin = 'FUERA_PROMO'
      FixedChar = True
      Size = 1
    end
  end
  object QCodigoBarra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select cb.* from  codigobarra cb where cb.codigo_stk= :codigo an' +
        'd cb.codigobarra= :codigoBarra')
    Left = 312
    Top = 31
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 2
        Name = 'CODIGOBARRA'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
    object QCodigoBarraID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCodigoBarraCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object QCodigoBarraCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Origin = 'CODIGOBARRA'
      Size = 50
    end
    object QCodigoBarraPRESENTACION: TIntegerField
      FieldName = 'PRESENTACION'
      Origin = 'PRESENTACION'
    end
    object QCodigoBarraPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      Origin = 'PRESENTACION_CANTIDAD'
      Required = True
    end
  end
  object CDSCodigoBarra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftString
        Name = 'CODIGOBARRA'
        ParamType = ptInput
        Size = 50
      end>
    ProviderName = 'DSPCodigoBarra'
    OnNewRecord = CDSCodigoBarraNewRecord
    Left = 392
    Top = 32
    object CDSCodigoBarraID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSCodigoBarraCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object CDSCodigoBarraCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Size = 50
    end
    object CDSCodigoBarraPRESENTACION: TIntegerField
      FieldName = 'PRESENTACION'
    end
    object CDSCodigoBarraPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      Required = True
    end
  end
  object DSPCodigoBarra: TDataSetProvider
    DataSet = QCodigoBarra
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 464
    Top = 32
  end
  object ibgCodBarra: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_CODIGOBARRA'
    SystemGenerators = False
    Left = 536
    Top = 33
  end
  object DSPDepositos: TDataSetProvider
    DataSet = QDepositos
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 256
  end
  object CDSDepositos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDepositos'
    Left = 192
    Top = 256
    object CDSDepositosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDepositosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object CDSDepositosSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object CDSDepositosCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Origin = 'CENTRALIZA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSDepositosCENTRALIZA_WEB: TStringField
      FieldName = 'CENTRALIZA_WEB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSDepositosACTIVO: TStringField
      FieldName = 'ACTIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QDepositos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from depositos '
      'where id=:codigo')
    Left = 24
    Top = 256
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QDepositosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDepositosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object QDepositosSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QDepositosCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Origin = 'CENTRALIZA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QDepositosCENTRALIZA_WEB: TStringField
      FieldName = 'CENTRALIZA_WEB'
      Origin = 'CENTRALIZA_WEB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QDepositosACTIVO: TStringField
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QListaPrecios: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select l.* from  listaprecioespecialart l where l.codigoarticulo' +
        '=:codigo and l.id_cab=:id')
    Left = 24
    Top = 199
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 2
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QListaPreciosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QListaPreciosID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      Required = True
    end
    object QListaPreciosRUBRO: TStringField
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
      Required = True
      Size = 3
    end
    object QListaPreciosSUBRUBRO: TStringField
      FieldName = 'SUBRUBRO'
      Origin = 'SUBRUBRO'
      Required = True
      Size = 5
    end
    object QListaPreciosCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object QListaPreciosCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
      Required = True
    end
    object QListaPreciosCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
      Required = True
    end
    object QListaPreciosCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
      Required = True
    end
    object QListaPreciosIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
      Required = True
    end
    object QListaPreciosRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
    end
    object QListaPreciosPRECIO_GRAVADO: TFloatField
      FieldName = 'PRECIO_GRAVADO'
      Origin = 'PRECIO_GRAVADO'
    end
    object QListaPreciosIVA_IMPORTE: TFloatField
      FieldName = 'IVA_IMPORTE'
      Origin = 'IVA_IMPORTE'
      Required = True
    end
    object QListaPreciosPRECIO_EXENTO: TFloatField
      FieldName = 'PRECIO_EXENTO'
      Origin = 'PRECIO_EXENTO'
    end
    object QListaPreciosPRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
    end
    object QListaPreciosDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      Required = True
    end
    object QListaPreciosREC_APLICAR: TFloatField
      FieldName = 'REC_APLICAR'
      Origin = 'REC_APLICAR'
      Required = True
    end
    object QListaPreciosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
  end
  object DSPListaPrecios: TDataSetProvider
    DataSet = QListaPrecios
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 200
  end
  object CDSListaPrecios: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPListaPrecios'
    OnNewRecord = CDSListaPreciosNewRecord
    Left = 192
    Top = 200
    object CDSListaPreciosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSListaPreciosID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      Required = True
    end
    object CDSListaPreciosRUBRO: TStringField
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
      Required = True
      Size = 3
    end
    object CDSListaPreciosSUBRUBRO: TStringField
      FieldName = 'SUBRUBRO'
      Origin = 'SUBRUBRO'
      Required = True
      Size = 5
    end
    object CDSListaPreciosCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object CDSListaPreciosCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
      Required = True
    end
    object CDSListaPreciosCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
      Required = True
    end
    object CDSListaPreciosCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
      Required = True
    end
    object CDSListaPreciosIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
      Required = True
    end
    object CDSListaPreciosRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
    end
    object CDSListaPreciosPRECIO_GRAVADO: TFloatField
      FieldName = 'PRECIO_GRAVADO'
      Origin = 'PRECIO_GRAVADO'
    end
    object CDSListaPreciosIVA_IMPORTE: TFloatField
      FieldName = 'IVA_IMPORTE'
      Origin = 'IVA_IMPORTE'
      Required = True
    end
    object CDSListaPreciosPRECIO_EXENTO: TFloatField
      FieldName = 'PRECIO_EXENTO'
      Origin = 'PRECIO_EXENTO'
    end
    object CDSListaPreciosPRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
    end
    object CDSListaPreciosDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      Required = True
    end
    object CDSListaPreciosREC_APLICAR: TFloatField
      FieldName = 'REC_APLICAR'
      Origin = 'REC_APLICAR'
      Required = True
    end
    object CDSListaPreciosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
  end
  object ibgListaPrecio: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_LISTAPRECIOESPECIALART'
    SystemGenerators = False
    Left = 296
    Top = 201
  end
  object QStock: TFDQuery
    OnNewRecord = QStockNewRecord
    CachedUpdates = True
    Connection = FDConnection
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end>
    SQL.Strings = (
      'select * from stock'
      'where codigo_stk= :codigo')
    Left = 528
    Top = 378
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object QStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object QStockDETALLE_STK_ADICIONAL: TStringField
      FieldName = 'DETALLE_STK_ADICIONAL'
      Origin = 'DETALLE_STK_ADICIONAL'
      Size = 300
    end
    object QStockCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Size = 25
    end
    object QStockRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      Required = True
      Size = 3
    end
    object QStockSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      Required = True
      Size = 5
    end
    object QStockMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      Size = 4
    end
    object QStockTASA_IVA: TIntegerField
      FieldName = 'TASA_IVA'
      Origin = 'TASA_IVA'
      Required = True
    end
    object QStockSOBRETASA_IVA: TIntegerField
      FieldName = 'SOBRETASA_IVA'
      Origin = 'SOBRETASA_IVA'
    end
    object QStockCOSTO_GRAVADO_STK: TFloatField
      FieldName = 'COSTO_GRAVADO_STK'
      Origin = 'COSTO_GRAVADO_STK'
      Required = True
    end
    object QStockCOSTO_IVA: TFloatField
      FieldName = 'COSTO_IVA'
      Origin = 'COSTO_IVA'
      Required = True
    end
    object QStockCOSTO_FINAL: TFloatField
      FieldName = 'COSTO_FINAL'
      Origin = 'COSTO_FINAL'
      Required = True
    end
    object QStockCOSTO_EXENTO_STK: TFloatField
      FieldName = 'COSTO_EXENTO_STK'
      Origin = 'COSTO_EXENTO_STK'
      Required = True
    end
    object QStockCOSTO_TOTAL_STK: TFloatField
      FieldName = 'COSTO_TOTAL_STK'
      Origin = 'COSTO_TOTAL_STK'
      Required = True
    end
    object QStockREEMPLAZO_STK: TStringField
      FieldName = 'REEMPLAZO_STK'
      Origin = 'REEMPLAZO_STK'
      Required = True
    end
    object QStockFIJACION_PRECIO_GRAVADO: TFloatField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Origin = 'FIJACION_PRECIO_GRAVADO'
      Required = True
    end
    object QStockFIJACION_PRECIO_IVA: TFloatField
      FieldName = 'FIJACION_PRECIO_IVA'
      Origin = 'FIJACION_PRECIO_IVA'
      Required = True
    end
    object QStockFIJACION_PRECIO_FINAL: TFloatField
      FieldName = 'FIJACION_PRECIO_FINAL'
      Origin = 'FIJACION_PRECIO_FINAL'
      Required = True
    end
    object QStockFIJACION_PRECIO_EXENTO: TFloatField
      FieldName = 'FIJACION_PRECIO_EXENTO'
      Origin = 'FIJACION_PRECIO_EXENTO'
      Required = True
    end
    object QStockFIJACION_PRECIO_TOTAL: TFloatField
      FieldName = 'FIJACION_PRECIO_TOTAL'
      Origin = 'FIJACION_PRECIO_TOTAL'
      Required = True
    end
    object QStockFUAP: TDateField
      FieldName = 'FUAP'
      Origin = 'FUAP'
    end
    object QStockUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QStockCONTROLASTOCK: TStringField
      FieldName = 'CONTROLASTOCK'
      Origin = 'CONTROLASTOCK'
      Required = True
      Size = 1
    end
    object QStockCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Origin = 'CODIGO_PROVEEDOR'
      Size = 10
    end
    object QStockCLASE_ARTICULO: TIntegerField
      FieldName = 'CLASE_ARTICULO'
      Origin = 'CLASE_ARTICULO'
    end
    object QStockMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Size = 1
    end
    object QStockCON_IMP_INT: TStringField
      FieldName = 'CON_IMP_INT'
      Origin = 'CON_IMP_INT'
      Size = 1
    end
    object QStockIMPUESTO_INTERNOS: TFloatField
      FieldName = 'IMPUESTO_INTERNOS'
      Origin = 'IMPUESTO_INTERNOS'
    end
    object QStockGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Origin = 'GRAVADO_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockTASA_IB: TIntegerField
      FieldName = 'TASA_IB'
      Origin = 'TASA_IB'
      Required = True
    end
    object QStockACTUALIZACOSTO: TStringField
      FieldName = 'ACTUALIZACOSTO'
      Origin = 'ACTUALIZACOSTO'
      FixedChar = True
      Size = 1
    end
    object QStockDEPRODUCCION: TStringField
      FieldName = 'DEPRODUCCION'
      Origin = 'DEPRODUCCION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockPRODUCCIONDIRECTA: TStringField
      FieldName = 'PRODUCCIONDIRECTA'
      Origin = 'PRODUCCIONDIRECTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockUNIDAD_COMPRA: TStringField
      FieldName = 'UNIDAD_COMPRA'
      Origin = 'UNIDAD_COMPRA'
      Size = 3
    end
    object QStockCONTENIDO_COMPRA: TFloatField
      FieldName = 'CONTENIDO_COMPRA'
      Origin = 'CONTENIDO_COMPRA'
      Required = True
    end
    object QStockCONTROL_SERIE: TStringField
      FieldName = 'CONTROL_SERIE'
      Origin = 'CONTROL_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockUSA_CODIGOBARRA: TStringField
      FieldName = 'USA_CODIGOBARRA'
      Origin = 'USA_CODIGOBARRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockUNIDAD_ULTIMAUSADA: TStringField
      FieldName = 'UNIDAD_ULTIMAUSADA'
      Origin = 'UNIDAD_ULTIMAUSADA'
      Size = 3
    end
    object QStockID_TABLAPRECIOS: TIntegerField
      FieldName = 'ID_TABLAPRECIOS'
      Origin = 'ID_TABLAPRECIOS'
    end
    object QStockID_TABLAPRECIOSDETALLE: TIntegerField
      FieldName = 'ID_TABLAPRECIOSDETALLE'
      Origin = 'ID_TABLAPRECIOSDETALLE'
    end
    object QStockCODIGO_PRECIO: TIntegerField
      FieldName = 'CODIGO_PRECIO'
      Origin = 'CODIGO_PRECIO'
    end
    object QStockFECHA_ALTA: TDateField
      FieldName = 'FECHA_ALTA'
      Origin = 'FECHA_ALTA'
    end
    object QStockCOSTO_GRAVADO_SOMBRA: TFloatField
      FieldName = 'COSTO_GRAVADO_SOMBRA'
      Origin = 'COSTO_GRAVADO_SOMBRA'
      Required = True
    end
    object QStockCOSTO_EXENTO_SOMBRA: TFloatField
      FieldName = 'COSTO_EXENTO_SOMBRA'
      Origin = 'COSTO_EXENTO_SOMBRA'
      Required = True
    end
    object QStockFECHA_ACT_SOMBRA: TDateField
      FieldName = 'FECHA_ACT_SOMBRA'
      Origin = 'FECHA_ACT_SOMBRA'
    end
    object QStockFECHA_ULTIMAVTA: TDateField
      FieldName = 'FECHA_ULTIMAVTA'
      Origin = 'FECHA_ULTIMAVTA'
    end
    object QStockMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object QStockCOSTO_GRAVADO_P: TFloatField
      FieldName = 'COSTO_GRAVADO_P'
      Origin = 'COSTO_GRAVADO_P'
      Required = True
    end
    object QStockCOSTO_EXENTO_P: TFloatField
      FieldName = 'COSTO_EXENTO_P'
      Origin = 'COSTO_EXENTO_P'
      Required = True
    end
    object QStockCOSTO_TOTAL_P: TFloatField
      FieldName = 'COSTO_TOTAL_P'
      Origin = 'COSTO_TOTAL_P'
      Required = True
    end
    object QStockPOSICION: TStringField
      FieldName = 'POSICION'
      Origin = 'POSICION'
      Size = 10
    end
    object QStockPRESENTACION_UNIDAD: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      Origin = 'PRESENTACION_UNIDAD'
      Size = 3
    end
    object QStockPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      Origin = 'PRESENTACION_CANTIDAD'
      Required = True
    end
    object QStockEDITAPRECIO: TStringField
      FieldName = 'EDITAPRECIO'
      Origin = 'EDITAPRECIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockEDITADETALLE: TStringField
      FieldName = 'EDITADETALLE'
      Origin = 'EDITADETALLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockURL: TStringField
      FieldName = 'URL'
      Origin = 'URL'
      Size = 250
    end
    object QStockFECHA_ULTIMA_COMPRA: TDateField
      FieldName = 'FECHA_ULTIMA_COMPRA'
      Origin = 'FECHA_ULTIMA_COMPRA'
    end
    object QStockCOMANDA: TStringField
      FieldName = 'COMANDA'
      Origin = 'COMANDA'
      FixedChar = True
      Size = 1
    end
    object QStockPORCENTAJE_SOBRECOSTO: TFloatField
      FieldName = 'PORCENTAJE_SOBRECOSTO'
      Origin = 'PORCENTAJE_SOBRECOSTO'
    end
    object QStockRUBRO_GASTO: TStringField
      FieldName = 'RUBRO_GASTO'
      Origin = 'RUBRO_GASTO'
      Required = True
      Size = 3
    end
    object QStockRUBRO_CTA_GASTO: TStringField
      FieldName = 'RUBRO_CTA_GASTO'
      Origin = 'RUBRO_CTA_GASTO'
      Required = True
      Size = 6
    end
    object QStockPUBLICAR_WEB: TStringField
      FieldName = 'PUBLICAR_WEB'
      Origin = 'PUBLICAR_WEB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockGTIA_MESES: TIntegerField
      FieldName = 'GTIA_MESES'
      Origin = 'GTIA_MESES'
      Required = True
    end
    object QStockGARANTIAOFICIAL: TStringField
      FieldName = 'GARANTIAOFICIAL'
      Origin = 'GARANTIAOFICIAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockADICIONAL_SOBRECOSTO: TFloatField
      FieldName = 'ADICIONAL_SOBRECOSTO'
      Origin = 'ADICIONAL_SOBRECOSTO'
      Required = True
    end
    object QStockIMPRIMIR_LSTPRECIOS: TStringField
      FieldName = 'IMPRIMIR_LSTPRECIOS'
      Origin = 'IMPRIMIR_LSTPRECIOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockCONTROL_TRAZABILIDAD: TStringField
      FieldName = 'CONTROL_TRAZABILIDAD'
      Origin = 'CONTROL_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockIVA_MODIFICADO: TStringField
      FieldName = 'IVA_MODIFICADO'
      Origin = 'IVA_MODIFICADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockSIGLAS: TStringField
      FieldName = 'SIGLAS'
      Origin = 'SIGLAS'
      Size = 2
    end
    object QStockPRESENTACION_2_CANT: TFloatField
      FieldName = 'PRESENTACION_2_CANT'
      Origin = 'PRESENTACION_2_CANT'
      Required = True
    end
    object QStockTASA_MANUFACTURA: TStringField
      FieldName = 'TASA_MANUFACTURA'
      Origin = 'TASA_MANUFACTURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockPLU: TStringField
      FieldName = 'PLU'
      Origin = 'PLU'
      Size = 5
    end
    object QStockACOPIABLE: TStringField
      FieldName = 'ACOPIABLE'
      Origin = 'ACOPIABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockCIKO_TIPO: TIntegerField
      FieldName = 'CIKO_TIPO'
      Origin = 'CIKO_TIPO'
      Required = True
    end
    object QStockLARGO_1: TFloatField
      FieldName = 'LARGO_1'
      Origin = 'LARGO_1'
      Required = True
    end
    object QStockLARGO_2: TFloatField
      FieldName = 'LARGO_2'
      Origin = 'LARGO_2'
      Required = True
    end
    object QStockLARGO_3: TFloatField
      FieldName = 'LARGO_3'
      Origin = 'LARGO_3'
      Required = True
    end
    object QStockMODO_IVA: TStringField
      FieldName = 'MODO_IVA'
      Origin = 'MODO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockROTURA_1: TFloatField
      FieldName = 'ROTURA_1'
      Origin = 'ROTURA_1'
      Required = True
    end
    object QStockROTURA_2: TFloatField
      FieldName = 'ROTURA_2'
      Origin = 'ROTURA_2'
      Required = True
    end
    object QStockCIMA: TFloatField
      FieldName = 'CIMA'
      Origin = 'CIMA'
      Required = True
    end
    object QStockBASE: TFloatField
      FieldName = 'BASE'
      Origin = 'BASE'
      Required = True
    end
    object QStockVOLUMEN: TFloatField
      FieldName = 'VOLUMEN'
      Origin = 'VOLUMEN'
      Required = True
    end
    object QStockPESO: TFloatField
      FieldName = 'PESO'
      Origin = 'PESO'
      Required = True
    end
    object QStockDIAMETRO_OLLA: TFloatField
      FieldName = 'DIAMETRO_OLLA'
      Origin = 'DIAMETRO_OLLA'
      Required = True
    end
    object QStockALTO_ACC: TFloatField
      FieldName = 'ALTO_ACC'
      Origin = 'ALTO_ACC'
      Required = True
    end
    object QStockTIPOADICIONAL: TStringField
      FieldName = 'TIPOADICIONAL'
      Origin = 'TIPOADICIONAL'
      Size = 10
    end
    object QStockPESO_CALCULADO: TFloatField
      FieldName = 'PESO_CALCULADO'
      Origin = 'PESO_CALCULADO'
      Required = True
    end
    object QStockDISPONIBLE: TStringField
      FieldName = 'DISPONIBLE'
      Origin = 'DISPONIBLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockPRESENTACION_TOLERANCIA: TFloatField
      FieldName = 'PRESENTACION_TOLERANCIA'
      Origin = 'PRESENTACION_TOLERANCIA'
      Required = True
    end
    object QStockPERCIBE_IVA: TStringField
      FieldName = 'PERCIBE_IVA'
      Origin = 'PERCIBE_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockID_TASA_PERCEP_IVA: TIntegerField
      FieldName = 'ID_TASA_PERCEP_IVA'
      Origin = 'ID_TASA_PERCEP_IVA'
      Required = True
    end
    object QStockAPLICA_TASA_DIF: TStringField
      FieldName = 'APLICA_TASA_DIF'
      Origin = 'APLICA_TASA_DIF'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockPLU_SECCION: TStringField
      FieldName = 'PLU_SECCION'
      Origin = 'PLU_SECCION'
      Size = 50
    end
    object QStockDESCRIPCION_CORTA: TMemoField
      FieldName = 'DESCRIPCION_CORTA'
      Origin = 'DESCRIPCION_CORTA'
      BlobType = ftMemo
    end
    object QStockDESCRIPCION_LARGA: TMemoField
      FieldName = 'DESCRIPCION_LARGA'
      Origin = 'DESCRIPCION_LARGA'
      BlobType = ftMemo
    end
    object QStockCATEGORIAS_WEB: TStringField
      FieldName = 'CATEGORIAS_WEB'
      Origin = 'CATEGORIAS_WEB'
      Size = 100
    end
    object QStockDETALLE_CORTO: TStringField
      FieldName = 'DETALLE_CORTO'
      Origin = 'DETALLE_CORTO'
      Size = 18
    end
    object QStockPLU_2: TStringField
      FieldName = 'PLU_2'
      Origin = 'PLU_2'
      Size = 5
    end
    object QStockARTICULO_VARIABLE: TStringField
      FieldName = 'ARTICULO_VARIABLE'
      Origin = 'ARTICULO_VARIABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockFOB: TSingleField
      FieldName = 'FOB'
      Origin = 'FOB'
    end
    object QStockCODIGO_ART_VARIABLE: TStringField
      FieldName = 'CODIGO_ART_VARIABLE'
      Origin = 'CODIGO_ART_VARIABLE'
      Required = True
      Size = 8
    end
    object QStockDIAS_VENCIMIENTO: TIntegerField
      FieldName = 'DIAS_VENCIMIENTO'
      Origin = 'DIAS_VENCIMIENTO'
    end
    object QStockFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object QStockDETALLE_NORM: TStringField
      FieldName = 'DETALLE_NORM'
      Origin = 'DETALLE_NORM'
      Size = 200
    end
    object QStockSECTOR_PRODUCCION: TIntegerField
      FieldName = 'SECTOR_PRODUCCION'
      Origin = 'SECTOR_PRODUCCION'
      Required = True
    end
  end
  object QDescuentos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from STOCK_DSTO_ESPECIAL'
      'where codigo=:codigo')
    Left = 24
    Top = 312
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QDescuentosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QDescuentosDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      Required = True
    end
    object QDescuentosPRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      Required = True
    end
    object QDescuentosDESDE: TSQLTimeStampField
      FieldName = 'DESDE'
      Origin = 'DESDE'
      Required = True
    end
    object QDescuentosHASTA: TSQLTimeStampField
      FieldName = 'HASTA'
      Origin = 'HASTA'
      Required = True
    end
    object QDescuentosSOLOCLIENTES: TStringField
      FieldName = 'SOLOCLIENTES'
      Origin = 'SOLOCLIENTES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QDescuentosAPLICA_LUNES: TStringField
      FieldName = 'APLICA_LUNES'
      Origin = 'APLICA_LUNES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QDescuentosAPLICA_MARTES: TStringField
      FieldName = 'APLICA_MARTES'
      Origin = 'APLICA_MARTES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QDescuentosAPLICA_MIERCOLES: TStringField
      FieldName = 'APLICA_MIERCOLES'
      Origin = 'APLICA_MIERCOLES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QDescuentosAPLICA_JUEVES: TStringField
      FieldName = 'APLICA_JUEVES'
      Origin = 'APLICA_JUEVES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QDescuentosAPLICA_VIERNES: TStringField
      FieldName = 'APLICA_VIERNES'
      Origin = 'APLICA_VIERNES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QDescuentosAPLICA_SABADOS: TStringField
      FieldName = 'APLICA_SABADOS'
      Origin = 'APLICA_SABADOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QDescuentosAPLICA_DOMINGO: TStringField
      FieldName = 'APLICA_DOMINGO'
      Origin = 'APLICA_DOMINGO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QDescuentosAPLICA_ALL_DAYS: TStringField
      FieldName = 'APLICA_ALL_DAYS'
      Origin = 'APLICA_ALL_DAYS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPDescuentos: TDataSetProvider
    DataSet = QDescuentos
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 312
  end
  object CDSDescuentos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDescuentos'
    Left = 184
    Top = 312
    object CDSDescuentosCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 8
    end
    object CDSDescuentosDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Required = True
    end
    object CDSDescuentosPRECIO: TFloatField
      FieldName = 'PRECIO'
      Required = True
    end
    object CDSDescuentosDESDE: TSQLTimeStampField
      FieldName = 'DESDE'
      Required = True
    end
    object CDSDescuentosHASTA: TSQLTimeStampField
      FieldName = 'HASTA'
      Required = True
    end
    object CDSDescuentosSOLOCLIENTES: TStringField
      FieldName = 'SOLOCLIENTES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSDescuentosAPLICA_LUNES: TStringField
      FieldName = 'APLICA_LUNES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSDescuentosAPLICA_MARTES: TStringField
      FieldName = 'APLICA_MARTES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSDescuentosAPLICA_MIERCOLES: TStringField
      FieldName = 'APLICA_MIERCOLES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSDescuentosAPLICA_JUEVES: TStringField
      FieldName = 'APLICA_JUEVES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSDescuentosAPLICA_VIERNES: TStringField
      FieldName = 'APLICA_VIERNES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSDescuentosAPLICA_SABADOS: TStringField
      FieldName = 'APLICA_SABADOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSDescuentosAPLICA_DOMINGO: TStringField
      FieldName = 'APLICA_DOMINGO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSDescuentosAPLICA_ALL_DAYS: TStringField
      FieldName = 'APLICA_ALL_DAYS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QBorrarDsctos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from STOCK_DSTO_ESPECIAL'
      '')
    Left = 296
    Top = 312
    object StringField1: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object FloatField1: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      Required = True
    end
    object FloatField2: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      Required = True
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'DESDE'
      Origin = 'DESDE'
      Required = True
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'HASTA'
      Origin = 'HASTA'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'SOLOCLIENTES'
      Origin = 'SOLOCLIENTES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField3: TStringField
      FieldName = 'APLICA_LUNES'
      Origin = 'APLICA_LUNES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField4: TStringField
      FieldName = 'APLICA_MARTES'
      Origin = 'APLICA_MARTES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField5: TStringField
      FieldName = 'APLICA_MIERCOLES'
      Origin = 'APLICA_MIERCOLES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField6: TStringField
      FieldName = 'APLICA_JUEVES'
      Origin = 'APLICA_JUEVES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField7: TStringField
      FieldName = 'APLICA_VIERNES'
      Origin = 'APLICA_VIERNES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField8: TStringField
      FieldName = 'APLICA_SABADOS'
      Origin = 'APLICA_SABADOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField9: TStringField
      FieldName = 'APLICA_DOMINGO'
      Origin = 'APLICA_DOMINGO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField10: TStringField
      FieldName = 'APLICA_ALL_DAYS'
      Origin = 'APLICA_ALL_DAYS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end
