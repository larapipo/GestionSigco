object FormCambiaArticuloEnVtas: TFormCambiaArticuloEnVtas
  Left = 477
  Top = 71
  BorderIcons = [biSystemMenu]
  Caption = 'Reemplazo de Articulos con Movimiento'
  ClientHeight = 588
  ClientWidth = 701
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 701
    Height = 441
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object Label6: TLabel
      Left = 24
      Top = 95
      Width = 185
      Height = 19
      Caption = 'Articulo de Reemplazo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnCabecera: TPanel
      Left = 1
      Top = 1
      Width = 699
      Height = 89
      Align = alTop
      TabOrder = 0
      object JvGradient1: TJvGradient
        Left = 1
        Top = 1
        Width = 697
        Height = 87
        Style = grVertical
        StartColor = clWhite
        EndColor = clGradientInactiveCaption
        ExplicitLeft = -55
        ExplicitTop = 8
      end
      object lwArticulos: TAdvListView
        Left = 1
        Top = 1
        Width = 697
        Height = 87
        Align = alClient
        Columns = <
          item
            Caption = 'Articulos'
            MinWidth = 500
            Width = 670
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.ItemData = {050000000000000000}
        RowSelect = True
        ParentFont = False
        TabOrder = 0
        ViewStyle = vsReport
        FilterTimeOut = 0
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'Tahoma'
        PrintSettings.Font.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        HeaderColor = clMoneyGreen
        HeaderOwnerDraw = True
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clBlue
        HeaderFont.Height = -16
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = [fsBold]
        ProgressSettings.ValueFormat = '%d%%'
        ItemHeight = 15
        DetailView.Font.Charset = DEFAULT_CHARSET
        DetailView.Font.Color = clBlue
        DetailView.Font.Height = -11
        DetailView.Font.Name = 'Tahoma'
        DetailView.Font.Style = []
        Version = '1.9.0.0'
        ExplicitHeight = 86
      end
    end
    object ceCodigo: TJvComboEdit
      Left = 24
      Top = 117
      Width = 129
      Height = 27
      ButtonWidth = 23
      ClickKey = 16397
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000A000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFC000003300000033000000FFC00000}
      ParentFont = False
      TabOrder = 1
      Text = ''
      OnButtonClick = ceCodigoButtonClick
      OnExit = ceCodigoExit
      OnKeyPress = ceCodigoKeyPress
    end
    object edDetalle: TEdit
      Left = 168
      Top = 117
      Width = 425
      Height = 27
      Color = clInfoBk
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object chVta: TCheckBox
      Left = 24
      Top = 160
      Width = 217
      Height = 17
      TabStop = False
      Caption = 'Reemplazar en Fc.de Vta'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 4
    end
    object chCompra: TCheckBox
      Left = 24
      Top = 183
      Width = 257
      Height = 17
      TabStop = False
      Caption = 'Reemplazar en Fc.de Compra'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 6
    end
    object chPresupuesto: TCheckBox
      Left = 24
      Top = 206
      Width = 257
      Height = 17
      TabStop = False
      Caption = 'Reemplazar en Presupuestos'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 7
    end
    object chRemitos: TCheckBox
      Left = 24
      Top = 229
      Width = 257
      Height = 17
      TabStop = False
      Caption = 'Reemplazar en Remitos de Vta'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 8
    end
    object chNpedido: TCheckBox
      Left = 24
      Top = 252
      Width = 345
      Height = 17
      TabStop = False
      Caption = 'Reemplazar en Notas de Pedidos Clientes'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 9
    end
    object btOk: TBitBtn
      Left = 560
      Top = 374
      Width = 115
      Height = 35
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
      TabOrder = 3
      OnClick = btOkClick
    end
    object btCancelar: TBitBtn
      Left = 434
      Top = 374
      Width = 120
      Height = 35
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 5
    end
    object chAjustes: TCheckBox
      Left = 24
      Top = 275
      Width = 345
      Height = 17
      TabStop = False
      Caption = 'Reemplazar en Ajustes'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 10
    end
    object chTrans: TCheckBox
      Left = 386
      Top = 160
      Width = 289
      Height = 17
      TabStop = False
      Caption = 'Reemplazar en Transferencias'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 11
    end
    object chOCompra: TCheckBox
      Left = 386
      Top = 183
      Width = 289
      Height = 17
      TabStop = False
      Caption = 'Reemplazar en Orden de Compra'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 12
    end
    object chNotaPedido: TCheckBox
      Left = 386
      Top = 206
      Width = 289
      Height = 17
      TabStop = False
      Caption = 'Reemplazar en Notas de Pedido'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 13
    end
    object chDetaleProduccion: TCheckBox
      Left = 386
      Top = 229
      Width = 289
      Height = 17
      TabStop = False
      Caption = 'Reemplazar en Detalle Produccion'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 14
    end
    object chPreciosClientes: TCheckBox
      Left = 24
      Top = 298
      Width = 353
      Height = 17
      TabStop = False
      Caption = 'Reemplazar en Precios Especiales Cliente'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 15
    end
    object chOrdenTrabajo: TCheckBox
      Left = 386
      Top = 252
      Width = 289
      Height = 17
      TabStop = False
      Caption = 'Reemplazar en Orden de Trabajo'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 16
    end
    object chPlantillasAbonos: TCheckBox
      Left = 386
      Top = 275
      Width = 289
      Height = 17
      TabStop = False
      Caption = 'Reemplazar en Plantillas de Abono'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 17
    end
    object chModelos: TCheckBox
      Left = 386
      Top = 298
      Width = 289
      Height = 17
      TabStop = False
      Caption = 'Reemplazar en Fc.Modelos'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 18
    end
    object chNotaVta: TCheckBox
      Left = 24
      Top = 320
      Width = 353
      Height = 17
      TabStop = False
      Caption = 'Reemplazar en Notas de Vta'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 19
    end
    object chOTrabajoConsumibles: TCheckBox
      Left = 387
      Top = 320
      Width = 289
      Height = 17
      TabStop = False
      Caption = 'Reemplazar en O de Trabajo Consum.'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 20
    end
  end
  object QModificaFcVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update fcvtadet d set d.codigoarticulo = :newcodigo'
      'where d.codigoarticulo = :oldcodigo'
      'and ((d.id_cabfac= :id ) or ( :id = -1 ))')
    Left = 40
    Top = 32
    ParamData = <
      item
        Name = 'newcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'oldcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk,s.detalle_stk from stock s where s.codigo_st' +
        'k=:codigo')
    Left = 224
    Top = 488
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QStockCODIGO_STK: TStringField
      DisplayWidth = 8
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object QStockDETALLE_STK: TStringField
      DisplayWidth = 45
      FieldName = 'DETALLE_STK'
      Size = 45
    end
  end
  object QModificaFcCompra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update fccompdet d set d.codigoarticulo= :newcodigo'
      'where d.codigoarticulo = :oldcodigo'
      'and ((d.id_cabfac= :id ) or ( :id = -1 ))')
    Left = 32
    Top = 88
    ParamData = <
      item
        Name = 'newcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'oldcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QPresupuesto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update presdet d set d.codigoarticulo= :newcodigo'
      'where d.codigoarticulo = :oldcodigo'
      'and ((d.id_cabpres= :id ) or ( :id = -1 ))')
    Left = 32
    Top = 144
    ParamData = <
      item
        Name = 'newcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'oldcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QModificaFcSub: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update fcvtasubdetalle d set d.codigoarticulo= :newcodigo'
      'where d.codigoarticulo = :oldcodigo'
      'and ((d.id_cabfac= :id ) or ( :id = -1 ))')
    Left = 112
    Top = 416
    ParamData = <
      item
        Name = 'newcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'oldcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QRtosVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update rtodet d set d.codigoarticulo= :newcodigo'
      'where d.codigoarticulo = :oldcodigo'
      'and ((d.id_cabrto= :id ) or ( :id = -1 ))')
    Left = 40
    Top = 248
    ParamData = <
      item
        Name = 'newcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'oldcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QNPClientesDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update npedidodet_cliente d set d.codigoarticulo= :newcodigo'
      'where d.codigoarticulo = :oldcodigo'
      'and ((d.id_cabnp= :id ) or ( :id = -1 ))')
    Left = 32
    Top = 488
    ParamData = <
      item
        Name = 'newcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'oldcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QAjustes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update rtomercadet d set d.codigo= :newcodigo'
      'where d.codigo = :oldcodigo'
      'and ((d.id_rto_cab= :id ) or ( :id = -1 ))')
    Left = 32
    Top = 448
    ParamData = <
      item
        Name = 'newcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'oldcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QTransferecias: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update trandet d set d.codigo= :newcodigo'
      'where d.codigo = :oldcodigo'
      'and ((d.id_trancab= :id ) or ( :id = -1 ))')
    Left = 224
    Top = 424
    ParamData = <
      item
        Name = 'newcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'oldcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QOrdenCompra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update ordencompradet d set d.codigoarticulo= :newcodigo'
      'where d.codigoarticulo = :oldcodigo'
      'and ((d.id_caboc= :id ) or ( :id = -1 ))')
    Left = 328
    Top = 352
    ParamData = <
      item
        Name = 'newcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'oldcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QNotaPedido: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update notapedidodet d set d.codigo= :newcodigo'
      'where d.codigo = :oldcodigo'
      'and ((d.id_cab= :id ) or ( :id = -1 ))')
    Left = 32
    Top = 392
    ParamData = <
      item
        Name = 'newcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'oldcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QDetProduccion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update stock_produccion_det d set d.codigo_stk= :newcodigo'
      'where d.codigo_stk = :oldcodigo'
      'and ((d.id_cab= :id ) or ( :id = -1 ))')
    Left = 32
    Top = 352
    ParamData = <
      item
        Name = 'newcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'oldcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QPreciosClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update precioespecialdet d set d.codigoarticulo= :newcodigo'
      'where d.codigoarticulo = :oldcodigo'
      'and ((d.id_cabecera= :id ) or ( :id = -1 ))')
    Left = 192
    Top = 360
    ParamData = <
      item
        Name = 'newcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'oldcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QOrdenTrabajo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update ordentrabajodet d set d.codigoarticulo= :newcodigo'
      'where d.codigoarticulo = :oldcodigo'
      'and ((d.id_cabot= :id ) or ( :id = -1 ))'
      '')
    Left = 344
    Top = 408
    ParamData = <
      item
        Name = 'newcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'oldcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QModificaPlantillaAbonos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update plantillas_det d set d.codigo = :newcodigo'
      'where d.codigo = :oldcodigo'
      'and ((d.id_cab= :id ) or ( :id = -1 ))')
    Left = 552
    Top = 504
    ParamData = <
      item
        Name = 'newcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'oldcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QModificaModelos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update fcmodelodet d set d.codigoarticulo = :newcodigo'
      'where d.codigoarticulo = :oldcodigo'
      'and ((d.id_cabmodelo= :id ) or ( :id = -1 ))')
    Left = 112
    Top = 488
    ParamData = <
      item
        Name = 'newcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'oldcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QNotaVtaDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update notaventadet d set d.codigoarticulo = :newcodigo'
      'where d.codigoarticulo = :oldcodigo'
      'and ((d.id_cab= :id ) or ( :id = -1 ))')
    Left = 552
    Top = 440
    ParamData = <
      item
        Name = 'newcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'oldcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QOrdenTrabajoConsu: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update ORDENTRABAJOCONSUMIBLES d set d.codigo= :newcodigo'
      'where d.codigo = :oldcodigo'
      'and ((d.id_cabot= :id ) or ( :id = -1 ))'
      '')
    Left = 352
    Top = 496
    ParamData = <
      item
        Name = 'newcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'oldcodigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
