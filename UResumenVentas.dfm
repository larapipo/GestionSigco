object FormResumenVentas: TFormResumenVentas
  Left = 58
  Top = 206
  BorderWidth = 1
  Caption = 'Listado General de Operaciones Realizadas'
  ClientHeight = 711
  ClientWidth = 1093
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pcVentas: TPageControl
    Left = 0
    Top = 0
    Width = 1093
    Height = 711
    ActivePage = pag2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    HotTrack = True
    MultiLine = True
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    object pag1: TTabSheet
      Caption = 'Informe Anual'
      object pnCabecera: TPanel
        Left = 0
        Top = 0
        Width = 1085
        Height = 49
        Align = alTop
        TabOrder = 0
        OnDblClick = pnCabeceraDblClick
        object JvGradient1: TJvGradient
          Left = 1
          Top = 1
          Width = 1083
          Height = 47
          Style = grVertical
          StartColor = clGradientInactiveCaption
          EndColor = clWhite
          ExplicitLeft = 81
          ExplicitTop = 44
          ExplicitWidth = 1051
        end
        object Label1: TLabel
          Left = 15
          Top = 12
          Width = 32
          Height = 19
          Caption = 'A'#241'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 306
          Top = 12
          Width = 40
          Height = 13
          Caption = 'Sucursal'
        end
        object Label10: TLabel
          Left = 146
          Top = 12
          Width = 128
          Height = 26
          Caption = 'No Estan Las Percepciones'#13#10'de Iva e IIBB'
        end
        object SpinEdit1: TSpinEdit
          Left = 53
          Top = 9
          Width = 68
          Height = 29
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxValue = 3000
          MinValue = 1900
          ParentFont = False
          TabOrder = 0
          Value = 1900
          OnChange = SpinEdit1Change
        end
        object BitBtn1: TBitBtn
          Left = 804
          Top = 6
          Width = 75
          Height = 28
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
          TabOrder = 1
          OnClick = BitBtn1Click
        end
        object btExcelAnual: TBitBtn
          Left = 709
          Top = 6
          Width = 88
          Height = 28
          Caption = 'a Excel'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
            078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
            BE078DBEFF00FFFF00FFB88989B88989B88989B88989B88989B88989B8898965
            CDF965CDF865CDF965CDF866CEF939ADD8078DBEFF00FFFF00FFB88989FEFDFB
            FEFDFBFEFDFBFEFDFBFEFDFB4D87430C85180C85180C851851BDB66ED4F93EB1
            D984D7EB078DBEFF00FFB88989FEF9F4FEF9F4FEF9F4FEF9F4FEF9F4B8898967
            CED60C85181398250C85184BB79A42B4D4AEF1F9078DBEFF00FFB88989FEF6ED
            FEF6EDFEF6EDFEF6EDFEF6EDB8898983E4FC84E4FC0C851826B73F0C851836A8
            A1B3F4F9078DBEFF00FFB88989FFF2E7FFF2E7FFF2E7FAE8DEFAE8DEB889898D
            EBFD8DEBFD5DC0A70C851837C4580C8518ACF0EB6DCAE0078DBEB88989FFEFE0
            FFEFE0FFEFE0D09F9ED0A09EC59393ACE4DA9FDBCA82AB810C85184EDB780C85
            1898BA99A3BFAC078DBEB88989FFEBD9FFEBD9F3D7C9D5ABA8D1C8C2CD999907
            87800C85180C851847D06E59E38842C6670C85180C8518078DBEB88989FFE8D2
            FFE8D2F3D4C4D9AEACCD99999AF6FE9BF5FE63C5A40C85185DE88E63EE984CD0
            750C8518F0F1E7B88989B88989B88989B88989B88989CD9999A1FAFEA1FBFEA0
            FAFEA1FBFE737E570C851846CB6E0C8518EFEDDFFEF6EDB88989FF00FF078DBE
            FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBEB8898984B47B0C8518EDE8
            D7FAE8DEFAE8DEB88989FF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
            00FFFF00FFB88989FFEFE0FFEFE0FFEFE0D09F9ED0A09EC59393FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989FFEBD9FFEBD9F3D7
            C9D5ABA8D1C8C2CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFB88989FFE8D2FFE8D2F3D4C4D9AEACCD9999FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989B88989B88989B889
            89CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 2
          OnClick = btExcelAnualClick
        end
        object dbcSucursal: TJvDBLookupCombo
          Left = 352
          Top = 12
          Width = 185
          Height = 21
          DisplayEmpty = 'Todas las Sucursales'
          EmptyValue = '-1'
          LookupField = 'CODIGO'
          LookupDisplay = 'DETALLE'
          LookupSource = DSSucursales
          TabOrder = 3
        end
        object Button1: TButton
          Left = 556
          Top = 10
          Width = 125
          Height = 19
          Caption = 'Filtrar comprobantes'
          TabOrder = 4
          OnClick = Button1Click
        end
      end
      object pnPie: TPanel
        Left = 0
        Top = 649
        Width = 1085
        Height = 34
        Align = alBottom
        TabOrder = 1
        object ToolBar1: TToolBar
          Left = 1
          Top = 1
          Width = 1083
          Height = 29
          ButtonHeight = 27
          Caption = 'ToolBar1'
          DrawingStyle = dsGradient
          GradientEndColor = clGradientActiveCaption
          GradientStartColor = clWhite
          TabOrder = 0
          object pnEstado: TPanel
            Left = 0
            Top = 0
            Width = 297
            Height = 27
            Alignment = taLeftJustify
            Caption = '...'
            TabOrder = 2
          end
          object ToolButton1: TToolButton
            Left = 297
            Top = 0
            Width = 383
            Caption = 'ToolButton1'
            Style = tbsSeparator
          end
          object btSalirVentas: TBitBtn
            Left = 680
            Top = 0
            Width = 82
            Height = 27
            Caption = 'Salir'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FF000288010893010B99010C99010893000389FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000186010D9D021CAF021FB402
              1FB5021FB5021FB2021CB0010F9F000287FF00FFFF00FFFF00FFFF00FFFF00FF
              00038A0118B2021FB7021EB1021DB1021DB1021DB1021DB1021EB2021FB40219
              AC00048EFF00FFFF00FFFF00FF0001830118BB0220CC011CBF0015B4011AB002
              1DB1021DB1011CB00015AD011BB0021FB4021AAC000287FF00FFFF00FF010CA7
              0121E0011CD30726CC4966D70B28BC0018B00019AF0622B44A66CE0D2BB7011B
              B0021FB5010F9FFF00FF000187011CDC0120ED0017DC3655E2FFFFFFA4B4ED05
              20BB0119B28B9EE1FFFFFF4E6ACF0014AC021EB2021CB000038900069A0120F8
              011FF6001DE9031FE1738BEEFFFFFFA0B1ED93A5E7FFFFFF91A4E20823B4011B
              B0021DB1021FB4010895020CAA0A2EFE0323FB011FF6001CEB0018E1788FF0FF
              FFFFFFFFFF96A7EA021BB50019AF021DB1021DB10220B5010C99040EAC294DFE
              0D30FB011FFA001CF7011CEE8EA1F4FFFFFFFFFFFFA6B6EE0520C20018B6021D
              B1021DB10220B5010B980208A04162FB2F51FC001EFA0725FA8AA0FEFFFFFF8E
              A3F67991F2FFFFFFA3B4EE0C29C6011BB8021DB4021FB2000793000189314FEF
              7690FF0F2DFA3354FBFFFFFF91A5FE021EF30017E7738BF3FFFFFF4765E00016
              C2021FBD021CB2000288FF00FF0C1BBC819AFF728BFE1134FA3456FB0526FA00
              1CFA001CF40220ED3353ED0625DA011DD00220CB010DA1FF00FFFF00FF000189
              2943E6A5B7FF849AFC2341FB0323FA011FFA011FFA001EF7011BEE021FE50121
              E20118BF000184FF00FFFF00FFFF00FF01038F2A45E693A9FFABBBFF758FFE49
              69FC3658FB3153FC2346FC092CF70118CB00038BFF00FFFF00FFFF00FFFF00FF
              FF00FF0001890F1DBF3E5BF36B87FE728CFF5E7BFE395BFB1231EB010FB50001
              84FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000189030AA306
              11B2050FB10107A0000188FF00FFFF00FFFF00FFFF00FFFF00FF}
            TabOrder = 1
            OnClick = btSalirVentasClick
          end
          object btBuscarVtas: TBitBtn
            Left = 762
            Top = 0
            Width = 81
            Height = 27
            Caption = 'Buscar'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FF4A667C
              BE9596FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF6B9CC31E89E84B7AA3C89693FF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4BB4FE51B5FF
              2089E94B7AA2C69592FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FF51B7FE51B3FF1D87E64E7AA0CA9792FF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              51B7FE4EB2FF1F89E64E7BA2B99497FF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF52B8FE4BB1FF2787D95F6A76FF
              00FFB0857FC09F94C09F96BC988EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FF55BDFFB5D6EDBF9D92BB9B8CE7DAC2FFFFE3FFFFE5FDFADAD8C3
              B3B58D85FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCEA795FD
              EEBEFFFFD8FFFFDAFFFFDBFFFFE6FFFFFBEADDDCAE837FFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFC1A091FBDCA8FEF7D0FFFFDBFFFFE3FFFFF8FFFF
              FDFFFFFDC6A99CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC1A091FEE3ACF1
              C491FCF2CAFFFFDDFFFFE4FFFFF7FFFFF7FFFFE9EEE5CBB9948CFF00FFFF00FF
              FF00FFFF00FFFF00FFC2A191FFE6AEEEB581F7DCAEFEFDD8FFFFDFFFFFE3FFFF
              E4FFFFE0F3ECD2BB968EFF00FFFF00FFFF00FFFF00FFFF00FFBC978CFBE7B7F4
              C791F2C994F8E5B9FEFCD8FFFFDDFFFFDCFFFFE0E2D2BAB68E86FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFD9C3A9FFFEE5F7DCB8F2C994F5D4A5FAE8BDFDF4
              C9FDFBD6B69089FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB58D85E8
              DEDDFFFEF2F9D8A3F4C48CF9D49FFDEAB8D0B49FB89086FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFAD827FC9AA9EEFE0B7EFDFB2E7CEACB890
              86B89086FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFBA968ABB988CB79188FF00FFFF00FFFF00FFFF00FF}
            TabOrder = 0
            OnClick = btBuscarVtasClick
          end
        end
      end
      object cxDBVerticalGrid1: TcxDBVerticalGrid
        Left = 0
        Top = 49
        Width = 1085
        Height = 600
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        LayoutStyle = lsMultiRecordView
        OptionsView.RowHeaderWidth = 192
        OptionsView.ValueWidth = 84
        OptionsData.Editing = False
        OptionsData.Appending = False
        OptionsData.Deleting = False
        Navigator.Buttons.CustomButtons = <>
        ParentFont = False
        ScrollbarAnnotations.CustomAnnotations = <>
        Styles.Content = cxStyle18
        Styles.Header = cxStyle22
        TabOrder = 2
        DataController.DataSource = DSVentas
        Version = 1
        object cxDBVerticalGrid1DBMultiEditorRow1: TcxDBMultiEditorRow
          Options.ShowExpandButton = False
          Properties.Editors = <
            item
              Caption = 'Sucursal'
              HeaderAlignmentHorz = taCenter
              DataBinding.FieldName = 'NOMBRESUCURSAL'
            end>
          ID = 0
          ParentID = -1
          Index = 0
          Version = 1
        end
        object cxDBVerticalGrid1DBMultiEditorRow2: TcxDBMultiEditorRow
          Properties.Editors = <
            item
              Caption = 'Mes'
              HeaderAlignmentHorz = taCenter
              DataBinding.FieldName = 'MES'
              Options.Editing = False
            end>
          Styles.Content = cxStyle14
          ID = 1
          ParentID = -1
          Index = 1
          Version = 1
        end
        object cxDBVerticalGrid1CategoryRow1: TcxCategoryRow
          Properties.Caption = 'Ventas'
          Styles.Header = cxStyle26
          ID = 2
          ParentID = -1
          Index = 2
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow1: TcxDBEditorRow
          Properties.Caption = 'Ventas en Cta. Cte.'
          Properties.DataBinding.FieldName = 'TOTAL_VTAS_CC'
          Styles.Header = cxStyle22
          Styles.Content = cxStyle18
          ID = 3
          ParentID = -1
          Index = 3
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow2: TcxDBEditorRow
          Properties.Caption = 'Ventas de Contado'
          Properties.DataBinding.FieldName = 'TOTAL_VTAS_CTDO'
          ID = 4
          ParentID = -1
          Index = 4
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow3: TcxDBEditorRow
          Properties.Caption = 'Notas de Cre.Contado'
          Properties.DataBinding.FieldName = 'TOTAL_VTAS_CTDO_NCREDITO'
          ID = 5
          ParentID = -1
          Index = 5
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow4: TcxDBEditorRow
          Properties.Caption = 'Notas de Cred.'
          Properties.DataBinding.FieldName = 'TOTAL_VTAS_NCREDITO'
          ID = 6
          ParentID = -1
          Index = 6
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow5: TcxDBEditorRow
          Properties.Caption = 'Notas Debitos'
          Properties.DataBinding.FieldName = 'TOTAL_VTAS_NDEBITO'
          ID = 7
          ParentID = -1
          Index = 7
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow6: TcxDBEditorRow
          Properties.Caption = 'Total de Ventas'
          Properties.DataBinding.FieldName = 'TOTAL_VTAS'
          Styles.Header = cxStyle2
          Styles.Content = cxStyle24
          ID = 8
          ParentID = -1
          Index = 8
          Version = 1
        end
        object cxDBVerticalGrid1CategoryRow2: TcxCategoryRow
          Properties.Caption = 'Compras'
          Styles.Header = cxStyle26
          ID = 9
          ParentID = -1
          Index = 9
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow7: TcxDBEditorRow
          Properties.Caption = 'Total Comp.Ctdo'
          Properties.DataBinding.FieldName = 'TOTAL_COMPRAS_CTDO'
          ID = 10
          ParentID = -1
          Index = 10
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow8: TcxDBEditorRow
          Properties.Caption = 'Total Comp.Cta.Cte'
          Properties.DataBinding.FieldName = 'TOTAL_COMPRAS'
          ID = 11
          ParentID = -1
          Index = 11
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow9: TcxDBEditorRow
          Properties.Caption = 'Notas de Credito'
          Properties.DataBinding.FieldName = 'TOTAL_NC_COMPRAS'
          ID = 12
          ParentID = -1
          Index = 12
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow10: TcxDBEditorRow
          Properties.Caption = 'Total de Compras'
          Properties.DataBinding.FieldName = 'TOTAL_GRAL_COMPRAS'
          Styles.Header = cxStyle2
          Styles.Content = cxStyle21
          ID = 13
          ParentID = -1
          Index = 13
          Version = 1
        end
        object cxDBVerticalGrid1CategoryRow3: TcxCategoryRow
          Properties.HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle26
          ID = 14
          ParentID = -1
          Index = 14
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow11: TcxDBEditorRow
          Properties.Caption = 'Egresos (Gastos)'
          Properties.DataBinding.FieldName = 'TOTAL_EGRESOS'
          Styles.Header = cxStyle22
          Styles.Content = cxStyle21
          ID = 15
          ParentID = -1
          Index = 15
          Version = 1
        end
        object cxDBVerticalGrid1CategoryRow4: TcxCategoryRow
          Properties.HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle26
          ID = 16
          ParentID = -1
          Index = 16
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow12: TcxDBEditorRow
          Properties.Caption = 'Ingresos (Cobranza+Vta Ctdo)'
          Properties.DataBinding.FieldName = 'TOTAL_INGRESOS'
          Styles.Content = cxStyle21
          ID = 17
          ParentID = -1
          Index = 17
          Version = 1
        end
        object cxDBVerticalGrid1CategoryRow5: TcxCategoryRow
          Properties.HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle26
          ID = 18
          ParentID = -1
          Index = 18
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow13: TcxDBEditorRow
          Properties.Caption = 'Ordenes de Pago'
          Properties.DataBinding.FieldName = 'TOTAL_PAGOS'
          Styles.Content = cxStyle21
          ID = 19
          ParentID = -1
          Index = 19
          Version = 1
        end
        object cxDBVerticalGrid1CategoryRow6: TcxCategoryRow
          Properties.HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle26
          ID = 20
          ParentID = -1
          Index = 20
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow14: TcxDBEditorRow
          Properties.Caption = 'Saldos Cta.Cte Venta'
          Properties.DataBinding.FieldName = 'SALDO_CC_VTA'
          Styles.Content = cxStyle21
          ID = 21
          ParentID = -1
          Index = 21
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow15: TcxDBEditorRow
          Properties.Caption = 'Saldos Cta.Cte Compra'
          Properties.DataBinding.FieldName = 'SALDO_CC_COMPRA'
          Styles.Content = cxStyle21
          ID = 22
          ParentID = -1
          Index = 22
          Version = 1
        end
        object cxDBVerticalGrid1CategoryRow7: TcxCategoryRow
          Properties.HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle26
          ID = 23
          ParentID = -1
          Index = 23
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow16: TcxDBEditorRow
          Properties.Caption = 'Vales - Adelantos '
          Properties.DataBinding.FieldName = 'TOTAL_PERSONAL'
          Styles.Content = cxStyle21
          ID = 24
          ParentID = -1
          Index = 24
          Version = 1
        end
        object cxDBVerticalGrid1CategoryRow8: TcxCategoryRow
          Properties.HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle26
          ID = 25
          ParentID = -1
          Index = 25
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow17: TcxDBEditorRow
          Properties.Caption = 'Cobranza'
          Properties.DataBinding.FieldName = 'TOTAL_COBRANZAS'
          ID = 26
          ParentID = -1
          Index = 26
          Version = 1
        end
        object cxDBVerticalGrid1CategoryRow9: TcxCategoryRow
          Properties.HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle26
          ID = 27
          ParentID = -1
          Index = 27
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow18: TcxDBEditorRow
          Properties.Caption = 'Efectivo'
          Properties.DataBinding.FieldName = 'TOTAL_EFECTIVO'
          ID = 28
          ParentID = -1
          Index = 28
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow19: TcxDBEditorRow
          Properties.Caption = 'Cheques de 3'#186
          Properties.DataBinding.FieldName = 'TOTAL_CHEQUES3'
          ID = 29
          ParentID = -1
          Index = 29
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow21: TcxDBEditorRow
          Properties.Caption = 'Saldo Banco'
          Properties.DataBinding.FieldName = 'SALDO_BANCO'
          ID = 30
          ParentID = -1
          Index = 30
          Version = 1
        end
        object cxDBVerticalGrid1CategoryRow10: TcxCategoryRow
          Properties.HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle26
          ID = 31
          ParentID = -1
          Index = 31
          Version = 1
        end
        object cxDBVerticalGrid1DBEditorRow20: TcxDBEditorRow
          Properties.Caption = 'Remitos'
          Properties.DataBinding.FieldName = 'TOTAL_RTOS'
          ID = 32
          ParentID = -1
          Index = 32
          Version = 1
        end
      end
    end
    object pag2: TTabSheet
      Caption = 'Informe Mensual'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1085
        Height = 41
        Align = alTop
        TabOrder = 0
        DesignSize = (
          1085
          41)
        object JvGradient2: TJvGradient
          Left = 1
          Top = 1
          Width = 1083
          Height = 39
          Style = grVertical
          StartColor = clGradientInactiveCaption
          EndColor = clWhite
          ExplicitTop = 0
          ExplicitWidth = 1018
          ExplicitHeight = 48
        end
        object Label2: TLabel
          Left = 15
          Top = 12
          Width = 50
          Height = 19
          Caption = 'Desde'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 231
          Top = 12
          Width = 47
          Height = 19
          Caption = 'Hasta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btGraficarDiario: TButton
          Left = 897
          Top = 8
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Graficar'
          TabOrder = 1
        end
        object Desde: TJvDateEdit
          Left = 72
          Top = 8
          Width = 153
          Height = 27
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ShowNullDate = False
          TabOrder = 0
        end
        object Hasta: TJvDateEdit
          Left = 284
          Top = 8
          Width = 149
          Height = 27
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ShowNullDate = False
          TabOrder = 2
        end
        object UpDown1: TUpDown
          Left = 443
          Top = 8
          Width = 22
          Height = 25
          Min = -32768
          Max = 32767
          TabOrder = 3
          OnClick = UpDown1Click
        end
        object BitBtn2: TBitBtn
          Left = 813
          Top = 8
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
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
          TabOrder = 4
          OnClick = BitBtn1Click
        end
        object BitBtn18: TBitBtn
          Left = 719
          Top = 8
          Width = 88
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'a Excel'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
            078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
            BE078DBEFF00FFFF00FFB88989B88989B88989B88989B88989B88989B8898965
            CDF965CDF865CDF965CDF866CEF939ADD8078DBEFF00FFFF00FFB88989FEFDFB
            FEFDFBFEFDFBFEFDFBFEFDFB4D87430C85180C85180C851851BDB66ED4F93EB1
            D984D7EB078DBEFF00FFB88989FEF9F4FEF9F4FEF9F4FEF9F4FEF9F4B8898967
            CED60C85181398250C85184BB79A42B4D4AEF1F9078DBEFF00FFB88989FEF6ED
            FEF6EDFEF6EDFEF6EDFEF6EDB8898983E4FC84E4FC0C851826B73F0C851836A8
            A1B3F4F9078DBEFF00FFB88989FFF2E7FFF2E7FFF2E7FAE8DEFAE8DEB889898D
            EBFD8DEBFD5DC0A70C851837C4580C8518ACF0EB6DCAE0078DBEB88989FFEFE0
            FFEFE0FFEFE0D09F9ED0A09EC59393ACE4DA9FDBCA82AB810C85184EDB780C85
            1898BA99A3BFAC078DBEB88989FFEBD9FFEBD9F3D7C9D5ABA8D1C8C2CD999907
            87800C85180C851847D06E59E38842C6670C85180C8518078DBEB88989FFE8D2
            FFE8D2F3D4C4D9AEACCD99999AF6FE9BF5FE63C5A40C85185DE88E63EE984CD0
            750C8518F0F1E7B88989B88989B88989B88989B88989CD9999A1FAFEA1FBFEA0
            FAFEA1FBFE737E570C851846CB6E0C8518EFEDDFFEF6EDB88989FF00FF078DBE
            FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBEB8898984B47B0C8518EDE8
            D7FAE8DEFAE8DEB88989FF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
            00FFFF00FFB88989FFEFE0FFEFE0FFEFE0D09F9ED0A09EC59393FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989FFEBD9FFEBD9F3D7
            C9D5ABA8D1C8C2CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFB88989FFE8D2FFE8D2F3D4C4D9AEACCD9999FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989B88989B88989B889
            89CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 5
          OnClick = BitBtn18Click
        end
      end
      object pnPieDiaria: TPanel
        Left = 0
        Top = 648
        Width = 1085
        Height = 35
        Align = alBottom
        TabOrder = 1
        object ToolBar2: TToolBar
          Left = 1
          Top = 1
          Width = 1083
          Height = 29
          ButtonHeight = 27
          Caption = 'ToolBar1'
          DrawingStyle = dsGradient
          GradientEndColor = clGradientActiveCaption
          GradientStartColor = clWhite
          TabOrder = 0
          object ToolButton2: TToolButton
            Left = 0
            Top = 0
            Width = 697
            Caption = 'ToolButton1'
            Style = tbsSeparator
          end
          object btSalir: TBitBtn
            Left = 697
            Top = 0
            Width = 82
            Height = 27
            Caption = 'Salir'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FF000288010893010B99010C99010893000389FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000186010D9D021CAF021FB402
              1FB5021FB5021FB2021CB0010F9F000287FF00FFFF00FFFF00FFFF00FFFF00FF
              00038A0118B2021FB7021EB1021DB1021DB1021DB1021DB1021EB2021FB40219
              AC00048EFF00FFFF00FFFF00FF0001830118BB0220CC011CBF0015B4011AB002
              1DB1021DB1011CB00015AD011BB0021FB4021AAC000287FF00FFFF00FF010CA7
              0121E0011CD30726CC4966D70B28BC0018B00019AF0622B44A66CE0D2BB7011B
              B0021FB5010F9FFF00FF000187011CDC0120ED0017DC3655E2FFFFFFA4B4ED05
              20BB0119B28B9EE1FFFFFF4E6ACF0014AC021EB2021CB000038900069A0120F8
              011FF6001DE9031FE1738BEEFFFFFFA0B1ED93A5E7FFFFFF91A4E20823B4011B
              B0021DB1021FB4010895020CAA0A2EFE0323FB011FF6001CEB0018E1788FF0FF
              FFFFFFFFFF96A7EA021BB50019AF021DB1021DB10220B5010C99040EAC294DFE
              0D30FB011FFA001CF7011CEE8EA1F4FFFFFFFFFFFFA6B6EE0520C20018B6021D
              B1021DB10220B5010B980208A04162FB2F51FC001EFA0725FA8AA0FEFFFFFF8E
              A3F67991F2FFFFFFA3B4EE0C29C6011BB8021DB4021FB2000793000189314FEF
              7690FF0F2DFA3354FBFFFFFF91A5FE021EF30017E7738BF3FFFFFF4765E00016
              C2021FBD021CB2000288FF00FF0C1BBC819AFF728BFE1134FA3456FB0526FA00
              1CFA001CF40220ED3353ED0625DA011DD00220CB010DA1FF00FFFF00FF000189
              2943E6A5B7FF849AFC2341FB0323FA011FFA011FFA001EF7011BEE021FE50121
              E20118BF000184FF00FFFF00FFFF00FF01038F2A45E693A9FFABBBFF758FFE49
              69FC3658FB3153FC2346FC092CF70118CB00038BFF00FFFF00FFFF00FFFF00FF
              FF00FF0001890F1DBF3E5BF36B87FE728CFF5E7BFE395BFB1231EB010FB50001
              84FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000189030AA306
              11B2050FB10107A0000188FF00FFFF00FFFF00FFFF00FFFF00FF}
            TabOrder = 1
            OnClick = btSalirVentasClick
          end
          object btBuscarDiaria: TBitBtn
            Left = 779
            Top = 0
            Width = 81
            Height = 27
            Caption = 'Buscar'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FF4A667C
              BE9596FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF6B9CC31E89E84B7AA3C89693FF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4BB4FE51B5FF
              2089E94B7AA2C69592FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FF51B7FE51B3FF1D87E64E7AA0CA9792FF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              51B7FE4EB2FF1F89E64E7BA2B99497FF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF52B8FE4BB1FF2787D95F6A76FF
              00FFB0857FC09F94C09F96BC988EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FF55BDFFB5D6EDBF9D92BB9B8CE7DAC2FFFFE3FFFFE5FDFADAD8C3
              B3B58D85FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCEA795FD
              EEBEFFFFD8FFFFDAFFFFDBFFFFE6FFFFFBEADDDCAE837FFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFC1A091FBDCA8FEF7D0FFFFDBFFFFE3FFFFF8FFFF
              FDFFFFFDC6A99CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC1A091FEE3ACF1
              C491FCF2CAFFFFDDFFFFE4FFFFF7FFFFF7FFFFE9EEE5CBB9948CFF00FFFF00FF
              FF00FFFF00FFFF00FFC2A191FFE6AEEEB581F7DCAEFEFDD8FFFFDFFFFFE3FFFF
              E4FFFFE0F3ECD2BB968EFF00FFFF00FFFF00FFFF00FFFF00FFBC978CFBE7B7F4
              C791F2C994F8E5B9FEFCD8FFFFDDFFFFDCFFFFE0E2D2BAB68E86FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFD9C3A9FFFEE5F7DCB8F2C994F5D4A5FAE8BDFDF4
              C9FDFBD6B69089FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB58D85E8
              DEDDFFFEF2F9D8A3F4C48CF9D49FFDEAB8D0B49FB89086FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFAD827FC9AA9EEFE0B7EFDFB2E7CEACB890
              86B89086FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFBA968ABB988CB79188FF00FFFF00FFFF00FFFF00FF}
            TabOrder = 0
            OnClick = btBuscarDiariaClick
          end
        end
      end
      object cxDBVerticalGrid2: TcxDBVerticalGrid
        Left = 0
        Top = 41
        Width = 1085
        Height = 607
        Align = alClient
        LayoutStyle = lsMultiRecordView
        OptionsView.RowHeaderWidth = 192
        OptionsView.ValueWidth = 84
        OptionsData.Editing = False
        OptionsData.Appending = False
        OptionsData.Deleting = False
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        Styles.Content = cxStyle18
        Styles.Header = cxStyle22
        TabOrder = 2
        DataController.DataSource = DSVentaDiaria
        Version = 1
        object cxDBMultiEditorRow1: TcxDBMultiEditorRow
          Options.ShowExpandButton = False
          Properties.Editors = <
            item
              Caption = 'Sucursal'
              HeaderAlignmentHorz = taCenter
              DataBinding.FieldName = 'NOMBRESUCURSAL'
            end>
          ID = 0
          ParentID = -1
          Index = 0
          Version = 1
        end
        object cxDBMultiEditorRow2: TcxDBMultiEditorRow
          Properties.Editors = <
            item
              Caption = 'Dia'
              HeaderAlignmentHorz = taCenter
              DataBinding.FieldName = 'DIA'
              Options.Editing = False
            end>
          Styles.Content = cxStyle14
          ID = 1
          ParentID = -1
          Index = 1
          Version = 1
        end
        object cxCategoryRow1: TcxCategoryRow
          Properties.Caption = 'Ventas'
          Properties.HeaderAlignmentHorz = taCenter
          ID = 2
          ParentID = -1
          Index = 2
          Version = 1
        end
        object cxDBEditorRow1: TcxDBEditorRow
          Properties.Caption = 'Ventas en Cta. Cte.'
          Properties.DataBinding.FieldName = 'TOTAL_VTAS_CC'
          Styles.Header = cxStyle22
          Styles.Content = cxStyle18
          ID = 3
          ParentID = -1
          Index = 3
          Version = 1
        end
        object cxDBEditorRow2: TcxDBEditorRow
          Properties.Caption = 'Ventas de Contado'
          Properties.DataBinding.FieldName = 'TOTAL_VTAS_CTDO'
          ID = 4
          ParentID = -1
          Index = 4
          Version = 1
        end
        object cxDBEditorRow3: TcxDBEditorRow
          Properties.Caption = 'Notas de Cre.Contado'
          Properties.DataBinding.FieldName = 'TOTAL_VTAS_CTDO_NCREDITO'
          ID = 5
          ParentID = -1
          Index = 5
          Version = 1
        end
        object cxDBEditorRow4: TcxDBEditorRow
          Properties.Caption = 'Notas de Cred.'
          Properties.DataBinding.FieldName = 'TOTAL_VTAS_NCREDITO'
          ID = 6
          ParentID = -1
          Index = 6
          Version = 1
        end
        object cxDBEditorRow5: TcxDBEditorRow
          Properties.Caption = 'Notas Debitos'
          Properties.DataBinding.FieldName = 'TOTAL_VTAS_NDEBITO'
          ID = 7
          ParentID = -1
          Index = 7
          Version = 1
        end
        object cxDBEditorRow6: TcxDBEditorRow
          Properties.Caption = 'Total de Ventas'
          Properties.DataBinding.FieldName = 'TOTAL_VTAS'
          Styles.Header = cxStyle25
          Styles.Content = cxStyle24
          ID = 8
          ParentID = -1
          Index = 8
          Version = 1
        end
        object cxCategoryRow2: TcxCategoryRow
          Properties.Caption = 'Compras'
          Properties.HeaderAlignmentHorz = taCenter
          ID = 9
          ParentID = -1
          Index = 9
          Version = 1
        end
        object cxDBEditorRow7: TcxDBEditorRow
          Properties.Caption = 'Total Comp.Ctdo'
          Properties.DataBinding.FieldName = 'TOTAL_COMPRAS_CTDO'
          ID = 10
          ParentID = -1
          Index = 10
          Version = 1
        end
        object cxDBEditorRow8: TcxDBEditorRow
          Properties.Caption = 'Total Comp.Cta.Cte'
          Properties.DataBinding.FieldName = 'TOTAL_COMPRAS'
          ID = 11
          ParentID = -1
          Index = 11
          Version = 1
        end
        object cxDBEditorRow9: TcxDBEditorRow
          Properties.Caption = 'Notas de Credito'
          Properties.DataBinding.FieldName = 'TOTAL_NC_COMPRAS'
          ID = 12
          ParentID = -1
          Index = 12
          Version = 1
        end
        object cxDBEditorRow10: TcxDBEditorRow
          Properties.Caption = 'Total de Compras'
          Properties.DataBinding.FieldName = 'TOTAL_GRAL_COMPRAS'
          Styles.Header = cxStyle25
          Styles.Content = cxStyle21
          ID = 13
          ParentID = -1
          Index = 13
          Version = 1
        end
        object cxCategoryRow3: TcxCategoryRow
          Properties.Caption = 'Gastos'
          ID = 14
          ParentID = -1
          Index = 14
          Version = 1
        end
        object cxDBEditorRow11: TcxDBEditorRow
          Properties.Caption = 'Egresos'
          Properties.DataBinding.FieldName = 'TOTAL_EGRESOS'
          Styles.Header = cxStyle22
          Styles.Content = cxStyle21
          ID = 15
          ParentID = -1
          Index = 15
          Version = 1
        end
        object cxCategoryRow4: TcxCategoryRow
          Properties.Caption = 'Ingresos'
          ID = 16
          ParentID = -1
          Index = 16
          Version = 1
        end
        object cxDBEditorRow12: TcxDBEditorRow
          Properties.Caption = 'Ingresos'
          Properties.DataBinding.FieldName = 'TOTAL_INGRESOS'
          Styles.Content = cxStyle21
          ID = 17
          ParentID = -1
          Index = 17
          Version = 1
        end
        object cxCategoryRow5: TcxCategoryRow
          Properties.Caption = 'Pagos a Proveedores'
          ID = 18
          ParentID = -1
          Index = 18
          Version = 1
        end
        object cxDBEditorRow13: TcxDBEditorRow
          Properties.Caption = 'Ordenes de Pago'
          Properties.DataBinding.FieldName = 'TOTAL_PAGOS'
          Styles.Content = cxStyle21
          ID = 19
          ParentID = -1
          Index = 19
          Version = 1
        end
        object cxCategoryRow6: TcxCategoryRow
          Properties.Caption = 'Saldos de Cta Cte.'
          ID = 20
          ParentID = -1
          Index = 20
          Version = 1
        end
        object cxDBEditorRow14: TcxDBEditorRow
          Properties.Caption = 'Saldos Cta.Cte Venta'
          Properties.DataBinding.FieldName = 'SALDO_CC_VTA'
          Styles.Content = cxStyle21
          ID = 21
          ParentID = -1
          Index = 21
          Version = 1
        end
        object cxDBEditorRow15: TcxDBEditorRow
          Properties.Caption = 'Saldos Cta.Cte Compra'
          Properties.DataBinding.FieldName = 'SALDO_CC_COMPRA'
          Styles.Content = cxStyle21
          ID = 22
          ParentID = -1
          Index = 22
          Version = 1
        end
        object cxCategoryRow7: TcxCategoryRow
          Properties.Caption = 'Vales / Adelantos'
          ID = 23
          ParentID = -1
          Index = 23
          Version = 1
        end
        object cxDBEditorRow16: TcxDBEditorRow
          Properties.Caption = 'Vales - Adelantos '
          Properties.DataBinding.FieldName = 'TOTAL_PERSONAL'
          Styles.Content = cxStyle21
          ID = 24
          ParentID = -1
          Index = 24
          Version = 1
        end
        object cxDBVerticalGrid2CategoryRow1: TcxCategoryRow
          Properties.Caption = 'Valores Disponibles'
          ID = 25
          ParentID = -1
          Index = 25
          Version = 1
        end
        object cxDBVerticalGrid2DBEditorRow1: TcxDBEditorRow
          Properties.Caption = 'Efectivo'
          Properties.DataBinding.FieldName = 'TOTAL_EFECTIVO'
          ID = 26
          ParentID = -1
          Index = 26
          Version = 1
        end
        object cxDBVerticalGrid2DBEditorRow2: TcxDBEditorRow
          Properties.Caption = 'Cheques de 3'#186
          Properties.DataBinding.FieldName = 'TOTAL_CHEQUES3'
          ID = 27
          ParentID = -1
          Index = 27
          Version = 1
        end
        object cxDBVerticalGrid2CategoryRow2: TcxCategoryRow
          Properties.Caption = 'Remitos'
          ID = 28
          ParentID = -1
          Index = 28
          Version = 1
        end
        object cxDBVerticalGrid2DBEditorRow3: TcxDBEditorRow
          Properties.Caption = 'Remitos a Fac'
          Properties.DataBinding.FieldName = 'TOTAL_RTOS'
          ID = 29
          ParentID = -1
          Index = 29
          Version = 1
        end
      end
    end
    object pag3: TTabSheet
      Caption = 'Infrome Anual Filtrado'
      ImageIndex = 2
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1085
        Height = 41
        Align = alTop
        TabOrder = 0
        DesignSize = (
          1085
          41)
        object JvGradient3: TJvGradient
          Left = 1
          Top = 1
          Width = 1083
          Height = 39
          Style = grVertical
          StartColor = clGradientInactiveCaption
          EndColor = clWhite
          ExplicitTop = 0
          ExplicitWidth = 1018
          ExplicitHeight = 48
        end
        object Label4: TLabel
          Left = 10
          Top = 11
          Width = 76
          Height = 13
          Caption = 'Grupo de Filtros'
        end
        object BitBtn3: TBitBtn
          Left = 892
          Top = 6
          Width = 75
          Height = 28
          Anchors = [akTop, akRight]
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
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object cbGrupo: TJvComboBox
          Left = 92
          Top = 8
          Width = 101
          Height = 21
          Hint = 'Agrupamiento por tipo'
          Style = csDropDownList
          DropDownCount = 10
          TabOrder = 1
          Text = 'Grupo 1'
          Items.Strings = (
            'Grupo 1'
            'Grupo 2'
            'Grupo 3'
            'Grupo 4'
            'Grupo 5'
            'Grupo 6'
            'Grupo 7'
            'Grupo 8'
            'Grupo 9')
          ItemIndex = 0
        end
        object btExcelFiltrada: TBitBtn
          Left = 789
          Top = 6
          Width = 96
          Height = 28
          Anchors = [akTop, akRight]
          Caption = 'a Excel'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
            078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
            BE078DBEFF00FFFF00FFB88989B88989B88989B88989B88989B88989B8898965
            CDF965CDF865CDF965CDF866CEF939ADD8078DBEFF00FFFF00FFB88989FEFDFB
            FEFDFBFEFDFBFEFDFBFEFDFB4D87430C85180C85180C851851BDB66ED4F93EB1
            D984D7EB078DBEFF00FFB88989FEF9F4FEF9F4FEF9F4FEF9F4FEF9F4B8898967
            CED60C85181398250C85184BB79A42B4D4AEF1F9078DBEFF00FFB88989FEF6ED
            FEF6EDFEF6EDFEF6EDFEF6EDB8898983E4FC84E4FC0C851826B73F0C851836A8
            A1B3F4F9078DBEFF00FFB88989FFF2E7FFF2E7FFF2E7FAE8DEFAE8DEB889898D
            EBFD8DEBFD5DC0A70C851837C4580C8518ACF0EB6DCAE0078DBEB88989FFEFE0
            FFEFE0FFEFE0D09F9ED0A09EC59393ACE4DA9FDBCA82AB810C85184EDB780C85
            1898BA99A3BFAC078DBEB88989FFEBD9FFEBD9F3D7C9D5ABA8D1C8C2CD999907
            87800C85180C851847D06E59E38842C6670C85180C8518078DBEB88989FFE8D2
            FFE8D2F3D4C4D9AEACCD99999AF6FE9BF5FE63C5A40C85185DE88E63EE984CD0
            750C8518F0F1E7B88989B88989B88989B88989B88989CD9999A1FAFEA1FBFEA0
            FAFEA1FBFE737E570C851846CB6E0C8518EFEDDFFEF6EDB88989FF00FF078DBE
            FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBEB8898984B47B0C8518EDE8
            D7FAE8DEFAE8DEB88989FF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
            00FFFF00FFB88989FFEFE0FFEFE0FFEFE0D09F9ED0A09EC59393FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989FFEBD9FFEBD9F3D7
            C9D5ABA8D1C8C2CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFB88989FFE8D2FFE8D2F3D4C4D9AEACCD9999FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989B88989B88989B889
            89CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 2
          OnClick = btExcelFiltradaClick
        end
      end
      object pnPieFiltrada: TPanel
        Left = 0
        Top = 647
        Width = 1085
        Height = 36
        Align = alBottom
        TabOrder = 1
        object ToolBar3: TToolBar
          Left = 1
          Top = 1
          Width = 1083
          Height = 29
          ButtonHeight = 27
          Caption = 'ToolBar1'
          DrawingStyle = dsGradient
          GradientEndColor = clGradientActiveCaption
          GradientStartColor = clWhite
          TabOrder = 0
          object ToolButton3: TToolButton
            Left = 0
            Top = 0
            Width = 585
            Caption = 'ToolButton1'
            Style = tbsSeparator
          end
          object BitBtn4: TBitBtn
            Left = 585
            Top = 0
            Width = 75
            Height = 27
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
            TabOrder = 1
            Visible = False
          end
          object BitBtn5: TBitBtn
            Left = 660
            Top = 0
            Width = 82
            Height = 27
            Caption = 'Salir'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FF000288010893010B99010C99010893000389FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000186010D9D021CAF021FB402
              1FB5021FB5021FB2021CB0010F9F000287FF00FFFF00FFFF00FFFF00FFFF00FF
              00038A0118B2021FB7021EB1021DB1021DB1021DB1021DB1021EB2021FB40219
              AC00048EFF00FFFF00FFFF00FF0001830118BB0220CC011CBF0015B4011AB002
              1DB1021DB1011CB00015AD011BB0021FB4021AAC000287FF00FFFF00FF010CA7
              0121E0011CD30726CC4966D70B28BC0018B00019AF0622B44A66CE0D2BB7011B
              B0021FB5010F9FFF00FF000187011CDC0120ED0017DC3655E2FFFFFFA4B4ED05
              20BB0119B28B9EE1FFFFFF4E6ACF0014AC021EB2021CB000038900069A0120F8
              011FF6001DE9031FE1738BEEFFFFFFA0B1ED93A5E7FFFFFF91A4E20823B4011B
              B0021DB1021FB4010895020CAA0A2EFE0323FB011FF6001CEB0018E1788FF0FF
              FFFFFFFFFF96A7EA021BB50019AF021DB1021DB10220B5010C99040EAC294DFE
              0D30FB011FFA001CF7011CEE8EA1F4FFFFFFFFFFFFA6B6EE0520C20018B6021D
              B1021DB10220B5010B980208A04162FB2F51FC001EFA0725FA8AA0FEFFFFFF8E
              A3F67991F2FFFFFFA3B4EE0C29C6011BB8021DB4021FB2000793000189314FEF
              7690FF0F2DFA3354FBFFFFFF91A5FE021EF30017E7738BF3FFFFFF4765E00016
              C2021FBD021CB2000288FF00FF0C1BBC819AFF728BFE1134FA3456FB0526FA00
              1CFA001CF40220ED3353ED0625DA011DD00220CB010DA1FF00FFFF00FF000189
              2943E6A5B7FF849AFC2341FB0323FA011FFA011FFA001EF7011BEE021FE50121
              E20118BF000184FF00FFFF00FFFF00FF01038F2A45E693A9FFABBBFF758FFE49
              69FC3658FB3153FC2346FC092CF70118CB00038BFF00FFFF00FFFF00FFFF00FF
              FF00FF0001890F1DBF3E5BF36B87FE728CFF5E7BFE395BFB1231EB010FB50001
              84FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000189030AA306
              11B2050FB10107A0000188FF00FFFF00FFFF00FFFF00FFFF00FF}
            TabOrder = 2
            OnClick = btSalirVentasClick
          end
          object BitBtn6: TBitBtn
            Left = 742
            Top = 0
            Width = 81
            Height = 27
            Caption = 'Buscar'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FF4A667C
              BE9596FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF6B9CC31E89E84B7AA3C89693FF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4BB4FE51B5FF
              2089E94B7AA2C69592FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FF51B7FE51B3FF1D87E64E7AA0CA9792FF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              51B7FE4EB2FF1F89E64E7BA2B99497FF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF52B8FE4BB1FF2787D95F6A76FF
              00FFB0857FC09F94C09F96BC988EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FF55BDFFB5D6EDBF9D92BB9B8CE7DAC2FFFFE3FFFFE5FDFADAD8C3
              B3B58D85FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCEA795FD
              EEBEFFFFD8FFFFDAFFFFDBFFFFE6FFFFFBEADDDCAE837FFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFC1A091FBDCA8FEF7D0FFFFDBFFFFE3FFFFF8FFFF
              FDFFFFFDC6A99CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC1A091FEE3ACF1
              C491FCF2CAFFFFDDFFFFE4FFFFF7FFFFF7FFFFE9EEE5CBB9948CFF00FFFF00FF
              FF00FFFF00FFFF00FFC2A191FFE6AEEEB581F7DCAEFEFDD8FFFFDFFFFFE3FFFF
              E4FFFFE0F3ECD2BB968EFF00FFFF00FFFF00FFFF00FFFF00FFBC978CFBE7B7F4
              C791F2C994F8E5B9FEFCD8FFFFDDFFFFDCFFFFE0E2D2BAB68E86FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFD9C3A9FFFEE5F7DCB8F2C994F5D4A5FAE8BDFDF4
              C9FDFBD6B69089FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB58D85E8
              DEDDFFFEF2F9D8A3F4C48CF9D49FFDEAB8D0B49FB89086FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFAD827FC9AA9EEFE0B7EFDFB2E7CEACB890
              86B89086FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFBA968ABB988CB79188FF00FFFF00FFFF00FFFF00FF}
            TabOrder = 0
            OnClick = BitBtn6Click
          end
        end
      end
      object cxDBVerticalGrid3: TcxDBVerticalGrid
        Left = 0
        Top = 41
        Width = 1085
        Height = 606
        Align = alClient
        LayoutStyle = lsMultiRecordView
        OptionsView.RowHeaderWidth = 192
        OptionsView.ValueWidth = 84
        OptionsData.Editing = False
        OptionsData.Appending = False
        OptionsData.Deleting = False
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        Styles.Content = cxStyle18
        Styles.Header = cxStyle22
        TabOrder = 2
        DataController.DataSource = DSFiltrada
        Version = 1
        object cxDBMultiEditorRow3: TcxDBMultiEditorRow
          Options.ShowExpandButton = False
          Properties.Editors = <
            item
              Caption = 'Sucursal'
              HeaderAlignmentHorz = taCenter
              DataBinding.FieldName = 'NOMBRESUCURSAL'
            end>
          ID = 0
          ParentID = -1
          Index = 0
          Version = 1
        end
        object cxDBMultiEditorRow4: TcxDBMultiEditorRow
          Properties.Editors = <
            item
              Caption = 'Mes'
              HeaderAlignmentHorz = taCenter
              DataBinding.FieldName = 'MES'
              Options.Editing = False
            end>
          Styles.Content = cxStyle14
          ID = 1
          ParentID = -1
          Index = 1
          Version = 1
        end
        object cxCategoryRow8: TcxCategoryRow
          Properties.Caption = 'Ventas'
          Properties.HeaderAlignmentHorz = taCenter
          ID = 2
          ParentID = -1
          Index = 2
          Version = 1
        end
        object cxDBEditorRow17: TcxDBEditorRow
          Properties.Caption = 'Ventas en Cta. Cte.'
          Properties.DataBinding.FieldName = 'TOTAL_VTAS_CC'
          Styles.Header = cxStyle22
          Styles.Content = cxStyle18
          ID = 3
          ParentID = -1
          Index = 3
          Version = 1
        end
        object cxDBEditorRow18: TcxDBEditorRow
          Properties.Caption = 'Ventas de Contado'
          Properties.DataBinding.FieldName = 'TOTAL_VTAS_CTDO'
          ID = 4
          ParentID = -1
          Index = 4
          Version = 1
        end
        object cxDBEditorRow19: TcxDBEditorRow
          Properties.Caption = 'Notas de Cre.Contado'
          Properties.DataBinding.FieldName = 'TOTAL_VTAS_CTDO_NCREDITO'
          ID = 5
          ParentID = -1
          Index = 5
          Version = 1
        end
        object cxDBEditorRow20: TcxDBEditorRow
          Properties.Caption = 'Notas de Cred.'
          Properties.DataBinding.FieldName = 'TOTAL_VTAS_NCREDITO'
          ID = 6
          ParentID = -1
          Index = 6
          Version = 1
        end
        object cxDBEditorRow21: TcxDBEditorRow
          Properties.Caption = 'Notas Debitos'
          Properties.DataBinding.FieldName = 'TOTAL_VTAS_NDEBITO'
          ID = 7
          ParentID = -1
          Index = 7
          Version = 1
        end
        object cxDBEditorRow22: TcxDBEditorRow
          Properties.Caption = 'Total de Ventas'
          Properties.DataBinding.FieldName = 'TOTAL_VTAS'
          Styles.Header = cxStyle25
          Styles.Content = cxStyle24
          ID = 8
          ParentID = -1
          Index = 8
          Version = 1
        end
        object cxCategoryRow9: TcxCategoryRow
          Properties.Caption = 'Compras'
          Properties.HeaderAlignmentHorz = taCenter
          ID = 9
          ParentID = -1
          Index = 9
          Version = 1
        end
        object cxDBEditorRow23: TcxDBEditorRow
          Properties.Caption = 'Total Comp.Ctdo'
          Properties.DataBinding.FieldName = 'TOTAL_COMPRAS_CTDO'
          ID = 10
          ParentID = -1
          Index = 10
          Version = 1
        end
        object cxDBEditorRow24: TcxDBEditorRow
          Properties.Caption = 'Total Comp.Cta.Cte'
          Properties.DataBinding.FieldName = 'TOTAL_COMPRAS'
          ID = 11
          ParentID = -1
          Index = 11
          Version = 1
        end
        object cxDBEditorRow25: TcxDBEditorRow
          Properties.Caption = 'Notas de Credito'
          Properties.DataBinding.FieldName = 'TOTAL_NC_COMPRAS'
          ID = 12
          ParentID = -1
          Index = 12
          Version = 1
        end
        object cxDBEditorRow26: TcxDBEditorRow
          Properties.Caption = 'Total de Compras'
          Properties.DataBinding.FieldName = 'TOTAL_GRAL_COMPRAS'
          Styles.Header = cxStyle25
          Styles.Content = cxStyle21
          ID = 13
          ParentID = -1
          Index = 13
          Version = 1
        end
        object cxCategoryRow10: TcxCategoryRow
          Properties.Caption = 'Gastos'
          ID = 14
          ParentID = -1
          Index = 14
          Version = 1
        end
        object cxDBEditorRow27: TcxDBEditorRow
          Properties.Caption = 'Egresos'
          Properties.DataBinding.FieldName = 'TOTAL_EGRESOS'
          Styles.Header = cxStyle22
          Styles.Content = cxStyle21
          ID = 15
          ParentID = -1
          Index = 15
          Version = 1
        end
        object cxCategoryRow11: TcxCategoryRow
          Properties.Caption = 'Ingresos'
          ID = 16
          ParentID = -1
          Index = 16
          Version = 1
        end
        object cxDBEditorRow28: TcxDBEditorRow
          Properties.Caption = 'Ingresos'
          Properties.DataBinding.FieldName = 'TOTAL_INGRESOS'
          Styles.Content = cxStyle21
          ID = 17
          ParentID = -1
          Index = 17
          Version = 1
        end
        object cxCategoryRow12: TcxCategoryRow
          Properties.Caption = 'Pagos a Proveedores'
          ID = 18
          ParentID = -1
          Index = 18
          Version = 1
        end
        object cxDBEditorRow29: TcxDBEditorRow
          Properties.Caption = 'Ordenes de Pago'
          Properties.DataBinding.FieldName = 'TOTAL_PAGOS'
          Styles.Content = cxStyle21
          ID = 19
          ParentID = -1
          Index = 19
          Version = 1
        end
        object cxCategoryRow13: TcxCategoryRow
          Properties.Caption = 'Saldos de Cta Cte.'
          ID = 20
          ParentID = -1
          Index = 20
          Version = 1
        end
        object cxDBEditorRow30: TcxDBEditorRow
          Properties.Caption = 'Saldos Cta.Cte Venta'
          Properties.DataBinding.FieldName = 'SALDO_CC_VTA'
          Styles.Content = cxStyle21
          ID = 21
          ParentID = -1
          Index = 21
          Version = 1
        end
        object cxDBEditorRow31: TcxDBEditorRow
          Properties.Caption = 'Saldos Cta.Cte Compra'
          Properties.DataBinding.FieldName = 'SALDO_CC_COMPRA'
          Styles.Content = cxStyle21
          ID = 22
          ParentID = -1
          Index = 22
          Version = 1
        end
        object cxCategoryRow14: TcxCategoryRow
          Properties.Caption = 'Vales / Adelantos'
          ID = 23
          ParentID = -1
          Index = 23
          Version = 1
        end
        object cxDBEditorRow32: TcxDBEditorRow
          Properties.Caption = 'Vales - Adelantos '
          Properties.DataBinding.FieldName = 'TOTAL_PERSONAL'
          Styles.Content = cxStyle21
          ID = 24
          ParentID = -1
          Index = 24
          Version = 1
        end
      end
    end
    object pag4: TTabSheet
      Caption = 'Informe Cruzado'
      ImageIndex = 3
      object Label8: TLabel
        Left = 88
        Top = 16
        Width = 12
        Height = 13
        Caption = 'Tp'
      end
      object Label9: TLabel
        Left = 104
        Top = 16
        Width = 12
        Height = 13
        Caption = 'Tp'
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1085
        Height = 41
        Align = alTop
        TabOrder = 0
        DesignSize = (
          1085
          41)
        object JvGradient4: TJvGradient
          Left = 1
          Top = 1
          Width = 1083
          Height = 39
          Style = grVertical
          StartColor = clGradientInactiveCaption
          EndColor = clWhite
          ExplicitLeft = 0
          ExplicitTop = -4
          ExplicitWidth = 1018
        end
        object Label6: TLabel
          Left = 15
          Top = 12
          Width = 50
          Height = 19
          Caption = 'Desde'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 231
          Top = 12
          Width = 47
          Height = 19
          Caption = 'Hasta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Desde_Piv: TJvDateEdit
          Left = 72
          Top = 8
          Width = 153
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ShowNullDate = False
          TabOrder = 0
        end
        object Hasta_Piv: TJvDateEdit
          Left = 284
          Top = 8
          Width = 149
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ShowNullDate = False
          TabOrder = 1
        end
        object UpDown2: TUpDown
          Left = 441
          Top = 9
          Width = 22
          Height = 25
          Min = -32768
          Max = 32767
          TabOrder = 2
          OnClick = UpDown2Click
        end
        object BitBtn7: TBitBtn
          Left = 926
          Top = 8
          Width = 70
          Height = 25
          Anchors = [akTop, akRight]
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
          OnClick = BitBtn7Click
        end
        object btBuscarCruzado: TBitBtn
          Left = 753
          Top = 8
          Width = 70
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Buscar'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF4A667C
            BE9596FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF6B9CC31E89E84B7AA3C89693FF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4BB4FE51B5FF
            2089E94B7AA2C69592FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF51B7FE51B3FF1D87E64E7AA0CA9792FF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            51B7FE4EB2FF1F89E64E7BA2B99497FF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF52B8FE4BB1FF2787D95F6A76FF
            00FFB0857FC09F94C09F96BC988EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF55BDFFB5D6EDBF9D92BB9B8CE7DAC2FFFFE3FFFFE5FDFADAD8C3
            B3B58D85FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCEA795FD
            EEBEFFFFD8FFFFDAFFFFDBFFFFE6FFFFFBEADDDCAE837FFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFC1A091FBDCA8FEF7D0FFFFDBFFFFE3FFFFF8FFFF
            FDFFFFFDC6A99CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC1A091FEE3ACF1
            C491FCF2CAFFFFDDFFFFE4FFFFF7FFFFF7FFFFE9EEE5CBB9948CFF00FFFF00FF
            FF00FFFF00FFFF00FFC2A191FFE6AEEEB581F7DCAEFEFDD8FFFFDFFFFFE3FFFF
            E4FFFFE0F3ECD2BB968EFF00FFFF00FFFF00FFFF00FFFF00FFBC978CFBE7B7F4
            C791F2C994F8E5B9FEFCD8FFFFDDFFFFDCFFFFE0E2D2BAB68E86FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFD9C3A9FFFEE5F7DCB8F2C994F5D4A5FAE8BDFDF4
            C9FDFBD6B69089FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB58D85E8
            DEDDFFFEF2F9D8A3F4C48CF9D49FFDEAB8D0B49FB89086FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFAD827FC9AA9EEFE0B7EFDFB2E7CEACB890
            86B89086FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFBA968ABB988CB79188FF00FFFF00FFFF00FFFF00FF}
          TabOrder = 4
          OnClick = btBuscarCruzadoClick
        end
        object BitBtn9: TBitBtn
          Left = 830
          Top = 8
          Width = 70
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Excel'
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
          TabOrder = 5
          OnClick = BitBtn9Click
        end
      end
      object cxDBPivotGrid1: TcxDBPivotGrid
        Left = 0
        Top = 41
        Width = 1085
        Height = 642
        Align = alClient
        DataSource = DSInfCruzado
        Groups = <>
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Lilian'
        OptionsView.ColumnGrandTotalText = 'Total'
        OptionsView.GrandTotalsForSingleValues = True
        OptionsView.RowGrandTotalText = 'Total'
        OptionsView.TotalsForSingleValues = True
        PopupMenu = PopupMenu1
        TabOrder = 1
        object cxDBPivotGrid1Field1: TcxDBPivotGridField
          AreaIndex = 0
          DataBinding.FieldName = 'TIPOCPBTE'
          Visible = True
          UniqueName = 'Tp'
        end
        object cxDBPivotGrid1Field2: TcxDBPivotGridField
          AreaIndex = 1
          DataBinding.FieldName = 'CLASECPBTE'
          Visible = True
          UniqueName = 'Cl'
        end
        object cxDBPivotGrid1Field3: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 1
          DataBinding.FieldName = 'MUESTRACOMPROB'
          Visible = True
          Width = 200
          UniqueName = 'Nom.Comprob.'
        end
        object cxDBPivotGrid1Field4: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 0
          DataBinding.FieldName = 'MUESTRASUCURSAL'
          Visible = True
          Width = 200
          UniqueName = 'Nom.Sucursal'
        end
        object cxDBPivotGrid1Field5: TcxDBPivotGridField
          AreaIndex = 2
          DataBinding.FieldName = 'CODIGO'
          Visible = True
          UniqueName = 'Codigo'
        end
        object cxDBPivotGrid1Field6: TcxDBPivotGridField
          AreaIndex = 3
          DataBinding.FieldName = 'NOMBRE'
          Visible = True
          UniqueName = 'Nombre'
        end
        object cxDBPivotGrid1Field7: TcxDBPivotGridField
          AreaIndex = 5
          DataBinding.FieldName = 'TOTALREC'
          Visible = True
          UniqueName = 'Total Final'
        end
        object cxDBPivotGrid1Field8: TcxDBPivotGridField
          Area = faData
          AreaIndex = 0
          DataBinding.FieldName = 'TOTALNETOREC'
          Visible = True
          UniqueName = 'Neto.S/IVA'
        end
        object cxDBPivotGrid1Field9: TcxDBPivotGridField
          Area = faColumn
          AreaIndex = 0
          DataBinding.FieldName = 'NOMBREMES'
          Visible = True
          UniqueName = 'Mes'
        end
        object cxDBPivotGrid1Field10: TcxDBPivotGridField
          AreaIndex = 4
          DataBinding.FieldName = 'ANIO'
          Visible = True
          UniqueName = 'A'#241'o'
        end
      end
    end
    object pag5: TTabSheet
      Caption = 'Gastos Por Rubro'
      ImageIndex = 4
      object cxDBPivotGrid2: TcxDBPivotGrid
        Left = 0
        Top = 0
        Width = 1085
        Height = 646
        Align = alClient
        DataSource = DSSaldosGastos
        Groups = <>
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        OptionsView.ColumnGrandTotals = False
        OptionsView.ColumnGrandTotalText = 'Totales'
        OptionsView.FilterFields = False
        OptionsView.GrandTotalsForSingleValues = True
        OptionsView.RowGrandTotalText = 'Totales'
        PopupMenu = PopupMenu1
        TabOrder = 0
        object cxDBPivotGrid2NROCPBTE: TcxDBPivotGridField
          AreaIndex = 0
          DataBinding.FieldName = 'NROCPBTE'
          Visible = True
          UniqueName = 'Nro.Cpbte'
        end
        object cxDBPivotGrid2ID_EGRESO: TcxDBPivotGridField
          AreaIndex = 1
          DataBinding.FieldName = 'ID_EGRESO'
          Visible = True
          UniqueName = 'ID_EGRESO'
        end
        object cxDBPivotGrid2TIPOCPBTE: TcxDBPivotGridField
          AreaIndex = 2
          DataBinding.FieldName = 'TIPOCPBTE'
          Visible = True
          UniqueName = 'Tp'
        end
        object cxDBPivotGrid2CLASECPBTE: TcxDBPivotGridField
          AreaIndex = 3
          DataBinding.FieldName = 'CLASECPBTE'
          Visible = True
          UniqueName = 'Cl'
        end
        object cxDBPivotGrid2RUBROGASTO: TcxDBPivotGridField
          AreaIndex = 4
          DataBinding.FieldName = 'RUBROGASTO'
          Visible = True
          UniqueName = 'Rub'
        end
        object cxDBPivotGrid2CODIGOGASTO: TcxDBPivotGridField
          AreaIndex = 5
          DataBinding.FieldName = 'CODIGOGASTO'
          Visible = True
          UniqueName = 'Cod.Gast.'
        end
        object cxDBPivotGrid2DETALLE: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 2
          DataBinding.FieldName = 'DETALLE'
          TotalsVisibility = tvNone
          Visible = True
          Width = 300
          UniqueName = 'Detalle del Gsto.'
        end
        object cxDBPivotGrid2MUESTRARUBRO: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 0
          DataBinding.FieldName = 'MUESTRARUBRO'
          Visible = True
          Width = 200
          UniqueName = 'Detalle Rubro'
        end
        object cxDBPivotGrid2MUESTRAIDCOMPROBANTE: TcxDBPivotGridField
          AreaIndex = 6
          DataBinding.FieldName = 'MUESTRAIDCOMPROBANTE'
          Visible = True
          UniqueName = 'MUESTRAIDCOMPROBANTE'
        end
        object cxDBPivotGrid2MUESTRACTA: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 1
          DataBinding.FieldName = 'MUESTRACTA'
          Visible = True
          Width = 250
          UniqueName = 'Detalle Cta'
        end
        object cxDBPivotGrid2IMPORTE: TcxDBPivotGridField
          Area = faData
          AreaIndex = 0
          DataBinding.FieldName = 'IMPORTE'
          Visible = True
          UniqueName = 'Importe'
        end
        object cxDBPivotGrid2FECHAGASTO: TcxDBPivotGridField
          AreaIndex = 7
          DataBinding.FieldName = 'FECHAGASTO'
          Visible = True
          UniqueName = 'Fecha Gas.'
        end
        object cxDBPivotGrid2ID_CUENTA_CAJA: TcxDBPivotGridField
          AreaIndex = 8
          DataBinding.FieldName = 'ID_CUENTA_CAJA'
          Visible = True
          UniqueName = 'ID_CUENTA_CAJA'
        end
        object cxDBPivotGrid2NOMBRE: TcxDBPivotGridField
          AreaIndex = 9
          DataBinding.FieldName = 'NOMBRE'
          Visible = True
          UniqueName = 'NOMBRE'
        end
        object cxDBPivotGrid2MES: TcxDBPivotGridField
          Area = faColumn
          AreaIndex = 0
          DataBinding.FieldName = 'MES'
          Visible = True
          UniqueName = 'Mes'
        end
      end
      object pnPieGastos: TPanel
        Left = 0
        Top = 646
        Width = 1085
        Height = 37
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          1085
          37)
        object lbCampos: TLabel
          Left = 10
          Top = 8
          Width = 76
          Height = 13
          Cursor = crHandPoint
          Caption = 'Mostrar Campos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = lbCamposClick
        end
        object BitBtn8: TBitBtn
          Left = 920
          Top = 6
          Width = 70
          Height = 25
          Anchors = [akTop, akRight]
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
          TabOrder = 0
          OnClick = BitBtn8Click
        end
        object BitBtn10: TBitBtn
          Left = 824
          Top = 6
          Width = 70
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Excel'
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
          TabOrder = 1
          OnClick = BitBtn10Click
        end
      end
    end
    object DetalleVta: TTabSheet
      Caption = 'Detalle de Vta'
      ImageIndex = 5
      object cxDBPivotGrid3: TcxDBPivotGrid
        Left = 0
        Top = 0
        Width = 1085
        Height = 646
        Align = alClient
        DataSource = DSMovimientos_2
        Groups = <>
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        OptionsPrefilter.MRUItemsListDropDownCount = 300
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnGrandTotalText = 'Totales'
        OptionsView.ColumnGrandTotalWidth = 95
        OptionsView.FilterFields = False
        OptionsView.GrandTotalsForSingleValues = True
        OptionsView.RowGrandTotalText = 'Totales'
        OptionsView.TotalsForSingleValues = True
        PopupMenu = PopupMenu1
        TabOrder = 0
        object cxDBPivotGridField1: TcxDBPivotGridField
          AreaIndex = 6
          DataBinding.FieldName = 'ANIO'
          Visible = True
          UniqueName = 'A'#241'o'
        end
        object cxDBPivotGridField2: TcxDBPivotGridField
          Area = faColumn
          AreaIndex = 0
          IsCaptionAssigned = True
          Caption = 'Mes'
          DataBinding.FieldName = 'MUESTRAMES'
          Visible = True
          UniqueName = 'Mes'
        end
        object cxDBPivotGridField3: TcxDBPivotGridField
          AreaIndex = 0
          DataBinding.FieldName = 'CODIGOARTICULO'
          TotalsVisibility = tvNone
          Visible = True
          UniqueName = 'Codigo Art.'
        end
        object cxDBPivotGridField4: TcxDBPivotGridField
          AreaIndex = 1
          DataBinding.FieldName = 'DETALLE_STK'
          TotalsVisibility = tvNone
          Visible = True
          UniqueName = 'Detalle'
        end
        object cxDBPivotGridField5: TcxDBPivotGridField
          AreaIndex = 4
          DataBinding.FieldName = 'CANTIDAD'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00'
          TotalsVisibility = tvNone
          Visible = True
          UniqueName = 'Cant.'
        end
        object cxDBPivotGridField6: TcxDBPivotGridField
          AreaIndex = 5
          DataBinding.FieldName = 'IVA_UNITARIO'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00'
          TotalsVisibility = tvNone
          Visible = True
          UniqueName = 'Iva Unit,'
        end
        object cxDBPivotGridField7: TcxDBPivotGridField
          AreaIndex = 32
          DataBinding.FieldName = 'IVA_TOTAL'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00'
          TotalsVisibility = tvNone
          Visible = True
          UniqueName = 'Iva Total'
        end
        object cxDBPivotGridField8: TcxDBPivotGridField
          AreaIndex = 2
          DataBinding.FieldName = 'UNITARIO_TOTAL'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00'
          TotalsVisibility = tvNone
          Visible = True
          UniqueName = 'Unit.Total'
        end
        object cxDBPivotGridField9: TcxDBPivotGridField
          AreaIndex = 31
          DataBinding.FieldName = 'TOTAL'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00'
          TotalsVisibility = tvNone
          Visible = True
          UniqueName = 'Total'
        end
        object cxDBPivotGridField10: TcxDBPivotGridField
          AreaIndex = 3
          DataBinding.FieldName = 'UNITARIO_FINAL'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00'
          TotalsVisibility = tvNone
          Visible = True
          UniqueName = 'Unit.Final'
        end
        object cxDBPivotGrid1Field11: TcxDBPivotGridField
          Area = faData
          AreaIndex = 0
          DataBinding.FieldName = 'TOTAL_FINAL'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00'
          Visible = True
          UniqueName = 'Total Fin.'
        end
        object cxDBPivotGrid1Field12: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 0
          DataBinding.FieldName = 'RUBRODETALLE'
          Visible = True
          Width = 250
          UniqueName = 'Rubro'
        end
        object cxDBPivotGrid1Field13: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 1
          DataBinding.FieldName = 'SUBRUBRODETALL'
          Visible = True
          Width = 300
          UniqueName = 'Sub Rub.'
        end
        object cxDBPivotGrid1Field14: TcxDBPivotGridField
          AreaIndex = 7
          IsCaptionAssigned = True
          Caption = 'Vendedor'
          DataBinding.FieldName = 'VENDEDOR'
          SummaryType = stCount
          TotalsVisibility = tvNone
          TopValueCount = 1
          Visible = True
          UniqueName = 'Vendedor'
        end
        object cxDBPivotGrid1Field15: TcxDBPivotGridField
          AreaIndex = 8
          DataBinding.FieldName = 'SUCURSAL'
          Visible = True
          UniqueName = 'Sucursal'
        end
        object cxDBPivotGrid1Field16: TcxDBPivotGridField
          AreaIndex = 9
          IsCaptionAssigned = True
          Caption = 'Zona'
          DataBinding.FieldName = 'ZONADETALLE'
          Visible = True
          UniqueName = 'Zona'
        end
        object cxDBPivotGrid1Field17: TcxDBPivotGridField
          AreaIndex = 10
          DataBinding.FieldName = 'NOMBRE_CLI'
          GroupIntervalRange = 20
          TotalsVisibility = tvNone
          Visible = True
          Width = 200
          UniqueName = 'Nombre Cliente'
        end
        object cxDBPivotGrid1Field18: TcxDBPivotGridField
          AreaIndex = 11
          IsCaptionAssigned = True
          Caption = 'Vdor.del Cliente'
          DataBinding.FieldName = 'VENDEDOR_CLI'
          Visible = True
          UniqueName = 'Vdor.del Cliente'
        end
        object cxDBPivotGrid1Field19: TcxDBPivotGridField
          AreaIndex = 12
          DataBinding.FieldName = 'TIPO_VTA'
          SummaryType = stCustom
          Visible = True
          UniqueName = 'Tipo Vta'
        end
        object cxDBPivotGrid1Field20: TcxDBPivotGridField
          AreaIndex = 13
          DataBinding.FieldName = 'LETRA'
          Visible = True
          UniqueName = 'Letra'
        end
        object cxDBPivotGrid1Field21: TcxDBPivotGridField
          AreaIndex = 14
          DataBinding.FieldName = 'IVATASA'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00'
          SummaryType = stCustom
          TotalsVisibility = tvNone
          Visible = True
          UniqueName = 'Tasa de Iva'
        end
        object cxDBPivotGrid1Field22: TcxDBPivotGridField
          AreaIndex = 15
          DataBinding.FieldName = 'MARCADETALLE'
          Visible = True
          UniqueName = 'Marca'
        end
        object cxDBPivotGrid1Field23: TcxDBPivotGridField
          AreaIndex = 16
          DataBinding.FieldName = 'DIRECCION'
          TotalsVisibility = tvNone
          Visible = True
          UniqueName = 'Direccion'
        end
        object cxDBPivotGrid1Field24: TcxDBPivotGridField
          AreaIndex = 17
          DataBinding.FieldName = 'TIPO'
          TotalsVisibility = tvNone
          Visible = True
          UniqueName = 'Tipo'
        end
        object cxDBPivotGrid1Field25: TcxDBPivotGridField
          AreaIndex = 18
          DataBinding.FieldName = 'CLASE'
          TotalsVisibility = tvNone
          Visible = True
          UniqueName = 'Clase'
        end
        object cxDBPivotGrid1Field26: TcxDBPivotGridField
          AreaIndex = 19
          DataBinding.FieldName = 'NROCPBTE'
          Visible = True
          UniqueName = 'Nro.Cpbte'
        end
        object cxDBPivotGrid1Field27: TcxDBPivotGridField
          AreaIndex = 20
          DataBinding.FieldName = 'UNID_VTA'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00'
          TotalsVisibility = tvNone
          Visible = True
          UniqueName = 'Uni.Vta'
        end
        object cxDBPivotGrid1Field28: TcxDBPivotGridField
          AreaIndex = 21
          DataBinding.FieldName = 'FECHA'
          Visible = True
          UniqueName = 'Fecha'
        end
        object cxDBPivotGrid1Field29: TcxDBPivotGridField
          AreaIndex = 22
          DataBinding.FieldName = 'PRESEN_CANTIDAD'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00'
          TotalsVisibility = tvNone
          Visible = True
          UniqueName = 'Pres.Cant'
        end
        object cxDBPivotGrid1Field30: TcxDBPivotGridField
          AreaIndex = 23
          DataBinding.FieldName = 'PRESEN_UNIDAD'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00'
          TotalsVisibility = tvNone
          Visible = True
          UniqueName = 'Pres.Uni'
        end
        object cxDBPivotGrid1Field31: TcxDBPivotGridField
          AreaIndex = 24
          DataBinding.FieldName = 'MUESTRASEMANA'
          Visible = True
          UniqueName = 'Semana'
        end
        object cxDBPivotGrid1Field32: TcxDBPivotGridField
          AreaIndex = 25
          DataBinding.FieldName = 'COBRADOR'
          Visible = True
          UniqueName = 'Cobrador'
        end
        object cxDBPivotGrid1Field33: TcxDBPivotGridField
          AreaIndex = 26
          DataBinding.FieldName = 'COBRADOR_NOMBRE'
          Visible = True
          UniqueName = 'Cobrador Nombre'
        end
        object cxDBPivotGrid1Field34: TcxDBPivotGridField
          AreaIndex = 27
          DataBinding.FieldName = 'UNITARIO_EXENTO'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00'
          TotalsVisibility = tvNone
          Visible = True
          UniqueName = 'Unit.Exen'
        end
        object cxDBPivotGrid1Field35: TcxDBPivotGridField
          AreaIndex = 28
          DataBinding.FieldName = 'UNITARIO_GRAVADO'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00'
          TotalsVisibility = tvNone
          Visible = True
          UniqueName = 'Unit.Grav'
        end
        object cxDBPivotGrid1Field36: TcxDBPivotGridField
          AreaIndex = 29
          DataBinding.FieldName = 'TOTAL_EXENTO'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00'
          TotalsVisibility = tvNone
          Visible = True
          UniqueName = 'T.Exento'
        end
        object cxDBPivotGrid1Field37: TcxDBPivotGridField
          AreaIndex = 30
          DataBinding.FieldName = 'TOTAL_GRAVADO'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00'
          TotalsVisibility = tvNone
          Visible = True
          UniqueName = 'T.Grava.'
        end
        object cxDBPivotGrid1Field38: TcxDBPivotGridField
          AreaIndex = 33
          DataBinding.FieldName = 'MARCADETALLE'
          Visible = True
          UniqueName = 'Marca'
        end
        object cxDBPivotGrid1Field39: TcxDBPivotGridField
          AreaIndex = 34
          DataBinding.FieldName = 'OBSERVACIONES'
          TotalsVisibility = tvNone
          Visible = True
          UniqueName = 'Observaciones'
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 646
        Width = 1085
        Height = 37
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          1085
          37)
        object Label11: TLabel
          Left = 10
          Top = 8
          Width = 76
          Height = 13
          Cursor = crHandPoint
          Caption = 'Mostrar Campos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = Label11Click
        end
        object BitBtn11: TBitBtn
          Left = 921
          Top = 6
          Width = 70
          Height = 25
          Anchors = [akTop, akRight]
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
          TabOrder = 0
          OnClick = BitBtn11Click
        end
        object BitBtn12: TBitBtn
          Left = 829
          Top = 6
          Width = 70
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Excel'
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
          TabOrder = 1
          OnClick = BitBtn12Click
        end
      end
    end
    object pag6: TTabSheet
      Caption = 'Informe Financiero'
      ImageIndex = 6
      object cxDBPivotGrid4: TcxDBPivotGrid
        Left = 0
        Top = 0
        Width = 1085
        Height = 646
        Align = alClient
        DataSource = DSFinanciero
        Groups = <>
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'McSkin'
        OptionsView.ColumnGrandTotals = False
        OptionsView.ColumnTotals = False
        OptionsView.RowGrandTotals = False
        OptionsView.RowTotals = False
        TabOrder = 0
        object cxDBPivotGrid4TIPO_OPERACION: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 0
          DataBinding.FieldName = 'MUESTRAOPERACION'
          Visible = True
          UniqueName = 'MUESTRAOPERACION'
        end
        object cxDBPivotGrid4FECHA_OPERACION: TcxDBPivotGridField
          AreaIndex = 0
          DataBinding.FieldName = 'FECHA_OPERACION'
          Visible = True
          UniqueName = 'Fecha'
        end
        object cxDBPivotGrid4TIPO_COMPROB: TcxDBPivotGridField
          AreaIndex = 1
          DataBinding.FieldName = 'TIPO_COMPROB'
          Visible = True
          UniqueName = 'Tp.Comprobante'
        end
        object cxDBPivotGrid4CLASE_COMPROB: TcxDBPivotGridField
          AreaIndex = 2
          DataBinding.FieldName = 'CLASE_COMPROB'
          Visible = True
          UniqueName = 'Cl.Comprobante'
        end
        object cxDBPivotGrid4MUESTRACOMPROBANTE: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 2
          DataBinding.FieldName = 'MUESTRACOMPROBANTE'
          Visible = True
          UniqueName = 'Comprobante'
        end
        object cxDBPivotGrid4MUESTRATIPOPAGO: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 1
          DataBinding.FieldName = 'MUESTRATIPOPAGO'
          Visible = True
          UniqueName = 'Tipo de Pago'
        end
        object cxDBPivotGrid4MUESTRAFORMAPAGO: TcxDBPivotGridField
          AreaIndex = 3
          DataBinding.FieldName = 'MUESTRAFORMAPAGO'
          Visible = True
          UniqueName = 'Clase de Pago'
        end
        object cxDBPivotGrid4MES: TcxDBPivotGridField
          Area = faColumn
          AreaIndex = 0
          DataBinding.FieldName = 'MUESTRAMES'
          Visible = True
          UniqueName = 'Mes'
        end
        object cxDBPivotGrid4ANNO: TcxDBPivotGridField
          AreaIndex = 4
          DataBinding.FieldName = 'ANNO'
          Visible = True
          UniqueName = 'A'#241'o'
        end
        object cxDBPivotGrid4DEBE: TcxDBPivotGridField
          AreaIndex = 5
          DataBinding.FieldName = 'DEBE'
          Visible = True
          UniqueName = 'Debe'
        end
        object cxDBPivotGrid4HABER: TcxDBPivotGridField
          AreaIndex = 6
          DataBinding.FieldName = 'HABER'
          Visible = True
          UniqueName = 'Haber'
        end
        object cxDBPivotGrid4Field1: TcxDBPivotGridField
          Area = faData
          AreaIndex = 0
          DataBinding.FieldName = 'IMPORTE'
          Visible = True
          UniqueName = 'IMPORTE'
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 646
        Width = 1085
        Height = 37
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          1085
          37)
        object Label12: TLabel
          Left = 10
          Top = 6
          Width = 76
          Height = 13
          Cursor = crHandPoint
          Caption = 'Mostrar Campos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = Label12Click
        end
        object BitBtn13: TBitBtn
          Left = 893
          Top = 6
          Width = 70
          Height = 25
          Anchors = [akTop, akRight]
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
          TabOrder = 0
          OnClick = BitBtn13Click
        end
        object BitBtn14: TBitBtn
          Left = 805
          Top = 6
          Width = 70
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Excel'
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
          TabOrder = 1
          OnClick = BitBtn14Click
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Detalle de Entregas'
      ImageIndex = 7
      object cxDBPivotGrid5: TcxDBPivotGrid
        Left = 0
        Top = 43
        Width = 1085
        Height = 640
        Align = alClient
        DataSource = DSEntregas
        Groups = <>
        OptionsView.ColumnGrandTotalWidth = 95
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnFilterChanged = cxDBPivotGrid5FilterChanged
        object cxDBPivotGrid5Field1: TcxDBPivotGridField
          AreaIndex = 0
          DataBinding.FieldName = 'ANIO'
          Visible = True
          UniqueName = 'A'#241'o'
        end
        object cxDBPivotGrid5Field2: TcxDBPivotGridField
          Area = faData
          AreaIndex = 0
          DataBinding.FieldName = 'CANTIDAD'
          Visible = True
          Width = 40
          UniqueName = 'Cantidad'
        end
        object cxDBPivotGrid5Field3: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 0
          DataBinding.FieldName = 'CODIGOARTICULO'
          MinWidth = 16
          TotalsVisibility = tvNone
          Visible = True
          Width = 75
          UniqueName = 'Codigo'
        end
        object cxDBPivotGrid5Field4: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 1
          DataBinding.FieldName = 'DETALLE_STK'
          MinWidth = 40
          Visible = True
          Width = 300
          UniqueName = 'Detalle'
        end
        object cxDBPivotGrid5Field5: TcxDBPivotGridField
          AreaIndex = 1
          DataBinding.FieldName = 'FECHAVTA'
          Visible = True
          UniqueName = 'Fecha'
        end
        object cxDBPivotGrid5Field6: TcxDBPivotGridField
          Area = faColumn
          AreaIndex = 0
          DataBinding.FieldName = 'MUESTRAMES'
          Visible = True
          UniqueName = 'Mes'
        end
        object cxDBPivotGrid5Field7: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 2
          DataBinding.FieldName = 'MUESTRASEMANA'
          TotalsVisibility = tvNone
          Visible = True
          Width = 20
          UniqueName = 'Sem'
        end
        object cxDBPivotGrid5Field8: TcxDBPivotGridField
          AreaIndex = 2
          DataBinding.FieldName = 'MUESTRADIA'
          Visible = True
          UniqueName = 'Dia'
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1085
        Height = 43
        Align = alTop
        Caption = 'Panel6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        DesignSize = (
          1085
          43)
        object JvGradient5: TJvGradient
          Left = 1
          Top = 1
          Width = 1083
          Height = 41
          Style = grVertical
          StartColor = clGradientInactiveCaption
          EndColor = clWhite
          ExplicitLeft = 17
          ExplicitTop = -4
          ExplicitWidth = 1051
        end
        object BitBtn17: TBitBtn
          Left = 682
          Top = 10
          Width = 81
          Height = 27
          Anchors = [akTop, akRight]
          Caption = 'Buscar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF4A667C
            BE9596FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF6B9CC31E89E84B7AA3C89693FF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4BB4FE51B5FF
            2089E94B7AA2C69592FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF51B7FE51B3FF1D87E64E7AA0CA9792FF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            51B7FE4EB2FF1F89E64E7BA2B99497FF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF52B8FE4BB1FF2787D95F6A76FF
            00FFB0857FC09F94C09F96BC988EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF55BDFFB5D6EDBF9D92BB9B8CE7DAC2FFFFE3FFFFE5FDFADAD8C3
            B3B58D85FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCEA795FD
            EEBEFFFFD8FFFFDAFFFFDBFFFFE6FFFFFBEADDDCAE837FFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFC1A091FBDCA8FEF7D0FFFFDBFFFFE3FFFFF8FFFF
            FDFFFFFDC6A99CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC1A091FEE3ACF1
            C491FCF2CAFFFFDDFFFFE4FFFFF7FFFFF7FFFFE9EEE5CBB9948CFF00FFFF00FF
            FF00FFFF00FFFF00FFC2A191FFE6AEEEB581F7DCAEFEFDD8FFFFDFFFFFE3FFFF
            E4FFFFE0F3ECD2BB968EFF00FFFF00FFFF00FFFF00FFFF00FFBC978CFBE7B7F4
            C791F2C994F8E5B9FEFCD8FFFFDDFFFFDCFFFFE0E2D2BAB68E86FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFD9C3A9FFFEE5F7DCB8F2C994F5D4A5FAE8BDFDF4
            C9FDFBD6B69089FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB58D85E8
            DEDDFFFEF2F9D8A3F4C48CF9D49FFDEAB8D0B49FB89086FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFAD827FC9AA9EEFE0B7EFDFB2E7CEACB890
            86B89086FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFBA968ABB988CB79188FF00FFFF00FFFF00FFFF00FF}
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn17Click
        end
        object BitBtn16: TBitBtn
          Left = 809
          Top = 9
          Width = 88
          Height = 28
          Anchors = [akTop, akRight]
          Caption = 'a Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
            078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
            BE078DBEFF00FFFF00FFB88989B88989B88989B88989B88989B88989B8898965
            CDF965CDF865CDF965CDF866CEF939ADD8078DBEFF00FFFF00FFB88989FEFDFB
            FEFDFBFEFDFBFEFDFBFEFDFB4D87430C85180C85180C851851BDB66ED4F93EB1
            D984D7EB078DBEFF00FFB88989FEF9F4FEF9F4FEF9F4FEF9F4FEF9F4B8898967
            CED60C85181398250C85184BB79A42B4D4AEF1F9078DBEFF00FFB88989FEF6ED
            FEF6EDFEF6EDFEF6EDFEF6EDB8898983E4FC84E4FC0C851826B73F0C851836A8
            A1B3F4F9078DBEFF00FFB88989FFF2E7FFF2E7FFF2E7FAE8DEFAE8DEB889898D
            EBFD8DEBFD5DC0A70C851837C4580C8518ACF0EB6DCAE0078DBEB88989FFEFE0
            FFEFE0FFEFE0D09F9ED0A09EC59393ACE4DA9FDBCA82AB810C85184EDB780C85
            1898BA99A3BFAC078DBEB88989FFEBD9FFEBD9F3D7C9D5ABA8D1C8C2CD999907
            87800C85180C851847D06E59E38842C6670C85180C8518078DBEB88989FFE8D2
            FFE8D2F3D4C4D9AEACCD99999AF6FE9BF5FE63C5A40C85185DE88E63EE984CD0
            750C8518F0F1E7B88989B88989B88989B88989B88989CD9999A1FAFEA1FBFEA0
            FAFEA1FBFE737E570C851846CB6E0C8518EFEDDFFEF6EDB88989FF00FF078DBE
            FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBEB8898984B47B0C8518EDE8
            D7FAE8DEFAE8DEB88989FF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
            00FFFF00FFB88989FFEFE0FFEFE0FFEFE0D09F9ED0A09EC59393FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989FFEBD9FFEBD9F3D7
            C9D5ABA8D1C8C2CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFB88989FFE8D2FFE8D2F3D4C4D9AEACCD9999FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989B88989B88989B889
            89CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn16Click
        end
        object BitBtn15: TBitBtn
          Left = 903
          Top = 9
          Width = 75
          Height = 28
          Anchors = [akTop, akRight]
          Caption = '&Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn1Click
        end
      end
    end
  end
  object CDSVentas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'anio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPVentas'
    Left = 296
    Top = 320
    object CDSVentasSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSVentasNOMBRESUCURSAL: TStringField
      FieldName = 'NOMBRESUCURSAL'
      Origin = 'NOMBRESUCURSAL'
      Size = 35
    end
    object CDSVentasMES: TIntegerField
      FieldName = 'MES'
      Origin = 'MES'
      OnGetText = CDSVentasMESGetText
    end
    object CDSVentasTOTAL_VTAS_CTDO_GRAVADO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CTDO_GRAVADO'
      Origin = 'TOTAL_VTAS_CTDO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_VTAS_CTDO_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CTDO_EXENTO'
      Origin = 'TOTAL_VTAS_CTDO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_VTAS_CTDO_IVA: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CTDO_IVA'
      Origin = 'TOTAL_VTAS_CTDO_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_VTAS_CTDO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CTDO'
      Origin = 'TOTAL_VTAS_CTDO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_VTAS_CC_GRAVDADO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CC_GRAVDADO'
      Origin = 'TOTAL_VTAS_CC_GRAVDADO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_VTAS_CC_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CC_EXENTO'
      Origin = 'TOTAL_VTAS_CC_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_VTAS_CC_IVA: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CC_IVA'
      Origin = 'TOTAL_VTAS_CC_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_VTAS_CC: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CC'
      Origin = 'TOTAL_VTAS_CC'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_VTAS_NCREDITO_GRAVADO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_NCREDITO_GRAVADO'
      Origin = 'TOTAL_VTAS_NCREDITO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_VTAS_NCREDITO_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_NCREDITO_EXENTO'
      Origin = 'TOTAL_VTAS_NCREDITO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_VTAS_NCREDITO_IVA: TFMTBCDField
      FieldName = 'TOTAL_VTAS_NCREDITO_IVA'
      Origin = 'TOTAL_VTAS_NCREDITO_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_VTAS_NCREDITO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_NCREDITO'
      Origin = 'TOTAL_VTAS_NCREDITO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_VTAS_CTDO_NCREDITO_GRAVAD: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CTDO_NCREDITO_GRAVAD'
      Origin = 'TOTAL_VTAS_CTDO_NCREDITO_GRAVAD'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_VTAS_CTDO_NCREDITO_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CTDO_NCREDITO_EXENTO'
      Origin = 'TOTAL_VTAS_CTDO_NCREDITO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_VTAS_CTDO_NCREDITO_IVA: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CTDO_NCREDITO_IVA'
      Origin = 'TOTAL_VTAS_CTDO_NCREDITO_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_VTAS_CTDO_NCREDITO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CTDO_NCREDITO'
      Origin = 'TOTAL_VTAS_CTDO_NCREDITO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_VTAS_NDEBITO_GRAVADO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_NDEBITO_GRAVADO'
      Origin = 'TOTAL_VTAS_NDEBITO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_VTAS_NDEBITO_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_NDEBITO_EXENTO'
      Origin = 'TOTAL_VTAS_NDEBITO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_VTAS_NDEBITO_IVA: TFMTBCDField
      FieldName = 'TOTAL_VTAS_NDEBITO_IVA'
      Origin = 'TOTAL_VTAS_NDEBITO_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_VTAS_NDEBITO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_NDEBITO'
      Origin = 'TOTAL_VTAS_NDEBITO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_VTAS: TFMTBCDField
      FieldName = 'TOTAL_VTAS'
      Origin = 'TOTAL_VTAS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_ANULACIONES: TFMTBCDField
      FieldName = 'TOTAL_ANULACIONES'
      Origin = 'TOTAL_ANULACIONES'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_COBRANZAS: TFMTBCDField
      FieldName = 'TOTAL_COBRANZAS'
      Origin = 'TOTAL_COBRANZAS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_COMPRAS_GRAVADO: TFMTBCDField
      FieldName = 'TOTAL_COMPRAS_GRAVADO'
      Origin = 'TOTAL_COMPRAS_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_COMPRAS_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_COMPRAS_EXENTO'
      Origin = 'TOTAL_COMPRAS_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_COMPRAS_IVA: TFMTBCDField
      FieldName = 'TOTAL_COMPRAS_IVA'
      Origin = 'TOTAL_COMPRAS_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_COMPRAS: TFMTBCDField
      FieldName = 'TOTAL_COMPRAS'
      Origin = 'TOTAL_COMPRAS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_COMPRAS_CTDO_GRAVADO: TFMTBCDField
      FieldName = 'TOTAL_COMPRAS_CTDO_GRAVADO'
      Origin = 'TOTAL_COMPRAS_CTDO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_COMPRAS_CTDO_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_COMPRAS_CTDO_EXENTO'
      Origin = 'TOTAL_COMPRAS_CTDO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_COMPRAS_CTDO_IVA: TFMTBCDField
      FieldName = 'TOTAL_COMPRAS_CTDO_IVA'
      Origin = 'TOTAL_COMPRAS_CTDO_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_COMPRAS_CTDO: TFMTBCDField
      FieldName = 'TOTAL_COMPRAS_CTDO'
      Origin = 'TOTAL_COMPRAS_CTDO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_NC_COMPRAS_GRAVADO: TFMTBCDField
      FieldName = 'TOTAL_NC_COMPRAS_GRAVADO'
      Origin = 'TOTAL_NC_COMPRAS_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_NC_COMPRAS_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_NC_COMPRAS_EXENTO'
      Origin = 'TOTAL_NC_COMPRAS_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_NC_COMPRAS_IVA: TFMTBCDField
      FieldName = 'TOTAL_NC_COMPRAS_IVA'
      Origin = 'TOTAL_NC_COMPRAS_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_NC_COMPRAS: TFMTBCDField
      FieldName = 'TOTAL_NC_COMPRAS'
      Origin = 'TOTAL_NC_COMPRAS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_GRAL_COMPRAS: TFMTBCDField
      FieldName = 'TOTAL_GRAL_COMPRAS'
      Origin = 'TOTAL_GRAL_COMPRAS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_PAGOS: TFMTBCDField
      FieldName = 'TOTAL_PAGOS'
      Origin = 'TOTAL_PAGOS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasSALDO_CC_VTA: TFMTBCDField
      FieldName = 'SALDO_CC_VTA'
      Origin = 'SALDO_CC_VTA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasSALDO_CC_COMPRA: TFMTBCDField
      FieldName = 'SALDO_CC_COMPRA'
      Origin = 'SALDO_CC_COMPRA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_INGRESOS: TFMTBCDField
      FieldName = 'TOTAL_INGRESOS'
      Origin = 'TOTAL_INGRESOS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_EGRESOS: TFMTBCDField
      FieldName = 'TOTAL_EGRESOS'
      Origin = 'TOTAL_EGRESOS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_PERSONAL: TFMTBCDField
      FieldName = 'TOTAL_PERSONAL'
      Origin = 'TOTAL_PERSONAL'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_EFECTIVO: TFMTBCDField
      FieldName = 'TOTAL_EFECTIVO'
      Origin = 'TOTAL_EFECTIVO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_CHEQUES3: TFMTBCDField
      FieldName = 'TOTAL_CHEQUES3'
      Origin = 'TOTAL_CHEQUES3'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasTOTAL_RTOS: TFMTBCDField
      FieldName = 'TOTAL_RTOS'
      Origin = 'TOTAL_RTOS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasSALDO_BANCO: TFMTBCDField
      FieldName = 'SALDO_BANCO'
      Origin = 'SALDO_BANCO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
  end
  object DSPVentas: TDataSetProvider
    DataSet = QVentas
    Options = []
    Left = 224
    Top = 320
  end
  object DSVentas: TDataSource
    DataSet = CDSVentas
    Left = 352
    Top = 320
  end
  object DSPSucursales: TDataSetProvider
    DataSet = QSucursales
    Options = []
    Left = 224
    Top = 256
  end
  object CDSSucursales: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSucursales'
    Left = 288
    Top = 256
    object CDSSucursalesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSSucursalesDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
  end
  object DSPVentasDiaria: TDataSetProvider
    DataSet = QVentasDiaria
    Exported = False
    Options = []
    Left = 232
    Top = 392
  end
  object CDSVentaDiaria: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPVentasDiaria'
    Left = 304
    Top = 384
    object CDSVentaDiariaSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSVentaDiariaNOMBRESUCURSAL: TStringField
      FieldName = 'NOMBRESUCURSAL'
      Origin = 'NOMBRESUCURSAL'
      Size = 35
    end
    object CDSVentaDiariaDIA: TIntegerField
      FieldName = 'DIA'
      Origin = 'DIA'
    end
    object CDSVentaDiariaTOTAL_VTAS_CTDO_GRAVADO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CTDO_GRAVADO'
      Origin = 'TOTAL_VTAS_CTDO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_VTAS_CTDO_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CTDO_EXENTO'
      Origin = 'TOTAL_VTAS_CTDO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_VTAS_CTDO_IVA: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CTDO_IVA'
      Origin = 'TOTAL_VTAS_CTDO_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_VTAS_CTDO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CTDO'
      Origin = 'TOTAL_VTAS_CTDO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_VTAS_CC_GRAVDADO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CC_GRAVDADO'
      Origin = 'TOTAL_VTAS_CC_GRAVDADO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_VTAS_CC_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CC_EXENTO'
      Origin = 'TOTAL_VTAS_CC_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_VTAS_CC_IVA: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CC_IVA'
      Origin = 'TOTAL_VTAS_CC_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_VTAS_CC: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CC'
      Origin = 'TOTAL_VTAS_CC'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_VTAS_NCREDITO_GRAVADO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_NCREDITO_GRAVADO'
      Origin = 'TOTAL_VTAS_NCREDITO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_VTAS_NCREDITO_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_NCREDITO_EXENTO'
      Origin = 'TOTAL_VTAS_NCREDITO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_VTAS_NCREDITO_IVA: TFMTBCDField
      FieldName = 'TOTAL_VTAS_NCREDITO_IVA'
      Origin = 'TOTAL_VTAS_NCREDITO_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_VTAS_NCREDITO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_NCREDITO'
      Origin = 'TOTAL_VTAS_NCREDITO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_VTAS_CTDO_NCREDITO_GRAVAD: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CTDO_NCREDITO_GRAVAD'
      Origin = 'TOTAL_VTAS_CTDO_NCREDITO_GRAVAD'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_VTAS_CTDO_NCREDITO_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CTDO_NCREDITO_EXENTO'
      Origin = 'TOTAL_VTAS_CTDO_NCREDITO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_VTAS_CTDO_NCREDITO_IVA: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CTDO_NCREDITO_IVA'
      Origin = 'TOTAL_VTAS_CTDO_NCREDITO_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_VTAS_CTDO_NCREDITO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CTDO_NCREDITO'
      Origin = 'TOTAL_VTAS_CTDO_NCREDITO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_VTAS_NDEBITO_GRAVADO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_NDEBITO_GRAVADO'
      Origin = 'TOTAL_VTAS_NDEBITO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_VTAS_NDEBITO_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_NDEBITO_EXENTO'
      Origin = 'TOTAL_VTAS_NDEBITO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_VTAS_NDEBITO_IVA: TFMTBCDField
      FieldName = 'TOTAL_VTAS_NDEBITO_IVA'
      Origin = 'TOTAL_VTAS_NDEBITO_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_VTAS_NDEBITO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_NDEBITO'
      Origin = 'TOTAL_VTAS_NDEBITO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_VTAS: TFMTBCDField
      FieldName = 'TOTAL_VTAS'
      Origin = 'TOTAL_VTAS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_ANULACIONES: TFMTBCDField
      FieldName = 'TOTAL_ANULACIONES'
      Origin = 'TOTAL_ANULACIONES'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_COBRANZAS: TFMTBCDField
      FieldName = 'TOTAL_COBRANZAS'
      Origin = 'TOTAL_COBRANZAS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_COMPRAS_GRAVADO: TFMTBCDField
      FieldName = 'TOTAL_COMPRAS_GRAVADO'
      Origin = 'TOTAL_COMPRAS_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_COMPRAS_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_COMPRAS_EXENTO'
      Origin = 'TOTAL_COMPRAS_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_COMPRAS_IVA: TFMTBCDField
      FieldName = 'TOTAL_COMPRAS_IVA'
      Origin = 'TOTAL_COMPRAS_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_COMPRAS: TFMTBCDField
      FieldName = 'TOTAL_COMPRAS'
      Origin = 'TOTAL_COMPRAS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_COMPRAS_CTDO_GRAVADO: TFMTBCDField
      FieldName = 'TOTAL_COMPRAS_CTDO_GRAVADO'
      Origin = 'TOTAL_COMPRAS_CTDO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_COMPRAS_CTDO_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_COMPRAS_CTDO_EXENTO'
      Origin = 'TOTAL_COMPRAS_CTDO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_COMPRAS_CTDO_IVA: TFMTBCDField
      FieldName = 'TOTAL_COMPRAS_CTDO_IVA'
      Origin = 'TOTAL_COMPRAS_CTDO_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_COMPRAS_CTDO: TFMTBCDField
      FieldName = 'TOTAL_COMPRAS_CTDO'
      Origin = 'TOTAL_COMPRAS_CTDO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_NC_COMPRAS_GRAVADO: TFMTBCDField
      FieldName = 'TOTAL_NC_COMPRAS_GRAVADO'
      Origin = 'TOTAL_NC_COMPRAS_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_NC_COMPRAS_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_NC_COMPRAS_EXENTO'
      Origin = 'TOTAL_NC_COMPRAS_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_NC_COMPRAS_IVA: TFMTBCDField
      FieldName = 'TOTAL_NC_COMPRAS_IVA'
      Origin = 'TOTAL_NC_COMPRAS_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_NC_COMPRAS: TFMTBCDField
      FieldName = 'TOTAL_NC_COMPRAS'
      Origin = 'TOTAL_NC_COMPRAS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_GRAL_COMPRAS: TFMTBCDField
      FieldName = 'TOTAL_GRAL_COMPRAS'
      Origin = 'TOTAL_GRAL_COMPRAS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_PAGOS: TFMTBCDField
      FieldName = 'TOTAL_PAGOS'
      Origin = 'TOTAL_PAGOS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaSALDO_CC_VTA: TFMTBCDField
      FieldName = 'SALDO_CC_VTA'
      Origin = 'SALDO_CC_VTA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaSALDO_CC_COMPRA: TFMTBCDField
      FieldName = 'SALDO_CC_COMPRA'
      Origin = 'SALDO_CC_COMPRA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_INGRESOS: TFMTBCDField
      FieldName = 'TOTAL_INGRESOS'
      Origin = 'TOTAL_INGRESOS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_EGRESOS: TFMTBCDField
      FieldName = 'TOTAL_EGRESOS'
      Origin = 'TOTAL_EGRESOS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_PERSONAL: TFMTBCDField
      FieldName = 'TOTAL_PERSONAL'
      Origin = 'TOTAL_PERSONAL'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_EFECTIVO: TFMTBCDField
      FieldName = 'TOTAL_EFECTIVO'
      Origin = 'TOTAL_EFECTIVO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_CHEQUES3: TFMTBCDField
      FieldName = 'TOTAL_CHEQUES3'
      Origin = 'TOTAL_CHEQUES3'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentaDiariaTOTAL_RTOS: TFMTBCDField
      FieldName = 'TOTAL_RTOS'
      Origin = 'TOTAL_RTOS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
  end
  object frxReport1: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41038.464656886570000000
    ReportOptions.LastChange = 41038.519221053240000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 796
    Top = 376
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 79.897650000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
        RowCount = 1
        object Cross1: TfrxCrossView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Width = 100.000000000000000000
          Height = 61.000000000000000000
          DownThenAcross = False
          RepeatHeaders = False
          ShowColumnHeader = False
          ShowColumnTotal = False
          ShowRowHeader = False
          ShowRowTotal = False
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F5669657720416C6C6F77566563746F
            724578706F72743D225472756522204C6566743D2235342E3031353737222054
            6F703D2238342E3235323031222057696474683D22363022204865696768743D
            22323122205265737472696374696F6E733D2232342220416C6C6F7745787072
            657373696F6E733D2246616C73652220466F6E742E436861727365743D223122
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3133
            2220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D22
            3022204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686143656E7465722220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            2230222F3E3C546672784D656D6F5669657720416C6C6F77566563746F724578
            706F72743D225472756522204C6566743D2238312220546F703D223433222057
            696474683D22363022204865696768743D22323222205265737472696374696F
            6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C736522
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222048416C69676E3D2268615269676874222056416C69676E3D22766143656E
            7465722220546578743D2230222F3E3C546672784D656D6F5669657720416C6C
            6F77566563746F724578706F72743D225472756522204C6566743D2231343122
            20546F703D223232222057696474683D22383122204865696768743D22323122
            205265737472696374696F6E733D2232342220416C6C6F774578707265737369
            6F6E733D2246616C736522204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D226861526967687422205641
            6C69676E3D22766143656E7465722220546578743D2230222F3E3C546672784D
            656D6F5669657720416C6C6F77566563746F724578706F72743D225472756522
            204C6566743D223134312220546F703D223433222057696474683D2238312220
            4865696768743D22323222205265737472696374696F6E733D2232342220416C
            6C6F7745787072657373696F6E733D2246616C736522204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
            68615269676874222056416C69676E3D22766143656E7465722220546578743D
            2230222F3E3C2F63656C6C6D656D6F733E3C63656C6C6865616465726D656D6F
            733E3C546672784D656D6F5669657720416C6C6F77566563746F724578706F72
            743D225472756522204C6566743D22302220546F703D2230222057696474683D
            223022204865696768743D223022205265737472696374696F6E733D22382220
            416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222056416C69676E
            3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F5669
            657720416C6C6F77566563746F724578706F72743D225472756522204C656674
            3D22302220546F703D2230222057696474683D223022204865696768743D2230
            22205265737472696374696F6E733D22382220416C6C6F774578707265737369
            6F6E733D2246616C736522204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222056416C69676E3D22766143656E746572222054
            6578743D22222F3E3C2F63656C6C6865616465726D656D6F733E3C636F6C756D
            6E6D656D6F733E3C546672784D656D6F5669657720416C6C6F77566563746F72
            4578706F72743D225472756522204C6566743D22302220546F703D2230222057
            696474683D2232303022204865696768743D2232322220526573747269637469
            6F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C7365
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686143656E746572222056416C69676E3D22766143
            656E7465722220546578743D22222F3E3C2F636F6C756D6E6D656D6F733E3C63
            6F6C756D6E746F74616C6D656D6F733E3C546672784D656D6F5669657720416C
            6C6F77566563746F724578706F72743D225472756522204C6566743D22313431
            2220546F703D2230222057696474683D22383122204865696768743D22323222
            205265737472696374696F6E733D2238222056697369626C653D2246616C7365
            2220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E
            436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E
            4865696768743D222D31332220466F6E742E4E616D653D22417269616C222046
            6F6E742E5374796C653D223122204672616D652E5479703D2231352220476170
            583D22332220476170593D2233222048416C69676E3D22686143656E74657222
            20506172656E74466F6E743D2246616C7365222056416C69676E3D2276614365
            6E7465722220546578743D224772616E6420546F74616C222F3E3C2F636F6C75
            6D6E746F74616C6D656D6F733E3C636F726E65726D656D6F733E3C546672784D
            656D6F5669657720416C6C6F77566563746F724578706F72743D225472756522
            204C6566743D22302220546F703D2230222057696474683D2232303022204865
            696768743D223022205265737472696374696F6E733D2238222056697369626C
            653D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            6522204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686143656E746572222056416C69676E3D227661
            43656E7465722220546578743D22222F3E3C546672784D656D6F566965772041
            6C6C6F77566563746F724578706F72743D225472756522204C6566743D223022
            20546F703D2230222057696474683D2232303022204865696768743D22302220
            5265737472696374696F6E733D2238222056697369626C653D2246616C736522
            20416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222048416C6967
            6E3D22686143656E746572222056416C69676E3D22766143656E746572222054
            6578743D22222F3E3C546672784D656D6F5669657720416C6C6F77566563746F
            724578706F72743D225472756522204C6566743D22302220546F703D22302220
            57696474683D223022204865696768743D223022205265737472696374696F6E
            733D2238222056697369626C653D2246616C73652220416C6C6F774578707265
            7373696F6E733D2246616C736522204672616D652E5479703D22313522204761
            70583D22332220476170593D2233222048416C69676E3D22686143656E746572
            222056416C69676E3D22766143656E7465722220546578743D22222F3E3C5466
            72784D656D6F5669657720416C6C6F77566563746F724578706F72743D225472
            756522204C6566743D22302220546F703D2230222057696474683D2232303022
            204865696768743D22323222205265737472696374696F6E733D22382220416C
            6C6F7745787072657373696F6E733D2246616C736522204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
            686143656E746572222056416C69676E3D22766143656E746572222054657874
            3D22222F3E3C2F636F726E65726D656D6F733E3C726F776D656D6F733E3C5466
            72784D656D6F5669657720416C6C6F77566563746F724578706F72743D225472
            756522204C6566743D22302220546F703D223232222057696474683D22323030
            22204865696768743D22323122205265737472696374696F6E733D2232342220
            416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222048416C69676E
            3D22686143656E746572222056416C69676E3D22766143656E74657222205465
            78743D22222F3E3C2F726F776D656D6F733E3C726F77746F74616C6D656D6F73
            3E3C546672784D656D6F5669657720416C6C6F77566563746F724578706F7274
            3D225472756522204C6566743D22302220546F703D223433222057696474683D
            22383122204865696768743D22323222205265737472696374696F6E733D2238
            222056697369626C653D2246616C73652220416C6C6F7745787072657373696F
            6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E
            742E4E616D653D22417269616C2220466F6E742E5374796C653D223122204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C
            7365222056416C69676E3D22766143656E7465722220546578743D224772616E
            6420546F74616C222F3E3C2F726F77746F74616C6D656D6F733E3C63656C6C66
            756E6374696F6E733E3C6974656D20312F3E3C2F63656C6C66756E6374696F6E
            733E3C636F6C756D6E736F72743E3C6974656D20302F3E3C2F636F6C756D6E73
            6F72743E3C726F77736F72743E3C6974656D20302F3E3C2F726F77736F72743E
            3C2F63726F73733E}
        end
      end
    end
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
    Left = 828
    Top = 240
  end
  object frxBMPExport1: TfrxBMPExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 828
    Top = 184
  end
  object DSPVentasFiltrada: TDataSetProvider
    DataSet = QVentasFiltrada
    Options = []
    Left = 224
    Top = 192
  end
  object CDSVentasFiltrada: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'anio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'grupo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPVentasFiltrada'
    Left = 304
    Top = 192
    object CDSVentasFiltradaSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSVentasFiltradaNOMBRESUCURSAL: TStringField
      FieldName = 'NOMBRESUCURSAL'
      Origin = 'NOMBRESUCURSAL'
      Size = 35
    end
    object CDSVentasFiltradaMES: TIntegerField
      FieldName = 'MES'
      Origin = 'MES'
      OnGetText = CDSVentasFiltradaMESGetText
    end
    object CDSVentasFiltradaTOTAL_VTAS_CTDO_GRAVADO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CTDO_GRAVADO'
      Origin = 'TOTAL_VTAS_CTDO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_VTAS_CTDO_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CTDO_EXENTO'
      Origin = 'TOTAL_VTAS_CTDO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_VTAS_CTDO_IVA: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CTDO_IVA'
      Origin = 'TOTAL_VTAS_CTDO_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_VTAS_CTDO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CTDO'
      Origin = 'TOTAL_VTAS_CTDO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_VTAS_CC_GRAVDADO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CC_GRAVDADO'
      Origin = 'TOTAL_VTAS_CC_GRAVDADO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_VTAS_CC_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CC_EXENTO'
      Origin = 'TOTAL_VTAS_CC_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_VTAS_CC_IVA: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CC_IVA'
      Origin = 'TOTAL_VTAS_CC_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_VTAS_CC: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CC'
      Origin = 'TOTAL_VTAS_CC'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_VTAS_CTDO_NCREDITO_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CTDO_NCREDITO_EXENTO'
      Origin = 'TOTAL_VTAS_CTDO_NCREDITO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_VTAS_CTDO_NCREDITO_GRAVAD: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CTDO_NCREDITO_GRAVAD'
      Origin = 'TOTAL_VTAS_CTDO_NCREDITO_GRAVAD'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_VTAS_CTDO_NCREDITO_IVA: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CTDO_NCREDITO_IVA'
      Origin = 'TOTAL_VTAS_CTDO_NCREDITO_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_VTAS_CTDO_NCREDITO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_CTDO_NCREDITO'
      Origin = 'TOTAL_VTAS_CTDO_NCREDITO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_VTAS_NCREDITO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_NCREDITO'
      Origin = 'TOTAL_VTAS_NCREDITO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_VTAS_NCREDITO_IVA: TFMTBCDField
      FieldName = 'TOTAL_VTAS_NCREDITO_IVA'
      Origin = 'TOTAL_VTAS_NCREDITO_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_VTAS_NCREDITO_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_NCREDITO_EXENTO'
      Origin = 'TOTAL_VTAS_NCREDITO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_VTAS_NCREDITO_GRAVADO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_NCREDITO_GRAVADO'
      Origin = 'TOTAL_VTAS_NCREDITO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_VTAS_NDEBITO_GRAVADO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_NDEBITO_GRAVADO'
      Origin = 'TOTAL_VTAS_NDEBITO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_VTAS_NDEBITO_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_NDEBITO_EXENTO'
      Origin = 'TOTAL_VTAS_NDEBITO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_VTAS_NDEBITO_IVA: TFMTBCDField
      FieldName = 'TOTAL_VTAS_NDEBITO_IVA'
      Origin = 'TOTAL_VTAS_NDEBITO_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_VTAS_NDEBITO: TFMTBCDField
      FieldName = 'TOTAL_VTAS_NDEBITO'
      Origin = 'TOTAL_VTAS_NDEBITO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_VTAS: TFMTBCDField
      FieldName = 'TOTAL_VTAS'
      Origin = 'TOTAL_VTAS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_ANULACIONES: TFMTBCDField
      FieldName = 'TOTAL_ANULACIONES'
      Origin = 'TOTAL_ANULACIONES'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_COBRANZAS: TFMTBCDField
      FieldName = 'TOTAL_COBRANZAS'
      Origin = 'TOTAL_COBRANZAS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_COMPRAS_GRAVADO: TFMTBCDField
      FieldName = 'TOTAL_COMPRAS_GRAVADO'
      Origin = 'TOTAL_COMPRAS_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_COMPRAS_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_COMPRAS_EXENTO'
      Origin = 'TOTAL_COMPRAS_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_COMPRAS_IVA: TFMTBCDField
      FieldName = 'TOTAL_COMPRAS_IVA'
      Origin = 'TOTAL_COMPRAS_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_COMPRAS: TFMTBCDField
      FieldName = 'TOTAL_COMPRAS'
      Origin = 'TOTAL_COMPRAS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_COMPRAS_CTDO: TFMTBCDField
      FieldName = 'TOTAL_COMPRAS_CTDO'
      Origin = 'TOTAL_COMPRAS_CTDO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_COMPRAS_CTDO_GRAVADO: TFMTBCDField
      FieldName = 'TOTAL_COMPRAS_CTDO_GRAVADO'
      Origin = 'TOTAL_COMPRAS_CTDO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_COMPRAS_CTDO_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_COMPRAS_CTDO_EXENTO'
      Origin = 'TOTAL_COMPRAS_CTDO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_COMPRAS_CTDO_IVA: TFMTBCDField
      FieldName = 'TOTAL_COMPRAS_CTDO_IVA'
      Origin = 'TOTAL_COMPRAS_CTDO_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_NC_COMPRAS_GRAVADO: TFMTBCDField
      FieldName = 'TOTAL_NC_COMPRAS_GRAVADO'
      Origin = 'TOTAL_NC_COMPRAS_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_NC_COMPRAS_EXENTO: TFMTBCDField
      FieldName = 'TOTAL_NC_COMPRAS_EXENTO'
      Origin = 'TOTAL_NC_COMPRAS_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_NC_COMPRAS_IVA: TFMTBCDField
      FieldName = 'TOTAL_NC_COMPRAS_IVA'
      Origin = 'TOTAL_NC_COMPRAS_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_NC_COMPRAS: TFMTBCDField
      FieldName = 'TOTAL_NC_COMPRAS'
      Origin = 'TOTAL_NC_COMPRAS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_GRAL_COMPRAS: TFMTBCDField
      FieldName = 'TOTAL_GRAL_COMPRAS'
      Origin = 'TOTAL_GRAL_COMPRAS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_PAGOS: TFMTBCDField
      FieldName = 'TOTAL_PAGOS'
      Origin = 'TOTAL_PAGOS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaSALDO_CC_VTA: TFMTBCDField
      FieldName = 'SALDO_CC_VTA'
      Origin = 'SALDO_CC_VTA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaSALDO_CC_COMPRA: TFMTBCDField
      FieldName = 'SALDO_CC_COMPRA'
      Origin = 'SALDO_CC_COMPRA'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_INGRESOS: TFMTBCDField
      FieldName = 'TOTAL_INGRESOS'
      Origin = 'TOTAL_INGRESOS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_EGRESOS: TFMTBCDField
      FieldName = 'TOTAL_EGRESOS'
      Origin = 'TOTAL_EGRESOS'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
    object CDSVentasFiltradaTOTAL_PERSONAL: TFMTBCDField
      FieldName = 'TOTAL_PERSONAL'
      Origin = 'TOTAL_PERSONAL'
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 15
      Size = 2
    end
  end
  object DSSucursales: TDataSource
    DataSet = CDSSucursal
    Left = 680
    Top = 120
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 616
    Top = 120
    object CDSSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = []
    Left = 552
    Top = 120
  end
  object DSPInfCruzao: TDataSetProvider
    DataSet = QInfCruzado
    Options = []
    Left = 560
    Top = 304
  end
  object CDSInfCruzado: TClientDataSet
    Aggregates = <>
    Params = <
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
    ProviderName = 'DSPInfCruzao'
    OnCalcFields = CDSInfCruzadoCalcFields
    Left = 640
    Top = 304
    object CDSInfCruzadoID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSInfCruzadoTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSInfCruzadoCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSInfCruzadoNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSInfCruzadoCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSInfCruzadoNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSInfCruzadoSUCURSAL: TIntegerField
      DisplayLabel = 'Cod.Suc'
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object CDSInfCruzadoMUESTRASUCURSAL: TStringField
      DisplayLabel = 'Nom.Sucursal'
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSInfCruzadoANIO: TSmallintField
      DisplayLabel = 'A'#241'o'
      FieldName = 'ANIO'
      Origin = 'ANIO'
      ProviderFlags = []
      Required = True
    end
    object CDSInfCruzadoMES: TSmallintField
      DisplayLabel = 'Mes'
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      Required = True
    end
    object CDSInfCruzadoMUESTRACOMPROB: TStringField
      DisplayLabel = 'Nom.Comprob.'
      FieldName = 'MUESTRACOMPROB'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object CDSInfCruzadoTOTALNETO: TFloatField
      DisplayLabel = 'Neto S/Iva'
      FieldName = 'TOTALNETO'
      Origin = 'TOTALNETO'
      ProviderFlags = []
      Required = True
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSInfCruzadoNOMBREMES: TStringField
      DisplayLabel = 'Mes'
      FieldKind = fkCalculated
      FieldName = 'NOMBREMES'
      Size = 18
      Calculated = True
    end
    object CDSInfCruzadoTOTALNETOREC: TFloatField
      DisplayLabel = 'Neto.S/IVA'
      FieldKind = fkCalculated
      FieldName = 'TOTALNETOREC'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
      Calculated = True
    end
    object CDSInfCruzadoTOTALREC: TFloatField
      DisplayLabel = 'Total Final'
      FieldKind = fkCalculated
      FieldName = 'TOTALREC'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
      Calculated = True
    end
    object CDSInfCruzadoTOTAL: TFloatField
      DisplayLabel = 'Total C/IVA'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSInfCruzado: TDataSource
    DataSet = CDSInfCruzado
    Left = 720
    Top = 304
  end
  object SaveDialog1: TSaveDialog
    Left = 788
    Top = 312
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link8
    PreviewOptions.WindowState = wsMaximized
    Version = 0
    Left = 909
    Top = 344
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TcxPivotGridReportLink
      Active = True
      Component = cxDBPivotGrid1
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
      ReportDocument.CreationDate = 45489.534622256940000000
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      OptionsView.Prefilter = pfvNever
      OptionsView.RowFields = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link2: TcxDBVerticalGridReportLink
      Active = True
      Component = cxDBVerticalGrid1
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 3400
      PrinterPage.Margins.Bottom = 6400
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 3400
      PrinterPage.Margins.Top = 6600
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45489.534622280090000000
      OptionsView.ExpandButtons = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link3: TcxDBVerticalGridReportLink
      Active = True
      Component = cxDBVerticalGrid2
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 10300
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45489.534622291660000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link4: TcxDBVerticalGridReportLink
      Component = cxDBVerticalGrid3
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
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link5: TcxPivotGridReportLink
      Active = True
      Component = cxDBPivotGrid2
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 4200
      PrinterPage.GrayShading = True
      PrinterPage.Header = 4200
      PrinterPage.Margins.Bottom = 4200
      PrinterPage.Margins.Left = 4200
      PrinterPage.Margins.Right = 4200
      PrinterPage.Margins.Top = 4200
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45489.534622314820000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link6: TcxPivotGridReportLink
      Active = True
      Component = cxDBPivotGrid3
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 4200
      PrinterPage.GrayShading = True
      PrinterPage.Header = 4200
      PrinterPage.Margins.Bottom = 4200
      PrinterPage.Margins.Left = 4200
      PrinterPage.Margins.Right = 4200
      PrinterPage.Margins.Top = 4200
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45489.534622326390000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link7: TcxPivotGridReportLink
      Active = True
      Component = cxDBPivotGrid4
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 4244
      PrinterPage.GrayShading = True
      PrinterPage.Header = 4244
      PrinterPage.Margins.Bottom = 4244
      PrinterPage.Margins.Left = 4243
      PrinterPage.Margins.Right = 4243
      PrinterPage.Margins.Top = 4244
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45489.534622326390000000
      OptionsView.DataFields = False
      OptionsView.ExpandButtons = False
      OptionsView.Prefilter = pfvNever
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link8: TcxPivotGridReportLink
      Active = True
      Component = cxDBPivotGrid5
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45489.534622337960000000
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object cxStyleRepository6: TcxStyleRepository
    Left = 812
    Top = 128
    PixelsPerInch = 96
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle26: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle27: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlue
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle14
      Styles.Content = cxStyle15
      Styles.ContentEven = cxStyle16
      Styles.ContentOdd = cxStyle17
      Styles.FilterBox = cxStyle18
      Styles.IncSearch = cxStyle24
      Styles.Footer = cxStyle19
      Styles.Group = cxStyle20
      Styles.GroupByBox = cxStyle21
      Styles.Header = cxStyle22
      Styles.Inactive = cxStyle23
      Styles.Indicator = cxStyle25
      Styles.Preview = cxStyle26
      Styles.Selection = cxStyle27
      BuiltIn = True
    end
  end
  object DSVentaDiaria: TDataSource
    DataSet = CDSVentaDiaria
    Left = 368
    Top = 384
  end
  object DSFiltrada: TDataSource
    DataSet = CDSVentasFiltrada
    Left = 388
    Top = 192
  end
  object DSPSaldoGastos: TDataSetProvider
    DataSet = QSaldoGastos
    Options = [poAllowCommandText]
    Left = 560
    Top = 184
  end
  object CDSSaldoGastos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'caja'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'caja'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Rubro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Rubro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPSaldoGastos'
    OnCalcFields = CDSSaldoGastosCalcFields
    Left = 616
    Top = 184
    object CDSSaldoGastosNROCPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      EditMask = 'a-0000-00000000;0; '
      Size = 13
    end
    object CDSSaldoGastosID_EGRESO: TIntegerField
      FieldName = 'ID_EGRESO'
      Origin = 'ID_EGRESO'
      ProviderFlags = []
    end
    object CDSSaldoGastosTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSSaldoGastosCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSSaldoGastosRUBROGASTO: TStringField
      DisplayLabel = 'Rub'
      FieldName = 'RUBROGASTO'
      Origin = 'RUBROGASTO'
      ProviderFlags = []
      Size = 3
    end
    object CDSSaldoGastosCODIGOGASTO: TStringField
      DisplayLabel = 'Cod.Gast.'
      FieldName = 'CODIGOGASTO'
      Origin = 'CODIGOGASTO'
      ProviderFlags = []
      Size = 6
    end
    object CDSSaldoGastosDETALLE: TStringField
      DisplayLabel = 'Detalle del Gsto.'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 100
    end
    object CDSSaldoGastosMUESTRARUBRO: TStringField
      DisplayLabel = 'Detalle Rubro'
      FieldName = 'MUESTRARUBRO'
      Origin = 'MUESTRARUBRO'
      ProviderFlags = []
      Size = 50
    end
    object CDSSaldoGastosMUESTRAIDCOMPROBANTE: TIntegerField
      FieldName = 'MUESTRAIDCOMPROBANTE'
      Origin = 'MUESTRAIDCOMPROBANTE'
      ProviderFlags = []
    end
    object CDSSaldoGastosMUESTRACTA: TStringField
      DisplayLabel = 'Detalle Cta'
      FieldName = 'MUESTRACTA'
      Origin = 'MUESTRACTA'
      ProviderFlags = []
      Size = 50
    end
    object CDSSaldoGastosIMPORTE: TFMTBCDField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      ProviderFlags = []
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSSaldoGastosFECHAGASTO: TSQLTimeStampField
      DisplayLabel = 'Fecha Gas.'
      FieldName = 'FECHAGASTO'
      Origin = 'FECHAGASTO'
      ProviderFlags = []
    end
    object CDSSaldoGastosID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      ProviderFlags = []
    end
    object CDSSaldoGastosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSSaldoGastosMES: TStringField
      DisplayLabel = 'Mes'
      FieldKind = fkCalculated
      FieldName = 'MES'
      Calculated = True
    end
  end
  object DSPGasto_Compra: TDataSetProvider
    DataSet = QGasto_Compra
    Options = [poAllowCommandText]
    Left = 560
    Top = 248
  end
  object CDSGasto_Compra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Rubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'caja'
        ParamType = ptInput
      end>
    ProviderName = 'DSPGasto_Compra'
    Left = 640
    Top = 248
    object CDSGasto_CompraNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0;'
      Size = 13
    end
    object CDSGasto_CompraID_EGRESO: TIntegerField
      FieldName = 'ID_EGRESO'
      Origin = 'ID_EGRESO'
    end
    object CDSGasto_CompraTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSGasto_CompraCLASECPBTE: TStringField
      DisplayLabel = 'Cla.'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSGasto_CompraRUBROGASTO: TStringField
      DisplayLabel = 'Cod.Rubro'
      FieldName = 'RUBROGASTO'
      Origin = 'RUBROGASTO'
      Size = 3
    end
    object CDSGasto_CompraCODIGOGASTO: TStringField
      DisplayLabel = 'Cta.Gasto'
      FieldName = 'CODIGOGASTO'
      Origin = 'CODIGOGASTO'
      Size = 6
    end
    object CDSGasto_CompraDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object CDSGasto_CompraMUESTRARUBRO: TStringField
      DisplayLabel = 'Detalle Rubro'
      FieldName = 'MUESTRARUBRO'
      Origin = 'MUESTRARUBRO'
      Size = 50
    end
    object CDSGasto_CompraMUESTRAIDCOMPROBANTE: TIntegerField
      DisplayLabel = 'Id-Cpbte'
      FieldName = 'MUESTRAIDCOMPROBANTE'
      Origin = 'MUESTRAIDCOMPROBANTE'
    end
    object CDSGasto_CompraMUESTRACTA: TStringField
      DisplayLabel = 'Detalle Cta'
      FieldName = 'MUESTRACTA'
      Origin = 'MUESTRACTA'
      Size = 50
    end
    object CDSGasto_CompraIMPORTE: TFMTBCDField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSGasto_CompraID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
    end
    object CDSGasto_CompraNOMBRE: TStringField
      DisplayLabel = 'Nombre Caja'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object CDSGasto_CompraFECHAGASTO: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHAGASTO'
      Origin = 'FECHAGASTO'
    end
    object CDSGasto_CompraMES: TStringField
      DisplayLabel = 'Mes'
      FieldKind = fkCalculated
      FieldName = 'MES'
      Calculated = True
    end
    object CDSGasto_CompraANIO: TIntegerField
      DisplayLabel = 'A'#241'o'
      FieldKind = fkCalculated
      FieldName = 'ANIO'
      Calculated = True
    end
    object CDSGasto_CompraCTRO_COSTO_NOM: TStringField
      DisplayLabel = 'Ctro de Costo'
      FieldName = 'CTRO_COSTO_NOM'
      Origin = 'CTRO_COSTO_NOM'
      Size = 45
    end
    object CDSGasto_CompraCTRO_COSTO_IMPUT: TFMTBCDField
      DisplayLabel = 'Imp.a Ctro Costo'
      FieldName = 'CTRO_COSTO_IMPUT'
      Origin = 'CTRO_COSTO_IMPUT'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSGasto_CompraCTRO_COSTO_PORCEN: TFMTBCDField
      DisplayLabel = '% Ctro Costo'
      FieldName = 'CTRO_COSTO_PORCEN'
      Origin = 'CTRO_COSTO_PORCEN'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
  end
  object DSSaldosGastos: TDataSource
    DataSet = CDSSaldoGastos
    Left = 688
    Top = 176
  end
  object DSPMovimientos_2: TDataSetProvider
    DataSet = QMovimientos_2
    Options = []
    Left = 216
    Top = 132
  end
  object CDSMovimientos_2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'anio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cliente'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'mes'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovimientos_2'
    Left = 297
    Top = 131
    object CDSMovimientos_2CODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo Art.'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSMovimientos_2DETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSMovimientos_2CANTIDAD: TFMTBCDField
      DisplayLabel = 'Cant.'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSMovimientos_2UNITARIO_GRAVADO: TFMTBCDField
      DisplayLabel = 'Unit.Grav'
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSMovimientos_2UNITARIO_EXENTO: TFMTBCDField
      DisplayLabel = 'Unit.Exen'
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSMovimientos_2UNITARIO_TOTAL: TFMTBCDField
      DisplayLabel = 'Unit.Total'
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSMovimientos_2IVA_UNITARIO: TFMTBCDField
      DisplayLabel = 'Iva Unit,'
      FieldName = 'IVA_UNITARIO'
      Origin = 'IVA_UNITARIO'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSMovimientos_2UNITARIO_FINAL: TFMTBCDField
      DisplayLabel = 'Unit.Final'
      FieldName = 'UNITARIO_FINAL'
      Origin = 'UNITARIO_FINAL'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSMovimientos_2TOTAL_GRAVADO: TFMTBCDField
      DisplayLabel = 'T.Grava.'
      FieldName = 'TOTAL_GRAVADO'
      Origin = 'TOTAL_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSMovimientos_2TOTAL_EXENTO: TFMTBCDField
      DisplayLabel = 'T.Exento'
      FieldName = 'TOTAL_EXENTO'
      Origin = 'TOTAL_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSMovimientos_2TOTAL: TFMTBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSMovimientos_2IVA_TOTAL: TFMTBCDField
      DisplayLabel = 'Iva Total'
      FieldName = 'IVA_TOTAL'
      Origin = 'IVA_TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSMovimientos_2TOTAL_FINAL: TFMTBCDField
      DisplayLabel = 'Total Fin.'
      FieldName = 'TOTAL_FINAL'
      Origin = 'TOTAL_FINAL'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSMovimientos_2ANIO: TSmallintField
      DisplayLabel = 'A'#241'o'
      FieldName = 'ANIO'
      Origin = 'ANIO'
    end
    object CDSMovimientos_2MES: TSmallintField
      DisplayLabel = 'Mes'
      FieldName = 'MES'
      Origin = 'MES'
    end
    object CDSMovimientos_2RUBRO: TStringField
      DisplayLabel = 'Cod.Rub'
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
      Size = 3
    end
    object CDSMovimientos_2SUBRUBRO: TStringField
      DisplayLabel = 'Cod.Sub'
      FieldName = 'SUBRUBRO'
      Origin = 'SUBRUBRO'
      Size = 5
    end
    object CDSMovimientos_2RUBRODETALLE: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'RUBRODETALLE'
      Origin = 'RUBRODETALLE'
      Size = 35
    end
    object CDSMovimientos_2SUBRUBRODETALL: TStringField
      DisplayLabel = 'Sub Rub.'
      FieldName = 'SUBRUBRODETALL'
      Origin = 'SUBRUBRODETALL'
      Size = 45
    end
    object CDSMovimientos_2SUCURSAL: TStringField
      DisplayLabel = 'Sucursal'
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Size = 35
    end
    object CDSMovimientos_2ZONA: TIntegerField
      DisplayLabel = 'Zona'
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object CDSMovimientos_2TIPO_VTA: TStringField
      DisplayLabel = 'Tipo Vta'
      FieldName = 'TIPO_VTA'
      Origin = 'TIPO_VTA'
      Size = 10
    end
    object CDSMovimientos_2LETRA: TStringField
      DisplayLabel = 'Letra'
      FieldName = 'LETRA'
      Origin = 'LETRA'
      Size = 1
    end
    object CDSMovimientos_2IVATASA: TFMTBCDField
      DisplayLabel = 'Tasa de Iva'
      FieldName = 'IVATASA'
      Origin = 'IVATASA'
      Precision = 15
      Size = 2
    end
    object CDSMovimientos_2MARCADETALLE: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCADETALLE'
      Origin = 'MARCADETALLE'
      Size = 25
    end
    object CDSMovimientos_2DIRECCION: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object CDSMovimientos_2ZONADETALLE: TStringField
      DisplayLabel = 'Zona Detalle'
      FieldName = 'ZONADETALLE'
      Origin = 'ZONADETALLE'
      Size = 25
    end
    object CDSMovimientos_2TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 2
    end
    object CDSMovimientos_2CLASE: TStringField
      DisplayLabel = 'Clase'
      FieldName = 'CLASE'
      Origin = 'CLASE'
      Size = 2
    end
    object CDSMovimientos_2NROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSMovimientos_2UNID_VTA: TStringField
      DisplayLabel = 'Uni.Vta'
      FieldName = 'UNID_VTA'
      Origin = 'UNID_VTA'
      Size = 3
    end
    object CDSMovimientos_2FECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSMovimientos_2COBRADOR: TStringField
      DisplayLabel = 'Cobrador'
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
      Size = 6
    end
    object CDSMovimientos_2COBRADOR_NOMBRE: TStringField
      DisplayLabel = 'Cobrador Nombre'
      FieldName = 'COBRADOR_NOMBRE'
      Origin = 'COBRADOR_NOMBRE'
      Size = 50
    end
    object CDSMovimientos_2MUESTRAMES: TStringField
      FieldKind = fkCalculated
      FieldName = 'MUESTRAMES'
      Calculated = True
    end
    object CDSMovimientos_2MUESTRASEMANA: TWordField
      DisplayLabel = 'Semana'
      FieldKind = fkCalculated
      FieldName = 'MUESTRASEMANA'
      Calculated = True
    end
    object CDSMovimientos_2OBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      Size = 60
    end
  end
  object DSMovimientos_2: TDataSource
    DataSet = CDSMovimientos_2
    Left = 368
    Top = 136
  end
  object DSPFinanciero: TDataSetProvider
    DataSet = QFinanciero
    Options = []
    Left = 212
    Top = 64
  end
  object DSFinanciero: TDataSource
    DataSet = CDSFinanciero
    Left = 372
    Top = 64
  end
  object cxPivotGridSummaryDataSet1: TcxPivotGridSummaryDataSet
    Left = 940
    Top = 120
  end
  object CDSFinanciero: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'anio'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFinanciero'
    OnCalcFields = CDSFinancieroCalcFields
    Left = 300
    Top = 64
    object CDSFinancieroTIPO_OPERACION: TStringField
      DisplayLabel = 'Operacion'
      FieldName = 'TIPO_OPERACION'
      Origin = 'TIPO_OPERACION'
      Size = 1
    end
    object CDSFinancieroTIPO_COMPROB: TStringField
      DisplayLabel = 'Tp.Comp'
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Size = 2
    end
    object CDSFinancieroCLASE_COMPROB: TStringField
      DisplayLabel = 'Cl.Comp'
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Size = 2
    end
    object CDSFinancieroMUESTRACOMPROBANTE: TStringField
      DisplayLabel = 'Comprobante'
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'MUESTRACOMPROBANTE'
    end
    object CDSFinancieroMUESTRATIPOPAGO: TStringField
      DisplayLabel = 'Tipo Pago'
      FieldName = 'MUESTRATIPOPAGO'
      Origin = 'MUESTRATIPOPAGO'
      Size = 15
    end
    object CDSFinancieroMUESTRAFORMAPAGO: TStringField
      DisplayLabel = 'Forma Pago'
      FieldName = 'MUESTRAFORMAPAGO'
      Origin = 'MUESTRAFORMAPAGO'
    end
    object CDSFinancieroMES: TSmallintField
      DisplayLabel = 'Mes'
      FieldName = 'MES'
      Origin = 'MES'
    end
    object CDSFinancieroANNO: TSmallintField
      DisplayLabel = 'A'#241'o'
      FieldName = 'ANNO'
      Origin = 'ANNO'
    end
    object CDSFinancieroIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldKind = fkCalculated
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object CDSFinancieroMUESTRAMES: TStringField
      DisplayLabel = 'Mes'
      FieldKind = fkCalculated
      FieldName = 'MUESTRAMES'
      Size = 12
      Calculated = True
    end
    object CDSFinancieroMUESTRAOPERACION: TStringField
      DisplayLabel = 'Operacion'
      FieldKind = fkCalculated
      FieldName = 'MUESTRAOPERACION'
      Size = 15
      Calculated = True
    end
    object CDSFinancieroDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSFinancieroHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSFinancieroSALDO_CC_VTA: TFloatField
      DisplayLabel = 'Saldo Deudores'
      FieldName = 'SALDO_CC_VTA'
      Origin = 'SALDO_CC_VTA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSFinancieroSALDO_CC_COMPRA: TFloatField
      DisplayLabel = 'Saldo Proveedores'
      FieldName = 'SALDO_CC_COMPRA'
      Origin = 'SALDO_CC_COMPRA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSFinancieroTOTAL_EFECTIVO: TFloatField
      DisplayLabel = 'Saldo Efectivo'
      FieldName = 'TOTAL_EFECTIVO'
      Origin = 'TOTAL_EFECTIVO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSFinancieroTOTAL_CHEQUES: TFloatField
      FieldName = 'TOTAL_CHEQUES'
      Origin = 'TOTAL_CHEQUES'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSFinancieroFECHA_OPERACION: TSQLTimeStampField
      DisplayLabel = 'Fecha Op.'
      FieldName = 'FECHA_OPERACION'
    end
  end
  object DSPEntregas: TDataSetProvider
    DataSet = QEntregas
    Options = []
    Left = 556
    Top = 64
  end
  object CDSEntregas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'anio'
        ParamType = ptInput
      end>
    ProviderName = 'DSPEntregas'
    OnCalcFields = CDSEntregasCalcFields
    Left = 612
    Top = 64
    object CDSEntregasFECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object CDSEntregasANIO: TSmallintField
      DisplayLabel = 'A'#241'o'
      FieldName = 'ANIO'
      Origin = 'ANIO'
    end
    object CDSEntregasMES: TSmallintField
      DisplayLabel = 'Mes'
      FieldName = 'MES'
      Origin = 'MES'
    end
    object CDSEntregasCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSEntregasDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSEntregasCANTIDAD: TFMTBCDField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSEntregasMUESTRAMES: TStringField
      DisplayLabel = 'Mes'
      FieldKind = fkInternalCalc
      FieldName = 'MUESTRAMES'
    end
    object CDSEntregasMUESTRASEMANA: TIntegerField
      DisplayLabel = 'Sem'
      FieldKind = fkInternalCalc
      FieldName = 'MUESTRASEMANA'
    end
    object CDSEntregasMUESTRADIA: TStringField
      DisplayLabel = 'Dia'
      FieldKind = fkInternalCalc
      FieldName = 'MUESTRADIA'
      Size = 10
    end
  end
  object DSEntregas: TDataSource
    DataSet = CDSEntregas
    Left = 676
    Top = 64
  end
  object QFinanciero: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select  i.*  from informe_financiero (:anio) i')
    Left = 156
    Top = 72
    ParamData = <
      item
        Position = 1
        Name = 'anio'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QMovimientos_2: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDouble
        TargetDataType = dtFmtBCD
      end>
    SQL.Strings = (
      
        'SELECT v.*  FROM VTAS_ANUAL_ARTIC_2 ( :anio, :codigo, :cliente,:' +
        'suc,:mes,'#39'V'#39' ) v'
      '')
    Left = 156
    Top = 128
    ParamData = <
      item
        Position = 1
        Name = 'anio'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'cliente'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'mes'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QVentasFiltrada: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDouble
        TargetDataType = dtFmtBCD
      end>
    SQL.Strings = (
      'select * from ventas_mensuales_con_filtros (:anio, :grupo,:suc)')
    Left = 156
    Top = 192
    ParamData = <
      item
        Position = 1
        Name = 'anio'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'grupo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QSucursales: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDouble
        TargetDataType = dtFmtBCD
      end>
    SQL.Strings = (
      'select s.codigo,s.detalle from sucursal s '
      'where (s.codigo = :codigo)  or( :codigo = -1'
      ')order by s.codigo'
      '')
    Left = 156
    Top = 256
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'codigo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QVentas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDouble
        TargetDataType = dtFmtBCD
      end>
    SQL.Strings = (
      'select * from ventas_mensuales (:anio,:suc)')
    Left = 148
    Top = 320
    ParamData = <
      item
        Position = 1
        Name = 'anio'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QVentasDiaria: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDouble
        TargetDataType = dtFmtBCD
      end>
    SQL.Strings = (
      'select * from ventas_mensuales_diaria (:desde,:hasta,:suc)')
    Left = 140
    Top = 392
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QEntregas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDouble
        TargetDataType = dtFmtBCD
      end>
    SQL.Strings = (
      
        'select e.* from entregas e where extract(year from e.fechavta) =' +
        ' :anio')
    Left = 500
    Top = 64
    ParamData = <
      item
        Position = 1
        Name = 'anio'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QSaldoGastos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDouble
        TargetDataType = dtFmtBCD
      end>
    SQL.Strings = (
      
        'select egc.nrocpbte,egc.id_egreso,egc.tipocpbte,egc.clasecpbte, ' +
        'eg.rubrogasto, eg.codigogasto,'
      
        'eg.detalle,rb.detalle as MuestraRubro,cpbte.id_comprobante as Mu' +
        'estraIdComprobante,'
      
        'cta.detalle as MuestraCta,eg.importe,eg.FechaGasto,cm.id_cuenta_' +
        'caja,cc.nombre,eg.id from Egr_caja_detalle eg'
      
        'left join gastos_cuentas cta on (cta.codigo=eg.codigogasto and c' +
        'ta.codigo_rubro=eg.rubrogasto)'
      'left join gastos_rubros rb on rb.codigo=eg.rubrogasto'
      'left join egr_caja egc on egc.id_egreso=eg.id_cpbte'
      'left join caja_mov cm on cm.tipo_comprob=egc.tipocpbte and'
      '                         cm.clase_comprob=egc.clasecpbte and'
      '                         cm.id_comprobante=egc.id_egreso'
      'left join cuenta_caja cc on cc.id_cuenta=cm.id_cuenta_caja'
      
        'left join comprobantes cpbte on cpbte.tipo_comprob=egc.tipocpbte' +
        ' and'
      
        '                                cpbte.clase_comprob=egc.clasecpb' +
        'te and'
      '                                cpbte.letra=egc.letra and'
      
        '                                cpbte.sucursal=egc.sucursalventa' +
        ' and'
      '                                cpbte.compra_venta='#39'C'#39
      'where eg.fechagasto between :desde and :Hasta'
      ' and ((egc.sucursalventa = :suc ) or ( :suc = -1 ))'
      
        ' and ((cm.id_cuenta_caja = :caja ) or ( :caja = -1 )) and (cm.id' +
        '_cuenta_caja<>0)'
      ' and ((eg.rubrogasto = :Rubro) or ( :Rubro = '#39'***'#39' ) )'
      ' and ((eg.codigogasto = :codigo ) or ( :codigo = '#39'******'#39' ))'
      ''
      
        'group by egc.nrocpbte,egc.id_egreso,egc.tipocpbte,egc.clasecpbte' +
        ', eg.rubrogasto, eg.codigogasto,'
      
        'eg.detalle,rb.detalle,cpbte.id_comprobante,cta.detalle,eg.import' +
        'e, eg.FechaGasto,cm.id_cuenta_caja,cc.nombre,eg.id'
      ' order by eg.rubrogasto,eg.codigogasto,eg.FechaGasto'
      '')
    Left = 500
    Top = 184
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'Hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'caja'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'caja'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'Rubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'Rubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 10
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QGasto_Compra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDouble
        TargetDataType = dtFmtBCD
      end>
    SQL.Strings = (
      
        'select * from test_saldos (:desde,:hasta,:suc,:rubro,:codigo,:ca' +
        'ja)')
    Left = 492
    Top = 248
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'Hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'Rubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'caja'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QInfCruzado: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end>
    SQL.Strings = (
      
        'select f.id_fc,f.tipocpbte,f.clasecpbte,f.nrocpbte,f.codigo,f.no' +
        'mbre,f.sucursal,s.detalle as MuestraSucursal,c.denominacion as M' +
        'uestraComprob,'
      
        '       extract(year from f.fechavta) as Anio,extract(month from ' +
        'f.fechavta) as Mes,(f.netograv2+f.netoexen2) as TotalNeto,f.tota' +
        'l'
      'from fcvtacab f'
      'left join sucursal s on s.codigo=f.sucursal'
      'left join comprobantes c on c.letra=f.letrafac and'
      '                            c.tipo_comprob=f.tipocpbte and'
      '                            c.clase_comprob=f.clasecpbte and'
      '                            c.sucursal =f.sucursal and'
      '                            c.compra_venta='#39'V'#39
      'where f.fechavta between :desde and :hasta and f.anulado<>'#39'S'#39
      '')
    Left = 484
    Top = 304
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object QLimpiaCCTemCompra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from tabla_tmp_movcccomp')
    Left = 492
    Top = 384
  end
  object spArmarTemporalCCCompra: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'MOV_CTACTE_COM_CON_CPBTE'
    Left = 636
    Top = 384
  end
  object QlimpiaCCTemVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from tabla_tmp_movccvta')
    Left = 492
    Top = 440
  end
  object spArmarTemporalCCVta: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'MOV_CTACTE_VTA_CON_CPBTE'
    Left = 636
    Top = 440
  end
  object JvFormStorage: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    Options = [fpState, fpSize, fpLocation, fpActiveControl]
    StoredValues = <>
    Left = 456
    Top = 488
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    AutoFlush = True
    SubStorages = <>
    Left = 520
    Top = 512
  end
  object PopupMenu1: TPopupMenu
    Left = 388
    Top = 560
    object LimpiarFiltros1: TMenuItem
      Caption = 'Limpiar Filtros'
      OnClick = LimpiarFiltros1Click
    end
  end
end
