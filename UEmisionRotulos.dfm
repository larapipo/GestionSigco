object FormRotulos: TFormRotulos
  Left = 0
  Top = 0
  Caption = 'Rotulos Mercaderias '
  ClientHeight = 725
  ClientWidth = 1147
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1147
    Height = 725
    ActivePage = pag1
    Align = alClient
    TabOrder = 0
    object pag1: TTabSheet
      Caption = 'Generacion de Rotulos'
      object Panel2: TPanel
        Left = 0
        Top = 622
        Width = 1139
        Height = 73
        Align = alBottom
        BevelOuter = bvNone
        Color = clMenuHighlight
        ParentBackground = False
        TabOrder = 0
        OnDblClick = Panel2DblClick
        DesignSize = (
          1139
          73)
        object Label6: TLabel
          Left = 6
          Top = 6
          Width = 128
          Height = 20
          Caption = 'Archivo de Reporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object sbReporte: TSpeedButton
          Left = 399
          Top = 25
          Width = 30
          Height = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = []
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
            0000000000000000000000000000000000000000000000000000000000990000
            009935607DF23C6E8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E
            8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E
            8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E
            8FFF3C6E8FFF3C6E8FFF080F1323000000000000000000000000000000990000
            0099294B60DD3C6E8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E
            8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E
            8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E8FFF3C6E
            8FFF3C6E8FFF3C6E8FFF14243056000000000000000000000000000000990000
            00992F5670C964B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF35617F88000000000000000000000000000000990000
            00991B3140B564B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF4986AEBA000000000000000000000000000000990000
            0099070D11A064B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF5DAADDED000000000000000000000000000000990000
            009900000099579FCEF264B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF0D1820220000000000000000000000990000
            009900000099437A9FDD64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF213D4F550000000000000000000000990000
            0099000000992F5670C964B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF35617F880000000000000000000000990000
            0099000000991B3140B564B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF4986AEBA0000000000000000000000990000
            009900000099070D11A064B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF5DAADDED0000000000000000000000990000
            00990000009900000099579FCEF264B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF0D18202200000000000000990000
            00990000009900000099437A9FDD64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF213D4F5500000000000000990000
            009900000099000000992F5670C964B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF35617F8800000000000000990000
            009900000099000000991B3140B564B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF4986AEBA00000000000000990000
            00990000009900000099070D11A064B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF5DAADDED00000000000000990000
            0099000000990000009900000099579FCEF264B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF0D182022000000990000
            0099000000990000009900000099437A9FDD64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF213D4F55000000990000
            00990000009900000099000000992F5670C964B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF35617F88000000990000
            00990000009900000099000000991B3140B564B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF4986AEBA000000990000
            0099000000990000009900000099070D11A064B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7
            EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF64B7EEFF5DAADDED000000990000
            0099000000990000009900000099000000990000009900000099000000990000
            0099000000990000009900000099000000990000009900000099000000990000
            0099000000990000009900000099000000990000009900000099000000990000
            0099000000990000009900000000000000000000000000000000000000990000
            0099000000990000009900000099000000990000009900000099000000990000
            0099000000990000009900000099000000990000009900000099000000990000
            0099000000990000009900000099000000990000009900000099000000990000
            0099000000990000009900000000000000000000000000000000000000990000
            0099000000990000009900000099000000990000009900000099000000990000
            0099000000990000009900000099000000990000009900000099000000990000
            0099000000990000009900000099000000990000009900000099000000990000
            0099000000990000009900000000000000000000000000000000000000990000
            0099000000990000009900000099000000990000009900000099000000990000
            0099000000990000009900000099000000990000009900000099000000990000
            0099000000990000009900000099000000990000009900000099000000990000
            0099000000990000009900000000000000000000000000000000000000990000
            0099000000990000009900000099000000990000009900000099000000990000
            0099000000990000009900000099000000990000009900000048000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000990000
            0099000000990000009900000099000000990000009900000099000000990000
            0099000000990000009900000099000000990000004800000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentFont = False
          OnClick = sbReporteClick
        end
        object AdvGlowButton1: TAdvGlowButton
          Left = 922
          Top = 14
          Width = 192
          Height = 41
          Action = Imprimir
          Anchors = [akTop, akRight]
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Rounded = False
          UseAppearance = True
          TabOrder = 0
          Appearance.BorderColor = 11382963
          Appearance.BorderColorHot = 11565130
          Appearance.BorderColorCheckedHot = 11565130
          Appearance.BorderColorDown = 11565130
          Appearance.BorderColorChecked = 13744549
          Appearance.BorderColorDisabled = 13948116
          Appearance.Color = clWhite
          Appearance.ColorTo = clWhite
          Appearance.ColorChecked = 13744549
          Appearance.ColorCheckedTo = 13744549
          Appearance.ColorDisabled = clWhite
          Appearance.ColorDisabledTo = clNone
          Appearance.ColorDown = 11565130
          Appearance.ColorDownTo = 11565130
          Appearance.ColorHot = 16444643
          Appearance.ColorHotTo = 16444643
          Appearance.ColorMirror = clWhite
          Appearance.ColorMirrorTo = clWhite
          Appearance.ColorMirrorHot = 16444643
          Appearance.ColorMirrorHotTo = 16444643
          Appearance.ColorMirrorDown = 11565130
          Appearance.ColorMirrorDownTo = 11565130
          Appearance.ColorMirrorChecked = 13744549
          Appearance.ColorMirrorCheckedTo = 13744549
          Appearance.ColorMirrorDisabled = clWhite
          Appearance.ColorMirrorDisabledTo = clNone
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
          Appearance.TextColorChecked = 3750459
          Appearance.TextColorDown = 2303013
          Appearance.TextColorHot = 2303013
          Appearance.TextColorDisabled = 13948116
          UIStyle = tsOffice2019White
        end
        object edReporte: TEdit
          Left = 6
          Top = 26
          Width = 387
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = 'edReporte'
        end
        object AdvGlowButton2: TAdvGlowButton
          Left = 706
          Top = 14
          Width = 193
          Height = 41
          Anchors = [akTop, akRight]
          Caption = 'Salir'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Rounded = False
          UseAppearance = True
          TabOrder = 2
          OnClick = AdvGlowButton2Click
          Appearance.BorderColor = 11382963
          Appearance.BorderColorHot = 11565130
          Appearance.BorderColorCheckedHot = 11565130
          Appearance.BorderColorDown = 11565130
          Appearance.BorderColorChecked = 13744549
          Appearance.BorderColorDisabled = 13948116
          Appearance.Color = clWhite
          Appearance.ColorTo = clWhite
          Appearance.ColorChecked = 13744549
          Appearance.ColorCheckedTo = 13744549
          Appearance.ColorDisabled = clWhite
          Appearance.ColorDisabledTo = clNone
          Appearance.ColorDown = 11565130
          Appearance.ColorDownTo = 11565130
          Appearance.ColorHot = 16444643
          Appearance.ColorHotTo = 16444643
          Appearance.ColorMirror = clWhite
          Appearance.ColorMirrorTo = clWhite
          Appearance.ColorMirrorHot = 16444643
          Appearance.ColorMirrorHotTo = 16444643
          Appearance.ColorMirrorDown = 11565130
          Appearance.ColorMirrorDownTo = 11565130
          Appearance.ColorMirrorChecked = 13744549
          Appearance.ColorMirrorCheckedTo = 13744549
          Appearance.ColorMirrorDisabled = clWhite
          Appearance.ColorMirrorDisabledTo = clNone
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
          Appearance.TextColorChecked = 3750459
          Appearance.TextColorDown = 2303013
          Appearance.TextColorHot = 2303013
          Appearance.TextColorDisabled = 13948116
          UIStyle = tsOffice2019White
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1139
        Height = 622
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 1
        DesignSize = (
          1139
          622)
        object Label1: TLabel
          Left = 687
          Top = 11
          Width = 49
          Height = 20
          Anchors = [akTop, akRight]
          Caption = 'Codigo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 832
        end
        object Label2: TLabel
          Left = 687
          Top = 61
          Width = 126
          Height = 20
          Anchors = [akTop, akRight]
          Caption = 'Codigo Alternativo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 832
        end
        object Label3: TLabel
          Left = 848
          Top = 61
          Width = 115
          Height = 20
          Anchors = [akTop, akRight]
          Caption = 'Dias Vencimiento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 993
        end
        object Label4: TLabel
          Left = 996
          Top = 11
          Width = 42
          Height = 20
          Anchors = [akTop, akRight]
          Caption = 'Fecha '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 1141
        end
        object Label5: TLabel
          Left = 687
          Top = 148
          Width = 29
          Height = 20
          Anchors = [akTop, akRight]
          Caption = 'Lote'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 983
          Top = 504
          Width = 134
          Height = 21
          Anchors = [akRight, akBottom]
          Caption = 'Cantidad de Copias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 1128
          ExplicitTop = 536
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 676
          Height = 622
          Align = alLeft
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelOuter = bvNone
          Caption = 'Panel3'
          TabOrder = 0
          DesignSize = (
            676
            622)
          object SpeedButton1: TSpeedButton
            Left = 8
            Top = 594
            Width = 23
            Height = 22
            Action = Expand
            Anchors = [akLeft, akBottom]
            ExplicitTop = 571
          end
          object SpeedButton2: TSpeedButton
            Left = 37
            Top = 594
            Width = 23
            Height = 22
            Action = Contraer
            Anchors = [akLeft, akBottom]
            ExplicitTop = 571
          end
          object dbgArticulos: TDBAdvGrid
            Left = 0
            Top = 0
            Width = 676
            Height = 580
            Align = alTop
            Anchors = [akLeft, akTop, akRight, akBottom]
            BevelInner = bvLowered
            BevelOuter = bvNone
            ColCount = 4
            Ctl3D = False
            DrawingStyle = gdsClassic
            FixedColor = 6710886
            FixedCols = 0
            RowCount = 2
            FixedRows = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goColMoving, goRowSelect, goFixedRowDefAlign]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnClick = dbgArticulosClick
            OnDblClick = dbgArticulosDblClick
            GridFixedLineWidth = 0
            OnGetCellColor = dbgArticulosGetCellColor
            OnGetAlignment = dbgArticulosGetAlignment
            OnSelectionChanged = dbgArticulosSelectionChanged
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = clWhite
            ActiveCellFont.Height = -12
            ActiveCellFont.Name = 'Segoe UI'
            ActiveCellFont.Style = [fsBold]
            ActiveCellColor = 2500134
            ActiveCellColorTo = 2500134
            BorderColor = 10066329
            CellNode.NodeIndent = 15
            ColumnHeaders.Strings = (
              'Rubros'
              'Detalles')
            ControlLook.FixedGradientFrom = 6710886
            ControlLook.FixedGradientTo = 6710886
            ControlLook.FixedGradientMirrorFrom = 6710886
            ControlLook.FixedGradientMirrorTo = 6710886
            ControlLook.FixedGradientHoverTo = clWhite
            ControlLook.FixedGradientHoverMirrorFrom = clWhite
            ControlLook.FixedGradientHoverMirrorTo = clWhite
            ControlLook.FixedGradientHoverBorder = 11645361
            ControlLook.FixedGradientDownFrom = clWhite
            ControlLook.FixedGradientDownTo = clWhite
            ControlLook.FixedGradientDownMirrorFrom = clWhite
            ControlLook.FixedGradientDownMirrorTo = clWhite
            ControlLook.FixedGradientDownBorder = 11250603
            ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownHeader.Font.Color = clWindowText
            ControlLook.DropDownHeader.Font.Height = -11
            ControlLook.DropDownHeader.Font.Name = 'Segoe UI'
            ControlLook.DropDownHeader.Font.Style = []
            ControlLook.DropDownHeader.Visible = True
            ControlLook.DropDownHeader.Buttons = <>
            ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownFooter.Font.Color = clWindowText
            ControlLook.DropDownFooter.Font.Height = -11
            ControlLook.DropDownFooter.Font.Name = 'Segoe UI'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            ControlLook.ToggleSwitch.BackgroundBorderWidth = 1.000000000000000000
            ControlLook.ToggleSwitch.ButtonBorderWidth = 1.000000000000000000
            ControlLook.ToggleSwitch.CaptionFont.Charset = DEFAULT_CHARSET
            ControlLook.ToggleSwitch.CaptionFont.Color = clWindowText
            ControlLook.ToggleSwitch.CaptionFont.Height = -12
            ControlLook.ToggleSwitch.CaptionFont.Name = 'Segoe UI'
            ControlLook.ToggleSwitch.CaptionFont.Style = []
            ControlLook.ToggleSwitch.Shadow = False
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -12
            FilterDropDown.Font.Name = 'Segoe UI'
            FilterDropDown.Font.Style = []
            FilterDropDown.TextChecked = 'Checked'
            FilterDropDown.TextUnChecked = 'Unchecked'
            FilterDropDownClear = '(All)'
            FilterEdit.TypeNames.Strings = (
              'Starts with'
              'Ends with'
              'Contains'
              'Not contains'
              'Equal'
              'Not equal'
              'Larger than'
              'Smaller than'
              'Clear')
            FixedColWidth = 285
            FixedRowHeight = 22
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'Segoe UI'
            FixedFont.Style = [fsBold]
            Flat = True
            FloatFormat = '%.2f'
            Grouping.HeaderTextColor = clBlue
            Grouping.MergeHeader = True
            HoverButtons.Buttons = <>
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            Look = glCustom
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -12
            PrintSettings.Font.Name = 'Segoe UI'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -12
            PrintSettings.FixedFont.Name = 'Segoe UI'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -12
            PrintSettings.HeaderFont.Name = 'Segoe UI'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -12
            PrintSettings.FooterFont.Name = 'Segoe UI'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            SearchFooter.AlwaysHighLight = True
            SearchFooter.Color = 6710886
            SearchFooter.ColorTo = 6710886
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -12
            SearchFooter.Font.Name = 'Segoe UI'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurrence'
            SearchFooter.HintFindPrev = 'Find previous occurrence'
            SearchFooter.HintHighlight = 'Highlight occurrences'
            SearchFooter.IgnoreAccents = True
            SearchFooter.MatchCaseCaption = 'Match case'
            SearchFooter.ResultFormat = '(%d of %d)'
            SearchFooter.SearchColumn = 1
            SearchFooter.ShowClose = False
            SearchFooter.ShowFindNext = False
            SearchFooter.ShowFindPrev = False
            SearchFooter.ShowHighLight = False
            SearchFooter.ShowResults = True
            SearchFooter.ShowMatchCase = False
            SearchFooter.Visible = True
            SelectionColor = 9868950
            SelectionTextColor = clWindowText
            SortSettings.HeaderColor = 6710886
            SortSettings.HeaderColorTo = 6710886
            SortSettings.HeaderMirrorColor = 6710886
            SortSettings.HeaderMirrorColorTo = 6710886
            UIStyle = tsOffice2019Gray
            Version = '2.5.1.23'
            AutoCreateColumns = True
            AutoRemoveColumns = True
            Columns = <
              item
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                FieldName = 'DETALLE_RUBRO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                Header = 'Rubros'
                HeaderFont.Charset = ANSI_CHARSET
                HeaderFont.Color = clWhite
                HeaderFont.Height = -15
                HeaderFont.Name = 'Segoe UI Black'
                HeaderFont.Style = [fsBold]
                HeaderAlignment = taCenter
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -12
                PrintFont.Name = 'Segoe UI'
                PrintFont.Style = []
                Width = 285
              end
              item
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                EditLength = 8
                FieldName = 'DETALLE_STK'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                Header = 'Detalle'
                HeaderFont.Charset = ANSI_CHARSET
                HeaderFont.Color = clWhite
                HeaderFont.Height = -15
                HeaderFont.Name = 'Segoe UI Black'
                HeaderFont.Style = [fsBold]
                HeaderAlignment = taCenter
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -12
                PrintFont.Name = 'Segoe UI'
                PrintFont.Style = []
                Width = 331
              end
              item
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                FieldName = 'CODIGO_STK'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Segoe UI'
                Font.Style = []
                Header = 'Codigo'
                HeaderFont.Charset = ANSI_CHARSET
                HeaderFont.Color = clWhite
                HeaderFont.Height = -15
                HeaderFont.Name = 'Segoe UI Black'
                HeaderFont.Style = [fsBold]
                HeaderAlignment = taCenter
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -15
                PrintFont.Name = 'Segoe UI'
                PrintFont.Style = []
                Width = 103
              end
              item
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                FieldName = 'REEMPLAZO_STK'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -15
                Font.Name = 'Segoe UI'
                Font.Style = []
                Header = 'Cod.Alternativo'
                HeaderFont.Charset = ANSI_CHARSET
                HeaderFont.Color = clWhite
                HeaderFont.Height = -15
                HeaderFont.Name = 'Segoe UI Black'
                HeaderFont.Style = [fsBold]
                HeaderAlignment = taCenter
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clBlack
                PrintFont.Height = -15
                PrintFont.Name = 'Segoe UI'
                PrintFont.Style = []
                Width = 188
              end>
            DataSource = DSArticulos
            InvalidPicture.Data = {
              055449636F6E0000010001002020200000000000A81000001600000028000000
              2000000040000000010020000000000000100000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000006A6A6B256A6A6B606A6A6B946A6A6BC06A6A6BE1
              6A6A6BF86A6A6BF86A6A6BE16A6A6BC06A6A6B946A6A6B606A6A6B2500000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000006A6A6B407575769E787879F19F9F9FF6C0C0C0FDDADADAFFEDEDEEFF
              FBFBFBFFFBFBFBFFEDEDEEFFDADADAFFC0C0C0FD9F9F9FF6787879F17575769E
              6A6A6B4000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000006A6A6B22
              7C7C7C98888889F0BDBDBDFCE9E9EBFED9D9E9FEB5B5DDFE8B8BCDFE595AB7FF
              3739A8FF2B2CA4FF4A49B1FF7171C1FFA1A2D7FFD3D3E8FFEAEAEBFEBEBEBFFC
              888889F07C7C7C986A6A6B220000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000006A6A6B43838383D8
              B7B7B8FAECECEFFEC0C0DFFF7977C4FF2221A0FF12129BFF1010A4FF0C0CA8FF
              0A0AACFF0A0AB4FF0A0AB9FF0D0DBEFF0F0FB1FF1111A6FF5656B8FFAEADDCFF
              ECECEFFEB7B7B8FA838383D86A6A6B4300000000000000000000000000000000
              00000000000000000000000000000000000000006A6A6B4E878788EAD3D3D3FE
              CACAE8FF4443B0FF171799FF11119CFF0C0C98FF0B0B9BFF0B0BA0FF0A0AA6FF
              0909ACFF0909B2FF0808BAFF0707BFFF0B09C8FF0D0DCEFF1111CCFF1010AFFF
              4A49B2FFCFCFEBFFD3D3D3FE878788EA6A6A6B4E000000000000000000000000
              000000000000000000000000000000006A6A6B43878788EAE1E1E1FFA8A8DAFF
              2323A0FF15159CFF0D0D92FF0C0C95FF0C0C99FF0B0B9EFF0B0BA0FF0A0AA6FF
              0909ACFF0909B2FF0808B8FF0808BCFF0808C3FF0C0CC9FF0C0CD0FF0D0DD6FF
              1313CFFF2222A9FFAFAFDEFFE1E1E1FF878788EA6A6A6B430000000000000000
              0000000000000000000000006A6A6B22838383D8D3D3D3FEA8A8D9FF2020A4FF
              13139BFF0C0C92FF0C0C95FF0C0C97FF0C0C99FF0B0B9EFF0B0BA0FF0A0AA4FF
              0A0AA9FF0909B0FF0808B4FF0808BBFF0707C0FF0A0AC6FF0909CCFF0C0CD3FF
              0D0DD8FF1313D3FF1A1AA8FFAEADDEFFD4D4D4FE838383D86A6A6B2200000000
              0000000000000000000000007C7C7C98B7B7B8FACACAE8FF2524A3FF13139FFF
              0C0C97FF0C0C95FF0C0C95FF0C0C91FF0C0C95FF0B0B9EFF0B0BA0FF0A0AA4FF
              0A0AA8FF0909ADFF0909B2FF0808B8FF0808BCFF0707C0FF0808BCFF0707C5FF
              0C0CD3FF0D0DD7FF1212D1FF2020A7FFCDCDEBFFB8B8B9FA7C7C7C9800000000
              00000000000000006A6A6B40888889F0ECECEFFE4545B1FF1616A4FF0B0B9BFF
              0C0C99FF0C0C96FF3333A2FFB9B9D0FF393A9BFF0C0C95FF0B0BA1FF0A0AA4FF
              0A0AA7FF0A0AABFF0909B0FF0808B4FF0808B7FF2F2FC2FFAEAEE2FF4B4BBFFF
              0707BEFF0B0BD1FF0C0CD3FF1413CCFF4848B1FFECECEFFE888889F06A6A6B40
              00000000000000007575769EBFBFBFFD9B9BD5FF1C1CA6FF0C0CA1FF0B0B9FFF
              0B0B9AFF3535A7FFB5B5BEFFE6E6DFFFEDEDEFFF3C3C9CFF0C0C97FF0A0AA4FF
              0A0AA6FF0A0AA9FF0909ADFF0909B0FF2626B5FFCECEDEFFFFFFFBFFEEEEF1FF
              4848BAFF0808BCFF0A0ACDFF0B0BCEFF1111ABFFBEC0E0FFBFC0BFFD7575769E
              000000006A6A6B25787879F1E3E3E5FE4646B2FF1414A8FF0A0AA4FF0B0BA0FF
              2121A9FFBDBDCAFFD0D0C8FFC5C5C5FFE3E3E1FFEDEDEFFF3E3E9EFF0C0C98FF
              0A0AA6FF0A0AA8FF0A0AA9FF2B2BB0FFC0C0CDFFEAEAE2FFEBEBEBFFFEFEF8FF
              EDEDEEFF2828BDFF0707C4FF0809C7FF0F0FC4FF8788CBFFEBEBECFE79797AF1
              6A6A6B256A6A6B609D9E9DF6D6D7E4FF3A3AB3FF1212ADFF0A0AA8FF0A0AA4FF
              1313AAFFABABCFFFD6D6CBFFCACACAFFC6C6C6FFE4E4E0FFEEEEEFFF3F3FA0FF
              0C0C99FF0A0AA6FF2828ABFFB2B2BFFFD8D8CEFFD6D6D8FFE0E0E0FFF6F5EDFF
              D1D1EDFF1E1CC0FF0707BEFF0707BFFF0707C0FF2120AAFFD3D5E9FE9FA0A0F6
              6A6A6B606A6A6B94BDBDBDFBBABBDCFF3A39B7FF2F2FB8FF0909ADFF0A0AA9FF
              0A0AA6FF1515ACFFADADCFFFD6D6CBFFCBCBCAFFC6C6C6FFE4E4E1FFEEEEEFFF
              3838A1FF2222A2FFACABB8FFC8C8C0FFC7C7C8FFCDCDCDFFE1E1D9FFC8CAE1FF
              2424BCFF0808B4FF0808B9FF0808BAFF0808BBFF0F0EABFFA1A2D5FEC0C0C0FC
              6A6A6B946A6A6BC0D9D8D7FE9999D1FF3838BBFF3636BCFF2C2CB7FF0909ADFF
              0A0AA9FF0A0AA4FF1C1CAFFFB1B1CFFFD6D6CBFFCCCCCBFFC7C7C7FFE4E4E1FF
              ECECEEFFACACB7FFC2C2BCFFBEBEBFFFC0C0C0FFCFCFC6FFC1C1D5FF2727B8FF
              0909ACFF0909B2FF0909B2FF0909B4FF0808B4FF0E0EB5FF6E6EBFFFD9D9D9FE
              6A6A6BC06A6A6BE1EBEAEBFF7D7CC7FF3838BFFF3434BEFF3536BEFF2A2AB8FF
              0909B0FF0909ACFF0A0AA8FF1C1CB1FFB2B2D0FFD7D7CCFFCBCBCBFFC7C7C8FF
              C8C8C3FFC6C6C3FFBFBFC1FFBDBDBDFFC5C5BCFFB8B8CEFF2929B5FF0A0AA8FF
              0909ACFF0909ADFF0909AFFF0909AFFF0909AFFF0C0CB0FF4747AFFFECECEDFF
              6A6A6BE16A6A6BF8F9F9F9FF6666C1FF3838C4FF3535C2FF3434C0FF3535BEFF
              3030BCFF1313B4FF0909ADFF0A0AA8FF1E1EB3FFAAAAD0FFD3D3CDFFCCCCCCFF
              C8C8C8FFC3C3C3FFC2C2C1FFC4C4BFFFB2B2CBFF2B2BB4FF0A0AA4FF0A0AA8FF
              0A0AA8FF0A0AA9FF0A0AA9FF0A0AA9FF0A0AA9FF0B0BA9FF3131A6FFFAFAFAFF
              6A6A6BF86A6A6BF8FBFBFBFF5959BEFF3B3BCAFF3A3AC8FF3737C4FF3535C2FF
              3636C0FF3636BEFF2323B8FF0909B1FF0A0AA7FF4949BEFFD6D6D4FFD3D3D1FF
              CDCDCDFFC8C8C8FFC4C4C3FFEDEDEDFF5F5FB3FF0C0C98FF0A0AA7FF0A0AA6FF
              0A0AA6FF0A0AA6FF0A0AA4FF0A0AA6FF0A0AA4FF0B0BA4FF2D2DA6FFFBFBFBFF
              6A6A6BF86A6A6BE1EDEDEEFF7F80CBFF4041CCFF3C3CCAFF3A3AC8FF383AC8FF
              3838C4FF3636C2FF3939C0FF2123B7FF4A4AC2FFCBCBDEFFE0E0DCFFD6D6D6FF
              D2D2D3FFCDCDCEFFC9C9C9FFE2E2E1FFF1F1F2FF4242A3FF0C0C99FF0A0AA4FF
              0A0AA4FF0A0AA4FF0B0BA3FF0B0BA3FF0B0BA1FF0E0EA1FF4443B0FFEDEDEEFF
              6A6A6BE16A6A6BC0DADADAFF9C9BD5FE4949CDFF3E3DD0FF3C3DCEFF3C3CCAFF
              3A3AC8FF3B39C7FF2828BDFF5C5CCCFFE5E5EDFFF4F4EDFFE5E5E6FFDEDEDEFF
              DCDCD9FFD9D9D3FFCDCDCDFFC8C8C8FFE5E5E1FFF1F1F3FF3F3FA0FF0C0C99FF
              0A0AA4FF0B0BA1FF0B0BA0FF0B0BA0FF0B0B9FFF1313A2FF6B6BC0FFDADADAFF
              6A6A6BC06A6A6B94C0C0C0FDBDBAE1FE5655CFFF4141D4FF3F3FD2FF3F3FCEFF
              3D3DCCFF2C2AC3FF5E5ED3FFEBEBF6FFFFFFFAFFF1F1F1FFEDEDEEFFF0F0E9FF
              D2D2E6FFBDBDD6FFDADAD3FFCFCFCFFFC9C9CAFFE5E5E2FFF1F1F3FF3A3AA0FF
              0C0C98FF0B0BA3FF0B0B9FFF0B0B9EFF0B0B9EFF1C1CA4FF9C9CD3FFC1C1C1FD
              6A6A6B946A6A6B609F9F9FF6DAD9EAFF6B6BCFFF4444D7FF4143D6FF4242D3FF
              3434CDFF6464DBFFEFEFFFFFFFFFFFFFFCFCFCFFF6F6F6FFFCFCF4FFE2E1F0FF
              5050CCFF4040C1FFC3C3DBFFE1E1D8FFD4D4D5FFCFCFCFFFE8E8E5FFF2F2F4FF
              4040A2FF0C0C99FF0F0FA2FF0F0FA0FF0F0F9DFF302FA9FFD1D1E8FEA0A0A0F6
              6A6A6B606A6A6B25787879F1E9E9EBFEA7A7DAFF6060DBFF4547DBFF3C3CD6FF
              5857DEFFF2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8F8FF5B5BD4FF
              2828BDFF2A2BBDFF4949C5FFC3C3DBFFE4E4DAFFD5D5D5FFCECED0FFE8E8E5FF
              F4F4F4FF4949AFFF2121A6FF2A2AA6FF2C2BA9FF5557B8FFEAEAECFE787879F1
              6A6A6B25000000007575769EBEBEBEFDC9CAE6FF7A79DBFF4C4CDFFF4141DBFF
              5757E0FFEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E7FFFF5B5BD7FF2E2EC6FF
              3E3EC9FF3A3AC5FF2C2EC1FF4A49C8FFC2C2DDFFE3E3DAFFD5D5D4FFDADAD3FF
              CACBD9FF4747BBFF2525ADFF2C2BACFF3332AEFFA5A4D8FFBFBFBFFD7575769E
              00000000000000006A6A6B40888889F0ECECEFFE9696D6FF7B7BE3FF4D4BE0FF
              4141DBFF5F5FE6FFE7E7FFFFFFFFFFFFE9E9FFFF5A5ADCFF3333CAFF4242CFFF
              4040CBFF3D3DC9FF3D3EC8FF3030C2FF4848C9FFC0C0DDFFECEEDEFFD0D0E0FF
              5554C7FF2828B3FF3232B4FF3434B1FF5453B7FFECECEFFE888889F06A6A6B40
              0000000000000000000000007C7C7C98B7B7B8FAD0D0ECFF8F8FDBFF6868E3FF
              4E4EE2FF3E40DBFF6565E9FFB2B2F7FF6565E4FF393BD2FF4646D7FF4343D4FF
              4343D1FF4242CFFF4040CBFF3F3FCAFF3333C4FF4E4ECBFF9E9EE2FF5C5BCFFF
              292ABAFF3636BCFF3938B8FF3F3EB1FFCBCBE9FFB7B7B8FA7C7C7C9800000000
              0000000000000000000000006A6A6B22838383D8D3D3D3FEB5B5E2FF9E9EE4FF
              6766E2FF4E50E6FF4646E0FF3D3DDAFF4444DCFF4B4BDCFF4848DBFF4847D9FF
              4646D5FF4443D3FF4343D1FF4242CFFF4143CDFF3A3AC8FF312FC5FF3535C3FF
              3C3CC3FF3D3DBEFF403FB5FFACACDCFFD3D3D3FE838383D86A6A6B2200000000
              000000000000000000000000000000006A6A6B43878788EAE1E1E1FFB5B5E2FF
              A7A6E4FF7877E5FF5151E5FF4F4FE4FF4E4EE2FF4D4DE0FF4C4CDEFF4B4BDCFF
              4949DBFF4848D7FF4747D5FF4545D3FF4545D1FF4343CFFF4242CCFF3F3FCBFF
              4343C2FF4645B6FFADADDCFFE1E1E1FF878788EA6A6A6B430000000000000000
              00000000000000000000000000000000000000006A6A6B4E878788EAD3D3D3FE
              D0D0ECFFAAA9DFFFA2A2ECFF6565E3FF5151E6FF4F4FE4FF4F4DE4FF4D4DE0FF
              4D4DDFFF4D4DDCFF4C49DBFF4A4AD8FF4749D6FF4747D4FF4949CBFF4B4BC3FF
              8E8ED0FFCDCCE8FFD3D3D3FE878788EA6A6A6B4E000000000000000000000000
              0000000000000000000000000000000000000000000000006A6A6B43838383D8
              B7B7B8FAECECEFFEC3C2E5FFADAEE1FF9E9DE8FF6F6FE0FF5C5CE1FF5452E2FF
              5051E1FF4F4FDFFF4F4FDBFF5150D6FF5151CFFF5F5FC8FFA1A1D3FEC7C8E0FE
              E4E4E7FEB7B7B8FA838383D86A6A6B4300000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000006A6A6B22
              7C7C7C98888889F0BFBFBFFDEBEBECFED8D9EBFEBDBDE4FEA8A7DCFF9695D7FF
              8886D4FF7F7DCEFF8C8BD2FFA1A2D9FFC0BEE1FED9D9EAFEEAEAECFEBFBFBFFD
              888889F07C7C7C986A6A6B220000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000006A6A6B407575769E787879F19F9F9FF6C0C0C0FDDADADAFFEDEDEEFF
              FBFBFBFFFBFBFBFFEDEDEEFFDADADAFFC0C0C0FD9F9F9FF6787879F17575769E
              6A6A6B4000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000006A6A6B256A6A6B606A6A6B946A6A6BC06A6A6BE1
              6A6A6BF86A6A6BF86A6A6BE16A6A6BC06A6A6B946A6A6B606A6A6B2500000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000FFC003FFFF0000FFFC00003FF800001FF000000FE0000007C0000003
              C000000380000001800000010000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000080000001
              80000001C0000003C0000003E0000007F000000FF800001FFC00003FFF0000FF
              FFC003FF}
            ShowUnicode = False
            ColWidths = (
              285
              331
              103
              188)
            RowHeights = (
              22
              22)
          end
          object chAgrupar: TCheckBox
            Left = 461
            Top = 586
            Width = 91
            Height = 30
            Alignment = taLeftJustify
            Anchors = [akRight, akBottom]
            Caption = 'Agrupar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = chAgruparClick
          end
        end
        object edCodigo: TDBEdit
          Left = 687
          Top = 32
          Width = 145
          Height = 28
          Anchors = [akTop, akRight]
          DataField = 'CODIGO_STK'
          DataSource = DSArticulos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edCodAlternativo: TDBEdit
          Left = 687
          Top = 82
          Width = 145
          Height = 28
          Anchors = [akTop, akRight]
          DataField = 'REEMPLAZO_STK'
          DataSource = DSArticulos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object edDias: TDBEdit
          Left = 848
          Top = 82
          Width = 145
          Height = 28
          Anchors = [akTop, akRight]
          DataField = 'VENCIMIENTO'
          DataSource = DSArticulos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 2
          ParentFont = False
          TabOrder = 3
        end
        object edFecha: TJvDateEdit
          Left = 996
          Top = 32
          Width = 121
          Height = 28
          DefaultToday = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = [akTop, akRight]
          ParentFont = False
          ShowNullDate = False
          TabOrder = 4
        end
        object edLote: TDBEdit
          Left = 687
          Top = 174
          Width = 306
          Height = 28
          Anchors = [akTop, akRight]
          DataField = 'LOTE'
          DataSource = DSArticulos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object dxDBBarCode1: TdxDBBarCode
          Left = 687
          Top = 335
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'CODIGOBARRA'
          DataBinding.DataSource = DSArticulos
          Properties.BarCodeSymbologyClassName = 'TdxBarCode128Symbology'
          Properties.Symbology.CharacterSet = csAuto
        end
        object edDetalle: TDBEdit
          Left = 687
          Top = 118
          Width = 433
          Height = 28
          Anchors = [akTop, akRight]
          DataField = 'DETALLE_STK'
          DataSource = DSArticulos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object edCopias: TEdit
          Left = 964
          Top = 529
          Width = 153
          Height = 33
          Alignment = taRightJustify
          Anchors = [akRight, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          TextHint = 'Indicar Copias'
          OnKeyPress = edCopiasKeyPress
        end
        object chGenerarRegistro: TCheckBox
          Left = 677
          Top = 586
          Width = 243
          Height = 21
          Anchors = [akRight, akBottom]
          Caption = 'Generar Registro de Rotulacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object DBMemo1: TDBMemo
          Left = 687
          Top = 208
          Width = 433
          Height = 121
          Anchors = [akTop, akRight]
          DataField = 'INFORMACION_ADICIONAL'
          DataSource = DSArticulos
          TabOrder = 10
        end
        object chPreview: TCheckBox
          Left = 1028
          Top = 586
          Width = 102
          Height = 24
          Anchors = [akRight, akBottom]
          Caption = 'Vista Previa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
      end
    end
    object pag2: TTabSheet
      Caption = 'Configuraciones'
      ImageIndex = 1
      object Label8: TLabel
        Left = 3
        Top = 8
        Width = 132
        Height = 21
        Caption = 'Rubros Habilitados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 431
        Top = 8
        Width = 135
        Height = 21
        Caption = 'Rubros Disponibles'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object dbgRubrosRotulos: TDBGrid
        Left = -4
        Top = 35
        Width = 398
        Height = 502
        DataSource = DSRubrosRotulos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDragDrop = dbgRubrosRotulosDragDrop
        OnDragOver = dbgRubrosRotulosDragOver
        Columns = <
          item
            Expanded = False
            FieldName = 'RUBRO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DETALLE_RUBRO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 283
            Visible = True
          end>
      end
      object dbgRubros: TDBGrid
        Left = 431
        Top = 35
        Width = 394
        Height = 502
        DataSource = DSRubros
        DragMode = dmAutomatic
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO_RUBRO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DETALLE_RUBRO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 243
            Visible = True
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Registro de Rotulacion'
      ImageIndex = 2
      object DBGrid1: TDBGrid
        Left = 16
        Top = 24
        Width = 689
        Height = 553
        DataSource = DSRegistro
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DETALLE_STK'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CANTIDAD'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECHA_IMPRESION'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOTE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 138
            Visible = True
          end>
      end
      object Button1: TButton
        Left = 592
        Top = 600
        Width = 113
        Height = 25
        Action = Buscar
        TabOrder = 1
      end
      object edFechaRegistro: TJvDateEdit
        Left = 752
        Top = 24
        Width = 153
        Height = 28
        DefaultToday = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ShowNullDate = False
        TabOrder = 2
        OnChange = BuscarExecute
      end
    end
  end
  object QArticulos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk,s.detalle_stk,s.detalle_corto,s.detalle_stk_' +
        'adicional,'
      
        '       s.rubro_stk, r.detalle_rubro, s.reemplazo_stk,s.unidad,co' +
        'alesce(s.dias_vencimiento,0) as Vencimiento,s.clase_articulo,'
      '       sp.informacion_adicional from stock s'
      'left join rubros r on r.codigo_rubro=s.rubro_stk'
      'left join stock_produccion_cab sp on sp.codigo=s.codigo_stk'
      
        'where s.clase_articulo in (1,3) and s. rubro_stk in(select rubro' +
        ' from tabla_rubros_rotulos)'
      'order by s.rubro_stk,s.detalle_stk')
    Left = 240
    Top = 609
  end
  object DSArticulos: TDataSource
    DataSet = CDSArticulos
    Left = 512
    Top = 513
  end
  object DSPArticulos: TDataSetProvider
    DataSet = QArticulos
    Left = 336
    Top = 609
  end
  object CDSArticulos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPArticulos'
    AfterOpen = CDSArticulosAfterOpen
    OnCalcFields = CDSArticulosCalcFields
    Left = 424
    Top = 609
    object CDSArticulosCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSArticulosDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSArticulosDETALLE_CORTO: TStringField
      FieldName = 'DETALLE_CORTO'
      Origin = 'DETALLE_CORTO'
      Size = 18
    end
    object CDSArticulosDETALLE_STK_ADICIONAL: TStringField
      FieldName = 'DETALLE_STK_ADICIONAL'
      Origin = 'DETALLE_STK_ADICIONAL'
      Size = 300
    end
    object CDSArticulosRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      Required = True
      Size = 3
    end
    object CDSArticulosDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object CDSArticulosREEMPLAZO_STK: TStringField
      DisplayLabel = 'Cod.Alternativo'
      FieldName = 'REEMPLAZO_STK'
      Origin = 'REEMPLAZO_STK'
      Required = True
    end
    object CDSArticulosUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object CDSArticulosVENCIMIENTO: TIntegerField
      FieldName = 'VENCIMIENTO'
      Origin = 'VENCIMIENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSArticulosCLASE_ARTICULO: TIntegerField
      FieldName = 'CLASE_ARTICULO'
      Origin = 'CLASE_ARTICULO'
    end
    object CDSArticulosLOTE: TStringField
      FieldKind = fkCalculated
      FieldName = 'LOTE'
      Size = 15
      Calculated = True
    end
    object CDSArticulosCODIGOBARRA: TStringField
      FieldKind = fkCalculated
      FieldName = 'CODIGOBARRA'
      Calculated = True
    end
    object CDSArticulosINFORMACION_ADICIONAL: TMemoField
      FieldName = 'INFORMACION_ADICIONAL'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object ActionList: TActionList
    Images = ImageList1
    Left = 944
    Top = 384
    object Imprimir: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirExecute
    end
    object Expand: TAction
      ImageIndex = 0
      OnExecute = ExpandExecute
    end
    object Contraer: TAction
      ImageIndex = 1
      OnExecute = ContraerExecute
    end
    object GuardarRegistro: TAction
      Caption = 'Guardar Registro'
    end
    object Buscar: TAction
      Caption = 'Buscar'
      OnExecute = BuscarExecute
    end
  end
  object frReport: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45606.024256388890000000
    ReportOptions.LastChange = 45606.024256388890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnAfterPrintReport = frReportAfterPrintReport
    Left = 936
    Top = 288
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frDetalle: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frDetalle'
    CloseDataSource = False
    DataSource = DSArticulos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 880
    Top = 472
  end
  object OpenDialog: TOpenDialog
    Left = 816
    Top = 400
  end
  object QRub: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select  * from rubros')
    Left = 140
    Top = 122
  end
  object QRubrosRot: TFDQuery
    AfterDelete = QRubrosRotAfterDelete
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.*,r.detalle_rubro from tabla_rubros_rotulos t'
      'left join  rubros r on r.codigo_rubro=t.rubro')
    Left = 36
    Top = 458
    object QRubrosRotRUBRO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
      Size = 3
    end
    object QRubrosRotDETALLE_RUBRO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Detalle Rubro'
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      Size = 35
    end
  end
  object DSRubrosRotulos: TDataSource
    DataSet = CDSRubrosRotulos
    Left = 284
    Top = 458
  end
  object DSRubros: TDataSource
    DataSet = CDSRubros
    Left = 404
    Top = 122
  end
  object ImageList1: TImageList
    Left = 428
    Top = 306
    Bitmap = {
      494C010102000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000447A96FF447A
      96FF447A96FF447A96FF447A96FF447A96FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000447A96FF85CE
      F5FF85CEF5FF85CEF5FF85CEF5FF447A96FF00000000000000002645558D447A
      96FF2645558D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCB7
      A3FFCCB7A3FFCCB7A3FFCCB7A3FFCCB7A3FFCCB7A3FFCCB7A3FF447A96FF85CE
      F5FF85CEF5FF85CEF5FF85CEF5FF447A96FF0000000000000000447A96FF7AC0
      E6FF447A96FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCB7
      A3FF000000000000000000000000000000000000000000000000447A96FF447A
      96FF447A96FF447A96FF447A96FF447A96FF0000000000000000447A96FF447A
      96FF447A96FF0000000000000000000000009C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCB7
      A3FF000000000000000000000000000000000000000000000000447A96FF447A
      96FF355C72BC0000000000000000000000000000000000000000447A96FF447A
      96FF000000000000000000000000000000009C8B78FFF2EBE1FFF2EBE1FFF2EB
      E1FFF2EBE1FFF2EBE1FFF2EBE1FF9C8B78FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCB7
      A3FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000447A96FF447A
      96FF447A96FF0000000000000000000000009C8B78FFF2EBE1FFF2EBE1FFF2EB
      E1FFF2EBE1FFF2EBE1FFF2EBE1FF9C8B78FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCB7
      A3FF000000000000000000000000000000000000000000000000447A96FF447A
      96FF447A96FF447A96FF447A96FF447A96FF0000000000000000447A96FF447A
      96FF000000000000000000000000000000009C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCB7
      A3FF000000000000000000000000000000000000000000000000447A96FF85CE
      F5FF85CEF5FF85CEF5FF85CEF5FF447A96FF0000000000000000447A96FF447A
      96FF447A96FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCB7
      A3FFCCB7A3FFCCB7A3FFCCB7A3FFCCB7A3FFCCB7A3FFCCB7A3FF447A96FF85CE
      F5FF85CEF5FF85CEF5FF85CEF5FF447A96FF0000000000000000447A96FF85CE
      F5FF447A96FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCB7
      A3FF000000000000000000000000000000000000000000000000447A96FF447A
      96FF447A96FF447A96FF447A96FF447A96FF29485892437994FB447A96FF85CE
      F5FF447A96FF437993FB2747558F000000009C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCB7
      A3FF000000000000000000000000000000000000000000000000447A96FF447A
      96FF355C72BC000000000000000000000000437895FC80C7EDFF85CEF5FF85CE
      F5FF85CEF5FF80C7EDFF437A94FB000000009C8B78FFF2EBE1FFF2EBE1FFF2EB
      E1FFF2EBE1FFF2EBE1FFF2EBE1FF9C8B78FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000447A96FF447A96FF447A96FF447A
      96FF447A96FF447A96FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000447A96FF85CEF5FF85CEF5FF85CE
      F5FF85CEF5FF85CEF5FF447A96FF000000009C8B78FFF2EBE1FFF2EBE1FFF2EB
      E1FFF2EBE1FFF2EBE1FFF2EBE1FF9C8B78FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000447A96FF85CEF5FF85CEF5FF85CE
      F5FF85CEF5FF447A96FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000447A96FF85CEF5FF457B97FF457B
      97FF457B97FF85CEF5FF447A96FF000000009C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000447A96FF85CEF5FF85CEF5FF85CE
      F5FF85CEF5FF447A96FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000437895FC80C7EDFF84CDF3FF84CD
      F3FF84CDF3FF80C7EDFF437A94FB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000447A96FF447A96FF447A96FF447A
      96FF447A96FF447A96FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000294A5994437994FB447A96FF447A
      96FF447A96FF437994FB28485991000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000447A9600447A96FF355C72BC0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFC0FFFF00000000FFC0C7FF00000000
      E000C7FF00000000EFC0C70000000000EFC7CF0000000000EFFFC70000000000
      EFC0CF0000000000EFC0C7FF00000000E000C7FF00000000EFC0010000000000
      EFC701000000000003FF01000000000003FF01000000000003FF01FF00000000
      03FF01FF000000001FFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object JvFormStorage1: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    StoredValues = <>
    Left = 316
    Top = 306
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    AutoFlush = True
    SubStorages = <>
    Left = 224
    Top = 296
  end
  object SaveDialog1: TSaveDialog
    Left = 812
    Top = 338
  end
  object QRegRotulo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'insert into tabla_registros_rotulos (id,fecha_impresion,codigo,l' +
        'ote,cantidad)'
      'values (-1,:fecha,:codigo,:lote,:cantidad)')
    Left = 940
    Top = 522
    ParamData = <
      item
        Name = 'FECHA'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'LOTE'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'CANTIDAD'
        DataType = ftFloat
        ParamType = ptInput
      end>
  end
  object CDSRubrosRotulos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRubrosRotulos'
    Left = 196
    Top = 458
    object CDSRubrosRotulosRUBRO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
      Size = 3
    end
    object CDSRubrosRotulosDETALLE_RUBRO: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      Size = 35
    end
  end
  object DSPRubrosRotulos: TDataSetProvider
    DataSet = QRubrosRot
    Options = []
    Left = 116
    Top = 458
  end
  object CDSRubros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRubros'
    Left = 308
    Top = 122
    object CDSRubrosCODIGO_RUBRO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
    object CDSRubrosDETALLE_RUBRO: TStringField
      DisplayLabel = 'Rubros'
      FieldName = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
  end
  object DSPRubros: TDataSetProvider
    DataSet = QRub
    Options = []
    Left = 220
    Top = 122
  end
  object QRegistro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select r.*,s.detalle_stk from Tabla_registros_rotulos r'
      'left join stock s on s.codigo_stk=r.codigo'
      'where r.fecha_impresion = :fecha')
    Left = 580
    Top = 114
    ParamData = <
      item
        Position = 1
        Name = 'FECHA'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object DSPRegistro: TDataSetProvider
    DataSet = QRegistro
    Options = []
    Left = 612
    Top = 82
  end
  object CDSRegistro: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'FECHA'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRegistro'
    Left = 612
    Top = 178
    object CDSRegistroID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRegistroFECHA_IMPRESION: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA_IMPRESION'
      Origin = 'FECHA_IMPRESION'
    end
    object CDSRegistroCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object CDSRegistroDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object CDSRegistroCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSRegistroLOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
  end
  object DSRegistro: TDataSource
    DataSet = CDSRegistro
    Left = 964
    Top = 114
  end
end
