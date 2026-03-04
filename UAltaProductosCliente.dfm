object FormAltaProdutosCliente: TFormAltaProdutosCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Alta Produtos Cliente'
  ClientHeight = 263
  ClientWidth = 725
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 15
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 725
    Height = 216
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    TabStop = True
    ExplicitTop = -1
    object Label3: TLabel
      Left = 80
      Top = 8
      Width = 62
      Height = 15
      Caption = 'Descripci'#243'n'
    end
    object Label8: TLabel
      Left = 428
      Top = 8
      Width = 168
      Height = 15
      Caption = 'Identificaci'#243'n / Nro. Serie / IMEI'
    end
    object Label9: TLabel
      Left = 428
      Top = 50
      Width = 33
      Height = 15
      Caption = 'Marca'
    end
    object Label10: TLabel
      Left = 428
      Top = 90
      Width = 41
      Height = 15
      Caption = 'Modelo'
    end
    object Label5: TLabel
      Left = 9
      Top = 48
      Width = 51
      Height = 15
      Caption = 'Categoria'
    end
    object Label7: TLabel
      Left = 8
      Top = 90
      Width = 58
      Height = 15
      Caption = 'Propietario'
    end
    object seMarcas: TDBAdvSearchEdit
      Left = 428
      Top = 65
      Width = 290
      Height = 23
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
      Appearance.ItemCategoryFont.Color = 42495
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
          ControlFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Trimming = True
          Width = 250
          DataField = 'DESCRIPCION_MARCA'
        end
        item
          ControlFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 150
          DataField = 'MARCA_STK'
        end>
      DragMode = dmAutomatic
      DropDownHeader.Color = clWhite
      DropDownHeader.ColorTo = clNone
      DropDownHeader.Font.Charset = DEFAULT_CHARSET
      DropDownHeader.Font.Color = clBlue
      DropDownHeader.Font.Height = -11
      DropDownHeader.Font.Name = 'Tahoma'
      DropDownHeader.Font.Style = [fsBold]
      DropDownHeader.Visible = True
      DropDownHeader.BorderColor = 11250603
      DropDownHeader.BorderWidth = 0
      DropDownHeader.Buttons = <
        item
          Caption = 'Descripcion'
          Width = 250
        end
        item
          Caption = 'Codigo'
          Width = 70
        end>
      DropDownHeader.ButtonAlignment = baLeft
      DropDownHeight = 400
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
      DropDownWidth = 650
      EmptyText = 'Buscar...'
      EmptyTextFocused = True
      FilterCondition.AutoSelect = True
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
      TabOrder = 3
      Text = ''
      Version = '1.1.5.5'
      OnSelect = seMarcasSelect
      DropDownColor = clBlack
      DropDownButtonsFontColor = clBlue
      DataSource = DSMarcas
      ListSource = DSMarcas
    end
    object seCategorias: TDBAdvSearchEdit
      Left = 8
      Top = 65
      Width = 406
      Height = 23
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
      Appearance.ItemCategoryFont.Color = 42495
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
          Width = 70
          DataField = 'DETALLE'
        end
        item
          ControlFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Trimming = True
          Width = 250
          DataField = 'ID'
        end>
      DragMode = dmAutomatic
      DropDownHeader.Color = clWhite
      DropDownHeader.ColorTo = clNone
      DropDownHeader.Font.Charset = DEFAULT_CHARSET
      DropDownHeader.Font.Color = clBlue
      DropDownHeader.Font.Height = -11
      DropDownHeader.Font.Name = 'Tahoma'
      DropDownHeader.Font.Style = [fsBold]
      DropDownHeader.Visible = True
      DropDownHeader.BorderColor = 11250603
      DropDownHeader.BorderWidth = 0
      DropDownHeader.Buttons = <
        item
          Caption = 'Detalle'
          Width = 250
        end
        item
          Caption = 'Cuenta'
          Width = 70
        end>
      DropDownHeader.ButtonAlignment = baLeft
      DropDownHeight = 400
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
      DropDownWidth = 600
      EmptyText = 'Buscar...'
      EmptyTextFocused = True
      FilterCondition.AutoSelect = True
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
      TabOrder = 2
      Text = ''
      Version = '1.1.5.5'
      OnSelect = seCategoriasSelect
      DropDownColor = clBlack
      DropDownButtonsFontColor = clBlue
      DataSource = DSCategorias
      ListSource = DSCategorias
    end
    object edDescripcion: TEdit
      Left = 9
      Top = 24
      Width = 405
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 0
      TextHint = 'Descripcion del Producto'
    end
    object edIdentificador: TEdit
      Left = 428
      Top = 24
      Width = 290
      Height = 23
      TabOrder = 1
      TextHint = 'Identificador Nro'
    end
    object edModelo: TEdit
      Left = 428
      Top = 107
      Width = 287
      Height = 23
      TabOrder = 6
      TextHint = 'Modelo'
    end
    object edNombreCliente: TEdit
      Left = 88
      Top = 106
      Width = 326
      Height = 23
      Color = clInfoBk
      Enabled = False
      TabOrder = 5
    end
    object ceCliente: TJvComboEdit
      Left = 9
      Top = 106
      Width = 73
      Height = 23
      AlwaysEnableButton = True
      ButtonWidth = 16
      ClickKey = 16397
      Enabled = False
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000A000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFC000003300000033000000FFC00000}
      MaxLength = 6
      TabOrder = 4
      Text = ''
      OnButtonClick = BuscaClienteExecute
    end
    object mObs: TMemo
      Left = 9
      Top = 136
      Width = 709
      Height = 56
      TabOrder = 7
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 216
    Width = 725
    Height = 47
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 708
    object btCancelar: TBitBtn
      Left = 444
      Top = 5
      Width = 144
      Height = 37
      Align = alRight
      Caption = 'Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      ExplicitLeft = 427
    end
    object btOk: TBitBtn
      Left = 588
      Top = 5
      Width = 132
      Height = 37
      Align = alRight
      Caption = 'OK'
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btOkClick
      ExplicitLeft = 571
    end
  end
  object ActionList1: TActionList
    Left = 584
    Top = 120
    object BuscaCliente: TAction
      Caption = 'BuscaCliente'
      OnExecute = BuscaClienteExecute
    end
    object Action1: TAction
      Caption = 'Action1'
    end
    object Action2: TAction
      Caption = 'Action2'
    end
  end
  object QMarcas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select m.marca_stk, m.descripcion_marca from marcas m order by m' +
        '.descripcion_marca')
    Left = 496
    Top = 168
    object QMarcasMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object QMarcasDESCRIPCION_MARCA: TStringField
      FieldName = 'DESCRIPCION_MARCA'
      Origin = 'DESCRIPCION_MARCA'
      Size = 25
    end
  end
  object QCategorias: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from categoria_productos '
      'order by detalle ')
    Left = 224
    Top = 144
    object QCategoriasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCategoriasDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
  end
  object DSMarcas: TDataSource
    DataSet = QMarcas
    Left = 496
    Top = 128
  end
  object DSCategorias: TDataSource
    DataSet = QCategorias
    Left = 360
    Top = 160
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT C.*,cc.nombre as MuestraCoorporativo FROM Clientes C'
      'left join clientes cc on cc.codigo=c.codigo_coorporativo'
      'where (c.codigo=:codigo)')
    Left = 192
    Top = 192
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QClientesNOMBRE_COMPLETO: TStringField
      FieldName = 'NOMBRE_COMPLETO'
      Origin = 'NOMBRE_COMPLETO'
      Size = 100
    end
    object QClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object QClientesDIRECCION_PARTICULAR: TStringField
      FieldName = 'DIRECCION_PARTICULAR'
      Origin = 'DIRECCION_PARTICULAR'
      Size = 35
    end
    object QClientesDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Origin = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object QClientesTELEFONO_PARTICULAR: TStringField
      FieldName = 'TELEFONO_PARTICULAR'
      Origin = 'TELEFONO_PARTICULAR'
      Size = 10
    end
    object QClientesTELEFONO_COMERCIAL_1: TStringField
      FieldName = 'TELEFONO_COMERCIAL_1'
      Origin = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object QClientesTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Origin = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object QClientesTELEFONO_CELULAR: TStringField
      FieldName = 'TELEFONO_CELULAR'
      Origin = 'TELEFONO_CELULAR'
      Size = 11
    end
    object QClientesID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
      Origin = 'ID_COD_POSTAL'
    end
    object QClientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QClientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QClientesCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Origin = 'CONDICION_IVA'
      Required = True
    end
    object QClientesEMITE_REMITO: TStringField
      FieldName = 'EMITE_REMITO'
      Origin = 'EMITE_REMITO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesEMITE_FACTURA: TStringField
      FieldName = 'EMITE_FACTURA'
      Origin = 'EMITE_FACTURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesNRO_DE_CUIT: TStringField
      FieldName = 'NRO_DE_CUIT'
      Origin = 'NRO_DE_CUIT'
      Size = 13
    end
    object QClientesACTIVO: TStringField
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      FixedChar = True
      Size = 1
    end
    object QClientesLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
      Origin = 'LIMITE_CREDITO'
    end
    object QClientesSALDOINICIAL: TFloatField
      FieldName = 'SALDOINICIAL'
      Origin = 'SALDOINICIAL'
    end
    object QClientesOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      BlobType = ftMemo
    end
    object QClientesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QClientesZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object QClientesVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object QClientesLISTAPRECIOS: TIntegerField
      FieldName = 'LISTAPRECIOS'
      Origin = 'LISTAPRECIOS'
    end
    object QClientesTIPODOCUMENTO: TSmallintField
      FieldName = 'TIPODOCUMENTO'
      Origin = 'TIPODOCUMENTO'
    end
    object QClientesNRODOCUMENTO: TStringField
      FieldName = 'NRODOCUMENTO'
      Origin = 'NRODOCUMENTO'
      Size = 15
    end
    object QClientesCORREOELECTRONICO: TStringField
      FieldName = 'CORREOELECTRONICO'
      Origin = 'CORREOELECTRONICO'
      Size = 100
    end
    object QClientesCORREOELECTRONICO_2: TStringField
      FieldName = 'CORREOELECTRONICO_2'
      Origin = 'CORREOELECTRONICO_2'
      Size = 100
    end
    object QClientesID_FACTURAPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURAPORDEFECTO'
      Origin = 'ID_FACTURAPORDEFECTO'
    end
    object QClientesID_FACTURACONTADOPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURACONTADOPORDEFECTO'
      Origin = 'ID_FACTURACONTADOPORDEFECTO'
    end
    object QClientesID_NOTADEBITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTADEBITOPORDEFECTO'
      Origin = 'ID_NOTADEBITOPORDEFECTO'
    end
    object QClientesID_NOTACREDITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTACREDITOPORDEFECTO'
      Origin = 'ID_NOTACREDITOPORDEFECTO'
    end
    object QClientesID_TIKETPORDEFECTO: TIntegerField
      FieldName = 'ID_TIKETPORDEFECTO'
      Origin = 'ID_TIKETPORDEFECTO'
    end
    object QClientesID_RECIBOPORDEFECTO: TIntegerField
      FieldName = 'ID_RECIBOPORDEFECTO'
      Origin = 'ID_RECIBOPORDEFECTO'
    end
    object QClientesPERCIBIR_IB: TStringField
      FieldName = 'PERCIBIR_IB'
      Origin = 'PERCIBIR_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesINSCRIPTO_MULTICONVENIO: TStringField
      FieldName = 'INSCRIPTO_MULTICONVENIO'
      Origin = 'INSCRIPTO_MULTICONVENIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Origin = 'CONTACTO'
      Size = 50
    end
    object QClientesTELEFONO_CONTACTO: TStringField
      FieldName = 'TELEFONO_CONTACTO'
      Origin = 'TELEFONO_CONTACTO'
      Size = 50
    end
    object QClientesCOBRADOR: TStringField
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
      Size = 6
    end
    object QClientesCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
    end
    object QClientesLONGITUD: TStringField
      FieldName = 'LONGITUD'
      Origin = 'LONGITUD'
      Size = 25
    end
    object QClientesLATITUD: TStringField
      FieldName = 'LATITUD'
      Origin = 'LATITUD'
      Size = 25
    end
    object QClientesDIRECCION_CALLE: TStringField
      FieldName = 'DIRECCION_CALLE'
      Origin = 'DIRECCION_CALLE'
      Size = 40
    end
    object QClientesDIRECCION_NUMERO: TStringField
      FieldName = 'DIRECCION_NUMERO'
      Origin = 'DIRECCION_NUMERO'
      Size = 10
    end
    object QClientesDIRECCION_PISO: TStringField
      FieldName = 'DIRECCION_PISO'
      Origin = 'DIRECCION_PISO'
      Size = 10
    end
    object QClientesDIRECCION_DEPTO: TStringField
      FieldName = 'DIRECCION_DEPTO'
      Origin = 'DIRECCION_DEPTO'
      Size = 10
    end
    object QClientesDEUDAMAYOR30: TStringField
      FieldName = 'DEUDAMAYOR30'
      Origin = 'DEUDAMAYOR30'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesDIAS_MAYOR_30: TIntegerField
      FieldName = 'DIAS_MAYOR_30'
      Origin = 'DIAS_MAYOR_30'
    end
    object QClientesTIPOABONO: TStringField
      FieldName = 'TIPOABONO'
      Origin = 'TIPOABONO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesMES_ABONOANUAL: TIntegerField
      FieldName = 'MES_ABONOANUAL'
      Origin = 'MES_ABONOANUAL'
    end
    object QClientesFRANQUICIA: TStringField
      FieldName = 'FRANQUICIA'
      Origin = 'FRANQUICIA'
      FixedChar = True
      Size = 1
    end
    object QClientesID_DEPOSITO_FRANQUICIA: TIntegerField
      FieldName = 'ID_DEPOSITO_FRANQUICIA'
      Origin = 'ID_DEPOSITO_FRANQUICIA'
    end
    object QClientesID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
      Origin = 'ID_TRANSPORTE'
    end
    object QClientesIMPRIME_SALDOFACTURA: TStringField
      FieldName = 'IMPRIME_SALDOFACTURA'
      Origin = 'IMPRIME_SALDOFACTURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCORTAR_SERVICIO: TStringField
      FieldName = 'CORTAR_SERVICIO'
      Origin = 'CORTAR_SERVICIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCON_PLANPAGO: TStringField
      FieldName = 'CON_PLANPAGO'
      Origin = 'CON_PLANPAGO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesDIRECCION_POSTAL: TStringField
      FieldName = 'DIRECCION_POSTAL'
      Origin = 'DIRECCION_POSTAL'
      Size = 35
    end
    object QClientesCALLE_1: TStringField
      FieldName = 'CALLE_1'
      Origin = 'CALLE_1'
      Size = 35
    end
    object QClientesCALLE_2: TStringField
      FieldName = 'CALLE_2'
      Origin = 'CALLE_2'
      Size = 35
    end
    object QClientesVENDER_DE_CTDO: TStringField
      FieldName = 'VENDER_DE_CTDO'
      Origin = 'VENDER_DE_CTDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesPRESENTO_F8001: TStringField
      FieldName = 'PRESENTO_F8001'
      Origin = 'PRESENTO_F8001'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesID_TARJETACREDITO: TIntegerField
      FieldName = 'ID_TARJETACREDITO'
      Origin = 'ID_TARJETACREDITO'
      Required = True
    end
    object QClientesNRO_TARJETA_C: TStringField
      FieldName = 'NRO_TARJETA_C'
      Origin = 'NRO_TARJETA_C'
    end
    object QClientesNRO_SEG_TC: TStringField
      FieldName = 'NRO_SEG_TC'
      Origin = 'NRO_SEG_TC'
      FixedChar = True
      Size = 4
    end
    object QClientesID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      Required = True
    end
    object QClientesNRO_CTA_BCO: TStringField
      FieldName = 'NRO_CTA_BCO'
      Origin = 'NRO_CTA_BCO'
      Size = 22
    end
    object QClientesCODIGO_COORPORATIVO: TStringField
      FieldName = 'CODIGO_COORPORATIVO'
      Origin = 'CODIGO_COORPORATIVO'
      Size = 6
    end
    object QClientesCUENTA_OPERATIVA: TStringField
      FieldName = 'CUENTA_OPERATIVA'
      Origin = 'CUENTA_OPERATIVA'
      Size = 10
    end
    object QClientesTARJETA_CLIENTE: TStringField
      FieldName = 'TARJETA_CLIENTE'
      Origin = 'TARJETA_CLIENTE'
    end
    object QClientesFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object QClientesCON_MONITOREO: TStringField
      FieldName = 'CON_MONITOREO'
      Origin = 'CON_MONITOREO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCON_GPRS: TStringField
      FieldName = 'CON_GPRS'
      Origin = 'CON_GPRS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCON_HOSTING: TStringField
      FieldName = 'CON_HOSTING'
      Origin = 'CON_HOSTING'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCOMUNITARIO: TStringField
      FieldName = 'COMUNITARIO'
      Origin = 'COMUNITARIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesID_PRESTADOR: TIntegerField
      FieldName = 'ID_PRESTADOR'
      Origin = 'ID_PRESTADOR'
    end
    object QClientesMES_ADICIONAL: TIntegerField
      FieldName = 'MES_ADICIONAL'
      Origin = 'MES_ADICIONAL'
    end
    object QClientesMES_SEMESTRAL: TIntegerField
      FieldName = 'MES_SEMESTRAL'
      Origin = 'MES_SEMESTRAL'
    end
    object QClientesMOROSO: TStringField
      FieldName = 'MOROSO'
      Origin = 'MOROSO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesPLANTILLA_CIVA: TStringField
      FieldName = 'PLANTILLA_CIVA'
      Origin = 'PLANTILLA_CIVA'
      FixedChar = True
      Size = 1
    end
    object QClientesOBSERVACIONES1: TStringField
      FieldName = 'OBSERVACIONES1'
      Origin = 'OBSERVACIONES1'
      Size = 60
    end
    object QClientesOBSERVACIONES2: TStringField
      FieldName = 'OBSERVACIONES2'
      Origin = 'OBSERVACIONES2'
      Size = 60
    end
    object QClientesAVISO: TStringField
      FieldName = 'AVISO'
      Origin = 'AVISO'
      Size = 250
    end
    object QClientesRUBRO: TIntegerField
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
    end
    object QClientesMUESTRACOORPORATIVO: TStringField
      FieldName = 'MUESTRACOORPORATIVO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object QClientesFECHAULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'FECHAULTIMACOMPRA'
      Origin = 'FECHAULTIMACOMPRA'
    end
    object QClientesFECHAALTA: TSQLTimeStampField
      FieldName = 'FECHAALTA'
      Origin = 'FECHAALTA'
    end
    object QClientesULTIMOPAGO: TSQLTimeStampField
      FieldName = 'ULTIMOPAGO'
      Origin = 'ULTIMOPAGO'
    end
    object QClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField
      FieldName = 'FECHA_VENCIMI_DDJJ_MULTI'
      Origin = 'FECHA_VENCIMI_DDJJ_MULTI'
    end
    object QClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO_FC_ABONO'
      Origin = 'FECHA_INCIO_FC_ABONO'
    end
    object QClientesVENCIMIENTO_TC: TSQLTimeStampField
      FieldName = 'VENCIMIENTO_TC'
      Origin = 'VENCIMIENTO_TC'
    end
    object QClientesFECHANACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHANACIMIENTO'
      Origin = 'FECHANACIMIENTO'
    end
    object QClientesDESDE_F8001: TSQLTimeStampField
      FieldName = 'DESDE_F8001'
      Origin = 'DESDE_F8001'
    end
    object QClientesHASTA_F8001: TSQLTimeStampField
      FieldName = 'HASTA_F8001'
      Origin = 'HASTA_F8001'
    end
  end
  object spAltaProducto: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ALTA_PRODUCTO'
    Left = 640
    Top = 40
    ParamData = <
      item
        Position = 1
        Name = 'ID_CATEGORIA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'IDENTIFICADOR'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 3
        Name = 'DESCRIPCION'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 4
        Name = 'PROPIETARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 5
        Name = 'OBS'
        DataType = ftString
        ParamType = ptInput
        Size = 200
      end
      item
        Position = 6
        Name = 'MARCA'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end
      item
        Position = 7
        Name = 'MODELO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 8
        Name = 'NEW_ID'
        DataType = ftInteger
        ParamType = ptOutput
      end>
  end
end
