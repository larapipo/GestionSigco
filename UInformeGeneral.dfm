object FormInformeGeneral: TFormInformeGeneral
  Left = 176
  Top = 148
  Caption = 'Informe General'
  ClientHeight = 633
  ClientWidth = 1091
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1091
    Height = 633
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1089
      Height = 56
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        1089
        56)
      object Label1: TLabel
        Left = 15
        Top = 12
        Width = 87
        Height = 19
        Caption = 'A'#241'o Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 203
        Top = 12
        Width = 84
        Height = 19
        Caption = 'A'#241'o Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 576
        Top = 8
        Width = 40
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Sucursal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 586
      end
      object Desde: TSpinEdit
        Left = 108
        Top = 9
        Width = 68
        Height = 29
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxValue = 3000
        MinValue = 1900
        ParentFont = False
        TabOrder = 0
        Value = 1900
        OnChange = DesdeChange
      end
      object Hasta: TSpinEdit
        Left = 293
        Top = 9
        Width = 68
        Height = 29
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxValue = 3000
        MinValue = 1900
        ParentFont = False
        TabOrder = 1
        Value = 1900
        OnChange = HastaChange
        OnClick = HastaClick
      end
      object Button2: TButton
        Left = 871
        Top = 6
        Width = 125
        Height = 19
        Anchors = [akTop, akRight]
        Caption = 'Filtrar comprobantes'
        TabOrder = 2
        OnClick = Button2Click
      end
      object Button1: TButton
        Left = 871
        Top = 31
        Width = 125
        Height = 19
        Anchors = [akTop, akRight]
        Caption = 'Filtrar Rubros de Gastos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Button1Click
      end
      object dbcSucursal: TJvDBLookupCombo
        Left = 622
        Top = 6
        Width = 209
        Height = 21
        DisplayEmpty = 'Todas las Sucursales'
        EmptyValue = '-1'
        Anchors = [akTop, akRight]
        LookupField = 'CODIGO'
        LookupDisplay = 'DETALLE'
        LookupSource = DSSucursales
        TabOrder = 4
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 57
      Width = 1089
      Height = 552
      ActivePage = TabSheet3
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object TabSheet3: TTabSheet
        Caption = 'Totales Grales.'
        object sgTotal: TAdvStringGrid
          Left = 0
          Top = 0
          Width = 1081
          Height = 483
          Align = alClient
          ColCount = 26
          DefaultColWidth = 75
          DrawingStyle = gdsClassic
          FixedCols = 0
          RowCount = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          GradientStartColor = 14079702
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goColMoving]
          ParentFont = False
          TabOrder = 0
          OfficeHint.Title = 'nn'
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ActiveCellColor = 15387318
          ColumnHeaders.Strings = (
            ''
            ''
            'Enero'
            ''
            'Febrero'
            ''
            'Marzo'
            ''
            'Abril'
            ''
            'Mayo'
            ''
            'Junio'
            ''
            'Julio'
            ''
            'Agosto'
            ''
            'Septiembre'
            ''
            'Octubre'
            ''
            'Novimiembre'
            ''
            'Diciembre'
            '')
          ControlLook.FixedGradientFrom = clWhite
          ControlLook.FixedGradientTo = clSilver
          ControlLook.FixedGradientHoverFrom = 13619409
          ControlLook.FixedGradientHoverTo = 12502728
          ControlLook.FixedGradientHoverMirrorFrom = 12502728
          ControlLook.FixedGradientHoverMirrorTo = 11254975
          ControlLook.FixedGradientDownFrom = 8816520
          ControlLook.FixedGradientDownTo = 7568510
          ControlLook.FixedGradientDownMirrorFrom = 7568510
          ControlLook.FixedGradientDownMirrorTo = 6452086
          ControlLook.FixedGradientDownBorder = 11440207
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
          DefaultAlignment = taRightJustify
          ExcelStyleDecimalSeparator = True
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
            'Clear')
          FixedColWidth = 135
          FixedRowHeight = 22
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = [fsBold]
          FloatFormat = '%.2f'
          HoverButtons.Buttons = <>
          HTMLSettings.ImageFolder = 'images'
          HTMLSettings.ImageBaseName = 'img'
          Look = glTMS
          Navigation.AllowClipboardShortCuts = True
          Navigation.AllowFmtClipboard = True
          Navigation.AllowClipboardAlways = True
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
          SearchFooter.AlwaysHighLight = True
          SearchFooter.ColorTo = 15790320
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
          SearchFooter.SearchColumn = 0
          SortSettings.HeaderColorTo = 16579058
          SortSettings.HeaderMirrorColor = 16380385
          SortSettings.HeaderMirrorColorTo = 16182488
          Version = '9.2.1.0'
          ColWidths = (
            135
            248
            75
            75
            75
            75
            75
            75
            75
            75
            75
            75
            75
            75
            75
            75
            75
            75
            75
            75
            75
            75
            75
            75
            75
            75)
          RowHeights = (
            22
            22
            22
            22
            22
            22
            22
            22
            22
            22
            22
            22
            22
            22
            22)
        end
        object Panel3: TPanel
          Left = 0
          Top = 483
          Width = 1081
          Height = 41
          Align = alBottom
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 1
          DesignSize = (
            1081
            41)
          object Label4: TLabel
            Left = 783
            Top = 7
            Width = 119
            Height = 26
            Anchors = [akTop, akRight]
            Caption = 'Los Importes Son Finales'#13#10'Con Impuestos Incluidos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 800
          end
          object btGeneral: TButton
            Left = 11
            Top = 8
            Width = 106
            Height = 25
            Caption = 'Exportar a Excel'
            TabOrder = 0
            OnClick = btGeneralClick
          end
          object btBuscarGeneral: TBitBtn
            Left = 922
            Top = 6
            Width = 81
            Height = 27
            Anchors = [akTop, akRight]
            Caption = 'Buscar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FF4A667C
              BE9596FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF6B9CC31E89E84B7AA3C89693FF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4BB4FE51B5FF
              2089E94B7AA2C69592FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FF51B7FE51B3FF1D87E64E7AA0CA9792FF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              51B7FE4EB2FF1F89E64E7BA2B99497FF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF52B8FE4BB1FF2787D95F6A76FF
              00FFB0857FC09F94C09F96BC988EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FF55BDFFB5D6EDBF9D92BB9B8CE7DAC2FFFFE3FFFFE5FDFADAD8C3
              B3B58D85FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCEA795FD
              EEBEFFFFD8FFFFDAFFFFDBFFFFE6FFFFFBEADDDCAE837FFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFC1A091FBDCA8FEF7D0FFFFDBFFFFE3FFFFF8FFFF
              FDFFFFFDC6A99CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC1A091FEE3ACF1
              C491FCF2CAFFFFDDFFFFE4FFFFF7FFFFF7FFFFE9EEE5CBB9948CFF00FFFF00FF
              FF00FFFF00FFFF00FFC2A191FFE6AEEEB581F7DCAEFEFDD8FFFFDFFFFFE3FFFF
              E4FFFFE0F3ECD2BB968EFF00FFFF00FFFF00FFFF00FFFF00FFBC978CFBE7B7F4
              C791F2C994F8E5B9FEFCD8FFFFDDFFFFDCFFFFE0E2D2BAB68E86FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFD9C3A9FFFEE5F7DCB8F2C994F5D4A5FAE8BDFDF4
              C9FDFBD6B69089FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB58D85E8
              DEDDFFFEF2F9D8A3F4C48CF9D49FFDEAB8D0B49FB89086FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFAD827FC9AA9EEFE0B7EFDFB2E7CEACB890
              86B89086FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFBA968ABB988CB79188FF00FFFF00FFFF00FFFF00FF}
            ParentFont = False
            TabOrder = 1
            OnClick = btBuscarGeneralClick
          end
          object ProgressBar1: TProgressBar
            Left = 387
            Top = 15
            Width = 150
            Height = 17
            Anchors = [akTop, akRight]
            TabOrder = 2
          end
        end
      end
      object tsAnio1: TTabSheet
        Caption = 'tsAnio1'
        object sgVentas: TAdvStringGrid
          Left = 0
          Top = 0
          Width = 1081
          Height = 483
          Align = alClient
          ColCount = 14
          DefaultColWidth = 75
          DrawingStyle = gdsClassic
          FixedCols = 0
          RowCount = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goColMoving]
          ParentFont = False
          TabOrder = 0
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ActiveCellColor = 16575452
          ActiveCellColorTo = 16571329
          ColumnHeaders.Strings = (
            ''
            ''
            'Enero'
            'Febrero'
            'Marzo'
            'Abril'
            'Mayo'
            'Junio'
            'Julio'
            'Agosto'
            'Septiembre'
            'Octubre'
            'Novimiembre'
            'Diciembre')
          ControlLook.FixedGradientFrom = 16645370
          ControlLook.FixedGradientTo = 16445670
          ControlLook.FixedGradientMirrorFrom = 16049884
          ControlLook.FixedGradientMirrorTo = 16247261
          ControlLook.FixedGradientHoverFrom = 16710648
          ControlLook.FixedGradientHoverTo = 16446189
          ControlLook.FixedGradientHoverMirrorFrom = 16049367
          ControlLook.FixedGradientHoverMirrorTo = 15258305
          ControlLook.FixedGradientDownFrom = 15853789
          ControlLook.FixedGradientDownTo = 15852760
          ControlLook.FixedGradientDownMirrorFrom = 15522767
          ControlLook.FixedGradientDownMirrorTo = 15588559
          ControlLook.FixedGradientDownBorder = 14007466
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
          DefaultAlignment = taRightJustify
          ExcelStyleDecimalSeparator = True
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
            'Clear')
          FixedColWidth = 129
          FixedRowHeight = 22
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = [fsBold]
          FloatFormat = '%.2f'
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
          SearchFooter.AlwaysHighLight = True
          SearchFooter.Color = 16645370
          SearchFooter.ColorTo = 16247261
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
          SearchFooter.SearchColumn = 0
          SelectionTextColor = clWindowText
          SortSettings.HeaderColor = 16579058
          SortSettings.HeaderColorTo = 16579058
          SortSettings.HeaderMirrorColor = 16380385
          SortSettings.HeaderMirrorColorTo = 16182488
          Version = '9.2.1.0'
          ColWidths = (
            129
            154
            75
            75
            75
            75
            75
            75
            75
            75
            75
            75
            75
            75)
          RowHeights = (
            22
            22
            22
            22
            22
            22
            22
            22
            22
            22
            22
            22
            22
            22
            22)
        end
        object Panel4: TPanel
          Left = 0
          Top = 483
          Width = 1081
          Height = 41
          Align = alBottom
          Color = clGradientActiveCaption
          ParentBackground = False
          TabOrder = 1
          DesignSize = (
            1081
            41)
          object btAnio: TButton
            Left = 27
            Top = 6
            Width = 106
            Height = 25
            Caption = 'Exportar a Excel'
            TabOrder = 0
            OnClick = btAnioClick
          end
          object btBuscarVtas: TBitBtn
            Left = 911
            Top = 8
            Width = 81
            Height = 27
            Anchors = [akTop, akRight]
            Caption = 'Buscar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FF4A667C
              BE9596FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF6B9CC31E89E84B7AA3C89693FF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4BB4FE51B5FF
              2089E94B7AA2C69592FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FF51B7FE51B3FF1D87E64E7AA0CA9792FF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              51B7FE4EB2FF1F89E64E7BA2B99497FF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF52B8FE4BB1FF2787D95F6A76FF
              00FFB0857FC09F94C09F96BC988EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FF55BDFFB5D6EDBF9D92BB9B8CE7DAC2FFFFE3FFFFE5FDFADAD8C3
              B3B58D85FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCEA795FD
              EEBEFFFFD8FFFFDAFFFFDBFFFFE6FFFFFBEADDDCAE837FFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFC1A091FBDCA8FEF7D0FFFFDBFFFFE3FFFFF8FFFF
              FDFFFFFDC6A99CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC1A091FEE3ACF1
              C491FCF2CAFFFFDDFFFFE4FFFFF7FFFFF7FFFFE9EEE5CBB9948CFF00FFFF00FF
              FF00FFFF00FFFF00FFC2A191FFE6AEEEB581F7DCAEFEFDD8FFFFDFFFFFE3FFFF
              E4FFFFE0F3ECD2BB968EFF00FFFF00FFFF00FFFF00FFFF00FFBC978CFBE7B7F4
              C791F2C994F8E5B9FEFCD8FFFFDDFFFFDCFFFFE0E2D2BAB68E86FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFD9C3A9FFFEE5F7DCB8F2C994F5D4A5FAE8BDFDF4
              C9FDFBD6B69089FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB58D85E8
              DEDDFFFEF2F9D8A3F4C48CF9D49FFDEAB8D0B49FB89086FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFAD827FC9AA9EEFE0B7EFDFB2E7CEACB890
              86B89086FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFBA968ABB988CB79188FF00FFFF00FFFF00FFFF00FF}
            ParentFont = False
            TabOrder = 1
            OnClick = btBuscarVtasClick
          end
        end
      end
      object tsAnio2: TTabSheet
        Caption = 'tsAnio2'
        ImageIndex = 1
        object sgVentasOld: TAdvStringGrid
          Left = 0
          Top = 0
          Width = 1081
          Height = 483
          Align = alClient
          ColCount = 14
          DefaultColWidth = 75
          DrawingStyle = gdsClassic
          FixedCols = 0
          RowCount = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goColMoving]
          ParentFont = False
          TabOrder = 0
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ActiveCellColor = 16575452
          ActiveCellColorTo = 16571329
          ColumnHeaders.Strings = (
            ''
            ''
            'Enero'
            'Febrero'
            'Marzo'
            'Abril'
            'Mayo'
            'Junio'
            'Julio'
            'Agosto'
            'Septiembre'
            'Octubre'
            'Novimiembre'
            'Diciembre')
          ControlLook.FixedGradientFrom = 16645370
          ControlLook.FixedGradientTo = 16445670
          ControlLook.FixedGradientMirrorFrom = 16049884
          ControlLook.FixedGradientMirrorTo = 16247261
          ControlLook.FixedGradientHoverFrom = 16710648
          ControlLook.FixedGradientHoverTo = 16446189
          ControlLook.FixedGradientHoverMirrorFrom = 16049367
          ControlLook.FixedGradientHoverMirrorTo = 15258305
          ControlLook.FixedGradientDownFrom = 15853789
          ControlLook.FixedGradientDownTo = 15852760
          ControlLook.FixedGradientDownMirrorFrom = 15522767
          ControlLook.FixedGradientDownMirrorTo = 15588559
          ControlLook.FixedGradientDownBorder = 14007466
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
          DefaultAlignment = taRightJustify
          ExcelStyleDecimalSeparator = True
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
            'Clear')
          FixedColWidth = 129
          FixedRowHeight = 22
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = [fsBold]
          FloatFormat = '%.2f'
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
          SearchFooter.AlwaysHighLight = True
          SearchFooter.Color = 16645370
          SearchFooter.ColorTo = 16247261
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
          SearchFooter.SearchColumn = 0
          SelectionTextColor = clWindowText
          SortSettings.HeaderColor = 16579058
          SortSettings.HeaderColorTo = 16579058
          SortSettings.HeaderMirrorColor = 16380385
          SortSettings.HeaderMirrorColorTo = 16182488
          Version = '9.2.1.0'
          ColWidths = (
            129
            154
            75
            75
            75
            75
            75
            75
            75
            75
            75
            75
            75
            75)
          RowHeights = (
            22
            22
            22
            22
            22
            22
            22
            22
            22
            22
            22
            22
            22
            22
            22)
        end
        object Panel5: TPanel
          Left = 0
          Top = 483
          Width = 1081
          Height = 41
          Align = alBottom
          Color = clGradientActiveCaption
          ParentBackground = False
          TabOrder = 1
          object btAnio2: TButton
            Left = 51
            Top = 9
            Width = 106
            Height = 25
            Caption = 'Exportar a Excel'
            TabOrder = 0
            OnClick = btAnio2Click
          end
        end
      end
      object tsGraficoVtas: TTabSheet
        Caption = 'Grafico Ventas'
        ImageIndex = 3
        object chaVentas: TTMSFNCChart
          Left = 0
          Top = 0
          Width = 1081
          Height = 524
          Appearance.ColorList = <
            item
              Color = 16105559
            end
            item
              Color = 5644279
            end
            item
              Color = 7936771
            end
            item
              Color = 12275349
            end
            item
              Color = 1296366
            end
            item
              Color = 4350195
            end
            item
              Color = 16544551
            end
            item
              Color = 5820321
            end
            item
              Color = 10922240
            end
            item
              Color = 16376965
            end>
          Appearance.GlobalFont.Color = -1
          Appearance.GlobalFont.Scale = 1.000000000000000000
          Appearance.GlobalFont.Style = []
          Appearance.ColorScheme = ccsColorList
          Appearance.MonochromeColor = clSteelblue
          ClickMargin = 10.000000000000000000
          Legend.Fill.Kind = gfkSolid
          Legend.Stroke.Kind = gskSolid
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clWindowText
          Legend.Font.Height = -11
          Legend.Font.Name = 'Tahoma'
          Legend.Font.Style = []
          Legend.Left = 10.000000000000000000
          Legend.Top = 10.000000000000000000
          SeriesMargins.Left = 0
          SeriesMargins.Top = 0
          SeriesMargins.Right = 0
          SeriesMargins.Bottom = 0
          Series = <
            item
              AnimationFactor = 4.000000000000000000
              AutoYRange = arCommonZeroBased
              Bar.Width = 65.000000000000000000
              Bar.Spacing = 20.000000000000000000
              MultiPoint.Width = 65.000000000000000000
              Pie.Size = 200.000000000000000000
              Pie.Margins.Left = 10
              Pie.Margins.Top = 10
              Pie.Margins.Right = 10
              Pie.Margins.Bottom = 10
              Pie.SweepAngle = 360.000000000000000000
              Fill.Color = clPurple
              LegendText = 'Serie 1'
              Labels.Font.Charset = DEFAULT_CHARSET
              Labels.Font.Color = clWindowText
              Labels.Font.Height = -11
              Labels.Font.Name = 'Tahoma'
              Labels.Font.Style = []
              Labels.Format = '%.2f'
              Labels.OffsetY = -10.000000000000000000
              Markers.Fill.Color = clLightslategray
              Markers.Height = 10.000000000000000000
              Markers.Stroke.Color = clDarkslategray
              Markers.Visible = True
              Markers.Width = 10.000000000000000000
              MaxX = 10.000000000000000000
              MaxY = 10.000000000000000000
              MaxYOffsetPercentage = 10.000000000000000000
              Offset3DX = 15.000000000000000000
              Offset3DY = 15.000000000000000000
              Points = <
                item
                  Annotations = <>
                  YValue = 48.000000000000000000
                  YValueSecond = 8.000000000000000000
                  YValueVariable = 28.000000000000000000
                  YValueLow = 2.000000000000000000
                  YValueClose = 45.000000000000000000
                  YValueHigh = 48.000000000000000000
                  YValueOpen = 51.000000000000000000
                  YValueMedian = 55.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 1.000000000000000000
                  YValue = 130.000000000000000000
                  YValueSecond = 90.000000000000000000
                  YValueVariable = 110.000000000000000000
                  YValueLow = -17.000000000000000000
                  YValueClose = 125.000000000000000000
                  YValueHigh = 130.000000000000000000
                  YValueOpen = 134.000000000000000000
                  YValueMedian = 129.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 2.000000000000000000
                  YValue = 141.000000000000000000
                  YValueSecond = 101.000000000000000000
                  YValueVariable = 121.000000000000000000
                  YValueLow = 39.000000000000000000
                  YValueClose = 149.000000000000000000
                  YValueHigh = 141.000000000000000000
                  YValueOpen = 137.000000000000000000
                  YValueMedian = 134.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 3.000000000000000000
                  YValue = 137.000000000000000000
                  YValueSecond = 97.000000000000000000
                  YValueVariable = 117.000000000000000000
                  YValueLow = 6.000000000000000000
                  YValueClose = 139.000000000000000000
                  YValueHigh = 137.000000000000000000
                  YValueOpen = 131.000000000000000000
                  YValueMedian = 131.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 4.000000000000000000
                  YValue = 152.000000000000000000
                  YValueSecond = 112.000000000000000000
                  YValueVariable = 132.000000000000000000
                  YValueLow = 59.000000000000000000
                  YValueClose = 158.000000000000000000
                  YValueHigh = 152.000000000000000000
                  YValueOpen = 153.000000000000000000
                  YValueMedian = 154.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 5.000000000000000000
                  YValue = 46.000000000000000000
                  YValueSecond = 6.000000000000000000
                  YValueVariable = 26.000000000000000000
                  YValueLow = 10.000000000000000000
                  YValueClose = 54.000000000000000000
                  YValueHigh = 46.000000000000000000
                  YValueOpen = 42.000000000000000000
                  YValueMedian = 45.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 6.000000000000000000
                  YValue = 48.000000000000000000
                  YValueSecond = 8.000000000000000000
                  YValueVariable = 28.000000000000000000
                  YValueLow = 29.000000000000000000
                  YValueClose = 38.000000000000000000
                  YValueHigh = 48.000000000000000000
                  YValueOpen = 51.000000000000000000
                  YValueMedian = 49.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 7.000000000000000000
                  YValue = 32.000000000000000000
                  YValueSecond = -8.000000000000000000
                  YValueVariable = 12.000000000000000000
                  YValueLow = -1.000000000000000000
                  YValueClose = 27.000000000000000000
                  YValueHigh = 32.000000000000000000
                  YValueOpen = 35.000000000000000000
                  YValueMedian = 30.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 8.000000000000000000
                  YValue = 138.000000000000000000
                  YValueSecond = 98.000000000000000000
                  YValueVariable = 118.000000000000000000
                  YValueLow = 4.000000000000000000
                  YValueClose = 132.000000000000000000
                  YValueHigh = 138.000000000000000000
                  YValueOpen = 145.000000000000000000
                  YValueMedian = 143.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 9.000000000000000000
                  YValue = 136.000000000000000000
                  YValueSecond = 96.000000000000000000
                  YValueVariable = 116.000000000000000000
                  YValueLow = 45.000000000000000000
                  YValueClose = 145.000000000000000000
                  YValueHigh = 136.000000000000000000
                  YValueOpen = 142.000000000000000000
                  YValueMedian = 139.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 10.000000000000000000
                  YValue = 124.000000000000000000
                  YValueSecond = 84.000000000000000000
                  YValueVariable = 104.000000000000000000
                  YValueLow = -11.000000000000000000
                  YValueClose = 114.000000000000000000
                  YValueHigh = 124.000000000000000000
                  YValueOpen = 115.000000000000000000
                  YValueMedian = 113.000000000000000000
                end>
              Legend.Font.Charset = DEFAULT_CHARSET
              Legend.Font.Color = clWindowText
              Legend.Font.Height = -11
              Legend.Font.Name = 'Tahoma'
              Legend.Font.Style = []
              Legend.Left = -10.000000000000000000
              Stroke.Color = clDarkslategray
              XGrid.Visible = True
              XValues.MajorUnit = 1.000000000000000000
              XValues.MajorUnitFont.Charset = DEFAULT_CHARSET
              XValues.MajorUnitFont.Color = clWindowText
              XValues.MajorUnitFont.Height = -11
              XValues.MajorUnitFont.Name = 'Tahoma'
              XValues.MajorUnitFont.Style = []
              XValues.MajorUnitFormat = '%.0f'
              XValues.MajorUnitSpacing = 5.000000000000000000
              XValues.MajorUnitTickMarkSize = 10.000000000000000000
              XValues.MajorUnitTickMarkColor = clSilver
              XValues.MinorUnitFont.Charset = DEFAULT_CHARSET
              XValues.MinorUnitFont.Color = clWindowText
              XValues.MinorUnitFont.Height = -11
              XValues.MinorUnitFont.Name = 'Tahoma'
              XValues.MinorUnitFont.Style = []
              XValues.MinorUnitFormat = '%.0f'
              XValues.MinorUnitSpacing = 5.000000000000000000
              XValues.MinorUnitTickMarkSize = 7.000000000000000000
              XValues.MinorUnitTickMarkColor = clSilver
              XValues.Title.Font.Charset = DEFAULT_CHARSET
              XValues.Title.Font.Color = clWindowText
              XValues.Title.Font.Height = -11
              XValues.Title.Font.Name = 'Tahoma'
              XValues.Title.Font.Style = []
              XValues.Title.TextMargins.Left = 0
              XValues.Title.TextMargins.Top = 0
              XValues.Title.TextMargins.Right = 0
              XValues.Title.TextMargins.Bottom = 0
              XValues.Title.Text = 'X-Axis Serie 1'
              YGrid.Visible = True
              YValues.MajorUnit = 1.000000000000000000
              YValues.MajorUnitFont.Charset = DEFAULT_CHARSET
              YValues.MajorUnitFont.Color = clWindowText
              YValues.MajorUnitFont.Height = -11
              YValues.MajorUnitFont.Name = 'Tahoma'
              YValues.MajorUnitFont.Style = []
              YValues.MajorUnitFormat = '%.2f'
              YValues.MajorUnitSpacing = 5.000000000000000000
              YValues.MajorUnitTickMarkSize = 10.000000000000000000
              YValues.MajorUnitTickMarkColor = clSilver
              YValues.MinorUnitFont.Charset = DEFAULT_CHARSET
              YValues.MinorUnitFont.Color = clWindowText
              YValues.MinorUnitFont.Height = -11
              YValues.MinorUnitFont.Name = 'Tahoma'
              YValues.MinorUnitFont.Style = []
              YValues.MinorUnitFormat = '%.2f'
              YValues.MinorUnitSpacing = 5.000000000000000000
              YValues.MinorUnitTickMarkSize = 7.000000000000000000
              YValues.MinorUnitTickMarkColor = clSilver
              YValues.Title.Font.Charset = DEFAULT_CHARSET
              YValues.Title.Font.Color = clWindowText
              YValues.Title.Font.Height = -11
              YValues.Title.Font.Name = 'Tahoma'
              YValues.Title.Font.Style = []
              YValues.Title.TextMargins.Left = 0
              YValues.Title.TextMargins.Top = 0
              YValues.Title.TextMargins.Right = 0
              YValues.Title.TextMargins.Bottom = 0
              YValues.Title.Text = 'Y-Axis Serie 1'
              Crosshair.XTextStroke.Color = 16105559
              Crosshair.XTextFill.Color = 16105559
              Crosshair.XTextFont.Charset = DEFAULT_CHARSET
              Crosshair.XTextFont.Color = clWhite
              Crosshair.XTextFont.Height = -11
              Crosshair.XTextFont.Name = 'Segoe UI'
              Crosshair.XTextFont.Style = []
              Crosshair.YTextStroke.Color = 16105559
              Crosshair.YTextFill.Color = 16105559
              Crosshair.YTextFont.Charset = DEFAULT_CHARSET
              Crosshair.YTextFont.Color = clWhite
              Crosshair.YTextFont.Height = -11
              Crosshair.YTextFont.Name = 'Segoe UI'
              Crosshair.YTextFont.Style = []
              Crosshair.HorizontalLineStroke.Color = 16105559
              Crosshair.VerticalLineStroke.Color = 16105559
            end
            item
              AnimationFactor = 4.000000000000000000
              AutoYRange = arCommonZeroBased
              Bar.Width = 65.000000000000000000
              Bar.Spacing = 20.000000000000000000
              MultiPoint.Width = 65.000000000000000000
              Pie.Size = 200.000000000000000000
              Pie.Margins.Left = 10
              Pie.Margins.Top = 10
              Pie.Margins.Right = 10
              Pie.Margins.Bottom = 10
              Pie.SweepAngle = 360.000000000000000000
              Fill.Color = clLightseagreen
              LegendText = 'Serie 2'
              Labels.Font.Charset = DEFAULT_CHARSET
              Labels.Font.Color = clWindowText
              Labels.Font.Height = -11
              Labels.Font.Name = 'Tahoma'
              Labels.Font.Style = []
              Labels.Format = '%.2f'
              Labels.OffsetY = -10.000000000000000000
              Markers.Fill.Color = clLightseagreen
              Markers.Height = 10.000000000000000000
              Markers.Visible = True
              Markers.Width = 10.000000000000000000
              MaxX = 10.000000000000000000
              MaxY = 10.000000000000000000
              MaxYOffsetPercentage = 10.000000000000000000
              Offset3DX = 15.000000000000000000
              Offset3DY = 15.000000000000000000
              Points = <
                item
                  Annotations = <>
                  YValue = 99.000000000000000000
                  YValueSecond = 59.000000000000000000
                  YValueVariable = 79.000000000000000000
                  YValueLow = 52.000000000000000000
                  YValueClose = 89.000000000000000000
                  YValueHigh = 99.000000000000000000
                  YValueOpen = 101.000000000000000000
                  YValueMedian = 96.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 1.000000000000000000
                  YValue = 95.000000000000000000
                  YValueSecond = 55.000000000000000000
                  YValueVariable = 75.000000000000000000
                  YValueLow = 9.000000000000000000
                  YValueClose = 89.000000000000000000
                  YValueHigh = 95.000000000000000000
                  YValueOpen = 89.000000000000000000
                  YValueMedian = 90.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 2.000000000000000000
                  YValue = 93.000000000000000000
                  YValueSecond = 53.000000000000000000
                  YValueVariable = 73.000000000000000000
                  YValueLow = 35.000000000000000000
                  YValueClose = 102.000000000000000000
                  YValueHigh = 93.000000000000000000
                  YValueOpen = 97.000000000000000000
                  YValueMedian = 97.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 3.000000000000000000
                  YValue = 104.000000000000000000
                  YValueSecond = 64.000000000000000000
                  YValueVariable = 84.000000000000000000
                  YValueLow = -19.000000000000000000
                  YValueClose = 110.000000000000000000
                  YValueHigh = 104.000000000000000000
                  YValueOpen = 107.000000000000000000
                  YValueMedian = 111.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 4.000000000000000000
                  YValue = 37.000000000000000000
                  YValueSecond = -3.000000000000000000
                  YValueVariable = 17.000000000000000000
                  YValueLow = 79.000000000000000000
                  YValueClose = 35.000000000000000000
                  YValueHigh = 37.000000000000000000
                  YValueOpen = 44.000000000000000000
                  YValueMedian = 44.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 5.000000000000000000
                  YValue = 121.000000000000000000
                  YValueSecond = 81.000000000000000000
                  YValueVariable = 101.000000000000000000
                  YValueLow = 78.000000000000000000
                  YValueClose = 118.000000000000000000
                  YValueHigh = 121.000000000000000000
                  YValueOpen = 126.000000000000000000
                  YValueMedian = 128.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 6.000000000000000000
                  YValue = 73.000000000000000000
                  YValueSecond = 33.000000000000000000
                  YValueVariable = 53.000000000000000000
                  YValueLow = 13.000000000000000000
                  YValueClose = 81.000000000000000000
                  YValueHigh = 73.000000000000000000
                  YValueOpen = 72.000000000000000000
                  YValueMedian = 69.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 7.000000000000000000
                  YValue = 125.000000000000000000
                  YValueSecond = 85.000000000000000000
                  YValueVariable = 105.000000000000000000
                  YValueLow = 2.000000000000000000
                  YValueClose = 118.000000000000000000
                  YValueHigh = 125.000000000000000000
                  YValueOpen = 117.000000000000000000
                  YValueMedian = 117.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 8.000000000000000000
                  YValue = 138.000000000000000000
                  YValueSecond = 98.000000000000000000
                  YValueVariable = 118.000000000000000000
                  YValueLow = 77.000000000000000000
                  YValueClose = 136.000000000000000000
                  YValueHigh = 138.000000000000000000
                  YValueOpen = 128.000000000000000000
                  YValueMedian = 132.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 9.000000000000000000
                  YValue = 63.000000000000000000
                  YValueSecond = 23.000000000000000000
                  YValueVariable = 43.000000000000000000
                  YValueLow = 48.000000000000000000
                  YValueClose = 58.000000000000000000
                  YValueHigh = 63.000000000000000000
                  YValueOpen = 55.000000000000000000
                  YValueMedian = 56.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 10.000000000000000000
                  YValue = 49.000000000000000000
                  YValueSecond = 9.000000000000000000
                  YValueVariable = 29.000000000000000000
                  YValueLow = -8.000000000000000000
                  YValueClose = 44.000000000000000000
                  YValueHigh = 49.000000000000000000
                  YValueOpen = 47.000000000000000000
                  YValueMedian = 50.000000000000000000
                end>
              Legend.Font.Charset = DEFAULT_CHARSET
              Legend.Font.Color = clWindowText
              Legend.Font.Height = -11
              Legend.Font.Name = 'Tahoma'
              Legend.Font.Style = []
              Legend.Left = -10.000000000000000000
              Stroke.Color = clDarkgreen
              XValues.MajorUnit = 1.000000000000000000
              XValues.MajorUnitFont.Charset = DEFAULT_CHARSET
              XValues.MajorUnitFont.Color = clWindowText
              XValues.MajorUnitFont.Height = -11
              XValues.MajorUnitFont.Name = 'Tahoma'
              XValues.MajorUnitFont.Style = []
              XValues.MajorUnitFormat = '%.0f'
              XValues.MajorUnitSpacing = 5.000000000000000000
              XValues.MajorUnitTickMarkSize = 10.000000000000000000
              XValues.MajorUnitTickMarkColor = clSilver
              XValues.MinorUnitFont.Charset = DEFAULT_CHARSET
              XValues.MinorUnitFont.Color = clWindowText
              XValues.MinorUnitFont.Height = -11
              XValues.MinorUnitFont.Name = 'Tahoma'
              XValues.MinorUnitFont.Style = []
              XValues.MinorUnitFormat = '%.0f'
              XValues.MinorUnitSpacing = 5.000000000000000000
              XValues.MinorUnitTickMarkSize = 7.000000000000000000
              XValues.MinorUnitTickMarkColor = clSilver
              XValues.Title.Font.Charset = DEFAULT_CHARSET
              XValues.Title.Font.Color = clWindowText
              XValues.Title.Font.Height = -11
              XValues.Title.Font.Name = 'Tahoma'
              XValues.Title.Font.Style = []
              XValues.Title.TextMargins.Left = 0
              XValues.Title.TextMargins.Top = 0
              XValues.Title.TextMargins.Right = 0
              XValues.Title.TextMargins.Bottom = 0
              XValues.Title.Text = 'X-Axis Serie 2'
              XValues.Positions = []
              YValues.MajorUnit = 1.000000000000000000
              YValues.MajorUnitFont.Charset = DEFAULT_CHARSET
              YValues.MajorUnitFont.Color = clWindowText
              YValues.MajorUnitFont.Height = -11
              YValues.MajorUnitFont.Name = 'Tahoma'
              YValues.MajorUnitFont.Style = []
              YValues.MajorUnitFormat = '%.2f'
              YValues.MajorUnitSpacing = 5.000000000000000000
              YValues.MajorUnitTickMarkSize = 10.000000000000000000
              YValues.MajorUnitTickMarkColor = clSilver
              YValues.MinorUnitFont.Charset = DEFAULT_CHARSET
              YValues.MinorUnitFont.Color = clWindowText
              YValues.MinorUnitFont.Height = -11
              YValues.MinorUnitFont.Name = 'Tahoma'
              YValues.MinorUnitFont.Style = []
              YValues.MinorUnitFormat = '%.2f'
              YValues.MinorUnitSpacing = 5.000000000000000000
              YValues.MinorUnitTickMarkSize = 7.000000000000000000
              YValues.MinorUnitTickMarkColor = clSilver
              YValues.Title.Font.Charset = DEFAULT_CHARSET
              YValues.Title.Font.Color = clWindowText
              YValues.Title.Font.Height = -11
              YValues.Title.Font.Name = 'Tahoma'
              YValues.Title.Font.Style = []
              YValues.Title.TextMargins.Left = 0
              YValues.Title.TextMargins.Top = 0
              YValues.Title.TextMargins.Right = 0
              YValues.Title.TextMargins.Bottom = 0
              YValues.Title.Text = 'Y-Axis Serie 2'
              YValues.Positions = []
              Crosshair.XTextStroke.Color = 5644279
              Crosshair.XTextFill.Color = 5644279
              Crosshair.XTextFont.Charset = DEFAULT_CHARSET
              Crosshair.XTextFont.Color = clWhite
              Crosshair.XTextFont.Height = -11
              Crosshair.XTextFont.Name = 'Segoe UI'
              Crosshair.XTextFont.Style = []
              Crosshair.YTextStroke.Color = 5644279
              Crosshair.YTextFill.Color = 5644279
              Crosshair.YTextFont.Charset = DEFAULT_CHARSET
              Crosshair.YTextFont.Color = clWhite
              Crosshair.YTextFont.Height = -11
              Crosshair.YTextFont.Name = 'Segoe UI'
              Crosshair.YTextFont.Style = []
              Crosshair.HorizontalLineStroke.Color = 5644279
              Crosshair.VerticalLineStroke.Color = 5644279
            end
            item
              AnimationFactor = 4.000000000000000000
              AutoYRange = arCommonZeroBased
              Bar.Width = 65.000000000000000000
              Bar.Spacing = 20.000000000000000000
              MultiPoint.Width = 65.000000000000000000
              Pie.Size = 200.000000000000000000
              Pie.Margins.Left = 10
              Pie.Margins.Top = 10
              Pie.Margins.Right = 10
              Pie.Margins.Bottom = 10
              Pie.SweepAngle = 360.000000000000000000
              Fill.Color = clOrange
              LegendText = 'Serie 3'
              Labels.Font.Charset = DEFAULT_CHARSET
              Labels.Font.Color = clWindowText
              Labels.Font.Height = -11
              Labels.Font.Name = 'Tahoma'
              Labels.Font.Style = []
              Labels.Format = '%.2f'
              Labels.OffsetY = -10.000000000000000000
              Markers.Fill.Color = clOrange
              Markers.Height = 10.000000000000000000
              Markers.Stroke.Color = clDarkred
              Markers.Visible = True
              Markers.Width = 10.000000000000000000
              MaxX = 10.000000000000000000
              MaxY = 10.000000000000000000
              MaxYOffsetPercentage = 10.000000000000000000
              Offset3DX = 15.000000000000000000
              Offset3DY = 15.000000000000000000
              Points = <
                item
                  Annotations = <>
                  YValue = 71.000000000000000000
                  YValueSecond = 31.000000000000000000
                  YValueVariable = 51.000000000000000000
                  YValueLow = 79.000000000000000000
                  YValueClose = 77.000000000000000000
                  YValueHigh = 71.000000000000000000
                  YValueOpen = 69.000000000000000000
                  YValueMedian = 67.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 1.000000000000000000
                  YValue = 119.000000000000000000
                  YValueSecond = 79.000000000000000000
                  YValueVariable = 99.000000000000000000
                  YValueLow = 27.000000000000000000
                  YValueClose = 119.000000000000000000
                  YValueHigh = 119.000000000000000000
                  YValueOpen = 120.000000000000000000
                  YValueMedian = 123.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 2.000000000000000000
                  YValue = 40.000000000000000000
                  YValueSecond = 23.000000000000000000
                  YValueVariable = 20.000000000000000000
                  YValueLow = -12.000000000000000000
                  YValueClose = 36.000000000000000000
                  YValueHigh = 40.000000000000000000
                  YValueOpen = 33.000000000000000000
                  YValueMedian = 30.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 3.000000000000000000
                  YValue = 69.000000000000000000
                  YValueSecond = 29.000000000000000000
                  YValueVariable = 49.000000000000000000
                  YValueLow = 68.000000000000000000
                  YValueClose = 78.000000000000000000
                  YValueHigh = 69.000000000000000000
                  YValueOpen = 73.000000000000000000
                  YValueMedian = 71.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 4.000000000000000000
                  YValue = 99.000000000000000000
                  YValueSecond = 59.000000000000000000
                  YValueVariable = 79.000000000000000000
                  YValueLow = 73.000000000000000000
                  YValueClose = 100.000000000000000000
                  YValueHigh = 99.000000000000000000
                  YValueOpen = 105.000000000000000000
                  YValueMedian = 102.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 5.000000000000000000
                  YValue = 33.000000000000000000
                  YValueSecond = -7.000000000000000000
                  YValueVariable = 13.000000000000000000
                  YValueLow = -10.000000000000000000
                  YValueClose = 33.000000000000000000
                  YValueHigh = 33.000000000000000000
                  YValueOpen = 41.000000000000000000
                  YValueMedian = 44.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 6.000000000000000000
                  YValue = 50.000000000000000000
                  YValueSecond = 10.000000000000000000
                  YValueVariable = 30.000000000000000000
                  YValueLow = 1.000000000000000000
                  YValueClose = 40.000000000000000000
                  YValueHigh = 50.000000000000000000
                  YValueOpen = 44.000000000000000000
                  YValueMedian = 40.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 7.000000000000000000
                  YValue = 125.000000000000000000
                  YValueSecond = 85.000000000000000000
                  YValueVariable = 105.000000000000000000
                  YValueLow = 22.000000000000000000
                  YValueClose = 121.000000000000000000
                  YValueHigh = 125.000000000000000000
                  YValueOpen = 124.000000000000000000
                  YValueMedian = 119.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 8.000000000000000000
                  YValue = 114.000000000000000000
                  YValueSecond = 74.000000000000000000
                  YValueVariable = 94.000000000000000000
                  YValueLow = 79.000000000000000000
                  YValueClose = 123.000000000000000000
                  YValueHigh = 114.000000000000000000
                  YValueOpen = 108.000000000000000000
                  YValueMedian = 112.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 9.000000000000000000
                  YValue = 138.000000000000000000
                  YValueSecond = 98.000000000000000000
                  YValueVariable = 118.000000000000000000
                  YValueLow = 14.000000000000000000
                  YValueClose = 144.000000000000000000
                  YValueHigh = 138.000000000000000000
                  YValueOpen = 135.000000000000000000
                  YValueMedian = 133.000000000000000000
                end
                item
                  Annotations = <>
                  XValue = 10.000000000000000000
                  YValue = 102.000000000000000000
                  YValueSecond = 62.000000000000000000
                  YValueVariable = 82.000000000000000000
                  YValueLow = 22.000000000000000000
                  YValueClose = 106.000000000000000000
                  YValueHigh = 102.000000000000000000
                  YValueOpen = 111.000000000000000000
                  YValueMedian = 112.000000000000000000
                end>
              Legend.Font.Charset = DEFAULT_CHARSET
              Legend.Font.Color = clWindowText
              Legend.Font.Height = -11
              Legend.Font.Name = 'Tahoma'
              Legend.Font.Style = []
              Legend.Left = -10.000000000000000000
              Stroke.Color = clDarkred
              XValues.MajorUnit = 1.000000000000000000
              XValues.MajorUnitFont.Charset = DEFAULT_CHARSET
              XValues.MajorUnitFont.Color = clWindowText
              XValues.MajorUnitFont.Height = -11
              XValues.MajorUnitFont.Name = 'Tahoma'
              XValues.MajorUnitFont.Style = []
              XValues.MajorUnitFormat = '%.0f'
              XValues.MajorUnitSpacing = 5.000000000000000000
              XValues.MajorUnitTickMarkSize = 10.000000000000000000
              XValues.MajorUnitTickMarkColor = clSilver
              XValues.MinorUnitFont.Charset = DEFAULT_CHARSET
              XValues.MinorUnitFont.Color = clWindowText
              XValues.MinorUnitFont.Height = -11
              XValues.MinorUnitFont.Name = 'Tahoma'
              XValues.MinorUnitFont.Style = []
              XValues.MinorUnitFormat = '%.0f'
              XValues.MinorUnitSpacing = 5.000000000000000000
              XValues.MinorUnitTickMarkSize = 7.000000000000000000
              XValues.MinorUnitTickMarkColor = clSilver
              XValues.Title.Font.Charset = DEFAULT_CHARSET
              XValues.Title.Font.Color = clWindowText
              XValues.Title.Font.Height = -11
              XValues.Title.Font.Name = 'Tahoma'
              XValues.Title.Font.Style = []
              XValues.Title.TextMargins.Left = 0
              XValues.Title.TextMargins.Top = 0
              XValues.Title.TextMargins.Right = 0
              XValues.Title.TextMargins.Bottom = 0
              XValues.Title.Text = 'X-Axis Serie 3'
              XValues.Positions = []
              YValues.MajorUnit = 1.000000000000000000
              YValues.MajorUnitFont.Charset = DEFAULT_CHARSET
              YValues.MajorUnitFont.Color = clWindowText
              YValues.MajorUnitFont.Height = -11
              YValues.MajorUnitFont.Name = 'Tahoma'
              YValues.MajorUnitFont.Style = []
              YValues.MajorUnitFormat = '%.2f'
              YValues.MajorUnitSpacing = 5.000000000000000000
              YValues.MajorUnitTickMarkSize = 10.000000000000000000
              YValues.MajorUnitTickMarkColor = clSilver
              YValues.MinorUnitFont.Charset = DEFAULT_CHARSET
              YValues.MinorUnitFont.Color = clWindowText
              YValues.MinorUnitFont.Height = -11
              YValues.MinorUnitFont.Name = 'Tahoma'
              YValues.MinorUnitFont.Style = []
              YValues.MinorUnitFormat = '%.2f'
              YValues.MinorUnitSpacing = 5.000000000000000000
              YValues.MinorUnitTickMarkSize = 7.000000000000000000
              YValues.MinorUnitTickMarkColor = clSilver
              YValues.Title.Font.Charset = DEFAULT_CHARSET
              YValues.Title.Font.Color = clWindowText
              YValues.Title.Font.Height = -11
              YValues.Title.Font.Name = 'Tahoma'
              YValues.Title.Font.Style = []
              YValues.Title.TextMargins.Left = 0
              YValues.Title.TextMargins.Top = 0
              YValues.Title.TextMargins.Right = 0
              YValues.Title.TextMargins.Bottom = 0
              YValues.Title.Text = 'Y-Axis Serie 3'
              YValues.Positions = []
              Crosshair.XTextStroke.Color = 7936771
              Crosshair.XTextFill.Color = 7936771
              Crosshair.XTextFont.Charset = DEFAULT_CHARSET
              Crosshair.XTextFont.Color = clWhite
              Crosshair.XTextFont.Height = -11
              Crosshair.XTextFont.Name = 'Segoe UI'
              Crosshair.XTextFont.Style = []
              Crosshair.YTextStroke.Color = 7936771
              Crosshair.YTextFill.Color = 7936771
              Crosshair.YTextFont.Charset = DEFAULT_CHARSET
              Crosshair.YTextFont.Color = clWhite
              Crosshair.YTextFont.Height = -11
              Crosshair.YTextFont.Name = 'Segoe UI'
              Crosshair.YTextFont.Style = []
              Crosshair.HorizontalLineStroke.Color = 7936771
              Crosshair.VerticalLineStroke.Color = 7936771
            end>
          Title.Stroke.Kind = gskSolid
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Title.Height = 35.000000000000000000
          Title.Line = False
          Title.TextMargins.Left = 3
          Title.TextMargins.Top = 3
          Title.TextMargins.Right = 3
          Title.TextMargins.Bottom = 3
          Title.Text = 'Ventas'
          XAxis.Stroke.Kind = gskSolid
          XAxis.Height = 35.000000000000000000
          YAxis.Stroke.Kind = gskSolid
          YAxis.Width = 35.000000000000000000
          DefaultLoadOptions.XValuesFormatString = '%.0f'
          DefaultLoadOptions.YValuesFormatString = '%.2f'
          DefaultLoadOptions.MaxYOffsetPercentage = 5.000000000000000000
          Align = alClient
          TabOrder = 0
        end
      end
      object tsGastos: TTabSheet
        Caption = 'Gastos'
        ImageIndex = 4
        object chaGastos: TTMSFNCChart
          Left = 0
          Top = 0
          Width = 1081
          Height = 524
          Appearance.ColorList = <
            item
              Color = 16105559
            end
            item
              Color = 5644279
            end
            item
              Color = 7936771
            end
            item
              Color = 12275349
            end
            item
              Color = 1296366
            end
            item
              Color = 4350195
            end
            item
              Color = 16544551
            end
            item
              Color = 5820321
            end
            item
              Color = 10922240
            end
            item
              Color = 16376965
            end>
          Appearance.GlobalFont.Color = -1
          Appearance.GlobalFont.Scale = 1.000000000000000000
          Appearance.GlobalFont.Style = []
          Appearance.ColorScheme = ccsColorList
          Appearance.MonochromeColor = clSteelblue
          ClickMargin = 10.000000000000000000
          Legend.Fill.Kind = gfkSolid
          Legend.Stroke.Kind = gskSolid
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clWindowText
          Legend.Font.Height = -11
          Legend.Font.Name = 'Tahoma'
          Legend.Font.Style = []
          Legend.Left = 10.000000000000000000
          Legend.Top = 10.000000000000000000
          SeriesMargins.Left = 0
          SeriesMargins.Top = 0
          SeriesMargins.Right = 0
          SeriesMargins.Bottom = 0
          Series = <>
          Title.Stroke.Kind = gskSolid
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Title.Height = 35.000000000000000000
          Title.TextMargins.Left = 3
          Title.TextMargins.Top = 3
          Title.TextMargins.Right = 3
          Title.TextMargins.Bottom = 3
          Title.Text = 'Gastos'
          XAxis.Stroke.Kind = gskSolid
          XAxis.Height = 35.000000000000000000
          YAxis.Stroke.Kind = gskSolid
          YAxis.Width = 35.000000000000000000
          DefaultLoadOptions.XValuesFormatString = '%.0f'
          DefaultLoadOptions.YValuesFormatString = '%.2f'
          DefaultLoadOptions.MaxYOffsetPercentage = 5.000000000000000000
          OnSerieSliceClick = chaGastosSerieSliceClick
          Align = alClient
          TabOrder = 0
        end
      end
    end
    object sbEstado: TStatusBar
      Left = 1
      Top = 609
      Width = 1089
      Height = 23
      Panels = <
        item
          Text = 'Estado'
          Width = 250
        end>
    end
  end
  object CDSSucursales: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSucursales'
    Left = 640
    Top = 488
    object CDSSucursalesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSSucursalesDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Left = 536
    Top = 120
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 608
    Top = 120
    object CDSSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object DSSucursales: TDataSource
    DataSet = CDSSucursal
    Left = 680
    Top = 120
  end
  object CDSVentas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'anio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPVentas'
    Left = 1024
    Top = 120
    object CDSVentasMES: TIntegerField
      FieldName = 'MES'
      Origin = 'MES'
    end
    object CDSVentasSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSVentasNOMBRESUCURSAL: TStringField
      FieldName = 'NOMBRESUCURSAL'
      Origin = 'NOMBRESUCURSAL'
      Size = 35
    end
    object CDSVentasTOTAL_VTAS_CTDO: TFloatField
      FieldName = 'TOTAL_VTAS_CTDO'
      Origin = 'TOTAL_VTAS_CTDO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasTOTAL_VTAS_CC: TFloatField
      FieldName = 'TOTAL_VTAS_CC'
      Origin = 'TOTAL_VTAS_CC'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasTOTAL_VTAS_NCREDITO: TFloatField
      FieldName = 'TOTAL_VTAS_NCREDITO'
      Origin = 'TOTAL_VTAS_NCREDITO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasTOTAL_VTAS_CTDO_NCREDITO: TFloatField
      FieldName = 'TOTAL_VTAS_CTDO_NCREDITO'
      Origin = 'TOTAL_VTAS_CTDO_NCREDITO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasTOTAL_ANULACIONES: TFloatField
      FieldName = 'TOTAL_ANULACIONES'
      Origin = 'TOTAL_ANULACIONES'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasTOTAL_VTAS_NDEBITO: TFloatField
      FieldName = 'TOTAL_VTAS_NDEBITO'
      Origin = 'TOTAL_VTAS_NDEBITO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasTOTAL_VTAS: TFloatField
      DisplayLabel = 'Ventas'
      FieldName = 'TOTAL_VTAS'
      Origin = 'TOTAL_VTAS'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasTOTAL_COMPRAS: TFloatField
      DisplayLabel = 'Compras'
      FieldName = 'TOTAL_COMPRAS'
      Origin = 'TOTAL_COMPRAS'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasTOTAL_NC_COMPRAS: TFloatField
      FieldName = 'TOTAL_NC_COMPRAS'
      Origin = 'TOTAL_NC_COMPRAS'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasTOTAL_COMPRAS_CTDO: TFloatField
      FieldName = 'TOTAL_COMPRAS_CTDO'
      Origin = 'TOTAL_COMPRAS_CTDO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasTOTAL_GRAL_COMPRAS: TFloatField
      FieldName = 'TOTAL_GRAL_COMPRAS'
      Origin = 'TOTAL_GRAL_COMPRAS'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasTOTAL_PAGOS: TFloatField
      DisplayLabel = 'Pagos'
      FieldName = 'TOTAL_PAGOS'
      Origin = 'TOTAL_PAGOS'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasTOTAL_COBRANZAS: TFloatField
      DisplayLabel = 'Cobranza'
      FieldName = 'TOTAL_COBRANZAS'
      Origin = 'TOTAL_COBRANZAS'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasSALDO_CC_VTA: TFloatField
      DisplayLabel = 'Saldo CC Vtas'
      FieldName = 'SALDO_CC_VTA'
      Origin = 'SALDO_CC_VTA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasSALDO_CC_COMPRA: TFloatField
      DisplayLabel = 'Saldo CC Compr.'
      FieldName = 'SALDO_CC_COMPRA'
      Origin = 'SALDO_CC_COMPRA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVentasTOTAL_PERSONAL: TFloatField
      DisplayLabel = 'Personal'
      FieldName = 'TOTAL_PERSONAL'
      Origin = 'TOTAL_PERSONAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSPVentas: TDataSetProvider
    DataSet = QVentas
    Left = 928
    Top = 120
  end
  object DSPSucursales: TDataSetProvider
    DataSet = QSucursales
    Left = 552
    Top = 480
  end
  object DSPGastosDetE: TDataSetProvider
    DataSet = QGastosDetE
    Left = 920
    Top = 176
  end
  object CDSGastosDetE: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'anio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPGastosDetE'
    Left = 1024
    Top = 176
    object CDSGastosDetEMES: TIntegerField
      FieldName = 'MES'
    end
    object CDSGastosDetESUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSGastosDetENOMBRESUCURSAL: TStringField
      FieldName = 'NOMBRESUCURSAL'
      Size = 35
    end
    object CDSGastosDetETOTAL_EGRESOS: TFloatField
      DisplayLabel = 'Gastos'
      FieldName = 'TOTAL_EGRESOS'
      ReadOnly = True
    end
  end
  object DSPVentasGral: TDataSetProvider
    DataSet = QVentasGral
    Left = 120
    Top = 88
  end
  object CDSVentaGral: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'anio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPVentasGral'
    Left = 208
    Top = 88
    object CDSVentaGralSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSVentaGralMES: TIntegerField
      FieldName = 'MES'
    end
    object CDSVentaGralNOMBRESUCURSAL: TStringField
      FieldName = 'NOMBRESUCURSAL'
      Size = 35
    end
    object CDSVentaGralTOTAL_VTAS_CTDO: TFloatField
      DisplayLabel = 'Ventas de Contado'
      FieldName = 'TOTAL_VTAS_CTDO'
    end
    object CDSVentaGralTOTAL_VTAS_CC: TFloatField
      DisplayLabel = 'Ventas en CtaCte'
      FieldName = 'TOTAL_VTAS_CC'
    end
    object CDSVentaGralTOTAL_VTAS_NCREDITO: TFloatField
      DisplayLabel = 'Notas de Credito'
      FieldName = 'TOTAL_VTAS_NCREDITO'
    end
    object CDSVentaGralTOTAL_VTAS_CTDO_NCREDITO: TFloatField
      DisplayLabel = 'Notas de Credito Ctdo'
      FieldName = 'TOTAL_VTAS_CTDO_NCREDITO'
    end
    object CDSVentaGralTOTAL_ANULACIONES: TFloatField
      DisplayLabel = 'Anulaciones'
      FieldName = 'TOTAL_ANULACIONES'
    end
    object CDSVentaGralTOTAL_VTAS_NDEBITO: TFloatField
      DisplayLabel = 'Notas de Debito'
      FieldName = 'TOTAL_VTAS_NDEBITO'
    end
    object CDSVentaGralTOTAL_VTAS: TFloatField
      DisplayLabel = 'Total de Ventas'
      FieldName = 'TOTAL_VTAS'
    end
    object CDSVentaGralTOTAL_COMPRAS: TFloatField
      DisplayLabel = 'Compras en Cta Cte'
      FieldName = 'TOTAL_COMPRAS'
    end
    object CDSVentaGralTOTAL_COMPRAS_CTDO: TFloatField
      DisplayLabel = 'Compras de Contado'
      FieldName = 'TOTAL_COMPRAS_CTDO'
    end
    object CDSVentaGralTOTAL_NC_COMPRAS: TFloatField
      DisplayLabel = 'Notas de Credito'
      FieldName = 'TOTAL_NC_COMPRAS'
    end
    object CDSVentaGralTOTAL_GRAL_COMPRAS: TFloatField
      DisplayLabel = 'Total de Compras'
      FieldName = 'TOTAL_GRAL_COMPRAS'
    end
    object CDSVentaGralTOTAL_PAGOS: TFloatField
      DisplayLabel = 'Total de Pagos'
      FieldName = 'TOTAL_PAGOS'
    end
    object CDSVentaGralTOTAL_COBRANZAS: TFloatField
      DisplayLabel = 'Total Cobrados x Recibbo'
      FieldName = 'TOTAL_COBRANZAS'
    end
    object CDSVentaGralTOTAL_PERSONAL: TFloatField
      DisplayLabel = 'Personal'
      FieldName = 'TOTAL_PERSONAL'
    end
    object CDSVentaGralSALDO_CC_VTA: TFloatField
      DisplayLabel = 'Saldo CC.Vta'
      FieldName = 'SALDO_CC_VTA'
    end
    object CDSVentaGralSALDO_CC_COMPRA: TFloatField
      DisplayLabel = 'Saldo CC Compra'
      FieldName = 'SALDO_CC_COMPRA'
    end
  end
  object DSPGastosGrlaE: TDataSetProvider
    DataSet = QGastosGrlaE
    Left = 120
    Top = 136
  end
  object CDSGastoGralE: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'anio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPGastosGrlaE'
    Left = 208
    Top = 136
    object CDSGastoGralESUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSGastoGralENOMBRESUCURSAL: TStringField
      FieldName = 'NOMBRESUCURSAL'
      Size = 35
    end
    object CDSGastoGralEMES: TIntegerField
      FieldName = 'MES'
    end
    object CDSGastoGralERUBRO: TStringField
      FieldName = 'RUBRO'
      Size = 3
    end
    object CDSGastoGralEDETALLERUBRO: TStringField
      FieldName = 'DETALLERUBRO'
      Size = 50
    end
    object CDSGastoGralETOTAL_EGRESOS: TFloatField
      FieldName = 'TOTAL_EGRESOS'
      ReadOnly = True
    end
  end
  object DSPGastosDetI: TDataSetProvider
    DataSet = QGastosDetI
    Left = 928
    Top = 232
  end
  object CDSGastosDetI: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'anio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPGastosDetI'
    Left = 1032
    Top = 232
    object CDSGastosDetIMES: TIntegerField
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
    end
    object CDSGastosDetISUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      ProviderFlags = []
    end
    object CDSGastosDetINOMBRESUCURSAL: TStringField
      FieldName = 'NOMBRESUCURSAL'
      Origin = 'NOMBRESUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSGastosDetIDETALLERUBRO: TStringField
      DisplayLabel = 'Gastos Extras'
      FieldName = 'DETALLERUBRO'
      Origin = 'DETALLERUBRO'
      ProviderFlags = []
      Size = 50
    end
    object CDSGastosDetITOTAL_EGRESOS: TFloatField
      FieldName = 'TOTAL_EGRESOS'
      Origin = 'TOTAL_EGRESOS'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSPGastosGralI: TDataSetProvider
    DataSet = QGastosGraI
    Left = 120
    Top = 184
  end
  object CDSGastoGralI: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'anio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPGastosGralI'
    Left = 208
    Top = 192
    object CDSGastoGralISUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSGastoGralINOMBRESUCURSAL: TStringField
      FieldName = 'NOMBRESUCURSAL'
      Size = 35
    end
    object CDSGastoGralIMES: TIntegerField
      FieldName = 'MES'
    end
    object CDSGastoGralIRUBRO: TStringField
      FieldName = 'RUBRO'
      Size = 3
    end
    object CDSGastoGralIDETALLERUBRO: TStringField
      FieldName = 'DETALLERUBRO'
      Size = 50
    end
    object CDSGastoGralITOTAL_EGRESOS: TFloatField
      FieldName = 'TOTAL_EGRESOS'
      ReadOnly = True
    end
  end
  object AdvGridExcelIO1: TAdvGridExcelIO
    AdvStringGrid = sgTotal
    Options.ExportOverwriteMessage = 'El archivo %existe los sobreescribe ?'
    Options.ExportHiddenColumns = True
    Options.ExportReadonlyCellsAsLocked = True
    Options.ExportWordWrapped = True
    Options.ExportRawRTF = False
    Options.ExportShowInExcel = True
    Options.ExportHardBorders = True
    Options.ImportActiveSheet = True
    Options.ExportCellMargins = True
    UseUnicode = True
    GridStartRow = 0
    GridStartCol = 0
    Version = '3.14'
    Left = 477
    Top = 241
  end
  object QVentasGral: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from VTA_GRAL_ANUAL  (:anio,:suc)')
    Left = 61
    Top = 89
    ParamData = <
      item
        Position = 1
        Name = 'anio'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QGastosGrlaE: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select v.sucursal,v.nombresucursal,v.mes,v.rubro,v.detallerubro,' +
        'sum(total_egresos) as TOTAL_Egresos from VTA_GRAL_ANUAL_GASTOS_E' +
        ' (:anio,:suc) v'
      
        'group by v.sucursal,v.nombresucursal,v.mes,v.rubro,v.detallerubr' +
        'o'
      'order by v.sucursal,v.nombresucursal,v.mes,v.detallerubro'
      ' ')
    Left = 53
    Top = 137
    ParamData = <
      item
        Position = 1
        Name = 'anio'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QGastosGraI: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select v.sucursal,v.nombresucursal,v.mes,v.rubro,v.detallerubro,' +
        'sum(total_egresos) as TOTAL_Egresos from VTA_GRAL_ANUAL_GASTOS_i' +
        ' (:anio,:suc) v'
      
        'group by v.sucursal,v.nombresucursal,v.mes,v.rubro,v.detallerubr' +
        'o'
      'order by v.sucursal,v.nombresucursal,v.mes,v.detallerubro'
      ' ')
    Left = 45
    Top = 185
    ParamData = <
      item
        Position = 1
        Name = 'anio'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QSucursales: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.codigo,s.detalle from sucursal s '
      'where (s.codigo = :codigo)  or( :codigo = -1'
      ')order by s.codigo')
    Left = 469
    Top = 481
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'codigo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QVentas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select *  from VTA_GRAL_ANUAL  (:anio,:suc)'
      'order by sucursal,mes')
    Left = 845
    Top = 121
    ParamData = <
      item
        Position = 1
        Name = 'anio'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QGastosDetE: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select sucursal, nombresucursal,detallerubro, mes,sum(total_egre' +
        'sos) as TOTAL_Egresos from VTA_GRAL_ANUAL_GASTOS_E  (:anio,:suc)'
      'group by sucursal,nombresucursal,detallerubro, mes')
    Left = 845
    Top = 177
    ParamData = <
      item
        Position = 1
        Name = 'anio'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QGastosDetI: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select sucursal, nombresucursal,detallerubro,mes,sum(total_egres' +
        'os) as TOTAL_Egresos from VTA_GRAL_ANUAL_GASTOS_I  (:anio,:suc)'
      'group by sucursal,nombresucursal,detallerubro,mes'
      ' ')
    Left = 845
    Top = 233
    ParamData = <
      item
        Position = 1
        Name = 'anio'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QRubros: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select count(*) from tabla_rub_gastos')
    Left = 557
    Top = 297
    object QRubrosCOUNT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COUNT'
      Origin = 'COUNT'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQuery1: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select sucursal, nombresucursal,mes,sum(total_ingresos) as TOTAL' +
        '_Ingresos from VTA_GRAL_ANUAL_GASTOS  (:anio,:suc)'
      'group by sucursal,nombresucursal,mes'
      ' ')
    Left = 645
    Top = 353
    ParamData = <
      item
        Name = 'ANIO'
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SUC'
        ParamType = ptInput
      end>
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    AutoFlush = True
    SubStorages = <>
    Left = 784
    Top = 336
  end
  object JvFormStorage: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    Options = [fpState, fpSize, fpLocation, fpActiveControl]
    StoredValues = <>
    Left = 752
    Top = 296
  end
end
