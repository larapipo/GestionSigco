inherited FormLecturaBascula: TFormLecturaBascula
  Caption = 'Lectura Bascula'
  ClientHeight = 597
  ClientWidth = 873
  Position = poDesktopCenter
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 891
  ExplicitHeight = 638
  TextHeight = 13
  object Label7: TLabel [0]
    Left = 674
    Top = 51
    Width = 81
    Height = 13
    Caption = 'Fecha Envasado'
  end
  inherited pnPrincipal: TPanel
    Width = 873
    Height = 517
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 873
    ExplicitHeight = 517
    object Label1: TLabel
      Left = 2
      Top = 5
      Width = 100
      Height = 13
      Caption = 'Puerto de Coneccion'
    end
    object Label2: TLabel
      Left = 482
      Top = 3
      Width = 79
      Height = 13
      Caption = 'Codigo SENASA'
    end
    object Label3: TLabel
      Left = 674
      Top = 3
      Width = 81
      Height = 13
      Caption = 'Fecha Envasado'
    end
    object Label4: TLabel
      Left = 482
      Top = 251
      Width = 71
      Height = 13
      Caption = 'Observaciones'
    end
    object Label5: TLabel
      Left = 482
      Top = 104
      Width = 26
      Height = 13
      Caption = 'Titulo'
    end
    object Label6: TLabel
      Left = 482
      Top = 51
      Width = 87
      Height = 13
      Caption = 'Fecha Produccion'
    end
    object Label8: TLabel
      Left = 674
      Top = 51
      Width = 91
      Height = 13
      Caption = 'Fecha Vencimiento'
    end
    object Label9: TLabel
      Left = 482
      Top = 338
      Width = 48
      Height = 13
      Caption = 'Nro Tropa'
    end
    object sbReporte: TSpeedButton
      Left = 323
      Top = 472
      Width = 23
      Height = 22
      Anchors = [akLeft, akBottom]
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
    object edPeso: TEdit
      Left = 550
      Top = 466
      Width = 197
      Height = 37
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '0.0'
    end
    object btLeer: TBitBtn
      Left = 753
      Top = 465
      Width = 97
      Height = 38
      Action = LeerPeso
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000727272FF7272
        72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
        72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
        72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
        72FF727272FF727272FF727272FF727272FF0000000000000000727272FF7272
        72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
        72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
        72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
        72FF727272FF727272FF727272FF727272FF0000000000000000727272FF7272
        72FF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000727272FF727272FF0000000000000000727272FF7272
        72FF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000727272FF727272FF0000000000000000727272FF7272
        72FF0000000000000000D77711FFD77711FFD77711FFD77711FF000000000000
        000000000000000000000404040A4545459A6E6E6EF76F6F6FF9494949A30707
        070F000000000000000000000000000000001C1CD1FF1C1CD1FF1C1CD1FF1C1C
        D1FF0000000000000000727272FF727272FF0000000000000000727272FF7272
        72FF0000000000000000D77711FFD77711FFD77711FFD77711FF000000000000
        0000000000000000000042424293727272FF727272FF727272FF727272FF4949
        49A3000000000000000000000000000000001C1CD1FF1C1CD1FF1C1CD1FF1C1C
        D1FF0000000000000000727272FF727272FF0000000000000000727272FF7272
        72FF0000000000000000D77711FFD77711FFD77711FFD77711FF000000000000
        00000000000000000000696969EA727272FF727272FF727272FF727272FF6F6F
        6FF9000000000000000000000000000000001C1CD1FF1C1CD1FF1C1CD1FF1C1C
        D1FF0000000000000000727272FF727272FF00000000000000006B6B6BEF7272
        72FF0707071000000000CA7010EFD77711FFD77711FFD77711FF0F0801120000
        00000000000000000000686868E7727272FF727272FF727272FF727272FF6E6E
        6EF5000000000000000000000000000000001C1CD1FF1C1CD1FF1C1CD1FF1C1C
        D1FF0000000000000000727272FF727272FF0000000000000000656565E27272
        72FF0E0E0E2000000000BA670FDCD77711FFD77711FFD77711FF2D1903350000
        000000000000000000003E3E3E89727272FF727272FF727272FF727272FF6868
        68E70D0D0D1C00000000000000000404191F1C1CD1FF1C1CD1FF1C1CD1FF1A1A
        C1EB0000000007070710727272FF6C6C6CF20000000000000000565656C07272
        72FF2020204800000000904F0CAAD77711FFD77711FFD77711FF6C3C09810000
        00000000000000000000030303063E3E3E89676767E7676767E7626262DB7272
        72FF626262DB0D0D0D1C000000000505242C1B1BC9F51C1CD1FF1C1CD1FF1515
        9BBC0000000019191938727272FF5D5D5DD000000000000000003E3E3E8A7272
        72FF3B3B3B8500000000532E0663D77711FFD77711FFD77711FFC66E10EB0E08
        01110000000000000000000000000000000000000000000000000707070F5A5A
        5AC8727272FF626262DB0D0D0D1C00000000070736421B1BC9F51C1CD1FF0D0D
        5F740000000034343475727272FF4545459A00000000000000001F1F1F467272
        72FF616161D8000000000C06010ECA7010EFD77711FFD77711FFD77711FF9351
        0CAE030100030000000000000000000000000000000000000000000000000707
        070F5A5A5AC8727272FF626262DB0D0D0D1C00000000070736421A1AC2EC0303
        1317000000005A5A5AC8727272FF272727560000000000000000010101036767
        67E5727272FF1E1E1E43000000006739087AD77711FFD77711FFD77711FFD777
        11FF93510CAE0E08011100000000000000000000000000000000000000000000
        00000707070F5A5A5AC8727272FF626262DB0D0D0D1C00000000030314180000
        000017171733727272FF6B6B6BEF040404090000000000000000000000003636
        3678727272FF595959C70000000105030006AC5F0ECCD77711FFD77711FFD777
        11FFD77711FFC66E10EB6C3C09812D1904350F0801120D07011029170331311B
        043A000000000707070F5A5A5AC8727272FF626262DB0D0D0D1C000000000000
        0000525252B7727272FF3D3D3D88000000000000000000000000000000000505
        050C676767E5727272FF3131316E00000000180D021CBB670FDDD77711FFD777
        11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD274
        11F94224054E000000000707070F5A5A5AC8727272FF2E2E2E68000000002A2A
        2A5E727272FF6B6B6BEE08080813000000000000000000000000000000000000
        00002323234E727272FF6F6F6FF91D1D1D4000000000180D021CAC5F0ECCD777
        11FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
        11FFD27411F94224054E000000000707070F2A2A2A5F00000000181818356D6D
        6DF4727272FF2A2A2A5E00000000000000000000000000000000000000000000
        0000000000003E3E3E8B727272FF6B6B6BF01D1D1D4000000000050300066639
        087ACA7010EFD77711FFD77711FFD77711FFD77711FFD77711FFD77711FFD777
        11FFD77711FFC56D10E9140B0218000000000000000018181836696969EA7272
        72FF4646469B0000000000000000000000000000000000000000000000000000
        000000000000010101034A4A4AA4727272FF6F6F6FF93131316E000000010000
        00000C07010E532E076390500BAABA670FDCCA7010EFCA7010EFB9660FDB9150
        0CAC562F07660D07010F00000000000000002C2C2C636E6E6EF5727272FF4F4F
        4FB1030303060000000000000000000000000000000000000000000000000000
        00000000000000000000010101033E3E3E8B727272FF727272FF595959C71E1E
        1E43000000000000000000000000000000000000000000000000000000000000
        000000000000000000001A1A1A3B565656BF727272FF727272FF454545990303
        0306000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000002323234E666666E5727272FF7272
        72FF616161D83B3B3B85202020480E0E0E2007070710070707100D0D0D1E1F1F
        1F45393939815D5D5DD0727272FF727272FF696969EA2828285A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000505050C363636786666
        66E5727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
        72FF727272FF727272FF686868E9393939800707071000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000101
        01031F1F1F463E3E3E8A565656C0656565E26B6B6BEF6B6B6BEF666666E45757
        57C24040408E2121214B02020205000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 2
    end
    object chAutomatico: TCheckBox
      Left = 334
      Top = 24
      Width = 81
      Height = 17
      Caption = 'Automatico'
      TabOrder = 3
      OnClick = chAutomaticoClick
    end
    object cbPuerto: TComboBox
      Left = 1
      Top = 24
      Width = 145
      Height = 21
      TabOrder = 0
      Text = 'Puerto Coneccion'
      Items.Strings = (
        'COM 1'
        'COM 2'
        'COM 3'
        'COM 5')
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 51
      Width = 458
      Height = 326
      DataSource = DSArticulos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
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
          Width = 109
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
          Width = 302
          Visible = True
        end>
    end
    object edSenasa: TEdit
      Left = 482
      Top = 22
      Width = 144
      Height = 21
      TabOrder = 5
    end
    object JvDBFindEdit1: TJvDBFindEdit
      Left = 125
      Top = 383
      Width = 335
      Height = 21
      TabOrder = 9
      Text = ''
      OnKeyDown = JvDBFindEdit1KeyDown
      DataField = 'DETALLE_STK'
      DataSource = DSArticulos
      FindStyle = fsFilter
    end
    object edFechaEnvase: TJvDateEdit
      Left = 674
      Top = 22
      Width = 121
      Height = 21
      DefaultToday = True
      ShowNullDate = False
      TabOrder = 6
    end
    object edObs: TMemo
      Left = 482
      Top = 270
      Width = 313
      Height = 62
      TabOrder = 7
    end
    object edFechaProduccion: TJvDateEdit
      Left = 482
      Top = 70
      Width = 121
      Height = 21
      DefaultToday = True
      ShowNullDate = False
      TabOrder = 8
    end
    object edTropa: TEdit
      Left = 482
      Top = 356
      Width = 121
      Height = 21
      TabOrder = 10
    end
    object edEtiqueta: TEdit
      Left = 10
      Top = 473
      Width = 307
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 11
    end
    object edTitulo1: TEdit
      Left = 482
      Top = 123
      Width = 386
      Height = 21
      TabOrder = 12
    end
    object edTitulo2: TEdit
      Left = 482
      Top = 147
      Width = 386
      Height = 21
      TabOrder = 13
    end
    object edTitulo3: TEdit
      Left = 482
      Top = 170
      Width = 386
      Height = 21
      TabOrder = 14
    end
    object edTitulo4: TEdit
      Left = 482
      Top = 193
      Width = 386
      Height = 21
      TabOrder = 15
    end
  end
  inherited ToolBar1: TToolBar
    Top = 517
    Width = 873
    ExplicitTop = 517
    ExplicitWidth = 873
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
    inherited btBuscar: TBitBtn
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
      Width = 83
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object BitBtn1: TBitBtn
      Left = 640
      Top = 0
      Width = 107
      Height = 29
      Action = Imprimir
      Caption = 'Imprimir'
      TabOrder = 7
    end
  end
  inherited Panel1: TPanel
    Top = 547
    Width = 873
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 547
    ExplicitWidth = 873
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 784
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 784
    end
  end
  object edFechaVencimiento: TJvDateEdit [4]
    Left = 674
    Top = 70
    Width = 121
    Height = 21
    DefaultToday = True
    ShowNullDate = False
    TabOrder = 3
  end
  inherited ActionList1: TActionList
    Left = 264
    Top = 144
    object LeerPeso: TAction
      OnExecute = LeerPesoExecute
    end
    object Imprimir: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 472
    Top = 368
  end
  inherited JvFormStorage: TJvFormStorage
    Left = 312
    Top = 232
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 312
    Top = 288
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 624
    Top = 240
  end
  object Timer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = LeerPesoExecute
    Left = 424
    Top = 264
  end
  object QArticulos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk,s.detalle_stk,s.detalle_stk_adicional,s.fija' +
        'cion_precio_total from stock s where s.clase_articulo in (1,3)')
    Left = 128
    Top = 544
    object QArticulosCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QArticulosDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
  end
  object DSArticulos: TDataSource
    DataSet = QArticulos
    Left = 208
    Top = 544
  end
  object frxReport1: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45791.642017106480000000
    ReportOptions.LastChange = 45791.642017106480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 680
    Top = 336
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
    end
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
    Left = 672
    Top = 400
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.fr3'
    Left = 208
    Top = 264
  end
  object frxDBEmpresa: TfrxDBDataset
    UserName = 'frxDBEmpresa'
    CloseDataSource = False
    DataSource = DSEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 608
    Top = 400
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    Left = 496
    Top = 451
    object CDSEmpresaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 30
    end
    object CDSEmpresaACTIVIDAD: TStringField
      FieldName = 'ACTIVIDAD'
      Size = 30
    end
    object CDSEmpresaDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 30
    end
    object CDSEmpresaLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 30
    end
    object CDSEmpresaCORREO: TStringField
      FieldName = 'CORREO'
      Size = 30
    end
    object CDSEmpresaTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Size = 10
    end
    object CDSEmpresaTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Size = 10
    end
    object CDSEmpresaCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSEmpresaCONDICIONIVA: TStringField
      FieldName = 'CONDICIONIVA'
      Size = 15
    end
    object CDSEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField
      FieldName = 'NRO_AGTE_RET_INGBRUTOS'
      Size = 15
    end
    object CDSEmpresaLOGO: TBlobField
      FieldName = 'LOGO'
    end
    object CDSEmpresaCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSEmpresaNRO_AGTE_RET_GANANCIA: TStringField
      FieldName = 'NRO_AGTE_RET_GANANCIA'
      Size = 15
    end
    object CDSEmpresaAG_RET_GANANCIA: TStringField
      FieldName = 'AG_RET_GANANCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaAG_RET_ING_BRUTOS: TStringField
      FieldName = 'AG_RET_ING_BRUTOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField
      FieldName = 'AG_PERCEPCION_ING_BRUTOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaTASA_PERCEPCION_IB: TFloatField
      FieldName = 'TASA_PERCEPCION_IB'
    end
    object CDSEmpresaMINO_IMP_PERCEP_IB: TFloatField
      FieldName = 'MINO_IMP_PERCEP_IB'
    end
    object CDSEmpresaPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
    end
    object CDSEmpresaTASA_RET_IIBB: TFloatField
      FieldName = 'TASA_RET_IIBB'
      Required = True
    end
    object CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField
      FieldName = 'MINIMO_IMP_RET_IIBB'
      Required = True
    end
    object CDSEmpresaPUNITORIOS: TFloatField
      FieldName = 'PUNITORIOS'
      Required = True
    end
    object CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField
      FieldName = 'FECHA_INICIO_ACTI'
    end
    object CDSEmpresaNRO_RENSPA: TStringField
      FieldName = 'NRO_RENSPA'
    end
    object CDSEmpresaNRO_RUCA: TIntegerField
      FieldName = 'NRO_RUCA'
    end
    object CDSEmpresaCUIT_AUTORIZADO: TStringField
      FieldName = 'CUIT_AUTORIZADO'
      Size = 13
    end
    object CDSEmpresaNOMBRE_AUTORIZADO: TStringField
      FieldName = 'NOMBRE_AUTORIZADO'
      Size = 50
    end
    object CDSEmpresaCBU: TStringField
      FieldName = 'CBU'
      Size = 22
    end
    object CDSEmpresaID_CPOSTAL: TIntegerField
      FieldName = 'ID_CPOSTAL'
    end
    object CDSEmpresaCOD_ACTIVIDAD: TStringField
      FieldName = 'COD_ACTIVIDAD'
      Size = 10
    end
    object CDSEmpresaNOMBRE_FANTASIA: TStringField
      FieldName = 'NOMBRE_FANTASIA'
      Size = 50
    end
    object CDSEmpresaCODIGO_COT: TStringField
      FieldName = 'CODIGO_COT'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaDIRECCION_NRO: TStringField
      FieldName = 'DIRECCION_NRO'
      Size = 10
    end
    object CDSEmpresaAG_PERCEPCION_IVA: TStringField
      FieldName = 'AG_PERCEPCION_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaMIN_IMP_PERCEPCION_IVA: TFloatField
      FieldName = 'MIN_IMP_PERCEPCION_IVA'
      Required = True
    end
    object CDSEmpresaTASA_LEY15311: TFloatField
      FieldName = 'TASA_LEY15311'
      Required = True
    end
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = DMMain_FD.QEmpresa
    Left = 424
    Top = 451
  end
  object DSEmpresa: TDataSource
    DataSet = CDSEmpresa
    Left = 544
    Top = 432
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 808
    Top = 320
  end
  object frxDBArticulo: TfrxDBDataset
    UserName = 'frxDBArticulo'
    CloseDataSource = False
    DataSource = DSArticulos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 736
    Top = 232
    FieldDefs = <
      item
        FieldName = 'CODIGO_STK'
        FieldType = fftString
      end
      item
        FieldName = 'DETALLE_STK'
        FieldType = fftString
        Size = 45
      end>
  end
end
