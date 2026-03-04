object FormRotulos_2: TFormRotulos_2
  Left = 0
  Top = 0
  Caption = 'Rotulos'
  ClientHeight = 837
  ClientWidth = 1312
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1312
    Height = 837
    ActivePage = pagRotulos
    Align = alClient
    TabOrder = 0
    object pagRotulos: TTabSheet
      Caption = 'Rotulos'
      ImageIndex = 3
      object pnDatos: TPanel
        Left = 842
        Top = 0
        Width = 462
        Height = 734
        Align = alRight
        BevelInner = bvRaised
        BevelOuter = bvSpace
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          462
          734)
        object Label1: TLabel
          Left = 10
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
          Left = 10
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
          Left = 171
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
          Left = 319
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
          Left = 10
          Top = 149
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
          ExplicitLeft = 11
        end
        object Label7: TLabel
          Left = 306
          Top = 543
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
        object edCodigo: TDBEdit
          Left = 10
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
          TabOrder = 0
        end
        object edCodAlternativo: TDBEdit
          Left = 10
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
          TabOrder = 1
        end
        object edDias: TDBEdit
          Left = 171
          Top = 82
          Width = 143
          Height = 28
          Anchors = [akTop, akRight]
          DataField = 'DIAS_VENCIMIENTO'
          DataSource = DSArticulos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 3
          ParentFont = False
          TabOrder = 2
        end
        object edFecha: TJvDateEdit
          Left = 319
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
          TabOrder = 3
        end
        object edLote: TDBEdit
          Left = 10
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
          TabOrder = 4
        end
        object dxDBBarCode1: TdxDBBarCode
          Left = 10
          Top = 295
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'CODIGOBARRA'
          DataBinding.DataSource = DSArticulos
          Properties.BarCodeSymbologyClassName = 'TdxBarCode128Symbology'
          Properties.Symbology.CharacterSet = csAuto
        end
        object edDetalle: TDBEdit
          Left = 10
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
          TabOrder = 6
        end
        object edCopias: TEdit
          Left = 303
          Top = 568
          Width = 136
          Height = 33
          Alignment = taRightJustify
          Anchors = [akRight, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Text = '1'
          TextHint = 'Indicar Copias'
          OnKeyPress = edCopiasKeyPress
        end
        object chGenerarRegistro: TCheckBox
          Left = 170
          Top = 648
          Width = 243
          Height = 21
          Alignment = taLeftJustify
          Anchors = [akRight, akBottom]
          Caption = 'Generar Registro de Rotulacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object DBMemo1: TDBMemo
          Left = 10
          Top = 208
          Width = 432
          Height = 81
          Anchors = [akTop, akRight]
          DataField = 'INFORMACION_ADICIONAL'
          DataSource = DSArticulos
          TabOrder = 9
        end
        object chPreview: TCheckBox
          Left = 311
          Top = 675
          Width = 102
          Height = 24
          Alignment = taLeftJustify
          Anchors = [akRight, akBottom]
          Caption = 'Vista Previa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
      end
      object pnPie: TPanel
        Left = 0
        Top = 734
        Width = 1304
        Height = 73
        Align = alBottom
        BevelOuter = bvNone
        Color = clMenuHighlight
        ParentBackground = False
        TabOrder = 1
        OnDblClick = pnPieDblClick
        DesignSize = (
          1304
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
        object btImprimir: TAdvGlowButton
          Left = 1089
          Top = 14
          Width = 191
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
          Rounded = True
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
        object btSalir: TAdvGlowButton
          Left = 871
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
          Rounded = True
          UseAppearance = True
          TabOrder = 2
          OnClick = btSalirClick
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
        end
      end
      object pnArticulos: TPanel
        Left = 0
        Top = 0
        Width = 842
        Height = 734
        Align = alClient
        TabOrder = 2
        DesignSize = (
          842
          734)
        object Label10: TLabel
          Left = 10
          Top = 668
          Width = 124
          Height = 20
          Anchors = [akLeft, akBottom]
          Caption = 'Buscar por Nombre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentFont = False
          ExplicitTop = 669
        end
        object dbgArticulos: TDBGrid
          Left = 1
          Top = 1
          Width = 840
          Height = 655
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DSArticulos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDblClick = dbgArticulosDblClick
          OnKeyDown = dbgArticulosKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'DETALLE_STK'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -15
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 416
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE_RUBRO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -15
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'CODIGO_STK'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -15
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 180
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REEMPLAZO_STK'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -15
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 196
              Visible = True
            end>
        end
        object edbBuscador: TJvDBFindEdit
          Left = 5
          Top = 694
          Width = 562
          Height = 28
          Anchors = [akLeft, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = ''
          OnKeyDown = edbBuscadorKeyDown
          TextHint = 'Buscador'
          DataField = 'DETALLE_STK'
          DataSource = DSArticulos
          FindStyle = fsFilter
        end
      end
    end
    object pagRegistro: TTabSheet
      Caption = 'Registro de Rotulacion'
      ImageIndex = 2
      DesignSize = (
        1304
        807)
      object Label11: TLabel
        Left = 952
        Top = 8
        Width = 160
        Height = 21
        Caption = 'Fecha de Registracion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 952
        Top = 83
        Width = 244
        Height = 20
        Caption = 'Deposito  que Acopia la Produccion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgRegistro: TDBGrid
        Left = 3
        Top = 3
        Width = 933
        Height = 717
        Anchors = [akLeft, akTop, akBottom]
        DataSource = DSRegistro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnColEnter = dbgRegistroColEnter
        OnDblClick = dbgRegistroDblClick
        Columns = <
          item
            Color = clLightyellow
            Expanded = False
            FieldName = 'CODIGO'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 105
            Visible = True
          end
          item
            Color = clLightyellow
            Expanded = False
            FieldName = 'DETALLE_STK'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 381
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CANTIDAD'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 121
            Visible = True
          end
          item
            Color = clLightyellow
            Expanded = False
            FieldName = 'FECHA_IMPRESION'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 121
            Visible = True
          end
          item
            Color = clLightyellow
            Expanded = False
            FieldName = 'LOTE'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -16
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 156
            Visible = True
          end>
      end
      object edFechaRegistro: TJvDateEdit
        Left = 952
        Top = 35
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
        TabOrder = 1
        OnAcceptDate = edFechaRegistroAcceptDate
      end
      object pnPieRegistro: TPanel
        Left = 0
        Top = 751
        Width = 1304
        Height = 56
        Align = alBottom
        Color = clMenuHighlight
        ParentBackground = False
        TabOrder = 2
        OnDblClick = pnPieRegistroDblClick
        object BitBtn1: TBitBtn
          Left = 89
          Top = 11
          Width = 162
          Height = 29
          Action = LimpiarRegistro
          Caption = 'Limpiar Registro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button1: TButton
          Left = 257
          Top = 11
          Width = 161
          Height = 29
          Action = Buscar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Button2: TButton
          Left = 776
          Top = 11
          Width = 160
          Height = 29
          Action = ImprimirRegistro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Button3: TButton
          Left = 600
          Top = 11
          Width = 161
          Height = 29
          Action = GuardarRegistro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
      end
      object dbcDepositos: TJvDBLookupCombo
        Left = 952
        Top = 109
        Width = 297
        Height = 27
        DropDownCount = 15
        DisplayEmpty = 'Todos'
        EmptyValue = '-1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        LookupField = 'ID'
        LookupDisplay = 'NOMBRE'
        LookupSource = DSDepositos
        ParentFont = False
        TabOrder = 3
      end
    end
    object pag2: TTabSheet
      Caption = 'Configuraciones'
      ImageIndex = 1
      DesignSize = (
        1304
        807)
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
        Left = 3
        Top = 35
        Width = 398
        Height = 748
        Anchors = [akLeft, akTop, akBottom]
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
        Height = 748
        Anchors = [akLeft, akTop, akBottom]
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
  end
  object DSArticulos: TDataSource
    DataSet = CDSArticulos
    Left = 352
    Top = 377
  end
  object CDSArticulos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPArticulos'
    AfterScroll = CDSArticulosAfterScroll
    OnCalcFields = CDSArticulosCalcFields
    Left = 256
    Top = 377
    object CDSArticulosCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = []
      Size = 8
    end
    object CDSArticulosDETALLE_STK: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object CDSArticulosDETALLE_CORTO: TStringField
      FieldName = 'DETALLE_CORTO'
      Origin = 'DETALLE_CORTO'
      ProviderFlags = []
      Size = 18
    end
    object CDSArticulosDETALLE_STK_ADICIONAL: TStringField
      FieldName = 'DETALLE_STK_ADICIONAL'
      Origin = 'DETALLE_STK_ADICIONAL'
      ProviderFlags = []
      Size = 300
    end
    object CDSArticulosRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      ProviderFlags = []
      Size = 3
    end
    object CDSArticulosDETALLE_RUBRO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      Size = 35
    end
    object CDSArticulosREEMPLAZO_STK: TStringField
      DisplayLabel = 'Cod.Alternativo'
      FieldName = 'REEMPLAZO_STK'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
    end
    object CDSArticulosUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      ProviderFlags = []
      Size = 3
    end
    object CDSArticulosCLASE_ARTICULO: TIntegerField
      FieldName = 'CLASE_ARTICULO'
      Origin = 'CLASE_ARTICULO'
      ProviderFlags = []
    end
    object CDSArticulosDIAS_VENCIMIENTO: TIntegerField
      FieldName = 'DIAS_VENCIMIENTO'
    end
    object CDSArticulosLOTE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'LOTE'
      ProviderFlags = []
      Size = 15
    end
    object CDSArticulosCODIGOBARRA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CODIGOBARRA'
      ProviderFlags = []
    end
    object CDSArticulosINFORMACION_ADICIONAL: TMemoField
      FieldName = 'INFORMACION_ADICIONAL'
      Origin = 'INFORMACION_ADICIONAL'
      ProviderFlags = []
      BlobType = ftMemo
    end
  end
  object DSPArticulos: TDataSetProvider
    DataSet = QArticulos
    Options = []
    Left = 144
    Top = 377
  end
  object QArticulos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    SQL.Strings = (
      
        'select s.codigo_stk,s.detalle_stk,s.detalle_corto,s.detalle_stk_' +
        'adicional,'
      
        '       s.rubro_stk, r.detalle_rubro, s.reemplazo_stk,s.unidad,s.' +
        'dias_vencimiento,s.clase_articulo,'
      '       sp.informacion_adicional from stock s'
      'left join rubros r on r.codigo_rubro=s.rubro_stk'
      'left join stock_produccion_cab sp on sp.codigo=s.codigo_stk'
      
        'where s.clase_articulo in (1,3) and s. rubro_stk in(select rubro' +
        ' from tabla_rubros_rotulos)'
      'order by s.rubro_stk,s.detalle_stk')
    Left = 40
    Top = 377
    object QArticulosCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QArticulosDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object QArticulosDETALLE_CORTO: TStringField
      FieldName = 'DETALLE_CORTO'
      Origin = 'DETALLE_CORTO'
      Size = 18
    end
    object QArticulosDETALLE_STK_ADICIONAL: TStringField
      FieldName = 'DETALLE_STK_ADICIONAL'
      Origin = 'DETALLE_STK_ADICIONAL'
      Size = 300
    end
    object QArticulosRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      Required = True
      Size = 3
    end
    object QArticulosDETALLE_RUBRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QArticulosREEMPLAZO_STK: TStringField
      FieldName = 'REEMPLAZO_STK'
      Origin = 'REEMPLAZO_STK'
      Required = True
    end
    object QArticulosUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QArticulosCLASE_ARTICULO: TIntegerField
      FieldName = 'CLASE_ARTICULO'
      Origin = 'CLASE_ARTICULO'
    end
    object QArticulosINFORMACION_ADICIONAL: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'INFORMACION_ADICIONAL'
      Origin = 'INFORMACION_ADICIONAL'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
    object QArticulosDIAS_VENCIMIENTO: TIntegerField
      FieldName = 'DIAS_VENCIMIENTO'
      Origin = 'DIAS_VENCIMIENTO'
    end
  end
  object QRubrosRot: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.*,r.detalle_rubro from tabla_rubros_rotulos t'
      'left join  rubros r on r.codigo_rubro=t.rubro')
    Left = 44
    Top = 458
    object QRubrosRotRUBRO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
  object DSPRubrosRotulos: TDataSetProvider
    DataSet = QRubrosRot
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 140
    Top = 458
  end
  object CDSRubrosRotulos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRubrosRotulos'
    AfterDelete = CDSRubrosRotulosAfterDelete
    Left = 252
    Top = 458
    object CDSRubrosRotulosRUBRO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
  object DSRubrosRotulos: TDataSource
    DataSet = CDSRubrosRotulos
    Left = 356
    Top = 458
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    AutoFlush = True
    SubStorages = <>
    Left = 224
    Top = 296
  end
  object JvFormStorage1: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    StoredValues = <>
    Left = 348
    Top = 298
  end
  object ImageList1: TImageList
    Left = 460
    Top = 298
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
  object QRegRotulo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'insert into tabla_registros_rotulos (id,fecha_impresion,codigo,l' +
        'ote,cantidad)'
      'values (-1,:fecha,:codigo,:lote,:cantidad)')
    Left = 924
    Top = 466
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
  object frDetalle: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frDetalle'
    CloseDataSource = False
    DataSource = DSArticulos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1115
    Top = 384
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
    end
    object Contraer: TAction
      ImageIndex = 1
    end
    object GuardarRegistro: TAction
      Caption = 'Guardar Registro'
      OnExecute = GuardarRegistroExecute
    end
    object Buscar: TAction
      Caption = 'Buscar'
      OnExecute = BuscarExecute
    end
    object LimpiarRegistro: TAction
      Caption = 'Limpiar Registro'
      OnExecute = LimpiarRegistroExecute
    end
    object ImprimirRegistro: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirRegistroExecute
    end
  end
  object OpenDialog: TOpenDialog
    Left = 816
    Top = 400
  end
  object SaveDialog1: TSaveDialog
    Left = 812
    Top = 338
  end
  object DSRegistro: TDataSource
    DataSet = CDSRegistro
    Left = 420
    Top = 202
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
    AfterPost = CDSRegistroAfterPost
    Left = 340
    Top = 202
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
      Alignment = taCenter
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
  end
  object QRegistro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select r.*,s.detalle_stk from Tabla_registros_rotulos r'
      'left join stock s on s.codigo_stk=r.codigo'
      'where r.fecha_impresion = :fecha')
    Left = 148
    Top = 202
    ParamData = <
      item
        Position = 1
        Name = 'FECHA'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QRegistroID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRegistroFECHA_IMPRESION: TSQLTimeStampField
      FieldName = 'FECHA_IMPRESION'
      Origin = 'FECHA_IMPRESION'
    end
    object QRegistroCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object QRegistroLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object QRegistroCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QRegistroDETALLE_STK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
  end
  object DSPRegistro: TDataSetProvider
    DataSet = QRegistro
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 244
    Top = 202
  end
  object DSRubros: TDataSource
    DataSet = CDSRubros
    Left = 404
    Top = 122
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
  object QRub: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select  * from rubros')
    Left = 148
    Top = 130
  end
  object frRegistro: TfrxDBDataset
    UserName = 'frRegistro'
    CloseDataSource = False
    DataSource = DSRegistro
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1179
    Top = 384
    FieldDefs = <
      item
        FieldName = 'ID'
      end
      item
        FieldName = 'FECHA_IMPRESION'
      end
      item
        FieldName = 'CODIGO'
        FieldType = fftString
      end
      item
        FieldName = 'DETALLE_STK'
        FieldType = fftString
        Size = 45
      end
      item
        FieldName = 'CANTIDAD'
      end
      item
        FieldName = 'LOTE'
        FieldType = fftString
        Size = 20
      end>
  end
  object QDepositos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from depositos where activo='#39'S'#39)
    Left = 1004
    Top = 218
  end
  object DSDepositos: TDataSource
    DataSet = QDepositos
    Left = 1100
    Top = 218
  end
  object frReport: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45978.937531828710000000
    ReportOptions.LastChange = 45978.937531828710000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1057
    Top = 322
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
