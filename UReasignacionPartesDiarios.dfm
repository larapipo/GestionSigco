object FormReasignacionPartesDiarios: TFormReasignacionPartesDiarios
  Left = 0
  Top = 0
  Caption = 'Reasignacion de Partes Diarios'
  ClientHeight = 784
  ClientWidth = 1453
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 1453
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      1453
      41)
    object lbTitulo2: TLabel
      Left = 624
      Top = 10
      Width = 276
      Height = 25
      Caption = 'Ordenes de Produccion Activas'
    end
    object lbTitulo1: TLabel
      Left = 144
      Top = 10
      Width = 234
      Height = 25
      Caption = 'Movimientos Para Asignar'
    end
    object lbFiltro: TLabel
      Left = 1038
      Top = 15
      Width = 57
      Height = 16
      Anchors = [akTop, akRight]
      Caption = 'Filtrar Por'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 1011
    end
    object dbBuscadorCliente: TDBAdvSearchEdit
      Left = 1105
      Top = 11
      Width = 323
      Height = 24
      Anchors = [akTop, akRight]
      Appearance.CategoryFont.Charset = DEFAULT_CHARSET
      Appearance.CategoryFont.Color = clWindowText
      Appearance.CategoryFont.Height = -12
      Appearance.CategoryFont.Name = 'Segoe UI'
      Appearance.CategoryFont.Style = []
      Appearance.DescriptionFont.Charset = DEFAULT_CHARSET
      Appearance.DescriptionFont.Color = clWindowText
      Appearance.DescriptionFont.Height = -12
      Appearance.DescriptionFont.Name = 'Segoe UI'
      Appearance.DescriptionFont.Style = []
      Appearance.SelectionColor = 15914434
      Appearance.SelectionTextColor = 3881787
      Appearance.FilterCountFont.Charset = DEFAULT_CHARSET
      Appearance.FilterCountFont.Color = clWindowText
      Appearance.FilterCountFont.Height = -12
      Appearance.FilterCountFont.Name = 'Segoe UI'
      Appearance.FilterCountFont.Style = []
      Appearance.FilterCountFormat = '(%d)'
      Appearance.ItemCategoryFont.Charset = DEFAULT_CHARSET
      Appearance.ItemCategoryFont.Color = clOrange
      Appearance.ItemCategoryFont.Height = -12
      Appearance.ItemCategoryFont.Name = 'Segoe UI'
      Appearance.ItemCategoryFont.Style = []
      Appearance.ItemCategoryFormat = 'in %s'
      BorderColor = 10724259
      Categories = <>
      CategoryButton.Appearance.BorderColor = 11382963
      CategoryButton.Appearance.BorderColorHot = 11565130
      CategoryButton.Appearance.BorderColorCheckedHot = 11565130
      CategoryButton.Appearance.BorderColorDown = 11565130
      CategoryButton.Appearance.BorderColorChecked = 13744549
      CategoryButton.Appearance.BorderColorDisabled = 13948116
      CategoryButton.Appearance.Color = clWhite
      CategoryButton.Appearance.ColorTo = clWhite
      CategoryButton.Appearance.ColorChecked = 13744549
      CategoryButton.Appearance.ColorCheckedTo = 13744549
      CategoryButton.Appearance.ColorDisabled = clWhite
      CategoryButton.Appearance.ColorDisabledTo = clNone
      CategoryButton.Appearance.ColorDown = 11565130
      CategoryButton.Appearance.ColorDownTo = 11565130
      CategoryButton.Appearance.ColorHot = 16444643
      CategoryButton.Appearance.ColorHotTo = 16444643
      CategoryButton.Appearance.ColorMirror = clWhite
      CategoryButton.Appearance.ColorMirrorTo = clWhite
      CategoryButton.Appearance.ColorMirrorHot = 16444643
      CategoryButton.Appearance.ColorMirrorHotTo = 16444643
      CategoryButton.Appearance.ColorMirrorDown = 11565130
      CategoryButton.Appearance.ColorMirrorDownTo = 11565130
      CategoryButton.Appearance.ColorMirrorChecked = 13744549
      CategoryButton.Appearance.ColorMirrorCheckedTo = 13744549
      CategoryButton.Appearance.ColorMirrorDisabled = clWhite
      CategoryButton.Appearance.ColorMirrorDisabledTo = clNone
      CategoryButton.Appearance.GradientHot = ggVertical
      CategoryButton.Appearance.GradientMirrorHot = ggVertical
      CategoryButton.Appearance.GradientDown = ggVertical
      CategoryButton.Appearance.GradientMirrorDown = ggVertical
      CategoryButton.Appearance.GradientChecked = ggVertical
      CategoryButton.Appearance.TextColorChecked = 3750459
      CategoryButton.Appearance.TextColorDown = 2303013
      CategoryButton.Appearance.TextColorHot = 2303013
      CategoryButton.Appearance.TextColorDisabled = 13948116
      CategoryButton.Visible = False
      Columns = <
        item
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Width = 350
          DataField = 'NOMBRE'
        end
        item
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Width = 100
          DataField = 'CLIENTE'
        end>
      DropDownHeader.Color = clWhite
      DropDownHeader.ColorTo = clNone
      DropDownHeader.Font.Charset = DEFAULT_CHARSET
      DropDownHeader.Font.Color = 6184542
      DropDownHeader.Font.Height = -11
      DropDownHeader.Font.Name = 'Segoe UI'
      DropDownHeader.Font.Style = [fsBold]
      DropDownHeader.Visible = True
      DropDownHeader.BorderColor = 11250603
      DropDownHeader.BorderWidth = 0
      DropDownHeader.Buttons = <
        item
          Caption = 'Nombre'
          Width = 200
        end
        item
          Caption = 'Codigo'
          Width = 100
        end>
      DropDownHeader.ButtonAlignment = baLeft
      DropDownHeight = 350
      DropDownFooter.Color = clWhite
      DropDownFooter.ColorTo = clNone
      DropDownFooter.Font.Charset = DEFAULT_CHARSET
      DropDownFooter.Font.Color = 6184542
      DropDownFooter.Font.Height = -11
      DropDownFooter.Font.Name = 'Segoe UI'
      DropDownFooter.Font.Style = []
      DropDownFooter.Visible = True
      DropDownFooter.BorderColor = 11250603
      DropDownFooter.BorderWidth = 0
      DropDownFooter.Buttons = <>
      DropDownShadow = True
      DropDownWidth = 450
      EmptyText = 'Cliente ....'
      EmptyTextFocused = True
      FilterCondition.AutoSelect = True
      FocusFontColor = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 20
      Items = <>
      ParentFont = False
      SearchButton.Appearance.BorderColor = 11382963
      SearchButton.Appearance.BorderColorHot = 11565130
      SearchButton.Appearance.BorderColorCheckedHot = 11565130
      SearchButton.Appearance.BorderColorDown = 11565130
      SearchButton.Appearance.BorderColorChecked = 13744549
      SearchButton.Appearance.BorderColorDisabled = 13948116
      SearchButton.Appearance.Color = clWhite
      SearchButton.Appearance.ColorTo = clWhite
      SearchButton.Appearance.ColorChecked = 13744549
      SearchButton.Appearance.ColorCheckedTo = 13744549
      SearchButton.Appearance.ColorDisabled = clWhite
      SearchButton.Appearance.ColorDisabledTo = clNone
      SearchButton.Appearance.ColorDown = 11565130
      SearchButton.Appearance.ColorDownTo = 11565130
      SearchButton.Appearance.ColorHot = 16444643
      SearchButton.Appearance.ColorHotTo = 16444643
      SearchButton.Appearance.ColorMirror = clWhite
      SearchButton.Appearance.ColorMirrorTo = clWhite
      SearchButton.Appearance.ColorMirrorHot = 16444643
      SearchButton.Appearance.ColorMirrorHotTo = 16444643
      SearchButton.Appearance.ColorMirrorDown = 11565130
      SearchButton.Appearance.ColorMirrorDownTo = 11565130
      SearchButton.Appearance.ColorMirrorChecked = 13744549
      SearchButton.Appearance.ColorMirrorCheckedTo = 13744549
      SearchButton.Appearance.ColorMirrorDisabled = clWhite
      SearchButton.Appearance.ColorMirrorDisabledTo = clNone
      SearchButton.Appearance.GradientHot = ggVertical
      SearchButton.Appearance.GradientMirrorHot = ggVertical
      SearchButton.Appearance.GradientDown = ggVertical
      SearchButton.Appearance.GradientMirrorDown = ggVertical
      SearchButton.Appearance.GradientChecked = ggVertical
      SearchButton.Appearance.TextColorChecked = 3750459
      SearchButton.Appearance.TextColorDown = 2303013
      SearchButton.Appearance.TextColorHot = 2303013
      SearchButton.Appearance.TextColorDisabled = 13948116
      SearchButton.Visible = False
      TabOrder = 0
      Text = ''
      Version = '1.1.6.0'
      OnSelect = dbBuscadorClienteSelect
      OnKeyPress = dbBuscadorClienteKeyPress
      DropDownColor = clBlack
      ListSource = DSClientes
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 743
    Width = 1453
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      1453
      41)
    object lbLevel: TLabel
      Left = 20
      Top = 13
      Width = 30
      Height = 15
      Caption = 'Level:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbItem: TLabel
      Left = 604
      Top = 13
      Width = 27
      Height = 15
      Caption = 'Item:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 1224
      Top = 6
      Width = 163
      Height = 25
      Action = BuscarOP
      Anchors = [akTop, akRight]
      TabOrder = 0
    end
  end
  object pnBase: TPanel
    Left = 0
    Top = 41
    Width = 1453
    Height = 702
    Align = alClient
    TabOrder = 2
    object Splitter1: TSplitter
      Left = 590
      Top = 1
      Width = 5
      Height = 700
      ExplicitLeft = 580
      ExplicitHeight = 758
    end
    object pnIzq: TPanel
      Left = 1
      Top = 1
      Width = 589
      Height = 700
      Align = alLeft
      TabOrder = 0
      object tvMovimientos: TTreeView
        Left = 1
        Top = 1
        Width = 587
        Height = 531
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        DragMode = dmAutomatic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Indent = 19
        ParentFont = False
        RowSelect = True
        TabOrder = 0
      end
    end
    object pnDer: TPanel
      Left = 595
      Top = 1
      Width = 857
      Height = 700
      Align = alClient
      TabOrder = 1
      object tvOrdenes: TTreeView
        Left = 1
        Top = 1
        Width = 855
        Height = 698
        ParentCustomHint = False
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        DragMode = dmAutomatic
        HotTrack = True
        Images = ImageList1
        Indent = 26
        MultiSelectStyle = [msControlSelect, msShiftSelect]
        ParentShowHint = False
        RowSelect = True
        ShowHint = False
        TabOrder = 0
        OnClick = tvOrdenesClick
        OnCustomDrawItem = tvOrdenesCustomDrawItem
        OnDblClick = tvOrdenesDblClick
        OnDragDrop = tvOrdenesDragDrop
        OnDragOver = tvOrdenesDragOver
        OnKeyDown = tvOrdenesKeyDown
      end
    end
  end
  object DSPartesDiarios: TDataSource
    DataSet = QPartesDiarios
    Left = 184
    Top = 104
  end
  object QPartesDiarios: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'SELECT d.*, sd.CODIGO AS ARTICULO_CODIGO, sd.DETALLE AS ARTICULO' +
        '_DESCRIPCION FROM ORDENPRODUCCION_DIARIO d'
      '  JOIN ORDENPRODUCCION_SUB_DET sd ON d.ID_SUBDET_PROD = sd.ID'
      '  JOIN ORDENPRODUCCION_DET det    ON sd.ID_DET_OP = det.ID'
      'WHERE det.ID_OPCAB = :ID_op'
      'order by sd.codigo')
    Left = 80
    Top = 112
    ParamData = <
      item
        Name = 'ID_OP'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QPartesDiariosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPartesDiariosID_SUBDET_PROD: TIntegerField
      FieldName = 'ID_SUBDET_PROD'
      Origin = 'ID_SUBDET_PROD'
    end
    object QPartesDiariosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QPartesDiariosNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QPartesDiariosTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = 'TURNO'
    end
    object QPartesDiariosTIPO_MATERIAL: TIntegerField
      FieldName = 'TIPO_MATERIAL'
      Origin = 'TIPO_MATERIAL'
    end
    object QPartesDiariosESTACION: TIntegerField
      FieldName = 'ESTACION'
      Origin = 'ESTACION'
    end
    object QPartesDiariosCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QPartesDiariosOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      Size = 300
    end
    object QPartesDiariosNRORTO: TStringField
      FieldName = 'NRORTO'
      Origin = 'NRORTO'
      Size = 13
    end
    object QPartesDiariosID_AJUSTE_STOCK: TIntegerField
      FieldName = 'ID_AJUSTE_STOCK'
      Origin = 'ID_AJUSTE_STOCK'
      Required = True
    end
    object QPartesDiariosMODO_TRAZABILIDAD: TStringField
      FieldName = 'MODO_TRAZABILIDAD'
      Origin = 'MODO_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPartesDiariosNRO_LOTE: TStringField
      FieldName = 'NRO_LOTE'
      Origin = 'NRO_LOTE'
      Size = 15
    end
    object QPartesDiariosID_DET_PARTE_DIARIO: TIntegerField
      FieldName = 'ID_DET_PARTE_DIARIO'
      Origin = 'ID_DET_PARTE_DIARIO'
      Required = True
    end
    object QPartesDiariosARTICULO_CODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ARTICULO_CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object QPartesDiariosARTICULO_DESCRIPCION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ARTICULO_DESCRIPCION'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
  end
  object QSearch: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.*,d.id_opcab as MuestraID_CAB,d.id as MuestraID_DET,cl.' +
        'nombre  from ordenproduccion_sub_det s'
      'left join ordenproduccion_det d on d.id=s.id_det_op'
      'left join ordenproduccion_cab c on c.id=d.id_opcab'
      'left join clientes cl on cl.codigo=c.cliente'
      'where s.estado='#39'P'#39
      'order by s.nrocpbte desc,s.id asc')
    Left = 384
    Top = 96
    object QSearchID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QSearchID_DET_OP: TIntegerField
      FieldName = 'ID_DET_OP'
      Origin = 'ID_DET_OP'
      Required = True
    end
    object QSearchCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QSearchDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QSearchCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00'
    end
    object QSearchCANTIDAD_SALDO: TFloatField
      FieldName = 'CANTIDAD_SALDO'
      Origin = 'CANTIDAD_SALDO'
      Required = True
      DisplayFormat = ',0.00'
    end
    object QSearchFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QSearchTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QSearchCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QSearchNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object QSearchESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object QSearchFECHAINICO: TSQLTimeStampField
      FieldName = 'FECHAINICO'
      Origin = 'FECHAINICO'
    end
    object QSearchFECHAFINAL: TSQLTimeStampField
      FieldName = 'FECHAFINAL'
      Origin = 'FECHAFINAL'
    end
    object QSearchESTACION: TIntegerField
      FieldName = 'ESTACION'
      Origin = 'ESTACION'
      Required = True
    end
    object QSearchKEY_ESTACION: TStringField
      FieldName = 'KEY_ESTACION'
      Origin = 'KEY_ESTACION'
      Required = True
      Size = 40
    end
    object QSearchMUESTRAID_CAB: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAID_CAB'
      Origin = 'ID_OPCAB'
      ProviderFlags = []
      ReadOnly = True
    end
    object QSearchMUESTRAID_DET: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAID_DET'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object QSearchNOMBRE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
  end
  object DSSearch: TDataSource
    DataSet = QSearch
    Left = 496
    Top = 96
  end
  object QProdCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id,c.fecha_iniciada,c.fecha_incio_prod, c.nrocpbte,c.cl' +
        'iente,cl.nombre from ordenproduccion_cab c'
      'left join clientes cl on cl.codigo=c.cliente'
      'where c.estado='#39'P'#39' and c.cliente<>'#39#39)
    Left = 241
    Top = 378
    object QProdCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QProdCabFECHA_INICIADA: TSQLTimeStampField
      FieldName = 'FECHA_INICIADA'
      Origin = 'FECHA_INICIADA'
      Required = True
    end
    object QProdCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QProdCabCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object QProdCabFECHA_INCIO_PROD: TSQLTimeStampField
      FieldName = 'FECHA_INCIO_PROD'
      Origin = 'FECHA_INCIO_PROD'
    end
    object QProdCabNOMBRE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
  end
  object QProdDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.* from ordenproduccion_det d where d.id_opcab=:id')
    Left = 337
    Top = 314
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QProdDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QProdDetID_OPCAB: TIntegerField
      FieldName = 'ID_OPCAB'
      Origin = 'ID_OPCAB'
      Required = True
    end
    object QProdDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QProdDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QProdDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QProdDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QProdDetDEPOSITO_DESTINO: TIntegerField
      FieldName = 'DEPOSITO_DESTINO'
      Origin = 'DEPOSITO_DESTINO'
      Required = True
    end
    object QProdDetSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QProdDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QProdDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QProdDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QProdDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object QProdDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      Size = 1
    end
    object QProdDetESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object QProdDetCOSTO: TFloatField
      FieldName = 'COSTO'
      Origin = 'COSTO'
    end
    object QProdDetEN_PLANIFICACION: TStringField
      FieldName = 'EN_PLANIFICACION'
      Origin = 'EN_PLANIFICACION'
      FixedChar = True
      Size = 1
    end
    object QProdDetFECHA_ENTREGA: TSQLTimeStampField
      FieldName = 'FECHA_ENTREGA'
      Origin = 'FECHA_ENTREGA'
    end
    object QProdDetESPECIFICACION: TStringField
      FieldName = 'ESPECIFICACION'
      Origin = 'ESPECIFICACION'
      Size = 45
    end
    object QProdDetPARTICION: TStringField
      FieldName = 'PARTICION'
      Origin = 'PARTICION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QProdDetID_PRESU_CAB: TIntegerField
      FieldName = 'ID_PRESU_CAB'
      Origin = 'ID_PRESU_CAB'
      Required = True
    end
    object QProdDetID_PRESU_DET: TIntegerField
      FieldName = 'ID_PRESU_DET'
      Origin = 'ID_PRESU_DET'
      Required = True
    end
    object QProdDetFECHA_INIC_PRODUCC: TSQLTimeStampField
      FieldName = 'FECHA_INIC_PRODUCC'
      Origin = 'FECHA_INIC_PRODUCC'
    end
    object QProdDetITEM_DETALLE: TStringField
      FieldName = 'ITEM_DETALLE'
      Origin = 'ITEM_DETALLE'
      Size = 50
    end
    object QProdDetCANT_ENTREGADA: TFloatField
      FieldName = 'CANT_ENTREGADA'
      Origin = 'CANT_ENTREGADA'
      Required = True
    end
    object QProdDetP_VOLUMEN: TFloatField
      FieldName = 'P_VOLUMEN'
      Origin = 'P_VOLUMEN'
      Required = True
    end
    object QProdDetP_PATS: TFloatField
      FieldName = 'P_PATS'
      Origin = 'P_PATS'
      Required = True
    end
    object QProdDetP_AROS: TFloatField
      FieldName = 'P_AROS'
      Origin = 'P_AROS'
      Required = True
    end
    object QProdDetP_TRENZA: TFloatField
      FieldName = 'P_TRENZA'
      Origin = 'P_TRENZA'
      Required = True
    end
    object QProdDetP_CANIOS: TFloatField
      FieldName = 'P_CANIOS'
      Origin = 'P_CANIOS'
      Required = True
    end
    object QProdDetP_ARMADURA: TFloatField
      FieldName = 'P_ARMADURA'
      Origin = 'P_ARMADURA'
      Required = True
    end
  end
  object ActionList1: TActionList
    Left = 913
    Top = 322
    object BuscarOP: TAction
      Caption = 'Buscar Ordenes'
      OnExecute = BuscarOPExecute
    end
    object SeleccionaItem: TAction
      Caption = 'SeleccionaItem'
    end
    object RecuperarAsignaciones: TAction
      Caption = 'RecuperarAsignaciones'
      OnExecute = RecuperarAsignacionesExecute
    end
  end
  object QProdSub: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.* from ordenproduccion_sub_det d '
      'where d.id_det_op=:id_det')
    Left = 337
    Top = 434
    ParamData = <
      item
        Name = 'ID_DET'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QProdSubID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QProdSubID_DET_OP: TIntegerField
      FieldName = 'ID_DET_OP'
      Origin = 'ID_DET_OP'
      Required = True
    end
    object QProdSubCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QProdSubDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QProdSubCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QProdSubCANTIDAD_SALDO: TFloatField
      FieldName = 'CANTIDAD_SALDO'
      Origin = 'CANTIDAD_SALDO'
      Required = True
    end
    object QProdSubFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QProdSubTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QProdSubCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QProdSubNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object QProdSubESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object QProdSubFECHAINICO: TSQLTimeStampField
      FieldName = 'FECHAINICO'
      Origin = 'FECHAINICO'
    end
    object QProdSubFECHAFINAL: TSQLTimeStampField
      FieldName = 'FECHAFINAL'
      Origin = 'FECHAFINAL'
    end
    object QProdSubESTACION: TIntegerField
      FieldName = 'ESTACION'
      Origin = 'ESTACION'
      Required = True
    end
    object QProdSubKEY_ESTACION: TStringField
      FieldName = 'KEY_ESTACION'
      Origin = 'KEY_ESTACION'
      Required = True
      Size = 40
    end
  end
  object QProdDia: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select d.*,t.id as Muestra_IdTroquel,t.nro_troquel,t.codigo from' +
        ' ordenproduccion_diario d '
      'left join troqueles t on t.id_produ_diario= d.id'
      'where d.id_subdet_prod=:id_det')
    Left = 425
    Top = 498
    ParamData = <
      item
        Name = 'ID_DET'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QProdDiaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QProdDiaID_SUBDET_PROD: TIntegerField
      FieldName = 'ID_SUBDET_PROD'
      Origin = 'ID_SUBDET_PROD'
    end
    object QProdDiaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QProdDiaNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QProdDiaTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = 'TURNO'
    end
    object QProdDiaTIPO_MATERIAL: TIntegerField
      FieldName = 'TIPO_MATERIAL'
      Origin = 'TIPO_MATERIAL'
    end
    object QProdDiaESTACION: TIntegerField
      FieldName = 'ESTACION'
      Origin = 'ESTACION'
    end
    object QProdDiaCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QProdDiaNRORTO: TStringField
      FieldName = 'NRORTO'
      Origin = 'NRORTO'
      Size = 13
    end
    object QProdDiaID_AJUSTE_STOCK: TIntegerField
      FieldName = 'ID_AJUSTE_STOCK'
      Origin = 'ID_AJUSTE_STOCK'
      Required = True
    end
    object QProdDiaMODO_TRAZABILIDAD: TStringField
      FieldName = 'MODO_TRAZABILIDAD'
      Origin = 'MODO_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QProdDiaNRO_LOTE: TStringField
      FieldName = 'NRO_LOTE'
      Origin = 'NRO_LOTE'
      Size = 15
    end
    object QProdDiaID_DET_PARTE_DIARIO: TIntegerField
      FieldName = 'ID_DET_PARTE_DIARIO'
      Origin = 'ID_DET_PARTE_DIARIO'
      Required = True
    end
    object QProdDiaOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      Size = 300
    end
    object QProdDiaMUESTRA_IDTROQUEL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRA_IDTROQUEL'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object QProdDiaNRO_TROQUEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NRO_TROQUEL'
      Origin = 'NRO_TROQUEL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QProdDiaCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
  end
  object ImageList1: TImageList
    Left = 313
    Top = 186
    Bitmap = {
      494C010104000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000658550DB759A
      5DFD648550DA00000000000000000000000000000000000000005396C2FF5396
      C2FF5396C2FF5396C2FF5396C2FF5396C2FF5396C2FF5396C2FF5396C2FF5396
      C2FF5396C2FF5396C2FF000000000000000000000000000000009C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF00000000000000009C8B78FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005D7A4AC9769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF5D7A49C80000000000000000000000005396C2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5396C2FF000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B78FF00000000000000009C8B78FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003C502F82769C5EFF769C5EFF769C5EFFFFFF
      FFFF769C5EFF769C5EFF769C5EFF0000000000000000000000005396C2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5396C2FF000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B78FF00000000000000009C8B78FFFFFFFFFFFFFFFFFF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FFFFFFFFFFFFFFFFFF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF0000000000000000000000000000
      0000000000000000000000000000668750DD769C5EFF769C5EFF769C5EFFFFFF
      FFFF769C5EFF769C5EFF769C5EFF658550DB00000000000000005396C2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5396C2FF000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FFFFFF
      FFFFFFFFFFFF9C8B78FF00000000000000009C8B78FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFFFFA
      F2FFFFFAF2FFFFFAF2FFFFFAF2FF9C8B78FF0000000000000000000000000000
      000000000000000000000000000073985BF9769C5EFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF769C5EFF72975BF800000000000000005396C2FFFFFF
      FFFFFFFFFFFFFFFFFFFFDEE7D8FFDCE6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5396C2FF000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B78FF00000000000000009C8B78FFFFFFFFFFFFFFFFFF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFFFFA
      F2FFFFFAF2FFFFFAF2FFFFFAF2FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF7B9A61FF769C5EFF769C5EFF769C5EFFFFFF
      FFFF769C5EFF769C5EFF769C5EFF7B9A62FF00000000000000005396C2FFFFFF
      FFFFFFFFFFFFDDE6D7FF81A46BFF81A46BFFDCE6D6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5396C2FF000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFF9C8B78FF9C8B78FF9C8B78FF9C8B78FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B78FF00000000000000009C8B78FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFFFFA
      F2FFFFFAF2FFFFFAF2FFFFFAF2FF9C8B78FF9C8B78FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF769C5EFF769C5EFF769C5EFFFFFF
      FFFF769C5EFF769C5EFF769C5EFF89936BFF00000000000000005396C2FFFFFF
      FFFFEDF2EAFF81A46BFFDAE5D4FFDDE6D7FF81A46BFFDCE5D5FFFFFFFFFFFFFF
      FFFFFFFFFFFF5396C2FF000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B78FF00000000000000009C8B78FFFFFFFFFFFFFFFFFF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FFFFFFFFFFFFFFFFFF9C8B78FFFFFA
      F2FFFFFAF2FFFFFAF2FFFFFAF2FF9C8B78FF9C8B78FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBF8FF93B180FF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF94B181FF9B8C77FF00000000000000005396C2FFFFFF
      FFFFFFFFFFFFEDF2EAFFFFFFFFFFFFFFFFFFDCE6D6FF81A46BFFDCE5D5FFFFFF
      FFFFFFFFFFFF5396C2FF000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FFFFFF
      FFFFFFFFFFFF9C8B78FF00000000000000009C8B78FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFFFFA
      F2FFFFFAF2FFFFFAF2FFFFFAF2FF9C8B78FF9C8B78FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBF9FFBBCEAFFF89AA75FF7FA3
      69FF8AAA75FFBBCEAFFFFAFCF9FF9C8B78FF00000000000000005396C2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCE5D5FF81A46BFFEDF2
      EAFFFFFFFFFF5396C2FF000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B78FF00000000000000009C8B78FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FF9C8B78FF9C8B78FF9C8B78FFFFFA
      F2FFFFFAF2FFFFFAF2FFFFFAF2FF9C8B78FF9C8B78FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FF00000000000000005396C2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF2EAFFFFFF
      FFFFFFFFFFFF5396C2FF000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B78FF00000000000000009C8B78FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFF9F8F7FFAB9E8DFFB6A798FFFFFA
      F2FFFFFAF2FFFFFAF2FFFFFAF2FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF00000000000000005396C2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5396C2FF000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF00000000000000009C8B78FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFAC9D8DFFB7AA9AFFFFFAF2FFFFFA
      F2FFFFFAF2FFFFFAF2FFFFFAF2FF9C8B78FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005396C2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5396C2FF000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFFFFFFFFFF9F8
      F7FFAB9D8DFE7C7162C700000000000000009C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FFB5A797FFFFFAF2FFFFFAF2FFFFFA
      F2FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005396C2FFFFFF
      FFFFFFFFFFFFA9998AFF8F7966FF8F7966FF8F7966FF8F7966FFAA9A8BFFFFFF
      FFFFFFFFFFFF5396C2FF000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFF9F8F7FFAD9E
      8FFF837668D10000000000000000000000000000000000000000000000000000
      0000000000009C8B78FFFFFAF2FFFFFAF2FFFFFAF2FFFFFAF2FFFFFAF2FFFFFA
      F2FF9C8B78FFF9F8F7FFAB9D8DFF7D7063C70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005396C2FFFFFF
      FFFFFFFFFFFF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FFFFFF
      FFFFFFFFFFFF5396C2FF000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFAC9D8EFF7F73
      65C8000000000000000000000000000000000000000000000000000000000000
      0000000000009C8B78FFFFFAF2FFFFFAF2FFFFFAF2FFFFFAF2FFFFFAF2FFFFFA
      F2FF9C8B78FFAC9D8CFF7F7263C7000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005396C2FF5396
      C2FF5396C2FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF5396
      C2FF5396C2FF5396C2FF000000000000000000000000000000009C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF7E7263CA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF807263CA00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006B5A4BBF69594CBD00000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF001FFFC7C003C003001FFF01C003
      C003001FFE01C003C0030000FE00C003C0030000FE00C003C00300000000C003
      C00300000000C003C00300000000C003C00300000000C003C00300000000C003
      C00300000000C003C0030000FFFFC003C0030000FFFFC003C007F800FFFFC003
      C00FF801FFFFC003C01FF803FFFFFE7F00000000000000000000000000000000
      000000000000}
  end
  object QAsignacion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select d.*,t.id as Muestra_IdTroquel,t.nro_troquel,t.codigo from' +
        ' ordenproduccion_diario_tmp d '
      'left join troqueles_tmp t on t.id_produ_diario= d.id'
      '')
    Left = 425
    Top = 658
    object QAsignacionID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAsignacionID_SUBDET_PROD: TIntegerField
      FieldName = 'ID_SUBDET_PROD'
      Origin = 'ID_SUBDET_PROD'
    end
    object QAsignacionFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QAsignacionNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QAsignacionTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = 'TURNO'
    end
    object QAsignacionTIPO_MATERIAL: TIntegerField
      FieldName = 'TIPO_MATERIAL'
      Origin = 'TIPO_MATERIAL'
    end
    object QAsignacionESTACION: TIntegerField
      FieldName = 'ESTACION'
      Origin = 'ESTACION'
    end
    object QAsignacionCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QAsignacionNRORTO: TStringField
      FieldName = 'NRORTO'
      Origin = 'NRORTO'
      Size = 13
    end
    object QAsignacionID_AJUSTE_STOCK: TIntegerField
      FieldName = 'ID_AJUSTE_STOCK'
      Origin = 'ID_AJUSTE_STOCK'
      Required = True
    end
    object QAsignacionMODO_TRAZABILIDAD: TStringField
      FieldName = 'MODO_TRAZABILIDAD'
      Origin = 'MODO_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QAsignacionNRO_LOTE: TStringField
      FieldName = 'NRO_LOTE'
      Origin = 'NRO_LOTE'
      Size = 15
    end
    object QAsignacionID_DET_PARTE_DIARIO: TIntegerField
      FieldName = 'ID_DET_PARTE_DIARIO'
      Origin = 'ID_DET_PARTE_DIARIO'
      Required = True
    end
    object QAsignacionOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      Size = 300
    end
    object QAsignacionMUESTRA_IDTROQUEL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRA_IDTROQUEL'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object QAsignacionNRO_TROQUEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NRO_TROQUEL'
      Origin = 'NRO_TROQUEL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QAsignacionCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.cliente, cl.nombre from ordenproduccion_cab c'
      'left join clientes cl on cl.codigo=c.cliente'
      'where c.estado='#39'P'#39' and c.cliente<>'#39#39)
    Left = 1123
    Top = 242
    object QClientesCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object QClientesNOMBRE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
  end
  object DSClientes: TDataSource
    DataSet = QClientes
    Left = 1195
    Top = 250
  end
end
