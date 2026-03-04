object FormBuscadorCtaContable: TFormBuscadorCtaContable
  Left = 365
  Top = 102
  BorderStyle = bsSingle
  Caption = 'Buscador Cta.Contable'
  ClientHeight = 659
  ClientWidth = 749
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnBase: TPanel
    Left = 24
    Top = 8
    Width = 521
    Height = 529
    Color = clMenuHighlight
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    ParentBackground = False
    TabOrder = 0
    object dbgCtas: TJvDBGrid
      Left = 6
      Top = 6
      Width = 509
      Height = 403
      Align = alTop
      DataSource = DSCtas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgCtasDblClick
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 18
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 121
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRIPCION'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 279
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 6
      Top = 486
      Width = 509
      Height = 42
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      object btCancel: TBitBtn
        Left = 341
        Top = 7
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        Kind = bkCancel
        NumGlyphs = 2
        TabOrder = 0
        OnClick = btCancelClick
      end
      object btOk: TBitBtn
        Left = 425
        Top = 7
        Width = 75
        Height = 25
        Kind = bkOK
        NumGlyphs = 2
        TabOrder = 1
        OnClick = btOkClick
      end
    end
    object Panel2: TPanel
      Left = 6
      Top = 409
      Width = 509
      Height = 72
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 2
      object JvGradient1: TJvGradient
        Left = 0
        Top = 0
        Width = 509
        Height = 72
        Style = grVertical
        StartColor = clMenuHighlight
        EndColor = clWhite
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 507
        ExplicitHeight = 64
      end
      object chFiltro: TCheckBox
        Left = 15
        Top = 39
        Width = 105
        Height = 17
        Caption = 'Busqueda Filtrada'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = chFiltroClick
      end
      object edCodigo: TJvDBFindEdit
        Left = 8
        Top = 12
        Width = 114
        Height = 21
        Hint = 'Codigo'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = ''
        OnEnter = edCodigoEnter
        TextHint = 'Codigo'
        DataField = 'CODIGO'
        DataSource = DSCtas
      end
      object edDescripcion: TJvDBFindEdit
        Left = 128
        Top = 12
        Width = 369
        Height = 21
        Hint = 'Descripcion'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = ''
        OnEnter = edDescripcionEnter
        OnKeyDown = edDescripcionKeyDown
        TextHint = 'Descripcion'
        DataField = 'DESCRIPCION'
        DataSource = DSCtas
      end
    end
  end
  object CDSCtas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCtas'
    Left = 592
    Top = 392
    object CDSCtasID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCtasCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 15
    end
    object CDSCtasDESCRIPCION: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 40
    end
  end
  object DSPCtas: TDataSetProvider
    DataSet = DMContable.QBuscadorCtasCont
    Left = 592
    Top = 288
  end
  object DSCtas: TDataSource
    DataSet = CDSCtas
    Left = 584
    Top = 344
  end
end
