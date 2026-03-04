object FormBuscadorTipoCpbte: TFormBuscadorTipoCpbte
  Left = 276
  Top = 143
  BorderIcons = [biSystemMenu]
  Caption = 'Tipos de Comprobantes'
  ClientHeight = 427
  ClientWidth = 899
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 569
    Height = 427
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'pnPrincipal'
    Color = clMenuHighlight
    Padding.Left = 5
    Padding.Right = 5
    ParentBackground = False
    TabOrder = 0
    ExplicitHeight = 370
    object dbgTipo: TDBGrid
      Left = 5
      Top = 41
      Width = 559
      Height = 312
      Align = alClient
      Color = clInfoBk
      DataSource = DSTipoCpbte
      GradientEndColor = clGradientActiveCaption
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = dbgTipoDrawColumnCell
      OnDblClick = dbgTipoDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_COMPROBANTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 59
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TIPO_COMPROB'
          Title.Alignment = taCenter
          Title.Caption = 'Tp'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 34
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CLASE_COMPROB'
          Title.Alignment = taCenter
          Title.Caption = 'Cl'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DENOMINACION'
          Title.Alignment = taCenter
          Title.Caption = 'Denominacion'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 103
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'LETRA'
          Title.Alignment = taCenter
          Title.Caption = 'Let.'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 32
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PREFIJO'
          Title.Alignment = taCenter
          Title.Caption = 'Pref.'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 59
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NUMERO'
          Title.Alignment = taCenter
          Title.Caption = 'Nro.'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 72
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FISCAL'
          Title.Alignment = taCenter
          Title.Caption = 'Fiscal'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 44
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FACTURAELECTRONICA'
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 44
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODIGO_AFIP'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 41
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 5
      Top = 353
      Width = 559
      Height = 74
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      ExplicitTop = 296
      object JvDBStatusLabel1: TJvDBStatusLabel
        Left = 432
        Top = 4
        Width = 96
        Height = 13
        DataSource = DSTipoCpbte
        Style = lsRecordNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lbFiltro: TLabel
        Left = 491
        Top = 52
        Width = 37
        Height = 13
        Cursor = crHandPoint
        Caption = 'Filtro >>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = lbFiltroClick
      end
      object cbDiscriminanIVA: TComboBox
        Left = 16
        Top = 12
        Width = 209
        Height = 21
        TabOrder = 0
        Text = 'Todos'
        OnClick = cbDiscriminanIVAClick
        Items.Strings = (
          'Todos'
          'Los que SI Discriminan IVA'
          'Los que NO Discriminan IVA')
      end
      object btCancel: TBitBtn
        Left = 357
        Top = 21
        Width = 85
        Height = 28
        Kind = bkCancel
        NumGlyphs = 2
        TabOrder = 1
        OnClick = btCancelClick
      end
      object btOk: TBitBtn
        Left = 444
        Top = 21
        Width = 85
        Height = 28
        Action = Aceptar
        Caption = 'Ok'
        Kind = bkOK
        NumGlyphs = 2
        TabOrder = 2
      end
      object chUso: TAdvOfficeCheckBox
        Left = 16
        Top = 39
        Width = 120
        Height = 20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = chUsoClick
        Alignment = taLeftJustify
        Caption = 'Solo Cpbtes en Uso'
        ReturnIsTab = False
        Version = '1.8.4.1'
      end
    end
    object Panel2: TPanel
      Left = 5
      Top = 0
      Width = 559
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 2
      object Label1: TLabel
        Left = 259
        Top = 12
        Width = 61
        Height = 16
        Caption = 'Sucursal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cbSucursal: TJvDBLookupCombo
        Left = 326
        Top = 10
        Width = 202
        Height = 21
        LookupField = 'CODIGO'
        LookupDisplay = 'DETALLE'
        LookupSource = DSSucursal
        TabOrder = 0
        OnClick = cbSucursalClick
      end
    end
  end
  object pnFiltros: TPanel
    Left = 569
    Top = 0
    Width = 330
    Height = 427
    Align = alClient
    BevelOuter = bvLowered
    Color = clMenuHighlight
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 50
    ParentBackground = False
    TabOrder = 1
    Visible = False
    ExplicitHeight = 370
    object chTipos: TCheckListBox
      Left = 6
      Top = 6
      Width = 318
      Height = 370
      Align = alClient
      ItemHeight = 17
      TabOrder = 0
      OnClick = chTiposClick
      ExplicitHeight = 313
    end
  end
  object DSTipoCpbte: TDataSource
    DataSet = QTipoCpbte
    Left = 288
    Top = 80
  end
  object DSSucursal: TDataSource
    DataSet = QSucursal
    Left = 272
    Top = 200
  end
  object ActionList1: TActionList
    Left = 472
    Top = 56
    object Aceptar: TAction
      Caption = 'Ok'
      OnExecute = AceptarExecute
    end
  end
  object QTipoCpbte: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.* from comprobantes c where'
      'c.tipo_comprob in (:tipo1,:tipo2,:tipo3) and'
      'c.compra_venta = :compra_venta and'
      '(c.sucursal = :sucursal or :sucursal =  -1) and '
      '(c.desgloza_iva = :discrimina_iva or :discrimina_iva = '#39'*'#39' )'
      'order by c.tipo_comprob,c.clase_comprob,c.letra')
    Left = 215
    Top = 83
    ParamData = <
      item
        Name = 'TIPO1'
        DataType = ftString
        ParamType = ptInput
        Size = 2
        Value = Null
      end
      item
        Name = 'TIPO2'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Name = 'TIPO3'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Name = 'COMPRA_VENTA'
        DataType = ftString
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DISCRIMINA_IVA'
        DataType = ftString
        ParamType = ptInput
        Size = 1
        Value = Null
      end>
    object QTipoCpbteID_COMPROBANTE: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTipoCpbteTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QTipoCpbteCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object QTipoCpbteDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object QTipoCpbteSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QTipoCpbteLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QTipoCpbtePREFIJO: TStringField
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object QTipoCpbteNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object QTipoCpbteTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
      Origin = 'TOMA_NRO_DE'
    end
    object QTipoCpbteAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Origin = 'AFECTA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Origin = 'AFECTA_CC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Origin = 'COMPRA_VENTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteCOPIAS: TIntegerField
      FieldName = 'COPIAS'
      Origin = 'COPIAS'
    end
    object QTipoCpbteREPORTE: TStringField
      FieldName = 'REPORTE'
      Origin = 'REPORTE'
      Size = 100
    end
    object QTipoCpbteIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteFISCAL: TStringField
      FieldName = 'FISCAL'
      Origin = 'FISCAL'
      Required = True
      OnGetText = QTipoCpbteFISCALGetText
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Origin = 'NOMBREIMPRESORA'
      Size = 15
    end
    object QTipoCpbtePENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Origin = 'PENDIENTEIMPRESION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Origin = 'LINEAS_DETALLE'
      Required = True
    end
    object QTipoCpbteCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Origin = 'CALCULA_IVA_ARTICULOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Origin = 'DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteCAJA_DEFECTO: TIntegerField
      FieldName = 'CAJA_DEFECTO'
      Origin = 'CAJA_DEFECTO'
      Required = True
    end
    object QTipoCpbteDIVIDE_IVA: TStringField
      FieldName = 'DIVIDE_IVA'
      Origin = 'DIVIDE_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteFACTURAELECTRONICA: TStringField
      DisplayLabel = 'Elect.'
      FieldName = 'FACTURAELECTRONICA'
      Origin = 'FACTURAELECTRONICA'
      Required = True
      OnGetText = QTipoCpbteFACTURAELECTRONICAGetText
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteEN_USO: TStringField
      FieldName = 'EN_USO'
      Origin = 'EN_USO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteCODIGO_AFIP: TStringField
      DisplayLabel = 'C.Afip'
      FieldName = 'CODIGO_AFIP'
      Origin = 'CODIGO_AFIP'
      Size = 3
    end
    object QTipoCpbteID_AJUSTECC: TIntegerField
      FieldName = 'ID_AJUSTECC'
      Origin = 'ID_AJUSTECC'
    end
    object QTipoCpbteCENTRO_COSTO: TIntegerField
      FieldName = 'CENTRO_COSTO'
      Origin = 'CENTRO_COSTO'
    end
    object QTipoCpbteFILTRO_COMPROBANTES: TStringField
      FieldName = 'FILTRO_COMPROBANTES'
      Origin = 'FILTRO_COMPROBANTES'
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QTipoCpbteULTIMONRO: TIntegerField
      FieldName = 'ULTIMONRO'
      Origin = 'ULTIMONRO'
    end
    object QTipoCpbteEDITAR_NRO: TStringField
      FieldName = 'EDITAR_NRO'
      Origin = 'EDITAR_NRO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QSucursal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from sucursal')
    Left = 208
    Top = 184
    object QSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
  end
end
