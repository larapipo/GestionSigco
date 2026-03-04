object FormMediasResesCompra: TFormMediasResesCompra
  Left = 0
  Top = 0
  Caption = 'Ingreso de Medias Reses'
  ClientHeight = 535
  ClientWidth = 598
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 15
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 598
    Height = 81
    Align = alTop
    Color = clMenuHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 13
      Width = 155
      Height = 22
      Caption = 'Numero de tropa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 192
      Top = 13
      Width = 119
      Height = 22
      Caption = 'Clasificacion'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edNroTropa: TEdit
      Left = 11
      Top = 41
      Width = 155
      Height = 31
      Alignment = taRightJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'Nro Tropa'
    end
    object pnTotal: TPanel
      Left = 333
      Top = 1
      Width = 264
      Height = 79
      Align = alRight
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 1
      object Label2: TLabel
        Left = 154
        Top = 12
        Width = 105
        Height = 22
        Caption = 'Total de Kg'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 45
        Top = 12
        Width = 87
        Height = 22
        Caption = 'Unidades'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edKilos: TEdit
        Left = 138
        Top = 40
        Width = 121
        Height = 31
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
        Text = '0'
      end
      object edUnidades: TEdit
        Left = 30
        Top = 40
        Width = 102
        Height = 31
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        NumbersOnly = True
        ParentFont = False
        TabOrder = 1
        Text = '0'
      end
    end
    object cbClases: TComboBox
      Left = 208
      Top = 41
      Width = 81
      Height = 31
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      TextHint = 'Calse'
      Items.Strings = (
        'NT'
        'NV'
        'TH'
        'TM'
        'VQ'
        'TO'
        'VC'
        'SC')
    end
  end
  object pnBase: TPanel
    Left = 0
    Top = 81
    Width = 598
    Height = 400
    Align = alClient
    Caption = 'pnBase'
    TabOrder = 1
    object sgMedias: TAdvStringGrid
      Left = 1
      Top = 1
      Width = 596
      Height = 398
      Align = alClient
      ColCount = 8
      DefaultColWidth = 74
      DefaultRowHeight = 27
      DrawingStyle = gdsClassic
      FixedColor = clWhite
      FixedCols = 0
      RowCount = 14
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs, goFixedRowDefAlign]
      ParentFont = False
      TabOrder = 0
      OnCellChanging = sgMediasCellChanging
      OnCellValidate = sgMediasCellValidate
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = 4474440
      ActiveCellFont.Height = -12
      ActiveCellFont.Name = 'Segoe UI'
      ActiveCellFont.Style = [fsBold]
      ActiveCellColor = 11565130
      ActiveCellColorTo = 11565130
      BorderColor = 11250603
      ColumnSize.SynchWithGrid = True
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
      EnhTextSize = True
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
      FixedColWidth = 71
      FixedRowHeight = 27
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
      Navigation.AdvanceOnEnter = True
      Navigation.AdvanceAuto = True
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
        71
        71
        71
        71
        71
        71
        71
        76)
      RowHeights = (
        27
        27
        27
        27
        27
        27
        27
        27
        27
        27
        27
        27
        27
        27)
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 481
    Width = 598
    Height = 54
    Align = alBottom
    Color = clMenuHighlight
    Padding.Left = 10
    Padding.Right = 10
    ParentBackground = False
    TabOrder = 2
    object btOk: TBitBtn
      Left = 294
      Top = 1
      Width = 293
      Height = 52
      Align = alRight
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 1
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = btOkClick
    end
    object btCancelar: TBitBtn
      Left = 11
      Top = 1
      Width = 264
      Height = 52
      Align = alLeft
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object QMediasDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.* from FCCOMPDET_CARNES_DET d where d.id_det=:id')
    Left = 401
    Top = 194
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QMediasDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMediasDetID_DET: TIntegerField
      FieldName = 'ID_DET'
      Origin = 'ID_DET'
      Required = True
    end
    object QMediasDetMEDIA: TIntegerField
      FieldName = 'MEDIA'
      Origin = 'MEDIA'
    end
  end
  object QMediasCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.* from FCCOMPDET_CARNES d where d.id_cab=:id')
    Left = 273
    Top = 170
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QMediasCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMediasCabID_DET: TIntegerField
      FieldName = 'ID_DET'
      Origin = 'ID_DET'
      Required = True
    end
    object QMediasCabID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      Required = True
    end
    object QMediasCabCLASIFICACION: TStringField
      FieldName = 'CLASIFICACION'
      Origin = 'CLASIFICACION'
      Size = 2
    end
    object QMediasCabNRO_TROPA: TStringField
      FieldName = 'NRO_TROPA'
      Origin = 'NRO_TROPA'
      Size = 6
    end
    object QMediasCabT_KILOS: TIntegerField
      FieldName = 'T_KILOS'
      Origin = 'T_KILOS'
      Required = True
    end
    object QMediasCabT_MEDIAS: TIntegerField
      FieldName = 'T_MEDIAS'
      Origin = 'T_MEDIAS'
      Required = True
    end
  end
  object ActionList1: TActionList
    Left = 545
    Top = 122
    object Guardar: TAction
      Caption = 'Guardar'
      OnExecute = GuardarExecute
    end
  end
end
