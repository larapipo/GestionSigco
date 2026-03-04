object FormBuscadorSubRubroStock: TFormBuscadorSubRubroStock
  Left = 415
  Top = 129
  BorderIcons = [biSystemMenu]
  Caption = 'Buscador Sub-Rubros Articulos'
  ClientHeight = 560
  ClientWidth = 688
  Color = clBtnFace
  DefaultMonitor = dmDesktop
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
  object Panel1: TPanel
    Left = 0
    Top = 16
    Width = 505
    Height = 313
    Caption = 'Panel1'
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object JvGradient1: TJvGradient
      Left = 0
      Top = 274
      Width = 504
      Height = 32
      Align = alCustom
      Style = grVertical
      StartColor = clWhite
      EndColor = clGradientInactiveCaption
    end
    object Label1: TLabel
      Left = 16
      Top = 57
      Width = 83
      Height = 14
      Caption = 'Rubros Stock'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 11
      Width = 38
      Height = 13
      Caption = 'Codigo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 34
      Width = 60
      Height = 13
      Caption = 'Codigo Alt.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LCodigoAlt: TLabel
      Left = 96
      Top = 34
      Width = 84
      Height = 13
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '000000000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object LCodigo: TLabel
      Left = 96
      Top = 11
      Width = 84
      Height = 13
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '00000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object LDetalle: TLabel
      Left = 208
      Top = 6
      Width = 281
      Height = 41
      AutoSize = False
      Caption = 'Detalle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object dbgSubRubros: TJvDBGrid
      Left = 16
      Top = 110
      Width = 473
      Height = 155
      DataSource = DSSubRubro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgSubRubrosDblClick
      OnTitleClick = dbgSubRubrosTitleClick
      SortMarker = smDown
      TitleButtons = True
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_SUBRUBRO'
          Title.Alignment = taCenter
          Title.Caption = 'Codigo'
          Title.Color = clHotLight
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE_SUBRUBRO'
          Title.Alignment = taCenter
          Title.Caption = 'Detalle'
          Title.Color = clHotLight
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 373
          Visible = True
        end>
    end
    object btCancelar: TBitBtn
      Left = 333
      Top = 282
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btCancelarClick
    end
    object btAceptar: TBitBtn
      Left = 414
      Top = 282
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btAceptarClick
    end
    object dbcRubro: TJvDBLookupCombo
      Left = 16
      Top = 77
      Width = 297
      Height = 21
      DropDownCount = 15
      DropDownWidth = 300
      DisplayAllFields = True
      DisplayEmpty = 'Sin Seleccion'
      EmptyValue = '*****'
      EmptyItemColor = clScrollBar
      FieldsDelimiter = #0
      ListStyle = lsDelimited
      LookupField = 'CODIGO_RUBRO'
      LookupDisplay = 'Codigo_rubro;DETALLE_RUBRO'
      LookupSource = DSRubro
      TabOrder = 3
      OnClick = dbcRubroClick
    end
    object rgOrden: TRadioGroup
      Left = 319
      Top = 53
      Width = 98
      Height = 51
      Caption = 'Orden Por'
      ItemIndex = 0
      Items.Strings = (
        'Codigo'
        'Detalle')
      TabOrder = 4
      OnClick = rgOrdenClick
    end
  end
  object DSSubRubro: TDataSource
    DataSet = CDSSubRubro
    Left = 624
    Top = 408
  end
  object DSRubro: TDataSource
    DataSet = CDSRubro
    Left = 624
    Top = 344
  end
  object DSPRSubRubro: TDataSetProvider
    DataSet = QSubRubro
    Left = 480
    Top = 408
  end
  object CDSSubRubro: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPRSubRubro'
    Left = 552
    Top = 408
    object CDSSubRubroCODIGO_SUBRUBRO: TStringField
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 5
    end
    object CDSSubRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      Size = 3
    end
    object CDSSubRubroCONTROL_SUBRUBRO: TStringField
      FieldName = 'CONTROL_SUBRUBRO'
      Origin = 'CONTROL_SUBRUBRO'
      Size = 1
    end
    object CDSSubRubroDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Size = 45
    end
  end
  object DSPRubro: TDataSetProvider
    DataSet = QRubro
    Left = 488
    Top = 344
  end
  object CDSRubro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRubro'
    AfterOpen = CDSRubroAfterOpen
    Left = 560
    Top = 344
    object CDSRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CDSRubroDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
    object CDSRubroCONTROL_RUBRO: TStringField
      FieldName = 'CONTROL_RUBRO'
      Origin = 'CONTROL_RUBRO'
      Visible = False
      Size = 1
    end
  end
  object QRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select * from Rubros Order By Detalle_Rubro')
    Left = 432
    Top = 344
  end
  object QSubRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select * from SubRubros where '
      'codigo_rubro=:rubro')
    Left = 424
    Top = 408
    ParamData = <
      item
        Position = 1
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk, s.reemplazo_stk, s.detalle_stk from stock s' +
        ' where s.codigo_stk=:codigo')
    Left = 96
    Top = 344
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
  end
  object DSPStock: TDataSetProvider
    DataSet = QStock
    Left = 160
    Top = 344
  end
  object CDSStock: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPStock'
    Left = 224
    Top = 344
  end
  object DSStock: TDataSource
    DataSet = CDSStock
    Left = 288
    Top = 344
  end
end
