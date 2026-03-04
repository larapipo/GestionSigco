object FormBorradorOC: TFormBorradorOC
  Left = 0
  Top = 0
  Caption = 'Recepcion de Orden de Compra'
  ClientHeight = 639
  ClientWidth = 898
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 0
    Top = 329
    Width = 898
    Height = 18
    Cursor = crVSplit
    Align = alTop
    Color = clMenuHighlight
    ParentColor = False
  end
  object dbgArticulosRc: TDBGrid
    Left = 0
    Top = 41
    Width = 898
    Height = 288
    Align = alTop
    DataSource = DSBorradoOC
    DefaultDrawing = False
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnColEnter = dbgArticulosRcColEnter
    OnDrawColumnCell = dbgArticulosRcDrawColumnCell
    OnDblClick = dbgArticulosRcDblClick
    OnEditButtonClick = BuscarArticuloExecute
    OnEnter = dbgArticulosRcEnter
    Columns = <
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'CODIGO'
        Title.Alignment = taCenter
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DETALLE_STK'
        Title.Alignment = taCenter
        Width = 345
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CANTIDAD'
        Title.Alignment = taCenter
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGOBARRA'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 898
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Recepcion de O.de Compra'
    Color = clHighlight
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 853
      Top = 8
      Width = 39
      Height = 27
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000100000002000000080000000C0000000F0000000F0000000D0000
        0007000000040000000700000007000000020000000000000000000000000000
        0001000000050204031C102F2291184A34D31E5C41FF1E5B40FF184732D2112F
        227D0000000E14382995072C1B95000000090000000100000000000000010000
        00080A1C145722674CE723966DFF23B481FF24CA92FF39CF9DFF37886AFF0C21
        185D06100C392A7B5CFB146744FB020C08370000000400000000000000060D25
        1C652E8867FF28B586FF3BDAA8FF59E0B7FF6FE5C2FF5FC6A6FF1F533FBF0000
        00161E523DBF27B786FF1EB07DFF0C3E28BF0000000C00000001040A08223080
        62F62BBA8BFF42DDADFF65CEADFF53AB8EFF3A8B6EFF2F7D60FA07120D360E24
        1B5D2F9671FF28D59EFF28D59EFF1D805AFF051B125C00000005194434903CAC
        88FF2DDAA5FF5ECFAEFF45987CF914362A750409072002050415010302162B73
        57E12ACC98FF29D8A1FF2AD7A0FF26C592FF145438E00001010F2A7258D438C7
        9BFF30DDA9FF5CB699FF194133810000000700000001000000061941328460B8
        9CFF83ECCFFF2BDAA5FF34DBA8FF88EDD0FF479D7FFF0B2A1C77358C6DF250DF
        B6FF61E8C2FF3F9475FF040A081E00000002000000000205040F36896CF4378F
        70FF419A7BFF30DCA8FF38D7A7FF358A6BFF34886AFF317E61EF3B997AFA98ED
        D8FF8DF1D8FF398E6DFF040B0820000000010000000000000002000000070205
        04193F9675FF43E2B3FF4DDAB1FF1D6749F20000000F0000000734856AD398E1
        CFFF9AF4DEFF57A98BFF11382681000000060000000100000001000000051237
        287659B092FF8BF1D7FF6ECEB2FF1E6047D400000006000000002359478A81CF
        BAFFB4F9EAFF82D3BCFF3A8767FB0E352383030C0823030C08230E3222753D8E
        6EF984DFC7FFAAF6E5FF6FB8A0FF1642328C0000000300000000050D0A1855B2
        95F5A5E5D5FFBCFAEDFF94E5D0FF56A386FF2D7B59FF2D7B59FF54A386FF85D4
        BDFFB5F8EAFF9ADAC9FF419477F5030A0719000000010000000000000002173A
        2F5669C6AAFFAAE7D9FFCBFDF3FFC1FBEFFFBAF9ECFFB8F9EBFFBEFBEEFFC7FC
        F2FFA6E5D5FF5CB096FF12302657000000020000000000000000000000000000
        0002122E264453AB90E38AD7C2FFB2EADDFFCEF9F1FFCEF9F1FFB1EADCFF87D4
        BFFF50A78CE40F29204400000002000000000000000000000000000000000000
        0000000000010409070F255D4C813A9076C849B896FC49B795FC399075C8255B
        4A82030907100000000100000000000000000000000000000000000000000000
        0000000000000000000000000001000000020000000200000002000000020000
        0001000000000000000000000000000000000000000000000000}
      OnClick = SpeedButton1Click
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 598
    Width = 898
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clHighlight
    Ctl3D = False
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 6
      Width = 73
      Height = 20
      Caption = 'SubRubro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btEnviarDatos: TBitBtn
      Left = 632
      Top = 5
      Width = 137
      Height = 31
      Margins.Right = 9
      Align = alRight
      Caption = 'Pasar Datos'
      TabOrder = 0
      OnClick = btEnviarDatosClick
      ExplicitLeft = 599
      ExplicitTop = 6
      ExplicitHeight = 29
    end
    object sBuscar: TDBAdvSearchEdit
      Left = 111
      Top = 8
      Width = 409
      Height = 22
      Appearance.CategoryControlFont = False
      Appearance.CategoryFont.Charset = DEFAULT_CHARSET
      Appearance.CategoryFont.Color = clWindowText
      Appearance.CategoryFont.Height = -11
      Appearance.CategoryFont.Name = 'Tahoma'
      Appearance.CategoryFont.Style = []
      Appearance.DescriptionFont.Charset = DEFAULT_CHARSET
      Appearance.DescriptionFont.Color = clWindowText
      Appearance.DescriptionFont.Height = -11
      Appearance.DescriptionFont.Name = 'Tahoma'
      Appearance.DescriptionFont.Style = []
      Appearance.DescriptionControlFont = False
      Appearance.HighlightTextColor = clBlue
      Appearance.SelectionColor = 15914434
      Appearance.SelectionTextColor = 3881787
      Appearance.FilterCountFont.Charset = DEFAULT_CHARSET
      Appearance.FilterCountFont.Color = clWindowText
      Appearance.FilterCountFont.Height = -11
      Appearance.FilterCountFont.Name = 'Tahoma'
      Appearance.FilterCountFont.Style = []
      Appearance.FilterCountFormat = '(%d)'
      Appearance.ItemCategoryFont.Charset = DEFAULT_CHARSET
      Appearance.ItemCategoryFont.Color = clOrange
      Appearance.ItemCategoryFont.Height = -11
      Appearance.ItemCategoryFont.Name = 'Tahoma'
      Appearance.ItemCategoryFont.Style = []
      Appearance.ItemCategoryFormat = 'in %s'
      AutoSelect = False
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
          Alignment = gtaCenter
          ControlFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Trimming = True
          Width = 64
          DataField = 'CODIGO_SUBRUBRO'
        end
        item
          ControlFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Trimming = True
          Width = 200
          DataField = 'DETALLE_SUBRUBRO'
        end
        item
          Color = clInfoBk
          ControlFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 130
          DataField = 'MUESTRARUBRO'
        end>
      DragMode = dmAutomatic
      DropDownHeader.Color = clWhite
      DropDownHeader.ColorTo = clNone
      DropDownHeader.Caption = 
        '<B>  Cos.Sub             Descripcion                            ' +
        '                Rubro </B>'
      DropDownHeader.Font.Charset = DEFAULT_CHARSET
      DropDownHeader.Font.Color = clBlue
      DropDownHeader.Font.Height = -11
      DropDownHeader.Font.Name = 'Tahoma'
      DropDownHeader.Font.Style = []
      DropDownHeader.Visible = True
      DropDownHeader.BorderColor = 11250603
      DropDownHeader.BorderWidth = 0
      DropDownHeader.Buttons = <>
      DropDownHeight = 350
      DropDownFooter.Color = clWhite
      DropDownFooter.ColorTo = clNone
      DropDownFooter.Font.Charset = DEFAULT_CHARSET
      DropDownFooter.Font.Color = 6184542
      DropDownFooter.Font.Height = -11
      DropDownFooter.Font.Name = 'Tahoma'
      DropDownFooter.Font.Style = []
      DropDownFooter.Visible = False
      DropDownFooter.BorderColor = 11250603
      DropDownFooter.BorderWidth = 0
      DropDownFooter.SizeGrip = False
      DropDownFooter.Buttons = <>
      DropDownShadow = True
      DropDownWidth = 550
      EmptyText = 'Buscar...'
      EmptyTextFocused = True
      FilterCondition.AutoSelect = True
      FilterCondition.Column = 1
      FilterCondition.Text = ' '
      FocusBorder = True
      FocusColor = clWhite
      FocusFontColor = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4474440
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 20
      Items = <>
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
      TabOrder = 1
      Text = ''
      Version = '1.1.5.7'
      DropDownColor = clBlack
    end
    object btOk: TBitBtn
      Left = 769
      Top = 5
      Width = 124
      Height = 31
      Align = alRight
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btOkClick
      ExplicitLeft = 768
      ExplicitTop = 6
      ExplicitHeight = 29
    end
  end
  object dbgArticulosInx: TDBGrid
    Left = 0
    Top = 369
    Width = 898
    Height = 229
    Align = alClient
    DataSource = DSBorradoInexsitente
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnColEnter = dbgArticulosInxColEnter
    OnDblClick = AltaStockExecute
    OnEnter = dbgArticulosInxEnter
    Columns = <
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'CODIGO'
        Title.Alignment = taCenter
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DETALLE_STK'
        Title.Alignment = taCenter
        Width = 342
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'CANTIDAD'
        Title.Alignment = taCenter
        Width = 117
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'CODIGOBARRA'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 347
    Width = 898
    Height = 22
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Items Inexistentes en la O.de Compra'
    Color = clMenuHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
  end
  object QBorradorOC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select b.*,s.detalle_stk,coalesce(oc.codigoarticulo,'#39#39') as En_OC' +
        'ompra from borrador_ordencompra b'
      '  left join stock s on s.codigo_stk=b.codigo'
      
        '  left join ordencompradet oc on oc.id_caboc=b.id_oc  and  oc.co' +
        'digoarticulo=b.codigo'
      'where b.id_oc=:id_oc and b.codigo<>'#39'*'#39)
    Left = 96
    Top = 240
    ParamData = <
      item
        Position = 1
        Name = 'ID_OC'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object CDSBorradorOC: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_OC'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBorradorOC'
    Left = 256
    Top = 240
    object CDSBorradorOCID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSBorradorOCNRO_ORDENCOMPRA: TStringField
      FieldName = 'NRO_ORDENCOMPRA'
      Origin = 'NRO_ORDENCOMPRA'
      Size = 13
    end
    object CDSBorradorOCFECHA_RECEPCION: TSQLTimeStampField
      FieldName = 'FECHA_RECEPCION'
      Origin = 'FECHA_RECEPCION'
    end
    object CDSBorradorOCID_OC: TIntegerField
      FieldName = 'ID_OC'
      Origin = 'ID_OC'
    end
    object CDSBorradorOCCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      OnSetText = CDSBorradorOCCODIGOSetText
      Size = 8
    end
    object CDSBorradorOCCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00'
    end
    object CDSBorradorOCESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBorradorOCDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object CDSBorradorOCCODIGOBARRA: TStringField
      DisplayLabel = 'Codigo Barra'
      FieldName = 'CODIGOBARRA'
      Origin = 'CODIGOBARRA'
      Size = 50
    end
    object CDSBorradorOCEN_OCOMPRA: TStringField
      FieldName = 'EN_OCOMPRA'
      Origin = 'EN_OCOMPRA'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
  end
  object DSBorradoOC: TDataSource
    DataSet = CDSBorradorOC
    Left = 344
    Top = 240
  end
  object DSPBorradorOC: TDataSetProvider
    DataSet = QBorradorOC
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 184
    Top = 240
  end
  object CDSBorradorInexistente: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_OC'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBorradorInexistentes'
    Left = 288
    Top = 384
    object CDSBorradorInexistenteID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSBorradorInexistenteNRO_ORDENCOMPRA: TStringField
      FieldName = 'NRO_ORDENCOMPRA'
      Origin = 'NRO_ORDENCOMPRA'
      Size = 13
    end
    object CDSBorradorInexistenteFECHA_RECEPCION: TSQLTimeStampField
      FieldName = 'FECHA_RECEPCION'
      Origin = 'FECHA_RECEPCION'
    end
    object CDSBorradorInexistenteID_OC: TIntegerField
      FieldName = 'ID_OC'
      Origin = 'ID_OC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSBorradorInexistenteCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object CDSBorradorInexistenteCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object CDSBorradorInexistenteESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object CDSBorradorInexistenteCODIGOBARRA: TStringField
      DisplayLabel = 'Codigo Barra'
      FieldName = 'CODIGOBARRA'
      Origin = 'CODIGOBARRA'
      Size = 50
    end
    object CDSBorradorInexistenteDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSBorradorInexistenteEN_OCOMPRA: TStringField
      FieldName = 'EN_OCOMPRA'
      Origin = 'EN_OCOMPRA'
      Size = 8
    end
  end
  object DSBorradoInexsitente: TDataSource
    DataSet = CDSBorradorInexistente
    Left = 408
    Top = 376
  end
  object ActionList1: TActionList
    Left = 656
    Top = 176
    object BuscarArticulo: TAction
      Caption = 'BuscarArticulo'
      OnExecute = BuscarArticuloExecute
    end
    object AltaStock: TAction
      Caption = 'AltaStock'
      OnExecute = AltaStockExecute
    end
  end
  object QStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk,s.detalle_stk from stock s where s.codigo_st' +
        'k=:codigo')
    Left = 96
    Top = 456
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object CDSStock: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 8
      end>
    ProviderName = 'DSPStock'
    Left = 296
    Top = 456
    object CDSStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
  end
  object DSPStock: TDataSetProvider
    DataSet = QStock
    Options = []
    Left = 184
    Top = 456
  end
  object QSubRub: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select sr.*, r.detalle_rubro as MuestraRubro from subrubros sr'
      'left join rubros r on r.codigo_rubro=sr.codigo_rubro'
      ''
      'where (:rubro is null) or (r.codigo_rubro=:rubro)'
      'order by sr.detalle_subrubro')
    Left = 456
    Top = 440
    ParamData = <
      item
        Position = 1
        Name = 'RUBRO'
        DataType = ftFixedChar
        ParamType = ptInput
      end>
  end
  object DSPSubRub: TDataSetProvider
    DataSet = QSubRub
    Options = []
    Left = 520
    Top = 440
  end
  object CDSSubRub: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFixedChar
        Name = 'RUBRO'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSubRub'
    Left = 574
    Top = 440
    object CDSSubRubCODIGO_SUBRUBRO: TStringField
      DisplayLabel = 'Cod.Sub'
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object CDSSubRubDETALLE_SUBRUBRO: TStringField
      DisplayLabel = 'Sub Rubro'
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Required = True
      Size = 45
    end
    object CDSSubRubCODIGO_RUBRO: TStringField
      DisplayLabel = 'Cod.Rub'
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
    object CDSSubRubMUESTRARUBRO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'MUESTRARUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
  end
  object DSSubRub: TDataSource
    DataSet = CDSSubRub
    Left = 638
    Top = 440
  end
  object spAltaStock: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ALTA_STOCK_CON_EXISTENCIA'
    Left = 784
    Top = 427
    ParamData = <
      item
        Position = 1
        Name = 'DETALLE'
        DataType = ftString
        ParamType = ptInput
        Size = 45
      end
      item
        Position = 2
        Name = 'DETALLE_ADICIONAL'
        DataType = ftString
        ParamType = ptInput
        Size = 300
      end
      item
        Position = 3
        Name = 'COSTO'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'PRECIOVTA'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'CANTIDAD'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'SUBRUB'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end
      item
        Position = 7
        Name = 'CODIGO_OUT'
        DataType = ftString
        ParamType = ptOutput
        Size = 8
      end>
  end
  object QBorradodOCInexistentes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select b.*,s.detalle_stk,coalesce(oc.codigoarticulo,'#39#39') as En_OC' +
        'ompra from borrador_ordencompra b'
      '  left join stock s on s.codigo_stk=b.codigo'
      '  left join ordencompradet oc on oc.id_caboc=b.id_oc  '
      'where b.id_oc=:id_oc and b.codigo='#39'*'#39)
    Left = 80
    Top = 352
    ParamData = <
      item
        Position = 1
        Name = 'ID_OC'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QBorradodOCInexistentesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBorradodOCInexistentesNRO_ORDENCOMPRA: TStringField
      FieldName = 'NRO_ORDENCOMPRA'
      Origin = 'NRO_ORDENCOMPRA'
      Size = 13
    end
    object QBorradodOCInexistentesFECHA_RECEPCION: TSQLTimeStampField
      FieldName = 'FECHA_RECEPCION'
      Origin = 'FECHA_RECEPCION'
    end
    object QBorradodOCInexistentesID_OC: TIntegerField
      FieldName = 'ID_OC'
      Origin = 'ID_OC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QBorradodOCInexistentesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object QBorradodOCInexistentesCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QBorradodOCInexistentesESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBorradodOCInexistentesCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Origin = 'CODIGOBARRA'
      Size = 50
    end
    object QBorradodOCInexistentesDETALLE_STK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object QBorradodOCInexistentesEN_OCOMPRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EN_OCOMPRA'
      Origin = 'EN_OCOMPRA'
      ProviderFlags = []
      Size = 8
    end
  end
  object DSPBorradorInexistentes: TDataSetProvider
    DataSet = QBorradodOCInexistentes
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 184
    Top = 384
  end
end
