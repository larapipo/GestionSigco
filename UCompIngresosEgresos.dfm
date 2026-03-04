object FormComposicionIngEgre: TFormComposicionIngEgre
  Left = 152
  Top = 93
  Caption = 'Composicion de Ingresos y Egresos'
  ClientHeight = 635
  ClientWidth = 1011
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
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1011
    Height = 599
    Align = alClient
    TabOrder = 0
    OnDblClick = Panel1DblClick
    DesignSize = (
      1011
      599)
    object Label5: TLabel
      Left = 6
      Top = 58
      Width = 86
      Height = 16
      Caption = 'Total de Vtas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 6
      Top = 108
      Width = 60
      Height = 16
      Caption = 'Vtas C.Cte'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 6
      Top = 83
      Width = 55
      Height = 16
      Caption = 'Vtas.Ctdo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 248
      Top = 58
      Width = 95
      Height = 16
      Caption = 'Total de Recibos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 9
      Top = 207
      Width = 117
      Height = 16
      Caption = 'Total de Ingresos '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 6
      Top = 170
      Width = 100
      Height = 16
      Caption = 'Total de O.Ingr.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 9
      Top = 234
      Width = 156
      Height = 16
      Caption = 'Composici'#243'n del Ingreso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 530
      Top = 67
      Width = 102
      Height = 16
      Caption = 'Total de Compras'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 530
      Top = 94
      Width = 86
      Height = 16
      Caption = 'Compras C.Cte'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 530
      Top = 121
      Width = 90
      Height = 16
      Caption = 'Compras.Ctdo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 771
      Top = 67
      Width = 96
      Height = 16
      Caption = 'Total O. de Pago'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 529
      Top = 207
      Width = 107
      Height = 16
      Caption = 'Total de Egresos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 527
      Top = 147
      Width = 100
      Height = 16
      Caption = 'Total de Gastos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 551
      Top = 234
      Width = 150
      Height = 16
      Caption = 'Composici'#243'n del Egreso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 527
      Top = 173
      Width = 112
      Height = 16
      Caption = 'Total de Personal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 771
      Top = 146
      Width = 92
      Height = 16
      Caption = 'Total Dep.Bco.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 248
      Top = 138
      Width = 120
      Height = 16
      Caption = 'Total de Reem.Val.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 771
      Top = 94
      Width = 69
      Height = 16
      Caption = 'Retenciones'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 248
      Top = 85
      Width = 69
      Height = 16
      Caption = 'Retenciones'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 275
      Top = 207
      Width = 79
      Height = 16
      Caption = 'Ing - Egre ='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 268
      Top = 196
      Width = 233
      Height = 39
    end
    object Label27: TLabel
      Left = 772
      Top = 121
      Width = 84
      Height = 16
      Caption = 'Total Pagado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label28: TLabel
      Left = 248
      Top = 112
      Width = 90
      Height = 16
      Caption = 'Total Cobrado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 250
      Top = 170
      Width = 97
      Height = 16
      Caption = 'Cobros de Che.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 769
      Top = 173
      Width = 99
      Height = 16
      Caption = 'Total de Res.TC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label29: TLabel
      Left = 6
      Top = 140
      Width = 95
      Height = 16
      Caption = 'Notas de Credito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object pnCabecera: TPanel
      Left = 1
      Top = 1
      Width = 1009
      Height = 51
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      Padding.Left = 1
      Padding.Right = 1
      Padding.Bottom = 2
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 765
        Top = 3
        Width = 34
        Height = 14
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 876
        Top = 3
        Width = 30
        Height = 14
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 18
        Top = 3
        Width = 99
        Height = 14
        Caption = 'Sucursal de Venta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 672
        Top = 3
        Width = 86
        Height = 14
        Caption = 'Periodo de Vta.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object desde: TJvDateEdit
        Left = 765
        Top = 18
        Width = 105
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
        TabOrder = 0
      end
      object hasta: TJvDateEdit
        Left = 876
        Top = 18
        Width = 105
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
      object UpDown1: TUpDown
        Left = 979
        Top = 18
        Width = 16
        Height = 20
        Hint = 'Cambia el Per'#237'odo'
        Min = -32600
        Max = 32600
        ParentShowHint = False
        Position = 100
        ShowHint = True
        TabOrder = 2
        OnClick = UpDown1Click
      end
      object dbcSucursal: TJvDBLookupCombo
        Left = 16
        Top = 22
        Width = 217
        Height = 21
        DisplayEmpty = 'Todas las Sucursales'
        EmptyValue = '-1'
        LookupField = 'CODIGO'
        LookupDisplay = 'DETALLE'
        LookupSource = DSSucursales
        TabOrder = 3
        OnClick = BuscarExecute
      end
    end
    object edTotalVtas: TJvCalcEdit
      Left = 129
      Top = 55
      Width = 116
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 1
      DecimalPlacesAlwaysShown = False
    end
    object edTotaVtaCtaCte: TJvCalcEdit
      Left = 129
      Top = 108
      Width = 116
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 2
      DecimalPlacesAlwaysShown = False
    end
    object edTotalVtaCtdo: TJvCalcEdit
      Left = 129
      Top = 80
      Width = 116
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
    end
    object edTotalCobranza: TJvCalcEdit
      Left = 373
      Top = 55
      Width = 118
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 4
      DecimalPlacesAlwaysShown = False
    end
    object edTotalGralIngresos: TJvCalcEdit
      Left = 129
      Top = 204
      Width = 116
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 5
      DecimalPlacesAlwaysShown = False
    end
    object edTotalOtrosIngresos: TJvCalcEdit
      Left = 129
      Top = 166
      Width = 116
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 6
      DecimalPlacesAlwaysShown = False
    end
    object cxGrid1: TcxGrid
      Left = 9
      Top = 256
      Width = 536
      Height = 332
      Anchors = [akLeft, akTop, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 7
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      RootLevelOptions.DetailTabsPosition = dtpTop
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSSaldoMov_I
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            Position = spFooter
            FieldName = 'DEBE'
            Column = cxGrid1DBTableView1DEBE
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            Column = cxGrid1DBTableView1DEBE
            DisplayText = 'Total'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.GroupSummaryLayout = gslAlignWithColumns
        object cxGrid1DBTableView1TIPOPPAGO: TcxGridDBColumn
          DataBinding.FieldName = 'TIPOPPAGO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.CellMerging = True
          Width = 141
        end
        object cxGrid1DBTableView1TIPOOP: TcxGridDBColumn
          DataBinding.FieldName = 'TIPOOP'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 136
        end
        object cxGrid1DBTableView1DEBE: TcxGridDBColumn
          DataBinding.FieldName = 'DEBE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 111
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'FPAGO'
          HeaderAlignmentHorz = taCenter
          Width = 126
        end
      end
      object cxGrid1DBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSMovTc
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            FieldName = 'IMPORTE'
            Column = cxGrid1DBTableView2IMPORTE
            DisplayText = 'Total'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView2TARJETACREDITO: TcxGridDBColumn
          DataBinding.FieldName = 'TARJETACREDITO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.CellMerging = True
          Width = 133
        end
        object cxGrid1DBTableView2FECHA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 93
        end
        object cxGrid1DBTableView2FECHA_ACREDITACION: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA_ACREDITACION'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 88
        end
        object cxGrid1DBTableView2FECHAACREDITACION_PROBABLE: TcxGridDBColumn
          DataBinding.FieldName = 'FECHAACREDITACION_PROBABLE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 92
        end
        object cxGrid1DBTableView2IMPORTE: TcxGridDBColumn
          DataBinding.FieldName = 'IMPORTE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 100
        end
      end
      object cxGrid1DBTableView3: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSMovTC_ACobrar
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            FieldName = 'IMPORTE'
            Column = cxGrid1DBTableView3IMPORTE
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView3TARJETACREDITO: TcxGridDBColumn
          DataBinding.FieldName = 'TARJETACREDITO'
          HeaderAlignmentHorz = taCenter
          Options.CellMerging = True
          Width = 128
        end
        object cxGrid1DBTableView3FECHA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA'
          HeaderAlignmentHorz = taCenter
          Width = 101
        end
        object cxGrid1DBTableView3FECHA_ACREDITACION: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA_ACREDITACION'
          HeaderAlignmentHorz = taCenter
          Width = 85
        end
        object cxGrid1DBTableView3FECHAACREDITACION_PROBABLE: TcxGridDBColumn
          DataBinding.FieldName = 'FECHAACREDITACION_PROBABLE'
          HeaderAlignmentHorz = taCenter
          Width = 96
        end
        object cxGrid1DBTableView3IMPORTE: TcxGridDBColumn
          DataBinding.FieldName = 'IMPORTE'
          HeaderAlignmentHorz = taCenter
          Width = 104
        end
      end
      object cxGrid1Level1: TcxGridLevel
        Caption = 'Movimiento Valores'
        GridView = cxGrid1DBTableView1
      end
      object cxGrid1Level2: TcxGridLevel
        Caption = 'Tarjetas de Credito'
        GridView = cxGrid1DBTableView2
      end
      object cxGrid1Level3: TcxGridLevel
        Caption = 'Tarjetas Sin Acreditar'
        GridView = cxGrid1DBTableView3
      end
    end
    object edTotalCompras: TJvCalcEdit
      Left = 650
      Top = 64
      Width = 115
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 8
      DecimalPlacesAlwaysShown = False
    end
    object edTotalComprCtaCte: TJvCalcEdit
      Left = 650
      Top = 91
      Width = 115
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 9
      DecimalPlacesAlwaysShown = False
    end
    object edTotalComprCtdo: TJvCalcEdit
      Left = 650
      Top = 118
      Width = 115
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 10
      DecimalPlacesAlwaysShown = False
    end
    object edTotalOPagos: TJvCalcEdit
      Left = 882
      Top = 64
      Width = 118
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 11
      DecimalPlacesAlwaysShown = False
    end
    object edTotalGralEgresos: TJvCalcEdit
      Left = 650
      Top = 204
      Width = 115
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 12
      DecimalPlacesAlwaysShown = False
    end
    object edTotalGastos: TJvCalcEdit
      Left = 650
      Top = 144
      Width = 115
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 13
      DecimalPlacesAlwaysShown = False
    end
    object cxGrid2: TcxGrid
      Left = 551
      Top = 256
      Width = 449
      Height = 332
      Anchors = [akLeft, akTop, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      LevelTabs.CaptionAlignment = taLeftJustify
      LevelTabs.Style = 8
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.Text = '..'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      RootLevelOptions.DetailTabsPosition = dtpTop
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSSaldoMov_E
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            FieldName = 'DEBE'
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            FieldName = 'HABER'
            Column = cxGridDBTableView1HABER
            DisplayText = 'Total'
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <>
            SummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                FieldName = 'DEBE'
                Column = cxGridDBTableView1HABER
                DisplayText = 'Total'
              end>
          end>
        OptionsData.Editing = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGridDBTableView1TIPOPPAGO: TcxGridDBColumn
          DataBinding.FieldName = 'TIPOPPAGO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.CellMerging = True
          Width = 141
        end
        object cxGridDBTableView1TIPOOP: TcxGridDBColumn
          DataBinding.FieldName = 'TIPOOP'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 184
        end
        object cxGridDBTableView1HABER: TcxGridDBColumn
          DataBinding.FieldName = 'HABER'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Width = 93
        end
      end
      object cxGridLevel1: TcxGridLevel
        Caption = 'Movimiento Valores'
        GridView = cxGridDBTableView1
      end
    end
    object edTotalPersonal: TJvCalcEdit
      Left = 650
      Top = 170
      Width = 115
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 15
      DecimalPlacesAlwaysShown = False
    end
    object edTotalDepositos: TJvCalcEdit
      Left = 882
      Top = 143
      Width = 118
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 16
      DecimalPlacesAlwaysShown = False
    end
    object edTotalReemplazos: TJvCalcEdit
      Left = 373
      Top = 136
      Width = 118
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 17
      DecimalPlacesAlwaysShown = False
    end
    object edTotalRetenciones: TJvCalcEdit
      Left = 882
      Top = 91
      Width = 118
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 18
      DecimalPlacesAlwaysShown = False
    end
    object edTotalRet_Rec: TJvCalcEdit
      Left = 373
      Top = 82
      Width = 118
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 19
      DecimalPlacesAlwaysShown = False
    end
    object edTotalDiferencia: TJvCalcEdit
      Left = 362
      Top = 204
      Width = 128
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 20
      DecimalPlacesAlwaysShown = False
    end
    object edTotaldePagos: TJvCalcEdit
      Left = 882
      Top = 118
      Width = 118
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 21
      DecimalPlacesAlwaysShown = False
    end
    object edTotalCobrado: TJvCalcEdit
      Left = 373
      Top = 109
      Width = 118
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 22
      DecimalPlacesAlwaysShown = False
    end
    object edTotalCobrosCheque: TJvCalcEdit
      Left = 373
      Top = 166
      Width = 118
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 23
      DecimalPlacesAlwaysShown = False
    end
    object edTotalResTC: TJvCalcEdit
      Left = 882
      Top = 169
      Width = 118
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 24
      DecimalPlacesAlwaysShown = False
    end
    object edTotalNC: TJvCalcEdit
      Left = 129
      Top = 136
      Width = 116
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 25
      DecimalPlacesAlwaysShown = False
    end
    object chDepositos: TCheckBox
      Left = 848
      Top = 218
      Width = 134
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Excluir Deposito Banco'
      TabOrder = 26
      OnClick = chDepositosClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 599
    Width = 1011
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    Padding.Left = 1
    Padding.Top = 2
    Padding.Right = 1
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      1011
      36)
    object btBuscar: TBitBtn
      Left = 820
      Top = 6
      Width = 80
      Height = 28
      Action = Buscar
      Anchors = [akTop, akRight]
      Caption = '&Buscar'
      TabOrder = 0
    end
    object Button1: TButton
      Left = 9
      Top = 8
      Width = 125
      Height = 19
      Caption = 'Filtrar comprobantes'
      TabOrder = 1
      OnClick = Button1Click
    end
    object btImprimir: TBitBtn
      Left = 717
      Top = 6
      Width = 80
      Height = 28
      Anchors = [akTop, akRight]
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
      TabOrder = 2
      OnClick = btImprimirClick
    end
    object btSalir: TBitBtn
      Left = 921
      Top = 6
      Width = 75
      Height = 29
      Hint = 'Cerrar la ventana actual'
      Caption = 'Salir'
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
      TabOrder = 3
      OnClick = btSalirClick
    end
  end
  object DSVtas: TDataSource
    DataSet = QVtas
    Left = 128
    Top = 352
  end
  object ActionList1: TActionList
    Left = 888
    Top = 312
    object Buscar: TAction
      Caption = '&Buscar'
      Hint = 'Buscar Registro'
      ImageIndex = 0
      ShortCut = 16397
      OnExecute = BuscarExecute
    end
  end
  object DSSucursales: TDataSource
    DataSet = CDSSucursal
    Left = 552
    Top = 480
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 392
    Top = 488
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
    Left = 472
    Top = 488
  end
  object DSRecibos: TDataSource
    DataSet = QRecibos
    Left = 128
    Top = 296
  end
  object CDSSaldoMov_I: TClientDataSet
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
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSaldosMov'
    Left = 640
    Top = 280
    object CDSSaldoMov_ITIPOPPAGO: TStringField
      DisplayLabel = 'Tipo Pago'
      FieldName = 'TIPOPPAGO'
      Origin = 'TIPOPPAGO'
      ProviderFlags = []
      Size = 25
    end
    object CDSSaldoMov_IFPAGO: TStringField
      DisplayLabel = 'Forma Pag.'
      FieldName = 'FPAGO'
      Origin = 'FPAGO'
      ProviderFlags = []
      Size = 25
    end
    object CDSSaldoMov_ITIPOOP: TStringField
      DisplayLabel = 'Tipo.Op'
      FieldName = 'TIPOOP'
      Origin = 'TIPOOP'
      ProviderFlags = []
      Size = 25
    end
    object CDSSaldoMov_ITIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = []
      Size = 1
    end
    object CDSSaldoMov_IDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSSaldoMov_IHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSSaldoMov_ITIPO_CPBTE: TStringField
      FieldName = 'TIPO_CPBTE'
      Origin = 'TIPO_CPBTE'
      ProviderFlags = []
      Size = 2
    end
  end
  object CDSSaldoMov_E: TClientDataSet
    Aggregates = <>
    Filter = 'tipo_cpbte<>'#39'CC'#39' and tipo='#39'E'#39' and tipo_cpbte<>'#39'QR'#39
    Filtered = True
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
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSaldoMov_E'
    Left = 640
    Top = 336
    object CDSSaldoMov_ETIPOPPAGO: TStringField
      DisplayLabel = 'Tipo Pago'
      FieldName = 'TIPOPPAGO'
      Origin = 'TIPOPPAGO'
      ProviderFlags = []
      Size = 25
    end
    object CDSSaldoMov_EFPAGO: TStringField
      FieldName = 'FPAGO'
      Origin = 'FPAGO'
      ProviderFlags = []
      Size = 25
    end
    object CDSSaldoMov_ETIPOOP: TStringField
      DisplayLabel = 'Tipo Op.'
      FieldName = 'TIPOOP'
      Origin = 'TIPOOP'
      ProviderFlags = []
      Size = 25
    end
    object CDSSaldoMov_ETIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = []
      Size = 1
    end
    object CDSSaldoMov_EDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
      ProviderFlags = []
    end
    object CDSSaldoMov_EHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSSaldoMov_ETIPO_CPBTE: TStringField
      FieldName = 'TIPO_CPBTE'
      Origin = 'TIPO_CPBTE'
      ProviderFlags = []
      Size = 2
    end
  end
  object DSPSaldosMov: TDataSetProvider
    DataSet = QSaldosMov
    Left = 544
    Top = 280
  end
  object DSSaldoMov_I: TDataSource
    DataSet = CDSSaldoMov_I
    Left = 720
    Top = 272
  end
  object DSSaldoMov_E: TDataSource
    DataSet = CDSSaldoMov_E
    Left = 720
    Top = 336
  end
  object DSPCompr: TDataSetProvider
    DataSet = QCompr
    Left = 696
    Top = 440
  end
  object CDSComp: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
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
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCompr'
    Left = 744
    Top = 432
    object CDSCompTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSCompMES: TSmallintField
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      Required = True
    end
    object CDSCompANIO: TSmallintField
      FieldName = 'ANIO'
      Origin = 'ANIO'
      ProviderFlags = []
      Required = True
    end
    object CDSCompSUCURSALCOMPRA: TIntegerField
      FieldName = 'SUCURSALCOMPRA'
      Origin = 'SUCURSALCOMPRA'
      Required = True
    end
    object CDSCompDESCSUCURSAL: TStringField
      FieldName = 'DESCSUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSCompTIPOCOMPROBANT: TStringField
      FieldName = 'TIPOCOMPROBANT'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object CDSCompDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object CDSCompTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object CDSCompFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
      Required = True
    end
  end
  object DSCompr: TDataSource
    DataSet = CDSComp
    Left = 808
    Top = 448
  end
  object DSOPago: TDataSource
    DataSet = QOPago
    Left = 624
    Top = 400
  end
  object DSPSaldoMov_E: TDataSetProvider
    DataSet = QSaldosMov
    Left = 544
    Top = 328
  end
  object DSPPersonal: TDataSetProvider
    DataSet = QPersonal
    Left = 592
    Top = 528
  end
  object CDSPersonal: TClientDataSet
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
    ProviderName = 'DSPPersonal'
    Left = 632
    Top = 520
    object CDSPersonalTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSPersonalCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSPersonalFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object CDSPersonalIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
  end
  object DSPDepositos: TDataSetProvider
    DataSet = QDepositos
    Left = 544
    Top = 576
  end
  object CDSDepositos: TClientDataSet
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
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDepositos'
    Left = 616
    Top = 576
    object CDSDepositosSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object CDSDepositosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object CDSDepositosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
  end
  object DSMovTc: TDataSource
    AutoEdit = False
    DataSet = QMovTc
    Left = 176
    Top = 552
  end
  object DSMovTC_ACobrar: TDataSource
    AutoEdit = False
    DataSet = QMovTC_ACobrar
    Left = 176
    Top = 504
  end
  object DSReemp: TDataSource
    DataSet = QReemp
    Left = 160
    Top = 400
  end
  object frxReporte: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41677.481537291660000000
    ReportOptions.LastChange = 41677.481537291660000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 776
    Top = 608
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frEgr: TfrxDBDataset
    UserName = 'frEgr'
    CloseDataSource = False
    DataSource = DSSaldoMov_E
    BCDToCurrency = False
    DataSetOptions = []
    Left = 904
    Top = 416
  end
  object frIng: TfrxDBDataset
    UserName = 'frIng'
    CloseDataSource = False
    DataSource = DSSaldoMov_I
    BCDToCurrency = False
    DataSetOptions = []
    Left = 864
    Top = 416
  end
  object QRecibos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select r.fecha,'
      '       extract( month from r.fecha ) as Mes,'
      
        '       extract( year from r.fecha ) as Anio,r.sucursal,s.detalle' +
        ' as DescSucursal,'
      '       tc.detalle as TipoComprobant,cp.denominacion,r.total,'
      
        '       (select sum(ret.importe ) from mov_retenciones ret where ' +
        'ret.id_cpbte=r.id_rc and ret.tipocpbte = r.tipocpbte) as Ret_Per' +
        'cibidas from recibos r'
      'left join sucursal s on s.codigo=r.sucursal'
      'left join comprobantes cp on cp.tipo_comprob=r.tipocpbte and'
      '                             cp.clase_comprob=r.clasecpbte and'
      '                             cp.letra=r.letrarc and'
      '                             cp.sucursal=r.sucursal and'
      '                             cp.compra_venta='#39'V'#39
      'left join tipo_comprobante tc on tc.sigla=cp.tipo_comprob'
      
        'where ( r.sucursal = :suc or :suc = -1 ) and r.fecha between :de' +
        'sde and :hasta and'
      '       ( r.tipocpbte = :tipo or :tipo = '#39'**'#39' ) and'
      
        '       ( cp.id_comprobante in ( select icp.id from id_comprobant' +
        'es icp ))')
    Left = 64
    Top = 280
    ParamData = <
      item
        Name = 'SUC'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DESDE'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
    object QRecibosMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRecibosANIO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANIO'
      Origin = 'ANIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRecibosSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QRecibosDESCSUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCSUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QRecibosTIPOCOMPROBANT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOCOMPROBANT'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRecibosDENOMINACION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QRecibosTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QRecibosRET_PERCIBIDAS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'RET_PERCIBIDAS'
      Origin = 'RET_PERCIBIDAS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRecibosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
  end
  object QVtas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select f.tipocpbte,f.fechavta,'
      '       extract( month from f.fechavta ) as Mes,'
      
        '       extract( year from f.fechavta ) as Anio,f.sucursal,s.deta' +
        'lle as DescSucursal,'
      
        '       tc.detalle as TipoComprobant,cp.denominacion,f.total,f.nc' +
        '_contado from fcvtacab f'
      'left join sucursal s on s.codigo=f.sucursal'
      'left join comprobantes cp on cp.tipo_comprob=f.tipocpbte and'
      '                             cp.clase_comprob=f.clasecpbte and'
      '                             cp.letra=f.letrafac and'
      '                             cp.sucursal=f.sucursal and'
      '                             cp.compra_venta='#39'V'#39
      'left join tipo_comprobante tc on tc.sigla=cp.tipo_comprob'
      
        'where ( f.sucursal = :suc or :suc = -1 ) and f.fechavta between ' +
        ':desde and :hasta and'
      
        '        f.anulado<>'#39'S'#39' and ( f.tipocpbte = :tipo or :tipo = '#39'**'#39 +
        ' ) and'
      
        '       (cp.id_comprobante in ( select icp.id from id_comprobante' +
        's icp ))')
    Left = 72
    Top = 352
    ParamData = <
      item
        Name = 'SUC'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DESDE'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
    object QVtasTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QVtasMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      ReadOnly = True
    end
    object QVtasANIO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANIO'
      Origin = 'ANIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QVtasSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QVtasDESCSUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCSUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QVtasTIPOCOMPROBANT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOCOMPROBANT'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QVtasDENOMINACION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QVtasTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
    end
    object QVtasNC_CONTADO: TStringField
      FieldName = 'NC_CONTADO'
      Origin = 'NC_CONTADO'
      FixedChar = True
      Size = 1
    end
    object QVtasFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
  end
  object QDepositos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select a.sucursal,a.fecha,a.importe from dep_banco_cab a'
      
        'where a.fecha between :desde and :hasta and ( a.sucursal= :suc o' +
        'r :suc = -1 )')
    Left = 464
    Top = 584
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
      end
      item
        Position = 4
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QReemp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select r.tipocpbte,r.fecha,'
      '       extract( month from r.fecha ) as Mes,'
      
        '       extract( year from r.fecha ) as Anio,r.sucursal,s.detalle' +
        ' as DescSucursal,'
      
        '       r.tipocpbte as TipoComprobant,r.importe from reemplazo_va' +
        'lores_ingresados r'
      'left join sucursal s on s.codigo=r.sucursal'
      
        'where ( r.sucursal = :suc or :suc = -1 ) and r.fecha between :de' +
        'sde and :hasta')
    Left = 72
    Top = 400
    ParamData = <
      item
        Name = 'SUC'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DESDE'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object QReempTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QReempMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      ReadOnly = True
    end
    object QReempANIO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANIO'
      Origin = 'ANIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QReempSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QReempDESCSUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCSUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QReempTIPOCOMPROBANT: TStringField
      FieldName = 'TIPOCOMPROBANT'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object QReempIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QReempFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
  end
  object QCCheque: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select r.tipocpbte,r.fecha,'
      '       extract( month from r.fecha ) as Mes,'
      
        '       extract( year from r.fecha ) as Anio,r.sucursal,s.detalle' +
        ' as DescSucursal,'
      
        '       r.tipocpbte as TipoComprobant,r.importe from cobro_cheque' +
        's_a_caja r'
      'left join sucursal s on s.codigo=r.sucursal'
      
        'where ( r.sucursal = :suc or :suc = -1 ) and r.fecha between :de' +
        'sde and :hasta')
    Left = 72
    Top = 456
    ParamData = <
      item
        Name = 'SUC'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DESDE'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object QCChequeTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QCChequeMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      ReadOnly = True
    end
    object QCChequeANIO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANIO'
      Origin = 'ANIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QCChequeSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QCChequeDESCSUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCSUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QCChequeTIPOCOMPROBANT: TStringField
      FieldName = 'TIPOCOMPROBANT'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Required = True
      Size = 2
    end
    object QCChequeIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QCChequeFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
  end
  object QSaldosMov: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.tipoppago,s.fpago,s.tipoop,s.tipo_cpbte,s.tipo,sum (s.d' +
        'ebe) as debe, sum(s.haber) as haber from sumar_valores_gral (:de' +
        'sde,:hasta) s'
      'where (s.tipo = :tipo) and ( s.sucursal = :suc or :suc = -1 ) '
      'group by s.tipoppago,s.fpago,s.tipoop,s.tipo_cpbte,s.tipo'
      'order by s.tipoppago,s.fpago,s.tipoop')
    Left = 472
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
      end
      item
        Position = 3
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QMovTc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select *  from LISTADO_CUPON_TC_SUCURSAL (:id_tarjeta,:acred,:de' +
        'sde,:hasta,:vta_acred,:lote,:terminal)'
      'where ( sucursal = :sucursal or :sucursal = -1  )'
      'order by '
      'tarjetacredito')
    Left = 72
    Top = 552
    ParamData = <
      item
        Name = 'ID_TARJETA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ACRED'
        DataType = ftOraInterval
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Name = 'DESDE'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'VTA_ACRED'
        DataType = ftOraInterval
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Name = 'LOTE'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end
      item
        Name = 'TERMINAL'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QMovTcID_MOV_TC: TIntegerField
      FieldName = 'ID_MOV_TC'
      Origin = 'ID_MOV_TC'
    end
    object QMovTcACREDITADA: TStringField
      FieldName = 'ACREDITADA'
      Origin = 'ACREDITADA'
      FixedChar = True
      Size = 1
    end
    object QMovTcCAN_CUOTAS: TIntegerField
      FieldName = 'CAN_CUOTAS'
      Origin = 'CAN_CUOTAS'
    end
    object QMovTcCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
      Origin = 'COEFICIENTE'
    end
    object QMovTcCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QMovTcFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QMovTcFECHA_ACREDITACION: TSQLTimeStampField
      DisplayLabel = 'F.Acredit.'
      FieldName = 'FECHA_ACREDITACION'
      Origin = 'FECHA_ACREDITACION'
    end
    object QMovTcID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
    end
    object QMovTcID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
    end
    object QMovTcID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
      Origin = 'ID_CUENTA_BANCO'
    end
    object QMovTcID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
    end
    object QMovTcID_TC: TIntegerField
      FieldName = 'ID_TC'
      Origin = 'ID_TC'
    end
    object QMovTcIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object QMovTcIMPORTE_NETO: TFloatField
      FieldName = 'IMPORTE_NETO'
      Origin = 'IMPORTE_NETO'
    end
    object QMovTcIMPORTE_RECARGO: TFloatField
      FieldName = 'IMPORTE_RECARGO'
      Origin = 'IMPORTE_RECARGO'
    end
    object QMovTcN_DOCU: TStringField
      FieldName = 'N_DOCU'
      Origin = 'N_DOCU'
      Size = 15
    end
    object QMovTcNRO_CUPON: TIntegerField
      FieldName = 'NRO_CUPON'
      Origin = 'NRO_CUPON'
    end
    object QMovTcTITULAR: TStringField
      FieldName = 'TITULAR'
      Origin = 'TITULAR'
      Size = 30
    end
    object QMovTcVALORCUOTA: TFloatField
      FieldName = 'VALORCUOTA'
      Origin = 'VALORCUOTA'
    end
    object QMovTcTIPOP_COMPROB: TStringField
      FieldName = 'TIPOP_COMPROB'
      Origin = 'TIPOP_COMPROB'
      Size = 2
    end
    object QMovTcCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Size = 2
    end
    object QMovTcID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
    end
    object QMovTcNRO_COMPROBANTE: TStringField
      FieldName = 'NRO_COMPROBANTE'
      Origin = 'NRO_COMPROBANTE'
      Size = 13
    end
    object QMovTcSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QMovTcTARJETACREDITO: TStringField
      DisplayLabel = 'Tarjeta de Credito'
      FieldName = 'TARJETACREDITO'
      Origin = 'TARJETACREDITO'
      Size = 15
    end
    object QMovTcFECHAACREDITACION_PROBABLE: TSQLTimeStampField
      FieldName = 'FECHAACREDITACION_PROBABLE'
      Origin = 'FECHAACREDITACION_PROBABLE'
    end
    object QMovTcNRO_LOTE: TStringField
      FieldName = 'NRO_LOTE'
      Origin = 'NRO_LOTE'
      Size = 5
    end
    object QMovTcNRO_TERMINAL: TStringField
      FieldName = 'NRO_TERMINAL'
      Origin = 'NRO_TERMINAL'
      Size = 8
    end
    object QMovTcDIAS_PARA_ACR: TIntegerField
      FieldName = 'DIAS_PARA_ACR'
      Origin = 'DIAS_PARA_ACR'
    end
    object QMovTcTIPOOPERACION: TStringField
      FieldName = 'TIPOOPERACION'
      Origin = 'TIPOOPERACION'
    end
  end
  object QResTC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select r.tipocpbte,r.fecha,'
      '       extract( month from r.fecha ) as Mes,'
      
        '       extract( year from r.fecha ) as Anio,r.sucursal,s.detalle' +
        ' as DescSucursal,'
      
        '       r.tipocpbte as TipoComprobant,r.total from resumen_tc_cab' +
        ' r'
      'left join sucursal s on s.codigo=r.sucursal'
      
        'where ( r.sucursal = :suc or :suc = -1 ) and r.fecha between :de' +
        'sde and :hasta')
    Left = 72
    Top = 512
    ParamData = <
      item
        Name = 'SUC'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DESDE'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object QResTCTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QResTCFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object QResTCMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      ReadOnly = True
    end
    object QResTCANIO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANIO'
      Origin = 'ANIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QResTCSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QResTCDESCSUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCSUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QResTCTIPOCOMPROBANT: TStringField
      FieldName = 'TIPOCOMPROBANT'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Required = True
      Size = 2
    end
    object QResTCTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
  end
  object QMovTC_ACobrar: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select *  from LISTADO_CUPON_TC_SUCURSAL (:id_tarjeta,:acred,:de' +
        'sde,:hasta,:vta_acred,:lote,:terminal)'
      'where ( sucursal = :sucursal or :sucursal = -1  )'
      'order by '
      'tarjetacredito')
    Left = 136
    Top = 504
    ParamData = <
      item
        Name = 'ID_TARJETA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ACRED'
        DataType = ftOraInterval
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Name = 'DESDE'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'VTA_ACRED'
        DataType = ftOraInterval
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Name = 'LOTE'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end
      item
        Name = 'TERMINAL'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QMovTC_ACobrarID_MOV_TC: TIntegerField
      FieldName = 'ID_MOV_TC'
      Origin = 'ID_MOV_TC'
    end
    object QMovTC_ACobrarACREDITADA: TStringField
      FieldName = 'ACREDITADA'
      Origin = 'ACREDITADA'
      FixedChar = True
      Size = 1
    end
    object QMovTC_ACobrarCAN_CUOTAS: TIntegerField
      FieldName = 'CAN_CUOTAS'
      Origin = 'CAN_CUOTAS'
    end
    object QMovTC_ACobrarCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
      Origin = 'COEFICIENTE'
    end
    object QMovTC_ACobrarCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QMovTC_ACobrarID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
    end
    object QMovTC_ACobrarID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
    end
    object QMovTC_ACobrarID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
      Origin = 'ID_CUENTA_BANCO'
    end
    object QMovTC_ACobrarID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
    end
    object QMovTC_ACobrarID_TC: TIntegerField
      FieldName = 'ID_TC'
      Origin = 'ID_TC'
    end
    object QMovTC_ACobrarIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object QMovTC_ACobrarIMPORTE_NETO: TFloatField
      FieldName = 'IMPORTE_NETO'
      Origin = 'IMPORTE_NETO'
    end
    object QMovTC_ACobrarIMPORTE_RECARGO: TFloatField
      FieldName = 'IMPORTE_RECARGO'
      Origin = 'IMPORTE_RECARGO'
    end
    object QMovTC_ACobrarN_DOCU: TStringField
      FieldName = 'N_DOCU'
      Origin = 'N_DOCU'
      Size = 15
    end
    object QMovTC_ACobrarNRO_CUPON: TIntegerField
      FieldName = 'NRO_CUPON'
      Origin = 'NRO_CUPON'
    end
    object QMovTC_ACobrarTITULAR: TStringField
      FieldName = 'TITULAR'
      Origin = 'TITULAR'
      Size = 30
    end
    object QMovTC_ACobrarVALORCUOTA: TFloatField
      FieldName = 'VALORCUOTA'
      Origin = 'VALORCUOTA'
    end
    object QMovTC_ACobrarTIPOP_COMPROB: TStringField
      FieldName = 'TIPOP_COMPROB'
      Origin = 'TIPOP_COMPROB'
      Size = 2
    end
    object QMovTC_ACobrarCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Size = 2
    end
    object QMovTC_ACobrarID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
    end
    object QMovTC_ACobrarNRO_COMPROBANTE: TStringField
      FieldName = 'NRO_COMPROBANTE'
      Origin = 'NRO_COMPROBANTE'
      Size = 13
    end
    object QMovTC_ACobrarSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QMovTC_ACobrarTARJETACREDITO: TStringField
      DisplayLabel = 'T.Credito'
      FieldName = 'TARJETACREDITO'
      Origin = 'TARJETACREDITO'
      Size = 15
    end
    object QMovTC_ACobrarNRO_LOTE: TStringField
      FieldName = 'NRO_LOTE'
      Origin = 'NRO_LOTE'
      Size = 5
    end
    object QMovTC_ACobrarNRO_TERMINAL: TStringField
      FieldName = 'NRO_TERMINAL'
      Origin = 'NRO_TERMINAL'
      Size = 8
    end
    object QMovTC_ACobrarDIAS_PARA_ACR: TIntegerField
      FieldName = 'DIAS_PARA_ACR'
      Origin = 'DIAS_PARA_ACR'
    end
    object QMovTC_ACobrarTIPOOPERACION: TStringField
      FieldName = 'TIPOOPERACION'
      Origin = 'TIPOOPERACION'
    end
    object QMovTC_ACobrarFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QMovTC_ACobrarFECHA_ACREDITACION: TSQLTimeStampField
      DisplayLabel = 'F.Acreditacion'
      FieldName = 'FECHA_ACREDITACION'
      Origin = 'FECHA_ACREDITACION'
    end
    object QMovTC_ACobrarFECHAACREDITACION_PROBABLE: TSQLTimeStampField
      DisplayLabel = 'Fec.A Acred.'
      FieldName = 'FECHAACREDITACION_PROBABLE'
      Origin = 'FECHAACREDITACION_PROBABLE'
    end
  end
  object QPersonal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select a.tipocpbte,a.clasecpbte,a.fecha,a.importe from adelantos' +
        '_sueldo a'
      'where a.fecha between :desde and :hasta')
    Left = 544
    Top = 536
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
  object QOPago: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select op.fecha,'
      '       extract( month from op.fecha ) as Mes,'
      
        '       extract( year from op.fecha ) as Anio,op.sucursal,s.detal' +
        'le as DescSucursal,'
      '       tc.detalle as TipoComprobant,cp.denominacion,op.total,'
      
        '       r.impuesto_retenido as ret_ganancia,rii.total as ret_IIBB' +
        ' from ordenpago op'
      'left join sucursal s on s.codigo=op.sucursal'
      'LEFT JOIN retenciones_ganancia r on r.id_op=op.id_op'
      
        'left join cpbte_ret_ingbr_cab rii on rii.id_cpbte_origen=op.id_o' +
        'p and rii.tipocpbte_origen=op.tipocpbte'
      'left join comprobantes cp on cp.tipo_comprob=op.tipocpbte and'
      '                             cp.clase_comprob=op.clasecpbte and'
      '                             cp.letra=op.letraop and'
      '                             cp.sucursal=op.sucursal and'
      '                             cp.compra_venta='#39'C'#39
      'left join tipo_comprobante tc on tc.sigla=cp.tipo_comprob'
      
        'where ( op.sucursal = :suc or :suc = -1 ) and op.fecha between :' +
        'desde and :hasta and'
      '       ( op.tipocpbte = :tipo or :tipo = '#39'**'#39' ) and'
      
        '       ( cp.id_comprobante in ( select icp.id from id_comprobant' +
        'es icp ))')
    Left = 568
    Top = 400
    ParamData = <
      item
        Name = 'SUC'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DESDE'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
    object QOPagoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QOPagoMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      ReadOnly = True
    end
    object QOPagoANIO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANIO'
      Origin = 'ANIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QOPagoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QOPagoDESCSUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCSUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QOPagoTIPOCOMPROBANT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOCOMPROBANT'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QOPagoDENOMINACION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QOPagoTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QOPagoRET_GANANCIA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'RET_GANANCIA'
      Origin = 'IMPUESTO_RETENIDO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QOPagoRET_IIBB: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'RET_IIBB'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QCompr: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select f.tipocpbte,f.fechacompra,'
      '       extract( month from f.fechacompra ) as Mes,'
      
        '       extract( year from f.fechacompra ) as Anio,f.sucursalcomp' +
        'ra,s.detalle as DescSucursal,'
      
        '       tc.detalle as TipoComprobant,cp.denominacion,f.total from' +
        ' fccompcab f'
      'left join sucursal s on s.codigo=f.sucursalcompra'
      'left join comprobantes cp on cp.tipo_comprob=f.tipocpbte and'
      '                             cp.clase_comprob=f.clasecpbte and'
      '                             cp.letra=f.letrafac and'
      '                             cp.sucursal=f.sucursalcompra and'
      '                             cp.compra_venta='#39'C'#39
      'left join tipo_comprobante tc on tc.sigla=cp.tipo_comprob'
      
        'where ( f.sucursalcompra = :suc or :suc = -1 ) and f.fechacompra' +
        ' between :desde and :hasta and'
      
        '        f.anulado<>'#39'S'#39' and ( f.tipocpbte = :tipo or :tipo = '#39'**'#39 +
        ' ) and'
      
        '       (cp.id_comprobante in ( select icp.id from id_comprobante' +
        's icp ))')
    Left = 656
    Top = 464
    ParamData = <
      item
        Position = 1
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'suc'
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
      end
      item
        Position = 5
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object JvFormStorage: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    Options = [fpState, fpSize, fpLocation, fpActiveControl]
    StoredValues = <>
    Left = 472
    Top = 352
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    AutoFlush = True
    SubStorages = <>
    Left = 520
    Top = 360
  end
  object PopupMenu1: TPopupMenu
    Left = 272
    Top = 328
    object Grupo: TMenuItem
      Caption = 'Agrupamiento'
      OnClick = GrupoClick
    end
  end
end
