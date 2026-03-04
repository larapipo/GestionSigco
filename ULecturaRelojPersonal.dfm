inherited FormLectorRelojPersonal: TFormLectorRelojPersonal
  Caption = 'Lectura Reloj Personal'
  ClientHeight = 729
  ClientWidth = 1010
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1028
  ExplicitHeight = 770
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1010
    Height = 676
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1010
    ExplicitHeight = 676
    object pnPie: TPanel
      Left = 0
      Top = 635
      Width = 1010
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = -32
      ExplicitTop = 641
      object AdvBadgeGlowButton1: TAdvBadgeGlowButton
        Left = 864
        Top = 5
        Width = 141
        Height = 31
        Align = alRight
        Action = GenerarResumen
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Rounded = False
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
      object AdvBadgeGlowButton2: TAdvBadgeGlowButton
        Left = 723
        Top = 5
        Width = 141
        Height = 31
        Align = alRight
        Action = CargarExcel
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Rounded = False
        TabOrder = 1
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
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 1010
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      DesignSize = (
        1010
        41)
      object chbFiltros: TAdvOfficeCheckBox
        Left = 896
        Top = 14
        Width = 97
        Height = 17
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        Alignment = taRightJustify
        Caption = 'Activar Filtros'
        ReturnIsTab = False
        Version = '1.8.4.2'
      end
      object edDesde: TAdvDateTimePicker
        Left = 24
        Top = 11
        Width = 97
        Height = 21
        Date = 44726.000000000000000000
        Format = ''
        Time = 0.743078703701030500
        DoubleBuffered = True
        Kind = dkDate
        ParentDoubleBuffered = False
        TabOrder = 1
        BorderStyle = bsSingle
        Ctl3D = True
        DateTime = 44726.743078703700000000
        Version = '1.3.6.7'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
      end
      object edHasta: TAdvDateTimePicker
        Left = 136
        Top = 11
        Width = 97
        Height = 21
        Date = 44726.000000000000000000
        Format = ''
        Time = 0.743078703701030500
        DoubleBuffered = True
        Kind = dkDate
        ParentDoubleBuffered = False
        TabOrder = 2
        BorderStyle = bsSingle
        Ctl3D = True
        DateTime = 44726.743078703700000000
        Version = '1.3.6.7'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
      end
    end
    object pcLectura: TPageControl
      Left = 0
      Top = 41
      Width = 1010
      Height = 594
      ActivePage = pagPersonal
      Align = alClient
      TabOrder = 2
      OnChange = pcLecturaChange
      object pagMovimientos: TTabSheet
        Caption = 'Movimientos'
        object sgLectura: TAdvStringGrid
          Left = 0
          Top = 0
          Width = 1002
          Height = 566
          Align = alClient
          DrawingStyle = gdsClassic
          FixedColor = clWhite
          FixedCols = 0
          RowCount = 2
          TabOrder = 0
          GridLineColor = 15855083
          GridFixedLineColor = 13745060
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ActiveCellColor = 10344697
          ActiveCellColorTo = 6210033
          ControlLook.FixedGradientFrom = 16513526
          ControlLook.FixedGradientTo = 15260626
          ControlLook.FixedGradientHoverFrom = 15000287
          ControlLook.FixedGradientHoverTo = 14406605
          ControlLook.FixedGradientHoverMirrorFrom = 14406605
          ControlLook.FixedGradientHoverMirrorTo = 13813180
          ControlLook.FixedGradientHoverBorder = 12033927
          ControlLook.FixedGradientDownFrom = 14991773
          ControlLook.FixedGradientDownTo = 14991773
          ControlLook.FixedGradientDownMirrorFrom = 14991773
          ControlLook.FixedGradientDownMirrorTo = 14991773
          ControlLook.FixedGradientDownBorder = 14991773
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
          FilterDropDown.AutoSize = True
          FilterDropDown.Font.Charset = DEFAULT_CHARSET
          FilterDropDown.Font.Color = clWindowText
          FilterDropDown.Font.Height = -11
          FilterDropDown.Font.Name = 'Tahoma'
          FilterDropDown.Font.Style = []
          FilterDropDown.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000020000000900000011000000110000
            0009000000020000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000093D332F8268524CF467514BF42E24
            21820000000A0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000108B756CFFEBE8E7FFBAAFA9FF6F58
            50FF000000110000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000011877169FFE5E0DDFFBEB0A7FF715A
            53FF000000120000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000010846E67FFE4DDDAFFC2B4ABFF735C
            56FF000000110000000000000000000000000000000000000000000000000000
            000000000000000000000000000200000012836C64FFDDD5D0FFC2B4ACFF775F
            59FF000000140000000200000000000000000000000000000000000000000000
            000000000000000000030101010F34292681826B64FFD3CFCBFFBDB3AEFF7962
            5CFF2F2523830101011100000004000000010000000000000000000000000000
            0000000000040C0A092662524ACC8F786EFFA18D81FFAE9B8FFFAF9A8EFF9D87
            7AFF826A61FF554440CD0A080829000000050000000100000000000000000000
            0003120F0E2D7F6B63ECA69186FFBEB0A5FFCCC1B8FFBDACA1FFBEABA0FFB29E
            92FFA69082FF937B70FF6B5650ED0F0C0B310000000300000000000000010000
            00076E5E58C6AD9B90FFC4B7ADFFE5DFDAFFDBD5CDFFC9BBB1FFC3B1A6FFBCAB
            9FFFAF9B8EFFA69285FF937B6FFF574642C80000000A00000001000000022B25
            234EA49087FFC5B8ADFFE1DBD5FFF4F3F0FFE5E1DAFFCFC3B9FFC3B1A6FFC3B3
            A8FFB4A296FFAD998CFFA28C7FFF826A61FF211A19530000000300000004685C
            55A6B6A59AFFCEC4BBFFF2F0EDFFFCFCFBFFECEBE4FFD4C9C0FFC3B1A6FFC7B8
            AEFFB6A598FFAF9C8FFFA79284FF927A6DFF4E403CA900000006000000059E8C
            83ECC5B8AEFFE3DED8FFFCFAFAFFFDFCFBFFFCFBFAFFF8F8F5FFF6F3F0FFF2EE
            EBFFEAE4DFFFD8CEC6FFC5B6ACFFA18A7EFF77645DEB0000000800000004B19D
            94FFF0ECE9FFDCD5D2FFB6A8A4FF988681FF77615AFF7E6862FF89746CFF9580
            79FFB1A099FFC4B6B0FFD7CCC5FFDDD4CBFF87736BFE00000007000000023D35
            335CA8968DF0CCC0B9FFE3DBD6FFEFEBE7FFF1EEEAFFF4F0EEFFF1EDEAFFE8E1
            DCFFE0D7D1FFCEC2BAFFB3A39AFF8C7971F12F29266000000003000000000000
            00010807070F3E36335E695E579F897870CE8F7F77DDA49088FFA18D84FF8877
            70DD7D6C65CF5D514CA1352E2B60070606120000000300000000}
          FilterDropDown.GlyphActive.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000030000000D000000190000001A0000
            000E000000030000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000D112B4A8C1A4E9CF6194D9BF60F28
            478D0000000E0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000172762ABFFD6EDF7FF5DB1E5FF225C
            A5FF000000190000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000019255FA9FFC1E6F5FF56AEE3FF2058
            A3FF0000001B0000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000017235CA7FFABE2F6FF4DABE4FF1F56
            A2FF000000190000000000000000000000000000000000000000000000000000
            00000000000000000000000000020000001B225BA6FF8FD6F4FF45A5E1FF1E54
            A1FF0000001E0000000200000000000000000000000000000000000000000000
            00000000000000000005000102160F28498A225AA6FF77CAEEFF3BA0DEFF1E53
            A1FF081E3F8D0001021800000006000000010000000000000000000000000000
            000000000005040B112D22568DD03B81C4FF4E96D2FF4AA1D9FF3592D1FF2F7E
            C6FF2465B0FF113A76D202070E31000000070000000100000000000000000000
            0004060F18332F70AFEE569FD6FF7CC0E8FF93CFEFFF5BBFE9FF41ADDFFF3287
            CEFF3485D2FF3181C9FF1A5095EF030A14390000000500000000000000010000
            000B265D8FC962ACDDFF86CDEFFFC3EAF9FFA8E2F8FF6BCFF0FF47BAE6FF398F
            D4FF2F7ACBFF3C92DBFF368ACFFF17417BCD0000000F00000001000000030E23
            34534992CCFF8BD2F1FFBAE9F9FFE2F7FDFFAFE7F9FF72D4F2FF4ABFE8FF3F98
            D8FF2B73C8FF3486D2FF43A2E2FF2A70BAFF09182E5A00000005000000062252
            7AA96BB6E1FF99E1F7FFDFF7FDFFF5FCFFFFB1EBFBFF76D7F3FF4DC5EAFF47A2
            DEFF2A72C6FF2F7ACBFF44A2E4FF3891D4FF163C6CAE0000000A00000007357D
            B5EC91D5F2FFC5EFFBFFF1FCFEFFEBFAFDFFE4F9FDFFDFF8FDFFDAF7FDFFD5F6
            FDFFC7ECF9FFA1D1EEFF86CBF1FF4FADE5FF21599FEC0000000C000000053C8B
            C8FFF2FAFDFFB9C6E2FF6884C0FF3C64B1FF0F43A4FF1451ADFF1B60B8FF2471
            C1FF529CD6FF76BBE6FFAAE0F4FFC5F0FBFF2665B0FE0000000A000000021530
            455E468DC1F093C7E7FFC7E6F4FFE4F4FBFFE8F7FCFFF4FCFEFFEFFBFDFFD6F2
            FAFFCAEBF8FFA6D6EFFF71AFDCFF316FB0F10D233D6400000004000000000000
            000203070A111633476026577BA1316F9FCF3275AADE3885C4FF3681C2FF2D6C
            A5DE286298D11D4872A410284164020509150000000400000001}
          FilterDropDown.TextChecked = 'Checked'
          FilterDropDown.TextUnChecked = 'Unchecked'
          FilterDropDownClear = '(All)'
          FilterDropDownCheck = True
          FilterDropDownCheckUnCheckAll = 'Desactivar'
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
          FixedColWidth = 81
          FixedRowHeight = 22
          FixedRowAlways = True
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clBlack
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = [fsBold]
          FloatFormat = '%.2f'
          HoverButtons.Buttons = <>
          HTMLSettings.ImageFolder = 'images'
          HTMLSettings.ImageBaseName = 'img'
          Look = glOffice2007
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
          SearchFooter.Color = 16513526
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
          SelectionColor = 6210033
          UIStyle = tsOffice2007Luna
          Version = '9.2.1.0'
          ColWidths = (
            81
            182
            79
            64
            76)
          RowHeights = (
            22
            22)
        end
      end
      object pagResumen: TTabSheet
        Caption = 'Resumen'
        ImageIndex = 1
        object sgResumen: TAdvStringGrid
          Left = 0
          Top = 0
          Width = 1002
          Height = 566
          Align = alClient
          DrawingStyle = gdsClassic
          FixedColor = clWhite
          FixedCols = 0
          RowCount = 2
          FixedRows = 0
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
          PopupMenu = PopupMenu1
          TabOrder = 0
          GridLineColor = 15855083
          GridFixedLineColor = 13745060
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ActiveCellColor = 10344697
          ActiveCellColorTo = 6210033
          ControlLook.FixedGradientFrom = 16513526
          ControlLook.FixedGradientTo = 15260626
          ControlLook.FixedGradientHoverFrom = 15000287
          ControlLook.FixedGradientHoverTo = 14406605
          ControlLook.FixedGradientHoverMirrorFrom = 14406605
          ControlLook.FixedGradientHoverMirrorTo = 13813180
          ControlLook.FixedGradientHoverBorder = 12033927
          ControlLook.FixedGradientDownFrom = 14991773
          ControlLook.FixedGradientDownTo = 14991773
          ControlLook.FixedGradientDownMirrorFrom = 14991773
          ControlLook.FixedGradientDownMirrorTo = 14991773
          ControlLook.FixedGradientDownBorder = 14991773
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
          FilterDropDown.AutoSize = True
          FilterDropDown.Font.Charset = DEFAULT_CHARSET
          FilterDropDown.Font.Color = clWindowText
          FilterDropDown.Font.Height = -11
          FilterDropDown.Font.Name = 'Tahoma'
          FilterDropDown.Font.Style = []
          FilterDropDown.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000020000000900000011000000110000
            0009000000020000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000093D332F8268524CF467514BF42E24
            21820000000A0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000108B756CFFEBE8E7FFBAAFA9FF6F58
            50FF000000110000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000011877169FFE5E0DDFFBEB0A7FF715A
            53FF000000120000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000010846E67FFE4DDDAFFC2B4ABFF735C
            56FF000000110000000000000000000000000000000000000000000000000000
            000000000000000000000000000200000012836C64FFDDD5D0FFC2B4ACFF775F
            59FF000000140000000200000000000000000000000000000000000000000000
            000000000000000000030101010F34292681826B64FFD3CFCBFFBDB3AEFF7962
            5CFF2F2523830101011100000004000000010000000000000000000000000000
            0000000000040C0A092662524ACC8F786EFFA18D81FFAE9B8FFFAF9A8EFF9D87
            7AFF826A61FF554440CD0A080829000000050000000100000000000000000000
            0003120F0E2D7F6B63ECA69186FFBEB0A5FFCCC1B8FFBDACA1FFBEABA0FFB29E
            92FFA69082FF937B70FF6B5650ED0F0C0B310000000300000000000000010000
            00076E5E58C6AD9B90FFC4B7ADFFE5DFDAFFDBD5CDFFC9BBB1FFC3B1A6FFBCAB
            9FFFAF9B8EFFA69285FF937B6FFF574642C80000000A00000001000000022B25
            234EA49087FFC5B8ADFFE1DBD5FFF4F3F0FFE5E1DAFFCFC3B9FFC3B1A6FFC3B3
            A8FFB4A296FFAD998CFFA28C7FFF826A61FF211A19530000000300000004685C
            55A6B6A59AFFCEC4BBFFF2F0EDFFFCFCFBFFECEBE4FFD4C9C0FFC3B1A6FFC7B8
            AEFFB6A598FFAF9C8FFFA79284FF927A6DFF4E403CA900000006000000059E8C
            83ECC5B8AEFFE3DED8FFFCFAFAFFFDFCFBFFFCFBFAFFF8F8F5FFF6F3F0FFF2EE
            EBFFEAE4DFFFD8CEC6FFC5B6ACFFA18A7EFF77645DEB0000000800000004B19D
            94FFF0ECE9FFDCD5D2FFB6A8A4FF988681FF77615AFF7E6862FF89746CFF9580
            79FFB1A099FFC4B6B0FFD7CCC5FFDDD4CBFF87736BFE00000007000000023D35
            335CA8968DF0CCC0B9FFE3DBD6FFEFEBE7FFF1EEEAFFF4F0EEFFF1EDEAFFE8E1
            DCFFE0D7D1FFCEC2BAFFB3A39AFF8C7971F12F29266000000003000000000000
            00010807070F3E36335E695E579F897870CE8F7F77DDA49088FFA18D84FF8877
            70DD7D6C65CF5D514CA1352E2B60070606120000000300000000}
          FilterDropDown.GlyphActive.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000030000000D000000190000001A0000
            000E000000030000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000D112B4A8C1A4E9CF6194D9BF60F28
            478D0000000E0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000172762ABFFD6EDF7FF5DB1E5FF225C
            A5FF000000190000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000019255FA9FFC1E6F5FF56AEE3FF2058
            A3FF0000001B0000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000017235CA7FFABE2F6FF4DABE4FF1F56
            A2FF000000190000000000000000000000000000000000000000000000000000
            00000000000000000000000000020000001B225BA6FF8FD6F4FF45A5E1FF1E54
            A1FF0000001E0000000200000000000000000000000000000000000000000000
            00000000000000000005000102160F28498A225AA6FF77CAEEFF3BA0DEFF1E53
            A1FF081E3F8D0001021800000006000000010000000000000000000000000000
            000000000005040B112D22568DD03B81C4FF4E96D2FF4AA1D9FF3592D1FF2F7E
            C6FF2465B0FF113A76D202070E31000000070000000100000000000000000000
            0004060F18332F70AFEE569FD6FF7CC0E8FF93CFEFFF5BBFE9FF41ADDFFF3287
            CEFF3485D2FF3181C9FF1A5095EF030A14390000000500000000000000010000
            000B265D8FC962ACDDFF86CDEFFFC3EAF9FFA8E2F8FF6BCFF0FF47BAE6FF398F
            D4FF2F7ACBFF3C92DBFF368ACFFF17417BCD0000000F00000001000000030E23
            34534992CCFF8BD2F1FFBAE9F9FFE2F7FDFFAFE7F9FF72D4F2FF4ABFE8FF3F98
            D8FF2B73C8FF3486D2FF43A2E2FF2A70BAFF09182E5A00000005000000062252
            7AA96BB6E1FF99E1F7FFDFF7FDFFF5FCFFFFB1EBFBFF76D7F3FF4DC5EAFF47A2
            DEFF2A72C6FF2F7ACBFF44A2E4FF3891D4FF163C6CAE0000000A00000007357D
            B5EC91D5F2FFC5EFFBFFF1FCFEFFEBFAFDFFE4F9FDFFDFF8FDFFDAF7FDFFD5F6
            FDFFC7ECF9FFA1D1EEFF86CBF1FF4FADE5FF21599FEC0000000C000000053C8B
            C8FFF2FAFDFFB9C6E2FF6884C0FF3C64B1FF0F43A4FF1451ADFF1B60B8FF2471
            C1FF529CD6FF76BBE6FFAAE0F4FFC5F0FBFF2665B0FE0000000A000000021530
            455E468DC1F093C7E7FFC7E6F4FFE4F4FBFFE8F7FCFFF4FCFEFFEFFBFDFFD6F2
            FAFFCAEBF8FFA6D6EFFF71AFDCFF316FB0F10D233D6400000004000000000000
            000203070A111633476026577BA1316F9FCF3275AADE3885C4FF3681C2FF2D6C
            A5DE286298D11D4872A410284164020509150000000400000001}
          FilterDropDown.TextChecked = 'Checked'
          FilterDropDown.TextUnChecked = 'Unchecked'
          FilterDropDownClear = '(All)'
          FilterDropDownCheck = True
          FilterDropDownCheckUnCheckAll = 'Desactivar'
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
          FixedColWidth = 83
          FixedRowHeight = 22
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clBlack
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = [fsBold]
          FloatFormat = '%.2f'
          HoverButtons.Buttons = <>
          HTMLSettings.ImageFolder = 'images'
          HTMLSettings.ImageBaseName = 'img'
          Look = glOffice2007
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
          SearchFooter.Color = 16513526
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
          SelectionColor = 6210033
          UIStyle = tsOffice2007Luna
          Version = '9.2.1.0'
          ColWidths = (
            83
            87
            105
            104
            137)
          RowHeights = (
            22
            22)
        end
      end
      object pagPersonal: TTabSheet
        Caption = 'x Empleado'
        ImageIndex = 2
        object gwPersonal: TAdvGridWorkbook
          Left = 0
          Top = 0
          Width = 1002
          Height = 566
          ActiveSheet = 0
          Sheets = <
            item
              Name = 'Sheet 1'
              Tag = 0
            end
            item
              Name = 'Sheet 2'
              Tag = 0
            end
            item
              Name = 'Sheet 3'
              Tag = 0
            end>
          TabLook.Font.Charset = DEFAULT_CHARSET
          TabLook.Font.Color = clWindowText
          TabLook.Font.Height = -11
          TabLook.Font.Name = 'Tahoma'
          TabLook.Font.Style = []
          Align = alClient
          TabOrder = 0
          Version = '3.3.4.0'
          object gwPersonalGrid: TAdvStringGrid
            Left = 0
            Top = 0
            Width = 998
            Height = 541
            Align = alClient
            BorderStyle = bsNone
            ColCount = 7
            Ctl3D = True
            DrawingStyle = gdsGradient
            FixedColor = clGradientInactiveCaption
            FixedCols = 0
            RowCount = 1
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing]
            ParentCtl3D = False
            PopupMenu = PopupMenu2
            TabOrder = 0
            ActiveRowShow = True
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = 4474440
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
            ActiveCellFont.Style = [fsBold]
            ActiveCellColor = 11565130
            ActiveCellColorTo = 11565130
            BorderColor = 11250603
            ColumnSize.Save = True
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
            FixedColWidth = 89
            FixedRowHeight = 22
            FixedRowAlways = True
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'Tahoma'
            FixedFont.Style = [fsBold]
            FloatFormat = '%.2f'
            FormatType = ftExcel
            HoverButtons.Buttons = <>
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            Look = glCustom
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
            Version = '9.2.1.0'
            ColWidths = (
              89
              61
              74
              95
              83
              75
              134)
            RowHeights = (
              22)
          end
        end
      end
      object ReloCecarri: TTabSheet
        Caption = 'Reloj Cearri'
        ImageIndex = 3
        DesignSize = (
          1002
          566)
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 1002
          Height = 535
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DataSource
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMBRE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FECHA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HORA_1'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HORA_2'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HORA_3'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HORA_4'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 93
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL_HORAS'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
        object btLecturaArchivo: TButton
          Left = 876
          Top = 541
          Width = 123
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = 'Lectura Archivo'
          TabOrder = 1
          OnClick = btLecturaArchivoClick
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 676
    Width = 1010
    Align = alBottom
    ExplicitTop = 676
    ExplicitWidth = 1010
    inherited btConfirma: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited btNuevo: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited btCancelar: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited btModificar: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited Pr: TSpeedButton
      Visible = False
    end
    inherited btBuscar: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited Ne: TSpeedButton
      Visible = False
    end
    inherited btBorrar: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited btSalir: TBitBtn
      DoubleBuffered = True
    end
    object ToolButton1: TToolButton
      Left = 557
      Top = 0
      Width = 67
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object BitBtn1: TBitBtn
      Left = 624
      Top = 0
      Width = 112
      Height = 29
      Action = ExportarExcel
      Caption = 'Exportar Excel'
      TabOrder = 7
    end
  end
  inherited Panel1: TPanel
    Top = 706
    Width = 1010
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 706
    ExplicitWidth = 1010
    inherited sbEstado: TStatusBar
      Width = 921
      ExplicitWidth = 921
    end
  end
  inherited ActionList1: TActionList
    Left = 416
    Top = 112
    object CargarExcel: TAction
      Caption = 'Cargar Excel'
      OnExecute = CargarExcelExecute
    end
    object GenerarResumen: TAction
      Caption = 'Generar Resumen'
      OnExecute = GenerarResumenExecute
    end
    object ExportarExcel: TAction
      Caption = 'Exportar Excel'
      OnExecute = ExportarExcelExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 712
    Top = 440
  end
  inherited ImageList1: TImageList
    Left = 56
    Top = 264
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
    Left = 360
    Top = 232
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 16
    Top = 496
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 568
    Top = 256
  end
  inherited QBrowse2: TFDQuery
    Top = 296
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 144
    Top = 360
  end
  inherited ImageListDos: TImageList
    Left = 72
    Top = 208
  end
  object OpenDialog: TOpenDialog
    Left = 638
    Top = 209
  end
  object SaveDialog1: TSaveDialog
    Left = 524
    Top = 385
  end
  object PopupMenu1: TPopupMenu
    Left = 260
    Top = 377
    object GenerarResumen1: TMenuItem
      Action = GenerarResumen
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 756
    Top = 169
    object ExportaraExcel1: TMenuItem
      Caption = 'Exportar XLS'
    end
  end
  object ClientDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = ClientDataSetCalcFields
    Left = 828
    Top = 313
    object ClientDataSetNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 45
    end
    object ClientDataSetFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ClientDataSetCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object ClientDataSetHORA_1: TTimeField
      FieldName = 'HORA_1'
    end
    object ClientDataSetHORA_2: TTimeField
      FieldName = 'HORA_2'
    end
    object ClientDataSetHORA_3: TTimeField
      FieldName = 'HORA_3'
    end
    object ClientDataSetHORA_4: TTimeField
      FieldName = 'HORA_4'
    end
    object ClientDataSetTOTAL_HORAS: TStringField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_HORAS'
      Size = 25
      Calculated = True
    end
  end
  object DataSource: TDataSource
    DataSet = ClientDataSet
    Left = 932
    Top = 273
  end
end
