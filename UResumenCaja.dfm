object FormResumenCaja: TFormResumenCaja
  Left = 123
  Top = 91
  BorderIcons = [biSystemMenu]
  BorderWidth = 1
  Caption = 'Resumen de Caja'
  ClientHeight = 600
  ClientWidth = 1049
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
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
    Width = 1049
    Height = 600
    Align = alClient
    TabOrder = 0
    OnDblClick = pnBaseDblClick
    object Splitter1: TSplitter
      Left = 1
      Top = 260
      Width = 1047
      Height = 5
      Cursor = crVSplit
      Align = alBottom
      Color = clWhite
      ParentColor = False
      ExplicitTop = 257
      ExplicitWidth = 1042
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 41
      Width = 521
      Height = 219
      Align = alLeft
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSIngresosTotales
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            Position = spFooter
            Column = cxGrid1DBTableView1DEBE
          end
          item
            Format = ',0.00'
            Kind = skSum
            Position = spFooter
            Column = cxGrid1DBTableView1HABER
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            Column = cxGrid1DBTableView1HABER
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cxGrid1DBTableView1DEBE
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <>
            SummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid1DBTableView1DEBE
                DisplayText = 'Debe'
              end
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid1DBTableView1HABER
                DisplayText = 'Haber'
              end>
          end>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideSelection = True
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.FocusRect = False
        OptionsView.Footer = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.GroupSummaryLayout = gslAlignWithColumns
        OptionsView.HeaderHeight = 30
        object cxGrid1DBTableView1TIPO_OPERACION: TcxGridDBColumn
          DataBinding.FieldName = 'OPERACION'
          Visible = False
          GroupIndex = 0
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.CellMerging = True
          Width = 112
        end
        object cxGrid1DBTableView1FORMADEPAGO: TcxGridDBColumn
          Caption = 'Forma de Pago'
          DataBinding.FieldName = 'FORMADEPAGO'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Options.CellMerging = True
          Options.Grouping = False
          Width = 144
        end
        object cxGrid1DBTableView1DESCRIPCIOTC: TcxGridDBColumn
          Caption = 'Tarjeta de Credito'
          DataBinding.FieldName = 'DESCRIPCIOTC'
          Options.Editing = False
          Width = 103
        end
        object cxGrid1DBTableView1DEBE: TcxGridDBColumn
          DataBinding.FieldName = 'DEBE'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 118
        end
        object cxGrid1DBTableView1HABER: TcxGridDBColumn
          DataBinding.FieldName = 'HABER'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 118
        end
        object cxGrid1DBTableView1ID_TPAGO: TcxGridDBColumn
          DataBinding.FieldName = 'ID_TPAGO'
          Visible = False
        end
        object cxGrid1DBTableView1ID_FPAGO: TcxGridDBColumn
          DataBinding.FieldName = 'ID_FPAGO'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxGrid3: TcxGrid
      Left = 522
      Top = 41
      Width = 526
      Height = 219
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object cxGridDBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSEgresosTotales
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            Position = spFooter
            Column = cxGridDBTableView2DEBE
          end
          item
            Format = ',0.00'
            Kind = skSum
            Position = spFooter
            Column = cxGridDBTableView2HABER
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            Column = cxGridDBTableView2DEBE
          end
          item
            Format = ',0.00'
            Kind = skSum
            Column = cxGridDBTableView2HABER
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <>
            SummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGridDBTableView2DEBE
              end
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGridDBTableView2HABER
              end>
          end>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideSelection = True
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.FocusRect = False
        OptionsView.Footer = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.GroupSummaryLayout = gslAlignWithColumns
        OptionsView.HeaderHeight = 30
        object cxGridDBTableView2OPERACION: TcxGridDBColumn
          DataBinding.FieldName = 'OPERACION'
          Visible = False
          GroupIndex = 0
          Options.CellMerging = True
        end
        object cxGridDBTableView2FORMADEPAGO: TcxGridDBColumn
          DataBinding.FieldName = 'FORMADEPAGO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.CellMerging = True
          Width = 144
        end
        object cxGridDBTableView2ID_TPAGO: TcxGridDBColumn
          DataBinding.FieldName = 'ID_TPAGO'
          Visible = False
        end
        object cxGridDBTableView2ID_FPAGO: TcxGridDBColumn
          DataBinding.FieldName = 'ID_FPAGO'
          Visible = False
        end
        object cxGridDBTableView2DESCRIPCIOTC: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRIPCIOTC'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 103
        end
        object cxGridDBTableView2DEBE: TcxGridDBColumn
          DataBinding.FieldName = 'DEBE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 118
        end
        object cxGridDBTableView2HABER: TcxGridDBColumn
          DataBinding.FieldName = 'HABER'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 118
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 265
      Width = 1047
      Height = 334
      ActivePage = TabSheet1
      Align = alBottom
      TabOrder = 2
      object TabSheet1: TTabSheet
        Caption = 'Detalle de Los Ingresos'
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 814
          Height = 306
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = DSDetIngresos
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGridDBTableView1DEBE
              end
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGridDBTableView1HABER
              end>
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
            DataController.Summary.SummaryGroups = <
              item
                Links = <>
                SummaryItems = <
                  item
                    Format = ',0.00'
                    Kind = skSum
                    Position = spFooter
                    Column = cxGridDBTableView1DEBE
                  end
                  item
                    Format = ',0.00'
                    Kind = skSum
                    Position = spFooter
                    Column = cxGridDBTableView1HABER
                  end>
              end>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.HideSelection = True
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.FocusRect = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooters = gfAlwaysVisible
            OptionsView.GroupSummaryLayout = gslAlignWithColumns
            OptionsView.HeaderHeight = 30
            object cxGridDBTableView1OPERACION: TcxGridDBColumn
              DataBinding.FieldName = 'OPERACION'
              Visible = False
              GroupIndex = 0
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
            end
            object cxGridDBTableView1FORMADEPAGO: TcxGridDBColumn
              DataBinding.FieldName = 'FORMADEPAGO'
              Visible = False
              GroupIndex = 1
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
            end
            object cxGridDBTableView1CPBTE_TIPO: TcxGridDBColumn
              DataBinding.FieldName = 'CPBTE_TIPO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
            end
            object cxGridDBTableView1CPBTE_CLASE: TcxGridDBColumn
              DataBinding.FieldName = 'CPBTE_CLASE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 55
            end
            object cxGridDBTableView1CPBTE_NRO: TcxGridDBColumn
              DataBinding.FieldName = 'CPBTE_NRO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 101
            end
            object cxGridDBTableView1ID_TPAGO: TcxGridDBColumn
              DataBinding.FieldName = 'ID_TPAGO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
            end
            object cxGridDBTableView1ID_FPAGO: TcxGridDBColumn
              DataBinding.FieldName = 'ID_FPAGO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
            end
            object cxGridDBTableView1DESCRIPCIOTC: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRIPCIOTC'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
            end
            object cxGridDBTableView1CHE3_NRO: TcxGridDBColumn
              DataBinding.FieldName = 'CHE3_NRO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
            end
            object cxGridDBTableView1CHE3_BANCO: TcxGridDBColumn
              DataBinding.FieldName = 'CHE3_BANCO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 176
            end
            object cxGridDBTableView1DEBE: TcxGridDBColumn
              DataBinding.FieldName = 'DEBE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 98
            end
            object cxGridDBTableView1HABER: TcxGridDBColumn
              DataBinding.FieldName = 'HABER'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 103
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object Panel1: TPanel
          Left = 814
          Top = 0
          Width = 225
          Height = 306
          Align = alRight
          TabOrder = 1
          OnDblClick = Panel1DblClick
          object sbReporte: TSpeedButton
            Left = 194
            Top = 273
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
          object Button1: TBitBtn
            Left = 134
            Top = 221
            Width = 83
            Height = 29
            Caption = '&Cerrar'
            Default = True
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
              F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
              000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
              338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
              45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
              3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
              F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
              000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
              338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
              4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
              8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
              333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
              0000}
            NumGlyphs = 2
            TabOrder = 0
            OnClick = Button1Click
          end
          object btImprimir: TBitBtn
            Left = 30
            Top = 221
            Width = 82
            Height = 26
            Caption = 'Imprimir'
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8E8E8E8E
              8E8E8E8E8EFF00FFFF00FFFF00FFFF00FF8E8E8E8E8E8EFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FF8E8E8EBEBEBEABABABA6A6A68E8E8E8E8E8E9D9D9D8E8E8EDADADAD2D2D28E
              8E8E8E8E8E8E8E8EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FF8E8E8ED6D6D6CCCCCCB4B4B4B4B4B4B4B4B49F9F9F828282C6C6
              C6D2D2D2D2D2D2D4D4D4D5D5D5CECECE8E8E8E8E8E8E8E8E8EFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FF8E8E8ED7D7D7DCDCDCC8C8C8B4B4B4B4B4B4B4B4B4
              868686242424242424444444848484BABABACFCFCFCFCFCFCFCFCFCFCFCFC9C9
              C98E8E8E8E8E8E8E8E8EFF00FFFF00FF8E8E8ED5D5D5D5D5D5D2D2D29E9E9E9E
              9E9E9E9E9E9E9E9E8E8E8E424242333333242424242424242424444444848484
              BABABACFCFCFCFCFCFC2C2C2C2C2C28E8E8EFF00FF8E8E8ECFCFCFCFCFCFCDCD
              CD9E9E9EC2C2C2C2C2C2B4B4B4B4B4B4B2B2B2AEAEAEAAAAAA9E9E9E7A7A7A59
              59593333332424242424244444448989899D9D9D8E8E8EFF00FFFF00FF8E8E8E
              CFCFCFCCCCCC9E9E9ED6D6D6EAEAEAEAEAEAE7E7E7DCDCDCCECECEC2C2C2B6B6
              B6B4B4B4B4B4B4B1B1B1AAAAAA8A8A8A5151512B2B2B484848AEAEAE8E8E8EFF
              00FFFF00FF8E8E8ECCCCCC9E9E9EE1E1E1EAEAEAEAEAEAEAEAEAE7E7E7E5E5E5
              E3E3E3E1E1E1DEDEDED5D5D5CACACABDBDBDB4B4B4B4B4B4AEAEAE9E9E9E8E8E
              8EB2B2B28E8E8EFF00FFFF00FF8E8E8E9E9E9EE6E6E6EAEAEAEAEAEAEAEAEAEA
              EAEAD6D6D69E9E9EA9A9A9C9C9C9DADADADDDDDDDADADAD8D8D8D4D4D4CACACA
              BFBFBFB4B4B4B0B0B08E8E8E8E8E8EFF00FFFF00FF8E8E8ED1D1D1EAEAEAEAEA
              EAEAEAEAEAEAEAD1D1D1BDBDBDBCBCBCB0B0B09C9C9C919191A1A1A1B9B9B9CD
              CDCDD6D6D6D4D4D4D2D2D2CECECEC5C5C5B7B7B78E8E8EFF00FFFF00FFFF00FF
              8E8E8E8E8E8ED1D1D1E4E4E4BABABA8989899292929C9C9CAEAEAEBBBBBBBFBF
              BFBABABAACACAC9A9A9A9D9D9DA9A9A9C8C8C8D0D0D0CFCFCFC9C9C98E8E8EFF
              00FFFF00FFFF00FFFF00FFFF00FF8E8E8E8E8E8EB2B2B2A9A9A98A8A8A838383
              8383838A8A8A8A8A8AA1A1A1B2B2B2BDBDBDBFBFBFB5B5B5CECECED0D0D0C2C2
              C28E8E8EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB2B2B2D6
              D6D6D2D2D2CFCFCFB8B8B89C9C9C9090908080808484848C8C8CA4A4A4D1D1D1
              D2D2D2B6B6B68E8E8EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFB2B2B2D8D8D8D5D5D5D2D2D2CECECECBCBCBC9C9C9C7C7C7C8C8C8B2
              B2B28E8E8E8E8E8E8E8E8E8E8E8EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFB2B2B2DADADAD7D7D7D4D4D4D1D1D1CECECECBCB
              CBC8C8C8C8C8C8B2B2B2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFB2B2B2E0E0E0DDDDDDDADADAD6D6D6
              D4D4D4D1D1D1CECECECACACAB2B2B2FF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB2B2B2E2E2E2DF
              DFDFDCDCDCDADADAD6D6D6D3D3D3D0D0D0CDCDCDB2B2B2FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFB2B2B2E5E5E5E2E2E2DFDFDFDCDCDCD9D9D9D6D6D6D2D2D2CCCCCCB2B2B2FF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFB2B2B2EAEAEAE7E7E7E5E5E5E2E2E2DEDEDEDBDBDBD8D8D8D6D6
              D6B2B2B2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFB2B2B2ECECECECECECEAEAEAE7E7E7E4E4E4E1E1E1
              DEDEDEDBDBDBD1D1D1B2B2B2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB2B2B2B2B2B2B2B2B2B2B2B2EA
              EAEAE6E6E6E3E3E3E1E1E1DBDBDBB2B2B2FF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2FF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            TabOrder = 1
            OnClick = btImprimirClick
          end
          object edReporte: TEdit
            Left = 6
            Top = 274
            Width = 182
            Height = 21
            TabOrder = 2
            Text = 'edReporte'
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Detalles de los Egresos'
        ImageIndex = 1
        object cxGrid4: TcxGrid
          Left = 0
          Top = 0
          Width = 1039
          Height = 306
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object cxGridDBTableView3: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = DSDetEgresos
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGridDBTableView3DEBE
              end
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGridDBTableView3HABER
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                Column = cxGridDBTableView3DEBE
              end
              item
                Format = ',0.00'
                Kind = skSum
                Column = cxGridDBTableView3HABER
              end>
            DataController.Summary.SummaryGroups = <
              item
                Links = <>
                SummaryItems = <
                  item
                    Format = ',0.00'
                    Kind = skSum
                    Position = spFooter
                    Column = cxGridDBTableView3DEBE
                  end
                  item
                    Format = ',0.00'
                    Kind = skSum
                    Position = spFooter
                    Column = cxGridDBTableView3HABER
                  end>
              end>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.HideSelection = True
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.FocusRect = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooters = gfAlwaysVisible
            OptionsView.GroupSummaryLayout = gslAlignWithColumns
            OptionsView.HeaderHeight = 30
            object cxGridDBTableView3OPERACION: TcxGridDBColumn
              DataBinding.FieldName = 'OPERACION'
              Visible = False
              GroupIndex = 0
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
            end
            object cxGridDBTableView3FORMADEPAGO: TcxGridDBColumn
              DataBinding.FieldName = 'FORMADEPAGO'
              Visible = False
              GroupIndex = 1
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
            end
            object cxGridDBTableView3CPBTE_TIPO: TcxGridDBColumn
              DataBinding.FieldName = 'CPBTE_TIPO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
            end
            object cxGridDBTableView3CPBTE_CLASE: TcxGridDBColumn
              DataBinding.FieldName = 'CPBTE_CLASE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 57
            end
            object cxGridDBTableView3CPBTE_NRO: TcxGridDBColumn
              DataBinding.FieldName = 'CPBTE_NRO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 92
            end
            object cxGridDBTableView3ID_TPAGO: TcxGridDBColumn
              DataBinding.FieldName = 'ID_TPAGO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
            end
            object cxGridDBTableView3ID_FPAGO: TcxGridDBColumn
              DataBinding.FieldName = 'ID_FPAGO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
            end
            object cxGridDBTableView3DESCRIPCIOTC: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRIPCIOTC'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 103
            end
            object cxGridDBTableView3CHE3_NRO: TcxGridDBColumn
              DataBinding.FieldName = 'CHE3_NRO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
            end
            object cxGridDBTableView3CHE3_BANCO: TcxGridDBColumn
              DataBinding.FieldName = 'CHE3_BANCO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 174
            end
            object cxGridDBTableView3DEBE: TcxGridDBColumn
              DataBinding.FieldName = 'DEBE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 112
            end
            object cxGridDBTableView3HABER: TcxGridDBColumn
              DataBinding.FieldName = 'HABER'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 111
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBTableView3
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Detalle de Vtas'
        ImageIndex = 2
        object cxGrid5: TcxGrid
          Left = 0
          Top = 0
          Width = 1039
          Height = 306
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object cxGrid5DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = DSDetalleVta
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid5DBTableView1TOTAL
              end
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid5DBTableView1NETO
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                Column = cxGrid5DBTableView1TOTAL
              end
              item
                Format = ',0.00'
                Kind = skSum
                Column = cxGrid5DBTableView1NETO
              end>
            DataController.Summary.SummaryGroups = <
              item
                Links = <>
                SummaryItems = <
                  item
                    Format = ',0.00'
                    Kind = skSum
                    Position = spFooter
                    Column = cxGrid5DBTableView1TOTAL
                  end>
              end>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooters = gfAlwaysVisible
            object cxGrid5DBTableView1TIPO_CPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPO_CPBTE'
              Options.Editing = False
              Width = 60
            end
            object cxGrid5DBTableView1RUBRO_STK: TcxGridDBColumn
              DataBinding.FieldName = 'RUBRO_STK'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Moving = False
            end
            object cxGrid5DBTableView1DETALLE_RUBRO: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE_RUBRO'
              Options.Editing = False
              Options.CellMerging = True
              Options.Moving = False
              Width = 213
            end
            object cxGrid5DBTableView1SUBRUBRO_STK: TcxGridDBColumn
              DataBinding.FieldName = 'SUBRUBRO_STK'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Moving = False
              Width = 74
            end
            object cxGrid5DBTableView1DETALLE_SUBRUBRO: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE_SUBRUBRO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Width = 288
            end
            object cxGrid5DBTableView1CODIGOARTICULO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGOARTICULO'
              Visible = False
            end
            object cxGrid5DBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 247
            end
            object cxGrid5DBTableView1NETO: TcxGridDBColumn
              DataBinding.FieldName = 'NETO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Grouping = False
              Options.Moving = False
              Width = 105
            end
            object cxGrid5DBTableView1TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Grouping = False
              Options.Moving = False
              Width = 100
            end
          end
          object cxGrid5Level1: TcxGridLevel
            GridView = cxGrid5DBTableView1
          end
        end
      end
    end
    object pnCabecera: TPanel
      Left = 1
      Top = 1
      Width = 1047
      Height = 40
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 3
      object Label3: TLabel
        Left = 539
        Top = 7
        Width = 113
        Height = 23
        Caption = 'Egresos Por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 8
        Top = 7
        Width = 122
        Height = 23
        Caption = 'Ingresos Por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object CDSIngresosTotal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPIngresosTotales'
    Left = 256
    Top = 120
    object CDSIngresosTotalOPERACION: TStringField
      DisplayLabel = 'Tipo de Operacion'
      FieldName = 'OPERACION'
      Origin = 'OPERACION'
      ProviderFlags = []
    end
    object CDSIngresosTotalFORMADEPAGO: TStringField
      FieldName = 'FORMADEPAGO'
      Origin = 'FORMADEPAGO'
      ProviderFlags = []
    end
    object CDSIngresosTotalID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      ProviderFlags = []
    end
    object CDSIngresosTotalID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      ProviderFlags = []
    end
    object CDSIngresosTotalDESCRIPCIOTC: TStringField
      FieldName = 'DESCRIPCIOTC'
      Origin = 'DESCRIPCIOTC'
      ProviderFlags = []
      Size = 15
    end
    object CDSIngresosTotalDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIngresosTotalHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSIngresosTotales: TDataSource
    DataSet = CDSIngresosTotal
    Left = 384
    Top = 136
  end
  object DSPIngresosTotales: TDataSetProvider
    DataSet = QIngresosTotales
    Options = []
    Left = 160
    Top = 120
  end
  object DSPDetIngresos: TDataSetProvider
    DataSet = QDetIngresos
    Options = []
    Left = 160
    Top = 424
  end
  object CDSDetIngresos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = '2915'
      end>
    ProviderName = 'DSPDetIngresos'
    Left = 240
    Top = 424
    object CDSDetIngresosOPERACION: TStringField
      FieldName = 'OPERACION'
      Origin = 'OPERACION'
      ProviderFlags = []
    end
    object CDSDetIngresosFORMADEPAGO: TStringField
      DisplayLabel = 'Forma de Pago'
      FieldName = 'FORMADEPAGO'
      Origin = 'FORMADEPAGO'
      ProviderFlags = []
    end
    object CDSDetIngresosCPBTE_TIPO: TStringField
      DisplayLabel = 'Tp.Cpbte'
      FieldName = 'CPBTE_TIPO'
      Origin = 'CPBTE_TIPO'
      ProviderFlags = []
      Size = 2
    end
    object CDSDetIngresosCPBTE_CLASE: TStringField
      DisplayLabel = 'Cl.Cpbte'
      FieldName = 'CPBTE_CLASE'
      Origin = 'CPBTE_CLASE'
      ProviderFlags = []
      Size = 2
    end
    object CDSDetIngresosCPBTE_NRO: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'CPBTE_NRO'
      Origin = 'CPBTE_NRO'
      ProviderFlags = []
      EditMask = 'a-0000-00000000;0;_'
      Size = 13
    end
    object CDSDetIngresosID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      ProviderFlags = []
    end
    object CDSDetIngresosID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      ProviderFlags = []
    end
    object CDSDetIngresosDESCRIPCIOTC: TStringField
      DisplayLabel = 'Tarjeta de Credito'
      FieldName = 'DESCRIPCIOTC'
      Origin = 'DESCRIPCIOTC'
      ProviderFlags = []
      Size = 15
    end
    object CDSDetIngresosCHE3_NRO: TStringField
      DisplayLabel = 'Nro.Cheque'
      FieldName = 'CHE3_NRO'
      Origin = 'CHE3_NRO'
      ProviderFlags = []
      Size = 15
    end
    object CDSDetIngresosCHE3_BANCO: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'CHE3_BANCO'
      Origin = 'CHE3_BANCO'
      ProviderFlags = []
      Size = 25
    end
    object CDSDetIngresosDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSDetIngresosHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSDetIngresos: TDataSource
    DataSet = CDSDetIngresos
    Left = 320
    Top = 424
  end
  object DSPEgresosTotales: TDataSetProvider
    DataSet = QEgresosTotales
    Options = []
    Left = 704
    Top = 128
  end
  object CDSEgresosTotales: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPEgresosTotales'
    Left = 792
    Top = 128
    object StringField1: TStringField
      DisplayLabel = 'Tipo de Operacion'
      FieldName = 'OPERACION'
      Origin = 'OPERACION'
      ProviderFlags = []
    end
    object StringField2: TStringField
      DisplayLabel = 'Forma de Pago'
      FieldName = 'FORMADEPAGO'
      Origin = 'FORMADEPAGO'
      ProviderFlags = []
    end
    object IntegerField1: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      ProviderFlags = []
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      ProviderFlags = []
    end
    object StringField3: TStringField
      DisplayLabel = 'Tarjeta de Credito'
      FieldName = 'DESCRIPCIOTC'
      Origin = 'DESCRIPCIOTC'
      ProviderFlags = []
      Size = 15
    end
    object CDSEgresosTotalesDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSEgresosTotalesHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSEgresosTotales: TDataSource
    DataSet = CDSEgresosTotales
    Left = 880
    Top = 128
  end
  object DSPDetEgresos: TDataSetProvider
    DataSet = QDetEgresos
    Options = []
    Left = 160
    Top = 496
  end
  object CDSDetEgresos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = '2890'
      end>
    ProviderName = 'DSPDetEgresos'
    Left = 240
    Top = 504
    object StringField4: TStringField
      FieldName = 'OPERACION'
      Origin = 'OPERACION'
      ProviderFlags = []
    end
    object StringField5: TStringField
      DisplayLabel = 'Forma de Pago'
      FieldName = 'FORMADEPAGO'
      Origin = 'FORMADEPAGO'
      ProviderFlags = []
    end
    object StringField6: TStringField
      DisplayLabel = 'Tp.Cpbte'
      FieldName = 'CPBTE_TIPO'
      Origin = 'CPBTE_TIPO'
      ProviderFlags = []
      Size = 2
    end
    object StringField7: TStringField
      DisplayLabel = 'Cl.Cpbte'
      FieldName = 'CPBTE_CLASE'
      Origin = 'CPBTE_CLASE'
      ProviderFlags = []
      Size = 2
    end
    object StringField8: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'CPBTE_NRO'
      Origin = 'CPBTE_NRO'
      ProviderFlags = []
      EditMask = 'a-0000-00000000;0;_'
      Size = 13
    end
    object IntegerField3: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      ProviderFlags = []
    end
    object IntegerField4: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      ProviderFlags = []
    end
    object StringField9: TStringField
      DisplayLabel = 'Tarjeta de Credito'
      FieldName = 'DESCRIPCIOTC'
      Origin = 'DESCRIPCIOTC'
      ProviderFlags = []
      Size = 15
    end
    object StringField10: TStringField
      DisplayLabel = 'Nro.Che'
      FieldName = 'CHE3_NRO'
      Origin = 'CHE3_NRO'
      ProviderFlags = []
      Size = 15
    end
    object StringField11: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'CHE3_BANCO'
      Origin = 'CHE3_BANCO'
      ProviderFlags = []
      Size = 25
    end
    object CDSDetEgresosDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSDetEgresosHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSDetEgresos: TDataSource
    DataSet = CDSDetEgresos
    Left = 320
    Top = 496
  end
  object DSPDetalleVta: TDataSetProvider
    DataSet = QDetalleVta
    Options = []
    Left = 528
    Top = 512
  end
  object CDSDetalleVta: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = '2890'
      end>
    ProviderName = 'DSPDetalleVta'
    Left = 608
    Top = 512
    object CDSDetalleVtaRUBRO_STK: TStringField
      DisplayLabel = 'Cod.Rubro'
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      Size = 3
    end
    object CDSDetalleVtaSUBRUBRO_STK: TStringField
      DisplayLabel = 'Cod.Sub Rubro'
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      Size = 5
    end
    object CDSDetalleVtaDETALLE_RUBRO: TStringField
      DisplayLabel = 'Rubro Detalle'
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Size = 35
    end
    object CDSDetalleVtaDETALLE_SUBRUBRO: TStringField
      DisplayLabel = 'Sub Rubro Detalle'
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Size = 45
    end
    object CDSDetalleVtaTIPO_CPBTE: TStringField
      DisplayLabel = 'Tipo Cpbt.'
      FieldName = 'TIPO_CPBTE'
      Origin = 'TIPO_CPBTE'
      Size = 2
    end
    object CDSDetalleVtaCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSDetalleVtaDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSDetalleVtaTOTAL: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSDetalleVtaNETO: TCurrencyField
      DisplayLabel = 'Neto'
      FieldName = 'NETO'
      Origin = 'TOTAL_NETO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSDetalleVta: TDataSource
    DataSet = CDSDetalleVta
    Left = 704
    Top = 520
  end
  object frxReport: TfrxReport
    Version = '2022.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42450.152323125000000000
    ReportOptions.LastChange = 42450.152323125000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 812
    Top = 388
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frIngTotales: TfrxDBDataset
    UserName = 'frIngTotales'
    CloseDataSource = False
    FieldAliases.Strings = (
      'OPERACION=OPERACION'
      'FORMADEPAGO=FORMADEPAGO'
      'ID_TPAGO=ID_TPAGO'
      'ID_FPAGO=ID_FPAGO'
      'DESCRIPCIOTC=DESCRIPCIOTC'
      'DEBE=DEBE'
      'HABER=HABER')
    DataSource = DSIngresosTotales
    BCDToCurrency = False
    DataSetOptions = []
    Left = 916
    Top = 492
  end
  object frEgrTotales: TfrxDBDataset
    UserName = 'frEgrTotales'
    CloseDataSource = False
    FieldAliases.Strings = (
      'OPERACION=OPERACION'
      'FORMADEPAGO=FORMADEPAGO'
      'ID_TPAGO=ID_TPAGO'
      'ID_FPAGO=ID_FPAGO'
      'DESCRIPCIOTC=DESCRIPCIOTC'
      'DEBE=DEBE'
      'HABER=HABER')
    DataSource = DSEgresosTotales
    BCDToCurrency = False
    DataSetOptions = []
    Left = 916
    Top = 428
  end
  object frDetEgresos: TfrxDBDataset
    UserName = 'frDetEgresos'
    CloseDataSource = False
    DataSource = DSDetEgresos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 812
    Top = 452
  end
  object frDetVta: TfrxDBDataset
    UserName = 'frDetVta'
    CloseDataSource = False
    FieldAliases.Strings = (
      'RUBRO_STK=RUBRO_STK'
      'SUBRUBRO_STK=SUBRUBRO_STK'
      'DETALLE_RUBRO=DETALLE_RUBRO'
      'DETALLE_SUBRUBRO=DETALLE_SUBRUBRO'
      'TIPO_CPBTE=TIPO_CPBTE'
      'CODIGOARTICULO=CODIGOARTICULO'
      'DETALLE=DETALLE'
      'TOTAL=TOTAL'
      'NETO=NETO')
    DataSource = DSDetalleVta
    BCDToCurrency = False
    DataSetOptions = []
    Left = 924
    Top = 348
  end
  object frDetIngresos: TfrxDBDataset
    UserName = 'frDetIngresos'
    CloseDataSource = False
    DataSource = DSDetIngresos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 812
    Top = 508
  end
  object CDSSaldos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSAldos'
    Left = 696
    Top = 216
    object CDSSaldosFORMADEPAGO: TStringField
      FieldName = 'FORMADEPAGO'
      Origin = 'FORMADEPAGO'
      ProviderFlags = []
    end
    object CDSSaldosID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      ProviderFlags = []
    end
    object CDSSaldosID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      ProviderFlags = []
    end
    object CDSSaldosDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSSaldosHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSSaldosSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSPSAldos: TDataSetProvider
    DataSet = QSAldos
    Options = []
    Left = 632
    Top = 216
  end
  object DSSAldos: TDataSource
    DataSet = CDSSaldos
    Left = 768
    Top = 216
  end
  object frSaldos: TfrxDBDataset
    UserName = 'frSaldos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FORMADEPAGO=FORMADEPAGO'
      'ID_TPAGO=ID_TPAGO'
      'ID_FPAGO=ID_FPAGO'
      'DEBE=DEBE'
      'HABER=HABER'
      'SALDO=SALDO')
    DataSet = CDSSaldos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 832
    Top = 224
  end
  object DSSaldosIni: TDataSource
    DataSet = CDSSaldoInicial
    Left = 656
    Top = 368
  end
  object DSSaldosFin: TDataSource
    DataSet = CDSSaldoFinal
    Left = 656
    Top = 440
  end
  object frSaldoFinal: TfrxDBDataset
    UserName = 'frSaldoFinal'
    CloseDataSource = False
    DataSet = CDSSaldoFinal
    BCDToCurrency = False
    DataSetOptions = []
    Left = 720
    Top = 440
  end
  object frSaldoInicial: TfrxDBDataset
    UserName = 'frSaldoInicial'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_CAJA_SALDO=ID_CAJA_SALDO'
      'ID_CAJA_CAB=ID_CAJA_CAB'
      'ID_TPAGO=ID_TPAGO'
      'ID_FPAGO=ID_FPAGO'
      'IMPORTE=IMPORTE'
      'ESTADO_CAJA=ESTADO_CAJA'
      'OBSERVACIONES=OBSERVACIONES'
      'MUESTRAFORMAPAGO=MUESTRAFORMAPAGO')
    DataSource = DSSaldosIni
    BCDToCurrency = False
    DataSetOptions = []
    Left = 724
    Top = 372
  end
  object DSPSaldoInicial: TDataSetProvider
    DataSet = QSaldoInic
    Options = []
    Left = 520
    Top = 368
  end
  object CDSSaldoInicial: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSaldoInicial'
    Left = 584
    Top = 368
    object CDSSaldoInicialID_CAJA_SALDO: TIntegerField
      FieldName = 'ID_CAJA_SALDO'
      Origin = 'ID_CAJA_SALDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSSaldoInicialID_CAJA_CAB: TIntegerField
      FieldName = 'ID_CAJA_CAB'
      Origin = 'ID_CAJA_CAB'
      Required = True
    end
    object CDSSaldoInicialID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      Required = True
    end
    object CDSSaldoInicialID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      Required = True
    end
    object CDSSaldoInicialESTADO_CAJA: TSmallintField
      FieldName = 'ESTADO_CAJA'
      Origin = 'ESTADO_CAJA'
      Required = True
    end
    object CDSSaldoInicialOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      Size = 400
    end
    object CDSSaldoInicialMUESTRAFORMAPAGO: TStringField
      FieldName = 'MUESTRAFORMAPAGO'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
    end
    object CDSSaldoInicialIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSPSaldoFinal: TDataSetProvider
    DataSet = QSaldoFinal
    Options = []
    Left = 520
    Top = 440
  end
  object CDSSaldoFinal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSaldoFinal'
    Left = 584
    Top = 440
    object CDSSaldoFinalMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
    end
    object CDSSaldoFinalFPAGO: TSmallintField
      FieldName = 'FPAGO'
      Origin = 'FPAGO'
    end
    object CDSSaldoFinalTPAGO: TSmallintField
      FieldName = 'TPAGO'
      Origin = 'TPAGO'
    end
    object CDSSaldoFinalDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSSaldoFinalSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSSaldoFinalDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSSaldoFinalHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSSaldoFinalCOTIZACION: TFloatField
      DisplayLabel = 'Cotiz.'
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSSaldoFinalDISPONIBILIDAD: TFloatField
      FieldName = 'DISPONIBILIDAD'
      Origin = 'DISPONIBILIDAD'
    end
  end
  object QIngresosTotales: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.operacion, s.formadepago,s.id_tpago,s.id_fpago,s.descri' +
        'pciotc,'
      
        '  sum( s.debe) as Debe,sum(s.haber) as Haber from resumen_caja (' +
        ':id) s'
      'where s.tipo_operacion='#39'I'#39'  '
      
        'group by s.operacion,s.formadepago,s.id_tpago,s.id_fpago,s.descr' +
        'ipciotc'
      'order by s.operacion,s.formadepago')
    Left = 96
    Top = 129
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QEgresosTotales: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.operacion, s.formadepago,s.id_tpago,s.id_fpago,s.descri' +
        'pciotc,'
      
        '  sum( s.debe) as Debe,sum(s.haber) as Haber from resumen_caja (' +
        ':id) s'
      'where s.tipo_operacion='#39'E'#39'  '
      
        'group by s.operacion,s.formadepago,s.id_tpago,s.id_fpago,s.descr' +
        'ipciotc'
      'order by s.operacion,s.formadepago')
    Left = 616
    Top = 128
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QSAldos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select r.id_tpago,r.id_fpago, r.formadepago,Sum(r.debe) as Debe,' +
        'sum(r.haber) as Haber ,Sum(r.debe)-sum(r.haber) as saldo from re' +
        'sumen_caja (:id) r'
      'group by r.id_tpago,r.id_fpago,r.formadepago')
    Left = 576
    Top = 216
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QDetIngresos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.operacion, s.formadepago,s.cpbte_tipo,s.cpbte_clase,s.c' +
        'pbte_nro,s.id_tpago,'
      '       s.id_fpago,s.descripciotc,'
      '       s.che3_nro,s.che3_banco,'
      
        '       sum( s.debe) as Debe,sum(s.haber) as Haber from resumen_c' +
        'aja (:id) s'
      'where s.tipo_operacion='#39'I'#39' '
      
        'group by s.operacion, s.formadepago,s.cpbte_tipo,s.cpbte_clase,s' +
        '.cpbte_nro,s.id_tpago,s.id_fpago,s.descripciotc,s.che3_nro,s.che' +
        '3_banco'
      
        'order by s.operacion,s.formadepago,s.cpbte_tipo,s.cpbte_clase,s.' +
        'cpbte_nro,s.id_tpago,s.id_fpago')
    Left = 76
    Top = 424
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = '2915'
      end>
  end
  object QDetEgresos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.operacion, s.formadepago,s.cpbte_tipo,s.cpbte_clase,s.c' +
        'pbte_nro,s.id_tpago,s.id_fpago,s.descripciotc,'
      '       s.che3_nro,s.che3_banco,'
      
        '       sum( s.debe) as Debe,sum(s.haber) as Haber from resumen_c' +
        'aja (:id) s'
      'where s.tipo_operacion='#39'E'#39' '
      
        'group by s.operacion, s.formadepago,s.cpbte_tipo,s.cpbte_clase,s' +
        '.cpbte_nro,s.id_tpago,s.id_fpago,s.descripciotc,s.che3_nro,s.che' +
        '3_banco'
      
        'order by s.operacion,s.formadepago,s.cpbte_tipo,s.cpbte_clase,s.' +
        'cpbte_nro,s.id_tpago,s.id_fpago')
    Left = 76
    Top = 496
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = '2890'
      end>
  end
  object QSaldoInic: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select cs.*,fp.descripcion as MuestraFormaPago from caja_Saldos ' +
        'CS '
      'left join formapago fp on fp.id_fpago=cs.id_fpago'
      'where cs.id_caja_cab=:id')
    Left = 436
    Top = 368
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QSaldoFinal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TRAER_SALDOS_CAJA(:id)')
    Left = 428
    Top = 448
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QDetalleVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select rd.tipo_cpbte,rd.codigoarticulo,rd.detalle, rd.rubro_stk,' +
        'rd.subrubro_stk,rd.detalle_rubro,rd.detalle_subrubro,'
      '       (rd.total) as Total,(rd.total_neto) as Neto'
      '     from resumen_caja_det (:id) rd'
      'order by rd.rubro_stk,rd.subrubro_stk')
    Left = 436
    Top = 512
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = '2890'
      end>
  end
  object JvFormStorage1: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    Options = [fpState, fpSize, fpLocation, fpActiveControl]
    StoredValues = <>
    Left = 376
    Top = 96
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    SubStorages = <>
    Left = 429
    Top = 132
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.frp'
    Left = 608
    Top = 328
  end
end
