object DatosListaPrecioProv: TDatosListaPrecioProv
  OnDestroy = DataModuleDestroy
  Height = 765
  Width = 1074
  object QBuscadorListas: TFDQuery
    Connection = SQLThreads
    SQL.Strings = (
      
        'select l.nombre,l.codigo_provee,l.fecha,l.id from LISTA_PRECIOS_' +
        'PROV_CABECERA l'
      'order by l.nombre')
    Left = 128
    Top = 144
  end
  object DSPBuscadorLista: TDataSetProvider
    DataSet = QBuscadorListas
    Left = 224
    Top = 144
  end
  object QExisteStock: TFDQuery
    Connection = SQLThreads
    SQL.Strings = (
      'select s.codigo_stk from stock s where s.codigo_stk=:codigo')
    Left = 424
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
  end
  object SQLThreads: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=regulador'
      
        'Database=C:\Proyectos Delphi\GestionComercial\Tablas IB\GESTIONV' +
        '3.FDB'
      'DriverID=FB')
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object spInformaCambioPrecio: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'INGRESA_HISTORIAL_PRECIOS'
    Left = 480
    Top = 584
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
        Name = 'COSTO_OLD'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'COSTO_OLD_GRAVADO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'COSTO_OLD_EXENTO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'COSTO_NEW'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'COSTO_NEW_GRAVADO'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'COSTO_NEW_EXENTO'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'FPRECIO_OLD'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'FPRECIO_OLD_GRAVADO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 10
        Name = 'FPRECIO_OLD_EXENTO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 11
        Name = 'FPRECIO_NEW'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 12
        Name = 'FPRECIO_NEW_GRAVADO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 13
        Name = 'FPRECIO_NEW_EXENTO'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 14
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 15
        Name = 'MOTIVO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 16
        Name = 'FECHA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 17
        Name = 'ID_CAMBIO_PRECIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 18
        Name = 'ID_FC_COMPRA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QBuscadorRubro: TFDQuery
    Connection = SQLThreads
    SQL.Strings = (
      'select * from rubros'
      'where detalle_rubro = :descripcion')
    Left = 224
    Top = 216
    ParamData = <
      item
        Name = 'DESCRIPCION'
        DataType = ftString
        ParamType = ptInput
        Size = 35
        Value = Null
      end>
    object QBuscadorRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QBuscadorRubroDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
    object QBuscadorRubroCONTROL_RUBRO: TStringField
      FieldName = 'CONTROL_RUBRO'
      Origin = 'CONTROL_RUBRO'
      Size = 1
    end
    object QBuscadorRubroFUERA_PROMO: TStringField
      FieldName = 'FUERA_PROMO'
      Origin = 'FUERA_PROMO'
      FixedChar = True
      Size = 1
    end
  end
  object QBuscadorSubRrub: TFDQuery
    Connection = SQLThreads
    SQL.Strings = (
      'select sr.codigo_subrubro from subrubros sr '
      'where sr.codigo_rubro = :rubro and '
      '           sr.detalle_subrubro = :descripcion')
    Left = 424
    Top = 216
    ParamData = <
      item
        Name = 'RUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
        Value = Null
      end
      item
        Name = 'DESCRIPCION'
        DataType = ftString
        ParamType = ptInput
        Size = 45
      end>
    object QBuscadorSubRrubCODIGO_SUBRUBRO: TStringField
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
  end
  object QBuscadorMarca: TFDQuery
    Connection = SQLThreads
    SQL.Strings = (
      'select * from marcas'
      'where DESCRIPCION_MARCA = upper( trim(:descripcion))')
    Left = 40
    Top = 216
    ParamData = <
      item
        Name = 'DESCRIPCION'
        DataType = ftString
        ParamType = ptInput
        Size = 25
        Value = Null
      end>
    object QBuscadorMarcaMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object QBuscadorMarcaDESCRIPCION_MARCA: TStringField
      FieldName = 'DESCRIPCION_MARCA'
      Origin = 'DESCRIPCION_MARCA'
      Size = 25
    end
    object QBuscadorMarcaOBSERVACION_MARCA: TStringField
      FieldName = 'OBSERVACION_MARCA'
      Origin = 'OBSERVACION_MARCA'
      Size = 40
    end
  end
  object QBuscaMarcaCod: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from marcas'
      'where marca_stk = :codigo')
    Left = 128
    Top = 216
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object QBuscaMarcaCodMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object QBuscaMarcaCodDESCRIPCION_MARCA: TStringField
      FieldName = 'DESCRIPCION_MARCA'
      Origin = 'DESCRIPCION_MARCA'
      Size = 25
    end
    object QBuscaMarcaCodOBSERVACION_MARCA: TStringField
      FieldName = 'OBSERVACION_MARCA'
      Origin = 'OBSERVACION_MARCA'
      Size = 40
    end
  end
  object QCodigoRubro: TFDQuery
    Connection = SQLThreads
    SQL.Strings = (
      'select max(codigo_rubro) as Codigo from rubros')
    Left = 40
    Top = 328
    object QCodigoRubroCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
  end
  object QCodigoSub: TFDQuery
    Connection = SQLThreads
    SQL.Strings = (
      'select max(codigo_subrubro) as Codigo from subrubros '
      'where codigo_rubro= :rubro')
    Left = 224
    Top = 328
    ParamData = <
      item
        Name = 'RUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
        Value = Null
      end>
    object QCodigoSubCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
  end
  object spABMSubRubro: TFDStoredProc
    Connection = SQLThreads
    StoredProcName = 'ABM_SUBRUBRO'
    Left = 320
    Top = 456
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end
      item
        Position = 2
        Name = 'CODIGO_RUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 3
        Name = 'DETALLE'
        DataType = ftString
        ParamType = ptInput
        Size = 45
      end>
  end
  object spABMRubro: TFDStoredProc
    Connection = SQLThreads
    StoredProcName = 'ABM_RUBROS'
    Left = 224
    Top = 456
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 2
        Name = 'DETALLE'
        DataType = ftString
        ParamType = ptInput
        Size = 35
      end>
  end
  object spABMMarca: TFDStoredProc
    Connection = SQLThreads
    StoredProcName = 'ABM_MARCAS'
    Left = 432
    Top = 456
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Position = 2
        Name = 'DETALLE'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end>
  end
  object QCodigoFree: TFDQuery
    Connection = SQLThreads
    SQL.Strings = (
      'select * from buscar_codigomarca_free')
    Left = 124
    Top = 328
    object QCodigoFreeNEWCODIGO: TIntegerField
      FieldName = 'NEWCODIGO'
      Origin = 'NEWCODIGO'
    end
  end
  object QBorrarStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from stock s where s.codigo_stk = :codigo')
    Left = 36
    Top = 272
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
  end
  object QVerifi_SubRubro: TFDQuery
    Connection = SQLThreads
    SQL.Strings = (
      'select codigo_subrubro from subrubros'
      'where codigo_subrubro=:codigo ')
    Left = 424
    Top = 272
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 5
        Value = Null
      end>
    object QVerifi_SubRubroCODIGO_SUBRUBRO: TStringField
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
  end
  object QUltimoCodSubRub: TFDQuery
    Connection = SQLThreads
    SQL.Strings = (
      'select Max(sr.codigo_subrubro) from subrubros sr '
      'where sr.codigo_rubro = :codigo')
    Left = 420
    Top = 384
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
        Value = Null
      end>
  end
  object QUltimoCodRub: TFDQuery
    Connection = SQLThreads
    SQL.Strings = (
      'select max(codigo_rubro) from rubros')
    Left = 320
    Top = 384
  end
  object QUltimoCodMarca: TFDQuery
    Connection = SQLThreads
    SQL.Strings = (
      'select max(marca_stk) from marcas')
    Left = 516
    Top = 384
  end
  object DSRubros: TDataSource
    DataSet = CDSRubros
    Left = 692
    Top = 73
  end
  object CDSRubros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRubros'
    Left = 616
    Top = 17
    object CDSRubrosCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CDSRubrosDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
  end
  object DSPRubros: TDataSetProvider
    DataSet = TRubros
    Options = []
    Left = 548
    Top = 17
  end
  object DSPSubRubros: TDataSetProvider
    DataSet = TSubRubros
    Options = []
    Left = 548
    Top = 73
  end
  object CDSSubRubros: TClientDataSet
    Aggregates = <>
    Filtered = True
    IndexFieldNames = 'CODIGO_RUBRO'
    MasterFields = 'CODIGO_RUBRO'
    MasterSource = DSRubros
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPSubRubros'
    Left = 616
    Top = 73
    object CDSSubRubrosCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CDSSubRubrosCODIGO_SUBRUBRO: TStringField
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object CDSSubRubrosDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Required = True
      Size = 45
    end
    object CDSSubRubrosUltCod: TAggregateField
      FieldName = 'UltCod'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'max(CODIGO_SUBRUBRO)'
    end
  end
  object DSSubRubros: TDataSource
    DataSet = CDSSubRubros
    Left = 692
    Top = 17
  end
  object CDSProveedores: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPProveedores'
    Left = 328
    Top = 72
    object CDSProveedoresCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSProveedoresNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object CDSProveedoresRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSProveedoresN_DE_CUENTA: TStringField
      FieldName = 'N_DE_CUENTA'
      Origin = 'N_DE_CUENTA'
      Size = 14
    end
    object CDSProveedoresID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
      Origin = 'ID_COD_POSTAL'
    end
    object CDSProveedoresCOD_POSTAL: TStringField
      FieldName = 'COD_POSTAL'
      Origin = 'COD_POSTAL'
      Size = 8
    end
    object CDSProveedoresLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object CDSProveedoresDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object CDSProveedoresTELEFONO_1: TStringField
      FieldName = 'TELEFONO_1'
      Origin = 'TELEFONO_1'
      Size = 10
    end
    object CDSProveedoresACTIVO: TStringField
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      Size = 1
    end
  end
  object DSPProveedores: TDataSetProvider
    DataSet = QProveedores
    Options = []
    Left = 216
    Top = 72
  end
  object CDSBuscadorLista: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscadorLista'
    Left = 320
    Top = 144
    object CDSBuscadorListaNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 45
    end
    object CDSBuscadorListaCODIGO_PROVEE: TStringField
      DisplayLabel = 'Codigo Prov'
      FieldName = 'CODIGO_PROVEE'
      Size = 6
    end
    object CDSBuscadorListaFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
    object CDSBuscadorListaID: TIntegerField
      DisplayLabel = 'Id Lst'
      FieldName = 'ID'
      Required = True
    end
  end
  object spActualizaPrecios: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDateTime
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDateTime
      end
      item
        SourceDataType = dtBCD
        TargetDataType = dtDouble
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end>
    StoredProcName = 'ACTUALIZA_COSTO_PORARTICULO'
    Left = 224
    Top = 584
    ParamData = <
      item
        Position = 1
        Name = 'FECHA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 3
        Name = 'PRECIO'
        DataType = ftFloat
        ParamType = ptInput
      end>
  end
  object spActualizaPrecioVta: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ACTULIZA_PRECIO_COSTOVTA'
    Left = 344
    Top = 584
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
        Name = 'COSTO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'PRECIO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'CODIGO_REEMPLAZO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 6
        Name = 'FECHA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object spAltaCB: TFDStoredProc
    Connection = SQLThreads
    StoredProcName = 'ALTA_CODIGOS_BARRA'
    Left = 840
    Top = 456
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
      end
      item
        Position = 3
        Name = 'CANTIDAD_POR_BULTO'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end>
  end
  object spABMStock: TFDStoredProc
    Connection = SQLThreads
    StoredProcName = 'ABM_STOCK'
    Left = 136
    Top = 456
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
        Name = 'DETALLE'
        DataType = ftString
        ParamType = ptInput
        Size = 45
      end
      item
        Position = 3
        Name = 'MARCA'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Position = 4
        Name = 'RUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 5
        Name = 'SUBRUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end
      item
        Position = 6
        Name = 'MODO_GRAVAMEN'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 7
        Name = 'TASA_IVA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'SOBRETASA_IVA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'COSTO_GRAVADO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 10
        Name = 'COSTO_EXENTO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 11
        Name = 'DETALLE_ADICIONAL'
        DataType = ftString
        ParamType = ptInput
        Size = 300
      end
      item
        Position = 12
        Name = 'CODIGO_ALTERNATIVO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 13
        Name = 'PRESENTACION_CANTIDAD'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 14
        Name = 'PRESENTACION_UNIDAD'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 15
        Name = 'MONEDA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spABMUnidades: TFDStoredProc
    Connection = SQLThreads
    StoredProcName = 'ABM_UNIDADES'
    Left = 696
    Top = 456
    ParamData = <
      item
        Position = 1
        Name = 'SIGLA'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end>
  end
  object spABMPrecio: TFDStoredProc
    Connection = SQLThreads
    StoredProcName = 'ABM_CODIGO_PRECIO_STOCK'
    Left = 560
    Top = 456
    ParamData = <
      item
        Position = 1
        Name = 'ID_LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'CODIGO_PRECIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object QUltimaLista: TFDQuery
    Connection = SQLThreads
    SQL.Strings = (
      
        'select max(lista_nro), id from lista_precios_prov_cabecera l whe' +
        're l.codigo_provee=:codigo group by id'
      '')
    Left = 40
    Top = 384
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
  end
  object QBorrarRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update lista_precios_prov_detalle l set l.rubro='#39#39', l.muestrarub' +
        'ro='#39#39', l.muestrasubrubro='#39#39', l.subrubro='#39#39
      'where l.codigo_proveedor = :codigo and l.id = :id')
    Left = 128
    Top = 272
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        Name = 'ID'
        ParamType = ptInput
      end>
  end
  object QDesaplicaCodigo: TFDQuery
    Connection = SQLThreads
    SQL.Strings = (
      
        'update lista_precios_prov_detalle l set l.rubro='#39#39', l.subrubro='#39 +
        #39',l.codigo='#39#39
      'where l.codigo_proveedor = :codigo and l.id = :id')
    Left = 320
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QBuscaCodigoGeneral: TFDQuery
    Connection = SQLThreads
    SQL.Strings = (
      'select max(s.codigo_stk) from stock s '
      'where s.codigo_stk between :desde and :hasta')
    Left = 780
    Top = 217
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object QBuscadorCodigo: TFDQuery
    Connection = SQLThreads
    SQL.Strings = (
      'select max(Codigo_Stk) from Stock '
      'where (Rubro_Stk=:id_Rubro) and (SubRubro_Stk=:id_SubRubro)')
    Left = 660
    Top = 217
    ParamData = <
      item
        Name = 'ID_RUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
        Value = Null
      end
      item
        Name = 'ID_SUBRUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end>
  end
  object CDSListas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPListas'
    Left = 324
    Top = 16
    object CDSListasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object DSPListas: TDataSetProvider
    DataSet = QListas
    Options = []
    Left = 220
    Top = 16
  end
  object QListas: TFDQuery
    Connection = SQLThreads
    SQL.Strings = (
      'select id from listaprecioespecialcab')
    Left = 124
    Top = 16
    object QListasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QUltimoCodigoStk: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(s.codigo_stk) as codigo from stock s'
      'where (:prefijo is null) or (s.codigo_stk similar to :prefijo)')
    Left = 128
    Top = 384
    ParamData = <
      item
        Name = 'PREFIJO'
        DataType = ftFixedChar
        ParamType = ptInput
        Value = Null
      end>
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 24
    Top = 552
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 24
    Top = 608
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 24
    Top = 496
  end
  object QProveedores: TFDQuery
    Connection = SQLThreads
    SQL.Strings = (
      
        'select p.codigo,p.nombre,p.razon_social,p.n_de_cuenta,p.id_cod_p' +
        'ostal,p.cod_postal,p.localidad,p.direccion,p.telefono_1,p.activo' +
        ' from poveedor p'
      'where p.codigo=:codigo')
    Left = 128
    Top = 72
    ParamData = <
      item
        Position = 1
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QBuscaArticulo: TFDQuery
    Connection = SQLThreads
    SQL.Strings = (
      'select s.codigo_stk, s.rubro_stk, s.subrubro_stk, s.marca_stk,'
      
        '       r.detalle_rubro as MuestraRubro, sr.detalle_subrubro as M' +
        'uestraSubrubro, m.descripcion_marca as MuestraMarca'
      'from stock s'
      'left join marcas        m  on m.marca_stk=s.marca_stk'
      'left join rubros        r  on r.codigo_rubro=s.rubro_stk'
      'left join subrubros     sr on sr.codigo_subrubro=s.subrubro_stk'
      'where s.codigo_stk=:codigo')
    Left = 904
    Top = 221
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object QBuscaArticuloCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QBuscaArticuloRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      Required = True
      Size = 3
    end
    object QBuscaArticuloSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      Required = True
      Size = 5
    end
    object QBuscaArticuloMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      Size = 4
    end
    object QBuscaArticuloMUESTRARUBRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRARUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QBuscaArticuloMUESTRASUBRUBRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object QBuscaArticuloMUESTRAMARCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAMARCA'
      Origin = 'DESCRIPCION_MARCA'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
  end
  object QActualizaSubRubroStk: TFDQuery
    Connection = SQLThreads
    SQL.Strings = (
      
        'update stock s set s.rubro_stk=(select max(x.codigo_rubro) from ' +
        'subrubros x where x.codigo_subrubro=:SubRubro), s.subrubro_stk=:' +
        'SubRubro'
      'where s.codigo_stk=:codigo')
    Left = 224
    Top = 272
    ParamData = <
      item
        Name = 'SUBRUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object QActualizaMarca: TFDQuery
    Connection = SQLThreads
    SQL.Strings = (
      'update stock s set s.marca_stk=:Marca'
      'where s.codigo_stk=:codigo')
    Left = 320
    Top = 272
    ParamData = <
      item
        Name = 'MARCA'
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object TRubros: TFDTable
    Connection = SQLThreads
    UpdateOptions.UpdateTableName = 'RUBROS'
    TableName = 'RUBROS'
    Left = 472
    Top = 16
  end
  object TSubRubros: TFDTable
    Connection = SQLThreads
    UpdateOptions.UpdateTableName = 'SUBRUBROS'
    TableName = 'SUBRUBROS'
    Left = 472
    Top = 80
  end
  object DSPBuscaIva: TDataSetProvider
    DataSet = TBuscaIva
    Options = []
    Left = 904
    Top = 16
  end
  object QBuscaIva: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaIva'
    Left = 984
    Top = 16
    object QBuscaIvaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaIvaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 15
    end
    object QBuscaIvaTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QBuscaIvaCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Origin = 'COLUMNA'
      Required = True
    end
  end
  object QMonedas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMonedas'
    Left = 984
    Top = 80
    object QMonedasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QMonedasMONEDA: TStringField
      FieldName = 'MONEDA'
      Size = 15
    end
    object QMonedasCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object QMonedasSIGNO: TStringField
      FieldName = 'SIGNO'
      Size = 5
    end
    object QMonedasORDEN: TSmallintField
      FieldName = 'ORDEN'
      Required = True
    end
    object QMonedasCOTIZACION_COMPRA: TFloatField
      FieldName = 'COTIZACION_COMPRA'
    end
  end
  object DSPMonedas: TDataSetProvider
    DataSet = TMonedas
    Options = []
    Left = 904
    Top = 80
  end
  object QUnidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPUnidades'
    Left = 984
    Top = 136
    object QUnidadesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QUnidadesSIGLAS: TStringField
      FieldName = 'SIGLAS'
      Size = 3
    end
    object QUnidadesDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
  end
  object DSPUnidades: TDataSetProvider
    DataSet = TUnidades
    Options = []
    Left = 904
    Top = 136
  end
  object TMonedas: TFDTable
    IndexFieldNames = 'ID'
    Connection = DMMain_FD.fdcGestion
    UpdateOptions.UpdateTableName = 'MONEDAS'
    TableName = 'MONEDAS'
    Left = 824
    Top = 80
  end
  object TUnidades: TFDTable
    IndexFieldNames = 'ID'
    Connection = DMMain_FD.fdcGestion
    UpdateOptions.UpdateTableName = 'UNIDADES'
    TableName = 'UNIDADES'
    Left = 824
    Top = 136
  end
  object TBuscaIva: TFDTable
    IndexFieldNames = 'CODIGO'
    Connection = DMMain_FD.fdcGestion
    UpdateOptions.UpdateTableName = 'GRAVAMEN'
    TableName = 'GRAVAMEN'
    Left = 824
    Top = 24
  end
  object QBuscadorCodRubro: TFDQuery
    Connection = SQLThreads
    SQL.Strings = (
      'select codigo_rubro, detalle_rubro from rubros'
      'where codigo_rubro = :codigo')
    Left = 320
    Top = 216
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
        Value = Null
      end>
    object QBuscadorCodRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QBuscadorCodRubroDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
  end
  object QBuscadorCodSubrubro: TFDQuery
    Connection = SQLThreads
    SQL.Strings = (
      
        'select sr.codigo_subrubro, sr.detalle_subrubro from subrubros sr' +
        ' '
      'where sr.codigo_rubro    = :rubro and '
      '      sr.codigo_subrubro = :codigo')
    Left = 544
    Top = 216
    ParamData = <
      item
        Name = 'RUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end>
    object QBuscadorCodSubrubroCODIGO_SUBRUBRO: TStringField
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object QBuscadorCodSubrubroDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Required = True
      Size = 45
    end
  end
  object QBuscaArtEnStock: TFDQuery
    Connection = SQLThreads
    SQL.Strings = (
      
        'select s.codigo_stk, s.detalle_stk from stock s where s.reemplaz' +
        'o_stk=:CodAlt')
    Left = 536
    Top = 272
    ParamData = <
      item
        Name = 'CODALT'
        DataType = ftString
        ParamType = ptInput
        Size = 20
        Value = Null
      end>
    object QBuscaArtEnStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QBuscaArtEnStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
  end
  object QUltimoCodigoIntLista: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(l.codigo) as codigo from lista_precios_prov_detalle l'
      'where l.id_cab=:Lista')
    Left = 224
    Top = 384
    ParamData = <
      item
        Name = 'LISTA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QUltimoCodigoIntListaCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
  end
  object spMarka_Provee: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'PONER_MARCA_X_PROVEEDOR'
    Left = 840
    Top = 592
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
  end
end
