inherited FormPersonalCategorias: TFormPersonalCategorias
  Left = 442
  Top = 108
  Caption = 'Personal Categorias'
  ClientHeight = 562
  ClientWidth = 691
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 709
  ExplicitHeight = 603
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 691
    Height = 441
    Padding.Left = 5
    Padding.Right = 5
    Padding.Bottom = 10
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 691
    ExplicitHeight = 441
    object dbgConceptos: TDBGrid
      Left = 5
      Top = 81
      Width = 681
      Height = 350
      Align = alClient
      DataSource = DSConceptos
      DragMode = dmAutomatic
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColEnter = dbgConceptosColEnter
      OnDragDrop = dbgConceptosDragDrop
      OnDragOver = dbgConceptosDragOver
      OnEditButtonClick = BuscarConceptoExecute
      OnEndDrag = dbgConceptosEndDrag
      OnKeyPress = dbgConceptosKeyPress
      OnMouseDown = dbgConceptosMouseDown
      OnStartDrag = dbgConceptosStartDrag
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'IDCONCEPTO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 92
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'TIPO_CONCEPTO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'CONCEPTO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 302
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'IMPORTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 84
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'PORCENTAJE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'RENGLON'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 31
          Visible = True
        end>
    end
    object pnCabecera: TPanel
      Left = 5
      Top = 0
      Width = 681
      Height = 81
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = dbeCodigo
      end
      object Label2: TLabel
        Left = 80
        Top = 16
        Width = 33
        Height = 13
        Caption = 'Detalle'
        FocusControl = dbeDetalle
      end
      object Label3: TLabel
        Left = 280
        Top = 16
        Width = 68
        Height = 13
        Caption = 'Sueldo Basico'
        FocusControl = dbeSueldo
      end
      object Label4: TLabel
        Left = 413
        Top = 16
        Width = 50
        Height = 13
        Caption = 'Valor Hora'
        FocusControl = dbeHora
      end
      object Label5: TLabel
        Left = 8
        Top = 59
        Width = 170
        Height = 13
        Caption = 'Conceptos Aplicables a la Categoria'
      end
      object dbeCodigo: TDBEdit
        Left = 8
        Top = 32
        Width = 64
        Height = 21
        DataField = 'ID'
        DataSource = DSBase
        TabOrder = 0
      end
      object dbeDetalle: TDBEdit
        Left = 80
        Top = 32
        Width = 193
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DETALLE'
        DataSource = DSBase
        TabOrder = 1
      end
      object dbeSueldo: TDBEdit
        Left = 280
        Top = 32
        Width = 107
        Height = 21
        DataField = 'SUELDO_BASICO'
        DataSource = DSBase
        TabOrder = 2
      end
      object dbeHora: TDBEdit
        Left = 413
        Top = 31
        Width = 64
        Height = 21
        Color = clBtnFace
        DataField = 'VALORHORA'
        DataSource = DSBase
        Enabled = False
        TabOrder = 3
        OnExit = dbeHoraExit
      end
      object rgTipoLiquidacion: TDBRadioGroup
        Left = 537
        Top = 4
        Width = 137
        Height = 65
        Caption = 'Modo Liquidaci'#243'n'
        DataField = 'TIPO_LIQUIDACION'
        DataSource = DSBase
        Items.Strings = (
          'Sueldo Basico'
          'Por Hora'
          'Por Producci'#243'n')
        TabOrder = 4
        Values.Strings = (
          '1'
          '2'
          '3')
        OnClick = rgTipoLiquidacionClick
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 441
    Width = 691
    ExplicitTop = 441
    ExplicitWidth = 691
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
    Top = 471
    Width = 691
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 471
    ExplicitWidth = 691
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 602
      ExplicitWidth = 602
    end
  end
  inherited ActionList1: TActionList
    Left = 392
    object BuscarConcepto: TAction
      Caption = 'BuscarConcepto'
      ShortCut = 16397
      OnExecute = BuscarConceptoExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSCategoria
    Left = 400
    Top = 144
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 48
    Top = 336
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 360
    Top = 336
  end
  inherited ComBuscadorBase: TComBuscador
    Data = CDSBuscador
    Campo = 'ID'
    Titulo = 'Categorias'
    Left = 536
    Top = 184
  end
  inherited QUltimoCodigo2: TFDQuery
    SQL.Strings = (
      'select Max(id) from personal_CATEGORIA')
  end
  object DSPConcpetos: TDataSetProvider
    DataSet = QConceptos
    Options = []
    Left = 136
    Top = 488
  end
  object CDSConceptos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'idcategoria'
        ParamType = ptInput
      end>
    ProviderName = 'DSPConcpetos'
    OnNewRecord = CDSConceptosNewRecord
    Left = 208
    Top = 488
    object CDSConceptosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSConceptosIDCATEGORIA: TIntegerField
      FieldName = 'IDCATEGORIA'
      Origin = 'IDCATEGORIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSConceptosIDCONCEPTO: TIntegerField
      DisplayLabel = 'Cod.Concepto'
      FieldName = 'IDCONCEPTO'
      Origin = 'IDCONCEPTO'
      OnSetText = CDSConceptosIDCONCEPTOSetText
    end
    object CDSConceptosTIPO_CONCEPTO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_CONCEPTO'
      Origin = 'TIPO_CONCEPTO'
      Size = 2
    end
    object CDSConceptosCONCEPTO: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      Size = 30
    end
    object CDSConceptosCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object CDSConceptosIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = '0.00'
    end
    object CDSConceptosPORCENTAJE: TFloatField
      DisplayLabel = '%..'
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = '0.00'
    end
    object CDSConceptosRENGLON: TIntegerField
      DisplayLabel = '#'
      DisplayWidth = 4
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
      Required = True
    end
  end
  object DSConceptos: TDataSource
    DataSet = CDSConceptos
    OnStateChange = DSBaseStateChange
    Left = 288
    Top = 488
  end
  object ibgId_Conceptos: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_PERSONAL_CONCEPTOS'
    SystemGenerators = False
    Left = 352
    Top = 488
  end
  object QConceptos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from personal_categoria_concep where idcategoria=:idcat' +
        'egoria')
    Left = 48
    Top = 488
    ParamData = <
      item
        Position = 1
        Name = 'idcategoria'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QConceptosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConceptosIDCATEGORIA: TIntegerField
      FieldName = 'IDCATEGORIA'
      Origin = 'IDCATEGORIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConceptosIDCONCEPTO: TIntegerField
      FieldName = 'IDCONCEPTO'
      Origin = 'IDCONCEPTO'
      Required = True
    end
    object QConceptosTIPO_CONCEPTO: TStringField
      FieldName = 'TIPO_CONCEPTO'
      Origin = 'TIPO_CONCEPTO'
      Required = True
      Size = 2
    end
    object QConceptosCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      Size = 30
    end
    object QConceptosCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QConceptosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QConceptosPORCENTAJE: TFloatField
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
      Required = True
    end
    object QConceptosRENGLON: TIntegerField
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
      Required = True
    end
  end
  object QTiposConcpetos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from personal_conceptos where id=:id')
    Left = 608
    Top = 320
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QTiposConcpetosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTiposConcpetosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 2
    end
    object QTiposConcpetosCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      Size = 30
    end
    object QTiposConcpetosCALCULO: TStringField
      FieldName = 'CALCULO'
      Origin = 'CALCULO'
      Size = 3
    end
    object QTiposConcpetosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QTiposConcpetosPORCENTAJE: TFloatField
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
    end
    object QTiposConcpetosMINIMO: TFloatField
      FieldName = 'MINIMO'
      Origin = 'MINIMO'
    end
    object QTiposConcpetosCONCEPTOBASE: TIntegerField
      FieldName = 'CONCEPTOBASE'
      Origin = 'CONCEPTOBASE'
    end
    object QTiposConcpetosCOLUMNA: TIntegerField
      FieldName = 'COLUMNA'
      Origin = 'COLUMNA'
    end
    object QTiposConcpetosMAXIMO: TIntegerField
      FieldName = 'MAXIMO'
      Origin = 'MAXIMO'
    end
    object QTiposConcpetosVISIBLE: TStringField
      FieldName = 'VISIBLE'
      Origin = 'VISIBLE'
      Size = 1
    end
    object QTiposConcpetosCONCEPTOBASE2: TIntegerField
      FieldName = 'CONCEPTOBASE2'
      Origin = 'CONCEPTOBASE2'
    end
  end
  object QBuscadorConceptos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select id,tipo,concepto from personal_conceptos')
    Left = 488
    Top = 480
  end
  object ComBuscadorConceptos: TComBuscador
    Data = QBuscadorConceptos
    Campo = 'ID'
    Titulo = 'Conceptos'
    rOk = False
    Left = 600
    Top = 464
  end
  object QCategoria: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from personal_categoria where id=:id')
    Left = 168
    Top = 160
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCategoriaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCategoriaDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 30
    end
    object QCategoriaVALORHORA: TFloatField
      FieldName = 'VALORHORA'
      Origin = 'VALORHORA'
    end
    object QCategoriaSUELDO_BASICO: TFloatField
      FieldName = 'SUELDO_BASICO'
      Origin = 'SUELDO_BASICO'
      Required = True
    end
    object QCategoriaTIPO_LIQUIDACION: TSmallintField
      FieldName = 'TIPO_LIQUIDACION'
      Origin = 'TIPO_LIQUIDACION'
      Required = True
    end
  end
  object DSPCategoria: TDataSetProvider
    DataSet = QCategoria
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 248
    Top = 152
  end
  object CDSCategoria: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCategoria'
    OnNewRecord = CDSCategoriaNewRecord
    Left = 328
    Top = 144
    object CDSCategoriaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCategoriaDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 30
    end
    object CDSCategoriaVALORHORA: TFloatField
      FieldName = 'VALORHORA'
      Origin = 'VALORHORA'
      DisplayFormat = ',0.000'
      EditFormat = '0.000'
    end
    object CDSCategoriaSUELDO_BASICO: TFloatField
      FieldName = 'SUELDO_BASICO'
      Origin = 'SUELDO_BASICO'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSCategoriaTIPO_LIQUIDACION: TSmallintField
      FieldName = 'TIPO_LIQUIDACION'
      Origin = 'TIPO_LIQUIDACION'
      Required = True
    end
  end
  object QBuscador: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from personal_categoria ')
    Left = 176
    Top = 216
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPBuscador: TDataSetProvider
    DataSet = QBuscador
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 256
    Top = 208
  end
  object CDSBuscador: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscador'
    OnNewRecord = CDSCategoriaNewRecord
    Left = 336
    Top = 200
    object CDSBuscadorDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 30
    end
    object CDSBuscadorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
end
