object FormRegLiquidacionComi: TFormRegLiquidacionComi
  Left = 276
  Top = 107
  BorderIcons = [biSystemMenu]
  Caption = 'Registro Liquidacion de Comisiones'
  ClientHeight = 531
  ClientWidth = 845
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 845
    Height = 531
    Align = alClient
    TabOrder = 0
    OnDblClick = Panel1DblClick
    DesignSize = (
      845
      531)
    object dbgDetalle: TDBGrid
      Left = 0
      Top = 10
      Width = 836
      Height = 439
      Anchors = [akLeft, akTop, akBottom]
      DataSource = DSRegLiq
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgDetalleDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'FECHAVTA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPOCPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 27
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLASECPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 27
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NROCPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 233
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NETO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMISION'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 74
          Visible = True
        end>
    end
    object Button1: TButton
      Left = 726
      Top = 487
      Width = 75
      Height = 25
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Salir'
      TabOrder = 1
      OnClick = Button1Click
    end
    object btExcel: TBitBtn
      Left = 24
      Top = 487
      Width = 75
      Height = 25
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Excel'
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
      TabOrder = 2
      OnClick = btExcelClick
    end
    object edTotal: TJvCalcEdit
      Left = 680
      Top = 455
      Width = 121
      Height = 21
      DisplayFormat = ',0.00'
      Anchors = [akLeft, akRight, akBottom]
      ShowButton = False
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
    end
    object btImprimir: TBitBtn
      Left = 528
      Top = 486
      Width = 75
      Height = 28
      Anchors = [akLeft, akBottom]
      Caption = '&Imprimir'
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
      TabOrder = 4
      OnClick = btImprimirClick
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'XLS'
    Left = 120
    Top = 184
  end
  object DSPRegLiq: TDataSetProvider
    DataSet = QRegLiq
    Left = 192
    Top = 296
  end
  object CDSRegLiq: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRegLiq'
    Left = 256
    Top = 296
    object CDSRegLiqLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRegLiqID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Origin = 'ID_FACTURA'
    end
    object CDSRegLiqCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      Size = 6
    end
    object CDSRegLiqNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object CDSRegLiqNETO: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'NETO'
      Origin = 'NETO'
      ProviderFlags = []
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSRegLiqTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSRegLiqCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSRegLiqNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      EditMask = 'a-0000-00000000;0;_'
      Size = 13
    end
    object CDSRegLiqFECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      ProviderFlags = []
    end
    object CDSRegLiqTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSRegLiqCOMISION: TFloatField
      DisplayLabel = 'Comision'
      FieldName = 'COMISION'
      Origin = 'COMISION'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSRegLiq: TDataSource
    DataSet = CDSRegLiq
    Left = 320
    Top = 296
  end
  object frxReport: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44389.535451087960000000
    ReportOptions.LastChange = 44389.535451087960000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 448
    Top = 136
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDBDetalle: TfrxDBDataset
    UserName = 'frxDBDetalle'
    CloseDataSource = False
    DataSource = DSRegLiq
    BCDToCurrency = False
    DataSetOptions = []
    Left = 496
    Top = 240
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'LOTE'
        FieldAlias = 'LOTE'
      end
      item
        FieldName = 'ID_FACTURA'
        FieldAlias = 'ID_FACTURA'
      end
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'NETO'
        FieldAlias = 'NETO'
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldAlias = 'TIPOCPBTE'
      end
      item
        FieldName = 'CLASECPBTE'
        FieldAlias = 'CLASECPBTE'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'FECHAVTA'
        FieldAlias = 'FECHAVTA'
      end
      item
        FieldName = 'COMISION'
        FieldAlias = 'COMISION'
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
    Left = 512
    Top = 320
  end
  object QRegLiq: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select l.lote,l.id_factura,sum(l.comision) as comision, f.tipocp' +
        'bte,f.clasecpbte,f.nrocpbte,'
      
        'f.fechavta,f.codigo,f.nombre,max(f.total) as total,max(f.netogra' +
        'v2+f.netoexen2) as Neto from lote_facturas_liqui l'
      'left join fcvtacab f on f.id_fc=l.id_factura'
      'where l.id_mov_ctacte=:id'
      
        'group by l.lote,l.id_factura, f.tipocpbte,f.clasecpbte,f.nrocpbt' +
        'e,'
      'f.fechavta,f.codigo,f.nombre,f.total'
      'order by f.fechavta,f.tipocpbte,f.nrocpbte')
    Left = 136
    Top = 296
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DataToXLS: TDataToXLS
    DataSet = CDSRegLiq
    Columns = <
      item
        DataField = 'FECHAVTA'
        Title = 'Fecha'
        ColWidth = 2849
      end
      item
        DataField = 'TIPOCPBTE'
        Title = 'Tp'
        ColWidth = 999
      end
      item
        DataField = 'CLASECPBTE'
        Title = 'Cl'
        ColWidth = 999
      end
      item
        DataField = 'NROCPBTE'
        Title = 'Nro.Cpbte'
        ColWidth = 4070
      end
      item
        DataField = 'CODIGO'
        Title = 'Codigo'
        ColWidth = 2146
      end
      item
        DataField = 'NOMBRE'
        Title = 'Nombre'
        ColWidth = 8621
      end
      item
        DataField = 'NETO'
        Title = 'Neto'
        Alignment = taRightJustify
        ColWidth = 3478
        DataType = ctDouble
      end
      item
        DataField = 'TOTAL'
        Title = 'Total'
        Alignment = taRightJustify
        ColWidth = 3330
        DataType = ctDouble
      end
      item
        DataField = 'COMISION'
        Title = 'Comision'
        Alignment = taRightJustify
        ColWidth = 2738
        DataType = ctDouble
      end>
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clWindowText
    Title.Font.Height = -13
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold]
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWindowText
    Header.Font.Height = -13
    Header.Font.Name = 'Arial'
    Header.Font.Style = [fsBold]
    Left = 176
    Top = 120
  end
end
