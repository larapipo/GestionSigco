object FormCargaSectorObra: TFormCargaSectorObra
  Left = 0
  Top = 0
  Caption = 'Sector de Obra'
  ClientHeight = 299
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 708
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object edSector: TDBEdit
      Left = 18
      Top = 25
      Width = 649
      Height = 24
      CharCase = ecUpperCase
      DataField = 'SECTOR'
      DataSource = DSObrasSector
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 708
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object btOk: TBitBtn
      Left = 585
      Top = 6
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btOkClick
    end
    object btCancel: TBitBtn
      Left = 504
      Top = 6
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object QObrasSector: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select o.* from obras_sector o where o.cod_obra =:obra')
    Left = 256
    Top = 159
    ParamData = <
      item
        Position = 1
        Name = 'OBRA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QObrasSectorID_SECTOR: TIntegerField
      FieldName = 'ID_SECTOR'
      Origin = 'ID_SECTOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QObrasSectorCOD_OBRA: TIntegerField
      FieldName = 'COD_OBRA'
      Origin = 'COD_OBRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QObrasSectorSECTOR: TStringField
      FieldName = 'SECTOR'
      Origin = 'SECTOR'
      Size = 100
    end
  end
  object DSPObraSector: TDataSetProvider
    DataSet = QObrasSector
    Options = [poRetainServerOrder]
    UpdateMode = upWhereKeyOnly
    Left = 328
    Top = 159
  end
  object CDSObrasSector: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'OBRA'
        ParamType = ptInput
      end>
    ProviderName = 'DSPObraSector'
    AfterPost = CDSObrasSectorAfterPost
    OnNewRecord = CDSObrasSectorNewRecord
    OnReconcileError = CDSObrasSectorReconcileError
    Left = 408
    Top = 159
    object CDSObrasSectorID_SECTOR: TIntegerField
      FieldName = 'ID_SECTOR'
      Origin = 'ID_SECTOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSObrasSectorCOD_OBRA: TIntegerField
      FieldName = 'COD_OBRA'
      Origin = 'COD_OBRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSObrasSectorSECTOR: TStringField
      FieldName = 'SECTOR'
      Origin = 'SECTOR'
      Size = 100
    end
  end
  object DSObrasSector: TDataSource
    DataSet = CDSObrasSector
    Left = 493
    Top = 159
  end
  object QNextID: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select (Max(o.id_sector)+1) as Id from obras_sector o where o.co' +
        'd_obra =:obra')
    Left = 88
    Top = 207
    ParamData = <
      item
        Name = 'OBRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
