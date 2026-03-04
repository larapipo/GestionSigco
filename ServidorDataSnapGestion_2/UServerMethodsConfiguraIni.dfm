object ServerMethodsConfiguraIni: TServerMethodsConfiguraIni
  OldCreateOrder = False
  Height = 500
  Width = 501
  object QCaja: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cuenta_caja'
      'where id_tipo_cta=1 order by nombre')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 24
    Top = 8
  end
  object DSPCaja: TDataSetProvider
    DataSet = QCaja
    Left = 104
    Top = 8
  end
  object QCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select codigo, nombre from  clientes where codigo = :codigo')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 24
    Top = 56
  end
  object DSPClientes: TDataSetProvider
    DataSet = QCliente
    Left = 104
    Top = 56
  end
  object QPersonal: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select codigo,nombre from personal where activo = '#39'S'#39)
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 24
    Top = 104
  end
  object DSPPersonal: TDataSetProvider
    DataSet = QCliente
    Left = 96
    Top = 104
  end
  object QMonedas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from monedas')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 24
    Top = 344
  end
  object DSPMonedas: TDataSetProvider
    DataSet = QMonedas
    Left = 88
    Top = 344
  end
  object QTasaIva: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from gravamen')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 24
    Top = 296
  end
  object DSPTasaIva: TDataSetProvider
    DataSet = QTasaIva
    Left = 88
    Top = 296
  end
  object QUnidades: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from unidades')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 24
    Top = 248
  end
  object DSPUnidades: TDataSetProvider
    DataSet = QUnidades
    Left = 96
    Top = 248
  end
  object QDepositos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from depositos')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 24
    Top = 200
  end
  object DSPDepositos: TDataSetProvider
    DataSet = QDepositos
    Left = 96
    Top = 200
  end
  object QInscripcion: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from inscripcion')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 24
    Top = 152
  end
  object DSPInscripcion: TDataSetProvider
    DataSet = QInscripcion
    Left = 96
    Top = 152
  end
end
