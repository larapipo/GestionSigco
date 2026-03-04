inherited FormPaises: TFormPaises
  Caption = 'Paises'
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Height = 97
    ExplicitHeight = 97
    object Label1: TLabel
      Left = 88
      Top = 5
      Width = 68
      Height = 13
      Caption = 'Denominacion'
    end
    object Label2: TLabel
      Left = 88
      Top = 51
      Width = 56
      Height = 13
      Caption = 'Codigo Pais'
    end
    object DBEdit1: TDBEdit
      Left = 7
      Top = 24
      Width = 57
      Height = 21
      Color = clInfoBk
      DataField = 'ID'
      DataSource = DSBase
      Enabled = False
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 88
      Top = 24
      Width = 408
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PAIS'
      DataSource = DSBase
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 88
      Top = 70
      Width = 105
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CODIGO'
      DataSource = DSBase
      TabOrder = 2
    end
  end
  inherited ToolBar1: TToolBar
    Top = 97
    ExplicitTop = 97
  end
  inherited Panel1: TPanel
    Top = 127
    ExplicitTop = 127
  end
  inherited DSBase: TDataSource
    DataSet = CDSPaises
    Left = 528
    Top = 48
  end
  inherited JvFormStorage: TJvFormStorage
    Left = 528
    Top = 328
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 584
    Top = 352
  end
  inherited ComBuscadorBase: TComBuscador
    Data = CDSBuscador
    Campo = 'ID'
    Titulo = 'Paises'
    Left = 456
    Top = 208
  end
  object QPaises: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select p.* from paises p'
      'where id=:id')
    Left = 232
    Top = 176
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QPaisesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPaisesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object QPaisesPAIS: TStringField
      FieldName = 'PAIS'
      Origin = 'PAIS'
      Size = 30
    end
  end
  object QBuscador: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select p.* from paises p order by pais')
    Left = 256
    Top = 288
  end
  object DSPPaises: TDataSetProvider
    DataSet = QPaises
    Options = []
    Left = 296
    Top = 176
  end
  object CDSPaises: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPaises'
    OnNewRecord = CDSPaisesNewRecord
    Left = 360
    Top = 184
    object CDSPaisesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSPaisesCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CDSPaisesPAIS: TStringField
      FieldName = 'PAIS'
      Size = 30
    end
  end
  object CDSBuscador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscador'
    Left = 368
    Top = 288
    object CDSBuscadorPAIS: TStringField
      DisplayLabel = 'Pais'
      DisplayWidth = 25
      FieldName = 'PAIS'
      Size = 30
    end
    object CDSBuscadorID: TIntegerField
      DisplayWidth = 4
      FieldName = 'ID'
      Required = True
    end
  end
  object DSPBuscador: TDataSetProvider
    DataSet = QBuscador
    Left = 312
    Top = 288
  end
end
