object FormFiltroRubGastos: TFormFiltroRubGastos
  Left = 396
  Top = 170
  Caption = 'Filtro de Rubros de Gastos'
  ClientHeight = 527
  ClientWidth = 577
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcCuentas: TPageControl
    Left = 0
    Top = 0
    Width = 577
    Height = 527
    ActivePage = tsRubros
    Align = alClient
    HotTrack = True
    TabOrder = 0
    ExplicitHeight = 496
    object tsRubros: TTabSheet
      Caption = 'Listado de Rubros'
      ExplicitHeight = 468
      DesignSize = (
        569
        499)
      object SpeedButton1: TSpeedButton
        Left = 5
        Top = 469
        Width = 23
        Height = 23
        Hint = 'Chek All'
        Anchors = [akLeft, akBottom]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          C2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2A6
          A4C2A6A4FF00FFFF00FFFF00FFFF00FFC2A6A4FEFCFBFEFCFBFEFCFBFEFCFBFE
          FCFBFEFCFBFEFCFBFEFCFBFEFCFBFEFCFBC2A6A4FF00FFFF00FFFF00FFFF00FF
          C2A6A4FEFCFB993300993300993300993300993300993300993300993300FEFC
          FBC2A6A4FF00FFFF00FFFF00FFFF00FFC2A6A4FEFBF7993300FEFEFEFEFEFEFE
          FEFE8EA4FDB8C6FDFEFEFE993300FEFBF7C2A6A4FF00FFFF00FFFF00FFFF00FF
          C2A6A4FEF9F4993300FEFEFEFAFBFE7E98FC0335FB597AFCFEFEFE993300FEF9
          F4C2A6A4FF00FFFF00FFFF00FFFF00FFC2A6A4FEF7F0993300D6DEFE4368FC03
          35FB4066FC0436FBD9E0FE993300FEF7F0C2A6A4FF00FFFF00FFFF00FFFF00FF
          C2A6A4FEF5EC9933005274FC1442FBBCC9FDEFF2FE1A47FB4F72FC973304FEF5
          ECC2A6A4FF00FFFF00FFFF00FFFF00FFC2A6A4FEF3E9993300E4EAFED9E0FEFE
          FEFEFEFEFE98ACFD0335FB643459FEF3E9C2A6A4FF00FFFF00FFFF00FFFF00FF
          C2A6A4FFF1E5993300FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE5677FC0335FBFFF1
          E5C2A6A4FF00FFFF00FFFF00FFFF00FFC2A6A4FFF0E299330099330099330099
          33009933009933008F33112235C80335FBC2A6A4FF00FFFF00FFFF00FFFF00FF
          C2A6A4FFEEDEFFEEDEFFEEDEFFEEDEFFEEDEFFEEDEC5B5A9C3B4A8C2B3A70335
          FB0335FB0335FBFF00FFFF00FFFF00FFC2A6A4FFECDAFFECDAFFECDAFFECDAFF
          ECDAFFECDAB0A296B0A296B0A296B0A296C2A6A40335FBFF00FFFF00FFFF00FF
          C2A6A4FFEAD7FFEAD7FFEAD7FFEAD7FFEAD7C9B9ACFBF8F4FBF8F4E6DAD9C2A6
          A4FF00FFFF00FFFF00FFFF00FFFF00FFC2A6A4FFE8D3FFE8D3FFE8D3FFE8D3FF
          E8D3C9B9ACFBF8F4DFCEC7C2A6A4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          C2A6A4FFE6D0FFE6D0FFE6D0FFE6D0FFE6D0C9B9ACDFCEC7C2A6A4FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFC2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2
          A6A4C2A6A4C2A6A4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
        ExplicitTop = 499
      end
      object SpeedButton2: TSpeedButton
        Left = 34
        Top = 469
        Width = 23
        Height = 23
        Hint = 'UnCheck All'
        Anchors = [akLeft, akBottom]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          B1908EB1908EB1908EB1908EB1908EB1908EB1908EB1908EB1908EB1908EB190
          8EB1908EFF00FFFF00FFFF00FFFF00FFB1908EFEFBFAFEFBFAFEFBFAFEFBFAFE
          FBFAFEFBFAFEFBFAFEFBFAFEFBFAFEFBFAB1908EFF00FFFF00FFFF00FFFF00FF
          B1908EFEFBFAFEFBFAFEFBFAFEFBFACCE5CA007000007000CCE5CAFEFBFAFEFB
          FAB1908EFF00FFFF00FFFF00FFFF00FFB1908EFEFAF4FEFAF4007000CCE3C500
          7000CCE3C5CCE3C5007000FEFAF4FEFAF4B1908EFF00FFFF00FFFF00FFFF00FF
          B1908EFEF7F0FEF7F0007000007000CCE1C2FEF7F0FEF7F0CCE1C2FEF7F0FEF7
          F0B1908EFF00FFFF00FFFF00FFFF00FFB1908EFEF4EBFEF4EB00700000700000
          7000FEF4EBFEF4EBFEF4EBFEF4EBFEF4EBB1908EFF00FFFF00FFFF00FFFF00FF
          B1908EFEF2E6FEF2E6FEF2E6FEF2E6FEF2E6007000007000007000FEF2E6FEF2
          E6B1908EFF00FFFF00FFFF00FFFF00FFB1908EFEEFE2FEEFE2CCDAB7FEEFE2FE
          EFE2CCDAB7007000007000FEEFE2FEEFE2B1908EFF00FFFF00FFFF00FFFF00FF
          B1908EFFEDDDFFEDDD007000CED9B2CED9B2007000CED9B2007000FFEDDDFFED
          DDB1908EFF00FFFF00FFFF00FFFF00FFB1908EFFEBD9FFEBD9CED8B000700000
          7000CED8B0D3C1B1D3C1B1D3C1B1D3C1B1B1908EFF00FFFF00FFFF00FFFF00FF
          B1908EFFE9D4FFE9D4FFE9D4FFE9D4FFE9D4FFE9D4B5A193B2A092B19F91B09E
          90B1908EFF00FFFF00FFFF00FFFF00FFB1908EFFE6CFFFE6CFFFE6CFFFE6CFFF
          E6CFFFE6CF9C8B7E9C8B7E9C8B7E9C8B7EB1908EFF00FFFF00FFFF00FFFF00FF
          B1908EFFE3CBFFE3CBFFE3CBFFE3CBFFE3CBBAA697FAF6F0FAF6F0DECFCEB190
          8EFF00FFFF00FFFF00FFFF00FFFF00FFB1908EFFE1C6FFE1C6FFE1C6FFE1C6FF
          E1C6BAA697FAF6F0D5C0B7B1908EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          B1908EFFDEC2FFDEC2FFDEC2FFDEC2FFDEC2BAA697D5C0B7B1908EFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFB1908EB1908EB1908EB1908EB1908EB1
          908EB1908EB1908EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton2Click
        ExplicitTop = 499
      end
      object Label1: TLabel
        Left = 120
        Top = 473
        Width = 233
        Height = 14
        Anchors = [akLeft, akBottom]
        Caption = 'Los Seleccionados Seran Incluidos en la Consulta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitTop = 507
      end
      object lwRubros: TListView
        Left = 0
        Top = 0
        Width = 569
        Height = 463
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        Checkboxes = True
        Columns = <
          item
            Width = 20
          end
          item
            Alignment = taCenter
            Caption = 'Codigo'
            Width = 100
          end
          item
            Caption = 'Detalle'
            Width = 400
          end>
        HotTrack = True
        RowSelect = True
        SortType = stData
        TabOrder = 0
        ViewStyle = vsReport
        ExplicitHeight = 492
      end
      object Button1: TBitBtn
        Left = 491
        Top = 468
        Width = 75
        Height = 28
        Anchors = [akLeft, akBottom]
        Kind = bkOK
        NumGlyphs = 2
        TabOrder = 1
        ExplicitTop = 498
      end
    end
  end
  object DSPRubros: TDataSetProvider
    DataSet = QRubros
    Options = []
    Left = 464
    Top = 144
  end
  object CDSRubros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRubros'
    Left = 520
    Top = 136
    object CDSRubrosCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CDSRubrosDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
  end
  object QRubros: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select g.codigo,g.detalle from gastos_rubros g order by g.detall' +
        'e')
    Left = 400
    Top = 144
  end
  object QExiste: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select  * from TABLA_RUB_GASTOS where codigo = :codigo')
    Left = 332
    Top = 216
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
        Value = Null
      end>
  end
  object QCodigosRubros: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'insert into TABLA_RUB_GASTOS values ( :codigo )')
    Left = 332
    Top = 280
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
        Value = Null
      end>
  end
  object QTablaClear: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from TABLA_RUB_GASTOS')
    Left = 332
    Top = 352
  end
end
