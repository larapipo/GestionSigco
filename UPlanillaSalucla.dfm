inherited FormPlanillaCarnes: TFormPlanillaCarnes
  Caption = 'Ingreso Carnes'
  ClientHeight = 676
  ClientWidth = 1037
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1055
  ExplicitHeight = 717
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1037
    Height = 623
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1037
    ExplicitHeight = 623
    object PageControl1: TPageControl
      Left = 0
      Top = 0
      Width = 1037
      Height = 623
      ActivePage = pag1
      Align = alClient
      TabOrder = 0
      object pag1: TTabSheet
        Caption = 'Ingreso Medias'
        object pnCabecera: TPanel
          Left = 0
          Top = 0
          Width = 1029
          Height = 113
          Align = alTop
          BevelOuter = bvNone
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 0
          object Label1: TLabel
            Left = 32
            Top = 8
            Width = 30
            Height = 13
            Caption = 'Fecha'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 35
            Top = 54
            Width = 85
            Height = 13
            Caption = 'Peso de la Media '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 196
            Top = 51
            Width = 70
            Height = 13
            Caption = 'Precio Kg Vivo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 560
            Top = 5
            Width = 38
            Height = 13
            Caption = 'Matarife'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 392
            Top = 5
            Width = 96
            Height = 13
            Caption = 'Precio Kg Recupero'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 392
            Top = 54
            Width = 71
            Height = 13
            Caption = 'Precio - Merma'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 196
            Top = 5
            Width = 76
            Height = 13
            Caption = 'Precio Kg (0.58)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object JvDBDateEdit1: TJvDBDateEdit
            Left = 32
            Top = 24
            Width = 116
            Height = 21
            DataField = 'FECHA'
            DataSource = DSBase
            ShowNullDate = False
            TabOrder = 0
          end
          object DBEdit1: TDBEdit
            Left = 31
            Top = 70
            Width = 121
            Height = 21
            DataField = 'PESO_MEDIA'
            DataSource = DSBase
            TabOrder = 1
          end
          object DBEdit2: TDBEdit
            Left = 196
            Top = 70
            Width = 121
            Height = 21
            DataField = 'PRECIO_VALOR_VIVO'
            DataSource = DSBase
            TabOrder = 2
          end
          object DBEdit3: TDBEdit
            Left = 392
            Top = 24
            Width = 121
            Height = 21
            DataField = 'PRECIO_KG_RECUPERO'
            DataSource = DSBase
            TabOrder = 3
          end
          object DBEdit4: TDBEdit
            Left = 560
            Top = 24
            Width = 288
            Height = 21
            DataField = 'MATARIFE'
            DataSource = DSBase
            TabOrder = 4
          end
          object DBEdit5: TDBEdit
            Left = 196
            Top = 24
            Width = 121
            Height = 21
            DataField = 'PRECIO_KG_058'
            DataSource = DSBase
            TabOrder = 5
          end
          object DBEdit6: TDBEdit
            Left = 392
            Top = 70
            Width = 121
            Height = 21
            DataField = 'PRECIO_DESPUES_MERMA'
            DataSource = DSBase
            TabOrder = 6
          end
        end
        object pnPie: TPanel
          Left = 0
          Top = 536
          Width = 1029
          Height = 59
          Align = alBottom
          BevelOuter = bvNone
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 1
          object Label7: TLabel
            Left = 7
            Top = 8
            Width = 32
            Height = 13
            Caption = 'Merma'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit7: TDBEdit
            Left = 7
            Top = 27
            Width = 121
            Height = 21
            DataField = 'MERMA'
            DataSource = DSBase
            TabOrder = 0
          end
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 113
          Width = 1029
          Height = 423
          Align = alClient
          DataSource = DSPlanillaDet
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
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
              FieldName = 'RENDIMIENTO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REPRESENTA_PROCENTAJE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 119
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECIO_CORTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECIO_VTA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_KG_UNITARIO_CORTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 112
              Visible = True
            end>
        end
      end
      object pag2: TTabSheet
        Caption = 'Plantilla'
        ImageIndex = 1
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1029
          Height = 41
          Align = alTop
          Color = clHighlight
          ParentBackground = False
          TabOrder = 0
        end
        object Panel3: TPanel
          Left = 0
          Top = 554
          Width = 1029
          Height = 41
          Align = alBottom
          Color = clHighlight
          ParentBackground = False
          TabOrder = 1
        end
        object dbgPlantilla: TDBGrid
          Left = 0
          Top = 41
          Width = 545
          Height = 513
          Align = alLeft
          DataSource = DSPlantilla
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = dbgPlantillaColEnter
          OnEditButtonClick = BuscadorArticuloExecute
          OnEnter = dbgPlantillaEnter
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 79
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'DETALLE_STK'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 305
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RENIDIMIENTO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 114
              Visible = True
            end>
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 623
    Width = 1037
    Align = alBottom
    ExplicitTop = 623
    ExplicitWidth = 1037
  end
  inherited Panel1: TPanel
    Top = 653
    Width = 1037
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 653
    ExplicitWidth = 1037
    inherited sbEstado: TStatusBar
      Width = 875
      ExplicitWidth = 875
    end
  end
  inherited ActionList1: TActionList
    Left = 544
    Top = 64
    object BuscadorArticulo: TAction
      Caption = 'BuscadorArticulo'
      OnExecute = BuscadorArticuloExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSPlanillaCab
    Left = 552
    Top = 32
  end
  inherited ImageList1: TImageList
    Left = 160
    Top = 80
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
    Left = 360
    Top = 352
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 432
    Top = 384
  end
  object QPlanillaCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end>
    SQL.Strings = (
      'select c.* from  TABLA_RINDE_CABECERA c where c.id=:id')
    Left = 88
    Top = 449
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QPlanillaCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPlanillaCabFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QPlanillaCabPESO_MEDIA: TFloatField
      FieldName = 'PESO_MEDIA'
      Origin = 'PESO_MEDIA'
      Required = True
    end
    object QPlanillaCabPRECIO_VALOR_VIVO: TFloatField
      FieldName = 'PRECIO_VALOR_VIVO'
      Origin = 'PRECIO_VALOR_VIVO'
      Required = True
    end
    object QPlanillaCabMATARIFE: TStringField
      FieldName = 'MATARIFE'
      Origin = 'MATARIFE'
      Size = 50
    end
    object QPlanillaCabPRECIO_KG_RECUPERO: TFloatField
      FieldName = 'PRECIO_KG_RECUPERO'
      Origin = 'PRECIO_KG_RECUPERO'
      Required = True
    end
    object QPlanillaCabPRECIO_DESPUES_MERMA: TFloatField
      FieldName = 'PRECIO_DESPUES_MERMA'
      Origin = 'PRECIO_DESPUES_MERMA'
      Required = True
    end
    object QPlanillaCabMERMA: TFloatField
      FieldName = 'MERMA'
      Origin = 'MERMA'
      Required = True
    end
    object QPlanillaCabPRECIO_KG_058: TFloatField
      FieldName = 'PRECIO_KG_058'
      Origin = 'PRECIO_KG_058'
      Required = True
    end
  end
  object QPlanillaDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.*,s.detalle_stk from tabla_rinde_detalle d'
      'left join stock s on s.codigo_stk=d.codigo'
      'where d.id_cab = :id')
    Left = 80
    Top = 513
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QPlanillaDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPlanillaDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPlanillaDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QPlanillaDetRENDIMIENTO: TFloatField
      FieldName = 'RENDIMIENTO'
      Origin = 'RENDIMIENTO'
      Required = True
    end
    object QPlanillaDetPRECIO_CORTE: TFloatField
      FieldName = 'PRECIO_CORTE'
      Origin = 'PRECIO_CORTE'
      Required = True
    end
    object QPlanillaDetVALOR_KG_UNITARIO_CORTE: TFloatField
      FieldName = 'VALOR_KG_UNITARIO_CORTE'
      Origin = 'VALOR_KG_UNITARIO_CORTE'
      Required = True
    end
    object QPlanillaDetREPRESENTA_PROCENTAJE: TFloatField
      FieldName = 'REPRESENTA_PROCENTAJE'
      Origin = 'REPRESENTA_PROCENTAJE'
      Required = True
    end
    object QPlanillaDetPRECIO_VTA: TFloatField
      FieldName = 'PRECIO_VTA'
      Origin = 'PRECIO_VTA'
      Required = True
    end
    object QPlanillaDetMARGEN: TFloatField
      FieldName = 'MARGEN'
      Origin = 'MARGEN'
      Required = True
    end
    object QPlanillaDetDETALLE_STK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
  end
  object QPlantilla: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select d.codigo,s.detalle_stk,d.renidimiento from tabla_plantill' +
        'a_desposte d'
      'left join stock s on s.codigo_stk=d.codigo')
    Left = 656
    Top = 185
    object QPlantillaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QPlantillaDETALLE_STK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object QPlantillaRENIDIMIENTO: TFloatField
      FieldName = 'RENIDIMIENTO'
      Origin = 'RENIDIMIENTO'
    end
  end
  object CDSPlanillaCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPlanillaCab'
    OnNewRecord = CDSPlanillaCabNewRecord
    Left = 288
    Top = 449
    object CDSPlanillaCabID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSPlanillaCabFECHA: TDateField
      FieldName = 'FECHA'
    end
    object CDSPlanillaCabPESO_MEDIA: TFloatField
      FieldName = 'PESO_MEDIA'
      Required = True
    end
    object CDSPlanillaCabPRECIO_VALOR_VIVO: TFloatField
      FieldName = 'PRECIO_VALOR_VIVO'
      Required = True
    end
    object CDSPlanillaCabMATARIFE: TStringField
      FieldName = 'MATARIFE'
      Size = 50
    end
    object CDSPlanillaCabPRECIO_KG_RECUPERO: TFloatField
      FieldName = 'PRECIO_KG_RECUPERO'
      Required = True
    end
    object CDSPlanillaCabPRECIO_DESPUES_MERMA: TFloatField
      FieldName = 'PRECIO_DESPUES_MERMA'
      Required = True
    end
    object CDSPlanillaCabMERMA: TFloatField
      FieldName = 'MERMA'
      Required = True
    end
    object CDSPlanillaCabPRECIO_KG_058: TFloatField
      FieldName = 'PRECIO_KG_058'
      Required = True
    end
  end
  object DSPPlanillaCab: TDataSetProvider
    DataSet = QPlanillaCab
    Options = []
    Left = 192
    Top = 449
  end
  object DSPPlanillaDet: TDataSetProvider
    DataSet = QPlanillaDet
    Options = []
    Left = 184
    Top = 513
  end
  object CDSPlanillaDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPlanillaDet'
    OnNewRecord = CDSPlanillaDetNewRecord
    Left = 296
    Top = 513
    object CDSPlanillaDetID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSPlanillaDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Required = True
    end
    object CDSPlanillaDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 8
    end
    object CDSPlanillaDetDETALLE_STK: TStringField
      DisplayLabel = 'Detalle Corte'
      FieldName = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object CDSPlanillaDetRENDIMIENTO: TFloatField
      DisplayLabel = 'Rendimiento'
      FieldName = 'RENDIMIENTO'
      Required = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSPlanillaDetPRECIO_CORTE: TFloatField
      DisplayLabel = 'Precio Corte'
      FieldName = 'PRECIO_CORTE'
      Required = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSPlanillaDetVALOR_KG_UNITARIO_CORTE: TFloatField
      DisplayLabel = 'Valor x Kg Unitario'
      FieldName = 'VALOR_KG_UNITARIO_CORTE'
      Required = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSPlanillaDetREPRESENTA_PROCENTAJE: TFloatField
      DisplayLabel = 'Representatividad'
      FieldName = 'REPRESENTA_PROCENTAJE'
      Required = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSPlanillaDetPRECIO_VTA: TFloatField
      DisplayLabel = 'Precio Vta'
      FieldName = 'PRECIO_VTA'
      Required = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSPlanillaDetMARGEN: TFloatField
      DisplayLabel = 'Margen'
      FieldName = 'MARGEN'
      Required = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
  end
  object DSPlanillaDet: TDataSource
    DataSet = CDSPlanillaDet
    Left = 400
    Top = 513
  end
  object ibgCab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_TABLA_RINDE_CABECERA'
    SystemGenerators = False
    Left = 488
    Top = 448
  end
  object ibgDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_TABLA_RINDE_DETALLE'
    SystemGenerators = False
    Left = 496
    Top = 512
  end
  object CDSPlantilla: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPPlantilla'
    AfterPost = CDSPlantillaAfterPost
    AfterDelete = CDSPlantillaAfterDelete
    OnNewRecord = CDSPlantillaNewRecord
    Left = 828
    Top = 176
    object CDSPlantillaCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Required = True
      OnSetText = CDSPlantillaCODIGOSetText
      Size = 8
    end
    object CDSPlantillaDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object CDSPlantillaRENIDIMIENTO: TFloatField
      DisplayLabel = 'Rendimiento'
      FieldName = 'RENIDIMIENTO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
  end
  object DSPPlantilla: TDataSetProvider
    DataSet = QPlantilla
    Options = []
    Left = 748
    Top = 184
  end
  object DSPlantilla: TDataSource
    DataSet = CDSPlantilla
    Left = 908
    Top = 184
  end
  object QStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select S.codigo_stk,s.detalle_stk,s.presentacion_cantidad,Ru.Det' +
        'alle_Rubro as MuestraRubro,'
      '      Sub.Detalle_SubRubro as MuestraSubRubro'
      '      from stock s'
      '      left join rubros ru on s.rubro_stk = ru.Codigo_rubro'
      
        '      left join subrubros sub on s.subrubro_stk = sub.Codigo_sub' +
        'rubro'
      'where S.Codigo_Stk = :codigo')
    Left = 651
    Top = 258
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object DSPStock: TDataSetProvider
    DataSet = QStock
    Options = []
    Left = 731
    Top = 266
  end
  object CDSStock: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 8
      end>
    ProviderName = 'DSPStock'
    Left = 803
    Top = 258
    object CDSStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object CDSStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object CDSStockPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      Required = True
    end
    object CDSStockMUESTRARUBRO: TStringField
      FieldName = 'MUESTRARUBRO'
      ReadOnly = True
      Size = 35
    end
    object CDSStockMUESTRASUBRUBRO: TStringField
      FieldName = 'MUESTRASUBRUBRO'
      ReadOnly = True
      Size = 45
    end
  end
end
