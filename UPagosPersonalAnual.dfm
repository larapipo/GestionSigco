object FormPagosPersonalAnual: TFormPagosPersonalAnual
  Left = 267
  Top = 35
  Caption = 'Inform Anual de Pagos a Personal'
  ClientHeight = 834
  ClientWidth = 1238
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pcVentas: TPageControl
    Left = 0
    Top = 0
    Width = 1238
    Height = 834
    ActivePage = pag1
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1121
    ExplicitHeight = 529
    object pag1: TTabSheet
      Caption = 'Informe Anual'
      object pnCabecera: TPanel
        Left = 0
        Top = 0
        Width = 1230
        Height = 45
        Align = alTop
        TabOrder = 0
        DesignSize = (
          1230
          45)
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
          Left = 492
          Top = 0
          Width = 40
          Height = 13
          Caption = 'Sucursal'
        end
        object chbActivos: TCheckBox
          Left = 1056
          Top = 9
          Width = 137
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'Solo Personal Activo'
          TabOrder = 0
          ExplicitLeft = 947
        end
        object dbcSucursal: TJvDBLookupCombo
          Left = 491
          Top = 16
          Width = 225
          Height = 21
          DisplayEmpty = 'Todas las Sucursales'
          EmptyValue = '-1'
          LookupField = 'CODIGO'
          LookupDisplay = 'DETALLE'
          LookupSource = DSSucursal
          TabOrder = 1
        end
        object AdvSpinEdit1: TAdvSpinEdit
          Left = 64
          Top = 7
          Width = 121
          Height = 31
          Color = clWhite
          Value = 1900
          FloatValue = 1900.000000000000000000
          HexDigits = 0
          HexValue = 0
          FlatLineColor = 11250603
          BorderColor = 11250603
          FocusColor = clNone
          FocusFontColor = 3881787
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          IncrementFloat = 0.100000000000000000
          IncrementFloatPage = 1.000000000000000000
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clBlue
          LabelFont.Height = -19
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          Visible = True
          Version = '2.0.2.6'
          OnClick = AdvSpinEdit1Click
          OnDownClick = AdvSpinEdit1DownClick
          ButtonColor = clWhite
          ButtonColorHot = 15917525
          ButtonColorDown = 14925219
          ButtonTextColor = 2303013
          ButtonTextColorHot = 2303013
          ButtonTextColorDown = 2303013
        end
      end
      object cxDBPivotGrid1: TcxDBPivotGrid
        Left = 0
        Top = 45
        Width = 1230
        Height = 720
        Align = alClient
        DataSource = DSPagos
        Groups = <>
        OptionsView.ColumnGrandTotalText = 'Total'
        OptionsView.DataFields = False
        OptionsView.FilterFields = False
        OptionsView.RowGrandTotalText = 'Total'
        TabOrder = 1
        ExplicitTop = 41
        ExplicitWidth = 1113
        ExplicitHeight = 460
        object cxDBPivotGrid1Field1: TcxDBPivotGridField
          AreaIndex = 0
          DataBinding.FieldName = 'CODIGO'
          Visible = True
          UniqueName = 'Codigo'
        end
        object cxDBPivotGrid1Field2: TcxDBPivotGridField
          Area = faColumn
          AreaIndex = 0
          DataBinding.ValueType = 'Integer'
          DataBinding.FieldName = 'MES'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Orientation = cxoRight
          Properties.PenWidth = 20
          Properties.WordWrap = True
          TotalsVisibility = tvNone
          Visible = True
          Width = 80
          UniqueName = 'Mes'
        end
        object cxDBPivotGrid1Field3: TcxDBPivotGridField
          AreaIndex = 1
          DataBinding.FieldName = 'NOMBRECATEGORIA'
          Options.Moving = False
          GroupExpanded = False
          TotalsVisibility = tvNone
          Visible = True
          Width = 120
          UniqueName = 'Categoria'
        end
        object cxDBPivotGrid1Field4: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 0
          DataBinding.FieldName = 'NOMBREEMPLEAD'
          Options.Moving = False
          GroupExpanded = False
          Visible = True
          Width = 250
          UniqueName = 'Nombre'
        end
        object cxDBPivotGrid1Field5: TcxDBPivotGridField
          Area = faData
          AreaIndex = 0
          DataBinding.FieldName = 'TOTAL_PERSONAL'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ',0.00'
          Visible = True
          UniqueName = 'Importe'
        end
        object cxDBPivotGrid1Field6: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 1
          DataBinding.FieldName = 'NOMBRECPBTE'
          Options.Moving = False
          GroupExpanded = False
          TotalsVisibility = tvNone
          Visible = True
          Width = 150
          UniqueName = 'Comprobante'
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 765
        Width = 1230
        Height = 41
        Align = alBottom
        TabOrder = 2
        ExplicitLeft = 544
        ExplicitTop = 460
        ExplicitWidth = 185
        DesignSize = (
          1230
          41)
        object btSalirVentas: TBitBtn
          Left = 1020
          Top = 4
          Width = 82
          Height = 30
          Anchors = [akTop, akRight]
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
          TabOrder = 0
          OnClick = btSalirVentasClick
          ExplicitLeft = 903
        end
        object btBuscarVtas: TBitBtn
          Left = 1108
          Top = 4
          Width = 81
          Height = 30
          Action = Buscar
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
          TabOrder = 1
          ExplicitLeft = 991
        end
        object btExcelAnual: TBitBtn
          Left = 79
          Top = 4
          Width = 87
          Height = 30
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
        object BitBtn1: TBitBtn
          Left = 856
          Top = 4
          Width = 87
          Height = 30
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
          OnClick = BitBtn1Click
          ExplicitLeft = 752
        end
      end
    end
  end
  object DSPPagos: TDataSetProvider
    DataSet = QPagos
    Left = 272
    Top = 496
  end
  object CDSPagos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'anio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'activo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPagos'
    Left = 336
    Top = 488
    object CDSPagosCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object CDSPagosNOMBREEMPLEAD: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBREEMPLEAD'
      Origin = 'NOMBREEMPLEAD'
      Size = 35
    end
    object CDSPagosNOMBRECATEGORIA: TStringField
      DisplayLabel = 'Categoria'
      FieldName = 'NOMBRECATEGORIA'
      Origin = 'NOMBRECATEGORIA'
      Size = 30
    end
    object CDSPagosMES: TIntegerField
      DisplayLabel = 'Mes'
      FieldName = 'MES'
      Origin = 'MES'
      OnGetText = CDSPagosMESGetText
    end
    object CDSPagosNOMBRECPBTE: TStringField
      DisplayLabel = 'Comprobante'
      FieldName = 'NOMBRECPBTE'
      Origin = 'NOMBRECPBTE'
      Size = 15
    end
    object CDSPagosTOTAL_PERSONAL: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'TOTAL_PERSONAL'
      Origin = 'TOTAL_PERSONAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSSucursal: TDataSource
    DataSet = CDSSucursal
    Left = 605
    Top = 230
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 544
    Top = 232
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
    Left = 480
    Top = 232
  end
  object DSPagos: TDataSource
    DataSet = CDSPagos
    Left = 404
    Top = 488
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 764
    Top = 320
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TcxPivotGridReportLink
      Active = True
      Component = cxDBPivotGrid1
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6100
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 6400
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45987.678784363420000000
      OptionsExpanding.AutoExpandColumns = True
      OptionsExpanding.AutoExpandRows = True
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object SaveDialog: TSaveDialog
    Left = 837
    Top = 243
  end
  object QPagos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from PAGOS_PERSONAL_MENSUALES  (:anio,:activo,:sucursal' +
        ')')
    Left = 204
    Top = 488
    ParamData = <
      item
        Position = 1
        Name = 'anio'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'activo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ActionList1: TActionList
    Left = 924
    Top = 528
    object Buscar: TAction
      Caption = 'Buscar'
      OnExecute = BuscarExecute
    end
  end
end
