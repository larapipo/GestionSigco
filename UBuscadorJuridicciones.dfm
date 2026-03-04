object FormBuscadorJuridicciones: TFormBuscadorJuridicciones
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Buscador de Juridicciones'
  ClientHeight = 491
  ClientWidth = 429
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 429
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Juridicciones'
    Color = clMenuHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 624
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 429
    Height = 409
    Align = alClient
    DataSource = DSJuridiccion
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object Panel2: TPanel
    Left = 0
    Top = 450
    Width = 429
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    ExplicitTop = 400
    ExplicitWidth = 624
    object JvDBFindEdit1: TJvDBFindEdit
      Left = 96
      Top = 6
      Width = 225
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = []
      Flat = True
      ParentFlat = False
      ParentFont = False
      TabOrder = 0
      Text = ''
      DataField = 'LOCALIDAD'
      DataSource = DSJuridiccion
      FindStyle = fsFilter
      FindMode = fmAnyPos
    end
  end
  object QJuridiccion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from juridicion_localidad_w')
    Left = 176
    Top = 285
    object QJuridiccionID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QJuridiccionID_JURIDICION: TIntegerField
      FieldName = 'ID_JURIDICION'
    end
    object QJuridiccionLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 25
    end
    object QJuridiccionPROVINCIA: TStringField
      FieldName = 'PROVINCIA'
      Origin = 'PROVINCIA'
    end
    object QJuridiccionPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      FixedChar = True
      Size = 1
    end
  end
  object DSPJuridiccion: TDataSetProvider
    DataSet = QJuridiccion
    Options = []
    Left = 252
    Top = 285
  end
  object CDSJuridiccion: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPJuridiccion'
    Left = 316
    Top = 245
    object CDSJuridiccionID: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 5
      FieldName = 'ID'
      Required = True
    end
    object CDSJuridiccionLOCALIDAD: TStringField
      DisplayLabel = 'Localidad'
      DisplayWidth = 25
      FieldName = 'LOCALIDAD'
      Size = 25
    end
    object CDSJuridiccionID_JURIDICION: TIntegerField
      DisplayLabel = 'Juridiccion'
      DisplayWidth = 11
      FieldName = 'ID_JURIDICION'
    end
    object CDSJuridiccionPROVINCIA: TStringField
      DisplayLabel = 'Provincia'
      DisplayWidth = 20
      FieldName = 'PROVINCIA'
      Origin = 'PROVINCIA'
    end
    object CDSJuridiccionPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object DSJuridiccion: TDataSource
    DataSet = CDSJuridiccion
    Left = 308
    Top = 181
  end
end
