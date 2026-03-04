object FormEtiquetaOP: TFormEtiquetaOP
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Etiquetas '
  ClientHeight = 591
  ClientWidth = 570
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
  OnShow = FormShow
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 570
    Height = 513
    Align = alTop
    TabOrder = 0
    OnDblClick = pnPrincipalDblClick
    object Label1: TLabel
      Left = 16
      Top = 447
      Width = 79
      Height = 13
      Caption = 'Etiquetas Chicas'
    end
    object sbReporte: TSpeedButton
      Left = 329
      Top = 466
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        555555555555555555555555555555555555555FFFFFFFFFF555550000000000
        55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
        B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
        000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
        555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
        55555575FFF75555555555700007555555555557777555555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = sbReporteClick
    end
    object Label2: TLabel
      Left = 20
      Top = 389
      Width = 87
      Height = 13
      Caption = 'Fecha Elaboracion'
    end
    object Label3: TLabel
      Left = 156
      Top = 389
      Width = 89
      Height = 13
      Caption = 'Fecha Vencimiento'
    end
    object dbgEtiquetas: TDBGrid
      Left = 1
      Top = 33
      Width = 568
      Height = 350
      Align = alTop
      DataSource = DSEtiquetas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnColEnter = dbgEtiquetasColEnter
      OnEnter = dbgEtiquetasEnter
      Columns = <
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'CODIGO'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Codigo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 104
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'DETALLE'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Detalle'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 320
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRACOPIAS'
          Title.Alignment = taCenter
          Title.Caption = 'Copias'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end>
    end
    object edEtiqueta1: TEdit
      Left = 16
      Top = 466
      Width = 307
      Height = 21
      TabOrder = 1
      Text = 'edEtiqueta1'
    end
    object BitBtn1: TBitBtn
      Left = 478
      Top = 457
      Width = 75
      Height = 29
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
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object chPreview: TCheckBox
      Left = 509
      Top = 492
      Width = 44
      Height = 17
      Caption = 'View'
      TabOrder = 3
      WordWrap = True
    end
    object FElaboracion: TJvDateEdit
      Left = 16
      Top = 408
      Width = 105
      Height = 21
      ShowNullDate = False
      TabOrder = 4
    end
    object FVencimiento: TJvDateEdit
      Left = 156
      Top = 408
      Width = 109
      Height = 21
      ShowNullDate = False
      TabOrder = 5
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 568
      Height = 32
      Align = alTop
      Caption = 'Etiquetas'
      Color = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 6
    end
  end
  object DSEtiquetas: TDataSource
    DataSet = CDSEtiquetas
    Left = 504
    Top = 376
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.fr3'
    Left = 480
    Top = 200
  end
  object frEtiq: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.802346273150000000
    ReportOptions.LastChange = 39638.802346273150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 246
    Top = 230
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frDSEtiq: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frDSEtiq'
    CloseDataSource = False
    DataSource = DSEtiquetas
    BCDToCurrency = False
    DataSetOptions = []
    Left = 334
    Top = 238
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_OPCAB'
        FieldAlias = 'ID_OPCAB'
      end
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'UNIDAD'
        FieldAlias = 'UNIDAD'
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end
      item
        FieldName = 'DEPOSITO_DESTINO'
        FieldAlias = 'DEPOSITO_DESTINO'
      end
      item
        FieldName = 'SUCURSAL'
        FieldAlias = 'SUCURSAL'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
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
        FieldName = 'AFECTA_STOCK'
        FieldAlias = 'AFECTA_STOCK'
      end
      item
        FieldName = 'ESTADO'
        FieldAlias = 'ESTADO'
      end
      item
        FieldName = 'COSTO'
        FieldAlias = 'COSTO'
      end
      item
        FieldName = 'EN_PLANIFICACION'
        FieldAlias = 'EN_PLANIFICACION'
      end
      item
        FieldName = 'MUESTRACOPIAS'
        FieldAlias = 'MUESTRACOPIAS'
      end
      item
        FieldName = 'MUESTRASIGLAS'
        FieldAlias = 'MUESTRASIGLAS'
      end>
  end
  object CDSEtiquetas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 416
    Top = 376
  end
end
