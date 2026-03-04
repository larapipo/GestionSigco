inherited FormTipoLiquidacionSueldos: TFormTipoLiquidacionSueldos
  Caption = 'Tpo Liquidacion Sueldos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Height = 73
    ExplicitHeight = 73
    object Label1: TLabel
      Left = 106
      Top = 5
      Width = 37
      Height = 13
      Caption = 'Nombre'
      FocusControl = cxDBTextEdit1
    end
    object Label2: TLabel
      Left = 24
      Top = 5
      Width = 9
      Height = 13
      Caption = 'Id'
      FocusControl = cxDBSpinEdit1
    end
    object cxDBSpinEdit1: TDBEdit
      Left = 24
      Top = 21
      Width = 65
      Height = 21
      Color = clInfoBk
      DataField = 'ID'
      DataSource = DSBase
      Enabled = False
      TabOrder = 1
    end
    object cxDBTextEdit1: TDBEdit
      Left = 106
      Top = 21
      Width = 183
      Height = 21
      DataField = 'NOMBRE'
      DataSource = DSBase
      TabOrder = 0
    end
  end
  inherited ToolBar1: TToolBar
    Top = 73
    ExplicitTop = 73
  end
  inherited Panel1: TPanel
    Top = 103
    ExplicitTop = 103
  end
  inherited DSBase: TDataSource
    DataSet = CDSTipoLiquidacion
  end
  inherited JvFormStorage: TJvFormStorage
    Left = 440
    Top = 248
  end
  inherited ComBuscadorBase: TComBuscador
    Data = QBuscador
    Campo = 'id'
    Titulo = 'Liquidaciones'
    Left = 536
    Top = 224
  end
  inherited QUltimoCodigo2: TFDQuery
    SQL.Strings = (
      'select max(id) from personal_liquidacion_tipo ')
  end
  object QBuscador: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from personal_liquidacion_tipo '
      'order by nombre'
      '')
    Left = 544
    Top = 296
    object QBuscadorNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 30
    end
    object QBuscadorID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object CDSTipoLiquidacion: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPTipoLiquidacion'
    OnNewRecord = CDSTipoLiquidacionNewRecord
    Left = 296
    Top = 336
    object CDSTipoLiquidacionID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSTipoLiquidacionNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
  end
  object DSPTipoLiquidacion: TDataSetProvider
    DataSet = QTipoLiquidacion
    Options = []
    Left = 288
    Top = 280
  end
  object QTipoLiquidacion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from personal_liquidacion_tipo where id=:id')
    Left = 217
    Top = 272
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QTipoLiquidacionID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTipoLiquidacionNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 30
    end
  end
end
