object FormCambioPrecios: TFormCambioPrecios
  Left = 205
  Top = 84
  Caption = 'Actualizaci'#243'n de Precios General'
  ClientHeight = 584
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object pcGeneral: TPageControl
    Left = 0
    Top = 0
    Width = 818
    Height = 584
    ActivePage = pag1
    Align = alClient
    HotTrack = True
    Style = tsButtons
    TabOrder = 0
    object pag1: TTabSheet
      Caption = 'Parametros de Cambio'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 810
        Height = 553
        Align = alClient
        Anchors = [akLeft, akTop, akRight]
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          810
          553)
        object Label2: TLabel
          Left = 7
          Top = 46
          Width = 29
          Height = 13
          Caption = 'Rubro'
        end
        object Label3: TLabel
          Left = 7
          Top = 88
          Width = 48
          Height = 13
          Caption = 'SubRubro'
        end
        object Label4: TLabel
          Left = 7
          Top = 4
          Width = 30
          Height = 13
          Caption = 'Marca'
        end
        object Label7: TLabel
          Left = 8
          Top = 278
          Width = 93
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Art'#237'culos Afectados'
        end
        object JvDBStatusLabel1: TJvDBStatusLabel
          Left = 647
          Top = 273
          Width = 96
          Height = 13
          DataSource = DSStock
          Style = lsRecordNo
          Anchors = [akTop, akRight]
          Transparent = True
        end
        object pnBoot: TPanel
          Left = 1
          Top = 519
          Width = 808
          Height = 33
          Align = alBottom
          ParentColor = True
          TabOrder = 10
          DesignSize = (
            808
            33)
          object gEstado: TGauge
            Left = 10
            Top = 6
            Width = 225
            Height = 19
            Progress = 0
          end
          object BitBtn1: TBitBtn
            Left = 465
            Top = 4
            Width = 75
            Height = 26
            Action = Consulta
            Anchors = [akRight]
            Caption = 'C&onsultar'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF0000000000737B7300737B7300FF00FF00FF00
              FF000000DE0000000000737B7300737B7300737B7300737B7300737B7300FF00
              FF00FF00FF0000000000BDBDBD0000000000737B7300FF00FF00FF00FF000000
              00000000DE0000009400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              0000BDBDBD00E7E7E700E7E7E70000000000FF00FF00FF00FF00FF00FF000000
              DE000000DE000000940000000000FF00FF00FF00FF0000000000BDBDBD00E7E7
              E700E7E7E70000000000E7E7E70000000000FF00FF00FF00FF00000000000000
              DE00636BFF000000DE000000940000000000BDBDBD00E7E7E700E7E7E7000000
              0000E7E7E700E7E7E700E7E7E70000000000FF00FF00FF00FF00636BFF00636B
              FF0000000000000000000000940000000000E7E7E70000000000E7E7E700E7E7
              E700E7E7E700E7E7E700E7E7E70000000000FF00FF00FF00FF00FF00FF000000
              0000FF00FF00000000000000DE0000009400E7E7E700E7E7E70000000000E7E7
              E700E7E7E70000000000E7E7E70000000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000000000000000940000000000E7E7E700E7E7E7000000
              0000E7E7E700E7E7E700E7E7E70000000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000E7E7E7000000DE000000940000000000E7E7E700E7E7
              E700E7E7E700E7E7E700FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000E7E7E70000000000636BFF000000000000000000E7E7
              E700FFFFFF00BDBDBD00E7E7E70000000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000E7E7E700E7E7E70000000000E7E7E700FFFFFF00BDBD
              BD00E7E7E70000000000E7E7E70000000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000E7E7E700E7E7E700FFFFFF00BDBDBD00E7E7E7000000
              0000E7E7E700E7E7E700FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF00BDBDBD00E7E7E70000000000E7E7E700E7E7
              E700FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000E7E7E70000000000E7E7E700E7E7E700FFFFFF000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000E7E7E700E7E7E700FFFFFF0000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            TabOrder = 0
          end
          object BitBtn2: TBitBtn
            Left = 384
            Top = 4
            Width = 76
            Height = 26
            Action = Calcular
            Anchors = [akRight]
            Caption = 'Calc&ular'
            Glyph.Data = {
              06020000424D0602000000000000760000002800000028000000140000000100
              0400000000009001000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333333333333333333333333333333333333333333333333FFFFFFFFFFFFFF
              FFFF300000000000000000033777777777777777777F302FFFF6262444444603
              37F7777333377777737F3062626262600000020337F3333333377777737F3026
              262626262626260337F3333333333333337F3062626262626262620337F33333
              33333333337F3026262626262626260337F3333333333333337F306262626262
              6262620337F3333333333333337F3026262626262626260337F3FFF3333F3FFF
              337F306FFF6262F2FFF2620337F77733FF7F7773337F302F262FF6FFFF262603
              37F7FF377F777733337F306FF26FF2FFFFF2620337F773377377777F337F302F
              26262626262F260337F7FFF333333337F37F306FFF626262626FF20337F77733
              33333337737F3026262626262626260337F3333333333333337F306262626262
              6262620337FFFFFFFFFFFFFFFF7F300000000000000000033777777777777777
              7773333333333333333333333333333333333333333333333333333333333333
              33333333333333333333}
            NumGlyphs = 2
            TabOrder = 1
          end
          object BitBtn3: TBitBtn
            Left = 547
            Top = 4
            Width = 74
            Height = 26
            Action = Confirma
            Anchors = [akRight]
            Caption = '&Confirma'
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
            ModalResult = 1
            NumGlyphs = 2
            TabOrder = 2
          end
          object BitBtn4: TBitBtn
            Left = 627
            Top = 4
            Width = 74
            Height = 26
            Action = Cancelar
            Anchors = [akRight]
            Caption = 'C&ancelar'
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333333333000033338833333333333333333F333333333333
              0000333911833333983333333388F333333F3333000033391118333911833333
              38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
              911118111118333338F3338F833338F3000033333911111111833333338F3338
              3333F8330000333333911111183333333338F333333F83330000333333311111
              8333333333338F3333383333000033333339111183333333333338F333833333
              00003333339111118333333333333833338F3333000033333911181118333333
              33338333338F333300003333911183911183333333383338F338F33300003333
              9118333911183333338F33838F338F33000033333913333391113333338FF833
              38F338F300003333333333333919333333388333338FFF830000333333333333
              3333333333333333333888330000333333333333333333333333333333333333
              0000}
            ModalResult = 2
            NumGlyphs = 2
            TabOrder = 3
          end
          object btClose: TBitBtn
            Left = 708
            Top = 4
            Width = 75
            Height = 26
            Anchors = [akRight]
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
            OnClick = btCloseClick
          end
        end
        object chbMarca: TCheckBox
          Left = 328
          Top = 23
          Width = 137
          Height = 17
          Caption = 'Seleciona por &Marca'
          TabOrder = 2
          OnClick = chbMarcaClick
        end
        object chbRubro: TCheckBox
          Left = 328
          Top = 64
          Width = 145
          Height = 17
          Caption = 'Selecciona por &Rubro'
          TabOrder = 5
          OnClick = chbRubroClick
        end
        object chbSubRubro: TCheckBox
          Left = 328
          Top = 105
          Width = 161
          Height = 17
          Caption = 'Selecciona por &Sub Rubro'
          TabOrder = 8
          OnClick = chbSubRubroClick
        end
        object edMarca: TEdit
          Left = 80
          Top = 22
          Width = 233
          Height = 21
          Color = clInfoBk
          Enabled = False
          TabOrder = 1
        end
        object edRubro: TEdit
          Left = 80
          Top = 63
          Width = 233
          Height = 21
          Color = clInfoBk
          Enabled = False
          TabOrder = 4
        end
        object edSubRubro: TEdit
          Left = 80
          Top = 105
          Width = 233
          Height = 21
          Color = clInfoBk
          Enabled = False
          TabOrder = 7
        end
        object GroupBox1: TGroupBox
          Left = 1
          Top = 133
          Width = 794
          Height = 134
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Columnas Visibles'
          DockSite = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          object Label1: TLabel
            Left = 104
            Top = 16
            Width = 85
            Height = 13
            Caption = 'Variaci'#243'n en %'
          end
          object Label5: TLabel
            Left = 288
            Top = 16
            Width = 85
            Height = 13
            Caption = 'Variaci'#243'n en %'
          end
          object Label8: TLabel
            Left = 8
            Top = 90
            Width = 42
            Height = 13
            Caption = 'Dep'#243'sito'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 498
            Top = 16
            Width = 85
            Height = 13
            Caption = 'Variaci'#243'n en %'
          end
          object chbCostoExento: TCheckBox
            Left = 8
            Top = 34
            Width = 97
            Height = 17
            Caption = 'Costo Exento'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            OnClick = chbCostoExentoClick
          end
          object chbMargen: TCheckBox
            Left = 185
            Top = 110
            Width = 97
            Height = 17
            Caption = 'Margen x Depo.'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 8
            OnClick = chbMargenClick
          end
          object chbFPGravado: TCheckBox
            Left = 185
            Top = 66
            Width = 97
            Height = 17
            Caption = 'F.P. Gravado'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 6
            OnClick = chbFPGravadoClick
          end
          object chbCostoGravado: TCheckBox
            Left = 8
            Top = 66
            Width = 97
            Height = 17
            Caption = 'Costo Grav.'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 2
            OnClick = chbCostoGravadoClick
          end
          object chbFPExento: TCheckBox
            Left = 185
            Top = 35
            Width = 97
            Height = 17
            Caption = 'F.P. Exento'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 4
            OnClick = chbFPExentoClick
          end
          object chbSombraExento: TCheckBox
            Left = 400
            Top = 34
            Width = 113
            Height = 17
            Caption = 'C.Exento Sombra'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 10
            OnClick = chbSombraExentoClick
          end
          object chbSombraGravado: TCheckBox
            Left = 400
            Top = 66
            Width = 97
            Height = 17
            Caption = 'C.Grav.Sombra'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 12
            OnClick = chbSombraGravadoClick
          end
          object dbcDeposito: TJvDBLookupCombo
            Left = 3
            Top = 109
            Width = 166
            Height = 21
            DisplayEmpty = 'Sin Seleccion'
            EmptyValue = '-1'
            LookupField = 'ID'
            LookupDisplay = 'NOMBRE'
            LookupSource = DSDeposito
            TabOrder = 14
            OnChange = dbcDepositoChange
            OnClick = dbcDepositoClick
          end
          object rgSumaRemplaza: TRadioGroup
            Left = 601
            Top = 73
            Width = 185
            Height = 47
            Caption = 'Modo del Margen'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemIndex = 0
            Items.Strings = (
              'Suma al Margen Actual'
              'Reemplaza el actual')
            ParentFont = False
            TabOrder = 15
          end
          object edcCostoExento: TJvCalcEdit
            Left = 104
            Top = 33
            Width = 65
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            Color = clBtnFace
            DisplayFormat = ',0.00 ;-,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowButton = False
            TabOrder = 1
            DecimalPlacesAlwaysShown = False
          end
          object edcFPExento: TJvCalcEdit
            Left = 296
            Top = 33
            Width = 65
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            Color = clBtnFace
            DisplayFormat = ',0.00 ;-,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowButton = False
            TabOrder = 5
            DecimalPlacesAlwaysShown = False
          end
          object edcMargen: TJvCalcEdit
            Left = 296
            Top = 106
            Width = 65
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            Color = clBtnFace
            DisplayFormat = ',0.00 ;-,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowButton = False
            TabOrder = 9
            DecimalPlacesAlwaysShown = False
          end
          object edcFPGravado: TJvCalcEdit
            Left = 296
            Top = 62
            Width = 65
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            Color = clBtnFace
            DisplayFormat = ',0.00 ;-,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowButton = False
            TabOrder = 7
            DecimalPlacesAlwaysShown = False
          end
          object edcCostoGravado: TJvCalcEdit
            Left = 104
            Top = 62
            Width = 65
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            Color = clBtnFace
            DisplayFormat = ',0.00 ;-,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowButton = False
            TabOrder = 3
            DecimalPlacesAlwaysShown = False
          end
          object edcSombraExento: TJvCalcEdit
            Left = 504
            Top = 33
            Width = 65
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            Color = clBtnFace
            DisplayFormat = ',0.00 ;-,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowButton = False
            TabOrder = 11
            DecimalPlacesAlwaysShown = False
          end
          object edcSombraGrav: TJvCalcEdit
            Left = 504
            Top = 62
            Width = 65
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            Color = clBtnFace
            DisplayFormat = ',0.00 ;-,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowButton = False
            TabOrder = 13
            DecimalPlacesAlwaysShown = False
          end
        end
        object ceMarca: TJvComboEdit
          Left = 8
          Top = 22
          Width = 65
          Height = 21
          ButtonWidth = 20
          ClickKey = 16397
          Color = clBtnFace
          Enabled = False
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          TabOrder = 0
          Text = ''
          OnButtonClick = BuscarMarcaExecute
          OnChange = ceMarcaChange
          OnKeyPress = ceMarcaKeyPress
        end
        object ceRubro: TJvComboEdit
          Left = 8
          Top = 63
          Width = 65
          Height = 21
          ButtonWidth = 20
          ClickKey = 16397
          Color = clBtnFace
          Enabled = False
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          TabOrder = 3
          Text = ''
          OnButtonClick = BuscarRubroExecute
          OnChange = ceMarcaChange
          OnKeyPress = ceRubroKeyPress
        end
        object ceSubRubro: TJvComboEdit
          Left = 8
          Top = 105
          Width = 65
          Height = 21
          ButtonWidth = 20
          ClickKey = 16397
          Color = clBtnFace
          Enabled = False
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          TabOrder = 6
          Text = ''
          OnButtonClick = BuscarSubRubroExecute
          OnChange = ceMarcaChange
          OnKeyPress = ceSubRubroKeyPress
        end
        object cxGStock: TcxGrid
          Left = 1
          Top = 297
          Width = 808
          Height = 222
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'iMaginary'
          object cxGStockDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = DSStock
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cxGStockDBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Moving = False
              Width = 76
            end
            object cxGStockDBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Moving = False
            end
            object cxGStockDBTableView1COSTO_EXENTO: TcxGridDBColumn
              DataBinding.FieldName = 'COSTO_EXENTO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Moving = False
              Width = 95
            end
            object cxGStockDBTableView1NEW_COSTO_EXENTO: TcxGridDBColumn
              DataBinding.FieldName = 'NEW_COSTO_EXENTO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Moving = False
              Width = 95
            end
            object cxGStockDBTableView1COSTO_GRAVADO: TcxGridDBColumn
              DataBinding.FieldName = 'COSTO_GRAVADO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Moving = False
              Width = 95
            end
            object cxGStockDBTableView1NEW_COSTO_GRAVADO: TcxGridDBColumn
              DataBinding.FieldName = 'NEW_COSTO_GRAVADO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Moving = False
              Width = 95
            end
            object cxGStockDBTableView1FPRECIO_EXENTO: TcxGridDBColumn
              DataBinding.FieldName = 'FPRECIO_EXENTO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Moving = False
              Width = 95
            end
            object cxGStockDBTableView1NEW_FPRECIO_EXENTO: TcxGridDBColumn
              DataBinding.FieldName = 'NEW_FPRECIO_EXENTO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Moving = False
              Width = 95
            end
            object cxGStockDBTableView1FPRECIO_GRAVADO: TcxGridDBColumn
              DataBinding.FieldName = 'FPRECIO_GRAVADO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Moving = False
              Width = 95
            end
            object cxGStockDBTableView1NEW_FPRECIO_GRAVADO: TcxGridDBColumn
              DataBinding.FieldName = 'NEW_FPRECIO_GRAVADO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Moving = False
              Width = 95
            end
            object cxGStockDBTableView1SOMBRA_GRAVADO: TcxGridDBColumn
              DataBinding.FieldName = 'SOMBRA_GRAVADO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Moving = False
              Width = 95
            end
            object cxGStockDBTableView1NEW_SOMBRA_GRAVADO: TcxGridDBColumn
              DataBinding.FieldName = 'NEW_SOMBRA_GRAVADO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Moving = False
              Width = 95
            end
            object cxGStockDBTableView1SOMBRA_EXENTO: TcxGridDBColumn
              DataBinding.FieldName = 'SOMBRA_EXENTO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Moving = False
              Width = 95
            end
            object cxGStockDBTableView1NEW_SOMBRA_EXENTO: TcxGridDBColumn
              DataBinding.FieldName = 'NEW_SOMBRA_EXENTO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Moving = False
              Width = 95
            end
            object cxGStockDBTableView1MARGEN: TcxGridDBColumn
              DataBinding.FieldName = 'MARGEN'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Moving = False
            end
          end
          object cxGStockLevel1: TcxGridLevel
            GridView = cxGStockDBTableView1
          end
        end
      end
    end
    object pag2: TTabSheet
      Caption = 'Historial'
      ImageIndex = 1
      object DBText1: TDBText
        Left = 159
        Top = 249
        Width = 56
        Height = 18
        AutoSize = True
        DataField = 'MUESTRAMARCA'
        DataSource = DSHistorial
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 159
        Top = 265
        Width = 56
        Height = 18
        AutoSize = True
        DataField = 'MUESTRARUBRO'
        DataSource = DSHistorial
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 159
        Top = 281
        Width = 56
        Height = 18
        AutoSize = True
        DataField = 'MUESTRASUBRUBRO'
        DataSource = DSHistorial
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 8
        Top = 248
        Width = 42
        Height = 18
        Caption = 'Marca'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 8
        Top = 264
        Width = 38
        Height = 18
        Caption = 'Rubro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 8
        Top = 280
        Width = 65
        Height = 18
        Caption = 'Sub Rubro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 522
        Top = 284
        Width = 120
        Height = 15
        Caption = 'Articulos Afectados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
      end
      object dbgHistorial: TDBGrid
        Left = 8
        Top = 8
        Width = 558
        Height = 233
        DataSource = DSHistorial
        DrawingStyle = gdsGradient
        FixedColor = clGreen
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = PopupMenu
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'ID'
            ReadOnly = True
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'FECHA'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COSTO_EXENTO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COSTO_GRAVADO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Color = clAqua
            Expanded = False
            FieldName = 'FPRECIO_EXENTO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Color = clAqua
            Expanded = False
            FieldName = 'FPRECIO_GRAVADO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 305
        Width = 665
        Height = 227
        DataSource = DSArticukosAfectados
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
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
            Width = 66
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
            Width = 221
            Visible = True
          end
          item
            Color = 16776176
            Expanded = False
            FieldName = 'COSTO_OLD'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Color = 16776176
            Expanded = False
            FieldName = 'COSTO_NEW'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 78
            Visible = True
          end
          item
            Color = clMoneyGreen
            Expanded = False
            FieldName = 'FPRECIO_OLD'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 88
            Visible = True
          end
          item
            Color = clMoneyGreen
            Expanded = False
            FieldName = 'FPRECIO_NEW'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 85
            Visible = True
          end>
      end
    end
  end
  object ActionList1: TActionList
    Left = 624
    Top = 80
    object Consulta: TAction
      Caption = 'C&onsultar'
      OnExecute = ConsultaExecute
    end
    object BuscarMarca: TAction
      Caption = 'BuscarMarca'
      OnExecute = BuscarMarcaExecute
    end
    object BuscarRubro: TAction
      Caption = 'BuscarRubro'
      OnExecute = BuscarRubroExecute
    end
    object BuscarSubRubro: TAction
      Caption = 'BuscarSubRubro'
      OnExecute = BuscarSubRubroExecute
    end
    object Calcular: TAction
      Caption = 'Calc&ular'
      ShortCut = 16451
      OnExecute = CalcularExecute
    end
    object Cancelar: TAction
      Caption = 'C&ancelar'
      OnExecute = CancelarExecute
    end
    object Confirma: TAction
      Caption = '&Confirma'
      OnExecute = ConfirmaExecute
    end
    object BorrarActaulizacion: TAction
      Caption = 'Borrar Actaulizacion'
      OnExecute = BorrarActaulizacionExecute
    end
  end
  object DSPStock: TDataSetProvider
    DataSet = QStock
    Options = [poAllowCommandText]
    Left = 100
    Top = 304
  end
  object DSDeposito: TDataSource
    DataSet = CDSDepositos
    Left = 742
    Top = 152
  end
  object DSHistorial: TDataSource
    DataSet = CDSHistorial
    Left = 668
    Top = 184
  end
  object DSArticukosAfectados: TDataSource
    DataSet = CDSArticulosAfectados
    Left = 788
    Top = 429
  end
  object PopupMenu: TPopupMenu
    Left = 628
    Top = 24
    object BorrarActaulizacion1: TMenuItem
      Action = BorrarActaulizacion
    end
  end
  object CDSStock: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'deposito'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'marca'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'subrub'
        ParamType = ptInput
      end>
    ProviderName = 'DSPStock'
    Left = 148
    Top = 304
    object CDSStockCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object CDSStockDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSStockCOSTO_EXENTO: TFloatField
      DisplayLabel = 'C.Exento'
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockCOSTO_GRAVADO: TFloatField
      DisplayLabel = 'C.Gravado'
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockFPRECIO_EXENTO: TFloatField
      DisplayLabel = 'Pre.Exento'
      FieldName = 'FPRECIO_EXENTO'
      Origin = 'FPRECIO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockFPRECIO_GRAVADO: TFloatField
      DisplayLabel = 'Pre.Gravado'
      FieldName = 'FPRECIO_GRAVADO'
      Origin = 'FPRECIO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockSOMBRA_EXENTO: TFloatField
      DisplayLabel = 'Sbr.Exento'
      FieldName = 'SOMBRA_EXENTO'
      Origin = 'SOMBRA_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockSOMBRA_GRAVADO: TFloatField
      DisplayLabel = 'Sbr.Gravado'
      FieldName = 'SOMBRA_GRAVADO'
      Origin = 'SOMBRA_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockNEW_COSTO_EXENTO: TFloatField
      DisplayLabel = 'C.Nuevo Exento'
      FieldName = 'NEW_COSTO_EXENTO'
      Origin = 'NEW_COSTO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockNEW_COSTO_GRAVADO: TFloatField
      DisplayLabel = 'C.Nuevo Gravado'
      FieldName = 'NEW_COSTO_GRAVADO'
      Origin = 'NEW_COSTO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockNEW_FPRECIO_EXENTO: TFloatField
      DisplayLabel = 'F.P.Nuevo Exento'
      FieldName = 'NEW_FPRECIO_EXENTO'
      Origin = 'NEW_FPRECIO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockNEW_FPRECIO_GRAVADO: TFloatField
      DisplayLabel = 'F.P.Nueo Gravado'
      FieldName = 'NEW_FPRECIO_GRAVADO'
      Origin = 'NEW_FPRECIO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockNEW_SOMBRA_EXENTO: TFloatField
      DisplayLabel = 'Sbr.Nuevo Exento'
      FieldName = 'NEW_SOMBRA_EXENTO'
      Origin = 'NEW_SOMBRA_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockNEW_SOMBRA_GRAVADO: TFloatField
      DisplayLabel = 'Sbr.Nuevo Gravado'
      FieldName = 'NEW_SOMBRA_GRAVADO'
      Origin = 'NEW_SOMBRA_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockMARGEN: TFloatField
      DisplayLabel = 'Margen'
      FieldName = 'MARGEN'
      Origin = 'MARGEN'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSStock: TDataSource
    DataSet = CDSStock
    OnStateChange = DSStockStateChange
    Left = 200
    Top = 304
  end
  object CDSBuscaMarca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaMarca'
    Left = 456
    Top = 8
    object CDSBuscaMarcaMARCA_STK: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 4
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object CDSBuscaMarcaDESCRIPCION_MARCA: TStringField
      DisplayLabel = 'Descripci'#243'n'
      DisplayWidth = 25
      FieldName = 'DESCRIPCION_MARCA'
      Origin = 'DESCRIPCION_MARCA'
      Size = 25
    end
  end
  object DSPBuscaMarca: TDataSetProvider
    DataSet = QBuscaMarca
    Left = 400
  end
  object CDSBuscaRubro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaRubro'
    Left = 464
    Top = 56
    object CDSBuscaRubroCODIGO_RUBRO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 3
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CDSBuscaRubroDETALLE_RUBRO: TStringField
      DisplayLabel = 'Descripci'#243'n'
      DisplayWidth = 20
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
  end
  object DSPBuscaRubro: TDataSetProvider
    DataSet = QBuscaRubro
    Left = 392
    Top = 56
  end
  object CDSBuscaSubRubro: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaSubRubro'
    Left = 456
    Top = 104
    object CDSBuscaSubRubroCODIGO_SUBRUBRO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 5
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object CDSBuscaSubRubroDETALLE_SUBRUBRO: TStringField
      DisplayLabel = 'Descripci'#243'n'
      DisplayWidth = 40
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Required = True
      Size = 45
    end
  end
  object DSPBuscaSubRubro: TDataSetProvider
    DataSet = QBuscaSubRubro
    Left = 392
    Top = 112
  end
  object CDSDepositos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPDepositos'
    Left = 528
    Top = 256
    object CDSDepositosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSDepositosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
  end
  object DSPDepositos: TDataSetProvider
    DataSet = QDepositos
    Left = 456
    Top = 312
  end
  object CDSHistorial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPHistorial'
    AfterScroll = CDSHistorialAfterScroll
    Left = 744
    Top = 88
    object CDSHistorialID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSHistorialMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 4
    end
    object CDSHistorialRUBRO: TStringField
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
      Size = 3
    end
    object CDSHistorialSUBRUBRO: TStringField
      FieldName = 'SUBRUBRO'
      Origin = 'SUBRUBRO'
      Size = 5
    end
    object CDSHistorialMUESTRAMARCA: TStringField
      FieldName = 'MUESTRAMARCA'
      Origin = 'DESCRIPCION_MARCA'
      ProviderFlags = []
      Size = 25
    end
    object CDSHistorialMUESTRARUBRO: TStringField
      FieldName = 'MUESTRARUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      Size = 35
    end
    object CDSHistorialMUESTRASUBRUBRO: TStringField
      FieldName = 'MUESTRASUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      Size = 45
    end
    object CDSHistorialCOSTO_EXENTO: TFloatField
      DisplayLabel = 'Costo Exe.'
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSHistorialCOSTO_GRAVADO: TFloatField
      DisplayLabel = 'Cos.Grava.'
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSHistorialFPRECIO_EXENTO: TFloatField
      DisplayLabel = 'F.P.Exen.'
      FieldName = 'FPRECIO_EXENTO'
      Origin = 'FPRECIO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSHistorialFPRECIO_GRAVADO: TFloatField
      DisplayLabel = 'F.P.Grav.'
      FieldName = 'FPRECIO_GRAVADO'
      Origin = 'FPRECIO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSHistorialMARGEN: TFloatField
      FieldName = 'MARGEN'
      Origin = 'MARGEN'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSHistorialFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
  end
  object DSPHistorial: TDataSetProvider
    DataSet = QHistorial
    Left = 680
    Top = 80
  end
  object CDSArticulosAfectados: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPArticulosAfectados'
    Left = 744
    Top = 368
    object CDSArticulosAfectadosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSArticulosAfectadosCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSArticulosAfectadosID_CAMBIO_PRECIO_GENERAL: TIntegerField
      FieldName = 'ID_CAMBIO_PRECIO_GENERAL'
      Origin = 'ID_CAMBIO_PRECIO_GENERAL'
    end
    object CDSArticulosAfectadosMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Origin = 'MOTIVO'
      Size = 50
    end
    object CDSArticulosAfectadosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object CDSArticulosAfectadosID_FC_COMPRA: TIntegerField
      FieldName = 'ID_FC_COMPRA'
      Origin = 'ID_FC_COMPRA'
    end
    object CDSArticulosAfectadosDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object CDSArticulosAfectadosCOSTO_GRAVADO_OLD: TFloatField
      FieldName = 'COSTO_GRAVADO_OLD'
      Origin = 'COSTO_GRAVADO_OLD'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSArticulosAfectadosCOSTO_EXENTO_OLD: TFloatField
      FieldName = 'COSTO_EXENTO_OLD'
      Origin = 'COSTO_EXENTO_OLD'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSArticulosAfectadosCOSTO_OLD: TFloatField
      DisplayLabel = 'Costo Viejo'
      FieldName = 'COSTO_OLD'
      Origin = 'COSTO_OLD'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSArticulosAfectadosF_PRECIO_GRAVADO_OLD: TFloatField
      FieldName = 'F_PRECIO_GRAVADO_OLD'
      Origin = 'F_PRECIO_GRAVADO_OLD'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSArticulosAfectadosF_PRECIO_EXENTO_OLD: TFloatField
      FieldName = 'F_PRECIO_EXENTO_OLD'
      Origin = 'F_PRECIO_EXENTO_OLD'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSArticulosAfectadosFPRECIO_OLD: TFloatField
      DisplayLabel = 'Precio Viejo'
      FieldName = 'FPRECIO_OLD'
      Origin = 'FPRECIO_OLD'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSArticulosAfectadosCOSTO_GRAVADO_NEW: TFloatField
      FieldName = 'COSTO_GRAVADO_NEW'
      Origin = 'COSTO_GRAVADO_NEW'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSArticulosAfectadosCOSTO_EXENTO_NEW: TFloatField
      FieldName = 'COSTO_EXENTO_NEW'
      Origin = 'COSTO_EXENTO_NEW'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSArticulosAfectadosCOSTO_NEW: TFloatField
      DisplayLabel = 'Costo Nuevo'
      FieldName = 'COSTO_NEW'
      Origin = 'COSTO_NEW'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSArticulosAfectadosF_PRECIO_GRAVADO_NEW: TFloatField
      FieldName = 'F_PRECIO_GRAVADO_NEW'
      Origin = 'F_PRECIO_GRAVADO_NEW'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSArticulosAfectadosF_PRECIO_EXENTO_NEW: TFloatField
      FieldName = 'F_PRECIO_EXENTO_NEW'
      Origin = 'F_PRECIO_EXENTO_NEW'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSArticulosAfectadosFPRECIO_NEW: TFloatField
      DisplayLabel = 'Precio Nuevo'
      FieldName = 'FPRECIO_NEW'
      Origin = 'FPRECIO_NEW'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSArticulosAfectadosFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
  end
  object DSPArticulosAfectados: TDataSetProvider
    DataSet = QArticulosAfectados
    Left = 632
    Top = 384
  end
  object ComBuscadorMarcas: TComBuscador
    Data = CDSBuscaMarca
    Campo = 'MARCA_STK'
    Titulo = 'Marcas'
    rOk = False
    Left = 208
    Top = 8
  end
  object ComBuscadorRubros: TComBuscador
    Data = CDSBuscaRubro
    Campo = 'codigo_rubro'
    Titulo = 'Rubros'
    rOk = False
    Left = 196
    Top = 59
  end
  object ComBuscadorSubRubros: TComBuscador
    Data = CDSBuscaSubRubro
    Campo = 'codigo_subrubro'
    rOk = False
    Left = 188
    Top = 107
  end
  object QBuscaMarca: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select marca_stk,descripcion_marca from marcas order by Descripc' +
        'ion_Marca')
    Left = 331
    Top = 65535
  end
  object QBuscaRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select codigo_rubro,detalle_rubro from rubros order by detalle_r' +
        'ubro')
    Left = 324
    Top = 59
  end
  object QBuscaSubRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.codigo_subrubro,s.detalle_subrubro from subrubros s'
      'where s.codigo_rubro=:rubro'
      'order by detalle_subrubro')
    Left = 332
    Top = 115
    ParamData = <
      item
        Position = 1
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QMarca: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select marca_stk,descripcion_marca from marcas '
      'where marca_stk=:Marca')
    Left = 560
    Top = 16
    ParamData = <
      item
        Name = 'MARCA'
        DataType = ftString
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object QMarcaMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object QMarcaDESCRIPCION_MARCA: TStringField
      FieldName = 'DESCRIPCION_MARCA'
      Origin = 'DESCRIPCION_MARCA'
      Size = 25
    end
  end
  object QRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo_rubro,detalle_rubro from rubros '
      'where codigo_rubro=:Rubro')
    Left = 564
    Top = 67
    ParamData = <
      item
        Name = 'RUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
        Value = Null
      end>
    object QRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QRubroDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
  end
  object QSubRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo_subrubro,detalle_subRubro from subrubros '
      'where codigo_subrubro=:subrubro')
    Left = 564
    Top = 123
    ParamData = <
      item
        Name = 'SUBRUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 5
        Value = Null
      end>
    object QSubRubroCODIGO_SUBRUBRO: TStringField
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object QSubRubroDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Required = True
      Size = 45
    end
  end
  object QHistorial: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select h.*,m.descripcion_marca as MuestraMarca,'
      'r.detalle_rubro as MuestraRubro,'
      
        'sr.detalle_subrubro as MuestraSubRubro from CAMBIO_PRECIO_GRAL_H' +
        'ISTORIAL H'
      'left join marcas m on m.marca_stk=h.marca'
      'left join rubros r on r.codigo_rubro=h.rubro'
      'left join subrubros sr on sr.codigo_subrubro=h.subrubro'
      'order by fecha desc')
    Left = 675
    Top = 135
  end
  object QDepositos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select id,nombre from depositos order by nombre')
    Left = 456
    Top = 256
  end
  object QStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select *  from stock_cambioprecio  ( :deposito, :marca, :rubro, ' +
        ':subrub )')
    Left = 44
    Top = 307
    ParamData = <
      item
        Position = 1
        Name = 'deposito'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'marca'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'subrub'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QArticulosAfectados: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.*,st.detalle_stk from stock_historial_precio s'
      'left join stock st on st.codigo_stk=s.codigo_stk'
      'where s.id_cambio_precio_general=:id'
      'order by st.detalle_stk')
    Left = 500
    Top = 435
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spCambiaPrecioFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CAMBIO_DE_PRECIOS'
    Left = 276
    Top = 363
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
        Name = 'COSTOGRAVADO'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'COSTOEXENTO'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'FPGRAVADO'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'FPEXENTO'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'SOMBRAGRAVADO'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'SOMBRAEXENTO'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'DEPOSITO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'MARGEN'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 10
        Name = 'SUMA_REMP_MARGEN'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end>
  end
  object spValorGeneradorHistorialFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'VALOR_GENERADOR_CAMBIO_PRECIO'
    Left = 268
    Top = 411
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptOutput
      end>
  end
  object spGravaValoresFD: TFDStoredProc
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
        TargetDataType = dtDateTime
      end>
    StoredProcName = 'GRAVA_VALORES_CAMB_PRECIO_GRAL'
    Left = 268
    Top = 467
    ParamData = <
      item
        Position = 1
        Name = 'MARCA'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Position = 2
        Name = 'RUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 3
        Name = 'SUBRUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end
      item
        Position = 4
        Name = 'COSTOEXENTO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'COSTOGRAVADO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'FPEXENTO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'FPGRAVADO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'MARGEN'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'FECHA'
        DataType = ftDateTime
        ParamType = ptInput
      end>
  end
  object QBorraHistorialFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from  CAMBIO_PRECIO_GRAL_HISTORIAL c where '
      'c.id=:id')
    Left = 532
    Top = 339
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object spInformaCambioPreciofd: TFDStoredProc
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
        TargetDataType = dtDateTime
      end>
    StoredProcName = 'INGRESA_HISTORIAL_PRECIOS'
    Left = 76
    Top = 411
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
        Name = 'COSTO_OLD'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'COSTO_OLD_GRAVADO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'COSTO_OLD_EXENTO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'COSTO_NEW'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'COSTO_NEW_GRAVADO'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'COSTO_NEW_EXENTO'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'FPRECIO_OLD'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'FPRECIO_OLD_GRAVADO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 10
        Name = 'FPRECIO_OLD_EXENTO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 11
        Name = 'FPRECIO_NEW'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 12
        Name = 'FPRECIO_NEW_GRAVADO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 13
        Name = 'FPRECIO_NEW_EXENTO'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 14
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 15
        Name = 'MOTIVO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 16
        Name = 'FECHA'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Position = 17
        Name = 'ID_CAMBIO_PRECIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 18
        Name = 'ID_FC_COMPRA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    AutoFlush = True
    SubStorages = <>
    Left = 352
    Top = 320
  end
  object JvFormStorage: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    Options = [fpState, fpSize, fpLocation, fpActiveControl]
    StoredValues = <>
    Left = 420
    Top = 328
  end
end
