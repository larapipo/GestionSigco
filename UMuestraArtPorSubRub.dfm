object FormMuestraArtPorSubRubros: TFormMuestraArtPorSubRubros
  Left = 569
  Top = 103
  Caption = 'Articulos por SubRubro'
  ClientHeight = 600
  ClientWidth = 614
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object pnStock: TPanel
    Left = 0
    Top = 0
    Width = 614
    Height = 600
    Align = alClient
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    ExplicitHeight = 409
    DesignSize = (
      614
      600)
    object dbgStock: TDBGrid
      Left = 11
      Top = 8
      Width = 590
      Height = 528
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DSStock
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgStockDblClick
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
          Width = 87
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
          Width = 464
          Visible = True
        end>
    end
    object btOk: TBitBtn
      Left = 488
      Top = 550
      Width = 113
      Height = 34
      Anchors = [akLeft, akBottom]
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
      ExplicitTop = 543
    end
  end
  object DSPStock: TDataSetProvider
    DataSet = QStock
    Left = 192
    Top = 240
  end
  object CDSStock: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SubRubro'
        ParamType = ptInput
      end>
    ProviderName = 'DSPStock'
    Left = 248
    Top = 240
    object CDSStockCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSStockDETALLE_STK: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
  end
  object DSStock: TDataSource
    AutoEdit = False
    DataSet = CDSStock
    Left = 304
    Top = 240
  end
  object QStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.codigo_stk,s.detalle_stk from stock s'
      'where s.rubro_stk=:rubro and s.subrubro_stk=:SubRubro')
    Left = 128
    Top = 240
    ParamData = <
      item
        Position = 1
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'SubRubro'
        DataType = ftString
        ParamType = ptInput
      end>
  end
end
