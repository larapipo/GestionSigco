object FormPlanificacion_Produccion: TFormPlanificacion_Produccion
  Left = 595
  Top = 216
  BorderWidth = 1
  Caption = 'Planificacion de Produccion'
  ClientHeight = 743
  ClientWidth = 1209
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 217
    Top = 33
    Height = 652
    ExplicitLeft = 232
    ExplicitTop = 56
    ExplicitHeight = 100
  end
  object pwListaTareas: TPlannerWaitList
    Left = 0
    Top = 33
    Width = 217
    Height = 652
    DefaultItem.BorderColor = 11250603
    DefaultItem.CaptionBkg = 16109705
    DefaultItem.CaptionBkgTo = 16109705
    DefaultItem.CaptionFont.Charset = DEFAULT_CHARSET
    DefaultItem.CaptionFont.Color = clWindowText
    DefaultItem.CaptionFont.Height = -11
    DefaultItem.CaptionFont.Name = 'MS Sans Serif'
    DefaultItem.CaptionFont.Style = [fsBold]
    DefaultItem.CaptionType = ctText
    DefaultItem.ColorTo = clWhite
    DefaultItem.Cursor = -1
    DefaultItem.Font.Charset = DEFAULT_CHARSET
    DefaultItem.Font.Color = clWindowText
    DefaultItem.Font.Height = -11
    DefaultItem.Font.Name = 'MS Sans Serif'
    DefaultItem.Font.Style = []
    DefaultItem.InHeader = True
    DefaultItem.ItemBegin = 16
    DefaultItem.ItemEnd = 17
    DefaultItem.ItemPos = 0
    DefaultItem.Name = 'PlannerItem0'
    DefaultItem.SelectColor = 16571329
    DefaultItem.SelectColorTo = 16575452
    DefaultItem.SelectFontColor = 3881787
    DefaultItem.Shadow = False
    DefaultItem.TrackColor = 16571329
    DefaultItem.TrackSelectColor = 11369558
    DefaultItem.Visible = False
    HintColor = clNone
    HintPause = 2500
    Items = <>
    ItemHeight = 55
    ShowSelection = True
    OnItemClick = pwListaTareasItemClick
    OnItemDblClick = pwListaTareasItemDblClick
    Align = alLeft
    DragMode = dmAutomatic
    ShowHint = True
    TabOrder = 0
    OnMouseMove = pwListaTareasMouseMove
    Version = '3.2.2.1'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1209
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Color = clHighlight
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      1209
      33)
    object lbTrabajos: TLabel
      Left = 8
      Top = 1
      Width = 115
      Height = 13
      Cursor = crHandPoint
      Caption = 'Trabajos a Designar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = lbTrabajosClick
    end
    object Label3: TLabel
      Left = 191
      Top = 5
      Width = 33
      Height = 13
      Caption = 'Detalle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbDetMovimientos: TLabel
      Left = 923
      Top = 8
      Width = 115
      Height = 13
      Cursor = crHandPoint
      Caption = 'Detalle Movimientos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = lbDetMovimientosClick
    end
    object lbItems: TLabel
      Left = 8
      Top = 16
      Width = 25
      Height = 13
      Caption = 'Itmes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object spMes: TSpinEdit
      Left = 872
      Top = 5
      Width = 49
      Height = 22
      MaxLength = 2
      MaxValue = 12
      MinValue = 1
      TabOrder = 0
      Value = 1
      OnChange = spMesChange
    end
    object spAnio: TSpinEdit
      Left = 801
      Top = 5
      Width = 65
      Height = 22
      MaxLength = 4
      MaxValue = 3000
      MinValue = 1900
      TabOrder = 1
      Value = 1900
      OnChange = spAnioChange
    end
    object btRefresh: TBitBtn
      Left = 1114
      Top = 2
      Width = 75
      Height = 25
      Action = Refresh
      Anchors = [akTop, akRight]
      Caption = 'Refresh'
      Glyph.Data = {
        BE060000424DBE06000000000000360400002800000024000000120000000100
        0800000000008802000000000000000000000001000000000000000000000000
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
        0404040404040303030303030303030303FFF8F8F8F8F8F803FF030303030302
        0403030402020202020204040303030303F8F8FF03F8030303030303F8F8FF03
        030303020204040202020202020202020403030303F8FFF8F80303FFFFFFFFFF
        0303F8FF030303020202020202FAFAFAFAFA02020204030303F8FF030303FFF8
        F8F8F8F8FF0303F8FF03030202020202FA0303030303FA020202040303F8FF03
        03FFF80303030303F8FF0303F8FF03020202020203030303030303FA02020403
        03F8FF0303F803030303030303F8FF03F8FF03020202020202030303030303FA
        0404040303F8FFFFFFFFF8FF0303030303F8F8F8F80303FAFAFAFAFAFAFA0303
        030303030303030303F8F8F8F8F8F8F803030303030303030303030303030303
        030303030303030303030303030303030303030303030303FFFFFFFFFFFF0303
        030303030303030303030404040404040303FFFFFFFF030303030303F8F8F8F8
        F8F803FA040404030303030303FA02020202020403F8F8F8F8FF0303030303F8
        FF03030303F803FA02020403030303030303FA020202020403F8FF03F8FF0303
        03030303F803030303F80303FA0202040303030303040402020202040303F803
        03F8FFFFFFFFFFF8F803030303F80303FA020202040404040402020202020204
        0303F8FF0303F8F8F8F8F8030303FFFF03F8030303FA02020202020202020202
        FAFA0204030303F8FFFF030303030303FFFFF8F8FFF803030303FAFA02020202
        0202FAFA0303FA0303030303F8F8FFFFFFFFFFFFF8F80303F803030303030303
        FAFAFAFAFAFA030303030303030303030303F8F8F8F8F8F80303030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        0303}
      NumGlyphs = 2
      TabOrder = 2
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 685
    Width = 1209
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    Color = clHighlight
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      1209
      35)
    object Label1: TLabel
      Left = 8
      Top = 10
      Width = 49
      Height = 13
      Caption = 'Div x Cant'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbIntemEspera: TLabel
      Left = 144
      Top = 9
      Width = 80
      Height = 13
      Caption = 'Item en Esperea:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object spCoef: TSpinEdit
      Left = 66
      Top = 6
      Width = 49
      Height = 22
      Hint = 
        'Divisor de Calculo de dias de Fabricacion segun los items a proc' +
        'esar'
      MaxLength = 2
      MaxValue = 12
      MinValue = 1
      TabOrder = 0
      Value = 1
      OnChange = spMesChange
    end
    object btSalir: TBitBtn
      Left = 1114
      Top = 2
      Width = 75
      Height = 29
      Hint = 'Cerrar la ventana actual'
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0004490600055B0900066C0C00066C0C00055E
        0A00044C0600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0005600900056009000891130009B0180009B31A0009B3190009B1
        19000796140005680C0005680C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000A6A15000A7F15000BB61C0009B91A0008B4180007B2160009B3190009B4
        190009B81A0009B91A0007831000044D0600FF00FF00FF00FF00FF00FF000B6A
        15000F85220016BD340011B727000BB21C0007B1160008B1170009B2190009B2
        190009B2190009B4190009BA1A000784100006670C00FF00FF00FF00FF000B6A
        150020BE49001BBD400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE
        6D0009B2190009B2190009B3190009BA1A0006670C00FF00FF00087210001B9A
        3A002AC65B001DBB45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FD
        F8005ACB650009B2190009B2190009B81A0008941300045D0900087210002AB6
        5B002CC5650022BD4D000FB422000AB21A000CB31C000AB219008DDB9500FDFE
        FD00F6FCF70058CB630009B2190009B51A0008AB1700045D09000F821C0037C2
        6C0033C76C00CDF1DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FD
        F900FFFFFF00F2FBF3006FD2790008B4190009B3190005650B00138D230058CC
        830042C97700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFE
        FD00FFFFFF00FFFFFF00BCEAC1000AB41A0009B31900066D0D000F911D006FD2
        93005FD38D006DD4950072D6990071D6980072D6990064D28C0092DFA800FBFE
        FB00FFFFFF00ACE5B8002EBF4C0011B82B0008B1190005610A000F911D0067CC
        83009BE5BA0038C6700030C3690038C56F0038C56F0070D69700E8F8EE00FFFF
        FF009FE2B10020BD48001AB93E0010BA290008A3170005610A00FF00FF0025AE
        3900BCEDD20082DBA40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2
        B20022BC4B001DBA410018B7360014C030000A851700FF00FF00FF00FF0025AE
        390071D28C00D2F4E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2
        630024BE560023BC4D001FC1460016AE34000A851700FF00FF00FF00FF00FF00
        FF0025AE390084D89F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA
        7B0048CB780039CB6A0021B649000F7C1F00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0025AE390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2
        B30064D492002FB157002FB15700FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0032B74E0025AE390025AE390025AE390025AE
        390024A34200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 1
      OnClick = btSalirClick
    end
    object chbModoIntervalo: TAdvOfficeCheckBox
      Left = 835
      Top = 9
      Width = 169
      Height = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = True
      Alignment = taRightJustify
      Caption = 'Intervalo Fijo Produccion x Dia'
      ReturnIsTab = False
      Version = '1.8.4.1'
    end
  end
  object DBPPlanificacion: TDBPlanner
    Left = 220
    Top = 33
    Width = 989
    Height = 652
    Align = alClient
    AttachementGlyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888700078888888888708880788888888808808808888888880808080
      8888888880808080888888888080808088888888808080808888888880808080
      8888888880808080888888888080808088888888808080808888888888808080
      8888888888808880888888888888000888888888888888888888}
    Caption.Title = 'Planificacion x Estaciones de Trabajo'
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -13
    Caption.Font.Name = 'Verdana'
    Caption.Font.Style = []
    Caption.Background = 16575452
    Caption.BackgroundTo = 16571329
    DayNames.Strings = (
      'Dom'
      'Lun'
      'Mar'
      'Mie'
      'Jue'
      'Vie'
      'Sab')
    DefaultItem.CaptionBkg = 16109705
    DefaultItem.CaptionBkgTo = 16109705
    DefaultItem.CaptionFont.Charset = DEFAULT_CHARSET
    DefaultItem.CaptionFont.Color = clWindowText
    DefaultItem.CaptionFont.Height = -11
    DefaultItem.CaptionFont.Name = 'Tahoma'
    DefaultItem.CaptionFont.Style = []
    DefaultItem.CaptionType = ctText
    DefaultItem.CaptionText = 'Titulo - 1 -'
    DefaultItem.ColorTo = clWhite
    DefaultItem.CompletionDisplay = cdHorizontal
    DefaultItem.Cursor = -1
    DefaultItem.Font.Charset = DEFAULT_CHARSET
    DefaultItem.Font.Color = clWindowText
    DefaultItem.Font.Height = -9
    DefaultItem.Font.Name = 'Tahoma'
    DefaultItem.Font.Style = []
    DefaultItem.ItemBegin = 16
    DefaultItem.ItemEnd = 17
    DefaultItem.ItemPos = 0
    DefaultItem.Name = 'PlannerItem0'
    DefaultItem.SelectColor = 16571329
    DefaultItem.SelectColorTo = 16575452
    DefaultItem.Shadow = True
    DefaultItem.TrackColor = 16571329
    DefaultItem.TrackLinkColor = clLime
    DefaultItem.TrackSelectColor = 11369558
    DeleteGlyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      0800000000000001000000000000000000000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
      A6000020400000206000002080000020A0000020C0000020E000004000000040
      20000040400000406000004080000040A0000040C0000040E000006000000060
      20000060400000606000006080000060A0000060C0000060E000008000000080
      20000080400000806000008080000080A0000080C0000080E00000A0000000A0
      200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
      200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
      200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
      20004000400040006000400080004000A0004000C0004000E000402000004020
      20004020400040206000402080004020A0004020C0004020E000404000004040
      20004040400040406000404080004040A0004040C0004040E000406000004060
      20004060400040606000406080004060A0004060C0004060E000408000004080
      20004080400040806000408080004080A0004080C0004080E00040A0000040A0
      200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
      200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
      200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
      20008000400080006000800080008000A0008000C0008000E000802000008020
      20008020400080206000802080008020A0008020C0008020E000804000008040
      20008040400080406000804080008040A0008040C0008040E000806000008060
      20008060400080606000806080008060A0008060C0008060E000808000008080
      20008080400080806000808080008080A0008080C0008080E00080A0000080A0
      200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
      200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
      200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
      2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
      2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
      2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
      2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
      2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
      2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
      2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D9ED07070707
      0707070707070707ECD9EC5E5E5E5E5E5E5E5E5E5E5E5E5E5DED070D0E161616
      161616160E0E0E0E5E07070D161656561616161616160E0E5E07070D16AF075E
      56561657B7EF0E0E5E07070D56AFF6075F565FAFF6AF160E5E07070D565EAFF6
      075FEFF6AF17160E5E07070D5E5E5EAFF607F6AF161616165E07070D5E5E5E5E
      EFF60756161616165E07070D5E5E5FEFF6EFF6075E1616165E07070D5F5F07F6
      EF5EAFF6075616165E07070D6707F6075E5656AFF60716165E07070DA7AF075F
      5E5E5E5EAFAF56165E07070DA7A7675F5F5E5E5E5E5E56165E07EDAF0D0D0D0D
      0D0D0D0D0D0D0D0D5EECD9ED070707070707070707070707EDD1}
    Display.ActiveStart = 96
    Display.ActiveEnd = 240
    Display.CurrentPosFrom = 43068
    Display.CurrentPosTo = 43068
    Display.DisplayEnd = 14
    Display.DisplayScale = 35
    Display.DisplayUnit = 5
    Display.ColorActive = 16575452
    Display.ColorNonActive = clWhite
    Display.HourLineColor = 13542013
    Display.ShowCurrentItem = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Footer.Captions.Strings = (
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Footer.CompletionFormat = '%d%%'
    Footer.Color = 16645114
    Footer.ColorTo = 16643051
    Footer.Completion.Font.Charset = DEFAULT_CHARSET
    Footer.Completion.Font.Color = clWindowText
    Footer.Completion.Font.Height = -11
    Footer.Completion.Font.Name = 'Arial'
    Footer.Completion.Font.Style = []
    Footer.Font.Charset = DEFAULT_CHARSET
    Footer.Font.Color = clWindowText
    Footer.Font.Height = -11
    Footer.Font.Name = 'Tahoma'
    Footer.Font.Style = []
    GradientHorizontal = True
    GridLeftCol = 0
    GridLineColor = clSilver
    GridTopRow = 1
    Header.ActiveColor = 16575452
    Header.ActiveColorTo = 16571329
    Header.Captions.Strings = (
      ''
      '')
    Header.Color = 16645114
    Header.ColorTo = 16643051
    Header.CustomGroups = <>
    Header.Height = 180
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clBlack
    Header.Font.Height = -11
    Header.Font.Name = 'Tahoma'
    Header.Font.Style = []
    Header.GroupHeight = 20
    Header.GroupFont.Charset = DEFAULT_CHARSET
    Header.GroupFont.Color = clWindowText
    Header.GroupFont.Height = -11
    Header.GroupFont.Name = 'Tahoma'
    Header.GroupFont.Style = []
    Header.ItemColor = clSkyBlue
    Header.ItemHeight = 20
    Header.TextHeight = 178
    Header.WordWrap = True
    HintPause = 2500
    HTMLOptions.CellFontStyle = []
    HTMLOptions.HeaderFontStyle = []
    HTMLOptions.SidebarFontStyle = []
    ItemGap = 1
    ItemPopup = PopupMenu1
    Items = <>
    Mode.Clip = True
    Mode.DateTimeFormat = 'dd/mm'
    Mode.Month = 11
    Mode.PeriodStartDay = 2
    Mode.PeriodStartMonth = 12
    Mode.PeriodStartYear = 2017
    Mode.PeriodEndDay = 16
    Mode.PeriodEndMonth = 12
    Mode.PeriodEndYear = 2017
    Mode.PlannerType = plDayPeriod
    Mode.TimeLineStart = 43068.000000000000000000
    Mode.TimeLineNVUBegin = 0
    Mode.TimeLineNVUEnd = 0
    Mode.Year = 2017
    Mode.Day = 1
    Sidebar.ActiveColor = 16575452
    Sidebar.ActiveColorTo = 16571329
    Sidebar.Background = 16645114
    Sidebar.BackgroundTo = 16643051
    Sidebar.DateTimeFormat = 'd/mm'
    Sidebar.Font.Charset = DEFAULT_CHARSET
    Sidebar.Font.Color = clBlack
    Sidebar.Font.Height = -11
    Sidebar.Font.Name = 'Arial'
    Sidebar.Font.Style = []
    Sidebar.HourFontRatio = 1.800000000000000000
    Sidebar.LineColor = 13542013
    Sidebar.Occupied = clWhite
    Sidebar.OccupiedTo = clWhite
    Sidebar.OccupiedFontColor = clBlack
    Sidebar.Position = spTop
    Sidebar.RotateOnTop = False
    Sidebar.SeparatorLineColor = 13542013
    Sidebar.Width = 35
    Positions = 1
    PositionAutoSize = True
    PositionProps = <>
    PositionWidth = 80
    PrintOptions.LineWidth = 0
    PrintOptions.FooterFont.Charset = DEFAULT_CHARSET
    PrintOptions.FooterFont.Color = clWindowText
    PrintOptions.FooterFont.Height = -11
    PrintOptions.FooterFont.Name = 'Tahoma'
    PrintOptions.FooterFont.Style = []
    PrintOptions.HeaderFont.Charset = DEFAULT_CHARSET
    PrintOptions.HeaderFont.Color = clWindowText
    PrintOptions.HeaderFont.Height = -11
    PrintOptions.HeaderFont.Name = 'Tahoma'
    PrintOptions.HeaderFont.Style = []
    ScrollSmooth = True
    ScrollSynch = True
    SelectColor = 16109705
    SyncPlanner.ScrollVertical = True
    SyncPlanner.SelectionColumn = True
    SyncPlanner.SelectionRow = True
    TrackColor = 16571329
    URLGlyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888880000800
      0088888808F8F0F8F80888808000000000808880F070888070F0888080000000
      0080880408F8F0F8F80880CCC0000400008874CCC2222C4788887CCCC22226C0
      88887CC822222CC088887C822224642088887C888422C220888877CF8CCCC227
      888887F8F8222208888888776888208888888887777778888888}
    Version = '3.4.6.0'
    OnItemDblClick = DBPPlanificacionItemDblClick
    OnItemDelete = DBPPlanificacionItemDelete
    OnItemSelect = DBPPlanificacionItemSelect
    OnPlannerMouseMove = DBPPlanificacionPlannerMouseMove
    OnDragOver = DBPPlanificacionDragOver
    OnDragDrop = DBPPlanificacionDragDrop
    ItemSource = DBPeriodSource1
    TMSStyle = 0
  end
  object stBar: TStatusBar
    Left = 0
    Top = 720
    Width = 1209
    Height = 23
    Panels = <
      item
        Width = 350
      end
      item
        Width = 300
      end>
  end
  object CDSEstacion: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEstacion'
    Left = 767
    Top = 291
    object CDSEstacionID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSEstacionDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object CDSEstacionSECTOSDETALLE: TStringField
      FieldName = 'SECTOSDETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 50
    end
  end
  object DSMov: TDataSource
    DataSet = CDSMov
    Left = 167
    Top = 67
  end
  object CDSMov: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ProviderName = 'DSPMov'
    AfterPost = CDSMovAfterPost
    OnNewRecord = CDSMovNewRecord
    Left = 111
    Top = 67
    object CDSMovID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovID_OPCAB: TIntegerField
      FieldName = 'ID_OPCAB'
      Origin = 'ID_OPCAB'
      Required = True
    end
    object CDSMovCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object CDSMovDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSMovUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object CDSMovDEPOSITO_DESTINO: TIntegerField
      FieldName = 'DEPOSITO_DESTINO'
      Origin = 'DEPOSITO_DESTINO'
      Required = True
    end
    object CDSMovSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object CDSMovTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSMovCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSMovNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object CDSMovAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      Size = 1
    end
    object CDSMovESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object CDSMovEN_PLANIFICACION: TStringField
      FieldName = 'EN_PLANIFICACION'
      Origin = 'EN_PLANIFICACION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSMovPRODUCTOR: TStringField
      FieldName = 'PRODUCTOR'
      Origin = 'PRODUCTOR'
      ProviderFlags = []
      Size = 50
    end
    object CDSMovRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSMovESPECIFICACION: TStringField
      FieldName = 'ESPECIFICACION'
      Origin = 'ESPECIFICACION'
      Size = 30
    end
    object CDSMovPARTICION: TStringField
      FieldName = 'PARTICION'
      Origin = 'PARTICION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSMovCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object CDSMovCOSTO: TFloatField
      FieldName = 'COSTO'
      Origin = 'COSTO'
    end
    object CDSMovID_PRESU_CAB: TIntegerField
      FieldName = 'ID_PRESU_CAB'
      Origin = 'ID_PRESU_CAB'
      Required = True
    end
    object CDSMovID_PRESU_DET: TIntegerField
      FieldName = 'ID_PRESU_DET'
      Origin = 'ID_PRESU_DET'
      Required = True
    end
    object CDSMovMUESTRAALTERNATIVO: TStringField
      FieldName = 'MUESTRAALTERNATIVO'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSMovFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSMovFECHA_ENTREGA: TDateField
      FieldName = 'FECHA_ENTREGA'
      Origin = 'FECHA_ENTREGA'
    end
  end
  object DSPEstacion: TDataSetProvider
    DataSet = QEstaciones
    Options = []
    Left = 671
    Top = 291
  end
  object DSPMov: TDataSetProvider
    DataSet = QMov
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 63
    Top = 67
  end
  object DSPSubMov: TDataSetProvider
    DataSet = QSubMOv
    Options = []
    Left = 671
    Top = 435
  end
  object CDSSubMov: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSubMov'
    BeforeInsert = CDSSubMovBeforeInsert
    AfterPost = CDSSubMovAfterPost
    OnNewRecord = CDSSubMovNewRecord
    Left = 751
    Top = 435
    object CDSSubMovID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSSubMovID_DET_OP: TIntegerField
      FieldName = 'ID_DET_OP'
      Origin = 'ID_DET_OP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSSubMovCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object CDSSubMovDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSSubMovTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSSubMovCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSSubMovNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object CDSSubMovESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object CDSSubMovESTACION: TIntegerField
      FieldName = 'ESTACION'
      Origin = 'ESTACION'
      Required = True
    end
    object CDSSubMovKEY_ESTACION: TStringField
      FieldName = 'KEY_ESTACION'
      Origin = 'KEY_ESTACION'
      Required = True
      Size = 40
    end
    object CDSSubMovRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSSubMovMUESTRASECTOR: TIntegerField
      FieldName = 'MUESTRASECTOR'
      Origin = 'SECTOR'
      ProviderFlags = []
    end
    object CDSSubMovCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object CDSSubMovCANTIDAD_SALDO: TFloatField
      FieldName = 'CANTIDAD_SALDO'
      Origin = 'CANTIDAD_SALDO'
      Required = True
    end
    object CDSSubMovMUESTRACODGOALTERNATIVO: TStringField
      FieldName = 'MUESTRACODGOALTERNATIVO'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSSubMovFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSSubMovFECHAINICO: TDateField
      FieldName = 'FECHAINICO'
      Origin = 'FECHAINICO'
    end
    object CDSSubMovFECHAFINAL: TDateField
      FieldName = 'FECHAFINAL'
      Origin = 'FECHAFINAL'
    end
  end
  object DSSubMov: TDataSource
    DataSet = CDSSubMov
    Left = 831
    Top = 435
  end
  object ibgNextId: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_ORDENPRODUCCION_SUB_DET'
    SystemGenerators = False
    Left = 604
    Top = 529
  end
  object DBPeriodSource1: TDBPeriodSource
    AutoIncKey = False
    DataSource = DSSubMov
    ResourceMap = <>
    StartTimeField = 'FECHAINICO'
    EndTimeField = 'FECHAFINAL'
    KeyField = 'KEY_ESTACION'
    ReadOnly = False
    ResourceField = 'ESTACION'
    UpdateByQuery = False
    OnFieldsToItem = DBPeriodSource1FieldsToItem
    OnItemToFields = DBPeriodSource1ItemToFields
    AutoHeaderUpdate = True
    StartDate = 43071.000000000000000000
    EndDate = 43085.000000000000000000
    Left = 924
    Top = 441
  end
  object ActionList1: TActionList
    Left = 884
    Top = 201
    object Refresh: TAction
      Caption = 'Refresh'
      ShortCut = 116
      OnExecute = RefreshExecute
    end
    object Insertar: TAction
      Caption = 'Insertar'
      ShortCut = 8237
      OnExecute = InsertarExecute
    end
    object Deletear: TAction
      Caption = 'Deletear'
      ShortCut = 8238
      OnExecute = DeletearExecute
    end
    object Particion: TAction
      Caption = 'Particion'
      OnExecute = ParticionExecute
    end
    object GenerarParteDiario: TAction
      Caption = 'Generar Parte Diario'
      OnExecute = GenerarParteDiarioExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 596
    Top = 217
    object Particion1: TMenuItem
      Action = Particion
    end
    object GenerarParteDiario1: TMenuItem
      Action = GenerarParteDiario
    end
  end
  object ibgOProdDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_ORDENPRODUCCION_DET'
    SystemGenerators = False
    Left = 258
    Top = 72
  end
  object QMovAux: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end>
    SQL.Strings = (
      'select d.* from ordenproduccion_det d where d.id=:id')
    Left = 104
    Top = 152
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QMovAuxID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovAuxID_OPCAB: TIntegerField
      FieldName = 'ID_OPCAB'
      Origin = 'ID_OPCAB'
      Required = True
    end
    object QMovAuxCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QMovAuxDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QMovAuxUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QMovAuxCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QMovAuxDEPOSITO_DESTINO: TIntegerField
      FieldName = 'DEPOSITO_DESTINO'
      Origin = 'DEPOSITO_DESTINO'
      Required = True
    end
    object QMovAuxSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QMovAuxTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QMovAuxCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QMovAuxNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object QMovAuxAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      Size = 1
    end
    object QMovAuxESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object QMovAuxCOSTO: TFloatField
      FieldName = 'COSTO'
      Origin = 'COSTO'
    end
    object QMovAuxEN_PLANIFICACION: TStringField
      FieldName = 'EN_PLANIFICACION'
      Origin = 'EN_PLANIFICACION'
      FixedChar = True
      Size = 1
    end
    object QMovAuxESPECIFICACION: TStringField
      FieldName = 'ESPECIFICACION'
      Origin = 'ESPECIFICACION'
      Size = 30
    end
    object QMovAuxPARTICION: TStringField
      FieldName = 'PARTICION'
      Origin = 'PARTICION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QMovAuxID_PRESU_CAB: TIntegerField
      FieldName = 'ID_PRESU_CAB'
      Origin = 'ID_PRESU_CAB'
      Required = True
    end
    object QMovAuxID_PRESU_DET: TIntegerField
      FieldName = 'ID_PRESU_DET'
      Origin = 'ID_PRESU_DET'
      Required = True
    end
    object QMovAuxFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QMovAuxFECHA_ENTREGA: TDateField
      FieldName = 'FECHA_ENTREGA'
      Origin = 'FECHA_ENTREGA'
    end
  end
  object QMov: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end>
    SQL.Strings = (
      
        'select d.*,c.productor,cl.razon_social,st.reemplazo_stk as Muest' +
        'raAlternativo from ordenproduccion_det d'
      'left join ordenproduccion_cab c on c.id=d.id_opcab'
      'left join clientes cl on cl.codigo=c.cliente'
      'left join stock st on st.codigo_stk=d.codigo'
      'where d.en_planificacion='#39'N'#39' AND d.estado='#39'P'#39
      'order by d.id')
    Left = 16
    Top = 64
    object QMovID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovID_OPCAB: TIntegerField
      FieldName = 'ID_OPCAB'
      Origin = 'ID_OPCAB'
      Required = True
    end
    object QMovCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QMovDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QMovUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QMovCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QMovDEPOSITO_DESTINO: TIntegerField
      FieldName = 'DEPOSITO_DESTINO'
      Origin = 'DEPOSITO_DESTINO'
      Required = True
    end
    object QMovSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QMovTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QMovCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QMovNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object QMovAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      Size = 1
    end
    object QMovESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object QMovCOSTO: TFloatField
      FieldName = 'COSTO'
      Origin = 'COSTO'
    end
    object QMovEN_PLANIFICACION: TStringField
      FieldName = 'EN_PLANIFICACION'
      Origin = 'EN_PLANIFICACION'
      FixedChar = True
      Size = 1
    end
    object QMovESPECIFICACION: TStringField
      FieldName = 'ESPECIFICACION'
      Origin = 'ESPECIFICACION'
      Size = 30
    end
    object QMovPARTICION: TStringField
      FieldName = 'PARTICION'
      Origin = 'PARTICION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QMovID_PRESU_CAB: TIntegerField
      FieldName = 'ID_PRESU_CAB'
      Origin = 'ID_PRESU_CAB'
      Required = True
    end
    object QMovID_PRESU_DET: TIntegerField
      FieldName = 'ID_PRESU_DET'
      Origin = 'ID_PRESU_DET'
      Required = True
    end
    object QMovPRODUCTOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUCTOR'
      Origin = 'PRODUCTOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QMovRAZON_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QMovMUESTRAALTERNATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAALTERNATIVO'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
      ReadOnly = True
    end
    object QMovFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QMovFECHA_ENTREGA: TDateField
      FieldName = 'FECHA_ENTREGA'
      Origin = 'FECHA_ENTREGA'
    end
  end
  object QEstaciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select e.*,s.detalle as SectosDetalle from ORDENPRODUCC_ESTACION' +
        ' e'
      'left join ordenproduccion_sector s on s.id = e.sector')
    Left = 596
    Top = 289
  end
  object QOProduccion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.id_opcab from ordenproduccion_sub_det sd'
      'left join ordenproduccion_det d on d.id=sd.id_det_op'
      'where sd.id=:id')
    Left = 428
    Top = 361
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QOProduccionID_OPCAB: TIntegerField
      FieldName = 'ID_OPCAB'
      Origin = 'ID_OPCAB'
    end
  end
  object QBorrarMov: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from ordenproduccion_sub_det s where s.id=:id')
    Left = 980
    Top = 233
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QSubMOv: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end>
    SQL.Strings = (
      
        'select d.*,cl.razon_social,est.sector as MuestraSector,st.reempl' +
        'azo_stk as MuestraCodgoAlternativo from ordenproduccion_Sub_det ' +
        'd'
      'left join ordenproduccion_det det on det.id=d.id_det_op'
      'left join ordenproduccion_cab cab on cab.id=det.id_opcab'
      'left join ordenproducc_estacion est on est.id=d.estacion'
      'left join clientes cl on cl.codigo=cab.cliente'
      'left join stock st on st.codigo_stk=d.codigo'
      'where cab.estado='#39'P'#39
      '')
    Left = 580
    Top = 441
    object QSubMOvID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QSubMOvID_DET_OP: TIntegerField
      FieldName = 'ID_DET_OP'
      Origin = 'ID_DET_OP'
      Required = True
    end
    object QSubMOvCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QSubMOvDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QSubMOvCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QSubMOvCANTIDAD_SALDO: TFloatField
      FieldName = 'CANTIDAD_SALDO'
      Origin = 'CANTIDAD_SALDO'
      Required = True
    end
    object QSubMOvTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QSubMOvCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QSubMOvNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object QSubMOvESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object QSubMOvESTACION: TIntegerField
      FieldName = 'ESTACION'
      Origin = 'ESTACION'
      Required = True
    end
    object QSubMOvKEY_ESTACION: TStringField
      FieldName = 'KEY_ESTACION'
      Origin = 'KEY_ESTACION'
      Required = True
      Size = 40
    end
    object QSubMOvRAZON_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      ProviderFlags = []
      Size = 35
    end
    object QSubMOvMUESTRASECTOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASECTOR'
      Origin = 'SECTOR'
      ProviderFlags = []
    end
    object QSubMOvMUESTRACODGOALTERNATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACODGOALTERNATIVO'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
    end
    object QSubMOvFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QSubMOvFECHAINICO: TDateField
      FieldName = 'FECHAINICO'
      Origin = 'FECHAINICO'
    end
    object QSubMOvFECHAFINAL: TDateField
      FieldName = 'FECHAFINAL'
      Origin = 'FECHAFINAL'
    end
  end
  object QSubMovAux: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtBCD
        TargetDataType = dtDouble
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end>
    SQL.Strings = (
      'select d.* from ordenproduccion_Sub_det d where d.id = :id')
    Left = 908
    Top = 329
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QSubMovAuxID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QSubMovAuxID_DET_OP: TIntegerField
      FieldName = 'ID_DET_OP'
      Origin = 'ID_DET_OP'
      Required = True
    end
    object QSubMovAuxCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QSubMovAuxDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QSubMovAuxCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QSubMovAuxCANTIDAD_SALDO: TFloatField
      FieldName = 'CANTIDAD_SALDO'
      Origin = 'CANTIDAD_SALDO'
      Required = True
    end
    object QSubMovAuxFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QSubMovAuxTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QSubMovAuxCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QSubMovAuxNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object QSubMovAuxESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object QSubMovAuxFECHAINICO: TSQLTimeStampField
      FieldName = 'FECHAINICO'
      Origin = 'FECHAINICO'
    end
    object QSubMovAuxFECHAFINAL: TSQLTimeStampField
      FieldName = 'FECHAFINAL'
      Origin = 'FECHAFINAL'
    end
    object QSubMovAuxESTACION: TIntegerField
      FieldName = 'ESTACION'
      Origin = 'ESTACION'
      Required = True
    end
    object QSubMovAuxKEY_ESTACION: TStringField
      FieldName = 'KEY_ESTACION'
      Origin = 'KEY_ESTACION'
      Required = True
      Size = 40
    end
  end
  object QSubActualizaCant: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update ordenproduccion_sub_det s set s.cantidad_saldo=s.cantidad' +
        '_saldo - :cantidad,'
      
        '                                     s.cantidad=s.cantidad - :ca' +
        'ntidad,'
      '                                     s.fechafinal = :NuevaFecha'
      'where s.id = :id')
    Left = 444
    Top = 529
    ParamData = <
      item
        Name = 'CANTIDAD'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NUEVAFECHA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object FDEventAlerter1: TFDEventAlerter
    Connection = DMMain_FD.fdcGestion
    Names.Strings = (
      'ProduccionDetalle')
    Options.Timeout = 1000
    Left = 120
    Top = 304
  end
end
