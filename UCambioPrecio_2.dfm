inherited FormCambioPrecio_2: TFormCambioPrecio_2
  Left = 146
  Top = 95
  Caption = 'Cambio de Precios'
  ClientHeight = 610
  ClientWidth = 1214
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1232
  ExplicitHeight = 651
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1214
    Height = 557
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1332
    ExplicitHeight = 703
    DesignSize = (
      1214
      557)
    object Label1: TLabel
      Left = 8
      Top = 502
      Width = 30
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Marca'
      ExplicitTop = 634
    end
    object Label2: TLabel
      Left = 215
      Top = 502
      Width = 29
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Rubro'
      ExplicitTop = 634
    end
    object Label3: TLabel
      Left = 517
      Top = 502
      Width = 51
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Sub Rubro'
      ExplicitTop = 634
    end
    object JvDBStatusLabel1: TJvDBStatusLabel
      Left = 1097
      Top = 436
      Width = 96
      Height = 13
      DataSource = DSBase
      Style = lsRecordNo
      Anchors = [akRight, akBottom]
      Transparent = True
      ExplicitLeft = 1125
      ExplicitTop = 568
    end
    object img1: TImage
      Left = 8
      Top = 434
      Width = 30
      Height = 30
      Anchors = [akLeft, akBottom]
      Picture.Data = {
        07544269746D6170F6060000424DF60600000000000036000000280000001800
        0000180000000100180000000000C0060000120B0000120B0000000000000000
        0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFABA7A68C8888C09596FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFACA8A786868A2A669A4B7B
        A0C09494FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9B9D9D
        5492C22E99FF1B7CCB557A97C19595FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF3DADFF57C1FF4DB1FF3196FA197CC9537997C19495FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF41ABFF5DBFFE4DAFFF3196FA197BC85A
        7A97C29594FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF42ABFE5CC0
        FE4DAFFF3096FA197AC8587A96C19494FF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF42ACFE5CC0FE4DAFFF2E94FA187AC75F7C97BB9396FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF44ADFE5CBFFE4DB0FF2D94F81979C6
        437397FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF46AEFE5C
        BFFE4CB0FF3F97ED577B94FF00FFFF00FFFF00FFAE837EAE837EAE837EAE837E
        AE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FF46AFFE66C5FFA3CCF1BEB3AB867170A9807AAE837EE5D8BDFF
        FFE2FFFFE2FFFFE0EEDFC6AE837EAE837EFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDCBFB8C69E8ED8BD
        A3FFFFDDFFFFDDFFFFDBFFFFDAFFFFDBFFFFDDFFFFE9DEC9B7AE837EFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        AE857FDEC0A5FFF3C1FCF1C8FFFFDAFFFFD9FFFFDAFFFFE0FFFFE4FFFFEFFFFF
        FFDDCAC8AE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFAE837EFFEFB9F5D4A5FBF0C6FFFFDBFFFFDAFFFFDDFFFFEB
        FFFFF5FFFFFBFFFFFDFFFFFEAE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFAE837EECD5B4F8D6A2F2C997FCEDC4FFFFDBFF
        FFDAFFFFE0FFFFF0FFFFFEFFFFFDFFFFF5FFFFEBE1D3B8AE837EFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837EFFF3BFF4CB95F0C1
        8EF9E5BAFEFDD7FFFFDCFFFFDFFFFFECFFFFF8FFFFF8FFFFECFFFFE0FFFFE3AE
        837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837E
        FFF4C0F3C994EEB884F5D5A5FDF3CBFFFFDCFFFFDDFFFFE2FFFFE8FFFFE9FFFF
        E2FFFFDDFFFFE3AE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFAE837EFFF5C3F6D19CEEB27DF1C593F7E0B3FDF7D0FFFFDCFFFFDD
        FFFFDDFFFFDDFFFFDBFFFFDAFFFFE1AE837EFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFAE837EECD5B4FDE6B2F3C996F2C792F3D09CF8
        E3B5FCF5CDFFFFDAFFFFDCFFFFDBFFFFDBFFFFDCE2D3B8AE837EFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837EFFFED0FCF0
        D6F8E0BEF4CF9DF3CD9AF6D8AAFBEABFFDF4CBFCF7CFFEF8D1FFFFDEAE837EFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        AE837EE0CAB2FFFFFFFEF9F2F8E1BEF1C48DEEBA85F1C491F4D1A1F8DEB0FFF7
        C6DDC7AEAE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFAE837ED9C6C0FFFFFFFFF7D7F8DAA6F4CB95F5CD99
        F9D9A6FFF1BBDEC2A9AE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837EAE837EE8D5B4FF
        F9C5FFF5C0FFF5C2EED8B7AE837EAE837EFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFAE837EAE837EAE837EAE837EAE837EFF00FFFF00FFFF00FFFF00FFFF
        00FF}
      Transparent = True
      ExplicitTop = 566
    end
    object spMultiplicar: TSpeedButton
      Left = 936
      Top = 521
      Width = 23
      Height = 22
      Hint = 'Multiplicar'
      Anchors = [akLeft, akBottom]
      Caption = 'X'
      ParentShowHint = False
      ShowHint = True
      OnClick = spMultiplicarClick
      ExplicitTop = 653
    end
    object Label7: TLabel
      Left = 819
      Top = 489
      Width = 54
      Height = 26
      Anchors = [akLeft, akBottom]
      Caption = 'Apl. a los '#13#10'en Moneda'
      ExplicitTop = 621
    end
    object Label5: TLabel
      Left = 599
      Top = 470
      Width = 66
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Filtra x Codigo'
      ExplicitTop = 602
    end
    object Label8: TLabel
      Left = 599
      Top = 497
      Width = 70
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Filtra x Cod.Alt.'
      ExplicitTop = 629
    end
    object Label9: TLabel
      Left = 44
      Top = 461
      Width = 148
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Rango de Codigo desde/Hasta'
      ExplicitTop = 593
    end
    object spPrecioFijo: TSpeedButton
      Left = 1053
      Top = 521
      Width = 23
      Height = 22
      Hint = 'Aplicar Precio'
      Anchors = [akLeft, akBottom]
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000002000000070000000C0000001000000012000000110000
        000E000000080000000200000000000000000000000000000000000000000000
        000100000004000101120D2A1D79184E36C6216B4BFF216B4BFF216C4BFF1A53
        3AD20F2F21840001011500000005000000010000000000000000000000000000
        0005050F0A351C5B40DC24805CFF29AC7EFF2CC592FF2DC894FF2DC693FF2AAE
        80FF258560FF1A563DD405110C3D00000007000000010000000000000003040E
        0A31206548ED299D74FF2FC896FF2EC996FF56D4ACFF68DAB5FF3BCD9DFF30C9
        96FF32CA99FF2BA479FF227050F805110C3D00000005000000000000000A1A57
        3DD02EA57CFF33CA99FF2EC896FF4CD2A8FF20835CFF00673BFF45BE96FF31CB
        99FF31CB98FF34CC9CFF31AD83FF1B5C41D300010113000000020B23185E2E8A
        66FF3BCD9EFF30CA97FF4BD3A9FF349571FF87AF9DFFB1CFC1FF238A60FF45D3
        A8FF36CF9FFF33CD9BFF3ED0A3FF319470FF0F32237F00000007184D37B63DB3
        8CFF39CD9FFF4BD5A9FF43A382FF699782FFF8F1EEFFF9F3EEFF357F5DFF56C4
        A1FF43D5A8FF3ED3A4FF3CD1A4FF41BC95FF1B5C43CD0000000B1C6446DF4BCA
        A4FF44D2A8FF4FB392FF4E826AFFF0E9E6FFC0C3B5FFEFE3DDFFCEDDD4FF1B75
        4FFF60DCB8FF48D8ACFF47D6AAFF51D4ACFF247A58F80000000E217050F266D9
        B8FF46D3A8FF0B6741FFD2D2CBFF6A8F77FF116B43FF73967EFFF1E8E3FF72A2
        8BFF46A685FF5EDFBAFF4CD9AFFF6BE2C2FF278460FF020604191E684ADC78D9
        BEFF52DAB1FF3DBA92FF096941FF2F9C76FF57DEB8FF2D9973FF73967EFFF0EA
        E7FF4F886CFF5ABB9AFF5BDEB9FF7FE2C7FF27835FF80000000C19523BAB77C8
        B0FF62E0BCFF56DDB7FF59DFBAFF5CE1BDFF5EE2BEFF5FE4C1FF288C67FF698E
        76FFE6E1DCFF176B47FF5FD8B4FF83D5BDFF1E674CC60000000909201747439C
        7BFF95ECD6FF5ADFBAFF5EE2BDFF61E4BFFF64E6C1FF67E6C5FF67E8C7FF39A1
        7EFF1F6D4AFF288B64FF98EFD9FF4DAC8CFF1036286D00000004000000041C5F
        46B578C6ADFF9AEED9FF65E5C0FF64E7C3FF69E7C6FF6BE8C8FF6CE9C9FF6BEA
        C9FF5ED6B6FF97EDD7FF86D3BBFF237759D20102010C0000000100000001030A
        0718247B5BDA70C1A8FFB5F2E3FF98F0DAFF85EDD4FF75EBCEFF88EFD6FF9CF2
        DDFFBAF4E7FF78CDB3FF2A906DEA0615102E0000000200000000000000000000
        0001030A07171E694FB844AB87FF85D2BBFFA8E6D6FFC5F4EBFFABE9D8FF89D8
        C1FF4BB692FF237F60CB05130E27000000030000000000000000000000000000
        000000000001000000030A241B411B60489D258464CF2C9D77EE258867CF1F71
        56B00E3226560000000600000002000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      OnClick = spPrecioFijoClick
      ExplicitTop = 653
    end
    object spDividir: TSpeedButton
      Left = 960
      Top = 521
      Width = 23
      Height = 22
      Hint = 'Dividir'
      Anchors = [akLeft, akBottom]
      Caption = '/'
      ParentShowHint = False
      ShowHint = True
      OnClick = spMultiplicarClick
      ExplicitTop = 653
    end
    object DBText2: TDBText
      Left = 279
      Top = 479
      Width = 76
      Height = 12
      Anchors = [akLeft, akBottom]
      DataField = 'CODIGOARTICULO'
      DataSource = DSBase
      ExplicitTop = 625
    end
    object Label11: TLabel
      Left = 671
      Top = 436
      Width = 60
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Proveedores'
      ExplicitTop = 577
    end
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 1214
      Height = 49
      Align = alTop
      TabOrder = 5
      ExplicitWidth = 1332
      object Label4: TLabel
        Left = 682
        Top = 4
        Width = 155
        Height = 13
        Caption = 'Lista de Precio por defecto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbAvisoPrecio: TLabel
        Left = 429
        Top = 6
        Width = 223
        Height = 26
        Cursor = crHandPoint
        Caption = 'Configurado No Cambiar Precio de Vta '#13#10'con Cambio de Costo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Visible = False
        OnClick = lbAvisoPrecioClick
      end
      object Label10: TLabel
        Left = 999
        Top = 4
        Width = 180
        Height = 13
        Caption = 'Modificacion Forzada de Precio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 1053
        Top = 23
        Width = 65
        Height = 17
        DataField = 'MUESTRAACTUALIZA'
        DataSource = DSListaPrecioCab
      end
      object dbcListas: TJvDBLookupCombo
        Left = 680
        Top = 20
        Width = 302
        Height = 20
        DisplayEmpty = 'Sin Lista Seleccionada'
        EmptyValue = '-1'
        LookupField = 'ID'
        LookupDisplay = 'NOMBRE'
        LookupSource = DSListaPrecioCab
        TabOrder = 0
        OnClick = BuscarExecute
      end
      object chActulizaPrecioVtaOtrasListas: TCheckBox
        Left = 9
        Top = 26
        Width = 325
        Height = 17
        Hint = 'Actualiza el costo de las demas listas'
        BiDiMode = bdRightToLeft
        Caption = 'Recalcular Precio de Vta de las Otras listas'
        Checked = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 1
      end
      object chSincronizaPrecioNetoCosto: TCheckBox
        Left = 9
        Top = 3
        Width = 260
        Height = 17
        Hint = 'Actualiza el costo de las demas listas'
        BiDiMode = bdRightToLeft
        Caption = 'Sincronizar Precio Neto con Costo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
    end
    object dbcMarca: TJvDBLookupCombo
      Left = 8
      Top = 521
      Width = 201
      Height = 21
      DisplayEmpty = 'Todas las Marcas'
      EmptyValue = '****'
      Anchors = [akLeft, akBottom]
      LookupField = 'MARCA_STK'
      LookupDisplay = 'DESCRIPCION_MARCA'
      LookupSource = DSMarca
      TabOrder = 0
      OnClick = BuscarExecute
      ExplicitTop = 667
    end
    object dbcRubro: TJvDBLookupCombo
      Left = 216
      Top = 521
      Width = 295
      Height = 21
      DisplayEmpty = 'Todos los Rubros'
      EmptyValue = '***'
      Anchors = [akLeft, akBottom]
      LookupField = 'CODIGO_RUBRO'
      LookupDisplay = 'DETALLE_RUBRO'
      LookupSource = DSRubro
      TabOrder = 1
      OnClick = dbcRubroClick
      ExplicitTop = 667
    end
    object dbcSubRubro: TJvDBLookupCombo
      Left = 517
      Top = 521
      Width = 297
      Height = 21
      DisplayEmpty = 'Todos los Subrubros'
      EmptyValue = '*****'
      Anchors = [akLeft, akBottom]
      LookupField = 'CODIGO_SUBRUBRO'
      LookupDisplay = 'DETALLE_SUBRUBRO'
      LookupSource = DSSubRubro
      TabOrder = 2
      OnClick = BuscarExecute
      ExplicitTop = 667
    end
    object dbfDetalle: TJvDBFindEdit
      Left = 44
      Top = 436
      Width = 370
      Height = 19
      Anchors = [akLeft, akBottom]
      CharCase = ecUpperCase
      Flat = True
      ParentFlat = False
      TabOrder = 3
      Text = ''
      OnKeyDown = dbfDetalleKeyDown
      DataField = 'DETALLE_STK'
      DataSource = DSBase
      FindStyle = fsFilter
      FindMode = fmAnyPos
      ExplicitTop = 582
    end
    object chbFiltra: TCheckBox
      Left = 414
      Top = 478
      Width = 97
      Height = 17
      Anchors = [akLeft, akBottom]
      BiDiMode = bdRightToLeft
      Caption = 'Filtra Resultado'
      Checked = True
      ParentBiDiMode = False
      State = cbChecked
      TabOrder = 6
      OnClick = chbModoClick
      ExplicitTop = 624
    end
    object chbModo: TCheckBox
      Left = 420
      Top = 459
      Width = 91
      Height = 17
      Anchors = [akLeft, akBottom]
      BiDiMode = bdRightToLeft
      Caption = 'Comienza Con'
      ParentBiDiMode = False
      TabOrder = 7
      OnClick = chbModoClick
      ExplicitTop = 605
    end
    object chConIVA: TCheckBox
      Left = 380
      Top = 498
      Width = 131
      Height = 17
      Hint = 'Para ingresar el costo Gravado Con Iva, Tildar'
      Anchors = [akLeft, akBottom]
      BiDiMode = bdRightToLeft
      Caption = 'Ingresar Costo Con Iva'
      ParentBiDiMode = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      ExplicitTop = 644
    end
    object edFactor: TJvCalcEdit
      Left = 882
      Top = 521
      Width = 48
      Height = 21
      DisplayFormat = ',0.000'
      Anchors = [akLeft, akBottom]
      ShowButton = False
      TabOrder = 9
      DecimalPlacesAlwaysShown = False
    end
    object dbcMoneda: TJvDBLookupCombo
      Left = 820
      Top = 521
      Width = 53
      Height = 21
      Hint = 
        'indica que el coeficiente se aplica a los expresado en la moneda' +
        ' indicada'
      Anchors = [akLeft, akBottom]
      LookupField = 'SIGNO'
      LookupDisplay = 'SIGNO'
      LookupSource = DSMoneda
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      ExplicitTop = 667
    end
    object rgAplicaCoef: TRadioGroup
      Left = 879
      Top = 462
      Width = 97
      Height = 54
      Anchors = [akLeft, akBottom]
      Caption = 'Aplica Coeficiente'
      ItemIndex = 0
      Items.Strings = (
        'al Costo'
        'al P.de Vta')
      TabOrder = 11
      ExplicitTop = 608
    end
    object JvDBFindEdit1: TJvDBFindEdit
      Left = 671
      Top = 467
      Width = 121
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 12
      Text = ''
      TextHint = 'Codigo'
      DataField = 'CODIGO_STK'
      DataSource = DSBase
      FindStyle = fsFilter
      FindMode = fmAnyPos
      ExplicitTop = 613
    end
    object cxGConsulta: TcxGrid
      Left = 0
      Top = 49
      Width = 1214
      Height = 381
      Cursor = crHandPoint
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      DragCursor = crDefault
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      ExplicitWidth = 1332
      ExplicitHeight = 527
      object cxGConsultaDBTableView1: TcxGridDBTableView
        PopupMenu = pm1
        OnDblClick = cxGConsultaDBTableView1DblClick
        OnCustomDrawCell = cxGConsultaDBTableView1CustomDrawCell
        DataController.DataSource = DSBase
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoImmediatePost]
        DataController.Summary.SummaryGroups = <
          item
            SummaryItems = <
              item
                Column = cxGConsultaDBTableView1FIJACION_PRECIO_EXENTO
              end
              item
                Column = cxGConsultaDBTableView1FIJACION_PRECIO_GRAVADO
              end>
          end
          item
            SummaryItems = <
              item
                Column = cxGConsultaDBTableView1NuevoFPExento
              end
              item
                Column = cxGConsultaDBTableView1NuevoFPGravado
              end>
          end>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 35
        Styles.OnGetContentStyle = cxGConsultaDBTableView1StylesGetContentStyle
        object cxGConsultaDBTableView1MOD: TcxGridDBColumn
          DataBinding.FieldName = 'MODIFICADO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 26
        end
        object cxGConsultaDBTableView1CODIGO_STK: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO_STK'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 75
        end
        object cxGConsultaDBTableView1REEMPLAZO_STK: TcxGridDBColumn
          DataBinding.FieldName = 'REEMPLAZO_STK'
          HeaderAlignmentHorz = taCenter
        end
        object cxGConsultaDBTableView1DETALLE_STK: TcxGridDBColumn
          DataBinding.FieldName = 'DETALLE_STK'
          HeaderAlignmentHorz = taCenter
        end
        object cxGConsultaDBTableView1MUESTRAMARCA: TcxGridDBColumn
          DataBinding.FieldName = 'MUESTRAMARCA'
          HeaderAlignmentHorz = taCenter
        end
        object cxGConsultaDBTableView1MUESTRAMONEDA: TcxGridDBColumn
          DataBinding.FieldName = 'MUESTRAMONEDA'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Options.AutoWidthSizable = False
        end
        object cxGConsultaDBTableView1FIJACION_PRECIO_EXENTO: TcxGridDBColumn
          DataBinding.FieldName = 'FIJACION_PRECIO_EXENTO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Options.AutoWidthSizable = False
          Width = 80
        end
        object cxGConsultaDBTableView1FIJACION_PRECIO_GRAVADO: TcxGridDBColumn
          DataBinding.FieldName = 'FIJACION_PRECIO_GRAVADO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Options.AutoWidthSizable = False
          Width = 80
        end
        object cxGConsultaDBTableView1NuevoFPExento: TcxGridDBColumn
          DataBinding.FieldName = 'NuevoFPExento'
          HeaderAlignmentHorz = taCenter
          Options.AutoWidthSizable = False
          Width = 80
        end
        object cxGConsultaDBTableView1NuevoFPGravado: TcxGridDBColumn
          DataBinding.FieldName = 'NuevoFPGravado'
          HeaderAlignmentHorz = taCenter
          Options.AutoWidthSizable = False
          Width = 100
        end
        object cxGConsultaDBTableView1RECARGO: TcxGridDBColumn
          DataBinding.FieldName = 'RECARGO'
          HeaderAlignmentHorz = taCenter
          Options.AutoWidthSizable = False
          Width = 51
        end
        object cxGConsultaDBTableView1TASA: TcxGridDBColumn
          DataBinding.FieldName = 'TASA'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Options.AutoWidthSizable = False
          Width = 54
        end
        object cxGConsultaDBTableView1PRECIO_EXENTO: TcxGridDBColumn
          DataBinding.FieldName = 'PRECIO_EXENTO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Options.AutoWidthSizable = False
          Width = 69
        end
        object cxGConsultaDBTableView1PRECIO_GRAVADO: TcxGridDBColumn
          DataBinding.FieldName = 'PRECIO_GRAVADO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Options.AutoWidthSizable = False
        end
        object cxGConsultaDBTableView1IVA_IMPORTE: TcxGridDBColumn
          DataBinding.FieldName = 'IVA_IMPORTE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Options.AutoWidthSizable = False
          Width = 63
        end
        object cxGConsultaDBTableView1PRECIO: TcxGridDBColumn
          DataBinding.FieldName = 'PRECIO'
          HeaderAlignmentHorz = taCenter
          Options.AutoWidthSizable = False
        end
      end
      object cxGConsultaLevel1: TcxGridLevel
        GridView = cxGConsultaDBTableView1
      end
    end
    object pnColumnas: TPanel
      Left = 737
      Top = 95
      Width = 222
      Height = 322
      Caption = 'pnColumnas'
      Color = clGradientActiveCaption
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      ParentBackground = False
      TabOrder = 4
      Visible = False
      object JvGradient3: TJvGradient
        Left = 4
        Top = 4
        Width = 214
        Height = 293
        Align = alTop
        Style = grVertical
        EndColor = clBlue
      end
      object SpeedButton1: TSpeedButton
        Left = 187
        Top = 5
        Width = 23
        Height = 22
        Hint = 'Multiplicar'
        Caption = 'X'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      object Label6: TLabel
        Left = 15
        Top = 10
        Width = 69
        Height = 16
        Caption = 'Columnas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object chklstColumnas: TCheckListBox
        Left = 10
        Top = 33
        Width = 203
        Height = 256
        ItemHeight = 17
        TabOrder = 0
        OnClickCheck = chklstColumnasClickCheck
      end
    end
    object JvDBFindEdit2: TJvDBFindEdit
      Left = 671
      Top = 494
      Width = 121
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 14
      Text = ''
      TextHint = 'Codigo'
      DataField = 'REEMPLAZO_STK'
      DataSource = DSBase
      FindStyle = fsFilter
      FindMode = fmAnyPos
      ExplicitTop = 640
    end
    object edDesde: TEdit
      Left = 44
      Top = 476
      Width = 56
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 15
      Text = '00000000'
      TextHint = 'Desde'
      OnExit = edDesdeExit
      ExplicitTop = 622
    end
    object edHasta: TEdit
      Left = 102
      Top = 476
      Width = 56
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 16
      Text = '00000000'
      TextHint = 'Hasta'
      OnExit = edHastaExit
      ExplicitTop = 622
    end
    object chbRangoCodigo: TCheckBox
      Left = 176
      Top = 476
      Width = 93
      Height = 19
      Alignment = taLeftJustify
      Anchors = [akLeft, akBottom]
      BiDiMode = bdRightToLeft
      Caption = 'Filtra Resultado'
      ParentBiDiMode = False
      TabOrder = 17
      OnClick = chbRangoCodigoClick
      ExplicitTop = 622
    end
    object rgAplicaPrecioFijo: TRadioGroup
      Left = 979
      Top = 462
      Width = 103
      Height = 54
      Hint = 
        'Desde aqui se puede asignar un precio unico a todos los articulo' +
        's seleccionados..'
      Anchors = [akLeft, akBottom]
      Caption = 'Aplica Precio '#218'nico'
      ItemIndex = 0
      Items.Strings = (
        'al Costo'
        'al P.de Vta')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 18
      ExplicitTop = 608
    end
    object chConStock: TCheckBox
      Left = 429
      Top = 436
      Width = 182
      Height = 17
      Anchors = [akLeft, akBottom]
      BiDiMode = bdRightToLeft
      Caption = 'Ver Solo Con Existencia de Stock'
      ParentBiDiMode = False
      TabOrder = 19
      OnClick = chConStockClick
      ExplicitTop = 582
    end
    object dbcProveedores: TJvDBLookupCombo
      Left = 747
      Top = 434
      Width = 295
      Height = 21
      DisplayEmpty = 'Todos los Proveedores'
      EmptyValue = '******'
      Anchors = [akLeft, akBottom]
      LookupField = 'CODIGO'
      LookupDisplay = 'NOMBRE'
      LookupSource = DSProveedores_Marca
      TabOrder = 20
      OnClick = dbcProveedoresClick
      ExplicitTop = 580
    end
  end
  inherited ToolBar1: TToolBar
    Top = 557
    Width = 1214
    Align = alBottom
    ButtonHeight = 28
    ExplicitTop = 703
    ExplicitWidth = 1332
    inherited btConfirma: TBitBtn
      Width = 100
      Height = 28
      Caption = '&Aplica Cambios'
      ExplicitWidth = 100
      ExplicitHeight = 28
    end
    inherited btNuevo: TBitBtn
      Left = 102
      Width = 100
      Height = 28
      Visible = False
      ExplicitLeft = 102
      ExplicitWidth = 100
      ExplicitHeight = 28
    end
    inherited btCancelar: TBitBtn
      Left = 202
      Width = 100
      Height = 28
      ExplicitLeft = 202
      ExplicitWidth = 100
      ExplicitHeight = 28
    end
    inherited btModificar: TBitBtn
      Left = 302
      Width = 100
      Height = 28
      Visible = False
      ExplicitLeft = 302
      ExplicitWidth = 100
      ExplicitHeight = 28
    end
    inherited Pr: TSpeedButton
      Left = 402
      Width = 14
      Height = 28
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0001079F000313A9000418AE000419AE000313
        A9000108A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0001049D00041CB1000730C0000734C4000735C5000735C5000734
        C3000731C100041FB30001069E00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000109A100052BC3000735C7000733C2000732C2000732C2000732C2000732
        C2000733C3000735C400062DBE00020CA400FF00FF00FF00FF00FF00FF000104
        9B00052BCA000636D8000431CD000027C400032EC1000732C2000732C2000430
        C1000027BF00042FC1000735C400072EBE0001069E00FF00FF00FF00FF00031A
        BA000537E7000331DD00123DD8006480E0001840CB00002CC100022DC0000F38
        C4006580D9001B43C700052FC1000735C500051FB300FF00FF0001049E000430
        E4000436F100002AE4005070E900FFFFFF00B7C4F1000D36CA00042DC300A2B2
        E800FFFFFF006984DA000026BE000733C3000731C1000108A000020FAF000336
        FA000335F8000232EE000A35E8008CA2F200FFFFFF00B4C2F100A9B8ED00FFFF
        FF00A7B7E900133AC400052FC1000732C2000734C4000313AA000619BC001747
        FE00093AFC000435F8000131F000002BE80091A5F400FFFFFF00FFFFFF00ABBA
        EF00062FC500022DC0000732C2000732C2000736C5000419AE000B1DBE004168
        FE001C49FC000335FB000031F9000531F200A4B5F700FFFFFF00FFFFFF00B9C6
        F2000D36D000002CC6000732C2000732C2000736C5000418AD000613B4005B7C
        FC00486CFD000133FB00113CFB00A1B4FE00FFFFFF00A4B6F80092A7F500FFFF
        FF00B6C4F2001A41D300042FC8000732C4000734C3000212A9000003A0004A6A
        F3008FA6FF001F46FB004C6FFC00FFFFFF00A7B8FE000733F600002AED008CA2
        F600FFFFFF00627FE7000028D0000734CC000730C30000069F00FF00FF001A2F
        CB0099AFFF008BA2FE00214DFB004D71FC000E3DFB000030FB000031F7000636
        F1004C6EF100103CE3000432DB000636D700041CB500FF00FF00FF00FF000004
        A000415EEC00B8C7FF009CAFFD003A5CFC000A3AFB000335FB000335FB000133
        F900052FF2000635EB000537E900052CCD0000049C00FF00FF00FF00FF00FF00
        FF000309A5004260EC00A9BBFF00BDCAFF008EA5FE006483FD005073FC004A6E
        FD003961FD001444F900042CD7000109A200FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000004A0001E32CD005876F600859EFE008BA3FF007994FE005376
        FC00234AF000051EC50001049C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000004A0000917B6001022C3000D1FC2000311
        B40001059F00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Visible = False
      ExplicitLeft = 402
      ExplicitWidth = 14
      ExplicitHeight = 28
    end
    inherited btBuscar: TBitBtn
      Left = 416
      Width = 100
      Height = 28
      Caption = '&Buscar Todos'
      ExplicitLeft = 416
      ExplicitWidth = 100
      ExplicitHeight = 28
    end
    inherited Ne: TSpeedButton
      Left = 516
      Height = 28
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF007D2C05006B250800521E1500551F13006D26
        07007E2D0500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF008932040055211700BF5C1500E1985500EFBD8A00F0BF8C00E29D
        5B00C2621800541F160090350300FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF006C290E00AF470400EBB17900FFFEF800FEF8F400F2DAC400F2D9C200FCF6
        F000FFFFFC00EEBA8700B64E070060231100FF00FF00FF00FF00FF00FF00732D
        0D00B0460200F4D0AB00FFFFFE00D4884600BD4E0400BA470000BA460000C053
        0700D4844200FCF8F300F8DDBD00B64D050090350200FF00FF00FF00FF009A38
        0000E6AB7200FFFFFF00CC732800C9682000CE752A00BB480000BC4B0000B843
        0000B8420000CA6C1F00FCF8F400EFBC8800541F1600FF00FF00A9440300C05C
        1100FFFCFA00E1A36A00BF480000EECBA900F0D5BA00BD4A0000B8420000CA6C
        2000E9BD9300BA460000D4884300FFFFFF00C16016007B2C04009A3B0200DD95
        5400FFFFFF00D3762800CC600E00EFCBA900F0D3B400C2510100D5864100FAF2
        E900F7E7D900BC4B0000BF510300FCF8F300E29D5A006D26070089340600EBBB
        8A00FBF0E700D87A2B00D7742200F3D1B000F2D1B400E6AC7600FFFFFF00FFFF
        FF00F3DEC700BD4D0100BA450000F2DAC200EFC08E00551F1300AD450200EEBF
        9000FCF4EB00E28A3E00E1843500F6D8B800F3D7BA00E5A36500FCF3EB00FFFF
        FF00F3DEC900BD4D0100BA460000F3DEC700EFBD8A00521F1600B0490500E9AA
        6E00FFFFFF00EDA46200EA954700F8DEC200F7DEC600D9742100DC883F00F7E3
        D100F7EADC00BC4B0000C0540500FEFBF800E09752006B240800B04A0600DD89
        3F00FFFCF800FAD7B400F4A35900FCE6D000F8E3CE00E1843500D7722000D375
        2700E3AC7800BB470000D9935400FFFFFE00BD5A10007B2C0400FF00FF00C965
        1800F8CEA500FFFFFF00FED0A300F8BA7F00EFAD7000E2883B00D9792A00CE65
        1200C04C0000D07A3100FFFFFF00EAAF7300501F1800FF00FF00FF00FF00B247
        0100E0873B00FEE5CB00FFFFFF00FAD3AC00EDA15C00E28B3F00D97B2D00D478
        2A00E1A46B00FFFFFF00F3CCA400AC44020089310300FF00FF00FF00FF00FF00
        FF00B64C0400DE873B00F8CEA300FFFAF300FFFFFF00FEF6EE00FCF3EA00FFFF
        FF00FEF7EE00E6A56A00AC4403005A221400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AF450100C5641800DC884000E9A76C00EEBB8900EBB58100DC91
        4D00BD590F005D23150090340200FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00A3410300A5450700A64608009E4006008B35
        0500752D0C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Visible = False
      ExplicitLeft = 516
      ExplicitHeight = 28
    end
    inherited btBorrar: TBitBtn
      Left = 531
      Width = 100
      Height = 28
      Visible = False
      ExplicitLeft = 531
      ExplicitWidth = 100
      ExplicitHeight = 28
    end
    inherited btSalir: TBitBtn
      Left = 631
      Width = 97
      Height = 28
      ExplicitLeft = 631
      ExplicitWidth = 97
      ExplicitHeight = 28
    end
    object ToolButton1: TToolButton
      Left = 728
      Top = 0
      Width = 40
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btImprimir: TBitBtn
      Left = 768
      Top = 0
      Width = 74
      Height = 28
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
      TabOrder = 7
      OnClick = btImprimirClick
    end
    object btExcel: TBitBtn
      Left = 842
      Top = 0
      Width = 104
      Height = 28
      Action = ExportarXLS
      Caption = 'Exportar XLS'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF233F3F237F7F237F7F237F7F001F
        000F4B000F4B000F2C00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF237F7F47FFFF47FFFF47FFFF0F2C00005F3F1F97000F4B00FF00FF18233F
        4F88AF2F737F4F534F2F302FFF00FFFF00FF237F7F233F7F00007747BFBF237F
        7F237F7F1F97000F4B00FF00FF30477F9BD7FF63C0FF48B7FF30A3E34F93B733
        7797003F3F233F3F000077237F7F0F4B001F77001F97000F4B00FF00FF30477F
        77C8FFA7DBFF8FD0FF8FD0FF8FD0FF83CCFF0000770000EF0000AF0000777F14
        000F4B003F14003F0000FF00FF3B477F4BBBFFBFEFFF8FE7FF8FE7FF8FE7FF8F
        E7FF0000770000EF7F14007F1400BF28000F4B003F33007F1400FF00FF47477F
        67C0FFA3DFFF8FFFFF8FFFFF8FFFFF8FFFFF0000770000EF3F0037000037FF28
        00FF2800FF28007F1400FF00FF18577F77C8FF6FC7FFA7FFFF8FFFFF8FFFFF8F
        FFFF00003700007700007700003F7F14007F14007F14003F1400FF00FF285C7F
        77C8FF58BCFFCBF3FFCFFFFFBFFFFFAFFFFFAFFFFFAFFFFFAFFFFF93E3FFD0FF
        FF83C3DB171817FF00FFFF00FF30607F8BD0FF77C8FF5FBFFF77C8FF7FCCFF9B
        D7FFD3FFFFBFFFFFBFFFFFA7E7FFDFFFFFCFF3FF33575FFF00FFFF00FF30607F
        97FFFF8FFFFF8FFFFF8FFFFF8FFFFF83EFFF77DBFFA7DFFFC7EBFFCBEBFFF7FF
        FFF7FFFF7BAFC7FF00FFFF00FF30607F9FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8F
        FFFF8FFFFF8FFFFF83FFFF43BFF73B63833B647F435B7FFF00FFFF00FF30537F
        B7FBFF8FFFFF8FFFFFAFFFFFA3DBFF9BDBFF9FEBFFAFFBFFAFFFFF67D7FF3737
        37FF00FFFF00FFFF00FFFF00FFFF00FF93B7FF88D7FF7FD7FF87C7FF1C1F1CFF
        00FF23233F47477F3B477F30537FFF00FF000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00
        FFFF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF000000000000000000FF00FF000000}
      TabOrder = 8
    end
    object pbRedondeo: TTMSFNCProgressBar
      Left = 946
      Top = 0
      Width = 121
      Height = 28
      Hint = 'Progreso Estado de Redondedo'
      ParentDoubleBuffered = False
      DoubleBuffered = True
      TabOrder = 9
      Appearance.DefaultLevelFont.Charset = DEFAULT_CHARSET
      Appearance.DefaultLevelFont.Color = clWindowText
      Appearance.DefaultLevelFont.Height = -11
      Appearance.DefaultLevelFont.Name = 'Segoe UI'
      Appearance.DefaultLevelFont.Style = []
      Appearance.Font.Charset = DEFAULT_CHARSET
      Appearance.Font.Color = clWindowText
      Appearance.Font.Height = -11
      Appearance.Font.Name = 'Segoe UI'
      Appearance.Font.Style = []
      Layout.ShowValue = True
      Levels = <>
      Maximum = 100.000000000000000000
      Minimum = 0.000000000000000000
      CustomValue = ''
      Value = 0.000000000000000000
    end
  end
  inherited Panel1: TPanel
    Top = 587
    Width = 1214
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 733
    ExplicitWidth = 1332
    inherited DBStatusLabel1: TJvDBStatusLabel
      Visible = False
    end
    inherited sbEstado: TStatusBar
      Width = 1125
      Panels = <
        item
          Width = 650
        end
        item
          Width = 50
        end>
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 1243
    end
  end
  object edPrecioFijo: TJvCalcEdit [3]
    Left = 999
    Top = 521
    Width = 48
    Height = 21
    DisplayFormat = ',0.000'
    Anchors = [akLeft, akBottom]
    ShowButton = False
    TabOrder = 3
    DecimalPlacesAlwaysShown = False
  end
  inherited ActionList1: TActionList
    Left = 560
    Top = 80
    inherited Confirma: TAction
      Caption = '&Aplica Cambios'
    end
    inherited Buscar: TAction
      Caption = '&Buscar Todos'
    end
    object ControlVisualColumnas: TAction
      Caption = 'ControlVisualColumnas'
      OnExecute = ControlVisualColumnasExecute
    end
    object CalculaPrecioVta: TAction
      Caption = 'CalculaPrecioVta'
      OnExecute = CalculaPrecioVtaExecute
    end
    object CambioCodigo: TAction
      Caption = 'CambioCodigo'
      ShortCut = 16451
      OnExecute = CambioCodigoExecute
    end
    object ExportarXLS: TAction
      Caption = 'Exportar XLS'
      ShortCut = 16453
      OnExecute = ExportarXLSExecute
    end
    object ImprimirEtiquetas: TAction
      Caption = 'Imprimir Etiquetas'
      OnExecute = ImprimirEtiquetasExecute
    end
    object Redondear_05: TAction
      Caption = 'Redondear 2 decimales'
      OnExecute = Redondear_05Execute
    end
    object Redondear_0: TAction
      Caption = 'Redondear 0 decimales'
      OnExecute = Redondear_0Execute
    end
    object AplicarMarcas: TAction
      Caption = 'AplicarMarcas'
      OnExecute = AplicarMarcasExecute
    end
  end
  inherited DSBase: TDataSource
    AutoEdit = True
    DataSet = CDSConsultaStock
    Left = 328
    Top = 80
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C01010B000D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000521E15006B2508007D2C05007E2D05006D260700551F13000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004490600055B0900066C0C00066C0C00055E0A00044C06000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006C6A6A006C6A6A0000000000000000006C6A6A006C6A6A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005521
      170089320400BF5C1500E1985500EFBD8A00F0BF8C00E29D5B00C26218009035
      0300541F16000000000000000000000000000000000000000000000000000560
      0900056009000891130009B0180009B31A0009B3190009B11900079614000568
      0C0005680C000000000000000000000000000000000000000000000000006C6A
      6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3E3006C6A6A006C6A
      6A006C6A6A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006C290E00AF47
      0400EBB17900FFFEF800FEF8F400F2DAC400F2D9C200FCF6F000FFFFFC00EEBA
      8700B64E070060231100000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D0600000000000000000000000000000000006C6A6A00DAD9
      D900A19F9F00A19F9F00A19F9F0037363600353535006C6D6D00BFBFBF00E1E2
      E200B7B6B6006C6A6A006C6A6A006C6A6A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000732D0D00B0460200F4D0
      AB00FFFEFE00D78C4E00C0540900BA460000BA460000BD4F0400D07E3900FCF8
      F400F8DDBD00B64D0500541F160000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C0000000000000000006C6A6A00D4D3D300CACA
      CA008E8C8C008E8C8C008E8C8C003C3B3B000A090A00070707000B0B0B000707
      07007A7A7A00BBBBBB006C6A6A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A380000E6AB7200FFFF
      FF00CF762D00B8410000BA430000BC4A0000BB470000C6631500CE753100C96B
      1F00FCF8F400EFBC88009035020000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE6D0009B2190009B2
      190009B3190009BA1A0006670C00000000006C6A6A00CACACA00CACACA008E8C
      8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A000888686005E5B5C000707
      070009090900080808006C6A6A00767373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000089340600C05C1100FFFCFA00E1A3
      6A00C04C0000FFFFFF00D3803800BC470000B8420000DC995E00FFFFFF00B843
      0000D4874300FFFFFF00C1601600551F1300087210001B9A3A002AC65B001DBB
      45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FDF8005ACB650009B2
      190009B2190009B81A0008941300045D09006C6A6A00CACACA008E8C8C00EFEE
      EE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCECE00BDBCBC00ADAB
      AB008B898900585656007A787800757373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A3B0200DD955400FFFFFF00D376
      2800CC600D00FFFFFF00FFFFFF00DC955400BC450000DA965800FFFFFF00BC4B
      0000BF510300FCF8F300E29D5A006D260700087210002AB65B002CC5650022BD
      4D000FB422000AB21A000CB31C000AB219008DDB9500FDFEFD00F6FCF70058CB
      630009B2190009B51A0008AB1700045D09006C6A6A008E8C8C00FFFFFF00FEFC
      FC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0C100D7D7D700D8D8
      D800C7C6C600B7B6B600918F8F006C6969000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A9440300EBBB8A00FBF0E700D87A
      2B00D7742200FFFFFF00FFFFFF00FFFFFF00E5AF7B00E0A16800FFFFFF00BD4D
      0100BA450000F2DAC200EFC08E007D2C04000F821C0037C26C0033C76C00CDF1
      DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FDF900FFFFFF00F2FB
      F3006FD2790008B4190009B3190005650B00000000006C6A6A006C6A6A00EDEB
      EB00B1A6A7007A6F72008A83880096929500969091009D9798009A9395009E98
      9900BBBABA00D1D1D100C2C2C2006C6A6A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B04A0600EEBF9000FCF4EB00E28A
      3E00E1843500FFFFFF00FFFFFF00FFFFFF00EDC59E00E5AA7500FFFFFF00BD4D
      0100BA460000F3DEC700EFBD8A007B2C0400138D230058CC830042C97700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
      FF00BCEAC1000AB41A0009B31900066D0D000000000000000000000000006C6A
      6A00BB897F00A7876D008B6F64007D6760006F626500797379008F8B8E00A9A3
      A400CBCACA00C1C1C1006C6A6A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0490500E9AA6E00FFFFFF00EDA4
      6200EA934600FFFFFF00FFFFFF00EDBA8800D0671300E3A66D00FFFFFF00BC4B
      0000C0540500FEFBF800E09752006B2408000F911D006FD293005FD38D006DD4
      950072D6990071D6980072D6990064D28C0092DFA800FBFEFB00FFFFFF00ACE5
      B8002EBF4C0011B82B0008B1190005610A000000000000000000000000000000
      0000BD828100FFE3B400FFD39F00E9B28100C9997300BA916C00BD828100807D
      7E006C6A6A006C6A6A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD450200DD893F00FFFCF800FAD7
      B400F4A55B00FFFFFF00F0BB8700DE813000D56E1D00E7AF7A00FFFFFF00BA44
      0000D9935300FFFFFE00BD5A1000521F16000F911D0067CC83009BE5BA0038C6
      700030C3690038C56F0038C56F0070D69700E8F8EE00FFFFFF009FE2B10020BD
      48001AB93E0010BA290008A3170005610A000000000000000000000000000000
      0000BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC68800BD8281000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C9651800F8CEA500FFFF
      FF00FED1A600F6A96300EB964800E2893C00D8772600D77B2E00D1782D00D07A
      3200FFFFFF00EAAF730089310300000000000000000025AE3900BCEDD20082DB
      A40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2B20022BC4B001DBA
      410018B7360014C030000A85170000000000000000000000000000000000C086
      8300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD828100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B2470100E0873B00FEE5
      CB00FFFFFF00FAD5B100EDA56300E28B3F00D97B2D00D3752600DE9D6200FFFF
      FF00F3CCA400AC440200501F1800000000000000000025AE390071D28C00D2F4
      E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2630024BE560023BC
      4D001FC1460016AE34000A85170000000000000000000000000000000000BD82
      8100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD828100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B64C0400DE87
      3B00F8CEA300FFFAF300FFFFFF00FEF6EE00FCF3EA00FFFFFF00FEF7EE00E6A5
      6A00AC4403005A2214000000000000000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000BD828100FFFF
      F200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD828100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AF45
      0100C5641800DC884000E9A76C00EEBB8900EBB58100DC914D00BD590F009034
      02005D23150000000000000000000000000000000000000000000000000025AE
      390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB157000000000000000000000000000000000000000000BD828100BD82
      8100BD828100FBEFE200FBE3CF00FBDDC200BD82810000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A3410300A5450700A64608009E4006008B350500752D0C000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000032B74E0025AE390025AE390025AE390025AE390024A342000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD828100BD828100BD8281000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001079F000313A9000418AE000419AE000313A9000108A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007D2C05006B250800521E1500551F13006D2607007E2D05000000
      0000000000000000000000000000000000000000000000000000000000000D80
      AA000D80AA000D80AA000D80AA000D80AA000D80AA0000000000000000000000
      0000000000000000000000000000000000000000000000000000006600000066
      0000B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B000066
      0000006600000000000000000000000000000000000000000000000000000104
      9D00041CB1000730C0000734C4000735C5000735C5000734C3000731C100041F
      B30001069E000000000000000000000000000000000000000000000000008932
      040055211700BF5C1500E1985500EFBD8A00F0BF8C00E29D5B00C2621800541F
      1600903503000000000000000000000000000000000000000000078DBB0049D5
      EE0023D6FD0036D9FE006FE6FF008DE7FA0044BADD000D80AA00000000000000
      0000000000000000000000000000000000000000000000660000009900000099
      0000E5DEDF000066000000660000E4E7E700E0E3E600D9DFE000CCC9CC000066
      0000037D030000660000000000000000000000000000000000000109A100052B
      C3000735C7000733C2000732C2000732C2000732C2000732C2000733C3000735
      C400062DBE00020CA400000000000000000000000000000000006C290E00AF47
      0400EBB17900FFFEF800FEF8F400F2DAC400F2D9C200FCF6F000FFFFFC00EEBA
      8700B64E070060231100000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D3F70000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A0000000000000000000000000000660000009900000099
      0000E9E2E2000066000000660000E2E1E300E2E6E800DDE2E400CFCCCF000066
      0000037D03000066000000000000000000000000000001049B00052BCA000636
      D8000431CD000027C400032EC1000732C2000732C2000430C1000027BF00042F
      C1000735C400072EBE0001069E000000000000000000732D0D00B0460200F4D0
      AB00FFFFFE00D4884600BD4E0400BA470000BA460000C0530700D4844200FCF8
      F300F8DDBD00B64D0500903502000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D3F70000009A003E6EFF00285BFF001248FF000236FF000029
      F900001DEC0000009A0000000000000000000000000000660000009900000099
      0000ECE4E4000066000000660000DFDDDF00E1E6E800E0E5E700D3D0D2000066
      0000037D030000660000000000000000000000000000031ABA000537E7000331
      DD00123DD8006480E0001840CB00002CC100022DC0000F38C4006580D9001B43
      C700052FC1000735C500051FB30000000000000000009A380000E6AB7200FFFF
      FF00CC732800C9682000CE752A00BB480000BC4B0000B8430000B8420000CA6C
      1F00FCF8F400EFBC8800541F16000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D4F80000009A004474FF003264FF001B50FF00083CFF000029
      F9000022F10000009A0000000000000000000000000000660000009900000099
      0000EFE6E600EDE5E500E5DEDF00E0DDDF00DFE0E200E0E1E300D6D0D2000066
      0000037D030000660000000000000000000001049E000430E4000436F100002A
      E4005070E900FFFFFF00B7C4F1000D36CA00042DC300A2B2E800FFFFFF006984
      DA000026BE000733C3000731C1000108A000A9440300C05C1100FFFCFA00E1A3
      6A00BF480000EECBA900F0D5BA00BD4A0000B8420000CA6C2000E9BD9300BA46
      0000D4884300FFFFFF00C16016007B2C040000000000078DBB00B3FCFE00B6F6
      FF00C6F5FF00E1F8FD0000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A0000000000000000000000000000660000009900000099
      0000009900000099000000990000009900000099000000990000009900000099
      000000990000006600000000000000000000020FAF000336FA000335F8000232
      EE000A35E8008CA2F200FFFFFF00B4C2F100A9B8ED00FFFFFF00A7B7E900133A
      C400052FC1000732C2000734C4000313AA009A3B0200DD955400FFFFFF00D376
      2800CC600E00EFCBA900F0D3B400C2510100D5864100FAF2E900F7E7D900BC4B
      0000BF510300FCF8F300E29D5A006D26070000000000078DBB00BAEEF60030BC
      DD0011A7D200129ECA0020A2CB0035A7CD002692BF0092CEE4000D80AA000000
      000000000000000000000000000000000000000000000066000000990000B1D0
      B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0
      B100009900000066000000000000000000000619BC001747FE00093AFC000435
      F8000131F000002BE80091A5F400FFFFFF00FFFFFF00ABBAEF00062FC500022D
      C0000732C2000732C2000736C5000419AE0089340600EBBB8A00FBF0E700D87A
      2B00D7742200F3D1B000F2D1B400E6AC7600FFFFFF00FFFFFF00F3DEC700BD4D
      0100BA450000F2DAC200EFC08E00551F130000000000078DBB004AC5DD0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E3000682B6000D80AA000000
      000000000000000000000000000000000000000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900009900000066000000000000000000000B1DBE004168FE001C49FC000335
      FB000031F9000531F200A4B5F700FFFFFF00FFFFFF00B9C6F2000D36D000002C
      C6000732C2000732C2000736C5000418AD00AD450200EEBF9000FCF4EB00E28A
      3E00E1843500F6D8B800F3D7BA00E5A36500FCF3EB00FFFFFF00F3DEC900BD4D
      0100BA460000F3DEC700EFBD8A00521F160000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      000000000000000000000000000000000000000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900009900000066000000000000000000000613B4005B7CFC00486CFD000133
      FB00113CFB00A1B4FE00FFFFFF00A4B6F80092A7F500FFFFFF00B6C4F2001A41
      D300042FC8000732C4000734C3000212A900B0490500E9AA6E00FFFFFF00EDA4
      6200EA954700F8DEC200F7DEC600D9742100DC883F00F7E3D100F7EADC00BC4B
      0000C0540500FEFBF800E09752006B24080000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      000000000000000000000000000000000000000000000066000000990000F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F900009900000066000000000000000000000003A0004A6AF3008FA6FF001F46
      FB004C6FFC00FFFFFF00A7B8FE000733F600002AED008CA2F600FFFFFF00627F
      E7000028D0000734CC000730C30000069F00B04A0600DD893F00FFFCF800FAD7
      B400F4A35900FCE6D000F8E3CE00E1843500D7722000D3752700E3AC7800BB47
      0000D9935400FFFFFE00BD5A10007B2C040000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      000000000000000000000000000000000000000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F90000990000006600000000000000000000000000001A2FCB0099AFFF008BA2
      FE00214DFB004D71FC000E3DFB000030FB000031F7000636F1004C6EF100103C
      E3000432DB000636D700041CB5000000000000000000C9651800F8CEA500FFFF
      FF00FED0A300F8BA7F00EFAD7000E2883B00D9792A00CE651200C04C0000D07A
      3100FFFFFF00EAAF7300501F18000000000000000000078DBB0091FCFE0082F8
      FF006FF8FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000D80AA000000
      000000000000000000000000000000000000000000000066000000990000F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F90000990000006600000000000000000000000000000004A000415EEC00B8C7
      FF009CAFFD003A5CFC000A3AFB000335FB000335FB000133F900052FF2000635
      EB000537E900052CCD0000049C000000000000000000B2470100E0873B00FEE5
      CB00FFFFFF00FAD3AC00EDA15C00E28B3F00D97B2D00D4782A00E1A46B00FFFF
      FF00F3CCA400AC440200893103000000000000000000078DBB00FCFFFF00F4FF
      FF00D3FFFF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000D80AA000000
      000000000000000000000000000000000000000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F9000099000000660000000000000000000000000000000000000309A5004260
      EC00A9BBFF00BDCAFF008EA5FE006483FD005073FC004A6EFD003961FD001444
      F900042CD7000109A20000000000000000000000000000000000B64C0400DE87
      3B00F8CEA300FFFAF300FFFFFF00FEF6EE00FCF3EA00FFFFFF00FEF7EE00E6A5
      6A00AC4403005A221400000000000000000000000000000000000C92C000F4FF
      FF00E1F8FD00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF00000000000000
      000000000000000000000000000000000000000000000000000000660000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900006600000000000000000000000000000000000000000000000000000004
      A0001E32CD005876F600859EFE008BA3FF007994FE005376FC00234AF000051E
      C50001049C00000000000000000000000000000000000000000000000000AF45
      0100C5641800DC884000E9A76C00EEBB8900EBB58100DC914D00BD590F005D23
      150090340200000000000000000000000000000000000000000000000000078D
      BB00078DBB00078DBB00078DBB00078DBB00078DBB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000004A0000917B6001022C3000D1FC2000311B40001059F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A3410300A5450700A64608009E4006008B350500752D0C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006D7C94006F7C88000000000000000000000000000000
      0000000000000000000000000000000000000000000008750D0008750D000875
      0D0008750D000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000099330000993300009933
      00009933000099330000000000000000000000000000000000000C4898000C48
      9800000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000D7FA9000E80
      AA000D7FA9000E80AA000E80AA001081AB000000000000000000000000000000
      000000000000788295001F89E00059A9DC0000000000000000000E80AA000E80
      AA000E80AA000E80AA000E80AA000E80AA000000000008750D0013AA220010A6
      1D0008750D0000000000000000000000000000000000000000000E80AA000E80
      AA000E80AA000E80AA0099330000FDFEFE00FDFEFE00FDFEFE008EA4FD00B8C6
      FD00FDFEFE00993300000000000000000000000000000C489800196DDA00196D
      DA000C4898000000000000000000004B0000004B000000000000000000000000
      00000000000000000000000000000000000000000000048CB90048D5EE0022D7
      FC0035D8FD006FE6FF008DE6FA0044BADD000E80AA0000000000000000000000
      0000788295002087DE004EB7FF0057AEF40000000000078DBB0049D5EE0023D7
      FE0036D8FD006FE6FF008DE7FA0044BADD000E80AA0008750D001AB12D0013AA
      220008750D0000000000000000000000000000000000078DBB0049D5EE0023D7
      FE0036D9FE006FE6FF0099330000FDFEFE00FDFEFE007E98FC000335FB00597A
      FC00FDFEFE009933000000000000000000000C48980083C5FD0083C5FD002082
      FB002082FB000C48980000000000004B0000004B000000000000000000000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0022D7
      FC0035D8FD0070E6FF008DE6FA004ABFE0000F9DCE001180A700000000008B86
      97001F7ECE004EB7FF0057AEF40000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D0008750D0008750D0008750D0025BD3E001CB4
      310008750D0008750D0008750D0008750D00078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF0099330000D6DEFE004368FC000335FB004368FC000335
      FB00D9E0FE009933000000000000000000000C4898000C48980083C5FD002082
      FB000C4898000C48980000000000000000000000000000000000000000000000
      000000000000000000000000000000000000088EBC008CFAFD0058E9FD0022D7
      FC0035D8FD0075D3E900B1979400C2A69A00C6AEA000AE877C008C6B6C006092
      BD004EB7FF004EB7FF000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D003CD4620035CE590030C952002CC3490026BE
      410025BD3E001AB12D0017AF2A0008750D00078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF00993300005274FC001442FB00BCC9FD00EFF2FE001A47
      FB004F72FC00973304000000000000000000000000000C48980087C7FD002488
      FE000C48980000000000000000002BC04F002BC04F00004B0000000000000000
      000000000000000000000000000000000000088EBC008CFAFD0058E9FD0024D8
      FD0046C6E400AB939500ECDDCC00FEFED600FFFFE400F7F2D900CFB7A100AD85
      80004EB7FF00000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D0041DA6D0041DA6D0038D15E0035CE59002CC3
      49002AC1470025BD3E0020B8360008750D00078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF0099330000E4EAFE00D9E0FE00FDFEFE00FDFEFE0098AC
      FD000335FB00643459000000000000000000000000000C4898008ACAFD00298F
      FE000C4898000000000000000000004B0000004B0000004B0000000000000000
      000000000000000000000000000000000000048CB900B4FFFF00B6F6FF00C6F5
      FF00B5A09F00E8DDD600FFFFF400FEFED600FFFEDD00FEFED600FFF2BA00CAA0
      8C0000000000000000000000000000000000078DBB00B3FCFE00B6F6FF00C6F5
      FF00E3FAFF00E9F9FD0008750D0008750D0008750D0008750D003FD868003CD4
      620008750D0008750D0008750D0008750D00078DBB00B3FCFE00B6F6FF00C6F5
      FF00E3FAFF00EBFBFF0099330000FDFEFE00FDFEFE00FDFEFE00FDFEFE00FDFE
      FE005274FC000335FB000000000000000000000000000C48980091D0FE00319A
      FE000C4898000000000000000000004B0000004B0000004B0000004B0000004B
      000000000000000000000000000000000000048CB900B8EDF60030BCDC0011A7
      D1009C919000FFFFE400FFFEDD00FEFED600FFFEDD00FCF5CD00F8D09800ECD1
      AC00AD858000000000000000000000000000078DBB00BAEEF60030BCDD0011A7
      D200129FCB0020A1CA0035A7CD002692BF0092CEE40008750D0045DD710041DA
      6D0008750D00000000000000000000000000078DBB00BAEEF60030BCDD0011A7
      D200129FCB0020A2CB0099330000993300009933000099330000993300009933
      00008F3311002235C8000335FB0000000000000000000C48980095D3FE0036A1
      FE000C48980000000000000000002BC04F002BC04F0020B23B001BAA3300004B
      000000000000000000000000000000000000088EBC004BC6DC0058E9FD0022D7
      FC00A49E9900FFFEDD00FFFEDD00FFFEDD00FFFEDD00F6DAAB00F3BE8000F5DE
      B500AD858000000000000000000000000000078DBB004AC5DD0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E3000682B60008750D004DE67F004DE6
      7F0008750D00000000000000000000000000078DBB004AC5DD0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E3000682B6000E80AA00000000000000
      000000000000000000000335FB000335FB00000000000C4898009AD8FD003FAC
      FE000C4898000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0024D8
      FD0096959400FAF6D600FFFEDD00FAF6D600F9E1B100F5CB9A00FEEAB900E4CC
      A900AD858000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE0008750D0008750D000875
      0D0008750D00000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      00000000000000000000000000000335FB00000000000C4898009CD9FD0043B1
      FE000C4898000000000000000000004B0000004B0000004B0000004B0000004B
      0000004B0000004B00000000000000000000048CB9008CFAFD0058E9FD0024D8
      FD005EA8BE00D3BBA200FFF7C600F8D09800F4C88E00FEF7E000F9F6F200AD85
      800000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000E7FA900000000000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      000000000000000000000000000000000000000000000C4898009CD9FD0049B7
      FE000C4898000000000000000000004B0000004B0000004B0000004B0000004B
      0000004B0000004B00000000000000000000048CB9008CFAFD0058E9FD0024D8
      FD0039D7FB008AA5AD00CDAC9300ECD1AC00F5E1B600DAC5B700AD858000AD85
      800000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000E80AA00000000000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      000000000000000000000000000000000000000000000C4898009CD9FD004CB8
      FE000C4898000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000088EBC008CFAFD0081F8FE0071F9
      FE007BFFFF0097FCFD00A1C6C8008F989B008683880087707000000000000000
      000000000000000000000000000000000000078DBB0091FCFE0082F8FF006FF8
      FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80AA00000000000000
      000000000000000000000000000000000000078DBB0091FCFE0082F8FF006FF8
      FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80AA00000000000000
      000000000000000000000000000000000000000000000C4898009CD9FD004CB8
      FE000C48980000000000000000002BC04F002BC04F0020B23B001BAA3300149F
      2700119721000D8D19000D8D1900004B0000048CB900FBFFFF00F5FFFE00D2FF
      FF00B4FFFF00ADFFFE00ADFFFE00ADFFFE0071F9FE000E80AA00000000000000
      000000000000000000000000000000000000078DBB00FCFFFF00F4FFFF00D3FF
      FF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80AA00000000000000
      000000000000000000000000000000000000078DBB00FDFEFE00F4FFFF00D3FF
      FF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80AA00000000000000
      000000000000000000000000000000000000000000000C4898009CD9FD009CD9
      FD000C4898000000000000000000004B0000004B0000004B0000004B0000004B
      0000004B0000004B0000004B0000004B0000000000000A91C100F5FFFE00E3FE
      FF00C6FEFF00ADFFFE00A7FFFF009BFBFD001285B00000000000000000000000
      000000000000000000000000000000000000000000000C92C000F4FFFF00E3FA
      FF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF0000000000000000000000
      000000000000000000000000000000000000000000000C92C000F4FFFF00E3FA
      FF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000088EBC00088E
      BC00048CB900088EBC00088EBC00088EBC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000078DBB00078D
      BB00078DBB00078DBB00078DBB00078DBB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000078DBB00078D
      BB00078DBB00078DBB00078DBB00078DBB000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00F81FF81FF33F0000E007E007E0070000
      C003C003C0000000800180018001000080018001000000000000000000000000
      0000000000000000000000008000000000000000E001000000000000F0030000
      00000000F01F000080018001E03F000080018001E03F0000C003C003C03F0000
      E007E007C07F0000F81FF81FF8FF0000FFFFFFFFF81FF81FE07FC007E007E007
      C03F8003C003C003800380038001800180038003800180018003800300000000
      8003800300000000801F800300000000801F800300000000801F800300000000
      801F800300000000801F800380018001801F800380018001801F8003C003C003
      C03FC007E007E007E07FFFFFF81FF81FFFFFFFFCFF87FC03CFFFC0F8C087C003
      867F807080078003027F00210000000303FF000300000003863F000700000003
      863F000F00000003860F000700070001860F00070007003C87FF00070007003E
      8603000F003F003F8603000F003F003F87FF003F003F003F8600003F003F003F
      8600807F807F807FFFFFC0FFC0FFC0FF00000000000000000000000000000000
      000000000000}
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
    Left = 696
    Top = 304
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 64
    Top = 496
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 440
    Top = 320
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 400
    Top = 80
  end
  inherited QBrowse2: TFDQuery
    Top = 256
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 120
    Top = 312
  end
  object DSPConsultaStock: TDataSetProvider
    DataSet = QConsultaStock
    Options = []
    Left = 136
    Top = 168
  end
  object DSRubro: TDataSource
    DataSet = CDSRubro
    Left = 504
    Top = 136
  end
  object DSMarca: TDataSource
    DataSet = CDSMarca
    Left = 496
    Top = 184
  end
  object DSSubRubro: TDataSource
    DataSet = CDSSubRub
    Left = 488
    Top = 264
  end
  object CDSConsultaStock: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'marca'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'marca'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SubRubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SubRubro'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'lista'
        ParamType = ptInput
      end>
    ProviderName = 'DSPConsultaStock'
    AfterInsert = CDSConsultaStockAfterInsert
    BeforePost = CDSConsultaStockBeforePost
    AfterScroll = CDSConsultaStockAfterScroll
    OnCalcFields = CDSConsultaStockCalcFields
    Left = 240
    Top = 167
    object CDSConsultaStockCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object CDSConsultaStockDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSConsultaStockMUESTRAMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldKind = fkLookup
      FieldName = 'MUESTRAMARCA'
      LookupDataSet = CDSLstMarca
      LookupKeyFields = 'MARCA_STK'
      LookupResultField = 'DESCRIPCION_MARCA'
      KeyFields = 'MARCA_STK'
      Lookup = True
    end
    object CDSConsultaStockMONEDA: TIntegerField
      Alignment = taCenter
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      ProviderFlags = []
      Required = True
    end
    object CDSConsultaStockNuevoFPExento: TFloatField
      DisplayLabel = 'F.Precio Exento Nuevo'
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'NuevoFPExento'
      OnSetText = CDSConsultaStockNuevoFPExentoSetText
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
    end
    object CDSConsultaStockNuevoFPGravado: TFloatField
      DisplayLabel = 'F.Precio Gravado Nuevo'
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'NuevoFPGravado'
      OnSetText = CDSConsultaStockNuevoFPGravadoSetText
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
    end
    object CDSConsultaStockMARCA_STK: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      Size = 4
    end
    object CDSConsultaStockRUBRO_STK: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      Required = True
      Size = 3
    end
    object CDSConsultaStockSUBRUBRO_STK: TStringField
      DisplayLabel = 'Sub Rub.'
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      Required = True
      Size = 5
    end
    object CDSConsultaStockMODO_GRAVAMEN: TStringField
      DisplayLabel = 'G'
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Size = 1
    end
    object CDSConsultaStockMUESTRAMONEDA: TStringField
      Alignment = taCenter
      DisplayLabel = 'M'
      FieldKind = fkLookup
      FieldName = 'MUESTRAMONEDA'
      LookupDataSet = QMoneda_
      LookupKeyFields = 'ID'
      LookupResultField = 'SIGNO'
      KeyFields = 'MONEDA'
      Size = 5
      Lookup = True
    end
    object CDSConsultaStockREEMPLAZO_STK: TStringField
      DisplayLabel = 'Cod.Alterna.'
      FieldName = 'REEMPLAZO_STK'
      Origin = 'REEMPLAZO_STK'
      Required = True
    end
    object CDSConsultaStockMODIFICADO: TBooleanField
      AutoGenerateValue = arDefault
      DisplayLabel = 'V'
      FieldKind = fkInternalCalc
      FieldName = 'MODIFICADO'
      ProviderFlags = []
    end
    object CDSConsultaStockRECARGO: TFloatField
      DisplayLabel = 'Rec.'
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
      OnSetText = CDSConsultaStockRECARGOSetText
      DisplayFormat = '0.00'
    end
    object CDSConsultaStockPRECIO_EXENTO: TFloatField
      DisplayLabel = 'P.Exento'
      FieldName = 'PRECIO_EXENTO'
      Origin = 'PRECIO_EXENTO'
      DisplayFormat = ',0.000'
    end
    object CDSConsultaStockPRECIO_GRAVADO: TFloatField
      DisplayLabel = 'P.Gravado'
      FieldName = 'PRECIO_GRAVADO'
      Origin = 'PRECIO_GRAVADO'
      DisplayFormat = ',0.000'
    end
    object CDSConsultaStockPRECIO: TFloatField
      DisplayLabel = 'Precio'
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      OnSetText = CDSConsultaStockPRECIOSetText
      DisplayFormat = ',0.000'
    end
    object CDSConsultaStockCOSTO_GRAVADO_STK: TFloatField
      DisplayLabel = 'C.Gravado'
      FieldName = 'COSTO_GRAVADO_STK'
      Origin = 'COSTO_GRAVADO_STK'
      DisplayFormat = ',0.000'
    end
    object CDSConsultaStockCOSTO_EXENTO_STK: TFloatField
      DisplayLabel = 'C.Exento'
      FieldName = 'COSTO_EXENTO_STK'
      Origin = 'COSTO_EXENTO_STK'
      DisplayFormat = ',0.000'
    end
    object CDSConsultaStockCOSTO_IVA: TFloatField
      FieldName = 'COSTO_IVA'
      Origin = 'COSTO_IVA'
    end
    object CDSConsultaStockFIJACION_PRECIO_IVA: TFloatField
      FieldName = 'FIJACION_PRECIO_IVA'
      Origin = 'FIJACION_PRECIO_IVA'
    end
    object CDSConsultaStockFIJACION_PRECIO_EXENTO: TFloatField
      DisplayLabel = 'F.Precio Exen.'
      FieldName = 'FIJACION_PRECIO_EXENTO'
      Origin = 'FIJACION_PRECIO_EXENTO'
      DisplayFormat = ',0.000'
    end
    object CDSConsultaStockFIJACION_PRECIO_GRAVADO: TFloatField
      DisplayLabel = 'F.Precio Grav.'
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Origin = 'FIJACION_PRECIO_GRAVADO'
      DisplayFormat = ',0.000'
    end
    object CDSConsultaStockIVA_IMPORTE: TFloatField
      DisplayLabel = 'Iva'
      FieldName = 'IVA_IMPORTE'
      Origin = 'IVA_IMPORTE'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSConsultaStockTASA: TFloatField
      DisplayLabel = '% Iva'
      FieldName = 'TASA'
      Origin = 'TASA'
      DisplayFormat = '0.00'
    end
    object CDSConsultaStockCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
      Required = True
      DisplayFormat = ',0.000'
    end
    object CDSConsultaStockCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
      Required = True
      DisplayFormat = ',0.000'
    end
    object CDSConsultaStockCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
      Required = True
      DisplayFormat = ',0.000'
    end
    object CDSConsultaStockSIGNO: TStringField
      DisplayLabel = 'M'
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      Size = 5
    end
    object CDSConsultaStockACTUALIZA_EXCEPCION: TStringField
      FieldName = 'ACTUALIZA_EXCEPCION'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CDSConsultaStockMUESTRACODIGOBARRA: TStringField
      FieldName = 'MUESTRACODIGOBARRA'
      Size = 50
    end
    object CDSConsultaStockMUESTRAPRECIOVTA: TFloatField
      FieldName = 'MUESTRAPRECIOVTA'
    end
    object CDSConsultaStockCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
      Required = True
    end
    object CDSConsultaStockDETALLE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DETALLE'
      ProviderFlags = []
      Size = 45
    end
    object CDSConsultaStockCODIGOARTICULO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSConsultaStockSTOCKFISICO: TFloatField
      DisplayLabel = 'Stock'
      FieldName = 'STOCKFISICO'
      Visible = False
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object pm1: TPopupMenu
    Left = 634
    Top = 260
    object Culumnas1: TMenuItem
      Caption = 'Columnas'
      OnClick = Culumnas1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ImprimirEtiquetas1: TMenuItem
      Action = ImprimirEtiquetas
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Redondear0decimales1: TMenuItem
      Action = Redondear_0
    end
    object Redondear2decimales1: TMenuItem
      Action = Redondear_05
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object AplicarMarcas1: TMenuItem
      Action = AplicarMarcas
    end
  end
  object DSListaPrecioCab: TDataSource
    DataSet = CDSListaPrecioCab
    Left = 398
    Top = 392
  end
  object CDSListaPrecioCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'uso'
        ParamType = ptInput
      end>
    ProviderName = 'DSPListaPrecioCab'
    OnCalcFields = CDSListaPrecioCabCalcFields
    Left = 296
    Top = 392
    object CDSListaPrecioCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSListaPrecioCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object CDSListaPrecioCabACTUALIZA_EXCEPCION: TStringField
      FieldName = 'ACTUALIZA_EXCEPCION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSListaPrecioCabMUESTRAACTUALIZA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'MUESTRAACTUALIZA'
      Size = 15
    end
  end
  object DSPListaPrecioCab: TDataSetProvider
    DataSet = DMBuscadores.QBuscaListaPrecios
    Options = []
    Left = 192
    Top = 392
  end
  object CDSListaArt: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_CAB'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CODIGOARTICULO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'PRECIO'
        DataType = ftFloat
      end
      item
        Name = 'RECARGO'
        DataType = ftFloat
      end
      item
        Name = 'COSTO_GRAVADO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'COSTO_EXENTO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'COSTO_TOTAL'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'IVA_TASA'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PRECIO_GRAVADO'
        DataType = ftFloat
      end
      item
        Name = 'IVA_IMPORTE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PRECIO_EXENTO'
        DataType = ftFloat
      end
      item
        Name = 'FECHA'
        DataType = ftTimeStamp
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPListaArt'
    StoreDefs = True
    Left = 400
    Top = 440
    object CDSListaArtID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSListaArtID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSListaArtCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSListaArtFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSListaArtPRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
    end
    object CDSListaArtRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
    end
    object CDSListaArtCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
      Required = True
    end
    object CDSListaArtCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
      Required = True
    end
    object CDSListaArtCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
      Required = True
    end
    object CDSListaArtIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
      Required = True
    end
    object CDSListaArtPRECIO_GRAVADO: TFloatField
      FieldName = 'PRECIO_GRAVADO'
      Origin = 'PRECIO_GRAVADO'
    end
    object CDSListaArtIVA_IMPORTE: TFloatField
      FieldName = 'IVA_IMPORTE'
      Origin = 'IVA_IMPORTE'
      Required = True
    end
    object CDSListaArtPRECIO_EXENTO: TFloatField
      FieldName = 'PRECIO_EXENTO'
      Origin = 'PRECIO_EXENTO'
    end
  end
  object DSPListaArt: TDataSetProvider
    DataSet = QListArt
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 292
    Top = 440
  end
  object DSPLstMarca: TDataSetProvider
    DataSet = DMBuscadores.QBuscaMarca
    Options = []
    Left = 192
    Top = 488
  end
  object CDSLstMarca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPLstMarca'
    Left = 296
    Top = 488
    object CDSLstMarcaMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object CDSLstMarcaDESCRIPCION_MARCA: TStringField
      FieldName = 'DESCRIPCION_MARCA'
      Origin = 'DESCRIPCION_MARCA'
      Size = 25
    end
  end
  object DSLstMarca: TDataSource
    DataSet = CDSLstMarca
    Left = 400
    Top = 488
  end
  object DSMoneda: TDataSource
    DataSet = CDSMoneda
    Left = 1024
    Top = 432
  end
  object frxReport: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41895.498328518520000000
    ReportOptions.LastChange = 41895.498328518520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeforePrint = frxReportBeforePrint
    Left = 640
    Top = 352
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frDBStock: TfrxDBDataset
    UserName = 'frDBStock'
    CloseDataSource = False
    DataSource = DSBase
    BCDToCurrency = False
    DataSetOptions = []
    Left = 576
    Top = 352
    FieldDefs = <
      item
        FieldName = 'CODIGO_STK'
        FieldAlias = 'CODIGO_STK'
      end
      item
        FieldName = 'DETALLE_STK'
        FieldAlias = 'DETALLE_STK'
      end
      item
        FieldName = 'MARCA_STK'
        FieldAlias = 'MARCA_STK'
      end
      item
        FieldName = 'RUBRO_STK'
        FieldAlias = 'RUBRO_STK'
      end
      item
        FieldName = 'SUBRUBRO_STK'
        FieldAlias = 'SUBRUBRO_STK'
      end
      item
        FieldName = 'SIGNO'
        FieldAlias = 'SIGNO'
      end
      item
        FieldName = 'COSTO_GRAVADO_STK'
        FieldAlias = 'COSTO_GRAVADO_STK'
      end
      item
        FieldName = 'COSTO_IVA'
        FieldAlias = 'COSTO_IVA'
      end
      item
        FieldName = 'COSTO_EXENTO_STK'
        FieldAlias = 'COSTO_EXENTO_STK'
      end
      item
        FieldName = 'MODO_GRAVAMEN'
        FieldAlias = 'MODO_GRAVAMEN'
      end
      item
        FieldName = 'RECARGO'
        FieldAlias = 'RECARGO'
      end
      item
        FieldName = 'TASA'
        FieldAlias = 'TASA'
      end
      item
        FieldName = 'NuevoFPExento'
        FieldAlias = 'NuevoFPExento'
      end
      item
        FieldName = 'NuevoFPGravado'
        FieldAlias = 'NuevoFPGravado'
      end
      item
        FieldName = 'FIJACION_PRECIO_IVA'
        FieldAlias = 'FIJACION_PRECIO_IVA'
      end
      item
        FieldName = 'PRECIO_EXENTO'
        FieldAlias = 'PRECIO_EXENTO'
      end
      item
        FieldName = 'PRECIO_GRAVADO'
        FieldAlias = 'PRECIO_GRAVADO'
      end
      item
        FieldName = 'IVA_IMPORTE'
        FieldAlias = 'IVA_IMPORTE'
      end
      item
        FieldName = 'PRECIO'
        FieldAlias = 'PRECIO'
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
      end
      item
        FieldName = 'MUESTRAMARCA'
        FieldAlias = 'MUESTRAMARCA'
      end
      item
        FieldName = 'FIJACION_PRECIO_GRAVADO'
        FieldAlias = 'FIJACION_PRECIO_GRAVADO'
      end
      item
        FieldName = 'FIJACION_PRECIO_EXENTO'
        FieldAlias = 'FIJACION_PRECIO_EXENTO'
      end
      item
        FieldName = 'MONEDA'
        FieldAlias = 'MONEDA'
      end
      item
        FieldName = 'MUESTRAMONEDA'
        FieldAlias = 'MUESTRAMONEDA'
      end>
  end
  object SaveDialog1: TSaveDialog
    Left = 576
    Top = 264
  end
  object DataToXLS1: TDataToXLS
    DataSet = CDSConsultaStock
    Columns = <
      item
        DataField = 'CODIGO_STK'
        Title = 'Codigo'
        ColWidth = 2257
      end
      item
        DataField = 'REEMPLAZO_STK'
        Title = 'Codigo Alternativo'
      end
      item
        DataField = 'DETALLE_STK'
        Title = 'Detalle'
        ColWidth = 10138
      end
      item
        DataField = 'MUESTRAMARCA'
        Title = 'Marca'
        ColWidth = 4403
      end
      item
        DataField = 'MUESTRAMONEDA'
        Title = 'M'
        Alignment = taCenter
        ColWidth = 1443
      end
      item
        DataField = 'FIJACION_PRECIO_EXENTO'
        Title = 'Costo Exento'
        Alignment = taRightJustify
        ColWidth = 2553
        DataType = ctDouble
      end
      item
        DataField = 'FIJACION_PRECIO_GRAVADO'
        Title = 'Costo Gravad'
        Alignment = taRightJustify
        ColWidth = 2553
        DataType = ctDouble
      end
      item
        DataField = 'NuevoFPExento'
        Title = 'Costo Exento'
        Alignment = taRightJustify
        ColWidth = 2553
        DataType = ctDouble
      end
      item
        DataField = 'NuevoFPGravado'
        Title = 'Costo Gravado'
        Alignment = taRightJustify
        ColWidth = 2553
        DataType = ctDouble
      end
      item
        DataField = 'RECARGO'
        Title = 'Rec.'
        Alignment = taRightJustify
        ColWidth = 2220
        DataType = ctDouble
      end
      item
        DataField = 'TASA'
        Title = 'Iva'
        Alignment = taRightJustify
        ColWidth = 1480
        DataType = ctDouble
      end
      item
        DataField = 'PRECIO_EXENTO'
        Title = 'P.Exento'
        Alignment = taRightJustify
        ColWidth = 2701
        DataType = ctDouble
      end
      item
        DataField = 'PRECIO_GRAVADO'
        Title = 'P.Gravad.'
        Alignment = taRightJustify
        ColWidth = 2849
        DataType = ctDouble
      end
      item
        DataField = 'IVA_IMPORTE'
        Title = 'Iva'
        Alignment = taRightJustify
        ColWidth = 2220
        DataType = ctDouble
      end
      item
        DataField = 'PRECIO'
        Title = 'Precio'
        Alignment = taRightJustify
        ColWidth = 3108
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
    Left = 1032
    Top = 105
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 56
    Top = 384
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clDefault
    end
  end
  object QMoneda_: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from monedas')
    Left = 824
    Top = 432
  end
  object QConsultaStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk,s.detalle_stk,s.marca_stk,s.rubro_stk,s.subr' +
        'ubro_stk,m.signo,'
      
        's.fijacion_precio_gravado,s.fijacion_precio_exento,s.costo_iva,s' +
        '.fijacion_precio_iva,'
      
        's.costo_gravado_stk,s.costo_exento_stk,s.Modo_gravamen,s.moneda,' +
        's.reemplazo_stk,'
      'l.costo_gravado,l.costo_exento,l.costo_total,'
      
        'l.recargo,g.tasa,l.precio_gravado,l.iva_importe,l.precio_exento,' +
        'l.Precio,'
      'lc.actualiza_excepcion,'
      
        '1 as Cantidad,(select sum(dpk.fisico) as StockFIsico from deposi' +
        'tostk dpk where dpk.codigo_stk=s.codigo_stk),'
      
        '( select max(cb.codigobarra) from codigobarra cb where cb.codigo' +
        '_stk=s.codigo_stk) as MuestraCodigoBarra ,'
      '( select la.precio from listaprecioespecialart la'
      '    left join listaprecioespecialcab lc on lc.id=la.id_cab'
      'where la.codigoarticulo=s.codigo_stk and lc.pordefecto='#39'S'#39
      ') as MuestraPrecioVta'
      ''
      'from listaprecioespecialart l'
      ' join stock s on s.codigo_stk = l.codigoarticulo'
      'left join monedas m on m.id=s.moneda'
      'left join  listaprecioespecialcab lc on lc.id=l.id_cab'
      ' join gravamen g on g.codigo=s.tasa_iva'
      'where (s.clase_articulo=3 or s.clase_articulo=1) and'
      '      (s.marca_stk = :marca or :Marca = '#39'****'#39' ) and'
      '      (s.rubro_stk = :rubro or :Rubro = '#39'***'#39' ) and'
      '      (s.subrubro_stk = :SubRubro or :SubRubro = '#39'*****'#39' ) and'
      '      (l.id_cab = :lista)'
      '')
    Left = 48
    Top = 168
    ParamData = <
      item
        Position = 1
        Name = 'marca'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'marca'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'SubRubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'SubRubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'lista'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QListaPrecioPorDefectoFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select id,f_pago from  listaprecioespecialcab where pordefecto='#39 +
        'S'#39)
    Left = 576
    Top = 435
    object QListaPrecioPorDefectoFDID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QListaPrecioPorDefectoFDF_PAGO: TIntegerField
      FieldName = 'F_PAGO'
      Origin = 'F_PAGO'
    end
  end
  object QRubro_: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select  *  from Rubros Order By Detalle_Rubro')
    Left = 328
    Top = 136
  end
  object QMarca_: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select * from Marcas Order By Descripcion_marca')
    Left = 328
    Top = 184
  end
  object QSubRubro_: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select codigo_subrubro,detalle_subrubro,codigo_rubro from subrub' +
        'ros'
      'where (( codigo_rubro = :rubro ) or ( :rubro = '#39'***'#39' ))  '
      'order by detalle_subrubro')
    Left = 336
    Top = 264
    ParamData = <
      item
        Position = 1
        Name = 'RUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end>
  end
  object QCambiaMonedaFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update stock s set s.moneda= :newmoneda '
      'where s.codigo_stk = :codigo')
    Left = 536
    Top = 520
    ParamData = <
      item
        Name = 'NEWMONEDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object QCambiaMarcaFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update stock s set s.marca_stk= :newmarca '
      'where s.codigo_stk = :codigo')
    Left = 672
    Top = 520
    ParamData = <
      item
        Name = 'NEWMARCA'
        DataType = ftString
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object QListArt: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select l.*,lc.nombre as MuestraLista,lc.fecha as MuestraFecha,'
      
        '  lc.pordefecto as MuestraPorDefecto from listaprecioespecialart' +
        ' l'
      'left join listaprecioespecialcab lc on lc.id = l.id_cab'
      'where l.codigoarticulo = :codigo'
      'order by l.id_cab')
    Left = 192
    Top = 440
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object QListArtID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QListArtID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      Required = True
    end
    object QListArtCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object QListArtPRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
    end
    object QListArtRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
    end
    object QListArtCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
      Required = True
    end
    object QListArtCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
      Required = True
    end
    object QListArtCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
      Required = True
    end
    object QListArtIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
      Required = True
    end
    object QListArtPRECIO_GRAVADO: TFloatField
      FieldName = 'PRECIO_GRAVADO'
      Origin = 'PRECIO_GRAVADO'
    end
    object QListArtIVA_IMPORTE: TFloatField
      FieldName = 'IVA_IMPORTE'
      Origin = 'IVA_IMPORTE'
      Required = True
    end
    object QListArtPRECIO_EXENTO: TFloatField
      FieldName = 'PRECIO_EXENTO'
      Origin = 'PRECIO_EXENTO'
    end
    object QListArtFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
  end
  object spCambiaPrecioFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end>
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    StoredProcName = 'CAMBIO_DE_PRECIOS_2'
    Left = 616
    Top = 120
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 2
        Name = 'FPEXENTO'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'FPGRAVADO'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'COSTOEXENTO'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'COSTOGRAVADO'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'ID_LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'RECARGO'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'FECHA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'DETALLE'
        DataType = ftString
        ParamType = ptInput
        Size = 45
      end>
  end
  object spInformaCambioPrecioFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDateTime
      end
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDateTime
      end>
    StoredProcName = 'INGRESA_HISTORIAL_PRECIOS'
    Left = 616
    Top = 192
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 2
        Name = 'COSTO_OLD'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'COSTO_OLD_GRAVADO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'COSTO_OLD_EXENTO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'COSTO_NEW'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'COSTO_NEW_GRAVADO'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'COSTO_NEW_EXENTO'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'FPRECIO_OLD'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'FPRECIO_OLD_GRAVADO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 10
        Name = 'FPRECIO_OLD_EXENTO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 11
        Name = 'FPRECIO_NEW'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 12
        Name = 'FPRECIO_NEW_GRAVADO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 13
        Name = 'FPRECIO_NEW_EXENTO'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 14
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 15
        Name = 'MOTIVO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 16
        Name = 'FECHA'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Position = 17
        Name = 'ID_CAMBIO_PRECIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 18
        Name = 'ID_FC_COMPRA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object CDSRubro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRubro'
    Left = 448
    Top = 136
    object CDSRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
    object CDSRubroDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
    object CDSRubroCONTROL_RUBRO: TStringField
      FieldName = 'CONTROL_RUBRO'
      Size = 1
    end
    object CDSRubroFUERA_PROMO: TStringField
      FieldName = 'FUERA_PROMO'
      FixedChar = True
      Size = 1
    end
    object CDSRubroORDEN: TIntegerField
      FieldName = 'ORDEN'
      Required = True
    end
  end
  object DSPRubro: TDataSetProvider
    DataSet = QRubro_
    Options = []
    Left = 384
    Top = 136
  end
  object DSPSubRub: TDataSetProvider
    DataSet = QSubRubro_
    Options = []
    Left = 392
    Top = 264
  end
  object CDSSubRub: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'RUBRO'
        ParamType = ptInput
        Size = 3
      end>
    ProviderName = 'DSPSubRub'
    Left = 440
    Top = 264
    object CDSSubRubCODIGO_SUBRUBRO: TStringField
      FieldName = 'CODIGO_SUBRUBRO'
      Required = True
      Size = 5
    end
    object CDSSubRubDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Required = True
      Size = 45
    end
    object CDSSubRubCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
  end
  object DSPMarca: TDataSetProvider
    DataSet = QMarca_
    Options = []
    Left = 384
    Top = 184
  end
  object CDSMarca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMarca'
    Left = 448
    Top = 184
    object CDSMarcaMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Required = True
      Size = 4
    end
    object CDSMarcaDESCRIPCION_MARCA: TStringField
      FieldName = 'DESCRIPCION_MARCA'
      Size = 25
    end
    object CDSMarcaOBSERVACION_MARCA: TStringField
      FieldName = 'OBSERVACION_MARCA'
      Size = 40
    end
  end
  object DSPMoneda: TDataSetProvider
    DataSet = QMoneda_
    Options = []
    Left = 880
    Top = 432
  end
  object CDSMoneda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMoneda'
    Left = 928
    Top = 432
    object CDSMonedaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSMonedaMONEDA: TStringField
      FieldName = 'MONEDA'
      Size = 15
    end
    object CDSMonedaCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object CDSMonedaSIGNO: TStringField
      FieldName = 'SIGNO'
      Size = 5
    end
    object CDSMonedaORDEN: TSmallintField
      FieldName = 'ORDEN'
      Required = True
    end
    object CDSMonedaCOTIZACION_COMPRA: TFloatField
      FieldName = 'COTIZACION_COMPRA'
    end
  end
  object QProveedores_Marca: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select distinct mp.codigo,p.nombre from proveedor_marcas mp'
      'left join poveedor p on p.codigo=mp.codigo')
    Left = 1057
    Top = 232
  end
  object DSProveedores_Marca: TDataSource
    DataSet = QProveedores_Marca
    Left = 1176
    Top = 232
  end
  object QMarcas_Proveedor: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select mp.marka from proveedor_marcas mp'
      'where mp.codigo=:codigo')
    Left = 1057
    Top = 288
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
  end
end
