inherited FormTipoObra: TFormTipoObra
  Caption = 'Tipo de Obra'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Height = 89
    StyleElements = [seFont, seClient, seBorder]
    ExplicitHeight = 89
    object Label1: TLabel
      Left = 22
      Top = 13
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object Label2: TLabel
      Left = 161
      Top = 13
      Width = 56
      Height = 13
      Caption = 'Descripcion'
    end
    object DBEdit1: TDBEdit
      Left = 22
      Top = 32
      Width = 121
      Height = 21
      Color = clInfoBk
      DataField = 'ID'
      DataSource = DSBase
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 159
      Top = 32
      Width = 354
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DETALLE'
      DataSource = DSBase
      TabOrder = 1
    end
  end
  inherited ToolBar1: TToolBar
    Top = 89
    ExplicitTop = 89
  end
  inherited Panel1: TPanel
    Top = 119
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 119
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSTipo
    Left = 544
  end
  inherited JvFormStorage: TJvFormStorage
    Left = 296
    Top = 208
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 376
    Top = 208
  end
  inherited ComBuscadorBase: TComBuscador
    Data = QBuscador
    Campo = 'ID'
    Id = 0
    Titulo = 'Tipos'
  end
  inherited QUltimoCodigo2: TFDQuery
    SQL.Strings = (
      'select max(id) from obras_tipo')
    Left = 136
    Top = 328
  end
  object QTipo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select o.* from obras_tipo o where o.id=:id')
    Left = 240
    Top = 360
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object CDSTipo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPTipo'
    OnNewRecord = CDSTipoNewRecord
    Left = 384
    Top = 360
    object CDSTipoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSTipoDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 50
    end
  end
  object DSPTipo: TDataSetProvider
    DataSet = QTipo
    Options = []
    Left = 304
    Top = 360
  end
  object QBuscador: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select o.* from obras_tipo o order by o.detalle')
    Left = 472
    Top = 168
    object QBuscadorDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
    object QBuscadorID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
