inherited FormLectorPedidosApp: TFormLectorPedidosApp
  Caption = 'Lector de Pedidos App'
  ClientHeight = 669
  ClientWidth = 1085
  StyleElements = [seFont, seClient, seBorder]
  OnResize = FormResize
  ExplicitWidth = 1103
  ExplicitHeight = 710
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1085
    Height = 616
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1085
    ExplicitHeight = 616
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 1085
      Height = 89
      Align = alTop
      Color = clMenuHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 10
        Top = 9
        Width = 195
        Height = 29
        Caption = 'Pedidos Moviles'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -23
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 449
        Top = 7
        Width = 136
        Height = 17
        DataField = 'FECHA_HORA'
        DataSource = DSCabecera
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 290
        Top = 7
        Width = 124
        Height = 16
        Caption = 'Fecha/Hora Inicio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 289
        Top = 27
        Width = 144
        Height = 16
        Caption = 'Fecha/Hora Enviado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 448
        Top = 27
        Width = 146
        Height = 17
        DataField = 'FECHA_HORA_ENVIO'
        DataSource = DSCabecera
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cbZonas: TJvDBLookupCombo
        Left = 600
        Top = 8
        Width = 329
        Height = 27
        DisplayEmpty = 'Sin Zona'
        EmptyValue = '-1'
        EmptyItemColor = clScrollBar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        LookupField = 'ID_ZONA'
        LookupDisplay = 'DETALLE'
        LookupSource = DSZonas
        ParentFont = False
        TabOrder = 0
        OnClick = cbZonasClick
      end
      object cbVendedor: TJvDBLookupCombo
        Left = 600
        Top = 50
        Width = 329
        Height = 27
        DropDownCount = 12
        DisplayEmpty = 'Todos Los Vendedore'
        EmptyValue = '******'
        EmptyItemColor = clScrollBar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        LookupField = 'CODIGO'
        LookupDisplay = 'NOMBRE'
        LookupSource = DSVendedores
        ParentFont = False
        TabOrder = 1
        OnClick = cbVendedorClick
      end
      object rgModos: TAdvOfficeRadioGroup
        Left = 4
        Top = 44
        Width = 302
        Height = 36
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWhite
        CaptionFont.Height = -12
        CaptionFont.Name = 'Segoe UI'
        CaptionFont.Style = []
        ImageIndex = 0
        Version = '1.8.4.2'
        Caption = 'Trae Los Pedidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentCtl3D = True
        ParentFont = False
        TabOrder = 2
        OnClick = rgModosClick
        UIStyle = tsWindows7
        Columns = 3
        ItemIndex = 1
        Items.Strings = (
          'Todos'
          'Nuevos'
          'Confirmados')
        Themed = True
        Ellipsis = False
      end
      object chbComprobanteDefecto: TAdvOfficeCheckBox
        Left = 407
        Top = 49
        Width = 187
        Height = 33
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Alignment = taLeftJustify
        Caption = 'Usar Comprobante x '#13#10'Defecto en Facturas'
        ReturnIsTab = False
        State = cbChecked
        Version = '1.8.4.2'
      end
      object rgImpresos: TAdvOfficeRadioGroup
        Left = 935
        Top = 3
        Width = 134
        Height = 76
        BorderColor = 15000546
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWhite
        CaptionFont.Height = -12
        CaptionFont.Name = 'Segoe UI'
        CaptionFont.Style = []
        ImageIndex = 0
        Version = '1.8.4.2'
        Caption = 'Trae Los Pedidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentCtl3D = True
        ParentFont = False
        TabOrder = 4
        OnClick = rgModosClick
        UIStyle = tsWindows10
        ItemIndex = 2
        Items.Strings = (
          'Todos'
          'Impresos'
          'No Impresos')
        Themed = True
        Ellipsis = False
      end
    end
    object pcPedidos: TPageControl
      Left = 0
      Top = 89
      Width = 1085
      Height = 527
      ActivePage = pag1
      Align = alClient
      TabOrder = 1
      object pag1: TTabSheet
        Caption = 'Listado de Pedidos'
        object Splitter1: TSplitter
          Left = 0
          Top = 224
          Width = 1077
          Height = 8
          Cursor = crVSplit
          Align = alTop
          Color = clRed
          ParentColor = False
          ExplicitTop = 157
          ExplicitWidth = 281
        end
        object Memo1: TMemo
          Left = 96
          Top = 132
          Width = 185
          Height = 33
          Lines.Strings = (
            'Borrador_ped_movil')
          TabOrder = 0
          Visible = False
        end
        object debgDetalle: TDBGrid
          Left = 0
          Top = 232
          Width = 1077
          Height = 267
          Align = alClient
          DataSource = DSDetalle
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRIPCION'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 335
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDAD'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDAD_UNIDADES'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCUENTO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 82
              Visible = True
            end
            item
              Color = clMoneyGreen
              Expanded = False
              FieldName = 'DESCUENTO_ADICIONAL'
              Title.Alignment = taCenter
              Title.Color = clBlack
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECIO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 122
              Visible = True
            end>
        end
        object dbgCabecera: TDBGrid
          Left = 0
          Top = 0
          Width = 1077
          Height = 224
          Align = alTop
          DataSource = DSCabecera
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = PopupMenu1
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = GenerarRtoExecute
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Title.Alignment = taCenter
              Title.Caption = 'Nro.ID'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FECHA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLIENTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LDR'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 47
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMBRE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 352
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MUESTRAZONA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 167
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'MODO_FACTURACION'
              Title.Alignment = taCenter
              Title.Color = clMoneyGreen
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 89
              Visible = True
            end>
        end
      end
      object pag2: TTabSheet
        Caption = 'Detalles Pedidos'
        ImageIndex = 1
        DesignSize = (
          1077
          499)
        object dbgDetalles: TDBGrid
          Left = 0
          Top = 0
          Width = 1077
          Height = 447
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DSDetallesConsolidado
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'NOMBRE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRIPCION'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDAD'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 142
              Visible = True
            end>
        end
        object btImprimir: TBitBtn
          Left = 896
          Top = 458
          Width = 88
          Height = 25
          Action = Imprimir
          Anchors = [akRight, akBottom]
          Caption = 'Imprimir'
          TabOrder = 1
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 616
    Width = 1085
    Align = alBottom
    ExplicitTop = 616
    ExplicitWidth = 1085
    inherited btConfirma: TBitBtn
      Visible = False
    end
    inherited btNuevo: TBitBtn
      Visible = False
    end
    inherited btCancelar: TBitBtn
      Visible = False
    end
    inherited btModificar: TBitBtn
      Visible = False
    end
    inherited Pr: TSpeedButton
      Visible = False
    end
    inherited Ne: TSpeedButton
      Visible = False
    end
    inherited btBorrar: TBitBtn
      Visible = False
    end
    object ToolButton1: TToolButton
      Left = 557
      Top = 0
      Width = 92
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object BitBtn1: TBitBtn
      Left = 649
      Top = 0
      Width = 87
      Height = 29
      Action = ImprimirPedido
      Anchors = [akRight, akBottom]
      Caption = 'Imprimir Pedido'
      TabOrder = 7
    end
  end
  inherited Panel1: TPanel
    Top = 646
    Width = 1085
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 646
    ExplicitWidth = 1085
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 996
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 996
    end
  end
  inherited ActionList1: TActionList
    Left = 640
    Top = 184
    object GenerarRto: TAction
      Caption = 'Generar Remito'
      OnExecute = GenerarRtoExecute
    end
    object GenerarNotaPedidoCliente: TAction
      Caption = 'Generar Nota de Pedido Cliente'
      OnExecute = GenerarNotaPedidoClienteExecute
    end
    object MarcarRealizado: TAction
      Caption = 'Marcar Realizado'
      OnExecute = MarcarRealizadoExecute
    end
    object GenerarFactura: TAction
      Caption = 'Generar Factura'
      OnExecute = GenerarFacturaExecute
    end
    object Imprimir: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirExecute
    end
    object ImprimirPedido: TAction
      Caption = 'Imprimir Pedido'
      OnExecute = ImprimirPedidoExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 480
    Top = 160
  end
  inherited ImageList1: TImageList
    Left = 64
    Top = 168
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
    Left = 312
    Top = 320
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Top = 320
  end
  inherited ImageListDos: TImageList
    Left = 72
    Top = 224
  end
  object QCabecera: TFDQuery
    BeforeInsert = QCabeceraBeforeInsert
    AfterDelete = QCabeceraAfterDelete
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'select p.*,c.zona,z.detalle as MuestraZona,coalesce( c.id_factur' +
        'apordefecto,-1) as FacturaPorDefecto,coalesce (c.sucursal,-1) as' +
        ' Sucursal from borrador_ped_movil_cab p'
      'left join clientes c on c.codigo=p.cliente'
      'left join zona z on z.id_zona=c.zona'
      'left join personal v on v.vendedor=p.vendedor'
      'where (p.estado=:estado or :estado='#39'*'#39') and '
      '      (c.zona=:zona or :zona=-1) and '
      '      (p.vendedor=:vendedor or :vendedor='#39'******'#39') and '
      '      (p.impreso = :impreso or :impreso='#39'*'#39')')
    Left = 408
    Top = 152
    ParamData = <
      item
        Name = 'ESTADO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Name = 'ZONA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'VENDEDOR'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Name = 'IMPRESO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end>
    object QCabeceraID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCabeceraFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QCabeceraVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Required = True
      Size = 6
    end
    object QCabeceraLISTA_PRECIOS: TIntegerField
      FieldName = 'LISTA_PRECIOS'
      Origin = 'LISTA_PRECIOS'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QCabeceraCLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object QCabeceraNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 45
    end
    object QCabeceraTOTAL: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QCabeceraESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCabeceraFECHA_HORA: TSQLTimeStampField
      DisplayLabel = 'Fecha Hora Incio'
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QCabeceraMUESTRAZONA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Zona '
      FieldName = 'MUESTRAZONA'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QCabeceraFECHA_HORA_ENVIO: TSQLTimeStampField
      DisplayLabel = 'Fecha Hora Enviado'
      FieldName = 'FECHA_HORA_ENVIO'
      Origin = 'FECHA_HORA_ENVIO'
    end
    object QCabeceraZONA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ZONA'
      Origin = 'ZONA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QCabeceraMODO_FACTURACION: TSmallintField
      DisplayLabel = 'Modo'
      FieldName = 'MODO_FACTURACION'
      Origin = 'MODO_FACTURACION'
      OnGetText = QCabeceraMODO_FACTURACIONGetText
    end
    object QCabeceraLDR: TIntegerField
      FieldName = 'LDR'
      Origin = 'LDR'
    end
    object QCabeceraID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object QCabeceraFACTURAPORDEFECTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FACTURAPORDEFECTO'
      Origin = 'FACTURAPORDEFECTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QCabeceraSUCURSAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QCabeceraIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Origin = 'IMPRESO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QDetalle: TFDQuery
    BeforeInsert = QDetalleBeforeInsert
    CachedUpdates = True
    IndexFieldNames = 'ID_CAB'
    MasterSource = DSCabecera
    MasterFields = 'ID'
    DetailFields = 'ID_CAB'
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from BORRADOR_PED_MOVIL_DET')
    Left = 360
    Top = 216
    object QDetalleID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDetalleID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDetalleFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QDetalleCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 6
    end
    object QDetalleNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 45
    end
    object QDetalleCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object QDetalleCANTIDAD_UNIDADES: TFloatField
      DisplayLabel = 'Can.en Unidad'
      FieldName = 'CANTIDAD_UNIDADES'
      Origin = 'CANTIDAD_UNIDADES'
      Required = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object QDetalleDESCRIPCION: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 45
    end
    object QDetalleCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object QDetallePRECIO: TFloatField
      DisplayLabel = 'Precio'
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      Required = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object QDetalleESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QDetalleDESCUENTO: TFloatField
      DisplayLabel = 'Dscto.'
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      Required = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object QDetalleDESCUENTO_ADICIONAL: TFloatField
      DisplayLabel = 'Dsct.Adicional'
      FieldName = 'DESCUENTO_ADICIONAL'
      Origin = 'DESCUENTO_ADICIONAL'
      Required = True
      DisplayFormat = ',0.00'
    end
  end
  object DSCabecera: TDataSource
    DataSet = QCabecera
    Left = 336
    Top = 152
  end
  object DSDetalle: TDataSource
    DataSet = QDetalle
    Left = 424
    Top = 224
  end
  object QZonas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select z.id_zona,z.detalle from zona z')
    Left = 568
    Top = 408
    object QZonasID_ZONA: TIntegerField
      FieldName = 'ID_ZONA'
      Origin = 'ID_ZONA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QZonasDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 25
    end
  end
  object DSZonas: TDataSource
    DataSet = QZonas
    Left = 640
    Top = 408
  end
  object QVendedores: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select p.codigo,p.nombre from personal p'
      'where p.vendedor='#39'S'#39
      'order by p.nombre')
    Left = 568
    Top = 472
    object QVendedoresCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QVendedoresNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
  end
  object DSVendedores: TDataSource
    DataSet = QVendedores
    Left = 656
    Top = 472
  end
  object PopupMenu1: TPopupMenu
    Left = 776
    Top = 200
    object GenerarRto1: TMenuItem
      Action = GenerarRto
    end
    object GenerarNotadePedidoCliente1: TMenuItem
      Action = GenerarNotaPedidoCliente
    end
    object GenerarFactura1: TMenuItem
      Action = GenerarFactura
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object MarcarRealizado1: TMenuItem
      Action = MarcarRealizado
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Borrar1: TMenuItem
      Action = Borrar
    end
  end
  object QDetallesConsolidado: TFDQuery
    BeforeInsert = QCabeceraBeforeInsert
    AfterDelete = QCabeceraAfterDelete
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'select d.codigo,d.descripcion,SUM(d.cantidad) AS CANTIDAD,p.nomb' +
        're,p.ldr,p.id from borrador_ped_movil_det d'
      'left join borrador_ped_movil_cab p on p.id=d.id_cab  '
      
        'where (p.estado='#39'N'#39' or :estado='#39'*'#39') and (p.vendedor=:vendedor or' +
        ' :vendedor='#39'******'#39')'
      
        'group BY d.codigo,d.descripcion,d.cantidad,p.vendedor,p.nombre,p' +
        '.ldr,p.id'
      'order by p.nombre,p.id')
    Left = 336
    Top = 480
    ParamData = <
      item
        Name = 'ESTADO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Name = 'VENDEDOR'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
    object QDetallesConsolidadoCODIGO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object QDetallesConsolidadoDESCRIPCION: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 45
    end
    object QDetallesConsolidadoCANTIDAD: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.000'
    end
    object QDetallesConsolidadoNOMBRE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object QDetallesConsolidadoLDR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'LDR'
      Origin = 'LDR'
      ProviderFlags = []
      ReadOnly = True
    end
    object QDetallesConsolidadoID: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nro.Pedido'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
  end
  object DSDetallesConsolidado: TDataSource
    DataSet = QDetallesConsolidado
    Left = 420
    Top = 449
  end
  object QDetallesCopia: TFDQuery
    BeforeInsert = QCabeceraBeforeInsert
    AfterDelete = QCabeceraAfterDelete
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'select d.*, p.total,p.estado,p.vendedor,p.modo_facturacion,c.zon' +
        'a,z.detalle as MuestraZona from borrador_ped_movil_det d'
      'left join borrador_ped_movil_cab p on p.id=d.id_cab  '
      'left join clientes c on c.codigo=p.cliente'
      'left join zona z on z.id_zona=c.zona'
      'left join personal v on v.vendedor=p.vendedor'
      
        'where (p.estado='#39'N'#39' or :estado='#39'*'#39') and (c.zona=:zona or :zona=-' +
        '1) and (p.vendedor=:vendedor or :vendedor='#39'******'#39')')
    Left = 784
    Top = 448
    ParamData = <
      item
        Name = 'ESTADO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Name = 'ZONA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'VENDEDOR'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object StringField1: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 6
    end
    object StringField2: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 45
    end
    object StringField3: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object FloatField1: TFloatField
      FieldName = 'CANTIDAD_UNIDADES'
      Origin = 'CANTIDAD_UNIDADES'
      Required = True
    end
    object StringField4: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 45
    end
    object FloatField2: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
      DisplayFormat = ',0.000'
    end
    object FloatField3: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      Required = True
      DisplayFormat = ',0.000'
    end
    object StringField5: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FloatField4: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      Required = True
      DisplayFormat = ',0.000'
    end
    object FloatField5: TFloatField
      FieldName = 'DESCUENTO_ADICIONAL'
      Origin = 'DESCUENTO_ADICIONAL'
      Required = True
      DisplayFormat = ',0.000'
    end
    object FloatField6: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.000'
    end
    object StringField6: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTADO_1'
      Origin = 'ESTADO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object StringField7: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object SmallintField1: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MODO_FACTURACION'
      Origin = 'MODO_FACTURACION'
      ProviderFlags = []
      ReadOnly = True
    end
    object IntegerField3: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ZONA'
      Origin = 'ZONA'
      ProviderFlags = []
      ReadOnly = True
    end
    object StringField8: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAZONA'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
  end
  object frReport: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45658.951179328700000000
    ReportOptions.LastChange = 45658.951179328700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnAfterPrintReport = frReportAfterPrintReport
    Left = 892
    Top = 409
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frDetalle: TfrxDBDataset
    UserName = 'frDetalle'
    CloseDataSource = False
    DataSource = DSDetallesConsolidado
    BCDToCurrency = False
    DataSetOptions = []
    Left = 996
    Top = 385
    FieldDefs = <
      item
        FieldName = 'CODIGO'
        FieldType = fftString
      end
      item
        FieldName = 'DESCRIPCION'
        FieldType = fftString
        Size = 45
      end
      item
        FieldName = 'CANTIDAD'
      end
      item
        FieldName = 'NOMBRE'
        FieldType = fftString
        Size = 45
      end
      item
        FieldName = 'LDR'
      end
      item
        FieldName = 'ID'
      end>
  end
  object frCabecera: TfrxDBDataset
    UserName = 'frCabecera'
    CloseDataSource = False
    DataSource = DSCabecera
    BCDToCurrency = False
    DataSetOptions = []
    Left = 900
    Top = 473
    FieldDefs = <
      item
        FieldName = 'ID'
      end
      item
        FieldName = 'FECHA'
      end
      item
        FieldName = 'VENDEDOR'
        FieldType = fftString
      end
      item
        FieldName = 'LISTA_PRECIOS'
      end
      item
        FieldName = 'CLIENTE'
        FieldType = fftString
      end
      item
        FieldName = 'NOMBRE'
        FieldType = fftString
        Size = 45
      end
      item
        FieldName = 'TOTAL'
      end
      item
        FieldName = 'ESTADO'
        FieldType = fftString
      end
      item
        FieldName = 'FECHA_HORA'
      end
      item
        FieldName = 'MUESTRAZONA'
        FieldType = fftString
        Size = 25
      end
      item
        FieldName = 'FECHA_HORA_ENVIO'
      end
      item
        FieldName = 'ZONA'
      end
      item
        FieldName = 'MODO_FACTURACION'
      end
      item
        FieldName = 'LDR'
      end
      item
        FieldName = 'ID_USUARIO'
      end
      item
        FieldName = 'FACTURAPORDEFECTO'
      end
      item
        FieldName = 'SUCURSAL'
      end>
  end
  object frDetPedido: TfrxDBDataset
    UserName = 'frDetPedido'
    CloseDataSource = False
    DataSource = DSDetalle
    BCDToCurrency = False
    DataSetOptions = []
    Left = 900
    Top = 537
    FieldDefs = <
      item
        FieldName = 'ID'
      end
      item
        FieldName = 'ID_CAB'
      end
      item
        FieldName = 'FECHA'
      end
      item
        FieldName = 'CLIENTE'
        FieldType = fftString
      end
      item
        FieldName = 'NOMBRE'
        FieldType = fftString
        Size = 45
      end
      item
        FieldName = 'CODIGO'
        FieldType = fftString
      end
      item
        FieldName = 'CANTIDAD_UNIDADES'
      end
      item
        FieldName = 'DESCRIPCION'
        FieldType = fftString
        Size = 45
      end
      item
        FieldName = 'CANTIDAD'
      end
      item
        FieldName = 'PRECIO'
      end
      item
        FieldName = 'ESTADO'
        FieldType = fftString
      end
      item
        FieldName = 'DESCUENTO'
      end
      item
        FieldName = 'DESCUENTO_ADICIONAL'
      end>
  end
end
