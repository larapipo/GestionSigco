object FormBuscadorAcopios: TFormBuscadorAcopios
  Left = 294
  Top = 188
  BorderIcons = [biSystemMenu]
  Caption = 'Buscador de Acopios'
  ClientHeight = 552
  ClientWidth = 921
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object pn1: TPanel
    Left = 0
    Top = 0
    Width = 921
    Height = 552
    Align = alClient
    Caption = 'pn1'
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object pnCabecera: TPanel
      Left = 1
      Top = 1
      Width = 919
      Height = 64
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 18
        Width = 43
        Height = 14
        Caption = 'Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 143
        Top = 18
        Width = 43
        Height = 14
        Caption = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label3: TLabel
        Left = 16
        Top = 5
        Width = 59
        Height = 14
        Caption = 'Filtrar Por..'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cbEstado: TJvComboBox
        Left = 509
        Top = 37
        Width = 160
        Height = 21
        Style = csDropDownList
        EmptyValue = '*'
        EmptyFontColor = clDefault
        TabOrder = 0
        Text = ''
        OnChange = BuscarExecute
        Items.Strings = (
          'Todos '
          'Nuevos            '
          'Cumplidos')
      end
      object fedNumero: TJvDBFindEdit
        Left = 16
        Top = 37
        Width = 121
        Height = 21
        TabOrder = 1
        Text = ''
        DataField = 'NROCPBTE'
        DataSource = DSBuscador
        FindStyle = fsFilter
        FindMode = fmAnyPos
      end
      object fedNombre: TJvDBFindEdit
        Left = 143
        Top = 37
        Width = 322
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        Text = ''
        Visible = False
        OnKeyDown = fedNombreKeyDown
        DataField = 'NOMBRE'
        DataSource = DSBuscador
        FindStyle = fsFilter
        FindMode = fmAnyPos
      end
      object seAcopio: TDBAdvSearchEdit
        Left = 143
        Top = 37
        Width = 360
        Height = 21
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
            ControlFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 30
            DataField = 'ID'
          end
          item
            ControlFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 100
            DataField = 'NROCPBTE'
          end
          item
            ControlFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 60
            DataField = 'FECHA'
          end
          item
            ControlFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 60
            DataField = 'CLIENTE'
          end
          item
            ControlFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 200
            DataField = 'NOMBRE'
          end>
        DropDownHeader.Color = clWhite
        DropDownHeader.ColorTo = clNone
        DropDownHeader.Font.Charset = DEFAULT_CHARSET
        DropDownHeader.Font.Color = 6184542
        DropDownHeader.Font.Height = -11
        DropDownHeader.Font.Name = 'Tahoma'
        DropDownHeader.Font.Style = []
        DropDownHeader.Visible = True
        DropDownHeader.BorderColor = 11250603
        DropDownHeader.BorderWidth = 0
        DropDownHeader.Buttons = <>
        DropDownFooter.Color = clWhite
        DropDownFooter.ColorTo = clNone
        DropDownFooter.Font.Charset = DEFAULT_CHARSET
        DropDownFooter.Font.Color = 6184542
        DropDownFooter.Font.Height = -11
        DropDownFooter.Font.Name = 'Tahoma'
        DropDownFooter.Font.Style = []
        DropDownFooter.Visible = True
        DropDownFooter.BorderColor = 11250603
        DropDownFooter.BorderWidth = 0
        DropDownFooter.Buttons = <>
        DropDownShadow = True
        DropDownWidth = 550
        EmptyText = 'Search ...'
        EmptyTextFocused = True
        FilterCondition.AllColumns = True
        FilterCondition.AutoSelect = True
        FocusFontColor = clBlack
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
        TabOrder = 3
        Text = ''
        Version = '1.1.6.0'
        OnSelect = seAcopioSelect
        OnEnter = seAcopioEnter
        DropDownColor = clBlack
        ListSource = DSBuscador
      end
    end
    object pnPie: TPanel
      Left = 1
      Top = 510
      Width = 919
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      object btOk: TBitBtn
        Left = 818
        Top = 6
        Width = 75
        Height = 25
        Kind = bkOK
        NumGlyphs = 2
        TabOrder = 0
        OnClick = btOkClick
      end
      object btCancel: TBitBtn
        Left = 737
        Top = 6
        Width = 75
        Height = 25
        Kind = bkCancel
        NumGlyphs = 2
        TabOrder = 1
        OnClick = btCancelClick
      end
    end
    object dbgRtos: TJvDBGrid
      Left = 1
      Top = 65
      Width = 919
      Height = 445
      Align = alClient
      DataSource = DSBuscador
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgRtosDblClick
      TitleButtons = True
      OnTitleBtnClick = dbgRtosTitleBtnClick
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'NROCPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 260
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DIRECCION'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 229
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUMPLIDO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object ActionList1: TActionList
    Left = 376
    Top = 136
    object Buscar: TAction
      Caption = 'Buscar'
      OnExecute = BuscarExecute
    end
  end
  object DSBuscador: TDataSource
    DataSet = CDSBuscador
    Left = 408
    Top = 200
  end
  object QBuscador_: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cab.* from merca_enacopio_cab cab '
      'where cab.cumplido= :cumplido or :cumplido = '#39'*'#39)
    Left = 128
    Top = 224
    ParamData = <
      item
        Position = 1
        Name = 'cumplido'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'cumplido'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object JvFormStorage1: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    StoredValues = <>
    Left = 364
    Top = 304
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    SubStorages = <>
    Left = 284
    Top = 296
  end
  object CDSBuscador: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'cumplido'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cumplido'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscador'
    Left = 296
    Top = 216
    object CDSBuscadorNROCPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object CDSBuscadorFECHA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSBuscadorCLIENTE: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 6
    end
    object CDSBuscadorNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSBuscadorDIRECCION: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object CDSBuscadorCUMPLIDO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Cumplido'
      FieldName = 'CUMPLIDO'
      Origin = 'CUMPLIDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscadorID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSBuscadorCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Visible = False
      Size = 8
    end
    object CDSBuscadorLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Visible = False
      Size = 15
    end
    object CDSBuscadorID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Origin = 'ID_FACTURA'
      Required = True
      Visible = False
    end
    object CDSBuscadorOBS1: TStringField
      FieldName = 'OBS1'
      Origin = 'OBS1'
      Visible = False
      Size = 60
    end
    object CDSBuscadorOBS2: TStringField
      FieldName = 'OBS2'
      Origin = 'OBS2'
      Visible = False
      Size = 60
    end
  end
  object DSPBuscador: TDataSetProvider
    DataSet = QBuscador_
    Left = 216
    Top = 224
  end
end
