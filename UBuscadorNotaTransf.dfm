object FormBuscadorNotaTransferencia: TFormBuscadorNotaTransferencia
  Left = 427
  Top = 210
  BorderIcons = [biSystemMenu]
  Caption = 'Buscador Nota Transferencia'
  ClientHeight = 449
  ClientWidth = 579
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
  TextHeight = 13
  object pn1: TPanel
    Left = 0
    Top = 0
    Width = 579
    Height = 449
    Align = alClient
    Caption = 'pn1'
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 522
    object pnCabecera: TPanel
      Left = 1
      Top = 1
      Width = 577
      Height = 47
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 520
      object Label1: TLabel
        Left = 16
        Top = 9
        Width = 237
        Height = 23
        Caption = 'Buscador de Notas de Tx'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cbEstado: TJvComboBox
        Left = 346
        Top = 14
        Width = 160
        Height = 21
        Style = csDropDownList
        EmptyValue = '*'
        EmptyFontColor = clDefault
        TabOrder = 0
        Text = ''
        OnChange = BuscarExecute
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
      Left = 1
      Top = 407
      Width = 577
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      ExplicitWidth = 520
      object btOk: TBitBtn
        Left = 394
        Top = 6
        Width = 75
        Height = 25
        Kind = bkOK
        NumGlyphs = 2
        TabOrder = 0
        OnClick = btOkClick
      end
      object btCancel: TBitBtn
        Left = 313
        Top = 6
        Width = 75
        Height = 25
        Kind = bkCancel
        NumGlyphs = 2
        TabOrder = 1
        OnClick = btCancelClick
      end
    end
    object dbgNotas: TJvDBGrid
      Left = 1
      Top = 48
      Width = 577
      Height = 359
      Align = alClient
      DataSource = DSBuscadorNT
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
  object CDSBuscadorNT: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'estado'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'estado'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPBuscadorNT'
    Left = 225
    Top = 155
    object CDSBuscadorNTNUMERO: TStringField
      DisplayLabel = 'Numero'
      DisplayWidth = 9
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object CDSBuscadorNTSUBNUMERO: TStringField
      DisplayLabel = 'Suf'
      DisplayWidth = 5
      FieldName = 'SUBNUMERO'
      Origin = 'SUBNUMERO'
      FixedChar = True
      Size = 2
    end
    object CDSBuscadorNTFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      DisplayWidth = 11
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSBuscadorNTDEP_DESTINO: TIntegerField
      DisplayLabel = 'Dep.'
      DisplayWidth = 12
      FieldName = 'DEP_DESTINO'
      Origin = 'DEP_DESTINO'
    end
    object CDSBuscadorNTNOMBRE: TStringField
      DisplayLabel = 'Deposito Destino'
      DisplayWidth = 37
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSBuscadorNTID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object DSPBuscadorNT: TDataSetProvider
    DataSet = QBuscadorNT
    Options = []
    Left = 313
    Top = 151
  end
  object DSBuscadorNT: TDataSource
    DataSet = CDSBuscadorNT
    Left = 406
    Top = 106
  end
  object actlst1: TActionList
    Left = 345
    Top = 73
    object Buscar: TAction
      Caption = 'Buscar'
      OnExecute = BuscarExecute
    end
  end
  object QBuscadorNT: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select n.numero,n.subnumero,n.id,n.fecha,n.dep_destino,d.nombre ' +
        'from nota_transf_cab n'
      'left join depositos d on d.id=n.dep_destino'
      'where ( n.estado = :estado or :estado = '#39'*'#39' )'
      'order by n.numero desc')
    Left = 129
    Top = 163
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
