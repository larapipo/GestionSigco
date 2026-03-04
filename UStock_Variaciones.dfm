object FormStockVariaciones: TFormStockVariaciones
  Left = 0
  Top = 0
  Caption = 'Stock Variaciones'
  ClientHeight = 499
  ClientWidth = 566
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 15
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 566
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 10
      Width = 119
      Height = 21
      Caption = 'Variaciones de :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbDetalle: TLabel
      Left = 144
      Top = 10
      Width = 48
      Height = 21
      Caption = 'Detalle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
  end
  object pnBase: TPanel
    Left = 0
    Top = 41
    Width = 566
    Height = 417
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object dbgVariaciones: TDBGrid
      Left = 0
      Top = 0
      Width = 566
      Height = 417
      Align = alClient
      DataSource = DSVariaciones
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnColEnter = dbgVariacionesColEnter
      OnDblClick = dbgVariacionesDblClick
      OnEditButtonClick = BuscarArticuloExecute
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'VARIACION'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 109
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'DETALLE_STK'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 400
          Visible = True
        end>
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 458
    Width = 566
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 2
  end
  object QVariaciones: TFDQuery
    AfterPost = QVariacionesAfterPost
    AfterDelete = QVariacionesAfterDelete
    OnNewRecord = QVariacionesNewRecord
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select v.id,v.codigo,v.variacion,s.detalle_stk  from stock_varia' +
        'ciones v'
      'left join stock s on s.codigo_stk=v.variacion'
      'where v.codigo=:codigo')
    Left = 408
    Top = 297
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
    object QVariacionesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVariacionesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QVariacionesVARIACION: TStringField
      DisplayLabel = 'Cod.Variacion'
      FieldName = 'VARIACION'
      Origin = 'VARIACION'
      Required = True
      OnSetText = QVariacionesVARIACIONSetText
      Size = 8
    end
    object QVariacionesDETALLE_STK: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Detalle Variacion'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
  end
  object DSVariaciones: TDataSource
    DataSet = QVariaciones
    Left = 456
    Top = 217
  end
  object ActionList1: TActionList
    Left = 384
    Top = 209
    object BuscarArticulo: TAction
      Caption = 'BuscarArticulo'
      OnExecute = BuscarArticuloExecute
    end
  end
  object QArticulosWeb: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.codigo_stk,s.detalle_stk from stock s'
      'where s.publicar_web='#39'S'#39' and s.articulo_variable='#39'T'#39)
    Left = 272
    Top = 369
    object QArticulosWebCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QArticulosWebDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
  end
  object ComBuscador: TComBuscador
    Data = QArticulosWeb
    Campo = 'CODIGO_STK'
    rOk = False
    Left = 176
    Top = 369
  end
end
