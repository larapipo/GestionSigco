object FormCambioCodigoStock: TFormCambioCodigoStock
  Left = 268
  Top = 111
  BorderIcons = [biSystemMenu]
  Caption = 'Cambio Codigo de Articulo'
  ClientHeight = 572
  ClientWidth = 732
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
  OnResize = FormResize
  OnShow = FormShow
  DesignSize = (
    732
    572)
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 349
    Height = 209
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 93
      Height = 18
      Caption = 'Codigo Viejo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 191
      Top = 16
      Width = 103
      Height = 18
      Caption = 'Codigo Nuevo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object spDetalle: TSpeedButton
      Left = 306
      Top = 172
      Width = 23
      Height = 22
      Caption = '>>'
      OnClick = spDetalleClick
    end
    object lbDetalle: TLabel
      Left = 9
      Top = 80
      Width = 10
      Height = 13
      Caption = '--'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edCodigoOld: TEdit
      Left = 16
      Top = 40
      Width = 121
      Height = 27
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'edCodigoOld'
    end
    object edCodigoNew: TEdit
      Left = 191
      Top = 40
      Width = 121
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentFont = False
      TabOrder = 1
      Text = 'EDCODIGONEW'
      OnExit = edCodigoNewExit
      OnKeyPress = edCodigoNewKeyPress
    end
    object btOk: TBitBtn
      Left = 237
      Top = 136
      Width = 92
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnClick = btOkClick
    end
    object btCancelar: TBitBtn
      Left = 143
      Top = 136
      Width = 92
      Height = 30
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
    end
  end
  object pnCodigos: TPanel
    Left = 358
    Top = 8
    Width = 370
    Height = 560
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'pnCodigos'
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 1
    Visible = False
    object dbgStock: TJvDBGrid
      Left = 6
      Top = 6
      Width = 358
      Height = 548
      Align = alClient
      DataSource = DSCodigos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
    end
  end
  object DSCodigos: TDataSource
    DataSet = QCodigos
    Left = 600
    Top = 192
  end
  object QConsultaStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.codigo_stk'
      'from stock s'
      'where (s.codigo_stk=:codigo) '
      '')
    Left = 280
    Top = 240
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object QConsultaStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
  end
  object QCodigos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.codigo_stk,s.detalle_stk'
      'from stock s'
      'order by s.codigo_stk')
    Left = 534
    Top = 192
    object QCodigosCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QCodigosDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
  end
  object spCambioCodigo: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CAMBIO_CODIGO_STOCK'
    Left = 280
    Top = 288
    ParamData = <
      item
        Position = 1
        Name = 'CODIGOOLD'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 2
        Name = 'CODIGONEW'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
end
