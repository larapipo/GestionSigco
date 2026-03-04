inherited FormListadoClientes_LDR: TFormListadoClientes_LDR
  Caption = 'Listado de Clientes con LDR'
  ClientHeight = 649
  ClientWidth = 1004
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1022
  ExplicitHeight = 690
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1004
    Height = 596
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1004
    ExplicitHeight = 596
    object Panel2: TPanel
      Left = 0
      Top = 561
      Width = 1004
      Height = 35
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object JvDBStatusLabel1: TJvDBStatusLabel
        Left = 848
        Top = 6
        Width = 121
        Height = 16
        DataSource = DSClientes
        Style = lsRecordNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 41
      Width = 1004
      Height = 520
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      object cxGrid1DBTableView1: TcxGridDBTableView
        PopupMenu = PopupMenu1
        DataController.DataSource = DSClientes
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        Styles.Content = cxStyle1
        Styles.Header = cxStyle1
        object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          HeaderAlignmentHorz = taCenter
          Width = 86
        end
        object cxGrid1DBTableView1NOMBRE: TcxGridDBColumn
          DataBinding.FieldName = 'NOMBRE'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1RAZON_SOCIAL: TcxGridDBColumn
          DataBinding.FieldName = 'RAZON_SOCIAL'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1DIRECCION_COMERCIAL: TcxGridDBColumn
          DataBinding.FieldName = 'DIRECCION_COMERCIAL'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1LOCALIDAD: TcxGridDBColumn
          DataBinding.FieldName = 'LOCALIDAD'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1NRO_DE_CUIT: TcxGridDBColumn
          DataBinding.FieldName = 'NRO_DE_CUIT'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1ZONA: TcxGridDBColumn
          DataBinding.FieldName = 'ZONA'
          HeaderAlignmentHorz = taCenter
          Width = 48
        end
        object cxGrid1DBTableView1VENDEDOR: TcxGridDBColumn
          DataBinding.FieldName = 'VENDEDOR'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object cxGrid1DBTableView1LISTAPRECIOS: TcxGridDBColumn
          DataBinding.FieldName = 'LISTAPRECIOS'
          HeaderAlignmentHorz = taCenter
          Width = 98
        end
        object cxGrid1DBTableView1CORREOELECTRONICO: TcxGridDBColumn
          DataBinding.FieldName = 'CORREOELECTRONICO'
          HeaderAlignmentHorz = taCenter
          Width = 608
        end
        object cxGrid1DBTableView1CORREOELECTRONICO_2: TcxGridDBColumn
          DataBinding.FieldName = 'CORREOELECTRONICO_2'
          HeaderAlignmentHorz = taCenter
        end
      end
      object cxGrid1DBTableView2: TcxGridDBTableView
        PopupMenu = PopupMenu1
        DataController.DataSource = DSLdr
        DataController.DetailKeyFieldNames = 'CODIGO_CLIENTE'
        DataController.MasterKeyFieldNames = 'CODIGO'
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView2CODIGO_CLIENTE: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO_CLIENTE'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView2CODIGO_LDR: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO_LDR'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.IncSearch = False
          Options.FilteringAddValueItems = False
          Options.ShowEditButtons = isebNever
          Options.Sorting = False
        end
        object cxGrid1DBTableView2NOMBRE: TcxGridDBColumn
          DataBinding.FieldName = 'NOMBRE'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.IncSearch = False
          Options.FilteringAddValueItems = False
          Options.ShowEditButtons = isebNever
          Options.Sorting = False
        end
        object cxGrid1DBTableView2DIRECCION: TcxGridDBColumn
          DataBinding.FieldName = 'DIRECCION'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.IncSearch = False
          Options.FilteringAddValueItems = False
          Options.ShowEditButtons = isebNever
          Options.Sorting = False
        end
        object cxGrid1DBTableView2CPOSTAL: TcxGridDBColumn
          DataBinding.FieldName = 'CPOSTAL'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.IncSearch = False
          Options.FilteringAddValueItems = False
          Options.ShowEditButtons = isebNever
          Options.Sorting = False
        end
        object cxGrid1DBTableView2LOCALIDAD: TcxGridDBColumn
          DataBinding.FieldName = 'LOCALIDAD'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.IncSearch = False
          Options.FilteringAddValueItems = False
          Options.ShowEditButtons = isebNever
          Options.Sorting = False
        end
        object cxGrid1DBTableView2PROVINCIA: TcxGridDBColumn
          DataBinding.FieldName = 'PROVINCIA'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.IncSearch = False
          Options.FilteringAddValueItems = False
          Options.ShowEditButtons = isebNever
          Options.Sorting = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
        object cxGrid1Level2: TcxGridLevel
          GridView = cxGrid1DBTableView2
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 1004
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Listado Clientes con LDR'
      Color = clMenuHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
    end
  end
  inherited ToolBar1: TToolBar
    Top = 596
    Width = 1004
    Align = alBottom
    ExplicitTop = 596
    ExplicitWidth = 1004
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
    object btExcel: TBitBtn
      Left = 557
      Top = 0
      Width = 108
      Height = 29
      Action = ExportarExcel
      Anchors = [akBottom]
      Caption = 'Exportar a Excel'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF233F3F237F7F237F7F237F7F001F
        000F4B000F4B000F2C00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF237F7F47FFFF47FFFF47FFFF0F2C00005F3F1F97000F4B00FF00FF18233F
        4F88AF2F737F4F534F2F302FFF00FFFF00FF237F7F233F7F00007747BFBF237F
        7F237F7F1F97000F4B00FF00FF30477F9BD7FF63C0FF48B7FF30A3E34F93B733
        7797003F3F233F3F000077237F7F0F4B001F77001F97000F4B00FF00FF30477F
        77C8FFA7DBFF8FD0FF8FD0FF8FD0FF83CCFF0000770000EF0000AF0000777F14
        000F4B003F14003F0000FF00FF3B477F4BBBFFBFEFFF8FE7FF8FE7FF8FE7FF8F
        E7FF0000770000EF7F14007F1400BF28000F4B003F33007F1400FF00FF47477F
        67C0FFA3DFFF8FFFFF8FFFFF8FFFFF8FFFFF0000770000EF3F0037000037FF28
        00FF2800FF28007F1400FF00FF18577F77C8FF6FC7FFA7FFFF8FFFFF8FFFFF8F
        FFFF00003700007700007700003F7F14007F14007F14003F1400FF00FF285C7F
        77C8FF58BCFFCBF3FFCFFFFFBFFFFFAFFFFFAFFFFFAFFFFFAFFFFF93E3FFD0FF
        FF83C3DB171817FF00FFFF00FF30607F8BD0FF77C8FF5FBFFF77C8FF7FCCFF9B
        D7FFD3FFFFBFFFFFBFFFFFA7E7FFDFFFFFCFF3FF33575FFF00FFFF00FF30607F
        97FFFF8FFFFF8FFFFF8FFFFF8FFFFF83EFFF77DBFFA7DFFFC7EBFFCBEBFFF7FF
        FFF7FFFF7BAFC7FF00FFFF00FF30607F9FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8F
        FFFF8FFFFF8FFFFF83FFFF43BFF73B63833B647F435B7FFF00FFFF00FF30537F
        B7FBFF8FFFFF8FFFFFAFFFFFA3DBFF9BDBFF9FEBFFAFFBFFAFFFFF67D7FF3737
        37FF00FFFF00FFFF00FFFF00FFFF00FF93B7FF88D7FF7FD7FF87C7FF1C1F1CFF
        00FF23233F47477F3B477F30537FFF00FF000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00
        FFFF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF000000000000000000FF00FF000000}
      TabOrder = 7
    end
    object btImprimir: TBitBtn
      Left = 665
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
      TabOrder = 8
    end
  end
  inherited Panel1: TPanel
    Top = 626
    Width = 1004
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 626
    ExplicitWidth = 1004
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 915
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 915
    end
  end
  inherited ActionList1: TActionList
    Left = 416
    Top = 120
    object ExportarExcel: TAction
      Caption = 'Exportar a Excel'
      OnExecute = ExportarExcelExecute
    end
    object Imprimir: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 480
    Top = 112
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select  c.* from clientes c'
      'where c.activo='#39'S'#39)
    Left = 688
    Top = 152
  end
  object QLdr: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select l.* from ldrcliente l')
    Left = 680
    Top = 272
  end
  object DSPClientes: TDataSetProvider
    DataSet = QClientes
    Options = []
    Left = 768
    Top = 152
  end
  object CDSClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPClientes'
    Left = 848
    Top = 152
    object CDSClientesCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSClientesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object CDSClientesRAZON_SOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSClientesDIRECCION_COMERCIAL: TStringField
      DisplayLabel = 'Direcci'#243'n'
      FieldName = 'DIRECCION_COMERCIAL'
      Origin = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object CDSClientesTELEFONO_COMERCIAL_1: TStringField
      DisplayLabel = 'Telefono'
      FieldName = 'TELEFONO_COMERCIAL_1'
      Origin = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object CDSClientesTELEFONO_COMERCIAL_2: TStringField
      DisplayLabel = 'Telefono'
      FieldName = 'TELEFONO_COMERCIAL_2'
      Origin = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object CDSClientesTELEFONO_CELULAR: TStringField
      DisplayLabel = 'Movil'
      FieldName = 'TELEFONO_CELULAR'
      Origin = 'TELEFONO_CELULAR'
      Size = 11
    end
    object CDSClientesCPOSTAL: TStringField
      DisplayLabel = 'Cod.Postal'
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object CDSClientesLOCALIDAD: TStringField
      DisplayLabel = 'Localidad'
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object CDSClientesCONDICION_IVA: TIntegerField
      DisplayLabel = 'Iva'
      FieldName = 'CONDICION_IVA'
      Origin = 'CONDICION_IVA'
      Required = True
    end
    object CDSClientesNRO_DE_CUIT: TStringField
      DisplayLabel = 'Nro de Cuit'
      FieldName = 'NRO_DE_CUIT'
      Origin = 'NRO_DE_CUIT'
      Size = 13
    end
    object CDSClientesOBSERVACIONES: TMemoField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      BlobType = ftMemo
    end
    object CDSClientesFECHAALTA: TSQLTimeStampField
      DisplayLabel = 'F.Alta'
      FieldName = 'FECHAALTA'
      Origin = 'FECHAALTA'
    end
    object CDSClientesZONA: TIntegerField
      DisplayLabel = 'Zona'
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object CDSClientesVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object CDSClientesULTIMOPAGO: TSQLTimeStampField
      DisplayLabel = 'Ult.Pago'
      FieldName = 'ULTIMOPAGO'
      Origin = 'ULTIMOPAGO'
    end
    object CDSClientesLISTAPRECIOS: TIntegerField
      DisplayLabel = 'Lista de Precios'
      FieldName = 'LISTAPRECIOS'
      Origin = 'LISTAPRECIOS'
    end
    object CDSClientesCORREOELECTRONICO: TStringField
      DisplayLabel = 'e-mail'
      FieldName = 'CORREOELECTRONICO'
      Origin = 'CORREOELECTRONICO'
      Size = 100
    end
    object CDSClientesCORREOELECTRONICO_2: TStringField
      DisplayLabel = 'e-mail'
      FieldName = 'CORREOELECTRONICO_2'
      Origin = 'CORREOELECTRONICO_2'
      Size = 100
    end
  end
  object DSClientes: TDataSource
    DataSet = CDSClientes
    Left = 920
    Top = 152
  end
  object DSPLdr: TDataSetProvider
    DataSet = QLdr
    Options = []
    Left = 768
    Top = 272
  end
  object CDSLdr: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPLdr'
    Left = 856
    Top = 272
    object CDSLdrCODIGO_CLIENTE: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_CLIENTE'
      Origin = 'CODIGO_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSLdrCODIGO_LDR: TIntegerField
      DisplayLabel = 'Ldr'
      FieldName = 'CODIGO_LDR'
      Origin = 'CODIGO_LDR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSLdrNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSLdrDIRECCION: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object CDSLdrCPOSTAL: TStringField
      DisplayLabel = 'Cod.Postal'
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object CDSLdrLOCALIDAD: TStringField
      DisplayLabel = 'Localidad'
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 40
    end
    object CDSLdrPROVINCIA: TIntegerField
      DisplayLabel = 'Provincia'
      FieldName = 'PROVINCIA'
      Origin = 'PROVINCIA'
    end
  end
  object DSLdr: TDataSource
    DataSet = CDSLdr
    Left = 936
    Top = 272
  end
  object dlgSave1: TSaveDialog
    DefaultExt = 'txt'
    FileName = 'PercepIIBB'
    Title = 'Archivo de Retenciones'
    Left = 545
    Top = 378
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clBlue
    end
  end
  object dxPrintDialog1: TdxPrintDialog
    Left = 480
    Top = 480
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 120
    Top = 144
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = cxGrid1
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45081.728229328710000000
      ShrinkToPageWidth = True
      TimeFormat = 0
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object frxReporte: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45012.580697523150000000
    ReportOptions.LastChange = 45012.580697523150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnAfterPrintReport = frxReporteAfterPrintReport
    Left = 864
    Top = 352
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDBClientes: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DSClientes
    BCDToCurrency = False
    DataSetOptions = []
    Left = 680
    Top = 344
  end
  object frxDBLdr: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSource = DSLdr
    BCDToCurrency = False
    DataSetOptions = []
    Left = 672
    Top = 408
  end
  object PopupMenu1: TPopupMenu
    Left = 392
    Top = 384
    object Expandir: TMenuItem
      Caption = 'Expandir'
      OnClick = ExpandirClick
    end
  end
end
