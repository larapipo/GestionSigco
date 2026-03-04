object FormPedidos: TFormPedidos
  Left = 0
  Top = 0
  Caption = 'Pedidos'
  ClientHeight = 742
  ClientWidth = 1085
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object pcGeneral: TPageControl
    Left = 0
    Top = 0
    Width = 1085
    Height = 742
    ActivePage = tsPedido
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = pcGeneralChange
    object tsPedido: TTabSheet
      Caption = 'Pedidos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      object pnPie: TPanel
        Left = 0
        Top = 572
        Width = 1077
        Height = 142
        Align = alBottom
        BevelOuter = bvNone
        Color = clMenuHighlight
        ParentBackground = False
        TabOrder = 0
        OnDblClick = pnPieDblClick
        object DBText1: TDBText
          Left = 808
          Top = 102
          Width = 85
          Height = 17
          Cursor = crHandPoint
          Alignment = taRightJustify
          DataField = 'ID_FACTURA'
          DataSource = DSPedidoCab
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          OnClick = DBText1Click
        end
        object DBText2: TDBText
          Left = 779
          Top = 88
          Width = 26
          Height = 17
          Hint = 'Tipo Comprobante'
          DataField = 'TIPO_FACTURA'
          DataSource = DSPedidoCab
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          OnClick = DBText1Click
        end
        object DBText3: TDBText
          Left = 824
          Top = 125
          Width = 85
          Height = 17
          Alignment = taRightJustify
          DataField = 'TOTALPEDIDO'
          DataSource = DSPedidoDet
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = DBText1Click
        end
        object spHacerCopia: TSpeedButton
          Left = 889
          Top = 50
          Width = 32
          Height = 30
          Hint = 'Hacer Copia de Pendientes'
          Action = HacerCopia
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000030000
            000C000000120000001400000014000000140000001400000014000000150000
            0015000000140000000D000000030000000000000000000000000000000B7A5B
            50C3AB7F6FFFAA7E6FFFAB7D6FFFAA7D6EFFAA7D6EFFA97C6DFFA97C6DFFAA7C
            6DFFA87B6CFF79584DC50000000D00000000000000000000000000000010AD82
            72FFFBF7F4FFFAF6F4FFFBF6F4FFFBF6F3FFFBF5F3FFFAF5F2FFFAF5F2FFFAF4
            F1FFFAF4F1FFAA7C6EFF0000001300000000000000000000000000000011AF84
            75FFFCF8F7FFF6EEE8FFF7EDE8FFF6EDE8FFF6EDE7FFF6EDE7FFF6ECE7FFF6EC
            E7FFFBF5F3FFAB7E6FFF0000001300000000000000000000000000000010B187
            78FFFDFAF8FFF8EFEAFFC39C8CFFC29B8AFFC29B89FFC29A89FFC19989FFC199
            88FFECE2DEFFDDD3D0FF000000260000000E00000003000000000000000FB389
            7BFFFDFBFAFFF8F1EDFFF8F0EDFFF8F0ECFFF7F0ECFFF7F0ECFFF7EFEBFFF7EF
            EBFFF2F1F1FF528771FF267255FF1A503BC50000000D000000000000000EB68D
            7EFFFEFCFCFFF9F2EFFFC6A191FFC5A090FFC5A090FFC59F8FFFEEE5E0FFE7DE
            D9FFD6CDC9FF2A7C5EFF27D596FF287758FF0000001F0000000C0000000DB890
            81FFFEFDFDFFFAF5F2FFF9F4F1FFF9F4F1FFF9F3F1FFF9F3F0FFF5F4F3FF60A0
            89FF2E8767FF2D8364FF33DBA0FF2B7D5FFF297B5DFF1D5641C20000000DBA93
            85FFFEFEFEFFFAF6F4FF00A361FF00A060FF009C5BFF009758FFB8DBCCFF3291
            70FF98F1D6FF41E2ADFF40E3AAFF3DE1AAFF3CE0A9FF2B7F61FF0000000CBC97
            88FFFFFEFEFFFBF8F6FFFBF7F6FFFAF7F6FFFBF7F5FFFAF7F4FFF9F8F7FF64AD
            94FF349674FF329372FF4AE8B6FF308D6CFF2F8A6AFF22634CC40000000BC099
            8BFFFFFFFFFFFCF8F8FFCDAD9DFFCCAC9DFFCCAB9CFFCBAB9BFFF1E9E5FFEEE5
            E1FFE9E0DCFF369A78FFB9F8E7FF339473FF0000000D000000050000000AC19D
            8EFFFFFFFFFFFCFAF9FFFCFAF9FFFCFAF8FFFCF9F8FFFBFAF8FFFCF9F8FFFBF9
            F8FFFCFCFCFF65B095FF379E7CFF28735AC0000000040000000000000009C4A0
            91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFEEE4E1FF0000000D000000020000000100000000000000069379
            6EC3C5A294FFC5A294FFC4A193FFC4A092FFC3A092FFC39F91FFC29F90FFC29E
            90FFC29D8FFF8F7469C400000007000000000000000000000000000000010000
            00050000000800000009000000090000000900000009000000090000000A0000
            000A000000090000000700000002000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
        end
        object DBText7: TDBText
          Left = 808
          Top = 88
          Width = 85
          Height = 17
          Cursor = crHandPoint
          Hint = 'Nro Comprobante'
          Alignment = taRightJustify
          DataField = 'MUESTRANROCPBTE'
          DataSource = DSPedidoCab
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          OnClick = DBText1Click
        end
        object abFacturar: TJvArrowButton
          Left = 504
          Top = 51
          Width = 85
          Height = 27
          DropDown = popMenuFactura
          Caption = 'Facturar'
          FillFont.Charset = DEFAULT_CHARSET
          FillFont.Color = clWindowText
          FillFont.Height = -11
          FillFont.Name = 'Tahoma'
          FillFont.Style = []
          OnClick = abFacturarClick
        end
        object btNuevo: TBitBtn
          Left = 2
          Top = 50
          Width = 83
          Height = 30
          Caption = 'Nuevo'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
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
          ModalResult = 6
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 0
          OnClick = btNuevoClick
        end
        object btBorrar: TBitBtn
          Left = 249
          Top = 50
          Width = 83
          Height = 30
          Caption = 'Borrar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000020000000C05031A46110852AB190C76E31D0E89FF1C0E89FF190C
            76E4120852AD06031B4D0000000E000000030000000000000000000000000000
            000301010519130A55A9211593FF2225AEFF2430C2FF2535CBFF2535CCFF2430
            C3FF2225AFFF211594FF140B58B20101051E0000000400000000000000020101
            03151C1270CD2522A6FF2D3DCCFF394BD3FF3445D1FF2939CDFF2839CDFF3344
            D0FF394AD4FF2D3CCDFF2523A8FF1C1270D20101051D00000003000000091912
            5BA72A27AAFF2F41D0FF3541C7FF2726ABFF3137BCFF384AD3FF384BD3FF3137
            BCFF2726ABFF3540C7FF2E40D0FF2927ACFF1A115EB10000000D08061C3D3129
            A2FD2C3CCCFF3842C6FF5F5DBDFFEDEDF8FF8B89CEFF3337B9FF3437B9FF8B89
            CEFFEDEDF8FF5F5DBDFF3741C6FF2B3ACDFF3028A4FF0907204A1E185F9F373B
            BCFF3042D0FF2621A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
            EDFFF3E9E2FFECE6EBFF2621A5FF2E3FCFFF343ABEFF201A66B0312A92E03542
            CBFF3446D1FF2C2FB5FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
            E2FFEADAD1FF7F6FACFF2B2EB5FF3144D0FF3040CBFF312A95E53E37AEFA3648
            D0FF374AD3FF3A4ED5FF3234B4FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
            E5FF897DB8FF3233B4FF384BD3FF3547D2FF3446D1FF3E37AEFA453FB4FA4557
            D7FF3B50D5FF4C5FDAFF4343B7FF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
            E8FF9087C5FF4242B7FF495DD8FF394CD4FF3F52D4FF443FB3FA403DA1DC5967
            DAFF5B6EDDFF4F4DBAFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
            EAFFFAF5F2FF8F89CAFF4E4DB9FF576ADCFF5765D9FF403EA4E12E2D70987C85
            DDFF8798E8FF291D9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
            D8FFF4ECE7FFE5D9DCFF291D9BFF8494E7FF7A81DDFF33317BAC111125356768
            D0FC9EACEDFF686FCEFF5646A1FFCCB6BCFF7A68A8FF4C4AB6FF4D4BB7FF7A68
            A8FFCBB5BCFF5646A1FF666DCCFF9BAAEEFF696CD0FD1212273F000000043B3B
            79977D84DFFFA5B6F1FF6D74D0FF2D219BFF5151B9FF8EA2ECFF8EA1ECFF5252
            BBFF2D219BFF6B72D0FFA2B3F0FF8086E0FF404183A700000008000000010303
            050C4E509DBC8087E2FFAEBDF3FFA3B6F1FF9DAFF0FF95A9EEFF95A8EEFF9BAD
            EFFFA2B3F0FFACBCF3FF838AE3FF4F52A0C10303051100000002000000000000
            000100000005323464797378D9F8929CEAFFA1AEEFFFB0BFF3FFB0BFF4FFA2AE
            EFFF939DE9FF7479DAF83234647D000000080000000200000000000000000000
            000000000000000000031213232D40437D935D61B5D07378DFFC7378DFFC5D61
            B5D040437D951212223000000004000000010000000000000000}
          ParentFont = False
          TabOrder = 1
          OnClick = btBorrarClick
        end
        object btBuscar: TBitBtn
          Left = 332
          Top = 50
          Width = 88
          Height = 30
          Hint = 'Boton derecho elige Orden'
          Caption = 'Buscar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FFFFFF00
            FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
            FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF6D7C94FF6F7C88FFFF00FFFFFF00
            FFFF0D7FA9FF0E80AAFF0D7FA9FF0E80AAFF0E80AAFF1081ABFFFF00FFFFFF00
            FFFFFF00FFFFFF00FFFFFF00FFFF788295FF1F89E0FF59A9DCFFFF00FFFF048C
            B9FF48D5EEFF22D7FCFF35D8FDFF6FE6FFFF8DE6FAFF44BADDFF0E80AAFFFF00
            FFFFFF00FFFFFF00FFFF788295FF2087DEFF4EB7FFFF57AEF4FF048CB9FF8CFA
            FDFF58E9FDFF22D7FCFF35D8FDFF70E6FFFF8DE6FAFF4ABFE0FF0F9DCEFF1180
            A7FFFF00FFFF8B8697FF1F7ECEFF4EB7FFFF57AEF4FFFF00FFFF088EBCFF8CFA
            FDFF58E9FDFF22D7FCFF35D8FDFF75D3E9FFB19794FFC2A69AFFC6AEA0FFAE87
            7CFF8C6B6CFF6092BDFF4EB7FFFF4EB7FFFFFF00FFFFFF00FFFF088EBCFF8CFA
            FDFF58E9FDFF24D8FDFF46C6E4FFAB9395FFECDDCCFFFEFED6FFFFFFE4FFF7F2
            D9FFCFB7A1FFAD8580FF4EB7FFFFFF00FFFFFF00FFFFFF00FFFF048CB9FFB4FF
            FFFFB6F6FFFFC6F5FFFFB5A09FFFE8DDD6FFFFFFF4FFFEFED6FFFFFEDDFFFEFE
            D6FFFFF2BAFFCAA08CFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF048CB9FFB8ED
            F6FF30BCDCFF11A7D1FF9C9190FFFFFFE4FFFFFEDDFFFEFED6FFFFFEDDFFFCF5
            CDFFF8D098FFECD1ACFFAD8580FFFF00FFFFFF00FFFFFF00FFFF088EBCFF4BC6
            DCFF58E9FDFF22D7FCFFA49E99FFFFFEDDFFFFFEDDFFFFFEDDFFFFFEDDFFF6DA
            ABFFF3BE80FFF5DEB5FFAD8580FFFF00FFFFFF00FFFFFF00FFFF048CB9FF8CFA
            FDFF58E9FDFF24D8FDFF969594FFFAF6D6FFFFFEDDFFFAF6D6FFF9E1B1FFF5CB
            9AFFFEEAB9FFE4CCA9FFAD8580FFFF00FFFFFF00FFFFFF00FFFF048CB9FF8CFA
            FDFF58E9FDFF24D8FDFF5EA8BEFFD3BBA2FFFFF7C6FFF8D098FFF4C88EFFFEF7
            E0FFF9F6F2FFAD8580FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF048CB9FF8CFA
            FDFF58E9FDFF24D8FDFF39D7FBFF8AA5ADFFCDAC93FFECD1ACFFF5E1B6FFDAC5
            B7FFAD8580FFAD8580FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF088EBCFF8CFA
            FDFF81F8FEFF71F9FEFF7BFFFFFF97FCFDFFA1C6C8FF8F989BFF868388FF8770
            70FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF048CB9FFFBFF
            FFFFF5FFFEFFD2FFFFFFB4FFFFFFADFFFEFFADFFFEFFADFFFEFF71F9FEFF0E80
            AAFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF0A91
            C1FFF5FFFEFFE3FEFFFFC6FEFFFFADFFFEFFA7FFFFFF9BFBFDFF1285B0FFFF00
            FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
            FFFF088EBCFF088EBCFF048CB9FF088EBCFF088EBCFF088EBCFFFF00FFFFFF00
            FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF}
          ModalResult = 6
          ParentFont = False
          ParentShowHint = False
          PopupMenu = pmOrdenBusqueda
          ShowHint = True
          TabOrder = 2
          OnClick = btBuscarClick
        end
        object btCancelar: TBitBtn
          Left = 167
          Top = 50
          Width = 83
          Height = 30
          Caption = 'Cancelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Kind = bkCancel
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 3
          OnClick = btCancelarClick
        end
        object btGuardar: TBitBtn
          Left = 84
          Top = 50
          Width = 83
          Height = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Kind = bkOK
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 4
          OnClick = btGuardarClick
        end
        object btImprimir: TBitBtn
          Left = 415
          Top = 50
          Width = 83
          Height = 30
          Caption = '&Imprimir'
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
          TabOrder = 5
          OnClick = btImprimirClick
        end
        object btRemitar: TBitBtn
          Left = 595
          Top = 50
          Width = 86
          Height = 30
          Caption = 'Remitar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 6
          OnClick = btRemitarClick
        end
        object btTransferir: TBitBtn
          Left = 681
          Top = 50
          Width = 88
          Height = 30
          Caption = 'Transfer.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 7
          Visible = False
          OnClick = btTransferirClick
        end
        object chTodos: TAdvOfficeCheckBox
          Left = 11
          Top = 110
          Width = 201
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          TabStop = True
          Alignment = taLeftJustify
          Caption = 'Buscar Todos Los Pedidos'
          ReturnIsTab = False
          Version = '1.8.4.0'
        end
        object chPedidosPrevision: TAdvOfficeCheckBox
          Left = 221
          Top = 88
          Width = 196
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          TabStop = True
          Alignment = taLeftJustify
          Caption = 'Buscar Pedidos de Previson'
          ReturnIsTab = False
          Version = '1.8.4.0'
        end
        object chCantidadCero: TAdvOfficeCheckBox
          Left = 11
          Top = 88
          Width = 211
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          TabStop = True
          OnClick = chCantidadCeroClick
          Alignment = taLeftJustify
          Caption = 'Filtrar Cantidades en 0(Cero)'
          ReturnIsTab = False
          Version = '1.8.4.0'
        end
        object chImprimeCero: TAdvOfficeCheckBox
          Left = 432
          Top = 82
          Width = 115
          Height = 39
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          TabStop = True
          OnClick = chCantidadCeroClick
          Alignment = taLeftJustify
          Caption = 'Imprimir Con Cantidad 0(cero)'
          ReturnIsTab = False
          Version = '1.8.4.0'
        end
        object rgCantidades: TAdvOfficeRadioGroup
          Left = 569
          Top = 86
          Width = 188
          Height = 49
          CaptionFont.Charset = DEFAULT_CHARSET
          CaptionFont.Color = clWhite
          CaptionFont.Height = -12
          CaptionFont.Name = 'Tahoma'
          CaptionFont.Style = []
          Version = '1.8.4.0'
          Caption = 'Tomar Cantidad de'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentCtl3D = True
          ParentFont = False
          TabOrder = 12
          Columns = 2
          Items.Strings = (
            'Cantidad Pedida'
            'Unidades Entregadas')
          Ellipsis = False
        end
        object DBMemo1: TDBMemo
          Left = 0
          Top = 0
          Width = 1077
          Height = 40
          Align = alTop
          DataField = 'NOTAS'
          DataSource = DSPedidoCab
          TabOrder = 13
        end
        object chPedidosEstables: TAdvOfficeCheckBox
          Left = 221
          Top = 112
          Width = 196
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          TabStop = True
          Alignment = taLeftJustify
          Caption = 'Buscar Pedidos Fijos'
          ReturnIsTab = False
          Version = '1.8.4.0'
        end
        object btEntregas: TBitBtn
          Left = 857
          Top = 50
          Width = 32
          Height = 30
          Action = AplicaEntregadas
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            000000000000000000000000000000000006714F44BE9E6D5DFF9E6C5DFF9D6C
            5CFF9D6B5BFF9C6B5BFF9C6B5BFF9C6A5AFF9B6959FF704B41BE000000000000
            000000000000000000000000000000000009DCC8BFFFF8F1ECFFF7EEE9FFCCAB
            9FFFF7EEEAFFF7EEE9FFCCAB9FFFF7EEE9FFF7EEE9FF9D6C5CFF000000000000
            0000000000000000000000000000000000095B997BFFE4E0D9FFF8F0EBFFDCC3
            BAFFF7EEEAFFF7EEEAFFCCACA0FFF8EEEAFFF9F2EFFF9F7061FF000000000000
            000000000000000000000000000000000008137248FF184E30FFA4AFA2FFF8F0
            EBFFEADBD4FFD1B3A7FFCEADA2FFCDADA2FFD9BFB6FFA37464FF000000000000
            0000000000000000000103190C5C052D17AD147449FF2ECA96FF126B45FF4F6F
            58FFE4E0D9FFF8F0EBFFDCC5BCFFF8F0EBFFFAF4F1FFA67969FF000000070000
            000B0000000C052714861F8259FF30AF82FF3CD4A3FF3EDDABFF3BDCA8FF2EA8
            7DFF1B5033FFA4B0A2FFDDC6BDFFF8F0ECFFF9F3F1FFAA7E6FFF856053BEE3CD
            C3FFA2B8A7FF2B8A64FF6CECC7FF69EBC6FF6EEBC7FF4DE4B5FF5DE7BFFF4AC3
            9BFF2D8860FFAEC6B4FFDEC6BEFFD0B2A7FFDBC4BAFFAE8274FFBB8978FFF8F0
            ECFF5C8D70FF4BB68FFF2A8E64FF298E63FF197A4EFF6BE4C1FF359E76FF61A0
            81FFE5E6DEFFF8F0EBFFDDC6BDFFF8F0EDFFFAF5F2FFB28879FFBE8E7EFFF8F0
            ECFF45946EFF8AB89EFFD4DDD1FFF8F0EBFF1B7D4FFF348F66FFB1CBB9FFF8F0
            EBFFF9F2EDFFFAF5F1FFDCC5BDFFFAF5F2FFFAF4F2FFB68D7FFFC19383FFF1E5
            E0FF90B69DFFEEE1DBFFDDC8C0FFF8F0EBFF66A685FFE6E7DEFFF3E9E3FFCFB2
            A7FFBC9487FFBB9487FFBB9385FFBA9285FFBA9184FF8A6C61C0C59A89FFF9F2
            EEFFF8F0ECFFDCC6BDFFF8EFEBFFF8F0ECFFEDE1DCFFF8F2EDFFFAF6F4FFDCC7
            BEFF0000000B0000000300000004000000040000000300000002C89E8FFFF9F4
            F2FFF8F0EDFFC6A599FFF7F0ECFFF8F0EDFFC5A499FFF8F0ECFFF9F3F1FFC397
            87FF000000070000000000000000000000000000000000000000C48F63FFDBB5
            8FFFCF9F71FFCF9E6FFFCF9D6EFFCF9D6EFFCE9B6EFFCE9A6CFFDAB089FFC28B
            5FFF000000070000000000000000000000000000000000000000C79469FFEEDA
            B8FFE9CEA3FFCDA381FFE8CEA3FFE8CEA3FFCCA27EFFE8CDA3FFEED9B7FFC491
            65FF000000060000000000000000000000000000000000000000CA9A6EFFEFDA
            B9FFEEDAB8FFDBBA9EFFEEDAB8FFEEDAB8FFDAB89BFFEEDAB8FFEEDAB8FFC897
            6BFF000000050000000000000000000000000000000000000000987655BFCC9E
            71FFCC9D71FFCC9C70FFCB9B6FFFCA9A6EFFC9986DFFC9986CFFCC9C70FF9774
            53C0000000030000000000000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 15
        end
        object btNPedidoCliente: TBitBtn
          Left = 770
          Top = 50
          Width = 84
          Height = 30
          Hint = 'Generar Nota de Pedido Cliente...'
          Caption = 'N.Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
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
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
          OnClick = btNPedidoClienteClick
        end
      end
      object pnCabecera: TPanel
        Left = 0
        Top = 0
        Width = 1077
        Height = 97
        Align = alTop
        BevelOuter = bvNone
        Color = clMenuHighlight
        ParentBackground = False
        TabOrder = 1
        object lbEstadoPrevision: TLabel
          Left = 523
          Top = 7
          Width = 48
          Height = 16
          Cursor = crHandPoint
          Alignment = taCenter
          Caption = 'ACTIVO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Visible = False
          OnClick = EstadoPrevisionExecute
        end
        object DBText4: TDBText
          Left = 812
          Top = 1
          Width = 106
          Height = 21
          Alignment = taRightJustify
          DataField = 'ID'
          DataSource = DSPedidoCab
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 603
          Top = 49
          Width = 113
          Height = 17
          Alignment = taRightJustify
          DataField = 'HAY_PENDIENTES'
          DataSource = DSPedidoCab
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object DBText8: TDBText
          Left = 587
          Top = 74
          Width = 121
          Height = 17
          Alignment = taRightJustify
          DataField = 'MUESTRAESTADO'
          DataSource = DSPedidoCab
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel2: TLabel
          Left = 115
          Top = 3
          Width = 39
          Height = 16
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object RxLabel58: TLabel
          Left = 7
          Top = 3
          Width = 38
          Height = 16
          Caption = 'Fecha '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object JvLabel1: TLabel
          Left = 591
          Top = 3
          Width = 90
          Height = 16
          Caption = 'Fecha  de Envio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object JvLabel2: TLabel
          Left = 722
          Top = 1
          Width = 89
          Height = 23
          Caption = 'Nro.Ped.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label8: TLabel
          Left = 419
          Top = 48
          Width = 37
          Height = 16
          Caption = 'Sector'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object ceCodigo: TJvDBComboEdit
          Left = 112
          Top = 23
          Width = 91
          Height = 24
          Margins.Left = 1
          Margins.Top = 1
          ClickKey = 16397
          DataField = 'CLIENTE'
          DataSource = DSPedidoCab
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            4E000000424D4E000000000000003E0000002800000009000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FF8000002480000024800000FF800000}
          ButtonWidth = 15
          ParentFont = False
          TabOrder = 0
          OnButtonClick = BuscarClientesExecute
        end
        object dbeNombre: TDBEdit
          Left = 209
          Top = 23
          Width = 286
          Height = 24
          Color = clInfoBk
          DataField = 'MUESTRANOMBRE'
          DataSource = DSPedidoCab
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object dbeFechaVta: TJvDBDateEdit
          Left = 7
          Top = 23
          Width = 92
          Height = 24
          Margins.Left = 1
          Margins.Top = 1
          DataField = 'FECHA'
          DataSource = DSPedidoCab
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
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
          ButtonWidth = 16
          ParentFont = False
          PopupColor = clBtnFace
          ShowNullDate = False
          TabOrder = 2
        end
        object pnPrevision: TPanel
          Left = 726
          Top = 33
          Width = 198
          Height = 60
          Color = clBlue
          ParentBackground = False
          TabOrder = 3
          Visible = False
          object Label2: TLabel
            Left = 14
            Top = 3
            Width = 136
            Height = 19
            Caption = 'Pedido Prevision'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 17
            Top = 28
            Width = 39
            Height = 19
            Caption = 'Vto.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbeVtoRevision: TJvDBDateEdit
            Left = 60
            Top = 26
            Width = 113
            Height = 24
            Margins.Left = 1
            Margins.Top = 1
            DataField = 'VTO_PREVISION'
            DataSource = DSPedidoCab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
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
            ButtonWidth = 16
            ParentFont = False
            PopupColor = clBtnFace
            ShowNullDate = False
            TabOrder = 0
          end
        end
        object JvDBDateEdit1: TJvDBDateEdit
          Left = 601
          Top = 23
          Width = 107
          Height = 24
          Margins.Left = 1
          Margins.Top = 1
          DataField = 'FECHA_ENVIO'
          DataSource = DSPedidoCab
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
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
          ButtonWidth = 16
          ParentFont = False
          PopupColor = clBtnFace
          ShowNullDate = False
          TabOrder = 5
          DisabledTextColor = clBlack
        end
        object dbcDia: TJvDBComboBox
          Left = 273
          Top = 65
          Width = 139
          Height = 26
          DataField = 'DIA'
          DataSource = DSPedidoCab
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Lunes'
            'Martes'
            'Miercoles'
            'Jueves'
            'Viernes'
            'Sabado'
            'Domingo')
          ParentFont = False
          TabOrder = 7
          Values.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
          OnKeyDown = dbcDiaKeyDown
        end
        object pnCopia: TPanel
          Left = 4
          Top = 50
          Width = 171
          Height = 41
          BevelOuter = bvNone
          Color = clGreen
          ParentBackground = False
          TabOrder = 8
          Visible = False
          object Label5: TLabel
            Left = 24
            Top = 3
            Width = 116
            Height = 18
            Alignment = taCenter
            Caption = 'Pedido Original'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = EstadoPrevisionExecute
          end
          object DBText5: TDBText
            Left = 36
            Top = 22
            Width = 91
            Height = 17
            Alignment = taCenter
            DataField = 'ID_PEDIDO_ORIGEN'
            DataSource = DSPedidoCab
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = DBText5Click
          end
        end
        object dbchPrevision: TAdvOfficeCheckBox
          Left = 210
          Top = 2
          Width = 165
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          TabStop = True
          OnClick = dbchPrevisionClick
          Alignment = taLeftJustify
          Caption = 'Pedido de Prevision'
          ReturnIsTab = False
          Version = '1.8.4.0'
        end
        object chPedidoFijo: TAdvOfficeCheckBox
          Left = 181
          Top = 62
          Width = 88
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          TabStop = True
          Alignment = taLeftJustify
          Caption = 'Pedido Fijo'
          ReturnIsTab = False
          Version = '1.8.4.0'
        end
        object dbcSector: TDBLookupComboBox
          Left = 418
          Top = 66
          Width = 215
          Height = 24
          DataField = 'ID_SECTOR'
          DataSource = DSPedidoCab
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID'
          ListField = 'DETALLE'
          ListSource = DSSector
          ParentFont = False
          TabOrder = 9
        end
      end
      object pcOrdenamiento: TPageControl
        Left = 0
        Top = 97
        Width = 1077
        Height = 475
        ActivePage = TabSheet2
        Align = alClient
        HotTrack = True
        Style = tsFlatButtons
        TabOrder = 2
        OnChange = pcOrdenamientoChange
        OnChanging = pcOrdenamientoChanging
        OnEnter = pcOrdenamientoEnter
        object TabSheet2: TTabSheet
          Caption = 'Por Sub Rubro'
          object cxGrid1: TcxGrid
            Left = 0
            Top = 0
            Width = 1069
            Height = 444
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            PopupMenu = PopupMenu2
            TabOrder = 0
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
            LookAndFeel.SkinName = 'Office2007Blue'
            object cxGrid1DBTableView1: TcxGridDBTableView
              PopupMenu = PopupCopy
              OnDblClick = cxGrid1DBTableView1DblClick
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataSource = DSPedidoDet
              DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsSelection.CellMultiSelect = True
              OptionsSelection.InvertSelect = False
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 25
              Styles.Group = cxStyle1
              Styles.Header = cxStyle1
              object cxGrid1DBTableView1MUESTRASUBRUB: TcxGridDBColumn
                Caption = 'Grupo:'
                DataBinding.FieldName = 'MUESTRASUBRUB'
                DataBinding.IsNullValueType = True
                Visible = False
                GroupIndex = 0
                HeaderAlignmentHorz = taCenter
                Options.CellMerging = True
              end
              object cxGrid1DBTableView1ID: TcxGridDBColumn
                DataBinding.FieldName = 'ID'
                DataBinding.IsNullValueType = True
                Visible = False
                HeaderAlignmentHorz = taCenter
              end
              object cxGrid1DBTableView1IDCAB: TcxGridDBColumn
                DataBinding.FieldName = 'IDCAB'
                DataBinding.IsNullValueType = True
                Visible = False
                HeaderAlignmentHorz = taCenter
              end
              object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
                DataBinding.FieldName = 'CODIGO'
                DataBinding.IsNullValueType = True
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 100
              end
              object cxGrid1DBTableView1MUESTRADETALLE: TcxGridDBColumn
                DataBinding.FieldName = 'MUESTRADETALLE'
                DataBinding.IsNullValueType = True
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 315
              end
              object cxGrid1DBTableView1CANTIDAD_PEDIDA: TcxGridDBColumn
                DataBinding.FieldName = 'CANTIDAD_PEDIDA'
                DataBinding.IsNullValueType = True
                HeaderAlignmentHorz = taCenter
                Width = 110
              end
              object cxGrid1DBTableView1CANTIDAD_PRESENTACION: TcxGridDBColumn
                DataBinding.FieldName = 'CANTIDAD_PRESENTACION'
                DataBinding.IsNullValueType = True
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Focusing = False
                Width = 110
              end
              object cxGrid1DBTableView1CANTIDAD_UNID_PED: TcxGridDBColumn
                DataBinding.FieldName = 'CANTIDAD_UNID_PED'
                DataBinding.IsNullValueType = True
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Focusing = False
                Width = 110
              end
              object cxGrid1DBTableView1CANTIDAD_UNID_ENTR: TcxGridDBColumn
                DataBinding.FieldName = 'CANTIDAD_UNID_ENTR'
                DataBinding.IsNullValueType = True
                HeaderAlignmentHorz = taCenter
                Width = 110
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Por Grupo'
          ImageIndex = 1
          object cxGrid3: TcxGrid
            Left = 0
            Top = 0
            Width = 1069
            Height = 444
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
            LookAndFeel.SkinName = 'Office2007Blue'
            object cxGridDBTableView2: TcxGridDBTableView
              PopupMenu = PopupMenu3
              OnDblClick = cxGridDBTableView2DblClick
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataSource = DSPedidoDet
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.Inserting = False
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.HeaderHeight = 25
              Styles.Group = cxStyle1
              Styles.Header = cxStyle1
              object cxGridDBTableView2ID: TcxGridDBColumn
                DataBinding.FieldName = 'ID'
                DataBinding.IsNullValueType = True
                Visible = False
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBTableView2IDCAB: TcxGridDBColumn
                DataBinding.FieldName = 'IDCAB'
                DataBinding.IsNullValueType = True
                Visible = False
                HeaderAlignmentHorz = taCenter
              end
              object cxGridDBTableView2ORDEN_GRUPO: TcxGridDBColumn
                Caption = 'Grupo:'
                DataBinding.FieldName = 'ORDEN_GRUPO'
                DataBinding.IsNullValueType = True
                Visible = False
                GroupIndex = 0
              end
              object cxGridDBTableView2CODIGO: TcxGridDBColumn
                DataBinding.FieldName = 'CODIGO'
                DataBinding.IsNullValueType = True
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 100
              end
              object cxGridDBTableView2MUESTRADETALLE: TcxGridDBColumn
                DataBinding.FieldName = 'MUESTRADETALLE'
                DataBinding.IsNullValueType = True
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 402
              end
              object cxGridDBTableView2CANTIDAD_PEDIDA: TcxGridDBColumn
                DataBinding.FieldName = 'CANTIDAD_PEDIDA'
                DataBinding.IsNullValueType = True
                HeaderAlignmentHorz = taCenter
                Width = 126
              end
              object cxGridDBTableView2CANTIDAD_PRESENTACION: TcxGridDBColumn
                DataBinding.FieldName = 'CANTIDAD_PRESENTACION'
                DataBinding.IsNullValueType = True
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Focusing = False
                Width = 110
              end
              object cxGridDBTableView2CANTIDAD_UNID_PED: TcxGridDBColumn
                DataBinding.FieldName = 'CANTIDAD_UNID_PED'
                DataBinding.IsNullValueType = True
                HeaderAlignmentHorz = taCenter
                Options.Focusing = False
                Width = 130
              end
              object cxGridDBTableView2CANTIDAD_UNID_ENTR: TcxGridDBColumn
                DataBinding.FieldName = 'CANTIDAD_UNID_ENTR'
                DataBinding.IsNullValueType = True
                HeaderAlignmentHorz = taCenter
                Width = 148
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridDBTableView2
            end
          end
        end
        object pagDatos: TTabSheet
          Caption = 'Otros Datos'
          ImageIndex = 2
          DesignSize = (
            1069
            444)
          object DBGrid1: TDBGrid
            Left = 2
            Top = 24
            Width = 353
            Height = 411
            Anchors = [akLeft, akTop, akBottom]
            DataSource = DSSector
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'DETALLE'
                Title.Alignment = taCenter
                Title.Caption = 'Sectores - Detalle'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Visible = True
              end>
          end
        end
      end
    end
    object tsPrevision: TTabSheet
      Caption = 'Planilla Prevision'
      ImageIndex = 2
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 1077
        Height = 714
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = True
        LookAndFeel.SkinName = 'Office2007Blue'
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DSPrevision
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 25
          Styles.Group = cxStyle1
          Styles.Header = cxStyle1
          object cxGridDBTableView1CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'CODIGO'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Width = 77
          end
          object cxGridDBTableView1MUESTRADETALLE: TcxGridDBColumn
            DataBinding.FieldName = 'MUESTRADETALLE'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Width = 377
          end
          object cxGridDBTableView1CANTIDAD_PEDIDA: TcxGridDBColumn
            DataBinding.FieldName = 'CANTIDAD_PEDIDA'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Width = 133
          end
          object cxGridDBTableView1CANTIDAD_UNID_PED: TcxGridDBColumn
            DataBinding.FieldName = 'CANTIDAD_UNID_PED'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Width = 133
          end
          object cxGridDBTableView1CANTIDAD_UNID_ENTR: TcxGridDBColumn
            DataBinding.FieldName = 'CANTIDAD_UNID_ENTR'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Width = 151
          end
          object cxGridDBTableView1MUESTRASUBRUB: TcxGridDBColumn
            DataBinding.FieldName = 'MUESTRASUBRUB'
            DataBinding.IsNullValueType = True
            Visible = False
            GroupIndex = 0
            HeaderAlignmentHorz = taCenter
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object tsPlantilla: TTabSheet
      Caption = 'Plantilla'
      ImageIndex = 1
      object dbgPlantilla: TDBGrid
        Left = 0
        Top = 0
        Width = 315
        Height = 650
        Align = alClient
        DataSource = DSPlantilla
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu4
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnColEnter = dbgPlantillaColEnter
        OnDblClick = dbgPlantillaDblClick
        OnDragDrop = dbgPlantillaDragDrop
        OnDragOver = dbgPlantillaDragOver
        OnEditButtonClick = BuscaArticulosExecute
        OnEnter = dbgPlantillaEnter
        OnKeyPress = dbgPlantillaKeyPress
        OnTitleClick = dbgPlantillaTitleClick
        Columns = <
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'ID_ORDEN'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 61
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'MUESTRASUBRUB'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 221
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'CODIGO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'DETALLE_STK'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 328
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'PRESENTACION_CANTIDAD'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_GRUPO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      object pnPiePlantilla: TPanel
        Left = 0
        Top = 650
        Width = 1077
        Height = 64
        Align = alBottom
        TabOrder = 1
        object Label1: TLabel
          Left = 824
          Top = 46
          Width = 94
          Height = 13
          Caption = 'Planilla Art Rub/Sub'
          DragCursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = Label1Click
        end
        object Label9: TLabel
          Left = 618
          Top = 10
          Width = 74
          Height = 13
          Caption = 'Lista de Precios'
        end
        object Label10: TLabel
          Left = 200
          Top = 10
          Width = 90
          Height = 13
          Caption = 'Filtra x Descripcion'
        end
        object Label11: TLabel
          Left = 97
          Top = 10
          Width = 69
          Height = 13
          Caption = 'Filtra x Codigo'
        end
        object btBorrarPlantilla: TButton
          Left = 8
          Top = 26
          Width = 83
          Height = 25
          Caption = 'Borrar Todos'
          TabOrder = 0
          OnClick = btBorrarPlantillaClick
        end
        object edFind: TJvDBFindEdit
          Left = 200
          Top = 29
          Width = 389
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = ''
          DataField = 'DETALLE_STK'
          DataSource = DSPlantilla
          FindStyle = fsFilter
          FindMode = fmAnyPos
        end
        object JvDBFindEdit1: TJvDBFindEdit
          Left = 97
          Top = 29
          Width = 97
          Height = 21
          TabOrder = 2
          Text = ''
          DataField = 'CODIGO'
          DataSource = DSPlantilla
          FindStyle = fsFilter
          FindMode = fmAnyPos
        end
        object dbcListaPrecios: TJvDBLookupCombo
          Left = 618
          Top = 29
          Width = 200
          Height = 21
          LookupField = 'ID'
          LookupDisplay = 'NOMBRE'
          LookupSource = DSListaCab
          TabOrder = 3
          OnChange = dbcListaPreciosChange
        end
      end
      object tpListaPlantilla: TAdvToolPanelTab
        Left = 315
        Top = 0
        Width = 762
        Height = 650
        AutoOpenCloseSpeed = aocVeryFast
        Color = 16773091
        ColorTo = 16765357
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 9126421
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Position = ppRight
        SlideSpeed = ssInstant
        Style = esOffice2010Blue
        TabBorderColor = 16765357
        TabColor = 16773091
        TabColorTo = 16765357
        TabHoverColor = 14285309
        TabHoverColorTo = 9102333
        TabWidth = 25
        Version = '1.8.5.1'
        object AdvToolPanel1: TAdvToolPanel
          Left = 0
          Top = 0
          Width = 737
          Height = 650
          Align = alClient
          BackgroundTransparent = False
          BackGroundPosition = bpTopLeft
          Button3D = False
          HoverButtonColor = 14285309
          HoverButtonColorTo = 9102333
          DownButtonColor = 8122111
          DownButtonColorTo = 7131391
          CaptionButton = False
          Color = 15192511
          ColorTo = 15192511
          GradientDirection = gdVertical
          DockDots = True
          Caption = 'Orden'
          CaptionGradientDirection = gdVertical
          FocusCaptionFontColor = 9126421
          FocusCaptionColor = 6805503
          FocusCaptionColorTo = 10676223
          NoFocusCaptionFontColor = 9126421
          NoFocusCaptionColor = 16773091
          NoFocusCaptionColorTo = 16765357
          OpenWidth = 746
          CloseHint = 'Cerrar'
          LockHint = 'Lock panel'
          UnlockHint = 'Desacoplar'
          Sections = <>
          SectionLayout.CaptionColor = 16772834
          SectionLayout.CaptionColorTo = 16772834
          SectionLayout.CaptionFontColor = 9126421
          SectionLayout.CaptionRounded = False
          SectionLayout.Corners = scRectangle
          SectionLayout.BackGroundColor = clWhite
          SectionLayout.BackGroundColorTo = clWhite
          SectionLayout.BorderColor = 16765357
          SectionLayout.BorderWidth = 1
          SectionLayout.CaptionGradientDir = gdVertical
          SectionLayout.BackGroundGradientDir = gdVertical
          SectionLayout.Indent = 4
          SectionLayout.Spacing = 4
          SectionLayout.ItemFontColor = 9126421
          SectionLayout.ItemHoverTextColor = 9126421
          SectionLayout.ItemHoverUnderline = True
          SectionLayout.UnderLineCaption = False
          ShowCaption = False
          ShowCaptionBorder = False
          ShowClose = False
          ShowLock = False
          Style = esOffice2010Blue
          Version = '1.8.5.1'
          object lwPlantilla: TListView
            Left = 1
            Top = 1
            Width = 735
            Height = 607
            Align = alClient
            Columns = <
              item
                ImageIndex = 1
                Width = 30
              end
              item
                Alignment = taCenter
                Caption = 'Codigo'
                Width = 80
              end
              item
                Alignment = taCenter
                Caption = 'Orden'
                Width = 60
              end
              item
                Caption = 'Rubro'
                Width = 200
              end
              item
                Caption = 'Descripcion'
                Width = 340
              end>
            DragMode = dmAutomatic
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FlatScrollBars = True
            HideSelection = False
            HotTrack = True
            HotTrackStyles = [htUnderlineCold]
            RowSelect = True
            ParentFont = False
            SmallImages = ImageList1
            TabOrder = 0
            ViewStyle = vsReport
            OnDragDrop = lwPlantillaDragDrop
            OnDragOver = lwPlantillaDragOver
          end
          object Panel3: TPanel
            Left = 1
            Top = 608
            Width = 735
            Height = 41
            Align = alBottom
            Color = clMenuHighlight
            ParentBackground = False
            TabOrder = 1
            object btGuardarordenPlantila: TBitBtn
              Left = 616
              Top = 6
              Width = 75
              Height = 25
              Caption = 'Gravar'
              TabOrder = 0
              OnClick = btGuardarordenPlantilaClick
            end
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Grupos'
      ImageIndex = 3
      DesignSize = (
        1077
        714)
      object btAgregar: TButton
        Left = 478
        Top = 657
        Width = 75
        Height = 22
        Anchors = [akLeft, akBottom]
        Caption = 'Agregar'
        TabOrder = 0
        OnClick = btAgregarClick
      end
      object lwLista: TListView
        Left = 0
        Top = 0
        Width = 641
        Height = 641
        Anchors = [akLeft, akTop, akBottom]
        Columns = <
          item
            ImageIndex = 0
            Width = 30
          end
          item
            Caption = 'Codigo'
            Width = 70
          end
          item
            Caption = 'Descripcion'
            Width = 420
          end
          item
            Caption = 'Orden'
            Width = 60
          end>
        DragMode = dmAutomatic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FlatScrollBars = True
        HideSelection = False
        HotTrack = True
        HotTrackStyles = [htUnderlineCold]
        RowSelect = True
        ParentFont = False
        PopupMenu = PopupMenu1
        SmallImages = ImageList1
        TabOrder = 1
        ViewStyle = vsReport
        OnDragDrop = lwListaDragDrop
        OnDragOver = lwListaDragOver
      end
      object edGrupo: TEdit
        Left = 3
        Top = 658
        Width = 469
        Height = 21
        Anchors = [akLeft, akBottom]
        CharCase = ecUpperCase
        TabOrder = 2
        OnKeyPress = edGrupoKeyPress
      end
      object Button2: TButton
        Left = 440
        Top = 685
        Width = 113
        Height = 25
        Action = GuardarGrupo
        Anchors = [akLeft, akBottom]
        TabOrder = 3
      end
    end
    object tsRecepcion: TTabSheet
      Caption = 'Recepcion'
      ImageIndex = 4
      object cxGrid4: TcxGrid
        Left = 0
        Top = 57
        Width = 1077
        Height = 586
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        object cxGrid4DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCellDblClick = cxGrid4DBTableView1CellDblClick
          OnCustomDrawCell = cxGrid4DBTableView1CustomDrawCell
          DataController.DataSource = DSRecepcion
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0.000;-,0.000;-'
              Kind = skSum
              FieldName = 'DIFERENCIA'
              Column = cxGrid4DBTableView1DIFERENCIA
            end
            item
              Format = ',0.000;-,0.000;-'
              Kind = skSum
              FieldName = 'CANTIDAD'
              Column = cxGrid4DBTableView1CANTIDAD
            end
            item
              Format = ',0.000;-,0.000;-'
              Kind = skSum
              FieldName = 'CANTIDAD_RECIBIDA'
              Column = cxGrid4DBTableView1CANTIDAD_RECIBIDA
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfAlwaysVisible
          Styles.Header = cxStyle2
          object cxGrid4DBTableView1ID_DET: TcxGridDBColumn
            DataBinding.FieldName = 'ID_DET'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
          end
          object cxGrid4DBTableView1ID_CAB: TcxGridDBColumn
            DataBinding.FieldName = 'ID_CAB'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
          end
          object cxGrid4DBTableView1MUESTRAFEHCA: TcxGridDBColumn
            DataBinding.FieldName = 'MUESTRAFECHA'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
            Width = 78
          end
          object cxGrid4DBTableView1MUESTRATIPOCPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'MUESTRATIPOCPBTE'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
            Width = 35
          end
          object cxGrid4DBTableView1MUESTRANROCPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'MUESTRANROCPBTE'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
            Width = 104
          end
          object cxGrid4DBTableView1CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'CODIGO'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
            Width = 73
          end
          object cxGrid4DBTableView1MUESTRADETALLE: TcxGridDBColumn
            DataBinding.FieldName = 'MUESTRADETALLE'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
            Width = 279
          end
          object cxGrid4DBTableView1CANTIDAD_PEDIDA: TcxGridDBColumn
            DataBinding.FieldName = 'CANTIDAD_PEDIDA'
            HeaderAlignmentHorz = taCenter
            Width = 104
          end
          object cxGrid4DBTableView1CANTIDAD: TcxGridDBColumn
            DataBinding.FieldName = 'CANTIDAD'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
            Width = 105
          end
          object cxGrid4DBTableView1CANTIDAD_RECIBIDA: TcxGridDBColumn
            DataBinding.FieldName = 'CANTIDAD_RECIBIDA'
            HeaderAlignmentHorz = taCenter
            Width = 103
          end
          object cxGrid4DBTableView1DIFERENCIA: TcxGridDBColumn
            DataBinding.FieldName = 'DIFERENCIA'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
            Width = 106
          end
          object cxGrid4DBTableView1MUESTRANROCOMPLETO: TcxGridDBColumn
            DataBinding.FieldName = 'MUESTRANROCOMPLETO'
            Visible = False
            GroupIndex = 0
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
          end
        end
        object cxGrid4Level1: TcxGridLevel
          GridView = cxGrid4DBTableView1
        end
      end
      object pnCab: TPanel
        Left = 0
        Top = 0
        Width = 1077
        Height = 57
        Align = alTop
        BevelOuter = bvNone
        Color = clMenuHighlight
        ParentBackground = False
        TabOrder = 1
        object Label6: TLabel
          Left = 570
          Top = 3
          Width = 35
          Height = 16
          Caption = 'Desde'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label7: TLabel
          Left = 704
          Top = 3
          Width = 32
          Height = 16
          Caption = 'Hasta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object SpeedButton2: TSpeedButton
          Left = 845
          Top = 23
          Width = 23
          Height = 22
          Action = BuscarRecepcion
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            000000000000000000000101010103030303060606060A0A0A0A0F0F0F0F1313
            1313111111110909090903030303000000000000000000000000474746A51111
            11741515157E1616167D1717177E1B1B1B801F1F1F8223232385282828872A2A
            2A88262626861D1D1D82181818801515158013131378474746A56D6D6CF7A5A5
            A5FFA4A4A4FFA4A5A5FFA6A7A7FFA8A9A9FFA9AAAAFFABACACFFACADADFFA8A9
            A9FF6C6C6CFF7B7B7BFFA5A5A5FFA4A4A4FFA5A5A5FF6D6C6BF66F6F6DF8ACAB
            AAFFAFAFAEFFB0B0AFFFB1B1B1FFB4B4B3FFB4B4B3FFB4B4B3FFB4B4B3FF6F6F
            6FFF676767FFB0B0AFFFAFAFAEFFAEAEAEFFADACABFF6F6F6DF86E6E6CF7B5B5
            B3FFBBBAB9FFBBBAB9FFBDBCBBFFBFBEBEFFB8B7B6FF6E6E6EFF9A9999FF5E5D
            5DFFA3A2A2FFBDBCBBFFBBBAB9FFBBBAB9FFB4B3B2FF70706EF86F6F6DF8BEBE
            BCFFC3C3C2FFC3C3C2FFC5C5C4FFA9A9A8FF666666FF878787FF80807FFF6464
            64FFC1C1C0FFC4C4C3FFC3C3C2FFC3C3C2FFBEBEBDFF6F6F6DF86F6F6DF9C1C1
            BFFFC5C5C4FFC5C5C4FFC6C6C5FF6C6C6BFFB5B5B4FFC8C8C7FFC8C8C7FF9797
            97FF6F6F6EFFC5C5C4FFC4C4C3FFC5C5C4FFC1C1BFFF6F6F6DF970706EFAC2C2
            C1FFC6C6C5FFC5C5C4FFC0C0BFFF6C6C6BFFC8C8C7FFC8C8C7FFC8C8C7FFB9B9
            B8FF616161FFC6C6C5FFC5C5C4FFC6C6C5FFC2C1C1FF6F6F6DF970706EFAC6C4
            C4FFCAC9C9FFC9C8C8FFC9C8C8FF6A6969FFB8B7B7FFCACACAFFCACACAFF9C9B
            9BFF6B6B6BFFC9C8C8FFC9C8C8FFCAC9C9FFC5C4C3FF70706EFA727270FCCCCC
            CCFFD1D1D0FFD0D0CFFFD0D0CFFFB0B0AFFF6C6C6BFF929291FF878786FF7272
            71FFC5C5C4FFD0D0CFFFD0D0CFFFD1D1D0FFD0D0CFFF71716FFB727270FCC3C3
            C1FFC5C5C3FFC4C4C3FFC4C4C3FFC4C4C3FFBABAB9FF797978FF7E7E7DFFC2C2
            C1FFC4C4C3FFC4C4C3FFC4C4C3FFC4C4C3FFC7C7C5FF727270FC70706EFCE9E9
            E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
            E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FF70706EFB797979CD7373
            71FF737371FF737371FF737371FF737371FF737372FF747472FF747472FF7474
            72FF747472FF747472FF747472FF747472FF737371FFA4A4A4FF8A8A89FDE0E0
            E0FFC4C4C2FFC3C3C1FFC2C3C1FFC1C1C0FFC3C3C2FFC3C3C2FFC3C3C2FFC3C3
            C2FFC3C3C2FFC3C3C2FFC3C3C2FFC3C3C2FFC3C3C2FF818181FA6C6C6AF4E7E7
            E7FEDDDDDDFEDDDDDDFEDEDEDEFEDADADAFB6B6B69F26B6B69F16B6B69F16B6B
            69F16B6B69F16B6B69F16B6B69F16B6B69F16B6B69F100000000000000006A6A
            68F06A6A68F06A6A68F06A6A68F06A6A68F00000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
        end
        object edDesde: TJvDateEdit
          Left = 568
          Top = 24
          Width = 110
          Height = 21
          ShowNullDate = False
          TabOrder = 0
        end
        object edHasta: TJvDateEdit
          Left = 704
          Top = 24
          Width = 110
          Height = 21
          ShowNullDate = False
          TabOrder = 1
        end
        object sbFechas: TSpinButton
          Left = 819
          Top = 23
          Width = 20
          Height = 22
          DownGlyph.Data = {
            0E010000424D0E01000000000000360000002800000009000000060000000100
            200000000000D800000000000000000000000000000000000000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000000000000080800000808000008080000080
            8000008080000080800000808000000000000000000000000000008080000080
            8000008080000080800000808000000000000000000000000000000000000000
            0000008080000080800000808000000000000000000000000000000000000000
            0000000000000000000000808000008080000080800000808000008080000080
            800000808000008080000080800000808000}
          TabOrder = 2
          UpGlyph.Data = {
            0E010000424D0E01000000000000360000002800000009000000060000000100
            200000000000D800000000000000000000000000000000000000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000000000000000000000000000000000000000000000000000000000000080
            8000008080000080800000000000000000000000000000000000000000000080
            8000008080000080800000808000008080000000000000000000000000000080
            8000008080000080800000808000008080000080800000808000000000000080
            8000008080000080800000808000008080000080800000808000008080000080
            800000808000008080000080800000808000}
          OnDownClick = sbFechasDownClick
          OnUpClick = sbFechasUpClick
        end
      end
      object pnPieRecibido: TPanel
        Left = 0
        Top = 643
        Width = 1077
        Height = 71
        Align = alBottom
        BevelOuter = bvNone
        Color = clMenuHighlight
        ParentBackground = False
        TabOrder = 2
        object DBEdit1: TDBEdit
          Left = 16
          Top = 6
          Width = 369
          Height = 21
          DataField = 'OBSERVACION1'
          DataSource = DSRecepcion
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 16
          Top = 33
          Width = 369
          Height = 21
          DataField = 'OBSERVACION2'
          DataSource = DSRecepcion
          TabOrder = 1
        end
      end
    end
  end
  object pnCantidad: TPanel
    Left = 321
    Top = 304
    Width = 265
    Height = 137
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    Visible = False
    object Label4: TLabel
      Left = 32
      Top = 16
      Width = 190
      Height = 25
      Caption = 'Ingresar Cantidad'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 32
      Top = 47
      Width = 199
      Height = 49
      Margins.Left = 10
      Margins.Bottom = 10
      Align = alCustom
      Color = clWhite
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 10
      Padding.Bottom = 10
      ParentBackground = False
      TabOrder = 0
      object edCantidad: TJvCalcEdit
        Left = 16
        Top = 10
        Width = 153
        Height = 27
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = False
      end
    end
    object btOkCantidad: TBitBtn
      Left = 163
      Top = 102
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btOkCantidadClick
    end
  end
  object CDSPlantilla: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'LISTA'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPlantilla'
    AfterPost = CDSPlantillaAfterPost
    AfterDelete = CDSPlantillaAfterDelete
    OnNewRecord = CDSPlantillaNewRecord
    Left = 812
    Top = 184
    object CDSPlantillaID_ORDEN: TIntegerField
      DisplayLabel = 'Orden'
      FieldName = 'ID_ORDEN'
      Origin = 'ID_ORDEN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPlantillaCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnSetText = CDSPlantillaCODIGOSetText
      Size = 8
    end
    object CDSPlantillaDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object CDSPlantillaMUESTRASUBRUB: TStringField
      DisplayLabel = 'Sub Rubro'
      FieldName = 'MUESTRASUBRUB'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      Size = 45
    end
    object CDSPlantillaPRESENTACION_CANTIDAD: TFloatField
      DisplayLabel = 'Present.'
      FieldName = 'PRESENTACION_CANTIDAD'
      Origin = 'PRESENTACION_CANTIDAD'
      ProviderFlags = []
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPlantillaID_GRUPO: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'ID_GRUPO'
      Origin = 'ID_GRUPO'
      Required = True
    end
    object CDSPlantillaMUESTRAGRUPO: TStringField
      FieldName = 'MUESTRAGRUPO'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 60
    end
    object CDSPlantillaCOSTO: TFloatField
      FieldName = 'COSTO'
      ProviderFlags = []
    end
    object CDSPlantillaRECARGO: TFloatField
      FieldName = 'RECARGO'
      ProviderFlags = []
    end
    object CDSPlantillaPRECIONETO: TFloatField
      FieldName = 'PRECIONETO'
      ProviderFlags = []
    end
    object CDSPlantillaPRECIO: TFloatField
      FieldName = 'PRECIO'
      ProviderFlags = []
    end
    object CDSPlantillaLISTANRO: TIntegerField
      FieldName = 'LISTANRO'
      ProviderFlags = []
    end
  end
  object DSPPlantilla: TDataSetProvider
    DataSet = QPlantilla
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 740
    Top = 184
  end
  object DSPlantilla: TDataSource
    DataSet = CDSPlantilla
    Left = 876
    Top = 184
  end
  object ActionList1: TActionList
    Left = 516
    Top = 144
    object BuscaArticulos: TAction
      Caption = 'BuscaArticulos'
      OnExecute = BuscaArticulosExecute
    end
    object BuscarClientes: TAction
      Caption = 'BuscarClientes'
      OnExecute = BuscarClientesExecute
    end
    object Facturar: TAction
      Caption = 'Facturar'
      OnExecute = FacturarExecute
    end
    object EstadoPrevision: TAction
      Caption = 'EstadoPrevision'
      OnExecute = EstadoPrevisionExecute
    end
    object Recuperar: TAction
      Caption = 'Recuperar'
      OnExecute = RecuperarExecute
    end
    object GuardarGrupo: TAction
      Caption = 'GuardarGrupo'
      OnExecute = GuardarGrupoExecute
    end
    object Borrar: TAction
      Caption = 'Borrar'
      OnExecute = BorrarExecute
    end
    object AplicaEntregadas: TAction
      Hint = 'Aplicar Cantidades a Entregadas'
      OnExecute = AplicaEntregadasExecute
    end
    object BuscarRecepcion: TAction
      OnExecute = BuscarRecepcionExecute
    end
    object RecibirCantidad: TAction
      Caption = 'RecibirCantidad'
      OnExecute = RecibirCantidadExecute
    end
    object HacerCopia: TAction
      OnExecute = HacerCopiaExecute
    end
    object MarcarPedido: TAction
      Caption = 'Marcar Pedido'
      OnExecute = MarcarPedidoExecute
    end
    object ExportarPlantillaXLS: TAction
      Caption = 'Exportar Plantilla XLS'
      OnExecute = ExportarPlantillaXLSExecute
    end
  end
  object DSPedidoCab: TDataSource
    DataSet = DatosPedidos.CDSPedidoCab
    OnStateChange = DSPedidoCabStateChange
    Left = 252
    Top = 144
  end
  object DSPedidoDet: TDataSource
    DataSet = DatosPedidos.CDSPedidoDet
    OnStateChange = DSPedidoDetStateChange
    Left = 252
    Top = 200
  end
  object ComBuscadorPedidos: TComBuscador
    Data = DatosPedidos.CDSBuscadorPedido
    Campo = 'ID'
    Titulo = 'Pedidos Pendientes'
    rOk = False
    Left = 420
    Top = 144
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.WindowState = wsMaximized
    Version = 0
    Left = 815
    Top = 352
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = cxGrid1
      DateFormat = 0
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45828.908001956020000000
      TimeFormat = 0
      OptionsExpanding.ExpandGroupRows = True
      OptionsExpanding.ExpandMasterRows = True
      OptionsSize.AutoWidth = True
      OptionsView.Footers = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object frxReport: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43228.057616006940000000
    ReportOptions.LastChange = 43228.057616006940000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 340
    Top = 152
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frDBDetalle: TfrxDBDataset
    UserName = 'frDBDetalle'
    CloseDataSource = False
    DataSet = DatosPedidos.CDSPedidoDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 604
    Top = 136
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'IDCAB'
        FieldAlias = 'IDCAB'
      end
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'MUESTRADETALLE'
        FieldAlias = 'MUESTRADETALLE'
      end
      item
        FieldName = 'CANTIDAD_PEDIDA'
        FieldAlias = 'CANTIDAD_PEDIDA'
      end
      item
        FieldName = 'CANTIDAD_UNID_PED'
        FieldAlias = 'CANTIDAD_UNID_PED'
      end
      item
        FieldName = 'CANTIDAD_UNID_ENTR'
        FieldAlias = 'CANTIDAD_UNID_ENTR'
      end
      item
        FieldName = 'CANTIDAD_PRESENTACION'
        FieldAlias = 'CANTIDAD_PRESENTACION'
      end
      item
        FieldName = 'MUESTRASUBRUB'
        FieldAlias = 'MUESTRASUBRUB'
      end
      item
        FieldName = 'MUESTRAIDGRUPO'
        FieldAlias = 'MUESTRAIDGRUPO'
      end
      item
        FieldName = 'MUESTRAGRUPO'
        FieldAlias = 'MUESTRAGRUPO'
      end
      item
        FieldName = 'MUESTRAORDENGRUPO'
        FieldAlias = 'MUESTRAORDENGRUPO'
      end
      item
        FieldName = 'ORDEN_GRUPO'
        FieldAlias = 'ORDEN_GRUPO'
      end
      item
        FieldName = 'MUESTRAORDENPLA'
        FieldAlias = 'MUESTRAORDENPLA'
      end
      item
        FieldName = 'TOTALPEDIDO'
        FieldAlias = 'TOTALPEDIDO'
      end>
  end
  object frDBCabecera: TfrxDBDataset
    UserName = 'frDBCabecera'
    CloseDataSource = False
    DataSet = DatosPedidos.CDSPedidoCab
    BCDToCurrency = False
    DataSetOptions = []
    Left = 692
    Top = 264
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'CLIENTE'
        FieldAlias = 'CLIENTE'
      end
      item
        FieldName = 'MUESTRANOMBRE'
        FieldAlias = 'MUESTRANOMBRE'
      end
      item
        FieldName = 'FACTURADO'
        FieldAlias = 'FACTURADO'
      end
      item
        FieldName = 'MUESTRAIVA'
        FieldAlias = 'MUESTRAIVA'
      end
      item
        FieldName = 'PEDIDO_PREVISION'
        FieldAlias = 'PEDIDO_PREVISION'
      end
      item
        FieldName = 'ESTADO_PREVISION'
        FieldAlias = 'ESTADO_PREVISION'
      end
      item
        FieldName = 'ID_PREVISION'
        FieldAlias = 'ID_PREVISION'
      end
      item
        FieldName = 'ID_FACTURA'
        FieldAlias = 'ID_FACTURA'
      end
      item
        FieldName = 'TIPO_FACTURA'
        FieldAlias = 'TIPO_FACTURA'
      end
      item
        FieldName = 'NOTAS'
        FieldAlias = 'NOTAS'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'FECHA_ENVIO'
        FieldAlias = 'FECHA_ENVIO'
      end
      item
        FieldName = 'FECHA_HORA'
        FieldAlias = 'FECHA_HORA'
      end
      item
        FieldName = 'VTO_PREVISION'
        FieldAlias = 'VTO_PREVISION'
      end
      item
        FieldName = 'PEDIDO_ESTABLE'
        FieldAlias = 'PEDIDO_ESTABLE'
      end
      item
        FieldName = 'DIA'
        FieldAlias = 'DIA'
      end>
  end
  object QPlantilla: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select p.codigo,p.id_orden,s.detalle_stk,s.presentacion_cantidad' +
        ',sr.detalle_subrubro as MuestraSubRub,p.id_grupo,pg.descripcion ' +
        'as MuestraGrupo,s.fijacion_precio_total as Costo,pr.recargo, (pr' +
        '.precio_gravado+pr.precio_exento) as PrecioNeto, pr.precio,pr.id' +
        '_cab as ListaNro from plantilla_pedido p'
      'left join stock s on s.codigo_stk=p.codigo'
      'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      'left join PLANTILLA_PEDIDO_GRUPOS pg on pg.id=p.id_grupo'
      
        'left join listaprecioespecialart pr on pr.id_cab = :Lista and pr' +
        '.codigoarticulo=p.codigo'
      'order by sr.detalle_subrubro, p.id_orden')
    Left = 676
    Top = 184
    ParamData = <
      item
        Position = 1
        Name = 'LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QPlantillaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QPlantillaID_ORDEN: TIntegerField
      FieldName = 'ID_ORDEN'
      Origin = 'ID_ORDEN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPlantillaDETALLE_STK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object QPlantillaPRESENTACION_CANTIDAD: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PRESENTACION_CANTIDAD'
      Origin = 'PRESENTACION_CANTIDAD'
      ProviderFlags = []
    end
    object QPlantillaMUESTRASUBRUB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUBRUB'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      Size = 45
    end
    object QPlantillaID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      Origin = 'ID_GRUPO'
      Required = True
    end
    object QPlantillaMUESTRAGRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAGRUPO'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 60
    end
    object QPlantillaCOSTO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COSTO'
      Origin = 'FIJACION_PRECIO_TOTAL'
      ProviderFlags = []
    end
    object QPlantillaRECARGO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
      ProviderFlags = []
    end
    object QPlantillaPRECIONETO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PRECIONETO'
      Origin = 'PRECIONETO'
      ProviderFlags = []
    end
    object QPlantillaPRECIO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      ProviderFlags = []
    end
    object QPlantillaLISTANRO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'LISTANRO'
      Origin = 'ID_CAB'
      ProviderFlags = []
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 184
    Top = 128
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clMenuHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object JvFormStorage1: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    StoredValues = <>
    Left = 212
    Top = 288
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    SubStorages = <>
    Left = 216
    Top = 248
  end
  object DSPrevision: TDataSource
    DataSet = DatosPedidos.CDSPrevision
    Left = 452
    Top = 464
  end
  object QGrupos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select g.* from  plantilla_pedido_grupos g order by g.orden')
    Left = 660
    Top = 120
    object QGruposID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QGruposORDEN: TIntegerField
      FieldName = 'ORDEN'
      Origin = 'ORDEN'
      Required = True
    end
    object QGruposDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 60
    end
  end
  object DSPGrupos: TDataSetProvider
    DataSet = QGrupos
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 740
    Top = 128
  end
  object CDSGrupos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPGrupos'
    OnNewRecord = CDSGruposNewRecord
    Left = 804
    Top = 128
    object CDSGruposID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSGruposORDEN: TIntegerField
      DisplayLabel = 'Orden'
      FieldName = 'ORDEN'
      Required = True
    end
    object CDSGruposDESCRIPCION: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DESCRIPCION'
      Size = 60
    end
  end
  object DSGrupos: TDataSource
    DataSet = CDSGrupos
    Left = 876
    Top = 128
  end
  object QNextIDGrupo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(g.id) as NextID from  plantilla_pedido_grupos g')
    Left = 524
    Top = 224
    object QNextIDGrupoNEXTID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NEXTID'
      Origin = 'NEXTID'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object spABGrupo: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'AB_PLANTILLA_GRUPOS'
    Left = 636
    Top = 536
    ParamData = <
      item
        Position = 1
        Name = 'OPERACION'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 2
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'DESCRIPCION'
        DataType = ftString
        ParamType = ptInput
        Size = 60
      end
      item
        Position = 4
        Name = 'ORDEN'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 52
    Top = 296
    object Borrar1: TMenuItem
      Action = Borrar
    end
  end
  object ImageList1: TImageList
    Left = 220
    Top = 360
    Bitmap = {
      494C010102000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002A140C97512916C30100000F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002A130CA0C7874BFFCC8842FF4E2510C90100
      000F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A6F79002E5769002E57
      69002E5769002E5769002E5769002E5769002E5769002E5769002E5769002E57
      69002E5769002E576900ADADAD00000000000000000000000000000000000000
      000000000000000000002A130BA0C5874AFFECA45BFFEDA55CFFA76929FF5128
      14C90100000F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003662750069ACC90069AC
      C90069ACC90069ACC90069ACC90069ACC90069ACC90069ACC90069ACC90069AC
      C90069ACC90069ACC90000000000000000000000000000000000000000000000
      0000000000002A130CA0C6884CFFEDA55CFFECA45BFFEDA65DFFD8944FFFAA70
      35FF522A16C90100000F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000427287006EB3D0006EB3
      D0006EB3D0006EB3D0006EB3D0006EB3D0006EB3D0006EB3D0006EB3D0006EB3
      D0006EB3D0006EB3D000CDD8DC00000000000000000000000000000000000000
      00002A120BA0C88B51FFEFAB66FFEEA964FFEEA862FFEFA861FFF1AA62FFBE82
      46FFBF8952FF542C19C90100000F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004F859B0073B9D90073B9
      D90073B9D90073B9D90073B9D90073B9D90073B9D90073B9D90073B9D90073B9
      D90073B9D90073B9D900B6C4CB00000000000000000000000000000000002A13
      0BA0C88F58FFF0B373FFEFB172FFF0B170FFF1B06DFFF2AE6AFFF2AD68FFE4A1
      5CFFC5915DFFCF9C6AFF572E1BCA0100000F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005C96B00078C1E10078C1
      E10078C1E10078C1E10078C1E10078C1E10078C1E10078C1E10078C1E10078C1
      E10078C1E10078C1E1009CB2BB000000000000000000000000002A120BA0C893
      5FFFF0BB82FFEFBB81FFF0BB80FFF2BA7EFFF3B87AFFF4B576FFF5B370FFF7B2
      6DFFD0975CFFDBAB7BFFDFAF7EFF4D2616C70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000068A9C6007DC8E9007DC8
      E9007DC8E9007DC8E9007DC8E9007DC8E9007DC8E9007DC8E9007DC8E9007DC8
      E9007DC8E9007DC8E90087A2AE0000000000000000012A120BA0C89765FFF0C3
      8DFFEFC390FFF0C591FFF2C490FFF3C38DFFF4C187FFF6BD81FFF7B97AFFF7B6
      74FFE9A865FFDEAF80FFA47757F60E0402480000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000075BBD80082CFF00082CF
      F00082CFF00082CFF00082CFF00082CFF00082CFF00082CFF00082CFF00082CF
      F00082CFF00082CFF0007093A10000000000130A065AC89867FFF0C895FFEFCB
      9BFFF0CEA0FFF2CFA2FFF3CFA1FFF4CD9BFFF6CA95FFF7C58DFFF8C084FFFABD
      7DFFE5A96CFFA27454F60B02013C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000082CDEC0087D7F70087D7
      F70087D7F70087D7F70087D7F70087D7F70087D7F70087D7F70087D7F70087D7
      F70087D7F70087D7F7005A829200000000000C050444DBB791FFEFCEA1FFF0D4
      ABFFF2D8B1FFF3D9B2FFF4D8B0FFF6D6AAFFF7D2A2FFF8CC98FFFAC78FFFE6B0
      76FFA27353F60B02013C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007BA3B400C6EFFD00C6EF
      FD00C6EFFD00C6EFFD00C6EFFD00C6EFFD00C6EFFD00C6EFFD00C6EFFD00C6EF
      FD00C6EFFD00B9E3F100A1B5BE0000000000000000015E3F33C3F9E8C3FFF1DD
      B8FFF3E2BFFFF4E3C0FFF6E2BEFFF7DDB6FFF9D8ADFFFAD3A3FFE6B681FFA273
      52F60B02013C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AAC1CA00629EB70063A1
      BA0063A1BA0063A1BA0063A1BA0063A1BA0063A1BA0063A1BA0063A1BA0063A1
      BA0063A1BA00629EB70000000000000000000000000006010035CBBBA6FDF9F0
      D4FFF4EACBFFF6EBCDFFF7E8C9FFF5E0BBFFF4D5ABFFE3BA8AFFCE9D71FF2309
      067C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005785980079C3
      E30079C3E30079C3E30076BDDC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000462921A7FCFB
      EAFFFAF6E2FFF7EFD6FFF6EBCDFFD5AC7EFFE2B385FFE4B689FFE5B88AFF3517
      0D9A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D3DFE4005785
      98005785980057859800AAC1CA00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000002000020B6A3
      97F9FFFFEFFFF8F3E0FFD7AE81FFE1B384FFE5B88BFFE6B88CFF593224C20000
      000A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002916
      128EF4EFE0FF7B5A49E2895D44E6EBBD8FFFE6B88CFF593224C20000000A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000E361B1496020000240200002758382AAD482A1EA00000000A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFF1F00000000FFFFFE0F00000000
      8001FC07000000008003F803000000008001F001000000008001E00000000000
      8001C00000000000800100000000000080010001000000008001000300000000
      80010007000000008003800F00000000C1FFC00F00000000C1FFC00F00000000
      FFFFE01F00000000FFFFE03F0000000000000000000000000000000000000000
      000000000000}
  end
  object spGeneraPedido: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'GENERAR_CABECERA_PEDIDO'
    Left = 696
    Top = 393
    ParamData = <
      item
        Position = 1
        Name = 'IDCAB'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'FECHA_HORA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'FECHA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object PopupMenu2: TPopupMenu
    Left = 56
    Top = 425
    object OrdenarporNrodeOrden1: TMenuItem
      Caption = 'Ordenar por Nro de Orden'
      OnClick = OrdenarporNrodeOrden1Click
    end
  end
  object PopupMenu3: TPopupMenu
    OnPopup = PopupMenu3Popup
    Left = 72
    Top = 484
    object OcultarGrupos1: TMenuItem
      Caption = 'Ocultar Grupos'
      OnClick = OcultarGrupos1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
  end
  object QRecepcion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      ' select en.id_det,en.id_cab,fc.fechavta as MuestraFecha,'
      
        '        fc.tipocpbte as MuestraTipoCpbte,fc.nrocpbte as MuestraN' +
        'roCpbte,'
      '        en.codigo,fd.detalle as MuestraDetalle,'
      
        '        en.cantidad,en.cantidad_recibida,en.diferencia,fc.tipocp' +
        'bte||fc.nrocpbte as MuestraNroCompleto,'
      
        '        fc.observacion1,fc.observacion2,pd.cantidad_pedida from ' +
        'fcvtacab fc'
      ' left join fcvtadet_entregas en on en.id_cab=fc.id_fc'
      ' left join fcvtadet fd on fd.id=en.id_det'
      
        ' left join plantilla_pedido_cab pc on pc.id_factura=fc.id_fc and' +
        ' pc.tipo_factura=fc.tipocpbte'
      
        ' left join plantilla_pedido_det pd on pd.idcab=pc.id and pd.codi' +
        'go=en.codigo'
      
        ' where fc.codigo=:cliente and  (fc.fechavta between :desde and :' +
        'hasta) and (fc.tipocpbte in ('#39'FC'#39','#39'FO'#39','#39'TK'#39'))')
    Left = 180
    Top = 544
    ParamData = <
      item
        Position = 1
        Name = 'CLIENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 2
        Name = 'DESDE'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'HASTA'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QRecepcionID_DET: TIntegerField
      FieldName = 'ID_DET'
      Origin = 'ID_DET'
    end
    object QRecepcionID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
    end
    object QRecepcionMUESTRAFECHA: TSQLTimeStampField
      FieldName = 'MUESTRAFECHA'
      Origin = 'MUESTRAFECHA'
      Required = True
    end
    object QRecepcionMUESTRATIPOCPBTE: TStringField
      FieldName = 'MUESTRATIPOCPBTE'
      Origin = 'MUESTRATIPOCPBTE'
      Required = True
      Size = 2
    end
    object QRecepcionMUESTRANROCPBTE: TStringField
      FieldName = 'MUESTRANROCPBTE'
      Origin = 'MUESTRANROCPBTE'
      Size = 13
    end
    object QRecepcionCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object QRecepcionMUESTRADETALLE: TStringField
      FieldName = 'MUESTRADETALLE'
      Origin = 'MUESTRADETALLE'
      Size = 45
    end
    object QRecepcionCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QRecepcionCANTIDAD_RECIBIDA: TFloatField
      FieldName = 'CANTIDAD_RECIBIDA'
      Origin = 'CANTIDAD_RECIBIDA'
    end
    object QRecepcionDIFERENCIA: TFloatField
      FieldName = 'DIFERENCIA'
      Origin = 'DIFERENCIA'
    end
    object QRecepcionMUESTRANROCOMPLETO: TStringField
      FieldName = 'MUESTRANROCOMPLETO'
      Origin = 'MUESTRANROCOMPLETO'
      Size = 15
    end
    object QRecepcionOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 60
    end
    object QRecepcionOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      Size = 60
    end
    object QRecepcionCANTIDAD_PEDIDA: TFloatField
      FieldName = 'CANTIDAD_PEDIDA'
      Origin = 'CANTIDAD_PEDIDA'
      ProviderFlags = []
    end
  end
  object CDSRecepcion: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftDate
        Name = 'DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'HASTA'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRecepcion'
    AfterPost = CDSRecepcionAfterPost
    Left = 332
    Top = 544
    object CDSRecepcionID_DET: TIntegerField
      FieldName = 'ID_DET'
      Origin = 'ID_DET'
    end
    object CDSRecepcionID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
    end
    object CDSRecepcionMUESTRAFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'MUESTRAFECHA'
      Origin = 'MUESTRAFECHA'
      Required = True
    end
    object CDSRecepcionMUESTRATIPOCPBTE: TStringField
      DisplayLabel = 'Tp.'
      FieldName = 'MUESTRATIPOCPBTE'
      Origin = 'MUESTRATIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSRecepcionMUESTRANROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'MUESTRANROCPBTE'
      Origin = 'MUESTRANROCPBTE'
      Size = 13
    end
    object CDSRecepcionCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object CDSRecepcionMUESTRADETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'MUESTRADETALLE'
      Origin = 'MUESTRADETALLE'
      Size = 45
    end
    object CDSRecepcionCANTIDAD: TFloatField
      DisplayLabel = 'Cant.Enviada'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = '0.00'
    end
    object CDSRecepcionCANTIDAD_RECIBIDA: TFloatField
      DisplayLabel = 'Cant.Recib.'
      FieldName = 'CANTIDAD_RECIBIDA'
      Origin = 'CANTIDAD_RECIBIDA'
      OnSetText = CDSRecepcionCANTIDAD_RECIBIDASetText
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = '0.00'
    end
    object CDSRecepcionDIFERENCIA: TFloatField
      DisplayLabel = 'Diferencia'
      FieldName = 'DIFERENCIA'
      Origin = 'DIFERENCIA'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = '0.00'
    end
    object CDSRecepcionMUESTRANROCOMPLETO: TStringField
      FieldName = 'MUESTRANROCOMPLETO'
      Origin = 'MUESTRANROCOMPLETO'
      Size = 15
    end
    object CDSRecepcionOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object CDSRecepcionOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object CDSRecepcionCANTIDAD_PEDIDA: TFloatField
      DisplayLabel = 'Cant.Pedida'
      FieldName = 'CANTIDAD_PEDIDA'
      ProviderFlags = []
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSPRecepcion: TDataSetProvider
    DataSet = QRecepcion
    Options = []
    Left = 252
    Top = 544
  end
  object DSRecepcion: TDataSource
    DataSet = CDSRecepcion
    Left = 404
    Top = 544
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 40
    Top = 56
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object spCantRecibida: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CANTIDAD_RECIBIDA'
    Left = 548
    Top = 536
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'CANTIDAD'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end>
  end
  object popMenuFactura: TPopupMenu
    Left = 52
    Top = 376
    object OmitirFacturaPordefecto1: TMenuItem
      Caption = 'Omitir Factura Por defecto'
      OnClick = OmitirFacturaPordefecto1Click
    end
  end
  object PopupCopy: TPopupMenu
    Left = 344
    Top = 476
    object CopyAll: TMenuItem
      Caption = 'Copy All'
      OnClick = CopyAllClick
    end
  end
  object pmOrdenBusqueda: TPopupMenu
    Left = 604
    Top = 399
    object OrdenPorNro1: TMenuItem
      Caption = 'Orden Por Nro Pedido'
      Checked = True
      OnClick = OrdenPorNro1Click
    end
    object OrdenClienteNroPedido1: TMenuItem
      Caption = 'Orden Cliente - Nro Pedido'
      OnClick = OrdenClienteNroPedido1Click
    end
    object OrdenClienteFechaAsc1: TMenuItem
      Caption = 'Orden Cliente Fecha Asc'
      OnClick = OrdenClienteFechaAsc1Click
    end
  end
  object QSector: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.* from  plantilla_pedido_sector s')
    Left = 676
    Top = 488
    object QSectorID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QSectorDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
  end
  object DSPSector: TDataSetProvider
    DataSet = QSector
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 740
    Top = 488
  end
  object CDSSector: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSector'
    AfterPost = CDSSectorAfterPost
    AfterDelete = CDSSectorAfterDelete
    OnNewRecord = CDSSectorNewRecord
    Left = 804
    Top = 488
    object CDSSectorID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSSectorDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 50
    end
  end
  object DSSector: TDataSource
    DataSet = CDSSector
    Left = 876
    Top = 480
  end
  object DataToXLS: TDataToXLS
    DataSet = CDSPlantilla
    Columns = <
      item
        DataField = 'CODIGO'
        Title = 'Codigo'
      end
      item
        DataField = 'DETALLE_STK'
        Title = 'Detalle'
      end
      item
        DataField = 'MUESTRASUBRUB'
        Title = 'Sub Rubro'
      end
      item
        DataField = 'PRESENTACION_CANTIDAD'
        Title = 'Present.'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'ID_GRUPO'
        Title = 'Grupo'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'MUESTRAGRUPO'
        Title = 'MUESTRAGRUPO'
      end
      item
        DataField = 'COSTO'
        Title = 'COSTO'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'RECARGO'
        Title = 'RECARGO'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'PRECIONETO'
        Title = 'PRECIONETO'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'PRECIO'
        Title = 'PRECIO'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'LISTANRO'
        Title = 'LISTANRO'
        Alignment = taRightJustify
        DataType = ctDouble
      end>
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clWindowText
    Title.Font.Height = -13
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold]
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWindowText
    Header.Font.Height = -13
    Header.Font.Name = 'Arial'
    Header.Font.Style = [fsBold]
    Left = 100
    Top = 160
  end
  object PopupMenu4: TPopupMenu
    Left = 52
    Top = 552
    object ExportarPlantillaXLS1: TMenuItem
      Action = ExportarPlantillaXLS
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 76
    Top = 224
  end
  object QListaCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select id,nombre from listaprecioespecialcab')
    Left = 714
    Top = 560
  end
  object DSPListaCab: TDataSetProvider
    DataSet = QListaCab
    Options = []
    Left = 786
    Top = 560
  end
  object CDSListaCab: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPListaCab'
    Left = 850
    Top = 568
    object CDSListaCabID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSListaCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object DSListaCab: TDataSource
    DataSet = CDSListaCab
    Left = 906
    Top = 552
  end
end
