inherited FormSectorPedidos: TFormSectorPedidos
  Caption = 'Sectores Pedidos'
  ClientHeight = 579
  StyleElements = [seFont, seClient, seBorder]
  ExplicitHeight = 620
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Height = 73
    StyleElements = [seFont, seClient, seBorder]
    ExplicitHeight = 73
    object Label1: TLabel
      Left = 106
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Detalle'
      FocusControl = cxDBTextEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 8
      Width = 9
      Height = 13
      Caption = 'Id'
      FocusControl = edID
    end
    object edID: TDBEdit
      Left = 16
      Top = 24
      Width = 53
      Height = 21
      Color = clInfoBk
      DataField = 'ID'
      DataSource = DSBase
      Enabled = False
      TabOrder = 1
    end
    object cxDBTextEdit1: TDBEdit
      Left = 106
      Top = 24
      Width = 196
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DETALLE'
      DataSource = DSBase
      TabOrder = 0
    end
  end
  inherited ToolBar1: TToolBar
    Top = 73
    ExplicitTop = 73
    inherited btConfirma: TBitBtn
      DoubleBuffered = True
    end
    inherited btNuevo: TBitBtn
      DoubleBuffered = True
    end
    inherited btCancelar: TBitBtn
      DoubleBuffered = True
    end
    inherited btModificar: TBitBtn
      DoubleBuffered = True
    end
    inherited btBuscar: TBitBtn
      DoubleBuffered = True
    end
    inherited btBorrar: TBitBtn
      DoubleBuffered = True
    end
    inherited btSalir: TBitBtn
      DoubleBuffered = True
    end
  end
  inherited Panel1: TPanel
    Top = 103
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 103
  end
  inherited ActionList1: TActionList
    Left = 416
    Top = 80
  end
  inherited DSBase: TDataSource
    DataSet = CDSSector
    Left = 632
    Top = 192
  end
  inherited ImageList1: TImageList
    Left = 144
    Top = 136
  end
  inherited JvFormStorage: TJvFormStorage
    Left = 256
    Top = 296
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 32
    Top = 400
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 376
  end
  inherited ComBuscadorBase: TComBuscador
    Data = QBuscador
    Campo = 'ID'
  end
  inherited QBrowse2: TFDQuery
    Top = 352
  end
  inherited QUltimoCodigo2: TFDQuery
    SQL.Strings = (
      'select max(s.id) from  plantilla_pedido_sector s')
    Left = 112
    Top = 400
    object QUltimoCodigo2MAX: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MAX'
      Origin = '"MAX"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  inherited ImageListDos: TImageList
    Left = 48
    Top = 200
  end
  object QSector: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.* from  plantilla_pedido_sector s where s.id=:id')
    Left = 428
    Top = 194
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QSectorID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QSectorDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
  end
  object DSPSector: TDataSetProvider
    DataSet = QSector
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 500
    Top = 194
  end
  object CDSSector: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSector'
    OnNewRecord = CDSSectorNewRecord
    Left = 572
    Top = 194
    object CDSSectorID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSSectorDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 50
    end
  end
  object QBuscador: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.* from  plantilla_pedido_sector s ')
    Left = 628
    Top = 266
    object StringField1: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
    object IntegerField1: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
