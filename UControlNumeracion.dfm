object FormControlNumeracion: TFormControlNumeracion
  Left = 217
  Top = 89
  Caption = 'Control de Numeraci'#243'n de Facturas de Venta'
  ClientHeight = 669
  ClientWidth = 1034
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1034
    Height = 645
    Align = alClient
    TabOrder = 0
    DesignSize = (
      1034
      645)
    object Label3: TLabel
      Left = 536
      Top = 8
      Width = 31
      Height = 13
      Caption = 'Desde'
    end
    object Label4: TLabel
      Left = 632
      Top = 8
      Width = 28
      Height = 13
      Caption = 'Hasta'
    end
    object Label5: TLabel
      Left = 16
      Top = 51
      Width = 113
      Height = 13
      Caption = 'Listado de comrobantes'
    end
    object Label6: TLabel
      Left = 778
      Top = 54
      Width = 43
      Height = 13
      Caption = 'Faltantes'
    end
    object Label8: TLabel
      Left = 16
      Top = 8
      Width = 87
      Height = 13
      Caption = 'Sucursal de Venta'
    end
    object Label9: TLabel
      Left = 210
      Top = 8
      Width = 87
      Height = 13
      Caption = 'Tipo Comprobante'
    end
    object Label2: TLabel
      Left = 463
      Top = 8
      Width = 29
      Height = 13
      Caption = 'Prefijo'
    end
    object DBText1: TDBText
      Left = 16
      Top = 615
      Width = 65
      Height = 17
      Anchors = [akLeft, akBottom]
      DataField = 'ID_FC'
      DataSource = DSFactura
      ExplicitTop = 605
    end
    object JvDBStatusLabel1: TJvDBStatusLabel
      Left = 664
      Top = 617
      Width = 96
      Height = 13
      DataSource = DSFactura
      Style = lsRecordNo
      CalcRecCount = True
      Anchors = [akLeft, akBottom]
      Transparent = True
      WordWrap = True
      ExplicitTop = 607
    end
    object Label7: TLabel
      Left = 747
      Top = 5
      Width = 31
      Height = 13
      Caption = 'Desde'
    end
    object Label10: TLabel
      Left = 858
      Top = 5
      Width = 28
      Height = 13
      Caption = 'Hasta'
    end
    object DBText2: TDBText
      Left = 186
      Top = 615
      Width = 143
      Height = 17
      Anchors = [akLeft, akBottom]
      DataField = 'CAE'
      DataSource = DSFactura
      ExplicitTop = 605
    end
    object DBText3: TDBText
      Left = 359
      Top = 615
      Width = 65
      Height = 17
      Anchors = [akLeft, akBottom]
      DataField = 'CAE_VTO'
      DataSource = DSFactura
      ExplicitTop = 605
    end
    object edDesde: TEdit
      Left = 536
      Top = 24
      Width = 90
      Height = 21
      TabOrder = 0
      OnExit = edDesdeExit
    end
    object edHasta: TEdit
      Left = 632
      Top = 24
      Width = 90
      Height = 21
      TabOrder = 1
      OnExit = edHastaExit
    end
    object mFaltantes: TMemo
      Left = 903
      Top = 70
      Width = 125
      Height = 535
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 2
    end
    object btOk: TBitBtn
      Left = 811
      Top = 610
      Width = 75
      Height = 28
      Anchors = [akLeft, akBottom]
      Caption = 'OK'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 3
      OnClick = btOkClick
    end
    object btSalir: TBitBtn
      Left = 888
      Top = 610
      Width = 75
      Height = 28
      Hint = 'Cerrar la ventana actual'
      Anchors = [akLeft, akBottom]
      Caption = '&Salir'
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
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030707070707
        070707070707070707070707070703FFFFFFFFFFFFFFFFFFFFFFFF0303030303
        03FFF8F8F8F8F8F8F8F8F8F8F8F8FF07FF07FF07F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8030303030303F8F8F8F8F8F8F8F8F8F8F8F8F80707FF07FF07F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8FF030303FFFFF8F8F80404040404040000F8F8F8FFFFFF
        040404040404F8F8F8F8F8F8F8F8F8F8F8030303F8F8F8F8F803030303030304
        FD05000007FFFFFF0403030303030303030303F8FFF8F8F8FF030303F8FF0303
        030303030303030405FD0500FFFFFFFF0403030303030303030303F8F807F8F8
        FF030303F8FF03030303030303030304FD05FD00FFFFFFFF0403030303030303
        030303F8FFF807F8FF030303F8FF0303030303030303030405FD0500FFFEFFFE
        0403030303030303030303F8F807F8F8FF030303F8FF03030303030303030304
        FD05FD00FFFFFFFF0403030303030303030303F8FFF807F8FF030303F8FF0303
        030303030303030405FD0500FFFEFFFE0403030303030303030303F8F807F8F8
        FF030303F8FF03030303030303030304FD05FD00FFFFFFFF0403030303030303
        030303F8FFF807F8FF030303F8FF0303030303030303030405FD0500FFFEFFFE
        0403030303030303030303F8F807F8F8FF030303F8FF03030303030303030304
        FD05FD00FEFFFEFF0403030303030303030303F8FFF807F8FF030303F8FF0303
        030303030303030405FD0500FFFEFFFE0403030303030303030303F8F807F8F8
        FF030303F8FF03030303030303030304FD05FD00FEFFFEFF0403030303030303
        030303F8FFF8FFF8FFFFFFFFF8FF030303030303030303040404040404040404
        0403030303030303030303F8F8F8F8F8F8F8F8F8F80303030303030303030303
        03030303030303030303030303030303030303030303FFFFFFFFFFFF03030303
        0303030303030303030000000000000303030303030303030303030303F8F8F8
        F8F8F8FF0303030303030303030303030300FAFAFAFA00030303030303030303
        0303030303F8FFFFFFFFF8FF0303030303030303030303030300000000000003
        03030303030303030303030303F8F8F8F8F8F803030303030303}
      NumGlyphs = 2
      TabOrder = 4
      OnClick = btSalirClick
    end
    object dblSucursal: TDBLookupComboBox
      Left = 16
      Top = 24
      Width = 188
      Height = 21
      KeyField = 'CODIGO'
      ListField = 'DETALLE'
      ListSource = DSSucursal
      TabOrder = 5
      OnClick = dblSucursalClick
    end
    object pnLetraPrefijo: TPanel
      Left = 407
      Top = 5
      Width = 50
      Height = 49
      TabOrder = 7
      object Label1: TLabel
        Left = 9
        Top = 3
        Width = 24
        Height = 13
        Caption = 'Letra'
      end
      object edLetra: TEdit
        Left = 9
        Top = 19
        Width = 33
        Height = 21
        CharCase = ecUpperCase
        Color = clInfoBk
        ReadOnly = True
        TabOrder = 0
      end
    end
    object edPrefijo: TEdit
      Left = 463
      Top = 24
      Width = 58
      Height = 21
      Color = clWhite
      TabOrder = 8
      OnExit = edPrefijoExit
    end
    object desde: TJvDateEdit
      Left = 747
      Top = 24
      Width = 105
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
      TabOrder = 9
    end
    object hasta: TJvDateEdit
      Left = 858
      Top = 24
      Width = 105
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
      TabOrder = 10
    end
    object UpDown1: TUpDown
      Left = 969
      Top = 24
      Width = 16
      Height = 20
      Hint = 'Cambia el Per'#237'odo'
      Min = -32657
      Max = 32657
      ParentShowHint = False
      Position = 100
      ShowHint = True
      TabOrder = 11
      OnClick = UpDown1Click
    end
    object CheckBox1: TCheckBox
      Left = 858
      Top = 47
      Width = 105
      Height = 17
      Caption = 'Filtrar entre Fecha'
      TabOrder = 12
      OnClick = CheckBox1Click
    end
    object BitBtn1: TBitBtn
      Left = 522
      Top = 610
      Width = 96
      Height = 28
      Anchors = [akLeft, akBottom]
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
      TabOrder = 13
      OnClick = BitBtn1Click
    end
    object dbLComprobantes: TJvDBLookupCombo
      Left = 210
      Top = 24
      Width = 191
      Height = 21
      DropDownAlign = daRight
      DropDownWidth = 400
      DisplayAllFields = True
      DisplayEmpty = '------------------'
      EmptyValue = '-1'
      EmptyItemColor = clInfoBk
      LookupField = 'ID_COMPROBANTE'
      LookupDisplay = 'Tipo_Comprob;Clase_comprob;DENOMINACION;Prefijo;numero'
      LookupSource = DSComprobantes
      RightTrimmedLookup = True
      TabOrder = 6
      OnCloseUp = dbLComprobantesCloseUp
    end
    object chbPorDia: TCheckBox
      Left = 904
      Top = 1
      Width = 76
      Height = 17
      Caption = 'Inc.por Dia'
      TabOrder = 14
    end
    object cxGrid1: TcxGrid
      Left = 3
      Top = 71
      Width = 898
      Height = 533
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 15
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellDblClick = cxGrid1DBTableView1CellDblClick
        OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
        DataController.DataSource = DSFactura
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1ID_FC: TcxGridDBColumn
          DataBinding.FieldName = 'ID_FC'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Styles.Content = cxStyle2
        end
        object cxGrid1DBTableView1FECHAVTA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHAVTA'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 84
        end
        object cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'TIPOCPBTE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 46
        end
        object cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'CLASECPBTE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 48
        end
        object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 66
        end
        object cxGrid1DBTableView1NOMBRE: TcxGridDBColumn
          DataBinding.FieldName = 'NOMBRE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 276
        end
        object cxGrid1DBTableView1LETRAFAC: TcxGridDBColumn
          DataBinding.FieldName = 'LETRAFAC'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 59
        end
        object cxGrid1DBTableView1SUCFAC: TcxGridDBColumn
          DataBinding.FieldName = 'SUCFAC'
          HeaderAlignmentHorz = taCenter
          Width = 53
        end
        object cxGrid1DBTableView1NUMEROFAC: TcxGridDBColumn
          DataBinding.FieldName = 'NUMEROFAC'
          HeaderAlignmentHorz = taCenter
          Width = 66
        end
        object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
          DataBinding.FieldName = 'TOTAL'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 103
        end
        object cxGrid1DBTableView1ANULADO: TcxGridDBColumn
          DataBinding.FieldName = 'ANULADO'
          Visible = False
        end
        object cxGrid1DBTableView1SUCURSAL: TcxGridDBColumn
          DataBinding.FieldName = 'SUCURSAL'
          Visible = False
        end
        object cxGrid1DBTableView1NRO_CUIT: TcxGridDBColumn
          DataBinding.FieldName = 'NRO_CUIT'
          Visible = False
        end
        object cxGrid1DBTableView1COND_IVA: TcxGridDBColumn
          DataBinding.FieldName = 'COND_IVA'
          Visible = False
        end
        object cxGrid1DBTableView1CAE: TcxGridDBColumn
          DataBinding.FieldName = 'CAE'
          Visible = False
        end
        object cxGrid1DBTableView1CAE_VTO: TcxGridDBColumn
          DataBinding.FieldName = 'CAE_VTO'
          Visible = False
        end
        object cxGrid1DBTableView1NETO: TcxGridDBColumn
          DataBinding.FieldName = 'NETO'
          Visible = False
        end
        object cxGrid1DBTableView1IVA1: TcxGridDBColumn
          DataBinding.FieldName = 'IVA1'
          Visible = False
        end
        object cxGrid1DBTableView1IVA2: TcxGridDBColumn
          DataBinding.FieldName = 'IVA2'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object stEstado: TStatusBar
    Left = 0
    Top = 645
    Width = 1034
    Height = 24
    Panels = <>
    SimplePanel = True
  end
  object DSFactura: TDataSource
    DataSet = CDSFacturas
    Left = 264
    Top = 160
  end
  object frNovedades: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39658.000455185180000000
    ReportOptions.LastChange = 39658.000455185180000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 456
    Top = 160
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      Frame.Typ = []
      MirrorMode = []
    end
  end
  object frdbFacturas: TfrxDBDataset
    UserName = 'frdbFacturas'
    CloseDataSource = False
    DataSet = CDSFacturas
    BCDToCurrency = False
    DataSetOptions = []
    Left = 560
    Top = 536
    FieldDefs = <
      item
        FieldName = 'LETRAFAC'
        FieldAlias = 'LETRAFAC'
      end
      item
        FieldName = 'SUCFAC'
        FieldAlias = 'SUCFAC'
      end
      item
        FieldName = 'NUMEROFAC'
        FieldAlias = 'NUMEROFAC'
      end
      item
        FieldName = 'FECHAVTA'
        FieldAlias = 'FECHAVTA'
      end
      item
        FieldName = 'ANULADO'
        FieldAlias = 'ANULADO'
      end>
  end
  object DSSucursal: TDataSource
    DataSet = CDSSucursal
    Left = 208
    Top = 416
  end
  object DSComprobantes: TDataSource
    DataSet = QComprobantes
    Left = 128
    Top = 560
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 136
    Top = 416
    object CDSSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = []
    Left = 64
    Top = 416
  end
  object CDSFacturas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFacturas'
    AfterPost = CDSFacturasAfterPost
    Left = 216
    Top = 160
    object CDSFacturasTIPOCPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSFacturasCLASECPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSFacturasLETRAFAC: TStringField
      Alignment = taCenter
      DisplayLabel = 'Letra'
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFacturasSUCFAC: TStringField
      Alignment = taCenter
      DisplayLabel = 'Prefijo'
      FieldName = 'SUCFAC'
      Origin = 'SUCFAC'
      Size = 4
    end
    object CDSFacturasFECHAVTA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha'
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
    object CDSFacturasANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFacturasSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object CDSFacturasCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSFacturasNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSFacturasID_FC: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Id'
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSFacturasNUMEROFAC: TStringField
      Alignment = taCenter
      DisplayLabel = 'Numero'
      FieldName = 'NUMEROFAC'
      Origin = 'NUMEROFAC'
      OnSetText = CDSFacturasNUMEROFACSetText
      Size = 8
    end
    object CDSFacturasNRO_CUIT: TStringField
      FieldName = 'NRO_CUIT'
      Origin = 'NRO_CUIT'
      Size = 13
    end
    object CDSFacturasCOND_IVA: TStringField
      FieldName = 'COND_IVA'
      Origin = 'COND_IVA'
    end
    object CDSFacturasCAE: TStringField
      FieldName = 'CAE'
      Origin = 'CAE'
      Size = 50
    end
    object CDSFacturasCAE_VTO: TSQLTimeStampField
      FieldName = 'CAE_VTO'
      Origin = 'CAE_VTO'
    end
    object CDSFacturasTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
    end
    object CDSFacturasNETO: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'NETO'
      Origin = 'NETO'
      DisplayFormat = ',0.00'
    end
    object CDSFacturasIVA1: TFloatField
      DisplayLabel = 'Iva 1'
      FieldName = 'IVA1'
      Origin = 'IVA1'
      DisplayFormat = ',0.00'
    end
    object CDSFacturasIVA2: TFloatField
      DisplayLabel = 'Iva 2'
      FieldName = 'IVA2'
      Origin = 'IVA2'
      DisplayFormat = ',0.00'
    end
  end
  object DSPFacturas: TDataSetProvider
    DataSet = QFacturas
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 160
    Top = 160
  end
  object DataToXLS1: TDataToXLS
    DataSet = CDSFacturas
    Columns = <
      item
        DataField = 'FECHAVTA'
        Title = 'Fecha'
        ColWidth = 3071
      end
      item
        DataField = 'TIPOCPBTE'
        Title = 'Tp'
        ColWidth = 1258
      end
      item
        DataField = 'CLASECPBTE'
        Title = 'Cl'
        ColWidth = 1147
      end
      item
        DataField = 'CODIGO'
        Title = 'Codigo'
        ColWidth = 2109
      end
      item
        DataField = 'NOMBRE'
        Title = 'Nombre'
        ColWidth = 11248
      end
      item
        DataField = 'COND_IVA'
      end
      item
        DataField = 'NRO_CUIT'
        Title = 'Nro.Cuit'
      end
      item
        DataField = 'LETRAFAC'
        Title = 'Letra'
        ColWidth = 1628
      end
      item
        DataField = 'SUCFAC'
        Title = 'Prefijo'
        ColWidth = 2294
      end
      item
        DataField = 'NUMEROFAC'
        Title = 'Numero'
        ColWidth = 2516
      end
      item
        DataField = 'NETO'
        Title = 'Neto'
        DataType = ctDouble
      end
      item
        DataField = 'IVA1'
        Title = 'Iva 1'
        DataType = ctDouble
      end
      item
        DataField = 'IVA2'
        Title = 'Iva 2'
        DataType = ctDouble
      end
      item
        DataField = 'TOTAL'
        Title = 'Total'
        Alignment = taRightJustify
        ColWidth = 3700
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
    Left = 660
    Top = 360
  end
  object SaveDialog1: TSaveDialog
    Left = 768
    Top = 568
  end
  object QFacturas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cp.* from control_nro_cpbte (:id,:desde,:hasta) cp'
      'order by cp.sucfac,cp.numerofac')
    Left = 96
    Top = 160
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'desde'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QComprobantes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'Select c.id_comprobante,c.tipo_comprob,c.clase_comprob,c.letra,c' +
        '.prefijo,'
      'c.numero,c.numerarcion_propia,c.sucursal,c.denominacion'
      ' from  comprobantes c where'
      'c.Compra_venta='#39'V'#39' and'
      
        'c.tipo_comprob in ('#39'FC'#39','#39'FO'#39','#39'TK'#39','#39'NC'#39','#39'ND'#39') and c.sucursal=:suc' +
        ' and c.numerarcion_propia<>'#39'X'#39
      'order by c.tipo_comprob,c.Letra')
    Left = 56
    Top = 552
    ParamData = <
      item
        Position = 1
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QComprobantesID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QComprobantesTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobantesCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobantesLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QComprobantesPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object QComprobantesNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object QComprobantesNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object QComprobantesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QComprobantesDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
  end
  object QPrimerCpbte: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select min(numerofac)from fcvtacab'
      'where letrafac=:letra and'
      '      sucfac=:prefijo and'
      '      tipocpbte=:Tipo and'
      '      clasecpbte=:clase and'
      '      sucursal =:sucursal')
    Left = 96
    Top = 224
    ParamData = <
      item
        Name = 'LETRA'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'PREFIJO'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Name = 'CLASE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QPrimerCpbteMIN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MIN'
      Origin = 'MIN'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
  end
  object QCambiarNro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update fcvtacab f set f.numerofac=:numero where f.id_fc=:id')
    Left = 360
    Top = 160
    ParamData = <
      item
        Name = 'NUMERO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 40
    Top = 104
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clMoneyGreen
    end
  end
  object QBorrarAplTemp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from MOVAPLICACCVTA_TEMP')
    Left = 360
    Top = 240
  end
  object QDesactivaTrigerDel: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'ALTER TRIGGER TBD_MOVAPLICACCVTA  INACTIVE')
    Left = 464
    Top = 232
  end
  object QBKAplicaciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'INSERT INTO MOVAPLICACCVTA_TEMP (ID_MOV,ID_MOVCCVTA,FECHA,CLIENT' +
        'E,ID_CPBTE,'
      
        '                                 TIPOCPBTE,CLASECPBTE,NUMEROCPBT' +
        'E,IMPORTE,'
      
        '                                 APLICA_ID_CPBTE,APLICA_TIPOCPBT' +
        'E,APLICA_CLASECPBTE,'
      
        '                                 APLICA_NROCPBTE,DETALLE,CONCILI' +
        'ADO)'
      'select m.* from movaplicaccvta m'
      '    where m.aplica_id_cpbte=:id and m.aplica_tipocpbte=:tipo')
    Left = 368
    Top = 312
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end
      item
        Name = 'TIPO'
        ParamType = ptInput
      end>
  end
  object QActivaTrigerDel: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'ALTER TRIGGER TBD_MOVAPLICACCVTA  ACTIVE')
    Left = 480
    Top = 312
  end
  object QRsAplicaciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'INSERT INTO MOVAPLICACCVTA (ID_MOV,ID_MOVCCVTA,FECHA,CLIENTE,ID_' +
        'CPBTE,'
      
        '                                 TIPOCPBTE,CLASECPBTE,NUMEROCPBT' +
        'E,IMPORTE,'
      
        '                                 APLICA_ID_CPBTE,APLICA_TIPOCPBT' +
        'E,APLICA_CLASECPBTE,'
      
        '                                 APLICA_NROCPBTE,DETALLE,CONCILI' +
        'ADO)'
      'select m.* from movaplicaccvta_temp m')
    Left = 368
    Top = 384
  end
  object QControlSaldoMov: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update movccvta m set m.saldo= m.saldo - (select sum(ma.importe)' +
        ' from movaplicaccvta ma where ma.id_movccvta=m.id_movccvta)'
      'where m.id_cpbte = :id and m.tipocpbte = :tipo')
    Left = 464
    Top = 392
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end
      item
        Name = 'TIPO'
        ParamType = ptInput
      end>
  end
  object spBorraAplicaciones: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'BORRAR_APLICACIONES_A_FCVTA'
    Left = 768
    Top = 216
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    AutoFlush = True
    SubStorages = <>
    Left = 608
    Top = 144
  end
  object JvFormStorage: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    Options = [fpState, fpSize, fpLocation, fpActiveControl]
    StoredValues = <>
    Left = 664
    Top = 144
  end
end
