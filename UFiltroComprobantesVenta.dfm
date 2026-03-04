object FormFiltroCpbtes: TFormFiltroCpbtes
  Left = 455
  Top = 86
  Caption = 'Filtro de Comprobantes de Venta'
  ClientHeight = 621
  ClientWidth = 743
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnColumnas: TPanel
    Left = 0
    Top = 41
    Width = 743
    Height = 580
    Align = alClient
    Caption = 'pnColumnas'
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      743
      580)
    object Button1: TBitBtn
      Left = 654
      Top = 537
      Width = 75
      Height = 27
      Anchors = [akLeft, akBottom]
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = Button1Click
    end
    object pcComprobantes: TPageControl
      Left = 1
      Top = 1
      Width = 741
      Height = 524
      ActivePage = tsCompras
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TabOrder = 1
      object tsVenta: TTabSheet
        Caption = 'Comprobantes de Vta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        DesignSize = (
          733
          496)
        object SpeedButton1: TSpeedButton
          Left = 5
          Top = 470
          Width = 23
          Height = 22
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
          ExplicitTop = 511
        end
        object SpeedButton2: TSpeedButton
          Left = 34
          Top = 470
          Width = 23
          Height = 22
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
          ExplicitTop = 511
        end
        object Label1: TLabel
          Left = 104
          Top = 473
          Width = 233
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Los Seleccionados Seran Incluidos en la Consulta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 514
        end
        object lwVentas: TListView
          Left = 0
          Top = 0
          Width = 733
          Height = 464
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          Checkboxes = True
          Columns = <
            item
              Width = 20
            end
            item
              Alignment = taCenter
              Caption = 'Tipo'
              Width = 35
            end
            item
              Alignment = taCenter
              Caption = 'Clase'
              Width = 40
            end
            item
              Alignment = taCenter
              Caption = 'Denominacion'
              Width = 200
            end
            item
              Alignment = taCenter
              Caption = 'Sucursal'
              Width = 100
            end
            item
              Alignment = taCenter
              Caption = 'Cod.Cpbte'
              Width = 60
            end>
          HotTrack = True
          RowSelect = True
          SortType = stData
          TabOrder = 0
          ViewStyle = vsReport
        end
      end
      object tsCompras: TTabSheet
        Caption = 'Comrpbantes de Compra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 1
        ParentFont = False
        DesignSize = (
          733
          496)
        object SpeedButton5: TSpeedButton
          Left = 5
          Top = 470
          Width = 23
          Height = 22
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
          OnClick = SpeedButton5Click
          ExplicitTop = 511
        end
        object SpeedButton6: TSpeedButton
          Left = 34
          Top = 471
          Width = 23
          Height = 22
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
          OnClick = SpeedButton6Click
          ExplicitTop = 512
        end
        object Label2: TLabel
          Left = 120
          Top = 472
          Width = 233
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Los Seleccionados Seran Incluidos en la Consulta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 513
        end
        object lwCompras: TListView
          Left = 0
          Top = 0
          Width = 733
          Height = 464
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          Checkboxes = True
          Columns = <
            item
              Width = 20
            end
            item
              Alignment = taCenter
              Caption = 'Tipo'
              Width = 35
            end
            item
              Alignment = taCenter
              Caption = 'Clase'
              Width = 40
            end
            item
              Alignment = taCenter
              Caption = 'Denominacion'
              Width = 200
            end
            item
              Alignment = taCenter
              Caption = 'Sucursal'
              Width = 100
            end
            item
              Caption = 'Cod.Cpbte'
              Width = 60
            end>
          HotTrack = True
          RowSelect = True
          SortType = stData
          TabOrder = 0
          ViewStyle = vsReport
        end
      end
    end
  end
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 743
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    object Label3: TLabel
      Left = 10
      Top = 6
      Width = 225
      Height = 23
      Caption = 'Filtro de Comprobantes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object CDSCpbte: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCpbte'
    Left = 544
    Top = 112
    object CDSCpbteDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
    object CDSCpbteTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSCpbteCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object CDSCpbteDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object CDSCpbteLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSCpbteID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSPCpbte: TDataSetProvider
    DataSet = QCpbte
    Options = []
    Left = 480
    Top = 112
  end
  object DSPCpbteComp: TDataSetProvider
    DataSet = QCpbteComp
    Options = [poRetainServerOrder]
    Left = 488
    Top = 48
  end
  object CDSCpbteComp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCpbteComp'
    Left = 552
    Top = 48
    object CDSCpbteCompDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
    object CDSCpbteCompTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSCpbteCompCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object CDSCpbteCompDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object CDSCpbteCompLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSCpbteCompID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QCpbteComp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.detalle,c.tipo_comprob,c.clase_comprob,c.denominacion,c' +
        '.letra,c.id_comprobante from comprobantes c'
      'left join sucursal s on s.codigo=c.sucursal'
      
        'where c.compra_venta='#39'C'#39' and c.tipo_comprob in ('#39'FC'#39','#39'FO'#39','#39'ND'#39','#39 +
        'NC'#39','#39'TK'#39','#39'OP'#39','#39'AJ'#39')'
      'order by s.detalle,c.tipo_comprob,c.clase_comprob')
    Left = 397
    Top = 74
  end
  object QExiste: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select  * from id_comprobantes where id= :id')
    Left = 397
    Top = 202
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QExisteID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QIdCpbte: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'insert into id_comprobantes values (:id)')
    Left = 413
    Top = 266
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QIdCCpbteClear: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from id_comprobantes ')
    Left = 397
    Top = 346
  end
  object QCpbte: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.detalle,c.tipo_comprob,c.clase_comprob,c.denominacion,c' +
        '.letra,c.id_comprobante from comprobantes c'
      'left join sucursal s on s.codigo=c.sucursal'
      
        'where c.compra_venta='#39'V'#39' and c.tipo_comprob in ('#39'FC'#39','#39'FO'#39','#39'ND'#39','#39 +
        'NC'#39','#39'TK'#39','#39'RC'#39','#39'AJ'#39')'
      'order by s.detalle,c.tipo_comprob,c.clase_comprob')
    Left = 349
    Top = 202
  end
end
