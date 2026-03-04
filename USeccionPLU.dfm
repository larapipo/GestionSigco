object FormSeccionPLU: TFormSeccionPLU
  Left = 0
  Top = 0
  Caption = 'Seeciones PLU'
  ClientHeight = 550
  ClientWidth = 349
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 321
    Height = 417
    TabOrder = 0
    object btAceptar: TBitBtn
      Left = 240
      Top = 376
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 159
      Top = 376
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
    object dbgSecciones: TJvDBGrid
      Left = 1
      Top = 1
      Width = 319
      Height = 360
      Align = alTop
      DataSource = DSSeccion
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnColEnter = dbgSeccionesColEnter
      OnEnter = dbgSeccionesEnter
      TitleButtons = True
      PostOnEnterKey = True
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'ID'
          Title.Alignment = taCenter
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Width = 200
          Visible = True
        end>
    end
  end
  object CDSSeccion: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSeccion'
    AfterPost = CDSSeccionAfterPost
    AfterDelete = CDSSeccionAfterDelete
    OnNewRecord = CDSSeccionNewRecord
    Left = 192
    Top = 272
    object CDSSeccionID: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'ID'
      Required = True
    end
    object CDSSeccionDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 15
    end
  end
  object DSPSeccion: TDataSetProvider
    DataSet = QSeccion
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 272
  end
  object DSSeccion: TDataSource
    DataSet = CDSSeccion
    Left = 248
    Top = 264
  end
  object QSeccion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from  PLU_SECCION ')
    Left = 72
    Top = 270
    object QSeccionID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QSeccionDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 15
    end
  end
  object QMaxID: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(id) from PLU_SECCION ')
    Left = 104
    Top = 454
  end
end
