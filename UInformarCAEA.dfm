inherited FormInformarCAEA: TFormInformarCAEA
  Caption = 'Informar CAEA'
  ClientHeight = 539
  StyleElements = [seFont, seClient, seBorder]
  ExplicitHeight = 580
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Height = 486
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 0
    ExplicitTop = 0
    object lbCAE: TLabel
      Left = 552
      Top = 2
      Width = 63
      Height = 13
      Caption = 'Nro de CAEA'
    end
    object sgFacturas: TAdvStringGrid
      Left = 0
      Top = 56
      Width = 774
      Height = 430
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      DrawingStyle = gdsClassic
      FixedColor = clWhite
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColMoving, goFixedRowDefAlign]
      TabOrder = 0
      GridLineColor = 13948116
      GridFixedLineColor = 11250603
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
      FixedFont.Color = 3881787
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
      SortSettings.HeaderColor = clWhite
      SortSettings.HeaderColorTo = clWhite
      SortSettings.HeaderMirrorColor = clWhite
      SortSettings.HeaderMirrorColorTo = clWhite
      Version = '9.0.0.10'
    end
    object edCAEA: TEdit
      Left = 552
      Top = 21
      Width = 177
      Height = 21
      TabOrder = 1
      Text = 'edCAEA'
    end
  end
  inherited ToolBar1: TToolBar
    Top = 486
    Align = alBottom
    ExplicitTop = 385
    ExplicitWidth = 774
    inherited btConfirma: TBitBtn
      Visible = False
    end
    inherited btNuevo: TBitBtn
      Visible = False
    end
    inherited btCancelar: TBitBtn
      Visible = False
    end
    inherited btModificar: TBitBtn
      Visible = False
    end
    inherited Pr: TSpeedButton
      Visible = False
    end
    inherited btBuscar: TBitBtn
      Visible = False
    end
    inherited Ne: TSpeedButton
      Visible = False
    end
    inherited btBorrar: TBitBtn
      Visible = False
    end
    object ToolButton1: TToolButton
      Left = 557
      Top = 0
      Width = 20
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object BitBtn1: TBitBtn
      Left = 577
      Top = 0
      Width = 96
      Height = 29
      Action = CargarExcel
      Caption = 'Cargar Excel'
      TabOrder = 7
    end
  end
  inherited Panel1: TPanel
    Top = 516
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 415
    ExplicitWidth = 774
    inherited sbEstado: TStatusBar
      ExplicitWidth = 612
    end
  end
  inherited ActionList1: TActionList
    Left = 600
    Top = 80
    object InformarCAEA: TAction
      Caption = 'InformarCAEA'
      OnExecute = InformarCAEAExecute
    end
    object CargarExcel: TAction
      Caption = 'Cargar Excel'
      OnExecute = CargarExcelExecute
    end
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
  end
  object AdvGridExcelIO: TAdvGridExcelIO
    AdvStringGrid = sgFacturas
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    GridStartRow = 0
    GridStartCol = 0
    Version = '3.14'
    Left = 712
    Top = 400
  end
  object OpenDialog1: TOpenDialog
    Left = 568
    Top = 432
  end
end
