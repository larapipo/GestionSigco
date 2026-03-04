object FormEgresos: TFormEgresos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Egresos'
  ClientHeight = 217
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 13
  object pnCab: TPanel
    Left = 0
    Top = 27
    Width = 635
    Height = 145
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 111
      Height = 13
      Caption = 'Comprobante de Gasto'
    end
    object Label2: TLabel
      Left = 24
      Top = 59
      Width = 81
      Height = 13
      Caption = 'Cuenta de Gasto'
    end
    object sBuscar: TDBAdvSearchEdit
      Left = 21
      Top = 78
      Width = 428
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
          DataField = 'CODIGO'
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
          DataField = 'DETALLE'
        end
        item
          ControlFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 150
          DataField = 'MUESTRARUBRO'
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
          Caption = 'Cod.Cta'
          Width = 70
        end
        item
          Caption = 'Cuenta'
          Width = 250
        end
        item
          Caption = 'Rubro'
          Width = 150
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
      FilterCondition.Column = 1
      FilterCondition.Text = ' '
      FocusBorder = True
      FocusColor = clWhite
      FocusFontColor = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4474440
      Font.Height = -13
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
      Version = '1.1.5.6'
      OnSelect = sBuscarSelect
      OnKeyPress = sBuscarKeyPress
      DropDownColor = clBlack
      DropDownButtonsFontColor = clBlue
      ListSource = DSCuentas
    end
    object edImporte: TJvCalcEdit
      Left = 471
      Top = 78
      Width = 121
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4474440
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 2
      DecimalPlacesAlwaysShown = True
    end
    object dbcComprobante: TJvDBLookupCombo
      Left = 21
      Top = 32
      Width = 428
      Height = 23
      DropDownCount = 15
      DropDownWidth = 350
      DisplayAllFields = True
      DisplayEmpty = 'Sin Comprobante'
      EmptyValue = '-1'
      EmptyItemColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      LookupField = 'ID_COMPROBANTE'
      LookupDisplay = 'DENOMINACION;SUCURSAL'
      LookupFormat = 'Comprobante                       Sucursal'
      LookupSource = DSComprobante
      ParentFont = False
      TabOrder = 0
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 172
    Width = 635
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 1
    object btOk: TBitBtn
      Left = 528
      Top = 5
      Width = 102
      Height = 35
      Align = alRight
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      ModalResult = 1
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = btOkClick
    end
    object btCancelar: TBitBtn
      Left = 426
      Top = 5
      Width = 102
      Height = 35
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 27
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Ingreso de Gastos'
    Color = clMenuHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
  end
  object DSPCuentas: TDataSetProvider
    DataSet = QCuentas
    Options = []
    Left = 120
    Top = 96
  end
  object CDSCuentas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCuentas'
    Left = 168
    Top = 80
    object CDSCuentasCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSCuentasCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CDSCuentasDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
    object CDSCuentasEXCLUYE: TStringField
      FieldName = 'EXCLUYE'
      Origin = 'EXCLUYE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCuentasMUESTRARUBRO: TStringField
      FieldName = 'MUESTRARUBRO'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object DSCuentas: TDataSource
    DataSet = CDSCuentas
    Left = 224
    Top = 72
  end
  object QCuentas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.*, r.detalle as MuestraRubro from gastos_cuentas c'
      'left join gastos_rubros r on c.codigo_rubro=r.codigo'
      ''
      'order by c.detalle')
    Left = 24
    Top = 124
  end
  object spAgregarGasto: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'INGRESAR_GASTOS_COMPLETO'
    Left = 320
    Top = 80
    ParamData = <
      item
        Position = 1
        Name = 'ID_COMPROBANTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'FECHA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'IMPORTE'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 5
        Name = 'CODIGOGASTO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 6
        Name = 'ID_CUENTA_CAJA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'TIPO_CPBTE'
        DataType = ftString
        ParamType = ptOutput
        Size = 2
      end
      item
        Position = 8
        Name = 'CLASE_CPBTE'
        DataType = ftString
        ParamType = ptOutput
        Size = 2
      end
      item
        Position = 9
        Name = 'ID_EGRESO'
        DataType = ftInteger
        ParamType = ptOutput
      end
      item
        Position = 10
        Name = 'LETRA'
        DataType = ftString
        ParamType = ptOutput
        Size = 1
      end
      item
        Position = 11
        Name = 'SUC'
        DataType = ftString
        ParamType = ptOutput
        Size = 4
      end
      item
        Position = 12
        Name = 'NUMERO'
        DataType = ftString
        ParamType = ptOutput
        Size = 8
      end
      item
        Position = 13
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptOutput
      end>
  end
  object QComprobante: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_comprobante,c.tipo_comprob,c.clase_comprob,c.denomin' +
        'acion,s.detalle as Sucursal from comprobantes c'
      'left join sucursal s on s.codigo=c.sucursal'
      'where c.tipo_comprob='#39'EC'#39
      'order by s.detalle,c.denominacion')
    Left = 88
    Top = 148
  end
  object DSPComprobante: TDataSetProvider
    DataSet = QComprobante
    Options = []
    Left = 200
    Top = 152
  end
  object CDSComprobante: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPComprobante'
    Left = 264
    Top = 168
    object CDSComprobanteID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSComprobanteTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSComprobanteCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object CDSComprobanteDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object CDSComprobanteSUCURSAL: TStringField
      FieldName = 'SUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
  end
  object DSComprobante: TDataSource
    DataSet = CDSComprobante
    Left = 336
    Top = 168
  end
end
