inherited FormListadoArticulosProduccion: TFormListadoArticulosProduccion
  Caption = 'Listado Articulos Produccion'
  ClientHeight = 720
  ClientWidth = 1111
  StyleElements = [seFont, seClient, seBorder]
  OnResize = FormResize
  ExplicitWidth = 1129
  ExplicitHeight = 761
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1111
    Height = 667
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1111
    ExplicitHeight = 667
    object Panel2: TPanel
      Left = 0
      Top = 642
      Width = 1111
      Height = 25
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 1111
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      object Label2: TLabel
        Left = 24
        Top = 6
        Width = 271
        Height = 27
        Caption = 'Articulos de Produccion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object chbDetalle: TAdvOfficeCheckBox
        Left = 936
        Top = 12
        Width = 128
        Height = 20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Alignment = taRightJustify
        Caption = 'Detalle de Producci'#243'n'
        ReturnIsTab = False
        Version = '1.8.4.2'
      end
    end
    object pcDatos: TPageControl
      Left = 0
      Top = 41
      Width = 1111
      Height = 601
      ActivePage = pagListado
      Align = alClient
      TabOrder = 2
      object pagListado: TTabSheet
        Caption = 'Listado General'
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1103
          Height = 573
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object cxGrid1DBTableView1: TcxGridDBTableView
            OnDblClick = cxGrid1DBTableView1DblClick
            DataController.DataSource = DSStockProducc
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = ',0.000'
                Kind = skSum
                Position = spFooter
                FieldName = 'COSTO'
                Column = cxGrid1DBTableView1COSTO
              end
              item
                Format = ',0.000'
                Kind = skMax
                Position = spFooter
                FieldName = 'UNITARIO'
                Column = cxGrid1DBTableView1COSTO
                DisplayText = 'Unitario'
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.000'
                Kind = skSum
                FieldName = 'COSTO'
                Column = cxGrid1DBTableView1COSTO
              end>
            OptionsSelection.CellSelect = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooterMultiSummaries = True
            OptionsView.GroupFooters = gfAlwaysVisible
            Styles.Header = cxStyle1
            object cxGrid1DBTableView1ENCABEZADO: TcxGridDBColumn
              DataBinding.FieldName = 'ENCABEZADO'
              Visible = False
              GroupIndex = 0
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1CODIGO_STK: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO_STK'
              HeaderAlignmentHorz = taCenter
              Width = 101
            end
            object cxGrid1DBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1COSTO_STK: TcxGridDBColumn
              DataBinding.FieldName = 'COSTO_STK'
              HeaderAlignmentHorz = taCenter
              Width = 99
            end
            object cxGrid1DBTableView1CANTIDAD_REAL: TcxGridDBColumn
              DataBinding.FieldName = 'CANTIDAD_REAL'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid1DBTableView1UNIDAD: TcxGridDBColumn
              DataBinding.FieldName = 'UNIDAD'
              HeaderAlignmentHorz = taCenter
              Width = 53
            end
            object cxGrid1DBTableView1CANTIDAD_FISICA: TcxGridDBColumn
              DataBinding.FieldName = 'CANTIDAD_FISICA'
              HeaderAlignmentHorz = taCenter
              Width = 106
            end
            object cxGrid1DBTableView1COSTO: TcxGridDBColumn
              DataBinding.FieldName = 'COSTO'
              HeaderAlignmentHorz = taCenter
              Width = 115
            end
            object cxGrid1DBTableView1Column1: TcxGridDBColumn
              DataBinding.FieldName = 'COSTO_CIVA'
              HeaderAlignmentHorz = taCenter
              Width = 116
            end
            object cxGrid1DBTableView1ULTIMO_COSTO: TcxGridDBColumn
              DataBinding.FieldName = 'ULTIMO_COSTO'
              HeaderAlignmentHorz = taCenter
              Width = 102
            end
            object cxGrid1DBTableView1ID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object pagUltimoCosto: TTabSheet
        Caption = 'Ultimo Costo Aplicado'
        ImageIndex = 1
        object dbgUltimosCostos: TDBGrid
          Left = 0
          Top = 0
          Width = 1103
          Height = 536
          Align = alClient
          DataSource = DSUltimoPrecio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = dbgUltimosCostosDrawColumnCell
          OnDblClick = dbgUltimosCostosDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO_STK'
              Title.Alignment = taCenter
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE_STK'
              Title.Alignment = taCenter
              Width = 285
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COSTO_OLD'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COSTO_NEW'
              Title.Alignment = taCenter
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FECHA'
              Title.Alignment = taCenter
              Width = 113
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FIJACIONPRECIO_ACTUAL'
              Title.Alignment = taCenter
              Width = 138
              Visible = True
            end
            item
              Color = clMoneyGreen
              Expanded = False
              FieldName = 'COSTOSTK_ACTUAL'
              Title.Alignment = taCenter
              Width = 131
              Visible = True
            end>
        end
        object Panel4: TPanel
          Left = 0
          Top = 536
          Width = 1103
          Height = 37
          Align = alBottom
          BevelOuter = bvNone
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 1
          DesignSize = (
            1103
            37)
          object btBuscarPrecios: TBitBtn
            Left = 960
            Top = 6
            Width = 76
            Height = 25
            Anchors = [akTop, akRight]
            Caption = 'Buscar'
            TabOrder = 0
            OnClick = btBuscarPreciosClick
          end
          object CambiarPrecio: TBitBtn
            Left = 32
            Top = 6
            Width = 305
            Height = 25
            Caption = 'Cambiar Precio desde la ultima Actualizacion'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = CambiarPrecioClick
          end
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 667
    Width = 1111
    Align = alBottom
    ExplicitTop = 667
    ExplicitWidth = 1111
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
    object ToolButton1: TToolButton
      Left = 557
      Top = 0
      Width = 68
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btImprimir: TBitBtn
      Left = 625
      Top = 0
      Width = 75
      Height = 29
      Action = Imprimir
      Caption = 'Imprimir'
      Glyph.Data = {
        56070000424D5607000000000000360400002800000028000000140000000100
        0800000000002003000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        03030303030303030303030303030303030303030303030303FFFFFF03030303
        030303030303FFFFFF0303030000000303030303030303030300000003030303
        F8F8F8FFFFFFFFFFFFFFFFFFFFF8F8F8FFFF0300000000000000000000000000
        00000000000303F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FF0300FF070707
        070707070707070707070707000303F8FF030303030303030303030303030303
        F8FF0300FF070707070707070707070707070707000303F8FF03030303030303
        0303030303030303F8FF0300FF0707070707070707070707F9F90707000303F8
        FF030303030303030303030303030303F8FF0300FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF000303F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FF03F80000F8F8
        F8F8F8F8F8F8F8F8F8F80000F80303F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8030303030000000000000000000000000000030303030303F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8FF03030303030000FFFFFFFFFFFFFFFFFFFF00000303030303
        03F8F8FF03FFFFFFFFFFFFFFFFF8F80303030303030300FF0000000000000000
        FF000303030303030303F8FFF8F8F8F8F8F8F8F803F8FF0303030303030300FF
        FFFFFFFFFFFFFFFFFF000303030303030303F8FF03FFFFFFFFFFFFFFFFF8FF03
        03030303030300FF0000000000000000FF000303030303030303F8FFF8F8F8F8
        F8F8F8F803F8FF0303030303030300FFFFFFFFFFFFFFFFFFFF00030303030303
        0303F8FF03FFFF030303030303F8FF0303030303030300FF0000FFFFFFFFFFFF
        FF000303030303030303F8FFF8F803030303030303F8FF0303030303030300FF
        FFFFFFFFFFFFFFFFFF000303030303030303F8FFFFFFFFFFFFFFFFFFFFF8FF03
        0303030303030000000000000000000000000303030303030303F8F8F8F8F8F8
        F8F8F8F8F8F80303030303030303030303030303030303030303030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        0303030303030303030303030303030303030303030303030303}
      NumGlyphs = 2
      TabOrder = 7
    end
    object BitBtn1: TBitBtn
      Left = 700
      Top = 0
      Width = 113
      Height = 29
      Action = ExportarExcel
      Caption = 'ExportarXLS'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
        078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
        BE078DBEFF00FFFF00FFB88989B88989B88989B88989B88989B88989B8898965
        CDF965CDF865CDF965CDF866CEF939ADD8078DBEFF00FFFF00FFB88989FEFDFB
        FEFDFBFEFDFBFEFDFBFEFDFB4D87430C85180C85180C851851BDB66ED4F93EB1
        D984D7EB078DBEFF00FFB88989FEF9F4FEF9F4FEF9F4FEF9F4FEF9F4B8898967
        CED60C85181398250C85184BB79A42B4D4AEF1F9078DBEFF00FFB88989FEF6ED
        FEF6EDFEF6EDFEF6EDFEF6EDB8898983E4FC84E4FC0C851826B73F0C851836A8
        A1B3F4F9078DBEFF00FFB88989FFF2E7FFF2E7FFF2E7FAE8DEFAE8DEB889898D
        EBFD8DEBFD5DC0A70C851837C4580C8518ACF0EB6DCAE0078DBEB88989FFEFE0
        FFEFE0FFEFE0D09F9ED0A09EC59393ACE4DA9FDBCA82AB810C85184EDB780C85
        1898BA99A3BFAC078DBEB88989FFEBD9FFEBD9F3D7C9D5ABA8D1C8C2CD999907
        87800C85180C851847D06E59E38842C6670C85180C8518078DBEB88989FFE8D2
        FFE8D2F3D4C4D9AEACCD99999AF6FE9BF5FE63C5A40C85185DE88E63EE984CD0
        750C8518F0F1E7B88989B88989B88989B88989B88989CD9999A1FAFEA1FBFEA0
        FAFEA1FBFE737E570C851846CB6E0C8518EFEDDFFEF6EDB88989FF00FF078DBE
        FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBEB8898984B47B0C8518EDE8
        D7FAE8DEFAE8DEB88989FF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
        00FFFF00FFB88989FFEFE0FFEFE0FFEFE0D09F9ED0A09EC59393FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989FFEBD9FFEBD9F3D7
        C9D5ABA8D1C8C2CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFB88989FFE8D2FFE8D2F3D4C4D9AEACCD9999FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989B88989B88989B889
        89CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 8
    end
  end
  inherited Panel1: TPanel
    Top = 697
    Width = 1111
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 697
    ExplicitWidth = 1111
    inherited sbEstado: TStatusBar
      Width = 1022
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 1022
    end
  end
  inherited ActionList1: TActionList
    Top = 136
    object Imprimir: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirExecute
    end
    object ExportarExcel: TAction
      Caption = 'ExportarXLS'
      OnExecute = ExportarExcelExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 528
    Top = 96
  end
  inherited ImageList1: TImageList
    Left = 168
    Top = 144
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 32
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 336
    Top = 344
  end
  inherited QBrowse2: TFDQuery
    Left = 136
    Top = 256
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 136
    Top = 328
  end
  object QStockProducc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id,(c.codigo ||'#39' - '#39'||c.detalle||'#39' - '#39'||c.unidad||'#39' - '#39 +
        '||cast( round(c.cantidad,2) as varchar(15))||'#39' -  $ '#39'||cast( rou' +
        'nd(c.costo,2) as varchar(15))) as Encabezado,'
      
        '       d.codigo_stk,d.detalle ,d.costo_stk ,d.costo_stk * (1+g.t' +
        'asa *0.01) as Costo_civa, d.cantidad_real,d.unidad ,'
      
        '       d.cantidad_fisica,d.costo ,d.ultimo_costo,(c.costo/c.cant' +
        'idad) as unitario'
      '    from stock_produccion_cab c'
      '      left join stock_produccion_det d on d.id_cab=c.id'
      '      left join stock s on s.codigo_stk=c.codigo'
      '      left join gravamen g on g.codigo=s.tasa_iva'
      ''
      'union'
      ''
      
        'select c2.id,(c2.codigo ||'#39' - '#39'||c2.detalle||'#39' - '#39'||c2.unidad||'#39 +
        ' - '#39'||cast( round(c2.cantidad,2) as varchar(15))||'#39' -  $ '#39'||cast' +
        '( round(c2.costo,2) as varchar(15))) as Encabezado ,'
      
        '       d2.codigo_cfijo as codigo,d2.detalle ,d2.costo as costo_s' +
        'tk, d2.costo * (1+g2.tasa *0.01) as Costo_civa, d2.coeficiente a' +
        's cantidad_real,'#39'---'#39' as unidad ,'
      
        '       d2.coeficiente as cantidad_fisica,d2.costofinal ,d2.fecha' +
        '_ultimocosto as ultimo_costo,(c2.costo/c2.cantidad) as unitario'
      '    from stock_produccion_cab c2'
      '    left join stock_produccion_costofijo d2 on d2.id_cab=c2.id'
      '      left join stock s2 on s2.codigo_stk=c2.codigo'
      '      left join gravamen g2 on g2.codigo=s2.tasa_iva'
      ''
      'order by 1,2')
    Left = 296
    Top = 464
  end
  object CDSStockProducc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPStockProducc'
    Left = 496
    Top = 464
    object CDSStockProduccID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSStockProduccENCABEZADO: TStringField
      DisplayLabel = 'Articulo'
      FieldName = 'ENCABEZADO'
      Origin = 'ENCABEZADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 98
    end
    object CDSStockProduccCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = []
      ReadOnly = True
      Size = 11
    end
    object CDSStockProduccDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object CDSStockProduccCOSTO_STK: TFloatField
      DisplayLabel = 'Costo Unit.'
      FieldName = 'COSTO_STK'
      Origin = 'COSTO_STK'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSStockProduccCANTIDAD_REAL: TFloatField
      DisplayLabel = 'Cantidad Real'
      FieldName = 'CANTIDAD_REAL'
      Origin = 'CANTIDAD_REAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSStockProduccUNIDAD: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object CDSStockProduccCANTIDAD_FISICA: TFloatField
      DisplayLabel = 'Canti.Fisica'
      FieldName = 'CANTIDAD_FISICA'
      Origin = 'CANTIDAD_FISICA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSStockProduccCOSTO: TFloatField
      DisplayLabel = 'Costo '
      FieldName = 'COSTO'
      Origin = 'COSTO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSStockProduccULTIMO_COSTO: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'F.Ultimo Costo'
      FieldName = 'ULTIMO_COSTO'
      Origin = 'ULTIMO_COSTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSStockProduccCOSTO_CIVA: TFloatField
      DisplayLabel = 'Costo C/Iva'
      FieldName = 'COSTO_CIVA'
      ReadOnly = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSStockProduccUNITARIO: TFloatField
      FieldName = 'UNITARIO'
      ReadOnly = True
    end
  end
  object DSPStockProducc: TDataSetProvider
    DataSet = QStockProducc
    Options = []
    Left = 392
    Top = 464
  end
  object DSStockProducc: TDataSource
    DataSet = CDSStockProducc
    Left = 600
    Top = 464
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 96
    Top = 160
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object frListaMov: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.815533483790000000
    ReportOptions.LastChange = 39638.815533483790000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 728
    Top = 211
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frDBMov: TfrxDBDataset
    UserName = 'frDBMov'
    CloseDataSource = False
    DataSource = DSStockProducc
    BCDToCurrency = False
    DataSetOptions = []
    Left = 640
    Top = 312
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ENCABEZADO'
        FieldAlias = 'ENCABEZADO'
      end
      item
        FieldName = 'CODIGO_STK'
        FieldAlias = 'CODIGO_STK'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'COSTO_STK'
        FieldAlias = 'COSTO_STK'
      end
      item
        FieldName = 'CANTIDAD_REAL'
        FieldAlias = 'CANTIDAD_REAL'
      end
      item
        FieldName = 'UNIDAD'
        FieldAlias = 'UNIDAD'
      end
      item
        FieldName = 'CANTIDAD_FISICA'
        FieldAlias = 'CANTIDAD_FISICA'
      end
      item
        FieldName = 'COSTO'
        FieldAlias = 'COSTO'
      end
      item
        FieldName = 'ULTIMO_COSTO'
        FieldAlias = 'ULTIMO_COSTO'
      end>
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 728
    Top = 280
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'XLS'
    Left = 800
    Top = 296
  end
  object QUltimoPrecio: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT'
      '    h.codigo_stk,'
      '    s.detalle_stk,'
      '    h.costo_old,'
      '    h.costo_new,'
      '    h.fecha,'
      '    s.fijacion_precio_total as FijacionPrecio_Actual,'
      '    s.costo_total_stk as CostoStk_Actual'
      ''
      'FROM'
      '    stock_historial_precio h'
      'LEFT JOIN'
      '    stock s ON s.codigo_stk = h.codigo_stk'
      'JOIN ('
      '    SELECT'
      '        codigo_stk,'
      '        MAX(fecha) AS max_fecha'
      '    FROM'
      '        stock_historial_precio'
      '    GROUP BY'
      '        codigo_stk'
      ') hm ON h.codigo_stk = hm.codigo_stk AND h.fecha = hm.max_fecha'
      'WHERE'
      '    s.deproduccion = '#39'S'#39
      'ORDER BY'
      '    h.codigo_stk, h.fecha')
    Left = 300
    Top = 537
  end
  object DSUltimoPrecio: TDataSource
    DataSet = CDSUltimoPrecio
    Left = 596
    Top = 537
  end
  object CDSUltimoPrecio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPUltimoPrecio'
    Left = 492
    Top = 537
    object CDSUltimoPrecioCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object CDSUltimoPrecioDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      ReadOnly = True
      Size = 45
    end
    object CDSUltimoPrecioCOSTO_OLD: TFloatField
      DisplayLabel = 'Costo Old'
      FieldName = 'COSTO_OLD'
      DisplayFormat = ',0.000'
    end
    object CDSUltimoPrecioCOSTO_NEW: TFloatField
      DisplayLabel = 'Costo New'
      FieldName = 'COSTO_NEW'
      DisplayFormat = ',0.000'
    end
    object CDSUltimoPrecioFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
    object CDSUltimoPrecioFIJACIONPRECIO_ACTUAL: TFloatField
      DisplayLabel = 'Fijacio Precio Actual'
      FieldName = 'FIJACIONPRECIO_ACTUAL'
      ReadOnly = True
      DisplayFormat = ',0.000'
    end
    object CDSUltimoPrecioCOSTOSTK_ACTUAL: TFloatField
      DisplayLabel = 'Costo Stk Actual'
      FieldName = 'COSTOSTK_ACTUAL'
      ReadOnly = True
      DisplayFormat = ',0.000'
    end
  end
  object DSPUltimoPrecio: TDataSetProvider
    DataSet = QUltimoPrecio
    Left = 388
    Top = 529
  end
  object QActualizaPrecio: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'UPDATE stock s'
      'SET'
      '    s.costo_gravado_stk = ('
      '        SELECT h.costo_new'
      '        FROM stock_historial_precio h'
      '        WHERE h.codigo_stk = :codigo_stk'
      '          AND h.fecha = ('
      '              SELECT MAX(h2.fecha)'
      '              FROM stock_historial_precio h2'
      '              WHERE h2.codigo_stk = h.codigo_stk'
      '          )'
      '    ),'
      '    s.fuap = ('
      '        SELECT h.fecha'
      '        FROM stock_historial_precio h'
      '        WHERE h.codigo_stk = :codigo_stk'
      '          AND h.fecha = ('
      '              SELECT MAX(h2.fecha)'
      '              FROM stock_historial_precio h2'
      '              WHERE h2.codigo_stk = h.codigo_stk'
      '          )'
      '    )'
      'WHERE s.deproduccion = '#39'S'#39
      '  AND s.codigo_stk = :codigo_stk')
    Left = 932
    Top = 513
    ParamData = <
      item
        Name = 'CODIGO_STK'
        ParamType = ptInput
      end>
  end
  object spActualiza: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end>
    StoredProcName = 'ACTULIZA_PRECIO_COSTOVTA'
    Left = 704
    Top = 464
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 2
        Name = 'COSTO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'PRECIO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'CODIGO_REEMPLAZO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 6
        Name = 'FECHA'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
end
