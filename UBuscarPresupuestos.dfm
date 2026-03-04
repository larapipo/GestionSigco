object FormBuscarPresupuestos: TFormBuscarPresupuestos
  Left = 242
  Top = 135
  BorderStyle = bsSingle
  Caption = 'Buscar Presupuestos'
  ClientHeight = 607
  ClientWidth = 705
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 705
    Height = 607
    Align = alClient
    TabOrder = 0
    object pnCabecera: TPanel
      Left = 1
      Top = 1
      Width = 703
      Height = 147
      Align = alTop
      BevelOuter = bvNone
      Caption = 'pnCabecera'
      TabOrder = 0
      object dbgCabecera: TDBGrid
        Left = 0
        Top = 0
        Width = 703
        Height = 147
        Align = alClient
        DataSource = DSPresupuestosCliente
        FixedColor = clFuchsia
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = dbgCabeceraCellClick
        OnDblClick = dbgCabeceraDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'FECHAVTA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NROCPBTE'
            Title.Alignment = taCenter
            Title.Caption = 'Nro.Cpbte'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 115
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUB_NRO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MUESTRALDR'
            Title.Alignment = taCenter
            Title.Caption = 'Entregar en'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 285
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'TOTAL'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 132
            Visible = True
          end>
      end
    end
    object pnDetalle: TPanel
      Left = 1
      Top = 148
      Width = 703
      Height = 417
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 1
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 703
        Height = 20
        Align = alTop
        Caption = 'D e t a l l e s'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 102
      end
      object DBGrillaDetalle: TDBGrid
        Left = 0
        Top = 20
        Width = 703
        Height = 397
        Align = alClient
        DataSource = DSDetallePresupuesto
        FixedColor = clFuchsia
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = AceptarItemExecute
        OnKeyPress = DBGrillaDetalleKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGOARTICULO'
            Title.Alignment = taCenter
            Title.Caption = 'Codigo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DETALLE'
            Title.Alignment = taCenter
            Title.Caption = 'Detalle'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 265
            Visible = True
          end
          item
            Color = clBtnHighlight
            Expanded = False
            FieldName = 'UNIDAD'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Uni.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'CANTIDAD'
            Title.Alignment = taCenter
            Title.Caption = 'Cant.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 66
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'UNITARIO_TOTAL'
            Title.Alignment = taCenter
            Title.Caption = '$ Unitario'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCUENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Dcto.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 51
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'TOTAL'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 87
            Visible = True
          end>
      end
    end
    object pnPie: TPanel
      Left = 1
      Top = 565
      Width = 703
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 2
      DesignSize = (
        703
        41)
      object btConfirma: TBitBtn
        Left = 21
        Top = 5
        Width = 75
        Height = 25
        Hint = 'Pasar la Linea selecionada'
        Anchors = [akLeft, akBottom]
        Caption = '&Pasar'
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
        NumGlyphs = 2
        TabOrder = 0
        OnClick = btConfirmaClick
      end
      object btSalir: TBitBtn
        Left = 614
        Top = 5
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = '&Salir'
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
        OnClick = btSalirClick
      end
      object btTodos: TBitBtn
        Left = 102
        Top = 6
        Width = 75
        Height = 25
        Hint = 'Pasa Todos los Items'
        Anchors = [akLeft, akBottom]
        Caption = '&Todos'
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
        NumGlyphs = 2
        TabOrder = 2
        OnClick = btTodosClick
      end
    end
  end
  object DSPresupuestosCliente: TDataSource
    DataSet = CDSPresupuestosCliente
    Left = 584
    Top = 64
  end
  object DSDetallePresupuesto: TDataSource
    DataSet = CDSDetallePresupuesto
    Left = 512
    Top = 304
  end
  object ActionList1: TActionList
    Left = 456
    Top = 56
    object AceptarItem: TAction
      Caption = 'AceptarItem'
      OnExecute = AceptarItemExecute
    end
  end
  object QPresupuestosCliente: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select p.id_pr,p.fechavta,p.nrocpbte,p.sub_nro, p.total,ldr.nomb' +
        're as MuestraLdr from PresCab p'
      
        'join ldrcliente ldr on ldr.codigo_cliente=p.codigo and ldr.codig' +
        'o_ldr=p.ldr'
      
        'where ((p.Codigo= :Cliente) or (:cliente='#39'******'#39')) and  p.anula' +
        'do='#39'N'#39' '
      'order by p.fechavta desc')
    Left = 128
    Top = 64
    ParamData = <
      item
        Position = 1
        Name = 'Cliente'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object CDSPresupuestosCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Cliente'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPresupuestosCliente'
    AfterScroll = CDSPresupuestosClienteAfterScroll
    Left = 368
    Top = 64
    object CDSPresupuestosClienteID_PR: TIntegerField
      FieldName = 'ID_PR'
      Origin = 'ID_PR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPresupuestosClienteFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object CDSPresupuestosClienteNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSPresupuestosClienteSUB_NRO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Sub'
      FieldName = 'SUB_NRO'
      Required = True
      Size = 2
    end
    object CDSPresupuestosClienteTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSPresupuestosClienteMUESTRALDR: TStringField
      FieldName = 'MUESTRALDR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
  end
  object DSPPresupuestosCliente: TDataSetProvider
    DataSet = QPresupuestosCliente
    Options = []
    Left = 272
    Top = 64
  end
  object CDSDetallePresupuesto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Presupuesto'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDetallePresupuesto'
    Left = 432
    Top = 304
    object CDSDetallePresupuestoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDetallePresupuestoID_CABPRES: TIntegerField
      FieldName = 'ID_CABPRES'
      Origin = 'ID_CABPRES'
    end
    object CDSDetallePresupuestoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSDetallePresupuestoCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSDetallePresupuestoNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSDetallePresupuestoRENGLON: TFloatField
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
    end
    object CDSDetallePresupuestoFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object CDSDetallePresupuestoCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSDetallePresupuestoDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSDetallePresupuestoUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object CDSDetallePresupuestoDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Size = 1
    end
    object CDSDetallePresupuestoDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSDetallePresupuestoCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSDetallePresupuestoCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSDetallePresupuestoCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSDetallePresupuestoCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSDetallePresupuestoUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSDetallePresupuestoIVA_UNITARIO: TFloatField
      FieldName = 'IVA_UNITARIO'
      Origin = 'IVA_UNITARIO'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSDetallePresupuestoUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSDetallePresupuestoUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
      OnGetText = CDSDetallePresupuestoUNITARIO_TOTALGetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSDetallePresupuestoTOTAL_EXENTO: TFloatField
      FieldName = 'TOTAL_EXENTO'
      Origin = 'TOTAL_EXENTO'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSDetallePresupuestoTOTAL_GRAVADO: TFloatField
      FieldName = 'TOTAL_GRAVADO'
      Origin = 'TOTAL_GRAVADO'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSDetallePresupuestoIVA_TOTAL: TFloatField
      FieldName = 'IVA_TOTAL'
      Origin = 'IVA_TOTAL'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSDetallePresupuestoTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      OnGetText = CDSDetallePresupuestoTOTALGetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSDetallePresupuestoIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
    end
    object CDSDetallePresupuestoTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Origin = 'TIPOIVA_TASA'
    end
    object CDSDetallePresupuestoIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
      Origin = 'IVA_SOBRETASA'
    end
    object CDSDetallePresupuestoTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Origin = 'TIPOIVA_SOBRETASA'
    end
    object CDSDetallePresupuestoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSDetallePresupuestoDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object CDSDetallePresupuestoCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object CDSDetallePresupuestoMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Size = 1
    end
    object CDSDetallePresupuestoMARGEN: TFloatField
      FieldName = 'MARGEN'
      Origin = 'MARGEN'
    end
    object CDSDetallePresupuestoAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Size = 1
    end
    object CDSDetallePresupuestoID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
      Required = True
    end
    object CDSDetallePresupuestoCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      Required = True
    end
    object CDSDetallePresupuestoACEPTADO: TStringField
      FieldName = 'ACEPTADO'
      Origin = 'ACEPTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSDetallePresupuestoNOTAS: TStringField
      FieldName = 'NOTAS'
      Origin = 'NOTAS'
      Size = 100
    end
    object CDSDetallePresupuestoCPBTESALIDA_ID: TIntegerField
      FieldName = 'CPBTESALIDA_ID'
      Origin = 'CPBTESALIDA_ID'
    end
    object CDSDetallePresupuestoCPBTESALIDA_TIPO: TStringField
      FieldName = 'CPBTESALIDA_TIPO'
      Origin = 'CPBTESALIDA_TIPO'
      Size = 2
    end
    object CDSDetallePresupuestoCPBTESALIDA_CLASE: TStringField
      FieldName = 'CPBTESALIDA_CLASE'
      Origin = 'CPBTESALIDA_CLASE'
      Size = 2
    end
    object CDSDetallePresupuestoCPBTESALIDA_NROCPBTE: TStringField
      FieldName = 'CPBTESALIDA_NROCPBTE'
      Origin = 'CPBTESALIDA_NROCPBTE'
      Size = 13
    end
  end
  object DSPDetallePresupuesto: TDataSetProvider
    DataSet = QDetallePresupuesto
    Options = []
    Left = 360
    Top = 304
  end
  object QDetallePresupuesto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from PresDet'
      'where Id_CabPres= :Presupuesto')
    Left = 272
    Top = 304
    ParamData = <
      item
        Position = 1
        Name = 'Presupuesto'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
