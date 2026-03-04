object FormBuscadorNotaVenta: TFormBuscadorNotaVenta
  Left = 287
  Top = 342
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Buscador Nota de Venta'
  ClientHeight = 443
  ClientWidth = 676
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pn1: TPanel
    Left = 0
    Top = 0
    Width = 676
    Height = 443
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pn1'
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 17
    ExplicitWidth = 635
    ExplicitHeight = 343
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 676
      Height = 47
      Align = alTop
      BevelOuter = bvNone
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 633
      DesignSize = (
        676
        47)
      object cbEstado: TJvComboBox
        Left = 469
        Top = 14
        Width = 189
        Height = 21
        Style = csDropDownList
        Anchors = [akRight, akBottom]
        EmptyValue = '*'
        EmptyFontColor = clDefault
        TabOrder = 0
        Text = ''
        OnClick = cbEstadoClick
        Items.Strings = (
          'Todas'
          'Nuevas            '
          'En Modo entrega   '
          'Cumplidas            '
          'Anuladas')
        ItemIndex = 0
      end
    end
    object pnPie: TPanel
      Left = 0
      Top = 366
      Width = 676
      Height = 54
      Align = alTop
      BevelOuter = bvNone
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 1
      ExplicitTop = 376
      DesignSize = (
        676
        54)
      object btOk: TBitBtn
        Left = 580
        Top = 19
        Width = 78
        Height = 25
        Anchors = [akRight, akBottom]
        Kind = bkOK
        NumGlyphs = 2
        TabOrder = 0
        OnClick = btOkClick
        ExplicitLeft = 567
        ExplicitTop = 6
      end
      object btCancel: TBitBtn
        Left = 496
        Top = 19
        Width = 78
        Height = 25
        Anchors = [akRight, akBottom]
        Kind = bkCancel
        NumGlyphs = 2
        TabOrder = 1
        OnClick = btCancelClick
        ExplicitTop = 6
      end
    end
    object dbgNotas: TJvDBGrid
      Left = 0
      Top = 47
      Width = 676
      Height = 319
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DSBuscadorNV
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgNotasDblClick
      TitleButtons = True
      OnTitleBtnClick = dbgNotasTitleBtnClick
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
    end
  end
  object CDSBuscadorNV: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'estado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'estado'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscadorNV'
    Left = 393
    Top = 187
    object CDSBuscadorNVFECHAPEDIDO: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHAPEDIDO'
      Origin = 'FECHAPEDIDO'
    end
    object CDSBuscadorNVNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      DisplayWidth = 12
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 8
    end
    object CDSBuscadorNVSUBNRO: TStringField
      DisplayLabel = 'Sub'
      DisplayWidth = 4
      FieldName = 'SUBNRO'
      Origin = 'SUBNRO'
      FixedChar = True
      Size = 2
    end
    object CDSBuscadorNVCODIGO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object CDSBuscadorNVNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 57
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSBuscadorNVID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
  end
  object DSPBuscadorNV: TDataSetProvider
    DataSet = QBuscadorNV
    Left = 249
    Top = 191
  end
  object DSBuscadorNV: TDataSource
    DataSet = CDSBuscadorNV
    Left = 494
    Top = 178
  end
  object actlst1: TActionList
    Left = 498
    Top = 96
    object Buscar: TAction
      Caption = 'Buscar'
      OnExecute = BuscarExecute
    end
  end
  object QBuscadorNV: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select n.nrocpbte,n.subnro,n.id,n.fechapedido,n.codigo,n.nombre ' +
        'from notaventacab n'
      'where ( n.estado = :estado or :estado = '#39'*'#39' )'
      'order by n.nrocpbte desc')
    Left = 113
    Top = 184
    ParamData = <
      item
        Position = 1
        Name = 'estado'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'estado'
        DataType = ftString
        ParamType = ptInput
      end>
  end
end
