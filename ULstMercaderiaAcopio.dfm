object FormLstMercaderiaAcopio: TFormLstMercaderiaAcopio
  Left = 345
  Top = 103
  Caption = 'Mercadera en Acopio'
  ClientHeight = 654
  ClientWidth = 922
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 901
    Height = 593
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Agrupado'
      object pnCabecera: TPanel
        Left = 0
        Top = 0
        Width = 893
        Height = 25
        Align = alTop
        TabOrder = 0
        object JvGradient1: TJvGradient
          Left = 1
          Top = 1
          Width = 891
          Height = 23
          Style = grVertical
          StartColor = clWhite
          EndColor = clGradientActiveCaption
          ExplicitLeft = -71
          ExplicitTop = 65
          ExplicitWidth = 900
        end
      end
      object pnPie: TPanel
        Left = 0
        Top = 514
        Width = 893
        Height = 41
        Align = alTop
        TabOrder = 1
        object JvGradient2: TJvGradient
          Left = 1
          Top = 1
          Width = 891
          Height = 39
          Style = grVertical
          StartColor = clWhite
          EndColor = clGradientActiveCaption
          ExplicitLeft = 632
          ExplicitTop = 8
          ExplicitWidth = 100
          ExplicitHeight = 41
        end
        object btBuscar: TBitBtn
          Left = 816
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Buscar'
          TabOrder = 0
          OnClick = btBuscarClick
        end
        object BitBtn1: TBitBtn
          Left = 17
          Top = 6
          Width = 96
          Height = 28
          Caption = 'Exportar XLS'
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
          TabOrder = 1
          OnClick = BitBtn1Click
        end
        object BitBtn2: TBitBtn
          Left = 119
          Top = 6
          Width = 75
          Height = 28
          Caption = 'Imprimir'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF006C6A6A006C6A6A00FF00FF00FF00FF006C6A6A006C6A
            6A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF006C6A6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3
            E3006C6A6A006C6A6A006C6A6A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF006C6A6A00DAD9D900A19F9F00A19F9F00A19F9F0037363600353535006C6D
            6D00BFBFBF00E1E2E200B7B6B6006C6A6A006C6A6A006C6A6A00FF00FF006C6A
            6A00D4D3D300CACACA008E8C8C008E8C8C008E8C8C003C3B3B000A090A000707
            07000B0B0B00070707007A7A7A00BBBBBB006C6A6A00FF00FF006C6A6A00CACA
            CA00CACACA008E8C8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A0008886
            86005E5B5C000707070009090900080808006C6A6A00767373006C6A6A00CACA
            CA008E8C8C00EFEEEE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCE
            CE00BDBCBC00ADABAB008B898900585656007A787800757373006C6A6A008E8C
            8C00FFFFFF00FEFCFC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0
            C100D7D7D700D8D8D800C7C6C600B7B6B600918F8F006C696900FF00FF006C6A
            6A006C6A6A00EDEBEB00B1A6A7007A6F72008A83880096929500969091009D97
            98009A9395009E989900BBBABA00D1D1D100C2C2C2006C6A6A00FF00FF00FF00
            FF00FF00FF006C6A6A00BB897F00A7876D008B6F64007D6760006F6265007973
            79008F8B8E00A9A3A400CBCACA00C1C1C1006C6A6A00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00BD828100FFE3B400FFD39F00E9B28100C9997300BA91
            6C00BD828100807D7E006C6A6A006C6A6A00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC6
            8800BD828100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00C0868300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD82
            8100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00BD828100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD82
            8100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00BD828100FFFFF200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD82
            8100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00BD828100BD828100BD828100FBEFE200FBE3CF00FBDDC200BD828100FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00BD828100BD828100BD828100FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 2
          OnClick = BitBtn2Click
        end
      end
      object dbgDetalle: TcxGrid
        Left = 0
        Top = 25
        Width = 893
        Height = 489
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object dbgDetalleDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = True
          Navigator.Buttons.GotoBookmark.Visible = True
          Navigator.Buttons.Filter.Visible = True
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DSMercaAcopio
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <
            item
              Links = <
                item
                  Column = dbgDetalleDBTableView1CLIENTE
                end
                item
                  Column = dbgDetalleDBTableView1NOMBRE
                end>
              SummaryItems = <
                item
                end>
            end>
          OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
          object dbgDetalleDBTableView1CLIENTE: TcxGridDBColumn
            DataBinding.FieldName = 'CLIENTE'
            Visible = False
            GroupIndex = 0
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.ShowEditButtons = isebNever
          end
          object dbgDetalleDBTableView1NOMBRE: TcxGridDBColumn
            DataBinding.FieldName = 'NOMBRE'
            Visible = False
            GroupIndex = 1
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.ShowEditButtons = isebNever
          end
          object dbgDetalleDBTableView1DIRECCION: TcxGridDBColumn
            DataBinding.FieldName = 'DIRECCION'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.ShowEditButtons = isebNever
          end
          object dbgDetalleDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.ShowEditButtons = isebNever
          end
          object dbgDetalleDBTableView1ID_FACTURA: TcxGridDBColumn
            DataBinding.FieldName = 'ID_FACTURA'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.ShowEditButtons = isebNever
            Width = 77
          end
          object dbgDetalleDBTableView1CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'CODIGO'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.ShowEditButtons = isebNever
            Width = 63
          end
          object dbgDetalleDBTableView1DETALLE: TcxGridDBColumn
            DataBinding.FieldName = 'DETALLE'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.ShowEditButtons = isebNever
            Width = 291
          end
          object dbgDetalleDBTableView1NROCPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'NROCPBTE'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.ShowEditButtons = isebNever
            Width = 114
          end
          object dbgDetalleDBTableView1CANTIDAD: TcxGridDBColumn
            DataBinding.FieldName = 'CANTIDAD'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.ShowEditButtons = isebNever
          end
          object dbgDetalleDBTableView1ENTREGADO: TcxGridDBColumn
            DataBinding.FieldName = 'ENTREGADO'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.ShowEditButtons = isebNever
          end
          object dbgDetalleDBTableView1SALDO: TcxGridDBColumn
            DataBinding.FieldName = 'SALDO'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.ShowEditButtons = isebNever
          end
        end
        object dbgDetalleLevel1: TcxGridLevel
          GridView = dbgDetalleDBTableView1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '-----'
      ImageIndex = 1
    end
  end
  object QMercaAcopio: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select cab.cliente,cab.nombre,cab.direccion,cab.id_factura,cab.i' +
        'd,cab.nrocpbte,'
      
        '       det.codigo,det.detalle,det.cantidad,det.entregado,det.sal' +
        'do'
      '  from merca_enacopio_cab cab'
      'left join merca_enacopio_det det on det.id_cab=cab.id'
      'where cab.Cumplido <> '#39'S'#39
      '')
    Left = 416
    Top = 432
  end
  object DSPMercaAcopio: TDataSetProvider
    DataSet = QMercaAcopio
    UpdateMode = upWhereKeyOnly
    Left = 496
    Top = 424
  end
  object CDSMercaAcopio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMercaAcopio'
    Left = 568
    Top = 424
    object CDSMercaAcopioCLIENTE: TStringField
      DisplayLabel = 'Cod.Cliente'
      FieldName = 'CLIENTE'
      Required = True
      Size = 6
    end
    object CDSMercaAcopioNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSMercaAcopioDIRECCION: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSMercaAcopioID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Required = True
    end
    object CDSMercaAcopioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSMercaAcopioNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSMercaAcopioCODIGO: TStringField
      DisplayLabel = 'Cod.Stk'
      FieldName = 'CODIGO'
      Size = 8
    end
    object CDSMercaAcopioDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSMercaAcopioCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00;-,0.00;-'
    end
    object CDSMercaAcopioENTREGADO: TFloatField
      DisplayLabel = 'Entregado'
      FieldName = 'ENTREGADO'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00;-,0.00;-'
    end
    object CDSMercaAcopioSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00;-,0.00;-'
    end
  end
  object DSMercaAcopio: TDataSource
    DataSet = CDSMercaAcopio
    Left = 640
    Top = 424
  end
  object SaveDialog1: TSaveDialog
    Left = 456
    Top = 368
  end
  object dxComponentPrinter1: TdxComponentPrinter
    Version = 0
    Left = 640
    Top = 328
    PixelsPerInch = 96
  end
end
