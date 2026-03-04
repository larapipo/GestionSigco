object FormBuscadorSeries: TFormBuscadorSeries
  Left = 136
  Top = 577
  Caption = 'Buscador de Codigos de Serie'
  ClientHeight = 426
  ClientWidth = 745
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 745
    Height = 313
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 8
    object Label1: TLabel
      Left = 8
      Top = 5
      Width = 35
      Height = 13
      Caption = 'Articulo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edArticulo: TEdit
      Left = 95
      Top = 20
      Width = 321
      Height = 21
      Color = clInfoBk
      TabOrder = 1
    end
    object btCancelar: TBitBtn
      Left = 576
      Top = 264
      Width = 75
      Height = 25
      Action = Cancelar
      Cancel = True
      Caption = '&Cancelar'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      ModalResult = 2
      NumGlyphs = 2
      TabOrder = 2
    end
    object btAceptar: TBitBtn
      Left = 656
      Top = 264
      Width = 75
      Height = 25
      Action = Aceptar
      Caption = '&Aceptar'
      Glyph.Data = {
        F2010000424DF201000000000000760000002800000024000000130000000100
        0400000000007C01000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333333333388F3333333333000033334224333333333333338338F333333333
        0000333422224333333333333833338F33333333000033422222243333333333
        83333338F3333333000034222A22224333333338F33F33338F33333300003222
        A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
        38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
        2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
        0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
        333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
        33333A2224A2233333333338F338F83300003333333333A2224A333333333333
        8F338F33000033333333333A222433333333333338F338F30000333333333333
        A224333333333333338F38F300003333333333333A223333333333333338F8F3
        000033333333333333A3333333333333333383330000}
      ModalResult = 8
      NumGlyphs = 2
      TabOrder = 3
    end
    object ceCodigo: TJvComboEdit
      Left = 7
      Top = 20
      Width = 81
      Height = 21
      ButtonWidth = 16
      ClickKey = 16397
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000A000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFC000003300000033000000FFC00000}
      TabOrder = 0
      Text = ''
      OnButtonClick = BuscarArticuloExecute
    end
    object dbgSeries: TJvDBGrid
      Left = 3
      Top = 47
      Width = 738
      Height = 185
      DataSource = DSBuscadorSeires
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleButtons = True
      OnTitleBtnClick = dbgSeriesTitleBtnClick
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGOSERIE'
          Title.Alignment = taCenter
          Title.Color = clBlue
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 288
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHAINGRESO'
          Title.Alignment = taCenter
          Title.Color = clBlue
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPOCPBTE_INGRESO'
          Title.Alignment = taCenter
          Title.Color = clBlue
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 23
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_CPBTE_INGRESO'
          Title.Alignment = taCenter
          Title.Color = clBlue
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHAEGRESO'
          Title.Alignment = taCenter
          Title.Color = clBlue
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPOCPBTE_EGRESO'
          Title.Alignment = taCenter
          Title.Color = clBlue
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 24
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_CPBTE_EGRESO'
          Title.Alignment = taCenter
          Title.Color = clBlue
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 92
          Visible = True
        end>
    end
    object rgSeleccion: TAdvOfficeRadioGroup
      Left = 7
      Top = 234
      Width = 185
      Height = 75
      BorderColor = 12895944
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      Version = '1.8.4.2'
      Caption = 'Mostra los Nro de Serie'
      DisabledFontColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3881787
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBackground = False
      ParentCtl3D = True
      ParentFont = False
      TabOrder = 4
      OnClick = TraerSeiresExecute
      UIStyle = tsOffice2019White
      ItemIndex = 0
      Items.Strings = (
        'Los Dosponibles'
        'Los No Disponibles'
        'Todos')
      Ellipsis = False
    end
  end
  object DSBuscadorSeires: TDataSource
    DataSet = CDSBuscadorSerie
    Left = 376
    Top = 320
  end
  object ActionList1: TActionList
    Left = 488
    Top = 136
    object Aceptar: TAction
      Caption = '&Aceptar'
      OnExecute = AceptarExecute
    end
    object Cancelar: TAction
      Caption = '&Cancelar'
      OnExecute = CancelarExecute
    end
    object BuscarArticulo: TAction
      Caption = 'BuscarArticulo'
      OnExecute = BuscarArticuloExecute
    end
    object TraerSeires: TAction
      Caption = 'TraerSeires'
      OnExecute = TraerSeiresExecute
    end
  end
  object CDSBuscadorSerie: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscadorSerie'
    Left = 288
    Top = 320
    object CDSBuscadorSerieID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSBuscadorSerieCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Size = 8
    end
    object CDSBuscadorSerieCODIGOSERIE: TStringField
      DisplayLabel = 'Serie'
      FieldName = 'CODIGOSERIE'
      Origin = 'CODIGOSERIE'
      Size = 50
    end
    object CDSBuscadorSerieFECHAINGRESO: TSQLTimeStampField
      DisplayLabel = 'F.de Ingreso'
      FieldName = 'FECHAINGRESO'
      Origin = 'FECHAINGRESO'
    end
    object CDSBuscadorSerieFECHAEGRESO: TSQLTimeStampField
      DisplayLabel = 'F.de egreso'
      FieldName = 'FECHAEGRESO'
      Origin = 'FECHAEGRESO'
    end
    object CDSBuscadorSerieID_CPBTE_INGRESO: TIntegerField
      FieldName = 'ID_CPBTE_INGRESO'
      Origin = 'ID_CPBTE_INGRESO'
    end
    object CDSBuscadorSerieTIPOCPBTE_INGRESO: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE_INGRESO'
      Origin = 'TIPOCPBTE_INGRESO'
      Required = True
      Size = 2
    end
    object CDSBuscadorSerieCLASECPBTE_INGRESO: TStringField
      FieldName = 'CLASECPBTE_INGRESO'
      Origin = 'CLASECPBTE_INGRESO'
      Required = True
      Size = 2
    end
    object CDSBuscadorSerieNRO_CPBTE_INGRESO: TStringField
      DisplayLabel = 'Cpbt.Ingreso'
      FieldName = 'NRO_CPBTE_INGRESO'
      Origin = 'NRO_CPBTE_INGRESO'
      Size = 13
    end
    object CDSBuscadorSerieID_CPBTE_EGRESO: TIntegerField
      FieldName = 'ID_CPBTE_EGRESO'
      Origin = 'ID_CPBTE_EGRESO'
    end
    object CDSBuscadorSerieTIPOCPBTE_EGRESO: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE_EGRESO'
      Origin = 'TIPOCPBTE_EGRESO'
      Size = 2
    end
    object CDSBuscadorSerieCLASECPBTE_EGRESO: TStringField
      FieldName = 'CLASECPBTE_EGRESO'
      Origin = 'CLASECPBTE_EGRESO'
      Size = 2
    end
    object CDSBuscadorSerieNRO_CPBTE_EGRESO: TStringField
      DisplayLabel = 'Cpbt.Egreso'
      FieldName = 'NRO_CPBTE_EGRESO'
      Origin = 'NRO_CPBTE_EGRESO'
      Size = 13
    end
    object CDSBuscadorSerieDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object CDSBuscadorSerieOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 200
    end
    object CDSBuscadorSerieALTA_POR_VTA: TStringField
      FieldName = 'ALTA_POR_VTA'
      Origin = 'ALTA_POR_VTA'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPBuscadorSerie: TDataSetProvider
    DataSet = QBuscadorSerie
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 184
    Top = 320
  end
  object QBuscaArticulo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.detalle_stk from stock s'
      'where s.codigo_stk=:Codigo')
    Left = 496
    Top = 72
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object QBuscaArticuloDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
  end
  object QBuscadorSerie: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select ss.* from stock_series ss ')
    Left = 72
    Top = 320
  end
end
