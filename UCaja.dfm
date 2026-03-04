object FormCaja: TFormCaja
  Left = 313
  Top = 78
  Anchors = [akLeft, akTop, akRight]
  Caption = 'Caja'
  ClientHeight = 670
  ClientWidth = 1004
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object pcCaja: TPageControl
    Left = 0
    Top = 0
    Width = 1004
    Height = 621
    ActivePage = tsMovimientos
    Align = alClient
    TabOrder = 0
    object tsMovimientos: TTabSheet
      Caption = 'Movimientos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      object pcMovimientos: TPageControl
        Left = 0
        Top = 153
        Width = 996
        Height = 294
        ActivePage = pgResumen
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object pagIngresos: TTabSheet
          Caption = 'Ingresos'
          DesignSize = (
            988
            266)
          object Progress: TGauge
            Left = 461
            Top = 242
            Width = 130
            Height = 19
            Anchors = [akLeft, akBottom]
            MaxValue = 21
            Progress = 0
            ExplicitTop = 246
          end
          object dbgIngresos: TJvDBGrid
            Left = 0
            Top = 0
            Width = 988
            Height = 232
            Align = alTop
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataSource = DatosCaja.DSCajaDetIngresos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            PopupMenu = PopupMenu1
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnDrawColumnCell = dbgIngresosDrawColumnCell
            OnDblClick = VerComprobanteExecute
            MultiSelect = True
            TitleButtons = True
            OnTitleBtnClick = dbgIngresosTitleBtnClick
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'FECHA'
                Title.Alignment = taCenter
                Width = 71
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_CPBTE'
                Title.Alignment = taCenter
                Width = 31
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CLASE_CPBTE'
                Title.Alignment = taCenter
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NRO_CPBTE'
                Title.Alignment = taCenter
                Width = 127
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DETALLE'
                Title.Alignment = taCenter
                Width = 443
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DEBE'
                Title.Alignment = taCenter
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_ARQUEO_CAJA'
                Title.Alignment = taCenter
                Width = 23
                Visible = True
              end>
          end
          object edtIngresos: TJvCalcEdit
            Left = 699
            Top = 242
            Width = 130
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            DisplayFormat = ',0.00 ;-,0.00 '
            Enabled = False
            Anchors = [akLeft, akBottom]
            ShowButton = False
            TabOrder = 0
            DisabledTextColor = clBlack
            DecimalPlacesAlwaysShown = False
          end
          object chbCompVtas: TCheckBox
            Left = 3
            Top = 241
            Width = 214
            Height = 17
            Anchors = [akLeft, akBottom]
            Caption = 'Filtrar Solo Comprobantes de Vta. y Compra'
            TabOrder = 2
            OnClick = chbCompVtasClick
          end
        end
        object Egresos: TTabSheet
          Caption = 'Egresos'
          ImageIndex = 1
          DesignSize = (
            988
            266)
          object edtEgresos: TJvCalcEdit
            Left = 708
            Top = 243
            Width = 124
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            DisplayFormat = ',0.00 ;-,0.00'
            Enabled = False
            Anchors = [akLeft, akBottom]
            ShowButton = False
            TabOrder = 0
            DisabledTextColor = clBlack
            DecimalPlacesAlwaysShown = False
          end
          object Button5: TButton
            Left = 582
            Top = 239
            Width = 103
            Height = 25
            Action = IngresoGastos
            Anchors = [akLeft, akBottom]
            TabOrder = 1
          end
          object dbgEgresos: TJvDBGrid
            Left = 0
            Top = 0
            Width = 988
            Height = 238
            Align = alTop
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataSource = DatosCaja.DSCajaDetEgresos
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = PopupMenu1
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = dbgEgresosDrawColumnCell
            OnDblClick = VerComprobanteExecute
            TitleButtons = True
            OnTitleBtnClick = dbgEgresosTitleBtnClick
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'FECHA'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 73
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_CPBTE'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 27
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CLASE_CPBTE'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NRO_CPBTE'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 128
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
                Width = 435
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HABER'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 96
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_ARQUEO_CAJA'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 23
                Visible = True
              end>
          end
        end
        object Anuladas: TTabSheet
          Caption = 'Fac.Anuladas'
          ImageIndex = 2
          object JvDBGrid1: TJvDBGrid
            Left = 0
            Top = 0
            Width = 988
            Height = 266
            Align = alClient
            DataSource = DatosCaja.DSAnuladas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnDblClick = VerComprobanteExecute
            TitleButtons = True
            OnTitleBtnClick = dbgIngresosTitleBtnClick
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'FECHA_OPERACION'
                Title.Alignment = taCenter
                Width = 92
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_COMPROB'
                Title.Alignment = taCenter
                Width = 31
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CLASE_COMPROB'
                Title.Alignment = taCenter
                Width = 49
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NRO_COMPROBANTE'
                Title.Alignment = taCenter
                Width = 121
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MUESTRANOMBRE'
                Title.Alignment = taCenter
                Width = 406
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DEBE'
                Title.Alignment = taCenter
                Width = 97
                Visible = True
              end>
          end
        end
        object pgResumen: TTabSheet
          Caption = 'Resumen Art.Vendidos'
          ImageIndex = 3
          DesignSize = (
            988
            266)
          object edTotalVentas: TJvCalcEdit
            Left = 708
            Top = 242
            Width = 121
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            DisplayFormat = ',0.00 ;-,0.00 '
            Enabled = False
            Anchors = [akLeft, akBottom]
            ShowButton = False
            TabOrder = 0
            DisabledTextColor = clBlack
            DecimalPlacesAlwaysShown = False
          end
          object btResumenVta: TButton
            Left = 10
            Top = 241
            Width = 75
            Height = 21
            Action = ListarArtiVendidos
            Anchors = [akLeft, akBottom]
            TabOrder = 1
          end
          object Button1: TButton
            Left = 91
            Top = 241
            Width = 125
            Height = 21
            Action = InformarArticulosVtas
            Anchors = [akLeft, akBottom]
            TabOrder = 2
          end
          object cxGrid6: TcxGrid
            Left = 0
            Top = 0
            Width = 988
            Height = 233
            Align = alTop
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 3
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            object cxGrid6DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataSource = DatosCaja.DSResumenVta
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Format = ',0.00'
                  Kind = skSum
                  Position = spFooter
                  FieldName = 'TOTALCIVA_REC'
                  Column = cxGrid6DBTableView1TOTALCIVA_REC
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = ',0.00'
                  Kind = skSum
                  FieldName = 'TOTALCIVA_REC'
                  Column = cxGrid6DBTableView1TOTALCIVA_REC
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsView.Footer = True
              OptionsView.FooterMultiSummaries = True
              OptionsView.GroupByBox = False
              OptionsView.GroupFooters = gfAlwaysVisible
              Styles.Header = cxStyle1
              object cxGrid6DBTableView1DETALLE_RUBRO: TcxGridDBColumn
                DataBinding.FieldName = 'DETALLE_RUBRO'
                Visible = False
                GroupIndex = 0
                HeaderAlignmentHorz = taCenter
              end
              object cxGrid6DBTableView1TIPOCPBTE: TcxGridDBColumn
                DataBinding.FieldName = 'TIPOCPBTE'
                HeaderAlignmentHorz = taCenter
                Width = 32
              end
              object cxGrid6DBTableView1CODIGOARTICULO: TcxGridDBColumn
                DataBinding.FieldName = 'CODIGOARTICULO'
                HeaderAlignmentHorz = taCenter
                Width = 92
              end
              object cxGrid6DBTableView1DETALLE: TcxGridDBColumn
                DataBinding.FieldName = 'DETALLE'
                HeaderAlignmentHorz = taCenter
                Width = 345
              end
              object cxGrid6DBTableView1CANTIDAD_REC: TcxGridDBColumn
                DataBinding.FieldName = 'CANTIDAD_REC'
                HeaderAlignmentHorz = taCenter
                Width = 107
              end
              object cxGrid6DBTableView1TOTAL_REC: TcxGridDBColumn
                DataBinding.FieldName = 'TOTAL_REC'
                HeaderAlignmentHorz = taCenter
                Width = 97
              end
              object cxGrid6DBTableView1TOTALCIVA_REC: TcxGridDBColumn
                DataBinding.FieldName = 'TOTALCIVA_REC'
                HeaderAlignmentHorz = taCenter
                Width = 104
              end
              object cxGrid6DBTableView1TOTAL_CIVA: TcxGridDBColumn
                DataBinding.FieldName = 'TOTAL_CIVA'
                Visible = False
                HeaderAlignmentHorz = taCenter
                Width = 87
              end
              object cxGrid6DBTableView1CANTIDAD: TcxGridDBColumn
                DataBinding.FieldName = 'CANTIDAD'
                Visible = False
                HeaderAlignmentHorz = taCenter
              end
              object cxGrid6DBTableView1TOTAL: TcxGridDBColumn
                DataBinding.FieldName = 'TOTAL'
                Visible = False
                HeaderAlignmentHorz = taCenter
              end
              object cxGrid6DBTableView1FECHAVTA: TcxGridDBColumn
                DataBinding.FieldName = 'FECHAVTA'
                Visible = False
                HeaderAlignmentHorz = taCenter
              end
            end
            object cxGrid6Level1: TcxGridLevel
              GridView = cxGrid6DBTableView1
            end
          end
        end
        object CpbtEmitidos: TTabSheet
          Caption = 'Comprobantes de Vta Emitidos'
          ImageIndex = 4
          object cxGrid4: TcxGrid
            Left = 0
            Top = 0
            Width = 988
            Height = 266
            Align = alClient
            TabOrder = 0
            object cxGrid4DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataSource = DatosCaja.DSEmitidosVta
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = ',0.00'
                  Kind = skSum
                  FieldName = 'NETO'
                  Column = cxGrid4DBTableView1NETO
                  DisplayText = 'Total'
                end
                item
                  Format = ',0.00'
                  Kind = skAverage
                  FieldName = 'NETO'
                  Column = cxGrid4DBTableView1NETO
                  DisplayText = 'Promedio'
                end
                item
                  Format = '0'
                  Kind = skCount
                  FieldName = 'TOTAL'
                  Column = cxGrid4DBTableView1TOTAL
                  DisplayText = 'Cantidad'
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsView.Footer = True
              OptionsView.FooterMultiSummaries = True
              OptionsView.GroupByBox = False
              object cxGrid4DBTableView1FECHA_OPERACION: TcxGridDBColumn
                DataBinding.FieldName = 'FECHA_OPERACION'
                HeaderAlignmentHorz = taCenter
                Width = 106
              end
              object cxGrid4DBTableView1TIPO_COMPROB: TcxGridDBColumn
                DataBinding.FieldName = 'TIPO_COMPROB'
                HeaderAlignmentHorz = taCenter
                Width = 38
              end
              object cxGrid4DBTableView1CLASE_COMPROB: TcxGridDBColumn
                DataBinding.FieldName = 'CLASE_COMPROB'
                HeaderAlignmentHorz = taCenter
                Width = 41
              end
              object cxGrid4DBTableView1NRO_COMPROBANTE: TcxGridDBColumn
                DataBinding.FieldName = 'NRO_COMPROBANTE'
                HeaderAlignmentHorz = taCenter
                Width = 120
              end
              object cxGrid4DBTableView1DEBE: TcxGridDBColumn
                DataBinding.FieldName = 'DEBE'
                HeaderAlignmentHorz = taCenter
                Width = 95
              end
              object cxGrid4DBTableView1HABER: TcxGridDBColumn
                DataBinding.FieldName = 'HABER'
                HeaderAlignmentHorz = taCenter
                Width = 117
              end
              object cxGrid4DBTableView1TOTAL: TcxGridDBColumn
                DataBinding.FieldName = 'TOTAL'
                HeaderAlignmentHorz = taCenter
                Width = 108
              end
              object cxGrid4DBTableView1NETO: TcxGridDBColumn
                DataBinding.FieldName = 'NETO'
                HeaderAlignmentHorz = taCenter
                Width = 113
              end
              object cxGrid4DBTableView1Column1: TcxGridDBColumn
                DataBinding.FieldName = 'COMANDA'
              end
            end
            object cxGrid4Level1: TcxGridLevel
              GridView = cxGrid4DBTableView1
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Cobranza'
          ImageIndex = 5
          object cxGrid5: TcxGrid
            Left = 0
            Top = 0
            Width = 988
            Height = 266
            Align = alClient
            TabOrder = 0
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            object cxGrid5DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataSource = DatosCaja.DSRecibos
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Format = ',0.00'
                  Kind = skSum
                  Position = spFooter
                  FieldName = 'DEBE'
                  Column = cxGrid5DBTableView1DEBE
                end
                item
                  Format = ',0.00'
                  Kind = skSum
                  Position = spFooter
                  FieldName = 'HABER'
                  Column = cxGrid5DBTableView1HABER
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = ',0.00'
                  Kind = skSum
                  FieldName = 'DEBE'
                  Column = cxGrid5DBTableView1DEBE
                end
                item
                  Format = ',0.00'
                  Kind = skSum
                  FieldName = 'HABER'
                  Column = cxGrid5DBTableView1HABER
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsSelection.CellSelect = False
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.GroupFooterMultiSummaries = True
              OptionsView.GroupFooters = gfAlwaysVisible
              object cxGrid5DBTableView1FECHA: TcxGridDBColumn
                DataBinding.FieldName = 'FECHA'
                HeaderAlignmentHorz = taCenter
                Width = 94
              end
              object cxGrid5DBTableView1NRO_CPBTE: TcxGridDBColumn
                DataBinding.FieldName = 'NRO_CPBTE'
                HeaderAlignmentHorz = taCenter
              end
              object cxGrid5DBTableView1TIPO_CPBTE: TcxGridDBColumn
                DataBinding.FieldName = 'TIPO_CPBTE'
                HeaderAlignmentHorz = taCenter
                Width = 35
              end
              object cxGrid5DBTableView1CLASE_CPBTE: TcxGridDBColumn
                DataBinding.FieldName = 'CLASE_CPBTE'
                HeaderAlignmentHorz = taCenter
                Width = 36
              end
              object cxGrid5DBTableView1DETALLE: TcxGridDBColumn
                DataBinding.FieldName = 'DETALLE'
                HeaderAlignmentHorz = taCenter
                Width = 407
              end
              object cxGrid5DBTableView1DEBE: TcxGridDBColumn
                DataBinding.FieldName = 'DEBE'
                HeaderAlignmentHorz = taCenter
                Width = 76
              end
              object cxGrid5DBTableView1HABER: TcxGridDBColumn
                DataBinding.FieldName = 'HABER'
                HeaderAlignmentHorz = taCenter
                Width = 80
              end
              object cxGrid5DBTableView1NOMBRE_VC: TcxGridDBColumn
                DataBinding.FieldName = 'NOMBRE_VC'
                Visible = False
                GroupIndex = 0
                HeaderAlignmentHorz = taCenter
              end
            end
            object cxGrid5Level1: TcxGridLevel
              GridView = cxGrid5DBTableView1
            end
          end
        end
        object FactVsCobro: TTabSheet
          Caption = 'Fc. Emitdas Con Pagos'
          ImageIndex = 6
          object dbgFc_vs_cobro: TDBGrid
            Left = 0
            Top = 0
            Width = 988
            Height = 266
            Align = alClient
            DataSource = DatosCaja.DSFacVsCobro
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'FECHAVTA'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 104
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODIGO'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 86
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NROCPBTE'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 109
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
                Width = 255
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
                Width = 109
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PAGADO'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 113
                Visible = True
              end>
          end
        end
      end
      object pnPieDetalle: TPanel
        Left = 0
        Top = 447
        Width = 996
        Height = 146
        Align = alBottom
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 1
        object RxLabel9: TJvLabel
          Left = 8
          Top = 9
          Width = 70
          Height = 13
          Caption = 'Saldos Finales'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object Label2: TLabel
          Left = 310
          Top = 7
          Width = 108
          Height = 13
          Caption = 'Compras con T.Credito'
          FocusControl = dbeComprasTC
        end
        object Label1: TLabel
          Left = 462
          Top = 7
          Width = 101
          Height = 13
          Caption = 'Ventas Con T.Credito'
          FocusControl = dbeVentasTC
        end
        object Label8: TLabel
          Left = 638
          Top = 67
          Width = 223
          Height = 24
          Caption = 'Saldo Ingresos/Egresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object sbReporte: TSpeedButton
          Left = 564
          Top = 68
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
        object Label15: TLabel
          Left = 310
          Top = 52
          Width = 92
          Height = 13
          Caption = 'Archivo de Reporte'
          FocusControl = dbeComprasTC
        end
        object dbgSaldosFianles: TJvDBGrid
          Left = 7
          Top = 28
          Width = 282
          Height = 109
          DataSource = DatosCaja.DSSaldoFinal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Caption = 'Detalle'
              Width = 165
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SALDO'
              Title.Alignment = taCenter
              Title.Caption = 'Saldo'
              Width = 95
              Visible = True
            end>
        end
        object dbeComprasTC: TDBEdit
          Left = 310
          Top = 26
          Width = 133
          Height = 21
          DataField = 'HABER'
          DataSource = DatosCaja.DSSaldosTC
          TabOrder = 1
        end
        object chbConDetalle: TCheckBox
          Left = 318
          Top = 115
          Width = 151
          Height = 17
          Caption = 'Imprimir Con detalle'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
        object dbeVentasTC: TDBEdit
          Left = 462
          Top = 26
          Width = 133
          Height = 21
          DataField = 'DEBE'
          DataSource = DatosCaja.DSSaldosTC
          TabOrder = 3
        end
        object BitBtn2: TBitBtn
          Left = 457
          Top = 96
          Width = 102
          Height = 25
          Caption = 'Ver Resumen'
          TabOrder = 4
          OnClick = BitBtn2Click
        end
        object edtSaldo: TJvCalcEdit
          Left = 617
          Top = 89
          Width = 246
          Height = 32
          DisplayFormat = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = False
          TabOrder = 5
          DecimalPlacesAlwaysShown = False
        end
        object edReporte: TEdit
          Left = 310
          Top = 69
          Width = 249
          Height = 21
          TabOrder = 6
          Text = 'edReporte'
        end
        object chbUsarReporte: TCheckBox
          Left = 422
          Top = 50
          Width = 112
          Height = 17
          Caption = 'Usar este Reporte'
          TabOrder = 7
        end
        object chOrdenPantalla: TCheckBox
          Left = 475
          Top = 127
          Width = 163
          Height = 17
          Caption = 'Imprimir Orden de Pantalla'
          TabOrder = 8
        end
        object Button2: TButton
          Left = 758
          Top = 5
          Width = 103
          Height = 25
          Caption = 'Cargar Lote TC'
          TabOrder = 9
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 758
          Top = 36
          Width = 103
          Height = 25
          Caption = 'Generar Tx'
          TabOrder = 10
          OnClick = Button3Click
        end
        object Memo1: TMemo
          Left = 644
          Top = 122
          Width = 307
          Height = 22
          Lines.Strings = (
            'hacer un reporte de facturas pendientes sin cobrar')
          TabOrder = 11
          Visible = False
        end
      end
      object pnCabecera: TPanel
        Left = 0
        Top = 0
        Width = 996
        Height = 153
        Align = alTop
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 2
        object DBText1: TDBText
          Left = 731
          Top = 13
          Width = 97
          Height = 14
          DataField = 'FECHA_INCIO'
          DataSource = DatosCaja.DSCajaCab
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 731
          Top = 33
          Width = 107
          Height = 17
          DataField = 'FECHA_CIERRE'
          DataSource = DatosCaja.DSCajaCab
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 455
          Top = 15
          Width = 70
          Height = 22
          DataField = 'NUMEROCAJA'
          DataSource = DatosCaja.DSCajaCab
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -20
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 294
          Top = 15
          Width = 164
          Height = 25
          Caption = 'Numero de Caja:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -20
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 746
          Top = 3
          Width = 91
          Height = 11
          Alignment = taRightJustify
          DataField = 'ID_CAJA'
          DataSource = DatosCaja.DSCajaCab
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbFechaApertura: TJvLabel
          Left = 612
          Top = 11
          Width = 113
          Height = 16
          Cursor = crHandPoint
          Caption = 'Fecha de Apertura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
          OnClick = lbFechaAperturaClick
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object RxLabel4: TJvLabel
          Left = 617
          Top = 33
          Width = 98
          Height = 16
          Caption = 'Fecha de Cierre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object RxLabel5: TJvLabel
          Left = 8
          Top = 3
          Width = 49
          Height = 13
          Cursor = crHandPoint
          Action = LeerCajas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object RxLabel6: TJvLabel
          Left = 8
          Top = 45
          Width = 74
          Height = 13
          Caption = 'Saldos iniciales'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object RxLabel7: TJvLabel
          Left = 309
          Top = 42
          Width = 33
          Height = 13
          Caption = 'Desde'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object RxLabel10: TJvLabel
          Left = 405
          Top = 42
          Width = 30
          Height = 13
          Caption = 'Hasta'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object btPrev: TSpeedButton
          Left = 499
          Top = 60
          Width = 13
          Height = 22
          Caption = '<'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btPrevClick
        end
        object btNext: TSpeedButton
          Left = 512
          Top = 60
          Width = 13
          Height = 22
          Caption = '>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btNextClick
        end
        object dbeMuestraCaja: TDBEdit
          Left = 88
          Top = 19
          Width = 193
          Height = 24
          DataField = 'MUESTRACTACAJA'
          DataSource = DatosCaja.DSCajaCab
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object dbeCaja: TDBEdit
          Left = 8
          Top = 19
          Width = 65
          Height = 24
          DataField = 'ID_CUENTA_CAJA'
          DataSource = DatosCaja.DSCajaCab
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object Panel2: TPanel
          Left = 701
          Top = 54
          Width = 162
          Height = 33
          BevelKind = bkTile
          BevelOuter = bvNone
          Enabled = False
          TabOrder = 2
          object lbCerrada: TLabel
            Left = 0
            Top = 0
            Width = 158
            Height = 29
            Align = alClient
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -24
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 8
          end
        end
        object desde: TJvDateEdit
          Left = 309
          Top = 61
          Width = 90
          Height = 21
          ShowNullDate = False
          TabOrder = 3
        end
        object hasta: TJvDateEdit
          Left = 405
          Top = 61
          Width = 90
          Height = 21
          ShowNullDate = False
          TabOrder = 4
        end
        object chFiltraFecha: TCheckBox
          Left = 309
          Top = 88
          Width = 84
          Height = 17
          Caption = 'Filtrar fechas'
          TabOrder = 5
          OnClick = chFiltraFechaClick
        end
        object dbgCabecera: TJvDBGrid
          Left = 8
          Top = 61
          Width = 282
          Height = 83
          DataSource = DatosCaja.DSSaldoInicial
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 6
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'MUESTRAFORMAPAGO'
              Title.Alignment = taCenter
              Title.Caption = 'Detalle'
              Width = 165
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Title.Caption = 'Saldo'
              Width = 95
              Visible = True
            end>
        end
        object chRef: TCheckBox
          Left = 399
          Top = 83
          Width = 136
          Height = 27
          Caption = 'Ref. Al Cambio Fecha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          WordWrap = True
          OnClick = chFiltraFechaClick
        end
      end
    end
    object tsCheques: TTabSheet
      Caption = 'Cheques de Teceros'
      ImageIndex = 1
      object Label4: TLabel
        Left = 5
        Top = 5
        Width = 137
        Height = 16
        Caption = 'Cheques Recibidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 5
        Top = 221
        Width = 146
        Height = 16
        Caption = 'Cheques Entregados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgChRecibidos: TJvDBGrid
        Left = 0
        Top = 24
        Width = 689
        Height = 185
        DataSource = DatosCaja.DSChe3Recibidos
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
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
            FieldName = 'NUMERO'
            Title.Alignment = taCenter
            Title.Caption = 'Nro.'
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
            FieldName = 'FECHA_COBRO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ORIGEN'
            Title.Alignment = taCenter
            Title.Caption = 'Origen'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 219
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MUESTRABANCO'
            Title.Alignment = taCenter
            Title.Caption = 'Banco'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPORTE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 84
            Visible = True
          end>
      end
      object dbgChEntregados: TJvDBGrid
        Left = 0
        Top = 243
        Width = 689
        Height = 190
        DataSource = DatosCaja.DSChe3Entregado
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
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
            FieldName = 'NUMERO'
            Title.Alignment = taCenter
            Title.Caption = 'Nro.'
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
            FieldName = 'FECHA_COBRO'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha Cobro'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESTINO'
            Title.Alignment = taCenter
            Title.Caption = 'Destino'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 219
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MUESTRABANCO'
            Title.Alignment = taCenter
            Title.Caption = 'Banco'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPORTE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 84
            Visible = True
          end>
      end
    end
    object ts: TTabSheet
      Caption = 'Valores'
      ImageIndex = 2
      object cxGrid1: TcxGrid
        Left = 0
        Top = 54
        Width = 996
        Height = 539
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'MoneyTwins'
        object cxGrid1DBTableView1: TcxGridDBTableView
          PopupMenu = PopupMenu2
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DatosCaja.DSValores
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = ',0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1DEBE
            end
            item
              Format = ',0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1HABER
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1DEBE
            end
            item
              Format = ',0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1HABER
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupByHeaderLayout = ghlHorizontal
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
          object cxGrid1DBTableView1FECHA: TcxGridDBColumn
            DataBinding.FieldName = 'FECHA'
            HeaderAlignmentHorz = taCenter
            Width = 95
          end
          object cxGrid1DBTableView1TIPO_CPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_CPBTE'
            HeaderAlignmentHorz = taCenter
            Width = 49
          end
          object cxGrid1DBTableView1NRO_CPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'NRO_CPBTE'
            HeaderAlignmentHorz = taCenter
            Width = 99
          end
          object cxGrid1DBTableView1NOMBRE: TcxGridDBColumn
            DataBinding.FieldName = 'NOMBRE'
            HeaderAlignmentHorz = taCenter
            Width = 306
          end
          object cxGrid1DBTableView1SIGNO: TcxGridDBColumn
            DataBinding.FieldName = 'SIGNO'
            HeaderAlignmentHorz = taCenter
          end
          object cxGrid1DBTableView1DEBE: TcxGridDBColumn
            DataBinding.FieldName = 'DEBE'
            HeaderAlignmentHorz = taCenter
            Width = 93
          end
          object cxGrid1DBTableView1HABER: TcxGridDBColumn
            DataBinding.FieldName = 'HABER'
            HeaderAlignmentHorz = taCenter
            Width = 79
          end
          object cxGrid1DBTableView1SALDO: TcxGridDBColumn
            DataBinding.FieldName = 'SALDO'
            HeaderAlignmentHorz = taCenter
            Width = 94
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object pnCab: TPanel
        Left = 0
        Top = 0
        Width = 996
        Height = 54
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 1
        Padding.Left = 1
        Padding.Top = 1
        Padding.Right = 1
        Padding.Bottom = 1
        TabOrder = 1
        object RxLabel8: TJvLabel
          Left = 5
          Top = 3
          Width = 42
          Height = 13
          Caption = 'Cta.Caja'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object Label6: TLabel
          Left = 295
          Top = 22
          Width = 72
          Height = 13
          Caption = 'Forma de Pago'
        end
        object DBEdit2: TDBEdit
          Left = 5
          Top = 19
          Width = 65
          Height = 21
          DataField = 'ID_CUENTA_CAJA'
          DataSource = DatosCaja.DSCajaCab
          Enabled = False
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 76
          Top = 19
          Width = 193
          Height = 21
          DataField = 'MUESTRACTACAJA'
          DataSource = DatosCaja.DSCajaCab
          Enabled = False
          TabOrder = 1
        end
        object dbcValores: TDBLookupComboBox
          Left = 373
          Top = 19
          Width = 145
          Height = 21
          KeyField = 'ID_FPAGO'
          ListField = 'DESCRIPCION'
          ListSource = DatosCaja.DSFPago
          TabOrder = 2
          OnClick = CalcularValoresExecute
        end
      end
    end
    object tsCheEmitidos: TTabSheet
      Caption = 'Cheques Emitidos'
      ImageIndex = 3
      DesignSize = (
        996
        593)
      object Label5: TLabel
        Left = 5
        Top = 11
        Width = 126
        Height = 16
        Caption = 'Cheques Emitidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGCheEmitidos: TDBGrid
        Left = 0
        Top = 30
        Width = 561
        Height = 462
        Anchors = [akLeft, akTop, akBottom]
        DataSource = DatosCaja.DSCheques
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMERO'
            Title.Alignment = taCenter
            Title.Caption = 'Nro.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ORDEN_DE'
            Title.Alignment = taCenter
            Title.Caption = 'A la Orden de'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 233
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MUESTRABANCO'
            Title.Alignment = taCenter
            Title.Caption = 'Banco'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 138
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPORTE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 83
            Visible = True
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Transferencias'
      ImageIndex = 4
      object Label9: TLabel
        Left = 8
        Top = 4
        Width = 200
        Height = 19
        Caption = 'Transferencias Generadas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 8
        Top = 152
        Width = 193
        Height = 19
        Caption = 'Transferencias Recibidas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 8
        Top = 304
        Width = 227
        Height = 19
        Caption = 'Debitos por Pago de Facturas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgTxGeneradas: TDBGrid
        Left = 1
        Top = 24
        Width = 672
        Height = 120
        DataSource = DatosCaja.DSTxGeneradas
        DrawingStyle = gdsGradient
        FixedColor = clBlue
        GradientEndColor = clBlue
        GradientStartColor = clAqua
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'FECHA'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO'
            Title.Alignment = taCenter
            Title.Caption = 'Numero'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MUESTRABANCO'
            Title.Alignment = taCenter
            Title.Caption = 'Cta Bancaria'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ORIGEN'
            Title.Alignment = taCenter
            Title.Caption = 'Origen'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 186
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPORTE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 81
            Visible = True
          end>
      end
      object dbgTxRecibidas: TDBGrid
        Left = 3
        Top = 172
        Width = 670
        Height = 120
        DataSource = DatosCaja.DSTxRecibidas
        DrawingStyle = gdsGradient
        FixedColor = clBlue
        GradientEndColor = clBlue
        GradientStartColor = clSkyBlue
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'FECHA'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO'
            Title.Alignment = taCenter
            Title.Caption = 'Numero'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MUESTRABANCO'
            Title.Alignment = taCenter
            Title.Caption = 'Cta Bancaria'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ORIGEN'
            Title.Alignment = taCenter
            Title.Caption = 'Origen'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 185
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPORTE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 77
            Visible = True
          end>
      end
      object dbgDebitos: TDBGrid
        Left = 3
        Top = 325
        Width = 670
        Height = 120
        DataSource = DatosCaja.DSDebitos
        DrawingStyle = gdsGradient
        FixedColor = clGreen
        GradientEndColor = clGreen
        GradientStartColor = clMoneyGreen
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO'
            Title.Alignment = taCenter
            Title.Caption = 'Numero'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MUESTRABANCO'
            Title.Alignment = taCenter
            Title.Caption = 'Cta.Bancaria'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ORIGEN'
            Title.Alignment = taCenter
            Title.Caption = 'Origen'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPORTE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clAqua
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 77
            Visible = True
          end>
      end
    end
    object tsRetenciones: TTabSheet
      Caption = 'Retenciones'
      ImageIndex = 5
      object dbgRetenciones: TDBGrid
        Left = 3
        Top = 3
        Width = 710
        Height = 393
        DataSource = DatosCaja.DSRetenciones
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DETALLE'
            Title.Alignment = taCenter
            Title.Caption = 'detalle'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 149
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLASECPBTE'
            Title.Alignment = taCenter
            Title.Caption = 'Cl.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NROCPBTE'
            Title.Alignment = taCenter
            Title.Caption = 'Nro.Cpbte'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECHA'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECHARETENCION'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha Retenci'#243'n'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NRO_RETENCION'
            Title.Alignment = taCenter
            Title.Caption = 'Nro.Percepci'#243'n'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPORTE'
            Title.Alignment = taCenter
            Title.Caption = 'Importe'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 106
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dep'#243'sitos'
      ImageIndex = 6
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 996
        Height = 593
        Align = alClient
        TabOrder = 0
        object cxGrid2DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DatosCaja.DSDepositos
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skSum
              FieldName = 'DEBE'
              Column = cxGrid2DBTableView1DEBE
            end
            item
              Kind = skSum
              FieldName = 'HABER'
              Column = cxGrid2DBTableView1HABER
            end
            item
              Kind = skSum
              FieldName = 'IMPORTE'
              Column = cxGrid2DBTableView1IMPORTE
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'DEBE'
              Column = cxGrid2DBTableView1DEBE
            end
            item
              Kind = skSum
              FieldName = 'HABER'
              Column = cxGrid2DBTableView1HABER
            end
            item
              FieldName = 'IMPORTE'
              Column = cxGrid2DBTableView1IMPORTE
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          object cxGrid2DBTableView1EFEC_CHEQ: TcxGridDBColumn
            DataBinding.FieldName = 'EFEC_CHEQ'
            Visible = False
            GroupIndex = 0
            Width = 40
          end
          object cxGrid2DBTableView1FECHA_OPERACION: TcxGridDBColumn
            DataBinding.FieldName = 'FECHA_OPERACION'
          end
          object cxGrid2DBTableView1MUESTRACTA: TcxGridDBColumn
            DataBinding.FieldName = 'MUESTRACTA'
          end
          object cxGrid2DBTableView1NRO_COMPROBANTE: TcxGridDBColumn
            DataBinding.FieldName = 'NRO_COMPROBANTE'
          end
          object cxGrid2DBTableView1HABER: TcxGridDBColumn
            DataBinding.FieldName = 'HABER'
          end
          object cxGrid2DBTableView1DEBE: TcxGridDBColumn
            DataBinding.FieldName = 'DEBE'
          end
          object cxGrid2DBTableView1NUEMROCHE: TcxGridDBColumn
            DataBinding.FieldName = 'NUEMROCHE'
          end
          object cxGrid2DBTableView1MUESTRAORIGEN: TcxGridDBColumn
            DataBinding.FieldName = 'MUESTRAORIGEN'
          end
          object cxGrid2DBTableView1IMPORTE: TcxGridDBColumn
            DataBinding.FieldName = 'IMPORTE'
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
    object tsEfectivo: TTabSheet
      Caption = 'Mov.Efectivo'
      ImageIndex = 7
      DesignSize = (
        996
        593)
      object Label12: TLabel
        Left = 8
        Top = 8
        Width = 109
        Height = 13
        Caption = 'Movmiento de Efectivo'
      end
      object dbgEfectivo: TDBGrid
        Left = 0
        Top = 31
        Width = 937
        Height = 403
        DataSource = DatosCaja.DSEfectivo
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clMaroon
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_COMPROB'
            Title.Alignment = taCenter
            Title.Caption = 'Tc.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clMaroon
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 27
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLASE_COMPRO'
            Title.Alignment = taCenter
            Title.Caption = 'Cp'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clMaroon
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 23
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NROCOMPROB'
            Title.Alignment = taCenter
            Title.Caption = 'Nro.Cpbte'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clMaroon
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMBRE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clMaroon
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 290
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEBE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clMaroon
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 138
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HABER'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clMaroon
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 137
            Visible = True
          end>
      end
      object edDebe: TJvCalcEdit
        Left = 599
        Top = 483
        Width = 121
        Height = 21
        DisplayFormat = ',0.00'
        Anchors = [akLeft, akBottom]
        ShowButton = False
        TabOrder = 1
        DecimalPlacesAlwaysShown = False
      end
      object edHaber: TJvCalcEdit
        Left = 726
        Top = 483
        Width = 121
        Height = 21
        DisplayFormat = ',0.00'
        Anchors = [akLeft, akBottom]
        ShowButton = False
        TabOrder = 2
        DecimalPlacesAlwaysShown = False
      end
    end
    object tstarjetas: TTabSheet
      Caption = 'Tarjetas de Credito'
      ImageIndex = 8
      object Label13: TLabel
        Left = 3
        Top = 225
        Width = 288
        Height = 16
        Caption = 'Cupones de Tarjetas de Credito Compras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 3
        Top = 4
        Width = 274
        Height = 16
        Caption = 'Cupones de Tarjetas de Credito Ventas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgMovTCVenta: TJvDBGrid
        Left = 3
        Top = 26
        Width = 702
        Height = 175
        DataSource = DatosCaja.DSMovTCVenta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDblClick = VerComprobanteExecute
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Title.Color = clMoneyGreen
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_COMPROB'
            Title.Alignment = taCenter
            Title.Caption = 'Tc.'
            Title.Color = clMoneyGreen
            Width = 27
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLASE_COMPROB'
            Title.Alignment = taCenter
            Title.Caption = 'Cp'
            Title.Color = clMoneyGreen
            Width = 23
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NRO_COMPROBANTE'
            Title.Alignment = taCenter
            Title.Caption = 'Nro.Cpbte'
            Title.Color = clMoneyGreen
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPORTE'
            Title.Alignment = taCenter
            Title.Color = clMoneyGreen
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MUESTRATARJETA'
            Title.Alignment = taCenter
            Title.Caption = 'Tarjeta'
            Title.Color = clMoneyGreen
            Width = 124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAN_CUOTAS'
            Title.Alignment = taCenter
            Title.Caption = 'Cuotas'
            Title.Color = clMoneyGreen
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NRO_CUPON'
            Title.Alignment = taCenter
            Title.Caption = 'Nro. de Cupon'
            Title.Color = clMoneyGreen
            Width = 95
            Visible = True
          end>
      end
      object dbgMovTCCompra: TJvDBGrid
        Left = 3
        Top = 247
        Width = 702
        Height = 178
        DataSource = DatosCaja.DSMovTCCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'FECHA_CUPON'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Title.Color = clMoneyGreen
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOCPBTE'
            Title.Alignment = taCenter
            Title.Caption = 'Tc.'
            Title.Color = clMoneyGreen
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 27
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLASECPBTE'
            Title.Alignment = taCenter
            Title.Caption = 'Cp'
            Title.Color = clMoneyGreen
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 23
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NROCPBTE'
            Title.Alignment = taCenter
            Title.Caption = 'Nro.Cpbte'
            Title.Color = clMoneyGreen
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPORTE'
            Title.Alignment = taCenter
            Title.Color = clMoneyGreen
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MUESTRATARJETA'
            Title.Alignment = taCenter
            Title.Caption = 'Tarjeta'
            Title.Color = clMoneyGreen
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUOTAS'
            Title.Alignment = taCenter
            Title.Caption = 'Cuotas'
            Title.Color = clMoneyGreen
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO_CUPON'
            Title.Alignment = taCenter
            Title.Caption = 'Nro. de Cupon'
            Title.Color = clMoneyGreen
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 95
            Visible = True
          end>
      end
    end
    object pagPresupuestos: TTabSheet
      Caption = 'Presupuesto'
      ImageIndex = 10
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 996
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Color = clGradientActiveCaption
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          996
          41)
        object Label16: TLabel
          Left = 643
          Top = 2
          Width = 34
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Desde:'
          ExplicitLeft = 642
        end
        object Label17: TLabel
          Left = 762
          Top = 2
          Width = 31
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Hasta:'
          ExplicitLeft = 761
        end
        object btPrevPres: TSpeedButton
          Left = 880
          Top = 15
          Width = 13
          Height = 22
          Anchors = [akRight, akBottom]
          Caption = '<'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btPrevPresClick
          ExplicitLeft = 882
        end
        object btNextPres: TSpeedButton
          Left = 893
          Top = 15
          Width = 13
          Height = 22
          Anchors = [akRight, akBottom]
          Caption = '>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btNextPresClick
          ExplicitLeft = 895
        end
        object DesdePres: TJvDateEdit
          Left = 643
          Top = 16
          Width = 113
          Height = 21
          Anchors = [akTop, akRight]
          ShowNullDate = False
          TabOrder = 0
          OnAcceptDate = DesdePresAcceptDate
        end
        object HastaPres: TJvDateEdit
          Left = 762
          Top = 16
          Width = 111
          Height = 21
          Anchors = [akTop, akRight]
          ShowNullDate = False
          TabOrder = 1
          OnAcceptDate = HastaPresAcceptDate
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 552
        Width = 996
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        Color = clActiveCaption
        ParentBackground = False
        TabOrder = 1
        DesignSize = (
          996
          41)
        object BbuscarPresus: TButton
          Left = 896
          Top = 6
          Width = 75
          Height = 25
          Action = BuscarPresu
          Anchors = [akTop, akRight, akBottom]
          TabOrder = 0
        end
      end
      object dbgPresacobrar: TDBGrid
        Left = 0
        Top = 41
        Width = 996
        Height = 511
        Align = alClient
        DataSource = DatosCaja.DSpresuACobrar
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = dbgPresacobrarDrawColumnCell
        OnDblClick = dbgPresacobrarDblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FECHAVTA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 71
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NROCPBTE'
            Title.Alignment = taCenter
            Title.Caption = 'Nro. Cpbte.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 87
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'Codigo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMBRE'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 233
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CUIT'
            Title.Alignment = taCenter
            Title.Caption = 'Cuit'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Title.Alignment = taCenter
            Title.Caption = 'Importe'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 96
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FACTURANRO'
            Title.Alignment = taCenter
            Title.Caption = 'Nro. Factura'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 89
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ANULADO'
            Title.Alignment = taCenter
            Title.Caption = 'Estado'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMBRE_CUENTA'
            Title.Alignment = taCenter
            Title.Caption = 'Cuenta Caja'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 198
            Visible = True
          end>
      end
    end
    object Arqueos: TTabSheet
      Caption = 'Arqueos de Caja'
      ImageIndex = 9
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 609
        Height = 593
        Align = alLeft
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object cxGrid3DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DatosCaja.DSArqueoCab
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0.00'
              Kind = skSum
              FieldName = 'TOTAL_ARQUEO'
              Column = cxGrid3DBTableView1TOTAL_ARQUEO
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GroupByBox = False
          Styles.Content = cxStyle2
          Styles.Header = cxStyle1
          object cxGrid3DBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object cxGrid3DBTableView1ID_CAJA: TcxGridDBColumn
            DataBinding.FieldName = 'ID_CAJA'
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object cxGrid3DBTableView1ID_CTA_CAJA: TcxGridDBColumn
            DataBinding.FieldName = 'ID_CTA_CAJA'
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object cxGrid3DBTableView1ID_MOV_CAJA: TcxGridDBColumn
            DataBinding.FieldName = 'ID_MOV_CAJA'
            HeaderAlignmentHorz = taCenter
            Width = 70
          end
          object cxGrid3DBTableView1FECHA_HORA: TcxGridDBColumn
            DataBinding.FieldName = 'FECHA_HORA'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
            Width = 155
          end
          object cxGrid3DBTableView1SALDO_EFECTIVO: TcxGridDBColumn
            DataBinding.FieldName = 'SALDO_EFECTIVO'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
            Width = 120
          end
          object cxGrid3DBTableView1SALDO_OTROS: TcxGridDBColumn
            DataBinding.FieldName = 'SALDO_OTROS'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
            Width = 109
          end
          object cxGrid3DBTableView1TOTAL_ARQUEO: TcxGridDBColumn
            DataBinding.FieldName = 'TOTAL_ARQUEO'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
            Width = 111
          end
        end
        object cxGrid3DBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DatosCaja.DSArqueoDet
          DataController.DetailKeyFieldNames = 'ID_CAB'
          DataController.KeyFieldNames = 'ID'
          DataController.MasterKeyFieldNames = 'ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0.00;-,0.00;-'
              Kind = skSum
              FieldName = 'IMPORTE'
              Column = cxGrid3DBTableView2IMPORTE
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Styles.Header = cxStyle1
          object cxGrid3DBTableView2ID_CAJA: TcxGridDBColumn
            DataBinding.FieldName = 'ID_CAJA'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
          end
          object cxGrid3DBTableView2ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
          end
          object cxGrid3DBTableView2ID_CAB: TcxGridDBColumn
            DataBinding.FieldName = 'ID_CAB'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
          end
          object cxGrid3DBTableView2ID_TPAGO: TcxGridDBColumn
            DataBinding.FieldName = 'ID_TPAGO'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
          end
          object cxGrid3DBTableView2DENOMINACIO: TcxGridDBColumn
            DataBinding.FieldName = 'DENOMINACIO'
            HeaderAlignmentHorz = taCenter
            MinWidth = 30
            Options.Editing = False
            Options.Focusing = False
            Width = 100
          end
          object cxGrid3DBTableView2CANTIDAD: TcxGridDBColumn
            DataBinding.FieldName = 'CANTIDAD'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
            Width = 70
          end
          object cxGrid3DBTableView2IMPORTE: TcxGridDBColumn
            DataBinding.FieldName = 'IMPORTE'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
            Width = 80
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBTableView1
          object cxGrid3Level2: TcxGridLevel
            GridView = cxGrid3DBTableView2
          end
        end
      end
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 621
    Width = 1004
    Height = 49
    Align = alBottom
    TabOrder = 1
    OnDblClick = pnPieDblClick
    object BitBtn1: TBitBtn
      Left = 510
      Top = 6
      Width = 89
      Height = 30
      Action = Imprimir
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
    end
    object btAbiertas: TBitBtn
      Left = 153
      Top = 6
      Width = 137
      Height = 31
      Caption = '&Buscar Caja Abiertas'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFD6D600FFD6D600FFFFFF00FFFFFF00CE9C9C000000
        0000737B7300737B7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000CE9C9C00FFD6D600FFD6D600FFD6D600FFFFFF00FFFFFF00CE9C9C00CE9C
        9C00CE9C9C0000000000737B7300FF00FF00FF00FF00FF00FF0000000000CE9C
        9C00CE9C9C00FFD6D6000000000000000000000000000000000000000000CE9C
        9C00CE9C9C00CE9C9C0000000000737B7300FF00FF00FF00FF00CE9C9C00CE9C
        9C0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000CE9C9C00CE9C9C00737B7300737B7300FF00FF00CE9C9C00FFFF
        FF00FFFFFF0000000000FF8CA500FF8CA500FF8CA500FF8CA500FF8CA5000000
        0000FFFFFF00FFFFFF00CE9C9C00737B7300737B7300FF00FF00FFFFFF00FFFF
        FF009C635A00FF8CA500FF8CA500FF8CA500FF8CA500FFFFFF00FFFFFF00FF8C
        A500FF8CA500FFFFFF00FFFFFF00737B7300737B7300FF00FF00FFFFFF000000
        0000CE9C9C009C635A00FFD6D600FF8CA500FF8CA500FF8CA500FF8CA5009C63
        5A00FF8CA50000000000FFFFFF00737B7300737B7300FF00FF00FFFFFF00FFFF
        FF00CE9C9C00CE9C9C00FFD6D600FF8CA500FF8CA500FF8CA500FF8CA500CE9C
        9C00FF8CA500FFFFFF00FFFFFF00737B7300FF00FF00FF00FF00FF00FF00FFFF
        FF00FFFFFF0000000000CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C000000
        0000FFFFFF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00000000008C948C00737B7300FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000000000000000000000000000BDBD
        BD00FFFFFF00BDBDBD0000000000737B7300FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000000000000000000000000000737B7300FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0021212100212121000000000000000000737B7300FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0021212100212121000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00212121002121210000000000}
      TabOrder = 1
      OnClick = btAbiertasClick
    end
    object btSalir: TBitBtn
      Left = 773
      Top = 5
      Width = 75
      Height = 31
      Caption = '&Salir'
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
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030707070707
        070707070707070707070707070703FFFFFFFFFFFFFFFFFFFFFFFF0303030303
        03FFF8F8F8F8F8F8F8F8F8F8F8F8FF07FF07FF07F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8030303030303F8F8F8F8F8F8F8F8F8F8F8F8F80707FF07FF07F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8FF030303FFFFF8F8F80404040404040000F8F8F8FFFFFF
        040404040404F8F8F8F8F8F8F8F8F8F8F8030303F8F8F8F8F803030303030304
        FD05000007FFFFFF0403030303030303030303F8FFF8F8F8FF030303F8FF0303
        030303030303030405FD0500FFFFFFFF0403030303030303030303F8F807F8F8
        FF030303F8FF03030303030303030304FD05FD00FFFFFFFF0403030303030303
        030303F8FFF807F8FF030303F8FF0303030303030303030405FD0500FFFEFFFE
        0403030303030303030303F8F807F8F8FF030303F8FF03030303030303030304
        FD05FD00FFFFFFFF0403030303030303030303F8FFF807F8FF030303F8FF0303
        030303030303030405FD0500FFFEFFFE0403030303030303030303F8F807F8F8
        FF030303F8FF03030303030303030304FD05FD00FFFFFFFF0403030303030303
        030303F8FFF807F8FF030303F8FF0303030303030303030405FD0500FFFEFFFE
        0403030303030303030303F8F807F8F8FF030303F8FF03030303030303030304
        FD05FD00FEFFFEFF0403030303030303030303F8FFF807F8FF030303F8FF0303
        030303030303030405FD0500FFFEFFFE0403030303030303030303F8F807F8F8
        FF030303F8FF03030303030303030304FD05FD00FEFFFEFF0403030303030303
        030303F8FFF8FFF8FFFFFFFFF8FF030303030303030303040404040404040404
        0403030303030303030303F8F8F8F8F8F8F8F8F8F80303030303030303030303
        03030303030303030303030303030303030303030303FFFFFFFFFFFF03030303
        0303030303030303030000000000000303030303030303030303030303F8F8F8
        F8F8F8FF0303030303030303030303030300FAFAFAFA00030303030303030303
        0303030303F8FFFFFFFFF8FF0303030303030303030303030300000000000003
        03030303030303030303030303F8F8F8F8F8F803030303030303}
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btSalirClick
    end
    object btRefresh: TBitBtn
      Left = 618
      Top = 5
      Width = 75
      Height = 31
      Action = Refresh
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
      TabOrder = 3
    end
    object btCerradas: TBitBtn
      Left = 10
      Top = 6
      Width = 137
      Height = 31
      Caption = '&Buscar Cajas Cerradas'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFD6D600FFD6D600FFFFFF00FFFFFF00CE9C9C000000
        0000737B7300737B7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000CE9C9C00FFD6D600FFD6D600FFD6D600FFFFFF00FFFFFF00CE9C9C00CE9C
        9C00CE9C9C0000000000737B7300FF00FF00FF00FF00FF00FF0000000000CE9C
        9C00CE9C9C00FFD6D6000000000000000000000000000000000000000000CE9C
        9C00CE9C9C00CE9C9C0000000000737B7300FF00FF00FF00FF00CE9C9C00CE9C
        9C0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000CE9C9C00CE9C9C00737B7300737B7300FF00FF00CE9C9C00FFFF
        FF00FFFFFF0000000000FF8CA500FF8CA500FF8CA500FF8CA500FF8CA5000000
        0000FFFFFF00FFFFFF00CE9C9C00737B7300737B7300FF00FF00FFFFFF00FFFF
        FF009C635A00FF8CA500FF8CA500FF8CA500FF8CA500FFFFFF00FFFFFF00FF8C
        A500FF8CA500FFFFFF00FFFFFF00737B7300737B7300FF00FF00FFFFFF000000
        0000CE9C9C009C635A00FFD6D600FF8CA500FF8CA500FF8CA500FF8CA5009C63
        5A00FF8CA50000000000FFFFFF00737B7300737B7300FF00FF00FFFFFF00FFFF
        FF00CE9C9C00CE9C9C00FFD6D600FF8CA500FF8CA500FF8CA500FF8CA500CE9C
        9C00FF8CA500FFFFFF00FFFFFF00737B7300FF00FF00FF00FF00FF00FF00FFFF
        FF00FFFFFF0000000000CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C000000
        0000FFFFFF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00000000008C948C00737B7300FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000000000000000000000000000BDBD
        BD00FFFFFF00BDBDBD0000000000737B7300FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000000000000000000000000000737B7300FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0021212100212121000000000000000000737B7300FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0021212100212121000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00212121002121210000000000}
      TabOrder = 4
      OnClick = btCerradasClick
    end
    object BitBtn3: TBitBtn
      Left = 314
      Top = 6
      Width = 89
      Height = 31
      Action = CerrarCaja
      Caption = '&Cerrar Caja'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        0000001C1F1C383F38383F38383F38383F38383F38FF00FFFF00FFFF00FF0000
        002F2F2F707F70707F70FF00FF0000000000A700006C383F38383F38383F3838
        3F38383F38FF00FF0000005F5F5FCFCFCF5F5F5F383F38FF00FFFF00FF000037
        0000DF0000A3000024FF00FFFF00FFFF00FF0000005F5F5FCFCFCFE0E0E0A8A8
        A85F5F5FFF00FFFF00FF0000000000A74C4FEF0000CB00006C0000000000005F
        5F5FCBCBCBDBDBDBE0E0E0A8A8A8E0E0E05F5F5FFF00FFFF00FF0000373434E7
        7C87FF0000A70000A3000024CFCFCFE0E0E0707070707070E0E0E0A8A8A8A8A8
        A85F5F5FFF00FFFF00FF181B3F606FFF4C4F7F0000000000CB00006C70707070
        7070E0E0E0707070E0E0E0E0E0E0A8A8A85F5F5FFF00FFFF00FFFF00FF000000
        00000000000000006F0000A338385C707070707070E0E0E0E0E0E0A8A8A8E0E0
        E05F5F5FFF00FFFF00FFFF00FFFF00FFFF00FF0000007F7F7F0000CB00006CA8
        A8A8707070707070E0E0E0A8A8A8A8A8A85F5F5FFF00FFFF00FFFF00FFFF00FF
        FF00FF000000EFEFEF00006F3434BF181B3FE0E0E0E0E0E0E0E0E0EFEFEFDFDF
        DF5F5F5FFF00FFFF00FFFF00FFFF00FFFF00FF000000EFEFEF3838387C87FF34
        3B5BA8A8A8EFEFEFDFDFDFCFCFCFA8A8A85F5F5FFF00FFFF00FFFF00FFFF00FF
        FF00FF000000EFEFEF707070707070EFEFEFDFDFDFCFCFCFE0E0E0A8A8A8E0E0
        E05F5F5FFF00FFFF00FFFF00FFFF00FFFF00FF000000EFEFEFEFEFEFDFDFDFCF
        CFCF707070707070E0E0E0EFEFEF7F7F7F000000FF00FFFF00FFFF00FFFF00FF
        FF00FF000000DFDFDFCFCFCF707070707070E0E0E0EFEFEF7F7F7F000000FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000EFEFEF707070E0E0E0EF
        EFEF7F7F7F000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF000000EFEFEFEFEFEF7F7F7F000000FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FFFFFF000000FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 5
    end
    object bt1: TBitBtn
      Left = 693
      Top = 5
      Width = 75
      Height = 31
      Action = VerPendientes
      Caption = 'Tx Pendientes'
      NumGlyphs = 2
      TabOrder = 6
    end
  end
  object ActionList1: TActionList
    Left = 512
    Top = 224
    object BuscarCaja: TAction
      Caption = '&Buscar'
      ImageIndex = 1
      OnExecute = BuscarCajaExecute
    end
    object Imprimir: TAction
      Caption = '&Imprimir'
      OnExecute = ImprimirExecute
    end
    object CerrarCaja: TAction
      Caption = '&Cerrar Caja'
      Enabled = False
      OnExecute = CerrarCajaExecute
    end
    object Disenoreporte: TAction
      Caption = 'Dise'#241'o Reporte'
      OnExecute = DisenoreporteExecute
    end
    object CalcularValores: TAction
      Caption = 'CalcularValores'
      OnExecute = CalcularValoresExecute
    end
    object Refresh: TAction
      Caption = 'Refresh'
      OnExecute = RefreshExecute
    end
    object VerPendientes: TAction
      Caption = 'Tx Pendientes'
      OnExecute = VerPendientesExecute
    end
    object VerComprobante: TAction
      Caption = 'VerComprobante'
      OnExecute = VerComprobanteExecute
    end
    object CambiarDeCaja: TAction
      Caption = 'Cambiar De Caja'
      OnExecute = CambiarDeCajaExecute
    end
    object CambiarCajaLote: TAction
      Caption = 'Cambiar Caja a un Lote de Comprobantes'
      OnExecute = CambiarCajaLoteExecute
    end
    object InformarArticulosVtas: TAction
      Caption = 'Generar Inform XML'
      ShortCut = 24641
      OnExecute = InformarArticulosVtasExecute
    end
    object ListarArtiVendidos: TAction
      Caption = 'Listar Art.'
      ShortCut = 24662
      OnExecute = ListarArtiVendidosExecute
    end
    object ExportarXLS: TAction
      Caption = 'Exportar XLS'
      OnExecute = ExportarXLSExecute
    end
    object ExportarConsulta: TAction
      Caption = 'ExportarConsulta'
      OnExecute = ExportarConsultaExecute
    end
    object LeerCajas: TAction
      Caption = 'LeerCajas'
      OnExecute = LeerCajasExecute
    end
    object IngresoGastos: TAction
      Caption = 'Ingresar Gastos'
      OnExecute = IngresoGastosExecute
    end
    object BorrarMovCpbte_Ing: TAction
      Caption = 'Borrar Mov/Cpbte Ing'
      OnExecute = BorrarMovCpbte_IngExecute
    end
    object BorrarCaja: TAction
      Caption = 'Borrar Caja'
      OnExecute = BorrarCajaExecute
    end
    object BuscarPresu: TAction
      Caption = 'Buscar'
      OnExecute = BuscarPresuExecute
    end
  end
  object ImageList1: TImageList
    Left = 512
    Top = 304
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C6000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00840000008400000084000000FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600FFFF
      FF000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF008400
      000084000000840000008400000084000000FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000C6C6C600C6C6C60000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6
      C600C6C6C6008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00840000008400
      00008400000084000000840000008400000084000000FFFFFF00000000000000
      000000000000000000000000000000000000C6C6C600FFFFFF00FFFFFF000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000FFFFFF00FFFF
      FF00C6C6C6008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00840000008400000084000000FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0084848400C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600FFFF
      FF00FFFFFF008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00840000008400000084000000FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000FFFFFF0000000000C6C6C6008484
      8400FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C60084848400C6C6C6000000
      0000FFFFFF008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00840000008400000084000000FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00C6C6C600C6C6
      C600FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600FFFFFF00C6C6
      C600000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00001FFFFFFFFF0000001FE00FFFFF0000
      001F8007FFFF0000001F0003FFFF0000001F0001FFFF0000001F0001FFFF0000
      001F0001FFFF0000001F0001FFFF0000001F0003FFFF0000001F800FFFFF0000
      001FC007FFFF0000FFFFF003FFFF0000FFFFFFC1FFFF0000FFFFFFE0FFFF0000
      FFFFFFF0FFFF0000FFFFFFF8FFFF000000000000000000000000000000000000
      000000000000}
  end
  object frCaja: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.121818379600000000
    ReportOptions.LastChange = 39665.472188217600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 560
    Top = 88
    Datasets = <
      item
        DataSet = FormRecibo_2.frDBAplicaciones
        DataSetName = 'frDBAplicaciones'
      end
      item
      end
      item
        DataSet = FormOPago_2.frDBCheques
        DataSetName = 'frDBCheques'
      end
      item
        DataSet = frDBDCajaCab
        DataSetName = 'frDBDCajaCab'
      end
      item
        DataSet = frDBDCajaDetEgreso
        DataSetName = 'frDBDCajaDetEgreso'
      end
      item
        DataSet = frDBDCajaDetIngreso
        DataSetName = 'frDBDCajaDetIngreso'
      end
      item
        DataSet = frDBDChe3Ent
        DataSetName = 'frDBDChe3Ent'
      end
      item
        DataSet = frDBDChe3Rec
        DataSetName = 'frDBDChe3Rec'
      end
      item
        DataSet = frDBDCheques
        DataSetName = 'frDBDCheques'
      end
      item
        DataSet = frDBDDebitos
        DataSetName = 'frDBDDebitos'
      end
      item
        DataSet = frDBDDepositos
        DataSetName = 'frDBDDepositos'
      end
      item
        DataSet = FormLibroIvaVenta_2.frDBDebitos
        DataSetName = 'frDBDebitos'
      end
      item
        DataSet = frDBDEfectivo
        DataSetName = 'frDBDEfectivo'
      end
      item
        DataSet = frDBDRetenciones
        DataSetName = 'frDBDRetenciones'
      end
      item
        DataSet = frDBDSaldoFinal
        DataSetName = 'frDBDSaldoFinal'
      end
      item
        DataSet = frDBDSaldoInicial
        DataSetName = 'frDBDSaldoInicial'
      end
      item
      end
      item
        DataSet = frDBDTxGenerada
        DataSetName = 'frDBDTxGenerada'
      end
      item
        DataSet = frDBDTxRecibidas
        DataSetName = 'frDBDTxRecibidas'
      end
      item
      end
      item
      end
      item
      end
      item
        DataSet = FormOPago_2.frDBOPago
        DataSetName = 'frDBOPago'
      end
      item
        DataSet = FormOPago_2.frDBRetencionesGanancia
        DataSetName = 'frDBRetencionesGanancia'
      end
      item
        DataSet = FormOPago_2.frDBRetIngBrCab
        DataSetName = 'frDBRetIngBrCab'
      end
      item
        DataSet = FormOPago_2.frDBRetIngBrDet
        DataSetName = 'frDBRetIngBrDet'
      end
      item
        DataSet = FormOPago_2.frDBTransferencias
        DataSetName = 'frDBTransferencias'
      end>
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
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Columns = 1
      ColumnWidth = 200.000000000000000000
      ColumnPositions.Strings = (
        '0')
      Frame.Typ = []
      MirrorMode = []
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        Columns = 1
        ColumnWidth = 350.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frDBDCajaDetIngreso
        DataSetName = 'frDBDCajaDetIngreso'
        RowCount = 0
      end
      object DatosMaestros1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 14.000000000000000000
        Top = 177.637910000000000000
        Width = 755.906000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frDBDCajaCab
        DataSetName = 'frDBDCajaCab'
        RowCount = 0
        object Line36: TfrxLineView
          AllowVectorExport = True
          Left = 16.677180000000000000
          Top = 8.377860000000000000
          Width = 731.000000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 98.661410000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object SubReport1: TfrxSubreport
          AllowVectorExport = True
          Left = 14.000000000000000000
          Top = 65.543290000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          Page = frCaja.Page5
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 466.000000000000000000
          Top = 29.763760000000000000
          Width = 228.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'Fecha Inicio: [frDBDCajaCab."FECHA_INCIO"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 466.000000000000000000
          Top = 53.763760000000000000
          Width = 228.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'Fecha de Cierre :[frDBDCajaCab."FECHA_CIERRE"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 33.763760000000000000
          Width = 164.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 5.763760000000000000
          Width = 188.000000000000000000
          Height = 24.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'Planilla de Caja')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 466.000000000000000000
          Top = 5.763760000000000000
          Width = 124.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'Numero [frDBDCajaCab."NUMEROCAJA"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 206.000000000000000000
          Top = 5.763760000000000000
          Width = 180.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBDCajaCab."MUESTRACTACAJA"]')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          AllowVectorExport = True
          Left = 249.000000000000000000
          Top = 25.763760000000000000
          Width = 42.000000000000000000
          Height = 12.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'hh:nn:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          AllowVectorExport = True
          Left = 206.000000000000000000
          Top = 25.763760000000000000
          Width = 40.000000000000000000
          Height = 12.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'dd/mm/yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 71.000000000000000000
        Top = 298.582870000000000000
        Width = 755.906000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frDBDCajaCab
        DataSetName = 'frDBDCajaCab'
        RowCount = 0
        object SubReport6: TfrxSubreport
          AllowVectorExport = True
          Left = 5.559060000000000000
          Top = 39.432900000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          Page = frCaja.Page9
        end
        object Line43: TfrxLineView
          AllowVectorExport = True
          Left = -3.000000000000000000
          Top = 27.212430000000000000
          Width = 731.000000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 0.432900000000000000
          Width = 164.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'Saldos Finales')
          ParentFont = False
        end
      end
      object Band7: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Top = 257.008040000000000000
        Width = 755.906000000000000000
        Columns = 1
        ColumnWidth = 350.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frDBDCajaDetEgreso
        DataSetName = 'frDBDCajaDetEgreso'
        RowCount = 0
        object SubReport3: TfrxSubreport
          AllowVectorExport = True
          Left = 4.338590000000000000
          Top = 1.125850000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          Page = frCaja.Page8
        end
      end
      object SubReport2: TfrxSubreport
        AllowVectorExport = True
        Left = 4.338590000000000000
        Top = 213.354360000000000000
        Width = 96.000000000000000000
        Height = 18.000000000000000000
        Page = frCaja.Page7
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 38.000000000000000000
        Top = 236.000000000000000000
        OnBeforePrint = 'GroupHeader1OnBeforePrint'
        Condition = '[QEfectivo."ID_FPAGO"]'
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 50.000000000000000000
        Top = 312.000000000000000000
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 14.000000000000000000
        Top = 285.000000000000000000
        OnBeforePrint = 'MasterData3OnBeforePrint'
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 38.000000000000000000
        Top = 164.000000000000000000
      end
      object Band10: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 86.000000000000000000
        Top = 40.000000000000000000
      end
      object Memo47: TfrxMemoView
        AllowVectorExport = True
        Left = 122.000000000000000000
        Top = 285.000000000000000000
        Width = 20.000000000000000000
        Height = 12.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo100: TfrxMemoView
        AllowVectorExport = True
        Left = 146.000000000000000000
        Top = 285.000000000000000000
        Width = 96.000000000000000000
        Height = 13.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo116: TfrxMemoView
        AllowVectorExport = True
        Left = 246.000000000000000000
        Top = 285.000000000000000000
        Width = 88.000000000000000000
        Height = 13.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo117: TfrxMemoView
        AllowVectorExport = True
        Left = 487.000000000000000000
        Top = 285.000000000000000000
        Width = 96.000000000000000000
        Height = 13.000000000000000000
        StretchMode = smMaxHeight
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Memo118: TfrxMemoView
        AllowVectorExport = True
        Left = 595.000000000000000000
        Top = 285.000000000000000000
        Width = 96.000000000000000000
        Height = 13.000000000000000000
        StretchMode = smMaxHeight
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Memo119: TfrxMemoView
        AllowVectorExport = True
        Left = 2.000000000000000000
        Top = 240.000000000000000000
        Width = 188.000000000000000000
        Height = 18.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Line106: TfrxLineView
        AllowVectorExport = True
        Left = 2.000000000000000000
        Top = 360.000000000000000000
        Width = 708.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 2.000000000000000000
      end
      object Memo121: TfrxMemoView
        AllowVectorExport = True
        Left = 595.000000000000000000
        Top = 316.000000000000000000
        Width = 96.000000000000000000
        Height = 15.000000000000000000
        StretchMode = smMaxHeight
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Memo122: TfrxMemoView
        AllowVectorExport = True
        Left = 487.000000000000000000
        Top = 316.000000000000000000
        Width = 96.000000000000000000
        Height = 18.000000000000000000
        StretchMode = smMaxHeight
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Memo120: TfrxMemoView
        AllowVectorExport = True
        Left = 595.000000000000000000
        Top = 336.000000000000000000
        Width = 96.000000000000000000
        Height = 18.000000000000000000
        StretchMode = smMaxHeight
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Memo123: TfrxMemoView
        AllowVectorExport = True
        Left = -2.000000000000000000
        Top = 168.000000000000000000
        Width = 332.000000000000000000
        Height = 26.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Memo124: TfrxMemoView
        AllowVectorExport = True
        Left = 535.000000000000000000
        Top = 256.000000000000000000
        Width = 44.000000000000000000
        Height = 18.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        HideZeros = True
        ParentFont = False
      end
      object Memo125: TfrxMemoView
        AllowVectorExport = True
        Left = 643.000000000000000000
        Top = 256.000000000000000000
        Width = 40.000000000000000000
        Height = 18.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        HideZeros = True
        ParentFont = False
      end
      object Memo126: TfrxMemoView
        AllowVectorExport = True
        Left = 467.000000000000000000
        Top = 336.000000000000000000
        Width = 116.000000000000000000
        Height = 18.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        AllowVectorExport = True
        Left = 2.000000000000000000
        Top = 285.000000000000000000
        Width = 112.000000000000000000
        Height = 13.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo14: TfrxMemoView
        AllowVectorExport = True
        Left = 402.000000000000000000
        Top = 285.000000000000000000
        Width = 72.000000000000000000
        Height = 13.000000000000000000
        StretchMode = smMaxHeight
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Memo45: TfrxMemoView
        AllowVectorExport = True
        Left = 406.000000000000000000
        Top = 256.000000000000000000
        Width = 72.000000000000000000
        Height = 18.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        HideZeros = True
        ParentFont = False
      end
      object Memo46: TfrxMemoView
        AllowVectorExport = True
        Left = 346.000000000000000000
        Top = 285.000000000000000000
        Width = 52.000000000000000000
        Height = 13.000000000000000000
        StretchMode = smMaxHeight
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Memo134: TfrxMemoView
        AllowVectorExport = True
        Left = 338.000000000000000000
        Top = 256.000000000000000000
        Width = 64.000000000000000000
        Height = 18.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        HideZeros = True
        ParentFont = False
      end
      object Line13: TfrxLineView
        AllowVectorExport = True
        Left = 462.000000000000000000
        Top = 336.000000000000000000
        Width = 224.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line14: TfrxLineView
        AllowVectorExport = True
        Left = 294.000000000000000000
        Top = 316.000000000000000000
        Width = 400.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo101: TfrxMemoView
        AllowVectorExport = True
        Left = 310.000000000000000000
        Top = 317.000000000000000000
        Width = 172.000000000000000000
        Height = 17.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo102: TfrxMemoView
        AllowVectorExport = True
        Left = 482.000000000000000000
        Top = 44.000000000000000000
        Width = 228.000000000000000000
        Height = 18.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo103: TfrxMemoView
        AllowVectorExport = True
        Left = 482.000000000000000000
        Top = 68.000000000000000000
        Width = 228.000000000000000000
        Height = 18.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo104: TfrxMemoView
        AllowVectorExport = True
        Left = 22.000000000000000000
        Top = 44.000000000000000000
        Width = 188.000000000000000000
        Height = 24.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo105: TfrxMemoView
        AllowVectorExport = True
        Left = 482.000000000000000000
        Top = 92.000000000000000000
        Width = 124.000000000000000000
        Height = 18.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic, fsUnderline]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo106: TfrxMemoView
        AllowVectorExport = True
        Left = 238.000000000000000000
        Top = 52.000000000000000000
        Width = 180.000000000000000000
        Height = 18.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Top = 207.874150000000000000
        Width = 755.906000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
      end
      object TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Top = 249.448980000000000000
        Width = 755.906000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
        object SubReport4: TfrxSubreport
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 10.551020000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          Page = frCaja.Page13
        end
      end
      object TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Top = 291.023810000000000000
        Width = 755.906000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
        object SubReport7: TfrxSubreport
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 8.976190000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          Page = frCaja.Page12
        end
      end
      object TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Top = 332.598640000000000000
        Width = 755.906000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
        object SubReport5: TfrxSubreport
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 11.401360000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          Page = frCaja.Page10
        end
      end
      object TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Top = 374.173470000000000000
        Width = 755.906000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
        object SubReport8: TfrxSubreport
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 13.826530000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          Page = frCaja.Page4
        end
      end
      object TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Top = 415.748300000000000000
        Width = 755.906000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
        object SubReport9: TfrxSubreport
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 12.251700000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          Page = frCaja.Page11
        end
      end
      object DatosMaestros9: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 20.000000000000000000
        Top = 166.299320000000000000
        Width = 755.906000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
        StartNewPage = True
      end
      object Band6: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 86.000000000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 466.000000000000000000
          Top = 53.102350000000000000
          Width = 228.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 466.000000000000000000
          Top = 77.102350000000000000
          Width = 228.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 29.102350000000000000
          Width = 188.000000000000000000
          Height = 24.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 466.000000000000000000
          Top = 29.102350000000000000
          Width = 124.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 206.000000000000000000
          Top = 29.102350000000000000
          Width = 180.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
      end
      object TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Top = 457.323130000000000000
        Width = 755.906000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
        object SubReport10: TfrxSubreport
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 6.676870000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          Page = frCaja.Page6
        end
      end
      object Memo83: TfrxMemoView
        AllowVectorExport = True
        Left = 10.000000000000000000
        Top = 166.000000000000000000
        Width = 208.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object SubReport11: TfrxSubreport
        AllowVectorExport = True
        Left = 2.000000000000000000
        Top = 508.000000000000000000
        Width = 96.000000000000000000
        Height = 18.000000000000000000
        Page = frCaja.Page14
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object DatosMaestros7: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
      end
      object TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 16.000000000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 6.000000000000000000
          Top = 0.055040000000000000
          Width = 96.000000000000000000
          Height = 14.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 142.000000000000000000
          Top = 0.055040000000000000
          Width = 96.000000000000000000
          Height = 14.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 246.000000000000000000
          Top = 0.055040000000000000
          Width = 72.000000000000000000
          Height = 14.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 326.000000000000000000
          Top = 0.055040000000000000
          Width = 260.000000000000000000
          Height = 14.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
        object Line58: TfrxLineView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 0.055040000000000000
          Height = 15.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line59: TfrxLineView
          AllowVectorExport = True
          Left = 321.000000000000000000
          Top = 0.055040000000000000
          Height = 16.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line60: TfrxLineView
          AllowVectorExport = True
          Left = 242.000000000000000000
          Top = 0.055040000000000000
          Height = 15.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line62: TfrxLineView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 15.055040000000000000
          Width = 593.000000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line63: TfrxLineView
          AllowVectorExport = True
          Left = 595.000000000000000000
          Top = 0.055040000000000000
          Height = 15.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 38.000000000000000000
        Top = 60.472480000000000000
        Width = 755.906000000000000000
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 5.000000000000000000
          Top = 19.527520000000000000
          Width = 168.000000000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 5.000000000000000000
          Top = 37.527520000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 189.000000000000000000
          Top = 35.527520000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 257.000000000000000000
          Top = 35.527520000000000000
          Width = 60.000000000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Line47: TfrxLineView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 15.527520000000000000
          Width = 319.000000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line48: TfrxLineView
          AllowVectorExport = True
          Left = 321.000000000000000000
          Top = 15.527520000000000000
          Height = 41.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line57: TfrxLineView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 15.527520000000000000
          Height = 41.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Top = 158.740260000000000000
        Width = 755.906000000000000000
      end
      object Line61: TfrxLineView
        AllowVectorExport = True
        Left = 2.000000000000000000
        Top = 120.000000000000000000
        Width = 593.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo91: TfrxMemoView
        AllowVectorExport = True
        Left = 226.000000000000000000
        Top = 152.000000000000000000
        Width = 96.000000000000000000
        Height = 17.000000000000000000
        StretchMode = smMaxHeight
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
    end
    object Page5: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 21.779530000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frDBDSaldoInicial
        DataSetName = 'frDBDSaldoInicial'
        RowCount = 0
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559060000000000000
          Top = 2.102350000000000000
          Width = 144.000000000000000000
          Height = 15.000000000000000000
          StretchMode = smMaxHeight
          DataField = 'MUESTRAFORMAPAGO'
          DataSet = frDBDSaldoInicial
          DataSetName = 'frDBDSaldoInicial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBDSaldoInicial."MUESTRAFORMAPAGO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 162.000000000000000000
          Top = 2.102350000000000000
          Width = 108.000000000000000000
          Height = 15.000000000000000000
          StretchMode = smMaxHeight
          DataField = 'IMPORTE'
          DataSet = frDBDSaldoInicial
          DataSetName = 'frDBDSaldoInicial'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBDSaldoInicial."IMPORTE"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 154.000000000000000000
          Top = 0.102350000000000000
          Height = 18.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = -7.000000000000000000
          Top = 0.102350000000000000
          Width = 285.000000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 278.000000000000000000
          Top = 0.102350000000000000
          Height = 18.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = -6.000000000000000000
          Top = 18.102350000000000000
          Width = 284.000000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Line3: TfrxLineView
        AllowVectorExport = True
        Left = -6.000000000000000000
        Top = 44.000000000000000000
        Height = 18.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
    end
    object Page6: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object DatosMaestros8: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Top = 36.000000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
      end
      object TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 40.000000000000000000
        Top = 88.000000000000000000
      end
      object TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 16.000000000000000000
        Top = 131.000000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
      end
      object TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Top = 168.000000000000000000
      end
      object Memo75: TfrxMemoView
        AllowVectorExport = True
        Left = 5.000000000000000000
        Top = 94.000000000000000000
        Width = 168.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo76: TfrxMemoView
        AllowVectorExport = True
        Left = 5.000000000000000000
        Top = 112.000000000000000000
        Width = 48.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo77: TfrxMemoView
        AllowVectorExport = True
        Left = 189.000000000000000000
        Top = 110.000000000000000000
        Width = 48.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo78: TfrxMemoView
        AllowVectorExport = True
        Left = 257.000000000000000000
        Top = 110.000000000000000000
        Width = 60.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Line73: TfrxLineView
        AllowVectorExport = True
        Left = 1.000000000000000000
        Top = 90.000000000000000000
        Width = 320.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line74: TfrxLineView
        AllowVectorExport = True
        Left = 321.000000000000000000
        Top = 90.000000000000000000
        Height = 38.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo79: TfrxMemoView
        AllowVectorExport = True
        Left = 6.000000000000000000
        Top = 131.000000000000000000
        Width = 96.000000000000000000
        Height = 14.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo80: TfrxMemoView
        AllowVectorExport = True
        Left = 142.000000000000000000
        Top = 131.000000000000000000
        Width = 96.000000000000000000
        Height = 14.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo81: TfrxMemoView
        AllowVectorExport = True
        Left = 246.000000000000000000
        Top = 131.000000000000000000
        Width = 72.000000000000000000
        Height = 14.000000000000000000
        StretchMode = smMaxHeight
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Memo82: TfrxMemoView
        AllowVectorExport = True
        Left = 326.000000000000000000
        Top = 131.000000000000000000
        Width = 260.000000000000000000
        Height = 14.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Line75: TfrxLineView
        AllowVectorExport = True
        Left = 321.000000000000000000
        Top = 131.000000000000000000
        Height = 15.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line76: TfrxLineView
        AllowVectorExport = True
        Left = 242.000000000000000000
        Top = 131.000000000000000000
        Height = 15.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line77: TfrxLineView
        AllowVectorExport = True
        Left = 2.000000000000000000
        Top = 131.000000000000000000
        Width = 593.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line78: TfrxLineView
        AllowVectorExport = True
        Left = 2.000000000000000000
        Top = 146.000000000000000000
        Width = 593.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line79: TfrxLineView
        AllowVectorExport = True
        Left = 595.000000000000000000
        Top = 131.000000000000000000
        Height = 15.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line80: TfrxLineView
        AllowVectorExport = True
        Left = 1.000000000000000000
        Top = 91.000000000000000000
        Height = 37.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line81: TfrxLineView
        AllowVectorExport = True
        Left = 1.000000000000000000
        Top = 131.000000000000000000
        Height = 15.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo92: TfrxMemoView
        AllowVectorExport = True
        Left = 224.000000000000000000
        Top = 169.000000000000000000
        Width = 96.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
    end
    object Page7: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object DatosMaestros2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 24.000000000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frDBDCajaCab
        DataSetName = 'frDBDCajaCab'
        RowCount = 0
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 9.118120000000000000
          Top = 1.543290000000000000
          Width = 84.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'Ingresos')
          ParentFont = False
        end
      end
      object TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 15.000000000000000000
        Top = 64.252010000000000000
        Width = 755.906000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frDBDCajaDetIngreso
        DataSetName = 'frDBDCajaDetIngreso'
        RowCount = 0
        object Line109: TfrxLineView
          AllowVectorExport = True
          Left = -9.000000000000000000
          Top = 14.747990000000000000
          Width = 732.000000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 275.000000000000000000
          Top = 0.747990000000000000
          Width = 366.000000000000000000
          Height = 12.000000000000000000
          StretchMode = smMaxHeight
          DataField = 'DETALLE'
          DataSet = frDBDCajaDetIngreso
          DataSetName = 'frDBDCajaDetIngreso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBDCajaDetIngreso."DETALLE"]')
          ParentFont = False
        end
        object Memo127: TfrxMemoView
          AllowVectorExport = True
          Left = 205.000000000000000000
          Top = 0.747990000000000000
          Width = 61.000000000000000000
          Height = 13.000000000000000000
          StretchMode = smMaxHeight
          DataField = 'FECHA'
          DataSet = frDBDCajaDetIngreso
          DataSetName = 'frDBDCajaDetIngreso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[frDBDCajaDetIngreso."FECHA"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = -7.000000000000000000
          Top = 1.747990000000000000
          Width = 100.000000000000000000
          Height = 12.000000000000000000
          StretchMode = smMaxHeight
          DataField = 'MUESTRA_TIPOOPERACION'
          DataSet = frDBDCajaDetIngreso
          DataSetName = 'frDBDCajaDetIngreso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBDCajaDetIngreso."MUESTRA_TIPOOPERACION"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 103.440940000000000000
          Top = 0.747990000000000000
          Width = 91.000000000000000000
          Height = 14.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 653.000000000000000000
          Top = 1.747990000000000000
          Width = 68.000000000000000000
          Height = 10.220470000000000000
          StretchMode = smMaxHeight
          DataField = 'DEBE'
          DataSet = frDBDCajaDetIngreso
          DataSetName = 'frDBDCajaDetIngreso'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frDBDCajaDetIngreso."DEBE"]')
          ParentFont = False
        end
      end
      object TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 102.047310000000000000
        Width = 755.906000000000000000
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 652.000000000000000000
          Top = 1.952690000000000000
          Width = 69.000000000000000000
          Height = 14.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 650.000000000000000000
          Top = 1.952690000000000000
          Height = 16.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 649.000000000000000000
          Top = 1.952690000000000000
          Width = 73.000000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 718.000000000000000000
          Top = 2.377860000000000000
          Height = 16.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object Memo3: TfrxMemoView
        AllowVectorExport = True
        Left = 91.000000000000000000
        Top = 64.000000000000000000
        Width = 20.000000000000000000
        Height = 14.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Line6: TfrxLineView
        AllowVectorExport = True
        Left = -9.000000000000000000
        Top = 64.000000000000000000
        Width = 730.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line8: TfrxLineView
        AllowVectorExport = True
        Left = -102.000000000000000000
        Top = 100.000000000000000000
        Width = 52.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line10: TfrxLineView
        AllowVectorExport = True
        Left = 718.000000000000000000
        Top = 62.204700000000000000
        Height = 16.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line19: TfrxLineView
        AllowVectorExport = True
        Left = 651.000000000000000000
        Top = 120.000000000000000000
        Width = 72.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line44: TfrxLineView
        AllowVectorExport = True
        Left = 650.000000000000000000
        Top = 64.000000000000000000
        Height = 16.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line9: TfrxLineView
        AllowVectorExport = True
        Left = 202.000000000000000000
        Top = 64.000000000000000000
        Height = 16.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line107: TfrxLineView
        AllowVectorExport = True
        Left = -15.000000000000000000
        Top = 100.000000000000000000
        Height = 16.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line108: TfrxLineView
        AllowVectorExport = True
        Left = 270.000000000000000000
        Top = 64.000000000000000000
        Height = 16.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
    end
    object Page8: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object DatosMaestros3: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 23.000000000000000000
        Top = 40.000000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
      end
      object Band8: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 15.000000000000000000
        Top = 77.000000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
      end
      object Band9: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 109.000000000000000000
      end
      object Line11: TfrxLineView
        AllowVectorExport = True
        Left = -17.000000000000000000
        Top = 77.000000000000000000
        Height = 15.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo41: TfrxMemoView
        AllowVectorExport = True
        Left = -6.000000000000000000
        Top = 40.000000000000000000
        Width = 96.000000000000000000
        Height = 18.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo128: TfrxMemoView
        AllowVectorExport = True
        Left = 82.000000000000000000
        Top = 77.000000000000000000
        Width = 21.000000000000000000
        Height = 14.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo129: TfrxMemoView
        AllowVectorExport = True
        Left = 101.000000000000000000
        Top = 78.000000000000000000
        Width = 93.000000000000000000
        Height = 15.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo130: TfrxMemoView
        AllowVectorExport = True
        Left = 649.000000000000000000
        Top = 77.000000000000000000
        Width = 68.000000000000000000
        Height = 14.000000000000000000
        StretchMode = smMaxHeight
        DisplayFormat.DecimalSeparator = ','
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
        VAlign = vaCenter
      end
      object Line7: TfrxLineView
        AllowVectorExport = True
        Left = -16.000000000000000000
        Top = 77.000000000000000000
        Width = 733.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line110: TfrxLineView
        AllowVectorExport = True
        Left = 718.000000000000000000
        Top = 77.000000000000000000
        Height = 16.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo131: TfrxMemoView
        AllowVectorExport = True
        Left = 652.000000000000000000
        Top = 109.000000000000000000
        Width = 65.000000000000000000
        Height = 14.000000000000000000
        StretchMode = smMaxHeight
        DisplayFormat.DecimalSeparator = ','
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Line111: TfrxLineView
        AllowVectorExport = True
        Left = 646.000000000000000000
        Top = 109.000000000000000000
        Height = 16.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line112: TfrxLineView
        AllowVectorExport = True
        Left = 718.000000000000000000
        Top = 109.000000000000000000
        Height = 17.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line113: TfrxLineView
        AllowVectorExport = True
        Left = 647.000000000000000000
        Top = 109.000000000000000000
        Width = 72.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line114: TfrxLineView
        AllowVectorExport = True
        Left = 646.000000000000000000
        Top = 125.000000000000000000
        Width = 71.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo132: TfrxMemoView
        AllowVectorExport = True
        Left = 267.000000000000000000
        Top = 78.000000000000000000
        Width = 378.000000000000000000
        Height = 12.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
        VAlign = vaCenter
      end
      object Line115: TfrxLineView
        AllowVectorExport = True
        Left = 646.000000000000000000
        Top = 77.000000000000000000
        Height = 16.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line116: TfrxLineView
        AllowVectorExport = True
        Left = 265.000000000000000000
        Top = 77.000000000000000000
        Height = 15.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo133: TfrxMemoView
        AllowVectorExport = True
        Left = 200.000000000000000000
        Top = 79.000000000000000000
        Width = 61.000000000000000000
        Height = 11.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        HideZeros = True
        ParentFont = False
        VAlign = vaCenter
      end
      object Line117: TfrxLineView
        AllowVectorExport = True
        Left = 170.000000000000000000
        Top = 185.000000000000000000
        Height = 16.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line118: TfrxLineView
        AllowVectorExport = True
        Left = -17.000000000000000000
        Top = 92.000000000000000000
        Width = 731.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo10: TfrxMemoView
        AllowVectorExport = True
        Left = -14.000000000000000000
        Top = 78.000000000000000000
        Width = 92.000000000000000000
        Height = 12.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Line12: TfrxLineView
        AllowVectorExport = True
        Left = 196.000000000000000000
        Top = 77.000000000000000000
        Height = 15.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
    end
    object Page9: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object DatosMaestros5: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Top = 80.000000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
      end
      object Memo42: TfrxMemoView
        AllowVectorExport = True
        Top = 80.000000000000000000
        Width = 203.000000000000000000
        Height = 18.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HideZeros = True
        ParentFont = False
      end
      object Memo43: TfrxMemoView
        AllowVectorExport = True
        Left = 203.000000000000000000
        Top = 80.000000000000000000
        Width = 95.000000000000000000
        Height = 18.000000000000000000
        StretchMode = smMaxHeight
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
    end
    object Page10: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Top = 28.000000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
      end
      object DetailData4: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 15.000000000000000000
        Top = 156.000000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
      end
      object DetailHeader1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 40.000000000000000000
        Top = 112.000000000000000000
      end
      object TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Top = 176.000000000000000000
      end
      object Memo24: TfrxMemoView
        AllowVectorExport = True
        Left = 6.000000000000000000
        Top = 112.000000000000000000
        Width = 132.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo25: TfrxMemoView
        AllowVectorExport = True
        Left = 10.000000000000000000
        Top = 133.000000000000000000
        Width = 48.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo26: TfrxMemoView
        AllowVectorExport = True
        Left = 130.000000000000000000
        Top = 133.000000000000000000
        Width = 51.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo27: TfrxMemoView
        AllowVectorExport = True
        Left = 186.000000000000000000
        Top = 133.000000000000000000
        Width = 48.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo28: TfrxMemoView
        AllowVectorExport = True
        Left = 254.000000000000000000
        Top = 133.000000000000000000
        Width = 60.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Line32: TfrxLineView
        AllowVectorExport = True
        Left = 2.000000000000000000
        Top = 112.000000000000000000
        Width = 315.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line33: TfrxLineView
        AllowVectorExport = True
        Left = 318.000000000000000000
        Top = 112.000000000000000000
        Height = 41.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line34: TfrxLineView
        AllowVectorExport = True
        Left = 1.000000000000000000
        Top = 112.000000000000000000
        Height = 41.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo29: TfrxMemoView
        AllowVectorExport = True
        Left = 248.000000000000000000
        Top = 157.000000000000000000
        Width = 68.000000000000000000
        Height = 13.000000000000000000
        StretchMode = smMaxHeight
        DisplayFormat.DecimalSeparator = ','
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Memo30: TfrxMemoView
        AllowVectorExport = True
        Left = 4.000000000000000000
        Top = 157.000000000000000000
        Width = 104.000000000000000000
        Height = 13.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo31: TfrxMemoView
        AllowVectorExport = True
        Left = 111.000000000000000000
        Top = 157.000000000000000000
        Width = 62.000000000000000000
        Height = 13.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Memo32: TfrxMemoView
        AllowVectorExport = True
        Left = 178.000000000000000000
        Top = 157.000000000000000000
        Width = 60.000000000000000000
        Height = 13.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Line38: TfrxLineView
        AllowVectorExport = True
        Left = 242.000000000000000000
        Top = 156.000000000000000000
        Height = 15.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line39: TfrxLineView
        AllowVectorExport = True
        Left = 2.000000000000000000
        Top = 156.000000000000000000
        Width = 575.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line40: TfrxLineView
        AllowVectorExport = True
        Left = 1.000000000000000000
        Top = 171.000000000000000000
        Width = 577.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line41: TfrxLineView
        AllowVectorExport = True
        Left = 318.000000000000000000
        Top = 156.000000000000000000
        Height = 15.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line42: TfrxLineView
        AllowVectorExport = True
        Left = 1.000000000000000000
        Top = 156.000000000000000000
        Height = 15.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo90: TfrxMemoView
        AllowVectorExport = True
        Left = 222.000000000000000000
        Top = 177.000000000000000000
        Width = 96.000000000000000000
        Height = 15.000000000000000000
        StretchMode = smMaxHeight
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Memo93: TfrxMemoView
        AllowVectorExport = True
        Left = 326.000000000000000000
        Top = 157.000000000000000000
        Width = 236.000000000000000000
        Height = 13.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Line82: TfrxLineView
        AllowVectorExport = True
        Left = 578.000000000000000000
        Top = 156.000000000000000000
        Height = 15.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
    end
    object Page11: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Band3: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
      end
      object Band4: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 16.000000000000000000
        Top = 84.000000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
      end
      object Band5: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 38.000000000000000000
        Top = 40.000000000000000000
      end
      object TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Top = 104.000000000000000000
      end
      object Memo61: TfrxMemoView
        AllowVectorExport = True
        Left = 5.000000000000000000
        Top = 44.000000000000000000
        Width = 228.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo68: TfrxMemoView
        AllowVectorExport = True
        Left = 5.000000000000000000
        Top = 62.000000000000000000
        Width = 48.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo69: TfrxMemoView
        AllowVectorExport = True
        Left = 189.000000000000000000
        Top = 60.000000000000000000
        Width = 48.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo70: TfrxMemoView
        AllowVectorExport = True
        Left = 257.000000000000000000
        Top = 60.000000000000000000
        Width = 60.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Line64: TfrxLineView
        AllowVectorExport = True
        Left = 2.000000000000000000
        Top = 40.000000000000000000
        Width = 319.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line65: TfrxLineView
        AllowVectorExport = True
        Left = 321.000000000000000000
        Top = 40.000000000000000000
        Height = 41.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line66: TfrxLineView
        AllowVectorExport = True
        Left = 2.000000000000000000
        Top = 40.000000000000000000
        Height = 41.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo71: TfrxMemoView
        AllowVectorExport = True
        Left = 6.000000000000000000
        Top = 85.000000000000000000
        Width = 96.000000000000000000
        Height = 14.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo72: TfrxMemoView
        AllowVectorExport = True
        Left = 142.000000000000000000
        Top = 85.000000000000000000
        Width = 96.000000000000000000
        Height = 14.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo73: TfrxMemoView
        AllowVectorExport = True
        Left = 246.000000000000000000
        Top = 85.000000000000000000
        Width = 72.000000000000000000
        Height = 14.000000000000000000
        StretchMode = smMaxHeight
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Memo74: TfrxMemoView
        AllowVectorExport = True
        Left = 326.000000000000000000
        Top = 85.000000000000000000
        Width = 260.000000000000000000
        Height = 14.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Line67: TfrxLineView
        AllowVectorExport = True
        Left = 2.000000000000000000
        Top = 85.000000000000000000
        Height = 15.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line68: TfrxLineView
        AllowVectorExport = True
        Left = 321.000000000000000000
        Top = 85.000000000000000000
        Height = 16.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line69: TfrxLineView
        AllowVectorExport = True
        Left = 242.000000000000000000
        Top = 85.000000000000000000
        Height = 15.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line70: TfrxLineView
        AllowVectorExport = True
        Left = 2.000000000000000000
        Top = 84.000000000000000000
        Width = 593.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line71: TfrxLineView
        AllowVectorExport = True
        Left = 2.000000000000000000
        Top = 100.000000000000000000
        Width = 593.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line72: TfrxLineView
        AllowVectorExport = True
        Left = 595.000000000000000000
        Top = 85.000000000000000000
        Height = 15.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo89: TfrxMemoView
        AllowVectorExport = True
        Left = 222.000000000000000000
        Top = 105.000000000000000000
        Width = 96.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
    end
    object Page12: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Band1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 46.000000000000000000
        Top = 120.000000000000000000
      end
      object Band2: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 172.000000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
      end
      object DatosMaestros6: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.000000000000000000
        Top = 48.000000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
      end
      object TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Top = 200.000000000000000000
      end
      object Memo49: TfrxMemoView
        AllowVectorExport = True
        Left = 9.000000000000000000
        Top = 124.000000000000000000
        Width = 216.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo50: TfrxMemoView
        AllowVectorExport = True
        Left = 9.000000000000000000
        Top = 144.000000000000000000
        Width = 48.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo51: TfrxMemoView
        AllowVectorExport = True
        Left = 117.000000000000000000
        Top = 144.000000000000000000
        Width = 56.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo52: TfrxMemoView
        AllowVectorExport = True
        Left = 181.000000000000000000
        Top = 144.000000000000000000
        Width = 48.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo53: TfrxMemoView
        AllowVectorExport = True
        Left = 245.000000000000000000
        Top = 144.000000000000000000
        Width = 60.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Line49: TfrxLineView
        AllowVectorExport = True
        Left = 2.000000000000000000
        Top = 120.000000000000000000
        Width = 315.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line50: TfrxLineView
        AllowVectorExport = True
        Left = 317.000000000000000000
        Top = 120.000000000000000000
        Height = 49.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo54: TfrxMemoView
        AllowVectorExport = True
        Left = 244.000000000000000000
        Top = 173.000000000000000000
        Width = 68.000000000000000000
        Height = 13.000000000000000000
        StretchMode = smMaxHeight
        DisplayFormat.DecimalSeparator = ','
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Memo55: TfrxMemoView
        AllowVectorExport = True
        Left = 3.000000000000000000
        Top = 173.000000000000000000
        Width = 104.000000000000000000
        Height = 13.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo56: TfrxMemoView
        AllowVectorExport = True
        Left = 109.000000000000000000
        Top = 173.000000000000000000
        Width = 62.000000000000000000
        Height = 13.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Memo57: TfrxMemoView
        AllowVectorExport = True
        Left = 176.000000000000000000
        Top = 173.000000000000000000
        Width = 60.000000000000000000
        Height = 13.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Memo58: TfrxMemoView
        AllowVectorExport = True
        Left = 321.000000000000000000
        Top = 173.000000000000000000
        Width = 272.000000000000000000
        Height = 14.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Line51: TfrxLineView
        AllowVectorExport = True
        Left = 2.000000000000000000
        Top = 172.000000000000000000
        Width = 596.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line52: TfrxLineView
        AllowVectorExport = True
        Left = 1.000000000000000000
        Top = 189.000000000000000000
        Width = 597.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line53: TfrxLineView
        AllowVectorExport = True
        Left = 1.000000000000000000
        Top = 120.000000000000000000
        Height = 46.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line54: TfrxLineView
        AllowVectorExport = True
        Left = 1.000000000000000000
        Top = 173.000000000000000000
        Height = 17.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line55: TfrxLineView
        AllowVectorExport = True
        Left = 317.000000000000000000
        Top = 173.000000000000000000
        Height = 16.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line56: TfrxLineView
        AllowVectorExport = True
        Left = 241.000000000000000000
        Top = 173.000000000000000000
        Height = 15.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo59: TfrxMemoView
        AllowVectorExport = True
        Left = 322.000000000000000000
        Top = 144.000000000000000000
        Width = 96.000000000000000000
        Height = 18.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Line35: TfrxLineView
        AllowVectorExport = True
        Left = 598.000000000000000000
        Top = 172.000000000000000000
        Height = 17.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo35: TfrxMemoView
        AllowVectorExport = True
        Left = 217.000000000000000000
        Top = 200.000000000000000000
        Width = 96.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        DisplayFormat.DecimalSeparator = ','
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
    end
    object Page13: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object DetailData3: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 15.000000000000000000
        Top = 156.000000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
      end
      object DatosMaestros4: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Top = 32.000000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
      end
      object TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 40.000000000000000000
        Top = 112.000000000000000000
      end
      object TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Top = 176.000000000000000000
      end
      object Line24: TfrxLineView
        AllowVectorExport = True
        Left = 242.000000000000000000
        Top = 156.000000000000000000
        Height = 15.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line25: TfrxLineView
        AllowVectorExport = True
        Left = 1.000000000000000000
        Top = 156.000000000000000000
        Width = 580.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line26: TfrxLineView
        AllowVectorExport = True
        Left = 1.000000000000000000
        Top = 171.000000000000000000
        Width = 581.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line27: TfrxLineView
        AllowVectorExport = True
        Left = 318.000000000000000000
        Top = 156.000000000000000000
        Height = 15.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line28: TfrxLineView
        AllowVectorExport = True
        Left = 1.000000000000000000
        Top = 156.000000000000000000
        Height = 15.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo16: TfrxMemoView
        AllowVectorExport = True
        Left = 247.000000000000000000
        Top = 157.000000000000000000
        Width = 68.000000000000000000
        Height = 13.000000000000000000
        StretchMode = smMaxHeight
        DisplayFormat.DecimalSeparator = ','
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Memo17: TfrxMemoView
        AllowVectorExport = True
        Left = 3.000000000000000000
        Top = 157.000000000000000000
        Width = 104.000000000000000000
        Height = 13.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo18: TfrxMemoView
        AllowVectorExport = True
        Left = 110.000000000000000000
        Top = 157.000000000000000000
        Width = 62.000000000000000000
        Height = 13.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        AllowVectorExport = True
        Left = 177.000000000000000000
        Top = 157.000000000000000000
        Width = 60.000000000000000000
        Height = 13.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Memo19: TfrxMemoView
        AllowVectorExport = True
        Left = 6.000000000000000000
        Top = 112.000000000000000000
        Width = 216.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo20: TfrxMemoView
        AllowVectorExport = True
        Left = 10.000000000000000000
        Top = 132.000000000000000000
        Width = 48.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo21: TfrxMemoView
        AllowVectorExport = True
        Left = 126.000000000000000000
        Top = 133.000000000000000000
        Width = 56.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo22: TfrxMemoView
        AllowVectorExport = True
        Left = 186.000000000000000000
        Top = 133.000000000000000000
        Width = 48.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo23: TfrxMemoView
        AllowVectorExport = True
        Left = 254.000000000000000000
        Top = 133.000000000000000000
        Width = 60.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Line29: TfrxLineView
        AllowVectorExport = True
        Left = 1.000000000000000000
        Top = 112.000000000000000000
        Width = 317.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line30: TfrxLineView
        AllowVectorExport = True
        Left = 318.000000000000000000
        Top = 113.000000000000000000
        Height = 41.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line31: TfrxLineView
        AllowVectorExport = True
        Left = 1.000000000000000000
        Top = 113.000000000000000000
        Height = 41.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo34: TfrxMemoView
        AllowVectorExport = True
        Left = 322.000000000000000000
        Top = 157.000000000000000000
        Width = 254.000000000000000000
        Height = 13.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo36: TfrxMemoView
        AllowVectorExport = True
        Left = 330.000000000000000000
        Top = 132.000000000000000000
        Width = 60.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Line45: TfrxLineView
        AllowVectorExport = True
        Left = -18.000000000000000000
        Width = 729.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line37: TfrxLineView
        AllowVectorExport = True
        Left = 582.000000000000000000
        Top = 156.000000000000000000
        Height = 16.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo37: TfrxMemoView
        AllowVectorExport = True
        Left = 220.000000000000000000
        Top = 176.000000000000000000
        Width = 96.000000000000000000
        Height = 16.000000000000000000
        StretchMode = smMaxHeight
        DisplayFormat.DecimalSeparator = ','
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
    end
    object Page14: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object DatosMaestros10: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Top = 44.000000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
      end
      object TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 15.000000000000000000
        Top = 153.000000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
      end
      object TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 58.000000000000000000
        Top = 68.000000000000000000
      end
      object Memo94: TfrxMemoView
        AllowVectorExport = True
        Left = 2.000000000000000000
        Top = 153.000000000000000000
        Width = 96.000000000000000000
        Height = 14.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo95: TfrxMemoView
        AllowVectorExport = True
        Left = 258.000000000000000000
        Top = 153.000000000000000000
        Width = 96.000000000000000000
        Height = 14.000000000000000000
        StretchMode = smMaxHeight
        DisplayFormat.DecimalSeparator = '.'
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
      end
      object Memo96: TfrxMemoView
        AllowVectorExport = True
        Left = 122.000000000000000000
        Top = 153.000000000000000000
        Width = 96.000000000000000000
        Height = 14.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Memo97: TfrxMemoView
        AllowVectorExport = True
        Left = 10.000000000000000000
        Top = 108.000000000000000000
        Width = 96.000000000000000000
        Height = 15.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        HideZeros = True
        ParentFont = False
      end
      object Memo98: TfrxMemoView
        AllowVectorExport = True
        Left = 262.000000000000000000
        Top = 108.000000000000000000
        Width = 96.000000000000000000
        Height = 15.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        HideZeros = True
        ParentFont = False
      end
      object Line83: TfrxLineView
        AllowVectorExport = True
        Left = 2.000000000000000000
        Top = 80.000000000000000000
        Width = 360.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line84: TfrxLineView
        AllowVectorExport = True
        Left = 2.000000000000000000
        Top = 153.000000000000000000
        Width = 360.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line85: TfrxLineView
        AllowVectorExport = True
        Left = 2.000000000000000000
        Top = 168.000000000000000000
        Width = 360.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line86: TfrxLineView
        AllowVectorExport = True
        Left = 251.000000000000000000
        Top = 153.000000000000000000
        Height = 16.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line87: TfrxLineView
        AllowVectorExport = True
        Left = 362.000000000000000000
        Top = 153.000000000000000000
        Height = 16.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line88: TfrxLineView
        AllowVectorExport = True
        Left = 2.000000000000000000
        Top = 153.000000000000000000
        Height = 15.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo99: TfrxMemoView
        AllowVectorExport = True
        Left = 6.000000000000000000
        Top = 84.000000000000000000
        Width = 172.000000000000000000
        Height = 18.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        Frame.Typ = []
        HideZeros = True
        ParentFont = False
      end
      object Line89: TfrxLineView
        AllowVectorExport = True
        Left = 2.000000000000000000
        Top = 81.000000000000000000
        Height = 45.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line90: TfrxLineView
        AllowVectorExport = True
        Left = 362.000000000000000000
        Top = 81.000000000000000000
        Height = 45.000000000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
    end
  end
  object frDBDSaldoInicial: TfrxDBDataset
    UserName = 'frDBDSaldoInicial'
    CloseDataSource = False
    DataSet = DatosCaja.CDSSaldoInicial
    BCDToCurrency = False
    DataSetOptions = []
    Left = 236
    Top = 112
    FieldDefs = <
      item
        FieldName = 'ID_CAJA_SALDO'
        FieldAlias = 'ID_CAJA_SALDO'
      end
      item
        FieldName = 'ID_CAJA_CAB'
        FieldAlias = 'ID_CAJA_CAB'
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
        FieldName = 'ESTADO_CAJA'
        FieldAlias = 'ESTADO_CAJA'
      end
      item
        FieldName = 'OBSERVACIONES'
        FieldAlias = 'OBSERVACIONES'
      end
      item
        FieldName = 'MUESTRAFORMAPAGO'
        FieldAlias = 'MUESTRAFORMAPAGO'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end>
  end
  object frDBDSaldoFinal: TfrxDBDataset
    UserName = 'frDBDSaldoFinal'
    CloseDataSource = False
    DataSource = DatosCaja.DSSaldoFinal
    BCDToCurrency = False
    DataSetOptions = []
    Left = 392
    Top = 312
    FieldDefs = <
      item
        FieldName = 'MONEDA'
        FieldAlias = 'MONEDA'
      end
      item
        FieldName = 'SALDO'
        FieldAlias = 'SALDO'
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
        FieldName = 'FPAGO'
        FieldAlias = 'FPAGO'
      end
      item
        FieldName = 'TPAGO'
        FieldAlias = 'TPAGO'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'DISPONIBILIDAD'
        FieldAlias = 'DISPONIBILIDAD'
      end>
  end
  object frDBDCajaCab: TfrxDBDataset
    UserName = 'frDBDCajaCab'
    CloseDataSource = False
    DataSource = DatosCaja.DSCajaCab
    BCDToCurrency = False
    DataSetOptions = []
    Left = 344
    Top = 264
    FieldDefs = <
      item
        FieldName = 'NUMEROCAJA'
        FieldAlias = 'NUMEROCAJA'
      end
      item
        FieldName = 'MUESTRACTACAJA'
        FieldAlias = 'MUESTRACTACAJA'
      end
      item
        FieldName = 'FECHA_INCIO'
        FieldAlias = 'FECHA_INCIO'
      end
      item
        FieldName = 'FECHA_CIERRE'
        FieldAlias = 'FECHA_CIERRE'
      end
      item
        FieldName = 'ID_CAJA'
        FieldAlias = 'ID_CAJA'
      end
      item
        FieldName = 'ID_CUENTA_CAJA'
        FieldAlias = 'ID_CUENTA_CAJA'
      end
      item
        FieldName = 'SALDO_INCIAL'
        FieldAlias = 'SALDO_INCIAL'
      end
      item
        FieldName = 'ESTADO'
        FieldAlias = 'ESTADO'
      end
      item
        FieldName = 'OBS'
        FieldAlias = 'OBS'
      end>
  end
  object frDBDCajaDetEgreso: TfrxDBDataset
    UserName = 'frDBDCajaDetEgreso'
    CloseDataSource = False
    DataSet = DatosCaja.CDSCajaDetEgresos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 268
    Top = 592
    FieldDefs = <
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'CLASE_CPBTE'
        FieldAlias = 'CLASE_CPBTE'
      end
      item
        FieldName = 'NRO_CPBTE'
        FieldAlias = 'NRO_CPBTE'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'HABER'
        FieldAlias = 'HABER'
      end
      item
        FieldName = 'ID_COMPROBANTE'
        FieldAlias = 'ID_COMPROBANTE'
      end
      item
        FieldName = 'TIPO_CPBTE'
        FieldAlias = 'TIPO_CPBTE'
      end
      item
        FieldName = 'DEBE'
        FieldAlias = 'DEBE'
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
  object frDBDCajaDetIngreso: TfrxDBDataset
    UserName = 'frDBDCajaDetIngreso'
    CloseDataSource = False
    DataSource = DatosCaja.DSCajaDetIngresos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 472
    Top = 384
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
      end
      item
        FieldName = 'ID_ARQUEO_CAJA'
        FieldAlias = 'ID_ARQUEO_CAJA'
      end>
  end
  object frDBDChe3Rec: TfrxDBDataset
    UserName = 'frDBDChe3Rec'
    CloseDataSource = False
    DataSource = DatosCaja.DSChe3Recibidos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 148
    Top = 296
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
  object frDBDCheques: TfrxDBDataset
    UserName = 'frDBDCheques'
    CloseDataSource = False
    DataSource = DatosCaja.DSCheques
    BCDToCurrency = False
    DataSetOptions = []
    Left = 156
    Top = 312
    FieldDefs = <
      item
        FieldName = 'NUMERO'
        FieldAlias = 'NUMERO'
      end
      item
        FieldName = 'MUESTRABANCO'
        FieldAlias = 'MUESTRABANCO'
      end
      item
        FieldName = 'ORDEN_DE'
        FieldAlias = 'ORDEN_DE'
      end
      item
        FieldName = 'FECHA_EMISION'
        FieldAlias = 'FECHA_EMISION'
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
  object PopupMenu1: TPopupMenu
    Left = 84
    Top = 296
    object CambiarDeCaja1: TMenuItem
      Action = CambiarDeCaja
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object CambiarCajaaunLote1: TMenuItem
      Action = CambiarCajaLote
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object DiseoReporte1: TMenuItem
      Action = Disenoreporte
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object GenerarInformXML1: TMenuItem
      Action = InformarArticulosVtas
    end
    object ListarArt1: TMenuItem
      Action = ListarArtiVendidos
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object GenerarAuditoria: TMenuItem
      Caption = 'Generar Auditoria'
      Hint = 'Exporta las Consultas de Caja a Un Archivo '
      OnClick = GenerarAuditoriaClick
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object BorrarMovCpbteIng1: TMenuItem
      Action = BorrarMovCpbte_Ing
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object N7: TMenuItem
      Action = BorrarCaja
    end
  end
  object frDBDChe3Ent: TfrxDBDataset
    UserName = 'frDBDChe3Ent'
    CloseDataSource = False
    DataSource = DatosCaja.DSChe3Entregado
    BCDToCurrency = False
    DataSetOptions = []
    Left = 220
    Top = 312
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
  object frDBDTxGenerada: TfrxDBDataset
    UserName = 'frDBDTxGenerada'
    CloseDataSource = False
    DataSource = DatosCaja.DSTxGeneradas
    BCDToCurrency = False
    DataSetOptions = []
    Left = 600
    Top = 96
    FieldDefs = <
      item
        FieldName = 'NUMERO'
        FieldAlias = 'NUMERO'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'ORIGEN'
        FieldAlias = 'ORIGEN'
      end
      item
        FieldName = 'MUESTRABANCO'
        FieldAlias = 'MUESTRABANCO'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end>
  end
  object frDBDTxRecibidas: TfrxDBDataset
    UserName = 'frDBDTxRecibidas'
    CloseDataSource = False
    DataSource = DatosCaja.DSTxRecibidas
    BCDToCurrency = False
    DataSetOptions = []
    Left = 296
    Top = 304
    FieldDefs = <
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'ORIGEN'
        FieldAlias = 'ORIGEN'
      end
      item
        FieldName = 'MUESTRABANCO'
        FieldAlias = 'MUESTRABANCO'
      end
      item
        FieldName = 'NUMERO'
        FieldAlias = 'NUMERO'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end>
  end
  object frDBDDebitos: TfrxDBDataset
    UserName = 'frDBDDebitos'
    CloseDataSource = False
    DataSource = DatosCaja.DSDebitos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 472
    Top = 248
    FieldDefs = <
      item
        FieldName = 'NUMERO'
        FieldAlias = 'NUMERO'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'ORIGEN'
        FieldAlias = 'ORIGEN'
      end
      item
        FieldName = 'MUESTRABANCO'
        FieldAlias = 'MUESTRABANCO'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end>
  end
  object frDBDRetenciones: TfrxDBDataset
    UserName = 'frDBDRetenciones'
    CloseDataSource = False
    DataSource = DatosCaja.DSRetenciones
    BCDToCurrency = False
    DataSetOptions = []
    Left = 212
    Top = 520
    FieldDefs = <
      item
        FieldName = 'IDRETENCION'
        FieldAlias = 'IDRETENCION'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldAlias = 'TIPOCPBTE'
      end
      item
        FieldName = 'CLASECPBTE'
        FieldAlias = 'CLASECPBTE'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'FECHARETENCION'
        FieldAlias = 'FECHARETENCION'
      end
      item
        FieldName = 'NRO_RETENCION'
        FieldAlias = 'NRO_RETENCION'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'CLIENTE'
        FieldAlias = 'CLIENTE'
      end>
  end
  object frDBDDepositos: TfrxDBDataset
    UserName = 'frDBDDepositos'
    CloseDataSource = False
    DataSource = DatosCaja.DSDepositos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 512
    Top = 304
    FieldDefs = <
      item
        FieldName = 'ID_MOV_CAJA'
        FieldAlias = 'ID_MOV_CAJA'
      end
      item
        FieldName = 'ID_CAJA'
        FieldAlias = 'ID_CAJA'
      end
      item
        FieldName = 'FECHA_CAJA'
        FieldAlias = 'FECHA_CAJA'
      end
      item
        FieldName = 'FECHA_OPERACION'
        FieldAlias = 'FECHA_OPERACION'
      end
      item
        FieldName = 'TIPO_OPERACION'
        FieldAlias = 'TIPO_OPERACION'
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
        FieldName = 'ID_COMPROBANTE'
        FieldAlias = 'ID_COMPROBANTE'
      end
      item
        FieldName = 'NRO_COMPROBANTE'
        FieldAlias = 'NRO_COMPROBANTE'
      end
      item
        FieldName = 'HABER'
        FieldAlias = 'HABER'
      end
      item
        FieldName = 'DEBE'
        FieldAlias = 'DEBE'
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
        FieldName = 'UNIDADES'
        FieldAlias = 'UNIDADES'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'ID_CUENTA_CAJA'
        FieldAlias = 'ID_CUENTA_CAJA'
      end
      item
        FieldName = 'MONEDA'
        FieldAlias = 'MONEDA'
      end
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_CTA_CAJA'
        FieldAlias = 'ID_CTA_CAJA'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'NUMERO'
        FieldAlias = 'NUMERO'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'EFEC_CHEQ'
        FieldAlias = 'EFEC_CHEQ'
      end
      item
        FieldName = 'OBS'
        FieldAlias = 'OBS'
      end
      item
        FieldName = 'MUESTRACTA'
        FieldAlias = 'MUESTRACTA'
      end
      item
        FieldName = 'NUEMROCHE'
        FieldAlias = 'NUEMROCHE'
      end
      item
        FieldName = 'MUESTRAORIGEN'
        FieldAlias = 'MUESTRAORIGEN'
      end>
  end
  object frDBDEfectivo: TfrxDBDataset
    UserName = 'frDBDEfectivo'
    CloseDataSource = False
    DataSource = DatosCaja.DSEfectivo
    BCDToCurrency = False
    DataSetOptions = []
    Left = 316
    Top = 488
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
        FieldName = 'DESCRIPCION'
        FieldAlias = 'DESCRIPCION'
      end
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'SIGNO'
        FieldAlias = 'SIGNO'
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
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'UNIDADES'
        FieldAlias = 'UNIDADES'
      end>
  end
  object frxDBSaldoTC: TfrxDBDataset
    UserName = 'frxDBSaldoTC'
    CloseDataSource = False
    DataSource = DatosCaja.DSSaldosTC
    BCDToCurrency = False
    DataSetOptions = []
    Left = 228
    Top = 280
    FieldDefs = <
      item
        FieldName = 'MONEDA'
        FieldAlias = 'MONEDA'
      end
      item
        FieldName = 'SALDO'
        FieldAlias = 'SALDO'
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
        FieldName = 'FPAGO'
        FieldAlias = 'FPAGO'
      end
      item
        FieldName = 'TPAGO'
        FieldAlias = 'TPAGO'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'DISPONIBILIDAD'
        FieldAlias = 'DISPONIBILIDAD'
      end>
  end
  object frxDBMovTCCompra: TfrxDBDataset
    UserName = 'frxDBMovTCCompra'
    CloseDataSource = False
    DataSource = DatosCaja.DSMovTCCompra
    BCDToCurrency = False
    DataSetOptions = []
    Left = 124
    Top = 584
  end
  object frxDBMovTCVenta: TfrxDBDataset
    UserName = 'frxDBMovTCVenta'
    CloseDataSource = False
    DataSource = DatosCaja.DSMovTCVenta
    BCDToCurrency = False
    DataSetOptions = []
    Left = 336
    Top = 376
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
    Left = 580
    Top = 328
  end
  object frxDBAnuladas: TfrxDBDataset
    UserName = 'frxDBAnuladas'
    CloseDataSource = False
    DataSet = DatosCaja.CDSAnuladas
    BCDToCurrency = False
    DataSetOptions = []
    Left = 212
    Top = 472
    FieldDefs = <
      item
        FieldName = 'ID_MOV_CAJA'
        FieldAlias = 'ID_MOV_CAJA'
      end
      item
        FieldName = 'ID_CAJA'
        FieldAlias = 'ID_CAJA'
      end
      item
        FieldName = 'FECHA_CAJA'
        FieldAlias = 'FECHA_CAJA'
      end
      item
        FieldName = 'FECHA_OPERACION'
        FieldAlias = 'FECHA_OPERACION'
      end
      item
        FieldName = 'TIPO_OPERACION'
        FieldAlias = 'TIPO_OPERACION'
      end
      item
        FieldName = 'CLASE_COMPROB'
        FieldAlias = 'CLASE_COMPROB'
      end
      item
        FieldName = 'ID_COMPROBANTE'
        FieldAlias = 'ID_COMPROBANTE'
      end
      item
        FieldName = 'NRO_COMPROBANTE'
        FieldAlias = 'NRO_COMPROBANTE'
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
        FieldName = 'ID_CUENTA_CAJA'
        FieldAlias = 'ID_CUENTA_CAJA'
      end
      item
        FieldName = 'MONEDA'
        FieldAlias = 'MONEDA'
      end
      item
        FieldName = 'MUESTRANOMBRE'
        FieldAlias = 'MUESTRANOMBRE'
      end
      item
        FieldName = 'TIPO_COMPROB'
        FieldAlias = 'TIPO_COMPROB'
      end
      item
        FieldName = 'HABER'
        FieldAlias = 'HABER'
      end
      item
        FieldName = 'DEBE'
        FieldAlias = 'DEBE'
      end
      item
        FieldName = 'UNIDADES'
        FieldAlias = 'UNIDADES'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end>
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    SubStorages = <>
    Left = 778
    Top = 110
  end
  object JvFormStorage1: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    Options = [fpState, fpSize, fpLocation, fpActiveControl]
    StoredValues = <>
    Left = 682
    Top = 150
  end
  object SaveDialog1: TSaveDialog
    Left = 696
    Top = 320
  end
  object PopupMenu2: TPopupMenu
    Left = 60
    Top = 368
    object ExportarXLS1: TMenuItem
      Action = ExportarXLS
    end
  end
  object ComBuscadorCaja: TComBuscador
    Data = DatosCaja.CDSCajas
    Campo = 'id_caja'
    Titulo = 'Listado de Cajas Activas'
    rOk = False
    Left = 404
    Top = 128
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 856
    Top = 112
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 840
    Top = 168
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.frp'
    Left = 584
    Top = 416
  end
  object QCambiarFecha: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update caja_cab c set c.fecha_incio = :FechaNueva'
      'where c.id_caja = :id')
    Left = 168
    Top = 401
    ParamData = <
      item
        Name = 'FECHANUEVA'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object frxDBCpbteEmitidos: TfrxDBDataset
    UserName = 'frxDBCpbteEmitidos'
    CloseDataSource = False
    DataSet = DatosCaja.CDSEmitidosVta
    BCDToCurrency = False
    DataSetOptions = []
    Left = 584
    Top = 257
  end
  object frDBRecibos: TfrxDBDataset
    UserName = 'frDBRecibos'
    CloseDataSource = False
    DataSet = DatosCaja.CDSRecibos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 664
    Top = 265
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
      end
      item
        FieldName = 'ID_ARQUEO_CAJA'
        FieldAlias = 'ID_ARQUEO_CAJA'
      end
      item
        FieldName = 'CODIGO_VC'
        FieldAlias = 'CODIGO_VC'
      end
      item
        FieldName = 'NOMBRE_VC'
        FieldAlias = 'NOMBRE_VC'
      end>
  end
  object frxDBResumenVta: TfrxDBDataset
    UserName = 'frxDBResumenVta'
    CloseDataSource = False
    DataSet = DatosCaja.CDSResumentVta
    BCDToCurrency = False
    DataSetOptions = []
    Left = 760
    Top = 289
    FieldDefs = <
      item
        FieldName = 'TOTAL_CIVA'
        FieldAlias = 'TOTAL_CIVA'
      end
      item
        FieldName = 'TOTAL_REC'
        FieldAlias = 'TOTAL_REC'
      end
      item
        FieldName = 'CANTIDAD_REC'
        FieldAlias = 'CANTIDAD_REC'
      end
      item
        FieldName = 'TOTALCIVA_REC'
        FieldAlias = 'TOTALCIVA_REC'
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldAlias = 'TIPOCPBTE'
      end
      item
        FieldName = 'CODIGOARTICULO'
        FieldAlias = 'CODIGOARTICULO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'FECHAVTA'
        FieldAlias = 'FECHAVTA'
      end
      item
        FieldName = 'DETALLE_RUBRO'
        FieldAlias = 'DETALLE_RUBRO'
      end>
  end
end
