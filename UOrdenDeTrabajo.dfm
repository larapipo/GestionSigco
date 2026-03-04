inherited FormOrdenDeTrabajo: TFormOrdenDeTrabajo
  Left = 437
  Top = 278
  ActiveControl = btNuevo
  Caption = 'Orden de Trabajo'
  ClientHeight = 696
  ClientWidth = 950
  Position = poMainFormCenter
  StyleElements = [seFont, seClient, seBorder]
  OnActivate = FormActivate
  OnCanResize = FormCanResize
  OnResize = FormResize
  ExplicitWidth = 968
  ExplicitHeight = 737
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Top = 23
    Width = 950
    Height = 620
    Align = alClient
    AutoSize = True
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 23
    ExplicitWidth = 950
    ExplicitHeight = 620
    object dbtMuestraComprob: TDBText
      Left = 348
      Top = 18
      Width = 133
      Height = 21
      DataField = 'MUESTRACOMPROBANTE'
      DataSource = DSBase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 950
      Height = 198
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvNone
      Color = clMenu
      ParentBackground = False
      TabOrder = 0
      object Bevel2: TBevel
        Left = 643
        Top = 161
        Width = 45
        Height = 22
      end
      object DBText73: TDBText
        Left = 705
        Top = 15
        Width = 96
        Height = 24
        Alignment = taCenter
        AutoSize = True
        DataField = 'LETRAOT'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 663
        Top = 21
        Width = 26
        Height = 17
        Alignment = taCenter
        DataField = 'CLASECPBTE'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 769
        Top = 160
        Width = 17
        Height = 12
        Caption = 'Baja'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 871
        Top = 160
        Width = 17
        Height = 12
        Caption = 'Alta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 777
        Top = 158
        Width = 111
        Height = 13
        Caption = '.   .   .   .   .   .   .   .   .   .'
      end
      object NivelPrioridad: TGauge
        Left = 778
        Top = 148
        Width = 110
        Height = 11
        BackColor = clBtnFace
        Color = clInactiveBorder
        MaxValue = 10
        ParentColor = False
        Progress = 0
      end
      object SpeedButton1: TSpeedButton
        Left = 542
        Top = 52
        Width = 23
        Height = 22
        Action = DatosCliente
        Flat = True
        Glyph.Data = {
          42020000424D4202000000000000420000002800000010000000100000000100
          1000030000000002000000000000000000000000000000000000007C0000E003
          00001F0000001F7C1F7C1F7C1F7C1F7C1F7C0000E000600000001F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000A100851510428A29C208200000001F7C
          1F7C1F7C1F7C1F7C1F7C000063000815CE391042524ACE398C31482102096000
          00001F7C1F7C0000630008158C318C31524ABC73FE7B7A6B9452CE391042CA29
          42096000000042088C318C31104235463967FE7BFE7B7A6B3967FE7B175F1042
          10420821000000001042F75EF75E3546732DBC52FE5ABC35FE7BFE7BFE7BFE7B
          175F08210000200060006B2DF75EF75EB114732DFE1C0F00692D672DFE7BB452
          A51400001F7C0000A10CE01460006B2D3546B114BC73EF3DB37BE069600C0000
          1F7C1F7C1F7C1F7C21002015600D2001A0006B2D3967B452A21C0D7BE069600C
          1F7C1F7C1F7C1F7C0000E1006005600D60016001600000001F7CA21C0D7BE069
          600C1F7C1F7C1F7C1F7C210060056001A001E001600100001F7C1F7CA21C0D7B
          E069600C1F7C1F7C1F7C0000E104A001E001E001E001A0001F7C1F7C1F7CA21C
          0D7BE069600C1F7C1F7C1F7C6000E001E001E001E001A00100001F7C1F7C1F7C
          A21C0D7BE03C1F7C1F7C1F7C1F7C0000E000E00120022002A0001F7C1F7C1F7C
          1F7C000000001F7C1F7C1F7C1F7C1F7C1F7C0000E0006002A00100001F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000600200001F7C1F7C
          1F7C1F7C1F7C}
        ParentShowHint = False
        ShowHint = True
      end
      object DBText10: TDBText
        Left = 649
        Top = 164
        Width = 34
        Height = 14
        Alignment = taRightJustify
        DataField = 'PRIORIDAD'
        DataSource = DSBase
      end
      object SpeedButton2: TSpeedButton
        Left = 668
        Top = 89
        Width = 22
        Height = 21
        Action = CronogramOT
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000006E6E6E006E6E6E0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000006E6E6E00FFD4D400FFD4D400000000006E6E6E006E6E
          6E00000000000000000000000000000000000000000000000000000000000000
          0000000000006E6E6E00FFD4D400A4A0A0006E6E6E00000000006E6E6E006E6E
          6E006E6E6E000000000000000000000000000000000000000000000000000000
          00006E6E6E00A4A0A0006E6E6E0000000000A4A0A000A4A0A000A4A0A000A4A0
          A000A4A0A000000000006E6E6E00000000000000000000000000000000006E6E
          6E006E6E6E0000000000FFD4D400FFD4D400FFD4D400FFD4D400000000000000
          000000000000000000007A7A7A00000000006E6E6E00000000006E6E6E000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFD4
          D400FF8EAB0000000000000000007A7A7A00000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000006E6E6E0000000000000000000000
          00000000000000000000000000006E6E6E000000000000000000000000000000
          0000FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFD4
          D400FFD4D40000000000000000006E6E6E00000000007A7A7A00000000000000
          000000000000FFFFFF00FFFFFF003E3E3E00FFD4D400FFD4D400FFD4D400FFD4
          D400FFD4D400FFD4D400FFD4D400FFD4D4003E3E3E007A7A7A00000000000000
          00000000000000000000FFFFFF000000000000000000FFD4D400FFD4D4000000
          000000000000FFD4D400FFD4D40000000000000000007A7A7A00000000000000
          0000000000000000000000000000FF8EAB00FF8EAB00FF8EAB00000000006E6E
          6E006E6E6E0000000000FF8EAB00FF8EAB00FF8EAB0000000000000000000000
          00000000000000000000000000000000000000000000FF8EAB00FF8EAB00FFD4
          D400FF8EAB00FFD4D400FFD4D400000000000000000000000000000000000000
          000000000000000000000000000000000000FF8EAB00FF8EAB0000000000FF8E
          AB00FFD4D40000000000FFD4D400FFD4D4000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF8E
          AB00FF8EAB000000000000000000000000000000000000000000}
      end
      object DBText8: TDBText
        Left = 755
        Top = 60
        Width = 105
        Height = 17
        Cursor = crHandPoint
        DataField = 'FACTURANRO'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = BuscarFacturaExecute
      end
      object DBText11: TDBText
        Left = 630
        Top = 21
        Width = 26
        Height = 17
        Alignment = taCenter
        DataField = 'TIPOCPBTE'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText13: TDBText
        Left = 95
        Top = 39
        Width = 105
        Height = 16
        DataField = 'MUESTRAIVA'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText14: TDBText
        Left = 217
        Top = 39
        Width = 85
        Height = 16
        DataField = 'CUIT'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText16: TDBText
        Left = 668
        Top = 4
        Width = 81
        Height = 17
        DataField = 'ID_OT'
        DataSource = DSBase
      end
      object RxLabel58: TLabel
        Left = 9
        Top = 4
        Width = 33
        Height = 13
        Caption = 'Fecha '
        Transparent = True
      end
      object RxLabel59: TLabel
        Left = 102
        Top = 4
        Width = 87
        Height = 13
        Caption = 'Sucursal de Venta'
        Transparent = True
      end
      object RxLabel60: TLabel
        Left = 755
        Top = 4
        Width = 98
        Height = 13
        Caption = 'Nro.de Comprobante'
        Transparent = True
      end
      object RxLabel63: TLabel
        Left = 755
        Top = 45
        Width = 109
        Height = 13
        Caption = 'Numero de Factura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object RxLabel2: TLabel
        Left = 9
        Top = 40
        Width = 32
        Height = 13
        Caption = 'Cliente'
        Transparent = True
      end
      object RxLabel6: TLabel
        Left = 302
        Top = 4
        Width = 102
        Height = 13
        Caption = 'Tipo de Comprobante'
        Transparent = True
      end
      object RxLabel7: TLabel
        Left = 9
        Top = 146
        Width = 62
        Height = 13
        Caption = 'Responsable'
        Transparent = True
      end
      object RxLabel9: TLabel
        Left = 571
        Top = 38
        Width = 88
        Height = 13
        Caption = 'Fecha Finalizaci'#243'n'
        Transparent = True
      end
      object RxLabel10: TLabel
        Left = 642
        Top = 129
        Width = 74
        Height = 13
        Alignment = taCenter
        Caption = 'Prioridad Actual'
        Transparent = True
        WordWrap = True
      end
      object RxLabel11: TLabel
        Left = 642
        Top = 116
        Width = 97
        Height = 13
        Alignment = taRightJustify
        Caption = 'Prioridad Incremento'
        Transparent = True
        WordWrap = True
      end
      object RxLabel3: TLabel
        Left = 302
        Top = 146
        Width = 53
        Height = 13
        Caption = 'Asignada a'
        Transparent = True
      end
      object RxLabel4: TLabel
        Left = 788
        Top = 133
        Width = 68
        Height = 13
        Caption = 'Nivel Prioridad'
        Transparent = True
      end
      object RxLabel8: TLabel
        Left = 571
        Top = 75
        Width = 117
        Height = 13
        Caption = 'Fecha Prevista/De visita'
        Transparent = True
      end
      object RxLabel15: TLabel
        Left = 587
        Top = 129
        Width = 69
        Height = 26
        AutoSize = False
        Caption = 'Prioridad Inicial'
        Transparent = True
        WordWrap = True
      end
      object JvLabel3: TLabel
        Left = 9
        Top = 75
        Width = 47
        Height = 13
        Caption = 'Telefonos'
        Transparent = True
      end
      object JvLabel4: TLabel
        Left = 9
        Top = 112
        Width = 125
        Height = 13
        Caption = 'Lugar de Recepci'#243'n(LDR)'
        Transparent = True
      end
      object JvLabel5: TLabel
        Left = 302
        Top = 111
        Width = 85
        Height = 13
        Caption = 'Motivo Or.Trabajo'
        Transparent = True
      end
      object JvLabel6: TLabel
        Left = 699
        Top = 75
        Width = 57
        Height = 13
        Caption = 'Hora Desde'
        Transparent = True
      end
      object JvLabel7: TLabel
        Left = 796
        Top = 75
        Width = 54
        Height = 13
        Caption = 'Hora Hasta'
        Transparent = True
      end
      object JvLabel16: TLabel
        Left = 302
        Top = 40
        Width = 45
        Height = 13
        Caption = 'Direcci'#243'n'
        Transparent = True
      end
      object JvLabel17: TLabel
        Left = 302
        Top = 75
        Width = 25
        Height = 13
        Caption = 'Email'
        Transparent = True
      end
      object DBText17: TDBText
        Left = 351
        Top = 20
        Width = 214
        Height = 17
        DataField = 'MUESTRACOMPROBANTE'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbeSuc: TDBEdit
        Left = 755
        Top = 18
        Width = 45
        Height = 24
        TabStop = False
        DataField = 'SUCOT'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object dbeNumero: TDBEdit
        Left = 804
        Top = 18
        Width = 84
        Height = 24
        TabStop = False
        DataField = 'NUMEROOT'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object dbeNombre: TDBEdit
        Left = 72
        Top = 53
        Width = 220
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clWhite
        DataField = 'NOMBRE'
        DataSource = DSBase
        TabOrder = 7
      end
      object dbeSucursal: TDBEdit
        Left = 146
        Top = 18
        Width = 146
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MuestraSucursal'
        DataSource = DSBase
        Enabled = False
        TabOrder = 3
      end
      object dbeMuestraResponsableOT: TDBEdit
        Left = 83
        Top = 161
        Width = 214
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRARESPONSABLEOT'
        DataSource = DSBase
        Enabled = False
        TabOrder = 14
      end
      object dbeMuestraResponsableTurno: TDBEdit
        Left = 371
        Top = 161
        Width = 194
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRARESPONSABLETURNO'
        DataSource = DSBase
        Enabled = False
        TabOrder = 16
      end
      object dbeMuestraTelefono: TDBEdit
        Left = 9
        Top = 89
        Width = 131
        Height = 21
        TabStop = False
        Color = clWhite
        DataField = 'TELEFONO1'
        DataSource = DSBase
        TabOrder = 8
      end
      object RxCCodigo: TJvDBComboEdit
        Left = 9
        Top = 53
        Width = 60
        Height = 21
        ClickKey = 16397
        DataField = 'CODIGO'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 15
        TabOrder = 6
        OnButtonClick = BuscarClienteExecute
        OnExit = RxCCodigoExit
        OnKeyDown = RxCCodigoKeyDown
      end
      object RxCSucursal: TJvDBComboEdit
        Left = 104
        Top = 18
        Width = 37
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'Sucursal'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 15
        TabOrder = 1
        OnButtonClick = BuscarSucursalExecute
        OnKeyDown = RxCSucursalKeyDown
      end
      object RxCTipoCpbte: TJvDBComboEdit
        Left = 302
        Top = 18
        Width = 42
        Height = 21
        ClickKey = 16397
        DataField = 'ID_TIPOCOMPROBANTE'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 15
        TabOrder = 2
        OnButtonClick = BuscarTipoCpbteExecute
        OnKeyDown = RxCTipoCpbteKeyDown
      end
      object rxcResponsableOT: TJvDBComboEdit
        Left = 9
        Top = 161
        Width = 66
        Height = 21
        TabStop = False
        ClickKey = 16397
        DataField = 'RESPONSABLE_OT'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 15
        TabOrder = 13
        OnButtonClick = BuscarVendedorExecute
        OnKeyDown = rxcResponsableOTKeyDown
      end
      object rxcRespTurno: TJvDBComboEdit
        Left = 302
        Top = 161
        Width = 66
        Height = 21
        TabStop = False
        ClickKey = 16397
        DataField = 'RESPONSABLE_TURNO'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 15
        TabOrder = 15
        OnButtonClick = BuscarVendedorExecute
        OnExit = rxcRespTurnoExit
        OnKeyDown = rxcRespTurnoKeyDown
      end
      object dbeFechaInicio: TJvDBDateEdit
        Left = 9
        Top = 18
        Width = 91
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        DataField = 'FECHAINICIO'
        DataSource = DSBase
        Glyph.Data = {
          76050000424D760500000000000036000000280000001C0000000C0000000100
          2000000000004005000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
          0000800000008000000000000000800000000000000000000000800000008080
          8000FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
          0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
          80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
          C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FF00FF00}
        ImageKind = ikCustom
        NumGlyphs = 2
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 0
        OnExit = dbeFechaInicioExit
      end
      object dbeTelefono2: TDBEdit
        Left = 146
        Top = 89
        Width = 146
        Height = 21
        TabStop = False
        Color = clWhite
        DataField = 'TELEFONO2'
        DataSource = DSBase
        TabOrder = 9
      end
      object RxCLdr: TJvDBComboEdit
        Left = 9
        Top = 125
        Width = 37
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        ClickKey = 16397
        DataField = 'LDR'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 15
        TabOrder = 10
        OnButtonClick = BuscarLdrExecute
        OnKeyDown = RxCLdrKeyDown
      end
      object dbeLdr: TDBEdit
        Left = 52
        Top = 125
        Width = 244
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRALDR'
        DataSource = DSBase
        Enabled = False
        TabOrder = 11
      end
      object cbMotivo: TJvDBLookupCombo
        Left = 302
        Top = 125
        Width = 263
        Height = 21
        Color = clAqua
        DataField = 'MOTIVO_OTRABAJO'
        DataSource = DSBase
        EmptyItemColor = clMenu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        LookupField = 'ID'
        LookupDisplay = 'DETALLE'
        LookupSource = DatosOrdenDeTrabajo.DSMotivos
        ParentFont = False
        TabOrder = 12
        TabStop = False
      end
      object HoraDesde: TJvDateTimePicker
        Left = 700
        Top = 88
        Width = 88
        Height = 21
        Date = 42850.000000000000000000
        Time = 0.575354444445110900
        Kind = dtkTime
        TabOrder = 17
        TabStop = False
        DropDownDate = 42850.000000000000000000
      end
      object HoraHasta: TJvDateTimePicker
        Left = 796
        Top = 88
        Width = 92
        Height = 21
        Date = 42850.000000000000000000
        Time = 0.576181134252692600
        Kind = dtkTime
        TabOrder = 18
        TabStop = False
        DropDownDate = 42850.000000000000000000
      end
      object DBEdit1: TDBEdit
        Left = 302
        Top = 53
        Width = 234
        Height = 21
        TabStop = False
        DataField = 'DIRECCION'
        DataSource = DSBase
        TabOrder = 19
      end
      object DBEdit2: TDBEdit
        Left = 302
        Top = 89
        Width = 234
        Height = 21
        TabStop = False
        DataField = 'CORREOELECTRONICO'
        DataSource = DSBase
        TabOrder = 20
      end
      object edFechaEstimada: TJvDBDateEdit
        Left = 570
        Top = 89
        Width = 95
        Height = 21
        TabStop = False
        DataField = 'FECHAESTIMADA'
        DataSource = DSBase
        ShowNullDate = False
        TabOrder = 21
      end
    end
    object pnDetalle: TPanel
      Left = 0
      Top = 377
      Width = 950
      Height = 243
      Align = alClient
      Color = clMenuBar
      ParentBackground = False
      TabOrder = 1
      TabStop = True
      object pcDetalles: TPageControl
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 942
        Height = 235
        ActivePage = PagDetalles
        Align = alClient
        HotTrack = True
        MultiLine = True
        Style = tsButtons
        TabOrder = 0
        TabStop = False
        OnChange = pcDetallesChange
        object PagNovedades: TTabSheet
          Caption = 'Novedades'
          ImageIndex = 2
          DesignSize = (
            934
            204)
          object Label2: TLabel
            Left = 430
            Top = 181
            Width = 144
            Height = 20
            Anchors = [akLeft, akBottom]
            Caption = 'Importe calculado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitTop = 180
          end
          object DBText9: TDBText
            Left = 573
            Top = 183
            Width = 75
            Height = 17
            Alignment = taRightJustify
            Anchors = [akLeft, akBottom]
            DataField = 'Total'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitTop = 182
          end
          object Label3: TLabel
            Left = 1
            Top = 180
            Width = 119
            Height = 20
            Anchors = [akLeft, akBottom]
            Caption = 'Total de Horas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitTop = 178
          end
          object Label9: TLabel
            Left = 227
            Top = 181
            Width = 62
            Height = 20
            Anchors = [akLeft, akBottom]
            Caption = 'Puntos:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitTop = 179
          end
          object dbePuntos: TDBEdit
            Left = 302
            Top = 180
            Width = 50
            Height = 21
            Anchors = [akLeft, akBottom]
            DataField = 'PUNTOS'
            DataSource = DSBase
            TabOrder = 0
          end
          object JvDBDateTimePicker2: TJvDBDateTimePicker
            Left = 138
            Top = 180
            Width = 70
            Height = 21
            Anchors = [akLeft, akBottom]
            Date = 45192.000000000000000000
            Time = 0.609510659720399400
            Kind = dtkTime
            TabOrder = 1
            DropDownDate = 43920.000000000000000000
            DataField = 'TOTALHORAS'
            DataSource = DSBase
          end
          object dbgMov: TJvDBGrid
            Left = 0
            Top = 0
            Width = 934
            Height = 163
            Align = alTop
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataSource = DatosOrdenDeTrabajo.DSOTrabajoMov
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = PopupMenu2
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnColEnter = dbgMovColEnter
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <
              item
                ControlName = 'dbmDetalle2'
                FieldName = 'DETALLE'
                FitCell = fcBiggest
                LeaveOnEnterKey = True
                LeaveOnUpDownKey = True
              end>
            AutoSizeRows = False
            RowsHeight = 34
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'FECHA'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 94
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HORAINICIO'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 93
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DETALLE'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 356
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HORAFINAL'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 93
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TOTALTIEMPO'
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
                FieldName = 'NomOperario'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 145
                Visible = True
              end>
          end
          object RxCEstados: TJvDBComboBox
            Left = 681
            Top = 180
            Width = 199
            Height = 21
            Margins.Bottom = 100
            DataField = 'ESTADO'
            DataSource = DSBase
            Anchors = [akLeft, akBottom]
            Items.Strings = (
              'PRESUPUESTO'
              'ACEPTADO'
              'REPARADO'
              'RECLAMO'
              'GARANTIA'
              'NO ACEPTADO PRES.'
              'SIN REPARACION'
              'RETIRADA'
              'FINALIZADA')
            TabOrder = 3
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
            OnChange = RxCEstadosChange
            OnEnter = RxCEstadosEnter
          end
          object dbmDetalle2: TDBMemo
            Left = 209
            Top = 24
            Width = 337
            Height = 41
            DataField = 'DETALLE'
            DataSource = DatosOrdenDeTrabajo.DSOTrabajoMov
            TabOrder = 4
            Visible = False
          end
        end
        object PagDetalles: TTabSheet
          Caption = 'Detalles Facturaci'#243'n'
          object Bevel21: TBevel
            Left = 549
            Top = 272
            Width = 111
            Height = 21
          end
          object DBText60: TDBText
            Left = 581
            Top = 274
            Width = 75
            Height = 17
            Alignment = taRightJustify
            DataField = 'Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbtMustraTipoFactura: TDBText
            Left = 47
            Top = 17
            Width = 202
            Height = 21
            DataField = 'MUESTRATIPOFACTURA'
            DataSource = DSBase
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RxLabel5: TLabel
            Left = 506
            Top = 273
            Width = 37
            Height = 19
            Alignment = taRightJustify
            Caption = 'Total'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object RxLabel14: TLabel
            Left = 1
            Top = 0
            Width = 75
            Height = 13
            Caption = 'Tipo de Factura'
            Transparent = True
          end
          object JvLabel2: TLabel
            Left = 498
            Top = 17
            Width = 133
            Height = 13
            Caption = 'Los Importes Son C/Iva Inc.'
            Transparent = True
          end
          object JvLabel8: TLabel
            Left = 264
            Top = 0
            Width = 42
            Height = 13
            Caption = 'Dep'#243'sito'
            Transparent = True
          end
          object DBGrillaDetalle: TDBGrid
            Left = 0
            Top = 44
            Width = 934
            Height = 133
            Align = alBottom
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataSource = DatosOrdenDeTrabajo.DSOTrabajoDet
            DrawingStyle = gdsClassic
            FixedColor = clGreen
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnColEnter = DBGrillaDetalleColEnter
            OnEditButtonClick = DBGrillaDetalleEditButtonClick
            OnEnter = DBGrillaDetalleEnter
            OnExit = DBGrillaDetalleExit
            OnKeyDown = DBGrillaDetalleKeyDown
            OnKeyPress = DBGrillaDetalleKeyPress
            Columns = <
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'CODIGOARTICULO'
                Title.Alignment = taCenter
                Title.Caption = 'Codigo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clYellow
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 82
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DETALLE'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clYellow
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 311
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'UNIDAD'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Uni.'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clYellow
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 39
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'IVA_TASA'
                Title.Caption = 'Iva'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clYellow
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 32
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CANTIDAD'
                Title.Alignment = taCenter
                Title.Caption = 'Cant.'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clYellow
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 58
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UNITARIO_TOTAL'
                Title.Alignment = taCenter
                Title.Caption = '$ Unitario'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clYellow
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 74
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCUENTO'
                Title.Alignment = taCenter
                Title.Caption = 'Dsto.'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clYellow
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 68
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'TOTAL'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = '$ Total'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clYellow
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 74
                Visible = True
              end>
          end
          object gbLista: TGroupBox
            Left = 639
            Top = 2
            Width = 131
            Height = 38
            Caption = 'Lista de Precios Nro.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object dbcLista: TDBLookupComboBox
              Left = 32
              Top = 13
              Width = 55
              Height = 21
              DataField = 'LISTAPRECIO'
              DataSource = DSBase
              DropDownAlign = daRight
              DropDownWidth = 300
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              KeyField = 'ID'
              ListField = 'ID;nombre'
              ListSource = DatosOrdenDeTrabajo.DSListaPrecios
              ParentFont = False
              TabOrder = 0
              OnClick = dbcListaClick
              OnKeyDown = dbcListaKeyDown
            end
          end
          object RxCTipoFactura: TJvDBComboEdit
            Left = 1
            Top = 17
            Width = 42
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            ClickKey = 16397
            DataField = 'FACTURA_ID_COMPROBANTE'
            DataSource = DSBase
            Glyph.Data = {
              4E000000424D4E000000000000003E0000002800000009000000040000000100
              010000000000100000000000000000000000020000000200000000000000FFFF
              FF00FF8000002480000024800000FF800000}
            ButtonWidth = 15
            TabOrder = 1
            OnButtonClick = BuscaTipoFcExecute
            OnKeyDown = RxCTipoFacturaKeyDown
          end
          object pnPieFactura: TPanel
            Left = 0
            Top = 177
            Width = 934
            Height = 27
            Align = alBottom
            TabOrder = 3
            object DBText12: TDBText
              Left = 55
              Top = 6
              Width = 30
              Height = 17
              DataField = 'DESGLOZAIVA'
              DataSource = DSBase
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label1: TLabel
              Left = 697
              Top = 6
              Width = 41
              Height = 20
              Caption = 'Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText15: TDBText
              Left = 154
              Top = 5
              Width = 306
              Height = 17
              DataField = 'SERIE'
              DataSource = DatosOrdenDeTrabajo.DSOTrabajosSubDet
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object dbtTotal: TDBText
              AlignWithMargins = True
              Left = 761
              Top = 3
              Width = 142
              Height = 23
              Margins.Left = 500
              Margins.Right = 10
              Margins.Bottom = 2
              Alignment = taRightJustify
              DataField = 'TOTAL'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object JvLabel1: TLabel
              Left = 2
              Top = 6
              Width = 45
              Height = 13
              Caption = 'Desg.IVA'
              Transparent = True
            end
            object JvLabel9: TLabel
              Left = 101
              Top = 6
              Width = 44
              Height = 13
              Caption = 'Nro.Serie'
              Transparent = True
            end
          end
          object RxCDeposito: TJvDBComboEdit
            Left = 264
            Top = 14
            Width = 37
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            ClickKey = 16397
            DataField = 'DEPOSITO'
            DataSource = DSBase
            Glyph.Data = {
              4E000000424D4E000000000000003E0000002800000009000000040000000100
              010000000000100000000000000000000000020000000200000000000000FFFF
              FF00FF8000002480000024800000FF800000}
            ButtonWidth = 15
            TabOrder = 4
            OnButtonClick = BuscarDepositoExecute
          end
          object dbeDeposito: TDBEdit
            Left = 306
            Top = 14
            Width = 171
            Height = 21
            Color = clInfoBk
            DataField = 'MUESTRADEPOSITO'
            DataSource = DSBase
            Enabled = False
            TabOrder = 5
          end
        end
        object TabSheet1: TTabSheet
          Caption = 'Series'
          ImageIndex = 5
          DesignSize = (
            934
            204)
          object DBGrid1: TDBGrid
            Left = 6
            Top = 3
            Width = 910
            Height = 200
            Anchors = [akLeft, akTop, akBottom]
            DataSource = DatosOrdenDeTrabajo.DSOTrabajosSubDet
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnEditButtonClick = BuscarSerieExecute
            Columns = <
              item
                Expanded = False
                FieldName = 'SERIE'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 314
                Visible = True
              end>
          end
        end
        object PagImpuestos: TTabSheet
          Caption = 'Impuestos'
          ImageIndex = 2
          object Label6: TLabel
            Left = 80
            Top = 58
            Width = 50
            Height = 16
            Caption = 'Dsto %'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 80
            Top = 11
            Width = 64
            Height = 16
            Caption = 'SubTotal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 444
            Top = 33
            Width = 74
            Height = 16
            Caption = 'Total Neto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label20: TLabel
            Left = 80
            Top = 81
            Width = 48
            Height = 16
            Caption = 'Exento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Bevel1: TBevel
            Left = 193
            Top = 9
            Width = 98
            Height = 21
          end
          object Bevel6: TBevel
            Left = 193
            Top = 56
            Width = 98
            Height = 21
          end
          object Bevel22: TBevel
            Left = 557
            Top = 30
            Width = 98
            Height = 21
          end
          object Bevel28: TBevel
            Left = 193
            Top = 79
            Width = 98
            Height = 21
          end
          object DBText1: TDBText
            Left = 199
            Top = 11
            Width = 89
            Height = 17
            Alignment = taRightJustify
            DataField = 'NetoGrav1'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText5: TDBText
            Left = 199
            Top = 58
            Width = 89
            Height = 17
            Alignment = taRightJustify
            DataField = 'DstoImporte'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText7: TDBText
            Left = 563
            Top = 32
            Width = 89
            Height = 17
            Alignment = taRightJustify
            DataField = 'NetoGrav2'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText6: TDBText
            Left = 198
            Top = 81
            Width = 89
            Height = 17
            Alignment = taRightJustify
            DataField = 'NetoExen2'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 80
            Top = 34
            Width = 48
            Height = 16
            Caption = 'Exento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Bevel32: TBevel
            Left = 193
            Top = 32
            Width = 98
            Height = 21
          end
          object DBText3: TDBText
            Left = 198
            Top = 34
            Width = 89
            Height = 17
            Alignment = taRightJustify
            DataField = 'NetoExen1'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 440
            Top = 121
            Width = 41
            Height = 20
            Caption = 'Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText2: TDBText
            Left = 496
            Top = 123
            Width = 139
            Height = 17
            Alignment = taRightJustify
            DataField = 'Total'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBGrillaIva: TDBGrid
            Left = 384
            Top = 53
            Width = 273
            Height = 68
            Color = clMenu
            DataSource = DatosOrdenDeTrabajo.DSImpuestos
            Options = [dgEditing, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'DETALLE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                Title.Alignment = taCenter
                Title.Color = clMenu
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clAqua
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 119
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TASA'
                ReadOnly = False
                Title.Caption = '%'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IMPORTE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Color = clMenu
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clAqua
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 97
                Visible = True
              end>
          end
          object dbeDscto: TDBEdit
            Left = 132
            Top = 56
            Width = 47
            Height = 21
            DataField = 'DSTO'
            DataSource = DSBase
            TabOrder = 1
          end
        end
        object PagConsumibles: TTabSheet
          Caption = 'Consumibles'
          ImageIndex = 6
          DesignSize = (
            934
            204)
          object dbgConsumibles: TDBGrid
            Left = 0
            Top = 0
            Width = 934
            Height = 170
            Align = alTop
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataSource = DatosOrdenDeTrabajo.DSOTrabajoConsumible
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnColEnter = dbgConsumiblesColEnter
            OnDblClick = dbgConsumiblesDblClick
            OnEditButtonClick = BuscarConsumibleExecute
            OnKeyDown = dbgConsumiblesKeyDown
            OnKeyPress = dbgConsumiblesKeyPress
            Columns = <
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'CODIGO'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlue
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MUESTRASTOCK'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlue
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 305
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CANT_ESTIMADA'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlue
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CANT_CONSUMIDA'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlue
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRECIO_UNITARIO'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlue
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 102
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
                Width = 85
                Visible = True
              end>
          end
          object edTotal: TJvCalcEdit
            Left = 635
            Top = 177
            Width = 121
            Height = 21
            DisplayFormat = ',0.00'
            Enabled = False
            Anchors = [akLeft, akBottom]
            ShowButton = False
            TabOrder = 1
            DisabledTextColor = clBlack
            DecimalPlacesAlwaysShown = False
          end
        end
        object PagPenalizaciones: TTabSheet
          Caption = 'Penalizaciones'
          ImageIndex = 3
          DesignSize = (
            934
            204)
          object btBorraPenalizaciones: TBitBtn
            Left = 403
            Top = 168
            Width = 137
            Height = 25
            Action = BorrarPenalizacion
            Anchors = [akLeft, akBottom]
            Caption = 'Borrar &Penalizaci'#243'n'
            Glyph.Data = {
              56070000424D5607000000000000360400002800000028000000140000000100
              0800000000002003000000000000000000000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A600000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
              0303030303030303030303030303030303030303030303030303030303030303
              0303030303030303030303030303030303030303030303030303030303030303
              0303030303030303030303030303030303030303030303030303030303030303
              030303030303030303030303030303030303FF030303FF030303030303030303
              0303030303030303030303030303030303030303030303030303FF0303FFFFFF
              0303FF0303030303030303030303030303030303030303030303030303030303
              0303FFFFFFFFFFFFFFFFFFFF03030303030303030303030303030303030303FF
              FFFFFF03030303030303FFFFFFFFFFFFFFFFF801010103030303030303030303
              030303030303F8F8F8F8FFFF030303030303FFFFFFFFFFFFFFF8F9FDFD050103
              03030303030303030303030303F8FF0303F8F8FFFF0303030303FFFFFFFFFFFF
              FFF9FDF9FDFD050103030303030303030303030303F8FF030303F8F8FFFF0303
              0303FFFFFFFFFFFF03FDF9FFF9FDFD0500030303030303030303030303F8FF03
              030303F8F8FFFF030303FFFF03FFFFFF03F9FDFFFDF9FD000600030303030303
              0303030303F803FF030303F8F8F8FFFF0303FF030303FF030303F9FDFFFD0002
              0406000303030303030303030303F803FF03F8F8F8F8F8FFFF03FF0303030303
              030303F9FD00FA02020406000303030303030303030303F803F803F8F8F8F8F8
              FFFF0303030303030303030300FAFBFA020200F8000303030303030303030303
              F803FF03F8F8F8F8F8FF030303030303030303030300FAFBFA0004F8F8000303
              030303030303030303F803FF03F8F8F8F8F803030303030303030303030300FA
              0007FB04F8F8030303030303030303030303F803F80303F8F8F8030303030303
              030303030303030007FFFBFB04F803030303030303030303030303F803FF0303
              F8F8030303030303030303030303030300FFFFFBFB0403030303030303030303
              03030303F803FF0303F803030303030303030303030303030300FFFFFBFB0303
              03030303030303030303030303F803FF03030303030303030303030303030303
              030300FFFFFB03030303030303030303030303030303F8030303}
            NumGlyphs = 2
            TabOrder = 0
            TabStop = False
          end
          object JvDBGrid1: TJvDBGrid
            Left = 3
            Top = 3
            Width = 556
            Height = 145
            Anchors = [akLeft, akTop, akBottom]
            DataSource = DatosOrdenDeTrabajo.DSPenalizaciones
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'FECHA'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 98
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MOTIVO'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 321
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PUNTOS'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = True
              end>
          end
        end
        object pagNotas: TTabSheet
          Caption = 'Notas'
          ImageIndex = 4
          object dbmNotas: TDBMemo
            Left = 0
            Top = 0
            Width = 934
            Height = 204
            Align = alClient
            DataField = 'OBSERVACION1'
            DataSource = DSBase
            TabOrder = 0
          end
        end
        object pcConfig: TTabSheet
          Caption = 'Configuracion'
          ImageIndex = 7
          object Label10: TLabel
            Left = 13
            Top = 13
            Width = 211
            Height = 13
            Caption = 'Art. por defecto  para presupuestar / facturar'
          end
          object Label13: TLabel
            Left = 13
            Top = 59
            Width = 183
            Height = 13
            Caption = 'Comprobante por defecto para facturar'
          end
          object ceArtPorDef: TJvComboEdit
            Left = 13
            Top = 32
            Width = 96
            Height = 21
            ButtonWidth = 16
            ImageKind = ikEllipsis
            TabOrder = 0
            Text = ''
            OnButtonClick = BuscarArticuloPorDefExecute
            OnKeyPress = ceArtPorDefKeyPress
          end
          object edArtPorDef: TEdit
            Left = 115
            Top = 32
            Width = 211
            Height = 21
            TabOrder = 1
            Text = 'Art'#237'culo por Defecto'
          end
          object edCpbtePorDef: TEdit
            Left = 115
            Top = 78
            Width = 211
            Height = 21
            TabOrder = 2
            Text = 'Cpbte Por Defecto'
          end
          object ceCpbtePorDef: TJvComboEdit
            Left = 13
            Top = 77
            Width = 96
            Height = 21
            ButtonWidth = 16
            ImageKind = ikEllipsis
            TabOrder = 3
            Text = ''
            OnButtonClick = BuscarCpbtePorDefExecute
            OnKeyPress = ceCpbtePorDefKeyPress
          end
        end
      end
    end
    object pcModo: TAdvOfficePager
      Left = 0
      Top = 198
      Width = 950
      Height = 179
      Align = alTop
      ActivePage = pagMovil
      AntiAlias = aaAntiAlias
      ButtonSettings.CloseButtonPicture.Data = {
        424DA20400000000000036040000280000000900000009000000010008000000
        00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001000001010100000100
        0000000202000100020200000000000202020002020200000000010002020202
        0200010000000101000202020001010000000100020202020200010000000002
        0202000202020000000000020200010002020000000001000001010100000100
        0000}
      ButtonSettings.PageListButtonPicture.Data = {
        424DA20400000000000036040000280000000900000009000000010008000000
        00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010101000101010100
        0000010101000200010101000000010100020202000101000000010002020202
        0200010000000002020200020202000000000002020001000202000000000100
        0001010100000100000001010101010101010100000001010101010101010100
        0000}
      ButtonSettings.ScrollButtonPrevPicture.Data = {
        424DA20400000000000036040000280000000900000009000000010008000000
        00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010101000001010100
        0000010101000202000101000000010100020202000101000000010002020200
        0101010000000002020200010101010000000100020202000101010000000101
        0002020200010100000001010100020200010100000001010101000001010100
        0000}
      ButtonSettings.ScrollButtonNextPicture.Data = {
        424DA20400000000000036040000280000000900000009000000010008000000
        00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010000010101010100
        0000010002020001010101000000010002020200010101000000010100020202
        0001010000000101010002020200010000000101000202020001010000000100
        0202020001010100000001000202000101010100000001010000010101010100
        0000}
      ButtonSettings.ScrollButtonFirstPicture.Data = {
        424DC60400000000000036040000280000001000000009000000010008000000
        000000000000C40E0000C40E00000001000000010000427B84FFDEEFEFFFFFFF
        FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF01010101010000010101
        0101000001010101010100020200010101000202000101010100020202000101
        0002020200010101000202020001010002020200010101000202020001010002
        0202000101010101000202020001010002020200010101010100020202000101
        0002020200010101010100020200010101000202000101010101010000010101
        010100000101}
      ButtonSettings.ScrollButtonLastPicture.Data = {
        424DC60400000000000036040000280000001000000009000000010008000000
        000000000000C40E0000C40E00000001000000010000427B84FFDEEFEFFFFFFF
        FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF01010000010101010100
        0001010101010100020200010101000202000101010101000202020001010002
        0202000101010101000202020001010002020200010101010100020202000101
        0002020200010101000202020001010002020200010101000202020001010002
        0202000101010100020200010101000202000101010101010000010101010100
        000101010101}
      ButtonSettings.ClosedListButtonPicture.Data = {
        424DA20400000000000036040000280000000900000009000000010008000000
        00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010101000101010100
        0000010101000200010101000000010100020202000101000000010002020202
        0200010000000002020200020202000000000002020001000202000000000100
        0001010100000100000001010101010101010100000001010101010101010100
        0000}
      ButtonSettings.CloseButtonHint = 'Close'
      ButtonSettings.InsertButtonHint = 'Insert new page'
      ButtonSettings.PageListButtonHint = 'Page List'
      ButtonSettings.ScrollButtonNextHint = 'Next'
      ButtonSettings.ScrollButtonPrevHint = 'Previous'
      ButtonSettings.ScrollButtonFirstHint = 'First'
      ButtonSettings.ScrollButtonLastHint = 'Last'
      ButtonSettings.ClosedListButtonHint = 'Closed Pages'
      ButtonSettings.ButtonSize = 13
      ButtonSettings.FullHeight = True
      DoubleBuffered = True
      TabPosition = tpBottom
      TabSettings.ButtonBorder = False
      TabSettings.StartMargin = 1
      TabSettings.Height = 4
      TabSettings.Rounding = 0
      TabReorderIndicatorColor = clMenuHighlight
      Text = ''
      ShowShortCutHints = False
      TabOrder = 2
      UIStyle = tsOffice2019White
      NextPictureChanged = False
      PrevPictureChanged = False
      TabFontHeight = -11
      object pagClasico: TAdvOfficePage
        Left = 1
        Top = 2
        Width = 948
        Height = 173
        Caption = '-----------------'
        DoubleBuffered = True
        PageAppearance.BorderColor = clNone
        PageAppearance.Color = clWhite
        PageAppearance.ColorTo = clWhite
        PageAppearance.ColorMirror = clWhite
        PageAppearance.ColorMirrorTo = clWhite
        PageAppearance.Gradient = ggVertical
        PageAppearance.GradientMirror = ggVertical
        Text = ''
        TabAppearance.BorderColor = clWhite
        TabAppearance.BorderColorHot = clNone
        TabAppearance.BorderColorSelected = clNone
        TabAppearance.BorderColorSelectedHot = clNone
        TabAppearance.BorderColorDisabled = clNone
        TabAppearance.BorderColorDown = clNone
        TabAppearance.Color = clWhite
        TabAppearance.ColorTo = clWhite
        TabAppearance.ColorSelected = clWhite
        TabAppearance.ColorSelectedTo = clWhite
        TabAppearance.ColorDisabled = 15658734
        TabAppearance.ColorDisabledTo = clNone
        TabAppearance.ColorHot = 16316922
        TabAppearance.ColorHotTo = 16316922
        TabAppearance.ColorMirror = clWhite
        TabAppearance.ColorMirrorTo = clWhite
        TabAppearance.ColorMirrorHot = 16316922
        TabAppearance.ColorMirrorHotTo = 16316922
        TabAppearance.ColorMirrorSelected = clWhite
        TabAppearance.ColorMirrorSelectedTo = clWhite
        TabAppearance.ColorMirrorDisabled = 15658734
        TabAppearance.ColorMirrorDisabledTo = clNone
        TabAppearance.Font.Charset = DEFAULT_CHARSET
        TabAppearance.Font.Color = clWindowText
        TabAppearance.Font.Height = -11
        TabAppearance.Font.Name = 'Segoe UI'
        TabAppearance.Font.Style = []
        TabAppearance.Gradient = ggVertical
        TabAppearance.GradientMirror = ggVertical
        TabAppearance.GradientHot = ggVertical
        TabAppearance.GradientMirrorHot = ggVertical
        TabAppearance.GradientSelected = ggVertical
        TabAppearance.GradientMirrorSelected = ggVertical
        TabAppearance.GradientDisabled = ggVertical
        TabAppearance.GradientMirrorDisabled = ggVertical
        TabAppearance.TextColor = 4474440
        TabAppearance.TextColorHot = 14916384
        TabAppearance.TextColorSelected = 4474440
        TabAppearance.TextColorDisabled = 7303023
        TabAppearance.ShadowColor = clNone
        TabAppearance.HighLightColor = clNone
        TabAppearance.HighLightColorHot = clNone
        TabAppearance.HighLightColorSelected = clNone
        TabAppearance.HighLightColorSelectedHot = clNone
        TabAppearance.HighLightColorDown = clNone
        TabAppearance.DrawLine = True
        TabAppearance.TextSelectedBold = True
        TabAppearance.BackGround.Color = clWhite
        TabAppearance.BackGround.ColorTo = clWhite
        TabAppearance.BackGround.Direction = gdHorizontal
        Checked = True
        object pnTrabajoSimple: TAdvPanel
          Left = 2
          Top = 2
          Width = 944
          Height = 169
          Align = alClient
          Color = clMenu
          TabOrder = 0
          UseDockManager = True
          Version = '2.7.0.2'
          AutoSize.Height = False
          AutoSize.Width = False
          BorderColor = clBlack
          Caption.Color = clWhite
          Caption.ColorTo = clNone
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clWindowText
          Caption.Font.Height = -11
          Caption.Font.Name = 'MS Sans Serif'
          Caption.Font.Style = []
          Caption.GradientDirection = gdVertical
          Caption.Indent = 0
          Caption.ShadeLight = 255
          CollapsColor = clNone
          CollapsDelay = 0
          DoubleBuffered = True
          ShadowColor = clBlack
          ShadowOffset = 0
          StatusBar.BorderColor = clNone
          StatusBar.BorderStyle = bsSingle
          StatusBar.Font.Charset = DEFAULT_CHARSET
          StatusBar.Font.Color = 4473924
          StatusBar.Font.Height = -11
          StatusBar.Font.Name = 'Tahoma'
          StatusBar.Font.Style = []
          StatusBar.Color = clWhite
          StatusBar.GradientDirection = gdVertical
          Text = ''
          FullHeight = 180
          object JvLabel20: TLabel
            Left = 9
            Top = 7
            Width = 43
            Height = 13
            Caption = 'Producto'
            Transparent = True
          end
          object JvLabel21: TLabel
            Left = 8
            Top = 48
            Width = 86
            Height = 13
            Caption = 'Trabajo a Realizar'
            Transparent = True
          end
          object Label24: TLabel
            Left = 424
            Top = 7
            Width = 58
            Height = 13
            Caption = 'Identificador'
            Transparent = True
          end
          object JvDBComboEdit1: TJvDBComboEdit
            Left = 9
            Top = 21
            Width = 84
            Height = 21
            ClickKey = 16397
            DataField = 'PRODUCTO'
            DataSource = DSBase
            Glyph.Data = {
              4E000000424D4E000000000000003E0000002800000009000000040000000100
              010000000000100000000000000000000000020000000200000000000000FFFF
              FF00FF8000002480000024800000FF800000}
            ButtonWidth = 15
            TabOrder = 0
            OnButtonClick = BuscarProductoExecute
            OnKeyDown = RxCProductoKeyDown
          end
          object dbeMuestraIdentificacion: TDBEdit
            Left = 424
            Top = 21
            Width = 134
            Height = 21
            Color = clWhite
            DataField = 'IDENTIFICADORPRODUCTO'
            DataSource = DSBase
            TabOrder = 2
          end
          object dbeDescripcionProducto: TDBEdit
            Left = 97
            Top = 21
            Width = 321
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'DESCRIPCIONPRODUCTO'
            DataSource = DSBase
            TabOrder = 1
          end
          object DBMemo1: TDBMemo
            Left = 9
            Top = 63
            Width = 549
            Height = 52
            DataField = 'DESCRIPCION'
            DataSource = DSBase
            ScrollBars = ssVertical
            TabOrder = 3
            OnDblClick = dbmDetalleDblClick
            OnExit = dbmDetalleExit
          end
        end
      end
      object pagMovil: TAdvOfficePage
        Left = 1
        Top = 2
        Width = 948
        Height = 173
        Caption = '-----------------'
        DoubleBuffered = True
        PageAppearance.BorderColor = clNone
        PageAppearance.Color = clWhite
        PageAppearance.ColorTo = clWhite
        PageAppearance.ColorMirror = clWhite
        PageAppearance.ColorMirrorTo = clWhite
        PageAppearance.Gradient = ggVertical
        PageAppearance.GradientMirror = ggVertical
        Text = ''
        TabAppearance.BorderColor = clWhite
        TabAppearance.BorderColorHot = clNone
        TabAppearance.BorderColorSelected = clNone
        TabAppearance.BorderColorSelectedHot = clNone
        TabAppearance.BorderColorDisabled = clNone
        TabAppearance.BorderColorDown = clNone
        TabAppearance.Color = clWhite
        TabAppearance.ColorTo = clWhite
        TabAppearance.ColorSelected = clWhite
        TabAppearance.ColorSelectedTo = clWhite
        TabAppearance.ColorDisabled = 15658734
        TabAppearance.ColorDisabledTo = clNone
        TabAppearance.ColorHot = 16316922
        TabAppearance.ColorHotTo = 16316922
        TabAppearance.ColorMirror = clWhite
        TabAppearance.ColorMirrorTo = clWhite
        TabAppearance.ColorMirrorHot = 16316922
        TabAppearance.ColorMirrorHotTo = 16316922
        TabAppearance.ColorMirrorSelected = clWhite
        TabAppearance.ColorMirrorSelectedTo = clWhite
        TabAppearance.ColorMirrorDisabled = 15658734
        TabAppearance.ColorMirrorDisabledTo = clNone
        TabAppearance.Font.Charset = DEFAULT_CHARSET
        TabAppearance.Font.Color = clWindowText
        TabAppearance.Font.Height = -11
        TabAppearance.Font.Name = 'Segoe UI'
        TabAppearance.Font.Style = []
        TabAppearance.Gradient = ggVertical
        TabAppearance.GradientMirror = ggVertical
        TabAppearance.GradientHot = ggVertical
        TabAppearance.GradientMirrorHot = ggVertical
        TabAppearance.GradientSelected = ggVertical
        TabAppearance.GradientMirrorSelected = ggVertical
        TabAppearance.GradientDisabled = ggVertical
        TabAppearance.GradientMirrorDisabled = ggVertical
        TabAppearance.TextColor = 4474440
        TabAppearance.TextColorHot = 14916384
        TabAppearance.TextColorSelected = 4474440
        TabAppearance.TextColorDisabled = 7303023
        TabAppearance.ShadowColor = clNone
        TabAppearance.HighLightColor = clNone
        TabAppearance.HighLightColorHot = clNone
        TabAppearance.HighLightColorSelected = clNone
        TabAppearance.HighLightColorSelectedHot = clNone
        TabAppearance.HighLightColorDown = clNone
        TabAppearance.DrawLine = True
        TabAppearance.TextSelectedBold = True
        TabAppearance.BackGround.Color = clWhite
        TabAppearance.BackGround.ColorTo = clWhite
        TabAppearance.BackGround.Direction = gdHorizontal
        object pnDetalleTrabajo: TAdvPanel
          Left = 2
          Top = 2
          Width = 944
          Height = 169
          Align = alClient
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -5
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
          UseDockManager = True
          Version = '2.7.0.2'
          BorderColor = clBlack
          Caption.Color = clWhite
          Caption.ColorTo = clNone
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clWindowText
          Caption.Font.Height = -11
          Caption.Font.Name = 'MS Sans Serif'
          Caption.Font.Style = []
          Caption.GradientDirection = gdVertical
          Caption.Indent = 0
          Caption.ShadeLight = 255
          CollapsColor = clNone
          CollapsDelay = 0
          DoubleBuffered = True
          ShadowColor = clBlack
          ShadowOffset = 0
          StatusBar.BorderColor = clNone
          StatusBar.BorderStyle = bsSingle
          StatusBar.Font.Charset = DEFAULT_CHARSET
          StatusBar.Font.Color = 4473924
          StatusBar.Font.Height = -11
          StatusBar.Font.Name = 'Tahoma'
          StatusBar.Font.Style = []
          StatusBar.Color = clWhite
          StatusBar.GradientDirection = gdVertical
          Text = ''
          FullHeight = 180
          object SpeedButton6: TSpeedButton
            Left = 504
            Top = 7
            Width = 29
            Height = 29
            Action = NuevoProducto
            Flat = True
          end
          object RxLabel1: TLabel
            Left = 18
            Top = -1
            Width = 52
            Height = 13
            Caption = 'Producto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -4
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object JvLabel11: TLabel
            Left = 558
            Top = 117
            Width = 66
            Height = 20
            AutoSize = False
            Caption = 'Notas Cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
          end
          object JvLabel14: TLabel
            Left = 294
            Top = 39
            Width = 58
            Height = 13
            AutoSize = False
            Caption = 'Modelo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -4
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object JvLabel15: TLabel
            Left = 133
            Top = 39
            Width = 46
            Height = 13
            AutoSize = False
            Caption = 'Marca'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -4
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object JvLabel18: TLabel
            Left = 20
            Top = 39
            Width = 59
            Height = 13
            AutoSize = False
            Caption = 'Categor'#237'a'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -4
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object JvLabel19: TLabel
            Left = 8
            Top = 143
            Width = 66
            Height = 17
            AutoSize = False
            Caption = 'N.Serie/IMEI'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -4
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
          end
          object JvLabel12: TLabel
            Left = 1
            Top = 84
            Width = 73
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Notas Internas'
            Transparent = True
            WordWrap = True
          end
          object RxLabel12: TLabel
            Left = 501
            Top = 67
            Width = 51
            Height = 24
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Trabajo a Realizar'
            Transparent = True
            WordWrap = True
          end
          object JvLabel10: TLabel
            Left = 558
            Top = 2
            Width = 51
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Problema'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object RxCProducto: TJvDBComboEdit
            Left = 18
            Top = 14
            Width = 61
            Height = 21
            TabStop = False
            ClickKey = 16397
            DataField = 'PRODUCTO'
            DataSource = DSBase
            Glyph.Data = {
              4E000000424D4E000000000000003E0000002800000009000000040000000100
              010000000000100000000000000000000000020000000200000000000000FFFF
              FF00FF8000002480000024800000FF800000}
            ButtonWidth = 15
            TabOrder = 0
            OnButtonClick = BuscarProductoExecute
          end
          object edObservacion: TDBMemo
            Left = 80
            Top = 82
            Width = 420
            Height = 22
            TabStop = False
            DataField = 'OBS'
            DataSource = DSProducto
            TabOrder = 2
          end
          object edIdentificador: TDBLUEdit
            Left = 80
            Top = 140
            Width = 178
            Height = 21
            TabOrder = 1
            AutoHistory = False
            AutoHistoryLimit = 0
            AutoHistoryDirection = ahdFirst
            AutoSynchronize = True
            ReturnIsTab = False
            FileLookup = False
            Persist.Enable = False
            Persist.Storage = stInifile
            Persist.Count = 0
            Persist.MaxCount = False
            MatchCase = False
            ModifiedColor = clHighlight
            ShowModified = False
            Version = '2.3.1.6'
            DataField = 'IDENTIFICADORPRODUCTO'
            DataSource = DSBase
            DataLookup = True
          end
          object edPatron: TDBAdvEdit
            Left = 80
            Top = 113
            Width = 157
            Height = 21
            TabStop = False
            AutoFocus = True
            EditType = etRange
            EmptyTextStyle = []
            FlatLineColor = 11250603
            FocusColor = clWindow
            FocusFontColor = 3881787
            FullTextSearch = True
            RangeCharacter = '1'#13#10'2'#13#10'3'#13#10'4'#13#10'5'#13#10'6'#13#10'7'#13#10'8'#13#10'9'
            LabelCaption = 'Patr'#243'n'
            LabelPosition = lpLeftCenter
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            AutoSize = False
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -5
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            HintShowLargeText = True
            ParentFont = False
            TabOrder = 5
            Text = ''
            ValidChars = '1'#13#10'2'#13#10'3'#13#10'4'#13#10'5'#13#10'6'#13#10'7'#13#10'8'#13#10'9'
            Visible = True
            Version = '4.0.6.2'
            DataField = 'PATRON'
            DataSource = DSBase
          end
          object edPassword: TDBAdvEdit
            Left = 343
            Top = 110
            Width = 157
            Height = 21
            TabStop = False
            EditType = etAlphaNumeric
            EmptyTextStyle = []
            FlatLineColor = 11250603
            FocusColor = clWindow
            FocusFontColor = 3881787
            FullTextSearch = True
            LabelCaption = 'Contrase'#241'a/PIN'
            LabelPosition = lpLeftCenter
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -5
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            HintShowLargeText = True
            ParentFont = False
            TabOrder = 7
            Text = ''
            ValidChars = '1'#13#10'2'#13#10'3'#13#10'4'#13#10'5'#13#10'6'#13#10'7'#13#10'8'#13#10'9'
            Visible = True
            Version = '4.0.6.2'
            DataField = 'PASSWORD'
            DataSource = DSBase
          end
          object edObservacion2: TDBMemo
            Left = 558
            Top = 130
            Width = 377
            Height = 35
            DataField = 'OBSERVACION2'
            DataSource = DSBase
            TabOrder = 6
          end
          object dbmDetalle: TDBMemo
            Left = 558
            Top = 67
            Width = 377
            Height = 48
            DataField = 'DESCRIPCION'
            DataSource = DSBase
            ScrollBars = ssVertical
            TabOrder = 4
            OnDblClick = dbmDetalleDblClick
            OnExit = dbmDetalleExit
          end
          object edProblema: TDBMemo
            Left = 558
            Top = 20
            Width = 379
            Height = 41
            DataField = 'PROBLEMA'
            DataSource = DSBase
            TabOrder = 3
          end
          object DBEdit3: TDBEdit
            Left = 85
            Top = 14
            Width = 415
            Height = 21
            Color = clInfoBk
            DataField = 'DESCRIPCIONPRODUCTO'
            DataSource = DSBase
            Enabled = False
            TabOrder = 8
          end
          object DBEdit4: TDBEdit
            Left = 133
            Top = 54
            Width = 155
            Height = 21
            Color = clInfoBk
            DataField = 'MUESTRAMARCAPRODUCTO'
            DataSource = DSBase
            Enabled = False
            TabOrder = 9
          end
          object DBEdit5: TDBEdit
            Left = 296
            Top = 54
            Width = 204
            Height = 21
            Color = clInfoBk
            DataField = 'MUESTRAMODELOPRODUCTO'
            DataSource = DSBase
            Enabled = False
            TabOrder = 10
          end
          object DBEdit6: TDBEdit
            Left = 20
            Top = 54
            Width = 105
            Height = 21
            Color = clInfoBk
            DataField = 'MUESTRACATEGORIAPRODUCTO'
            DataSource = DSBase
            Enabled = False
            TabOrder = 11
          end
        end
      end
      object pagMatafuegos: TAdvOfficePage
        Left = 1
        Top = 2
        Width = 948
        Height = 173
        Caption = '-----------------'
        DoubleBuffered = True
        PageAppearance.BorderColor = clNone
        PageAppearance.Color = clWhite
        PageAppearance.ColorTo = clWhite
        PageAppearance.ColorMirror = clWhite
        PageAppearance.ColorMirrorTo = clWhite
        PageAppearance.Gradient = ggVertical
        PageAppearance.GradientMirror = ggVertical
        Text = ''
        TabAppearance.BorderColor = clWhite
        TabAppearance.BorderColorHot = clNone
        TabAppearance.BorderColorSelected = clNone
        TabAppearance.BorderColorSelectedHot = clNone
        TabAppearance.BorderColorDisabled = clNone
        TabAppearance.BorderColorDown = clNone
        TabAppearance.Color = clWhite
        TabAppearance.ColorTo = clWhite
        TabAppearance.ColorSelected = clWhite
        TabAppearance.ColorSelectedTo = clWhite
        TabAppearance.ColorDisabled = 15658734
        TabAppearance.ColorDisabledTo = clNone
        TabAppearance.ColorHot = 16316922
        TabAppearance.ColorHotTo = 16316922
        TabAppearance.ColorMirror = clWhite
        TabAppearance.ColorMirrorTo = clWhite
        TabAppearance.ColorMirrorHot = 16316922
        TabAppearance.ColorMirrorHotTo = 16316922
        TabAppearance.ColorMirrorSelected = clWhite
        TabAppearance.ColorMirrorSelectedTo = clWhite
        TabAppearance.ColorMirrorDisabled = 15658734
        TabAppearance.ColorMirrorDisabledTo = clNone
        TabAppearance.Font.Charset = DEFAULT_CHARSET
        TabAppearance.Font.Color = clWindowText
        TabAppearance.Font.Height = -11
        TabAppearance.Font.Name = 'Segoe UI'
        TabAppearance.Font.Style = []
        TabAppearance.Gradient = ggVertical
        TabAppearance.GradientMirror = ggVertical
        TabAppearance.GradientHot = ggVertical
        TabAppearance.GradientMirrorHot = ggVertical
        TabAppearance.GradientSelected = ggVertical
        TabAppearance.GradientMirrorSelected = ggVertical
        TabAppearance.GradientDisabled = ggVertical
        TabAppearance.GradientMirrorDisabled = ggVertical
        TabAppearance.TextColor = 4474440
        TabAppearance.TextColorHot = 14916384
        TabAppearance.TextColorSelected = 4474440
        TabAppearance.TextColorDisabled = 7303023
        TabAppearance.ShadowColor = clNone
        TabAppearance.HighLightColor = clNone
        TabAppearance.HighLightColorHot = clNone
        TabAppearance.HighLightColorSelected = clNone
        TabAppearance.HighLightColorSelectedHot = clNone
        TabAppearance.HighLightColorDown = clNone
        TabAppearance.DrawLine = True
        TabAppearance.TextSelectedBold = True
        TabAppearance.BackGround.Color = clWhite
        TabAppearance.BackGround.ColorTo = clWhite
        TabAppearance.BackGround.Direction = gdHorizontal
        object pnMatafuegos: TPanel
          Left = 2
          Top = 2
          Width = 944
          Height = 169
          Align = alClient
          TabOrder = 0
          object Label11: TLabel
            Left = 4
            Top = 2
            Width = 91
            Height = 13
            Caption = 'Numero Matafuego'
            FocusControl = edNumero
          end
          object Label12: TLabel
            Left = 5
            Top = 41
            Width = 34
            Height = 13
            Caption = 'Agente'
          end
          object Label15: TLabel
            Left = 143
            Top = 37
            Width = 51
            Height = 13
            Caption = 'Capacidad'
            FocusControl = edCapacidad
          end
          object Label17: TLabel
            Left = 215
            Top = 37
            Width = 30
            Height = 13
            Caption = 'Marca'
            FocusControl = edMarcaMatafuego
          end
          object Label18: TLabel
            Left = 24
            Top = 168
            Width = 112
            Height = 13
            Caption = 'FECHA_FABRICACION'
          end
          object Label19: TLabel
            Left = 24
            Top = 208
            Width = 56
            Height = 13
            Caption = 'FECHA_PH'
          end
          object Label22: TLabel
            Left = 24
            Top = 248
            Width = 60
            Height = 13
            Caption = 'APROBADO'
          end
          object Label31: TLabel
            Left = 558
            Top = 2
            Width = 98
            Height = 13
            Caption = 'Fecha PH Realizado'
            FocusControl = edRealizado
          end
          object SpeedButton9: TSpeedButton
            Left = 133
            Top = 11
            Width = 18
            Height = 30
            Action = BuscarMatafuego
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C7B94006E7B8800FFFFFFFFFFFF
              FFFF0C7EA9000D80AA000C7EA9000D80AA000D80AA000F81AB00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF778295001E89E00058A9DC00FFFFFFFF038C
              B90047D5EE0021D7FC0034D8FD006EE6FF008DE6FA0043BADD000D80AA00FFFF
              FFFFFFFFFFFFFFFFFFFF778295001F87DE004DB7FF0056AEF400038CB9008CFA
              FD0057E9FD0021D7FC0034D8FD006FE6FF008DE6FA0049BFE0000E9DCE001080
              A700FFFFFFFF8B8697001E7DCE004DB7FF0056AEF400FFFFFFFF078EBC008CFA
              FD0057E9FD0021D7FC0034D8FD0074D3E900B1979400C2A69A00C6AEA000AE87
              7B008C6A6B005F92BD004DB7FF004DB7FF00FFFFFFFFFFFFFFFF078EBC008CFA
              FD0057E9FD0023D8FD0045C6E400AB939500ECDDCC00FEFED600FFFFE400F7F2
              D900CFB7A100AD8580004DB7FF00FFFFFFFFFFFFFFFFFFFFFFFF038CB900B4FF
              FF00B6F6FF00C6F5FF00B5A09F00E8DDD600FFFFF400FEFED600FFFEDD00FEFE
              D600FFF2BA00CAA08C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF038CB900B8ED
              F6002FBCDC0010A7D1009C919000FFFFE400FFFEDD00FEFED600FFFEDD00FCF5
              CD00F8D09800ECD1AC00AD858000FFFFFFFFFFFFFFFFFFFFFFFF078EBC004AC6
              DC0057E9FD0021D7FC00A49E9900FFFEDD00FFFEDD00FFFEDD00FFFEDD00F6DA
              AB00F3BE8000F5DEB500AD858000FFFFFFFFFFFFFFFFFFFFFFFF038CB9008CFA
              FD0057E9FD0023D8FD0096959400FAF6D600FFFEDD00FAF6D600F9E1B100F5CB
              9A00FEEAB900E4CCA900AD858000FFFFFFFFFFFFFFFFFFFFFFFF038CB9008CFA
              FD0057E9FD0023D8FD005DA8BE00D3BBA200FFF7C600F8D09800F4C88E00FEF7
              E000F9F6F200AD858000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF038CB9008CFA
              FD0057E9FD0023D8FD0038D7FB008AA5AD00CDAC9300ECD1AC00F5E1B600DAC5
              B700AD858000AD858000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF078EBC008CFA
              FD0081F8FE0070F9FE007AFFFF0097FCFD00A1C6C8008F989B0086838800876F
              6F00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF038CB900FBFF
              FF00F5FFFE00D2FFFF00B4FFFF00ADFFFE00ADFFFE00ADFFFE0070F9FE000D80
              AA00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0991
              C100F5FFFE00E3FEFF00C6FEFF00ADFFFE00A7FFFF009BFBFD001185B000FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
              FFFF078EBC00078EBC00038CB900078EBC00078EBC00078EBC00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
          object Label23: TLabel
            Left = 5
            Top = 80
            Width = 88
            Height = 13
            Caption = 'Fecha Fabricacion'
            FocusControl = edFechaFabricacion
          end
          object SpeedButton8: TSpeedButton
            Left = 157
            Top = 11
            Width = 18
            Height = 30
            Action = AgregarMatafuego
            Flat = True
          end
          object edNumero: TDBEdit
            Left = 6
            Top = 17
            Width = 121
            Height = 21
            DataField = 'NUMERO_MATAFUEGO'
            DataSource = DatosOrdenDeTrabajo.DSOTrabajoMatafuegos
            Enabled = False
            TabOrder = 0
          end
          object edMarcaMatafuego: TDBEdit
            Left = 215
            Top = 56
            Width = 180
            Height = 21
            DataField = 'MARCA'
            DataSource = DatosOrdenDeTrabajo.DSOTrabajoMatafuegos
            Enabled = False
            TabOrder = 3
          end
          object edCapacidad: TJvDBCalcEdit
            Left = 143
            Top = 56
            Width = 62
            Height = 21
            Flat = False
            ParentFlat = False
            Enabled = False
            ShowButton = False
            TabOrder = 2
            DecimalPlacesAlwaysShown = False
            DataField = 'CAPACIDAD'
            DataSource = DatosOrdenDeTrabajo.DSOTrabajoMatafuegos
          end
          object GroupBox1: TGroupBox
            Left = 686
            Top = 10
            Width = 244
            Height = 127
            Caption = 'Control'
            TabOrder = 4
            object cxDBTextEdit4: TDBCheckBox
              Left = 15
              Top = 19
              Width = 121
              Height = 21
              Caption = 'Prueba Hidraulica'
              Color = clBtnFace
              DataField = 'OPCION_PH'
              DataSource = DatosOrdenDeTrabajo.DSOTrabajoMatafuegos
              ParentColor = False
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object cxDBTextEdit5: TDBCheckBox
              Left = 15
              Top = 42
              Width = 121
              Height = 21
              Caption = 'Valvula'
              Color = clBtnFace
              DataField = 'OPCION_VALVULA'
              DataSource = DatosOrdenDeTrabajo.DSOTrabajoMatafuegos
              ParentColor = False
              TabOrder = 1
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object cxDBTextEdit6: TDBCheckBox
              Left = 15
              Top = 65
              Width = 121
              Height = 21
              Caption = 'Manometro'
              Color = clBtnFace
              DataField = 'OPCION_MANOMETRO'
              DataSource = DatosOrdenDeTrabajo.DSOTrabajoMatafuegos
              ParentColor = False
              TabOrder = 2
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object cxDBTextEdit7: TDBCheckBox
              Left = 15
              Top = 89
              Width = 121
              Height = 21
              Caption = 'Placa'
              Color = clBtnFace
              DataField = 'OPCION_PLACA'
              DataSource = DatosOrdenDeTrabajo.DSOTrabajoMatafuegos
              ParentColor = False
              TabOrder = 3
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object cxDBTextEdit8: TDBCheckBox
              Left = 142
              Top = 19
              Width = 85
              Height = 21
              Caption = 'Manga'
              Color = clBtnFace
              DataField = 'OPCION_MANGA'
              DataSource = DatosOrdenDeTrabajo.DSOTrabajoMatafuegos
              ParentColor = False
              TabOrder = 4
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object cxDBTextEdit9: TDBCheckBox
              Left = 142
              Top = 42
              Width = 88
              Height = 21
              Caption = 'Tobera'
              Color = clBtnFace
              DataField = 'OPCION_TOBERA'
              DataSource = DatosOrdenDeTrabajo.DSOTrabajoMatafuegos
              ParentColor = False
              TabOrder = 5
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object cxDBTextEdit10: TDBCheckBox
              Left = 142
              Top = 65
              Width = 84
              Height = 21
              Caption = 'Suncho'
              Color = clBtnFace
              DataField = 'OPCION_SUNCHO'
              DataSource = DatosOrdenDeTrabajo.DSOTrabajoMatafuegos
              ParentColor = False
              TabOrder = 6
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object cxDBTextEdit11: TDBCheckBox
              Left = 142
              Top = 88
              Width = 76
              Height = 21
              Caption = 'Pintura'
              Color = clBtnFace
              DataField = 'OPCION_PINTURA'
              DataSource = DatosOrdenDeTrabajo.DSOTrabajoMatafuegos
              ParentColor = False
              TabOrder = 7
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
          object DBCheckBox1: TDBCheckBox
            Left = 451
            Top = 13
            Width = 71
            Height = 21
            Caption = 'Aprobado'
            Color = clBtnFace
            DataField = 'APROBADO'
            DataSource = DatosOrdenDeTrabajo.DSOTrabajoMatafuegos
            ParentColor = False
            TabOrder = 7
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object edRealizado: TJvDBDateEdit
            Left = 556
            Top = 16
            Width = 110
            Height = 21
            DataField = 'FECHA_PH'
            DataSource = DatosOrdenDeTrabajo.DSOTrabajoMatafuegos
            ShowNullDate = False
            TabOrder = 5
          end
          object edAgente: TDBEdit
            Left = 5
            Top = 56
            Width = 123
            Height = 21
            DataField = 'AGENTE'
            DataSource = DatosOrdenDeTrabajo.DSOTrabajoMatafuegos
            Enabled = False
            TabOrder = 1
          end
          object edFechaFabricacion: TJvDBDateEdit
            Left = 5
            Top = 96
            Width = 102
            Height = 21
            DataField = 'FECHA_FABICACION'
            DataSource = DatosOrdenDeTrabajo.DSOTrabajoMatafuegos
            Enabled = False
            ShowNullDate = False
            TabOrder = 6
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 519
            Top = 48
            Width = 147
            Height = 89
            Caption = 'Tipo de Trabajo'
            DataField = 'TIPO_TRABAJO'
            DataSource = DatosOrdenDeTrabajo.DSOTrabajoMatafuegos
            Items.Strings = (
              'Sin Informar'
              'Cambio'
              'Reparacion'
              'Realizado')
            TabOrder = 8
            Values.Strings = (
              '0'
              '1'
              '2'
              '3')
          end
        end
      end
    end
    object DBFechaFianlizacion: TJvDBDateEdit
      Left = 571
      Top = 53
      Width = 95
      Height = 21
      TabStop = False
      DataField = 'FECHAFINAL'
      DataSource = DSBase
      ShowNullDate = False
      TabOrder = 3
    end
    object edDeltaPrioridad: TSpinEdit
      Left = 705
      Top = 161
      Width = 46
      Height = 22
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 10
      MinValue = 0
      ParentFont = False
      TabOrder = 4
      Value = 0
    end
    object edPrioridadInicial: TSpinEdit
      Left = 587
      Top = 161
      Width = 49
      Height = 22
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 1000
      MinValue = 0
      ParentFont = False
      TabOrder = 5
      Value = 0
    end
  end
  inherited ToolBar1: TToolBar
    Top = 643
    Width = 950
    Align = alBottom
    ButtonHeight = 30
    ExplicitTop = 643
    ExplicitWidth = 950
    inherited btConfirma: TBitBtn
      Height = 30
      ExplicitHeight = 30
    end
    inherited btNuevo: TBitBtn
      Width = 77
      Height = 30
      ExplicitWidth = 77
      ExplicitHeight = 30
    end
    inherited btCancelar: TBitBtn
      Left = 154
      Height = 30
      ExplicitLeft = 154
      ExplicitHeight = 30
    end
    inherited btModificar: TBitBtn
      Left = 229
      Height = 30
      ExplicitLeft = 229
      ExplicitHeight = 30
    end
    inherited Pr: TSpeedButton
      Left = 304
      Height = 30
      ExplicitLeft = 304
      ExplicitHeight = 30
    end
    inherited btBuscar: TBitBtn
      Left = 319
      Height = 30
      ExplicitLeft = 319
      ExplicitHeight = 30
    end
    inherited Ne: TSpeedButton
      Left = 394
      Height = 30
      ExplicitLeft = 394
      ExplicitHeight = 30
    end
    inherited btBorrar: TBitBtn
      Left = 409
      Height = 30
      ExplicitLeft = 409
      ExplicitHeight = 30
    end
    inherited btSalir: TBitBtn
      Left = 484
      Height = 30
      ExplicitLeft = 484
      ExplicitHeight = 30
    end
    object ToolButton1: TToolButton
      Left = 559
      Top = 0
      Width = 4
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object sbFacturar: TSpeedButton
      Left = 563
      Top = 0
      Width = 24
      Height = 30
      Action = Facturar
      Flat = True
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333388888888883333333333FFFFFFFFFF3333333330000000000833333
        33338888888888F3333333330FFFFFFFF083333333338F33333F38F333333333
        0FFFF00FF083333333338F33388FF8F3333333330FFF0000F083333333338F33
        8888F8F3333333330FF80000F083333333338F338888F8F3333333330F800000
        0083333333338F38888888F3333333330F000F000083333333338F88838888F3
        333333330F00FFF00083333333338F88333888F3333333330FFFFF0000833333
        33338F33338888FF333333330FFFFF0F0003333333338F33338F888F33333333
        0FFFFF003008333333338FFFFF88388F33333333000000033800333333338888
        88833388F333333333333333330083333333333333333388FF33333333333333
        3330033333333333333333388F33333333333333333303333333333333333333
        8333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
    end
    object spArchivarOT: TSpeedButton
      Left = 587
      Top = 0
      Width = 24
      Height = 30
      Action = ArchivarOdeTrabajo
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
        333333333F777773FF333333008888800333333377333F3773F3333077870787
        7033333733337F33373F3308888707888803337F33337F33337F330777880887
        7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
        7703337F33377733337F33088888888888033373FFFFFFFFFF73333000000000
        00333337777777777733333308033308033333337F7F337F7F33333308033308
        033333337F7F337F7F33333308033308033333337F73FF737F33333377800087
        7333333373F77733733333333088888033333333373FFFF73333333333000003
        3333333333777773333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
    end
    object JvArrowButton1: TJvArrowButton
      Left = 611
      Top = 0
      Width = 86
      Height = 30
      Action = Imprimir
      DropDown = PopupMenu1
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clWindowText
      FillFont.Height = -11
      FillFont.Name = 'Tahoma'
      FillFont.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object spCorreo: TSpeedButton
      Left = 697
      Top = 0
      Width = 25
      Height = 30
      Hint = 'Enviar por Correo O.T'
      Action = EnviarCorreo
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
        000077777777777777770FFFFFFFFFFFFFF07F3333FFF33333370FFFF777FFFF
        FFF07F333777333333370FFFFFFFFFFFFFF07F3333FFFFFF33370FFFF777777F
        FFF07F33377777733FF70FFFFFFFFFFF99907F3FFF33333377770F777FFFFFFF
        9CA07F77733333337F370FFFFFFFFFFF9A907FFFFFFFFFFF7FF7000000000000
        0000777777777777777733333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton3: TSpeedButton
      Left = 722
      Top = 0
      Width = 33
      Height = 30
      Action = BuscadorXIdentif
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF006D7C94006F7C8800FF00FF00FF00
        FF000D7FA9000E80AA000D7FA9000E80AA000E80AA001081AB00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00788295001F89E00059A9DC00FF00FF00048C
        B90048D5EE0022D7FC0035D8FD006FE6FF008DE6FA0044BADD000E80AA00FF00
        FF00FF00FF00FF00FF00788295002087DE004EB7FF0057AEF400048CB9008CFA
        FD0058E9FD0022D7FC0035D8FD0070E6FF008DE6FA004ABFE0000F9DCE001180
        A700FF00FF008B8697001F7ECE004EB7FF0057AEF400FF00FF00088EBC008CFA
        FD0058E9FD0022D7FC0035D8FD0075D3E900B1979400C2A69A00C6AEA000AE87
        7C008C6B6C006092BD004EB7FF004EB7FF00FF00FF00FF00FF00088EBC008CFA
        FD0058E9FD0024D8FD0046C6E400AB939500ECDDCC00FEFED600FFFFE400F7F2
        D900CFB7A100AD8580004EB7FF00FF00FF00FF00FF00FF00FF00048CB900B4FF
        FF00B6F6FF00C6F5FF00B5A09F00E8DDD600FFFFF400FEFED600FFFEDD00FEFE
        D600FFF2BA00CAA08C00FF00FF00FF00FF00FF00FF00FF00FF00048CB900B8ED
        F60030BCDC0011A7D1009C919000FFFFE400FFFEDD00FEFED600FFFEDD00FCF5
        CD00F8D09800ECD1AC00AD858000FF00FF00FF00FF00FF00FF00088EBC004BC6
        DC0058E9FD0022D7FC00A49E9900FFFEDD00FFFEDD00FFFEDD00FFFEDD00F6DA
        AB00F3BE8000F5DEB500AD858000FF00FF00FF00FF00FF00FF00048CB9008CFA
        FD0058E9FD0024D8FD0096959400FAF6D600FFFEDD00FAF6D600F9E1B100F5CB
        9A00FEEAB900E4CCA900AD858000FF00FF00FF00FF00FF00FF00048CB9008CFA
        FD0058E9FD0024D8FD005EA8BE00D3BBA200FFF7C600F8D09800F4C88E00FEF7
        E000F9F6F200AD858000FF00FF00FF00FF00FF00FF00FF00FF00048CB9008CFA
        FD0058E9FD0024D8FD0039D7FB008AA5AD00CDAC9300ECD1AC00F5E1B600DAC5
        B700AD858000AD858000FF00FF00FF00FF00FF00FF00FF00FF00088EBC008CFA
        FD0081F8FE0071F9FE007BFFFF0097FCFD00A1C6C8008F989B00868388008770
        7000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00048CB900FBFF
        FF00F5FFFE00D2FFFF00B4FFFF00ADFFFE00ADFFFE00ADFFFE0071F9FE000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000A91
        C100F5FFFE00E3FEFF00C6FEFF00ADFFFE00A7FFFF009BFBFD001285B000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00088EBC00088EBC00048CB900088EBC00088EBC00088EBC00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton4: TSpeedButton
      Left = 755
      Top = 0
      Width = 33
      Height = 30
      Hint = 'Ajuste de Stock'
      Action = HacerAjusteStcok
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton5: TSpeedButton
      Left = 788
      Top = 0
      Width = 31
      Height = 30
      Hint = 'Imprimir Contrato'
      Action = ImprimirContrato
      Flat = True
    end
    object SpeedButton7: TSpeedButton
      Left = 819
      Top = 0
      Width = 31
      Height = 30
      Hint = 'Etiqueta de O.de Trabajo'
      Action = ImprimirEtiqueta
      Flat = True
      ParentShowHint = False
      ShowHint = True
    end
  end
  inherited Panel1: TPanel
    Top = 673
    Width = 950
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 673
    ExplicitWidth = 950
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Left = 155
      Top = -5
      Width = 769
      Align = alNone
      Panels = <
        item
          Text = '..'
          Width = 500
        end
        item
          Text = '.'
          Width = 150
        end>
      OnDblClick = sbEstadoDblClick
      ExplicitLeft = 155
      ExplicitTop = -5
      ExplicitWidth = 769
    end
  end
  object JvToolBar1: TJvToolBar [3]
    Left = 0
    Top = 0
    Width = 950
    Height = 23
    ButtonHeight = 21
    ButtonWidth = 52
    Caption = 'JvToolBar1'
    DrawingStyle = dsGradient
    Menu = MainMenu1
    ShowCaptions = True
    TabOrder = 3
  end
  inherited ActionList1: TActionList
    Left = 848
    Top = 480
    object BuscarSucursal: TAction
      Caption = 'BuscarSucursal'
      OnExecute = BuscarSucursalExecute
    end
    object BuscarDeposito: TAction
      Caption = 'BuscarDeposito'
      OnExecute = BuscarDepositoExecute
    end
    object BuscarConVenta: TAction
      Caption = 'BuscarConVenta'
    end
    object BuscarVendedor: TAction
      Caption = 'BuscarVendedor'
      OnExecute = BuscarVendedorExecute
    end
    object BuscarProducto: TAction
      Caption = 'BuscarProducto'
      Enabled = False
      Visible = False
      OnExecute = BuscarProductoExecute
    end
    object BuscarTipoCpbte: TAction
      Caption = 'BuscarTipoCpbte'
      OnExecute = BuscarTipoCpbteExecute
    end
    object BuscarArticulo: TAction
      Caption = 'BuscarArticulo'
      OnExecute = BuscarArticuloExecute
    end
    object Facturar: TAction
      Hint = 'Genera la Factura de la O. de Trabajo'
      OnExecute = FacturarExecute
    end
    object HacerFactura: TAction
      Caption = 'HacerFactura'
      Hint = 'Genera la Factura de la O. de Trabajo'
      OnExecute = HacerFacturaExecute
    end
    object ArchivarOdeTrabajo: TAction
      Hint = 'Archivar la Orden de Trabajo'
      OnExecute = ArchivarOdeTrabajoExecute
    end
    object BuscarCliente: TAction
      Caption = 'BuscarCliente'
      OnExecute = BuscarClienteExecute
    end
    object BuscarLdr: TAction
      Caption = 'BuscarLdr'
      OnExecute = BuscarLdrExecute
    end
    object Imprimir: TAction
      Caption = '&Imprimir'
      OnExecute = ImprimirExecute
    end
    object DatosCliente: TAction
      Hint = 'Modificar Datos del Cliente'
      OnExecute = DatosClienteExecute
    end
    object BuscaTipoFc: TAction
      Caption = 'BuscaTipoFc'
      OnExecute = BuscaTipoFcExecute
    end
    object BorrarPenalizacion: TAction
      Caption = 'Borrar &Penalizaci'#243'n'
      OnExecute = BorrarPenalizacionExecute
    end
    object CronogramOT: TAction
      OnExecute = CronogramOTExecute
    end
    object Recalcular: TAction
      Caption = 'Recalcular'
      OnExecute = RecalcularExecute
    end
    object BuscarFactura: TAction
      Caption = 'BuscarFactura'
      OnExecute = BuscarFacturaExecute
    end
    object BuscarPorObs: TAction
      Caption = 'Buscar Por Obs'
      ShortCut = 8205
      OnExecute = BuscarPorObsExecute
    end
    object EnviarCorreo: TAction
      OnExecute = EnviarCorreoExecute
    end
    object BuscadorXIdentif: TAction
      Hint = 'Buscador por Identificador '
      ImageIndex = 7
      OnExecute = BuscadorXIdentifExecute
    end
    object RtfToTexto: TAction
      Caption = 'Pasar a Texto Plano'
      OnExecute = RtfToTextoExecute
    end
    object BuscarSerie: TAction
      Caption = 'BuscarSerie'
      OnExecute = BuscarSerieExecute
    end
    object BuscarConsumible: TAction
      Caption = 'BuscarConsumible'
      OnExecute = BuscarConsumibleExecute
    end
    object HacerAjusteStcok: TAction
      ImageIndex = 10
      OnExecute = HacerAjusteStcokExecute
    end
    object BuscarArticuloPorDef: TAction
      Caption = 'BuscarArticuloPorDef'
      OnExecute = BuscarArticuloPorDefExecute
    end
    object ImprimirContrato: TAction
      ImageIndex = 11
      OnExecute = ImprimirContratoExecute
    end
    object BuscarCpbtePorDef: TAction
      Caption = 'BuscarCpbtePorDef'
      OnExecute = BuscarCpbtePorDefExecute
    end
    object NuevoProducto: TAction
      ImageIndex = 12
      OnExecute = NuevoProductoExecute
    end
    object ImprimirEtiqueta: TAction
      ImageIndex = 11
      OnExecute = ImprimirEtiquetaExecute
    end
    object BuscarPorReferencia: TAction
      Caption = 'BuscarPorReferencia'
      ShortCut = 32781
      OnExecute = BuscarPorReferenciaExecute
    end
    object BuscarMatafuego: TAction
      OnExecute = BuscarMatafuegoExecute
    end
    object AgregarMatafuego: TAction
      ImageIndex = 12
      OnExecute = AgregarMatafuegoExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = DatosOrdenDeTrabajo.CDSOTrabajoCab
    Left = 800
    Top = 168
  end
  inherited ImageList1: TImageList
    Left = 424
    Top = 368
    Bitmap = {
      494C01010C001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF03480500045A0800056B0B00056B0B00045D0900034B0500FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF6B6969006B696900FFFFFFFFFFFFFFFF6B6969006B696900FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A39B0092847600928679009286
      7A0092867B0092877B0092877B0092867B0092867A009285770092837600C2C1
      C000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFA0A0A000777777007676
      7600767676007676760076767600767676007676760076767600767676007676
      760081818100C7C7C700000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF045F
      0800045F08000791120008B0170008B3190008B3180008B11800069613000467
      0B0004670B00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B69
      6900AAA7A700A19F9F006B6969006B6969006B696900E5E3E3006B6969006B69
      69006B696900FFFFFFFFFFFFFFFFFFFFFFFFCCBB6A009ACC6700B2C46900D9BD
      7600F6C79A00F5C29100F6C89B00F5C39300F8D1AD00F7CFA900FBE7D4009284
      7600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5959590045454500868686008787
      8700878787008787870087878700878787008787870087878700878787008787
      8700000000001E1E1E008A8A8A00000000FFFFFFFFFFFFFFFFFF09691400097E
      14000AB61B0008B9190007B4170006B2150008B3180008B4180008B8190008B9
      190006830F00034C0500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B696900DAD9
      D900A19F9F00A19F9F00A19F9F0036353500343434006B6C6C00BFBFBF00E1E2
      E200B7B6B6006B6969006B6969006B696900D3C78400A2EAA200C9EFC300F0E3
      C600FFFBF900FCE9D800FFFBF900FCE9D900FFFBF900FBE5D100FFFAF8009285
      7900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07070700000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF00000000000000FF252525009A9A9A00FFFFFFFF0A6914000E85210015BD
      330010B726000AB21B0006B1150007B1160008B2180008B2180008B2180008B4
      180008BA190006840F0005660B00FFFFFFFFFFFFFFFF6B696900D4D3D300CACA
      CA008E8C8C008E8C8C008E8C8C003B3A3A0009080900060606000A0A0A000606
      060079797900BBBBBB006B696900FFFFFFFFCFCA87007DE27D00ABE6A100EBCC
      9C00FFF6F100F8CEA800FFF6F100F8CFA800FFF7F200F8CFA900FFF7F3008F82
      7400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF1D1D1D006C6C6C00555555001A1A1A00FFFFFFFF0A6914001FBE48001ABD
      3F0013B72F0009B21E0027BC3500DFF5E100EEFAEF0062CE6C0008B2180008B2
      180008B3180008BA190005660B00FFFFFFFF6B696900CACACA00CACACA008E8C
      8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A000888686005D5A5B000606
      060008080800070707006B69690075727200DBC98C00C5D59300E7D0A000F5C6
      9800F6CA9F00F6CA9F00F6CA9F00F6CBA000F8D2AE00F7CCA300FBE4D000E2B0
      7E00F7CFA800F6C79900F6C99E009D948B0000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFD5D5D50089898900878787000000000007710F001A9A390029C65A001CBB
      44000DB424000AB31A0010B420009ADFA000FFFFFF00F7FDF80059CB640008B2
      180008B2180008B8190007941200035C08006B696900CACACA008E8C8C00EFEE
      EE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCECE00BDBCBC00ADAB
      AB008B898900575555007977770074727200D4D1950082E38200B6E7AA00F6C5
      9700FFF4ED00F6C49600FFF3ED00F6C49600FFF3EC00F6C49500FFF2EC00E2B0
      8000F8D3AF00F7D1AD00FBE7D5009285770000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0000000007710F0029B65A002BC5640021BD
      4C000EB4210009B219000BB31B0009B218008DDB9500FDFEFD00F6FCF70057CB
      620008B2180008B5190007AB1600035C08006B6969008E8C8C00FFFFFF00FEFC
      FC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0C100D7D7D700D8D8
      D800C7C6C600B7B6B600918F8F006B686800DACC9100A3CD7000CBC77E00F2AE
      6B00F6C49600F2AD6900F6C49500F2AD6A00F8CBA400F3B47800FBDEC600E6C5
      A500FFF8F400F8D2AE00FFF8F50092867A0000000000000000FF000000FF0000
      00FFA3A3A300000000000000000000000000000000000000000000000000A4A4
      A400000000FF000000FF000000FF000000000E821B0036C26B0032C76B00CDF1
      DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FDF900FFFFFF00F2FB
      F3006ED2780007B4180008B3180004640A00FFFFFFFF6B6969006B696900EDEB
      EB00B1A6A700796E71008A83880096929500969091009D9798009A9395009E98
      9900BBBABA00D1D1D100C2C2C2006B696900DDD4A100A9ECA900D1F0CA00FADD
      C100FFF8F400FAE1C900FFF7F300FAE0C800FFF5EF00F9D8BA00FFF0E800E2B1
      8000F8CEA800F4BB8400FBE3CE0092877C0000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF00000000128D220057CC830041C97600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
      FF00BCEAC10009B4190008B31800056C0C00FFFFFFFFFFFFFFFFFFFFFFFF6B69
      6900BB897E00A7876C008B6E63007C665F006E616400787278008F8B8E00A9A3
      A400CBCACA00C1C1C1006B696900FFFFFFFFDAD39D0088E58800A9E69F00EEC9
      9900FFF1EA00F7C79C00FFEFE600F7C69A00FFEDE200F7C59800FFEBDF00E6C4
      A500FFF8F400F9DABE00FFF6F10093887D0000000000000000FF000000FFD1D1
      D100767676007676760076767600767676007676760076767600767676007676
      7600D1D1D100000000FF000000FF000000000E911C006ED293005ED38D006CD4
      950071D6990070D6980071D6990063D28C0092DFA800FBFEFB00FFFFFF00ACE5
      B8002DBF4B0010B82A0007B1180004600900FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBD828100FFE3B400FFD39F00E9B28100C9997200BA916B00BD828100807C
      7D006B6969006B696900FFFFFFFFFFFFFFFFE6CC9800D0D79E00E6D09F00F4C8
      9900F6CA9F00F6CA9F00F6CA9F00F6CBA000F8D0AB00F7CBA300FBDCC300E5BF
      9C00FFF2EA00F6C39400FFF1E90093897F0000000000000000FF000000FFD1D1
      D100878787008787870087878700878787008787870087878700878787008787
      8700D1D1D100000000FF000000FF000000000E911C0066CC83009BE5BA0037C6
      6F002FC3680037C56E0037C56E006FD69700E8F8EE00FFFFFF009FE2B1001FBD
      470019B93D000FBA280007A3160004600900FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC68800BD828100FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D2AF00FDF9F700FFF6F100AEB6
      C50067ADFF008EA6C60066ADFF008EA6C60066ADFF008EA6C60066ADFF00E2AC
      7700F8D1AC00F7CAA000FBE0C90093897F0000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF00000000FFFFFFFF24AE3800BCEDD20082DB
      A40027C062002EC2660052CD8200F7FDF900FFFFFF009CE2B20021BC4A001CBA
      400017B7350013C02F0009851600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC086
      8300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD828100FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFA57B00DAB79500D4B49500BDA9
      9800A9A19D00AFA29900A9A29F00AEA09500A79F9B00AC9C9100A29A9900EDC1
      9900FFEEE400F6C29200FFECE10093897F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF24AE380070D28C00D2F4
      E10080DAA30035C46C0038C56E00BCECCE00ABE6C2002CC2620023BE550022BC
      4C001EC1450015AE330009851600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD82
      8100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD828100FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFDECC9300A6CE7400C3C67700ECB26D00F6C39500F3B07000F6C29200F3B0
      7000F8C99F00F4B77D00FBD9BE0093887E0000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF00000000FFFFFFFFFFFFFFFF24AE380084D8
      9F00DBF7EA00AFE8C6006AD4930051CC810043C9770048CA7A0047CB770038CB
      690020B648000E7B1E00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD828100FFFF
      F200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD828100FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1D4AD00EDF8E900F7F8EE00D8D7D600BBDAFF00CED5DF00BBDAFF00CED5
      DF00BBD8FC00CECED300BBD3F30093877D0007070700000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF07070700FFFFFFFFFFFFFFFFFFFFFFFF24AE
      380024AE3800ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30063D492002EB1
      56002EB15600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD828100BD82
      8100BD828100FBEFE200FBE3CF00FBDDC200BD828100FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFECC7A300DFDCDA00DAD5D10096A5BA005A92D5007290B5005992D5007290
      B5005894D9007193BD005498E60093897F005858580046464600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      76007676760076767600454545005A5A5A00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF31B74D0024AE380024AE380024AE380024AE380023A34100FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFBD828100BD828100BD828100FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFB0ABA6009C948B009C958D009C958F009C9690009D9690009C9690009C96
      8F009C958E009C948C009C938A00FFFFFFFF000000FF9E9E9E00878787008787
      8700878787008787870087878700878787008787870087878700878787008787
      870087878700878787009F9F9F00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF00069F000212A9000317AE000318AE000212A9000007A000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF7C2B04006A240700511D1400541E12006C2506007D2C0400FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF511D14006A2407007C2B04007D2C04006C250600541E1200FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF006500000065
      0000B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B000065
      000000650000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0003
      9D00031BB100062FC0000633C4000634C5000634C5000633C3000630C100031E
      B30000059E00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8931
      030054201600BF5B1400E1985400EFBD8A00F0BF8C00E29D5A00C2611700531E
      150090340200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5420
      160089310300BF5B1400E1985400EFBD8A00F0BF8C00E29D5A00C26117009034
      0200531E1500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00650000009900000099
      0000E5DEDF000065000000650000E4E7E700E0E3E600D9DFE000CCC9CC000065
      0000027C020000650000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0008A100042A
      C3000634C7000632C2000631C2000631C2000631C2000631C2000632C3000634
      C400052CBE00010BA400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B280D00AF46
      0300EBB17800FFFEF800FEF8F400F2DAC400F2D9C200FCF6F000FFFFFC00EEBA
      8700B64D06005F221000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B280D00AF46
      0300EBB17800FFFEF800FEF8F400F2DAC400F2D9C200FCF6F000FFFFFC00EEBA
      8700B64D06005F221000FFFFFFFFFFFFFFFFFFFFFFFF00650000009900000099
      0000E9E2E2000065000000650000E2E1E300E2E6E800DDE2E400CFCCCF000065
      0000027C020000650000FFFFFFFFFFFFFFFFFFFFFFFF00039B00042ACA000535
      D8000330CD000026C400022DC1000631C2000631C200032FC1000026BF00032E
      C1000634C400062DBE0000059E00FFFFFFFFFFFFFFFF722C0C00B0450100F4D0
      AB00FFFFFE00D4884500BD4D0300BA460000BA450000C0520600D4844100FCF8
      F300F8DDBD00B64C040090340100FFFFFFFFFFFFFFFF722C0C00B0450100F4D0
      AB00FFFEFE00D78C4D00C0530800BA450000BA450000BD4E0300D07D3800FCF8
      F400F8DDBD00B64C0400531E1500FFFFFFFFFFFFFFFF00650000009900000099
      0000ECE4E4000065000000650000DFDDDF00E1E6E800E0E5E700D3D0D2000065
      0000027C020000650000FFFFFFFFFFFFFFFFFFFFFFFF0219BA000436E7000230
      DD00113CD8006380E000173FCB00002BC100012CC0000E37C4006480D9001A42
      C700042EC1000634C500041EB300FFFFFFFFFFFFFFFF9A370000E6AB7100FFFF
      FF00CC722700C9671F00CE742900BB470000BC4A0000B8420000B8410000CA6B
      1E00FCF8F400EFBC8800531E1500FFFFFFFFFFFFFFFF9A370000E6AB7100FFFF
      FF00CF752C00B8400000BA420000BC490000BB460000C6621400CE743000C96A
      1E00FCF8F400EFBC880090340100FFFFFFFFFFFFFFFF00650000009900000099
      0000EFE6E600EDE5E500E5DEDF00E0DDDF00DFE0E200E0E1E300D6D0D2000065
      0000027C020000650000FFFFFFFFFFFFFFFF00039E00032FE4000335F1000029
      E4004F6FE900FFFFFF00B7C4F1000C35CA00032CC300A2B2E800FFFFFF006884
      DA000025BE000632C3000630C1000007A000A9430200C05B1000FFFCFA00E1A3
      6900BF470000EECBA900F0D5BA00BD490000B8410000CA6B1F00E9BD9300BA45
      0000D4884200FFFFFF00C15F15007A2B030089330500C05B1000FFFCFA00E1A3
      6900C04B0000FFFFFF00D3803700BC460000B8410000DC995D00FFFFFF00B842
      0000D4874200FFFFFF00C15F1500541E1200FFFFFFFF00650000009900000099
      0000009900000099000000990000009900000099000000990000009900000099
      00000099000000650000FFFFFFFFFFFFFFFF010EAF000235FA000234F8000131
      EE000934E8008CA2F200FFFFFF00B4C2F100A9B8ED00FFFFFF00A7B7E9001239
      C400042EC1000631C2000633C4000212AA009A3A0100DD955300FFFFFF00D375
      2700CC5F0D00EFCBA900F0D3B400C2500000D5864000FAF2E900F7E7D900BC4A
      0000BF500200FCF8F300E29D59006C2506009A3A0100DD955300FFFFFF00D375
      2700CC5F0C00FFFFFF00FFFFFF00DC955300BC440000DA965700FFFFFF00BC4A
      0000BF500200FCF8F300E29D59006C250600FFFFFFFF0065000000990000B1D0
      B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0
      B1000099000000650000FFFFFFFFFFFFFFFF0518BC001646FE000839FC000334
      F8000030F000002AE80091A5F400FFFFFF00FFFFFF00ABBAEF00052EC500012C
      C0000631C2000631C2000635C5000318AE0089330500EBBB8A00FBF0E700D879
      2A00D7732100F3D1B000F2D1B400E6AC7500FFFFFF00FFFFFF00F3DEC700BD4C
      0000BA440000F2DAC200EFC08E00541E1200A9430200EBBB8A00FBF0E700D879
      2A00D7732100FFFFFF00FFFFFF00FFFFFF00E5AF7A00E0A16700FFFFFF00BD4C
      0000BA440000F2DAC200EFC08E007C2B0300FFFFFFFF0065000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F9000099000000650000FFFFFFFFFFFFFFFF0A1CBE004067FE001B48FC000234
      FB000030F9000430F200A4B5F700FFFFFF00FFFFFF00B9C6F2000C35D000002B
      C6000631C2000631C2000635C5000317AD00AD440100EEBF9000FCF4EB00E28A
      3D00E1843400F6D8B800F3D7BA00E5A36400FCF3EB00FFFFFF00F3DEC900BD4C
      0000BA450000F3DEC700EFBD8A00511E1500B0490500EEBF9000FCF4EB00E28A
      3D00E1843400FFFFFF00FFFFFF00FFFFFF00EDC59E00E5AA7400FFFFFF00BD4C
      0000BA450000F3DEC700EFBD8A007A2B0300FFFFFFFF0065000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F9000099000000650000FFFFFFFFFFFFFFFF0512B4005A7BFC00476BFD000032
      FB00103BFB00A1B4FE00FFFFFF00A4B6F80092A7F500FFFFFF00B6C4F2001940
      D300032EC8000631C4000633C3000111A900B0480400E9AA6D00FFFFFF00EDA4
      6100EA954600F8DEC200F7DEC600D9732000DC883E00F7E3D100F7EADC00BC4A
      0000C0530400FEFBF800E09751006A230700B0480400E9AA6D00FFFFFF00EDA4
      6100EA934500FFFFFF00FFFFFF00EDBA8800D0661200E3A66C00FFFFFF00BC4A
      0000C0530400FEFBF800E09751006A230700FFFFFFFF0065000000990000F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F9000099000000650000FFFFFFFFFFFFFFFF0002A0004969F3008FA6FF001E45
      FB004B6EFC00FFFFFF00A7B8FE000632F6000029ED008CA2F600FFFFFF00617E
      E7000027D0000633CC00062FC30000059F00B0490500DD893E00FFFCF800FAD7
      B400F4A35800FCE6D000F8E3CE00E1843400D7711F00D3742600E3AC7700BB46
      0000D9935300FFFFFE00BD590F007A2B0300AD440100DD893E00FFFCF800FAD7
      B400F4A55A00FFFFFF00F0BB8700DE812F00D56D1C00E7AF7900FFFFFF00BA43
      0000D9935200FFFFFE00BD590F00511E1500FFFFFFFF0065000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F9000099000000650000FFFFFFFFFFFFFFFFFFFFFFFF192ECB0099AFFF008BA2
      FE00204CFB004C70FC000D3CFB00002FFB000030F7000535F1004B6DF1000F3B
      E3000331DB000535D700031BB500FFFFFFFFFFFFFFFFC9641700F8CEA500FFFF
      FF00FED0A300F8BA7E00EFAD6F00E2883A00D9782900CE641100C04B0000D079
      3000FFFFFF00EAAF72004F1E1700FFFFFFFFFFFFFFFFC9641700F8CEA500FFFF
      FF00FED1A600F6A96200EB964700E2893B00D8762500D77A2D00D1772C00D079
      3100FFFFFF00EAAF720089300200FFFFFFFFFFFFFFFF0065000000990000F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F9000099000000650000FFFFFFFFFFFFFFFFFFFFFFFF0003A000405DEC00B8C7
      FF009CAFFD00395BFC000939FB000234FB000234FB000032F900042EF2000534
      EB000436E900042BCD0000039C00FFFFFFFFFFFFFFFFB2460000E0873A00FEE5
      CB00FFFFFF00FAD3AC00EDA15B00E28B3E00D97A2C00D4772900E1A46A00FFFF
      FF00F3CCA400AC43010089300200FFFFFFFFFFFFFFFFB2460000E0873A00FEE5
      CB00FFFFFF00FAD5B100EDA56200E28B3E00D97A2C00D3742500DE9D6100FFFF
      FF00F3CCA400AC4301004F1E1700FFFFFFFFFFFFFFFF0065000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F9000099000000650000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0208A500415F
      EC00A9BBFF00BDCAFF008EA5FE006383FD004F72FC00496DFD003860FD001343
      F900032BD7000008A200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB64B0300DE87
      3A00F8CEA300FFFAF300FFFFFF00FEF6EE00FCF3EA00FFFFFF00FEF7EE00E6A5
      6900AC43020059211300FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB64B0300DE87
      3A00F8CEA300FFFAF300FFFFFF00FEF6EE00FCF3EA00FFFFFF00FEF7EE00E6A5
      6900AC43020059211300FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00650000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F90000650000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0003
      A0001D31CD005775F600859EFE008BA3FF007894FE005275FC002249F000041D
      C50000039C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF44
      0000C5631700DC883F00E9A76B00EEBB8900EBB58100DC914C00BD580E005C22
      140090330100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF44
      0000C5631700DC883F00E9A76B00EEBB8900EBB58100DC914C00BD580E009033
      01005C221400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0003A0000816B6000F21C3000C1EC2000210B40000049F00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFA3400200A5440600A64507009E3F05008B340400742C0B00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFA3400200A5440600A64507009E3F05008B340400742C0B00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF6C7B94006E7B8800FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07740C0007740C000774
      0C0007740C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF99320000993200009932000099320000993200009932
      00009932000099320000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C7EA9000D80
      AA000C7EA9000D80AA000D80AA000F81AB00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF778295001E89E00058A9DC00FFFFFFFFFFFFFFFF0D80AA000D80
      AA000D80AA000D80AA000D80AA000D80AA00FFFFFFFF07740C0012AA21000FA6
      1C0007740C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D80AA000D80
      AA000D80AA000D80AA0099320000FDFEFE00FDFEFE00FDFEFE008EA4FD00B8C6
      FD00FDFEFE0099320000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C80
      AA000C80AA000C80AA000C80AA000C80AA000C80AA00FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF038CB90047D5EE0021D7
      FC0034D8FD006EE6FF008DE6FA0043BADD000D80AA00FFFFFFFFFFFFFFFFFFFF
      FFFF778295001F87DE004DB7FF0056AEF400FFFFFFFF068DBB0048D5EE0022D7
      FE0035D8FD006EE6FF008DE7FA0043BADD000D80AA0007740C0019B12C0012AA
      210007740C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF068DBB0048D5EE0022D7
      FE0035D9FE006EE6FF0099320000FDFEFE00FDFEFE007D98FC000234FB005879
      FC00FDFEFE0099320000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF068DBB0048D5
      EE0022D6FD0035D9FE006EE6FF008DE7FA0043BADD000C80AA00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF038CB9008CFAFD0057E9FD0021D7
      FC0034D8FD006FE6FF008DE6FA0049BFE0000E9DCE001080A700FFFFFFFF8B86
      97001E7DCE004DB7FF0056AEF400FFFFFFFF068DBB008CFBFE0058EAFE0022D7
      FE0035D8FD006EE6FF0007740C0007740C0007740C0007740C0024BD3D001BB4
      300007740C0007740C0007740C0007740C00068DBB008CFBFE0058EAFE0022D7
      FE0035D9FE006EE6FF0099320000D6DEFE004267FC000234FB004267FC000234
      FB00D9E0FE0099320000FFFFFFFFFFFFFFFFFFFFFFFF068DBB008CFBFE0058EA
      FE0022D6FD0034D3F70000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A00FFFFFFFFFFFFFFFF078EBC008CFAFD0057E9FD0021D7
      FC0034D8FD0074D3E900B1979400C2A69A00C6AEA000AE877B008C6A6B005F92
      BD004DB7FF004DB7FF00FFFFFFFFFFFFFFFF068DBB008CFBFE0058EAFE0022D7
      FE0035D8FD006EE6FF0007740C003BD4610034CE58002FC951002BC3480025BE
      400024BD3D0019B12C0016AF290007740C00068DBB008CFBFE0058EAFE0022D7
      FE0035D9FE006EE6FF00993200005173FC001341FB00BCC9FD00EFF2FE001946
      FB004E71FC0097320300FFFFFFFFFFFFFFFFFFFFFFFF068DBB008CFBFE0058EA
      FE0022D6FD0034D3F70000009A003D6DFF00275AFF001147FF000135FF000028
      F900001CEC0000009A00FFFFFFFFFFFFFFFF078EBC008CFAFD0057E9FD0023D8
      FD0045C6E400AB939500ECDDCC00FEFED600FFFFE400F7F2D900CFB7A100AD85
      80004DB7FF00FFFFFFFFFFFFFFFFFFFFFFFF068DBB008CFBFE0058EAFE0022D7
      FE0035D8FD006EE6FF0007740C0040DA6C0040DA6C0037D15D0034CE58002BC3
      480029C1460024BD3D001FB8350007740C00068DBB008CFBFE0058EAFE0022D7
      FE0035D9FE006EE6FF0099320000E4EAFE00D9E0FE00FDFEFE00FDFEFE0098AC
      FD000234FB0063335800FFFFFFFFFFFFFFFFFFFFFFFF068DBB008CFBFE0058EA
      FE0022D6FD0034D4F80000009A004373FF003163FF001A4FFF00073BFF000028
      F9000021F10000009A00FFFFFFFFFFFFFFFF038CB900B4FFFF00B6F6FF00C6F5
      FF00B5A09F00E8DDD600FFFFF400FEFED600FFFEDD00FEFED600FFF2BA00CAA0
      8C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF068DBB00B3FCFE00B6F6FF00C6F5
      FF00E3FAFF00E9F9FD0007740C0007740C0007740C0007740C003ED867003BD4
      610007740C0007740C0007740C0007740C00068DBB00B3FCFE00B6F6FF00C6F5
      FF00E3FAFF00EBFBFF0099320000FDFEFE00FDFEFE00FDFEFE00FDFEFE00FDFE
      FE005173FC000234FB00FFFFFFFFFFFFFFFFFFFFFFFF068DBB00B3FCFE00B6F6
      FF00C6F5FF00E1F8FD0000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A00FFFFFFFFFFFFFFFF038CB900B8EDF6002FBCDC0010A7
      D1009C919000FFFFE400FFFEDD00FEFED600FFFEDD00FCF5CD00F8D09800ECD1
      AC00AD858000FFFFFFFFFFFFFFFFFFFFFFFF068DBB00BAEEF6002FBCDD0010A7
      D200119FCB001FA1CA0034A7CD002592BF0092CEE40007740C0044DD700040DA
      6C0007740C00FFFFFFFFFFFFFFFFFFFFFFFF068DBB00BAEEF6002FBCDD0010A7
      D200119FCB001FA2CB0099320000993200009932000099320000993200009932
      00008F3210002134C8000234FB00FFFFFFFFFFFFFFFF068DBB00BAEEF6002FBC
      DD0010A7D200119ECA001FA2CB0034A7CD002592BF0092CEE4000C80AA00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF078EBC004AC6DC0057E9FD0021D7
      FC00A49E9900FFFEDD00FFFEDD00FFFEDD00FFFEDD00F6DAAB00F3BE8000F5DE
      B500AD858000FFFFFFFFFFFFFFFFFFFFFFFF068DBB0049C5DD0058EAFE0022D7
      FE0035D8FD006EE6FF008DE7FA0048C1E3000582B60007740C004CE67E004CE6
      7E0007740C00FFFFFFFFFFFFFFFFFFFFFFFF068DBB0049C5DD0058EAFE0022D7
      FE0035D9FE006EE6FF008DE7FA0048C1E3000582B6000D80AA00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF0234FB000234FB00FFFFFFFF068DBB0049C5DD0058EA
      FE0022D6FD0035D9FE006EE6FF008DE7FA0048C1E3000582B6000C80AA00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF038CB9008CFAFD0057E9FD0023D8
      FD0096959400FAF6D600FFFEDD00FAF6D600F9E1B100F5CB9A00FEEAB900E4CC
      A900AD858000FFFFFFFFFFFFFFFFFFFFFFFF068DBB008CFBFE0058EAFE0022D7
      FE0035D8FD006EE6FF008DE7FA0048C1E300079CCE0007740C0007740C000774
      0C0007740C00FFFFFFFFFFFFFFFFFFFFFFFF068DBB008CFBFE0058EAFE0022D7
      FE0035D9FE006EE6FF008DE7FA0048C1E300079DCF000D80AA00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF0234FB00FFFFFFFF068DBB008CFBFE0058EA
      FE0022D6FD0035D9FE006EE6FF008DE7FA0048C1E300079DCF000C80AA00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF038CB9008CFAFD0057E9FD0023D8
      FD005DA8BE00D3BBA200FFF7C600F8D09800F4C88E00FEF7E000F9F6F200AD85
      8000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF068DBB008CFBFE0058EAFE0022D7
      FE0035D8FD006EE6FF008DE7FA0048C1E300079CCE000D7EA900FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF068DBB008CFBFE0058EAFE0022D7
      FE0035D9FE006EE6FF008DE7FA0048C1E300079DCF000D80AA00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF068DBB008CFBFE0058EA
      FE0022D6FD0035D9FE006EE6FF008DE7FA0048C1E300079DCF000C80AA00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF038CB9008CFAFD0057E9FD0023D8
      FD0038D7FB008AA5AD00CDAC9300ECD1AC00F5E1B600DAC5B700AD858000AD85
      8000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF068DBB008CFBFE0058EAFE0022D7
      FE0035D8FD006EE6FF008DE7FA0048C1E300079CCE000D80AA00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF068DBB008CFBFE0058EAFE0022D7
      FE0035D9FE006EE6FF008DE7FA0048C1E300079DCF000D80AA00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF068DBB008CFBFE0058EA
      FE0022D6FD0035D9FE006EE6FF008DE7FA0048C1E300079DCF000C80AA00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF078EBC008CFAFD0081F8FE0070F9
      FE007AFFFF0097FCFD00A1C6C8008F989B0086838800876F6F00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF068DBB0091FCFE0082F8FF006EF8
      FF0079FEFF0091FCFE00A0FCFE0062DAF5000CA2D4000D80AA00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF068DBB0091FCFE0082F8FF006EF8
      FF0079FEFF0091FCFE00A0FCFE0062DAF5000CA2D4000D80AA00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF068DBB0091FCFE0082F8
      FF006EF8FF0079FEFF0091FCFE00A0FCFE0062DAF5000CA2D4000C80AA00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF038CB900FBFFFF00F5FFFE00D2FF
      FF00B4FFFF00ADFFFE00ADFFFE00ADFFFE0070F9FE000D80AA00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF068DBB00FCFFFF00F4FFFF00D3FF
      FF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006EF8FF000D80AA00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF068DBB00FDFEFE00F4FFFF00D3FF
      FF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006EF8FF000D80AA00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF068DBB00FCFFFF00F4FF
      FF00D3FFFF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006EF8FF000C80AA00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0991C100F5FFFE00E3FE
      FF00C6FEFF00ADFFFE00A7FFFF009BFBFD001185B000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0B92C000F4FFFF00E3FA
      FF00C7FFFF00ADFFFF00A0FCFE009BFBFC001285AF00FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0B92C000F4FFFF00E3FA
      FF00C7FFFF00ADFFFF00A0FCFE009BFBFC001285AF00FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0B92C000F4FF
      FF00E1F8FD00C7FFFF00ADFFFF00A0FCFE009BFBFC001285AF00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFF078EBC00078E
      BC00038CB900078EBC00078EBC00078EBC00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF068DBB00068D
      BB00068DBB00068DBB00068DBB00068DBB00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF068DBB00068D
      BB00068DBB00068DBB00068DBB00068DBB00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF068D
      BB00068DBB00068DBB00068DBB00068DBB00068DBB00FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080030000000000000001
      0000000000007FF40000000000007FF00000000000007FF00000000000007FFE
      000000000000700E0000000000007FFE00000000000060060000000000006006
      0000000000007FFE00000000000000000000000000007FFE0000000000007FFE
      0000000000000000000000000000800100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  inherited JvFormStorage: TJvFormStorage
    Options = [fpState, fpSize, fpActiveControl]
    PreventResize = False
    StoredValues = <
      item
      end>
    Left = 840
    Top = 248
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 16
    Top = 574
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    AutoFlush = False
    Left = 800
    Top = 320
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 528
    Top = 136
  end
  inherited QBrowse2: TFDQuery
    Left = 184
    Top = 600
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 64
    Top = 504
  end
  inherited ImageListDos: TImageList
    Left = 312
    Top = 376
    Bitmap = {
      494C01010D001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000769C5EFF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF769C5EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFF769C5EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFF769C5EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFF769C5EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFF769C5EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFF769C5EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFF769C5EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0BAFF769C
      5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C
      5EFFBDE0BAFFBDE0BAFF769C5EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFF769C5EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFF769C5EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFF769C5EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFF769C5EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFF769C5EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFF769C5EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000769C5EFF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF769C5EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000658550DB759A
      5DFD648550DA0000000000000000000000000000000000000000000000009C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D3B09500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000B8805400FFFEFE0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FF9C8B
      78FF9C8B78FF9C8B78FFA59482FFD7CFBDFF8CA874FF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF5D7A49C8000000000000000000000000000000009C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0A78800F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00D29C7200FEFDFD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF769C5EFF769C5EFFA0BB90FF82A5
      6DFF769C5EFF769C5EFF769C5EFF000000000000000000000000000000009C8B
      78FFFFFFFFFF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FFFFFF
      FFFF9C8B78FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C99B7800F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00DAA27700FCFAF8000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF88A973FF769C5EFFA7BF97FFF7FAF6FFE7EE
      E3FF81A46BFF769C5EFF769C5EFF658550DB7C6A59DA8C7767F28C7866F19C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF8C7866F18C7767F27D6A59D90000000000000000000000000000
      0000000000000000000000000000C6947100F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00DDA47700FAF6F30000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF799E62FF769C5EFFBACDAEFF8EAD7AFFBBCE
      AFFFE6EDE1FF80A36AFF769C5EFF72975BF88F7966FFD4C1B0FFD4C1B0FF9C8B
      78FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3
      D6FF9C8B78FFD4C1B0FFD4C1B0FF8F7966FF0000000000000000000000000000
      00000000000000000000C3906800F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00E3AA7F00F6EFEA00000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF88A973FF769C5EFF769C5EFF769C5EFF769C
      5EFFBBCEAFFFE4ECDFFF7EA267FF658550DB8F7966FFD4C1B0FFBBA795FF8F79
      66FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF8F79
      66FF8F7A66FFBBA896FFD4C1B0FF8F7966FF0000000000000000000000000000
      000000000000C28D6500F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00E6AC8000F3E9E0000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF769C5EFF769C5EFF769C5EFF769C
      5EFF769C5EFFA2BB91FF789D60FF000000008F7966FFD4C1B0FFD4C1B0FFD4C1
      B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1
      B0FFD4C1B0FFD4C1B0FFD4C1B0FF8F7966FF0000000000000000000000000000
      0000C28B6400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00EAB08500ECDE
      D2000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBF8FF93B180FF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF5D7A49C8000000008F7966FFD4C1B0FFD4C1B0FFCBAB
      93FFBA8157FFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFBA81
      57FFCBAC94FFD4C1B0FFD4C1B0FF8F7966FF000000000000000000000000E7D1
      C300ECB38700F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C48E
      65000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBF9FFBBCEAFFF89AA75FF7FA3
      69FF8AAA75FFAAB892FF00000000000000008F7966FFD4C1B0FFD4C1B0FFBA81
      57FFE3A97CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFE2A9
      7CFFB98258FFD4C1B0FFD4C1B0FF8F7966FF0000000000000000000000000000
      0000EEDED400E9AF8400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C28C63000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC1B5A3FF00000000000000008F7966FFD4C1B0FFD4C1B0FFB57A
      4EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
      8BFFB57A4EFFB3E0E6FFD4C1B0FF8F7966FF0000000000000000000000000000
      000000000000F1E8DF00E6AE8200F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00C28C6500000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B78FF00000000000000008E7865FED3C0AFFFD4C1B0FFB57A
      4EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
      8BFFB57A4EFFD4C1B0FFD3C0AFFF8E7865FE0000000000000000000000000000
      00000000000000000000F7EFEA00E4AA7D00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00C4906B0000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF00000000000000006C5D4EBE8F7865FE8F7966FFB57A
      4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A
      4EFFB57A4EFF8F7966FF8F7865FE6B5C4EBC0000000000000000000000000000
      0000000000000000000000000000F9F5F100E0A67C00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00C4936E000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFFFFFFFFFF9F8
      F7FFAB9D8DFE7C7162C700000000000000000000000000000000000000009C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCF9F900DAA37900F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00C99B7800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFF9F8F7FFAD9E
      8FFF837668D10000000000000000000000000000000000000000000000009C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC00D7A07500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00CEA3840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFAC9D8EFF7F73
      65C8000000000000000000000000000000000000000000000000000000009C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFEFE00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000D6B69C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF7E7263CA0000
      0000000000000000000000000000000000000000000000000000000000009C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000766A5DC0918171EB000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005D794CC071955CF0769C5EFF71955CF05D794CC0000000000000
      0000000000000000000000000000000000000000000000000000000000009C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF00000000000000000000000000000000A1758BFFA1758BFFA175
      8BFFA1758BFFA1758BFFA1758BFFA1758BFFA1758BFFA1758BFFA1758BFFA175
      8BFFA1758BFFA1758BFFA1758BFF00000000918171EBAD9D8AFD948573EF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006686
      54D77EA26BF3A4C899FFB4D8AEFFBDDFBAFFB4D8AEFFA4C89AFF7DA26AF36585
      52D5000000000000000000000000000000000000000000000000000000009C8B
      78FFFFFFFFFF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FFFFFF
      FFFF9C8B78FF00000000000000000000000000000000A1758BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2D5DCFFF2D5DCFFA1758BFF0000000000000000958573F2A79884FD907F
      6DE7000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000070945CF09EC1
      93FCBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF9EC0
      91FB70945BF00000000000000000000000007C6A59DA8C7767F28C7866F19C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF8C7866F18C7767F27D6A59D900000000A1758BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFFF
      FFFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000958473EFA292
      7FFD8D7D6BE10000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000678955DB9CC190FDBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF99BE8CFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFF9BBF90FC678754D900000000000000008F7966FFD4C1B0FFD4C1B0FF9C8B
      78FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3
      D6FF9C8B78FFD4C1B0FFD4C1B0FF8F7966FF00000000A1758BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000009082
      6FEA9F8F7DFD877768D90000000000000000897A69D89A8977FB9A8977FB887A
      69D700000000000000000000000000000000000000007DA16AF3BDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBCE0B9FF7DA169F300000000000000008F7966FFD4C1B0FFBBA795FF8F79
      66FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF8F79
      66FF8F7A66FFBBA896FFD4C1B0FF8F7966FF00000000A1758BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFFF
      FFFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000000000
      00008C7D6BE19C8B78FF9E8C7AF9B09F8AF3E7D5BCFFFCEACEFFFCEACEFFE7D5
      BBFFAD9D89F2897B6AD900000000000000005C794AC1A5C99BFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFA4C89AFF5A774BBE000000008F7966FFD4C1B0FFD4C1B0FFD4C1
      B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1
      B0FFD4C1B0FFD4C1B0FFD4C1B0FF8F7966FF00000000A1758BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000000000
      0000000000009E8D7AFBCDBAA4FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFC9B7A2FC897B6ADA0000000072955BF1B6D9B1FFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFB5D9B0FF72955AEF000000008F7966FFD4C1B0FFD4C1B0FFCBAB
      93FFBA8157FFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFBA81
      57FFCBAC94FFD4C1B0FFD4C1B0FF8F7966FF00000000A1758BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000000000
      000000000000AF9F89F6FFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFAE9D88F400000000749B5DFCBCDFB8FFBDE0BAFF99BE
      8CFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF99BE
      8CFFBDE0BAFFBBDEB8FF759A5CFB000000008F7966FFD4C1B0FFD4C1B0FFBA81
      57FFE3A97CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFE2A9
      7CFFB98258FFD4C1B0FFD4C1B0FF8F7966FF00000000A1758BFFF2D5DCFFF2D5
      DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5
      DCFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000000000
      00008A7C6BD9E7D5BBFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFE6D5BBFF887969D672955BF1B6D9B1FFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFB5D9B0FF72955AEF000000008F7966FFD4C1B0FFD4C1B0FFB57A
      4EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
      8BFFB57A4EFFB3E0E6FFD4C1B0FF8F7966FF00000000A1758BFFF2D5DCFFF2D5
      DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5
      DCFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000000000
      00009A8977F9FBE9CDFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFFAE8CCFF998976F85E794CC2A5C99BFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFA4C89AFF5B794CC0000000008E7865FED3C0AFFFD4C1B0FFB57A
      4EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
      8BFFB57A4EFFD4C1B0FFD3C0AFFF8E7865FE00000000A1758BFFF2D5DCFFF2D5
      DCFFE9C0CBFFA48B7EFF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FFA791
      83FFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000000000
      00009A8977F9FBE9CDFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFFAE8CCFF998976F8000000007EA16BF3BDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF7CA16AF300000000000000006C5D4EBE8F7865FE8F7966FFB57A
      4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A
      4EFFB57A4EFF8F7966FF8F7865FE6B5C4EBC00000000A1758BFFF2D5DCFFF2D5
      DCFFE6BAC6FF8F7966FFF2EBE1FFF2EBE1FFF2EBE1FF9C8B78FFF2EBE1FF8F79
      66FFF2D5DCFFEACCD4FFA1758BFF000000000000000000000000000000000000
      0000897C6CD9E7D5BBFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFE6D5BBFF877969D600000000678955DB9EC393FDBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF99BE8CFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFF9EC192FC678754D900000000000000000000000000000000000000009C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF00000000000000000000000000000000A1758BFFF2D5DCFFF2D5
      DCFFE6BAC6FF8F7966FFF2EBE1FFF2EBE1FFF2EBE1FF9C8B78FFF2EBE1FF8F79
      66FFEBCDD5FFA57E8FF457404B86000000000000000000000000000000000000
      000000000000AF9E8AF5FFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFAE9D88F400000000000000000000000070945CF09EC1
      93FCBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF9EC0
      91FB70945BF00000000000000000000000000000000000000000000000009C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF00000000000000000000000000000000A1758BFFF2D5DCFFF2D5
      DCFFE6BAC6FF8F7966FFF2EBE1FFF2EBE1FFF2EBE1FFF2EBE1FFF2EBE1FF8F79
      66FFA47C8FF60000000000000000000000000000000000000000000000000000
      0000000000008C7C6ADDCEBCA6FCFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFCDBBA6FC897B6ADA000000000000000000000000000000006686
      54D77EA26BF3A5CA9CFFB7DAB2FFB8DBB4FFB7DAB2FFA6C99CFF7DA26AF36585
      52D5000000000000000000000000000000000000000000000000000000009C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF00000000000000000000000000000000A1758BFFA1758BFFA175
      8BFFA1758BFF977E73FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF987D
      74FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000897B6ADAB1A08BF4E7D5BCFFF8E6CBFFF8E6CBFFE7D5
      BBFFB19F8AF4897B6AD900000000000000000000000000000000000000000000
      0000000000005D794CC071945CED73995DF671945CED5D794CC0000000000000
      0000000000000000000000000000000000000000000000000000000000009C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000897C6BD9988976F5988976F58A7A
      69D8000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFC496
      74FFC49674FFC49674FFC49674FFC49674FFC49674FFC49674FFC49674FFC496
      74FFC49674FFC49674FF00000000000000000000000000000000000000000000
      000000000000363698C04141BDF04343C7FF4141BDF0363698C0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000464B4BED414D4FD40000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFC49674FF00000000000000000000000000000000000000003B3B
      AAD74F4FC7F37575E6FF8686F1FF8F8FF7FF8686F1FF7474E6FF4F4FC7F33C3C
      A8D5000000000000000000000000000000000000000000000000000000002A2A
      6F89333382A10000000000000000000000000000000000000000000000003232
      84A22A2A6F8900000000000000000000000000000000414A4ED2555553FF66A0
      BDF74B8AA6E60000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFE3C29DFF000000000000000000000000000000004141BDF06E6E
      E1FC8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF6E6E
      E0FB4141BCF00000000000000000000000000000000000000000292967806C6C
      D5ED7575DEF12E2E7895000000000000000000000000000000002E2E78957474
      DFF26D6DD5EC292967800000000000000000000000000000000068A2C3F46EBC
      DFFF7CCAE2FF63AFC8FA00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFFFE8C2FF0000000000000000000000003C3CACDB6D6DE0FD8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF6B6BE0FC3C3CABD90000000000000000000000000000000030307E9A7979
      E1F58F8FF7FF7A7AE2F532327F9C00000000000000003333809D7A7AE2F58F8F
      F7FF7676E0F430307B98000000000000000000000000000000004E8BA7E580CD
      E5FFA3EEFFFFA1ECFEFF569BB1D9000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFDAB188FFFFE8C2FF0000000000000000000000004E4EC7F38F8FF7FF8F8F
      F7FFA8A8F9FFACACF9FF8F8FF7FF8F8FF7FF8F8FF7FFACACF9FFA8A8F9FF8F8F
      F7FF8E8EF7FF4D4DC7F300000000000000000000000000000000000000003232
      7F9C7979E3F78F8FF7FF7676DFF22E2E78952E2E78957676DFF28F8FF7FF7979
      E3F732327F9C00000000000000000000000000000000000000000000000066B1
      CCF9A2EEFFFFA3EEFFFFA1EBFDFF5598AFD70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFB57A4EFFDAB188FF0000000000000000353598C17676E7FF8F8FF7FF8F8F
      F7FFACACF9FFF6F6FEFFACACF9FF8F8FF7FFACACF9FFF6F6FEFFACACF9FF8F8F
      F7FF8F8FF7FF7474E6FF353597BE000000000000000000000000000000000000
      000031317B977777E1F48F8FF7FF7878E2F67B7BE3F68F8FF7FF7777E0F43030
      7A96000000000000000000000000000000000000000000000000000000000000
      00005CA2B7DBA2EEFFFFA3EEFFFFA1EBFDFF5598AFD700000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFB57A4EFFB57A4EFF61412A88000000004242BDF18888F3FF8F8FF7FF8F8F
      F7FF8F8FF7FFB1B1F9FFF6F6FEFFBCBCFAFFF7F7FEFFB1B1F9FF8F8FF7FF8F8F
      F7FF8F8FF7FF8787F2FF4141BDEF000000000000000000000000000000000000
      00000000000031317B977777E0F48F8FF7FF8F8FF7FF7777E0F430307A960000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005EA3B8DCA2EEFFFFA3EEFFFFA1EBFDFF5598AFD7000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A
      4EFFB57A4EFFB57A4EFFB57A4EFF61412A884343C4FC8E8EF6FF8F8FF7FF8F8F
      F7FF8F8FF7FF8F8FF7FFC3C3FAFFFEFEFFFFC2C2FBFF8F8FF7FF8F8FF7FF8F8F
      F7FF8F8FF7FF8D8DF5FF4242C4FB000000000000000000000000000000000000
      000000000000323284A27979E1F58F8FF7FF8F8FF7FF7979E1F5333382A10000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005EA3B8DCA2EEFFFFA3EEFFFFA1EBFDFF5598AFD70000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A
      4EFFB57A4EFFB57A4EFFB57A4EFF000000004242BDF18888F3FF8F8FF7FF8F8F
      F7FF8F8FF7FFA8A8F9FFF6F6FEFFC9C9FBFFF6F6FEFFA8A8F9FF8F8FF7FF8F8F
      F7FF8F8FF7FF8787F2FF4141BDEF000000000000000000000000000000000000
      0000333384A37A7AE4F78F8FF7FF7878E2F67B7BE3F68F8FF7FF7979E3F73333
      82A1000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005EA3B8DCA2EEFFFFA3EEFFFFA1EBFDFF839A
      9AED000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFB57A4EFFB57A4EFF5A3D278000000000363699C27676E7FF8F8FF7FF8F8F
      F7FFACACF9FFF6F6FEFFACACF9FF8F8FF7FFACACF9FFF6F6FEFFACACF9FF8F8F
      F7FF8F8FF7FF7474E6FF363698C0000000000000000000000000000000003030
      7F9C7777E0F48F8FF7FF7A7AE5F83434819C353583A07C7CE7F98F8FF7FF7777
      E0F431317D9B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005DA3BADDA2EEFFFFA9C2C1FFD2C8
      BAFFA9A69BF90000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFB57A4EFFDAB188FF0000000000000000000000004E4EC7F38F8FF7FF8F8F
      F7FFA8A8F9FFACACF9FF8F8FF7FF8F8FF7FF8F8FF7FFACACF9FFA8A8F9FF8F8F
      F7FF8F8FF7FF4E4EC6F30000000000000000000000000000000032327F9C7878
      E1F68F8FF7FF7A7AE2F530307B98000000000000000033337E997A7AE2F58F8F
      F7FF7777E2F632327E9A00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000869B9EEFDACEC1FFF5E7
      D9FFF4E6D7FFA69D97FD00000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFDCB58BFFFFE8C2FF0000000000000000000000003C3CACDB7070E2FD8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF6D6DE0FC3C3CABD9000000000000000000000000000000002F2F76917676
      DFF37D7DE7F83434829E000000000000000000000000000000003535829F7D7D
      E7F87676DFF32F2F769100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B3AFA4FBF5E7
      D8FFDACEC2FFA097BAFF4545A7CA000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFFFE8C2FF000000000000000000000000000000004141BDF06E6E
      E1FC8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF6E6E
      E0FB4141BCF00000000000000000000000000000000000000000000000000000
      000030307A960000000000000000000000000000000000000000000000003030
      7A96000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A69F
      9AFC9F96BFFF8F8FF7FF4F4FB6D6000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFE2BF9BFF00000000000000000000000000000000000000003B3B
      AAD74F4FC7F37676E8FF8989F4FF8989F4FF8989F4FF7676E8FF4F4FC7F33C3C
      A8D5000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004646AACB5252B7D600000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFC49674FF00000000000000000000000000000000000000000000
      000000000000363698C04141BBED4242C1F64141BBED363698C0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFC496
      74FFC49674FFC49674FFC49674FFC49674FFC49674FFC49674FFC49674FFC496
      74FFC49674FFC49674FF0000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFF0000000000000001000000000000
      0001000000000000000100000000000000010000000000000001000000000000
      0001000000000000000100000000000000010000000000000001000000000000
      0001000000000000000100000000000000010000000000000001000000000000
      00010000000000000001000000000000FFEFFFFFFFC7E007FFCFF3FFC001E007
      FF8FF1FFC001E007FF0FF0FFC0000000FE0FF07FC0000000FC0FF03FC0000000
      F80FF01FC0010000F00FF00FC0010000E00FF00FC0030000F00FF01FC0030000
      F80FF03FC0030000FC0FF07FC0030000FE0FF0FFC003E007FF0FF1FFC007E007
      FF8FF3FFC00FE007FFCFF7FFC01FE007FFFFE007FFFF3FFFF83FE00780011FFF
      E00FE00780018FFFC00700008001C7FF800300008001E30F800300008001F003
      000100008001F801000100008001F801000100008001F000000100008001F000
      000100008001F000800300008001F0008003E0078001F801C007E0078007F801
      E00FE007800FFC03F83FE007FFFFFF0FFFFFFFFFFFFFC003F83FFFFF9FFFC003
      E00FE7E787FFC003C007C3C3C3FFC0038003C183C1FFC0038003E007E0FFC003
      0001F00FF07FC0010001F81FF83FC0000001F81FFC1FC0010001F00FFE0FC001
      0001E007FF07C0038003C183FF83C0038003C3C3FFC1C003C007F7EFFFE1C003
      E00FFFFFFFF3C003F83FFFFFFFFFC00300000000000000000000000000000000
      000000000000}
  end
  object frOrdenTrabajo: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44454.481636261600000000
    ReportOptions.LastChange = 44454.553631330990000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  CodigoOT: string;'
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CodigoOT  :=  '#39'OT'#39' + IntToStr( <frDSCabecera."ID_OT">);'
      'end;'
      ''
      'procedure ReportTitle1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if (<frDSCabecera."ID_OT"> is Null) or (<frDSCabecera."ID_OT">' +
        '=0) then'
      '    begin'
      '      MNroOrden.Visible :=  False;'
      
        '      BarCode1.Visible  :=  False;                              ' +
        '                                  '
      '    end'
      '  else'
      '    begin                         '
      '      MNroOrden.Visible :=  True;'
      '      BarCode1.Visible  :=  True;              '
      '    end;              '
      'end;'
      ''
      'begin'
      ''
      ''
      'end.')
    Left = 732
    Top = 504
    Datasets = <
      item
        DataSet = frDBConsumibles
        DataSetName = 'frDBConsumibles'
      end
      item
        DataSet = frDBDetalle
        DataSetName = 'frDBDetalle'
      end
      item
        DataSet = frDBProducto
        DataSetName = 'frDBProducto'
      end
      item
        DataSet = frDBSeries
        DataSetName = 'frDBSeries'
      end
      item
        DataSet = frDSCabecera
        DataSetName = 'frDSCabecera'
      end
      item
        DataSet = frDSMovimientos
        DataSetName = 'frDSMovimientos'
      end
      item
        DataSet = frEmpresa
        DataSetName = 'frEmpresa'
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
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 668.976810000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        object frEmpresaNOMBRE: TfrxMemoView
          IndexTag = 1
          Align = baCenter
          AllowVectorExport = True
          Left = 275.716713500000000000
          Top = 18.897650000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'NOMBRE'
          DataSet = frEmpresa
          DataSetName = 'frEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frEmpresa."NOMBRE"]')
          ParentFont = False
        end
        object frEmpresaDIRECCION: TfrxMemoView
          IndexTag = 1
          Align = baCenter
          AllowVectorExport = True
          Left = 268.157653500000000000
          Top = 75.590600000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'CORREO'
          DataSet = frEmpresa
          DataSetName = 'frEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frEmpresa."CORREO"]')
          ParentFont = False
        end
        object frEmpresaDIRECCION1: TfrxMemoView
          IndexTag = 1
          Align = baCenter
          AllowVectorExport = True
          Left = 251.149768500000000000
          Top = 37.795300000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'DIRECCION'
          DataSet = frEmpresa
          DataSetName = 'frEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frEmpresa."DIRECCION"]')
          ParentFont = False
        end
        object frEmpresaTELEFONO1: TfrxMemoView
          IndexTag = 1
          Align = baCenter
          AllowVectorExport = True
          Left = 285.165538500000000000
          Top = 56.692950000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO1'
          DataSet = frEmpresa
          DataSetName = 'frEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frEmpresa."TELEFONO1"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Align = baLeft
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 264.567100000000000000
          Height = 64.252010000000000000
          Frame.Typ = []
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D49484452000001FF00
            00006608020000004A8D0FD6000000017352474200AECE1CE90000000467414D
            410000B18F0BFC6105000000097048597300000EC300000EC301C76FA8640000
            0A0F4944415478DAED9D6B92DB380C063939C1EEFDEFB8BB278877AA263571FC
            9048E003088ADD3F933100D2568B96F9F8B8DD6E0D147C7CFCDBF367B7DBDFB3
            2B0500681FD85F05F6078085C0FE32B03F002C04F69781FD016021B0BF0CEC0F
            000B81FD65607F005808EC6FE74BF7DF361FB5FFF7DF733F00807C3E5AFBC719
            4225AF4E7B26543254AADFFEF2FA0D3D99D375A3853D573514A1B351113101EA
            83FDBD150AED2F6C85DFB3722425617F001555ECEF57BFAA92D1F2E4F697B4A5
            E0F01FFB03944260FFA6B824CADAFFB4B020FBFB9B536DF88FFD014A81FDBD55
            C5D9DFD9A852F6571583FD0154607F6F3DD1F637B7ABD4C31FEC0F500D8DFD9B
            EFAA90A8DF5983B99E04FB9B9B5667F88FFD01AA81FDBDC5E4D8DFD6BA22F617
            9681FD0154607F6F2569F63734B0C8C31FEC0F5010ECEF2DC3F32B6EC11B00F6
            97C404A88FCCFE2DF1C7496D019E320C2A7F2832FA0630DDFEDA02B03F800AEC
            6FACC1BC09817F1AFB504BA73FFCC1FE0035C1FED9D351921F6B081B6803FB03
            D464B2FD85EACF29C0EFEEE276EB0F3B25F5F4FEC1FE701994F66F29935284D9
            870A50894928B820FBF74796A7C6FE00696C6D7FAD67853B374CBF01CC5D3797
            19302826407DB0BF2CAC7CDF9E29B793D1229393627F001533EDAF557F50F629
            B21E8A5976F88FFD012A23B67F0B9E8C989C7AEEED441BB3B8FD279A1AFBC39E
            607F41B4A1E644842D68FFA074D81F40C58EF69FA86943D8CEC8D56E00D81FA0
            38D3EC2F57BF3675DCE4D1A025694BDB3F68C480FD010E18B0FFE7E73EFF3174
            7FD2CEBC3DA943D70CC705D74E9637971A9A08FB03A8D8CEFE4103FFA1161982
            F7C4AF33FCC7FE00F5C1FE9620CE16D9E29FA658D4FE71B384B13FC00121F66F
            BADD6CB0BFB6F8D50F14C3FE5A42DB9E7045808731FBB7DCBDCC86329E26ED0C
            756DFBF7D7692E18FB17C73FE162EEE43A5081FDC722A81A15946539FB5708BE
            8FFD337753974FD60039D87F2C82AA514159A6DB7FC55BCB0EF6CF9F60CDC0BF
            3E51F66FEFDFD7B8D3CFB17F67FCB5E6E444C7BFB6FD23BCFF8DF31A6F0BF6E7
            9518B67F736B0EFB9B53F424C2FEA3F12F6CFF50F5B7C873EE20818DEC1FFA93
            AFBF5B5489266EF9596D42D1E6F68F56FF17E603AEDB529D7949B07FEFCB4FC1
            FE091AC5FE9DE4A8BF39ECBF4A4F5E9840FB37D12703FB0F25C2FEA15DB184B3
            D2D4DF9E3A8481FF4258ECDF1CA6C3FE45ECDF5F7067E47557115FCCFECEE638
            DFC7FA037FD5E5A3AD614A8760FFDE979F82FD55A192B35CC9FE928BC5DC2135
            07FEB66F42AAFE11E695936A7FDB8703FB0F25C2FEA35936B4BF70231679F6FC
            DE182A75D66FE911C4DADFF6AAA02789D8DF5CF369F09A7B47EF66FF29DB7049
            B2BF7B6DF4E7E4E7CFBF7EFCF86FA85AADFD0F0A48F8A419EDDFDF0BD85F9BE5
            34517DFB573B34E61AF617B6226D6C977914F6A7673B23BCD4F1F39C97CE800F
            D18E5FF5F0C7D11F36ECDFFBF253B0BF3388BC60EC6F6BCB43A8883DDDD2A69C
            F54BFF819722BE4FD113F93B88F9DE13FA79CBB37FF4C3C4A618D1ECB3DA6BB4
            EC83F8AB1F18B9ADFD858D9AB5A8F8A000B3F7EFB977F1FD6EF34303FFD14A1E
            92FA5BF18E70FBB7C1BB7DE8D2C10BECF4206F42B2FD73BE600DE5C2FEFE0626
            FC16DAFFBD53E2FD6F5E3E08D2A638485AD4FE2DE6BB1EF6CF6F42E60C71EC1F
            815CBEA1CF0F85253DA40E92F2D0B37B79C6B88F1CF61F8BE009EE4F11D404CF
            F03F599DD8DFDF842122F677525592A3FE36C3FE2D65F89F61FF21D6B57F0241
            F563FFCC260431EB06306B43A134F5B73FED9FA3FEB6A1FD7BBEDC8DBE7C285A
            D96BBBB32BF2E7D163FF22CC5A803A65E09FA9FE2F0CB37754198BDABFA9DFFB
            E9F6EF0C328B22F66F834FF39CB599EBC4FE42122EFFCEECF9EA6FD6D93BFE8C
            0DFB7B5E3E1A6DE9CB1BFB1B325EC3FEA30D31306BDB83FBD44EF59B87F0D8FF
            0AF6EF0958F30A2FB25AED3E17F6AF46E6F39F9CDD40DBFB81BF73F9EE90CAFD
            33F76D19DB26F6F7AF23BDB0FDA397AA75A630A3EA52EC2F6F91B9EDCE0BD3F0
            72A1FA0D416CEE36A77B6EBE1CAFFD5BFC32937CFBF7874A23E18E85FD331B12
            4DF47C3C7FA779968B4AD43F1AC79F14FB07C6D76E6E5CE73A4FAB76EEB47179
            853BDBDFD6BAFEB6FBAF4AF35631CE3D730C77118FFA0DFB43B425D6FAFE0A81
            FD23C9DC333DE789415A85D8DFDCCCE3B6A7A9BFE906FECEBB886D47CF7BF5F7
            675C609F9FDF2114CA904C28962F4F9F7EA9271F9781FD33DB320BF3BB9C6FFF
            38F50F85EAE739A9F32B4B75FB37E9B0C2133C627392B9577B7E9139EBB773CA
            DBD6FE9F2DF2AF7B3F68BBF3639930F07F27D0D0C73E07EAEF4FD7B21EFBB49D
            EDDF1F79D6053FA5BCB9FB8569CBBB9EFD93D7BEBC0CB8DC13FF0A03FFFE8C69
            03FF86FD8322FB9978674A58C39153DBC5EC2FAF33D4FE9507FED14FFC9718F8
            B722F68F3867AEB7FDF56E00D36594B08623A736ECAF0A5861E0DF7CF64F1EF8
            07FD56F1FCBF1E34F66F3E654CB47F42FCA062E2EAC1FE15883E476189817FF3
            3DF6F12F13B325356F47715CF9BB2E3283FD878B0F5C7C51A38CD14A328BC4FE
            AAB6571EF8379DFDCD277F4916F7DACA6EAF9E1D1DF7920DEC6F297EAED4220A
            70D6935624F6F7B73D7A376F7FEAE95B3B1876F5916FEDF0DDF6E34F82EB40AA
            E9F68F18A4583AC23101CEC3ACBCF2AA72EADCD6FEB62285FBB2CD1DF8B7F43D
            DD3237746B873F1B3C7F8379FE83A15CDFC8ECDF441F504FD859DB9CE59CA825
            6963426F84968AFD8B17201CF8379DFD13B6F3F470FCCC07FB6B429D7747E4E4
            A584F8426A96BAADFDF3EB9C3EF06F56FB7BA8A0FE86FD0D612BEF75E32779AE
            21F69FCB5CFB5718F8B774FB4F3CBEF1A1F907727FEEC955ED1F342BD949411D
            4C99661EF74B7E4E49D83F396FC4468D86393F36F28F6E7FA7FEF67EECFF7216
            5309FB37DFCF4AFE98C5B7BB31537CAB89CC82B17F72D2FEBCF281FFF36B83A4
            ECFCC15692F46080DFF323B0AD06ECAF6C4E04AB6C2C9353F3CEF68F2E557206
            8B3C42E61ADDB82CC7494FE7743E3F082AF7DCBF5DCEFEB646A9A8B09D24F69F
            45F4711AA78986D2050DFC9F2308D5EC9F182AC97BFA46BF1BEC7FFD6389F9FE
            0F15AB020EC52C221D3F15BC6F6E789D45C897B4BFB060E1151D34F07F194422
            68E7D25CC3828097499DB7DE2A6B7DFB2B9E1ED0CCAC07AF7329B50E19FBFBCB
            EE7F83F2F774EBACC47C03101EF36BF8FBD156B7C30E144C70BFDD6ECE10BB51
            FCFC13D890E3CFE4353E5DE61D7BDA99F447030ECD0E327BFFB8ED9AD9EDD8DF
            43CD49F10097E4F472FB7271A7EB25272F1AB2D7B9EAB1BF8CE22785015C83A0
            E3E96DE7B6DBF21601FB03C07A48E6230807FEA3A92B80FD016061CCBF79449C
            1AD699BA08D81F0076447558FCBA607F00D88EFA47AE677402F60780DD60E0DF
            B03F00EC0603FF5FFD80FD01602B18F8FFEA07EC0F00FBC0C0FF7757607F00D8
            07D544CF0B80FD01601718F8FFD11BD81F0036818DB9EEC1FE00B005A8FF01EC
            0F005B80FD1FC0FE00003B82FD01007604FB0300EC08F60700D811EC0F00B023
            D81F006047B03F00C08E607F00801DF91F5FE06BE9F575EB810000000049454E
            44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 1.700788500000000000
          Top = 105.826840000000000000
          Width = 737.008350000000000000
          Height = 3.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object frDSCabeceraRAZONSOCIAL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 154.960730000000000000
          Width = 196.535560000000000000
          Height = 18.897637800000000000
          DataField = 'RAZONSOCIAL'
          DataSet = frDSCabecera
          DataSetName = 'frDSCabecera'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frDSCabecera."RAZONSOCIAL"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 120.944960000000000000
          Width = 151.181200000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha Recepci'#243'n:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 151.181200000000000000
          Width = 151.181200000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 181.417440000000000000
          Width = 151.181200000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tel'#233'fono de contacto:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 181.417440000000000000
          Width = 75.590600000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Email:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 147.401670000000000000
          Width = 75.590600000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DNI / CUIT:')
          ParentFont = False
        end
        object frDSCabeceraCUIT: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 151.181200000000000000
          Width = 196.535560000000000000
          Height = 18.897637800000000000
          DataField = 'CUIT'
          DataSet = frDSCabecera
          DataSetName = 'frDSCabecera'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frDSCabecera."CUIT"]')
          ParentFont = False
        end
        object frDSCabeceraTELEFONO1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 185.196970000000000000
          Width = 196.535560000000000000
          Height = 18.897637800000000000
          DataSet = frDSCabecera
          DataSetName = 'frDSCabecera'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frDSCabecera."TELEFONO1"] ')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 185.196970000000000000
          Width = 196.535560000000000000
          Height = 18.897637800000000000
          DataField = 'CORREOELECTRONICO'
          DataSet = frDSCabecera
          DataSetName = 'frDSCabecera'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frDSCabecera."CORREOELECTRONICO"]')
          ParentFont = False
        end
        object frDSCabeceraFECHAINICIO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 124.724490000000000000
          Width = 196.535560000000000000
          Height = 18.897637800000000000
          DataField = 'FECHAINICIO'
          DataSet = frDSCabecera
          DataSetName = 'frDSCabecera'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frDSCabecera."FECHAINICIO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 234.330860000000000000
          Width = 714.331170000000000000
          Height = 3.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 249.448980000000000000
          Width = 109.606370000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Marca:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 275.905690000000000000
          Width = 109.606370000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Modelo:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 328.819110000000000000
          Width = 109.606370000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Problema:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 366.614410000000000000
          Width = 109.606370000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Nota Cliente:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 302.362400000000000000
          Width = 109.606370000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'IMEI:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 279.685220000000000000
          Width = 234.330860000000000000
          Height = 18.897637800000000000
          DataField = 'MODELO'
          DataSet = frDBProducto
          DataSetName = 'frDBProducto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frDBProducto."MODELO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 306.141930000000000000
          Width = 234.330860000000000000
          Height = 18.897637800000000000
          DataField = 'IDENTIFICADOR'
          DataSet = frDBProducto
          DataSetName = 'frDBProducto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frDBProducto."IDENTIFICADOR"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 332.598640000000000000
          Width = 234.330860000000000000
          Height = 18.897637800000000000
          DataField = 'PROBLEMA'
          DataSet = frDSCabecera
          DataSetName = 'frDSCabecera'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frDSCabecera."PROBLEMA"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 355.275820000000000000
          Width = 234.330860000000000000
          Height = 18.897637800000000000
          DataField = 'OBS'
          DataSet = frDBProducto
          DataSetName = 'frDBProducto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frDBProducto."OBS"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 253.228510000000000000
          Width = 234.330860000000000000
          Height = 18.897637800000000000
          DataField = 'MUESTRAMARCA'
          DataSet = frDBProducto
          DataSetName = 'frDBProducto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frDBProducto."MUESTRAMARCA"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 294.803340000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Contrase'#241'a / PIN')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 317.480520000000000000
          Width = 120.944960000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Top = 253.228510000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Patr'#243'n')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 430.866420000000000000
          Width = 721.890230000000000000
          Height = 241.889920000000000000
          Frame.Typ = []
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67323035387B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574302041646F626550695374643B7D7B5C66
            315C6673776973735C66636861727365743020417269616C3B7D7B5C66325C66
            6E696C5C666368617273657430205461686F6D613B7D7B5C66335C666E696C5C
            6663686172736574322053796D626F6C3B7D7D0D0A7B5C2A5C67656E65726174
            6F722052696368656432302031302E302E31393034317D5C766965776B696E64
            345C756331200D0A5C706172647B5C706E746578745C66335C2742375C746162
            7D7B5C2A5C706E5C706E6C766C626C745C706E66335C706E696E64656E74307B
            5C706E747874625C2742377D7D5C66692D3230305C6C693230305C66305C6673
            313420205C663120526563657063695C2766336E3A204C6F7320646973706F73
            697469766F732071756520696E67726573616E206170616761646F732F73696E
            20696D6167656E2C206E6F20696E696369616E206F206E6F2073652070756564
            616E206576616C75617220656E20737520746F74616C69646164206C61732066
            756E63696F6E657320625C2765317369636173206465206C6F73206D69736D6F
            732E204E6F2074656E64725C2765316E20676172616E745C27656461206E6920
            6465726563686F2061207265636C616D6F2C20736F6272652070617274657320
            717565206E6F207075646965726F6E2073657220707565737461732061207072
            756562612E2050617261206C6C65766172206164656C616E7465206469636861
            73206576616C756163696F6E657320745C276539636E696361732C2073652073
            6F6C696369746120656C20635C2766336469676F2F706174725C2766336E2064
            652061636365736F2073696E20657863657063696F6E65732E5C7061720D0A7B
            5C706E746578745C66335C2742375C7461627D5C663020205C663120456C2063
            6C69656E7465206465626520646172206C6120636C6176652064652061636365
            736F20616C2065717569706F20706172612070726F626172207375732066756E
            63696F6E65732C2073696E6F2073652070756564656E2070726F62617220736F
            6C6F207365206461725C27653120676172616E745C27656461206465206C6120
            66616C6C612072657061726164612079206E6F20706F7220656C20726573746F
            206465206C61732066756E63696F6E65732E5C7061720D0A7B5C706E74657874
            5C66335C2742375C7461627D546F646F20646973706F73697469766F2C204E4F
            206465626520636F6E74656E6572207461726A6574612073696D2F7461726A65
            74612053442C2066756E64612E204465206C6F20636F6E74726172696F206E6F
            207365207265636F6E6F6365725C27653120656C206578747261765C2765646F
            206465206C6173206D69736D61732E5C7061720D0A7B5C706E746578745C6633
            5C2742375C7461627D476172616E745C27656461207C203A204C61206D69736D
            612074656E64725C27653120756E61206475726163695C2766336E2064652033
            3020645C27656461732C20696E696369616E646F20656E206C61206665636861
            20646520656E747265676120646520646963686F20646973706F73697469766F
            2E20506172612076616C6964617220657374612C206C6F732072657075657374
            6F7320696E7374616C61646F732064656265725C2765316E20656E636F6E7472
            6172736520656E205C2766337074696D6F2065737461646F2E5C7061720D0A7B
            5C706E746578745C66335C2742375C7461627D5C663020205C66312047617261
            6E745C27656461207C7C203A204C61206D69736D61206E6F2074656E64725C27
            65312076616C6964657A2C20656E206361736F2064652064615C2766316F7320
            6163636964656E74616C657320792F6F206D616E6970756C6163695C2766336E
            2064656C20646973706F73697469766F20706F72206375616C71756965722070
            6572736F6E6120616A656E612061206C6120656D7072657361204D6F76696C53
            686F702E5C7061720D0A7B5C706E746578745C66335C2742375C7461627D5C66
            3020205C663120446973706F73697469766F73206D6F6A61646F73203A204E6F
            2074656E64725C2765316E20676172616E745C2765646120616C67756E612073
            6F627265206E696E675C2766616E207469706F2064652072657061726163695C
            2766336E2E2044656269646F2061207175652C206C6120636F72726F73695C27
            66336E207375656C652067656E657261722065666563746F7320616476657273
            6F732E204E6F20736F6C6F206120636F72746F20706C617A6F2C2073696E6F20
            74616D62695C2765396E20612066757475726F2E205075656465207175652065
            6C20646973706F73697469766F2C206E6F20656E6369656E6461206E75657661
            6D656E74652E5C7061720D0A7B5C706E746578745C66335C2742375C7461627D
            4461746F732064656C207573756172696F203A204D6F76696C53686F702C206E
            6F20736520726573706F6E736162696C697A61726120706F72206C6120706572
            6469646120646520696E666F726D6163695C2766336E2064656C20636C69656E
            74652E20436F6E746163746F732C20666F746F73206F206375656E7461732E20
            5265637565726465207369656D707265207265616C697A617220756E20726573
            70616C646F20646520737520696E666F726D6163695C2766336E20766974616C
            2E5C7061720D0A7B5C706E746578745C66335C2742375C7461627D5265706172
            6163696F6E657320646520706C616361203A20456E20746F6461207265706172
            6163695C2766336E2064652065737465205C2765646E646F6C652C20656C2064
            6973706F73697469766F2070756564652073756672697220656C207269657367
            6F206465206E6F20656E63656E646572206E756576616D656E74652E20457374
            6F2C2064656269646F2061206375657374696F6E65732063697263756E737461
            6E6369616C6573207920646520636F6E746578746F20745C276539636E69636F
            2E5C7061720D0A7B5C706E746578745C66335C2742375C7461627D5C66302020
            5C663120506C617A6F2064652072657469726F203A20546F646F20646973706F
            73697469766F20717565206E6F2073656120726574697261646F20706F722073
            752070726F706965746172696F2C20656E20756E20706C617A6F206D5C276531
            78696D6F20646520393020645C27656461732E205365726120636F6E73696465
            7261646F206162616E646F6E6F2C2062616A6F20656C207465726D696E6F2032
            3532352F323532362064656C20435C2766336469676F20436976696C2C207175
            6564616E646F20666163756C7461646F20656C2064657374696E6F2071756520
            736520636F6E7369646572652070657274696E656E74652E5C7061720D0A7B5C
            706E746578745C66335C2742375C7461627D5C663020205C6631204D6F76696C
            53686F702C206E6F20736520726573706F6E736162696C697A61726120616E74
            6520756E6120696E746572707265746163695C2766336E206572725C2766336E
            656120706F722070617274652064656C20636C69656E74652E20456E20637561
            6C7175696572206574617061206465206C617320616E746572696F726D656E74
            65206D656E63696F6E616461732E5C7061720D0A7B5C706E746578745C66335C
            2742375C7461627D5C663020205C663120456C20636C69656E74652C20616C20
            656E74726567617220737520646973706F73697469766F2079206669726D6172
            206573746520646F63756D656E746F2E20416365707461206C617320636F6E64
            6963696F6E657320616E746572696F726D656E7465206D656E63696F6E616461
            732E5C66325C7061720D0A7D0D0A00}
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 377.953000000000000000
          Width = 234.330860000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          AllowVectorExport = True
          Left = 612.283860000000000000
          Top = 52.913420000000000000
          Width = 106.456710000000000000
          Height = 41.574830000000000000
          AutoSize = False
          BarType = bcCode128B
          Expression = '<CodigoOT>'
          Frame.Typ = []
          Rotation = 0
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 0.858521854838709700
          ColorBar = clBlack
          BarcodeText.TextSettings.BarTextPos = btpBottom
          BarcodeText.SupSettings.BarTextPos = btpTop
        end
        object MNroOrden: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 612.283860000000000000
          Top = 18.897650000000000000
          Width = 105.826840000000000000
          Height = 34.015770000000000000
          DataSet = frDSCabecera
          DataSetName = 'frDSCabecera'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Orden N'#186': '
            '[frDSCabecera."NROCPBTE"]')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 687.874484410000000000
          Top = 287.244280000000000000
          Width = 11.338590000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
          Shape = skEllipse
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 650.079208820000000000
          Top = 287.244280000000000000
          Width = 11.338590000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
          Shape = skEllipse
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 608.504403230000000000
          Top = 287.244280000000000000
          Width = 11.338590000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
          Shape = skEllipse
        end
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = 687.874484410000000000
          Top = 321.260050000000000000
          Width = 11.338590000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
          Shape = skEllipse
        end
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Left = 650.079208820000000000
          Top = 321.260050000000000000
          Width = 11.338590000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
          Shape = skEllipse
        end
        object Shape6: TfrxShapeView
          AllowVectorExport = True
          Left = 608.504403230000000000
          Top = 321.260050000000000000
          Width = 11.338590000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
          Shape = skEllipse
        end
        object Shape9: TfrxShapeView
          AllowVectorExport = True
          Left = 687.874484410000000000
          Top = 359.055350000000000000
          Width = 11.338590000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
          Shape = skEllipse
        end
        object Shape8: TfrxShapeView
          AllowVectorExport = True
          Left = 650.079208820000000000
          Top = 359.055350000000000000
          Width = 11.338590000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
          Shape = skEllipse
        end
        object Shape7: TfrxShapeView
          AllowVectorExport = True
          Left = 608.504403230000000000
          Top = 359.055350000000000000
          Width = 11.338590000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
          Shape = skEllipse
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 234.330860000000000000
        Top = 748.346940000000000000
        Width = 740.409927000000000000
        object Memo31: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = -17.196861500000000000
          Top = 64.252010000000000000
          Width = 774.803650000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 192.756030000000000000
          Width = 215.433210000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 219.212740000000000000
          Width = 215.433210000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Firma')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 219.212740000000000000
          Width = 253.228510000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Aclaraci'#243'n')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Top = 219.212740000000000000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DNI')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 132.283550000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          Memo.UTF8W = (
            
              '*Recib'#237' conforme el equipo y con sus correspondientes fallas rep' +
              'aradas')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 98.267780000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = []
          Memo.UTF8W = (
            'Reparaci'#243'n:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 98.267780000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Top = 98.267780000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fecha de Entrega:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 98.267780000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '    /     / ')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Top = 132.283550000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Monto:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 132.283550000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '$')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 192.756030000000000000
          Width = 253.228510000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Top = 192.756030000000000000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 215.433210000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 26.456710000000000000
          Width = 215.433210000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Firma')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 26.456710000000000000
          Width = 253.228510000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Aclaraci'#243'n')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Top = 26.456710000000000000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DNI')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Width = 253.228510000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Width = 200.315090000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
        end
      end
    end
  end
  object frDSMovimientos: TfrxDBDataset
    UserName = 'frDSMovimientos'
    CloseDataSource = False
    DataSet = DatosOrdenDeTrabajo.CDSOTrabajoMov
    BCDToCurrency = False
    DataSetOptions = []
    Left = 384
    Top = 520
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_OTCAB'
        FieldAlias = 'ID_OTCAB'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'HORAINICIO'
        FieldAlias = 'HORAINICIO'
      end
      item
        FieldName = 'HORAFINAL'
        FieldAlias = 'HORAFINAL'
      end
      item
        FieldName = 'PRUDUCTO'
        FieldAlias = 'PRUDUCTO'
      end
      item
        FieldName = 'TOTALTIEMPO'
        FieldAlias = 'TOTALTIEMPO'
      end
      item
        FieldName = 'CLIENTE'
        FieldAlias = 'CLIENTE'
      end
      item
        FieldName = 'OPERARIO'
        FieldAlias = 'OPERARIO'
      end
      item
        FieldName = 'MAILENVIADO'
        FieldAlias = 'MAILENVIADO'
      end
      item
        FieldName = 'NewReg'
        FieldAlias = 'NewReg'
      end
      item
        FieldName = 'NomOperario'
        FieldAlias = 'NomOperario'
      end>
  end
  object frDSCabecera: TfrxDBDataset
    UserName = 'frDSCabecera'
    CloseDataSource = False
    DataSet = DatosOrdenDeTrabajo.CDSOTrabajoCab
    BCDToCurrency = False
    DataSetOptions = []
    Left = 328
    Top = 516
    FieldDefs = <
      item
        FieldName = 'ID_OT'
        FieldAlias = 'ID_OT'
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
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'DESCRIPCION'
        FieldAlias = 'DESCRIPCION'
      end
      item
        FieldName = 'PRODUCTO'
        FieldAlias = 'PRODUCTO'
      end
      item
        FieldName = 'LETRAOT'
        FieldAlias = 'LETRAOT'
      end
      item
        FieldName = 'SUCOT'
        FieldAlias = 'SUCOT'
      end
      item
        FieldName = 'NUMEROOT'
        FieldAlias = 'NUMEROOT'
      end
      item
        FieldName = 'FECHAINICIO'
        FieldAlias = 'FECHAINICIO'
      end
      item
        FieldName = 'FECHAESTIMADA'
        FieldAlias = 'FECHAESTIMADA'
      end
      item
        FieldName = 'FECHAFINAL'
        FieldAlias = 'FECHAFINAL'
      end
      item
        FieldName = 'CONDICIONVTA'
        FieldAlias = 'CONDICIONVTA'
      end
      item
        FieldName = 'ANULADO'
        FieldAlias = 'ANULADO'
      end
      item
        FieldName = 'NRORTO'
        FieldAlias = 'NRORTO'
      end
      item
        FieldName = 'IMPRESO'
        FieldAlias = 'IMPRESO'
      end
      item
        FieldName = 'SUCURSAL'
        FieldAlias = 'SUCURSAL'
      end
      item
        FieldName = 'DEPOSITO'
        FieldAlias = 'DEPOSITO'
      end
      item
        FieldName = 'CALCULA_SOBRETASA'
        FieldAlias = 'CALCULA_SOBRETASA'
      end
      item
        FieldName = 'DESGLOZAIVA'
        FieldAlias = 'DESGLOZAIVA'
      end
      item
        FieldName = 'RESPONSABLE_OT'
        FieldAlias = 'RESPONSABLE_OT'
      end
      item
        FieldName = 'USUARIO'
        FieldAlias = 'USUARIO'
      end
      item
        FieldName = 'ESTADO'
        FieldAlias = 'ESTADO'
      end
      item
        FieldName = 'PRIORIDAD_INICIAL'
        FieldAlias = 'PRIORIDAD_INICIAL'
      end
      item
        FieldName = 'DELTA_PRIORIDAD'
        FieldAlias = 'DELTA_PRIORIDAD'
      end
      item
        FieldName = 'PRIORIDAD'
        FieldAlias = 'PRIORIDAD'
      end
      item
        FieldName = 'ENTREGADO'
        FieldAlias = 'ENTREGADO'
      end
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'LDR'
        FieldAlias = 'LDR'
      end
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'RAZONSOCIAL'
        FieldAlias = 'RAZONSOCIAL'
      end
      item
        FieldName = 'DIRECCION'
        FieldAlias = 'DIRECCION'
      end
      item
        FieldName = 'TIPOIVA'
        FieldAlias = 'TIPOIVA'
      end
      item
        FieldName = 'CUIT'
        FieldAlias = 'CUIT'
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
        FieldName = 'ZONA'
        FieldAlias = 'ZONA'
      end
      item
        FieldName = 'FACTURA_ID_COMPROBANTE'
        FieldAlias = 'FACTURA_ID_COMPROBANTE'
      end
      item
        FieldName = 'FACTURANRO'
        FieldAlias = 'FACTURANRO'
      end
      item
        FieldName = 'FACTURA_ID'
        FieldAlias = 'FACTURA_ID'
      end
      item
        FieldName = 'FACTURA_TIPO'
        FieldAlias = 'FACTURA_TIPO'
      end
      item
        FieldName = 'FACTURA_CLASE'
        FieldAlias = 'FACTURA_CLASE'
      end
      item
        FieldName = 'FECHAFACTURA'
        FieldAlias = 'FECHAFACTURA'
      end
      item
        FieldName = 'RESPONSABLE_TURNO'
        FieldAlias = 'RESPONSABLE_TURNO'
      end
      item
        FieldName = 'ARCHIVADA'
        FieldAlias = 'ARCHIVADA'
      end
      item
        FieldName = 'RECLAMADA'
        FieldAlias = 'RECLAMADA'
      end
      item
        FieldName = 'TOTALHORAS'
        FieldAlias = 'TOTALHORAS'
      end
      item
        FieldName = 'OBSERVACION1'
        FieldAlias = 'OBSERVACION1'
      end
      item
        FieldName = 'LISTAPRECIO'
        FieldAlias = 'LISTAPRECIO'
      end
      item
        FieldName = 'MAILENVIADO'
        FieldAlias = 'MAILENVIADO'
      end
      item
        FieldName = 'MUESTRACONDVENTA'
        FieldAlias = 'MUESTRACONDVENTA'
      end
      item
        FieldName = 'MUESTRADEPOSITO'
        FieldAlias = 'MUESTRADEPOSITO'
      end
      item
        FieldName = 'MUESTRASUCURSAL'
        FieldAlias = 'MUESTRASUCURSAL'
      end
      item
        FieldName = 'MUESTRALDR'
        FieldAlias = 'MUESTRALDR'
      end
      item
        FieldName = 'MUESTRAIVA'
        FieldAlias = 'MUESTRAIVA'
      end
      item
        FieldName = 'MUESTRACOMPROBANTE'
        FieldAlias = 'MUESTRACOMPROBANTE'
      end
      item
        FieldName = 'ID_TIPOCOMPROBANTE'
        FieldAlias = 'ID_TIPOCOMPROBANTE'
      end
      item
        FieldName = 'MUESTRARESPONSABLEOT'
        FieldAlias = 'MUESTRARESPONSABLEOT'
      end
      item
        FieldName = 'MUESTRARESPONSABLETURNO'
        FieldAlias = 'MUESTRARESPONSABLETURNO'
      end
      item
        FieldName = 'MUESTRATIPOFACTURA'
        FieldAlias = 'MUESTRATIPOFACTURA'
      end
      item
        FieldName = 'MUESTRATELEFONO1'
        FieldAlias = 'MUESTRATELEFONO1'
      end
      item
        FieldName = 'MUESTRATELEFONO2'
        FieldAlias = 'MUESTRATELEFONO2'
      end
      item
        FieldName = 'OT_ANTERIOR_ID'
        FieldAlias = 'OT_ANTERIOR_ID'
      end
      item
        FieldName = 'OT_ANTERIOR_NROCPBTE'
        FieldAlias = 'OT_ANTERIOR_NROCPBTE'
      end
      item
        FieldName = 'TELEFONO1'
        FieldAlias = 'TELEFONO1'
      end
      item
        FieldName = 'TELEFONO2'
        FieldAlias = 'TELEFONO2'
      end
      item
        FieldName = 'CORREOELECTRONICO'
        FieldAlias = 'CORREOELECTRONICO'
      end
      item
        FieldName = 'MUESTRACELULAR'
        FieldAlias = 'MUESTRACELULAR'
      end
      item
        FieldName = 'MUESTRANRODOC'
        FieldAlias = 'MUESTRANRODOC'
      end
      item
        FieldName = 'DESCRIPCIONPRODUCTO'
        FieldAlias = 'DESCRIPCIONPRODUCTO'
      end
      item
        FieldName = 'IDENTIFICADORPRODUCTO'
        FieldAlias = 'IDENTIFICADORPRODUCTO'
      end
      item
        FieldName = 'MOTIVO_OTRABAJO'
        FieldAlias = 'MOTIVO_OTRABAJO'
      end
      item
        FieldName = 'FECHA_HORA'
        FieldAlias = 'FECHA_HORA'
      end
      item
        FieldName = 'FECHAESTIMADAFIN'
        FieldAlias = 'FECHAESTIMADAFIN'
      end
      item
        FieldName = 'TELEFONO_CELULAR'
        FieldAlias = 'TELEFONO_CELULAR'
      end
      item
        FieldName = 'ID_AJUSTE_STOCK'
        FieldAlias = 'ID_AJUSTE_STOCK'
      end
      item
        FieldName = 'MUESTRANROAJUSTE'
        FieldAlias = 'MUESTRANROAJUSTE'
      end
      item
        FieldName = 'OBSERVACION2'
        FieldAlias = 'OBSERVACION2'
      end
      item
        FieldName = 'NETOGRAV1'
        FieldAlias = 'NETOGRAV1'
      end
      item
        FieldName = 'NETOGRAV2'
        FieldAlias = 'NETOGRAV2'
      end
      item
        FieldName = 'DSTO'
        FieldAlias = 'DSTO'
      end
      item
        FieldName = 'DSTOIMPORTE'
        FieldAlias = 'DSTOIMPORTE'
      end
      item
        FieldName = 'NETOEXEN1'
        FieldAlias = 'NETOEXEN1'
      end
      item
        FieldName = 'NETOEXEN2'
        FieldAlias = 'NETOEXEN2'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'DEBE'
        FieldAlias = 'DEBE'
      end
      item
        FieldName = 'PUNTOS'
        FieldAlias = 'PUNTOS'
      end
      item
        FieldName = 'SENIA'
        FieldAlias = 'SENIA'
      end
      item
        FieldName = 'PROBLEMA'
        FieldAlias = 'PROBLEMA'
      end
      item
        FieldName = 'PASSWORD'
        FieldAlias = 'PASSWORD'
      end
      item
        FieldName = 'PATRON'
        FieldAlias = 'PATRON'
      end>
  end
  object frEmpresa: TfrxDBDataset
    UserName = 'frEmpresa'
    CloseDataSource = False
    DataSet = DatosOrdenDeTrabajo.CDSEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 432
    Top = 520
    FieldDefs = <
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'ACTIVIDAD'
        FieldAlias = 'ACTIVIDAD'
      end
      item
        FieldName = 'DIRECCION'
        FieldAlias = 'DIRECCION'
      end
      item
        FieldName = 'LOCALIDAD'
        FieldAlias = 'LOCALIDAD'
      end
      item
        FieldName = 'CORREO'
        FieldAlias = 'CORREO'
      end
      item
        FieldName = 'TELEFONO1'
        FieldAlias = 'TELEFONO1'
      end
      item
        FieldName = 'TELEFONO2'
        FieldAlias = 'TELEFONO2'
      end
      item
        FieldName = 'CUIT'
        FieldAlias = 'CUIT'
      end
      item
        FieldName = 'CONDICIONIVA'
        FieldAlias = 'CONDICIONIVA'
      end
      item
        FieldName = 'NRO_AGTE_RET_INGBRUTOS'
        FieldAlias = 'NRO_AGTE_RET_INGBRUTOS'
      end
      item
        FieldName = 'LOGO'
        FieldAlias = 'LOGO'
      end
      item
        FieldName = 'CPOSTAL'
        FieldAlias = 'CPOSTAL'
      end
      item
        FieldName = 'NRO_AGTE_RET_GANANCIA'
        FieldAlias = 'NRO_AGTE_RET_GANANCIA'
      end
      item
        FieldName = 'AG_RET_GANANCIA'
        FieldAlias = 'AG_RET_GANANCIA'
      end
      item
        FieldName = 'AG_RET_ING_BRUTOS'
        FieldAlias = 'AG_RET_ING_BRUTOS'
      end
      item
        FieldName = 'AG_PERCEPCION_ING_BRUTOS'
        FieldAlias = 'AG_PERCEPCION_ING_BRUTOS'
      end
      item
        FieldName = 'TASA_PERCEPCION_IB'
        FieldAlias = 'TASA_PERCEPCION_IB'
      end
      item
        FieldName = 'MINO_IMP_PERCEP_IB'
        FieldAlias = 'MINO_IMP_PERCEP_IB'
      end
      item
        FieldName = 'PROVINCIA'
        FieldAlias = 'PROVINCIA'
      end
      item
        FieldName = 'TASA_RET_IIBB'
        FieldAlias = 'TASA_RET_IIBB'
      end
      item
        FieldName = 'MINIMO_IMP_RET_IIBB'
        FieldAlias = 'MINIMO_IMP_RET_IIBB'
      end
      item
        FieldName = 'PUNITORIOS'
        FieldAlias = 'PUNITORIOS'
      end
      item
        FieldName = 'FECHA_INICIO_ACTI'
        FieldAlias = 'FECHA_INICIO_ACTI'
      end
      item
        FieldName = 'NRO_RENSPA'
        FieldAlias = 'NRO_RENSPA'
      end
      item
        FieldName = 'NRO_RUCA'
        FieldAlias = 'NRO_RUCA'
      end
      item
        FieldName = 'CUIT_AUTORIZADO'
        FieldAlias = 'CUIT_AUTORIZADO'
      end
      item
        FieldName = 'NOMBRE_AUTORIZADO'
        FieldAlias = 'NOMBRE_AUTORIZADO'
      end
      item
        FieldName = 'CBU'
        FieldAlias = 'CBU'
      end>
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 536
    Top = 520
  end
  object frDBDetalle: TfrxDBDataset
    UserName = 'frDBDetalle'
    CloseDataSource = False
    DataSet = DatosOrdenDeTrabajo.CDSOTrabajoDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 272
    Top = 512
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_CABOT'
        FieldAlias = 'ID_CABOT'
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
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'RENGLON'
        FieldAlias = 'RENGLON'
      end
      item
        FieldName = 'FECHAVTA'
        FieldAlias = 'FECHAVTA'
      end
      item
        FieldName = 'CODIGOARTICULO'
        FieldAlias = 'CODIGOARTICULO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'UNIDAD'
        FieldAlias = 'UNIDAD'
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end
      item
        FieldName = 'DESGLOZAIVA'
        FieldAlias = 'DESGLOZAIVA'
      end
      item
        FieldName = 'MODO_GRAVAMEN'
        FieldAlias = 'MODO_GRAVAMEN'
      end
      item
        FieldName = 'IVA_TASA'
        FieldAlias = 'IVA_TASA'
      end
      item
        FieldName = 'TIPOIVA_TASA'
        FieldAlias = 'TIPOIVA_TASA'
      end
      item
        FieldName = 'IVA_SOBRETASA'
        FieldAlias = 'IVA_SOBRETASA'
      end
      item
        FieldName = 'TIPOIVA_SOBRETASA'
        FieldAlias = 'TIPOIVA_SOBRETASA'
      end
      item
        FieldName = 'DESCUENTO'
        FieldAlias = 'DESCUENTO'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'DEPOSITO'
        FieldAlias = 'DEPOSITO'
      end
      item
        FieldName = 'MARGEN'
        FieldAlias = 'MARGEN'
      end
      item
        FieldName = 'AFECTA_STOCK'
        FieldAlias = 'AFECTA_STOCK'
      end
      item
        FieldName = 'CALCULA_SOBRETASA'
        FieldAlias = 'CALCULA_SOBRETASA'
      end
      item
        FieldName = 'GRAVADO_IB'
        FieldAlias = 'GRAVADO_IB'
      end
      item
        FieldName = 'NEWREG'
        FieldAlias = 'NEWREG'
      end
      item
        FieldName = 'UNITARIO_TOTAL'
        FieldAlias = 'UNITARIO_TOTAL'
      end
      item
        FieldName = 'UNITARIO_GRAVADO'
        FieldAlias = 'UNITARIO_GRAVADO'
      end
      item
        FieldName = 'UNITARIO_EXENTO'
        FieldAlias = 'UNITARIO_EXENTO'
      end
      item
        FieldName = 'COSTO_GRAVADO'
        FieldAlias = 'COSTO_GRAVADO'
      end
      item
        FieldName = 'COSTO_EXENTO'
        FieldAlias = 'COSTO_EXENTO'
      end
      item
        FieldName = 'COSTO_TOTAL'
        FieldAlias = 'COSTO_TOTAL'
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 780
    Top = 258
    object ImprimirContrato1: TMenuItem
      Action = ImprimirContrato
      Caption = 'Imprimir Contrato'
    end
    object ImprimirAnexo1: TMenuItem
      Caption = 'Imprimir Anexo'
    end
    object ImprimirEtiqueta1: TMenuItem
      Action = ImprimirEtiqueta
      Caption = 'Imprimir Etiqueta'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object BuscarPorObs1: TMenuItem
      Action = BuscarPorObs
    end
  end
  object ComBuscadorProductos: TComBuscador
    Data = DatosOrdenDeTrabajo.CDSBuscadorProductos
    Campo = 'ID'
    Titulo = 'Productos'
    rOk = False
    Left = 112
    Top = 168
  end
  object ComBuscadorSucursal: TComBuscador
    Data = DatosOrdenDeTrabajo.CDSBuscaSucursal
    Campo = 'CODIGO'
    Titulo = 'Sucursales'
    rOk = False
    Left = 216
    Top = 104
  end
  object ComBuscadorVendedor: TComBuscador
    Data = DatosOrdenDeTrabajo.CDSBuscaVendedor
    Campo = 'CODIGO'
    Titulo = 'Vendedor'
    rOk = False
    Left = 488
    Top = 64
  end
  object ComBuscadorLdr: TComBuscador
    Data = DatosOrdenDeTrabajo.CDSBuscaLdr
    Campo = 'codigo_ldr'
    Titulo = 'LDR'
    rOk = False
    Left = 368
    Top = 136
  end
  object frxRichObject1: TfrxRichObject
    Left = 684
    Top = 506
  end
  object PopupMenu2: TPopupMenu
    Left = 828
    Top = 436
    object RtfToTexto1: TMenuItem
      Action = RtfToTexto
    end
  end
  object ComBuscadorDepositos: TComBuscador
    Data = DatosOrdenDeTrabajo.CDSBuscadorDeposito
    Campo = 'id'
    Titulo = 'Depositos'
    rOk = False
    Left = 512
    Top = 5
  end
  object ComBuscadorSeries: TComBuscador
    Data = DatosVentas.CDSBuscaNroSerie
    Campo = 'codigoserie'
    Titulo = 'Nros de Serie'
    rOk = False
    Left = 436
    Top = 121
  end
  object frDBSeries: TfrxDBDataset
    UserName = 'frDBSeries'
    CloseDataSource = False
    DataSource = DatosOrdenDeTrabajo.DSOTrabajosSubDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 240
    Top = 512
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_DETOT'
        FieldAlias = 'ID_DETOT'
      end
      item
        FieldName = 'ID_CABOT'
        FieldAlias = 'ID_CABOT'
      end
      item
        FieldName = 'CODIGOARTICULO'
        FieldAlias = 'CODIGOARTICULO'
      end
      item
        FieldName = 'SERIE'
        FieldAlias = 'SERIE'
      end
      item
        FieldName = 'DEPOSITO'
        FieldAlias = 'DEPOSITO'
      end
      item
        FieldName = 'TIPO'
        FieldAlias = 'TIPO'
      end>
  end
  object frDBConsumibles: TfrxDBDataset
    UserName = 'frDBConsumibles'
    CloseDataSource = False
    DataSet = DatosOrdenDeTrabajo.CDSOTrabajoConsumible
    BCDToCurrency = False
    DataSetOptions = []
    Left = 576
    Top = 520
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_CABOT'
        FieldAlias = 'ID_CABOT'
      end
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'MUESTRASTOCK'
        FieldAlias = 'MUESTRASTOCK'
      end
      item
        FieldName = 'CANT_ESTIMADA'
        FieldAlias = 'CANT_ESTIMADA'
      end
      item
        FieldName = 'CANT_CONSUMIDA'
        FieldAlias = 'CANT_CONSUMIDA'
      end
      item
        FieldName = 'PRECIO_UNITARIO'
        FieldAlias = 'PRECIO_UNITARIO'
      end
      item
        FieldName = 'AFECTA_STOCK'
        FieldAlias = 'AFECTA_STOCK'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end>
  end
  object DSBuscadorProductos: TDataSource
    DataSet = DatosOrdenDeTrabajo.CDSBuscadorProductos
    OnStateChange = DSBuscadorProductosStateChange
    Left = 704
    Top = 360
  end
  object DSMarcas: TDataSource
    Left = 864
    Top = 344
  end
  object DSModelos: TDataSource
    DataSet = DatosOrdenDeTrabajo.CDSModelos
    Left = 792
    Top = 376
  end
  object DSCategorias: TDataSource
    Left = 784
    Top = 448
  end
  object DSProducto: TDataSource
    DataSet = DatosOrdenDeTrabajo.CDSProducto
    OnStateChange = DSProductoStateChange
    Left = 624
    Top = 224
  end
  object frDBProducto: TfrxDBDataset
    UserName = 'frDBProducto'
    CloseDataSource = False
    DataSet = DatosOrdenDeTrabajo.CDSProducto
    BCDToCurrency = False
    DataSetOptions = []
    Left = 480
    Top = 520
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_CATEGORIA'
        FieldAlias = 'ID_CATEGORIA'
      end
      item
        FieldName = 'IDENTIFICADOR'
        FieldAlias = 'IDENTIFICADOR'
      end
      item
        FieldName = 'DESCRIPCION'
        FieldAlias = 'DESCRIPCION'
      end
      item
        FieldName = 'PROPIETARIO'
        FieldAlias = 'PROPIETARIO'
      end
      item
        FieldName = 'OBS'
        FieldAlias = 'OBS'
      end
      item
        FieldName = 'MARCA'
        FieldAlias = 'MARCA'
      end
      item
        FieldName = 'MODELO'
        FieldAlias = 'MODELO'
      end
      item
        FieldName = 'MUESTRACATEGORIA'
        FieldAlias = 'MUESTRACATEGORIA'
      end
      item
        FieldName = 'MUESTRAPROPIETARIO'
        FieldAlias = 'MUESTRAPROPIETARIO'
      end
      item
        FieldName = 'MUESTRAMARCA'
        FieldAlias = 'MUESTRAMARCA'
      end>
  end
  object frContrato: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'ZDesigner GC420t (EPL)'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43356.648975173590000000
    ReportOptions.LastChange = 44456.702909895820000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  CodigoOT: string;                                           '
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  CodigoOT  :=  '#39'OT'#39' +  IntToStr(<frDSCabecera."ID_OT">);       ' +
        '                                                   '
      'end;'
      ''
      'begin'
      '  '
      ''
      'end.')
    Left = 197
    Top = 499
    Datasets = <
      item
        DataSet = frDSCabecera
        DataSetName = 'frDSCabecera'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 40.000000000000000000
      PaperHeight = 30.000000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object BarCode1: TfrxBarCodeView
        AllowVectorExport = True
        Left = 26.456710000000000000
        Top = 49.133890000000000000
        Width = 106.456710000000000000
        Height = 41.574830000000000000
        AutoSize = False
        BarType = bcCode128B
        Expression = '<CodigoOT>'
        Frame.Typ = []
        Rotation = 0
        TestLine = False
        Text = '12345678'
        WideBarRatio = 2.000000000000000000
        Zoom = 0.858521854838710000
        ColorBar = clBlack
        BarcodeText.TextSettings.BarTextPos = btpBottom
        BarcodeText.SupSettings.BarTextPos = btpTop
      end
      object MNroOrden: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 18.897650000000000000
        Top = 7.559060000000000000
        Width = 117.165430000000000000
        Height = 34.015770000000000000
        DataSet = frDSCabecera
        DataSetName = 'frDSCabecera'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Style = fsDot
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Orden N'#186': '
          '[frDSCabecera."NROCPBTE"]')
        ParentFont = False
      end
    end
  end
  object BalloonHint1: TBalloonHint
    Images = ImageList1
    HideAfter = 10000
    Left = 896
    Top = 463
  end
  object frEtiqueta: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'ZDesigner GC420t (EPL)'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43356.648975173590000000
    ReportOptions.LastChange = 44456.702909895790000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  CodigoOT: string;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  CodigoOT  :=  '#39'OT'#39' +  IntToStr(<frDSCabecera."ID_OT">);'
      'end;'
      ''
      'begin'
      ''
      ''
      'end.')
    Left = 144
    Top = 496
    Datasets = <
      item
        DataSet = frDSCabecera
        DataSetName = 'frDSCabecera'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 40.000000000000000000
      PaperHeight = 30.000000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object BarCode1: TfrxBarCodeView
        AllowVectorExport = True
        Left = 26.456710000000000000
        Top = 49.133890000000000000
        Width = 106.456710000000000000
        Height = 41.574830000000000000
        AutoSize = False
        BarType = bcCode128B
        Expression = '<CodigoOT>'
        Frame.Typ = []
        Rotation = 0
        TestLine = False
        Text = '12345678'
        WideBarRatio = 2.000000000000000000
        Zoom = 0.858521854838709700
        ColorBar = clBlack
        BarcodeText.TextSettings.BarTextPos = btpBottom
        BarcodeText.SupSettings.BarTextPos = btpTop
      end
      object MNroOrden: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 18.897650000000000000
        Top = 7.559060000000000000
        Width = 117.165430000000000000
        Height = 34.015770000000000000
        DataSet = frDSCabecera
        DataSetName = 'frDSCabecera'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Style = fsDot
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Orden N'#186': '
          '[frDSCabecera."NROCPBTE"]')
        ParentFont = False
      end
    end
  end
  object MainMenu1: TMainMenu
    AutoMerge = True
    Left = 371
    Top = 193
    object Opciones1: TMenuItem
      Caption = 'Opciones'
      object ModoStandard: TMenuItem
        Caption = 'Modo Standard'
        Checked = True
        OnClick = ModoStandardClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object ModoDatosAmpliados: TMenuItem
        Caption = 'Modo Datos Ampliados'
        OnClick = ModoDatosAmpliadosClick
      end
      object ModoMatafuegos: TMenuItem
        Caption = 'Modo Taller Matafuego'
        OnClick = ModoMatafuegosClick
      end
    end
  end
  object ComBuscadorMatafuego: TComBuscador
    Data = DatosOrdenDeTrabajo.QBuscaMatafuego
    Campo = 'ID'
    Titulo = 'Matafuegos'
    rOk = False
    Left = 715
    Top = 217
  end
end
