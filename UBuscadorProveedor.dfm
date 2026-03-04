object FormBuscadorProveedor: TFormBuscadorProveedor
  Left = 267
  Top = 196
  BorderIcons = [biSystemMenu]
  Caption = 'Buscador de Proveedores'
  ClientHeight = 601
  ClientWidth = 889
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu
  PopupMode = pmAuto
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object pnBuscador: TPanel
    Left = 0
    Top = 0
    Width = 889
    Height = 601
    Align = alClient
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      889
      601)
    object Label3: TLabel
      Left = 12
      Top = 503
      Width = 159
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Columnas a Mostrar en Resultado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ExplicitTop = 490
    end
    object Label4: TLabel
      Left = 661
      Top = 501
      Width = 102
      Height = 13
      Anchors = [akRight, akBottom]
      Caption = 'Registro Encontrados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ExplicitTop = 461
    end
    object DBStatusLabel1: TJvDBStatusLabel
      Left = 781
      Top = 501
      Width = 85
      Height = 13
      DataSource = DSProvee
      Style = lsRecordNo
      CalcRecCount = True
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Anchors = [akRight, akBottom]
      ParentFont = False
      ShadowPos = spLeftTop
      Transparent = True
      ExplicitLeft = 718
      ExplicitTop = 453
    end
    object Panel2: TPanel
      Left = 1
      Top = 580
      Width = 887
      Height = 20
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 5
    end
    object chbCampos: TCheckListBox
      Left = 9
      Top = 519
      Width = 193
      Height = 55
      Anchors = [akLeft, akBottom]
      IntegralHeight = True
      ItemHeight = 17
      TabOrder = 1
      OnClickCheck = chbCamposClickCheck
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 887
      Height = 88
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 2
      object Label1: TLabel
        Left = 8
        Top = 5
        Width = 99
        Height = 16
        Caption = 'Dato a Buscar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 311
        Top = 5
        Width = 146
        Height = 16
        Caption = 'Campo de Busqueda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edDato: TEdit
        Left = 8
        Top = 24
        Width = 297
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        OnClick = edDatoClick
        OnEnter = edDatoEnter
        OnKeyPress = edDatoKeyPress
      end
      object cbCampos: TComboBox
        Left = 311
        Top = 24
        Width = 210
        Height = 21
        Style = csDropDownList
        DropDownCount = 15
        TabOrder = 1
        OnChange = cbCamposChange
      end
      object rgTipo: TAdvOfficeRadioGroup
        Left = 555
        Top = 3
        Width = 225
        Height = 79
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWhite
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = []
        Version = '1.8.4.1'
        Caption = 'Filtrar Seg'#250'n Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentCtl3D = True
        ParentFont = False
        TabOrder = 2
        OnClick = BuscarExecute
        UIStyle = tsOffice2007Luna
        ItemIndex = 0
        Items.Strings = (
          'Todos'
          'Proveedores de Mercaderia y Servicios'
          'Proveedores de Mercaderias'
          'Proveedores de Servicios')
        Themed = True
        Ellipsis = False
      end
    end
    object btCancelar: TBitBtn
      Left = 688
      Top = 530
      Width = 75
      Height = 25
      Action = Cancelar
      Anchors = [akRight, akBottom]
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
      TabOrder = 3
    end
    object btAceptar: TBitBtn
      Left = 782
      Top = 530
      Width = 75
      Height = 25
      Action = Aceptar
      Anchors = [akRight, akBottom]
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
      TabOrder = 4
    end
    object dbgResultado: TDBGrid
      Left = 1
      Top = 89
      Width = 887
      Height = 411
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DSProvee
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = dbgResultadoDrawColumnCell
      OnDblClick = AceptarExecute
      OnKeyDown = dbgResultadoKeyDown
      OnKeyPress = dbgResultadoKeyPress
      OnTitleClick = dbgResultadoTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 234
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZON_SOCIAL'
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 237
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DIRECCION'
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'N_DE_CUIT'
          Title.Alignment = taCenter
          Title.Caption = 'Nro. de Cuit'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TELEFONO_1'
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TELEFONO_2'
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_REPRESENTANTE'
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 286
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ACTIVO'
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_PROVEEDOR'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object MainMenu: TMainMenu
    Left = 160
    Top = 112
    object Opciones1: TMenuItem
      Caption = '&Opciones'
      RadioItem = True
      object BExacta: TMenuItem
        Caption = 'Busqueda Exacta'
        OnClick = BExactaClick
      end
      object BComienzaCon: TMenuItem
        Caption = 'Comienza Con'
        OnClick = BComienzaConClick
      end
      object BIncluye: TMenuItem
        Caption = 'Incluye '
        Checked = True
        OnClick = BIncluyeClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object LeftCero: TMenuItem
        Caption = 'Justica con ceros'
        OnClick = LeftCeroClick
      end
    end
  end
  object DSProvee: TDataSource
    DataSet = CDSProvee
    Left = 296
    Top = 168
  end
  object ActionList1: TActionList
    Left = 392
    Top = 160
    object Aceptar: TAction
      Caption = '&Aceptar'
      OnExecute = AceptarExecute
    end
    object Cancelar: TAction
      Caption = '&Cancelar'
      OnExecute = CancelarExecute
    end
    object Buscar: TAction
      Caption = 'Buscar'
      OnExecute = BuscarExecute
    end
  end
  object CDSProvee: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'dato'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPProvee'
    Left = 320
    Top = 272
    object CDSProveeCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 6
    end
    object CDSProveeNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSProveeRAZON_SOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSProveeDIRECCION: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object CDSProveeN_DE_CUIT: TStringField
      DisplayLabel = 'Nro.de Cuit'
      FieldName = 'N_DE_CUIT'
      Origin = 'N_DE_CUIT'
      Size = 13
    end
    object CDSProveeTELEFONO_1: TStringField
      DisplayLabel = 'Telef.1'
      FieldName = 'TELEFONO_1'
      Origin = 'TELEFONO_1'
      Size = 10
    end
    object CDSProveeTELEFONO_2: TStringField
      DisplayLabel = 'Telef.2'
      FieldName = 'TELEFONO_2'
      Origin = 'TELEFONO_2'
      Size = 10
    end
    object CDSProveeNOMBRE_REPRESENTANTE: TStringField
      DisplayLabel = 'Representate'
      FieldName = 'NOMBRE_REPRESENTANTE'
      Origin = 'NOMBRE_REPRESENTANTE'
      Size = 35
    end
    object CDSProveeACTIVO: TStringField
      DisplayLabel = 'Activo'
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      Size = 1
    end
    object CDSProveeTIPO_PROVEEDOR: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_PROVEEDOR'
      Origin = 'TIPO_PROVEEDOR'
      Size = 1
    end
  end
  object DSPProvee: TDataSetProvider
    DataSet = QProvee
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 256
    Top = 264
  end
  object QProvee: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select p.codigo,p.nombre,p.razon_social,p.direccion,'
      
        '       p.n_de_cuit,p.telefono_1,p.telefono_2,p.nombre_representa' +
        'nte,'
      '       p.activo, p.tipo_proveedor'
      'from poveedor p'
      '  where ( p.nombre = :dato ) and ( p.tipo_proveedor = :tipo )')
    Left = 184
    Top = 272
    ParamData = <
      item
        Position = 1
        Name = 'dato'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object JvFormStorage1: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    StoredValues = <>
    Left = 440
    Top = 384
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    SubStorages = <>
    Left = 520
    Top = 416
  end
end
