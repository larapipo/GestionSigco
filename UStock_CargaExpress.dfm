inherited FormStock_Express: TFormStock_Express
  Caption = 'Stock Express'
  ClientHeight = 718
  ClientWidth = 1330
  StyleElements = [seFont, seClient, seBorder]
  OnResize = FormResize
  ExplicitWidth = 1348
  ExplicitHeight = 759
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1330
    Height = 665
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1330
    ExplicitHeight = 665
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1330
      Height = 41
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Alta Articulos Express'
      Color = clMenuHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        1330
        41)
      object Label1: TLabel
        Left = 800
        Top = 10
        Width = 97
        Height = 25
        Caption = 'SubRubro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object sBuscar: TDBAdvSearchEdit
        Left = 911
        Top = 11
        Width = 409
        Height = 22
        Appearance.CategoryControlFont = False
        Appearance.CategoryFont.Charset = DEFAULT_CHARSET
        Appearance.CategoryFont.Color = clWindowText
        Appearance.CategoryFont.Height = -11
        Appearance.CategoryFont.Name = 'Tahoma'
        Appearance.CategoryFont.Style = []
        Appearance.DescriptionFont.Charset = DEFAULT_CHARSET
        Appearance.DescriptionFont.Color = clWindowText
        Appearance.DescriptionFont.Height = -11
        Appearance.DescriptionFont.Name = 'Tahoma'
        Appearance.DescriptionFont.Style = []
        Appearance.DescriptionControlFont = False
        Appearance.HighlightTextColor = clBlue
        Appearance.SelectionColor = 15914434
        Appearance.SelectionTextColor = 3881787
        Appearance.FilterCountFont.Charset = DEFAULT_CHARSET
        Appearance.FilterCountFont.Color = clWindowText
        Appearance.FilterCountFont.Height = -11
        Appearance.FilterCountFont.Name = 'Tahoma'
        Appearance.FilterCountFont.Style = []
        Appearance.FilterCountFormat = '(%d)'
        Appearance.ItemCategoryFont.Charset = DEFAULT_CHARSET
        Appearance.ItemCategoryFont.Color = clOrange
        Appearance.ItemCategoryFont.Height = -11
        Appearance.ItemCategoryFont.Name = 'Tahoma'
        Appearance.ItemCategoryFont.Style = []
        Appearance.ItemCategoryFormat = 'in %s'
        AutoSelect = False
        BorderColor = 10724259
        Categories = <>
        CategoryButton.Appearance.BorderColor = 11382963
        CategoryButton.Appearance.BorderColorHot = 11565130
        CategoryButton.Appearance.BorderColorCheckedHot = 11565130
        CategoryButton.Appearance.BorderColorDown = 11565130
        CategoryButton.Appearance.BorderColorChecked = 13744549
        CategoryButton.Appearance.BorderColorDisabled = 13948116
        CategoryButton.Appearance.Color = clWhite
        CategoryButton.Appearance.ColorTo = clWhite
        CategoryButton.Appearance.ColorChecked = 13744549
        CategoryButton.Appearance.ColorCheckedTo = 13744549
        CategoryButton.Appearance.ColorDisabled = clWhite
        CategoryButton.Appearance.ColorDisabledTo = clNone
        CategoryButton.Appearance.ColorDown = 11565130
        CategoryButton.Appearance.ColorDownTo = 11565130
        CategoryButton.Appearance.ColorHot = 16444643
        CategoryButton.Appearance.ColorHotTo = 16444643
        CategoryButton.Appearance.ColorMirror = clWhite
        CategoryButton.Appearance.ColorMirrorTo = clWhite
        CategoryButton.Appearance.ColorMirrorHot = 16444643
        CategoryButton.Appearance.ColorMirrorHotTo = 16444643
        CategoryButton.Appearance.ColorMirrorDown = 11565130
        CategoryButton.Appearance.ColorMirrorDownTo = 11565130
        CategoryButton.Appearance.ColorMirrorChecked = 13744549
        CategoryButton.Appearance.ColorMirrorCheckedTo = 13744549
        CategoryButton.Appearance.ColorMirrorDisabled = clWhite
        CategoryButton.Appearance.ColorMirrorDisabledTo = clNone
        CategoryButton.Appearance.GradientHot = ggVertical
        CategoryButton.Appearance.GradientMirrorHot = ggVertical
        CategoryButton.Appearance.GradientDown = ggVertical
        CategoryButton.Appearance.GradientMirrorDown = ggVertical
        CategoryButton.Appearance.GradientChecked = ggVertical
        CategoryButton.Appearance.TextColorChecked = 3750459
        CategoryButton.Appearance.TextColorDown = 2303013
        CategoryButton.Appearance.TextColorHot = 2303013
        CategoryButton.Appearance.TextColorDisabled = 13948116
        CategoryButton.Visible = False
        Columns = <
          item
            Alignment = gtaCenter
            ControlFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Trimming = True
            Width = 64
            DataField = 'CODIGO_SUBRUBRO'
          end
          item
            ControlFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Trimming = True
            Width = 200
            DataField = 'DETALLE_SUBRUBRO'
          end
          item
            Color = clInfoBk
            ControlFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 130
            DataField = 'MUESTRARUBRO'
          end>
        DragMode = dmAutomatic
        DropDownHeader.Color = clWhite
        DropDownHeader.ColorTo = clNone
        DropDownHeader.Caption = 
          '<B>  Cos.Sub             Descripcion                            ' +
          '                Rubro </B>'
        DropDownHeader.Font.Charset = DEFAULT_CHARSET
        DropDownHeader.Font.Color = clBlue
        DropDownHeader.Font.Height = -11
        DropDownHeader.Font.Name = 'Tahoma'
        DropDownHeader.Font.Style = []
        DropDownHeader.Visible = True
        DropDownHeader.BorderColor = 11250603
        DropDownHeader.BorderWidth = 0
        DropDownHeader.Buttons = <>
        DropDownHeight = 350
        DropDownFooter.Color = clWhite
        DropDownFooter.ColorTo = clNone
        DropDownFooter.Font.Charset = DEFAULT_CHARSET
        DropDownFooter.Font.Color = 6184542
        DropDownFooter.Font.Height = -11
        DropDownFooter.Font.Name = 'Tahoma'
        DropDownFooter.Font.Style = []
        DropDownFooter.Visible = False
        DropDownFooter.BorderColor = 11250603
        DropDownFooter.BorderWidth = 0
        DropDownFooter.SizeGrip = False
        DropDownFooter.Buttons = <>
        DropDownShadow = True
        DropDownWidth = 550
        EmptyText = 'Buscar...'
        EmptyTextFocused = True
        FilterCondition.AutoSelect = True
        FilterCondition.Column = 1
        FilterCondition.Text = ' '
        FocusBorder = True
        FocusColor = clWhite
        FocusFontColor = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4474440
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 20
        Items = <>
        ParentFont = False
        SearchButton.Appearance.BorderColor = 11382963
        SearchButton.Appearance.BorderColorHot = 11565130
        SearchButton.Appearance.BorderColorCheckedHot = 11565130
        SearchButton.Appearance.BorderColorDown = 11565130
        SearchButton.Appearance.BorderColorChecked = 13744549
        SearchButton.Appearance.BorderColorDisabled = 13948116
        SearchButton.Appearance.Color = clWhite
        SearchButton.Appearance.ColorTo = clWhite
        SearchButton.Appearance.ColorChecked = 13744549
        SearchButton.Appearance.ColorCheckedTo = 13744549
        SearchButton.Appearance.ColorDisabled = clWhite
        SearchButton.Appearance.ColorDisabledTo = clNone
        SearchButton.Appearance.ColorDown = 11565130
        SearchButton.Appearance.ColorDownTo = 11565130
        SearchButton.Appearance.ColorHot = 16444643
        SearchButton.Appearance.ColorHotTo = 16444643
        SearchButton.Appearance.ColorMirror = clWhite
        SearchButton.Appearance.ColorMirrorTo = clWhite
        SearchButton.Appearance.ColorMirrorHot = 16444643
        SearchButton.Appearance.ColorMirrorHotTo = 16444643
        SearchButton.Appearance.ColorMirrorDown = 11565130
        SearchButton.Appearance.ColorMirrorDownTo = 11565130
        SearchButton.Appearance.ColorMirrorChecked = 13744549
        SearchButton.Appearance.ColorMirrorCheckedTo = 13744549
        SearchButton.Appearance.ColorMirrorDisabled = clWhite
        SearchButton.Appearance.ColorMirrorDisabledTo = clNone
        SearchButton.Appearance.GradientHot = ggVertical
        SearchButton.Appearance.GradientMirrorHot = ggVertical
        SearchButton.Appearance.GradientDown = ggVertical
        SearchButton.Appearance.GradientMirrorDown = ggVertical
        SearchButton.Appearance.GradientChecked = ggVertical
        SearchButton.Appearance.TextColorChecked = 3750459
        SearchButton.Appearance.TextColorDown = 2303013
        SearchButton.Appearance.TextColorHot = 2303013
        SearchButton.Appearance.TextColorDisabled = 13948116
        SearchButton.Visible = False
        TabOrder = 0
        Text = ''
        Version = '1.1.6.0'
        OnSelect = sBuscarSelect
        OnKeyPress = sBuscarKeyPress
        DropDownColor = clBlack
        ListSource = DSSubRub
      end
      object chbCostoConIva: TAdvOfficeCheckBox
        Left = 599
        Top = 12
        Width = 185
        Height = 20
        Anchors = [akTop, akRight]
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Alignment = taLeftJustify
        Caption = 'Precio Compra Con Iva'
        ReturnIsTab = False
        State = cbChecked
        Version = '1.8.4.2'
      end
      object dbcDepositos: TJvDBLookupCombo
        Left = 312
        Top = 11
        Width = 265
        Height = 22
        DisplayEmpty = 'Deposito Por Defecto'
        EmptyValue = '-1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Anchors = [akTop, akRight]
        LookupField = 'ID'
        LookupDisplay = 'NOMBRE'
        LookupSource = DSDeposito
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 608
      Width = 1330
      Height = 57
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 10
      Padding.Bottom = 10
      ParentBackground = False
      TabOrder = 1
      DesignSize = (
        1330
        57)
      object sbReporte: TSpeedButton
        Left = 320
        Top = 14
        Width = 23
        Height = 22
        Anchors = [akLeft, akBottom]
        Flat = True
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
      object Label4: TLabel
        Left = 610
        Top = 3
        Width = 97
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Lista de Precio 2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ExplicitLeft = 412
      end
      object BitBtn1: TBitBtn
        Left = 1141
        Top = 10
        Width = 179
        Height = 37
        Action = AltaStock
        Align = alRight
        Caption = 'Dar de Alta Stock'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000090000
          000E000000100000001000000010000000100000001000000011000000110000
          0011000000110000001100000011000000100000000B0000000377544AC1A474
          66FFA47465FFA47465FFA37364FFA37264FFA27263FFA27263FFA27162FFA271
          62FFA17062FFA17061FFA17061FFA17061FF735046C30000000AAC7E71FFF8F1
          EEFFF8F0EDFFF8F1ECFFF8F0ECFFF8F0ECFFF5EDE9FFF2EAE6FFF5EDE9FFF8EF
          EBFFF7EFEBFFF7EFEBFFF7EFEBFFF7F0EBFFA8796AFF0000000FAD8172FFF8F2
          EFFFF6EDE8FFF7EDE8FFF6ECE8FFF4EBE6FFE6DBD6FFA87A62FFE7DCD8FFF5EB
          E6FFF6EDE7FFF6ECE8FFF6ECE8FFF8F0ECFFA97B6BFF00000010AF8375FFF9F2
          EFFFF6ECE8FFF6EDE9FFF6ECE7FFEDE5E0FFAD836EFFC58A51FFB08975FFEDE4
          E0FFF6ECE7FFF6ECE8FFF6ECE8FFF8F1EDFFAA7C6DFF0000000FB18577FFF9F3
          F0FFF7EDE9FFF7EDE8FFF3EAE5FFCDB3A8FFAC6E41FFF7C67AFFA96B40FFCDB6
          ABFFF1E8E4FFF7EDE8FFF6EDE9FFF9F1EDFFAB7E6FFF0000000EB2887AFFF9F4
          F0FFF7EEE9FFF5EBE7FFE4D8D1FFA06544FFEFBE79FFF9CA82FFEDBB78FF9F63
          42FFE3D7D2FFF4EBE7FFF7EEE9FFF8F1EEFFAD8072FF0000000EB48A7CFFF9F4
          F1FFF7EEEAFFF4EBE7FFC69E83FFB47C54FFB47B53FFFACF88FFB37851FFB277
          4FFFC3987EFFF2E9E5FFF7EEE9FFF9F2EFFFAF8274FF0000000DB68D7FFFFAF4
          F2FFF7EEEAFFF6EDE9FFF2E9E5FFE9E1DDFFB77F57FFFDD48EFFB1744CFFE8DF
          DBFFF1E7E4FFF6EDE9FFF7EEEAFFF9F2EFFFB08476FF0000000CB88F82FFFAF5
          F2FFF7EEEAFFF7EEEBFFF7EEEAFFF0E7E5FFBA845CFFFEEAC1FFB2774FFFEFE7
          E3FFF7EEEAFFF7EFEAFFF7EEEAFFF9F3F0FFB28679FF0000000CB99184FFFAF5
          F3FFF8EFEBFFF7EFEAFFF7EFEBFFF2EAE6FFCB9E76FFCB9E76FFCB9E76FFF2E8
          E5FFF7EFEAFFF7EEEAFFF7EFEBFFFAF4F1FFB3897BFF0000000BBB9387FFFAF6
          F4FFF7EFEBFFF7EEEBFFF8EFEBFFF6EDEAFFF2EAE6FFF1E9E5FFF2EAE6FFF6ED
          EAFFF7EFEBFFF7EFEBFFF7EEEBFFFAF3F2FFB58B7DFF0000000AD4A477FFD8B1
          8BFFD2A373FFD1A372FFD1A272FFD1A170FFD0A070FFD09F6FFFCF9F6EFFCE9E
          6DFFCF9D6CFFCE9C6BFFCE9C6AFFD3A77CFFCE9764FF00000009D4A678FFEED7
          B6FFE2BB87FFE2BA86FFE2B985FFE2BA85FFE2BA85FFE1B984FFE1B984FFE1B8
          84FFE1B883FFE1B883FFE0B783FFEBD0AAFFCE9864FF00000009D4A679FFF1DC
          BCFFF0DCBCFFF0DBBCFFF0DBBCFFF0DCBBFFEFDABBFFEFDABBFFEFDABAFFEFDA
          B9FFEFD8B9FFEFD9B8FFEFD8B6FFEED5B1FFCE9865FF000000089E7B5AC0D4A6
          79FFD4A577FFD4A476FFD3A375FFD3A272FFD2A071FFD1A06FFFD09F6FFFD09D
          6DFFD09C6CFFD09B6AFFCF9B68FFCF9A67FF99714BC200000005}
        ParentFont = False
        TabOrder = 0
      end
      object edEtiqueta1: TEdit
        Left = 7
        Top = 14
        Width = 307
        Height = 24
        Anchors = [akLeft, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = 'edEtiqueta1'
      end
      object BitBtn3: TBitBtn
        Left = 978
        Top = 10
        Width = 163
        Height = 37
        Action = Imprimir
        Align = alRight
        Caption = 'Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
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
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object Button1: TButton
        Left = 925
        Top = 11
        Width = 34
        Height = 31
        Hint = 'Exportar a Excel'
        Anchors = [akTop, akRight]
        Caption = 'XLS'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = Button1Click
      end
      object dbcListas: TJvDBLookupCombo
        Left = 608
        Top = 19
        Width = 302
        Height = 21
        DisplayEmpty = 'Sin Lista Seleccionada'
        EmptyValue = '-1'
        Anchors = [akTop, akRight]
        LookupField = 'ID'
        LookupDisplay = 'NOMBRE'
        LookupSource = DSLista
        TabOrder = 4
      end
    end
    object dbgStock: TDBAdvGrid
      Left = 0
      Top = 41
      Width = 1330
      Height = 567
      Align = alClient
      ColCount = 8
      Ctl3D = True
      DrawingStyle = gdsClassic
      FixedColor = clMoneyGreen
      RowCount = 2
      FixedRows = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnMouseMove = dbgStockMouseMove
      OnDblClickCell = dbgStockDblClickCell
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = 4474440
      ActiveCellFont.Height = -13
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ActiveCellColor = 11565130
      ActiveCellColorTo = 11565130
      AutoNumAlign = True
      BorderColor = 11250603
      ControlLook.FixedGradientFrom = clWhite
      ControlLook.FixedGradientTo = clWhite
      ControlLook.FixedGradientHoverFrom = clGray
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
      ControlLook.DropDownHeader.Font.Name = 'Tahoma'
      ControlLook.DropDownHeader.Font.Style = []
      ControlLook.DropDownHeader.Visible = True
      ControlLook.DropDownHeader.Buttons = <>
      ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownFooter.Font.Color = clWindowText
      ControlLook.DropDownFooter.Font.Height = -11
      ControlLook.DropDownFooter.Font.Name = 'Tahoma'
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
      FilterDropDown.Font.Height = -11
      FilterDropDown.Font.Name = 'Tahoma'
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
      FixedColWidth = 20
      FixedRowHeight = 22
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -13
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      Look = glCustom
      Navigation.AllowInsertRow = True
      Navigation.AllowDeleteRow = True
      Navigation.AlwaysEdit = True
      Navigation.AdvanceOnEnter = True
      Navigation.AdvanceInsert = True
      Navigation.AdvanceAuto = True
      Navigation.AppendOnArrowDown = True
      Navigation.SkipReadOnly = True
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -11
      PrintSettings.Font.Name = 'Tahoma'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -11
      PrintSettings.FixedFont.Name = 'Tahoma'
      PrintSettings.FixedFont.Style = []
      PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
      PrintSettings.HeaderFont.Color = clWindowText
      PrintSettings.HeaderFont.Height = -11
      PrintSettings.HeaderFont.Name = 'Tahoma'
      PrintSettings.HeaderFont.Style = []
      PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
      PrintSettings.FooterFont.Color = clWindowText
      PrintSettings.FooterFont.Height = -11
      PrintSettings.FooterFont.Name = 'Tahoma'
      PrintSettings.FooterFont.Style = []
      PrintSettings.PageNumSep = '/'
      SearchFooter.ColorTo = clNone
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'Tahoma'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurrence'
      SearchFooter.HintFindPrev = 'Find previous occurrence'
      SearchFooter.HintHighlight = 'Highlight occurrences'
      SearchFooter.MatchCaseCaption = 'Match case'
      SearchFooter.ResultFormat = '(%d of %d)'
      SelectionColor = 13744549
      SelectionTextColor = clWindowText
      SortSettings.HeaderColor = clWhite
      SortSettings.HeaderColorTo = clWhite
      SortSettings.HeaderMirrorColor = clWhite
      SortSettings.HeaderMirrorColorTo = clWhite
      Version = '2.8.3.9'
      AutoCreateColumns = True
      AutoRemoveColumns = False
      Columns = <
        item
          Borders = []
          BorderPen.Color = clSilver
          ButtonHeight = 18
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlue
          HeaderFont.Height = -13
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = [fsBold]
          HeaderAlignment = taCenter
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 20
        end
        item
          AllowBlank = True
          Borders = []
          BorderPen.Color = clSilver
          ButtonHeight = 18
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          Editor = edUpperCase
          FieldName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Descripci'#243'n'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlue
          HeaderFont.Height = -13
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = [fsBold]
          HeaderAlignment = taCenter
          MaxSize = 45
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 446
        end
        item
          AllowBlank = True
          Alignment = taRightJustify
          Borders = []
          BorderPen.Color = clSilver
          ButtonHeight = 18
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          Editor = edFloat
          FieldName = 'PRECIO_COMRA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Precio de Compra'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlue
          HeaderFont.Height = -13
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = [fsBold]
          HeaderAlignment = taCenter
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 154
        end
        item
          AllowBlank = True
          Alignment = taRightJustify
          Borders = []
          BorderPen.Color = clSilver
          ButtonHeight = 18
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          Editor = edFloat
          FieldName = 'CANTIDAD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Cantidad'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlue
          HeaderFont.Height = -13
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = [fsBold]
          HeaderAlignment = taCenter
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 84
        end
        item
          AllowBlank = True
          Alignment = taRightJustify
          Borders = []
          BorderPen.Color = clSilver
          ButtonHeight = 18
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          Editor = edFloat
          FieldName = 'PRECIO_VTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Precio de Venta'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlue
          HeaderFont.Height = -13
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = [fsBold]
          HeaderAlignment = taCenter
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 136
        end
        item
          AllowBlank = True
          Alignment = taRightJustify
          Borders = []
          BorderPen.Color = clSilver
          ButtonHeight = 18
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          FieldName = 'PRECIO_VTA2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Precio Venta 2'
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clBlue
          HeaderFont.Height = -13
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = [fsBold]
          HeaderAlignment = taCenter
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clBlue
          PrintFont.Height = -16
          PrintFont.Name = 'MS Sans Serif'
          PrintFont.Style = []
          Width = 138
        end
        item
          AllowBlank = True
          Alignment = taCenter
          Borders = []
          BorderPen.Color = clSilver
          ButtonHeight = 18
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWhite
          FieldName = 'CODIGO_EAN'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Header = 'Codigo EAN'
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -13
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = [fsBold]
          HeaderAlignment = taCenter
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clBlack
          PrintFont.Height = -16
          PrintFont.Name = 'MS Sans Serif'
          PrintFont.Style = []
          Width = 202
        end
        item
          Alignment = taCenter
          Borders = []
          BorderPen.Color = clSilver
          ButtonHeight = 18
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clMoneyGreen
          FieldName = 'CODIGO'
          Fixed = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Codigo Generado'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlue
          HeaderFont.Height = -13
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = [fsBold]
          HeaderAlignment = taCenter
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 127
        end>
      DataSource = DSStock
      EditPostMode = epRow
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
        20
        446
        154
        84
        136
        138
        202
        127)
      RowHeights = (
        22
        22)
    end
  end
  inherited ToolBar1: TToolBar
    Top = 665
    Width = 1330
    Align = alBottom
    ExplicitTop = 665
    ExplicitWidth = 1330
    inherited btConfirma: TBitBtn
      Width = 31
      Visible = False
      ExplicitWidth = 31
    end
    inherited btNuevo: TBitBtn
      Left = 33
      Width = 16
      Visible = False
      ExplicitLeft = 33
      ExplicitWidth = 16
    end
    inherited btCancelar: TBitBtn
      Left = 49
      Width = 32
      Visible = False
      ExplicitLeft = 49
      ExplicitWidth = 32
    end
    inherited btModificar: TBitBtn
      Left = 81
      Width = 30
      Visible = False
      ExplicitLeft = 81
      ExplicitWidth = 30
    end
    inherited Pr: TSpeedButton
      Left = 111
      Visible = False
      ExplicitLeft = 111
    end
    inherited btBuscar: TBitBtn
      Left = 126
      Width = 32
      Visible = False
      ExplicitLeft = 126
      ExplicitWidth = 32
    end
    inherited Ne: TSpeedButton
      Left = 158
      Visible = False
      ExplicitLeft = 158
    end
    inherited btBorrar: TBitBtn
      Left = 173
      Width = 100
      ExplicitLeft = 173
      ExplicitWidth = 100
    end
    inherited btSalir: TBitBtn
      Left = 273
      ExplicitLeft = 273
    end
  end
  inherited Panel1: TPanel
    Top = 695
    Width = 1330
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 695
    ExplicitWidth = 1330
    inherited sbEstado: TStatusBar
      Width = 1241
      SimplePanel = True
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 1241
    end
  end
  inherited ActionList1: TActionList
    object AltaStock: TAction
      Caption = 'Dar de Alta Stock'
      OnExecute = AltaStockExecute
    end
    object Imprimir: TAction
      Caption = 'Imprimir'
      ShortCut = 114
      OnExecute = ImprimirExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 544
    Top = 96
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
    Left = 352
    Top = 216
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 512
    Top = 320
  end
  inherited QBrowse2: TFDQuery
    Left = 120
    Top = 224
  end
  object mtStock: TFDMemTable
    BeforePost = mtStockBeforePost
    OnNewRecord = mtStockNewRecord
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 712
    Top = 393
    object mtStockDETALLE: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'DETALLE'
      Size = 45
    end
    object mtStockPRECIO_COMRA: TFloatField
      DisplayLabel = 'Precio Compra'
      FieldName = 'PRECIO_COMRA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object mtStockPRECIO_VTA: TFloatField
      DisplayLabel = 'Precio de Vta.'
      FieldName = 'PRECIO_VTA'
      OnSetText = mtStockPRECIO_VTASetText
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object mtStockCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object mtStockCODIGO: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Size = 8
    end
    object mtStockPRECIO_VTA2: TFloatField
      DisplayLabel = 'Precio de Venta 2'
      FieldName = 'PRECIO_VTA2'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object mtStockCODIGO_EAN: TStringField
      Alignment = taCenter
      DisplayLabel = 'Codigo EAN'
      FieldName = 'CODIGO_EAN'
    end
    object mtStockPRECIO_GRAVADO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PRECIO_GRAVADO'
    end
    object mtStockPRECIO_GRAVADO_2: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PRECIO_GRAVADO_2'
    end
  end
  object DSStock: TDataSource
    DataSet = mtStock
    Left = 648
    Top = 392
  end
  object spAltaStock: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ALTA_STOCK_CON_EXISTENCIA'
    Left = 960
    Top = 472
    ParamData = <
      item
        Position = 1
        Name = 'DETALLE'
        DataType = ftString
        ParamType = ptInput
        Size = 45
      end
      item
        Position = 2
        Name = 'DETALLE_ADICIONAL'
        DataType = ftString
        ParamType = ptInput
        Size = 300
      end
      item
        Position = 3
        Name = 'COSTO'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'PRECIOVTA'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'CANTIDAD'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'SUBRUB'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end
      item
        Position = 7
        Name = 'CODIGOBARRA'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 8
        Name = 'COSTO_CON_IVA'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 9
        Name = 'DEPOSITO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 10
        Name = 'CODIGO_OUT'
        DataType = ftString
        ParamType = ptOutput
        Size = 8
      end
      item
        Position = 11
        Name = 'ID_AJUSTE_GENERADO'
        DataType = ftInteger
        ParamType = ptOutput
      end>
  end
  object Etiquetas: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'Etiquetas'
    CloseDataSource = False
    DataSet = CDSListaArt
    BCDToCurrency = False
    DataSetOptions = []
    Left = 544
    Top = 472
    FieldDefs = <
      item
        FieldName = 'ID'
      end
      item
        FieldName = 'ID_CAB'
      end
      item
        FieldName = 'RUBRO'
        FieldType = fftString
      end
      item
        FieldName = 'SUBRUBRO'
        FieldType = fftString
      end
      item
        FieldName = 'CODIGOARTICULO'
        FieldType = fftString
      end
      item
        FieldName = 'COSTO_GRAVADO'
      end
      item
        FieldName = 'COSTO_EXENTO'
      end
      item
        FieldName = 'COSTO_TOTAL'
      end
      item
        FieldName = 'IVA_TASA'
      end
      item
        FieldName = 'RECARGO'
      end
      item
        FieldName = 'PRECIO_GRAVADO'
      end
      item
        FieldName = 'IVA_IMPORTE'
      end
      item
        FieldName = 'PRECIO_EXENTO'
      end
      item
        FieldName = 'PRECIO'
      end
      item
        FieldName = 'DESCUENTO'
      end
      item
        FieldName = 'REC_APLICAR'
      end
      item
        FieldName = 'FECHA'
      end
      item
        FieldName = 'MUESTRALISTA'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'MUESTRAFECHA'
      end
      item
        FieldName = 'MUESTRAPORDEFECTO'
        FieldType = fftString
      end
      item
        FieldName = 'HAYSUBDET'
      end
      item
        FieldName = 'MUESTRADETALLESTOCK'
        FieldType = fftString
        Size = 45
      end
      item
        FieldName = 'MUESTRACODIGOBARRA'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'PRECIO_2'
      end
      item
        FieldName = 'CODIGOALTERNATIVO'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'PRECIO_GRAVADO_2'
      end>
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.fr3'
    Left = 456
    Top = 416
  end
  object frxReporte: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.351088680550000000
    ReportOptions.LastChange = 39638.351088680550000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 544
    Top = 560
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object DSListaArt: TDataSource
    DataSet = CDSListaArt
    Left = 44
    Top = 568
  end
  object CDSListaArt: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_CAB'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'RUBRO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SUBRUBRO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CODIGOARTICULO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'COSTO_GRAVADO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'COSTO_EXENTO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'COSTO_TOTAL'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'IVA_TASA'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'RECARGO'
        DataType = ftFloat
      end
      item
        Name = 'PRECIO_GRAVADO'
        DataType = ftFloat
      end
      item
        Name = 'IVA_IMPORTE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PRECIO_EXENTO'
        DataType = ftFloat
      end
      item
        Name = 'PRECIO'
        DataType = ftFloat
      end
      item
        Name = 'DESCUENTO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'REC_APLICAR'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'FECHA'
        DataType = ftTimeStamp
      end
      item
        Name = 'MUESTRALISTA'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'MUESTRAFECHA'
        Attributes = [faReadonly]
        DataType = ftTimeStamp
      end
      item
        Name = 'MUESTRAPORDEFECTO'
        Attributes = [faReadonly, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'HAYSUBDET'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'MUESTRADETALLESTOCK'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 45
      end
      item
        Name = 'MUESTRACODIGOBARRA'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CODIGOALTERNATIVO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PRECIO_2'
        DataType = ftFloat
      end
      item
        Name = 'PRECIO_GRAVADO_2'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_LISTA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPListaArt'
    StoreDefs = True
    Left = 104
    Top = 576
    object CDSListaArtID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSListaArtID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Required = True
    end
    object CDSListaArtRUBRO: TStringField
      FieldName = 'RUBRO'
      Required = True
      Size = 3
    end
    object CDSListaArtSUBRUBRO: TStringField
      FieldName = 'SUBRUBRO'
      Required = True
      Size = 5
    end
    object CDSListaArtCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object CDSListaArtCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Required = True
    end
    object CDSListaArtCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Required = True
    end
    object CDSListaArtCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Required = True
    end
    object CDSListaArtIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Required = True
    end
    object CDSListaArtRECARGO: TFloatField
      FieldName = 'RECARGO'
    end
    object CDSListaArtPRECIO_GRAVADO: TFloatField
      FieldName = 'PRECIO_GRAVADO'
    end
    object CDSListaArtIVA_IMPORTE: TFloatField
      FieldName = 'IVA_IMPORTE'
      Required = True
    end
    object CDSListaArtPRECIO_EXENTO: TFloatField
      FieldName = 'PRECIO_EXENTO'
    end
    object CDSListaArtPRECIO: TFloatField
      FieldName = 'PRECIO'
    end
    object CDSListaArtDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Required = True
    end
    object CDSListaArtREC_APLICAR: TFloatField
      FieldName = 'REC_APLICAR'
      Required = True
    end
    object CDSListaArtFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSListaArtMUESTRALISTA: TStringField
      FieldName = 'MUESTRALISTA'
      ReadOnly = True
      Size = 50
    end
    object CDSListaArtMUESTRAFECHA: TSQLTimeStampField
      FieldName = 'MUESTRAFECHA'
      ReadOnly = True
    end
    object CDSListaArtMUESTRAPORDEFECTO: TStringField
      FieldName = 'MUESTRAPORDEFECTO'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object CDSListaArtHAYSUBDET: TIntegerField
      FieldName = 'HAYSUBDET'
      ReadOnly = True
    end
    object CDSListaArtMUESTRADETALLESTOCK: TStringField
      FieldName = 'MUESTRADETALLESTOCK'
      ReadOnly = True
      Size = 45
    end
    object CDSListaArtMUESTRACODIGOBARRA: TStringField
      FieldName = 'MUESTRACODIGOBARRA'
      ReadOnly = True
      Size = 50
    end
    object CDSListaArtPRECIO_2: TFloatField
      FieldName = 'PRECIO_2'
    end
    object CDSListaArtCODIGOALTERNATIVO: TStringField
      FieldName = 'CODIGOALTERNATIVO'
      ReadOnly = True
    end
    object CDSListaArtPRECIO_GRAVADO_2: TFloatField
      FieldName = 'PRECIO_GRAVADO_2'
    end
  end
  object DSPListaArt: TDataSetProvider
    DataSet = QListArt
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 172
    Top = 576
  end
  object QListArt: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select l.*,lc.nombre as MuestraLista,lc.fecha as MuestraFecha,'
      
        '       lc.pordefecto as MuestraPorDefecto, 0 as  HaySubDet,s.det' +
        'alle_stk as MuestraDetalleStock,'
      
        '       (select max(cb.codigobarra) from codigobarra cb where cb.' +
        'codigo_stk=l.codigoarticulo) as MuestraCodigoBarra,'
      '       s.reemplazo_stk as CodigoAlternativo,'
      '       l2.precio as Precio_2,'
      '       l2.precio_gravado as Precio_gravado_2'
      'from listaprecioespecialart l'
      '  left join stock s on s.codigo_stk=l.codigoarticulo'
      '  left join listaprecioespecialcab lc on lc.id = l.id_cab'
      
        '  left join listaprecioespecialart l2 on l2.id_cab=:id_lista and' +
        ' l2.codigoarticulo=:codigo'
      'where l.codigoarticulo = :codigo and lc.pordefecto='#39'S'#39
      '  order by l.id_cab')
    Left = 232
    Top = 552
    ParamData = <
      item
        Position = 1
        Name = 'ID_LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object DataToXLS1: TDataToXLS
    DataSet = mtStock
    Columns = <
      item
        DataField = 'DETALLE'
        Title = 'Descripcion'
      end
      item
        DataField = 'PRECIO_COMRA'
        Title = 'Precio Compra'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'PRECIO_VTA'
        Title = 'Precio de Vta.'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'CANTIDAD'
        Title = 'Cantidad'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'CODIGO'
        Title = 'CODIGO'
        Alignment = taCenter
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
    Left = 640
    Top = 480
  end
  object SaveDialog1: TSaveDialog
    Left = 130
    Top = 154
  end
  object QSubRub: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select sr.*, r.detalle_rubro as MuestraRubro from subrubros sr'
      'left join rubros r on r.codigo_rubro=sr.codigo_rubro'
      ''
      'where (:rubro is null) or (r.codigo_rubro=:rubro)'
      'order by sr.detalle_subrubro')
    Left = 776
    Top = 144
    ParamData = <
      item
        Position = 1
        Name = 'RUBRO'
        DataType = ftFixedChar
        ParamType = ptInput
      end>
  end
  object DSPSubRub: TDataSetProvider
    DataSet = QSubRub
    Left = 840
    Top = 144
  end
  object CDSSubRub: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFixedChar
        Name = 'RUBRO'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSubRub'
    Left = 904
    Top = 144
    object CDSSubRubCODIGO_SUBRUBRO: TStringField
      DisplayLabel = 'Cod.Sub'
      FieldName = 'CODIGO_SUBRUBRO'
      Required = True
      Size = 5
    end
    object CDSSubRubDETALLE_SUBRUBRO: TStringField
      DisplayLabel = 'Sub Rubro'
      FieldName = 'DETALLE_SUBRUBRO'
      Required = True
      Size = 45
    end
    object CDSSubRubCODIGO_RUBRO: TStringField
      DisplayLabel = 'Cod.Rub'
      FieldName = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
    object CDSSubRubMUESTRARUBRO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'MUESTRARUBRO'
      ReadOnly = True
      Size = 35
    end
  end
  object DSSubRub: TDataSource
    DataSet = CDSSubRub
    Left = 968
    Top = 144
  end
  object spActualiza: TFDStoredProc
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
        TargetDataType = dtDate
      end>
    StoredProcName = 'ACTUALIZA_PRECIOVTA'
    Left = 976
    Top = 384
    ParamData = <
      item
        Position = 1
        Name = 'LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 3
        Name = 'PRECIOVTA'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end>
  end
  object QLista: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select id,nombre from listaprecioespecialcab l ')
    Left = 920
    Top = 288
    object QListaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QListaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
  end
  object DSLista: TDataSource
    DataSet = QLista
    Left = 968
    Top = 288
  end
  object DSPDepositos: TDataSetProvider
    DataSet = QDeposito
    Options = []
    Left = 1184
    Top = 256
  end
  object CDSDepositos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPDepositos'
    Left = 1184
    Top = 200
    object CDSDepositosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSDepositosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSDepositosSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object CDSDepositosCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSDeposito: TDataSource
    DataSet = CDSDepositos
    Left = 1184
    Top = 144
  end
  object QDeposito: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from depositos '
      'where activo='#39'S'#39
      'order by nombre')
    Left = 1184
    Top = 320
    object QDepositoID: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object QDepositoNOMBRE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 25
      FieldName = 'NOMBRE'
      Visible = False
      Size = 25
    end
    object QDepositoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object QDepositoCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QDepositoACTIVO: TStringField
      DisplayLabel = 'Activo'
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end
