object ServerModuleBuscadores: TServerModuleBuscadores
  OldCreateOrder = False
  Height = 720
  Width = 1167
  object QBuscaDeposito: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from depositos order by nombre')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 40
    Top = 8
    object QBuscaDepositoID: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object QBuscaDepositoNOMBRE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 25
      FieldName = 'NOMBRE'
      Visible = False
      Size = 25
    end
    object QBuscaDepositoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object QBuscaDepositoCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QBuscaSucursal: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select codigo, detalle from sucursal')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 40
    Top = 52
    object QBuscaSucursalCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Required = True
    end
    object QBuscaSucursalDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object QBuscaRubro: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select  *  from Rubros Order By Detalle_Rubro')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 40
    Top = 105
    object QBuscaRubroCODIGO_RUBRO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
    object QBuscaRubroDETALLE_RUBRO: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
  end
  object QBuscaMarca: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from Marcas Order By Descripcion_marca')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 40
    Top = 151
    object QBuscaMarcaMARCA_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'MARCA_STK'
      Required = True
      Size = 4
    end
    object QBuscaMarcaDESCRIPCION_MARCA: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'DESCRIPCION_MARCA'
      Size = 25
    end
  end
  object QBuscaUnidades: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from unidades')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 264
    Top = 16
    object QBuscaUnidadesID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Required = True
    end
    object QBuscaUnidadesSIGLAS: TStringField
      DisplayLabel = 'Siglas'
      FieldName = 'SIGLAS'
      Size = 3
    end
    object QBuscaUnidadesDESCRIPCION: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DESCRIPCION'
    end
  end
  object QBuscaPresentacion: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from presentacion')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 264
    Top = 60
    object IntegerField1: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'DBMAIN.PRESENTACION.ID'
    end
    object StringField1: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 30
      FieldName = 'DETALLE'
      Origin = 'DBMAIN.PRESENTACION.DETALLE'
      Size = 30
    end
  end
  object QBuscaIva: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from gravamen')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 264
    Top = 105
    object QBuscaIvaCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Required = True
    end
    object QBuscaIvaDESCRIPCION: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object QBuscaIvaTASA: TFMTBCDField
      DisplayLabel = '%'
      FieldName = 'TASA'
      Precision = 15
      Size = 3
    end
    object QBuscaIvaCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Required = True
    end
  end
  object QBuscaSubRubro: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select codigo_subrubro,detalle_subrubro,codigo_rubro from subrub' +
        'ros'
      'where codigo_rubro = :rubro'
      'order by detalle_subrubro')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 264
    Top = 151
    object QBuscaSubRubroCODIGO_SUBRUBRO: TStringField
      DisplayLabel = 'Cod.Sub Rubro'
      FieldName = 'CODIGO_SUBRUBRO'
      Required = True
      Size = 5
    end
    object QBuscaSubRubroDETALLE_SUBRUBRO: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_SUBRUBRO'
      Required = True
      Size = 45
    end
    object QBuscaSubRubroCODIGO_RUBRO: TStringField
      DisplayLabel = 'Cod.Rubro'
      FieldName = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
  end
  object QBuscaMoneda: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from monedas')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 40
    Top = 198
    object QBuscaMonedaID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Required = True
    end
    object QBuscaMonedaMONEDA: TStringField
      DisplayLabel = 'Moneda'
      FieldName = 'MONEDA'
      Size = 15
    end
    object QBuscaMonedaCOTIZACION: TFMTBCDField
      DisplayLabel = 'Cotizacion Vta'
      FieldName = 'COTIZACION'
      Precision = 15
      Size = 3
    end
    object QBuscaMonedaSIGNO: TStringField
      DisplayLabel = 'Signo'
      FieldName = 'SIGNO'
      Size = 5
    end
    object QBuscaMonedaORDEN: TSmallintField
      FieldName = 'ORDEN'
      Required = True
    end
    object QBuscaMonedaCOTIZACION_COMPRA: TFMTBCDField
      DisplayLabel = 'Cotizacion Comp.'
      FieldName = 'COTIZACION_COMPRA'
      Precision = 15
      Size = 3
    end
  end
  object QBuscaTablaPrecioDet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_cab'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from TABLA_PRECIOSDET'
      'where id_cab = :id_cab'
      'order by id')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 264
    Top = 198
    object QBuscaTablaPrecioDetID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QBuscaTablaPrecioDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QBuscaTablaPrecioDetCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QBuscaTablaPrecioDetPRECIO1: TFMTBCDField
      FieldName = 'PRECIO1'
      Precision = 15
      Size = 3
    end
    object QBuscaTablaPrecioDetPRECIO2: TFMTBCDField
      FieldName = 'PRECIO2'
      Precision = 15
      Size = 3
    end
  end
  object QBuscaTablaPrecioCab: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from TABLA_PRECIOSCAB order by id')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 264
    Top = 245
    object QBuscaTablaPrecioCabID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QBuscaTablaPrecioCabDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 40
    end
    object QBuscaTablaPrecioCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
  end
  object QBuscaGruposVtaDetalle: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from GRUPOS_DETALLEFACTURACION')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 40
    Top = 245
    object QBuscaGruposVtaDetalleID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QBuscaGruposVtaDetalleGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 40
    end
  end
  object QBuscaLdr: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from LdrCliente Where Codigo_Cliente=:Codigo')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 40
    Top = 293
    object QBuscaLdrCODIGO_CLIENTE: TStringField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
      Size = 6
    end
    object QBuscaLdrCODIGO_LDR: TIntegerField
      FieldName = 'CODIGO_LDR'
      Required = True
    end
    object QBuscaLdrNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QBuscaLdrDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object QBuscaLdrCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
  end
  object QBuscaNroSerie: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'deposito'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,ss.fec' +
        'haegreso,'
      'ss.deposito from stock_series ss'
      'where ss.codigo_stk=:codigo and'
      '      ss.deposito=:deposito and'
      '      ss.id_cpbte_egreso is null'
      '')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 264
    Top = 301
    object QBuscaNroSerieID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaNroSerieCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object QBuscaNroSerieCODIGOSERIE: TStringField
      FieldName = 'CODIGOSERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object QBuscaNroSerieFECHAINGRESO: TSQLTimeStampField
      FieldName = 'FECHAINGRESO'
    end
    object QBuscaNroSerieFECHAEGRESO: TSQLTimeStampField
      FieldName = 'FECHAEGRESO'
    end
  end
  object QBuscaCodigoBarra: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select s.codigo_stk,s.detalle_stk,cb.codigobarra from codigobarr' +
        'a cb'
      'left join stock s on s.codigo_stk=cb.codigo_stk'
      'where cb.codigo_stk=:codigo')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 40
    Top = 338
    object QBuscaCodigoBarraCODIGOBARRA: TStringField
      DisplayLabel = 'Codigo de Barra'
      DisplayWidth = 50
      FieldName = 'CODIGOBARRA'
      Size = 50
    end
    object QBuscaCodigoBarraDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 45
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object QBuscaCodigoBarraCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 8
      FieldName = 'CODIGO_STK'
      Size = 8
    end
  end
  object QConsultaCodigoSerie: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigoserie'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select ss.codigo_stk from stock_series ss'
      
        'where ( ss.codigoserie = :codigoserie ) and ( ss.id_cpbte_egreso' +
        ' is null )')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 480
    Top = 8
    object QConsultaCodigoSerieCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Size = 8
    end
  end
  object QBuscaSerieTransito: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Serie'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select t.serie from transubdet t where t.serie=:Serie'
      'and t.estado='#39'T'#39' and t.codigoarticulo=:codigo')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 696
    Top = 8
    object QBuscaSerieTransitoSERIE: TStringField
      DisplayWidth = 50
      FieldName = 'SERIE'
      Size = 50
    end
  end
  object QBuscaPercepIva: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from percepiva')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 480
    Top = 52
    object QBuscaPercepIvaCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = 'DBMAIN.PERCEPIVA.CODIGO'
    end
    object QBuscaPercepIvaDESCRIPCION: TStringField
      DisplayWidth = 20
      FieldName = 'DESCRIPCION'
      Origin = 'DBMAIN.PERCEPIVA.DESCRIPCION'
    end
  end
  object QBuscaPercepIB: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from PercepIB')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 480
    Top = 97
    object QBuscaPercepIBCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = 'DBMAIN.PERCEPIB.CODIGO'
    end
    object QBuscaPercepIBDESCRIPCION: TStringField
      DisplayWidth = 20
      FieldName = 'DESCRIPCION'
      Origin = 'DBMAIN.PERCEPIB.DESCRIPCION'
    end
    object QBuscaPercepIBTASA: TFMTBCDField
      FieldName = 'TASA'
      Precision = 15
      Size = 3
    end
    object QBuscaPercepIBMINIMOAPLICABLE: TFMTBCDField
      FieldName = 'MINIMOAPLICABLE'
      Precision = 15
      Size = 3
    end
    object QBuscaPercepIBCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
    end
    object QBuscaPercepIBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
    end
  end
  object QBuscaInscripcion: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select Codigo,Detalle,AplicaPercepcionIva,AplicaPercepcionIIBB f' +
        'rom Inscripcion')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 480
    Top = 143
    object QBuscaInscripcionCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QBuscaInscripcionDETALLE: TStringField
      DisplayWidth = 15
      FieldName = 'DETALLE'
      Size = 15
    end
    object QBuscaInscripcionAPLICAPERCEPCIONIVA: TStringField
      DisplayWidth = 1
      FieldName = 'APLICAPERCEPCIONIVA'
      Size = 1
    end
    object QBuscaInscripcionAPLICAPERCEPCIONIIBB: TStringField
      DisplayWidth = 1
      FieldName = 'APLICAPERCEPCIONIIBB'
      Size = 1
    end
  end
  object QBuscaCondCompraProvee: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select CC.*,  FP.Detalle, FP.Dias, FP.Descuento as Descuento_FPa' +
        'go from CondCompra CC'
      'inner join F_Pago FP on FP.Codigo=CC.CodigoPago'
      'where CC.CodigoProvee= :Codigo')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 480
    Top = 190
    object QBuscaCondCompraProveeCODIGOPAGO: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGOPAGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QBuscaCondCompraProveeCODIGOPROVEE: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGOPROVEE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
      Size = 6
    end
    object QBuscaCondCompraProveeDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 20
      FieldName = 'DETALLE'
      ProviderFlags = []
    end
    object QBuscaCondCompraProveeDIAS: TIntegerField
      DisplayWidth = 10
      FieldName = 'DIAS'
      ProviderFlags = []
      Visible = False
    end
    object QBuscaCondCompraProveeDESCUENTO: TFMTBCDField
      FieldName = 'DESCUENTO'
      Precision = 15
      Size = 3
    end
    object QBuscaCondCompraProveeDESCUENTO_FPAGO: TFMTBCDField
      FieldName = 'DESCUENTO_FPAGO'
      Precision = 15
      Size = 3
    end
  end
  object QBuscaRubrosProv: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from rubros_proveedores order by detalle')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 480
    Top = 237
  end
  object QBuscaFPago: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from f_pago')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 480
    Top = 285
  end
  object QBuscaTasaRetIIBB: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from TASAS_RET_IBRUTOS')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 480
    Top = 330
  end
  object QBuscaTasaRetGanancia: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from TASAS_RET_GANANCIA')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 264
    Top = 354
  end
  object QBuscaCPostal: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from C_Postal order by detalle_postal,Codigo_postal')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 696
    Top = 52
    object QBuscaCPostalID_POSTAL: TIntegerField
      FieldName = 'ID_POSTAL'
      Required = True
    end
    object QBuscaCPostalCODIGO_POSTAL: TStringField
      FieldName = 'CODIGO_POSTAL'
      Required = True
      Size = 8
    end
    object QBuscaCPostalDETALLE_POSTAL: TStringField
      FieldName = 'DETALLE_POSTAL'
      Required = True
      Size = 25
    end
    object QBuscaCPostalTELEDISCADO: TStringField
      FieldName = 'TELEDISCADO'
      Size = 6
    end
    object QBuscaCPostalPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
    end
  end
  object QBuscaPersonal: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select p.Nombre,p.codigo from personal p'
      'order by p.nombre')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 696
    Top = 97
    object QBuscaPersonalNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 30
      FieldName = 'NOMBRE'
      Size = 50
    end
    object QBuscaPersonalCODIGO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Size = 6
    end
  end
  object QBuscaBancos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from bancos '
      'order by Nombre')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 696
    Top = 143
    object QBuscaBancosID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Required = True
    end
    object QBuscaBancosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
    end
    object QBuscaBancosDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 30
    end
    object QBuscaBancosTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
    end
  end
  object QBuscaTCredito: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from T_Credito order by descripcion')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 696
    Top = 190
    object QBuscaTCreditoID_TC: TIntegerField
      FieldName = 'ID_TC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaTCreditoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object QBuscaTCreditoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QBuscaTCreditoCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object QBuscaTCreditoRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object QBuscaCtaCajaBco: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cuenta_caja where id_tipo_cta=2'
      'order by nombre')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 696
    Top = 237
    object QBuscaCtaCajaBcoID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Required = True
    end
    object QBuscaCtaCajaBcoID_TIPO_CTA: TIntegerField
      FieldName = 'ID_TIPO_CTA'
      Required = True
    end
    object QBuscaCtaCajaBcoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
    object QBuscaCtaCajaBcoNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Size = 15
    end
    object QBuscaCtaCajaBcoID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object QBuscaCtaCajaBcoCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object QBuscaCtaCajaBcoRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object QBuscaFormaPago: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from FormaPago')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 696
    Top = 285
    object QBuscaFormaPagoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object QBuscaFormaPagoID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Required = True
    end
    object QBuscaFormaPagoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
    object QBuscaFormaPagoCOTIZACION: TFMTBCDField
      FieldName = 'COTIZACION'
      Required = True
      Precision = 15
      Size = 3
    end
    object QBuscaFormaPagoSIGNO: TStringField
      FieldName = 'SIGNO'
      Size = 5
    end
    object QBuscaFormaPagoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
  end
  object QBuscaCajaCab: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select ca.*,  cta.Nombre as MuestraCaja'
      'from Caja_Cab ca'
      '  inner join cuenta_caja cta on cta.id_cuenta=ca.id_cuenta_caja'
      'where ca.Estado = 0')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 696
    Top = 330
    object QBuscaCajaCabID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaCajaCabID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Required = True
    end
    object QBuscaCajaCabFECHA_INCIO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO'
      Required = True
    end
    object QBuscaCajaCabFECHA_CIERRE: TSQLTimeStampField
      FieldName = 'FECHA_CIERRE'
    end
    object QBuscaCajaCabSALDO_INCIAL: TFMTBCDField
      FieldName = 'SALDO_INCIAL'
      Precision = 15
      Size = 3
    end
    object QBuscaCajaCabESTADO: TIntegerField
      FieldName = 'ESTADO'
      Required = True
    end
    object QBuscaCajaCabOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object QBuscaCajaCabNUMEROCAJA: TIntegerField
      FieldName = 'NUMEROCAJA'
    end
    object QBuscaCajaCabMUESTRACAJA: TStringField
      FieldName = 'MUESTRACAJA'
      ProviderFlags = []
      Size = 25
    end
  end
  object QBuscaTarjetaCredito_Comp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select tcc.*,'
      '  tc.descripcion as MuestraTarjetaCredito,'
      '  b.nombre as MuestraBanco'
      'from  tarjetacredito_comp tcc'
      '  left join t_credito tc on tc.id_tc=tcc.id_tcredito'
      '  left join bancos b on b.id_banco=tcc.id_banco'
      '')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 936
    Top = 8
    object QBuscaTarjetaCredito_CompID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaTarjetaCredito_CompNRO_TARJETA: TStringField
      FieldName = 'NRO_TARJETA'
      Size = 16
    end
    object QBuscaTarjetaCredito_CompNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object QBuscaTarjetaCredito_CompID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Required = True
    end
    object QBuscaTarjetaCredito_CompMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QBuscaTarjetaCredito_CompID_TCREDITO: TIntegerField
      FieldName = 'ID_TCREDITO'
    end
    object QBuscaTarjetaCredito_CompMUESTRATARJETACREDITO: TStringField
      FieldName = 'MUESTRATARJETACREDITO'
      ProviderFlags = []
      Size = 15
    end
    object QBuscaTarjetaCredito_CompMUESTRABANCO: TStringField
      FieldName = 'MUESTRABANCO'
      ProviderFlags = []
    end
  end
  object QBuscaListaPrecios: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'uso'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select id,nombre,f_pago,EXCLUSIVO_EFECTIVO from  listaprecioespe' +
        'cialcab where uso_administrador<>:uso')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 936
    Top = 52
    object QBuscaListaPreciosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QBuscaListaPreciosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object QBuscaListaPreciosF_PAGO: TIntegerField
      FieldName = 'F_PAGO'
    end
    object QBuscaListaPreciosEXCLUSIVO_EFECTIVO: TStringField
      FieldName = 'EXCLUSIVO_EFECTIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QBuscaVendedores: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select codigo,nombre,comision from personal '
      'where vendedor='#39'S'#39
      'order by nombre')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 936
    Top = 97
    object QBuscaVendedoresCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QBuscaVendedoresNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object QBuscaVendedoresCOMISION: TFMTBCDField
      FieldName = 'COMISION'
      Required = True
      Precision = 15
      Size = 3
    end
  end
  object QBuscaZona: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from zona order by detalle')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 936
    Top = 143
    object QBuscaZonaID_ZONA: TIntegerField
      FieldName = 'ID_ZONA'
      Required = True
    end
    object QBuscaZonaDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 25
    end
  end
  object QBuscaFC_Vta: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from comprobantes where'
      '( sucursal = :sucursal ) and ( compra_venta = '#39'V'#39' ) and'
      '( tipo_comprob = '#39'FC'#39'  )')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 936
    Top = 190
  end
  object QBuscaNC_Vta: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from comprobantes where'
      '( sucursal = :sucursal ) and ( compra_venta = '#39'V'#39' ) and'
      '( tipo_comprob = '#39'NC'#39'  )')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 936
    Top = 237
  end
  object QBuscaND_Vta: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from comprobantes where'
      '( sucursal = :sucursal ) and ( compra_venta = '#39'V'#39' ) and'
      '( tipo_comprob = '#39'ND'#39'  )')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 936
    Top = 285
  end
  object QBuscaTk_Vta: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from comprobantes where'
      '( sucursal = :sucursal ) and ( compra_venta = '#39'V'#39' ) and'
      '( tipo_comprob = '#39'TK'#39' )')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 936
    Top = 330
  end
  object QBuscaFO_Vta: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from comprobantes where'
      '(sucursal=:sucursal) and (compra_venta='#39'V'#39') and'
      '(tipo_comprob='#39'FO'#39' )')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 264
    Top = 552
  end
  object QBuscaCategorias: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from clientes_categorias order by detalle')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 480
    Top = 376
    object QBuscaCategoriasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QBuscaCategoriasDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 30
    end
  end
  object QBuscaGrupoAbonos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select g.id,g.detalle,g.precio1,g.precio2 from cupon_abonos_grup' +
        'os g')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 936
    Top = 376
  end
  object QBuscaCondVentaCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select CV.*,'
      '  FP.Detalle,'
      '  FP.Dias,'
      '  FP.Descuento as Descuento_FPago'
      'from CondVenta CV'
      '  inner join F_Pago FP on FP.Codigo=CV.CodigoPago'
      'where CV.CodigoCliente= :Codigo')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 40
    Top = 384
    object QBuscaCondVentaClienteCODIGOCLIENTE: TStringField
      FieldName = 'CODIGOCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QBuscaCondVentaClienteCODIGOPAGO: TIntegerField
      FieldName = 'CODIGOPAGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaCondVentaClienteDESCUENTO: TFMTBCDField
      FieldName = 'DESCUENTO'
      Precision = 15
      Size = 3
    end
    object QBuscaCondVentaClientePOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscaCondVentaClienteDETALLE: TStringField
      FieldName = 'DETALLE'
      ProviderFlags = []
      Required = True
    end
    object QBuscaCondVentaClienteDIAS: TIntegerField
      FieldName = 'DIAS'
      ProviderFlags = []
    end
    object QBuscaCondVentaClienteDESCUENTO_FPAGO: TFMTBCDField
      FieldName = 'DESCUENTO_FPAGO'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
  end
  object QBuscaCobradores: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select codigo,nombre,comision from personal '
      'where Cobrador='#39'S'#39
      'order by nombre')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 264
    Top = 400
    object QBuscaCobradoresCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Size = 6
    end
    object QBuscaCobradoresNOMBRE: TStringField
      DisplayWidth = 50
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object QBuscaCorreo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select correoelectronico, correoelectronico_2 from  clientes whe' +
        're codigo=:codigo')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 696
    Top = 376
    object QBuscaCorreoCORREOELECTRONICO: TStringField
      FieldName = 'CORREOELECTRONICO'
      Size = 100
    end
    object QBuscaCorreoCORREOELECTRONICO_2: TStringField
      FieldName = 'CORREOELECTRONICO_2'
      Size = 100
    end
  end
  object QBuscaLocalidadJuri: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from juridicion_localidad')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 40
    Top = 432
    object QBuscaLocalidadJuriID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QBuscaLocalidadJuriID_JURIDICION: TIntegerField
      FieldName = 'ID_JURIDICION'
    end
    object QBuscaLocalidadJuriLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 25
    end
    object QBuscaLocalidadJuriPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      FixedChar = True
      Size = 1
    end
  end
  object QBuscaArticuloGtiaExt: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select g.id,g.codigo,g.duracion,g.poliza,g.tasa_costo,g.tasa_vta' +
        ' from datos_gtia_extendida g'
      'where g.codigo = :codigo')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 696
    Top = 432
    object QBuscaArticuloGtiaExtID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QBuscaArticuloGtiaExtCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object QBuscaArticuloGtiaExtDURACION: TIntegerField
      FieldName = 'DURACION'
    end
    object QBuscaArticuloGtiaExtPOLIZA: TStringField
      FieldName = 'POLIZA'
    end
    object QBuscaArticuloGtiaExtTASA_COSTO: TFMTBCDField
      FieldName = 'TASA_COSTO'
      Precision = 15
      Size = 3
    end
    object QBuscaArticuloGtiaExtTASA_VTA: TFMTBCDField
      FieldName = 'TASA_VTA'
      Precision = 15
      Size = 3
    end
  end
  object QGtia_Ext_Excepciones: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select g.tasa_costo,g.tasa_vta from datos_gtia_clientes g'
      'where g.codigo = :codigo and g.id_cab=:id')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 696
    Top = 488
    object QGtia_Ext_ExcepcionesTASA_COSTO: TFMTBCDField
      FieldName = 'TASA_COSTO'
      Precision = 15
      Size = 3
    end
    object QGtia_Ext_ExcepcionesTASA_VTA: TFMTBCDField
      FieldName = 'TASA_VTA'
      Precision = 15
      Size = 3
    end
  end
  object QBuscaCorreoProveedor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select correo from  POVEEDOR where codigo=:codigo')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 936
    Top = 424
    object QBuscaCorreoProveedorCORREO: TStringField
      DisplayWidth = 100
      FieldName = 'CORREO'
      Size = 100
    end
  end
  object QBuscaCtaCaja: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cuenta_caja where id_tipo_cta=1'
      'order by nombre')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 472
    Top = 437
  end
  object QBuscaAcopio: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select cab.id from merca_enacopio_cab cab where cab.id_Factura =' +
        ' :id')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 936
    Top = 480
    object QBuscaAcopioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object QDesctoArticulo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'fecha'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select s.descuento from stock_dsto_especial s where'
      '(s.codigo= :codigo) and ( :fecha between s.desde and s.hasta )')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 264
    Top = 456
    object QDesctoArticuloDESCUENTO: TFMTBCDField
      FieldName = 'DESCUENTO'
      Required = True
      Precision = 15
      Size = 3
    end
  end
  object QBuscaAutorizanOC: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select codigo,nombre,comision,max_oc_autorizar from personal '
      'where autorizaoc='#39'S'#39
      'order by nombre')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 40
    Top = 497
    object StringField2: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object StringField3: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'COMISION'
      Required = True
      Precision = 15
      Size = 3
    end
    object QBuscaAutorizanOCMAX_OC_AUTORIZAR: TFMTBCDField
      FieldName = 'MAX_OC_AUTORIZAR'
      Required = True
      Precision = 15
      Size = 3
    end
  end
  object QConsultaPorCodAlt: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select max(s.codigo_stk) as Codigo_stk from stock s'
      'where ( s.reemplazo_stk=:codigo )')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 472
    Top = 496
    object QConsultaPorCodAltCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Size = 8
    end
  end
  object QBuscaStock: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select s.codigo_stk as Codigo_stk from stock s'
      'where ( s.codigo_stk=:codigo )')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 264
    Top = 504
    object QBuscaStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
  end
  object QBuscaComprob: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'desglozaiva'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'desglozaiva'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select * from comprobantes where sucursal=:suc and compra_venta=' +
        #39'V'#39' and'
      
        '(tipo_comprob='#39'FC'#39' or tipo_comprob='#39'NC'#39' or tipo_comprob='#39'ND'#39') an' +
        'd'
      '((desgloza_iva = :desglozaiva) or ( :desglozaiva = '#39'*'#39' ) )'
      'order by sucursal,tipo_comprob')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 40
    Top = 557
  end
  object DSPBuscaComprob: TDataSetProvider
    DataSet = QBuscaComprob
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 144
    Top = 557
  end
  object DSPBuscaDeposito: TDataSetProvider
    DataSet = QBuscaDeposito
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 144
    Top = 5
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = QBuscaSucursal
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 144
    Top = 53
  end
  object DSPBuscaRubro: TDataSetProvider
    DataSet = QBuscaRubro
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 144
    Top = 101
  end
  object DSPBuscaMarca: TDataSetProvider
    DataSet = QBuscaMarca
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 144
    Top = 149
  end
  object DSPBuscaMoneda: TDataSetProvider
    DataSet = QBuscaMoneda
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 144
    Top = 197
  end
  object DSPBuscaGruposVtaDetalle: TDataSetProvider
    DataSet = QBuscaGruposVtaDetalle
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 144
    Top = 245
  end
  object DSPBuscaLdr: TDataSetProvider
    DataSet = QBuscaLdr
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 144
    Top = 293
  end
  object DSPBuscaCodigoBarra: TDataSetProvider
    DataSet = QBuscaCodigoBarra
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 144
    Top = 341
  end
  object DSPBuscaCondVentaCliente: TDataSetProvider
    DataSet = QBuscaCondVentaCliente
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 144
    Top = 389
  end
  object DSPBuscaLocalidadJuri: TDataSetProvider
    DataSet = QBuscaLocalidadJuri
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 144
    Top = 437
  end
  object DSPBuscaAutorizanOC: TDataSetProvider
    DataSet = QBuscaAutorizanOC
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 144
    Top = 493
  end
  object DSPBuscaUnidades: TDataSetProvider
    DataSet = QBuscaUnidades
    Left = 352
    Top = 8
  end
  object DSPBuscaPresentacion: TDataSetProvider
    DataSet = QBuscaPresentacion
    Left = 352
    Top = 56
  end
  object DSPBuscaIva: TDataSetProvider
    DataSet = QBuscaIva
    Left = 352
    Top = 104
  end
  object DSPBuscaSubRubro: TDataSetProvider
    DataSet = QBuscaSubRubro
    Left = 352
    Top = 152
  end
  object DSPBuscaTablaPrecioDet: TDataSetProvider
    DataSet = QBuscaTablaPrecioDet
    Left = 352
    Top = 200
  end
  object DSPBuscaTablaPrecioCab: TDataSetProvider
    DataSet = QBuscaTablaPrecioCab
    Left = 352
    Top = 248
  end
  object DSPBuscaNroSerie: TDataSetProvider
    DataSet = QBuscaNroSerie
    Left = 352
    Top = 296
  end
  object DSPBuscaTasaRetGanancia: TDataSetProvider
    DataSet = QBuscaTasaRetGanancia
    Left = 352
    Top = 352
  end
  object DSPBuscaCobradores: TDataSetProvider
    DataSet = QBuscaCobradores
    Left = 352
    Top = 400
  end
  object DSPDesctoArticulo: TDataSetProvider
    DataSet = QDesctoArticulo
    Left = 352
    Top = 456
  end
  object DSPBuscaStock: TDataSetProvider
    DataSet = QBuscaStock
    Left = 352
    Top = 504
  end
  object DSPBuscaFO_Vta: TDataSetProvider
    DataSet = QBuscaFO_Vta
    Left = 352
    Top = 552
  end
  object DSPConsultaCodigoSerie: TDataSetProvider
    DataSet = QConsultaCodigoSerie
    Left = 576
    Top = 8
  end
  object DSPBuscaArticuloGtiaExt: TDataSetProvider
    DataSet = QBuscaArticuloGtiaExt
    Left = 792
    Top = 424
  end
  object DSPBuscaCorreo: TDataSetProvider
    DataSet = QBuscaCorreo
    Left = 792
    Top = 376
  end
  object DSPBuscaCajaCab: TDataSetProvider
    DataSet = QBuscaCajaCab
    Left = 792
    Top = 328
  end
  object DSPBuscaFormaPago: TDataSetProvider
    DataSet = QBuscaFormaPago
    Left = 792
    Top = 280
  end
  object DSPBuscaCtaCajaBco: TDataSetProvider
    DataSet = QBuscaCtaCajaBco
    Left = 792
    Top = 232
  end
  object DSPBuscaTCredito: TDataSetProvider
    DataSet = QBuscaTCredito
    Left = 792
    Top = 184
  end
  object DSPBuscaBancos: TDataSetProvider
    DataSet = QBuscaBancos
    Left = 792
    Top = 144
  end
  object DSPBuscaPersonal: TDataSetProvider
    DataSet = QBuscaPersonal
    Left = 792
    Top = 104
  end
  object DSPBuscaCPostal: TDataSetProvider
    DataSet = QBuscaCPostal
    Left = 792
    Top = 56
  end
  object DSPBuscaSerieTransito: TDataSetProvider
    DataSet = QBuscaSerieTransito
    Left = 792
    Top = 8
  end
  object DSPBuscaAcopio: TDataSetProvider
    DataSet = QBuscaAcopio
    Left = 1048
    Top = 480
  end
  object DSPBuscaCorreoProveedor: TDataSetProvider
    DataSet = QBuscaCorreoProveedor
    Left = 1048
    Top = 424
  end
  object DSPBuscaGrupoAbonos: TDataSetProvider
    DataSet = QBuscaGrupoAbonos
    Left = 1048
    Top = 376
  end
  object DSPBuscaTk_Vta: TDataSetProvider
    DataSet = QBuscaTk_Vta
    Left = 1048
    Top = 328
  end
  object DSPBuscaND_Vta: TDataSetProvider
    DataSet = QBuscaND_Vta
    Left = 1048
    Top = 280
  end
  object DSPBuscaNC_Vta: TDataSetProvider
    DataSet = QBuscaNC_Vta
    Left = 1048
    Top = 232
  end
  object DSPBuscaFC_Vta: TDataSetProvider
    DataSet = QBuscaFC_Vta
    Left = 1048
    Top = 184
  end
  object DSPBuscaZona: TDataSetProvider
    DataSet = QBuscaZona
    Left = 1048
    Top = 144
  end
  object DSPBuscaVendedores: TDataSetProvider
    DataSet = QBuscaVendedores
    Left = 1048
    Top = 96
  end
  object DSPBuscaListaPrecios: TDataSetProvider
    DataSet = QBuscaListaPrecios
    Left = 1048
    Top = 56
  end
  object DSPBuscaTarjetaCredito_Comp: TDataSetProvider
    DataSet = QBuscaTarjetaCredito_Comp
    Left = 1048
    Top = 8
  end
  object DSPBuscaCondCompraProvee: TDataSetProvider
    DataSet = QBuscaCondCompraProvee
    Left = 576
    Top = 192
  end
  object DSPBuscaRubrosProv: TDataSetProvider
    DataSet = QBuscaRubrosProv
    Left = 576
    Top = 232
  end
  object DSPBuscaFPago: TDataSetProvider
    DataSet = QBuscaFPago
    Left = 576
    Top = 288
  end
  object DSPBuscaTasaRetIIBB: TDataSetProvider
    DataSet = QBuscaTasaRetIIBB
    Left = 576
    Top = 336
  end
  object DSPBuscaCategorias: TDataSetProvider
    DataSet = QBuscaCategorias
    Left = 576
    Top = 384
  end
  object DSPBuscaCtaCaja: TDataSetProvider
    DataSet = QBuscaCtaCaja
    Left = 576
    Top = 440
  end
  object DSPConsultaPorCodAlt: TDataSetProvider
    DataSet = QConsultaPorCodAlt
    Left = 576
    Top = 496
  end
  object DSPGtia_Ext_Excepciones: TDataSetProvider
    DataSet = QGtia_Ext_Excepciones
    Left = 800
    Top = 480
  end
  object DSPBuscaPercepIB: TDataSetProvider
    DataSet = QBuscaPercepIB
    Left = 576
    Top = 96
  end
  object DSPBuscaInscripcion: TDataSetProvider
    DataSet = QBuscaInscripcion
    Left = 576
    Top = 144
  end
  object DSPBuscaPercepIva: TDataSetProvider
    DataSet = QBuscaPercepIva
    Left = 576
    Top = 56
  end
  object QArticulosCodBarra: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigoBarra'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select cb.codigo_stk,s.detalle_stk from codigobarra cb'
      'left join stock s on s.codigo_stk=cb.codigo_stk'
      'where cb.codigobarra=:codigoBarra')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 696
    Top = 552
    object QArticulosCodBarraCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 8
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object QArticulosCodBarraDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 45
      FieldName = 'DETALLE_STK'
      Size = 45
    end
  end
  object DSPArticulosCodBarra: TDataSetProvider
    DataSet = QArticulosCodBarra
    Left = 800
    Top = 552
  end
  object QCtaTipoBco: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cuenta_caja where id_tipo_cta=2')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 472
    Top = 552
    object QCtaTipoBcoID_CUENTA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CUENTA'
      Origin = 'DBMAIN.CUENTA_CAJA.ID_CUENTA'
    end
    object QCtaTipoBcoID_TIPO_CTA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_TIPO_CTA'
      Origin = 'DBMAIN.CUENTA_CAJA.ID_TIPO_CTA'
    end
    object QCtaTipoBcoNOMBRE: TStringField
      DisplayWidth = 25
      FieldName = 'NOMBRE'
      Origin = 'DBMAIN.CUENTA_CAJA.NOMBRE'
      Size = 25
    end
  end
  object DSPCtaTipoBco: TDataSetProvider
    DataSet = QCtaTipoBco
    Left = 568
    Top = 552
  end
  object DSPMov_por_arti: TDataSetProvider
    DataSet = QMov_por_arti
    Left = 800
    Top = 624
  end
  object QMov_por_arti: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
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
        Name = 'marca'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select * from existencia_por_arti (:codigo,:deposito,:fecha,:rub' +
        'ro,:subrubro,:marca)')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 696
    Top = 624
  end
  object DSPMovStockDiario: TDataSetProvider
    DataSet = QMovStockDiario
    Left = 800
    Top = 680
  end
  object QMovStockDiario: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'deposito'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipomovimiento'
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
        DataType = ftString
        Name = 'modo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select * from ver_movimientos_stock ( :codigo, :deposito, :tipom' +
        'ovimiento, :desde, :hasta, :modo)'
      'order by fecha,tipocpbte desc,clasecpbte,nrocpbte')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 696
    Top = 680
  end
end
