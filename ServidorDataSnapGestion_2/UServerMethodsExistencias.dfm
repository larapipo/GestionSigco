object ServerMethodsExistencia: TServerMethodsExistencia
  OldCreateOrder = False
  Height = 542
  Width = 659
  object DSPStock: TDataSetProvider
    DataSet = QStock
    Left = 112
    Top = 16
  end
  object QStock: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'lista'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'unidad'
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
      
        'select  d.*,s.reemplazo_stk from existencia_stk_al (:lista,:unid' +
        'ad,:deposito,:fecha,:rubro,:subrubro,:marca) d'
      'left join stock s on s.codigo_stk=d.codigo_stk')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 32
    Top = 16
  end
  object QRubro: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select codigo_rubro,detalle_rubro from rubros order by detalle_r' +
        'ubro')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 32
    Top = 72
    object QRubroCODIGO_RUBRO: TStringField
      DisplayWidth = 3
      FieldName = 'CODIGO_RUBRO'
      Size = 3
    end
    object QRubroDETALLE_RUBRO: TStringField
      DisplayWidth = 35
      FieldName = 'DETALLE_RUBRO'
      Size = 35
    end
  end
  object DSPRubro: TDataSetProvider
    DataSet = QRubro
    Left = 112
    Top = 72
  end
  object QStockGral: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'unidad'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'deposito'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select  d.*,s.reemplazo_stk, dp.nombre as MuestraDepo from exist' +
        'encia_stk (:unidad,:deposito) d'
      'left join depositos dp on dp.id=d.cod_depo'
      'left join stock s on s.codigo_stk=d.codigo_stk')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 32
    Top = 134
  end
  object DSPStockGral: TDataSetProvider
    DataSet = QStockGral
    Left = 104
    Top = 134
  end
  object QDepositos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from depositos')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 32
    Top = 192
  end
  object DSPDepositos: TDataSetProvider
    DataSet = QDepositos
    Left = 96
    Top = 200
  end
  object QSubRubro: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select s.codigo_subrubro,s.detalle_subrubro from subrubros s'
      'where (s.codigo_rubro = :rubro )  or ( :rubro = '#39'***'#39' )'
      'order by s.detalle_subrubro')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 24
    Top = 248
  end
  object DSPSubRubro: TDataSetProvider
    DataSet = QSubRubro
    Left = 104
    Top = 256
  end
  object QMarca: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select marca_stk,descripcion_Marca from marcas'
      'order by descripcion_marca')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 24
    Top = 304
  end
  object DSPMarca: TDataSetProvider
    DataSet = QMarca
    Left = 104
    Top = 304
  end
  object DSPListaPrecios: TDataSetProvider
    DataSet = QListaPrecios
    Left = 104
    Top = 360
  end
  object QListaPrecios: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select l.id as id_lista,l.nombre from listaprecioespecialcab l')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 27
    Top = 360
    object intgrfldQListaPrecID_LISTA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_LISTA'
    end
    object QListaPreciosNOMBRE: TStringField
      DisplayWidth = 50
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object QMovimientos_2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'anio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cliente'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM VTAS_ANUAL_ARTIC( :anio, :codigo, :cliente,:suc )')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 437
    Top = 40
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
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'declarado_iva'
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
      end
      item
        DataType = ftString
        Name = 'vend'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'zona'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select * from LISTA_ART_VENDIDO(:desde,:hasta,:sucursal,:declara' +
        'do_iva,:rubro,'
      
        '                                :subrubro,:marca,:vend,:tipo,:co' +
        'digo,:zona)'
      'order by fechacpbte')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 432
    Top = 104
  end
  object DSPMovimientos_2: TDataSetProvider
    DataSet = QMovimientos_2
    Left = 544
    Top = 44
  end
  object DSPMovimientos: TDataSetProvider
    DataSet = QMovimientos
    Left = 536
    Top = 108
  end
end
