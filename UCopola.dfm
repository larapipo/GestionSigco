inherited FormLeerCopola: TFormLeerCopola
  Caption = 'Lectura Copola'
  ClientHeight = 716
  ClientWidth = 1151
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1169
  ExplicitHeight = 757
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1151
    Height = 663
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1206
    ExplicitHeight = 676
    object pcGeneral: TPageControl
      Left = 0
      Top = 0
      Width = 1151
      Height = 663
      ActivePage = pagVentas
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 1206
      ExplicitHeight = 676
      object pagCompras: TTabSheet
        Caption = 'Compras'
        object pcImportacion: TPageControl
          Left = 0
          Top = 0
          Width = 1143
          Height = 635
          ActivePage = pagBorrador
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 1198
          ExplicitHeight = 648
          object pagBorrador: TTabSheet
            Caption = 'Lectura Borrador'
            object Splitter1: TSplitter
              Left = 513
              Top = 0
              Width = 5
              Height = 514
              Color = clBlue
              ParentColor = False
              ExplicitHeight = 589
            end
            object Panel2: TPanel
              Left = 0
              Top = 0
              Width = 513
              Height = 514
              Align = alLeft
              Caption = 'Panel2'
              ParentBackground = False
              TabOrder = 0
              ExplicitHeight = 527
              object Splitter2: TSplitter
                Left = 1
                Top = 275
                Width = 511
                Height = 5
                Cursor = crVSplit
                Align = alTop
                Color = clBlue
                ParentColor = False
                ExplicitTop = 251
              end
              object sgCabecera: TAdvStringGrid
                Left = 1
                Top = 25
                Width = 511
                Height = 250
                Align = alTop
                DrawingStyle = gdsClassic
                FixedColor = clWhite
                FixedCols = 0
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goFixedRowDefAlign]
                TabOrder = 0
                OnGetAlignment = sgCabeceraGetAlignment
                ActiveCellFont.Charset = DEFAULT_CHARSET
                ActiveCellFont.Color = 4474440
                ActiveCellFont.Height = -11
                ActiveCellFont.Name = 'Tahoma'
                ActiveCellFont.Style = [fsBold]
                ActiveCellColor = 11565130
                ActiveCellColorTo = 11565130
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
                Version = '9.0.0.10'
                ColWidths = (
                  64
                  64
                  64
                  64
                  64)
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
                  22)
              end
              object sgDetalle: TAdvStringGrid
                Left = 1
                Top = 280
                Width = 511
                Height = 233
                Align = alClient
                DrawingStyle = gdsClassic
                FixedColor = clWhite
                FixedCols = 0
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goFixedRowDefAlign]
                TabOrder = 1
                ActiveCellFont.Charset = DEFAULT_CHARSET
                ActiveCellFont.Color = 4474440
                ActiveCellFont.Height = -11
                ActiveCellFont.Name = 'Tahoma'
                ActiveCellFont.Style = [fsBold]
                ActiveCellColor = 11565130
                ActiveCellColorTo = 11565130
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
                Version = '9.0.0.10'
                ExplicitHeight = 246
                ColWidths = (
                  64
                  64
                  64
                  64
                  64)
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
                  22)
                object Panel6: TPanel
                  Left = 0
                  Top = 0
                  Width = 507
                  Height = 24
                  Align = alTop
                  Caption = 'Detalles'
                  Color = clMenuHighlight
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 2
                  ExplicitWidth = 490
                end
              end
              object Panel4: TPanel
                Left = 1
                Top = 1
                Width = 511
                Height = 24
                Align = alTop
                Caption = 'Cabeceras'
                Color = clMenuHighlight
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 2
              end
            end
            object Panel3: TPanel
              Left = 518
              Top = 0
              Width = 617
              Height = 514
              Align = alClient
              Caption = 'Panel3'
              TabOrder = 1
              ExplicitWidth = 672
              ExplicitHeight = 527
              object sgProveedores: TAdvStringGrid
                Left = 1
                Top = 25
                Width = 615
                Height = 488
                Align = alClient
                DrawingStyle = gdsClassic
                FixedColor = clWhite
                FixedCols = 0
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goFixedRowDefAlign]
                TabOrder = 0
                ActiveCellFont.Charset = DEFAULT_CHARSET
                ActiveCellFont.Color = 4474440
                ActiveCellFont.Height = -11
                ActiveCellFont.Name = 'Tahoma'
                ActiveCellFont.Style = [fsBold]
                ActiveCellColor = 11565130
                ActiveCellColorTo = 11565130
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
                Version = '9.0.0.10'
                ExplicitWidth = 670
                ExplicitHeight = 501
                ColWidths = (
                  64
                  64
                  64
                  64
                  64)
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
                  22)
              end
              object Panel5: TPanel
                Left = 1
                Top = 1
                Width = 615
                Height = 24
                Align = alTop
                Caption = 'Proveedores'
                Color = clMenuHighlight
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 1
                ExplicitWidth = 670
              end
            end
            object pnConfiguracion: TPanel
              Left = 0
              Top = 514
              Width = 1135
              Height = 93
              Align = alBottom
              TabOrder = 2
              ExplicitTop = 527
              ExplicitWidth = 1190
              DesignSize = (
                1135
                93)
              object Label1: TLabel
                Left = 11
                Top = 9
                Width = 85
                Height = 13
                Caption = 'Archivo Cabecera'
              end
              object Label2: TLabel
                Left = 11
                Top = 36
                Width = 70
                Height = 13
                Caption = 'Archivo Lineas'
              end
              object Label3: TLabel
                Left = 12
                Top = 63
                Width = 99
                Height = 13
                Caption = 'Archivo Proveedores'
              end
              object edCabecera: TJvFilenameEdit
                Left = 128
                Top = 6
                Width = 388
                Height = 21
                TextHint = 'Archivo Cabecera CSV'
                AddQuotes = False
                Filter = '*.csv'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                Text = ''
              end
              object edDetalle: TJvFilenameEdit
                Left = 128
                Top = 33
                Width = 388
                Height = 21
                TextHint = 'Archivo Detalles CSV'
                AddQuotes = False
                Filter = '*.csv'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                Text = ''
              end
              object edProveedores: TJvFilenameEdit
                Left = 128
                Top = 60
                Width = 388
                Height = 21
                TextHint = 'Archivo Proveedores CSV'
                AddQuotes = False
                Filter = '*.csv'
                TabOrder = 2
                Text = ''
              end
              object BitBtn2: TBitBtn
                Left = 1000
                Top = 16
                Width = 110
                Height = 25
                Action = AltaProveedores
                Anchors = [akRight, akBottom]
                Caption = 'Alta Proveedores'
                TabOrder = 3
              end
            end
          end
          object pagTablas: TTabSheet
            Caption = 'Tablas'
            ImageIndex = 1
            object Splitter3: TSplitter
              Left = 0
              Top = 217
              Width = 1135
              Height = 9
              Cursor = crVSplit
              Align = alTop
              ExplicitWidth = 426
            end
            object pnProveedor: TPanel
              Left = 0
              Top = 0
              Width = 1135
              Height = 217
              Align = alTop
              Caption = 'pnProveedor'
              Color = clMenuHighlight
              ParentBackground = False
              TabOrder = 0
              ExplicitWidth = 1190
              object dbgProveedor: TDBAdvGrid
                Left = 1
                Top = 1
                Width = 1133
                Height = 215
                Align = alClient
                ColCount = 2
                DefaultDrawing = True
                DrawingStyle = gdsClassic
                FixedColor = clWhite
                FixedCols = 0
                RowCount = 2
                FixedRows = 1
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
                TabOrder = 0
                ActiveCellFont.Charset = DEFAULT_CHARSET
                ActiveCellFont.Color = 4474440
                ActiveCellFont.Height = -11
                ActiveCellFont.Name = 'Tahoma'
                ActiveCellFont.Style = [fsBold]
                ActiveCellColor = 11565130
                ActiveCellColorTo = 11565130
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
                FixedColWidth = 84
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
                Version = '2.5.1.23'
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
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    HeaderFont.Charset = DEFAULT_CHARSET
                    HeaderFont.Color = 3881787
                    HeaderFont.Height = -11
                    HeaderFont.Name = 'Tahoma'
                    HeaderFont.Style = []
                    PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                    PrintFont.Charset = DEFAULT_CHARSET
                    PrintFont.Color = clWindowText
                    PrintFont.Height = -11
                    PrintFont.Name = 'Tahoma'
                    PrintFont.Style = []
                    Width = 84
                  end
                  item
                    Borders = []
                    BorderPen.Color = clSilver
                    ButtonHeight = 18
                    CheckFalse = 'N'
                    CheckTrue = 'Y'
                    Color = clWindow
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    HeaderFont.Charset = DEFAULT_CHARSET
                    HeaderFont.Color = 3881787
                    HeaderFont.Height = -11
                    HeaderFont.Name = 'Tahoma'
                    HeaderFont.Style = []
                    PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                    PrintFont.Charset = DEFAULT_CHARSET
                    PrintFont.Color = clWindowText
                    PrintFont.Height = -11
                    PrintFont.Name = 'Tahoma'
                    PrintFont.Style = []
                    Width = 79
                  end>
                DataSource = DSProveedor
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
                ExplicitWidth = 1188
                ColWidths = (
                  84
                  79)
                RowHeights = (
                  22
                  22)
              end
            end
            object pnPieTablas: TPanel
              Left = 0
              Top = 226
              Width = 1135
              Height = 381
              Align = alClient
              Color = clMenuHighlight
              ParentBackground = False
              TabOrder = 1
              ExplicitWidth = 1190
              ExplicitHeight = 394
              object JvDBStatusLabel1: TJvDBStatusLabel
                Left = 1
                Top = 1
                Width = 1133
                Height = 134
                DataSource = DSCabecera
                Style = lsRecordNo
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                Transparent = True
                ExplicitWidth = 96
                ExplicitHeight = 13
              end
              object Splitter4: TSplitter
                Left = 1
                Top = 135
                Width = 1133
                Height = 5
                Cursor = crVSplit
                Align = alBottom
                ExplicitTop = 176
                ExplicitWidth = 1196
              end
              object dbgDetalle: TDBAdvGrid
                Left = 1
                Top = 140
                Width = 1133
                Height = 240
                Align = alBottom
                ColCount = 2
                DefaultDrawing = True
                DrawingStyle = gdsClassic
                FixedColor = clWhite
                FixedCols = 0
                RowCount = 2
                FixedRows = 1
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
                TabOrder = 0
                ActiveCellFont.Charset = DEFAULT_CHARSET
                ActiveCellFont.Color = 4474440
                ActiveCellFont.Height = -11
                ActiveCellFont.Name = 'Tahoma'
                ActiveCellFont.Style = [fsBold]
                ActiveCellColor = 11565130
                ActiveCellColorTo = 11565130
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
                FixedColWidth = 84
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
                Version = '2.5.1.23'
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
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    HeaderFont.Charset = DEFAULT_CHARSET
                    HeaderFont.Color = 3881787
                    HeaderFont.Height = -11
                    HeaderFont.Name = 'Tahoma'
                    HeaderFont.Style = []
                    PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                    PrintFont.Charset = DEFAULT_CHARSET
                    PrintFont.Color = clWindowText
                    PrintFont.Height = -11
                    PrintFont.Name = 'Tahoma'
                    PrintFont.Style = []
                    Width = 84
                  end
                  item
                    Borders = []
                    BorderPen.Color = clSilver
                    ButtonHeight = 18
                    CheckFalse = 'N'
                    CheckTrue = 'Y'
                    Color = clWindow
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    HeaderFont.Charset = DEFAULT_CHARSET
                    HeaderFont.Color = 3881787
                    HeaderFont.Height = -11
                    HeaderFont.Name = 'Tahoma'
                    HeaderFont.Style = []
                    PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                    PrintFont.Charset = DEFAULT_CHARSET
                    PrintFont.Color = clWindowText
                    PrintFont.Height = -11
                    PrintFont.Name = 'Tahoma'
                    PrintFont.Style = []
                    Width = 79
                  end>
                DataSource = DSLinea
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
                ExplicitTop = 153
                ExplicitWidth = 1188
                ColWidths = (
                  84
                  79)
                RowHeights = (
                  22
                  22)
              end
              object dbgCabecera: TDBAdvGrid
                Left = 1
                Top = 1
                Width = 1133
                Height = 134
                Align = alClient
                ColCount = 2
                DefaultDrawing = True
                DrawingStyle = gdsClassic
                FixedColor = clWhite
                FixedCols = 0
                RowCount = 2
                FixedRows = 1
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
                TabOrder = 1
                ActiveCellFont.Charset = DEFAULT_CHARSET
                ActiveCellFont.Color = 4474440
                ActiveCellFont.Height = -11
                ActiveCellFont.Name = 'Tahoma'
                ActiveCellFont.Style = [fsBold]
                ActiveCellColor = 11565130
                ActiveCellColorTo = 11565130
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
                FixedColWidth = 84
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
                Version = '2.5.1.23'
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
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    HeaderFont.Charset = DEFAULT_CHARSET
                    HeaderFont.Color = 3881787
                    HeaderFont.Height = -11
                    HeaderFont.Name = 'Tahoma'
                    HeaderFont.Style = []
                    PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                    PrintFont.Charset = DEFAULT_CHARSET
                    PrintFont.Color = clWindowText
                    PrintFont.Height = -11
                    PrintFont.Name = 'Tahoma'
                    PrintFont.Style = []
                    Width = 84
                  end
                  item
                    Borders = []
                    BorderPen.Color = clSilver
                    ButtonHeight = 18
                    CheckFalse = 'N'
                    CheckTrue = 'Y'
                    Color = clWindow
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    HeaderFont.Charset = DEFAULT_CHARSET
                    HeaderFont.Color = 3881787
                    HeaderFont.Height = -11
                    HeaderFont.Name = 'Tahoma'
                    HeaderFont.Style = []
                    PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                    PrintFont.Charset = DEFAULT_CHARSET
                    PrintFont.Color = clWindowText
                    PrintFont.Height = -11
                    PrintFont.Name = 'Tahoma'
                    PrintFont.Style = []
                    Width = 79
                  end>
                DataSource = DSCabecera
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
                ExplicitWidth = 1188
                ExplicitHeight = 147
                ColWidths = (
                  84
                  79)
                RowHeights = (
                  22
                  22)
              end
            end
          end
          object pagResultado: TTabSheet
            Caption = 'Resultado'
            ImageIndex = 2
            object sgResultado: TAdvStringGrid
              Left = 0
              Top = 0
              Width = 1135
              Height = 578
              Align = alClient
              ColCount = 15
              Ctl3D = True
              DefaultColWidth = 70
              DrawingStyle = gdsGradient
              FixedColor = clWhite
              FixedCols = 0
              RowCount = 2
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
              ParentCtl3D = False
              TabOrder = 0
              OnFooterCalc = sgResultadoFooterCalc
              ActiveCellFont.Charset = DEFAULT_CHARSET
              ActiveCellFont.Color = clWindowText
              ActiveCellFont.Height = -11
              ActiveCellFont.Name = 'Tahoma'
              ActiveCellFont.Style = [fsBold]
              ActiveCellColor = 16575452
              ActiveCellColorTo = 16571329
              ColumnHeaders.Strings = (
                'tp'
                'letra'
                'prefijo'
                'numero'
                'fecha'
                'nombre'
                'cuit'
                'condicioniva'
                'iva21'
                'iva105'
                'exento'
                'iva27'
                'iibb'
                'periva'
                'total')
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
              DefaultAlignment = taCenter
              Filter = <>
              FilterDropDown.Color = clWhite
              FilterDropDown.Font.Charset = DEFAULT_CHARSET
              FilterDropDown.Font.Color = clWindowText
              FilterDropDown.Font.Height = -11
              FilterDropDown.Font.Name = 'Tahoma'
              FilterDropDown.Font.Style = []
              FilterDropDown.TextChecked = 'Checked'
              FilterDropDown.TextUnChecked = 'Unchecked'
              FilterDropDownClear = '(All)'
              FilterEdit.TypeNames.Strings = (
                'Comienza Con'
                'Termina Con'
                'Contiene'
                'No contiene'
                'Igual'
                'No Igual'
                'Mayor que'
                'Menor que'
                'Clear')
              FixedColWidth = 45
              FixedRowHeight = 22
              FixedFont.Charset = DEFAULT_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'Tahoma'
              FixedFont.Style = [fsBold]
              FloatFormat = '%.2f'
              FloatingFooter.CalculateHiddenRows = False
              FloatingFooter.ShowHint = True
              HoverButtons.Buttons = <>
              HTMLSettings.ImageFolder = 'images'
              HTMLSettings.ImageBaseName = 'img'
              Look = glWin7
              Navigation.AdvanceOnEnter = True
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
              SearchFooter.FindNextCaption = 'Siguiente'
              SearchFooter.FindPrevCaption = ' Previo'
              SearchFooter.Font.Charset = DEFAULT_CHARSET
              SearchFooter.Font.Color = clWindowText
              SearchFooter.Font.Height = -11
              SearchFooter.Font.Name = 'Tahoma'
              SearchFooter.Font.Style = []
              SearchFooter.HighLightCaption = 'Resaltar'
              SearchFooter.HintClose = 'Close'
              SearchFooter.HintFindNext = 'Find next occurrence'
              SearchFooter.HintFindPrev = 'Find previous occurrence'
              SearchFooter.HintHighlight = 'Highlight occurrences'
              SearchFooter.MatchCaseCaption = 'Match case'
              SearchFooter.ResultFormat = '(%d of %d)'
              SearchFooter.SearchColor = clMoneyGreen
              SearchFooter.ShowClose = False
              SearchFooter.ShowResults = True
              SearchFooter.Visible = True
              SelectionTextColor = clWindowText
              SortSettings.Show = True
              SortSettings.IndexShow = True
              SortSettings.HeaderColor = 16579058
              SortSettings.HeaderColorTo = 16579058
              SortSettings.HeaderMirrorColor = 16380385
              SortSettings.HeaderMirrorColorTo = 16182488
              UIStyle = tsWindows7
              Version = '9.0.0.10'
              ExplicitWidth = 1190
              ExplicitHeight = 591
              ColWidths = (
                45
                61
                59
                88
                76
                160
                99
                73
                70
                79
                70
                70
                70
                70
                99)
              RowHeights = (
                22
                22)
            end
            object pnPieResultado: TPanel
              Left = 0
              Top = 578
              Width = 1135
              Height = 29
              Align = alBottom
              Caption = ' '
              TabOrder = 1
              ExplicitTop = 591
              ExplicitWidth = 1190
              object btExportarExcel: TBitBtn
                Left = 1056
                Top = 1
                Width = 115
                Height = 25
                Caption = 'Exportar Excel'
                TabOrder = 0
                OnClick = btExportarExcelClick
              end
            end
          end
        end
      end
      object pagVentas: TTabSheet
        Caption = 'Ventas'
        ImageIndex = 1
        object PageControl1: TPageControl
          Left = 0
          Top = 0
          Width = 1143
          Height = 635
          ActivePage = pgaBorradorVentas
          Align = alClient
          TabOrder = 0
          ExplicitTop = -2
          ExplicitWidth = 1140
          ExplicitHeight = 648
          object pgaBorradorVentas: TTabSheet
            Caption = 'Borrador Ventas'
            object Splitter5: TSplitter
              Left = 425
              Top = 0
              Width = 5
              Height = 479
              Color = clBlue
              ParentColor = False
              ExplicitHeight = 492
            end
            object pnDer: TPanel
              Left = 430
              Top = 0
              Width = 705
              Height = 479
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              ExplicitWidth = 760
              ExplicitHeight = 492
              object Panel8: TPanel
                Left = 0
                Top = 0
                Width = 705
                Height = 25
                Align = alTop
                Caption = 'Clientes'
                Color = clMenuHighlight
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
                ExplicitWidth = 760
              end
              object sgClientes: TAdvStringGrid
                Left = 0
                Top = 25
                Width = 705
                Height = 454
                Align = alClient
                DrawingStyle = gdsClassic
                FixedColor = clWhite
                FixedCols = 0
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goFixedRowDefAlign]
                TabOrder = 1
                ActiveCellFont.Charset = DEFAULT_CHARSET
                ActiveCellFont.Color = 4474440
                ActiveCellFont.Height = -12
                ActiveCellFont.Name = 'Segoe UI'
                ActiveCellFont.Style = [fsBold]
                ActiveCellColor = 11565130
                ActiveCellColorTo = 11565130
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
                FixedRowHeight = 22
                FixedFont.Charset = DEFAULT_CHARSET
                FixedFont.Color = clWindowText
                FixedFont.Height = -11
                FixedFont.Name = 'Segoe UI'
                FixedFont.Style = [fsBold]
                FloatFormat = '%.2f'
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
                SearchFooter.ColorTo = clNone
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
                SearchFooter.MatchCaseCaption = 'Match case'
                SearchFooter.ResultFormat = '(%d of %d)'
                SelectionColor = 13744549
                SelectionTextColor = clWindowText
                SortSettings.HeaderColor = clWhite
                SortSettings.HeaderColorTo = clWhite
                SortSettings.HeaderMirrorColor = clWhite
                SortSettings.HeaderMirrorColorTo = clWhite
                Version = '9.0.0.10'
                ExplicitWidth = 760
                ExplicitHeight = 467
                ColWidths = (
                  64
                  64
                  64
                  64
                  64)
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
                  22)
              end
            end
            object pnIzq: TPanel
              Left = 0
              Top = 0
              Width = 425
              Height = 479
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              ExplicitHeight = 492
              object Splitter6: TSplitter
                Left = 0
                Top = 248
                Width = 425
                Height = 5
                Cursor = crVSplit
                Align = alTop
                Color = clBlue
                ParentColor = False
              end
              object pnCab_1: TPanel
                Left = 0
                Top = 253
                Width = 425
                Height = 226
                Align = alClient
                BevelOuter = bvNone
                Caption = 'pnPie_1'
                TabOrder = 0
                ExplicitHeight = 239
                object pnDetVentas: TPanel
                  Left = 0
                  Top = 0
                  Width = 425
                  Height = 25
                  Align = alTop
                  Caption = 'Detalle'
                  Color = clMenuHighlight
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 0
                end
                object sgVentasDetalle: TAdvStringGrid
                  Left = 0
                  Top = 25
                  Width = 425
                  Height = 201
                  Align = alClient
                  DrawingStyle = gdsClassic
                  FixedColor = clWhite
                  FixedCols = 0
                  Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goFixedRowDefAlign]
                  TabOrder = 1
                  ActiveCellFont.Charset = DEFAULT_CHARSET
                  ActiveCellFont.Color = 4474440
                  ActiveCellFont.Height = -12
                  ActiveCellFont.Name = 'Segoe UI'
                  ActiveCellFont.Style = [fsBold]
                  ActiveCellColor = 11565130
                  ActiveCellColorTo = 11565130
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
                  FixedRowHeight = 22
                  FixedFont.Charset = DEFAULT_CHARSET
                  FixedFont.Color = clWindowText
                  FixedFont.Height = -11
                  FixedFont.Name = 'Segoe UI'
                  FixedFont.Style = [fsBold]
                  FloatFormat = '%.2f'
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
                  SearchFooter.ColorTo = clNone
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
                  SearchFooter.MatchCaseCaption = 'Match case'
                  SearchFooter.ResultFormat = '(%d of %d)'
                  SelectionColor = 13744549
                  SelectionTextColor = clWindowText
                  SortSettings.HeaderColor = clWhite
                  SortSettings.HeaderColorTo = clWhite
                  SortSettings.HeaderMirrorColor = clWhite
                  SortSettings.HeaderMirrorColorTo = clWhite
                  Version = '9.0.0.10'
                  ExplicitHeight = 214
                  ColWidths = (
                    64
                    64
                    64
                    64
                    64)
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
                    22)
                end
              end
              object Panel7: TPanel
                Left = 0
                Top = 0
                Width = 425
                Height = 248
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 1
                object pnCabVentas: TPanel
                  Left = 0
                  Top = 0
                  Width = 425
                  Height = 25
                  Align = alTop
                  Caption = 'Cabecera'
                  Color = clMenuHighlight
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 0
                end
                object sgCabeceraVentas: TAdvStringGrid
                  Left = 0
                  Top = 25
                  Width = 425
                  Height = 223
                  Align = alClient
                  DrawingStyle = gdsClassic
                  FixedColor = clWhite
                  FixedCols = 0
                  Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goFixedRowDefAlign]
                  TabOrder = 1
                  ActiveCellFont.Charset = DEFAULT_CHARSET
                  ActiveCellFont.Color = 4474440
                  ActiveCellFont.Height = -12
                  ActiveCellFont.Name = 'Segoe UI'
                  ActiveCellFont.Style = [fsBold]
                  ActiveCellColor = 11565130
                  ActiveCellColorTo = 11565130
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
                  FixedRowHeight = 22
                  FixedFont.Charset = DEFAULT_CHARSET
                  FixedFont.Color = clWindowText
                  FixedFont.Height = -11
                  FixedFont.Name = 'Segoe UI'
                  FixedFont.Style = [fsBold]
                  FloatFormat = '%.2f'
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
                  SearchFooter.ColorTo = clNone
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
                  SearchFooter.MatchCaseCaption = 'Match case'
                  SearchFooter.ResultFormat = '(%d of %d)'
                  SelectionColor = 13744549
                  SelectionTextColor = clWindowText
                  SortSettings.HeaderColor = clWhite
                  SortSettings.HeaderColorTo = clWhite
                  SortSettings.HeaderMirrorColor = clWhite
                  SortSettings.HeaderMirrorColorTo = clWhite
                  Version = '9.0.0.10'
                  ColWidths = (
                    64
                    64
                    64
                    64
                    64)
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
                    22)
                end
              end
            end
            object pnPieVenta: TPanel
              Left = 0
              Top = 479
              Width = 1135
              Height = 128
              Align = alBottom
              TabOrder = 2
              ExplicitTop = 492
              ExplicitWidth = 1190
              DesignSize = (
                1135
                128)
              object Label4: TLabel
                Left = 19
                Top = 17
                Width = 85
                Height = 13
                Caption = 'Archivo Cabecera'
              end
              object Label5: TLabel
                Left = 19
                Top = 44
                Width = 70
                Height = 13
                Caption = 'Archivo Lineas'
              end
              object Label6: TLabel
                Left = 20
                Top = 71
                Width = 76
                Height = 13
                Caption = 'Archivo Clientes'
              end
              object edCabecerasVta: TJvFilenameEdit
                Left = 136
                Top = 14
                Width = 388
                Height = 21
                TextHint = 'Archivo Cabecera CSV'
                AddQuotes = False
                Filter = '*.csv'
                TabOrder = 0
                Text = ''
              end
              object edDetalleVentas: TJvFilenameEdit
                Left = 136
                Top = 41
                Width = 388
                Height = 21
                TextHint = 'Archivo Detalle CSV'
                AddQuotes = False
                Filter = '*.csv'
                TabOrder = 1
                Text = ''
              end
              object edClientes: TJvFilenameEdit
                Left = 136
                Top = 68
                Width = 388
                Height = 21
                TextHint = 'Archivo Clientes CSV'
                AddQuotes = False
                Filter = '*.csv'
                TabOrder = 2
                Text = ''
              end
              object BitBtn1: TBitBtn
                Left = 987
                Top = 6
                Width = 105
                Height = 25
                Action = AltaClientes
                Anchors = [akRight, akBottom]
                Caption = 'Alta de Clientes'
                TabOrder = 3
                ExplicitLeft = 984
              end
            end
          end
          object TabSheet1: TTabSheet
            Caption = 'TabSheet1'
            ImageIndex = 1
          end
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 686
    Width = 1151
    Align = alBottom
    ButtonHeight = 28
    ExplicitLeft = -4
    ExplicitTop = 669
    ExplicitWidth = 1148
    inherited btConfirma: TBitBtn
      Height = 28
      Visible = False
      ExplicitHeight = 28
    end
    inherited btNuevo: TBitBtn
      Height = 28
      Visible = False
      ExplicitHeight = 28
    end
    inherited btCancelar: TBitBtn
      Height = 28
      Visible = False
      ExplicitHeight = 28
    end
    inherited btModificar: TBitBtn
      Width = 69
      Height = 28
      Visible = False
      ExplicitWidth = 69
      ExplicitHeight = 28
    end
    inherited Pr: TSpeedButton
      Left = 296
      Height = 28
      Visible = False
      ExplicitLeft = 296
      ExplicitHeight = 28
    end
    inherited btBuscar: TBitBtn
      Left = 311
      Height = 28
      ExplicitLeft = 311
      ExplicitHeight = 28
    end
    inherited Ne: TSpeedButton
      Left = 386
      Height = 28
      Visible = False
      ExplicitLeft = 386
      ExplicitHeight = 28
    end
    inherited btBorrar: TBitBtn
      Left = 401
      Height = 28
      Visible = False
      ExplicitLeft = 401
      ExplicitHeight = 28
    end
    inherited btSalir: TBitBtn
      Left = 476
      Height = 28
      ExplicitLeft = 476
      ExplicitHeight = 28
    end
    object ToolButton1: TToolButton
      Left = 551
      Top = 0
      Width = 348
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object pgProgreso: TTMSFNCProgressBar
      Left = 899
      Top = 0
      Width = 121
      Height = 28
      Hint = 'Progreso Estado de Redondedo'
      ParentDoubleBuffered = False
      DoubleBuffered = True
      TabOrder = 7
      Appearance.DefaultLevelFont.Charset = DEFAULT_CHARSET
      Appearance.DefaultLevelFont.Color = clWindowText
      Appearance.DefaultLevelFont.Height = -11
      Appearance.DefaultLevelFont.Name = 'Segoe UI'
      Appearance.DefaultLevelFont.Style = []
      Appearance.Font.Charset = DEFAULT_CHARSET
      Appearance.Font.Color = clWindowText
      Appearance.Font.Height = -11
      Appearance.Font.Name = 'Segoe UI'
      Appearance.Font.Style = []
      Layout.ShowValue = True
      Levels = <>
      Maximum = 100.000000000000000000
      Minimum = 0.000000000000000000
      Value = 0.000000000000000000
    end
  end
  inherited Panel1: TPanel
    Top = 663
    Width = 1151
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 16
    ExplicitTop = 575
    ExplicitWidth = 1148
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 1062
      ExplicitWidth = 1117
    end
  end
  inherited ActionList1: TActionList
    Left = 456
    Top = 120
    object AltaClientes: TAction
      Caption = 'Alta de Clientes'
      OnExecute = AltaClientesExecute
    end
    object AltaProveedores: TAction
      Caption = 'Alta Proveedores'
      OnExecute = AltaProveedoresExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 712
    Top = 112
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
    Left = 448
    Top = 208
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 376
  end
  object mtCabecera: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 633
    Top = 417
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 193
    Top = 416
  end
  object DSCabecera: TDataSource
    DataSet = mtCabecera
    Left = 707
    Top = 417
  end
  object mtLinea: TFDMemTable
    MasterSource = DSCabecera
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 633
    Top = 481
  end
  object DSLinea: TDataSource
    DataSet = mtLinea
    Left = 707
    Top = 481
  end
  object mtProveedor: TFDMemTable
    MasterSource = DSCabecera
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 633
    Top = 449
  end
  object DSProveedor: TDataSource
    DataSet = mtProveedor
    Left = 707
    Top = 369
  end
  object OpenDialog1: TOpenDialog
    Left = 560
    Top = 552
  end
  object SaveDialog1: TSaveDialog
    Left = 908
    Top = 496
  end
  object spIngresarCliente: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'INGRESAR_CLIENTE'
    Left = 942
    Top = 361
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 2
        Name = 'NOMBRE'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 35
      end
      item
        Position = 3
        Name = 'RAZON_SOCIAL'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 35
      end
      item
        Position = 4
        Name = 'DIRECCION'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 35
      end
      item
        Position = 5
        Name = 'TIPO_IVA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'CUIT'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 7
        Name = 'C_POSTAL'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 8
        Name = 'LOCALIDAD'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 9
        Name = 'TELEFONO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 10
        Name = 'VENDEDOR'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 11
        Name = 'ZONA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 12
        Name = 'OBSERVACIONES'
        DataType = ftMemo
        ParamType = ptInput
      end
      item
        Position = 13
        Name = 'MAIL'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 14
        Name = 'CUENTA_OP'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 15
        Name = 'TIPODOC'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Position = 16
        Name = 'NRODOCUMENTO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 17
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 18
        Name = 'CELULAR'
        DataType = ftString
        ParamType = ptInput
        Size = 11
      end
      item
        Position = 19
        Name = 'ID_POSTAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 20
        Name = 'ID_ADMINISTRACION'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 21
        Name = 'LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 22
        Name = 'CODIGO_ALTA'
        DataType = ftString
        ParamType = ptOutput
        Size = 6
      end>
  end
  object spIngresarProveedor: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'INGRESAR_PROVEEDOR'
    Left = 776
    Top = 568
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 2
        Name = 'NOMBRE'
        DataType = ftString
        ParamType = ptInput
        Size = 35
      end
      item
        Position = 3
        Name = 'RAZONSOCIAL'
        DataType = ftString
        ParamType = ptInput
        Size = 35
      end
      item
        Position = 4
        Name = 'DIRECCION'
        DataType = ftString
        ParamType = ptInput
        Size = 35
      end
      item
        Position = 5
        Name = 'CUIT'
        DataType = ftString
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 6
        Name = 'TELEFONO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 7
        Name = 'CPOSTAL'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 8
        Name = 'CON_IVA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'OBSERVACIONES'
        DataType = ftMemo
        ParamType = ptInput
      end
      item
        Position = 10
        Name = 'MAIL'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 11
        Name = 'CODIGO_OUT'
        DataType = ftString
        ParamType = ptOutput
        Size = 6
      end>
  end
end
