object FormBuscadorClientes: TFormBuscadorClientes
  Left = 237
  Top = 188
  BorderIcons = [biSystemMenu]
  Caption = 'Buscador de Clientes'
  ClientHeight = 604
  ClientWidth = 886
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  Menu = MainMenu
  PopupMode = pmAuto
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 13
  object pnBuscador: TPanel
    Left = 0
    Top = 0
    Width = 886
    Height = 604
    Align = alClient
    BevelOuter = bvNone
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      886
      604)
    object Label3: TLabel
      Left = 8
      Top = 496
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
      ExplicitTop = 325
    end
    object Label4: TLabel
      Left = 328
      Top = 496
      Width = 102
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Registro Encontrados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ExplicitTop = 325
    end
    object DBStatusLabel1: TJvDBStatusLabel
      Left = 447
      Top = 496
      Width = 85
      Height = 13
      DataSource = DSClientes
      Style = lsRecordNo
      CalcRecCount = True
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Anchors = [akLeft, akBottom]
      ParentFont = False
      ShadowPos = spLeftTop
      Transparent = True
    end
    object Panel3: TPanel
      Left = 0
      Top = 569
      Width = 886
      Height = 35
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 4
    end
    object Panel2: TPanel
      Left = 0
      Top = 530
      Width = 886
      Height = 39
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 3
      object btCancelar: TBitBtn
        AlignWithMargins = True
        Left = 677
        Top = 3
        Width = 100
        Height = 33
        Action = Cancelar
        Align = alRight
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
        TabOrder = 0
      end
      object btAceptar: TBitBtn
        AlignWithMargins = True
        Left = 783
        Top = 3
        Width = 100
        Height = 33
        Action = Aceptar
        Align = alRight
        Caption = 'Aceptar'
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
        TabOrder = 1
      end
      object btNuevo: TBitBtn
        AlignWithMargins = True
        Left = 571
        Top = 3
        Width = 100
        Height = 33
        Action = NuevoCliente
        Align = alRight
        Caption = '&Nuevo'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          000000000000000000000000000000000000000000000000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 2
      end
    end
    object chbCampos: TCheckListBox
      Left = 6
      Top = 515
      Width = 193
      Height = 72
      Anchors = [akLeft, akBottom]
      IntegralHeight = True
      ItemHeight = 17
      TabOrder = 0
      OnClickCheck = chbCamposClickCheck
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 886
      Height = 64
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      DesignSize = (
        886
        64)
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
      object Label5: TLabel
        Left = 691
        Top = 5
        Width = 61
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Sucursal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 662
      end
      object Label2: TLabel
        Left = 423
        Top = 8
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
      object lbModoBusqueda: TLabel
        Left = 144
        Top = 8
        Width = 84
        Height = 13
        Caption = '(Modo Busqueda)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbSucursal: TJvDBLookupCombo
        Left = 691
        Top = 27
        Width = 173
        Height = 21
        DisplayEmpty = 'Todas las Sucursales'
        EmptyValue = '-1'
        Anchors = [akTop, akRight]
        LookupField = 'CODIGO'
        LookupDisplay = 'DETALLE'
        LookupSource = DSSucursal
        TabOrder = 0
        OnClick = BuscarExecute
        OnKeyDown = cbSucursalKeyDown
      end
      object edDato: TEdit
        Left = 8
        Top = 27
        Width = 394
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
        OnClick = edDatoClick
        OnEnter = edDatoEnter
        OnKeyDown = edDatoKeyDown
        OnKeyPress = edDatoKeyPress
      end
      object cbCampos: TComboBox
        Left = 424
        Top = 27
        Width = 249
        Height = 21
        Style = csDropDownList
        DropDownCount = 19
        TabOrder = 2
        OnClick = cbCamposClick
      end
    end
    object dbgClientes: TDBGrid
      Left = 0
      Top = 64
      Width = 886
      Height = 425
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DSClientes
      DefaultDrawing = False
      FixedColor = clBlue
      GradientEndColor = clSilver
      GradientStartColor = 14079702
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clYellow
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = dbgClientesDrawColumnCell
      OnDblClick = AceptarExecute
      OnKeyDown = dbgClientesKeyDown
      OnKeyPress = dbgClientesKeyPress
      OnTitleClick = dbgClientesTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 285
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZON_SOCIAL'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 285
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_COMPLETO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 610
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DIRECCION_COMERCIAL'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_DE_CUIT'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRODOCUMENTO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEFONO_COMERCIAL_1'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEFONO_COMERCIAL_2'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEFONO_CELULAR'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUCURSAL'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOCALIDAD'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRAIVA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUENTA_OPERATIVA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_COORPORATIVO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LIMITE_CREDITO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TARJETA_CLIENTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ACTIVO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object DSClientes: TDataSource
    AutoEdit = False
    DataSet = CDSClientes
    Left = 304
    Top = 224
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
    object NuevoCliente: TAction
      Caption = 'Nuevo'
      ShortCut = 16462
      OnExecute = NuevoClienteExecute
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
        Caption = 'Justifica con ceros'
        OnClick = LeftCeroClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object FiltrarInactivos1: TMenuItem
        Caption = 'Filtrar Inactivos'
        OnClick = FiltrarInactivos1Click
      end
    end
  end
  object DSSucursal: TDataSource
    DataSet = QSucursal
    Left = 144
    Top = 344
  end
  object QSucursal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo,detalle from sucursal')
    Left = 72
    Top = 368
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
  object JvFormStorage1: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    StoredValues = <>
    Left = 496
    Top = 248
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    SubStorages = <>
    Left = 568
    Top = 272
  end
  object DSPClientes: TDataSetProvider
    DataSet = QClientes
    Options = [poAllowCommandText]
    Left = 144
    Top = 216
  end
  object CDSClientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DATO'
        ParamType = ptInput
        Size = 163
      end>
    ProviderName = 'DSPClientes'
    Left = 224
    Top = 224
    object CDSClientesCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSClientesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object CDSClientesRAZON_SOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSClientesNOMBRE_COMPLETO: TStringField
      DisplayLabel = 'Nombre Completo'
      FieldName = 'NOMBRE_COMPLETO'
      Origin = 'NOMBRE_COMPLETO'
      Size = 100
    end
    object CDSClientesDIRECCION_COMERCIAL: TStringField
      DisplayLabel = 'Direcc.Comercial'
      FieldName = 'DIRECCION_COMERCIAL'
      Origin = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object CDSClientesNRO_DE_CUIT: TStringField
      DisplayLabel = 'Nro.Cuit'
      FieldName = 'NRO_DE_CUIT'
      Origin = 'NRO_DE_CUIT'
      Size = 13
    end
    object CDSClientesNRODOCUMENTO: TStringField
      DisplayLabel = 'Nro.Documento'
      FieldName = 'NRODOCUMENTO'
      Origin = 'NRODOCUMENTO'
      Size = 15
    end
    object CDSClientesTELEFONO_COMERCIAL_1: TStringField
      DisplayLabel = 'Te.Comercial-1'
      FieldName = 'TELEFONO_COMERCIAL_1'
      Origin = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object CDSClientesTELEFONO_COMERCIAL_2: TStringField
      DisplayLabel = 'Te.Comercial-2'
      FieldName = 'TELEFONO_COMERCIAL_2'
      Origin = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object CDSClientesTELEFONO_CELULAR: TStringField
      DisplayLabel = 'Movil'
      FieldName = 'TELEFONO_CELULAR'
      Origin = 'TELEFONO_CELULAR'
      Size = 11
    end
    object CDSClientesSUCURSAL: TIntegerField
      DisplayLabel = 'Sucursal'
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSClientesLOCALIDAD: TStringField
      DisplayLabel = 'Localidad'
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object CDSClientesMUESTRAIVA: TStringField
      DisplayLabel = 'Cond.IVA'
      FieldName = 'MUESTRAIVA'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object CDSClientesCUENTA_OPERATIVA: TStringField
      DisplayLabel = 'Cta.Operativa'
      FieldName = 'CUENTA_OPERATIVA'
      Origin = 'CUENTA_OPERATIVA'
      Size = 10
    end
    object CDSClientesCODIGO_COORPORATIVO: TStringField
      DisplayLabel = 'Cod.Coorp.'
      FieldName = 'CODIGO_COORPORATIVO'
      Origin = 'CODIGO_COORPORATIVO'
      Size = 6
    end
    object CDSClientesLIMITE_CREDITO: TFloatField
      DisplayLabel = 'Lte.Credito'
      FieldName = 'LIMITE_CREDITO'
      Origin = 'LIMITE_CREDITO'
    end
    object CDSClientesTARJETA_CLIENTE: TStringField
      DisplayLabel = 'Tarjeta Cliente'
      FieldName = 'TARJETA_CLIENTE'
      Origin = 'TARJETA_CLIENTE'
    end
    object CDSClientesBUSCADOR: TStringField
      DisplayLabel = 'Buscador Multiple'
      FieldName = 'BUSCADOR'
      Origin = 'BUSCADOR'
      Size = 159
    end
    object CDSClientesACTIVO: TStringField
      DisplayLabel = 'Activo'
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.codigo,c.nombre,c.razon_social,c.direccion_comercial,'
      '       c.nro_de_cuit,c.nrodocumento,C.telefono_comercial_1,'
      '       C.telefono_comercial_2,'
      '       C.telefono_celular,'
      '       c.limite_credito,'
      '       c.sucursal,c.activo,'
      
        '       c.localidad,i.detalle as MuestraIva,cuenta_operativa,nomb' +
        're_completo,'
      
        '       c.codigo_coorporativo,c.tarjeta_cliente,c.buscador from c' +
        'lientes c'
      'left join inscripcion i on i.codigo=c.condicion_iva'
      'where c.buscador containing :dato')
    Left = 64
    Top = 216
    ParamData = <
      item
        Position = 1
        Name = 'DATO'
        DataType = ftString
        ParamType = ptInput
        Size = 163
      end>
  end
  object FDQuery_Borrar: TFDQuery
    Left = 424
    Top = 264
  end
end
