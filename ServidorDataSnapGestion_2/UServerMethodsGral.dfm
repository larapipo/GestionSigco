object ServerModuleGeneral: TServerModuleGeneral
  OldCreateOrder = False
  Height = 560
  Width = 692
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
    Left = 32
    Top = 8
  end
  object QUltimoCodigo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 32
    Top = 56
  end
  object DSPBrowse: TDataSetProvider
    DataSet = QBrowse
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 96
    Top = 8
  end
  object DSPUltimoCodigo: TDataSetProvider
    DataSet = QUltimoCodigo
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 96
    Top = 56
  end
  object DSPListaPrecioCab: TDataSetProvider
    DataSet = QListaPrecioCab
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 96
    Top = 112
  end
  object QListaPrecioCab: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from listaprecioespecialcab')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 32
    Top = 112
    object QListaPrecioCabID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'DBMAIN.LISTAPRECIOESPECIALCAB.ID'
    end
    object QListaPrecioCabNOMBRE: TStringField
      DisplayWidth = 50
      FieldName = 'NOMBRE'
      Origin = 'DBMAIN.LISTAPRECIOESPECIALCAB.NOMBRE'
      Size = 50
    end
  end
  object QStock: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'clase'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'clase'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'clase2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'clase2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'lista'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'lista'
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
        DataType = ftString
        Name = 'marca'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'marca'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Dato'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select s.codigo_stk,s.reemplazo_stk, s.detalle_stk,s.marca_stk,s' +
        '.detalle_stk_adicional,'
      
        's.rubro_stk,s.subrubro_stk,s.fijacion_precio_total,s.unidad,s.cl' +
        'ase_articulo,s.fuap,'
      
        'm.descripcion_marca,r.detalle_rubro,sr.detalle_subrubro,s.moneda' +
        ',mon.cotizacion,mon.signo,'
      
        's.presentacion_unidad,s.presentacion_cantidad,s.url,d.id_cab as ' +
        'listaPrecio,'
      's.fecha_ultima_compra,s.fecha_alta,'
      '( d.precio_gravado + d.precio_exento ) as MuestraPrecio,'
      '( d.precio ) as MuestraPrecioIva,'
      '(select sum(dpk.fisico) from depositostk dpk'
      '  where (dpk.codigo_stk = s.codigo_stk) ) as Existencia'
      'from stock s'
      'left join marcas m on m.marca_stk=s.marca_stk'
      'left join rubros r on r.codigo_rubro=s.rubro_stk'
      'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      
        'left join listaprecioespecialArt d on d.codigoarticulo=s.codigo_' +
        'stk'
      'left join monedas mon on mon.id=s.moneda'
      
        'where ( (s.clase_Articulo=:clase or :clase =-1 ) or (s.clase_Art' +
        'iculo=:clase2 or :clase2 = -1 ) )'
      '      and (d.id_cab = :lista or :lista = -1)'
      '      and (s.rubro_stk= :rubro or :rubro = '#39'***'#39' )'
      '      and (s.subrubro_stk= :subrubro or :subrubro = '#39'*****'#39' )'
      '      and (s.marca_stk= :marca or :marca = '#39'****'#39' )'
      '      and s.codigo_stk = :Dato'
      '')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 32
    Top = 160
  end
  object DSPStock: TDataSetProvider
    DataSet = QStock
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 96
    Top = 163
  end
  object QLPreciosUsuarios: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'usuario'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select l.id_usuario,l.id_lista,lp.nombre,'
      
        '       lp.id,lp.EXCLUSIVO_EFECTIVO,lp.f_pago from listaprecios_u' +
        'suario l'
      'left join listaprecioespecialcab lp on lp.id=l.id_lista'
      'where l.id_usuario= :usuario')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 224
    Top = 8
    object QLPreciosUsuariosID_USUARIO: TFloatField
      FieldName = 'ID_USUARIO'
    end
    object QLPreciosUsuariosID_LISTA: TIntegerField
      FieldName = 'ID_LISTA'
    end
    object QLPreciosUsuariosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object QLPreciosUsuariosID: TIntegerField
      FieldName = 'ID'
    end
    object QLPreciosUsuariosEXCLUSIVO_EFECTIVO: TStringField
      FieldName = 'EXCLUSIVO_EFECTIVO'
      FixedChar = True
      Size = 1
    end
    object QLPreciosUsuariosF_PAGO: TIntegerField
      FieldName = 'F_PAGO'
    end
  end
  object DSPLPreciosUsuarios: TDataSetProvider
    DataSet = QLPreciosUsuarios
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 320
    Top = 8
  end
  object QSubRubro: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select codigo_subrubro,detalle_subRubro from subrubros '
      'where codigo_rubro = :rubro')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 224
    Top = 56
    object QSubRubroCODIGO_SUBRUBRO: TStringField
      DisplayWidth = 5
      FieldName = 'CODIGO_SUBRUBRO'
      Size = 5
    end
    object QSubRubroDETALLE_SUBRUBRO: TStringField
      DisplayWidth = 40
      FieldName = 'DETALLE_SUBRUBRO'
      Size = 40
    end
  end
  object DSPSubRubro: TDataSetProvider
    DataSet = QSubRubro
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 320
    Top = 56
  end
  object DSPExistencia: TDataSetProvider
    DataSet = QExistencia
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 320
    Top = 241
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
      'from existencia_stk_unitario(:unidad,:codigo)'
      
        'where ((fisico-comprometido-en_transito <> :fisico ) or ( :fisic' +
        'o = 1 ))'
      
        'and  existencia_stk_unitario.deposito_stk in (select u.deposito ' +
        'from deposito_usuario u where ( u.id_usuario = :usuario ) or ( :' +
        'usuario = -1 ) )'
      'order by deposito_stk')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 224
    Top = 241
  end
  object QMarca: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select marca_stk,descripcion_marca from marcas '
      'order by descripcion_marca')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 32
    Top = 208
    object QMarcaMARCA_STK: TStringField
      DisplayWidth = 4
      FieldName = 'MARCA_STK'
      Size = 4
    end
    object QMarcaDESCRIPCION_MARCA: TStringField
      DisplayWidth = 25
      FieldName = 'DESCRIPCION_MARCA'
      Size = 25
    end
  end
  object DSPMarca: TDataSetProvider
    DataSet = QMarca
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 96
    Top = 208
  end
  object QRubro: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select codigo_rubro,detalle_rubro from rubros '
      'order by detalle_rubro')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 32
    Top = 256
    object QRubroCODIGO_RUBRO: TStringField
      DisplayWidth = 3
      FieldName = 'CODIGO_RUBRO'
      Size = 3
    end
    object QRubroDETALLE_RUBRO: TStringField
      DisplayWidth = 20
      FieldName = 'DETALLE_RUBRO'
    end
  end
  object DSPRubro: TDataSetProvider
    DataSet = QRubro
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 96
    Top = 256
  end
  object QListaPrecioPorDefecto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select id,f_pago from  listaprecioespecialcab where pordefecto='#39 +
        'S'#39)
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 224
    Top = 104
    object QListaPrecioPorDefectoID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
    end
  end
  object DSPListaPrecioPorDefecto: TDataSetProvider
    DataSet = QListaPrecioPorDefecto
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 320
    Top = 104
  end
  object QPimeraListaPrecio: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select Min(id) from  listaprecioespecialcab')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 224
    Top = 152
    object QPimeraListaPrecioMIN: TIntegerField
      FieldName = 'MIN'
    end
  end
  object QMonedas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select m.* from monedas m ')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 224
    Top = 195
    object QMonedasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QMonedasMONEDA: TStringField
      FieldName = 'MONEDA'
      Size = 15
    end
    object QMonedasSIGNO: TStringField
      FieldName = 'SIGNO'
      Size = 5
    end
    object QMonedasCOTIZACION: TFMTBCDField
      FieldName = 'COTIZACION'
      Precision = 15
      Size = 3
    end
    object QMonedasCOTIZACION_COMPRA: TFMTBCDField
      FieldName = 'COTIZACION_COMPRA'
      Precision = 15
      Size = 3
    end
  end
  object DSPPimeraListaPrecio: TDataSetProvider
    DataSet = QPimeraListaPrecio
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 320
    Top = 152
  end
  object DSPMonedas: TDataSetProvider
    DataSet = QMonedas
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 320
    Top = 192
  end
  object QCodigoBarra: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigobarra'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select codigo_stk from codigobarra where codigobarra= :codigobar' +
        'ra')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 32
    Top = 304
  end
  object DSPCodigoBarra: TDataSetProvider
    DataSet = QCodigoBarra
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 96
    Top = 304
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
      'select ss.codigo_stk from stock_series ss '
      
        'where ( ss.codigoserie = :codigoserie ) and ( ss.id_cpbte_egreso' +
        ' is null )')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 32
    Top = 352
  end
  object DSPConsultaCodigoSerie: TDataSetProvider
    DataSet = QConsultaCodigoSerie
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 96
    Top = 352
  end
  object QOpcion: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'opcion'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select valor from opciones where opcion = :opcion')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 632
    Top = 40
    object QOpcionVALOR: TStringField
      FieldName = 'VALOR'
      Size = 100
    end
  end
  object QStockFotos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select sf.* from stock_fotos sf where sf.codigo = :codigo')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 224
    Top = 289
    object QStockFotosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QStockFotosCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 8
    end
    object QStockFotosFOTO: TStringField
      FieldName = 'FOTO'
      Size = 100
    end
    object QStockFotosPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPStockFotos: TDataSetProvider
    DataSet = QStockFotos
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 320
    Top = 289
  end
  object QTipoCom: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'compra_venta'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo3'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select c.*, s.detalle as MuestraSucursal from comprobantes c'
      'left join sucursal s on s.codigo=c.sucursal'
      'where c.compra_venta=:compra_venta and'
      '      c.tipo_comprob in (:tipo1,:tipo2,:tipo3) and'
      '      c.sucursal = :suc'
      'order by c.sucursal,c.tipo_comprob ')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 456
    Top = 56
  end
  object DSPTipoComprob: TDataSetProvider
    DataSet = QTipoCom
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 541
    Top = 56
  end
  object DSPBuscaCpbte: TDataSetProvider
    DataSet = QBuscaCpbte
    Options = [poAllowCommandText]
    Left = 541
    Top = 5
  end
  object QBuscaCpbte: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NroCpbte'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select FechaVta as fecha,NroCpbte, Codigo, Nombre, Total,id_fc  ' +
        'from FcVtaCab '
      'where NroCpbte=:NroCpbte')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 456
    Top = 7
  end
  object QLstClientes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select Codigo,Nombre from Clientes'
      'Order By Nombre ')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 456
    Top = 104
  end
  object DSPLstClientes: TDataSetProvider
    DataSet = QLstClientes
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 541
    Top = 104
  end
  object Qsucursal: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select codigo,detalle,direccion,localidad from sucursal where co' +
        'digo=:suc')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 456
    Top = 152
    object QsucursalCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
    end
    object QsucursalDETALLE: TStringField
      DisplayWidth = 35
      FieldName = 'DETALLE'
      Size = 35
    end
    object QsucursalDIRECCION: TStringField
      FieldName = 'DIRECCION'
    end
    object QsucursalLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
    end
  end
  object DSPSucursal: TDataSetProvider
    DataSet = Qsucursal
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 541
    Top = 152
  end
  object QLstSucursal: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from sucursal')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 456
    Top = 200
  end
  object DSPLstSucursal: TDataSetProvider
    DataSet = QLstSucursal
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 541
    Top = 200
  end
  object QTipoCpbte: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'tipo1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo3'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'compra_venta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'discrimina_iva'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'discrimina_iva'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select c.* from comprobantes c where'
      'c.tipo_comprob in (:tipo1,:tipo2,:tipo3) and'
      'c.compra_venta = :compra_venta and'
      '(c.sucursal = :sucursal or :sucursal =  -1) and '
      '(c.desgloza_iva = :discrimina_iva or :discrimina_iva = '#39'*'#39' )'
      'order by c.tipo_comprob,c.clase_comprob,c.letra')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 456
    Top = 248
  end
  object DSPTipoCpbte: TDataSetProvider
    DataSet = QTipoCpbte
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 541
    Top = 248
  end
  object QBuscarClaseCpbte: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'compra_venta'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select c.denominacion as nombre ,'
      'c.letra, min (c.clase_comprob) as clase from comprobantes c'
      'where c.compra_venta=:compra_venta and'
      '      c.tipo_comprob=:tipo and'
      '      c.sucursal=:sucursal'
      'group by c.denominacion,c.letra')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 456
    Top = 296
  end
  object DSPBuscarClaseCpbte: TDataSetProvider
    DataSet = QBuscarClaseCpbte
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 541
    Top = 296
  end
  object QEmpresa: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from empresa')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 224
    Top = 336
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = QEmpresa
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 320
    Top = 337
  end
  object spGravarLog: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftSmallint
        Precision = 2
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 254
        Name = 'DETALLE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 25
        Name = 'ORIGEN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 50
        Name = 'USUARIO'
        ParamType = ptInput
      end>
    SQLConnection = ServerContainer.GestionPtoVta
    StoredProcName = 'GRAVAR_LOG'
    Left = 600
    Top = 368
  end
  object QDepositos: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from depositos where id = :id')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 224
    Top = 384
    object QDepositosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QDepositosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
    object QDepositosSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object QDepositosCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPDepositos: TDataSetProvider
    DataSet = QDepositos
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 320
    Top = 385
  end
  object QVerificaNroComp: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Nro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select NroCpbte,id_fc,TipoCpbte,ClaseCpbte from fccompcab where'
      'nrocpbte=:Nro and codigo=:codigo and tipocpbte=:tipo')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 479
    Top = 447
    object QVerificaNroCompNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QVerificaNroCompID_FC: TIntegerField
      FieldName = 'ID_FC'
      Required = True
    end
    object QVerificaNroCompTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 4
    end
    object QVerificaNroCompCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 4
    end
  end
  object spcambiaNro: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 2
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 4
        Name = 'PREFIJO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 8
        Name = 'NUMERO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 1
        Name = 'COMPRA_VENTA'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Precision = 8
        Name = 'FECHA'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Precision = 8
        Name = 'FECHA2'
        ParamType = ptInput
      end>
    SQLConnection = ServerContainer.GestionPtoVta
    StoredProcName = 'CAMBIAR_NRO_CPBTE'
    Left = 592
    Top = 441
  end
end
