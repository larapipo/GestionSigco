inherited FormRegimenPercepcion: TFormRegimenPercepcion
  Left = 308
  Top = 157
  Caption = 'Regimenes de Percepcion IVA'
  ClientWidth = 695
  ExplicitLeft = 308
  ExplicitTop = 157
  PixelsPerInch = 96
  TextHeight = 13
  GlassFrame.SheetOfGlass = True
  inherited pnPrincipal: TPanel
    Width = 695
    Height = 73
    ExplicitWidth = 695
    ExplicitHeight = 73
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Codigo'
      FocusControl = dbeCodigo
    end
    object Label2: TLabel
      Left = 80
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Detalle'
      FocusControl = dbeDetalle
    end
    object dbeCodigo: TDBEdit
      Left = 8
      Top = 24
      Width = 64
      Height = 21
      DataField = 'CODIGO'
      DataSource = DSBase
      TabOrder = 0
    end
    object dbeDetalle: TDBEdit
      Left = 80
      Top = 24
      Width = 604
      Height = 21
      DataField = 'DETALLE'
      DataSource = DSBase
      TabOrder = 1
    end
  end
  inherited ToolBar1: TToolBar
    Top = 73
    Width = 695
    ExplicitTop = 73
    ExplicitWidth = 695
  end
  inherited Panel1: TPanel
    Top = 103
    Width = 695
    ExplicitTop = 107
    ExplicitWidth = 695
    inherited sbEstado: TStatusBar
      Width = 533
      ExplicitLeft = 227
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSRegimen
  end
  inherited wwBuscador: TwwLookupDialog
    LookupTable = QBuscaRegimen
  end
  object DSPRegimen: TDataSetProvider
    DataSet = QRegimen
    Left = 352
    Top = 280
  end
  object CDSRegimen: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPRegimen'
    Left = 416
    Top = 224
    object CDSRegimenCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSRegimenDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 100
    end
  end
  object QBuscaRegimen: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from REGIMENPERCEPCIONIVA order by detalle'
      '')
    Left = 520
    Top = 184
    object QBuscaRegimenDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 100
    end
    object IntegerField1: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object QRegimen: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from REGIMENPERCEPCIONIVA where codigo=:codigo')
    Left = 520
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object QRegimenCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QRegimenDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 100
    end
  end
end
