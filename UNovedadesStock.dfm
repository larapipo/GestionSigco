object FormNovedadesStock: TFormNovedadesStock
  Left = 95
  Top = 77
  Caption = 'Novedades de Stock'
  ClientHeight = 679
  ClientWidth = 1193
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
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1193
    Height = 634
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Novedades'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1185
        Height = 606
        Align = alClient
        TabOrder = 0
        OnDblClick = Panel1DblClick
        object lb1: TLabel
          Left = 217
          Top = 17
          Width = 79
          Height = 13
          Caption = 'Listas de Precios'
        end
        object Label1: TLabel
          Left = 902
          Top = 17
          Width = 30
          Height = 13
          Caption = 'Desde'
        end
        object Label2: TLabel
          Left = 1016
          Top = 17
          Width = 28
          Height = 13
          Caption = 'Hasta'
        end
        object dbgStock: TJvDBGrid
          Left = 1
          Top = 70
          Width = 1183
          Height = 535
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DSNovedades
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = dbgStockDblClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO_STK'
              Title.Alignment = taCenter
              Title.Color = clMoneyGreen
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE_STK'
              Title.Alignment = taCenter
              Title.Color = clMoneyGreen
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 286
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FIJACION_PRECIO_TOTAL'
              Title.Alignment = taCenter
              Title.Color = clMoneyGreen
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FIJACION_PRECIO_FINAL'
              Title.Alignment = taCenter
              Title.Color = clMoneyGreen
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FECHA_ALTA'
              Title.Alignment = taCenter
              Title.Color = clMoneyGreen
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FUAP'
              Title.Alignment = taCenter
              Title.Color = clMoneyGreen
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECIOLISTA'
              Title.Alignment = taCenter
              Title.Color = clMoneyGreen
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMBRELISTA'
              Title.Alignment = taCenter
              Title.Color = clMoneyGreen
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 240
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FACTUALIZACIOPRECIO'
              Title.Alignment = taCenter
              Width = 94
              Visible = True
            end>
        end
        object RadioGroup1: TRadioGroup
          Left = 16
          Top = 6
          Width = 185
          Height = 58
          Caption = 'Articulos que'
          ItemIndex = 0
          Items.Strings = (
            'Son nuevos.'
            'Modificaron su Precio')
          TabOrder = 1
          OnClick = RadioGroup1Click
        end
        object dbclistaPrecios: TJvDBLookupCombo
          Left = 217
          Top = 36
          Width = 331
          Height = 21
          DropDownWidth = 300
          DisplayAllFields = True
          Color = clWhite
          DisplayEmpty = 'Todas las Listas de Precios'
          EmptyValue = '-1'
          LookupField = 'ID_LISTA'
          LookupDisplay = 'NOMBRE'
          LookupSource = DSlistaprecios
          TabOrder = 2
          OnClick = dbclistaPreciosClick
        end
        object Desde: TJvDateEdit
          Left = 902
          Top = 36
          Width = 89
          Height = 21
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
          TabOrder = 3
          OnAcceptDate = DesdeAcceptDate
        end
        object Hasta: TJvDateEdit
          Left = 1014
          Top = 36
          Width = 89
          Height = 21
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
          TabOrder = 4
          OnAcceptDate = HastaAcceptDate
        end
        object UpDown1: TUpDown
          Left = 1110
          Top = 36
          Width = 16
          Height = 20
          Hint = 'Cambia el Per'#237'odo'
          Max = 10000
          ParentShowHint = False
          Position = 100
          ShowHint = True
          TabOrder = 5
          OnClick = UpDown1Click
        end
        object chbporDia: TCheckBox
          Left = 766
          Top = 16
          Width = 112
          Height = 17
          Caption = 'Sincro. Dia x Dia'
          TabOrder = 6
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Historial Cambio Precio'
      ImageIndex = 1
      object Label3: TLabel
        Left = 882
        Top = 6
        Width = 139
        Height = 13
        Caption = 'Traer Novedades A Partir del'
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 38
        Width = 1185
        Height = 568
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DSHistorico
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.FocusRect = False
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1CODIGO_STK: TcxGridDBColumn
            DataBinding.FieldName = 'CODIGO_STK'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
            Options.CellMerging = True
            Width = 61
          end
          object cxGrid1DBTableView1DETALLE_STK: TcxGridDBColumn
            DataBinding.FieldName = 'DETALLE_STK'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
            Options.CellMerging = True
          end
          object cxGrid1DBTableView1FECHA: TcxGridDBColumn
            DataBinding.FieldName = 'FECHA'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 110
          end
          object cxGrid1DBTableView1COSTO_OLD: TcxGridDBColumn
            Caption = 'Costo Viejo'
            DataBinding.FieldName = 'COSTO_OLD'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
          end
          object cxGrid1DBTableView1COSTO_NEW: TcxGridDBColumn
            Caption = 'Costo Nuevo'
            DataBinding.FieldName = 'COSTO_NEW'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 92
          end
          object cxGrid1DBTableView1FPRECIO_OLD: TcxGridDBColumn
            Caption = 'Precio Viejo'
            DataBinding.FieldName = 'FPRECIO_OLD'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
          end
          object cxGrid1DBTableView1FPRECIO_NEW: TcxGridDBColumn
            Caption = 'Precio Nuevo'
            DataBinding.FieldName = 'FPRECIO_NEW'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 95
          end
          object cxGrid1DBTableView1DETALLE_RUBRO: TcxGridDBColumn
            DataBinding.FieldName = 'DETALLE_RUBRO'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
          end
          object cxGrid1DBTableView1DETALLE_SUBRUBRO: TcxGridDBColumn
            DataBinding.FieldName = 'DETALLE_SUBRUBRO'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
          end
          object cxGrid1DBTableView1MOTIVO: TcxGridDBColumn
            DataBinding.FieldName = 'MOTIVO'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 240
          end
          object cxGrid1DBTableView1USUARIO: TcxGridDBColumn
            Caption = 'Usuario'
            DataBinding.FieldName = 'USUARIO'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
          end
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            DataBinding.FieldName = 'NOMBRE'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object FechaDesde: TJvDateEdit
        Left = 1040
        Top = 3
        Width = 89
        Height = 21
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
        TabOrder = 1
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 634
    Width = 1193
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    Color = clHighlight
    ParentBackground = False
    TabOrder = 1
    object btBuscar: TBitBtn
      Left = 916
      Top = 6
      Width = 93
      Height = 29
      Action = Buscar
      Caption = 'Buscar'
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
      TabOrder = 0
    end
    object btSalir: TBitBtn
      Left = 1028
      Top = 6
      Width = 102
      Height = 29
      Hint = 'Cerrar la ventana actual'
      Caption = '&Salir'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0004490600055B0900066C0C00066C0C00055E
        0A00044C0600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0005600900056009000891130009B0180009B31A0009B3190009B1
        19000796140005680C0005680C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000A6A15000A7F15000BB61C0009B91A0008B4180007B2160009B3190009B4
        190009B81A0009B91A0007831000044D0600FF00FF00FF00FF00FF00FF000B6A
        15000F85220016BD340011B727000BB21C0007B1160008B1170009B2190009B2
        190009B2190009B4190009BA1A000784100006670C00FF00FF00FF00FF000B6A
        150020BE49001BBD400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE
        6D0009B2190009B2190009B3190009BA1A0006670C00FF00FF00087210001B9A
        3A002AC65B001DBB45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FD
        F8005ACB650009B2190009B2190009B81A0008941300045D0900087210002AB6
        5B002CC5650022BD4D000FB422000AB21A000CB31C000AB219008DDB9500FDFE
        FD00F6FCF70058CB630009B2190009B51A0008AB1700045D09000F821C0037C2
        6C0033C76C00CDF1DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FD
        F900FFFFFF00F2FBF3006FD2790008B4190009B3190005650B00138D230058CC
        830042C97700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFE
        FD00FFFFFF00FFFFFF00BCEAC1000AB41A0009B31900066D0D000F911D006FD2
        93005FD38D006DD4950072D6990071D6980072D6990064D28C0092DFA800FBFE
        FB00FFFFFF00ACE5B8002EBF4C0011B82B0008B1190005610A000F911D0067CC
        83009BE5BA0038C6700030C3690038C56F0038C56F0070D69700E8F8EE00FFFF
        FF009FE2B10020BD48001AB93E0010BA290008A3170005610A00FF00FF0025AE
        3900BCEDD20082DBA40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2
        B20022BC4B001DBA410018B7360014C030000A851700FF00FF00FF00FF0025AE
        390071D28C00D2F4E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2
        630024BE560023BC4D001FC1460016AE34000A851700FF00FF00FF00FF00FF00
        FF0025AE390084D89F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA
        7B0048CB780039CB6A0021B649000F7C1F00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0025AE390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2
        B30064D492002FB157002FB15700FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0032B74E0025AE390025AE390025AE390025AE
        390024A34200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 1
      OnClick = btSalirClick
    end
    object BitBtn1: TBitBtn
      Left = 824
      Top = 6
      Width = 86
      Height = 29
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
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 680
      Top = 7
      Width = 106
      Height = 26
      Caption = 'Exportar Excel'
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
      TabOrder = 3
      OnClick = BitBtn2Click
    end
  end
  object QNovedades: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk, s.detalle_stk, s.fijacion_precio_exento,s.f' +
        'ijacion_precio_gravado,s.fijacion_precio_iva,s.fijacion_precio_f' +
        'inal, s.fijacion_precio_total,'
      
        's.rubro_stk, r.detalle_rubro, s.subrubro_stk ,sr.detalle_subrubr' +
        'o,s.fecha_alta,s.fuap,'
      
        'lp.costo_exento as CostoEnetoLista,lp.costo_gravado as CostoGrav' +
        'Lista,lp.costo_total as CostoTotLista,'
      'lp.recargo as RecargiLista, lp.descuento as DescuentoLista,'
      
        'lp.precio_exento as PrecioExeLista,lp.precio_gravado as PrecioGr' +
        'avLista,lp.iva_importe as PrecioIvaLista, lp.precio as PrecioLis' +
        'ta,lp.fecha as FActualizacioPrecio,'
      'lpc.nombre as NombreLIsta from stock s'
      'left join rubros r on r.codigo_rubro=s.rubro_stk'
      'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      
        'left join listaprecioespecialart lp on lp.codigoarticulo=s.codig' +
        'o_stk'
      'left join listaprecioespecialcab lpc on lpc.id = lp.id_cab'
      'where ( s.clase_articulo in (1,2,3)) and'
      '  case '
      
        '    when :modo=0 Then ((s.fecha_alta between :desde and :hasta )' +
        ')'
      
        '    when :modo=1 then ((s.fuap between :desde and :hasta) or (lp' +
        '.fecha between :desde and :hasta)) and (s.fuap<>s.fecha_alta)'
      '  end'
      '  and ( lpc.id = :lista or :lista = -1 )'
      'order by lpc.id,s.codigo_stk')
    Left = 632
    Top = 232
    ParamData = <
      item
        Position = 3
        Name = 'modo'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'lista'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object CDSNovedades: TClientDataSet
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
        Name = 'modo'
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
      end
      item
        DataType = ftInteger
        Name = 'modo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'lista'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'lista'
        ParamType = ptInput
      end>
    ProviderName = 'DSPNovedades'
    Left = 416
    Top = 224
    object CDSNovedadesCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSNovedadesDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSNovedadesFIJACION_PRECIO_EXENTO: TFloatField
      FieldName = 'FIJACION_PRECIO_EXENTO'
      Origin = 'FIJACION_PRECIO_EXENTO'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSNovedadesFIJACION_PRECIO_GRAVADO: TFloatField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Origin = 'FIJACION_PRECIO_GRAVADO'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSNovedadesFIJACION_PRECIO_IVA: TFloatField
      FieldName = 'FIJACION_PRECIO_IVA'
      Origin = 'FIJACION_PRECIO_IVA'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSNovedadesFIJACION_PRECIO_FINAL: TFloatField
      DisplayLabel = 'Costo Final'
      FieldName = 'FIJACION_PRECIO_FINAL'
      Origin = 'FIJACION_PRECIO_FINAL'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSNovedadesFIJACION_PRECIO_TOTAL: TFloatField
      DisplayLabel = 'Costo S/Iva'
      FieldName = 'FIJACION_PRECIO_TOTAL'
      Origin = 'FIJACION_PRECIO_TOTAL'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSNovedadesRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      Required = True
      Size = 3
    end
    object CDSNovedadesDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      Size = 35
    end
    object CDSNovedadesSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      Required = True
      Size = 5
    end
    object CDSNovedadesDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      Size = 45
    end
    object CDSNovedadesFECHA_ALTA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'F.de Alta'
      FieldName = 'FECHA_ALTA'
      Origin = 'FECHA_ALTA'
    end
    object CDSNovedadesFUAP: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Ult.Act.Costo'
      FieldName = 'FUAP'
      Origin = 'FUAP'
    end
    object CDSNovedadesCOSTOENETOLISTA: TFloatField
      FieldName = 'COSTOENETOLISTA'
      Origin = 'COSTO_EXENTO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSNovedadesCOSTOGRAVLISTA: TFloatField
      FieldName = 'COSTOGRAVLISTA'
      Origin = 'COSTO_GRAVADO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSNovedadesCOSTOTOTLISTA: TFloatField
      FieldName = 'COSTOTOTLISTA'
      Origin = 'COSTO_TOTAL'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSNovedadesRECARGILISTA: TFloatField
      FieldName = 'RECARGILISTA'
      Origin = 'RECARGO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSNovedadesDESCUENTOLISTA: TFloatField
      FieldName = 'DESCUENTOLISTA'
      Origin = 'DESCUENTO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSNovedadesPRECIOEXELISTA: TFloatField
      FieldName = 'PRECIOEXELISTA'
      Origin = 'PRECIO_EXENTO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSNovedadesPRECIOGRAVLISTA: TFloatField
      FieldName = 'PRECIOGRAVLISTA'
      Origin = 'PRECIO_GRAVADO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSNovedadesPRECIOIVALISTA: TFloatField
      FieldName = 'PRECIOIVALISTA'
      Origin = 'IVA_IMPORTE'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSNovedadesPRECIOLISTA: TFloatField
      DisplayLabel = 'Precio de Lista'
      FieldName = 'PRECIOLISTA'
      Origin = 'PRECIO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSNovedadesNOMBRELISTA: TStringField
      DisplayLabel = 'Lista'
      FieldName = 'NOMBRELISTA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object CDSNovedadesFACTUALIZACIOPRECIO: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Prec.Actual.'
      FieldName = 'FACTUALIZACIOPRECIO'
      Origin = 'FECHA'
      ProviderFlags = []
    end
  end
  object DSPNovedades: TDataSetProvider
    DataSet = QNovedades
    Left = 536
    Top = 264
  end
  object DSNovedades: TDataSource
    DataSet = CDSNovedades
    Left = 456
    Top = 280
  end
  object ActionList1: TActionList
    Left = 824
    Top = 232
    object Buscar: TAction
      Caption = 'Buscar'
      OnExecute = BuscarExecute
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
    Left = 704
    Top = 376
  end
  object frxReporte: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39951.704104814820000000
    ReportOptions.LastChange = 39951.704145497690000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 832
    Top = 336
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
      object ReportTitle1: TfrxReportTitle
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
        Height = 22.677180000000000000
        Top = 83.149660000000000000
        Width = 718.110700000000000000
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
  end
  object frNovedades: TfrxDBDataset
    UserName = 'frNovedades'
    CloseDataSource = False
    DataSource = DSNovedades
    BCDToCurrency = False
    DataSetOptions = []
    Left = 896
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
        FieldName = 'FIJACION_PRECIO_EXENTO'
        FieldAlias = 'FIJACION_PRECIO_EXENTO'
      end
      item
        FieldName = 'FIJACION_PRECIO_GRAVADO'
        FieldAlias = 'FIJACION_PRECIO_GRAVADO'
      end
      item
        FieldName = 'FIJACION_PRECIO_IVA'
        FieldAlias = 'FIJACION_PRECIO_IVA'
      end
      item
        FieldName = 'FIJACION_PRECIO_FINAL'
        FieldAlias = 'FIJACION_PRECIO_FINAL'
      end
      item
        FieldName = 'FIJACION_PRECIO_TOTAL'
        FieldAlias = 'FIJACION_PRECIO_TOTAL'
      end
      item
        FieldName = 'RUBRO_STK'
        FieldAlias = 'RUBRO_STK'
      end
      item
        FieldName = 'DETALLE_RUBRO'
        FieldAlias = 'DETALLE_RUBRO'
      end
      item
        FieldName = 'SUBRUBRO_STK'
        FieldAlias = 'SUBRUBRO_STK'
      end
      item
        FieldName = 'DETALLE_SUBRUBRO'
        FieldAlias = 'DETALLE_SUBRUBRO'
      end
      item
        FieldName = 'FECHA_ALTA'
        FieldAlias = 'FECHA_ALTA'
      end
      item
        FieldName = 'FUAP'
        FieldAlias = 'FUAP'
      end
      item
        FieldName = 'COSTOENETOLISTA'
        FieldAlias = 'COSTOENETOLISTA'
      end
      item
        FieldName = 'COSTOGRAVLISTA'
        FieldAlias = 'COSTOGRAVLISTA'
      end
      item
        FieldName = 'COSTOTOTLISTA'
        FieldAlias = 'COSTOTOTLISTA'
      end
      item
        FieldName = 'RECARGILISTA'
        FieldAlias = 'RECARGILISTA'
      end
      item
        FieldName = 'DESCUENTOLISTA'
        FieldAlias = 'DESCUENTOLISTA'
      end
      item
        FieldName = 'PRECIOEXELISTA'
        FieldAlias = 'PRECIOEXELISTA'
      end
      item
        FieldName = 'PRECIOGRAVLISTA'
        FieldAlias = 'PRECIOGRAVLISTA'
      end
      item
        FieldName = 'PRECIOIVALISTA'
        FieldAlias = 'PRECIOIVALISTA'
      end
      item
        FieldName = 'PRECIOLISTA'
        FieldAlias = 'PRECIOLISTA'
      end
      item
        FieldName = 'NOMBRELISTA'
        FieldAlias = 'NOMBRELISTA'
      end>
  end
  object DataToXLS: TDataToXLS
    DataSet = CDSNovedades
    Columns = <
      item
        DataField = 'CODIGO_STK'
        Title = 'Codigo'
        ColWidth = 1924
      end
      item
        DataField = 'DETALLE_STK'
        Title = 'Detalle'
        ColWidth = 10582
      end
      item
        DataField = 'FIJACION_PRECIO_TOTAL'
        Title = 'Costo S/Iva'
        Alignment = taRightJustify
        ColWidth = 3700
        DataType = ctDouble
      end
      item
        DataField = 'FIJACION_PRECIO_FINAL'
        Title = 'Costo Final'
        Alignment = taRightJustify
        ColWidth = 3700
        DataType = ctDouble
      end
      item
        DataField = 'FECHA_ALTA'
        Title = 'F.de Alta'
        ColWidth = 3885
      end
      item
        DataField = 'FUAP'
        Title = 'Ult.Act.Precio'
        ColWidth = 3515
      end
      item
        DataField = 'PRECIOLISTA'
        Title = 'Precio de Lista'
        Alignment = taRightJustify
        ColWidth = 3700
        DataType = ctDouble
      end
      item
        DataField = 'NOMBRELISTA'
        Title = 'Lista'
        ColWidth = 8880
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
    Left = 456
    Top = 392
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'XLS'
    Left = 544
    Top = 392
  end
  object DSlistaprecios: TDataSource
    DataSet = CDSListaPrecios
    Left = 720
    Top = 152
  end
  object QListaPrecios: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select l.id as id_lista,l.nombre from listaprecioespecialcab l')
    Left = 656
    Top = 160
    object intgrfldQListaPrecID_LISTA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_LISTA'
    end
    object QListaPreciosNOMBRE: TStringField
      DisplayWidth = 50
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object DSPListaPrecios: TDataSetProvider
    DataSet = QListaPrecios
    Left = 608
    Top = 160
  end
  object CDSListaPrecios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPListaPrecios'
    Left = 544
    Top = 160
    object CDSListaPreciosID_LISTA: TIntegerField
      FieldName = 'ID_LISTA'
    end
    object CDSListaPreciosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object QHistorico: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select sh.*,s.detalle_stk, r.codigo_rubro,r.detalle_rubro,sr.cod' +
        'igo_subrubro,'
      '       sr.detalle_subrubro,fc.nombre from stock s'
      'left join rubros r on r.codigo_rubro=s.rubro_stk'
      'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      
        'left join stock_historial_precio sh on sh.codigo_stk=s.codigo_st' +
        'k and sh.fecha >= :fecha'
      'left join fccompcab fc on fc.id_fc=sh.id_fc_compra'
      'where sh.fecha >= :fecha'
      'order by sh.codigo_stk, sh.fecha')
    Left = 148
    Top = 80
    ParamData = <
      item
        Name = 'fecha'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'fecha'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object CDSHistorico: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'fecha'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'fecha'
        ParamType = ptInput
      end>
    ProviderName = 'DSPHistorico'
    Left = 300
    Top = 80
    object CDSHistoricoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSHistoricoCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object CDSHistoricoID_CAMBIO_PRECIO_GENERAL: TIntegerField
      FieldName = 'ID_CAMBIO_PRECIO_GENERAL'
    end
    object CDSHistoricoFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
    object CDSHistoricoMOTIVO: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'MOTIVO'
      Size = 50
    end
    object CDSHistoricoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSHistoricoCOSTO_GRAVADO_OLD: TFloatField
      FieldName = 'COSTO_GRAVADO_OLD'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSHistoricoCOSTO_EXENTO_OLD: TFloatField
      FieldName = 'COSTO_EXENTO_OLD'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSHistoricoCOSTO_OLD: TFloatField
      FieldName = 'COSTO_OLD'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSHistoricoF_PRECIO_GRAVADO_OLD: TFloatField
      FieldName = 'F_PRECIO_GRAVADO_OLD'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSHistoricoF_PRECIO_EXENTO_OLD: TFloatField
      FieldName = 'F_PRECIO_EXENTO_OLD'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSHistoricoFPRECIO_OLD: TFloatField
      FieldName = 'FPRECIO_OLD'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSHistoricoCOSTO_GRAVADO_NEW: TFloatField
      FieldName = 'COSTO_GRAVADO_NEW'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSHistoricoCOSTO_EXENTO_NEW: TFloatField
      FieldName = 'COSTO_EXENTO_NEW'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSHistoricoCOSTO_NEW: TFloatField
      FieldName = 'COSTO_NEW'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSHistoricoF_PRECIO_GRAVADO_NEW: TFloatField
      FieldName = 'F_PRECIO_GRAVADO_NEW'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSHistoricoF_PRECIO_EXENTO_NEW: TFloatField
      FieldName = 'F_PRECIO_EXENTO_NEW'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSHistoricoFPRECIO_NEW: TFloatField
      FieldName = 'FPRECIO_NEW'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSHistoricoID_FC_COMPRA: TIntegerField
      FieldName = 'ID_FC_COMPRA'
    end
    object CDSHistoricoCODIGO_RUBRO: TStringField
      DisplayLabel = 'Cod.Rubro'
      FieldName = 'CODIGO_RUBRO'
      Size = 3
    end
    object CDSHistoricoDETALLE_RUBRO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'DETALLE_RUBRO'
      Size = 35
    end
    object CDSHistoricoCODIGO_SUBRUBRO: TStringField
      DisplayLabel = 'Cod.Sub.'
      FieldName = 'CODIGO_SUBRUBRO'
      Size = 5
    end
    object CDSHistoricoDETALLE_SUBRUBRO: TStringField
      DisplayLabel = 'Sub Rubro'
      FieldName = 'DETALLE_SUBRUBRO'
      Size = 45
    end
    object CDSHistoricoDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object CDSHistoricoNOMBRE: TStringField
      DisplayLabel = 'Proveedor'
      FieldName = 'NOMBRE'
      Size = 35
    end
  end
  object DSPHistorico: TDataSetProvider
    DataSet = QHistorico
    Left = 220
    Top = 80
  end
  object DSHistorico: TDataSource
    DataSet = CDSHistorico
    Left = 388
    Top = 96
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.WindowState = wsMaximized
    Version = 0
    Left = 901
    Top = 192
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
      PrinterPage.Margins.Left = 5000
      PrinterPage.Margins.Right = 5000
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageHeader.CenterTitle.Strings = (
        '[Date Printed]')
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -16
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.PageHeader.LeftTextAlignY = taTop
      PrinterPage.PageHeader.LeftTitle.Strings = (
        'Historico de Precios'
        ''
        '')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45678.466513113420000000
      TimeFormat = 0
      OptionsCards.KeepSameHeight = False
      OptionsExpanding.ExpandMasterRows = True
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Headers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsPagination.TopLevelGroup = True
      OptionsPreview.AutoHeight = False
      OptionsPreview.Visible = False
      OptionsView.Footers = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
end
