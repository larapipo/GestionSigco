inherited FormListadoVentasCabDet: TFormListadoVentasCabDet
  Caption = 'FormListadoVentasCabDet'
  ClientHeight = 622
  ClientWidth = 1108
  ExplicitWidth = 1126
  ExplicitHeight = 663
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1108
    Height = 569
    Align = alClient
    ExplicitWidth = 1108
    ExplicitHeight = 569
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 1108
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 314
        Top = 30
        Width = 60
        Height = 13
        Caption = 'Mostrar Filtro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = Label1Click
      end
      object Label2: TLabel
        Left = 16
        Top = 10
        Width = 243
        Height = 33
        Caption = 'Lst.Ventas/Detalle'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel1: TJvLabel
        Left = 765
        Top = 3
        Width = 33
        Height = 13
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShadowPos = spLeftTop
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object RxLabel2: TJvLabel
        Left = 869
        Top = 3
        Width = 30
        Height = 13
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShadowPos = spLeftTop
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object Desde: TJvDateEdit
        Left = 765
        Top = 19
        Width = 89
        Height = 21
        Glyph.Data = {
          76050000424D760500000000000036000000280000001C0000000C0000000100
          2000000000004005000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
          0000800000008000000000000000800000000000000000000000800000008080
          8000FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
          0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
          80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
          C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FF00FF00}
        ImageKind = ikCustom
        NumGlyphs = 2
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 0
      end
      object Hasta: TJvDateEdit
        Left = 869
        Top = 19
        Width = 89
        Height = 21
        Glyph.Data = {
          76050000424D760500000000000036000000280000001C0000000C0000000100
          2000000000004005000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
          0000800000008000000000000000800000000000000000000000800000008080
          8000FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
          0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
          80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
          C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FF00FF00}
        ImageKind = ikCustom
        NumGlyphs = 2
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 1
      end
      object chBuscar: TAdvOfficeCheckBox
        Left = 552
        Top = 3
        Width = 200
        Height = 17
        BiDiMode = bdRightToLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Ejecutar Busqueda al cambiar'
        ReturnIsTab = False
        Version = '1.8.4.0'
      end
      object UpDown1: TUpDown
        Left = 965
        Top = 19
        Width = 16
        Height = 20
        Hint = 'Cambia el Per'#237'odo'
        Max = 10000
        ParentShowHint = False
        Position = 100
        ShowHint = True
        TabOrder = 3
        OnClick = UpDown1Click
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 49
      Width = 1108
      Height = 520
      Align = alClient
      TabOrder = 1
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSVentas
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1FECHACOMPRA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHAVTA'
          HeaderAlignmentHorz = taCenter
          Width = 92
        end
        object cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'TIPOCPBTE'
          HeaderAlignmentHorz = taCenter
          Width = 30
        end
        object cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'CLASECPBTE'
          HeaderAlignmentHorz = taCenter
          Width = 35
        end
        object cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'NROCPBTE'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          HeaderAlignmentHorz = taCenter
          Width = 56
        end
        object cxGrid1DBTableView1LETRAFAC: TcxGridDBColumn
          DataBinding.FieldName = 'LETRAFAC'
          HeaderAlignmentHorz = taCenter
          Width = 42
        end
        object cxGrid1DBTableView1SUCFAC: TcxGridDBColumn
          DataBinding.FieldName = 'SUCFAC'
          HeaderAlignmentHorz = taCenter
          Width = 65
        end
        object cxGrid1DBTableView1NUMEROFAC: TcxGridDBColumn
          DataBinding.FieldName = 'NUMEROFAC'
          HeaderAlignmentHorz = taCenter
          Width = 71
        end
        object cxGrid1DBTableView1RAZONSOCIAL: TcxGridDBColumn
          DataBinding.FieldName = 'RAZONSOCIAL'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1NOMBRE: TcxGridDBColumn
          DataBinding.FieldName = 'NOMBRE'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1DIRECCION: TcxGridDBColumn
          DataBinding.FieldName = 'DIRECCION'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1TIPOIVA: TcxGridDBColumn
          DataBinding.FieldName = 'TIPOIVA'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1CUIT: TcxGridDBColumn
          DataBinding.FieldName = 'CUIT'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1NETOGRAV1: TcxGridDBColumn
          DataBinding.FieldName = 'NETOGRAV1'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1DSTOIMPORTE: TcxGridDBColumn
          DataBinding.FieldName = 'DSTOIMPORTE'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1NETOGRAV2: TcxGridDBColumn
          DataBinding.FieldName = 'NETOGRAV2'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1NETOEXEN1: TcxGridDBColumn
          DataBinding.FieldName = 'NETOEXEN1'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1NETOEXEN2: TcxGridDBColumn
          DataBinding.FieldName = 'NETOEXEN2'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
          DataBinding.FieldName = 'TOTAL'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1CODIGOARTICULO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGOARTICULO'
          HeaderAlignmentHorz = taCenter
          Width = 82
        end
        object cxGrid1DBTableView1DETALLE: TcxGridDBColumn
          DataBinding.FieldName = 'DETALLE'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1UNIDAD: TcxGridDBColumn
          DataBinding.FieldName = 'UNIDAD'
          HeaderAlignmentHorz = taCenter
          Width = 41
        end
        object cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn
          DataBinding.FieldName = 'CANTIDAD'
          HeaderAlignmentHorz = taCenter
          Width = 77
        end
        object cxGrid1DBTableView1UNITARIO_EXENTO: TcxGridDBColumn
          DataBinding.FieldName = 'UNITARIO_EXENTO'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1UNITARIO_GRAVADO: TcxGridDBColumn
          DataBinding.FieldName = 'UNITARIO_GRAVADO'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1DESGLOZAIVA: TcxGridDBColumn
          DataBinding.FieldName = 'DESGLOZAIVA'
          HeaderAlignmentHorz = taCenter
          Width = 62
        end
        object cxGrid1DBTableView1MODO_GRAVAMEN: TcxGridDBColumn
          DataBinding.FieldName = 'MODO_GRAVAMEN'
          HeaderAlignmentHorz = taCenter
          Width = 42
        end
        object cxGrid1DBTableView1IVA_TASA: TcxGridDBColumn
          DataBinding.FieldName = 'IVA_TASA'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1DESCUENTO: TcxGridDBColumn
          DataBinding.FieldName = 'DESCUENTO'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1GRAVADO_IB: TcxGridDBColumn
          DataBinding.FieldName = 'GRAVADO_IB'
          HeaderAlignmentHorz = taCenter
          Width = 38
        end
        object cxGrid1DBTableView1TOTAL_1: TcxGridDBColumn
          DataBinding.FieldName = 'TOTAL_1'
          HeaderAlignmentHorz = taCenter
          Width = 91
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 569
    Width = 1108
    Align = alBottom
    ExplicitTop = 569
    ExplicitWidth = 1108
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
      Width = 92
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object BitBtn1: TBitBtn
      Left = 649
      Top = 0
      Width = 96
      Height = 29
      Caption = 'Exportar XLS'
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
      TabOrder = 7
      OnClick = BitBtn1Click
    end
  end
  inherited Panel1: TPanel
    Top = 599
    Width = 1108
    Align = alBottom
    ExplicitTop = 599
    ExplicitWidth = 1108
    inherited sbEstado: TStatusBar
      Width = 946
      ExplicitWidth = 946
    end
  end
  inherited DSBase: TDataSource
    Left = 472
    Top = 96
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 520
    Top = 256
  end
  object CDSVentas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'HASTA'
        ParamType = ptInput
      end>
    ProviderName = 'DSPVentas'
    Left = 67
    Top = 171
    object CDSVentasTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSVentasCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSVentasCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSVentasNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSVentasLETRAFAC: TStringField
      DisplayLabel = 'Let.'
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      FixedChar = True
      Size = 1
    end
    object CDSVentasSUCFAC: TStringField
      DisplayLabel = 'Pto.Vta'
      FieldName = 'SUCFAC'
      Origin = 'SUCFAC'
      Size = 4
    end
    object CDSVentasNUMEROFAC: TStringField
      DisplayLabel = 'Numero'
      FieldName = 'NUMEROFAC'
      Origin = 'NUMEROFAC'
      Size = 8
    end
    object CDSVentasRAZONSOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSVentasNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSVentasDIRECCION: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object CDSVentasTIPOIVA: TIntegerField
      DisplayLabel = 'TipoIva'
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
    end
    object CDSVentasCUIT: TStringField
      DisplayLabel = 'Cuit'
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSVentasNETOGRAV1: TFloatField
      DisplayLabel = 'Neto 1'
      FieldName = 'NETOGRAV1'
      Origin = 'NETOGRAV1'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasDSTOIMPORTE: TFloatField
      DisplayLabel = 'Dsto.Imp'
      FieldName = 'DSTOIMPORTE'
      Origin = 'DSTOIMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasNETOGRAV2: TFloatField
      DisplayLabel = 'N.Grav 2'
      FieldName = 'NETOGRAV2'
      Origin = 'NETOGRAV2'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasNETOEXEN1: TFloatField
      DisplayLabel = 'N.Exe 1'
      FieldName = 'NETOEXEN1'
      Origin = 'NETOEXEN1'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasNETOEXEN2: TFloatField
      DisplayLabel = 'N.Exe 2'
      FieldName = 'NETOEXEN2'
      Origin = 'NETOEXEN2'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasCODIGOARTICULO: TStringField
      DisplayLabel = 'Codi.Articulo'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object CDSVentasDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object CDSVentasUNIDAD: TStringField
      DisplayLabel = 'Uni.'
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object CDSVentasCANTIDAD: TFloatField
      DisplayLabel = 'Cant.'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasUNITARIO_EXENTO: TFloatField
      DisplayLabel = 'Uni.Exe'
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasUNITARIO_GRAVADO: TFloatField
      DisplayLabel = 'Uni.Grav'
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasDESGLOZAIVA: TStringField
      DisplayLabel = 'Disc.IVA'
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object CDSVentasDEPOSITO: TIntegerField
      DisplayLabel = 'Depos.'
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSVentasMODO_GRAVAMEN: TStringField
      DisplayLabel = 'M.Grav'
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object CDSVentasIVA_TASA: TFloatField
      DisplayLabel = 'Iva %'
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSVentasDESCUENTO: TFloatField
      DisplayLabel = 'Dscto%'
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasGRAVADO_IB: TStringField
      DisplayLabel = 'G.IB'
      FieldName = 'GRAVADO_IB'
      Origin = 'GRAVADO_IB'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object CDSVentasTOTAL_1: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL_1'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasFECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
    object CDSVentasFECHA_FISCAL: TSQLTimeStampField
      DisplayLabel = 'Fecha Fsical'
      FieldName = 'FECHA_FISCAL'
      Origin = 'FECHA_FISCAL'
    end
  end
  object DSPVentas: TDataSetProvider
    DataSet = QVentas
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 123
    Top = 155
  end
  object QVentas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.tipocpbte,c.clasecpbte,c.fechavta,c.fecha_fiscal,c.codi' +
        'go,c.nrocpbte,c.letrafac,c.sucfac,c.numerofac,c.razonsocial,c.no' +
        'mbre,c.direccion,'
      
        'c.tipoiva,c.cuit,c.netograv1,c.dstoimporte,c.netograv2,c.netoexe' +
        'n1,c.netoexen2,c.netonograv1,c.netonograv2,c.total,'
      
        'd.codigoarticulo,d.detalle,d.unidad,d.cantidad,d.unitario_exento' +
        ',d.unitario_gravado,d.desglozaiva,'
      
        'd.deposito,d.modo_gravamen,d.iva_tasa,d.descuento,d.gravado_ib,d' +
        '.total from fcvtacab c'
      'left join fcvtadet d on d.id_cabfac=c.id_fc'
      'where c.fechavta between :desde and :hasta'
      '')
    Left = 176
    Top = 136
    ParamData = <
      item
        Position = 1
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object DSVentas: TDataSource
    DataSet = CDSVentas
    Left = 224
    Top = 160
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    FileName = 'citi'
    InitialDir = 'c:\'
    Title = 'Archivo de Retenciones'
    Left = 600
    Top = 248
  end
end
