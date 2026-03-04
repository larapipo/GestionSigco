object FormStockAlquiler: TFormStockAlquiler
  Left = 0
  Top = 0
  Caption = 'Stock de Alquiler'
  ClientHeight = 557
  ClientWidth = 987
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnHide = FormHide
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 13
  object dbgStockAlq: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 49
    Width = 981
    Height = 458
    Align = alClient
    BevelOuter = bvSpace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object dbgStockAlqDet: TcxGridDBTableView
      PopupMenu = ppmAlquileres
      OnKeyPress = FormKeyPress
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCellDblClick = dbgStockAlqDetCellDblClick
      OnCustomDrawCell = dbgStockAlqDetCustomDrawCell
      DataController.DataSource = DSStockAlquiler
      DataController.DetailKeyFieldNames = 'DISPONIBLE'
      DataController.KeyFieldNames = 'CODIGO_STK'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnSorting = False
      OptionsCustomize.DataRowSizing = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      object dbgStockAlqDetCODIGO_STK: TcxGridDBColumn
        Caption = 'Codigo/Nro de Serie'
        DataBinding.FieldName = 'CODIGO_STK'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Focusing = False
        Width = 133
      end
      object dbgStockAlqDetDETALLE_STK: TcxGridDBColumn
        Caption = 'Art'#237'culo'
        DataBinding.FieldName = 'DETALLE_STK'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Focusing = False
        Width = 338
      end
      object dbgStockAlqDetDISPONIBLE: TcxGridDBColumn
        DataBinding.FieldName = 'DISPONIBLE'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Focusing = False
        Width = 73
      end
      object dbgStockAlqDetENTREGADO_A: TcxGridDBColumn
        Caption = 'Reservado para/ Entregado a:'
        DataBinding.FieldName = 'NOMBRE'
        Options.Editing = False
        Options.Focusing = False
        Width = 182
      end
      object dbgStockAlqDetFECHAENTREGA: TcxGridDBColumn
        Caption = 'Fecha Entrega'
        DataBinding.FieldName = 'FECHA_ENTREGA'
        Options.Editing = False
        Options.Focusing = False
        Width = 110
      end
      object dbgStockAlqDetFECHA_DEVOLUCION: TcxGridDBColumn
        Caption = 'Fecha Devoluci'#243'n'
        DataBinding.FieldName = 'FECHA_DEVOLUCION'
      end
    end
    object dbgStockAlqLevel1: TcxGridLevel
      GridView = dbgStockAlqDet
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 987
    Height = 46
    Margins.Left = 0
    Margins.Right = 0
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = clMenuHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 10
      Width = 201
      Height = 29
      Caption = 'Stock de Alquiler'
    end
    object chDisponibles: TCheckBox
      Left = 617
      Top = 17
      Width = 129
      Height = 17
      Caption = 'Solo Disponibles'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = chDisponiblesClick
    end
    object edBuscar: TJvDBFindEdit
      Left = 242
      Top = 10
      Width = 353
      Height = 27
      BevelKind = bkSoft
      Caret.Gray = True
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = True
      TabOrder = 1
      Text = ''
      DataField = 'DETALLE_STK'
      DataSource = DSStockAlquiler
      FindStyle = fsFilter
      FindMode = fmAnyPos
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 510
    Width = 987
    Height = 47
    Margins.Left = 20
    Margins.Top = 5
    Margins.Right = 20
    Margins.Bottom = 5
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    Padding.Left = 20
    Padding.Top = 5
    Padding.Right = 20
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 2
    object btSalir: TBitBtn
      Left = 842
      Top = 5
      Width = 125
      Height = 37
      Align = alRight
      Anchors = []
      Caption = '&Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkClose
      Layout = blGlyphRight
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = btSalirClick
    end
    object btEntrega: TBitBtn
      Left = 592
      Top = 5
      Width = 125
      Height = 37
      Action = Entregar
      Align = alRight
      Anchors = []
      Caption = 'Entregar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000000101010103030303060606060A0A0A0A0F0F0F0F1313
        1313111111110909090903030303000000000000000000000000474746A51111
        11741515157E1616167D1717177E1B1B1B801F1F1F8223232385282828872A2A
        2A88262626861D1D1D82181818801515158013131378474746A56D6D6CF7A5A5
        A5FFA4A4A4FFA4A5A5FFA6A7A7FFA8A9A9FFA9AAAAFFABACACFFACADADFFA8A9
        A9FF6C6C6CFF7B7B7BFFA5A5A5FFA4A4A4FFA5A5A5FF6D6C6BF66F6F6DF8ACAB
        AAFFAFAFAEFFB0B0AFFFB1B1B1FFB4B4B3FFB4B4B3FFB4B4B3FFB4B4B3FF6F6F
        6FFF676767FFB0B0AFFFAFAFAEFFAEAEAEFFADACABFF6F6F6DF86E6E6CF7B5B5
        B3FFBBBAB9FFBBBAB9FFBDBCBBFFBFBEBEFFB8B7B6FF6E6E6EFF9A9999FF5E5D
        5DFFA3A2A2FFBDBCBBFFBBBAB9FFBBBAB9FFB4B3B2FF70706EF86F6F6DF8BEBE
        BCFFC3C3C2FFC3C3C2FFC5C5C4FFA9A9A8FF666666FF878787FF80807FFF6464
        64FFC1C1C0FFC4C4C3FFC3C3C2FFC3C3C2FFBEBEBDFF6F6F6DF86F6F6DF9C1C1
        BFFFC5C5C4FFC5C5C4FFC6C6C5FF6C6C6BFFB5B5B4FFC8C8C7FFC8C8C7FF9797
        97FF6F6F6EFFC5C5C4FFC4C4C3FFC5C5C4FFC1C1BFFF6F6F6DF970706EFAC2C2
        C1FFC6C6C5FFC5C5C4FFC0C0BFFF6C6C6BFFC8C8C7FFC8C8C7FFC8C8C7FFB9B9
        B8FF616161FFC6C6C5FFC5C5C4FFC6C6C5FFC2C1C1FF6F6F6DF970706EFAC6C4
        C4FFCAC9C9FFC9C8C8FFC9C8C8FF6A6969FFB8B7B7FFCACACAFFCACACAFF9C9B
        9BFF6B6B6BFFC9C8C8FFC9C8C8FFCAC9C9FFC5C4C3FF70706EFA727270FCCCCC
        CCFFD1D1D0FFD0D0CFFFD0D0CFFFB0B0AFFF6C6C6BFF929291FF878786FF7272
        71FFC5C5C4FFD0D0CFFFD0D0CFFFD1D1D0FFD0D0CFFF71716FFB727270FCC3C3
        C1FFC5C5C3FFC4C4C3FFC4C4C3FFC4C4C3FFBABAB9FF797978FF7E7E7DFFC2C2
        C1FFC4C4C3FFC4C4C3FFC4C4C3FFC4C4C3FFC7C7C5FF727270FC70706EFCE9E9
        E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
        E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FF70706EFB797979CD7373
        71FF737371FF737371FF737371FF737371FF737372FF747472FF747472FF7474
        72FF747472FF747472FF747472FF747472FF737371FFA4A4A4FF8A8A89FDE0E0
        E0FFC4C4C2FFC3C3C1FFC2C3C1FFC1C1C0FFC3C3C2FFC3C3C2FFC3C3C2FFC3C3
        C2FFC3C3C2FFC3C3C2FFC3C3C2FFC3C3C2FFC3C3C2FF818181FA6C6C6AF4E7E7
        E7FEDDDDDDFEDDDDDDFEDEDEDEFEDADADAFB6B6B69F26B6B69F16B6B69F16B6B
        69F16B6B69F16B6B69F16B6B69F16B6B69F16B6B69F100000000000000006A6A
        68F06A6A68F06A6A68F06A6A68F06A6A68F00000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentFont = False
      TabOrder = 1
    end
    object btDevolucion: TBitBtn
      Left = 717
      Top = 5
      Width = 125
      Height = 37
      Action = Devolver
      Align = alRight
      Anchors = []
      Caption = 'Devolver'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000474746A51111
        11741515157E1414147C1414147C1414147C1414147C1414147C1414147C1414
        147C1414147C1414147D1515147E1515158013131378474746A56D6D6CF7A5A5
        A5FFA4A4A4FFA3A4A4FFA3A4A4FFA3A4A4FFA3A4A4FFA3A4A4FFA3A4A4FFA3A4
        A4FFA3A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA5A5A5FF6D6C6BF66F6F6DF8ACAB
        AAFFAFAFAEFFAEAEADFFAEAEADFFAEAEADFFAEAEADFFCECECDFFCECECDFFAEAE
        ADFFAEAEADFFAEAEADFFAEAEADFFAEAEAEFFADACABFF6F6F6DF86E6E6CF7B5B5
        B3FFBBBAB9FFBAB9B8FFBAB9B8FFBAB9B8FFD7D6D6FF4A4A4AFF4A4A4AFFD2D1
        D0FFBAB9B8FFBAB9B8FFBAB9B8FFBBBAB9FFB4B3B2FF70706EF86F6F6DF8BEBE
        BCFFC3C3C2FFC2C2C1FFC2C2C1FFDCDCDBFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A
        4AFFD4D4D3FFC2C2C1FFC2C2C1FFC3C3C2FFBEBEBDFF6F6F6DF86F6F6DF9C1C1
        BFFFC5C5C4FFC4C4C3FFDDDDDCFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4A4A
        4AFF4A4A4AFFD5D5D4FFC4C4C3FFC5C5C4FFC1C1BFFF6F6F6DF970706EFAC2C2
        C1FFC6C6C5FFC5C5C4FFC5C5C4FFC5C5C4FFC5C5C4FF4A4A4AFF4A4A4AFFC5C5
        C4FFC5C5C4FFC5C5C4FFC5C5C4FFC6C6C5FFC2C1C1FF6F6F6DF970706EFAC6C4
        C4FFCAC9C9FFC9C8C8FFC9C8C8FFC9C8C8FFC9C8C8FF4A4A4AFF4A4A4AFFC9C8
        C8FFC9C8C8FFC9C8C8FFC9C8C8FFCAC9C9FFC5C4C3FF70706EFA727270FCCCCC
        CCFFD1D1D0FFD0D0CFFFD0D0CFFFD0D0CFFFD0D0CFFF4A4A4AFF4A4A4AFFD0D0
        CFFFD0D0CFFFD0D0CFFFD0D0CFFFD1D1D0FFD0D0CFFF71716FFB727270FCC3C3
        C1FFC5C5C3FFC4C4C3FFC4C4C3FFC4C4C3FFC4C4C3FFC4C4C3FFC4C4C3FFC4C4
        C3FFC4C4C3FFC4C4C3FFC4C4C3FFC4C4C3FFC7C7C5FF727270FC70706EFCE9E9
        E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
        E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FF70706EFB797979CD7373
        71FF737371FF737371FF737371FF737371FF737372FF747472FF747472FF7474
        72FF747472FF747472FF747472FF747472FF737371FFA4A4A4FF8A8A89FDE0E0
        E0FFC4C4C2FFC3C3C1FFC2C3C1FFC1C1C0FFC3C3C2FFC3C3C2FFC3C3C2FFC3C3
        C2FFC3C3C2FFC3C3C2FFC3C3C2FFC3C3C2FFC3C3C2FF818181FA6C6C6AF4E7E7
        E7FEDDDDDDFEDDDDDDFEDEDEDEFEDADADAFB6B6B69F26B6B69F16B6B69F16B6B
        69F16B6B69F16B6B69F16B6B69F16B6B69F16B6B69F100000000000000006A6A
        68F06A6A68F06A6A68F06A6A68F06A6A68F00000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentFont = False
      TabOrder = 2
    end
  end
  object DSStockAlquiler: TDataSource
    DataSet = CDSStockAlquiler
    Left = 880
    Top = 120
  end
  object ActionList1: TActionList
    Left = 864
    Top = 184
    object Remito: TAction
      Caption = 'Remito'
      OnExecute = RemitoExecute
    end
    object Entregar: TAction
      Caption = 'Entregar'
      OnExecute = EntregarExecute
    end
    object Devolver: TAction
      Caption = 'Devolver'
      OnExecute = DevolverExecute
    end
  end
  object QBuscaRto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(r.fechavta), r.id_cabrto as Id_Rto from rtodet r '
      'left join rtocab c on r.id_cabrto = c.id_rto'
      'where r.codigoarticulo=:codigo and'
      '      c.devolucion='#39'A'#39
      'group by r.id_cabrto')
    Left = 880
    Top = 352
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
  end
  object DSPStockAlquiler: TDataSetProvider
    DataSet = QStockAlquiler
    Options = []
    Left = 824
    Top = 96
  end
  object CDSStockAlquiler: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPStockAlquiler'
    BeforeOpen = CDSStockAlquilerBeforeOpen
    AfterClose = CDSStockAlquilerAfterClose
    AfterScroll = CDSStockAlquilerAfterScroll
    Left = 864
    Top = 232
    object CDSStockAlquilerCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSStockAlquilerDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSStockAlquilerDISPONIBLE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Disponible'
      FieldName = 'DISPONIBLE'
      Origin = 'DISPONIBLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockAlquilerid_rto: TIntegerField
      FieldKind = fkLookup
      FieldName = 'ID_RTO'
      LookupDataSet = QRtosAlq
      LookupKeyFields = 'CODIGOARTICULO'
      LookupResultField = 'ID_CABRTO'
      KeyFields = 'CODIGO_STK'
      Lookup = True
    end
    object CDSStockAlquilerFECHA_ENTREGA: TDateField
      FieldKind = fkLookup
      FieldName = 'FECHA_ENTREGA'
      LookupDataSet = QRtosAlq
      LookupKeyFields = 'CODIGOARTICULO'
      LookupResultField = 'FECHA_ENTREGA'
      KeyFields = 'CODIGO_STK'
      Lookup = True
    end
    object CDSStockAlquilerFECHA_DEVOLUCION: TDateTimeField
      FieldKind = fkLookup
      FieldName = 'FECHA_DEVOLUCION'
      LookupDataSet = QRtosAlq
      LookupKeyFields = 'CODIGOARTICULO'
      LookupResultField = 'FECHA_DEVOLUCION_ALQ'
      KeyFields = 'CODIGO_STK'
      Lookup = True
    end
    object CDSStockAlquilerNOMBRE: TStringField
      FieldKind = fkLookup
      FieldName = 'NOMBRE'
      LookupDataSet = QRtosAlq
      LookupKeyFields = 'CODIGOARTICULO'
      LookupResultField = 'NOMBRE'
      KeyFields = 'CODIGO_STK'
      Size = 45
      Lookup = True
    end
    object CDSStockAlquilerCODIGO: TStringField
      FieldKind = fkLookup
      FieldName = 'CODIGO'
      LookupDataSet = QRtosAlq
      LookupKeyFields = 'CODIGOARTICULO'
      LookupResultField = 'CODIGO'
      KeyFields = 'CODIGO_STK'
      Size = 8
      Lookup = True
    end
  end
  object ppmAlquileres: TPopupMenu
    OnPopup = ppmAlquileresPopup
    Left = 760
    Top = 280
    object pEntrega: TMenuItem
      Action = Entregar
    end
    object pDevolver: TMenuItem
      Action = Devolver
    end
  end
  object QStockAlquiler: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      '  select  s.codigo_stk, s.detalle_stk, s.disponible'
      '     from stock s  where (s.clase_articulo=9)')
    Left = 744
    Top = 112
    object QStockAlquilerCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QStockAlquilerDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object QStockAlquilerDISPONIBLE: TStringField
      FieldName = 'DISPONIBLE'
      Origin = 'DISPONIBLE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QRtosAlq: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        '  select d.codigoarticulo, max(d.id_cabrto) as id_cabrto, c.codi' +
        'go, c.nombre, c.fecha_entrega, c.fecha_devolucion_alq from rtode' +
        't d'
      '    left join rtocab c on d.id_cabrto=c.id_rto'
      '    where c.devolucion='#39'A'#39
      
        '    group by d.codigoarticulo, c.codigo, c.nombre, c.fecha_entre' +
        'ga, c.fecha_devolucion_alq')
    Left = 760
    Top = 184
    object QRtosAlqCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object QRtosAlqCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object QRtosAlqNOMBRE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QRtosAlqID_CABRTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CABRTO'
      Origin = 'ID_CABRTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRtosAlqFECHA_ENTREGA: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'FECHA_ENTREGA'
      Origin = 'FECHA_ENTREGA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRtosAlqFECHA_DEVOLUCION_ALQ: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'FECHA_DEVOLUCION_ALQ'
      Origin = 'FECHA_DEVOLUCION_ALQ'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
