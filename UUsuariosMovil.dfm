inherited FormUsuariosMoviles: TFormUsuariosMoviles
  Caption = 'Administracion de Usuarios Movil'
  ClientHeight = 631
  StyleElements = [seFont, seClient, seBorder]
  ExplicitHeight = 672
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Height = 321
    StyleElements = [seFont, seClient, seBorder]
    ExplicitHeight = 321
    object pcDatos: TPageControl
      Left = 0
      Top = 0
      Width = 760
      Height = 321
      ActivePage = tsPrincipal
      Align = alClient
      TabOrder = 0
      ExplicitLeft = -32
      ExplicitTop = 32
      object tsPrincipal: TTabSheet
        Caption = 'Datos Principales'
        object Label9: TLabel
          Left = 317
          Top = 99
          Width = 102
          Height = 13
          Caption = 'Lista de Precios Base'
        end
        object Label8: TLabel
          Left = 482
          Top = 5
          Width = 124
          Height = 13
          Caption = 'Max descuentos Adicional'
        end
        object Label7: TLabel
          Left = 15
          Top = 5
          Width = 9
          Height = 13
          Caption = 'Id'
        end
        object Label6: TLabel
          Left = 7
          Top = 155
          Width = 90
          Height = 13
          Caption = 'Cobrador Asociado'
        end
        object Label5: TLabel
          Left = 7
          Top = 99
          Width = 93
          Height = 13
          Caption = 'Vendedor Asociado'
        end
        object Label4: TLabel
          Left = 317
          Top = 51
          Width = 23
          Height = 13
          Caption = 'Perfil'
        end
        object Label3: TLabel
          Left = 152
          Top = 51
          Width = 54
          Height = 13
          Caption = 'Contrase'#241'a'
        end
        object Label2: TLabel
          Left = 7
          Top = 51
          Width = 36
          Height = 13
          Caption = 'Usuario'
        end
        object Label1: TLabel
          Left = 152
          Top = 5
          Width = 80
          Height = 13
          Caption = 'Nombre Fantasia'
        end
        object Label10: TLabel
          Left = 317
          Top = 155
          Width = 32
          Height = 13
          Caption = 'Cliente'
        end
        object DBEdit1: TDBEdit
          Left = 152
          Top = 24
          Width = 297
          Height = 21
          DataField = 'NOMBRE'
          DataSource = DSBase
          TabOrder = 0
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 317
          Top = 118
          Width = 268
          Height = 21
          DataField = 'LISTA_POR_DEFECTO'
          DataSource = DSBase
          KeyField = 'ID'
          ListField = 'NOMBRE'
          ListSource = DSListas
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 512
          Top = 24
          Width = 91
          Height = 21
          DataField = 'DESCUENTO_ADICIONAL'
          DataSource = DSBase
          TabOrder = 2
        end
        object JvDBLookupCombo2: TJvDBLookupCombo
          Left = 7
          Top = 174
          Width = 265
          Height = 21
          DropDownCount = 15
          DropDownWidth = 300
          DataField = 'COBRADOR'
          DataSource = DSBase
          EmptyValue = '000000'
          LookupField = 'CODIGO'
          LookupDisplay = 'NOMBRE'
          LookupSource = DSCobrador
          TabOrder = 3
        end
        object AdvDBComboBox1: TAdvDBComboBox
          Left = 317
          Top = 67
          Width = 180
          Height = 21
          Color = clWindow
          Version = '1.0.6.1'
          Visible = True
          ButtonWidth = 17
          DataField = 'PERFIL'
          DataSource = DSBase
          DropWidth = 0
          Enabled = True
          ItemIndex = -1
          Items.Strings = (
            'Administrador'
            'Vendedor'
            'Stock'
            'Cliente')
          Items.StoredStrings = (
            '0'
            '1'
            '2'
            '3')
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'MS Sans Serif'
          LabelFont.Style = []
          TabOrder = 4
          OnChange = AdvDBComboBox1Change
        end
        object JvDBLookupCombo1: TJvDBLookupCombo
          Left = 7
          Top = 118
          Width = 265
          Height = 21
          DropDownCount = 15
          DropDownWidth = 300
          DataField = 'VENDEDOR'
          DataSource = DSBase
          EmptyValue = '000000'
          LookupField = 'CODIGO'
          LookupDisplay = 'NOMBRE'
          LookupSource = DSVendedor
          TabOrder = 5
        end
        object DBEdit4: TDBEdit
          Left = 152
          Top = 67
          Width = 150
          Height = 21
          DataField = 'PASSWORD'
          DataSource = DSBase
          TabOrder = 6
        end
        object DBEdit3: TDBEdit
          Left = 7
          Top = 67
          Width = 130
          Height = 21
          DataField = 'USUARIO'
          DataSource = DSBase
          TabOrder = 7
        end
        object DBEdit2: TDBEdit
          Left = 7
          Top = 24
          Width = 130
          Height = 21
          DataField = 'ID'
          DataSource = DSBase
          Enabled = False
          TabOrder = 8
        end
        object edNombreCliente: TDBEdit
          Left = 392
          Top = 174
          Width = 281
          Height = 21
          Color = clInfoBk
          DataField = 'NOMBRECLIENTE'
          DataSource = DSBase
          Enabled = False
          TabOrder = 10
          StyleElements = [seBorder]
        end
        object ceCliente: TJvDBComboEdit
          Left = 317
          Top = 174
          Width = 73
          Height = 21
          StyleElements = [seBorder]
          ClickKey = 16397
          DataField = 'CLIENTE'
          DataSource = DSBase
          Enabled = False
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          ButtonWidth = 20
          TabOrder = 9
          OnButtonClick = BuscarClienteExecute
          OnKeyDown = ceClienteKeyDown
        end
      end
      object tsDescuentos: TTabSheet
        Caption = 'Descuentos'
        ImageIndex = 1
        object dbgDetalle: TDBGrid
          Left = 0
          Top = 33
          Width = 752
          Height = 260
          Align = alClient
          DataSource = DSDetalle
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = dbgDetalleColEnter
          OnEditButtonClick = BuscarArticuloExecute
          OnKeyPress = dbgDetalleKeyPress
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 89
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'MUESTRASTK'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 362
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
              Width = 113
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 752
          Height = 33
          Align = alTop
          Caption = 'Descuentos Permitidos'
          Color = clMenuHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 321
    ExplicitTop = 321
  end
  inherited Panel1: TPanel
    Top = 351
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 351
  end
  inherited ActionList1: TActionList
    Left = 512
    Top = 120
    object BuscarArticulo: TAction
      Caption = 'BuscarArticulo'
      OnExecute = BuscarArticuloExecute
    end
    object BuscarCliente: TAction
      Caption = 'BuscarCliente'
      OnExecute = BuscarClienteExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSUsuarios
    Left = 544
    Top = 80
  end
  inherited ImageList1: TImageList
    Left = 240
    Top = 96
  end
  inherited JvFormStorage: TJvFormStorage
    Left = 248
    Top = 256
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 32
    Top = 320
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 232
    Top = 376
  end
  inherited ComBuscadorBase: TComBuscador
    Data = QueryBUscador
    Campo = 'ID'
    Left = 360
  end
  inherited QBrowse2: TFDQuery
    Top = 256
  end
  inherited QUltimoCodigo2: TFDQuery
    SQL.Strings = (
      'select Max(id) from usuarios_app ')
    Left = 104
    Top = 312
  end
  object QUsuarios: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select u.*,c.nombre as NombreCliente from usuarios_app u '
      'left join clientes c on c.codigo=u.cliente'
      'where u.id = :id')
    Left = 336
    Top = 368
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QUsuariosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QUsuariosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object QUsuariosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 50
    end
    object QUsuariosPASSWORD: TStringField
      FieldName = 'PASSWORD'
      Origin = '"PASSWORD"'
      Required = True
    end
    object QUsuariosPERFIL: TIntegerField
      FieldName = 'PERFIL'
      Origin = 'PERFIL'
      Required = True
    end
    object QUsuariosVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object QUsuariosCOBRADOR: TStringField
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
      Size = 6
    end
    object QUsuariosDESCUENTO_ADICIONAL: TFloatField
      FieldName = 'DESCUENTO_ADICIONAL'
      Origin = 'DESCUENTO_ADICIONAL'
      Required = True
    end
    object QUsuariosLISTA_POR_DEFECTO: TIntegerField
      FieldName = 'LISTA_POR_DEFECTO'
      Origin = 'LISTA_POR_DEFECTO'
      Required = True
    end
    object QUsuariosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object QUsuariosNOMBRECLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMBRECLIENTE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
  end
  object QVendedores: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select e.codigo,e.nombre from  personal e where e.vendedor='#39'S'#39' a' +
        'nd e.activo='#39'S'#39)
    Left = 144
    Top = 456
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
  object CDSUsuarios: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPUsuarios'
    OnNewRecord = CDSUsuariosNewRecord
    Left = 480
    Top = 368
    object CDSUsuariosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSUsuariosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object CDSUsuariosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 50
    end
    object CDSUsuariosPASSWORD: TStringField
      FieldName = 'PASSWORD'
      Origin = '"PASSWORD"'
      Required = True
    end
    object CDSUsuariosPERFIL: TIntegerField
      FieldName = 'PERFIL'
      Origin = 'PERFIL'
      Required = True
    end
    object CDSUsuariosVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object CDSUsuariosCOBRADOR: TStringField
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
      Size = 6
    end
    object CDSUsuariosDESCUENTO_ADICIONAL: TFloatField
      FieldName = 'DESCUENTO_ADICIONAL'
      Origin = 'DESCUENTO_ADICIONAL'
      Required = True
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSUsuariosLISTA_POR_DEFECTO: TIntegerField
      FieldName = 'LISTA_POR_DEFECTO'
      Origin = 'LISTA_POR_DEFECTO'
      Required = True
    end
    object CDSUsuariosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      OnSetText = CDSUsuariosCLIENTESetText
      Size = 6
    end
    object CDSUsuariosNOMBRECLIENTE: TStringField
      FieldName = 'NOMBRECLIENTE'
      ProviderFlags = []
      Size = 35
    end
  end
  object DSPUsuarios: TDataSetProvider
    DataSet = QUsuarios
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 408
    Top = 368
  end
  object DSVendedor: TDataSource
    DataSet = QVendedores
    Left = 224
    Top = 456
  end
  object QueryBUscador: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select u.Nombre,u.id from usuarios_app u ')
    Left = 40
    Top = 392
    object QueryBUscadorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object QueryBUscadorID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QCobradores: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select e.codigo,e.nombre from  personal e where e.cobrador='#39'S'#39' a' +
        'nd e.activo='#39'S'#39)
    Left = 336
    Top = 424
    object StringField1: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object StringField2: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
  end
  object DSCobrador: TDataSource
    DataSet = QCobradores
    Left = 408
    Top = 424
  end
  object QListas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select l.id,l.nombre from LISTAPRECIOESPECIALCAB l')
    Left = 336
    Top = 480
    object QListasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QListasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
  end
  object DSListas: TDataSource
    DataSet = QListas
    Left = 408
    Top = 480
  end
  object QDetalle: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select d.id,d.id_usuario,d.codigo,d.descuento,s.detalle_stk as M' +
        'uestraStk from usuarios_app_desc d'
      '  left join stock s on s.codigo_stk=d.codigo'
      'where d.id_usuario= :id_usuario')
    Left = 40
    Top = 536
    ParamData = <
      item
        Name = 'ID_USUARIO'
        ParamType = ptInput
      end>
    object QDetalleID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDetalleID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object QDetalleCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QDetalleDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      Required = True
    end
    object QDetalleMUESTRASTK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASTK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
  end
  object DSPDetalle: TDataSetProvider
    DataSet = QDetalle
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 536
  end
  object CDSDetalle: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID_USUARIO'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDetalle'
    OnNewRecord = CDSDetalleNewRecord
    Left = 168
    Top = 536
    object CDSDetalleID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDetalleID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object CDSDetalleCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      OnSetText = CDSDetalleCODIGOSetText
      Size = 8
    end
    object CDSDetalleDESCUENTO: TFloatField
      DisplayLabel = 'Descuento'
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      Required = True
      DisplayFormat = '0.00'
    end
    object CDSDetalleMUESTRASTK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'MUESTRASTK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
  end
  object ibgDetalle: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_USUARIOS_APP_DESC'
    SystemGenerators = False
    Left = 296
    Top = 544
  end
  object QStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.detalle_stk from stock s where s.codigo_stk=:codigo')
    Left = 544
    Top = 544
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
  end
  object DSDetalle: TDataSource
    DataSet = CDSDetalle
    Left = 232
    Top = 536
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT C.*,cc.nombre as MuestraCoorporativo FROM Clientes C'
      'left join clientes cc on cc.codigo=c.codigo_coorporativo'
      'where (c.codigo=:codigo)')
    Left = 616
    Top = 416
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
end
