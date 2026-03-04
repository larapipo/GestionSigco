object FormBuscadorCuentaGastos: TFormBuscadorCuentaGastos
  Left = 0
  Top = 0
  Caption = 'Buscar Cuenta de Gastos'
  ClientHeight = 494
  ClientWidth = 663
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
  OnShow = FormShow
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 57
    Width = 663
    Height = 402
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 362
    object gCuenta: TcxGrid
      Left = 1
      Top = 1
      Width = 661
      Height = 400
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 360
      object gCuentaDet: TcxGridDBTableView
        OnDblClick = gCuentaDetDblClick
        OnKeyDown = gCuentaDetKeyDown
        OnKeyPress = gCuentaDetKeyPress
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnEditKeyPress = gCuentaDetEditKeyPress
        DataController.DataSource = DSCuentas
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.NoDataToDisplayInfoText = 'Sin Datos'
        OptionsView.GroupByBox = False
        object gCuentaDetCODIGO_RUBRO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO_RUBRO'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Options.Moving = False
          Width = 73
        end
        object gCuentaDetCODIGO: TcxGridDBColumn
          Caption = 'Codigo'
          DataBinding.FieldName = 'CODIGO'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Options.Moving = False
          Width = 80
        end
        object gCuentaDetDETALLE: TcxGridDBColumn
          Caption = 'Cuenta'
          DataBinding.FieldName = 'DETALLE'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Options.Moving = False
        end
        object gCuentaDetEXCLUYE: TcxGridDBColumn
          DataBinding.FieldName = 'EXCLUYE'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Options.Moving = False
        end
        object gCuentaDetMUESTRARUBRO: TcxGridDBColumn
          Caption = 'Rubro'
          DataBinding.FieldName = 'MUESTRARUBRO'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Options.Moving = False
          Width = 258
        end
      end
      object gCuentaLevel1: TcxGridLevel
        GridView = gCuentaDet
      end
    end
  end
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 663
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 440
      Top = 7
      Width = 38
      Height = 18
      Caption = 'Rubro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 11
      Top = 5
      Width = 110
      Height = 18
      Caption = 'Cuenta de Gasto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object sBuscar: TDBAdvSearchEdit
      Left = 8
      Top = 29
      Width = 418
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
      Appearance.ItemCategoryFont.Color = 42495
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
          Width = 70
          DataField = 'CODIGO'
        end
        item
          ControlFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Trimming = True
          Width = 250
          DataField = 'DETALLE'
        end
        item
          ControlFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 150
          DataField = 'MUESTRARUBRO'
        end>
      DragMode = dmAutomatic
      DropDownHeader.Color = clWhite
      DropDownHeader.ColorTo = clNone
      DropDownHeader.Font.Charset = DEFAULT_CHARSET
      DropDownHeader.Font.Color = clBlue
      DropDownHeader.Font.Height = -11
      DropDownHeader.Font.Name = 'Tahoma'
      DropDownHeader.Font.Style = [fsBold]
      DropDownHeader.Visible = True
      DropDownHeader.BorderColor = 11250603
      DropDownHeader.Buttons = <
        item
          Caption = 'Cod.Cta'
          Width = 70
        end
        item
          Caption = 'Cuenta'
          Width = 250
        end
        item
          Caption = 'Rubro'
          Width = 150
        end>
      DropDownHeader.ButtonAlignment = baLeft
      DropDownHeight = 400
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
      DropDownWidth = 600
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
      Version = '1.1.5.6'
      OnSelect = sBuscarSelect
      OnKeyPress = sBuscarKeyPress
      OnEnter = sBuscarEnter
      DropDownColor = clBlack
      DropDownButtonsFontColor = clBlue
      DataSource = DSCuentas
      ListSource = DSCuentas
    end
    object cbRubro: TJvDBComboBox
      Left = 438
      Top = 29
      Width = 217
      Height = 22
      Style = csOwnerDrawFixed
      DataField = 'CODIGO'
      DataSource = DSRubros
      DropDownCount = 15
      DropDownWidth = 250
      TabOrder = 1
      UpdateFieldImmediatelly = True
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
      ListSettings.KeyField = 'CODIGO'
      ListSettings.DisplayField = 'DETALLE'
      ListSettings.DataSource = DSRubros
      OnChange = cbRubroChange
      OnDropDown = cbRubroDropDown
      OnKeyDown = cbRubroKeyDown
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 459
    Width = 663
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 419
    object btOk: TBitBtn
      Left = 560
      Top = 5
      Width = 75
      Height = 25
      Action = Confirma
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object btCancel: TBitBtn
      Left = 479
      Top = 5
      Width = 75
      Height = 25
      Action = Cancelar
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object QRubros: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from Gastos_Rubros order by detalle')
    Left = 96
    Top = 65
  end
  object DSPRubros: TDataSetProvider
    DataSet = QRubros
    Left = 160
    Top = 65
  end
  object CDSRubros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRubros'
    Left = 224
    Top = 72
    object CDSRubrosCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 3
    end
    object CDSRubrosDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 50
    end
  end
  object DSRubros: TDataSource
    DataSet = CDSRubros
    Left = 288
    Top = 64
  end
  object QCuentas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.*, r.detalle as MuestraRubro from gastos_cuentas c'
      'left join gastos_rubros r on c.codigo_rubro=r.codigo'
      ''
      'where (:rubro is null) or (codigo_rubro=:rubro)'
      'order by c.detalle')
    Left = 96
    Top = 136
    ParamData = <
      item
        Name = 'RUBRO'
        DataType = ftFixedChar
        ParamType = ptInput
        Value = Null
      end>
  end
  object DSPCuentas: TDataSetProvider
    DataSet = QCuentas
    Left = 160
    Top = 136
  end
  object CDSCuentas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFixedChar
        Name = 'RUBRO'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCuentas'
    Left = 224
    Top = 136
    object CDSCuentasCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSCuentasCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
    object CDSCuentasDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 50
    end
    object CDSCuentasEXCLUYE: TStringField
      FieldName = 'EXCLUYE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCuentasMUESTRARUBRO: TStringField
      FieldName = 'MUESTRARUBRO'
      ReadOnly = True
      Size = 50
    end
  end
  object DSCuentas: TDataSource
    DataSet = CDSCuentas
    Left = 288
    Top = 128
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
