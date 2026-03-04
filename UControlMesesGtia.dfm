object FormControlGtia: TFormControlGtia
  Left = 214
  Top = 198
  Caption = 'Control de Garant'#237'as'
  ClientHeight = 461
  ClientWidth = 621
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 28
    Top = 24
    Width = 373
    Height = 340
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object GarantiaActual: TLabel
      Left = 16
      Top = 59
      Width = 128
      Height = 19
      Caption = 'Garantia Actual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GarantiaAdicional: TLabel
      Left = 16
      Top = 92
      Width = 151
      Height = 19
      Caption = 'Garantia Adicional'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GarantiaOtorgada: TLabel
      Left = 17
      Top = 149
      Width = 152
      Height = 19
      Caption = 'GarantiaOtrogada '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 234
      Height = 19
      Caption = 'Meses de Garantia a Otorgar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 302
      Top = 59
      Width = 64
      Height = 19
      Caption = '(Meses)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 17
      Top = 205
      Width = 135
      Height = 38
      Caption = 'Valor Asegurado'#13#10'en Pesos ($)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edTotal: TJvCalcEdit
      Left = 175
      Top = 146
      Width = 121
      Height = 27
      TabStop = False
      Color = clInfoBk
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 0
      DisabledTextColor = clBlack
      DisabledColor = clInfoBk
      DecimalPlacesAlwaysShown = False
    end
    object edAdicional: TJvCalcEdit
      Left = 175
      Top = 89
      Width = 121
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 1
      DecimalPlacesAlwaysShown = False
      OnChange = edAdicionalChange
    end
    object edActual: TJvCalcEdit
      Left = 175
      Top = 56
      Width = 121
      Height = 27
      TabStop = False
      Color = clInfoBk
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 3
      DisabledTextColor = clBlack
      DisabledColor = clInfoBk
      DecimalPlacesAlwaysShown = False
    end
    object Panel1: TPanel
      Left = 1
      Top = 315
      Width = 371
      Height = 24
      Align = alBottom
      TabOrder = 4
      object JvGradien: TJvGradient
        Left = 1
        Top = 1
        Width = 369
        Height = 22
        Style = grVertical
        StartColor = clGradientActiveCaption
        EndColor = clWhite
        ExplicitLeft = 271
        ExplicitTop = 99
        ExplicitWidth = 100
        ExplicitHeight = 41
      end
    end
    object Panel: TPanel
      Left = 1
      Top = 262
      Width = 371
      Height = 53
      Align = alBottom
      TabOrder = 5
      object JvGradient: TJvGradient
        Left = 1
        Top = 1
        Width = 369
        Height = 51
        Style = grVertical
        StartColor = clWhite
        EndColor = clGradientActiveCaption
        ExplicitLeft = 271
        ExplicitTop = 99
        ExplicitWidth = 100
        ExplicitHeight = 41
      end
      object btCancelar: TBitBtn
        Left = 174
        Top = 11
        Width = 90
        Height = 34
        Cancel = True
        Caption = 'Cancel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ModalResult = 2
        ParentFont = False
        TabOrder = 0
        TabStop = False
        OnClick = btCancelarClick
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
        NumGlyphs = 2
      end
      object btOk: TBitBtn
        Left = 270
        Top = 13
        Width = 90
        Height = 34
        Caption = 'OK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ModalResult = 1
        ParentFont = False
        TabOrder = 1
        OnClick = btOkClick
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
      end
    end
    object edValorAsegurado: TJvCalcEdit
      Left = 175
      Top = 202
      Width = 121
      Height = 27
      Color = clWhite
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 2
      DisabledTextColor = clBlack
      DisabledColor = clInfoBk
      DecimalPlacesAlwaysShown = False
    end
  end
end
