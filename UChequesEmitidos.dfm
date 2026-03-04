object FormChequesEmitidos: TFormChequesEmitidos
  Left = 279
  Top = 121
  Caption = 'Cheques Emitidos'
  ClientHeight = 823
  ClientWidth = 1397
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  Position = poMainFormCenter
  PrintScale = poPrintToFit
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pcEmisiones: TPageControl
    Left = 0
    Top = 0
    Width = 1397
    Height = 802
    ActivePage = pgMovimientos
    Align = alClient
    HotTrack = True
    MultiLine = True
    Style = tsButtons
    TabOrder = 0
    OnChange = pcEmisionesChange
    object pgMovimientos: TTabSheet
      Caption = 'Movimientos'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 1117
        Top = 0
        Width = 272
        Height = 771
        Align = alClient
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 0
        object Label12: TLabel
          Left = 17
          Top = 27
          Width = 82
          Height = 16
          Caption = 'Cta. Bancaria'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 17
          Top = 319
          Width = 61
          Height = 13
          Caption = 'Che.Emitidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          Visible = False
        end
        object Label5: TLabel
          Left = 17
          Top = 335
          Width = 71
          Height = 13
          Caption = 'Che.en Cartera'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          Visible = False
        end
        object Label6: TLabel
          Left = 17
          Top = 367
          Width = 125
          Height = 13
          Caption = 'Transferencias Realizadas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          Visible = False
        end
        object Label7: TLabel
          Left = 17
          Top = 383
          Width = 120
          Height = 13
          Caption = 'Transferencias Recibidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          Visible = False
          OnDblClick = Label7DblClick
        end
        object Label8: TLabel
          Left = 17
          Top = 351
          Width = 47
          Height = 13
          Caption = 'Dep'#243'sitos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          Visible = False
        end
        object Label14: TLabel
          Left = 17
          Top = 398
          Width = 63
          Height = 13
          Caption = 'Vencimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          Visible = False
          OnDblClick = Label7DblClick
        end
        object Label15: TLabel
          Left = 17
          Top = 413
          Width = 106
          Height = 13
          Caption = 'T.de Creditos a Cobrar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          Visible = False
          OnDblClick = Label7DblClick
        end
        object edAnio: TEdit
          Left = 18
          Top = 71
          Width = 41
          Height = 21
          TabOrder = 0
          Text = '1900'
          OnChange = lbMesesClick
        end
        object udAnio: TUpDown
          Left = 59
          Top = 71
          Width = 16
          Height = 21
          Associate = edAnio
          Min = 1900
          Max = 9000
          Position = 1900
          TabOrder = 1
          Thousands = False
        end
        object lbMeses: TListBox
          Left = 17
          Top = 97
          Width = 136
          Height = 201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
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
            'Noviembre'
            'Diciembre')
          ParentFont = False
          TabOrder = 2
          OnClick = lbMesesClick
        end
        object btImprimir: TBitBtn
          Left = 17
          Top = 432
          Width = 102
          Height = 25
          Caption = 'Imprimir'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
            8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
            8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
            8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
          TabOrder = 3
          OnClick = btImprimirClick
        end
        object rxcCuentas: TJvDBLookupCombo
          Left = 17
          Top = 45
          Width = 168
          Height = 20
          DropDownCount = 15
          DropDownWidth = 250
          DisplayAllFields = True
          DisplayEmpty = 'Todas las Cuentas'
          EmptyValue = '-1'
          LookupField = 'ID_CUENTA'
          LookupDisplay = 'NOMBRE'
          LookupSource = DSCtasBancarias
          TabOrder = 4
          OnChange = rxcCuentasChange
          OnClick = rxcCuentasClick
        end
        object Button1: TButton
          Left = 17
          Top = 463
          Width = 102
          Height = 24
          Action = Exportar1
          TabOrder = 5
        end
      end
      object AdvScrollBox1: TAdvScrollBox
        Left = 0
        Top = 0
        Width = 1117
        Height = 771
        Align = alLeft
        DoubleBuffered = True
        Ctl3D = False
        Padding.Left = 3
        Padding.Top = 3
        Padding.Right = 3
        Padding.Bottom = 3
        ParentCtl3D = False
        ParentDoubleBuffered = False
        TabOrder = 1
        object sgMes: TAdvStringGrid
          Left = 3
          Top = 3
          Width = 1109
          Height = 763
          ParentCustomHint = False
          Align = alClient
          ColCount = 9
          Ctl3D = True
          DefaultColWidth = 120
          DefaultRowHeight = 122
          DefaultDrawing = True
          DrawingStyle = gdsClassic
          RowCount = 7
          ParentCtl3D = False
          PopupMenu = PopupMenu1
          ScrollBars = ssHorizontal
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
          BackGround.Color = clNone
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
          FixedColWidth = 120
          FixedRowHeight = 26
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clBlack
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = [fsBold]
          FloatFormat = '%.2f'
          HoverButtons.Buttons = <>
          HTMLSettings.ConvertSpecialChars = True
          HTMLSettings.ImageFolder = 'images'
          HTMLSettings.ImageBaseName = 'img'
          HTMLSettings.NonBreakingText = True
          Look = glOffice2007
          Multilinecells = True
          PrintSettings.FooterSize = 20
          PrintSettings.HeaderSize = 50
          PrintSettings.Date = ppTopRight
          PrintSettings.DateFormat = 'dd/mm/yyyy'
          PrintSettings.Title = ppTopLeft
          PrintSettings.TitleLines.Strings = (
            '')
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
          PrintSettings.HeaderFont.Height = -13
          PrintSettings.HeaderFont.Name = 'Tahoma'
          PrintSettings.HeaderFont.Style = [fsBold]
          PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
          PrintSettings.FooterFont.Color = clWindowText
          PrintSettings.FooterFont.Height = -11
          PrintSettings.FooterFont.Name = 'Tahoma'
          PrintSettings.FooterFont.Style = []
          PrintSettings.LeftSize = 50
          PrintSettings.RightSize = 50
          PrintSettings.Orientation = poLandscape
          PrintSettings.FitToPage = fpGrow
          PrintSettings.PageNumSep = '/'
          PrintSettings.NoAutoSize = True
          PrintSettings.NoAutoSizeRow = True
          PrintSettings.UseDisplayFont = False
          ScrollProportional = True
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
          ShowSelection = False
          UIStyle = tsOffice2007Luna
          Version = '9.1.6.1'
          ColWidths = (
            120
            120
            120
            120
            120
            120
            120
            120
            120)
          RowHeights = (
            26
            122
            122
            122
            122
            122
            122)
        end
      end
    end
    object pgDetalles: TTabSheet
      Caption = 'Detalles'
      object Label1: TLabel
        Left = 8
        Top = 0
        Width = 112
        Height = 16
        Caption = 'Cheques Emitidos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        OnDblClick = Label1DblClick
      end
      object Label2: TLabel
        Left = 217
        Top = 0
        Width = 120
        Height = 16
        Caption = 'Cheques en Cartera'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 441
        Top = 0
        Width = 60
        Height = 16
        Caption = 'Depositos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clFuchsia
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 7
        Top = 256
        Width = 148
        Height = 16
        Caption = 'Transferencias Emitidos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 441
        Top = 257
        Width = 116
        Height = 16
        Caption = 'Tarjetas de Credito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object dbgChe3: TDBGrid
        Left = 218
        Top = 23
        Width = 190
        Height = 200
        DataSource = DSChe3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = dbgChe3DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'FECHA_COBRO'
            Title.Alignment = taCenter
            Title.Caption = 'Cobro el'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUM'
            Title.Alignment = taCenter
            Title.Caption = 'Importe'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 85
            Visible = True
          end>
      end
      object dbgDepositados: TDBGrid
        Left = 441
        Top = 23
        Width = 190
        Height = 200
        DataSource = DSDepositos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = dbgDepositadosDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Dep. el'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUM'
            Title.Alignment = taCenter
            Title.Caption = 'Importe'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 85
            Visible = True
          end>
      end
      object dbgCheques: TDBGrid
        Left = 9
        Top = 23
        Width = 190
        Height = 200
        DataSource = DSCheques
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = dbgChequesDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'FECHA_COBRO'
            Title.Alignment = taCenter
            Title.Caption = 'Cobro el'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUM'
            Title.Alignment = taCenter
            Title.Caption = 'Importe'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 85
            Visible = True
          end>
      end
      object dbgTransEmit: TDBGrid
        Left = 9
        Top = 279
        Width = 190
        Height = 200
        DataSource = DSTransferEmitidas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUM'
            Title.Alignment = taCenter
            Title.Caption = 'Importe'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 85
            Visible = True
          end>
      end
      object BitBtn1: TBitBtn
        Left = 72
        Top = 227
        Width = 127
        Height = 25
        Action = ListaCheEmitidos
        Caption = 'Lista Che.Emitidos'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
        TabOrder = 4
      end
      object DBGrid1: TDBGrid
        Left = 441
        Top = 279
        Width = 190
        Height = 200
        DataSource = DSMocTc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'FECHAACREDITACION_PROBABLE'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUM'
            Title.Alignment = taCenter
            Title.Caption = 'Importe'
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
    object pgEstadoSaldos: TTabSheet
      Caption = 'Estado de Saldos'
      ImageIndex = 2
      object dbgMovBco: TDBGrid
        Left = 16
        Top = 16
        Width = 681
        Height = 433
        DataSource = DSMovimientosBco
        DrawingStyle = gdsClassic
        FixedColor = clHighlight
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'FECHA_COBRO'
            Title.Alignment = taCenter
            Title.Caption = 'F.Cobro'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECHA_INGR'
            Title.Alignment = taCenter
            Title.Caption = 'F.Ingreso'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DETALLE'
            Title.Alignment = taCenter
            Title.Caption = 'Detalle'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 194
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEBE'
            Title.Alignment = taCenter
            Title.Caption = 'Debe'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HABER'
            Title.Alignment = taCenter
            Title.Caption = 'Haber'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SALDO'
            Title.Alignment = taCenter
            Title.Caption = 'Saldo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 97
            Visible = True
          end>
      end
    end
    object pgDebitados: TTabSheet
      Caption = 'Che.Debitados'
      ImageIndex = 3
      object Label9: TLabel
        Left = 811
        Top = 12
        Width = 48
        Height = 13
        Caption = 'Debitados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 811
        Top = 27
        Width = 52
        Height = 13
        Caption = 'Sin Debitar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 811
        Top = 54
        Width = 61
        Height = 13
        Caption = 'Total Emitido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnDblClick = Label13DblClick
      end
      object BitBtn2: TBitBtn
        Left = 776
        Top = 432
        Width = 75
        Height = 25
        Caption = 'Imprimir'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object sgDebitados: TAdvStringGrid
        Left = 3
        Top = 27
        Width = 744
        Height = 557
        BorderStyle = bsNone
        ColCount = 8
        DefaultColWidth = 90
        DefaultRowHeight = 90
        DrawingStyle = gdsClassic
        Enabled = False
        FixedColor = clWhite
        FixedCols = 0
        RowCount = 6
        FixedRows = 0
        ScrollBars = ssNone
        TabOrder = 0
        OnDrawCell = sgDebitadosDrawCell
        OnGetEditText = sgDebitadosGetEditText
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
        ControlLook.FixedGradientMirrorFrom = clWhite
        ControlLook.FixedGradientMirrorTo = clWhite
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
        FixedColWidth = 90
        FixedRowHeight = 90
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
        SearchFooter.ColorTo = clWhite
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
        Version = '9.1.6.1'
        ColWidths = (
          90
          90
          90
          90
          90
          90
          90
          90)
        RowHeights = (
          90
          90
          90
          90
          90
          90)
      end
    end
    object pagDetalle: TTabSheet
      Caption = 'Detalle Nuevo'
      ImageIndex = 4
      TabVisible = False
      object sgCuadro: TAdvStringGrid
        Left = 3
        Top = 0
        Width = 902
        Height = 590
        ColCount = 8
        DefaultColWidth = 110
        DefaultRowHeight = 110
        DrawingStyle = gdsClassic
        FixedColor = clBtnShadow
        FixedCols = 0
        RowCount = 6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
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
        FixedColWidth = 110
        FixedRowHeight = 110
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        HoverButtons.Buttons = <>
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
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
        SelectionTextColor = clWindowText
        Version = '9.1.6.1'
        ColWidths = (
          110
          110
          110
          110
          110
          110
          110
          110)
        RowHeights = (
          110
          110
          110
          110
          110
          110)
      end
      object btNuevoDetalle: TButton
        Left = 944
        Top = 344
        Width = 75
        Height = 25
        Caption = 'btNuevoDetalle'
        TabOrder = 1
        OnClick = btNuevoDetalleClick
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Grafico'
      ImageIndex = 5
      object DBChart1: TDBChart
        Left = 0
        Top = 0
        Width = 1389
        Height = 771
        MarginBottom = 2
        MarginLeft = 0
        MarginRight = 1
        MarginTop = 2
        Title.Text.Strings = (
          'Estado Emision')
        OnClickSeries = DBChart1ClickSeries
        BottomAxis.LabelsOnAxis = False
        BottomAxis.Title.Caption = 'Dias'
        DepthAxis.LabelsFormat.BevelWidth = 1
        DepthAxis.LabelsFormat.Transparency = 50
        LeftAxis.Title.Caption = 'Monto'
        Legend.DividingLines.Visible = True
        Legend.GlobalTransparency = 2
        Legend.TextStyle = ltsRightValue
        Legend.VertSpacing = 2
        Pages.AutoScale = True
        Pages.MaxPointsPerPage = 13
        View3D = False
        View3DOptions.Zoom = 102
        Zoom.FullRepaint = True
        Zoom.UpLeftZooms = True
        Align = alClient
        TabOrder = 0
        OnMouseMove = DBChart1MouseMove
        DesignSize = (
          1389
          771)
        DefaultCanvas = 'TGDIPlusCanvas'
        PrintMargins = (
          15
          25
          15
          25)
        ColorPaletteIndex = 13
        object Label16: TLabel
          Left = 872
          Top = 753
          Width = 38
          Height = 13
          Anchors = [akLeft, akRight, akBottom]
          Caption = 'Label16'
        end
        object lbPosicion: TLabel
          Left = 16
          Top = 754
          Width = 38
          Height = 13
          Anchors = [akLeft, akRight, akBottom]
          Caption = 'Label16'
        end
        object Button2: TButton
          Left = 1289
          Top = 735
          Width = 38
          Height = 22
          Anchors = [akRight, akBottom]
          Caption = '<<'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button3: TButton
          Left = 1333
          Top = 735
          Width = 38
          Height = 22
          Anchors = [akRight, akBottom]
          Caption = '>>'
          TabOrder = 1
          OnClick = Button3Click
        end
        object CheckBox1: TCheckBox
          Left = 1180
          Top = 738
          Width = 97
          Height = 19
          Anchors = [akRight, akBottom]
          Caption = 'Ver Referencias'
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = CheckBox1Click
        end
        object pnCheEmitidos: TJvPanel
          Left = 587
          Top = 56
          Width = 510
          Height = 425
          Movable = True
          Sizeable = True
          MultiLine = True
          FlatBorder = True
          Color = clSkyBlue
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 30
          ParentBackground = False
          TabOrder = 3
          Visible = False
          OnResize = pnCheEmitidosResize
          DesignSize = (
            510
            425)
          object Button4: TButton
            Left = 97
            Top = 397
            Width = 377
            Height = 25
            Anchors = [akRight, akBottom]
            Caption = 'Cerrar'
            TabOrder = 0
            OnClick = Button4Click
            ExplicitLeft = 41
            ExplicitTop = 317
          end
          object TMSFNCDataGrid1: TTMSFNCDataGrid
            Left = 6
            Top = 6
            Width = 498
            Height = 385
            Align = alTop
            ParentDoubleBuffered = False
            Anchors = [akLeft, akTop, akRight, akBottom]
            DoubleBuffered = True
            TabOrder = 1
            ShowAcceleratorChar = False
            Footer.Bar.Buttons = <>
            Header.VisualGrouping.Layout.Font.Charset = DEFAULT_CHARSET
            Header.VisualGrouping.Layout.Font.Color = clWindowText
            Header.VisualGrouping.Layout.Font.Height = -12
            Header.VisualGrouping.Layout.Font.Name = 'Segoe UI'
            Header.VisualGrouping.Layout.Font.Style = []
            Header.Bar.Buttons = <>
            Adapter = TMSFNCDataGridDatabaseAdapter1
            CellAppearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
            CellAppearance.FilterMatchLayout.Font.Color = clWindowText
            CellAppearance.FilterMatchLayout.Font.Height = -12
            CellAppearance.FilterMatchLayout.Font.Name = 'Segoe UI'
            CellAppearance.FilterMatchLayout.Font.Style = []
            CellAppearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
            CellAppearance.FilterInverseMatchLayout.Font.Color = clWindowText
            CellAppearance.FilterInverseMatchLayout.Font.Height = -12
            CellAppearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
            CellAppearance.FilterInverseMatchLayout.Font.Style = []
            CellAppearance.BandLayout.Font.Charset = DEFAULT_CHARSET
            CellAppearance.BandLayout.Font.Color = clWindowText
            CellAppearance.BandLayout.Font.Height = -12
            CellAppearance.BandLayout.Font.Name = 'Segoe UI'
            CellAppearance.BandLayout.Font.Style = []
            CellAppearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
            CellAppearance.FixedLayout.Font.Color = clWindowText
            CellAppearance.FixedLayout.Font.Height = -12
            CellAppearance.FixedLayout.Font.Name = 'Segoe UI'
            CellAppearance.FixedLayout.Font.Style = []
            CellAppearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
            CellAppearance.FixedSelectedLayout.Font.Color = clWindowText
            CellAppearance.FixedSelectedLayout.Font.Height = -12
            CellAppearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
            CellAppearance.FixedSelectedLayout.Font.Style = []
            CellAppearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
            CellAppearance.FocusedLayout.Font.Color = clWindowText
            CellAppearance.FocusedLayout.Font.Height = -12
            CellAppearance.FocusedLayout.Font.Name = 'Segoe UI'
            CellAppearance.FocusedLayout.Font.Style = []
            CellAppearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
            CellAppearance.GroupLayout.Font.Color = clWindowText
            CellAppearance.GroupLayout.Font.Height = -12
            CellAppearance.GroupLayout.Font.Name = 'Segoe UI'
            CellAppearance.GroupLayout.Font.Style = []
            CellAppearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
            CellAppearance.NormalLayout.Font.Color = clWindowText
            CellAppearance.NormalLayout.Font.Height = -12
            CellAppearance.NormalLayout.Font.Name = 'Segoe UI'
            CellAppearance.NormalLayout.Font.Style = []
            CellAppearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
            CellAppearance.SelectedLayout.Font.Color = clWindowText
            CellAppearance.SelectedLayout.Font.Height = -12
            CellAppearance.SelectedLayout.Font.Name = 'Segoe UI'
            CellAppearance.SelectedLayout.Font.Style = []
            CellAppearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
            CellAppearance.SummaryLayout.Font.Color = clWindowText
            CellAppearance.SummaryLayout.Font.Height = -12
            CellAppearance.SummaryLayout.Font.Name = 'Segoe UI'
            CellAppearance.SummaryLayout.Font.Style = []
            Columns = <
              item
                Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.FilterMatchLayout.Font.Color = clWindowText
                Appearance.FilterMatchLayout.Font.Height = -12
                Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
                Appearance.FilterMatchLayout.Font.Style = []
                Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
                Appearance.FilterInverseMatchLayout.Font.Height = -12
                Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
                Appearance.FilterInverseMatchLayout.Font.Style = []
                Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.BandLayout.Font.Color = clWindowText
                Appearance.BandLayout.Font.Height = -12
                Appearance.BandLayout.Font.Name = 'Segoe UI'
                Appearance.BandLayout.Font.Style = []
                Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.FixedLayout.Font.Color = clBlue
                Appearance.FixedLayout.Font.Height = -12
                Appearance.FixedLayout.Font.Name = 'Segoe UI'
                Appearance.FixedLayout.Font.Style = [fsBold]
                Appearance.FixedLayout.TextAlign = gtaCenter
                Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.FixedSelectedLayout.Font.Color = clWindowText
                Appearance.FixedSelectedLayout.Font.Height = -12
                Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
                Appearance.FixedSelectedLayout.Font.Style = []
                Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.FocusedLayout.Font.Color = clWindowText
                Appearance.FocusedLayout.Font.Height = -12
                Appearance.FocusedLayout.Font.Name = 'Segoe UI'
                Appearance.FocusedLayout.Font.Style = []
                Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.GroupLayout.Font.Color = clWindowText
                Appearance.GroupLayout.Font.Height = -12
                Appearance.GroupLayout.Font.Name = 'Segoe UI'
                Appearance.GroupLayout.Font.Style = []
                Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.NormalLayout.Font.Color = clWindowText
                Appearance.NormalLayout.Font.Height = -12
                Appearance.NormalLayout.Font.Name = 'Segoe UI'
                Appearance.NormalLayout.Font.Style = []
                Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.SelectedLayout.Font.Color = clWindowText
                Appearance.SelectedLayout.Font.Height = -12
                Appearance.SelectedLayout.Font.Name = 'Segoe UI'
                Appearance.SelectedLayout.Font.Style = []
                Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.SummaryLayout.Font.Color = clWindowText
                Appearance.SummaryLayout.Font.Height = -12
                Appearance.SummaryLayout.Font.Name = 'Segoe UI'
                Appearance.SummaryLayout.Font.Style = []
                Header = 'Orden de'
                Settings = [gcsAppearance]
                Width = 184.000000000000000000
              end
              item
                Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.FilterMatchLayout.Font.Color = clWindowText
                Appearance.FilterMatchLayout.Font.Height = -12
                Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
                Appearance.FilterMatchLayout.Font.Style = []
                Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
                Appearance.FilterInverseMatchLayout.Font.Height = -12
                Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
                Appearance.FilterInverseMatchLayout.Font.Style = []
                Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.BandLayout.Font.Color = clWindowText
                Appearance.BandLayout.Font.Height = -12
                Appearance.BandLayout.Font.Name = 'Segoe UI'
                Appearance.BandLayout.Font.Style = []
                Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.FixedLayout.Font.Color = clBlue
                Appearance.FixedLayout.Font.Height = -12
                Appearance.FixedLayout.Font.Name = 'Segoe UI'
                Appearance.FixedLayout.Font.Style = [fsBold]
                Appearance.FixedLayout.TextAlign = gtaCenter
                Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.FixedSelectedLayout.Font.Color = clWindowText
                Appearance.FixedSelectedLayout.Font.Height = -12
                Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
                Appearance.FixedSelectedLayout.Font.Style = []
                Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.FocusedLayout.Font.Color = clWindowText
                Appearance.FocusedLayout.Font.Height = -12
                Appearance.FocusedLayout.Font.Name = 'Segoe UI'
                Appearance.FocusedLayout.Font.Style = []
                Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.GroupLayout.Font.Color = clWindowText
                Appearance.GroupLayout.Font.Height = -12
                Appearance.GroupLayout.Font.Name = 'Segoe UI'
                Appearance.GroupLayout.Font.Style = []
                Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.NormalLayout.Font.Color = clWindowText
                Appearance.NormalLayout.Font.Height = -12
                Appearance.NormalLayout.Font.Name = 'Segoe UI'
                Appearance.NormalLayout.Font.Style = []
                Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.SelectedLayout.Font.Color = clWindowText
                Appearance.SelectedLayout.Font.Height = -12
                Appearance.SelectedLayout.Font.Name = 'Segoe UI'
                Appearance.SelectedLayout.Font.Style = []
                Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.SummaryLayout.Font.Color = clWindowText
                Appearance.SummaryLayout.Font.Height = -12
                Appearance.SummaryLayout.Font.Name = 'Segoe UI'
                Appearance.SummaryLayout.Font.Style = []
                Header = 'Bco'
                Settings = [gcsAppearance]
                Width = 124.000000000000000000
              end
              item
                Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.FilterMatchLayout.Font.Color = clWindowText
                Appearance.FilterMatchLayout.Font.Height = -12
                Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
                Appearance.FilterMatchLayout.Font.Style = []
                Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
                Appearance.FilterInverseMatchLayout.Font.Height = -12
                Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
                Appearance.FilterInverseMatchLayout.Font.Style = []
                Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.BandLayout.Font.Color = clWindowText
                Appearance.BandLayout.Font.Height = -12
                Appearance.BandLayout.Font.Name = 'Segoe UI'
                Appearance.BandLayout.Font.Style = []
                Appearance.BandLayout.TextAlign = gtaTrailing
                Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.FixedLayout.Font.Color = clBlue
                Appearance.FixedLayout.Font.Height = -12
                Appearance.FixedLayout.Font.Name = 'Segoe UI'
                Appearance.FixedLayout.Font.Style = [fsBold]
                Appearance.FixedLayout.TextAlign = gtaCenter
                Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.FixedSelectedLayout.Font.Color = clWindowText
                Appearance.FixedSelectedLayout.Font.Height = -12
                Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
                Appearance.FixedSelectedLayout.Font.Style = []
                Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.FocusedLayout.Font.Color = clWindowText
                Appearance.FocusedLayout.Font.Height = -12
                Appearance.FocusedLayout.Font.Name = 'Segoe UI'
                Appearance.FocusedLayout.Font.Style = []
                Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.GroupLayout.Font.Color = clWindowText
                Appearance.GroupLayout.Font.Height = -12
                Appearance.GroupLayout.Font.Name = 'Segoe UI'
                Appearance.GroupLayout.Font.Style = []
                Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.NormalLayout.Font.Color = clWindowText
                Appearance.NormalLayout.Font.Height = -12
                Appearance.NormalLayout.Font.Name = 'Segoe UI'
                Appearance.NormalLayout.Font.Style = []
                Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.SelectedLayout.Font.Color = clWindowText
                Appearance.SelectedLayout.Font.Height = -12
                Appearance.SelectedLayout.Font.Name = 'Segoe UI'
                Appearance.SelectedLayout.Font.Style = []
                Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.SummaryLayout.Font.Color = clWindowText
                Appearance.SummaryLayout.Font.Height = -12
                Appearance.SummaryLayout.Font.Name = 'Segoe UI'
                Appearance.SummaryLayout.Font.Style = []
                Header = 'Numero'
                Settings = [gcsAppearance]
                Width = 80.000000000000000000
              end
              item
                Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.FilterMatchLayout.Font.Color = clWindowText
                Appearance.FilterMatchLayout.Font.Height = -12
                Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
                Appearance.FilterMatchLayout.Font.Style = []
                Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
                Appearance.FilterInverseMatchLayout.Font.Height = -12
                Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
                Appearance.FilterInverseMatchLayout.Font.Style = []
                Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.BandLayout.Font.Color = clWindowText
                Appearance.BandLayout.Font.Height = -12
                Appearance.BandLayout.Font.Name = 'Segoe UI'
                Appearance.BandLayout.Font.Style = []
                Appearance.BandLayout.TextAlign = gtaTrailing
                Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.FixedLayout.Font.Color = clBlue
                Appearance.FixedLayout.Font.Height = -12
                Appearance.FixedLayout.Font.Name = 'Segoe UI'
                Appearance.FixedLayout.Font.Style = [fsBold]
                Appearance.FixedLayout.TextAlign = gtaCenter
                Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.FixedSelectedLayout.Font.Color = clWindowText
                Appearance.FixedSelectedLayout.Font.Height = -12
                Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
                Appearance.FixedSelectedLayout.Font.Style = []
                Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.FocusedLayout.Font.Color = clWindowText
                Appearance.FocusedLayout.Font.Height = -12
                Appearance.FocusedLayout.Font.Name = 'Segoe UI'
                Appearance.FocusedLayout.Font.Style = []
                Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.GroupLayout.Font.Color = clWindowText
                Appearance.GroupLayout.Font.Height = -12
                Appearance.GroupLayout.Font.Name = 'Segoe UI'
                Appearance.GroupLayout.Font.Style = []
                Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.NormalLayout.Font.Color = clWindowText
                Appearance.NormalLayout.Font.Height = -12
                Appearance.NormalLayout.Font.Name = 'Segoe UI'
                Appearance.NormalLayout.Font.Style = []
                Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.SelectedLayout.Font.Color = clWindowText
                Appearance.SelectedLayout.Font.Height = -12
                Appearance.SelectedLayout.Font.Name = 'Segoe UI'
                Appearance.SelectedLayout.Font.Style = []
                Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
                Appearance.SummaryLayout.Font.Color = clWindowText
                Appearance.SummaryLayout.Font.Height = -12
                Appearance.SummaryLayout.Font.Name = 'Segoe UI'
                Appearance.SummaryLayout.Font.Style = []
                Header = 'Importe'
                Settings = [gcsAppearance]
                Width = 90.000000000000000000
              end>
            DefaultRowHeight = 21.000000000000000000
            Designer = False
            FilterActions = <>
            FilterAppearance.Font.Charset = DEFAULT_CHARSET
            FilterAppearance.Font.Color = clWindowText
            FilterAppearance.Font.Height = -12
            FilterAppearance.Font.Name = 'Segoe UI'
            FilterAppearance.Font.Style = []
            Icons.ExpandIcon.Data = {
              1054544D53464E435356474269746D6170080200003C73766720786D6C6E733D
              22687474703A2F2F7777772E77332E6F72672F323030302F7376672220776964
              74683D22333222206865696768743D223332222076696577426F783D22302030
              203332200D0A3332223E3C646566733E3C7374796C653E2E636C732D317B6669
              6C6C3A2330303030303B7D3C2F7374796C653E3C2F646566733E3C7469746C65
              3E506C75733C2F7469746C653E203C67200D0A69643D2249636F6E223E3C7265
              637420636C6173733D22636C732D312220783D22372220793D22313522207769
              6474683D22313822206865696768743D2231222F3E3C72656374200D0A636C61
              73733D22636C732D312220783D2231352220793D2237222077696474683D2231
              22206865696768743D223138222F3E3C7265637420636C6173733D22636C732D
              312220783D223122200D0A793D2231222077696474683D223122206865696768
              743D223330222F3E3C7265637420636C6173733D22636C732D312220783D2231
              2220793D2231222077696474683D22333022200D0A6865696768743D2231222F
              3E3C7265637420636C6173733D22636C732D312220783D2233302220793D2231
              222077696474683D223122206865696768743D223330222F3E3C72656374200D
              0A636C6173733D22636C732D312220783D22312220793D223330222077696474
              683D22333022206865696768743D2231222F3E3C2F673E3C2F7376673E}
            Icons.CollapseIcon.Data = {
              1054544D53464E435356474269746D6170CE0100003C73766720786D6C6E733D
              22687474703A2F2F7777772E77332E6F72672F323030302F7376672220776964
              74683D22333222206865696768743D223332222076696577426F783D22302030
              203332200D0A3332223E3C646566733E3C7374796C653E2E636C732D317B6669
              6C6C3A2330303030303B7D3C2F7374796C653E3C2F646566733E3C7469746C65
              3E506C75733C2F7469746C653E203C67200D0A69643D2249636F6E223E3C7265
              637420636C6173733D22636C732D312220783D22372220793D22313522207769
              6474683D22313822206865696768743D2231222F3E3C7265637420636C617373
              3D22636C732D312220783D223122200D0A793D2231222077696474683D223122
              206865696768743D223330222F3E3C7265637420636C6173733D22636C732D31
              2220783D22312220793D2231222077696474683D22333022200D0A6865696768
              743D2231222F3E3C7265637420636C6173733D22636C732D312220783D223330
              2220793D2231222077696474683D223122206865696768743D223330222F3E3C
              72656374200D0A636C6173733D22636C732D312220783D22312220793D223330
              222077696474683D22333022206865696768743D2231222F3E3C2F673E3C2F73
              76673E}
            Icons.FilterIcon.Data = {
              1054544D53464E435356474269746D6170E30200003C73766720786D6C6E733D
              22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
              6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
              2F786C696E6B222077696474683D22333222206865696768743D223332222076
              696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
              2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2366
              61666166613B7D2E636C732D337B66696C6C3A75726C28234E65775F50617474
              65726E5F5377617463685F32293B7D2E636C732D347B66696C6C3A2333613361
              33383B7D3C2F7374796C653E3C7061747465726E2069643D224E65775F506174
              7465726E5F5377617463685F322220646174612D6E616D653D224E6577205061
              747465726E205377617463682032222077696474683D22363822206865696768
              743D22363822207061747465726E556E6974733D227573657253706163654F6E
              557365222076696577426F783D22302030203638203638223E3C726563742063
              6C6173733D22636C732D31222077696474683D22363822206865696768743D22
              3638222F3E3C7265637420636C6173733D22636C732D32222077696474683D22
              363822206865696768743D223638222F3E3C2F7061747465726E3E3C2F646566
              733E3C7469746C653E46696C7465723C2F7469746C653E3C672069643D224963
              6F6E223E3C706F6C79676F6E20636C6173733D22636C732D332220706F696E74
              733D22312E3520362031322E352031352031322E352033302E352031382E3520
              33302E352031382E352031352032392E3520362032392E3520312E3520312E35
              20312E3520312E352036222F3E3C7061746820636C6173733D22636C732D3422
              20643D224D31392C33314831325631352E32346C2D31312D3956314833305636
              2E32346C2D31312C395A6D2D362D3168355631342E37366C31312D3956324832
              56352E37366C31312C395A222F3E3C2F673E3C2F7376673E}
            Icons.FilterActiveIcon.Data = {
              1054544D53464E435356474269746D6170E30200003C73766720786D6C6E733D
              22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
              6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
              2F786C696E6B222077696474683D22333222206865696768743D223332222076
              696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
              2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2334
              36383242343B7D2E636C732D337B66696C6C3A75726C28234E65775F50617474
              65726E5F5377617463685F32293B7D2E636C732D347B66696C6C3A2333613361
              33383B7D3C2F7374796C653E3C7061747465726E2069643D224E65775F506174
              7465726E5F5377617463685F322220646174612D6E616D653D224E6577205061
              747465726E205377617463682032222077696474683D22363822206865696768
              743D22363822207061747465726E556E6974733D227573657253706163654F6E
              557365222076696577426F783D22302030203638203638223E3C726563742063
              6C6173733D22636C732D31222077696474683D22363822206865696768743D22
              3638222F3E3C7265637420636C6173733D22636C732D32222077696474683D22
              363822206865696768743D223638222F3E3C2F7061747465726E3E3C2F646566
              733E3C7469746C653E46696C7465723C2F7469746C653E3C672069643D224963
              6F6E223E3C706F6C79676F6E20636C6173733D22636C732D332220706F696E74
              733D22312E3520362031322E352031352031322E352033302E352031382E3520
              33302E352031382E352031352032392E3520362032392E3520312E3520312E35
              20312E3520312E352036222F3E3C7061746820636C6173733D22636C732D3422
              20643D224D31392C33314831325631352E32346C2D31312D3956314833305636
              2E32346C2D31312C395A6D2D362D3168355631342E37366C31312D3956324832
              56352E37366C31312C395A222F3E3C2F673E3C2F7376673E}
            Icons.FilterClearIcon.Data = {
              1054544D53464E435356474269746D61709D0400003C73766720786D6C6E733D
              22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
              6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
              2F786C696E6B222077696474683D22333222206865696768743D223332222076
              696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
              2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2361
              37346162303B7D2E636C732D337B66696C6C3A236433393464363B7D2E636C73
              2D347B66696C6C3A236661666166613B7D2E636C732D357B66696C6C3A75726C
              28234E65775F5061747465726E5F5377617463685F38293B7D2E636C732D367B
              66696C6C3A75726C28234E65775F5061747465726E5F5377617463685F37293B
              7D3C2F7374796C653E3C7061747465726E2069643D224E65775F506174746572
              6E5F5377617463685F382220646174612D6E616D653D224E6577205061747465
              726E205377617463682038222077696474683D22363822206865696768743D22
              363822207061747465726E556E6974733D227573657253706163654F6E557365
              222076696577426F783D22302030203638203638223E3C7265637420636C6173
              733D22636C732D31222077696474683D22363822206865696768743D22363822
              2F3E3C7265637420636C6173733D22636C732D33222077696474683D22363822
              206865696768743D223638222F3E3C2F7061747465726E3E3C7061747465726E
              2069643D224E65775F5061747465726E5F5377617463685F372220646174612D
              6E616D653D224E6577205061747465726E205377617463682037222077696474
              683D22363822206865696768743D22363822207061747465726E556E6974733D
              227573657253706163654F6E557365222076696577426F783D22302030203638
              203638223E3C7265637420636C6173733D22636C732D31222077696474683D22
              363822206865696768743D223638222F3E3C7265637420636C6173733D22636C
              732D32222077696474683D22363822206865696768743D223638222F3E3C2F70
              61747465726E3E3C2F646566733E3C7469746C653E436C6561723C2F7469746C
              653E3C672069643D2249636F6E223E3C7265637420636C6173733D22636C732D
              342220783D22312E38362220793D2231302E3334222077696474683D2232382E
              323822206865696768743D2231312E333122207472616E73666F726D3D227472
              616E736C617465282D362E36332031362920726F74617465282D343529222F3E
              3C706F6C79676F6E20636C6173733D22636C732D352220706F696E74733D2232
              2E37312032322031302032392E32392031352E37392032332E3520382E352031
              362E323120322E3731203232222F3E3C7061746820636C6173733D22636C732D
              362220643D224D31302E37312C33306C32302D32304C32322C312E32392C312E
              32392C32322C31302C33302E37315633314833315633305A4D32322C322E3731
              2C32392E32392C31302C31362E352C32322E37392C392E32312C31352E355A4D
              322E37312C32322C382E352C31362E32316C372E32392C372E32394C31302C32
              392E32395A222F3E3C2F673E3C2F7376673E}
            Icons.FilterTypeIcon.Data = {
              1054544D53464E435356474269746D6170CB0700003C73766720786D6C6E733D
              22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
              6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
              2F786C696E6B222077696474683D22333222206865696768743D223332222076
              696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
              2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2337
              39373737343B7D2E636C732D337B66696C6C3A236661666166613B7D2E636C73
              2D347B66696C6C3A233361336133383B7D2E636C732D357B66696C6C3A75726C
              28234E65775F5061747465726E5F5377617463685F34293B7D3C2F7374796C65
              3E3C7061747465726E2069643D224E65775F5061747465726E5F537761746368
              5F342220646174612D6E616D653D224E6577205061747465726E205377617463
              682034222077696474683D22363822206865696768743D223638222070617474
              65726E556E6974733D227573657253706163654F6E557365222076696577426F
              783D22302030203638203638223E3C7265637420636C6173733D22636C732D31
              222077696474683D22363822206865696768743D223638222F3E3C7265637420
              636C6173733D22636C732D32222077696474683D22363822206865696768743D
              223638222F3E3C2F7061747465726E3E3C2F646566733E3C7469746C653E5465
              78742D46696C7465723C2F7469746C653E3C672069643D224D61736B223E3C70
              6F6C79676F6E20636C6173733D22636C732D332220706F696E74733D2232352E
              35203920313920322E3520313920392032352E352039222F3E3C706174682063
              6C6173733D22636C732D332220643D224D31382C313056324836563330483231
              5632362E31384C31392E38342C323548385632344831382E38356C2D322D3248
              3856323168385631394838563138683856313648385631354832347631683256
              31305A4D382C396838763148385A6D302C3456313248323476315A222F3E3C70
              6F6C79676F6E20636C6173733D22636C732D342220706F696E74733D22352031
              2035203331203620333120323120333120323120333020362033302036203220
              313820322031382E352032203139203220313920322E352032352E3520392032
              36203920323620392E3520323620313020323620313620323720313620323720
              392E372032372039203139203120352031222F3E3C706F6C79676F6E20636C61
              73733D22636C732D342220706F696E74733D22323620313020323620392E3520
              323620392032352E352039203139203920313920322E3520313920322031382E
              3520322031382032203138203130203236203130222F3E3C7265637420636C61
              73733D22636C732D332220783D22382220793D2239222077696474683D223822
              206865696768743D2231222F3E3C7265637420636C6173733D22636C732D3522
              20783D22382220793D2239222077696474683D223822206865696768743D2231
              222F3E3C7265637420636C6173733D22636C732D332220783D22382220793D22
              3132222077696474683D22313622206865696768743D2231222F3E3C72656374
              20636C6173733D22636C732D352220783D22382220793D223132222077696474
              683D22313622206865696768743D2231222F3E3C706F6C79676F6E20636C6173
              733D22636C732D332220706F696E74733D223820313520382031362031362031
              362032342031362032342031352038203135222F3E3C706F6C79676F6E20636C
              6173733D22636C732D352220706F696E74733D22382031352038203136203136
              2031362032342031362032342031352038203135222F3E3C7265637420636C61
              73733D22636C732D332220783D22382220793D223138222077696474683D2238
              22206865696768743D2231222F3E3C7265637420636C6173733D22636C732D35
              2220783D22382220793D223138222077696474683D223822206865696768743D
              2231222F3E3C706F6C79676F6E20636C6173733D22636C732D332220706F696E
              74733D22382032322031362E38372032322031362032312E3132203136203231
              20382032312038203232222F3E3C706F6C79676F6E20636C6173733D22636C73
              2D352220706F696E74733D22382032322031362E38372032322031362032312E
              313220313620323120382032312038203232222F3E3C706F6C79676F6E20636C
              6173733D22636C732D332220706F696E74733D22382032352031392E38342032
              352031382E383520323420382032342038203235222F3E3C706F6C79676F6E20
              636C6173733D22636C732D352220706F696E74733D22382032352031392E3834
              2032352031382E383520323420382032342038203235222F3E3C2F673E3C6720
              69643D224F7665726C6179223E3C706F6C79676F6E20636C6173733D22636C73
              2D332220706F696E74733D2233312E352031372E352031372E352031372E3520
              31372E352032302E352032322E352032352E35362032322E352033312E352032
              362E352033312E352032362E352032352E35362033312E352032302E35203331
              2E352031372E35222F3E3C7061746820636C6173733D22636C732D342220643D
              224D32372C33324832325632352E37376C2D352D352E30365631374833327633
              2E37316C2D352C352E30365A6D2D342D3168335632352E33366C352D352E3037
              56313848313876322E32396C352C352E30375A222F3E3C2F673E3C2F7376673E}
            Icons.SortAscendingIcon.Data = {
              1054544D53464E435356474269746D6170990300003C73766720786D6C6E733D
              22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
              6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
              2F786C696E6B222077696474683D22333222206865696768743D223332222076
              696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
              2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2361
              37346162303B7D2E636C732D337B66696C6C3A75726C28234E65775F50617474
              65726E5F5377617463685F37293B7D2E636C732D347B66696C6C3A2331653862
              63643B7D2E636C732D357B66696C6C3A233361336133383B7D3C2F7374796C65
              3E3C7061747465726E2069643D224E65775F5061747465726E5F537761746368
              5F372220646174612D6E616D653D224E6577205061747465726E205377617463
              682037222077696474683D22363822206865696768743D223638222070617474
              65726E556E6974733D227573657253706163654F6E557365222076696577426F
              783D22302030203638203638223E3C7265637420636C6173733D22636C732D31
              222077696474683D22363822206865696768743D223638222F3E3C7265637420
              636C6173733D22636C732D32222077696474683D22363822206865696768743D
              223638222F3E3C2F7061747465726E3E3C2F646566733E3C7469746C653E536F
              72742D415A3C2F7469746C653E3C672069643D2249636F6E223E3C7061746820
              636C6173733D22636C732D332220643D224D322C32392E36346C372D31305632
              304833563138683976312E34344C352C32392E33365632396837763248325A22
              2F3E3C7061746820636C6173733D22636C732D342220643D224D352E372C3131
              2C342E35322C313548312E39334C362E33332C3148392E35344C31342C313568
              2D322E376C2D312E32342D345A4D392E36342C392E31312C382E35362C352E36
              36632D2E32372D2E38352D2E34392D312E382D2E36392D322E36316830632D2E
              322E38312D2E342C312E37382D2E36352C322E36314C362E31312C392E31315A
              222F3E3C706F6C79676F6E20636C6173733D22636C732D352220706F696E7473
              3D2232332032352E3132203233203620323220362032322032352E3132203136
              2E34342031392E35362031352E35362032302E34342032322E352032372E3338
              2032392E34342032302E34342032382E35362031392E35362032332032352E31
              32222F3E3C2F673E3C2F7376673E}
            Icons.SortDescendingIcon.Data = {
              1054544D53464E435356474269746D6170990300003C73766720786D6C6E733D
              22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
              6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
              2F786C696E6B222077696474683D22333222206865696768743D223332222076
              696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
              2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2361
              37346162303B7D2E636C732D337B66696C6C3A75726C28234E65775F50617474
              65726E5F5377617463685F37293B7D2E636C732D347B66696C6C3A2331653862
              63643B7D2E636C732D357B66696C6C3A233361336133383B7D3C2F7374796C65
              3E3C7061747465726E2069643D224E65775F5061747465726E5F537761746368
              5F372220646174612D6E616D653D224E6577205061747465726E205377617463
              682037222077696474683D22363822206865696768743D223638222070617474
              65726E556E6974733D227573657253706163654F6E557365222076696577426F
              783D22302030203638203638223E3C7265637420636C6173733D22636C732D31
              222077696474683D22363822206865696768743D223638222F3E3C7265637420
              636C6173733D22636C732D32222077696474683D22363822206865696768743D
              223638222F3E3C2F7061747465726E3E3C2F646566733E3C7469746C653E536F
              72742D5A413C2F7469746C653E3C672069643D2249636F6E223E3C7061746820
              636C6173733D22636C732D332220643D224D322C31322E36346C372D31305633
              48335631683956322E34344C352C31322E33365631326837763248325A222F3E
              3C7061746820636C6173733D22636C732D342220643D224D352E372C32372C34
              2E35322C333148312E39336C342E342D313448392E35344C31342C3331682D32
              2E376C2D312E32342D345A6D332E39342D312E39334C382E35362C32312E3636
              632D2E32372D2E38352D2E34392D312E382D2E36392D322E36316830632D2E32
              2E38312D2E342C312E37382D2E36352C322E36314C362E31312C32352E31315A
              222F3E3C706F6C79676F6E20636C6173733D22636C732D352220706F696E7473
              3D2232332032352E3132203233203620323220362032322032352E3132203136
              2E34342031392E35362031352E35362032302E34342032322E352032372E3338
              2032392E34342032302E34342032382E35362031392E35362032332032352E31
              32222F3E3C2F673E3C2F7376673E}
            Icons.CloseIcon.Data = {
              1054544D53464E435356474269746D6170000700003C73766720786D6C6E733D
              22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
              6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
              2F786C696E6B222077696474683D22333222206865696768743D223332222076
              696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
              2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2365
              61336634313B7D2E636C732D337B636C69702D706174683A75726C2823636C69
              702D70617468293B7D2E636C732D347B66696C6C3A236661666166613B7D2E63
              6C732D357B636C69702D706174683A75726C2823636C69702D706174682D3229
              3B7D2E636C732D367B66696C6C3A75726C28234E65775F5061747465726E5F53
              77617463685F33293B7D3C2F7374796C653E3C636C6970506174682069643D22
              636C69702D70617468223E3C7265637420636C6173733D22636C732D31222078
              3D222D34352E352220793D222D342E35222077696474683D2233342220686569
              6768743D223334222F3E3C2F636C6970506174683E3C636C6970506174682069
              643D22636C69702D706174682D32223E3C7265637420636C6173733D22636C73
              2D312220783D22322E352220793D22322E35222077696474683D223237222068
              65696768743D223237222F3E3C2F636C6970506174683E3C7061747465726E20
              69643D224E65775F5061747465726E5F5377617463685F332220646174612D6E
              616D653D224E6577205061747465726E20537761746368203322207769647468
              3D22363822206865696768743D22363822207061747465726E556E6974733D22
              7573657253706163654F6E557365222076696577426F783D2230203020363820
              3638223E3C7265637420636C6173733D22636C732D31222077696474683D2236
              3822206865696768743D223638222F3E3C7265637420636C6173733D22636C73
              2D32222077696474683D22363822206865696768743D223638222F3E3C2F7061
              747465726E3E3C2F646566733E3C7469746C653E57696E646F772D436C6F7365
              3C2F7469746C653E3C672069643D2249636F6E223E3C6720636C6173733D2263
              6C732D33223E3C7265637420636C6173733D22636C732D312220783D222D3534
              2220793D222D3439222077696474683D22363822206865696768743D22363822
              2F3E3C7265637420636C6173733D22636C732D342220783D222D35342220793D
              222D3439222077696474683D22363822206865696768743D223638222F3E3C72
              65637420636C6173733D22636C732D312220783D222D35342220793D22313922
              2077696474683D22363822206865696768743D223638222F3E3C726563742063
              6C6173733D22636C732D342220783D222D35342220793D223139222077696474
              683D22363822206865696768743D223638222F3E3C2F673E3C6720636C617373
              3D22636C732D35223E3C7265637420636C6173733D22636C732D312220783D22
              31342220793D222D3439222077696474683D22363822206865696768743D2236
              38222F3E3C7265637420636C6173733D22636C732D342220783D223134222079
              3D222D3439222077696474683D22363822206865696768743D223638222F3E3C
              7265637420636C6173733D22636C732D312220783D2231342220793D22313922
              2077696474683D22363822206865696768743D223638222F3E3C726563742063
              6C6173733D22636C732D342220783D2231342220793D22313922207769647468
              3D22363822206865696768743D223638222F3E3C7265637420636C6173733D22
              636C732D312220783D222D35342220793D222D3439222077696474683D223638
              22206865696768743D223638222F3E3C7265637420636C6173733D22636C732D
              342220783D222D35342220793D222D3439222077696474683D22363822206865
              696768743D223638222F3E3C7265637420636C6173733D22636C732D31222078
              3D222D35342220793D223139222077696474683D22363822206865696768743D
              223638222F3E3C7265637420636C6173733D22636C732D342220783D222D3534
              2220793D223139222077696474683D22363822206865696768743D223638222F
              3E3C2F673E3C7061746820636C6173733D22636C732D362220643D224D33302C
              3330483256324833305A4D332C3239483239563348335A222F3E3C706F6C7967
              6F6E20636C6173733D22636C732D362220706F696E74733D2232322E36352032
              332E333520382E363520392E333520392E333520382E36352032332E33352032
              322E36352032322E36352032332E3335222F3E3C706F6C79676F6E20636C6173
              733D22636C732D362220706F696E74733D22392E33352032332E333520382E36
              352032322E36352032322E363520382E36352032332E333520392E333520392E
              33352032332E3335222F3E3C2F673E3C2F7376673E}
            Icons.FirstPageIcon.Data = {
              1054544D53464E435356474269746D6170800300003C3F786D6C207665727369
              6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
              20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
              703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
              4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
              726F756E643D226E65772030203020333220333222206865696768743D223332
              7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
              222076696577426F783D22302030203332203332222077696474683D22333270
              782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
              7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
              3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
              6C696E6B223E3C672069643D22446F75626C655F43686576726F6E5F4C656674
              223E3C7061746820643D224D31302E3435362C31366C362E3139362D362E3238
              3563302E3339312D302E3339342C302E3339312D312E3033342C302D312E3432
              38632D302E3339312D302E3339342D312E3032342D302E3339342D312E343134
              2C306C2D362E3839392C362E393939202020632D302E3337352C302E3337392D
              302E3337372C312E3034382C302C312E3432396C362E392C362E39393963302E
              33392C302E3339342C312E3032342C302E3339342C312E3431342C3063302E33
              39312D302E3339342C302E3339312D312E3033342C302D312E3432384C31302E
              3435362C31367A222066696C6C3D2223313231333133222F3E3C706174682064
              3D224D31372E3435362C31366C362E3139362D362E32383563302E3339312D30
              2E3339342C302E3339312D312E3033342C302D312E343238632D302E3339312D
              302E3339342D312E3032342D302E3339342D312E3431342C306C2D362E383939
              2C362E393939202020632D302E3337352C302E3337392D302E3337372C312E30
              34382C302C312E3432396C362E3839392C362E39393963302E3339312C302E33
              39342C312E3032342C302E3339342C312E3431342C3063302E3339312D302E33
              39342C302E3339312D312E3033342C302D312E3432384C31372E3435362C3136
              7A222066696C6C3D2223313231333133222F3E3C2F673E3C672F3E3C672F3E3C
              672F3E3C672F3E3C672F3E3C672F3E3C2F7376673E}
            Icons.LastPageIcon.Data = {
              1054544D53464E435356474269746D6170A60300003C3F786D6C207665727369
              6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
              20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
              703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
              4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
              726F756E643D226E65772030203020333220333222206865696768743D223332
              7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
              222076696577426F783D22302030203332203332222077696474683D22333270
              782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
              7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
              3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
              6C696E6B223E3C672069643D22446F75626C655F43686576726F6E5F52696768
              74223E3C7061746820643D224D32332E3636322C31352E3238366C2D362E392D
              362E393939632D302E33392D302E3339342D312E3032342D302E3339342D312E
              3431342C30632D302E3339312C302E3339342D302E3339312C312E3033342C30
              2C312E3432384C32312E3534342C31362020206C2D362E3139362C362E323835
              632D302E3339312C302E3339342D302E3339312C312E3033342C302C312E3432
              3863302E3339312C302E3339342C312E3032342C302E3339342C312E3431342C
              306C362E3839392D362E3939392020204332342E3033382C31362E3333352C32
              342E3033392C31352E3636362C32332E3636322C31352E3238367A222066696C
              6C3D2223313231333133222F3E3C7061746820643D224D31362E3636322C3135
              2E3238364C392E3736332C382E323837632D302E3339312D302E3339342D312E
              3032342D302E3339342D312E3431342C30632D302E3339312C302E3339342D30
              2E3339312C312E3033342C302C312E3432384C31342E3534342C31362020206C
              2D362E3139362C362E323835632D302E3339312C302E3339342D302E3339312C
              312E3033342C302C312E34323863302E3339312C302E3339342C312E3032342C
              302E3339342C312E3431342C306C362E3839392D362E3939392020204331372E
              3033382C31362E3333352C31372E3033392C31352E3636362C31362E3636322C
              31352E3238367A222066696C6C3D2223313231333133222F3E3C2F673E3C672F
              3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F3E3C2F7376673E}
            Icons.NextPageIcon.Data = {
              1054544D53464E435356474269746D6170B50200003C3F786D6C207665727369
              6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
              20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
              703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
              4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
              726F756E643D226E65772030203020333220333222206865696768743D223332
              7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
              222076696577426F783D22302030203332203332222077696474683D22333270
              782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
              7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
              3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
              6C696E6B223E3C7061746820636C69702D72756C653D226576656E6F64642220
              643D224D32312E3639382C31352E3238366C2D392E3030322D382E3939392020
              632D302E3339352D302E3339342D312E3033352D302E3339342D312E3433312C
              30632D302E3339352C302E3339342D302E3339352C312E3033342C302C312E34
              32384C31392E3535332C31366C2D382E3238372C382E323835632D302E333935
              2C302E3339342D302E3339352C312E3033342C302C312E343239202063302E33
              39352C302E3339342C312E3033362C302E3339342C312E3433312C306C392E30
              30322D382E3939394332322E3038382C31362E3332352C32322E3038382C3135
              2E3637352C32312E3639382C31352E3238367A222066696C6C3D222331323133
              3133222066696C6C2D72756C653D226576656E6F6464222069643D2243686576
              726F6E5F5269676874222F3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F3E
              3C672F3E3C2F7376673E}
            Icons.PreviousPageIcon.Data = {
              1054544D53464E435356474269746D6170B20200003C3F786D6C207665727369
              6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
              20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
              703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
              4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
              726F756E643D226E65772030203020333220333222206865696768743D223332
              7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
              222076696577426F783D22302030203332203332222077696474683D22333270
              782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
              7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
              3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
              6C696E6B223E3C7061746820636C69702D72756C653D226576656E6F64642220
              643D224D31312E3236322C31362E3731346C392E3030322C382E393939202063
              302E3339352C302E3339342C312E3033352C302E3339342C312E3433312C3063
              302E3339352D302E3339342C302E3339352D312E3033342C302D312E3432384C
              31332E3430372C31366C382E3238372D382E32383563302E3339352D302E3339
              342C302E3339352D312E3033342C302D312E3432392020632D302E3339352D30
              2E3339342D312E3033362D302E3339342D312E3433312C306C2D392E3030322C
              382E3939394331302E3837322C31352E3637352C31302E3837322C31362E3332
              352C31312E3236322C31362E3731347A222066696C6C3D222331323133313322
              2066696C6C2D72756C653D226576656E6F6464222069643D2243686576726F6E
              5F5269676874222F3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F
              3E3C2F7376673E}
            OnGetCellFormatting = TMSFNCDataGrid1GetCellFormatting
            OnGetCellLayout = TMSFNCDataGrid1GetCellLayout
            Options.Sorting.Enabled = True
            Options.Editing.Enabled = False
            Options.Mouse.ColumnSizing = True
            RowCount = 1
          end
          object TMSFNCDataGridDatabaseAdapter1: TTMSFNCDataGridDatabaseAdapter
            Left = 64
            Top = 175
            Width = 26
            Height = 26
            Visible = True
            AutoCreateColumns = False
            AutoRemoveColumns = False
            Columns = <
              item
                FieldName = 'ORDEN_DE'
                AutoCreated = True
              end
              item
                FieldName = 'NOMBRE'
                AutoCreated = True
              end
              item
                FieldName = 'NUMERO'
                AutoCreated = True
              end
              item
                FieldName = 'IMPORTE'
                AutoCreated = True
              end>
            DataSource = DSChe_x_Dia
          end
        end
        object Series1: TBarSeries
          HoverElement = []
          Active = False
          ConePercent = 24
          DataSource = QCheques
          Title = 'Cheques Emitidos'
          ValueFormat = ',0.00'
          XLabelsSource = 'DIA'
          BarStyle = bsCone
          XValues.Name = 'X'
          XValues.Order = loNone
          XValues.ValueSource = 'DIA'
          YValues.Name = 'Bar'
          YValues.Order = loAscending
          YValues.ValueSource = 'SUM'
        end
        object Series2: TBarSeries
          HoverElement = []
          Active = False
          ConePercent = 23
          DataSource = QChe3
          SeriesColor = 8421631
          Title = 'En Cartera'
          ValueFormat = ',0.00'
          XLabelsSource = 'DIA'
          BarStyle = bsRectGradient
          BarWidthPercent = 65
          DepthPercent = 95
          XValues.Name = 'X'
          XValues.Order = loNone
          XValues.ValueSource = 'DIA'
          YValues.Name = 'Bar'
          YValues.Order = loAscending
          YValues.ValueSource = 'SUM'
        end
        object Series3: TBarSeries
          HoverElement = []
          Legend.Text = 'Emitido'
          LegendTitle = 'Emitido'
          Marks.Style = smsValue
          DataSource = QCheques
          SeriesColor = 16484653
          Title = 'Emitido'
          ValueFormat = ',0.00'
          XLabelsSource = 'DIA'
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'DIA'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'SUM'
        end
        object Series4: TBarSeries
          HoverElement = []
          Legend.Text = 'En Cartera'
          LegendTitle = 'En Cartera'
          Marks.Style = smsValue
          DataSource = QChe3
          SeriesColor = 3459948
          Title = 'En Cartera'
          ValueFormat = ',0.00'
          XLabelsSource = 'DIA'
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'DIA'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'SUM'
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 802
    Width = 1397
    Height = 21
    Panels = <>
    OnDblClick = StatusBar1DblClick
  end
  object ActionList1: TActionList
    Left = 664
    Top = 104
    object Listado: TAction
      Caption = 'Listado'
      OnExecute = ListadoExecute
    end
    object MovimientosBco: TAction
      Caption = 'MovimientosBco'
      OnExecute = MovimientosBcoExecute
    end
    object CheDebitados: TAction
      Caption = 'CheDebitados'
    end
    object ListaCheEmitidos: TAction
      Caption = 'Lista Che.Emitidos'
      OnExecute = ListaCheEmitidosExecute
    end
    object Exportar1: TAction
      Caption = 'Exportar XLS '
      OnExecute = Exportar1Execute
    end
    object Exportar2: TAction
      Caption = 'Exportar XLS 2'
    end
  end
  object DSCtasBancarias: TDataSource
    DataSet = QCtasBancarias
    Left = 576
    Top = 216
  end
  object frxReport: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.790704027780000000
    ReportOptions.LastChange = 39638.790704027780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReportGetValue
    Left = 692
    Top = 422
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
  object frCol: TfrxUserDataSet
    UserName = 'frCol'
    Left = 524
    Top = 326
  end
  object frRow: TfrxUserDataSet
    UserName = 'frRow'
    Left = 524
    Top = 390
  end
  object DSMovimientosBco: TDataSource
    DataSet = QMovimientosBco
    Left = 140
    Top = 38
  end
  object DSChequesDebitados: TDataSource
    DataSet = QChequesDebitados
    Left = 144
    Top = 384
  end
  object DSChequesNoDeb: TDataSource
    DataSet = QChequesNoDeb
    Left = 144
    Top = 440
  end
  object DSChequesEmitidos: TDataSource
    DataSet = QCheEmitidos
    Left = 152
    Top = 496
  end
  object DSTotalCheEmitidos: TDataSource
    DataSet = QTotalCheEmitidos
    Left = 520
    Top = 544
  end
  object frDBTotalCheEmitidos: TfrxDBDataset
    UserName = 'frDBTotalCheEmitidos'
    CloseDataSource = False
    DataSource = DSTotalCheEmitidos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 644
    Top = 339
    FieldDefs = <
      item
        FieldName = 'FECHA_COBRO'
        FieldAlias = 'FECHA_COBRO'
      end
      item
        FieldName = 'SUM'
        FieldAlias = 'SUM'
      end>
  end
  object frDBCheEmitidos: TfrxDBDataset
    UserName = 'frDBCheEmitidos'
    CloseDataSource = False
    DataSource = DSChequesEmitidos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 724
    Top = 235
    FieldDefs = <
      item
        FieldName = 'FECHA_EMISION'
        FieldAlias = 'FECHA_EMISION'
      end
      item
        FieldName = 'FECHA_COBRO'
        FieldAlias = 'FECHA_COBRO'
      end
      item
        FieldName = 'NUMERO'
        FieldAlias = 'NUMERO'
      end
      item
        FieldName = 'ORDEN_DE'
        FieldAlias = 'ORDEN_DE'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'MUESTRABANCO'
        FieldAlias = 'MUESTRABANCO'
      end
      item
        FieldName = 'DEBITADO'
        FieldAlias = 'DEBITADO'
      end>
  end
  object frxReport1: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.790704027780000000
    ReportOptions.LastChange = 39638.790704027780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 748
    Top = 350
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object DSTransferEmitidas: TDataSource
    DataSet = QTransferEmitidas
    Left = 144
    Top = 336
  end
  object DSDepositos: TDataSource
    DataSet = QDepositos
    Left = 152
    Top = 280
  end
  object DSChe3: TDataSource
    DataSet = QChe3
    Left = 152
    Top = 224
  end
  object DSCheques: TDataSource
    DataSet = QCheques
    Left = 144
    Top = 168
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 656
    Top = 520
  end
  object DSVencimientos: TDataSource
    DataSet = QVencimientos
    Left = 136
    Top = 104
  end
  object QCheEmitidos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.fecha_emision,c.fecha_cobro,c.numero,c.orden_de,c.impor' +
        'te,b.nombre as MuestraBanco,'
      'c.debitado from cheque_Propio c'
      'left join bancos b on b.id_banco=c.id_banco'
      
        'where ( c.fecha_cobro=:Fecha ) and ( c.id_cuenta_banco=:id or :i' +
        'd = -1 )')
    Left = 20
    Top = 499
    ParamData = <
      item
        Name = 'FECHA'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCheEmitidosFECHA_EMISION: TSQLTimeStampField
      FieldName = 'FECHA_EMISION'
      Origin = 'FECHA_EMISION'
    end
    object QCheEmitidosFECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
    end
    object QCheEmitidosNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object QCheEmitidosORDEN_DE: TStringField
      FieldName = 'ORDEN_DE'
      Origin = 'ORDEN_DE'
      Size = 30
    end
    object QCheEmitidosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QCheEmitidosMUESTRABANCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QCheEmitidosDEBITADO: TStringField
      FieldName = 'DEBITADO'
      Origin = 'DEBITADO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QChequesNoDeb: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select fecha_cobro,sum(importe) from cheque_Propio '
      'where fecha_cobro between :desde and :Hasta and'
      
        '     (anulado='#39'N'#39' or anulado is null) and ( id_cuenta_banco = :i' +
        'd or :id = -1 ) and'
      '     debitado='#39'N'#39
      'group by fecha_cobro')
    Left = 20
    Top = 443
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QChequesNoDebFECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
    end
    object QChequesNoDebSUM: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SUM'
      Origin = 'SUM'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QChequesDebitados: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select fecha_cobro,sum(importe) from cheque_Propio'
      'where fecha_cobro between :desde and :Hasta and'
      
        '     (anulado='#39'N'#39' or anulado is null) and ( id_cuenta_banco = :i' +
        'd or :id = -1 ) and'
      '     debitado='#39'S'#39
      'group by fecha_cobro')
    Left = 20
    Top = 387
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QChequesDebitadosFECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
    end
    object QChequesDebitadosSUM: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SUM'
      Origin = 'SUM'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QCtasBancarias: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select id_cuenta,nombre,nro_cuenta from cuenta_caja where id_tip' +
        'o_cta=2')
    Left = 492
    Top = 211
    object QCtasBancariasID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Origin = 'ID_CUENTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCtasBancariasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object QCtasBancariasNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Origin = 'NRO_CUENTA'
      Size = 15
    end
  end
  object QCheques: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select fecha_cobro,extract(day from fecha_cobro) as Dia, sum(imp' +
        'orte) from cheque_Propio'
      
        'where fecha_cobro between :desde and :Hasta and (anulado='#39'N'#39' or ' +
        'anulado is null) '
      'and ( id_cuenta_banco=:id or :id = -1 )'
      'group by fecha_cobro')
    Left = 28
    Top = 171
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QChequesFECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
    end
    object QChequesSUM: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SUM'
      Origin = 'SUM'
      ProviderFlags = []
      ReadOnly = True
    end
    object QChequesDIA: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'DIA'
      Origin = 'DIA'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QVencimientos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select v.fecha_sh, sum( V.importe ) from v_vencimientos (:desde,' +
        ' :Hasta ) v'
      'group by v.fecha_sh'
      'order by v.fecha_sh')
    Left = 36
    Top = 107
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object QVencimientosFECHA_SH: TSQLTimeStampField
      FieldName = 'FECHA_SH'
      Origin = 'FECHA_SH'
    end
    object QVencimientosSUM: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SUM'
      Origin = 'SUM'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QMovimientosBco: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select fecha_ingr,fecha_cobro,debe,haber,detalle,saldo,id_cta_bc' +
        'o from resumen_bco_det'
      
        'where id_cta_bco=:id and fecha_Ingr>=:Desde and fecha_Ingr<=:has' +
        'ta '
      'order by fecha_Ingr')
    Left = 36
    Top = 43
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object QMovimientosBcoDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
    end
    object QMovimientosBcoHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
    end
    object QMovimientosBcoDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
    object QMovimientosBcoSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
    end
    object QMovimientosBcoID_CTA_BCO: TIntegerField
      FieldName = 'ID_CTA_BCO'
      Origin = 'ID_CTA_BCO'
      Required = True
    end
    object QMovimientosBcoFECHA_INGR: TSQLTimeStampField
      FieldName = 'FECHA_INGR'
      Origin = 'FECHA_INGR'
    end
    object QMovimientosBcoFECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
    end
  end
  object QTransferEmitidas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select fecha,sum(importe) from transf_banco_emitidas'
      
        'where fecha>=:desde and fecha<=:Hasta and ( id_cuenta_banco = :i' +
        'd or :id = -1 ) '
      'group by fecha')
    Left = 20
    Top = 339
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTransferEmitidasFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object QTransferEmitidasSUM: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SUM'
      Origin = 'SUM'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QDepositos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select fecha,sum(importe) from dep_banco_cab'
      
        'where fecha>=:desde and fecha<=:Hasta and ( id_cta_caja = :id or' +
        ' :id = -1 )'
      'group by fecha')
    Left = 20
    Top = 283
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QDepositosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object QDepositosSUM: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SUM'
      Origin = 'SUM'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QChe3: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select fecha_cobro,extract(day from fecha_cobro) as Dia, sum(imp' +
        'orte) from cheque_tercero'
      
        'where ( fecha_cobro>=:desde and fecha_cobro<=:Hasta ) and dispon' +
        'ible='#39'S'#39' '
      'group by fecha_cobro')
    Left = 20
    Top = 227
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object QChe3FECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
    end
    object QChe3SUM: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SUM'
      Origin = 'SUM'
      ProviderFlags = []
      ReadOnly = True
    end
    object QChe3DIA: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'DIA'
      Origin = 'DIA'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QTotalCheEmitidos: TFDQuery
    AfterScroll = QTotalCheEmitidosAfterScroll
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select  fecha_cobro,sum(importe) from cheque_Propio'
      
        'where fecha_cobro between :desde and :Hasta and (anulado='#39'N'#39' or ' +
        'anulado is null)'
      'and ( id_cuenta_banco = :id or :id = -1 )'
      'group by fecha_cobro')
    Left = 420
    Top = 539
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTotalCheEmitidosFECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
    end
    object QTotalCheEmitidosSUM: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SUM'
      Origin = 'SUM'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QTransferRec: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select fecha,sum(importe) from transf_banco_Recibidas '
      
        'where fecha>=:desde and fecha<=:Hasta and ( id_cuenta_banco = :i' +
        'd or :id = -1 ) '
      'group by fecha')
    Left = 28
    Top = 555
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTransferRecFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object QTransferRecSUM: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SUM'
      Origin = 'SUM'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QSaldoAnterior: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select (Sum(debe)-Sum(haber)) as Suma from resumen_bco_det'
      'where (id_cta_bco=:id) and (fecha_ingr<:Desde)')
    Left = 552
    Top = 88
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DESDE'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object QSaldoAnteriorSUMA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SUMA'
      Origin = 'SUMA'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QMovTc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select l.fechaacreditacion_probable,sum(importe) from LISTADO_CU' +
        'PON_TC_SUCURSAL  (:id_tarjeta,:acred,:desde,:hasta,:vta_acred,:l' +
        'ote,:terminal) l'
      'group by l.fechaacreditacion_probable'
      '')
    Left = 32
    Top = 632
    ParamData = <
      item
        Name = 'ID_TARJETA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ACRED'
        DataType = ftString
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Name = 'DESDE'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'VTA_ACRED'
        DataType = ftString
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Name = 'LOTE'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end
      item
        Name = 'TERMINAL'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
    object QMovTcFECHAACREDITACION_PROBABLE: TSQLTimeStampField
      FieldName = 'FECHAACREDITACION_PROBABLE'
      Origin = 'FECHAACREDITACION_PROBABLE'
    end
    object QMovTcSUM: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SUM'
      Origin = 'SUM'
      ProviderFlags = []
      ReadOnly = True
      EditFormat = ',0.00'
    end
  end
  object DSMocTc: TDataSource
    DataSet = QMovTc
    Left = 148
    Top = 635
  end
  object JvFormStorage: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    Options = [fpState, fpSize, fpLocation, fpActiveControl]
    StoredValues = <>
    Left = 416
    Top = 128
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    AutoFlush = True
    SubStorages = <>
    Left = 312
    Top = 176
  end
  object QChe_x_Dia: TFDQuery
    Active = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select b.nombre,c.numero,c.orden_de, c.importe from cheque_propi' +
        'o c'
      'left join bancos b on b.id_banco=c.id_banco'
      'where c.fecha_cobro=:desde'
      '')
    Left = 892
    Top = 467
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end>
    object QChe_x_DiaORDEN_DE: TStringField
      DisplayLabel = 'Orden de'
      FieldName = 'ORDEN_DE'
      Origin = 'ORDEN_DE'
      Size = 30
    end
    object QChe_x_DiaNOMBRE: TStringField
      DisplayLabel = 'Bco'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
    end
    object QChe_x_DiaNUMERO: TIntegerField
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object QChe_x_DiaIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
  end
  object DSChe_x_Dia: TDataSource
    DataSet = QChe_x_Dia
    Left = 1060
    Top = 459
  end
  object FDQuery1: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select b.nombre,c.numero,c.origen, c.importe from cheque_tercero' +
        ' c'
      'left join bancos b on b.id_banco=c.id_banco'
      'where c.fecha_cobro=:desde and c.disponible='#39'S'#39
      '')
    Left = 1092
    Top = 563
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end>
    object StringField1: TStringField
      DisplayLabel = 'Origen'
      FieldName = 'ORIGEN'
      Origin = 'ORIGEN'
      Size = 30
    end
    object StringField2: TStringField
      DisplayLabel = 'Bco'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
    end
    object IntegerField1: TIntegerField
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object FloatField1: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 340
    Top = 347
    object ExportarXLS11: TMenuItem
      Action = Exportar1
    end
    object ExportarXLS21: TMenuItem
      Action = Exportar2
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 996
    Top = 555
  end
  object AdvPreviewDialog: TAdvPreviewDialog
    CloseAfterPrint = True
    DialogCaption = 'Vista Previa'
    DialogPrevBtn = 'Previous'
    DialogNextBtn = 'Next'
    DialogPrintBtn = 'Print'
    DialogCloseBtn = 'Close'
    PreviewFast = False
    PreviewWidth = 350
    PreviewHeight = 300
    PreviewLeft = 100
    PreviewTop = 100
    PreviewCenter = True
    PrinterSetupDialog = True
    ShowMaximized = True
    Left = 773
    Top = 193
  end
  object AdvGridExcelIO1: TAdvGridExcelIO
    AdvStringGrid = sgMes
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportFormulas = False
    Options.ExportCellFormats = False
    Options.ExportHTMLTags = False
    Options.ExportRawRTF = False
    UseUnicode = False
    GridStartRow = 0
    GridStartCol = 0
    Version = '3.14'
    Left = 508
    Top = 459
  end
end
