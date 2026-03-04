inherited FormImportarHasar: TFormImportarHasar
  Caption = 'Control Impresora Hasar'
  ClientHeight = 778
  ClientWidth = 1721
  ExplicitWidth = 1739
  ExplicitHeight = 819
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1721
    Height = 728
    Align = alClient
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 1721
    ExplicitHeight = 728
    object Splitter1: TSplitter
      Left = 905
      Top = 57
      Width = 5
      Height = 576
      Color = clMenuHighlight
      ParentColor = False
      ExplicitLeft = 953
      ExplicitHeight = 591
    end
    object pnCab: TPanel
      Left = 0
      Top = 0
      Width = 1721
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        1721
        57)
      object lbDesde: TLabel
        Left = 1429
        Top = 9
        Width = 31
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 891
      end
      object lbHasta: TLabel
        Left = 1556
        Top = 11
        Width = 28
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 1016
      end
      object SpeedButton1: TSpeedButton
        Left = 1683
        Top = 29
        Width = 23
        Height = 22
        Action = Busca
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
          00000000000100000004000000090000000D0000000F0000000F0000000C0000
          00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
          0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
          1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
          02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
          50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
          3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
          C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
          7CFFEFE6DFFFCDA67CFFCDA26BFFE3C28CFFEDD5A2FFE7CD9EFFD3B182FFD0AE
          88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
          C9FFDDC1A8FFC99865FFE8BE83FFE9C388FFEDCA97FFEFD3A7FFF2D9B0FFD5B1
          87FFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
          F2FFC79873FFDEAB77FFEFCDABFFF0D0B1FFEDC9A1FFECC69AFFEFCFA9FFE9C9
          A4FFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
          FCFFBE875FFFEDCFB9FFF5DFD2FFF2D6C1FFF1CFB4FFEDC6A4FFECC19BFFEFC8
          A6FFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
          F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FFF3D4C2FFF0CBB2FFEBB78EFFE5B7
          92FFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
          D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FFF6DDD3FFF1C8B2FFEBAF88FFC98E
          6CFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
          A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88865FFCE9D
          84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
          4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
          F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
          020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
          A2FC62504B900404031000000002000000000000000000000000000000000000
          000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
          1F3E000000060000000100000000000000000000000000000000}
        ExplicitLeft = 1143
      end
      object JvDBStatusLabel3: TJvDBStatusLabel
        Left = 916
        Top = 39
        Width = 96
        Height = 13
        DataSource = DSVtas
        Style = lsRecordNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object JvDBStatusLabel4: TJvDBStatusLabel
        Left = 803
        Top = 38
        Width = 96
        Height = 13
        DataSource = DSXmlCab
        Style = lsRecordNo
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 265
        Top = 22
        Width = 330
        Height = 29
        Caption = 'Movimientos del Conrolador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 1042
        Top = 23
        Width = 296
        Height = 29
        Caption = 'Movimientos Registrados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edDesde: TJvDateEdit
        Left = 1429
        Top = 30
        Width = 121
        Height = 21
        Anchors = [akTop, akRight]
        ShowNullDate = False
        TabOrder = 0
      end
      object edHasta: TJvDateEdit
        Left = 1556
        Top = 30
        Width = 121
        Height = 21
        Anchors = [akTop, akRight]
        ShowNullDate = False
        TabOrder = 1
      end
    end
    object pnPie: TPanel
      Left = 0
      Top = 633
      Width = 1721
      Height = 95
      Align = alBottom
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      TabOrder = 1
      DesignSize = (
        1721
        95)
      object Label34: TLabel
        Left = 16
        Top = 2
        Width = 103
        Height = 13
        Caption = 'Directorio XML Maper'
        ParentShowHint = False
        ShowHint = True
      end
      object sbMaperFile: TSpeedButton
        Left = 455
        Top = 17
        Width = 19
        Height = 21
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
          078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
          BE078DBEFF00FFFF00FF078DBE63CBF8078DBEA3E1FB66CDF965CDF865CDF965
          CDF965CDF865CDF965CDF866CDF83AADD8ACE7F5078DBEFF00FF078DBE6AD1F9
          078DBEA8E5FC6FD4FA6FD4F96ED4FA6FD4F96FD4FA6FD4FA6FD4FA6ED4F93EB1
          D9B1EAF5078DBEFF00FF078DBE72D6FA078DBEAEEAFC79DCFB79DCFB79DCFB79
          DCFB79DCFB7ADCFB79DCFA79DCFA44B5D9B6EEF6078DBEFF00FF078DBE79DDFB
          078DBEB5EEFD83E4FB84E4FB83E4FC83E4FC84E4FC83E4FC83E4FB84E5FC48B9
          DABBF2F6078DBEFF00FF078DBE82E3FC078DBEBAF3FD8DEBFC8DEBFC8DEBFC8D
          EBFD8DEBFD8DEBFC8DEBFD8DEBFC4CBBDABEF4F7078DBEFF00FF078DBE8AEAFC
          078DBEFFFFFFC9F7FEC8F7FEC9F7FEC9F7FEC9F7FEC8F7FEC9F7FEC8F7FE9BD5
          E7DEF9FB078DBEFF00FF078DBE93F0FE078DBE078DBE078DBE078DBE078DBE07
          8DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBEFF00FF078DBE9BF5FE
          9AF6FE9AF6FE9BF5FD9BF6FE9AF6FE9BF5FE9AF6FD9BF5FE9AF6FE9AF6FE0989
          BAFF00FFFF00FFFF00FF078DBEFEFEFEA0FBFFA0FBFEA0FBFEA1FAFEA1FBFEA0
          FAFEA1FBFEA1FBFFA0FBFFA1FBFF0989BAFF00FFFF00FFFF00FFFF00FF078DBE
          FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBE078DBE078DBE078DBEFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = sbMaperFileClick
      end
      object Label3: TLabel
        Left = 16
        Top = 42
        Width = 109
        Height = 13
        Caption = 'Directorio XML de Caja'
        ParentShowHint = False
        ShowHint = True
      end
      object spDirXML: TSpeedButton
        Left = 455
        Top = 55
        Width = 19
        Height = 21
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
          078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
          BE078DBEFF00FFFF00FF078DBE63CBF8078DBEA3E1FB66CDF965CDF865CDF965
          CDF965CDF865CDF965CDF866CDF83AADD8ACE7F5078DBEFF00FF078DBE6AD1F9
          078DBEA8E5FC6FD4FA6FD4F96ED4FA6FD4F96FD4FA6FD4FA6FD4FA6ED4F93EB1
          D9B1EAF5078DBEFF00FF078DBE72D6FA078DBEAEEAFC79DCFB79DCFB79DCFB79
          DCFB79DCFB7ADCFB79DCFA79DCFA44B5D9B6EEF6078DBEFF00FF078DBE79DDFB
          078DBEB5EEFD83E4FB84E4FB83E4FC83E4FC84E4FC83E4FC83E4FB84E5FC48B9
          DABBF2F6078DBEFF00FF078DBE82E3FC078DBEBAF3FD8DEBFC8DEBFC8DEBFC8D
          EBFD8DEBFD8DEBFC8DEBFD8DEBFC4CBBDABEF4F7078DBEFF00FF078DBE8AEAFC
          078DBEFFFFFFC9F7FEC8F7FEC9F7FEC9F7FEC9F7FEC8F7FEC9F7FEC8F7FE9BD5
          E7DEF9FB078DBEFF00FF078DBE93F0FE078DBE078DBE078DBE078DBE078DBE07
          8DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBEFF00FF078DBE9BF5FE
          9AF6FE9AF6FE9BF5FD9BF6FE9AF6FE9BF5FE9AF6FD9BF5FE9AF6FE9AF6FE0989
          BAFF00FFFF00FFFF00FF078DBEFEFEFEA0FBFFA0FBFEA0FBFEA1FAFEA1FBFEA0
          FAFEA1FBFEA1FBFFA0FBFFA1FBFF0989BAFF00FFFF00FFFF00FFFF00FF078DBE
          FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBE078DBE078DBE078DBEFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = spDirXMLClick
      end
      object BitBtn1: TBitBtn
        Left = 1586
        Top = 47
        Width = 111
        Height = 34
        Anchors = [akTop, akRight]
        Caption = 'Cargar XML Forma Individual'
        TabOrder = 0
        WordWrap = True
        OnClick = BitBtn1Click
      end
      object edPathMaper: TEdit
        Left = 16
        Top = 17
        Width = 433
        Height = 21
        Hint = 'Archivo que Mapea la estructura del XML'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TextHint = 'Archivo Maper'
      end
      object edIvaVtas: TJvCalcEdit
        Left = 1330
        Top = 5
        Width = 121
        Height = 21
        DisplayFormat = ',0.00'
        Anchors = [akTop, akRight]
        ShowButton = False
        TabOrder = 2
        DecimalPlacesAlwaysShown = False
      end
      object edTotalVtas: TJvCalcEdit
        Left = 1584
        Top = 6
        Width = 121
        Height = 21
        DisplayFormat = ',0.00'
        Anchors = [akTop, akRight]
        ShowButton = False
        TabOrder = 3
        DecimalPlacesAlwaysShown = False
      end
      object edNetoVtas: TJvCalcEdit
        Left = 1203
        Top = 5
        Width = 121
        Height = 21
        DisplayFormat = ',0.00'
        Anchors = [akTop, akRight]
        ShowButton = False
        TabOrder = 4
        DecimalPlacesAlwaysShown = False
      end
      object chTraerDatos: TCheckBox
        Left = 984
        Top = 6
        Width = 166
        Height = 17
        Anchors = [akTop]
        BiDiMode = bdRightToLeft
        Caption = 'Traer Datos Al Cargar el XML'
        Checked = True
        ParentBiDiMode = False
        State = cbChecked
        TabOrder = 5
      end
      object edTotalExento: TJvCalcEdit
        Left = 1457
        Top = 6
        Width = 121
        Height = 21
        DisplayFormat = ',0.00'
        Anchors = [akTop, akRight]
        ShowButton = False
        TabOrder = 6
        DecimalPlacesAlwaysShown = False
      end
      object edPathCajas: TEdit
        Left = 16
        Top = 55
        Width = 433
        Height = 21
        Hint = 'Archivos de Caja XML'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        TextHint = 'Archivos de Caja'
      end
      object lbArchivos: TListBox
        Left = 488
        Top = 2
        Width = 382
        Height = 88
        ItemHeight = 13
        TabOrder = 8
        OnClick = lbArchivosClick
      end
      object btLeeDIrectorio: TBitBtn
        Left = 370
        Top = 77
        Width = 79
        Height = 16
        Caption = 'Leer Carpeta'
        TabOrder = 9
        OnClick = btLeeDIrectorioClick
      end
    end
    object pnIzq: TPanel
      Left = 0
      Top = 57
      Width = 905
      Height = 576
      Align = alLeft
      Caption = 'pnIzq'
      Color = clSilver
      Padding.Bottom = 3
      ParentBackground = False
      TabOrder = 2
      object Splitter2: TSplitter
        Left = 1
        Top = 233
        Width = 903
        Height = 5
        Cursor = crVSplit
        Align = alTop
        ExplicitLeft = -15
        ExplicitTop = 502
        ExplicitWidth = 879
      end
      object dbgXMLCab: TDBGrid
        Left = 1
        Top = 1
        Width = 903
        Height = 232
        Align = alTop
        DataSource = DSXmlCab
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = dbgXMLCabTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Nombre'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 231
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TipoCliente'
            Title.Alignment = taCenter
            Title.Caption = 'Insc.Iva'
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
            FieldName = 'TipoDocumento'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SubTipoDocumento'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CalificadorDocumento'
            Title.Alignment = taCenter
            Title.Caption = 'Let'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TipoAFIP'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fecha'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NumeroCompleto'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Base'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MontoIVA'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MontoOtrosTributos'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MontoNoGravado'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MontoExento'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MontoGravado'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DiferenciaGravadoFinal'
            Title.Caption = 'Imp.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Final'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 82
            Visible = True
          end>
      end
      object pnPieSuma: TPanel
        Left = 1
        Top = 529
        Width = 903
        Height = 43
        Align = alBottom
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 1
        ExplicitLeft = 2
        ExplicitTop = 544
        DesignSize = (
          903
          43)
        object Label4: TLabel
          Left = 369
          Top = 6
          Width = 23
          Height = 13
          Caption = 'Neto'
        end
        object Label5: TLabel
          Left = 487
          Top = 6
          Width = 15
          Height = 13
          Caption = 'Iva'
        end
        object Label6: TLabel
          Left = 587
          Top = 6
          Width = 20
          Height = 13
          Caption = 'IIBB'
        end
        object Label7: TLabel
          Left = 687
          Top = 6
          Width = 24
          Height = 13
          Caption = 'Total'
        end
        object edTotal: TJvCalcEdit
          Left = 687
          Top = 20
          Width = 121
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akTop, akRight]
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
        end
        object edIva: TJvCalcEdit
          Left = 487
          Top = 19
          Width = 94
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akTop, akRight]
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
        end
        object edGravado: TJvCalcEdit
          Left = 365
          Top = 20
          Width = 116
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akTop, akRight]
          ShowButton = False
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
        end
        object edIIB: TJvCalcEdit
          Left = 587
          Top = 19
          Width = 94
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akTop, akRight]
          ShowButton = False
          TabOrder = 3
          DecimalPlacesAlwaysShown = False
        end
      end
      object dbgXMLDet: TDBGrid
        Left = 1
        Top = 238
        Width = 903
        Height = 251
        Align = alClient
        DataSource = DSXmlDet
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CodigoMatrix'
            Title.Alignment = taCenter
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
            FieldName = 'Descripcion'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 142
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cantidad'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PrecioBase'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MontoTotalBase'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TasaIVA'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MontoTotalIVA'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MontoTotalII'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ImpIntFijo'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PrecioFinal'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MontoFinal'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 81
            Visible = True
          end>
      end
      object pnSUbTotal: TPanel
        Left = 1
        Top = 489
        Width = 903
        Height = 40
        Align = alBottom
        Color = clSilver
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 3
        ExplicitTop = 513
        DesignSize = (
          903
          40)
        object JvDBStatusLabel2: TJvDBStatusLabel
          Left = 6
          Top = 6
          Width = 96
          Height = 13
          DataSource = DSXmlDet
          Style = lsRecordNo
          Transparent = True
        end
        object edTotalFina: TJvCalcEdit
          Left = 717
          Top = 4
          Width = 91
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akTop, akRight]
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
        end
        object edTotalIVA: TJvCalcEdit
          Left = 617
          Top = 4
          Width = 94
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akTop, akRight]
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
        end
        object edTotalBase: TJvCalcEdit
          Left = 397
          Top = 3
          Width = 97
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akTop, akRight]
          ShowButton = False
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
        end
        object edTotalExe: TJvCalcEdit
          Left = 500
          Top = 3
          Width = 94
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akTop, akRight]
          ShowButton = False
          TabOrder = 3
          DecimalPlacesAlwaysShown = False
        end
      end
    end
    object Panel2: TPanel
      Left = 910
      Top = 57
      Width = 811
      Height = 576
      Align = alClient
      Caption = 'Panel2'
      TabOrder = 3
      object Splitter3: TSplitter
        Left = 1
        Top = 326
        Width = 809
        Height = 5
        Cursor = crVSplit
        Align = alTop
        Color = clMenuHighlight
        ParentColor = False
        ExplicitTop = 393
        ExplicitWidth = 713
      end
      object dbgVtas: TDBGrid
        Left = 1
        Top = 1
        Width = 809
        Height = 325
        Align = alTop
        DataSource = DSVtas
        DefaultDrawing = False
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
        PopupMenu = PopupMenu2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = dbgVtasCellClick
        OnDrawColumnCell = dbgVtasDrawColumnCell
        OnDblClick = dbgVtasDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'TIPOCPBTE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLASECPBTE'
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
            FieldName = 'LETRAFAC'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUCFAC'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMEROFAC'
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
            Expanded = False
            FieldName = 'NOMBRE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 207
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NETOGRAV2'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DIFIVA'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
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
            Visible = True
          end>
      end
      object dbgDetalle: TDBGrid
        Left = 1
        Top = 331
        Width = 809
        Height = 182
        Align = alClient
        DataSource = DSVtasDet
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'RENGLON'
            Title.Alignment = taCenter
            Title.Caption = '#'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGOARTICULO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 70
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
            Width = 188
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MODO_GRAVAMEN'
            Title.Alignment = taCenter
            Title.Caption = 'G'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 20
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
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IVA_TASA'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNITARIO_TOTAL'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IVA_UNITARIO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL_GRAVADO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL_EXENTO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IVA_TOTAL'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL_FINAL'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 1
        Top = 513
        Width = 809
        Height = 62
        Align = alBottom
        TabOrder = 2
        DesignSize = (
          809
          62)
        object JvDBStatusLabel1: TJvDBStatusLabel
          Left = 11
          Top = 6
          Width = 96
          Height = 13
          DataSource = DSVtasDet
          Style = lsRecordNo
          Transparent = True
          WordWrap = True
        end
        object DBText1: TDBText
          Left = 139
          Top = 24
          Width = 65
          Height = 17
          DataField = 'UNITARIO_EXENTO'
          DataSource = DSVtasDet
        end
        object DBText2: TDBText
          Left = 219
          Top = 25
          Width = 65
          Height = 17
          DataField = 'UNITARIO_GRAVADO'
          DataSource = DSVtasDet
        end
        object Label1: TLabel
          Left = 131
          Top = 5
          Width = 52
          Height = 13
          Caption = 'Uni.Exento'
        end
        object Label2: TLabel
          Left = 210
          Top = 6
          Width = 60
          Height = 13
          Caption = 'Uni.Gravado'
        end
        object DBEdit1: TDBEdit
          Left = 702
          Top = 3
          Width = 94
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'SUMATOTAL'
          DataSource = DSVtasDet
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 490
          Top = 3
          Width = 94
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'SUMAEXENTO'
          DataSource = DSVtasDet
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 390
          Top = 3
          Width = 94
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'SUMANETO'
          DataSource = DSVtasDet
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 602
          Top = 3
          Width = 94
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'SUMAIVA'
          DataSource = DSVtasDet
          TabOrder = 3
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 728
    Width = 1721
    Height = 27
    Align = alBottom
    ButtonHeight = 26
    ExplicitTop = 728
    ExplicitWidth = 1721
    ExplicitHeight = 27
    inherited btConfirma: TBitBtn
      Height = 26
      Visible = False
      ExplicitHeight = 26
    end
    inherited btNuevo: TBitBtn
      Height = 26
      Visible = False
      ExplicitHeight = 26
    end
    inherited btCancelar: TBitBtn
      Height = 26
      Visible = False
      ExplicitHeight = 26
    end
    inherited btModificar: TBitBtn
      Height = 26
      Visible = False
      ExplicitHeight = 26
    end
    inherited Pr: TSpeedButton
      Height = 26
      Visible = False
      ExplicitHeight = 26
    end
    inherited btBuscar: TBitBtn
      Height = 26
      Visible = False
      ExplicitHeight = 26
    end
    inherited Ne: TSpeedButton
      Height = 26
      Visible = False
      ExplicitHeight = 26
    end
    inherited btBorrar: TBitBtn
      Height = 26
      Visible = False
      ExplicitHeight = 26
    end
    inherited btSalir: TBitBtn
      Height = 26
      ExplicitHeight = 26
    end
  end
  inherited Panel1: TPanel
    Top = 755
    Width = 1721
    Align = alBottom
    ExplicitTop = 755
    ExplicitWidth = 1721
    inherited sbEstado: TStatusBar
      Width = 1559
      ExplicitWidth = 1559
    end
  end
  inherited ActionList1: TActionList
    Left = 672
    Top = 65528
    inherited Search: TAction
      Caption = ''
    end
    object Busca: TAction
      OnExecute = BuscaExecute
    end
    object Recalcular: TAction
      Caption = 'Recalcular'
      OnExecute = RecalcularExecute
    end
    object BuscarFaltante: TAction
      Caption = 'Buscar Faltante'
      OnExecute = BuscarFaltanteExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 536
    Top = 65520
  end
  inherited ImageList1: TImageList
    Top = 0
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 40
    Top = 320
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 496
    Top = 312
  end
  object OpenDialog1: TOpenDialog
    Left = 752
    Top = 504
  end
  object DataSource1: TDataSource
    Left = 232
    Top = 168
  end
  object CDSxmlCab: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'XMLTransformProvider'
    AfterScroll = CDSxmlCabAfterScroll
    Left = 280
    Top = 480
    object CDSxmlCabNombre: TStringField
      DisplayWidth = 23
      FieldName = 'Nombre'
      Size = 23
    end
    object CDSxmlCabDireccion: TStringField
      DisplayWidth = 17
      FieldName = 'Direccion'
      Size = 13
    end
    object CDSxmlCabTipoCliente: TStringField
      Alignment = taCenter
      DisplayLabel = 'Modo Iva'
      DisplayWidth = 22
      FieldName = 'TipoCliente'
      Size = 22
    end
    object CDSxmlCabTipoDocumento: TStringField
      Alignment = taCenter
      DisplayLabel = 'Docum.'
      DisplayWidth = 12
      FieldName = 'TipoDocumento'
      Size = 12
    end
    object CDSxmlCabSubTipoDocumento: TStringField
      Alignment = taCenter
      DisplayLabel = 'T.Cpbte'
      DisplayWidth = 15
      FieldName = 'SubTipoDocumento'
      Size = 7
    end
    object CDSxmlCabCalificadorDocumento: TStringField
      Alignment = taCenter
      DisplayLabel = 'Let.'
      DisplayWidth = 6
      FieldName = 'CalificadorDocumento'
      Size = 14
    end
    object CDSxmlCabTipoAFIP: TStringField
      Alignment = taCenter
      DisplayLabel = 'C.Afip'
      DisplayWidth = 5
      FieldName = 'TipoAFIP'
      Size = 2
    end
    object CDSxmlCabFecha: TStringField
      Alignment = taCenter
      DisplayWidth = 6
      FieldName = 'Fecha'
      Size = 6
    end
    object CDSxmlCabNumeroCompleto: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro.Cpbte'
      DisplayWidth = 14
      FieldName = 'NumeroCompleto'
      Size = 14
    end
    object CDSxmlCabBase: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'Neto'
      DisplayWidth = 7
      FieldName = 'Base'
      Size = 7
    end
    object CDSxmlCabMontoIVA: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'Iva'
      DisplayWidth = 7
      FieldName = 'MontoIVA'
      Size = 7
    end
    object CDSxmlCabMontoOtrosTributos: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'O.Trib.'
      DisplayWidth = 15
      FieldName = 'MontoOtrosTributos'
      Size = 1
    end
    object CDSxmlCabMontoNoGravado: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'No Grav.'
      DisplayWidth = 14
      FieldName = 'MontoNoGravado'
      Size = 1
    end
    object CDSxmlCabMontoExento: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'Exento'
      DisplayWidth = 10
      FieldName = 'MontoExento'
      Size = 1
    end
    object CDSxmlCabMontoGravado: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'Gravado'
      DisplayWidth = 11
      FieldName = 'MontoGravado'
      Size = 8
    end
    object CDSxmlCabFinal: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'T.Final'
      DisplayWidth = 8
      FieldName = 'Final'
      Size = 8
    end
    object CDSxmlCabVenta: TDataSetField
      FieldName = 'Venta'
      UnNamed = True
    end
  end
  object XMLTransformProvider: TXMLTransformProvider
    TransformRead.TransformationFile = 'C:\Users\Usuario\Desktop\jornada\Hasar_11.xtr'
    XMLDataFile = 'C:\Users\Usuario\Desktop\jornada\105.xml'
    Left = 160
    Top = 520
  end
  object DSXmlDet: TDataSource
    DataSet = CDSXmlDet
    Left = 376
    Top = 544
  end
  object QVtas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end>
    SQL.Strings = (
      
        'select f.id_fc,f.tipocpbte,f.clasecpbte,f.letrafac,f.sucfac,f.nu' +
        'merofac,f.nombre,f.nrocpbte,'
      
        '       f.netograv2,(f.total-f.netograv2-f.netoexen2) DifIVA, f.t' +
        'otal,c.fiscal,c.nombreimpresora,f.netoexen2  from  fcvtacab f'
      'left join comprobantes c on c.clase_comprob = f.ClaseCpbte and'
      '                            c.letra        = f.letrafac and'
      '                            c.sucursal     = f.sucursal and'
      '                            c.tipo_comprob = f.tipocpbte and'
      '                            c.compra_venta = '#39'V'#39
      
        'where ( f.fechaVta between :desde and :hasta ) and c.fiscal='#39'S'#39' ' +
        'and f.sucfac = :sucfac and f.anulado<>'#39'S'#39
      'order by f.id_fc'
      ''
      '')
    Left = 825
    Top = 249
    ParamData = <
      item
        Position = 1
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'SUCFAC'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end>
  end
  object DSVtas: TDataSource
    DataSet = CDSVtas
    Left = 1072
    Top = 248
  end
  object CDSVtas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'HASTA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SUCFAC'
        ParamType = ptInput
        Size = 4
      end>
    ProviderName = 'DSPVtas'
    BeforeInsert = CDSVtasBeforeInsert
    Left = 1001
    Top = 249
    object CDSVtasID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSVtasTIPOCPBTE: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSVtasCLASECPBTE: TStringField
      DisplayLabel = 'Clase'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSVtasLETRAFAC: TStringField
      DisplayLabel = 'Let'
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVtasSUCFAC: TStringField
      DisplayLabel = 'Pref.'
      FieldName = 'SUCFAC'
      Origin = 'SUCFAC'
      Size = 4
    end
    object CDSVtasNUMEROFAC: TStringField
      DisplayLabel = 'Nro.Fac'
      FieldName = 'NUMEROFAC'
      Origin = 'NUMEROFAC'
      Size = 8
    end
    object CDSVtasNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSVtasNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSVtasNETOGRAV2: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'NETOGRAV2'
      Origin = 'NETOGRAV2'
      Required = True
      DisplayFormat = ',0.000'
    end
    object CDSVtasDIFIVA: TFloatField
      DisplayLabel = 'Iva'
      FieldName = 'DIFIVA'
      Origin = 'DIFIVA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.000'
    end
    object CDSVtasTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      DisplayFormat = ',0.000'
    end
    object CDSVtasFISCAL: TStringField
      FieldName = 'FISCAL'
      Origin = 'FISCAL'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object CDSVtasNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      Required = True
      DisplayFormat = ',0.000'
    end
  end
  object DSPVtas: TDataSetProvider
    DataSet = QVtas
    Options = []
    Left = 897
    Top = 249
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
  end
  object CDSXmlDet: TClientDataSet
    Aggregates = <>
    DataSetField = CDSxmlCabVenta
    Params = <>
    Left = 280
    Top = 545
    object CDSXmlDetCodigoMatrix: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CodigoMatrix'
      Size = 8
    end
    object CDSXmlDetDescripcion: TStringField
      FieldName = 'Descripcion'
    end
    object CDSXmlDetCantidad: TStringField
      Alignment = taRightJustify
      FieldName = 'Cantidad'
      Size = 7
    end
    object CDSXmlDetPrecioBase: TStringField
      Alignment = taRightJustify
      FieldName = 'PrecioBase'
      Size = 9
    end
    object CDSXmlDetMontoTotalBase: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'Tot.Base'
      FieldName = 'MontoTotalBase'
      Size = 7
    end
    object CDSXmlDetTasaIVA: TStringField
      Alignment = taRightJustify
      DisplayLabel = '% Iva'
      FieldName = 'TasaIVA'
      Size = 4
    end
    object CDSXmlDetMontoTotalIVA: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'T.IVA'
      FieldName = 'MontoTotalIVA'
      Size = 6
    end
    object CDSXmlDetMontoTotalII: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'T.IIb'
      FieldName = 'MontoTotalII'
      Size = 6
    end
    object CDSXmlDetImpIntFijo: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'Imp.Int'
      FieldName = 'ImpIntFijo'
      Size = 2
    end
    object CDSXmlDetMontoFinal: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'Uni.Final'
      FieldName = 'MontoFinal'
      Size = 7
    end
    object CDSXmlDetPrecioFinal: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'P.Final'
      FieldName = 'PrecioFinal'
      Size = 8
    end
  end
  object DSXmlCab: TDataSource
    DataSet = CDSxmlCab
    Left = 384
    Top = 481
  end
  object QVtasDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end>
    SQL.Strings = (
      'select d.* from FcVtaDet d '
      'where d.id_cabfac between :desde and :hasta'
      'order by d.renglon')
    Left = 817
    Top = 313
    ParamData = <
      item
        Position = 1
        Name = 'DESDE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'HASTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QVtasDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVtasDetID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Origin = 'ID_CABFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVtasDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QVtasDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QVtasDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QVtasDetRENGLON: TFloatField
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
    end
    object QVtasDetFECHAVTA: TDateField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
    object QVtasDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object QVtasDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QVtasDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QVtasDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVtasDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QVtasDetUNIDADES_GRAVADO: TFloatField
      FieldName = 'UNIDADES_GRAVADO'
      Origin = 'UNIDADES_GRAVADO'
    end
    object QVtasDetUNIDADES_EXENTO: TFloatField
      FieldName = 'UNIDADES_EXENTO'
      Origin = 'UNIDADES_EXENTO'
    end
    object QVtasDetUNIDADES_TOTAL: TFloatField
      FieldName = 'UNIDADES_TOTAL'
      Origin = 'UNIDADES_TOTAL'
    end
    object QVtasDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
    end
    object QVtasDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
    end
    object QVtasDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
    end
    object QVtasDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
    end
    object QVtasDetIVA_UNITARIO: TFloatField
      FieldName = 'IVA_UNITARIO'
      Origin = 'IVA_UNITARIO'
      Required = True
    end
    object QVtasDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
    end
    object QVtasDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
    end
    object QVtasDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVtasDetTOTAL_EXENTO: TFloatField
      FieldName = 'TOTAL_EXENTO'
      Origin = 'TOTAL_EXENTO'
      Required = True
    end
    object QVtasDetTOTAL_GRAVADO: TFloatField
      FieldName = 'TOTAL_GRAVADO'
      Origin = 'TOTAL_GRAVADO'
      Required = True
    end
    object QVtasDetIVA_TOTAL: TFloatField
      FieldName = 'IVA_TOTAL'
      Origin = 'IVA_TOTAL'
      Required = True
    end
    object QVtasDetTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QVtasDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Origin = 'TIPOIVA_TASA'
      Required = True
    end
    object QVtasDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Origin = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object QVtasDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
    end
    object QVtasDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
      Origin = 'IVA_SOBRETASA'
    end
    object QVtasDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      Required = True
    end
    object QVtasDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QVtasDetMARGEN: TFloatField
      FieldName = 'MARGEN'
      Origin = 'MARGEN'
    end
    object QVtasDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVtasDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVtasDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Origin = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object QVtasDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Origin = 'CON_NRO_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVtasDetCON_CODIGO_BARRA: TStringField
      FieldName = 'CON_CODIGO_BARRA'
      Origin = 'CON_CODIGO_BARRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVtasDetIB_TASA: TFloatField
      FieldName = 'IB_TASA'
      Origin = 'IB_TASA'
      Required = True
    end
    object QVtasDetTIPOIB_TASA: TIntegerField
      FieldName = 'TIPOIB_TASA'
      Origin = 'TIPOIB_TASA'
      Required = True
    end
    object QVtasDetPRECIO_EDITABLE: TStringField
      FieldName = 'PRECIO_EDITABLE'
      Origin = 'PRECIO_EDITABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVtasDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
      Required = True
    end
    object QVtasDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      Required = True
    end
    object QVtasDetDETALLE_ADICIONAL: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Origin = 'DETALLE_ADICIONAL'
      Size = 300
    end
    object QVtasDetGRUPO_DETALLE: TIntegerField
      FieldName = 'GRUPO_DETALLE'
      Origin = 'GRUPO_DETALLE'
    end
    object QVtasDetCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Origin = 'CODIGOBARRA'
      Size = 50
    end
    object QVtasDetDE_PRODUCCION: TStringField
      FieldName = 'DE_PRODUCCION'
      Origin = 'DE_PRODUCCION'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPVtasDet: TDataSetProvider
    DataSet = QVtasDet
    Options = []
    Left = 897
    Top = 321
  end
  object CDSVtasDet: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    IndexFieldNames = 'ID_CABFAC'
    Params = <
      item
        DataType = ftInteger
        Name = 'DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'HASTA'
        ParamType = ptInput
      end>
    ProviderName = 'DSPVtasDet'
    BeforeInsert = CDSVtasDetBeforeInsert
    OnCalcFields = CDSVtasDetCalcFields
    Left = 1001
    Top = 321
    object CDSVtasDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSVtasDetID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Origin = 'ID_CABFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSVtasDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSVtasDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSVtasDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSVtasDetRENGLON: TFloatField
      DisplayLabel = 'Rem'
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
    end
    object CDSVtasDetFECHAVTA: TDateField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
    object CDSVtasDetCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object CDSVtasDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSVtasDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object CDSVtasDetMODO_GRAVAMEN: TStringField
      DisplayLabel = 'M/G'
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVtasDetCANTIDAD: TFloatField
      DisplayLabel = 'Cantid.'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00'
    end
    object CDSVtasDetUNIDADES_GRAVADO: TFloatField
      FieldName = 'UNIDADES_GRAVADO'
      Origin = 'UNIDADES_GRAVADO'
      DisplayFormat = ',0.00'
    end
    object CDSVtasDetUNIDADES_EXENTO: TFloatField
      FieldName = 'UNIDADES_EXENTO'
      Origin = 'UNIDADES_EXENTO'
      DisplayFormat = ',0.00'
    end
    object CDSVtasDetUNIDADES_TOTAL: TFloatField
      FieldName = 'UNIDADES_TOTAL'
      Origin = 'UNIDADES_TOTAL'
      DisplayFormat = ',0.00'
    end
    object CDSVtasDetCOSTO_GRAVADO: TFloatField
      DisplayLabel = 'C.Grav'
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
      DisplayFormat = ',0.00'
    end
    object CDSVtasDetCOSTO_EXENTO: TFloatField
      DisplayLabel = 'C.Exe'
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
      DisplayFormat = ',0.00'
    end
    object CDSVtasDetCOSTO_TOTAL: TFloatField
      DisplayLabel = 'C.Total'
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
      DisplayFormat = ',0.00'
    end
    object CDSVtasDetUNITARIO_GRAVADO: TFloatField
      DisplayLabel = 'U.Grav'
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
      DisplayFormat = ',0.00'
    end
    object CDSVtasDetIVA_UNITARIO: TFloatField
      DisplayLabel = 'Iva Unit'
      FieldName = 'IVA_UNITARIO'
      Origin = 'IVA_UNITARIO'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSVtasDetUNITARIO_EXENTO: TFloatField
      DisplayLabel = 'U.Exe'
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
      DisplayFormat = ',0.00'
    end
    object CDSVtasDetUNITARIO_TOTAL: TFloatField
      DisplayLabel = 'U.Total'
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
      DisplayFormat = ',0.00'
    end
    object CDSVtasDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVtasDetTOTAL_EXENTO: TFloatField
      DisplayLabel = 'T.Exe'
      FieldName = 'TOTAL_EXENTO'
      Origin = 'TOTAL_EXENTO'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSVtasDetTOTAL_GRAVADO: TFloatField
      DisplayLabel = 'T.Grav'
      FieldName = 'TOTAL_GRAVADO'
      Origin = 'TOTAL_GRAVADO'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSVtasDetIVA_TOTAL: TFloatField
      DisplayLabel = 'Iva Total'
      FieldName = 'IVA_TOTAL'
      Origin = 'IVA_TOTAL'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSVtasDetTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
    end
    object CDSVtasDetTIPOIVA_TASA: TIntegerField
      DisplayLabel = '%o Iva'
      FieldName = 'TIPOIVA_TASA'
      Origin = 'TIPOIVA_TASA'
      Required = True
    end
    object CDSVtasDetTIPOIVA_SOBRETASA: TIntegerField
      DisplayLabel = '% S.Tasa'
      FieldName = 'TIPOIVA_SOBRETASA'
      Origin = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object CDSVtasDetIVA_TASA: TFloatField
      DisplayLabel = 'Iva '
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
    end
    object CDSVtasDetIVA_SOBRETASA: TFloatField
      DisplayLabel = 'Iva 2'
      FieldName = 'IVA_SOBRETASA'
      Origin = 'IVA_SOBRETASA'
    end
    object CDSVtasDetDESCUENTO: TFloatField
      DisplayLabel = 'Dsto.'
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      Required = True
    end
    object CDSVtasDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object CDSVtasDetMARGEN: TFloatField
      FieldName = 'MARGEN'
      Origin = 'MARGEN'
    end
    object CDSVtasDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVtasDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVtasDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Origin = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object CDSVtasDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Origin = 'CON_NRO_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVtasDetCON_CODIGO_BARRA: TStringField
      FieldName = 'CON_CODIGO_BARRA'
      Origin = 'CON_CODIGO_BARRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVtasDetIB_TASA: TFloatField
      FieldName = 'IB_TASA'
      Origin = 'IB_TASA'
      Required = True
    end
    object CDSVtasDetTIPOIB_TASA: TIntegerField
      FieldName = 'TIPOIB_TASA'
      Origin = 'TIPOIB_TASA'
      Required = True
    end
    object CDSVtasDetPRECIO_EDITABLE: TStringField
      FieldName = 'PRECIO_EDITABLE'
      Origin = 'PRECIO_EDITABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVtasDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
      Required = True
    end
    object CDSVtasDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      Required = True
    end
    object CDSVtasDetDETALLE_ADICIONAL: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Origin = 'DETALLE_ADICIONAL'
      Size = 300
    end
    object CDSVtasDetGRUPO_DETALLE: TIntegerField
      FieldName = 'GRUPO_DETALLE'
      Origin = 'GRUPO_DETALLE'
    end
    object CDSVtasDetCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Origin = 'CODIGOBARRA'
      Size = 50
    end
    object CDSVtasDetDE_PRODUCCION: TStringField
      FieldName = 'DE_PRODUCCION'
      Origin = 'DE_PRODUCCION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVtasDetTOTAL_FINAL: TFloatField
      DisplayLabel = 'Tot.Final'
      FieldKind = fkInternalCalc
      FieldName = 'TOTAL_FINAL'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object CDSVtasDetSUMATOTAL: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SUMATOTAL'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.000;-,0.000;-'
      Expression = 'sum(TOTAL_FINAL)'
    end
    object CDSVtasDetSUMANETO: TAggregateField
      Alignment = taRightJustify
      DisplayLabel = 'Total Neto'
      FieldName = 'SUMANETO'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.000;-,0.000;-'
      Expression = 'sum(TOTAL_GRAVADO)'
    end
    object CDSVtasDetSUMAEXENTO: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SUMAEXENTO'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.000;-,0.000;-'
      Expression = 'sum(TOTAL_exento)'
    end
    object CDSVtasDetSUMAIVA: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SUMAIVA'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.000;-,0.000;-'
      Expression = 'SUM(IVA_TOTAL)'
    end
  end
  object DSVtasDet: TDataSource
    DataSet = CDSVtasDet
    Left = 1072
    Top = 320
  end
  object PopupMenu1: TPopupMenu
    Left = 584
    Top = 113
    object Nombre: TMenuItem
      Caption = 'Nombre'
      Checked = True
      OnClick = NombreClick
    end
    object OtrosTributos1: TMenuItem
      Caption = 'OtrosTributos'
      Checked = True
      OnClick = OtrosTributos1Click
    end
    object NoGravado1: TMenuItem
      Caption = 'No Gravado'
      Checked = True
      OnClick = NoGravado1Click
    end
    object Exento1: TMenuItem
      Caption = 'Exento'
      Checked = True
      OnClick = Exento1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 1462
    Top = 241
    object Recalcular1: TMenuItem
      Action = Recalcular
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object BuscarFaltante1: TMenuItem
      Action = BuscarFaltante
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Aplicar1: TMenuItem
      Caption = 'Aplicar'
      OnClick = Aplicar1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object CalcularyAplicar1: TMenuItem
      Caption = 'Calcular y Aplicar'
      OnClick = CalcularyAplicar1Click
    end
  end
end
