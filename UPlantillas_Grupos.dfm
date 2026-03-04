inherited FormPlantillaGrupo: TFormPlantillaGrupo
  Left = 147
  Top = 197
  Caption = 'Grupo de Pantillas'
  ClientHeight = 380
  ExplicitLeft = 147
  ExplicitTop = 197
  ExplicitWidth = 694
  ExplicitHeight = 416
  PixelsPerInch = 96
  TextHeight = 13
  GlassFrame.SheetOfGlass = True
  inherited pnPrincipal: TPanel
    Height = 81
    ExplicitHeight = 81
    object Label1: TLabel
      Left = 7
      Top = 8
      Width = 9
      Height = 13
      Caption = 'Id'
      FocusControl = dbeId
    end
    object Label2: TLabel
      Left = 64
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Detalle'
      FocusControl = dbeDetalle
    end
    object dbeId: TDBEdit
      Left = 7
      Top = 24
      Width = 42
      Height = 21
      Color = clInfoBk
      DataField = 'ID'
      DataSource = DSBase
      Enabled = False
      TabOrder = 0
    end
    object dbeDetalle: TDBEdit
      Left = 64
      Top = 24
      Width = 459
      Height = 21
      DataField = 'DETALLE'
      DataSource = DSBase
      TabOrder = 1
    end
  end
  inherited ToolBar1: TToolBar
    Top = 81
    ExplicitTop = 81
  end
  inherited Panel1: TPanel
    Top = 111
    ExplicitTop = 111
  end
  inherited DSBase: TDataSource
    DataSet = CDSGrupos
  end
  inherited QUltimoCodigo: TQuery
    SQL.Strings = (
      'select max(id) from plantillas_grupos')
  end
  inherited wwBuscador: TwwLookupDialog
    Selected.Strings = (
      'DETALLE'#9'35'#9'Detalle'#9'F'
      'ID'#9'10'#9'Id'#9'F')
    LookupTable = QBuscadorGrupo
  end
  object QGrupos: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from plantillas_grupos'
      'where id=:id')
    Left = 240
    Top = 312
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    object QGruposID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QGruposDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object CDSGrupos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPGrupos'
    OnNewRecord = CDSGruposNewRecord
    Left = 368
    Top = 312
    object CDSGruposID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSGruposDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object DSPGrupos: TDataSetProvider
    DataSet = QGrupos
    Left = 304
    Top = 320
  end
  object QBuscadorGrupo: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from plantillas_grupos'
      '')
    Left = 240
    Top = 192
    object StringField1: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 35
      FieldName = 'DETALLE'
      Size = 35
    end
    object IntegerField1: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
end
