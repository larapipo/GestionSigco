object DatosPedidosMorphi: TDatosPedidosMorphi
  Height = 531
  Width = 603
  object FDConnectionMorphi: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=regulador'
      'Database=C:\Proyectos Delphi\MORPHI_FABRICA.FDB'
      'DriverID=FB')
    LoginPrompt = False
    Left = 48
    Top = 24
  end
  object DSPedCab: TDataSource
    DataSet = CDSPedCab
    Left = 424
    Top = 104
  end
  object DSPedDet: TDataSource
    DataSet = CDSPedDet
    Left = 416
    Top = 160
  end
  object DSPedidosMarcados: TDataSource
    DataSet = CDSPedidosMarcados
    Left = 420
    Top = 216
  end
  object CDSPedCab: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPPedCab'
    AfterScroll = CDSPedCabAfterScroll
    Left = 288
    Top = 96
    object CDSPedCabINDICE: TLargeintField
      FieldName = 'INDICE'
      Origin = 'INDICE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPedCabCTE_CODIGO: TSmallintField
      FieldName = 'CTE_CODIGO'
      Origin = 'CTE_CODIGO'
    end
    object CDSPedCabPREFIJO: TIntegerField
      DisplayLabel = 'Prefijo'
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
    end
    object CDSPedCabNUMERO: TLargeintField
      DisplayLabel = 'Numero'
      DisplayWidth = 10
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object CDSPedCabFECHA: TDateField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSPedCabHORA: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object CDSPedCabFECHA_LIMITE: TDateField
      DisplayLabel = 'F.Limite'
      FieldName = 'FECHA_LIMITE'
      Origin = 'FECHA_LIMITE'
    end
    object CDSPedCabCOD_SUCURSAL_PIDE: TSmallintField
      DisplayLabel = 'Sucursal'
      FieldName = 'COD_SUCURSAL_PIDE'
      Origin = 'COD_SUCURSAL_PIDE'
    end
    object CDSPedCabCOD_SUCURSAL_ENTREGA: TSmallintField
      DisplayLabel = 'Suc.Entrega'
      FieldName = 'COD_SUCURSAL_ENTREGA'
      Origin = 'COD_SUCURSAL_ENTREGA'
    end
    object CDSPedCabOBSERVACIONES: TStringField
      DisplayWidth = 100
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      Size = 240
    end
    object CDSPedCabUSUARIO: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
    end
    object CDSPedCabESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 2
    end
    object CDSPedCabUSUARIO_MODIFICO: TStringField
      DisplayLabel = 'Modifico'
      FieldName = 'USUARIO_MODIFICO'
      Origin = 'USUARIO_MODIFICO'
    end
    object CDSPedCabNOMBRE: TStringField
      FieldName = 'Nombre'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 40
    end
    object CDSPedCabPIDE_NTACTO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nc'
      FieldName = 'PIDE_NTACTO'
      Origin = 'PIDE_NTACTO'
      ProviderFlags = []
      Size = 1
    end
  end
  object CDSPedDet: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'INDICECAB'
    MasterFields = 'INDICE'
    Params = <
      item
        DataType = ftLargeint
        Name = 'IDDESDE'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftLargeint
        Name = 'IDHASTA'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'DSPPedDet'
    OnCalcFields = CDSPedDetCalcFields
    Left = 288
    Top = 152
    object CDSPedDetINDICECAB: TLargeintField
      FieldName = 'INDICECAB'
      Origin = 'INDICECAB'
    end
    object CDSPedDetINDICE: TLargeintField
      DisplayLabel = 'Indx'
      FieldName = 'INDICE'
      Origin = 'INDICE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPedDetCOD_ARTICU: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'COD_ARTICU'
      Origin = 'COD_ARTICU'
      Size = 15
    end
    object CDSPedDetUNIDAD: TStringField
      DisplayLabel = 'Unidad'
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 10
    end
    object CDSPedDetCANTIDAD_ACTUAL: TFloatField
      DisplayLabel = 'Can.Actual'
      FieldName = 'CANTIDAD_ACTUAL'
      Origin = 'CANTIDAD_ACTUAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSPedDetCANTIDAD: TFMTBCDField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSPedDetENTREGADO: TFMTBCDField
      DisplayLabel = 'Cant.Entregada'
      FieldName = 'ENTREGADO'
      Origin = 'ENTREGADO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSPedDetDESCRIPCION: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 60
    end
    object CDSPedDetCOD_BARRA: TStringField
      DisplayLabel = 'Cod.EAN'
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
      ProviderFlags = []
      Size = 15
    end
    object CDSPedDetEXISTE: TIntegerField
      DisplayLabel = 'Existe'
      FieldKind = fkInternalCalc
      FieldName = 'EXISTE'
      ProviderFlags = []
    end
    object CDSPedDetCOSTOUNITARIO: TFloatField
      DisplayLabel = 'Costo'
      FieldName = 'COSTOUNITARIO'
      Origin = 'COSTOUNITARIO'
      DisplayFormat = ',0.00'
    end
    object CDSPedDetIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
  end
  object CDSPedidosMarcados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPPedidosMarcados'
    Left = 288
    Top = 208
    object CDSPedidosMarcadosINDICE: TLargeintField
      DisplayLabel = 'Indice'
      FieldName = 'INDICE'
      Required = True
    end
    object CDSPedidosMarcadosCTE_CODIGO: TSmallintField
      DisplayLabel = 'Cta Codigo'
      FieldName = 'CTE_CODIGO'
    end
    object CDSPedidosMarcadosPREFIJO: TIntegerField
      DisplayLabel = 'Prefijo'
      FieldName = 'PREFIJO'
    end
    object CDSPedidosMarcadosNUMERO: TLargeintField
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO'
    end
    object CDSPedidosMarcadosFECHA: TDateField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
    object CDSPedidosMarcadosHORA: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'HORA'
    end
    object CDSPedidosMarcadosFECHA_LIMITE: TDateField
      DisplayLabel = 'Fecha Limite'
      FieldName = 'FECHA_LIMITE'
    end
    object CDSPedidosMarcadosCOD_SUCURSAL_PIDE: TSmallintField
      DisplayLabel = 'Sucrusal'
      FieldName = 'COD_SUCURSAL_PIDE'
    end
    object CDSPedidosMarcadosCOD_SUCURSAL_ENTREGA: TSmallintField
      DisplayLabel = 'Suc.Entrega'
      FieldName = 'COD_SUCURSAL_ENTREGA'
    end
    object CDSPedidosMarcadosOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Size = 240
    end
    object CDSPedidosMarcadosUSUARIO: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUARIO'
    end
    object CDSPedidosMarcadosESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'ESTADO'
      Size = 2
    end
    object CDSPedidosMarcadosUSUARIO_MODIFICO: TStringField
      DisplayLabel = 'Usuario Modifico'
      FieldName = 'USUARIO_MODIFICO'
    end
    object CDSPedidosMarcadosNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 40
    end
    object CDSPedidosMarcadosPIDE_NTACTO: TStringField
      Alignment = taCenter
      DisplayLabel = 'N.Cred.'
      FieldName = 'PIDE_NTACTO'
      Size = 1
    end
  end
  object DSPPedidosMarcados: TDataSetProvider
    DataSet = QPedidosMarcados
    Options = []
    Left = 168
    Top = 208
  end
  object DSPPedDet: TDataSetProvider
    DataSet = QPedDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 168
    Top = 152
  end
  object DSPPedCab: TDataSetProvider
    DataSet = QPedCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 176
    Top = 96
  end
  object QPedCab: TFDQuery
    Connection = FDConnectionMorphi
    SQL.Strings = (
      'select cab.*,s.nombre from st_pedsuc_cab cab'
      
        'left join gr_sucursales s on s.cod_sucursal = cab.cod_sucursal_p' +
        'ide'
      'where cab.estado='#39'E'#39
      'order by cab.fecha desc,cab.indice ')
    Left = 48
    Top = 88
  end
  object QPedDet: TFDQuery
    Connection = FDConnectionMorphi
    SQL.Strings = (
      'select lin.*,p.descripcion,p.cod_barra from st_pedsuc_cab cab'
      'left join st_pedsuc_lin lin on lin.indicecab = cab.indice'
      'left join st_productos p on p.cod_articu = lin.cod_articu'
      
        'where cab.estado='#39'E'#39' and ( lin.indicecab between :idDesde and :i' +
        'dhasta )'
      ''
      'order by lin.indicecab,lin.indice desc')
    Left = 40
    Top = 152
    ParamData = <
      item
        Position = 1
        Name = 'IDDESDE'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'IDHASTA'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
  end
  object QPedidosMarcados: TFDQuery
    Connection = FDConnectionMorphi
    SQL.Strings = (
      'select cab.*,s.nombre from st_pedsuc_cab cab'
      
        'left join gr_sucursales s on s.cod_sucursal = cab.cod_sucursal_p' +
        'ide'
      'where cab.estado='#39'F'#39
      'order by cab.indice desc')
    Left = 40
    Top = 208
  end
  object QDesmarcar: TFDQuery
    Connection = FDConnectionMorphi
    SQL.Strings = (
      'update st_pedsuc_cab cab set cab.estado='#39'E'#39
      'where cab.indice= :id')
    Left = 288
    Top = 272
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end>
  end
  object QMarcarPedido: TFDQuery
    Connection = FDConnectionMorphi
    SQL.Strings = (
      'update st_pedsuc_cab cab set cab.estado='#39'F'#39
      'where cab.indice= :id')
    Left = 168
    Top = 272
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end>
  end
  object QMaxMin: TFDQuery
    Connection = FDConnectionMorphi
    SQL.Strings = (
      'select Min(cab.indice),Max(cab.indice) from st_pedsuc_cab cab'
      'where cab.estado='#39'E'#39)
    Left = 40
    Top = 272
    object QMaxMinMIN: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'MIN'
      Origin = '"MIN"'
      ProviderFlags = []
      ReadOnly = True
    end
    object QMaxMinMAX: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'MAX'
      Origin = '"MAX"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QStockGestion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select count(s.codigo_stk) from stock s where s.reemplazo_stk=:c' +
        'odigo')
    Left = 507
    Top = 384
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT C.*  FROM Clientes C'
      'where (c.codigo=:codigo)')
    Left = 504
    Top = 464
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object QClientesDIRECCION_PARTICULAR: TStringField
      FieldName = 'DIRECCION_PARTICULAR'
      Size = 35
    end
    object QClientesDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object QClientesTELEFONO_PARTICULAR: TStringField
      FieldName = 'TELEFONO_PARTICULAR'
      Size = 10
    end
    object QClientesTELEFONO_COMERCIAL_1: TStringField
      FieldName = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object QClientesTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object QClientesTELEFONO_CELULAR: TStringField
      FieldName = 'TELEFONO_CELULAR'
      Size = 11
    end
    object QClientesID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
    end
    object QClientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object QClientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object QClientesCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Required = True
    end
    object QClientesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QClientesACTIVO: TStringField
      FieldName = 'ACTIVO'
      FixedChar = True
      Size = 1
    end
  end
  object QRelacion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select r.codigo,c.nombre as NomnreCliente,r.id from tabla_relaci' +
        'on_morphi r'
      'left join clientes c on c.codigo=r.codigo')
    Left = 124
    Top = 400
    object QRelacionCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QRelacionNOMNRECLIENTE: TStringField
      FieldName = 'NOMNRECLIENTE'
      ProviderFlags = []
      Size = 35
    end
    object QRelacionID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSPRelacion: TDataSetProvider
    DataSet = QRelacion
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 196
    Top = 400
  end
  object CDSRelacion: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRelacion'
    AfterPost = CDSRelacionAfterPost
    AfterDelete = CDSRelacionAfterDelete
    Left = 276
    Top = 400
    object CDSRelacionCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSRelacionNOMNRECLIENTE: TStringField
      FieldName = 'NOMNRECLIENTE'
      ProviderFlags = []
      Size = 35
    end
    object CDSRelacionID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
