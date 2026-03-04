object FormBuscadorSubRubro_RubroStock: TFormBuscadorSubRubro_RubroStock
  Left = 0
  Top = 0
  Caption = 'Buscador Sub Rubro//Rubro Stock'
  ClientHeight = 541
  ClientWidth = 740
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 740
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 18
      Width = 58
      Height = 23
      Caption = 'Rubro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sBuscar: TDBAdvSearchEdit
      Left = 312
      Top = 20
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
      Appearance.SelectionTextColor = clSkyBlue
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
      DropDownWidth = 500
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
      OnKeyDown = sBuscarKeyDown
      OnKeyPress = sBuscarKeyPress
      OnEnter = sBuscarEnter
      ListSelectionTextColor = clSkyBlue
      DropDownColor = clBlack
      ListSource = DSSubRub
    end
    object cbRubro: TJvDBComboBox
      Left = 90
      Top = 19
      Width = 207
      Height = 22
      Style = csOwnerDrawFixed
      DataField = 'CODIGO_RUBRO'
      DataSource = DSRubros
      TabOrder = 1
      UpdateFieldImmediatelly = True
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
      ListSettings.KeyField = 'CODIGO'
      ListSettings.DisplayField = 'DETALLE'
      OnChange = cbRubroChange
      OnKeyDown = cbRubroKeyDown
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 506
    Width = 740
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    Padding.Left = 2
    Padding.Top = 3
    Padding.Right = 10
    Padding.Bottom = 3
    ParentBackground = False
    TabOrder = 1
    object btOk: TBitBtn
      Left = 655
      Top = 3
      Width = 75
      Height = 29
      Action = Confirma
      Align = alRight
      Caption = 'Confirma'
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object btCancel: TBitBtn
      Left = 580
      Top = 3
      Width = 75
      Height = 29
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alRight
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object pnPrincipal: TPanel
    Left = 0
    Top = 57
    Width = 740
    Height = 449
    Align = alClient
    TabOrder = 2
    object gCuenta: TcxGrid
      Left = 1
      Top = 1
      Width = 738
      Height = 447
      Align = alClient
      TabOrder = 0
      object gCuentaDet: TcxGridDBTableView
        OnDblClick = gCuentaDetDblClick
        OnKeyDown = gCuentaDetKeyDown
        OnKeyPress = gCuentaDetKeyPress
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnEditKeyPress = gCuentaDetEditKeyPress
        DataController.DataSource = DSSubRub
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object gCuentaDetCODIGO_RUBRO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO_RUBRO'
          HeaderAlignmentHorz = taCenter
          Width = 70
        end
        object gCuentaDetMUESTRARUBRO: TcxGridDBColumn
          DataBinding.FieldName = 'MUESTRARUBRO'
          HeaderAlignmentHorz = taCenter
        end
        object gCuentaDetCODIGO_SUBRUBRO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO_SUBRUBRO'
          HeaderAlignmentHorz = taCenter
          Width = 73
        end
        object gCuentaDetDETALLE_SUBRUBRO: TcxGridDBColumn
          DataBinding.FieldName = 'DETALLE_SUBRUBRO'
          HeaderAlignmentHorz = taCenter
          Width = 349
        end
      end
      object gCuentaLevel1: TcxGridLevel
        GridView = gCuentaDet
      end
    end
  end
  object QRubros: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from Rubros order by detalle_rubro')
    Left = 96
    Top = 81
  end
  object DSPRubros: TDataSetProvider
    DataSet = QRubros
    Left = 168
    Top = 81
  end
  object CDSRubros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRubros'
    Left = 224
    Top = 80
    object CDSRubrosCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CDSRubrosDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
  end
  object DSRubros: TDataSource
    DataSet = CDSRubros
    Left = 280
    Top = 88
  end
  object DSSubRub: TDataSource
    DataSet = CDSSubRub
    Left = 280
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
    Left = 224
    Top = 136
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
  object DSPSubRub: TDataSetProvider
    DataSet = QSubRub
    Left = 160
    Top = 136
  end
  object QSubRub: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select sr.*, r.detalle_rubro as MuestraRubro from subrubros sr'
      'left join rubros r on r.codigo_rubro=sr.codigo_rubro'
      ''
      'where (:rubro is null) or (r.codigo_rubro=:rubro)'
      'order by sr.detalle_subrubro')
    Left = 96
    Top = 136
    ParamData = <
      item
        Position = 1
        Name = 'RUBRO'
        DataType = ftFixedChar
        ParamType = ptInput
      end>
  end
  object ActionList1: TActionList
    Left = 552
    Top = 72
    object Confirma: TAction
      Caption = 'Confirma'
      OnExecute = ConfirmaExecute
    end
    object Cancelar: TAction
      Caption = 'Cancelar'
      OnExecute = CancelarExecute
    end
  end
end
