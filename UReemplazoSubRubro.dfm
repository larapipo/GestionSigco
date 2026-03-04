object FormRemplazoSubRubro: TFormRemplazoSubRubro
  Left = 206
  Top = 212
  Caption = 'Reemplazo de Sub Rubro'
  ClientHeight = 429
  ClientWidth = 627
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 16
    Width = 505
    Height = 273
    Caption = 'Panel1'
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object JvGradient1: TJvGradient
      Left = 0
      Top = 225
      Width = 504
      Height = 41
      Align = alCustom
      Style = grVertical
      StartColor = clWhite
      EndColor = clGradientInactiveCaption
    end
    object Label1: TLabel
      Left = 16
      Top = 11
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
    object dbgSubRubros: TJvDBGrid
      Left = 17
      Top = 39
      Width = 473
      Height = 180
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
      Left = 334
      Top = 234
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
    object btAceptar: TBitBtn
      Left = 415
      Top = 234
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btAceptarClick
    end
    object dbcRubro: TJvDBLookupCombo
      Left = 112
      Top = 8
      Width = 265
      Height = 21
      LookupField = 'CODIGO_RUBRO'
      LookupDisplay = 'DETALLE_RUBRO'
      LookupSource = DSRubro
      TabOrder = 3
      OnClick = dbcRubroClick
    end
  end
  object DSSubRubro: TDataSource
    DataSet = CDSSubRubro
    Left = 400
    Top = 368
  end
  object DSPRSubRubro: TDataSetProvider
    DataSet = QSubRubro
    Left = 256
    Top = 368
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
    Left = 328
    Top = 368
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
  object DSRubro: TDataSource
    DataSet = CDSRubro
    Left = 424
    Top = 304
  end
  object DSPRubro: TDataSetProvider
    DataSet = QRubro
    Left = 256
    Top = 304
  end
  object CDSRubro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRubro'
    Left = 328
    Top = 304
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
      Size = 1
    end
  end
  object QRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select * from Rubros order by detalle_rubro')
    Left = 128
    Top = 296
  end
  object QSubRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select * from SubRubros where '
      'codigo_rubro=:rubro')
    Left = 128
    Top = 360
    ParamData = <
      item
        Position = 1
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end>
  end
end
