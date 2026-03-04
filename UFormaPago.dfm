inherited FormCondicionPago: TFormCondicionPago
  Left = 249
  Top = 266
  Caption = 'Condiciones de Pago'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Height = 129
    object Label18: TLabel
      Left = 26
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Código'
      FocusControl = dbeCodigo
    end
    object Label19: TLabel
      Left = 106
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Detalle'
      FocusControl = dbeDetalle
    end
    object Label20: TLabel
      Left = 26
      Top = 62
      Width = 23
      Height = 13
      Caption = 'Días'
      FocusControl = dbeDias
    end
    object Label21: TLabel
      Left = 106
      Top = 62
      Width = 52
      Height = 13
      Caption = 'Descuento'
      FocusControl = dbeDescto
    end
    object dbeCodigo: TDBEdit
      Left = 26
      Top = 32
      Width = 47
      Height = 21
      DataField = 'CODIGO'
      DataSource = DSBase
      TabOrder = 0
    end
    object dbeDetalle: TDBEdit
      Left = 106
      Top = 32
      Width = 124
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DETALLE'
      DataSource = DSBase
      TabOrder = 1
    end
    object dbeDias: TDBEdit
      Left = 26
      Top = 78
      Width = 64
      Height = 21
      DataField = 'Dias'
      DataSource = DSBase
      TabOrder = 2
    end
    object dbeDescto: TDBEdit
      Left = 106
      Top = 78
      Width = 64
      Height = 21
      DataField = 'Descuento'
      DataSource = DSBase
      TabOrder = 3
    end
  end
  inherited ToolBar1: TToolBar
    Top = 129
  end
  inherited Panel1: TPanel
    Top = 163
  end
  inherited QUltimoCodigo: TQuery
    SQL.Strings = (
      'select Max(Codigo) as Codigo From F_Pago')
  end
  inherited wwBuscador: TwwLookupDialog
    LookupTable = QBuscadorCondicionPago
  end
  object QBuscadorCondicionPago: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from f_pago')
    Left = 368
    Top = 272
    object QBuscadorCondicionPagoCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'DBMAIN.F_PAGO.CODIGO'
    end
    object QBuscadorCondicionPagoDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DBMAIN.F_PAGO.DETALLE'
    end
    object QBuscadorCondicionPagoDIAS: TIntegerField
      DisplayLabel = 'Dias'
      FieldName = 'DIAS'
      Origin = 'DBMAIN.F_PAGO.DIAS'
    end
    object QBuscadorCondicionPagoDESCUENTO: TFloatField
      DisplayLabel = 'Dscto.'
      FieldName = 'DESCUENTO'
      Origin = 'DBMAIN.F_PAGO.DESCUENTO'
    end
  end
  object DSPCondicionPago: TDataSetProvider
    DataSet = DMMain.wwQFPago
    Constraints = True
    Left = 232
    Top = 216
  end
  object wwCDSCondicionPago: TwwClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPCondicionPago'
    OnNewRecord = wwCDSCondicionPagoNewRecord
    ValidateWithMask = True
    Left = 120
    Top = 216
    object wwCDSCondicionPagoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object wwCDSCondicionPagoDetalle: TStringField
      FieldName = 'Detalle'
    end
    object wwCDSCondicionPagoDias: TIntegerField
      FieldName = 'Dias'
    end
    object wwCDSCondicionPagoDescuento: TFloatField
      FieldName = 'Descuento'
    end
  end
end
