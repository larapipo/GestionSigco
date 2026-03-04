object ServerModuleListado: TServerModuleListado
  OldCreateOrder = False
  Height = 259
  Width = 500
  object QFcCab: TSQLQuery
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
      end>
    SQL.Strings = (
      'select f.* from fcvtacab f '
      'where f.fechavta between :desde and :hasta'
      'order by f.id_fc')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 56
    Top = 32
  end
  object QFcDet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_desde'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_hasta'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select f.* from fcvtadet f '
      'where f.id_cabfac between :id_desde and :id_hasta'
      'order by f.id_cabfac,f.id')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 56
    Top = 96
  end
  object DSPFcCab: TDataSetProvider
    DataSet = QFcCab
    Left = 128
    Top = 32
  end
  object DSPFcDet: TDataSetProvider
    DataSet = QFcDet
    Left = 128
    Top = 96
  end
  object DataSetProvider3: TDataSetProvider
    Left = 336
    Top = 96
  end
  object DataSetProvider4: TDataSetProvider
    Left = 336
    Top = 32
  end
end
