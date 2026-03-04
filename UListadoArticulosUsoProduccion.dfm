inherited FormAticulosUsadosProduccion: TFormAticulosUsadosProduccion
  Caption = 'Aticulos Usados en Produccion'
  ClientHeight = 621
  ClientWidth = 732
  StyleElements = [seFont, seClient, seBorder]
  OnResize = FormResize
  ExplicitWidth = 750
  ExplicitHeight = 662
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 732
    Height = 568
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 732
    ExplicitHeight = 568
    object Splitter1: TSplitter
      Left = 0
      Top = 361
      Width = 732
      Height = 8
      Cursor = crVSplit
      Align = alTop
      Color = clDarkgray
      ParentColor = False
    end
    object pnPie: TPanel
      Left = 0
      Top = 527
      Width = 732
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
    end
    object pnCab: TPanel
      Left = 0
      Top = 0
      Width = 732
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Articulos Usados en Produccion'
      Color = clMenuHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
    end
    object dbgArtiulcos: TDBGrid
      Left = 0
      Top = 41
      Width = 732
      Height = 320
      Align = alTop
      DataSource = DSArticulos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgArtiulcosDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_STK'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE_STK'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COSTOAPLICADO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ULTIMO_COSTO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COSTOACTUAL'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 105
          Visible = True
        end>
    end
    object dbgProduccion: TDBGrid
      Left = 0
      Top = 393
      Width = 732
      Height = 134
      Align = alClient
      DataSource = DSEnArtProduccion
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgProduccionDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 284
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CANTIDAD_FISICA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 133
          Visible = True
        end>
    end
    object pnMedio: TPanel
      Left = 0
      Top = 369
      Width = 732
      Height = 24
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Articulo de Produccion'
      Color = 15453831
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
    end
  end
  inherited ToolBar1: TToolBar
    Top = 568
    Width = 732
    Align = alBottom
    ExplicitTop = 568
    ExplicitWidth = 732
    inherited btConfirma: TBitBtn
      Visible = False
    end
    inherited btNuevo: TBitBtn
      Visible = False
    end
    inherited btCancelar: TBitBtn
      Visible = False
    end
    inherited btModificar: TBitBtn
      Visible = False
    end
    inherited Pr: TSpeedButton
      Visible = False
    end
    inherited Ne: TSpeedButton
      Visible = False
    end
    inherited btBorrar: TBitBtn
      Visible = False
    end
  end
  inherited Panel1: TPanel
    Top = 598
    Width = 732
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 598
    ExplicitWidth = 732
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 643
      ExplicitWidth = 643
    end
  end
  inherited DSBase: TDataSource
    Left = 528
    Top = 0
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
  end
  object QArticulos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select distinct( d.codigo_stk),s.detalle_stk, d.costo_stk as Cos' +
        'toAplicado,d.ultimo_costo,'
      
        '       s.fijacion_precio_total as CostoActual from stock_producc' +
        'ion_det d'
      '  left join stock s on s.codigo_stk=d.codigo_stk')
    Left = 368
    Top = 472
  end
  object DSPArticulos: TDataSetProvider
    DataSet = QArticulos
    Options = []
    Left = 440
    Top = 504
  end
  object CDSArticulos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPArticulos'
    AfterScroll = CDSArticulosAfterScroll
    Left = 552
    Top = 504
    object CDSArticulosCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object CDSArticulosDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object CDSArticulosCOSTOAPLICADO: TFloatField
      DisplayLabel = 'Costo Aplicado'
      FieldName = 'COSTOAPLICADO'
      Origin = 'COSTO_STK'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSArticulosULTIMO_COSTO: TSQLTimeStampField
      DisplayLabel = 'F.Ultima Aplicada'
      FieldName = 'ULTIMO_COSTO'
      Origin = 'ULTIMO_COSTO'
    end
    object CDSArticulosCOSTOACTUAL: TFloatField
      DisplayLabel = 'Costo Actual'
      FieldName = 'COSTOACTUAL'
      Origin = 'FIJACION_PRECIO_TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
  end
  object DSArticulos: TDataSource
    DataSet = CDSArticulos
    Left = 640
    Top = 512
  end
  object QEnArtProduccion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select d.id_cab,c.codigo,c.detalle,d.cantidad_fisica ,d.codigo_s' +
        'tk from stock_produccion_det d'
      'left join stock_produccion_cab c on c.id=d.id_cab'
      'where d.codigo_stk=:codigo')
    Left = 368
    Top = 408
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object DSPEnArtProduccion: TDataSetProvider
    DataSet = QEnArtProduccion
    Left = 441
    Top = 392
  end
  object CDSEnArtProduccion: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 8
      end>
    ProviderName = 'DSPEnArtProduccion'
    Left = 521
    Top = 392
    object CDSEnArtProduccionID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object CDSEnArtProduccionCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object CDSEnArtProduccionDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object CDSEnArtProduccionCANTIDAD_FISICA: TFloatField
      DisplayLabel = 'Cantidad Usada'
      FieldName = 'CANTIDAD_FISICA'
      Origin = 'CANTIDAD_FISICA'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSEnArtProduccionCODIGO_STK: TStringField
      DisplayLabel = 'Codigo Stk'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Required = True
      Size = 8
    end
  end
  object DSEnArtProduccion: TDataSource
    DataSet = CDSEnArtProduccion
    Left = 617
    Top = 408
  end
end
