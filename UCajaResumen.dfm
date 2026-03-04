object FormCajaResumen: TFormCajaResumen
  Left = 205
  Top = 97
  BorderWidth = 1
  Caption = 'Caja Resumen'
  ClientHeight = 675
  ClientWidth = 993
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object pcCaja: TPageControl
    Left = 0
    Top = 0
    Width = 993
    Height = 675
    ActivePage = tsMovimientos
    Align = alClient
    TabOrder = 0
    object tsMovimientos: TTabSheet
      Caption = 'Movimientos'
      object Splitter1: TSplitter
        Left = 489
        Top = 35
        Width = 0
        Height = 577
        ExplicitLeft = 476
        ExplicitHeight = 487
      end
      object pnPie: TPanel
        Left = 0
        Top = 0
        Width = 985
        Height = 35
        Align = alTop
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 646
          Top = 9
          Width = 47
          Height = 19
          Caption = 'Fecha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 414
          Top = 17
          Width = 87
          Height = 17
          DataField = 'FECHA_INCIO'
          DataSource = DSCaja
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 409
          Top = 1
          Width = 92
          Height = 16
          Caption = 'Fecha de Incio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 362
          Top = 1
          Width = 26
          Height = 16
          Caption = 'Nro.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 359
          Top = 17
          Width = 44
          Height = 17
          DataField = 'NUMEROCAJA'
          DataSource = DSCaja
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbcCtas: TJvDBLookupCombo
          Left = 1
          Top = 4
          Width = 258
          Height = 25
          DropDownWidth = 300
          DisplayEmpty = 'Seleccionar caja'
          EmptyValue = '-1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'ID_CUENTA_CAJA'
          LookupDisplay = 'MUESTRACTACAJA;NUMEROCAJA;fecha_incio'
          LookupSource = DSCaja
          ParentFont = False
          TabOrder = 0
          OnClick = dbcCtasClick
        end
        object btAbrirCaja: TBitBtn
          Left = 264
          Top = 1
          Width = 89
          Height = 32
          Caption = 'Abrir Caja'
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0136020136020136020136020136
            02013602013602013602FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF034A0401360203860903990B
            039F0C03A10C03A10C039F0C03980B038109013602013602FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF034A04034A04038F0A03
            A40C03A40C039F0C039F0C039F0C039F0C039F0C039F0C03A40C03A40C03880A
            013602013602FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF06690C0469
            0C06A51304A30F039E0C039E0C039E0C039E0C039E0C039E0C039E0C039E0C03
            9E0C039E0C03A40C039D0C025B05013602FF00FFFF00FFFF00FFFF00FFFF00FF
            06690C0569100AAB1F08A51906A014049F0F049F0F049F0F039E0C039E0C039E
            0C039E0C039E0C039E0C039E0C039E0C039F0C039F0C025705013602FF00FFFF
            00FFFF00FFFF00FF06690C0EAB2A0CA7250AA41F049F0F049F0F049F0F049F0F
            0DA61E2BB53BEBF8EEFFFFFF8ED996039E0C039E0C039E0C039E0C03A10C0399
            0B013602FF00FFFF00FFFF00FF06690C0F952B11B0340EA92B0EA92B0DA7260E
            A92809A41C13AA2810A72375D182FFFFFFFFFFFFFFFFFF8BD992039E0C039E0C
            039E0C039E0C03A50C037A08013602FF00FFFF00FF06690C16B44113AC3711AA
            3216AC3916AF3D16AF3E18AD3716AB2F13AA292CB540C7EECEFCFEFCFFFFFFFF
            FFFF8BD992039E0C039E0C039E0C039F0C039E0C013602FF00FF039E0C118F31
            1AB64A16AF3E16AF3E16AF3E13AC351CB0401DB03B1AAF3517AC2F13AB2A29B5
            3DABE5B4E5F7E7FFFFFFFFFFFF8BD992039E0C039E0C039E0C03A50C026B0701
            3602039E0C19A9471CB44E19B14719B14719B14728B64E25B44721B2411EB03C
            1BAF3517AC3014AB2B2BB5406DCF7DFFFFFFFFFFFFFFFFFF4EC45A039E0C039E
            0C03A10C03880A013602039E0C20B25122B6551CB24E1CB24EA7E5BBC2EDD0C1
            EDCEC0EBCCBFEBCABDEAC9BCEAC6BBEAC5B8E9C1D8F3DCFFFFFFFFFFFFFFFFFF
            FFFFFF4EC25A039E0C039E0C03990B013602039E0C2EBA5E31BC631FB4521FB4
            52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF039E0C039E0C039F0C013602039E0C3EC06C
            47C57524B65624B656F0FBF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFF0FBF3D9F3DEFFFFFFFFFFFFFFFFFFFFFFFFC6EDCB039E0C039E0C039E0C01
            3602039E0C47C27267D08E34BC6434BC644CC67860CE875ECB835CCB8059CA7D
            56C97753C77346C26442C15F89DA9CFFFFFFFFFFFFFFFFFFB7E9BF16AA28039E
            0C039F0C03930B013602039E0C40BB6683D9A452C97D38BF6838BF6837BF6736
            BF6434BC5F30BB5B2DBA562AB7502DB852AAE5BAFFFFFFFFFFFFFFFFFF99E0A6
            13AA280FA723039E0D03A30C037F09013602039E0C2BAA4888DCA986DAA535BD
            6538BF6838BF6838BF6836BD6434BC6031BB5C44C26BD8F3E0FFFFFFFFFFFFFF
            FFFF95DDA50CA7250AA52008A31905A01104A50E026006013602FF00FF039E0C
            6BD091ADE6C46ED3932BBA5C38BF6838BF6838BF6836BD6534BC608CDCA7FFFF
            FFFFFFFFFFFFFF98E0AB11AA320FA92C0CA7250AA41D07A518059911013602FF
            00FFFF00FF039E0C37B5579DE2B8B5E9C967CF8C38BF6838BF6838BF6838BF68
            36BD655FCC84FFFFFFFFFFFF70D18E16AD3F13AD3911AB310EA7280CA6230AAC
            1F046B0C013602FF00FFFF00FFFF00FF039E0C5AC980B7EACABBEBCE73D49638
            BF6838BF6838BF6838BF6837BD6635BC6232BC5D2FBA5918B04415AD3D12AB35
            10A92E0FAF2C098E1C034A04FF00FFFF00FFFF00FFFF00FF039E0C189F2A67CF
            8CBAEACCCAEFD897E0B25DCC863ABF6929B85A22B5541FB4521FB45221B55324
            B65222B54C19B04114B23A0E9D2906680D034A04FF00FFFF00FFFF00FFFF00FF
            FF00FF039E0C189F2959C97EA3E3BCCAEFD8C1EDD1A0E2B87FD8A068D08E5CCB
            8458CA8158CA814FC77A38C06722BA5010982F06680D06690CFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FF039E0C039E0C35B5536CD1919AE1B6B1E9C6
            B5E9C9ABE6C19DE2B788DAA76CD3934AC9792AB4570F842706680D06680DFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF039E0C03
            9E0C28AC4141BB6351C57755C77D4EC5773EBB6528A749138B2906680D06690C
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF039E0C039E0C039E0C039E0C039E0C039E0C039E0C03
            9E0CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 1
          OnClick = btAbrirCajaClick
        end
        object edFecha: TJvDateEdit
          Left = 701
          Top = 7
          Width = 137
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ShowNullDate = False
          TabOrder = 2
        end
        object UpDown1: TUpDown
          Left = 844
          Top = 7
          Width = 28
          Height = 25
          Min = -32768
          Max = 32767
          TabOrder = 3
          OnClick = UpDown1Click
        end
        object btRefresh: TBitBtn
          Left = 878
          Top = 7
          Width = 67
          Height = 22
          Caption = 'Refresh'
          Glyph.Data = {
            BE060000424DBE06000000000000360400002800000024000000120000000100
            0800000000008802000000000000000000000001000000000000000000000000
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
            0404040404040303030303030303030303FFF8F8F8F8F8F803FF030303030302
            0403030402020202020204040303030303F8F8FF03F8030303030303F8F8FF03
            030303020204040202020202020202020403030303F8FFF8F80303FFFFFFFFFF
            0303F8FF030303020202020202FAFAFAFAFA02020204030303F8FF030303FFF8
            F8F8F8F8FF0303F8FF03030202020202FA0303030303FA020202040303F8FF03
            03FFF80303030303F8FF0303F8FF03020202020203030303030303FA02020403
            03F8FF0303F803030303030303F8FF03F8FF03020202020202030303030303FA
            0404040303F8FFFFFFFFF8FF0303030303F8F8F8F80303FAFAFAFAFAFAFA0303
            030303030303030303F8F8F8F8F8F8F803030303030303030303030303030303
            030303030303030303030303030303030303030303030303FFFFFFFFFFFF0303
            030303030303030303030404040404040303FFFFFFFF030303030303F8F8F8F8
            F8F803FA040404030303030303FA02020202020403F8F8F8F8FF0303030303F8
            FF03030303F803FA02020403030303030303FA020202020403F8FF03F8FF0303
            03030303F803030303F80303FA0202040303030303040402020202040303F803
            03F8FFFFFFFFFFF8F803030303F80303FA020202040404040402020202020204
            0303F8FF0303F8F8F8F8F8030303FFFF03F8030303FA02020202020202020202
            FAFA0204030303F8FFFF030303030303FFFFF8F8FFF803030303FAFA02020202
            0202FAFA0303FA0303030303F8F8FFFFFFFFFFFFF8F80303F803030303030303
            FAFAFAFAFAFA030303030303030303030303F8F8F8F8F8F80303030303030303
            0303030303030303030303030303030303030303030303030303030303030303
            0303}
          NumGlyphs = 2
          TabOrder = 4
          OnClick = btRefreshClick
        end
        object rgEstadosCaja: TRadioGroup
          Left = 507
          Top = 0
          Width = 133
          Height = 33
          Caption = 'Mostrar Cajas'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Abiertas'
            'Cerradas')
          TabOrder = 5
          OnClick = rgEstadosCajaClick
        end
      end
      object pnEgresos: TPanel
        Left = 489
        Top = 35
        Width = 496
        Height = 577
        Align = alClient
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Splitter2: TSplitter
          Left = 0
          Top = 250
          Width = 492
          Height = 5
          Cursor = crVSplit
          Align = alTop
          ExplicitLeft = 1
          ExplicitWidth = 488
        end
        object pncabEgresos: TPanel
          Left = 0
          Top = 0
          Width = 492
          Height = 250
          Align = alTop
          Caption = 'Egresos'
          TabOrder = 0
          object Panel1: TPanel
            Left = 1
            Top = 1
            Width = 490
            Height = 34
            Align = alTop
            BevelOuter = bvNone
            Color = clMenuHighlight
            ParentBackground = False
            TabOrder = 0
            object Label6: TLabel
              Left = 11
              Top = 5
              Width = 82
              Height = 25
              Caption = 'Egresos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object Panel6: TPanel
            Left = 1
            Top = 217
            Width = 490
            Height = 32
            Align = alBottom
            Color = clMenuHighlight
            ParentBackground = False
            TabOrder = 1
            object edEgresos: TJvCalcEdit
              Left = 312
              Top = 3
              Width = 149
              Height = 24
              DisplayFormat = ',0.00.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              PopupAlign = epaLeft
              ShowButton = False
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
            end
            object btCompCtdo: TButton
              Left = 3
              Top = 2
              Width = 48
              Height = 25
              Caption = 'Fc.Cdo'
              TabOrder = 1
              OnClick = btCompCtdoClick
            end
            object btOPago: TButton
              Left = 52
              Top = 2
              Width = 48
              Height = 25
              Caption = 'O.Pago'
              TabOrder = 2
              OnClick = btOPagoClick
            end
            object btEgresos: TButton
              Left = 101
              Top = 2
              Width = 48
              Height = 25
              Caption = 'Gastos'
              TabOrder = 3
              OnClick = btEgresosClick
            end
            object btDepo: TButton
              Left = 150
              Top = 2
              Width = 48
              Height = 25
              Caption = 'Depos.'
              TabOrder = 4
              OnClick = btDepoClick
            end
            object btPersonal: TButton
              Left = 200
              Top = 2
              Width = 48
              Height = 25
              Caption = 'Perso.'
              TabOrder = 5
              OnClick = btPersonalClick
            end
          end
          object dbgEgresos: TDBGrid
            Left = 1
            Top = 35
            Width = 490
            Height = 182
            Align = alClient
            DataSource = DSCajaDetEgresos
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = dbgEgresosDblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'CLASE_CPBTE'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlue
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 25
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NRO_CPBTE'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlue
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DETALLE'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlue
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 266
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HABER'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlue
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 78
                Visible = True
              end>
          end
        end
        object Panel8: TPanel
          Left = 0
          Top = 255
          Width = 492
          Height = 318
          Align = alClient
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 1
          object pcValores: TPageControl
            Left = 1
            Top = 1
            Width = 490
            Height = 316
            ActivePage = TabSheet2
            Align = alClient
            HotTrack = True
            TabOrder = 0
            TabPosition = tpBottom
            object tsEgfectivo: TTabSheet
              Caption = 'Efectivo'
              object dbgEfectivo: TJvDBGrid
                Left = 0
                Top = 0
                Width = 482
                Height = 224
                Align = alClient
                DataSource = DSEfectivo
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
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
                    FieldName = 'CLASE_COMPRO'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clTeal
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 37
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DESCRIPCION'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clTeal
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 151
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NROCOMPROB'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DEBE'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clTeal
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 80
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'HABER'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clTeal
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 90
                    Visible = True
                  end>
              end
              object pnPieDetalle: TPanel
                Left = 0
                Top = 224
                Width = 482
                Height = 66
                Align = alBottom
                BevelOuter = bvNone
                Color = clMenuHighlight
                ParentBackground = False
                TabOrder = 1
                object edDebeEfectivo: TJvCalcEdit
                  Left = 269
                  Top = 6
                  Width = 85
                  Height = 21
                  DisplayFormat = ',0.00.'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  PopupAlign = epaLeft
                  ShowButton = False
                  TabOrder = 0
                  DecimalPlacesAlwaysShown = False
                end
                object edHaberEfectivo: TJvCalcEdit
                  Left = 360
                  Top = 6
                  Width = 85
                  Height = 21
                  DisplayFormat = ',0.00.'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  PopupAlign = epaLeft
                  ShowButton = False
                  TabOrder = 1
                  DecimalPlacesAlwaysShown = False
                end
                object edTotalEfectivo: TJvCalcEdit
                  Left = 360
                  Top = 33
                  Width = 85
                  Height = 21
                  DisplayFormat = ',0.00.'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  PopupAlign = epaLeft
                  ShowButton = False
                  TabOrder = 2
                  DecimalPlacesAlwaysShown = False
                end
              end
            end
            object tsTarjtea: TTabSheet
              Caption = 'T.de Credito'
              ImageIndex = 1
              DesignSize = (
                482
                290)
              object dbgTarjetas: TJvDBGrid
                Left = 0
                Top = 0
                Width = 482
                Height = 254
                Align = alTop
                Anchors = [akLeft, akTop, akRight, akBottom]
                DataSource = DSMovTCVenta
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
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
                    FieldName = 'CLASE_COMPROB'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clTeal
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 37
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MUESTRATARJETA'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clTeal
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 151
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NRO_COMPROBANTE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NRO_CUPON'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clTeal
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 90
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'IMPORTE'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clTeal
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 80
                    Visible = True
                  end>
              end
              object edTotalTarjetas: TJvCalcEdit
                Left = 368
                Top = 260
                Width = 85
                Height = 21
                DisplayFormat = ',0.00.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Anchors = [akLeft, akBottom]
                ParentFont = False
                PopupAlign = epaLeft
                ShowButton = False
                TabOrder = 1
                DecimalPlacesAlwaysShown = False
              end
            end
            object tsCheques: TTabSheet
              Caption = 'Cheques '
              ImageIndex = 2
              DesignSize = (
                482
                290)
              object dbgTotalChe3: TJvDBGrid
                Left = 0
                Top = 0
                Width = 482
                Height = 255
                Align = alTop
                Anchors = [akLeft, akTop, akRight, akBottom]
                DataSource = DSChe3Recibidos
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
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
                    FieldName = 'MUESTRABANCO'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clTeal
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 116
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ORIGEN'
                    Width = 95
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NUMERO'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clTeal
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 80
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FECHA_COBRO'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clTeal
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 77
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'IMPORTE'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clTeal
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 80
                    Visible = True
                  end>
              end
              object edTotalChe3: TJvCalcEdit
                Left = 368
                Top = 261
                Width = 85
                Height = 21
                DisplayFormat = ',0.00.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Anchors = [akLeft, akBottom]
                ParentFont = False
                PopupAlign = epaLeft
                ShowButton = False
                TabOrder = 1
                DecimalPlacesAlwaysShown = False
              end
            end
            object TabSheet1: TTabSheet
              Caption = 'Tx Bancarias Beneradas'
              ImageIndex = 3
              object JvDBGrid1: TJvDBGrid
                Left = 0
                Top = 0
                Width = 482
                Height = 255
                Align = alTop
                Anchors = [akLeft, akTop, akRight, akBottom]
                DataSource = DSTxGeneradas
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
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
                    FieldName = 'MUESTRABANCO'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 146
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NUMERO'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ORIGEN'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 178
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'IMPORTE'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Visible = True
                  end>
              end
            end
            object TabSheet2: TTabSheet
              Caption = 'Che.Emitidos'
              ImageIndex = 4
              object cxGrid3: TcxGrid
                Left = 0
                Top = 0
                Width = 482
                Height = 290
                Align = alClient
                TabOrder = 0
                object cxGrid3DBTableView1: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  ScrollbarAnnotations.CustomAnnotations = <>
                  DataController.DataSource = DSCheques
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Kind = skSum
                      FieldName = 'IMPORTE'
                      Column = cxGrid3DBTableView1IMPORTE
                    end>
                  DataController.Summary.SummaryGroups = <>
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  Styles.Header = cxStyle1
                  object cxGrid3DBTableView1MUESTRABANCO: TcxGridDBColumn
                    DataBinding.FieldName = 'MUESTRABANCO'
                    HeaderAlignmentHorz = taCenter
                    Width = 122
                  end
                  object cxGrid3DBTableView1FECHA_COBRO: TcxGridDBColumn
                    DataBinding.FieldName = 'FECHA_COBRO'
                    HeaderAlignmentHorz = taCenter
                    Width = 71
                  end
                  object cxGrid3DBTableView1NUMERO: TcxGridDBColumn
                    DataBinding.FieldName = 'NUMERO'
                    HeaderAlignmentHorz = taCenter
                  end
                  object cxGrid3DBTableView1ORDEN_DE: TcxGridDBColumn
                    DataBinding.FieldName = 'ORDEN_DE'
                    HeaderAlignmentHorz = taCenter
                    Width = 125
                  end
                  object cxGrid3DBTableView1IMPORTE: TcxGridDBColumn
                    DataBinding.FieldName = 'IMPORTE'
                    HeaderAlignmentHorz = taCenter
                  end
                end
                object cxGrid3Level1: TcxGridLevel
                  GridView = cxGrid3DBTableView1
                end
              end
            end
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 612
        Width = 985
        Height = 35
        Align = alBottom
        BevelOuter = bvNone
        Color = clMenuHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        object Label2: TLabel
          Left = 369
          Top = 6
          Width = 65
          Height = 19
          Caption = 'Efectivo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 571
          Top = 6
          Width = 76
          Height = 19
          Caption = 'T.Credito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 776
          Top = 4
          Width = 63
          Height = 19
          Caption = 'Che.3ro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = -129
          Top = 14
          Width = 95
          Height = 13
          Caption = 'Archivo del Reporte'
          FocusControl = dbeReporte
        end
        object sbReporte: TSpeedButton
          Left = 328
          Top = 6
          Width = 23
          Height = 22
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            5555555555555555555555555555555555555555555555555555555555555555
            555555555555555555555555555555555555555FFFFFFFFFF555550000000000
            55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
            B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
            000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
            555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
            55555575FFF75555555555700007555555555557777555555555555555555555
            5555555555555555555555555555555555555555555555555555}
          NumGlyphs = 2
          OnClick = sbReporteClick
        end
        object edEfectivo: TJvCalcEdit
          Left = 440
          Top = 3
          Width = 125
          Height = 24
          Color = clBlue
          DisplayFormat = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
        end
        object edTarjeta: TJvCalcEdit
          Left = 653
          Top = 3
          Width = 117
          Height = 24
          Color = clBlue
          DisplayFormat = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
        end
        object edCheques: TJvCalcEdit
          Left = 845
          Top = 1
          Width = 130
          Height = 24
          Color = clBlue
          DisplayFormat = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = False
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
        end
        object BitBtn1: TBitBtn
          Left = 4
          Top = 3
          Width = 89
          Height = 25
          Caption = '&Imprimir'
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
            03030303030303030303030303030303030303030303030303FFFFFF03030303
            030303030303FFFFFF0303030000000303030303030303030300000003030303
            F8F8F8FFFFFFFFFFFFFFFFFFFFF8F8F8FFFF0300000000000000000000000000
            00000000000303F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FF0300FF070707
            070707070707070707070707000303F8FF030303030303030303030303030303
            F8FF0300FF070707070707070707070707070707000303F8FF03030303030303
            0303030303030303F8FF0300FF0707070707070707070707F9F90707000303F8
            FF030303030303030303030303030303F8FF0300FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000303F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FF03F80000F8F8
            F8F8F8F8F8F8F8F8F8F80000F80303F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
            F8030303030000000000000000000000000000030303030303F8F8F8F8F8F8F8
            F8F8F8F8F8F8F8FF03030303030000FFFFFFFFFFFFFFFFFFFF00000303030303
            03F8F8FF03FFFFFFFFFFFFFFFFF8F80303030303030300FF0000000000000000
            FF000303030303030303F8FFF8F8F8F8F8F8F8F803F8FF0303030303030300FF
            FFFFFFFFFFFFFFFFFF000303030303030303F8FF03FFFFFFFFFFFFFFFFF8FF03
            03030303030300FF0000000000000000FF000303030303030303F8FFF8F8F8F8
            F8F8F8F803F8FF0303030303030300FFFFFFFFFFFFFFFFFFFF00030303030303
            0303F8FF03FFFF030303030303F8FF0303030303030300FF0000FFFFFFFFFFFF
            FF000303030303030303F8FFF8F803030303030303F8FF0303030303030300FF
            FFFFFFFFFFFFFFFFFF000303030303030303F8FFFFFFFFFFFFFFFFFFFFF8FF03
            0303030303030000000000000000000000000303030303030303F8F8F8F8F8F8
            F8F8F8F8F8F80303030303030303030303030303030303030303030303030303
            0303030303030303030303030303030303030303030303030303030303030303
            0303030303030303030303030303030303030303030303030303}
          NumGlyphs = 2
          TabOrder = 3
          OnClick = BitBtn1Click
        end
        object dbeReporte: TEdit
          Left = 99
          Top = 6
          Width = 223
          Height = 21
          TabOrder = 4
        end
      end
      object pnIngresos: TPanel
        Left = 0
        Top = 35
        Width = 489
        Height = 577
        Align = alLeft
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object Splitter3: TSplitter
          Left = 0
          Top = 251
          Width = 485
          Height = 4
          Cursor = crVSplit
          Align = alTop
          ExplicitLeft = 1
          ExplicitWidth = 491
        end
        object pncabIngreso: TPanel
          Left = 0
          Top = 0
          Width = 485
          Height = 251
          Align = alTop
          Caption = 'Ingresos'
          TabOrder = 0
          object Panel4: TPanel
            Left = 1
            Top = 1
            Width = 483
            Height = 34
            Align = alTop
            BevelOuter = bvNone
            Color = clMenuHighlight
            ParentBackground = False
            TabOrder = 0
            object Label5: TLabel
              Left = 8
              Top = 3
              Width = 92
              Height = 25
              Caption = 'Ingresos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object Panel5: TPanel
            Left = 1
            Top = 218
            Width = 483
            Height = 32
            Align = alBottom
            Color = clMenuHighlight
            ParentBackground = False
            TabOrder = 1
            object edIngresos: TJvCalcEdit
              Left = 308
              Top = 2
              Width = 153
              Height = 24
              DisplayFormat = ',0.00.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              PopupAlign = epaLeft
              ShowButton = False
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
            end
            object btContado: TButton
              Left = 3
              Top = 2
              Width = 48
              Height = 25
              Caption = 'Fc.Cdo'
              TabOrder = 1
              OnClick = btContadoClick
            end
            object btTicket: TButton
              Left = 53
              Top = 2
              Width = 49
              Height = 25
              Caption = 'Ticket'
              TabOrder = 2
              OnClick = btTicketClick
            end
            object btRecibo: TButton
              Left = 103
              Top = 2
              Width = 48
              Height = 25
              Caption = 'Recibo'
              TabOrder = 3
              OnClick = btReciboClick
            end
            object btIngCaja: TButton
              Left = 153
              Top = 2
              Width = 48
              Height = 25
              Caption = 'Ing.Caja'
              TabOrder = 4
              OnClick = btIngCajaClick
            end
            object btNc: TButton
              Left = 203
              Top = 2
              Width = 48
              Height = 25
              Caption = 'Nc.Cdo.'
              TabOrder = 5
              OnClick = btNcClick
            end
            object btRecAbono: TButton
              Left = 254
              Top = 2
              Width = 48
              Height = 25
              Hint = 'INgreso cobranza de abonos'
              Caption = 'Rc.Abo.'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 6
              OnClick = btRecAbonoClick
            end
          end
          object dbgIngresos: TDBGrid
            Left = 1
            Top = 35
            Width = 483
            Height = 183
            Align = alClient
            DataSource = DSCajaDetIngresos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = dbgIngresosDblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'CLASE_CPBTE'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlue
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 26
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NRO_CPBTE'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlue
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 99
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DETALLE'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlue
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 252
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DEBE'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlue
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 78
                Visible = True
              end>
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 255
          Width = 485
          Height = 318
          Align = alClient
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 1
          object Label7: TLabel
            Left = 8
            Top = 13
            Width = 56
            Height = 19
            Caption = 'Ventas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 9
            Top = 38
            Width = 85
            Height = 19
            Caption = 'Cobranzas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 9
            Top = 86
            Width = 71
            Height = 19
            Caption = 'Compras'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 9
            Top = 111
            Width = 49
            Height = 19
            Caption = 'Pagos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 8
            Top = 136
            Width = 112
            Height = 19
            Caption = 'Otros Egresos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbgAcumualdos: TDBGrid
            Left = 1
            Top = 1
            Width = 483
            Height = 316
            Align = alClient
            BorderStyle = bsNone
            DataSource = DSAcumulados
            DefaultDrawing = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentColor = True
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbgAcumualdosDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'MUESTRA_TIPOOPERACION'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Title.Alignment = taCenter
                Title.Caption = 'Tipo Operacion'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 218
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DEBE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HABER'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Visible = True
              end>
          end
        end
      end
    end
    object tsCheques3roRec: TTabSheet
      Caption = 'Cheques de 3'#186' Recibidos'
      ImageIndex = 2
      object cxGCheques3: TcxGrid
        Left = 0
        Top = 0
        Width = 985
        Height = 647
        Align = alClient
        TabOrder = 0
        object cxGCheques3DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DSChe3Recibidos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGCheques3DBTableView1ID_MOV_CAJA: TcxGridDBColumn
            DataBinding.FieldName = 'ID_MOV_CAJA'
            HeaderAlignmentHorz = taCenter
          end
          object cxGCheques3DBTableView1NUMERO: TcxGridDBColumn
            DataBinding.FieldName = 'NUMERO'
            HeaderAlignmentHorz = taCenter
          end
          object cxGCheques3DBTableView1MUESTRABANCO: TcxGridDBColumn
            DataBinding.FieldName = 'MUESTRABANCO'
            HeaderAlignmentHorz = taCenter
          end
          object cxGCheques3DBTableView1ORIGEN: TcxGridDBColumn
            DataBinding.FieldName = 'ORIGEN'
            HeaderAlignmentHorz = taCenter
          end
          object cxGCheques3DBTableView1DESTINO: TcxGridDBColumn
            DataBinding.FieldName = 'DESTINO'
            HeaderAlignmentHorz = taCenter
          end
          object cxGCheques3DBTableView1FECHA_COBRO: TcxGridDBColumn
            DataBinding.FieldName = 'FECHA_COBRO'
            HeaderAlignmentHorz = taCenter
          end
          object cxGCheques3DBTableView1IMPORTE: TcxGridDBColumn
            DataBinding.FieldName = 'IMPORTE'
            HeaderAlignmentHorz = taCenter
          end
        end
        object cxGCheques3DBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DSChe3Recibidos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGCheques3DBTableView2ID_MOV_CAJA: TcxGridDBColumn
            DataBinding.FieldName = 'ID_MOV_CAJA'
          end
          object cxGCheques3DBTableView2NUMERO: TcxGridDBColumn
            DataBinding.FieldName = 'NUMERO'
          end
          object cxGCheques3DBTableView2MUESTRABANCO: TcxGridDBColumn
            DataBinding.FieldName = 'MUESTRABANCO'
          end
          object cxGCheques3DBTableView2ORIGEN: TcxGridDBColumn
            DataBinding.FieldName = 'ORIGEN'
          end
          object cxGCheques3DBTableView2DESTINO: TcxGridDBColumn
            DataBinding.FieldName = 'DESTINO'
          end
          object cxGCheques3DBTableView2FECHA_COBRO: TcxGridDBColumn
            DataBinding.FieldName = 'FECHA_COBRO'
          end
          object cxGCheques3DBTableView2IMPORTE: TcxGridDBColumn
            DataBinding.FieldName = 'IMPORTE'
          end
        end
        object cxGCheques3Level1: TcxGridLevel
          GridView = cxGCheques3DBTableView1
        end
      end
    end
    object tbEfectivo: TTabSheet
      Caption = 'Efectivo'
      ImageIndex = 3
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 985
        Height = 647
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DSEfectivo
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0.00'
              Kind = skSum
              Column = cxGridDBTableView1DEBE
            end
            item
              Format = ',0.00'
              Kind = skSum
              Column = cxGridDBTableView1HABER
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          object cxGridDBTableView1FECHA: TcxGridDBColumn
            Caption = 'Fecha'
            DataBinding.FieldName = 'FECHA'
            HeaderAlignmentHorz = taCenter
            Width = 105
          end
          object cxGridDBTableView1TIPO_COMPROB: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_COMPROB'
            HeaderAlignmentHorz = taCenter
          end
          object cxGridDBTableView1CLASE_COMPRO: TcxGridDBColumn
            DataBinding.FieldName = 'CLASE_COMPRO'
            HeaderAlignmentHorz = taCenter
          end
          object cxGridDBTableView1NROCOMPROB: TcxGridDBColumn
            DataBinding.FieldName = 'NROCOMPROB'
            HeaderAlignmentHorz = taCenter
          end
          object cxGridDBTableView1DEBE: TcxGridDBColumn
            DataBinding.FieldName = 'DEBE'
            HeaderAlignmentHorz = taCenter
          end
          object cxGridDBTableView1HABER: TcxGridDBColumn
            DataBinding.FieldName = 'HABER'
            HeaderAlignmentHorz = taCenter
          end
          object cxGridDBTableView1ID_TPAGO: TcxGridDBColumn
            Caption = 'Tp.Pago'
            DataBinding.FieldName = 'ID_TPAGO'
            HeaderAlignmentHorz = taCenter
          end
          object cxGridDBTableView1ID_FPAGO: TcxGridDBColumn
            Caption = 'F Pago'
            DataBinding.FieldName = 'ID_FPAGO'
            HeaderAlignmentHorz = taCenter
          end
          object cxGridDBTableView1MUESTRAFPAGO: TcxGridDBColumn
            Caption = 'Detalle Pago'
            DataBinding.FieldName = 'MUESTRAFPAGO'
            HeaderAlignmentHorz = taCenter
          end
          object cxGridDBTableView1DESCRIPCION: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIPCION'
            HeaderAlignmentHorz = taCenter
          end
        end
        object cxGridDBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DSChe3Recibidos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGridDBColumn8: TcxGridDBColumn
            DataBinding.FieldName = 'ID_MOV_CAJA'
          end
          object cxGridDBColumn9: TcxGridDBColumn
            DataBinding.FieldName = 'NUMERO'
          end
          object cxGridDBColumn10: TcxGridDBColumn
            DataBinding.FieldName = 'MUESTRABANCO'
          end
          object cxGridDBColumn11: TcxGridDBColumn
            DataBinding.FieldName = 'ORIGEN'
          end
          object cxGridDBColumn12: TcxGridDBColumn
            DataBinding.FieldName = 'DESTINO'
          end
          object cxGridDBColumn13: TcxGridDBColumn
            DataBinding.FieldName = 'FECHA_COBRO'
          end
          object cxGridDBColumn14: TcxGridDBColumn
            DataBinding.FieldName = 'IMPORTE'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object tsCheuque3roEnt: TTabSheet
      Caption = 'Cheuqes de 3ro Entregados'
      ImageIndex = 4
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 985
        Height = 647
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView3: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DSChe3Entregado
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGridDBTableView3IMPORTE
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          object cxGridDBTableView3ID_MOV_CAJA: TcxGridDBColumn
            DataBinding.FieldName = 'ID_MOV_CAJA'
            HeaderAlignmentHorz = taCenter
            Width = 86
          end
          object cxGridDBTableView3NUMERO: TcxGridDBColumn
            DataBinding.FieldName = 'NUMERO'
            HeaderAlignmentHorz = taCenter
            Width = 86
          end
          object cxGridDBTableView3MUESTRABANCO: TcxGridDBColumn
            DataBinding.FieldName = 'MUESTRABANCO'
            HeaderAlignmentHorz = taCenter
          end
          object cxGridDBTableView3ORIGEN: TcxGridDBColumn
            DataBinding.FieldName = 'ORIGEN'
            HeaderAlignmentHorz = taCenter
          end
          object cxGridDBTableView3DESTINO: TcxGridDBColumn
            DataBinding.FieldName = 'DESTINO'
            HeaderAlignmentHorz = taCenter
          end
          object cxGridDBTableView3FECHA_COBRO: TcxGridDBColumn
            DataBinding.FieldName = 'FECHA_COBRO'
            HeaderAlignmentHorz = taCenter
            Width = 129
          end
          object cxGridDBTableView3IMPORTE: TcxGridDBColumn
            DataBinding.FieldName = 'IMPORTE'
            HeaderAlignmentHorz = taCenter
            Width = 104
          end
        end
        object cxGridDBTableView4: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DSChe3Recibidos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGridDBColumn15: TcxGridDBColumn
            DataBinding.FieldName = 'ID_MOV_CAJA'
          end
          object cxGridDBColumn16: TcxGridDBColumn
            DataBinding.FieldName = 'NUMERO'
          end
          object cxGridDBColumn17: TcxGridDBColumn
            DataBinding.FieldName = 'MUESTRABANCO'
          end
          object cxGridDBColumn18: TcxGridDBColumn
            DataBinding.FieldName = 'ORIGEN'
          end
          object cxGridDBColumn19: TcxGridDBColumn
            DataBinding.FieldName = 'DESTINO'
          end
          object cxGridDBColumn20: TcxGridDBColumn
            DataBinding.FieldName = 'FECHA_COBRO'
          end
          object cxGridDBColumn21: TcxGridDBColumn
            DataBinding.FieldName = 'IMPORTE'
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
    end
    object tsConfiguracion: TTabSheet
      Caption = 'Configuracion'
      ImageIndex = 1
    end
  end
  object DSCaja: TDataSource
    DataSet = QCajas
    Left = 324
    Top = 456
  end
  object DSPCajaDetEgresos: TDataSetProvider
    DataSet = QCajadet
    Left = 560
    Top = 176
  end
  object DSPCajaDetIngresos: TDataSetProvider
    DataSet = QCajadet
    Left = 568
    Top = 256
  end
  object CDSCajaDetIngresos: TClientDataSet
    Aggregates = <>
    Filter = 'Tipo_Operacion='#39'I'#39
    Filtered = True
    PacketRecords = 4
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCajaDetIngresos'
    Left = 656
    Top = 216
    object CDSCajaDetIngresosID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
    end
    object CDSCajaDetIngresosNRO_CPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NRO_CPBTE'
      Origin = 'NRO_CPBTE'
      EditMask = 'L-0000-00000000;0;_'
      Size = 13
    end
    object CDSCajaDetIngresosTIPO_CPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPO_CPBTE'
      Origin = 'TIPO_CPBTE'
      Size = 2
    end
    object CDSCajaDetIngresosCLASE_CPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASE_CPBTE'
      Origin = 'CLASE_CPBTE'
      Size = 2
    end
    object CDSCajaDetIngresosDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object CDSCajaDetIngresosDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSCajaDetIngresosHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSCajaDetIngresosTIPO_OPERACION: TStringField
      FieldName = 'TIPO_OPERACION'
      Origin = 'TIPO_OPERACION'
      Size = 1
    end
    object CDSCajaDetIngresosMUESTRA_TIPOOPERACION: TStringField
      FieldName = 'MUESTRA_TIPOOPERACION'
      Origin = 'MUESTRA_TIPOOPERACION'
    end
    object CDSCajaDetIngresosFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
  end
  object CDSCajaDetEgresos: TClientDataSet
    Aggregates = <>
    Filter = 'Tipo_Operacion='#39'E'#39' and tipo_cpbte<>'#39'CC'#39
    Filtered = True
    PacketRecords = 4
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCajaDetEgresos'
    Left = 656
    Top = 168
    object CDSCajaDetEgresosFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSCajaDetEgresosID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
    end
    object CDSCajaDetEgresosNRO_CPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NRO_CPBTE'
      Origin = 'NRO_CPBTE'
      EditMask = 'L-0000-00000000;0;_'
      Size = 13
    end
    object CDSCajaDetEgresosTIPO_CPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPO_CPBTE'
      Origin = 'TIPO_CPBTE'
      Size = 2
    end
    object CDSCajaDetEgresosCLASE_CPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASE_CPBTE'
      Origin = 'CLASE_CPBTE'
      Size = 2
    end
    object CDSCajaDetEgresosDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object CDSCajaDetEgresosDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSCajaDetEgresosHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSCajaDetEgresosTIPO_OPERACION: TStringField
      FieldName = 'TIPO_OPERACION'
      Origin = 'TIPO_OPERACION'
      Size = 1
    end
    object CDSCajaDetEgresosMUESTRA_TIPOOPERACION: TStringField
      FieldName = 'MUESTRA_TIPOOPERACION'
      Origin = 'MUESTRA_TIPOOPERACION'
    end
  end
  object DSCajaDetEgresos: TDataSource
    DataSet = CDSCajaDetEgresos
    Left = 728
    Top = 168
  end
  object DSCajaDetIngresos: TDataSource
    DataSet = CDSCajaDetIngresos
    Left = 728
    Top = 216
  end
  object DSCajaCab: TDataSource
    DataSet = QCajaCab
    Left = 572
    Top = 512
  end
  object DSFPago: TDataSource
    DataSet = CDSFPago
    Left = 720
    Top = 232
  end
  object CDSFPago: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPFPago'
    Left = 656
    Top = 240
    object CDSFPagoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSFPagoID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      Required = True
    end
    object CDSFPagoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
    end
    object CDSFPagoSIGNO: TStringField
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      Size = 5
    end
    object CDSFPagoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object CDSFPagoCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      Required = True
    end
  end
  object DSPFPago: TDataSetProvider
    DataSet = QFPago
    Left = 576
    Top = 208
  end
  object DSValores: TDataSource
    DataSet = QValores
    Left = 560
    Top = 80
  end
  object DSEfectivo: TDataSource
    DataSet = QEfectivo
    Left = 560
    Top = 120
  end
  object DSCheques: TDataSource
    DataSet = QCheques
    Left = 564
    Top = 344
  end
  object DSDebitos: TDataSource
    DataSet = QDebitos
    Left = 140
    Top = 488
  end
  object DSTxGeneradas: TDataSource
    DataSet = QTxGeneradas
    Left = 140
    Top = 432
  end
  object DSTxRecibidas: TDataSource
    DataSet = QTxRecibidas
    Left = 140
    Top = 384
  end
  object DSChe3Recibidos: TDataSource
    DataSet = QChe3Recibidos
    Left = 148
    Top = 336
  end
  object DSSaldosTC: TDataSource
    DataSet = QSaldosTC
    Left = 108
    Top = 200
  end
  object DSRetenciones: TDataSource
    DataSet = QRetenciones
    Left = 100
    Top = 144
  end
  object DSDepositos: TDataSource
    DataSet = QDepositos
    Left = 108
    Top = 88
  end
  object DSPMovTCVenta: TDataSetProvider
    DataSet = QMovTCVenta
    Left = 568
    Top = 464
  end
  object DSPMovTCCompra: TDataSetProvider
    DataSet = QMovTCCompra
    Left = 568
    Top = 416
  end
  object CDSMovTCCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovTCCompra'
    Left = 648
    Top = 416
    object CDSMovTCCompraID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      Required = True
    end
    object CDSMovTCCompraID_TARJETA: TIntegerField
      FieldName = 'ID_TARJETA'
      Origin = 'ID_TARJETA'
      Required = True
    end
    object CDSMovTCCompraMUESTRATARJETA: TStringField
      FieldName = 'MUESTRATARJETA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 30
    end
    object CDSMovTCCompraCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
      Origin = 'CUOTAS'
      Required = True
    end
    object CDSMovTCCompraTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSMovTCCompraCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovTCCompraNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSMovTCCompraNUMERO_CUPON: TIntegerField
      FieldName = 'NUMERO_CUPON'
      Origin = 'NUMERO_CUPON'
    end
    object CDSMovTCCompraPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Origin = 'PROVEEDOR'
      Size = 35
    end
    object CDSMovTCCompraIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSMovTCCompraFECHA_COMPRA: TSQLTimeStampField
      FieldName = 'FECHA_COMPRA'
    end
    object CDSMovTCCompraFECHA_CUPON: TSQLTimeStampField
      FieldName = 'FECHA_CUPON'
    end
  end
  object CDSMovTCVenta: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovTCVenta'
    AfterOpen = CDSMovTCVentaAfterOpen
    Left = 640
    Top = 472
    object CDSMovTCVentaID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      Required = True
    end
    object CDSMovTCVentaID_TC: TIntegerField
      FieldName = 'ID_TC'
      Origin = 'ID_TC'
      ProviderFlags = []
      Required = True
    end
    object CDSMovTCVentaMUESTRATARJETA: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'MUESTRATARJETA'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 15
    end
    object CDSMovTCVentaCAN_CUOTAS: TIntegerField
      FieldName = 'CAN_CUOTAS'
      Origin = 'CAN_CUOTAS'
      ProviderFlags = []
    end
    object CDSMovTCVentaTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Size = 2
    end
    object CDSMovTCVentaCLASE_COMPROB: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Size = 2
    end
    object CDSMovTCVentaNRO_COMPROBANTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NRO_COMPROBANTE'
      Origin = 'NRO_COMPROBANTE'
      EditMask = 'L-0000-00000000;0;_'
      Size = 13
    end
    object CDSMovTCVentaNRO_CUPON: TIntegerField
      DisplayLabel = 'Nro'
      FieldName = 'NRO_CUPON'
      Origin = 'NRO_CUPON'
      ProviderFlags = []
    end
    object CDSMovTCVentaTITULAR: TStringField
      FieldName = 'TITULAR'
      Origin = 'TITULAR'
      ProviderFlags = []
      Size = 30
    end
    object CDSMovTCVentaID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
    end
    object CDSMovTCVentaIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSMovTCVentaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      ReadOnly = True
    end
  end
  object DSMovTCCompra: TDataSource
    DataSet = CDSMovTCCompra
    Left = 740
    Top = 416
  end
  object DSMovTCVenta: TDataSource
    DataSet = CDSMovTCVenta
    Left = 820
    Top = 448
  end
  object DSChe3Entregado: TDataSource
    DataSet = QChe3Entregado
    Left = 140
    Top = 296
  end
  object DSAcumulados: TDataSource
    DataSet = QAcumulados
    Left = 504
    Top = 568
  end
  object JvFormStorage: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    Options = [fpState, fpSize, fpLocation, fpActiveControl]
    StoredValues = <>
    Left = 368
    Top = 408
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    SubStorages = <>
    Left = 349
    Top = 172
  end
  object frxReport: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42782.568113611110000000
    ReportOptions.LastChange = 42782.568113611110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 886
    Top = 132
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frIngresos: TfrxDBDataset
    UserName = 'frIngresos'
    CloseDataSource = False
    DataSource = DSCajaDetIngresos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 342
    Top = 101
  end
  object frEgresos: TfrxDBDataset
    UserName = 'frEgresos'
    CloseDataSource = False
    DataSource = DSCajaDetEgresos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 927
    Top = 469
    FieldDefs = <
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'ID_COMPROBANTE'
        FieldAlias = 'ID_COMPROBANTE'
      end
      item
        FieldName = 'NRO_CPBTE'
        FieldAlias = 'NRO_CPBTE'
      end
      item
        FieldName = 'TIPO_CPBTE'
        FieldAlias = 'TIPO_CPBTE'
      end
      item
        FieldName = 'CLASE_CPBTE'
        FieldAlias = 'CLASE_CPBTE'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'DEBE'
        FieldAlias = 'DEBE'
      end
      item
        FieldName = 'HABER'
        FieldAlias = 'HABER'
      end
      item
        FieldName = 'TIPO_OPERACION'
        FieldAlias = 'TIPO_OPERACION'
      end
      item
        FieldName = 'MUESTRA_TIPOOPERACION'
        FieldAlias = 'MUESTRA_TIPOOPERACION'
      end>
  end
  object frAcumulados: TfrxDBDataset
    UserName = 'frAcumulados'
    CloseDataSource = False
    DataSource = DSAcumulados
    BCDToCurrency = False
    DataSetOptions = []
    Left = 373
    Top = 339
    FieldDefs = <
      item
        FieldName = 'MUESTRA_TIPOOPERACION'
        FieldAlias = 'MUESTRA_TIPOOPERACION'
      end
      item
        FieldName = 'DEBE'
        FieldAlias = 'DEBE'
      end
      item
        FieldName = 'HABER'
        FieldAlias = 'HABER'
      end
      item
        FieldName = 'TIPO_OPERACION'
        FieldAlias = 'TIPO_OPERACION'
      end>
  end
  object frEfectivo: TfrxDBDataset
    UserName = 'frEfectivo'
    CloseDataSource = False
    DataSource = DSEfectivo
    BCDToCurrency = False
    DataSetOptions = []
    Left = 795
    Top = 496
    FieldDefs = <
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'TIPO_COMPROB'
        FieldAlias = 'TIPO_COMPROB'
      end
      item
        FieldName = 'CLASE_COMPRO'
        FieldAlias = 'CLASE_COMPRO'
      end
      item
        FieldName = 'NROCOMPROB'
        FieldAlias = 'NROCOMPROB'
      end
      item
        FieldName = 'DEBE'
        FieldAlias = 'DEBE'
      end
      item
        FieldName = 'HABER'
        FieldAlias = 'HABER'
      end
      item
        FieldName = 'ID_TPAGO'
        FieldAlias = 'ID_TPAGO'
      end
      item
        FieldName = 'ID_FPAGO'
        FieldAlias = 'ID_FPAGO'
      end
      item
        FieldName = 'MUESTRAFPAGO'
        FieldAlias = 'MUESTRAFPAGO'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'UNIDADES'
        FieldAlias = 'UNIDADES'
      end
      item
        FieldName = 'DESCRIPCION'
        FieldAlias = 'DESCRIPCION'
      end>
  end
  object frTCredito: TfrxDBDataset
    UserName = 'frTCredito'
    CloseDataSource = False
    DataSource = DSMovTCVenta
    BCDToCurrency = False
    DataSetOptions = []
    Left = 899
    Top = 464
    FieldDefs = <
      item
        FieldName = 'ID_CAJA'
        FieldAlias = 'ID_CAJA'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'ID_TC'
        FieldAlias = 'ID_TC'
      end
      item
        FieldName = 'MUESTRATARJETA'
        FieldAlias = 'MUESTRATARJETA'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'CAN_CUOTAS'
        FieldAlias = 'CAN_CUOTAS'
      end
      item
        FieldName = 'TIPO_COMPROB'
        FieldAlias = 'TIPO_COMPROB'
      end
      item
        FieldName = 'CLASE_COMPROB'
        FieldAlias = 'CLASE_COMPROB'
      end
      item
        FieldName = 'NRO_COMPROBANTE'
        FieldAlias = 'NRO_COMPROBANTE'
      end
      item
        FieldName = 'NRO_CUPON'
        FieldAlias = 'NRO_CUPON'
      end
      item
        FieldName = 'TITULAR'
        FieldAlias = 'TITULAR'
      end
      item
        FieldName = 'ID_COMPROBANTE'
        FieldAlias = 'ID_COMPROBANTE'
      end>
  end
  object frCheques: TfrxDBDataset
    UserName = 'frCheques'
    CloseDataSource = False
    DataSource = DSChe3Recibidos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 843
    Top = 488
    FieldDefs = <
      item
        FieldName = 'ID_MOV_CAJA'
        FieldAlias = 'ID_MOV_CAJA'
      end
      item
        FieldName = 'NUMERO'
        FieldAlias = 'NUMERO'
      end
      item
        FieldName = 'MUESTRABANCO'
        FieldAlias = 'MUESTRABANCO'
      end
      item
        FieldName = 'ORIGEN'
        FieldAlias = 'ORIGEN'
      end
      item
        FieldName = 'DESTINO'
        FieldAlias = 'DESTINO'
      end
      item
        FieldName = 'FECHA_COBRO'
        FieldAlias = 'FECHA_COBRO'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end>
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.frp'
    Left = 352
    Top = 488
  end
  object QDepositos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.*,d.*,cta.nombre as MuestraCta,che3.numero as NuemroChe' +
        ', che3.origen as MuestraOrigen from caja_mov c'
      'left join dep_banco_cab d on d.id=c.id_comprobante'
      'left join cuenta_caja cta on cta.id_cuenta=d.id_cta_caja'
      
        'left join cheque_tercero_mov che3 on che3.id_mov_caja_egresos=c.' +
        'id_mov_caja'
      'where c.id_caja=:idcaja and c.tipo_comprob='#39'DP'#39)
    Left = 36
    Top = 88
    ParamData = <
      item
        Position = 1
        Name = 'idcaja'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QDepositosID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDepositosID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      Required = True
    end
    object QDepositosTIPO_OPERACION: TStringField
      FieldName = 'TIPO_OPERACION'
      Origin = 'TIPO_OPERACION'
      Size = 1
    end
    object QDepositosTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QDepositosCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Size = 2
    end
    object QDepositosID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      Required = True
    end
    object QDepositosNRO_COMPROBANTE: TStringField
      FieldName = 'NRO_COMPROBANTE'
      Origin = 'NRO_COMPROBANTE'
      Required = True
      Size = 13
    end
    object QDepositosHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QDepositosDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QDepositosID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      Required = True
    end
    object QDepositosID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      Required = True
    end
    object QDepositosUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
    end
    object QDepositosCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QDepositosID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
    end
    object QDepositosMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object QDepositosID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object QDepositosID_CTA_CAJA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CTA_CAJA'
      Origin = 'ID_CTA_CAJA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QDepositosNUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object QDepositosIMPORTE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QDepositosEFEC_CHEQ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EFEC_CHEQ'
      Origin = 'EFEC_CHEQ'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object QDepositosOBS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBS'
      Origin = 'OBS'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QDepositosSUCURSAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QDepositosMUESTRACTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACTA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QDepositosNUEMROCHE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NUEMROCHE'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QDepositosMUESTRAORIGEN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAORIGEN'
      Origin = 'ORIGEN'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QDepositosFECHA_OPERACION: TSQLTimeStampField
      FieldName = 'FECHA_OPERACION'
      Origin = 'FECHA_OPERACION'
    end
    object QDepositosFECHA: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'FECHA'
      Origin = 'FECHA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QDepositosFECHA_CAJA: TSQLTimeStampField
      DisplayLabel = 'Fecha Caja'
      FieldName = 'FECHA_CAJA'
      Origin = 'FECHA_CAJA'
    end
  end
  object QCaja_Estado: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_caja from caja_cab c where c.id_cuenta_caja = :id an' +
        'd c.estado=0')
    Left = 204
    Top = 552
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QCaja_EstadoID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QValores: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from sumar_valores_caja(:id,:id_fpago, :desde, :hasta)')
    Left = 492
    Top = 64
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'id_fpago'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QValoresFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QValoresTIPO_CPBTE: TStringField
      FieldName = 'TIPO_CPBTE'
      Origin = 'TIPO_CPBTE'
      Size = 2
    end
    object QValoresNRO_CPBTE: TStringField
      FieldName = 'NRO_CPBTE'
      Origin = 'NRO_CPBTE'
      Size = 13
    end
    object QValoresDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QValoresHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QValoresSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QValoresSIGNO: TStringField
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      Size = 5
    end
    object QValoresNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 100
    end
    object QValoresIDCAJA: TIntegerField
      FieldName = 'IDCAJA'
      Origin = 'IDCAJA'
    end
    object QValoresIDCTACAJA: TIntegerField
      FieldName = 'IDCTACAJA'
      Origin = 'IDCTACAJA'
    end
    object QValoresNOMBRECTACAJA: TStringField
      FieldName = 'NOMBRECTACAJA'
      Origin = 'NOMBRECTACAJA'
      Size = 25
    end
  end
  object QChe3Recibidos: TFDQuery
    AfterOpen = QChe3RecibidosAfterOpen
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select mv.id_mov_caja,ch.numero,b.nombre as MuestraBanco ,'
      
        '      ch.origen,ch.destino,ch.fecha_cobro,ch.importe from caja_m' +
        'ov mv'
      'left join cheque_tercero ch on ch.id_mov_caja=mv.id_mov_caja'
      'left join bancos b on b.id_banco=ch.id_banco'
      
        'where mv.id_caja=:id_caja and mv.id_TPago=3 and mv.fecha_operaci' +
        'on =:fecha')
    Left = 52
    Top = 328
    ParamData = <
      item
        Position = 1
        Name = 'id_caja'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'fecha'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QChe3RecibidosID_MOV_CAJA: TIntegerField
      DisplayLabel = 'Id.Mov Caja'
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QChe3RecibidosNUMERO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nr.Che'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QChe3RecibidosMUESTRABANCO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Banco'
      FieldName = 'MUESTRABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QChe3RecibidosORIGEN: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Origen'
      FieldName = 'ORIGEN'
      Origin = 'ORIGEN'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QChe3RecibidosDESTINO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Destino'
      FieldName = 'DESTINO'
      Origin = 'DESTINO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QChe3RecibidosIMPORTE: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Importe'
      DisplayWidth = 16
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QChe3RecibidosFECHA_COBRO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      DisplayLabel = 'F.Cobro'
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QSaldosTC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TRAER_SALDOS_CAJA_tc(:id)')
    Left = 36
    Top = 208
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QSaldosTCMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
    end
    object QSaldosTCSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QSaldosTCDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QSaldosTCHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QSaldosTCFPAGO: TSmallintField
      FieldName = 'FPAGO'
      Origin = 'FPAGO'
    end
    object QSaldosTCTPAGO: TSmallintField
      FieldName = 'TPAGO'
      Origin = 'TPAGO'
    end
    object QSaldosTCCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QSaldosTCDISPONIBILIDAD: TFloatField
      FieldName = 'DISPONIBILIDAD'
      Origin = 'DISPONIBILIDAD'
    end
    object QSaldosTCDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
  end
  object QRetenciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from LISTA_RETENCIONES_POR_CAJA ( :idcaja )')
    Left = 44
    Top = 144
    ParamData = <
      item
        Position = 1
        Name = 'idcaja'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRetencionesIDRETENCION: TIntegerField
      FieldName = 'IDRETENCION'
      Origin = 'IDRETENCION'
    end
    object QRetencionesDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QRetencionesTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QRetencionesCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QRetencionesNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QRetencionesNRO_RETENCION: TStringField
      FieldName = 'NRO_RETENCION'
      Origin = 'NRO_RETENCION'
    end
    object QRetencionesIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QRetencionesCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 35
    end
    object QRetencionesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QRetencionesFECHARETENCION: TSQLTimeStampField
      FieldName = 'FECHARETENCION'
      Origin = 'FECHARETENCION'
    end
  end
  object QDebitos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select d.numero,d.importe,d.fecha,d.origen,c.nombre as MuestraBa' +
        'nco  from debitos_banco d '
      'join cuenta_caja c on c.id_cuenta=d.id_cuenta_banco'
      'where d.id_caja=:id_caja'
      'order by d.fecha')
    Left = 44
    Top = 488
    ParamData = <
      item
        Position = 1
        Name = 'id_caja'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QDebitosNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object QDebitosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QDebitosORIGEN: TStringField
      FieldName = 'ORIGEN'
      Origin = 'ORIGEN'
      Size = 30
    end
    object QDebitosMUESTRABANCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QDebitosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
  end
  object QTxGeneradas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select t.numero,t.importe,t.fecha,t.origen,c.nombre as MuestraBa' +
        'nco  from transf_banco_emitidas t '
      'join cuenta_caja c on c.id_cuenta=t.id_cuenta_banco'
      'where t.id_caja=:id_caja and (t.fecha between :desde and :hasta)'
      'order by t.fecha')
    Left = 36
    Top = 432
    ParamData = <
      item
        Position = 1
        Name = 'id_caja'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object QTxGeneradasNUMERO: TIntegerField
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object QTxGeneradasIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QTxGeneradasORIGEN: TStringField
      DisplayLabel = 'Origen'
      FieldName = 'ORIGEN'
      Origin = 'ORIGEN'
      Size = 30
    end
    object QTxGeneradasMUESTRABANCO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Banco'
      FieldName = 'MUESTRABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QTxGeneradasFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
  end
  object QTxRecibidas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select t.numero,t.importe,t.fecha,t.origen,c.nombre as MuestraBa' +
        'nco  from transf_banco_recibidas t '
      'join cuenta_caja c on c.id_cuenta=t.id_cuenta_banco'
      'where t.id_caja=:id_caja'
      'order by t.fecha')
    Left = 44
    Top = 384
    ParamData = <
      item
        Position = 1
        Name = 'id_caja'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTxRecibidasNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object QTxRecibidasIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QTxRecibidasORIGEN: TStringField
      FieldName = 'ORIGEN'
      Origin = 'ORIGEN'
      Size = 30
    end
    object QTxRecibidasMUESTRABANCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QTxRecibidasFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
  end
  object QEfectivo: TFDQuery
    AfterOpen = QEfectivoAfterOpen
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from detalle_mov_valores(:idcaja,:desde,:hasta)  '
      'order by tipo_comprob,clase_compro,nrocomprob  ')
    Left = 492
    Top = 112
    ParamData = <
      item
        Position = 1
        Name = 'idcaja'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QEfectivoTIPO_COMPROB: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Size = 2
    end
    object QEfectivoCLASE_COMPRO: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASE_COMPRO'
      Origin = 'CLASE_COMPRO'
      Size = 2
    end
    object QEfectivoNROCOMPROB: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCOMPROB'
      Origin = 'NROCOMPROB'
      EditMask = 'a-0000-00000000;0;_'
      Size = 13
    end
    object QEfectivoDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QEfectivoHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QEfectivoID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
    end
    object QEfectivoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
    end
    object QEfectivoMUESTRAFPAGO: TStringField
      FieldName = 'MUESTRAFPAGO'
      Origin = 'MUESTRAFPAGO'
    end
    object QEfectivoCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QEfectivoUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
    end
    object QEfectivoDESCRIPCION: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 15
    end
    object QEfectivoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 100
    end
    object QEfectivoSIGNO: TStringField
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      Size = 5
    end
    object QEfectivoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
  end
  object QCajadet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TRAER_DETALLESCAJA(:id,:desde,:hasta)'
      '    order by Fecha')
    Left = 492
    Top = 168
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object QFPago: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from formapago where id_tpago<>2')
    Left = 452
    Top = 240
    object QFPagoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFPagoID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      Required = True
    end
    object QFPagoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
    end
    object QFPagoCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      Required = True
    end
    object QFPagoSIGNO: TStringField
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      Size = 5
    end
    object QFPagoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object QFPagoACUMULABLE: TStringField
      FieldName = 'ACUMULABLE'
      Origin = 'ACUMULABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QMovTCVenta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select cc.id_caja,c.fecha,c.id_tc,t.descripcion as MuestraTarjet' +
        'a,'
      '       c.importe,c.can_cuotas,cc.tipo_comprob,cc.clase_comprob,'
      
        '       cc.nro_comprobante,c.nro_cupon,c.titular,cc.id_comprobant' +
        'e'
      'from caja_mov cc'
      'left join mov_tcredito c on c.id_mov_caja=cc.id_mov_caja'
      'left join t_credito t on t.id_tc=c.id_tc'
      'where ( cc.id_caja = :id and cc.id_tpago = 4 )'
      '       and cc.tipo_operacion='#39'I'#39
      '       and ( cc.fecha_operacion between :desde and :hasta )')
    Left = 492
    Top = 464
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object QMovTCCompra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_caja,c.fecha_compra,c.fecha_cupon,c.id_tarjeta,t.nom' +
        'bre as MuestraTarjeta,'
      
        'c.importe,c.cuotas,c.tipocpbte,c.clasecpbte,c.nrocpbte,c.numero_' +
        'cupon,c.proveedor from cupon_tc_compra c'
      'left join tarjetacredito_comp t on t.id=c.id_tarjeta'
      'where c.id_caja=:id')
    Left = 500
    Top = 424
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QChe3Entregado: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select mv.id_mov_caja,ch.numero,b.nombre as MuestraBanco ,ch.ori' +
        'gen,ch.destino,ch.fecha_cobro,ch.importe from caja_mov mv'
      'join cheque_tercero ch on ch.id_mov_caja_egresos=mv.id_mov_caja'
      'left join bancos b on b.id_banco=ch.id_banco'
      'where mv.id_caja=:id_caja and mv.id_TPago=3')
    Left = 44
    Top = 296
    ParamData = <
      item
        Position = 1
        Name = 'id_caja'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QChe3EntregadoID_MOV_CAJA: TIntegerField
      DisplayLabel = 'Id.Mov Caja'
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QChe3EntregadoNUMERO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NUmero'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QChe3EntregadoMUESTRABANCO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Banco'
      FieldName = 'MUESTRABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QChe3EntregadoORIGEN: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Origen'
      FieldName = 'ORIGEN'
      Origin = 'ORIGEN'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QChe3EntregadoDESTINO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Destino'
      FieldName = 'DESTINO'
      Origin = 'DESTINO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QChe3EntregadoIMPORTE: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object QChe3EntregadoFECHA_COBRO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      DisplayLabel = 'F.de Cobro'
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QCheques: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from  che_emit_caja (:id_caja,:desde,:hasta)')
    Left = 500
    Top = 336
    ParamData = <
      item
        Position = 1
        Name = 'id_caja'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QChequesFECHA_EMISION: TSQLTimeStampField
      DisplayLabel = 'F.Emision'
      FieldName = 'FECHA_EMISION'
      Origin = 'FECHA_EMISION'
    end
    object QChequesMUESTRABANCO: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'MUESTRABANCO'
      Origin = 'MUESTRABANCO'
    end
    object QChequesNUMERO: TIntegerField
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object QChequesORDEN_DE: TStringField
      DisplayLabel = 'Orden de'
      FieldName = 'ORDEN_DE'
      Origin = 'ORDEN_DE'
      Size = 30
    end
    object QChequesIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QChequesFECHA_COBRO: TSQLTimeStampField
      DisplayLabel = 'F.Cobro'
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
    end
  end
  object QCajaCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cc.*,cta.Nombre as MuestraCtaCaja  from Caja_Cab cc '
      'left join cuenta_caja cta on cta.id_cuenta=cc.id_cuenta_caja'
      'where id_caja=:id ')
    Left = 492
    Top = 512
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = '1'
      end>
    object QCajaCabID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCajaCabID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
    object QCajaCabSALDO_INCIAL: TFloatField
      FieldName = 'SALDO_INCIAL'
      Origin = 'SALDO_INCIAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QCajaCabESTADO: TIntegerField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
    end
    object QCajaCabOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object QCajaCabNUMEROCAJA: TIntegerField
      FieldName = 'NUMEROCAJA'
      Origin = 'NUMEROCAJA'
    end
    object QCajaCabMUESTRACTACAJA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACTACAJA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QCajaCabFECHA_INCIO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO'
      Origin = 'FECHA_INCIO'
      Required = True
    end
    object QCajaCabFECHA_CIERRE: TSQLTimeStampField
      FieldName = 'FECHA_CIERRE'
      Origin = 'FECHA_CIERRE'
    end
  end
  object QAcumulados: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select  tipo_operacion, muestra_tipooperacion ,sum(debe) as Debe' +
        ',sum(haber) as Haber from traer_detallescaja (:id,:desde, :hasta' +
        ')'
      'group by tipo_operacion,muestra_tipooperacion'
      'order by tipo_operacion desc')
    Left = 452
    Top = 568
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QAcumuladosTIPO_OPERACION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_OPERACION'
      Origin = 'TIPO_OPERACION'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QAcumuladosMUESTRA_TIPOOPERACION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRA_TIPOOPERACION'
      Origin = 'MUESTRA_TIPOOPERACION'
      ProviderFlags = []
      ReadOnly = True
    end
    object QAcumuladosDEBE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DEBE'
      Origin = 'DEBE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QAcumuladosHABER: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'HABER'
      Origin = 'HABER'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object QCajas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cc.*, cta.nombre as MuestraCtaCaja from Caja_cab cc'
      'left join cuenta_caja cta on cta.id_cuenta=cc.id_cuenta_caja'
      'where cc.estado=:estado or :estado = 2'
      'order by cc.id_caja,cc.estado,cc.fecha_incio desc')
    Left = 284
    Top = 472
    ParamData = <
      item
        Position = 1
        Name = 'estado'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'estado'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCajasID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCajasID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
    object QCajasSALDO_INCIAL: TFloatField
      FieldName = 'SALDO_INCIAL'
      Origin = 'SALDO_INCIAL'
    end
    object QCajasESTADO: TIntegerField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
    end
    object QCajasOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object QCajasNUMEROCAJA: TIntegerField
      FieldName = 'NUMEROCAJA'
      Origin = 'NUMEROCAJA'
    end
    object QCajasMUESTRACTACAJA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACTACAJA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QCajasFECHA_INCIO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO'
      Origin = 'FECHA_INCIO'
      Required = True
    end
    object QCajasFECHA_CIERRE: TSQLTimeStampField
      FieldName = 'FECHA_CIERRE'
      Origin = 'FECHA_CIERRE'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 200
    Top = 128
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlue
    end
  end
end
