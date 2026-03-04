object FormBuscadorAcopiosActivos: TFormBuscadorAcopiosActivos
  Left = 506
  Top = 204
  BorderIcons = [biSystemMenu]
  Caption = 'Clientes Con Acopios Activos'
  ClientHeight = 597
  ClientWidth = 825
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object pn1: TPanel
    Left = 0
    Top = 0
    Width = 825
    Height = 597
    Align = alClient
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'pn1'
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object pnCabecera: TPanel
      Left = 1
      Top = 1
      Width = 823
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        823
        32)
      object Label1: TLabel
        Left = 479
        Top = 9
        Width = 33
        Height = 13
        Caption = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cbEstado: TJvComboBox
        Left = 609
        Top = 5
        Width = 167
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        EmptyValue = '*'
        EmptyFontColor = clDefault
        TabOrder = 0
        Text = ''
        OnClick = cbEstadoClick
        Items.Strings = (
          'Todos '
          'Nuevos            '
          'Cumplidos')
      end
    end
    object pnPie: TPanel
      Left = 1
      Top = 536
      Width = 823
      Height = 60
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      DesignSize = (
        823
        60)
      object Label2: TLabel
        Left = 112
        Top = 6
        Width = 87
        Height = 13
        Caption = 'Filtrar por Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object btOk: TBitBtn
        Left = 720
        Top = 22
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Kind = bkOK
        NumGlyphs = 2
        TabOrder = 0
        OnClick = btOkClick
      end
      object btCancel: TBitBtn
        Left = 639
        Top = 22
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Kind = bkCancel
        NumGlyphs = 2
        TabOrder = 1
        OnClick = btCancelClick
      end
      object dbfNombre: TJvDBFindEdit
        Left = 112
        Top = 22
        Width = 337
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        Text = ''
        TextHint = 'Buscar por Nombre'
        DataField = 'NOMBRE'
        DataSource = DSBuscador
        FindStyle = fsFilter
        FindMode = fmAnyPos
      end
    end
    object dbgClientes: TDBGrid
      Left = 1
      Top = 33
      Width = 823
      Height = 503
      Align = alClient
      DataSource = DSBuscador
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgClientesDblClick
      OnKeyDown = dbgClientesKeyDown
      OnTitleClick = dbgClientesTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DIRECCION'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 304
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUMPLIDO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object DSPBuscador: TDataSetProvider
    DataSet = QBuscador
    UpdateMode = upWhereKeyOnly
    Left = 288
    Top = 200
  end
  object CDSBuscador: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'estado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'estado'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscador'
    Left = 352
    Top = 200
    object CDSBuscadorCLIENTE: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 9
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 6
    end
    object CDSBuscadorNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 47
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSBuscadorDIRECCION: TStringField
      DisplayLabel = 'Direccion'
      DisplayWidth = 45
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object CDSBuscadorCUMPLIDO: TStringField
      DisplayLabel = 'Cumplido'
      FieldName = 'CUMPLIDO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSBuscador: TDataSource
    DataSet = CDSBuscador
    Left = 408
    Top = 200
  end
  object JvFormStorage: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    Options = [fpState, fpSize, fpLocation, fpActiveControl]
    StoredValues = <>
    Left = 344
    Top = 272
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    AutoFlush = True
    SubStorages = <>
    Left = 408
    Top = 296
  end
  object QBuscador: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select distinct cab.cliente,cab.nombre,cab.direccion,cab.cumplid' +
        'o from merca_enacopio_cab cab'
      'where cab.cumplido = :estado  or :estado = '#39'*'#39
      'order by cab.nombre')
    Left = 208
    Top = 200
    ParamData = <
      item
        Position = 1
        Name = 'estado'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'estado'
        DataType = ftString
        ParamType = ptInput
      end>
  end
end
