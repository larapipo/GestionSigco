object FormLeerOrdenWP: TFormLeerOrdenWP
  Left = 0
  Top = 0
  Caption = 'Leer Orden WP'
  ClientHeight = 673
  ClientWidth = 1209
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  TextHeight = 13
  object pnOrdenes: TPanel
    Left = 0
    Top = 34
    Width = 1209
    Height = 231
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      1209
      231)
    object Label1: TLabel
      Left = 953
      Top = 183
      Width = 50
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'ID Orden:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object edtOrderID: TEdit
      Left = 953
      Top = 202
      Width = 112
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 0
    end
    object btnFetch: TButton
      Left = 1071
      Top = 202
      Width = 56
      Height = 21
      Anchors = [akTop, akRight]
      Caption = 'Buscar'
      TabOrder = 1
      OnClick = btnFetchClick
    end
    object dbgOrdenes: TDBGrid
      Left = 0
      Top = 0
      Width = 1209
      Height = 177
      Align = alTop
      DataSource = dsOrders
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      PopupMenu = PopupMenu1
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnCellClick = dbgOrdenesCellClick
      OnDrawColumnCell = dbgOrdenesDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Alignment = taCenter
          Title.Caption = 'Orden'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'date_created'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'first_name'
          Title.Alignment = taCenter
          Title.Caption = 'Nombre'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'last_name'
          Title.Alignment = taCenter
          Title.Caption = 'Apellido'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 210
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'address_1'
          Title.Alignment = taCenter
          Title.Caption = 'Direcci'#243'n'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 174
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'city'
          Title.Alignment = taCenter
          Title.Caption = 'Localidad'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 177
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'total'
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 126
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'status'
          Title.Alignment = taCenter
          Title.Caption = 'Estado'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 82
          Visible = True
        end>
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 632
    Width = 1209
    Height = 41
    Align = alBottom
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 669
    ExplicitWidth = 799
    DesignSize = (
      1209
      41)
    object btBuscarPresupuestos: TBitBtn
      Left = 1018
      Top = 6
      Width = 167
      Height = 30
      Action = Consultar
      Anchors = [akTop, akRight]
      Caption = 'Consultar'
      TabOrder = 0
      ExplicitLeft = 608
    end
  end
  object pnDatosCab: TPanel
    Left = 0
    Top = 265
    Width = 1209
    Height = 154
    Align = alTop
    TabOrder = 2
    object Label2: TLabel
      Left = 8
      Top = 6
      Width = 80
      Height = 13
      Caption = 'Modo de pago:'
    end
    object Label3: TLabel
      Left = 320
      Top = 6
      Width = 93
      Height = 13
      Caption = 'Estado del Pedido'
    end
    object Label5: TLabel
      Left = 8
      Top = 50
      Width = 41
      Height = 13
      Caption = 'Nombre'
    end
    object Label6: TLabel
      Left = 8
      Top = 96
      Width = 43
      Height = 13
      Caption = 'Apellido'
    end
    object Label8: TLabel
      Left = 295
      Top = 96
      Width = 37
      Height = 13
      Caption = 'Ciudad'
    end
    object Label7: TLabel
      Left = 295
      Top = 50
      Width = 48
      Height = 13
      Caption = 'Direccion'
    end
    object Label9: TLabel
      Left = 623
      Top = 48
      Width = 72
      Height = 13
      Caption = 'Codigo Postal'
    end
    object edtPaymentMethod: TDBEdit
      Left = 8
      Top = 23
      Width = 200
      Height = 21
      DataField = 'payment_method'
      DataSource = dsHeader
      TabOrder = 0
    end
    object edtBillingAddress: TDBEdit
      Left = 320
      Top = 23
      Width = 129
      Height = 21
      DataField = 'status'
      DataSource = dsHeader
      TabOrder = 1
    end
    object cxDBTextEdit1: TDBEdit
      Left = 8
      Top = 69
      Width = 267
      Height = 21
      DataField = 'first_name'
      DataSource = dsShipping
      TabOrder = 2
    end
    object cxDBTextEdit2: TDBEdit
      Left = 8
      Top = 115
      Width = 265
      Height = 21
      DataField = 'last_name'
      DataSource = dsShipping
      TabOrder = 3
    end
    object cxDBTextEdit4: TDBEdit
      Left = 295
      Top = 115
      Width = 305
      Height = 21
      DataField = 'city'
      DataSource = dsShipping
      TabOrder = 4
    end
    object cxDBTextEdit3: TDBEdit
      Left = 295
      Top = 69
      Width = 305
      Height = 21
      DataField = 'address_1'
      DataSource = dsShipping
      TabOrder = 5
    end
    object cxDBTextEdit5: TDBEdit
      Left = 623
      Top = 67
      Width = 121
      Height = 21
      DataField = 'postcode'
      DataSource = dsShipping
      TabOrder = 6
    end
  end
  object pnDetalles: TPanel
    Left = 0
    Top = 419
    Width = 1209
    Height = 213
    Align = alClient
    Caption = 'pnDetalles'
    TabOrder = 3
    ExplicitHeight = 250
    object dbgDetalles: TDBGrid
      Left = 1
      Top = 1
      Width = 1207
      Height = 211
      Align = alClient
      DataSource = dsLines
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'product_id'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sku'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 455
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'quantity'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'subtotal'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'total'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 1209
    Height = 34
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 4
    object Label4: TLabel
      Left = 560
      Top = 10
      Width = 101
      Height = 19
      Caption = 'Pedidos Web'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object memTableHeader: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 312
    Top = 184
    object memTableHeaderid: TIntegerField
      FieldName = 'id'
    end
    object memTableHeaderstatus: TStringField
      FieldName = 'status'
    end
    object memTableHeadertotal: TFloatField
      FieldName = 'total'
    end
    object memTableHeaderpayment_method: TStringField
      FieldName = 'payment_method'
      Size = 50
    end
  end
  object memTableShipping: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 320
    Top = 144
    object memTableShippingfirst_name: TStringField
      FieldName = 'first_name'
      Size = 50
    end
    object memTableShippinglast_name: TStringField
      FieldName = 'last_name'
      Size = 50
    end
    object memTableShippingaddress_1: TStringField
      FieldName = 'address_1'
      Size = 50
    end
    object memTableShippingcity: TStringField
      FieldName = 'city'
      Size = 50
    end
    object memTableShippingpostcode: TStringField
      FieldName = 'postcode'
    end
  end
  object memTableLines: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 320
    Top = 88
    object memTableLinesproduct_id: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'product_id'
    end
    object memTableLinessku: TStringField
      DisplayLabel = 'Codigo/Sku'
      FieldName = 'sku'
    end
    object memTableLinesname: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'name'
      Size = 100
    end
    object memTableLinesquantity: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'quantity'
    end
    object memTableLinessubtotal: TFloatField
      DisplayLabel = 'Unitario'
      FieldName = 'subtotal'
    end
    object memTableLinestotal: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'total'
    end
  end
  object memTableOrders: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 320
    Top = 32
    object memTableOrdersid: TIntegerField
      FieldName = 'id'
    end
    object memTableOrdersstatus: TStringField
      FieldName = 'status'
    end
    object memTableOrderstotal: TFloatField
      FieldName = 'total'
    end
    object memTableOrdersdate_created: TStringField
      FieldName = 'date_created'
      Size = 50
    end
    object memTableOrderscurrency: TStringField
      FieldName = 'currency'
      Size = 10
    end
    object memTableOrdersfirst_name: TStringField
      FieldName = 'first_name'
      Size = 50
    end
    object memTableOrderslast_name: TStringField
      FieldName = 'last_name'
      Size = 50
    end
    object memTableOrdersaddress_1: TStringField
      FieldName = 'address_1'
      Size = 100
    end
    object memTableOrderscity: TStringField
      FieldName = 'city'
      Size = 50
    end
  end
  object dsHeader: TDataSource
    DataSet = memTableHeader
    Left = 224
    Top = 208
  end
  object dsShipping: TDataSource
    DataSet = memTableShipping
    Left = 184
    Top = 160
  end
  object dsLines: TDataSource
    DataSet = memTableLines
    Left = 200
    Top = 112
  end
  object dsOrders: TDataSource
    DataSet = memTableOrders
    Left = 208
    Top = 40
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    FieldDefs = <>
    TypesMode = Rich
    NestedElements = True
    Left = 840
    Top = 560
  end
  object RESTClient1: TRESTClient
    Authenticator = HTTPBasicAuthenticator1
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://karel.open24.com.ar/wp-json/wc/v3/orders'
    Params = <>
    SynchronizedEvents = False
    Left = 424
    Top = 488
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 552
    Top = 488
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 664
    Top = 496
  end
  object HTTPBasicAuthenticator1: THTTPBasicAuthenticator
    Username = 'ck_5fa47fcda7d2201167dc54bcd439075e9897ad2b'
    Password = 'cs_bec3d7d808e639e17cb4519c7d359e524cbe6567'
    Left = 792
    Top = 488
  end
  object ActionList1: TActionList
    Left = 496
    Top = 305
    object Consultar: TAction
      Caption = 'Consultar'
      OnExecute = ConsultarExecute
    end
    object GenerarRto: TAction
      Caption = 'Generar Remito'
      OnExecute = GenerarRtoExecute
    end
    object GenerarFcContado: TAction
      Caption = 'Generar Factura de Contado'
      OnExecute = GenerarFcContadoExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 656
    Top = 80
    object GenerarRto1: TMenuItem
      Action = GenerarRto
    end
    object GenerarFcContado1: TMenuItem
      Action = GenerarFcContado
    end
  end
end
