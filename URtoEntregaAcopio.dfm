inherited FormRtoEntregaAcopio: TFormRtoEntregaAcopio
  Left = 155
  Top = 164
  Caption = 'Remitos de Entrega Mercaderia en Acopio'
  ClientHeight = 620
  ClientWidth = 1042
  StyleElements = [seFont, seClient, seBorder]
  OnResize = FormResize
  OnShow = nil
  ExplicitWidth = 1060
  ExplicitHeight = 661
  TextHeight = 13
  object Label12: TLabel [0]
    Left = 125
    Top = 9
    Width = 56
    Height = 13
    Caption = 'Nro.Factura'
  end
  inherited pnPrincipal: TPanel
    Width = 1042
    Height = 567
    Align = alClient
    ParentFont = False
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1042
    ExplicitHeight = 567
    object lbNroRemito: TLabel
      Left = 446
      Top = 40
      Width = 86
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Nro. de Remito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = VerRemitoExecute
      ExplicitLeft = 424
    end
    object pnRtoEntrega: TPanel
      Left = 0
      Top = 0
      Width = 545
      Height = 567
      Align = alLeft
      Anchors = [akLeft, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        545
        567)
      object DBText2: TDBText
        Left = 9
        Top = 479
        Width = 65
        Height = 17
        Anchors = [akLeft, akBottom]
        DataField = 'CUMPLIDO'
        DataSource = DSBase
        ExplicitTop = 473
      end
      object pnCab: TPanel
        Left = 1
        Top = 1
        Width = 543
        Height = 128
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 6
          Top = 1
          Width = 30
          Height = 13
          Caption = 'Fecha'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 416
          Top = 1
          Width = 92
          Height = 13
          Caption = 'Numero Entrega'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 6
          Top = 39
          Width = 32
          Height = 13
          Caption = 'Cliente'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 117
          Top = 39
          Width = 37
          Height = 13
          Caption = 'Nombre'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 237
          Top = 82
          Width = 45
          Height = 13
          Caption = 'Direccion'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 117
          Top = 1
          Width = 56
          Height = 13
          Caption = 'Nro.Factura'
          FocusControl = DBEdit6
        end
        object RxLabel4: TJvLabel
          Left = 6
          Top = 81
          Width = 44
          Height = 13
          Caption = 'Deposito'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object DBEdit2: TDBEdit
          Left = 416
          Top = 15
          Width = 114
          Height = 24
          BiDiMode = bdRightToLeft
          DataField = 'NUMERO'
          DataSource = DSBase
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 6
          Top = 55
          Width = 105
          Height = 21
          DataField = 'CLIENTE'
          DataSource = DSBase
          Enabled = False
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 117
          Top = 55
          Width = 286
          Height = 21
          DataField = 'NOMBRE'
          DataSource = DSBase
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 237
          Top = 97
          Width = 293
          Height = 21
          DataField = 'DIRECCION'
          DataSource = DSBase
          Enabled = False
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 117
          Top = 15
          Width = 114
          Height = 21
          DataField = 'NRO_FACTURA'
          DataSource = DSBase
          Enabled = False
          MaxLength = 15
          TabOrder = 5
        end
        object DBEdit1: TJvDBDateEdit
          Left = 6
          Top = 15
          Width = 105
          Height = 21
          DataField = 'FECHA'
          DataSource = DSBase
          ShowNullDate = False
          TabOrder = 0
        end
        object RxCDeposito: TJvDBComboEdit
          Left = 6
          Top = 97
          Width = 48
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          ClickKey = 16397
          DataField = 'DEPOSITO'
          DataSource = DSBase
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          ButtonWidth = 16
          TabOrder = 6
          OnButtonClick = RxCDepositoButtonClick
        end
        object dbeMuestraDeposito: TDBEdit
          Left = 61
          Top = 97
          Width = 170
          Height = 21
          TabStop = False
          Color = clInfoBk
          DataField = 'MUESTRADEPOSITO'
          DataSource = DSBase
          Enabled = False
          TabOrder = 7
        end
      end
      object DBEdit9: TDBEdit
        Left = 7
        Top = 496
        Width = 480
        Height = 21
        Anchors = [akLeft, akBottom]
        DataField = 'OBS1'
        DataSource = DSBase
        TabOrder = 2
      end
      object DBEdit10: TDBEdit
        Left = 7
        Top = 523
        Width = 480
        Height = 21
        Anchors = [akLeft, akBottom]
        DataField = 'OBS2'
        DataSource = DSBase
        TabOrder = 3
      end
      object dbgRtoDet: TDBGrid
        Left = 1
        Top = 129
        Width = 543
        Height = 346
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DSRtoDet
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnColEnter = dbgRtoDetColEnter
        OnDragDrop = dbgRtoDetDragDrop
        OnDragOver = dbgRtoDetDragOver
        OnEnter = dbgRtoDetEnter
        OnExit = dbgRtoDetExit
        OnKeyPress = dbgRtoDetKeyPress
        Columns = <
          item
            ButtonStyle = cbsEllipsis
            Color = clInactiveBorder
            Expanded = False
            FieldName = 'CODIGO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 77
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'DETALLE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 333
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CANTIDAD'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 88
            Visible = True
          end>
      end
      object edRemito: TDBEdit
        Left = 417
        Top = 55
        Width = 114
        Height = 22
        AutoSize = False
        BiDiMode = bdRightToLeft
        DataField = 'NRO_REMITO'
        DataSource = DSBase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
    end
    object pnAcopio: TPanel
      Left = 545
      Top = 0
      Width = 497
      Height = 567
      Align = alClient
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      TabOrder = 1
      DesignSize = (
        497
        567)
      object Label8: TLabel
        Left = 321
        Top = 440
        Width = 58
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = 'Cant.Pedida'
        FocusControl = DBEdit7
        ExplicitLeft = 304
        ExplicitTop = 510
      end
      object Label9: TLabel
        Left = 401
        Top = 440
        Width = 49
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = 'Entregado'
        FocusControl = DBEdit8
        ExplicitLeft = 384
        ExplicitTop = 510
      end
      object Label10: TLabel
        Left = 8
        Top = 460
        Width = 90
        Height = 13
        Cursor = crHandPoint
        Anchors = [akLeft, akBottom]
        Caption = '<< Pasar Todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        OnClick = Label10Click
        ExplicitTop = 530
      end
      object Label11: TLabel
        Left = 113
        Top = 462
        Width = 36
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'Nro.Cp.'
        FocusControl = DBEdit7
        ExplicitTop = 532
      end
      object pnCabMerc: TPanel
        Left = 4
        Top = 4
        Width = 489
        Height = 144
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        ParentFont = False
        TabOrder = 1
        object Label7: TLabel
          Left = 2
          Top = 1
          Width = 32
          Height = 13
          Caption = 'Cliente'
        end
        object DBText1: TDBText
          Left = 392
          Top = 1
          Width = 65
          Height = 17
          DataField = 'ID'
          DataSource = DSMercCab
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object ceCliente: TJvComboEdit
          Left = 7
          Top = 16
          Width = 80
          Height = 21
          Hint = 
            'Primero indique el cliente (tipee el c'#243'digo o presione el bot'#243'n ' +
            '[...] para buscar.'
          AlwaysEnableButton = True
          ButtonFlat = True
          ButtonWidth = 16
          ClickKey = 16397
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          MaxLength = 6
          ParentFont = False
          TabOrder = 0
          Text = ''
          OnButtonClick = BuscarClienteExecute
        end
        object chCumplidos: TCheckBox
          Left = 373
          Top = 20
          Width = 83
          Height = 17
          Caption = 'S'#243'lo Activos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = chCumplidosClick
        end
        object dbgMercCab: TDBGrid
          Left = 6
          Top = 43
          Width = 477
          Height = 95
          Align = alBottom
          DataSource = DSMercCab
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgMercCabDrawColumnCell
          OnDblClick = dbgMercCabDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'FECHA'
              Title.Alignment = taCenter
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NROCPBTE'
              Title.Alignment = taCenter
              Width = 116
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DIRECCION'
              Title.Alignment = taCenter
              Width = 212
              Visible = True
            end>
        end
        object edNombreCliente: TEdit
          Left = 93
          Top = 16
          Width = 274
          Height = 21
          Color = clInfoBk
          Enabled = False
          TabOrder = 3
        end
      end
      object DBEdit7: TJvDBCalcEdit
        Left = 319
        Top = 459
        Width = 76
        Height = 21
        Alignment = taLeftJustify
        DisplayFormat = ',0.00'
        Enabled = False
        Anchors = [akRight, akBottom]
        ShowButton = False
        TabOrder = 2
        DisabledTextColor = clBlack
        DecimalPlacesAlwaysShown = False
        DataField = 'CANTIDAD'
        DataSource = DSMercDet
      end
      object DBEdit8: TJvDBCalcEdit
        Left = 401
        Top = 459
        Width = 73
        Height = 21
        Alignment = taLeftJustify
        DisplayFormat = ',0.00'
        Enabled = False
        Anchors = [akRight, akBottom]
        ShowButton = False
        TabOrder = 3
        DisabledTextColor = clBlack
        DecimalPlacesAlwaysShown = False
        DataField = 'ENTREGADO'
        DataSource = DSMercDet
      end
      object JvDBFindEdit1: TJvDBFindEdit
        Left = 155
        Top = 459
        Width = 121
        Height = 21
        Anchors = [akLeft, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Text = ''
        DataField = 'NROCPBTE'
        DataSource = DSMercCab
        FindStyle = fsFilter
        FindMode = fmAnyPos
      end
      object LFinalizado: TcxLabel
        Left = 11
        Top = 501
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Caption = '-FINALIZADO-'
        Enabled = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -37
        Style.Font.Name = 'Arial Black'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.TextColor = clRed
        Properties.Alignment.Horz = taCenter
        Properties.LabelEffect = cxleFun
        Properties.LabelStyle = cxlsRaised
        Properties.LineOptions.InnerColor = clNone
        Properties.ShadowedColor = clWhite
        TabOrder = 5
        Transparent = True
        Visible = False
        Height = 58
        Width = 300
        AnchorX = 161
      end
      object dbgMerca: TDBGrid
        Left = 4
        Top = 148
        Width = 489
        Height = 286
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        Ctl3D = False
        DataSource = DSMercDet
        DrawingStyle = gdsClassic
        FixedColor = clSkyBlue
        GradientEndColor = clBlue
        GradientStartColor = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = dbgMercaDrawColumnCell
        OnDblClick = dbgMercaDblClick
        OnMouseMove = dbgMercaMouseMove
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clTeal
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DETALLE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clTeal
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 194
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CANTIDAD'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SALDO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clTeal
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 88
            Visible = True
          end>
      end
      object btImprimirDet: TBitBtn
        Left = 405
        Top = 519
        Width = 73
        Height = 30
        Action = ImprimirDetalle
        Anchors = [akRight, akBottom]
        Caption = 'Imprimir'
        TabOrder = 6
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 567
    Width = 1042
    Align = alBottom
    ButtonHeight = 30
    ExplicitTop = 567
    ExplicitWidth = 1042
    inherited btConfirma: TBitBtn
      Width = 72
      Height = 30
      DoubleBuffered = True
      ExplicitWidth = 72
      ExplicitHeight = 30
    end
    inherited btNuevo: TBitBtn
      Left = 74
      Height = 30
      DoubleBuffered = True
      ExplicitLeft = 74
      ExplicitHeight = 30
    end
    inherited btCancelar: TBitBtn
      Left = 149
      Height = 30
      DoubleBuffered = True
      ParentFont = False
      ExplicitLeft = 149
      ExplicitHeight = 30
    end
    inherited btModificar: TBitBtn
      Left = 224
      Height = 30
      DoubleBuffered = True
      ParentFont = False
      ExplicitLeft = 224
      ExplicitHeight = 30
    end
    inherited Pr: TSpeedButton
      Left = 299
      Height = 30
      ExplicitLeft = 299
      ExplicitHeight = 30
    end
    inherited btBuscar: TBitBtn
      Left = 314
      Height = 30
      DoubleBuffered = True
      ParentFont = False
      ExplicitLeft = 314
      ExplicitHeight = 30
    end
    inherited Ne: TSpeedButton
      Left = 389
      Height = 30
      ExplicitLeft = 389
      ExplicitHeight = 30
    end
    inherited btBorrar: TBitBtn
      Left = 404
      Height = 30
      DoubleBuffered = True
      ExplicitLeft = 404
      ExplicitHeight = 30
    end
    inherited btSalir: TBitBtn
      Left = 479
      Height = 30
      DoubleBuffered = True
      ExplicitLeft = 479
      ExplicitHeight = 30
    end
    object ToolButton1: TToolButton
      Left = 554
      Top = 0
      Width = 32
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btImprimir: TBitBtn
      Left = 586
      Top = 0
      Width = 75
      Height = 30
      Action = Imprimir
      Caption = 'Imprimir'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      TabOrder = 7
    end
    object BitBtn1: TBitBtn
      Left = 661
      Top = 0
      Width = 105
      Height = 30
      Action = GeneraRemito
      Caption = 'Generar Remito'
      Enabled = False
      TabOrder = 8
    end
  end
  inherited Panel1: TPanel
    Top = 597
    Width = 1042
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 597
    ExplicitWidth = 1042
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 953
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 953
    end
  end
  inherited ActionList1: TActionList
    Left = 344
    Top = 128
    object BuscarCliente: TAction
      Caption = 'BuscarCliente'
      OnExecute = BuscarClienteExecute
    end
    object Imprimir: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirExecute
    end
    object VerCompAcopio: TAction
      Caption = 'VerCompAcopio'
      OnExecute = VerCompAcopioExecute
    end
    object BuscaDeposito: TAction
      Caption = 'BuscaDeposito'
      OnExecute = BuscaDepositoExecute
    end
    object GeneraRemito: TAction
      Caption = 'Generar Remito'
      ImageIndex = 10
      OnExecute = GeneraRemitoExecute
    end
    object ImprimirDetalle: TAction
      Caption = 'Imprimir'
      ImageIndex = 9
      OnExecute = ImprimirDetalleExecute
    end
    object VerRemito: TAction
      Caption = 'VerRemito'
      OnExecute = VerRemitoExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = DatosAcopio.CDSRtoCab
    Left = 304
    Top = 256
  end
  inherited ImageList1: TImageList
    Left = 395
    Top = 115
    Bitmap = {
      494C01010B000C00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004490600055B0900066C0C00066C0C00055E0A00044C06000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006C6A6A006C6A6A0000000000000000006C6A6A006C6A6A00000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000560
      0900056009000891130009B0180009B31A0009B3190009B11900079614000568
      0C0005680C000000000000000000000000000000000000000000000000006C6A
      6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3E3006C6A6A006C6A
      6A006C6A6A00000000000000000000000000000000FF000000FFCC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D0600000000000000000000000000000000006C6A6A00DAD9
      D900A19F9F00A19F9F00A19F9F0037363600353535006C6D6D00BFBFBF00E1E2
      E200B7B6B6006C6A6A006C6A6A006C6A6A00000000FFCC660000FFECCC00FFEC
      CC00FFECCC00FFECCC00F0CAA600F0CAA600F0CAA600FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900CC660000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C0000000000000000006C6A6A00D4D3D300CACA
      CA008E8C8C008E8C8C008E8C8C003C3B3B000A090A00070707000B0B0B000707
      07007A7A7A00BBBBBB006C6A6A0000000000000000FFCC660000FFECCC00FFEC
      CC00FFECCC00FFECCC00FFECCC00FFECCC00F0CAA600F0CAA600FFCC9900FFCC
      9900FFCC9900FFCC9900CC660000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE6D0009B2190009B2
      190009B3190009BA1A0006670C00000000006C6A6A00CACACA00CACACA008E8C
      8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A000888686005E5B5C000707
      070009090900080808006C6A6A0076737300000000FFCC660000FFECCC000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000FFCC9900CC660000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210001B9A3A002AC65B001DBB
      45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FDF8005ACB650009B2
      190009B2190009B81A0008941300045D09006C6A6A00CACACA008E8C8C00EFEE
      EE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCECE00BDBCBC00ADAB
      AB008B898900585656007A78780075737300000000FFCC660000F1F1F100FFEC
      CC00FFECCC00FFECCC00FFECCC00FFECCC00FFECCC00FFECCC00F0CAA600F0CA
      A600FFCC9900FFCC9900CC660000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210002AB65B002CC5650022BD
      4D000FB422000AB21A000CB31C000AB219008DDB9500FDFEFD00F6FCF70058CB
      630009B2190009B51A0008AB1700045D09006C6A6A008E8C8C00FFFFFF00FEFC
      FC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0C100D7D7D700D8D8
      D800C7C6C600B7B6B600918F8F006C696900000000FFCC660000F1F1F1000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000FFCC9900CC660000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F821C0037C26C0033C76C00CDF1
      DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FDF900FFFFFF00F2FB
      F3006FD2790008B4190009B3190005650B00000000006C6A6A006C6A6A00EDEB
      EB00B1A6A7007A6F72008A83880096929500969091009D9798009A9395009E98
      9900BBBABA00D1D1D100C2C2C2006C6A6A00000000FFCC660000F8F8F800F1F1
      F100F1F1F100FFECCC00FFECCC00FFECCC00FFECCC00FFECCC00FFECCC00FFEC
      CC00F0CAA600F0CAA600CC660000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000138D230058CC830042C97700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
      FF00BCEAC1000AB41A0009B31900066D0D000000000000000000000000006C6A
      6A00BB897F00A7876D008B6F64007D6760006F626500797379008F8B8E00A9A3
      A400CBCACA00C1C1C1006C6A6A0000000000000000FFCC660000F8F8F8000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000F0CAA600CC660000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D006FD293005FD38D006DD4
      950072D6990071D6980072D6990064D28C0092DFA800FBFEFB00FFFFFF00ACE5
      B8002EBF4C0011B82B0008B1190005610A000000000000000000000000000000
      0000BD828100FFE3B400FFD39F00E9B28100C9997300BA916C00BD828100807D
      7E006C6A6A006C6A6A000000000000000000000000FFCC660000F8F8F800F8F8
      F800F8F8F800F1F1F100F1F1F100FFECCC00FFECCC00FFECCC00FFECCC00FFEC
      CC00FFECCC00FFECCC00CC660000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D0067CC83009BE5BA0038C6
      700030C3690038C56F0038C56F0070D69700E8F8EE00FFFFFF009FE2B10020BD
      48001AB93E0010BA290008A3170005610A000000000000000000000000000000
      0000BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC68800BD8281000000
      000000000000000000000000000000000000000000FFCC660000FFFFFF000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000FFECCC00CC660000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025AE3900BCEDD20082DB
      A40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2B20022BC4B001DBA
      410018B7360014C030000A85170000000000000000000000000000000000C086
      8300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD828100000000000000
      000000000000000000000000000000000000000000FFCC660000FFFFFF00FFFF
      FF00F8F8F800F8F8F800F8F8F800F1F1F100F1F1F100FFECCC00FFECCC00FFEC
      CC00FFECCC00FFECCC00CC660000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025AE390071D28C00D2F4
      E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2630024BE560023BC
      4D001FC1460016AE34000A85170000000000000000000000000000000000BD82
      8100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD828100000000000000
      000000000000000000000000000000000000000000FFCC660000FFFFFF000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000FFECCC00CC660000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000BD828100FFFF
      F200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD828100000000000000
      000000000000000000000000000000000000000000FFCC660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F8F8F800F8F8F800F8F8F800F1F1F100F1F1F100FFEC
      CC00FFECCC00FFECCC00CC660000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000025AE
      390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB157000000000000000000000000000000000000000000BD828100BD82
      8100BD828100FBEFE200FBE3CF00FBDDC200BD82810000000000000000000000
      000000000000000000000000000000000000000000FF000000FFCC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000032B74E0025AE390025AE390025AE390025AE390024A342000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD828100BD828100BD8281000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001079F000313A9000418AE000419AE000313A9000108A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007D2C05006B250800521E1500551F13006D2607007E2D05000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000521E15006B2508007D2C05007E2D05006D260700551F13000000
      0000000000000000000000000000000000000000000000000000006600000066
      0000B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B000066
      0000006600000000000000000000000000000000000000000000000000000104
      9D00041CB1000730C0000734C4000735C5000735C5000734C3000731C100041F
      B30001069E000000000000000000000000000000000000000000000000008932
      040055211700BF5C1500E1985500EFBD8A00F0BF8C00E29D5B00C2621800541F
      1600903503000000000000000000000000000000000000000000000000005521
      170089320400BF5C1500E1985500EFBD8A00F0BF8C00E29D5B00C26218009035
      0300541F16000000000000000000000000000000000000660000009900000099
      0000E5DEDF000066000000660000E4E7E700E0E3E600D9DFE000CCC9CC000066
      0000037D030000660000000000000000000000000000000000000109A100052B
      C3000735C7000733C2000732C2000732C2000732C2000732C2000733C3000735
      C400062DBE00020CA400000000000000000000000000000000006C290E00AF47
      0400EBB17900FFFEF800FEF8F400F2DAC400F2D9C200FCF6F000FFFFFC00EEBA
      8700B64E070060231100000000000000000000000000000000006C290E00AF47
      0400EBB17900FFFEF800FEF8F400F2DAC400F2D9C200FCF6F000FFFFFC00EEBA
      8700B64E07006023110000000000000000000000000000660000009900000099
      0000E9E2E2000066000000660000E2E1E300E2E6E800DDE2E400CFCCCF000066
      0000037D03000066000000000000000000000000000001049B00052BCA000636
      D8000431CD000027C400032EC1000732C2000732C2000430C1000027BF00042F
      C1000735C400072EBE0001069E000000000000000000732D0D00B0460200F4D0
      AB00FFFFFE00D4884600BD4E0400BA470000BA460000C0530700D4844200FCF8
      F300F8DDBD00B64D0500903502000000000000000000732D0D00B0460200F4D0
      AB00FFFEFE00D78C4E00C0540900BA460000BA460000BD4F0400D07E3900FCF8
      F400F8DDBD00B64D0500541F1600000000000000000000660000009900000099
      0000ECE4E4000066000000660000DFDDDF00E1E6E800E0E5E700D3D0D2000066
      0000037D030000660000000000000000000000000000031ABA000537E7000331
      DD00123DD8006480E0001840CB00002CC100022DC0000F38C4006580D9001B43
      C700052FC1000735C500051FB30000000000000000009A380000E6AB7200FFFF
      FF00CC732800C9682000CE752A00BB480000BC4B0000B8430000B8420000CA6C
      1F00FCF8F400EFBC8800541F160000000000000000009A380000E6AB7200FFFF
      FF00CF762D00B8410000BA430000BC4A0000BB470000C6631500CE753100C96B
      1F00FCF8F400EFBC880090350200000000000000000000660000009900000099
      0000EFE6E600EDE5E500E5DEDF00E0DDDF00DFE0E200E0E1E300D6D0D2000066
      0000037D030000660000000000000000000001049E000430E4000436F100002A
      E4005070E900FFFFFF00B7C4F1000D36CA00042DC300A2B2E800FFFFFF006984
      DA000026BE000733C3000731C1000108A000A9440300C05C1100FFFCFA00E1A3
      6A00BF480000EECBA900F0D5BA00BD4A0000B8420000CA6C2000E9BD9300BA46
      0000D4884300FFFFFF00C16016007B2C040089340600C05C1100FFFCFA00E1A3
      6A00C04C0000FFFFFF00D3803800BC470000B8420000DC995E00FFFFFF00B843
      0000D4874300FFFFFF00C1601600551F13000000000000660000009900000099
      0000009900000099000000990000009900000099000000990000009900000099
      000000990000006600000000000000000000020FAF000336FA000335F8000232
      EE000A35E8008CA2F200FFFFFF00B4C2F100A9B8ED00FFFFFF00A7B7E900133A
      C400052FC1000732C2000734C4000313AA009A3B0200DD955400FFFFFF00D376
      2800CC600E00EFCBA900F0D3B400C2510100D5864100FAF2E900F7E7D900BC4B
      0000BF510300FCF8F300E29D5A006D2607009A3B0200DD955400FFFFFF00D376
      2800CC600D00FFFFFF00FFFFFF00DC955400BC450000DA965800FFFFFF00BC4B
      0000BF510300FCF8F300E29D5A006D260700000000000066000000990000B1D0
      B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0
      B100009900000066000000000000000000000619BC001747FE00093AFC000435
      F8000131F000002BE80091A5F400FFFFFF00FFFFFF00ABBAEF00062FC500022D
      C0000732C2000732C2000736C5000419AE0089340600EBBB8A00FBF0E700D87A
      2B00D7742200F3D1B000F2D1B400E6AC7600FFFFFF00FFFFFF00F3DEC700BD4D
      0100BA450000F2DAC200EFC08E00551F1300A9440300EBBB8A00FBF0E700D87A
      2B00D7742200FFFFFF00FFFFFF00FFFFFF00E5AF7B00E0A16800FFFFFF00BD4D
      0100BA450000F2DAC200EFC08E007D2C0400000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900009900000066000000000000000000000B1DBE004168FE001C49FC000335
      FB000031F9000531F200A4B5F700FFFFFF00FFFFFF00B9C6F2000D36D000002C
      C6000732C2000732C2000736C5000418AD00AD450200EEBF9000FCF4EB00E28A
      3E00E1843500F6D8B800F3D7BA00E5A36500FCF3EB00FFFFFF00F3DEC900BD4D
      0100BA460000F3DEC700EFBD8A00521F1600B04A0600EEBF9000FCF4EB00E28A
      3E00E1843500FFFFFF00FFFFFF00FFFFFF00EDC59E00E5AA7500FFFFFF00BD4D
      0100BA460000F3DEC700EFBD8A007B2C0400000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900009900000066000000000000000000000613B4005B7CFC00486CFD000133
      FB00113CFB00A1B4FE00FFFFFF00A4B6F80092A7F500FFFFFF00B6C4F2001A41
      D300042FC8000732C4000734C3000212A900B0490500E9AA6E00FFFFFF00EDA4
      6200EA954700F8DEC200F7DEC600D9742100DC883F00F7E3D100F7EADC00BC4B
      0000C0540500FEFBF800E09752006B240800B0490500E9AA6E00FFFFFF00EDA4
      6200EA934600FFFFFF00FFFFFF00EDBA8800D0671300E3A66D00FFFFFF00BC4B
      0000C0540500FEFBF800E09752006B240800000000000066000000990000F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F900009900000066000000000000000000000003A0004A6AF3008FA6FF001F46
      FB004C6FFC00FFFFFF00A7B8FE000733F600002AED008CA2F600FFFFFF00627F
      E7000028D0000734CC000730C30000069F00B04A0600DD893F00FFFCF800FAD7
      B400F4A35900FCE6D000F8E3CE00E1843500D7722000D3752700E3AC7800BB47
      0000D9935400FFFFFE00BD5A10007B2C0400AD450200DD893F00FFFCF800FAD7
      B400F4A55B00FFFFFF00F0BB8700DE813000D56E1D00E7AF7A00FFFFFF00BA44
      0000D9935300FFFFFE00BD5A1000521F1600000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F90000990000006600000000000000000000000000001A2FCB0099AFFF008BA2
      FE00214DFB004D71FC000E3DFB000030FB000031F7000636F1004C6EF100103C
      E3000432DB000636D700041CB5000000000000000000C9651800F8CEA500FFFF
      FF00FED0A300F8BA7F00EFAD7000E2883B00D9792A00CE651200C04C0000D07A
      3100FFFFFF00EAAF7300501F18000000000000000000C9651800F8CEA500FFFF
      FF00FED1A600F6A96300EB964800E2893C00D8772600D77B2E00D1782D00D07A
      3200FFFFFF00EAAF73008931030000000000000000000066000000990000F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F90000990000006600000000000000000000000000000004A000415EEC00B8C7
      FF009CAFFD003A5CFC000A3AFB000335FB000335FB000133F900052FF2000635
      EB000537E900052CCD0000049C000000000000000000B2470100E0873B00FEE5
      CB00FFFFFF00FAD3AC00EDA15C00E28B3F00D97B2D00D4782A00E1A46B00FFFF
      FF00F3CCA400AC440200893103000000000000000000B2470100E0873B00FEE5
      CB00FFFFFF00FAD5B100EDA56300E28B3F00D97B2D00D3752600DE9D6200FFFF
      FF00F3CCA400AC440200501F180000000000000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F9000099000000660000000000000000000000000000000000000309A5004260
      EC00A9BBFF00BDCAFF008EA5FE006483FD005073FC004A6EFD003961FD001444
      F900042CD7000109A20000000000000000000000000000000000B64C0400DE87
      3B00F8CEA300FFFAF300FFFFFF00FEF6EE00FCF3EA00FFFFFF00FEF7EE00E6A5
      6A00AC4403005A22140000000000000000000000000000000000B64C0400DE87
      3B00F8CEA300FFFAF300FFFFFF00FEF6EE00FCF3EA00FFFFFF00FEF7EE00E6A5
      6A00AC4403005A2214000000000000000000000000000000000000660000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900006600000000000000000000000000000000000000000000000000000004
      A0001E32CD005876F600859EFE008BA3FF007994FE005376FC00234AF000051E
      C50001049C00000000000000000000000000000000000000000000000000AF45
      0100C5641800DC884000E9A76C00EEBB8900EBB58100DC914D00BD590F005D23
      150090340200000000000000000000000000000000000000000000000000AF45
      0100C5641800DC884000E9A76C00EEBB8900EBB58100DC914D00BD590F009034
      02005D2315000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000004A0000917B6001022C3000D1FC2000311B40001059F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A3410300A5450700A64608009E4006008B350500752D0C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A3410300A5450700A64608009E4006008B350500752D0C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006D7C94006F7C88000000000000000000000000000000
      0000000000000000000000000000000000000000000008750D0008750D000875
      0D0008750D000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000099330000993300009933
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000D7FA9000E80
      AA000D7FA9000E80AA000E80AA001081AB000000000000000000000000000000
      000000000000788295001F89E00059A9DC0000000000000000000E80AA000E80
      AA000E80AA000E80AA000E80AA000E80AA000000000008750D0013AA220010A6
      1D0008750D0000000000000000000000000000000000000000000E80AA000E80
      AA000E80AA000E80AA0099330000FDFEFE00FDFEFE00FDFEFE008EA4FD00B8C6
      FD00FDFEFE009933000000000000000000000000000000000000000000000D80
      AA000D80AA000D80AA000D80AA000D80AA000D80AA0000000000000000000000
      00000000000000000000000000000000000000000000048CB90048D5EE0022D7
      FC0035D8FD006FE6FF008DE6FA0044BADD000E80AA0000000000000000000000
      0000788295002087DE004EB7FF0057AEF40000000000078DBB0049D5EE0023D7
      FE0036D8FD006FE6FF008DE7FA0044BADD000E80AA0008750D001AB12D0013AA
      220008750D0000000000000000000000000000000000078DBB0049D5EE0023D7
      FE0036D9FE006FE6FF0099330000FDFEFE00FDFEFE007E98FC000335FB00597A
      FC00FDFEFE009933000000000000000000000000000000000000078DBB0049D5
      EE0023D6FD0036D9FE006FE6FF008DE7FA0044BADD000D80AA00000000000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0022D7
      FC0035D8FD0070E6FF008DE6FA004ABFE0000F9DCE001180A700000000008B86
      97001F7ECE004EB7FF0057AEF40000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D0008750D0008750D0008750D0025BD3E001CB4
      310008750D0008750D0008750D0008750D00078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF0099330000D6DEFE004368FC000335FB004368FC000335
      FB00D9E0FE0099330000000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D3F70000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A000000000000000000088EBC008CFAFD0058E9FD0022D7
      FC0035D8FD0075D3E900B1979400C2A69A00C6AEA000AE877C008C6B6C006092
      BD004EB7FF004EB7FF000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D003CD4620035CE590030C952002CC3490026BE
      410025BD3E001AB12D0017AF2A0008750D00078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF00993300005274FC001442FB00BCC9FD00EFF2FE001A47
      FB004F72FC0097330400000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D3F70000009A003E6EFF00285BFF001248FF000236FF000029
      F900001DEC0000009A000000000000000000088EBC008CFAFD0058E9FD0024D8
      FD0046C6E400AB939500ECDDCC00FEFED600FFFFE400F7F2D900CFB7A100AD85
      80004EB7FF00000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D0041DA6D0041DA6D0038D15E0035CE59002CC3
      49002AC1470025BD3E0020B8360008750D00078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF0099330000E4EAFE00D9E0FE00FDFEFE00FDFEFE0098AC
      FD000335FB0064345900000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D4F80000009A004474FF003264FF001B50FF00083CFF000029
      F9000022F10000009A000000000000000000048CB900B4FFFF00B6F6FF00C6F5
      FF00B5A09F00E8DDD600FFFFF400FEFED600FFFEDD00FEFED600FFF2BA00CAA0
      8C0000000000000000000000000000000000078DBB00B3FCFE00B6F6FF00C6F5
      FF00E3FAFF00E9F9FD0008750D0008750D0008750D0008750D003FD868003CD4
      620008750D0008750D0008750D0008750D00078DBB00B3FCFE00B6F6FF00C6F5
      FF00E3FAFF00EBFBFF0099330000FDFEFE00FDFEFE00FDFEFE00FDFEFE00FDFE
      FE005274FC000335FB00000000000000000000000000078DBB00B3FCFE00B6F6
      FF00C6F5FF00E1F8FD0000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A000000000000000000048CB900B8EDF60030BCDC0011A7
      D1009C919000FFFFE400FFFEDD00FEFED600FFFEDD00FCF5CD00F8D09800ECD1
      AC00AD858000000000000000000000000000078DBB00BAEEF60030BCDD0011A7
      D200129FCB0020A1CA0035A7CD002692BF0092CEE40008750D0045DD710041DA
      6D0008750D00000000000000000000000000078DBB00BAEEF60030BCDD0011A7
      D200129FCB0020A2CB0099330000993300009933000099330000993300009933
      00008F3311002235C8000335FB000000000000000000078DBB00BAEEF60030BC
      DD0011A7D200129ECA0020A2CB0035A7CD002692BF0092CEE4000D80AA000000
      000000000000000000000000000000000000088EBC004BC6DC0058E9FD0022D7
      FC00A49E9900FFFEDD00FFFEDD00FFFEDD00FFFEDD00F6DAAB00F3BE8000F5DE
      B500AD858000000000000000000000000000078DBB004AC5DD0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E3000682B60008750D004DE67F004DE6
      7F0008750D00000000000000000000000000078DBB004AC5DD0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E3000682B6000E80AA00000000000000
      000000000000000000000335FB000335FB0000000000078DBB004AC5DD0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E3000682B6000D80AA000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0024D8
      FD0096959400FAF6D600FFFEDD00FAF6D600F9E1B100F5CB9A00FEEAB900E4CC
      A900AD858000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE0008750D0008750D000875
      0D0008750D00000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      00000000000000000000000000000335FB0000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0024D8
      FD005EA8BE00D3BBA200FFF7C600F8D09800F4C88E00FEF7E000F9F6F200AD85
      800000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000E7FA900000000000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0024D8
      FD0039D7FB008AA5AD00CDAC9300ECD1AC00F5E1B600DAC5B700AD858000AD85
      800000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000E80AA00000000000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      000000000000000000000000000000000000088EBC008CFAFD0081F8FE0071F9
      FE007BFFFF0097FCFD00A1C6C8008F989B008683880087707000000000000000
      000000000000000000000000000000000000078DBB0091FCFE0082F8FF006FF8
      FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80AA00000000000000
      000000000000000000000000000000000000078DBB0091FCFE0082F8FF006FF8
      FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB0091FCFE0082F8
      FF006FF8FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000D80AA000000
      000000000000000000000000000000000000048CB900FBFFFF00F5FFFE00D2FF
      FF00B4FFFF00ADFFFE00ADFFFE00ADFFFE0071F9FE000E80AA00000000000000
      000000000000000000000000000000000000078DBB00FCFFFF00F4FFFF00D3FF
      FF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80AA00000000000000
      000000000000000000000000000000000000078DBB00FDFEFE00F4FFFF00D3FF
      FF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB00FCFFFF00F4FF
      FF00D3FFFF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000D80AA000000
      000000000000000000000000000000000000000000000A91C100F5FFFE00E3FE
      FF00C6FEFF00ADFFFE00A7FFFF009BFBFD001285B00000000000000000000000
      000000000000000000000000000000000000000000000C92C000F4FFFF00E3FA
      FF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF0000000000000000000000
      000000000000000000000000000000000000000000000C92C000F4FFFF00E3FA
      FF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF0000000000000000000000
      00000000000000000000000000000000000000000000000000000C92C000F4FF
      FF00E1F8FD00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF00000000000000
      0000000000000000000000000000000000000000000000000000088EBC00088E
      BC00048CB900088EBC00088EBC00088EBC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000078DBB00078D
      BB00078DBB00078DBB00078DBB00078DBB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000078DBB00078D
      BB00078DBB00078DBB00078DBB00078DBB000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000078D
      BB00078DBB00078DBB00078DBB00078DBB00078DBB0000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00F81FF33FFFFF0000E007E007C0030000
      C003C00080010000800180018001000080010000800100000000000080010000
      000000008001000000008000800100000000E001800100000000F00380010000
      0000F01F800100008001E03F800100008001E03F80010000C003C03F80010000
      E007C07FC0030000F81FF8FFFFFF0000FFFFF81FF81FF81FC007E007E007E007
      8003C003C003C003800380018001800180038001800180018003000000000000
      8003000000000000800300000000000080030000000000008003000000000000
      8003000000000000800380018001800180038001800180018003C003C003C003
      C007E007E007E007FFFFF81FF81FF81FFFFCFF87FC03FFFFC0F8C087C003E07F
      807080078003C03F002100000003800300030000000380030007000000038003
      000F000000038003000700070001801F00070007003C801F00070007003E801F
      000F003F003F801F000F003F003F801F003F003F003F801F003F003F003F801F
      807F807F807FC03FC0FFC0FFC0FFE07F00000000000000000000000000000000
      000000000000}
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
    Left = 416
    Top = 352
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 136
    Top = 512
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 472
    Top = 352
  end
  inherited ComBuscadorBase: TComBuscador
    Data = CDSBuscador
    Campo = 'ID'
    Titulo = 'Remitos '
    Left = 456
    Top = 272
  end
  inherited QBrowse2: TFDQuery
    Filter = 'cumplido<>'#39'S'#39
    Left = 80
    Top = 424
  end
  inherited QUltimoCodigo2: TFDQuery
    SQL.Strings = (
      'select max(numero) from rto_acopio_cab'
      '')
    Left = 48
    Top = 488
  end
  object DSRtoDet: TDataSource
    DataSet = DatosAcopio.CDSRtoDet
    Left = 312
    Top = 328
  end
  object DSMercDet: TDataSource
    DataSet = DatosAcopio.CDSMercDet
    Left = 960
    Top = 224
  end
  object DSMercCab: TDataSource
    DataSet = DatosAcopio.CDSMercCab
    Left = 892
    Top = 192
  end
  object frRemitos: TfrxReport
    Version = '2024.1.8'
    DataSet = frxDBCab
    DataSetName = 'frxDBCab'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40779.674632175930000000
    ReportOptions.LastChange = 40779.674632175930000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 368
    Top = 480
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
    end
  end
  object frxDBDet: TfrxDBDataset
    UserName = 'frxDBDet'
    CloseDataSource = False
    DataSource = DSRtoDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 480
    Top = 480
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_CAB'
        FieldAlias = 'ID_CAB'
      end
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end
      item
        FieldName = 'CANT_ORIGINAL'
        FieldAlias = 'CANT_ORIGINAL'
      end>
  end
  object frxDBCab: TfrxDBDataset
    UserName = 'frxDBCab'
    CloseDataSource = False
    DataSource = DSBase
    BCDToCurrency = False
    DataSetOptions = []
    Left = 432
    Top = 480
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'NUMERO'
        FieldAlias = 'NUMERO'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'CLIENTE'
        FieldAlias = 'CLIENTE'
      end
      item
        FieldName = 'ID_FACTURA'
        FieldAlias = 'ID_FACTURA'
      end
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'DIRECCION'
        FieldAlias = 'DIRECCION'
      end
      item
        FieldName = 'CPOSTAL'
        FieldAlias = 'CPOSTAL'
      end
      item
        FieldName = 'LOCALIDAD'
        FieldAlias = 'LOCALIDAD'
      end
      item
        FieldName = 'NRO_FACTURA'
        FieldAlias = 'NRO_FACTURA'
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldAlias = 'TIPOCPBTE'
      end
      item
        FieldName = 'CLASECPBTE'
        FieldAlias = 'CLASECPBTE'
      end
      item
        FieldName = 'DEPOSITO'
        FieldAlias = 'DEPOSITO'
      end
      item
        FieldName = 'MUESTRADEPOSITO'
        FieldAlias = 'MUESTRADEPOSITO'
      end
      item
        FieldName = 'OBS1'
        FieldAlias = 'OBS1'
      end
      item
        FieldName = 'OBS2'
        FieldAlias = 'OBS2'
      end
      item
        FieldName = 'FECHA_HORA'
        FieldAlias = 'FECHA_HORA'
      end
      item
        FieldName = 'USUARIO'
        FieldAlias = 'USUARIO'
      end>
  end
  object DSPBuscador: TDataSetProvider
    DataSet = QBuscador
    UpdateMode = upWhereKeyOnly
    Left = 160
    Top = 240
  end
  object CDSBuscador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscador'
    Left = 224
    Top = 240
    object CDSBuscadorNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 70
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSBuscadorNUMERO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Numero'
      DisplayWidth = 20
      FieldName = 'NUMERO'
      Size = 8
    end
    object CDSBuscadorNROACOPIO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro.Acopio'
      DisplayWidth = 30
      FieldName = 'NROACOPIO'
      ReadOnly = True
      EditMask = 'a-0000-00000000;0'
    end
    object CDSBuscadorNRO_FACTURA: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro.Factura'
      DisplayWidth = 30
      FieldName = 'NRO_FACTURA'
      EditMask = 'a-0000-00000000;0'
    end
    object CDSBuscadorMUESTRANRORTO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Remito'
      DisplayWidth = 30
      FieldName = 'MUESTRANRORTO'
      ReadOnly = True
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object CDSBuscadorFECHA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha'
      DisplayWidth = 20
      FieldName = 'FECHA'
    end
    object CDSBuscadorCLIENTE: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 12
      FieldName = 'CLIENTE'
      Size = 6
    end
    object CDSBuscadorID: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 15
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object CDSBuscadorCUMPLIDO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Cumplido'
      DisplayWidth = 15
      FieldName = 'CUMPLIDO'
      ReadOnly = True
      OnGetText = CDSBuscadorCUMPLIDOGetText
      FixedChar = True
      Size = 10
    end
  end
  object frxDBPendientes: TfrxDBDataset
    UserName = 'frxDBPendientes'
    CloseDataSource = False
    DataSource = DSMercDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 856
    Top = 288
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_CAB'
        FieldAlias = 'ID_CAB'
      end
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end
      item
        FieldName = 'ENTREGADO'
        FieldAlias = 'ENTREGADO'
      end
      item
        FieldName = 'SALDO'
        FieldAlias = 'SALDO'
      end
      item
        FieldName = 'FECHA_ULTIMAENTREGA'
        FieldAlias = 'FECHA_ULTIMAENTREGA'
      end
      item
        FieldName = 'CUMPLIDO'
        FieldAlias = 'CUMPLIDO'
      end
      item
        FieldName = 'MUESTRASALDOORIGINAL'
        FieldAlias = 'MUESTRASALDOORIGINAL'
      end>
  end
  object DSPDeposito: TDataSetProvider
    DataSet = DMMain_FD.QDeposito
    Left = 160
    Top = 174
  end
  object CDSDeposito: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPDeposito'
    Left = 248
    Top = 190
    object CDSDepositoID: TIntegerField
      FieldName = 'ID'
    end
    object CDSDepositoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSDepositoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
  end
  object DSPBuscaDeposito: TDataSetProvider
    DataSet = DMBuscadores.QBuscaDeposito
    Left = 320
    Top = 184
  end
  object CDSBuscaDeposito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaDeposito'
    Left = 448
    Top = 208
    object CDSBuscaDepositoNOMBRE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 30
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSBuscaDepositoID: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
    end
  end
  object ComBuscadorDeposito: TComBuscador
    Data = CDSBuscaDeposito
    Campo = 'ID'
    Titulo = 'Depositos'
    rOk = False
    Left = 64
    Top = 176
  end
  object QBuscador: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select  r.*, m.nrocpbte as NroAcopio, m.cumplido,rto.nrocpbte as' +
        ' MuestraNroRto  from rto_acopio_cab r'
      
        'left join merca_enacopio_cab m on (m.id = r.id_merca_acopio_cab)' +
        ' or ( m.id_factura = r.id_factura )'
      'left join rtocab rto on rto.id_rto=r.id_remito'
      'order by r.numero desc')
    Left = 72
    Top = 240
  end
  object QRtoAcopio: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cab.id from merca_enacopio_cab cab where '
      ' cab.id_factura = :id_Factura')
    Left = 724
    Top = 224
    ParamData = <
      item
        Name = 'ID_FACTURA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRtoAcopioID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.* from clientes c where c.codigo=:codigo')
    Left = 652
    Top = 224
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
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
  end
  object QBuscaCliente: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select distinct cab.cliente,cab.nombre,cab.direccion from merca_' +
        'enacopio_cab cab'
      'where (:estado = '#39'*'#39') or (cab.cumplido <> :estado)')
    Left = 560
    Top = 88
    ParamData = <
      item
        Name = 'ESTADO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
        Value = Null
      end>
  end
  object DSPBuscaCliente: TDataSetProvider
    DataSet = QBuscaCliente
    Left = 664
    Top = 88
  end
  object CDSBuscaCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFixedChar
        Name = 'ESTADO'
        ParamType = ptInput
        Size = 1
      end>
    ProviderName = 'DSPBuscaCliente'
    Left = 776
    Top = 88
    object CDSBuscaClienteCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Required = True
      Size = 6
    end
    object CDSBuscaClienteNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSBuscaClienteDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
  end
  object DSBuscaCliente: TDataSource
    DataSet = CDSBuscaCliente
    Left = 864
    Top = 88
  end
  object frxDBMercCab: TfrxDBDataset
    UserName = 'frxDBMercCab'
    CloseDataSource = False
    DataSource = DSMercCab
    BCDToCurrency = True
    DataSetOptions = []
    Left = 740
    Top = 504
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'CLIENTE'
        FieldAlias = 'CLIENTE'
      end
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'DIRECCION'
        FieldAlias = 'DIRECCION'
      end
      item
        FieldName = 'CPOSTAL'
        FieldAlias = 'CPOSTAL'
      end
      item
        FieldName = 'LOCALIDAD'
        FieldAlias = 'LOCALIDAD'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'ID_FACTURA'
        FieldAlias = 'ID_FACTURA'
      end
      item
        FieldName = 'CUMPLIDO'
        FieldAlias = 'CUMPLIDO'
      end
      item
        FieldName = 'OBS1'
        FieldAlias = 'OBS1'
      end
      item
        FieldName = 'OBS2'
        FieldAlias = 'OBS2'
      end>
  end
  object frxDBMercDet: TfrxDBDataset
    UserName = 'frxDBMercDet'
    CloseDataSource = False
    DataSource = DSMercDet
    BCDToCurrency = True
    DataSetOptions = []
    Left = 820
    Top = 560
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_CAB'
        FieldAlias = 'ID_CAB'
      end
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end
      item
        FieldName = 'ENTREGADO'
        FieldAlias = 'ENTREGADO'
      end
      item
        FieldName = 'SALDO'
        FieldAlias = 'SALDO'
      end
      item
        FieldName = 'FECHA_ULTIMAENTREGA'
        FieldAlias = 'FECHA_ULTIMAENTREGA'
      end
      item
        FieldName = 'CUMPLIDO'
        FieldAlias = 'CUMPLIDO'
      end
      item
        FieldName = 'MUESTRASALDOORIGINAL'
        FieldAlias = 'MUESTRASALDOORIGINAL'
      end
      item
        FieldName = 'MUESTRAPRESENTACION'
        FieldAlias = 'MUESTRAPRESENTACION'
      end
      item
        FieldName = 'SALDOTOTAL'
        FieldAlias = 'SALDOTOTAL'
      end>
  end
  object frEntregas: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.AllowEdit = False
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44501.467562916700000000
    ReportOptions.LastChange = 44551.611475150460000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 600
    Top = 504
    Datasets = <
      item
        DataSet = frxDBCab
        DataSetName = 'frxDBCab'
      end
      item
        DataSet = frxDBDet
        DataSetName = 'frxDBDet'
      end
      item
        DataSet = frxDBMercCab
        DataSetName = 'frxDBMercCab'
      end
      item
        DataSet = frxDBMercDet
        DataSetName = 'frxDBMercDet'
      end
      item
        DataSet = frxDBPendientes
        DataSetName = 'frxDBPendientes'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 740.409927000000000000
        DataSet = frxDBMercCab
        DataSetName = 'frxDBMercCab'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descripci'#243'n')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cant. Orig.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Entregado')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Saldo')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 234.330860000000000000
        Width = 740.409927000000000000
        DataSet = frxDBMercDet
        DataSetName = 'frxDBMercDet'
        RowCount = 0
        object frxDBMercDetCODIGO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'CODIGO'
          DataSet = frxDBMercDet
          DataSetName = 'frxDBMercDet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBMercDet."CODIGO"]')
          ParentFont = False
        end
        object frxDBMercDetDETALLE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 86.929190000000000000
          Width = 306.141930000000000000
          Height = 15.118120000000000000
          DataField = 'DETALLE'
          DataSet = frxDBMercDet
          DataSetName = 'frxDBMercDet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBMercDet."DETALLE"]')
          ParentFont = False
        end
        object frxDBMercDetENTREGADO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 472.441250000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'ENTREGADO'
          DataSet = frxDBMercDet
          DataSetName = 'frxDBMercDet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBMercDet."ENTREGADO"]')
          ParentFont = False
        end
        object frxDBMercDetSALDO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 570.709030000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'SALDO'
          DataSet = frxDBMercDet
          DataSetName = 'frxDBMercDet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBMercDet."SALDO"]')
          ParentFont = False
        end
        object frxDBMercDetSALDOTOTAL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 657.638220000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'SALDOTOTAL'
          DataSet = frxDBMercDet
          DataSetName = 'frxDBMercDet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBMercDet."SALDOTOTAL"]')
          ParentFont = False
        end
        object frxDBMercDetMUESTRASALDOORIGINAL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 393.071120000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'MUESTRASALDOORIGINAL'
          DataSet = frxDBMercDet
          DataSetName = 'frxDBMercDet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBMercDet."MUESTRASALDOORIGINAL"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 268.346630000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Remito de Entrega')
          ParentFont = False
        end
        object frxDBCabNUMERO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 7.559060000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DataSet = frxDBCab
          DataSetName = 'frxDBCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Acopio N'#186': [frxDBCab."NUMERO"]')
          ParentFont = False
        end
        object frxDBCabFECHA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 30.236240000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DataField = 'FECHA'
          DataSet = frxDBCab
          DataSetName = 'frxDBCab'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBCab."FECHA"]')
          ParentFont = False
        end
        object frxDBMercCabCLIENTE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 52.913420000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'CLIENTE'
          DataSet = frxDBMercCab
          DataSetName = 'frxDBMercCab'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBMercCab."CLIENTE"]')
        end
        object frxDBMercCabDIRECCION: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 71.811070000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          DataSet = frxDBMercCab
          DataSetName = 'frxDBMercCab'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBMercCab."DIRECCION"] - [frxDBCab."LOCALIDAD"]')
        end
      end
    end
  end
  object QMarcarRtoAcopioCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update merca_enacopio_cab m set m.cumplido=:estado where m.id=:i' +
        'd_merca_acopio_cab')
    Left = 681
    Top = 352
    ParamData = <
      item
        Name = 'ESTADO'
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_MERCA_ACOPIO_CAB'
        ParamType = ptInput
      end>
  end
end
