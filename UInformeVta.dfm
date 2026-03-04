object FormInformeVta: TFormInformeVta
  Left = 87
  Top = 71
  BorderStyle = bsSingle
  Caption = 'Informe de Ventas y Compras'
  ClientHeight = 650
  ClientWidth = 1058
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1058
    Height = 593
    Align = alTop
    Color = clGradientInactiveCaption
    FullRepaint = False
    ParentBackground = False
    TabOrder = 0
    OnDblClick = Panel1DblClick
    object lbTotalVenta: TLabel
      Left = 208
      Top = 353
      Width = 118
      Height = 24
      Alignment = taRightJustify
      Caption = 'lbTotalVenta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbTotalCompra: TLabel
      Left = 36
      Top = 353
      Width = 137
      Height = 24
      Alignment = taRightJustify
      Caption = 'lbTotalCompra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label29: TLabel
      Left = 377
      Top = 249
      Width = 83
      Height = 13
      Caption = 'Percepciones Iva'
      FocusControl = DBEdit29
    end
    object RxLabel1: TJvLabel
      Left = 16
      Top = 8
      Width = 43
      Height = 13
      Caption = 'Sucursal'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object RxLabel2: TJvLabel
      Left = 248
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Desde'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object RxLabel3: TJvLabel
      Left = 360
      Top = 8
      Width = 30
      Height = 13
      Caption = 'Hasta'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object Label30: TLabel
      Left = 930
      Top = 485
      Width = 62
      Height = 16
      Caption = 'Dif.de IVA'
      Color = clBtnFace
      FocusControl = DBEdit12
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label31: TLabel
      Left = 3
      Top = 376
      Width = 136
      Height = 16
      Caption = 'Iva en Fc. de Compra'
      Color = clBtnFace
      FocusControl = DBEdit12
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label32: TLabel
      Left = 440
      Top = 372
      Width = 113
      Height = 16
      Caption = 'Iva en Fc. de Vtas'
      Color = clBtnFace
      FocusControl = DBEdit12
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label33: TLabel
      Left = 376
      Top = 300
      Width = 80
      Height = 13
      Caption = 'Retenciones IVA'
      FocusControl = DBEdit30
    end
    object JvLabel1: TJvLabel
      Left = 741
      Top = 61
      Width = 62
      Height = 13
      Caption = 'Retenciones'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object btIniciar: TBitBtn
      Left = 467
      Top = 534
      Width = 75
      Height = 28
      Caption = 'Iniciar'
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
        0303030303030303030303030303030303030303030303030303030303030303
        03030303030303030303030303030303030303030303FF030303030303030303
        03030303030303040403030303030303030303030303030303F8F8FF03030303
        03030303030303030303040202040303030303030303030303030303F80303F8
        FF030303030303030303030303040202020204030303030303030303030303F8
        03030303F8FF0303030303030303030304020202020202040303030303030303
        0303F8030303030303F8FF030303030303030304020202FA0202020204030303
        0303030303F8FF0303F8FF030303F8FF03030303030303020202FA03FA020202
        040303030303030303F8FF03F803F8FF0303F8FF03030303030303FA02FA0303
        03FA0202020403030303030303F8FFF8030303F8FF0303F8FF03030303030303
        FA0303030303FA0202020403030303030303F80303030303F8FF0303F8FF0303
        0303030303030303030303FA0202020403030303030303030303030303F8FF03
        03F8FF03030303030303030303030303FA020202040303030303030303030303
        0303F8FF0303F8FF03030303030303030303030303FA02020204030303030303
        03030303030303F8FF0303F8FF03030303030303030303030303FA0202020403
        030303030303030303030303F8FF0303F8FF03030303030303030303030303FA
        0202040303030303030303030303030303F8FF03F8FF03030303030303030303
        03030303FA0202030303030303030303030303030303F8FFF803030303030303
        030303030303030303FA0303030303030303030303030303030303F803030303
        0303030303030303030303030303030303030303030303030303030303030303
        0303}
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btIniciarClick
    end
    object GroupBox1: TGroupBox
      Left = 36
      Top = 51
      Width = 137
      Height = 299
      Caption = 'Compras'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object Label1: TLabel
        Left = 20
        Top = 15
        Width = 93
        Height = 13
        Caption = 'Total Fc de Compra'
        Color = clBtnFace
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 20
        Top = 56
        Width = 98
        Height = 13
        Caption = 'Total Nc. de Compra'
        Color = clBtnFace
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label3: TLabel
        Left = 20
        Top = 96
        Width = 95
        Height = 13
        Caption = 'Total Nd de Compra'
        Color = clBtnFace
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = 20
        Top = 137
        Width = 91
        Height = 13
        Caption = 'Total Compra Ctdo.'
        Color = clBtnFace
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label15: TLabel
        Left = 20
        Top = 186
        Width = 94
        Height = 13
        Caption = 'Total Neto Gravado'
        Color = clBtnFace
        FocusControl = DBEdit15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label16: TLabel
        Left = 20
        Top = 225
        Width = 91
        Height = 13
        Caption = 'Total Nexto Exento'
        Color = clBtnFace
        FocusControl = DBEdit16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Bevel2: TBevel
        Left = 7
        Top = 180
        Width = 124
        Height = 16
        Shape = bsTopLine
      end
      object Bevel4: TBevel
        Left = 10
        Top = 264
        Width = 123
        Height = 17
        Shape = bsTopLine
      end
      object DBEdit1: TDBEdit
        Left = 13
        Top = 31
        Width = 86
        Height = 21
        DataField = 'TOTAL_COMP_FC'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 13
        Top = 73
        Width = 86
        Height = 21
        DataField = 'TOTAL_COMP_NC'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 13
        Top = 112
        Width = 86
        Height = 21
        DataField = 'TOTAL_COMP_ND'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 13
        Top = 153
        Width = 86
        Height = 21
        DataField = 'TOTAL_COMP_FO'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit15: TDBEdit
        Left = 13
        Top = 202
        Width = 86
        Height = 21
        DataField = 'TOTAL_COMP_NETO_GRAVADO'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit16: TDBEdit
        Left = 13
        Top = 239
        Width = 86
        Height = 21
        DataField = 'TOTAL_COMP_NETO_EXENTO'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object edTotalNetoCompra: TJvCalcEdit
        Left = 12
        Top = 271
        Width = 87
        Height = 21
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowButton = False
        TabOrder = 6
        DecimalPlacesAlwaysShown = False
      end
    end
    object GroupBox2: TGroupBox
      Left = 200
      Top = 51
      Width = 143
      Height = 299
      Caption = 'Ventas'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object Label5: TLabel
        Left = 24
        Top = 15
        Width = 73
        Height = 13
        Caption = 'Total Fc de Vta'
        Color = clBtnFace
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label6: TLabel
        Left = 24
        Top = 56
        Width = 78
        Height = 13
        Caption = 'Total Nc. de Vta'
        Color = clBtnFace
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label7: TLabel
        Left = 24
        Top = 96
        Width = 80
        Height = 13
        Caption = 'Total ND de Vta.'
        Color = clBtnFace
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label8: TLabel
        Left = 24
        Top = 137
        Width = 74
        Height = 13
        Caption = 'Total Vta. Ctdo.'
        Color = clBtnFace
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label13: TLabel
        Left = 24
        Top = 186
        Width = 94
        Height = 13
        Caption = 'Total Neto Gravado'
        Color = clBtnFace
        FocusControl = DBEdit13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label14: TLabel
        Left = 24
        Top = 225
        Width = 89
        Height = 13
        Caption = 'Total Neto Exento '
        Color = clBtnFace
        FocusControl = DBEdit14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Bevel1: TBevel
        Left = 6
        Top = 180
        Width = 127
        Height = 17
        Shape = bsTopLine
      end
      object Bevel3: TBevel
        Left = 10
        Top = 264
        Width = 123
        Height = 17
        Shape = bsTopLine
      end
      object DBEdit5: TDBEdit
        Left = 18
        Top = 31
        Width = 87
        Height = 21
        DataField = 'TOTAL_VTA_FC'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit6: TDBEdit
        Left = 18
        Top = 73
        Width = 87
        Height = 21
        DataField = 'TOTAL_VTA_NC'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit7: TDBEdit
        Left = 18
        Top = 112
        Width = 87
        Height = 21
        DataField = 'TOTAL_VTA_ND'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit8: TDBEdit
        Left = 18
        Top = 153
        Width = 87
        Height = 21
        DataField = 'TOTAL_VTA_FO'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit13: TDBEdit
        Left = 19
        Top = 202
        Width = 87
        Height = 21
        DataField = 'TOTAL_VTA_NETO_GRAVADO'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit14: TDBEdit
        Left = 19
        Top = 239
        Width = 87
        Height = 21
        DataField = 'TOTAL_VTA_NETO_EXENTO'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object edTotalNetosVta: TJvCalcEdit
        Left = 18
        Top = 271
        Width = 87
        Height = 21
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowButton = False
        TabOrder = 6
        DecimalPlacesAlwaysShown = False
      end
    end
    object BitBtn2: TBitBtn
      Left = 629
      Top = 534
      Width = 75
      Height = 28
      Hint = 'Cerrar la ventana actual'
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
      TabOrder = 5
      OnClick = BitBtn2Click
    end
    object GroupBox3: TGroupBox
      Left = 606
      Top = 55
      Width = 129
      Height = 297
      Caption = 'Saldos Totales'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      object Label9: TLabel
        Left = 25
        Top = 188
        Width = 81
        Height = 13
        Caption = 'Total de Recibos'
        Color = clBtnFace
        FocusControl = DBEdit9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label10: TLabel
        Left = 25
        Top = 231
        Width = 78
        Height = 13
        Caption = 'Total de O.Pago'
        Color = clBtnFace
        FocusControl = DBEdit10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label11: TLabel
        Left = 25
        Top = 15
        Width = 78
        Height = 13
        Caption = 'Total Iva Credito'
        Color = clBtnFace
        FocusControl = DBEdit11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label12: TLabel
        Left = 25
        Top = 56
        Width = 76
        Height = 13
        Caption = 'Total Iva Debito'
        Color = clBtnFace
        FocusControl = DBEdit12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label17: TLabel
        Left = 25
        Top = 101
        Width = 73
        Height = 13
        Caption = 'Total IB Credito'
        Color = clBtnFace
        FocusControl = DBEdit17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label18: TLabel
        Left = 25
        Top = 145
        Width = 69
        Height = 13
        Caption = 'Total IB debito'
        Color = clBtnFace
        FocusControl = DBEdit18
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBEdit9: TDBEdit
        Left = 25
        Top = 205
        Width = 80
        Height = 21
        DataField = 'TOTAL_VTA_RC'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit10: TDBEdit
        Left = 25
        Top = 248
        Width = 80
        Height = 21
        DataField = 'TOTAL_VTA_OP'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit11: TDBEdit
        Left = 25
        Top = 31
        Width = 80
        Height = 21
        DataField = 'TOTAL_IVA_CREDITOFISCAL'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit12: TDBEdit
        Left = 25
        Top = 74
        Width = 80
        Height = 21
        DataField = 'TOTAL_IVA_DEBITOFISCAL'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit17: TDBEdit
        Left = 25
        Top = 118
        Width = 80
        Height = 21
        DataField = 'TOTAL_IB_CREDITO'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit18: TDBEdit
        Left = 25
        Top = 161
        Width = 80
        Height = 21
        DataField = 'TOTAL_IB_DEBITO'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
    end
    object UpDown1: TUpDown
      Left = 461
      Top = 24
      Width = 16
      Height = 20
      Hint = 'Cambia el Per'#237'odo'
      Min = -10000
      Max = 10000
      ParentShowHint = False
      Position = 100
      ShowHint = True
      TabOrder = 7
      OnClick = UpDown1Click
    end
    object btImprimir: TBitBtn
      Left = 548
      Top = 534
      Width = 75
      Height = 28
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
      TabOrder = 8
      OnClick = btImprimirClick
    end
    object dbcSucursal: TJvDBLookupCombo
      Left = 16
      Top = 24
      Width = 214
      Height = 23
      DisplayEmpty = 'Todas las Sucursales'
      EmptyValue = '-1'
      LookupField = 'CODIGO'
      LookupDisplay = 'DETALLE'
      LookupSource = DSBuscaSucu
      TabOrder = 9
      OnChange = btIniciarClick
      OnClick = btIniciarClick
    end
    object GroupBox4: TGroupBox
      Left = 362
      Top = 55
      Width = 115
      Height = 190
      Caption = 'Gastos Bco.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      object Label19: TLabel
        Left = 16
        Top = 15
        Width = 75
        Height = 13
        Caption = 'Total de Gastos'
        FocusControl = DBEdit19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 16
        Top = 56
        Width = 15
        Height = 13
        Caption = 'Iva'
        FocusControl = DBEdit20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 16
        Top = 96
        Width = 20
        Height = 13
        Caption = 'IIBB'
        FocusControl = DBEdit21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 16
        Top = 137
        Width = 54
        Height = 13
        Caption = 'Percep.IVA'
        FocusControl = DBEdit22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit19: TDBEdit
        Left = 15
        Top = 31
        Width = 80
        Height = 21
        DataField = 'TOTAL_GASTO_BCO'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit20: TDBEdit
        Left = 16
        Top = 73
        Width = 80
        Height = 21
        DataField = 'TOTAL_GASTO_BCO_IVA'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit21: TDBEdit
        Left = 16
        Top = 112
        Width = 80
        Height = 21
        DataField = 'TOTAL_GASTO_BCO_IIBB'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit22: TDBEdit
        Left = 16
        Top = 153
        Width = 80
        Height = 21
        DataField = 'TOTAL_GASTO_BCO_PERIVA'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
    object GroupBox5: TGroupBox
      Left = 483
      Top = 55
      Width = 115
      Height = 145
      Caption = 'Liquid. T de C.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      object Label23: TLabel
        Left = 16
        Top = 16
        Width = 46
        Height = 13
        Caption = 'Liq.de TC'
        FocusControl = DBEdit23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 16
        Top = 54
        Width = 15
        Height = 13
        Caption = 'Iva'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 16
        Top = 94
        Width = 20
        Height = 13
        Caption = 'IIBB'
        FocusControl = DBEdit25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit23: TDBEdit
        Left = 16
        Top = 31
        Width = 80
        Height = 21
        DataField = 'TOTAL_LIQ_TC'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit24: TDBEdit
        Left = 16
        Top = 69
        Width = 80
        Height = 21
        DataField = 'TOTAL_LIQ_TC_IVA'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit25: TDBEdit
        Left = 16
        Top = 109
        Width = 80
        Height = 21
        DataField = 'TOTAL_LIQ_TC_IIBB'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 568
      Width = 1056
      Height = 24
      Align = alBottom
      TabOrder = 12
    end
    object GroupBox6: TGroupBox
      Left = 483
      Top = 200
      Width = 115
      Height = 152
      Caption = 'Resumen TC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      object Label26: TLabel
        Left = 16
        Top = 21
        Width = 36
        Height = 13
        Caption = 'Res.TC'
        FocusControl = DBEdit26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 16
        Top = 63
        Width = 15
        Height = 13
        Caption = 'Iva'
        FocusControl = DBEdit27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 16
        Top = 104
        Width = 20
        Height = 13
        Caption = 'IIBB'
        FocusControl = DBEdit28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit26: TDBEdit
        Left = 16
        Top = 40
        Width = 80
        Height = 21
        DataField = 'TOTAL_RESUMEN_TC'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit27: TDBEdit
        Left = 16
        Top = 78
        Width = 80
        Height = 21
        DataField = 'TOTAL_RESUMEN_IVA_TC'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit28: TDBEdit
        Left = 16
        Top = 119
        Width = 80
        Height = 21
        DataField = 'TOTAL_RESUMEN_IIBB_TC'
        DataSource = DSInfVta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object DBEdit29: TDBEdit
      Left = 378
      Top = 268
      Width = 82
      Height = 21
      DataField = 'TOTAL_PERCP_IVA'
      DataSource = DSInfVta
      TabOrder = 14
    end
    object Desde: TJvDateEdit
      Left = 248
      Top = 24
      Width = 97
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
      ButtonWidth = 26
      PopupColor = clBtnFace
      ShowNullDate = False
      TabOrder = 0
    end
    object Hasta: TJvDateEdit
      Left = 360
      Top = 24
      Width = 97
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
      ButtonWidth = 26
      PopupColor = clBtnFace
      ShowNullDate = False
      TabOrder = 1
    end
    object dbgIvaCompra: TDBGrid
      Left = 2
      Top = 397
      Width = 432
      Height = 108
      DataSource = DSIvaCompra
      Options = [dgTitles, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 15
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'TIPOCPBTE'
          Width = 23
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE_OPERACION'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TASA'
          Title.Alignment = taCenter
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object dbgIvaVta: TDBGrid
      Left = 440
      Top = 397
      Width = 426
      Height = 108
      DataSource = DSIvaVta
      Options = [dgTitles, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 16
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'TIPOCPBTE'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE_OPERACION'
          Title.Alignment = taCenter
          Width = 113
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TASA'
          Title.Alignment = taCenter
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUM'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object edIvaCompra: TJvCalcEdit
      Left = 298
      Top = 511
      Width = 120
      Height = 27
      DisplayFormat = ',0.00'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 17
      ZeroEmpty = False
      DisabledTextColor = clBlack
      DecimalPlacesAlwaysShown = False
    end
    object edIvaVta: TJvCalcEdit
      Left = 732
      Top = 511
      Width = 120
      Height = 27
      DisplayFormat = ',0.00'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 18
      ZeroEmpty = False
      DisabledTextColor = clBlack
      DecimalPlacesAlwaysShown = False
    end
    object edTotalIva: TJvCalcEdit
      Left = 872
      Top = 511
      Width = 120
      Height = 27
      DisplayFormat = ',0.00'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 19
      ZeroEmpty = False
      DisabledTextColor = clBlack
      DecimalPlacesAlwaysShown = False
    end
    object Button3: TButton
      Left = 10
      Top = 516
      Width = 125
      Height = 19
      Caption = 'Filtrar comprobantes'
      TabOrder = 20
      OnClick = Button3Click
    end
    object rgIVA: TRadioGroup
      Left = 872
      Top = 4
      Width = 168
      Height = 70
      Caption = 'Por fiscalizacion'
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'que Declaran Iva'
        'qne no Declaran Iva')
      TabOrder = 21
      OnClick = btIniciarClick
    end
    object cxGrid1: TcxGrid
      Left = 741
      Top = 80
      Width = 308
      Height = 219
      TabOrder = 22
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSRetenciones
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
            Column = cxGrid1DBTableView1IMPUESTO
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0.00'
            Kind = skSum
            Column = cxGrid1DBTableView1IMPUESTO
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'Id'
          DataBinding.FieldName = 'ID_RETENCION'
          HeaderAlignmentHorz = taCenter
          Width = 30
        end
        object cxGrid1DBTableView1DETALLE: TcxGridDBColumn
          Caption = 'Detalle'
          DataBinding.FieldName = 'DETALLE'
          HeaderAlignmentHorz = taCenter
          Options.ShowEditButtons = isebNever
          Options.CellMerging = True
          Width = 139
        end
        object cxGrid1DBTableView1MUESTRASUC: TcxGridDBColumn
          Caption = 'Sucursal'
          DataBinding.FieldName = 'MUESTRASUC'
          Visible = False
          GroupIndex = 0
          HeaderAlignmentHorz = taCenter
          Width = 167
        end
        object cxGrid1DBTableView1IMPUESTO: TcxGridDBColumn
          Caption = 'Importe'
          DataBinding.FieldName = 'IMPUESTO'
          HeaderAlignmentHorz = taCenter
          Width = 85
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object DBEdit30: TDBEdit
      Left = 377
      Top = 319
      Width = 82
      Height = 21
      DataField = 'TOTAL_RETENCIONES_IVA'
      DataSource = DSInfVta
      TabOrder = 23
    end
    object chRetenciones: TCheckBox
      Left = 872
      Top = 462
      Width = 137
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Restar retenciones IVA'
      TabOrder = 24
      OnClick = chRetencionesClick
    end
    object chPercepciones: TCheckBox
      Left = 152
      Top = 517
      Width = 129
      Height = 17
      Caption = 'Sumar Percepciones'
      Checked = True
      State = cbChecked
      TabOrder = 25
      OnClick = chPercepcionesClick
    end
  end
  object DSInfVta: TDataSource
    DataSet = QInfVta
    Left = 320
    Top = 432
  end
  object frxReporte: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.758628472220000000
    ReportOptions.LastChange = 39638.758628472220000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 272
    Top = 248
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
    end
  end
  object frDBInf: TfrxDBDataset
    UserName = 'frDBInf'
    CloseDataSource = False
    DataSource = DSInfVta
    BCDToCurrency = False
    DataSetOptions = []
    Left = 504
    Top = 288
    FieldDefs = <
      item
        FieldName = 'TOTAL_COMP_FC'
        FieldAlias = 'TOTAL_COMP_FC'
      end
      item
        FieldName = 'TOTAL_COMP_NC'
        FieldAlias = 'TOTAL_COMP_NC'
      end
      item
        FieldName = 'TOTAL_COMP_ND'
        FieldAlias = 'TOTAL_COMP_ND'
      end
      item
        FieldName = 'TOTAL_COMP_FO'
        FieldAlias = 'TOTAL_COMP_FO'
      end
      item
        FieldName = 'TOTAL_VTA_FC'
        FieldAlias = 'TOTAL_VTA_FC'
      end
      item
        FieldName = 'TOTAL_VTA_NC'
        FieldAlias = 'TOTAL_VTA_NC'
      end
      item
        FieldName = 'TOTAL_VTA_ND'
        FieldAlias = 'TOTAL_VTA_ND'
      end
      item
        FieldName = 'TOTAL_VTA_FO'
        FieldAlias = 'TOTAL_VTA_FO'
      end
      item
        FieldName = 'TOTAL_VTA_RC'
        FieldAlias = 'TOTAL_VTA_RC'
      end
      item
        FieldName = 'TOTAL_VTA_OP'
        FieldAlias = 'TOTAL_VTA_OP'
      end
      item
        FieldName = 'TOTAL_IVA_CREDITOFISCAL'
        FieldAlias = 'TOTAL_IVA_CREDITOFISCAL'
      end
      item
        FieldName = 'TOTAL_IVA_DEBITOFISCAL'
        FieldAlias = 'TOTAL_IVA_DEBITOFISCAL'
      end
      item
        FieldName = 'TOTAL_VTA_NETO_GRAVADO'
        FieldAlias = 'TOTAL_VTA_NETO_GRAVADO'
      end
      item
        FieldName = 'TOTAL_VTA_NETO_EXENTO'
        FieldAlias = 'TOTAL_VTA_NETO_EXENTO'
      end
      item
        FieldName = 'TOTAL_IB_CREDITO'
        FieldAlias = 'TOTAL_IB_CREDITO'
      end
      item
        FieldName = 'TOTAL_IB_DEBITO'
        FieldAlias = 'TOTAL_IB_DEBITO'
      end
      item
        FieldName = 'TOTAL_COMP_NETO_GRAVADO'
        FieldAlias = 'TOTAL_COMP_NETO_GRAVADO'
      end
      item
        FieldName = 'TOTAL_COMP_NETO_EXENTO'
        FieldAlias = 'TOTAL_COMP_NETO_EXENTO'
      end
      item
        FieldName = 'TOTAL_PERCP_IVA'
        FieldAlias = 'TOTAL_PERCP_IVA'
      end
      item
        FieldName = 'TOTAL_GASTO_BCO'
        FieldAlias = 'TOTAL_GASTO_BCO'
      end
      item
        FieldName = 'TOTAL_GASTO_BCO_IVA'
        FieldAlias = 'TOTAL_GASTO_BCO_IVA'
      end
      item
        FieldName = 'TOTAL_GASTO_BCO_IIBB'
        FieldAlias = 'TOTAL_GASTO_BCO_IIBB'
      end
      item
        FieldName = 'TOTAL_GASTO_BCO_PERIVA'
        FieldAlias = 'TOTAL_GASTO_BCO_PERIVA'
      end
      item
        FieldName = 'TOTAL_LIQ_TC'
        FieldAlias = 'TOTAL_LIQ_TC'
      end
      item
        FieldName = 'TOTAL_LIQ_TC_IVA'
        FieldAlias = 'TOTAL_LIQ_TC_IVA'
      end
      item
        FieldName = 'TOTAL_LIQ_TC_IIBB'
        FieldAlias = 'TOTAL_LIQ_TC_IIBB'
      end
      item
        FieldName = 'TOTAL_RESUMEN_TC'
        FieldAlias = 'TOTAL_RESUMEN_TC'
      end
      item
        FieldName = 'TOTAL_RESUMEN_IVA_TC'
        FieldAlias = 'TOTAL_RESUMEN_IVA_TC'
      end
      item
        FieldName = 'TOTAL_RESUMEN_IIBB_TC'
        FieldAlias = 'TOTAL_RESUMEN_IIBB_TC'
      end>
  end
  object DSBuscaSucu: TDataSource
    DataSet = QBuscaSuc
    Left = 152
    Top = 408
  end
  object DSIvaCompra: TDataSource
    DataSet = CDSIvaCompra
    Left = 216
    Top = 480
  end
  object DSIvaVta: TDataSource
    DataSet = CDSIvaVta
    Left = 520
    Top = 464
  end
  object CDSIvaCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPIvaCompra'
    Left = 160
    Top = 464
    object CDSIvaCompraTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSIvaCompraDETALLE_OPERACION: TStringField
      DisplayLabel = 'Det.Operacion'
      FieldName = 'DETALLE_OPERACION'
      Origin = 'DETALLE_OPERACION'
      ProviderFlags = []
    end
    object CDSIvaCompraDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 15
    end
    object CDSIvaCompraIMPUESTO: TStringField
      FieldName = 'IMPUESTO'
      Origin = 'IMPUESTO'
      ProviderFlags = []
      Size = 3
    end
    object CDSIvaCompraTASA: TFloatField
      DisplayLabel = '% Tasa'
      FieldName = 'TASA'
      Origin = 'TASA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object CDSIvaCompraSUM: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'SUM'
      Origin = 'SUM'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
  end
  object DSPIvaCompra: TDataSetProvider
    DataSet = QIvaCompra
    Options = []
    Left = 96
    Top = 456
  end
  object CDSIvaVta: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPIvaVta'
    Left = 376
    Top = 536
    object CDSIvaVtaTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSIvaVtaDETALLE_OPERACION: TStringField
      DisplayLabel = 'Det.Operacion'
      FieldName = 'DETALLE_OPERACION'
      Origin = 'DETALLE_OPERACION'
      ProviderFlags = []
    end
    object CDSIvaVtaDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 15
    end
    object CDSIvaVtaTASA: TFloatField
      DisplayLabel = '% Tasa'
      FieldName = 'TASA'
      Origin = 'TASA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object CDSIvaVtaSUM: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'SUM'
      Origin = 'SUM'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
  end
  object DSPIvaVta: TDataSetProvider
    DataSet = QIvaVta
    Options = []
    Left = 328
    Top = 544
  end
  object DSRetenciones: TDataSource
    DataSet = QRet
    Left = 832
    Top = 320
  end
  object QBuscaSuc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from sucursal')
    Left = 64
    Top = 400
    object QBuscaSucCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaSucDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
    object QBuscaSucDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
    end
    object QBuscaSucLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
    end
    object QBuscaSucTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Origin = 'TELEFONO1'
      Size = 15
    end
    object QBuscaSucTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Origin = 'TELEFONO2'
      Size = 15
    end
    object QBuscaSucRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
    end
    object QBuscaSucAPLICA_PERCEPCION_IIBB: TStringField
      FieldName = 'APLICA_PERCEPCION_IIBB'
      Origin = 'APLICA_PERCEPCION_IIBB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscaSucGENERA_XML_COMUN: TStringField
      FieldName = 'GENERA_XML_COMUN'
      Origin = 'GENERA_XML_COMUN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscaSucHOST: TStringField
      FieldName = 'HOST'
      Origin = 'HOST'
      Size = 250
    end
    object QBuscaSucCERTIFICADO_ELEC: TStringField
      FieldName = 'CERTIFICADO_ELEC'
      Origin = 'CERTIFICADO_ELEC'
      Size = 100
    end
    object QBuscaSucCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QBuscaSucRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object QInfVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from calcular_ventas(:sucursal,:desde,:hasta,:iva)')
    Left = 256
    Top = 424
    ParamData = <
      item
        Position = 1
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'iva'
        DataType = ftString
        ParamType = ptInput
      end>
    object QInfVtaTOTAL_COMP_FC: TFloatField
      FieldName = 'TOTAL_COMP_FC'
      Origin = 'TOTAL_COMP_FC'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_COMP_NC: TFloatField
      FieldName = 'TOTAL_COMP_NC'
      Origin = 'TOTAL_COMP_NC'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_COMP_ND: TFloatField
      FieldName = 'TOTAL_COMP_ND'
      Origin = 'TOTAL_COMP_ND'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_COMP_FO: TFloatField
      FieldName = 'TOTAL_COMP_FO'
      Origin = 'TOTAL_COMP_FO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_VTA_FC: TFloatField
      FieldName = 'TOTAL_VTA_FC'
      Origin = 'TOTAL_VTA_FC'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_VTA_NC: TFloatField
      FieldName = 'TOTAL_VTA_NC'
      Origin = 'TOTAL_VTA_NC'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_VTA_ND: TFloatField
      FieldName = 'TOTAL_VTA_ND'
      Origin = 'TOTAL_VTA_ND'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_VTA_FO: TFloatField
      FieldName = 'TOTAL_VTA_FO'
      Origin = 'TOTAL_VTA_FO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_VTA_RC: TFloatField
      FieldName = 'TOTAL_VTA_RC'
      Origin = 'TOTAL_VTA_RC'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_VTA_OP: TFloatField
      FieldName = 'TOTAL_VTA_OP'
      Origin = 'TOTAL_VTA_OP'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_IVA_CREDITOFISCAL: TFloatField
      FieldName = 'TOTAL_IVA_CREDITOFISCAL'
      Origin = 'TOTAL_IVA_CREDITOFISCAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_IVA_DEBITOFISCAL: TFloatField
      FieldName = 'TOTAL_IVA_DEBITOFISCAL'
      Origin = 'TOTAL_IVA_DEBITOFISCAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_VTA_NETO_GRAVADO: TFloatField
      FieldName = 'TOTAL_VTA_NETO_GRAVADO'
      Origin = 'TOTAL_VTA_NETO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_VTA_NETO_EXENTO: TFloatField
      FieldName = 'TOTAL_VTA_NETO_EXENTO'
      Origin = 'TOTAL_VTA_NETO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_IB_CREDITO: TFloatField
      FieldName = 'TOTAL_IB_CREDITO'
      Origin = 'TOTAL_IB_CREDITO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_IB_DEBITO: TFloatField
      FieldName = 'TOTAL_IB_DEBITO'
      Origin = 'TOTAL_IB_DEBITO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_COMP_NETO_GRAVADO: TFloatField
      FieldName = 'TOTAL_COMP_NETO_GRAVADO'
      Origin = 'TOTAL_COMP_NETO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_PERCP_IVA: TFloatField
      FieldName = 'TOTAL_PERCP_IVA'
      Origin = 'TOTAL_PERCP_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_COMP_NETO_EXENTO: TFloatField
      FieldName = 'TOTAL_COMP_NETO_EXENTO'
      Origin = 'TOTAL_COMP_NETO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_GASTO_BCO: TFloatField
      FieldName = 'TOTAL_GASTO_BCO'
      Origin = 'TOTAL_GASTO_BCO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_GASTO_BCO_IVA: TFloatField
      FieldName = 'TOTAL_GASTO_BCO_IVA'
      Origin = 'TOTAL_GASTO_BCO_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_GASTO_BCO_IIBB: TFloatField
      FieldName = 'TOTAL_GASTO_BCO_IIBB'
      Origin = 'TOTAL_GASTO_BCO_IIBB'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_GASTO_BCO_PERIVA: TFloatField
      FieldName = 'TOTAL_GASTO_BCO_PERIVA'
      Origin = 'TOTAL_GASTO_BCO_PERIVA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_LIQ_TC: TFloatField
      FieldName = 'TOTAL_LIQ_TC'
      Origin = 'TOTAL_LIQ_TC'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_LIQ_TC_IVA: TFloatField
      FieldName = 'TOTAL_LIQ_TC_IVA'
      Origin = 'TOTAL_LIQ_TC_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_LIQ_TC_IIBB: TFloatField
      FieldName = 'TOTAL_LIQ_TC_IIBB'
      Origin = 'TOTAL_LIQ_TC_IIBB'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_LIQ_TC_PERIVA: TFloatField
      FieldName = 'TOTAL_LIQ_TC_PERIVA'
      Origin = 'TOTAL_LIQ_TC_PERIVA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_RESUMEN_TC: TFloatField
      FieldName = 'TOTAL_RESUMEN_TC'
      Origin = 'TOTAL_RESUMEN_TC'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_RESUMEN_IVA_TC: TFloatField
      FieldName = 'TOTAL_RESUMEN_IVA_TC'
      Origin = 'TOTAL_RESUMEN_IVA_TC'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_RESUMEN_IIBB_TC: TFloatField
      FieldName = 'TOTAL_RESUMEN_IIBB_TC'
      Origin = 'TOTAL_RESUMEN_IIBB_TC'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QInfVtaTOTAL_RETENCIONES_IVA: TFloatField
      FieldName = 'TOTAL_RETENCIONES_IVA'
      Origin = 'TOTAL_RETENCIONES_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object QRet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select l.id_retencion,t.detalle,s.detalle as MuestraSuc,sum(l.im' +
        'porte) as Impuesto  from listado_retenciones ( :codigo, :FechaIn' +
        'icial, :FechaFinal ) l'
      'left join sucursal s on s.codigo= l.sucursal'
      'left join t_retenciones t on t.id_retencion=l.id_retencion'
      'where ( l.sucursal = :sucursal or :sucursal = -1 )'
      'group by l.id_retencion,t.detalle,s.detalle'
      '')
    Left = 760
    Top = 320
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'FechaInicial'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'FechaFinal'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRetID_RETENCION: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_RETENCION'
      Origin = 'ID_RETENCION'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRetDETALLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRetMUESTRASUC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUC'
      Origin = 'MUESTRASUC'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QRetIMPUESTO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IMPUESTO'
      Origin = 'IMPUESTO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object QIvaCompra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select t.tipocpbte, t.detalle,t.tasa, sum(t.importe),t.detalle_o' +
        'peracion,t.impuesto from total_iva_compra (:sucursal,:desde,:has' +
        'ta) T'
      
        'group by t.tipocpbte,t.detalle,t.tasa,detalle_operacion,t.impues' +
        'to')
    Left = 40
    Top = 456
    ParamData = <
      item
        Position = 1
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object QIvaVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select t.tipocpbte, t.detalle,t.tasa, sum(t.importe),t.detalle_o' +
        'peracion from total_iva_venta (:sucursal,:desde,:hasta) T'
      'group by  t.tipocpbte, t.detalle,t.tasa,t.detalle_operacion')
    Left = 256
    Top = 528
    ParamData = <
      item
        Position = 1
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
end
