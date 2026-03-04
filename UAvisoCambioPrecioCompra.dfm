object FormAvisoCambioPrecioCompra: TFormAvisoCambioPrecioCompra
  Left = 341
  Top = 85
  BorderIcons = [biSystemMenu]
  Caption = 'Aviso Cambio de Precio'
  ClientHeight = 464
  ClientWidth = 609
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 18
    Top = 21
    Width = 543
    Height = 284
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object lb1: TLabel
      Left = 19
      Top = 60
      Width = 193
      Height = 16
      Caption = 'Precio en La Ficha del Articulo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbSignoFicha: TLabel
      Left = 239
      Top = 60
      Width = 8
      Height = 16
      Caption = '$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb3: TLabel
      Left = 19
      Top = 109
      Width = 154
      Height = 16
      Caption = 'Nuevo Precio Ingresado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbSignoIngresado: TLabel
      Left = 239
      Top = 109
      Width = 8
      Height = 16
      Caption = '$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 19
      Top = 158
      Width = 82
      Height = 16
      Caption = 'Stock Actual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 139
      Top = 142
      Width = 85
      Height = 32
      Caption = 'Nuevo Costo '#13#10'Ponderado '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 315
      Top = 186
      Width = 99
      Height = 16
      Caption = 'Costo Adicional'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 395
      Top = 151
      Width = 135
      Height = 26
      Caption = 'Este se Adiciona al Costo'#13#10'y se aplica como F.de Precio'
    end
    object pn1: TPanel
      AlignWithMargins = True
      Left = 1
      Top = 211
      Width = 541
      Height = 42
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alCustom
      Alignment = taLeftJustify
      BorderWidth = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object JvGradient1: TJvGradient
        Left = 2
        Top = 2
        Width = 2
        Height = 38
        Style = grVertical
        StartColor = clWhite
        EndColor = clGradientInactiveCaption
        ExplicitLeft = 56
        ExplicitTop = 1
        ExplicitWidth = 483
      end
      object lb4: TLabel
        AlignWithMargins = True
        Left = 7
        Top = 5
        Width = 123
        Height = 32
        Align = alRight
        Caption = 'Actualiza el Costo?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 16
      end
      object btYes: TBitBtn
        AlignWithMargins = True
        Left = 334
        Top = 5
        Width = 98
        Height = 32
        Align = alRight
        Caption = '&Si'
        Default = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
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
        ModalResult = 6
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
      end
      object btNo: TBitBtn
        AlignWithMargins = True
        Left = 235
        Top = 5
        Width = 93
        Height = 32
        Align = alRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = bkNo
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 1
      end
      object btNinguno: TBitBtn
        AlignWithMargins = True
        Left = 136
        Top = 5
        Width = 93
        Height = 32
        Align = alRight
        Cancel = True
        Caption = 'No a Todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
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
        ModalResult = 13
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 2
      end
      object btTodos: TBitBtn
        AlignWithMargins = True
        Left = 438
        Top = 5
        Width = 98
        Height = 32
        Align = alRight
        Caption = 'Si a Todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          F2010000424DF201000000000000760000002800000024000000130000000100
          0400000000007C01000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
          3333333333388F3333333333000033334224333333333333338338F333333333
          0000333422224333333333333833338F33333333000033422222243333333333
          83333338F3333333000034222A22224333333338F33F33338F33333300003222
          A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
          38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
          2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
          0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
          333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
          33333A2224A2233333333338F338F83300003333333333A2224A333333333333
          8F338F33000033333333333A222433333333333338F338F30000333333333333
          A224333333333333338F38F300003333333333333A223333333333333338F8F3
          000033333333333333A3333333333333333383330000}
        ModalResult = 14
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 3
      end
    end
    object edViejo: TJvValidateEdit
      Left = 267
      Top = 57
      Width = 98
      Height = 24
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisabledTextColor = clBlack
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object pn2: TPanel
      AlignWithMargins = True
      Left = 1
      Top = 1
      Width = 541
      Height = 51
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Alignment = taLeftJustify
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderWidth = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object JvGradient2: TJvGradient
        Left = 2
        Top = 0
        Width = 537
        Height = 50
        Align = alCustom
        Style = grVertical
        StartColor = clWhite
        EndColor = clGradientInactiveCaption
      end
      object lb2: TLabel
        Left = 18
        Top = 6
        Width = 395
        Height = 16
        Caption = 
          'El precio en la Ficha del art'#237'culo, es distinto  al que se ingre' +
          'sa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbDetalle: TLabel
        Left = 18
        Top = 22
        Width = 45
        Height = 16
        Caption = 'Detalle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object edtNuevo: TJvValidateEdit
      Left = 267
      Top = 106
      Width = 98
      Height = 24
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisabledTextColor = clBlack
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edStock: TJvValidateEdit
      Left = 19
      Top = 183
      Width = 98
      Height = 24
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisabledColor = clInfoBk
      DisabledTextColor = clBlack
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object edPonderado: TJvValidateEdit
      Left = 139
      Top = 183
      Width = 98
      Height = 24
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisabledColor = clInfoBk
      DisabledTextColor = clBlack
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object chbPorPonderado: TCheckBox
      Left = 321
      Top = 256
      Width = 196
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Actualiza por Costo Ponderado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = chbPorPonderadoClick
    end
    object edAdicional: TJvValidateEdit
      Left = 435
      Top = 183
      Width = 98
      Height = 24
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      EditText = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
end
