object FormBuscadorMarca: TFormBuscadorMarca
  Left = 233
  Top = 122
  Caption = 'Marcas'
  ClientHeight = 488
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 321
    Height = 417
    TabOrder = 0
    object btAceptar: TBitBtn
      Left = 240
      Top = 368
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btAceptarClick
    end
    object BitBtn2: TBitBtn
      Left = 152
      Top = 368
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object dbgMarcas: TJvDBGrid
      Left = 16
      Top = 16
      Width = 290
      Height = 346
      DataSource = DSMarcas
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgMarcasDblClick
      OnTitleClick = dbgMarcasTitleClick
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
          FieldName = 'MARCA_STK'
          Title.Alignment = taCenter
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRIPCION_MARCA'
          Title.Alignment = taCenter
          Width = 177
          Visible = True
        end>
    end
  end
  object CDSMarcas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMarcas'
    Left = 216
    Top = 280
    object CDSMarcasMARCA_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object CDSMarcasDESCRIPCION_MARCA: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'DESCRIPCION_MARCA'
      Origin = 'DESCRIPCION_MARCA'
      Size = 25
    end
  end
  object DSPMarcas: TDataSetProvider
    DataSet = QMarcas
    Left = 144
    Top = 280
  end
  object DSMarcas: TDataSource
    DataSet = CDSMarcas
    Left = 224
    Top = 224
  end
  object QMarcas: TFDQuery
    ObjectView = False
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from  marcas order by descripcion_marca')
    Left = 144
    Top = 224
  end
end
