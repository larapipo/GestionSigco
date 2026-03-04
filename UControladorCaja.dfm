inherited FormControlCaja: TFormControlCaja
  Left = 262
  Top = 143
  Caption = 'Control de Caja'
  ClientHeight = 715
  ClientWidth = 937
  StyleElements = [seFont, seClient, seBorder]
  OnResize = FormResize
  ExplicitWidth = 955
  ExplicitHeight = 756
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 937
    Height = 662
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 937
    ExplicitHeight = 662
    object pcCaja: TPageControl
      Left = 0
      Top = 0
      Width = 937
      Height = 662
      ActivePage = pag1
      Align = alClient
      TabOrder = 0
      object pag1: TTabSheet
        Caption = 'Cajas'
        ImageIndex = 2
        DesignSize = (
          929
          634)
        object Label4: TLabel
          Left = 488
          Top = 18
          Width = 46
          Height = 13
          Caption = 'Cabecera'
        end
        object Label6: TLabel
          Left = 360
          Top = 163
          Width = 193
          Height = 13
          Caption = 'Saldos recalculados con el saldo anterior'
        end
        object Label5: TLabel
          Left = 360
          Top = 368
          Width = 15
          Height = 13
          Caption = 'Pie'
        end
        object Label1: TLabel
          Left = 360
          Top = 18
          Width = 115
          Height = 13
          Caption = 'Saldo Final Caja Anterior'
        end
        object Label2: TLabel
          Left = 703
          Top = 368
          Width = 126
          Height = 13
          Caption = 'Saldo Inical Caja Siguiente'
        end
        object dbcCtas: TDBLookupComboBox
          Left = 3
          Top = 10
          Width = 217
          Height = 21
          DropDownRows = 12
          KeyField = 'ID_CUENTA'
          ListField = 'NOMBRE'
          ListSource = DSCtaCaja
          TabOrder = 0
          OnClick = dbcCtasClick
        end
        object dbgCajas: TJvDBGrid
          Left = 3
          Top = 37
          Width = 326
          Height = 571
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DSCaja
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgCajasDrawColumnCell
          OnDblClick = dbgCajasDblClick
          TitleButtons = True
          OnTitleBtnClick = dbgCajasTitleBtnClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_CAJA'
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
              FieldName = 'NUMEROCAJA'
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
              FieldName = 'FECHA_INCIO'
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
              FieldName = 'FECHA_CIERRE'
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
        object btDesactiva: TButton
          Left = 750
          Top = 513
          Width = 79
          Height = 25
          Caption = 'Desactiva Trig.'
          TabOrder = 5
          OnClick = btDesactivaClick
        end
        object btActiva: TButton
          Left = 665
          Top = 513
          Width = 79
          Height = 25
          Caption = 'Activa Trig.'
          TabOrder = 6
          OnClick = btActivaClick
        end
        object dbgCabecera: TJvDBGrid
          Left = 488
          Top = 37
          Width = 329
          Height = 120
          DataSource = DSCabecera
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = dbgCabeceraColEnter
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_TPAGO'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo Pago'
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_FPAGO'
              Title.Alignment = taCenter
              Title.Caption = 'F.Pago'
              Width = 42
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'MUESTRATIPOPAGO'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo P.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Title.Caption = 'Importe'
              Width = 88
              Visible = True
            end>
        end
        object dbgDetalle: TJvDBGrid
          Left = 335
          Top = 182
          Width = 545
          Height = 180
          DataSource = DSRecalculo
          ReadOnly = True
          TabOrder = 3
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
              FieldName = 'TPAGO'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo Pago'
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FPAGO'
              Title.Alignment = taCenter
              Title.Caption = 'F.Pago'
              Width = 51
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Caption = 'Detalle'
              Width = 137
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DEBE'
              Title.Alignment = taCenter
              Title.Caption = 'Debe'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HABER'
              Title.Alignment = taCenter
              Title.Caption = 'Haber'
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SALDO'
              Title.Alignment = taCenter
              Title.Caption = 'Importe'
              Width = 88
              Visible = True
            end>
        end
        object dbgPie: TJvDBGrid
          Left = 335
          Top = 387
          Width = 329
          Height = 120
          DataSource = DSPie
          TabOrder = 4
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = dbgPieColEnter
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_TPAGO'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo Pago'
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_FPAGO'
              Title.Alignment = taCenter
              Title.Caption = 'F.Pago'
              Width = 46
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'MUESTRATIPOPAGO'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo P.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Title.Caption = 'Importe'
              Width = 88
              Visible = True
            end>
        end
        object JvDBGrid1: TJvDBGrid
          Left = 335
          Top = 37
          Width = 121
          Height = 120
          DataSource = DSPiePrev
          TabOrder = 7
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = dbgCabeceraColEnter
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Title.Caption = 'Importe'
              Width = 88
              Visible = True
            end>
        end
        object JvDBGrid2: TJvDBGrid
          Left = 670
          Top = 387
          Width = 126
          Height = 120
          DataSource = DSCabSig
          TabOrder = 8
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = dbgPieColEnter
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Title.Caption = 'Importe'
              Width = 88
              Visible = True
            end>
        end
        object Button1: TButton
          Left = 669
          Top = 3
          Width = 75
          Height = 25
          Action = recalcular
          TabOrder = 9
        end
        object chCajaSeleccionada: TCheckBox
          Left = 767
          Top = 3
          Width = 130
          Height = 28
          Caption = 'Calcular desde Caja Seleccionada'
          TabOrder = 10
          WordWrap = True
        end
      end
      object pag2: TTabSheet
        Caption = 'Detalle'
        ImageIndex = 1
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 929
          Height = 634
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            OnDblClick = VerCpbteExecute
            DataController.DataSource = DSMov
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = ',0.00;-,0.00;-'
                Kind = skSum
                Position = spFooter
                Column = cxGrid1DBTableView1DEBE
                DisplayText = 'Debe'
              end
              item
                Format = ',0.00;-,0.00;-'
                Kind = skSum
                Position = spFooter
                Column = cxGrid1DBTableView1HABER
                DisplayText = 'Haber'
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00;-,0.00;-'
                Kind = skSum
                Column = cxGrid1DBTableView1DEBE
              end
              item
                Format = ',0.00;-,0.00;-'
                Kind = skSum
                Column = cxGrid1DBTableView1HABER
              end>
            OptionsSelection.CellSelect = False
            OptionsView.NoDataToDisplayInfoText = '--'
            OptionsView.Footer = True
            OptionsView.FooterAutoHeight = True
            OptionsView.GroupFooters = gfAlwaysVisible
            object cxGrid1DBTableView1ID_MOV_CAJA: TcxGridDBColumn
              DataBinding.FieldName = 'ID_MOV_CAJA'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1ID_CAJA: TcxGridDBColumn
              DataBinding.FieldName = 'ID_CAJA'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1FECHA_CAJA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA_CAJA'
              HeaderAlignmentHorz = taCenter
              Width = 98
            end
            object cxGrid1DBTableView1FECHA_OPERACION: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA_OPERACION'
              HeaderAlignmentHorz = taCenter
              Width = 93
            end
            object cxGrid1DBTableView1TIPO_OPERACION: TcxGridDBColumn
              DataBinding.FieldName = 'TIPO_OPERACION'
              HeaderAlignmentHorz = taCenter
              Width = 52
            end
            object cxGrid1DBTableView1TIPO_COMPROB: TcxGridDBColumn
              DataBinding.FieldName = 'TIPO_COMPROB'
              HeaderAlignmentHorz = taCenter
              Width = 49
            end
            object cxGrid1DBTableView1CLASE_COMPROB: TcxGridDBColumn
              DataBinding.FieldName = 'CLASE_COMPROB'
              HeaderAlignmentHorz = taCenter
              Width = 52
            end
            object cxGrid1DBTableView1ID_COMPROBANTE: TcxGridDBColumn
              DataBinding.FieldName = 'ID_COMPROBANTE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1NRO_COMPROBANTE: TcxGridDBColumn
              DataBinding.FieldName = 'NRO_COMPROBANTE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1HABER: TcxGridDBColumn
              DataBinding.FieldName = 'HABER'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1DEBE: TcxGridDBColumn
              DataBinding.FieldName = 'DEBE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1ID_TPAGO: TcxGridDBColumn
              DataBinding.FieldName = 'ID_TPAGO'
              Visible = False
              GroupIndex = 0
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1ID_CUENTA_CAJA: TcxGridDBColumn
              DataBinding.FieldName = 'ID_CUENTA_CAJA'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1MONEDA: TcxGridDBColumn
              DataBinding.FieldName = 'MONEDA'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1ID_FPAGO: TcxGridDBColumn
              DataBinding.FieldName = 'ID_FPAGO'
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Movimientos de Che 3'
        ImageIndex = 2
        DesignSize = (
          929
          634)
        object JvDBStatusLabel1: TJvDBStatusLabel
          Left = 816
          Top = 586
          Width = 96
          Height = 13
          DataSource = DSMovChe3H
          Style = lsRecordNo
          Anchors = [akLeft, akRight, akBottom]
          Transparent = True
          ExplicitTop = 542
        end
        object JvDBStatusLabel2: TJvDBStatusLabel
          Left = 714
          Top = 586
          Width = 96
          Height = 13
          DataSource = DSMovChe3
          Style = lsRecordNo
          Anchors = [akLeft, akRight, akBottom]
          Transparent = True
          ExplicitTop = 542
        end
        object dbgMovChe3: TJvDBGrid
          Left = 0
          Top = 56
          Width = 926
          Height = 517
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DSMovChe3
          PopupMenu = PopupMenu1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgMovChe3DrawColumnCell
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_MOV_CAJA'
              Title.Alignment = taCenter
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO_COMPROB'
              Title.Alignment = taCenter
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLASE_COMPROB'
              Title.Alignment = taCenter
              Width = 32
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NRO_COMPROBANTE'
              Title.Alignment = taCenter
              Width = 108
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DEBE'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HABER'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_CHEQUE_TER'
              Title.Alignment = taCenter
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ORIGEN'
              Title.Alignment = taCenter
              Width = 156
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONCILIADO'
              Width = 46
              Visible = True
            end>
        end
        object btBuscarChe: TBitBtn
          Left = 776
          Top = 17
          Width = 75
          Height = 25
          Caption = 'Buscar'
          TabOrder = 1
          OnClick = btBuscarCheClick
        end
        object btRelacion: TBitBtn
          Left = 3
          Top = 17
          Width = 86
          Height = 25
          Caption = 'Buscar Relacion'
          TabOrder = 2
          OnClick = btRelacionClick
        end
        object debe: TJvCalcEdit
          Left = 267
          Top = 29
          Width = 94
          Height = 21
          DisplayFormat = ',0.00'
          ShowButton = False
          TabOrder = 3
          DecimalPlacesAlwaysShown = False
        end
        object haber: TJvCalcEdit
          Left = 367
          Top = 29
          Width = 94
          Height = 21
          DisplayFormat = ',0.00'
          ShowButton = False
          TabOrder = 4
          DecimalPlacesAlwaysShown = False
        end
        object saldo: TJvCalcEdit
          Left = 467
          Top = 29
          Width = 94
          Height = 21
          DisplayFormat = ',0.00'
          ShowButton = False
          TabOrder = 5
          DecimalPlacesAlwaysShown = False
        end
        object Tdebe: TJvCalcEdit
          Left = 291
          Top = 586
          Width = 81
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akRight, akBottom]
          ShowButton = False
          TabOrder = 6
          DecimalPlacesAlwaysShown = False
        end
        object THaber: TJvCalcEdit
          Left = 391
          Top = 586
          Width = 81
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akRight, akBottom]
          ShowButton = False
          TabOrder = 7
          DecimalPlacesAlwaysShown = False
        end
        object TSaldo: TJvCalcEdit
          Left = 491
          Top = 586
          Width = 81
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akRight, akBottom]
          ShowButton = False
          TabOrder = 8
          DecimalPlacesAlwaysShown = False
        end
        object pnMovHaber: TPanel
          Left = 17
          Top = 88
          Width = 885
          Height = 353
          Caption = 'pnMovHaber'
          Color = clBtnShadow
          Locked = True
          Padding.Left = 3
          Padding.Top = 3
          Padding.Right = 3
          Padding.Bottom = 3
          ParentBackground = False
          TabOrder = 9
          Visible = False
          object dbgMovHaber: TDBGrid
            Left = 4
            Top = 4
            Width = 877
            Height = 309
            Align = alTop
            DataSource = DSMovChe3H
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object BitBtn1: TBitBtn
            Left = 803
            Top = 319
            Width = 75
            Height = 25
            Caption = '&Cerrar'
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
            TabOrder = 1
            OnClick = BitBtn1Click
          end
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 662
    Width = 937
    Align = alBottom
    ExplicitTop = 662
    ExplicitWidth = 937
    inherited btNuevo: TBitBtn
      Visible = False
    end
    inherited btCancelar: TBitBtn
      Visible = False
    end
    inherited btModificar: TBitBtn
      Visible = False
    end
    inherited btBuscar: TBitBtn
      Visible = False
    end
    inherited btBorrar: TBitBtn
      Visible = False
    end
  end
  inherited Panel1: TPanel
    Top = 692
    Width = 937
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 692
    ExplicitWidth = 937
    inherited sbEstado: TStatusBar
      Width = 848
      ExplicitWidth = 848
    end
  end
  inherited ActionList1: TActionList
    Left = 384
    Top = 128
    inherited Prev: TAction
      Visible = False
    end
    inherited Next: TAction
      Visible = False
    end
    object recalcular: TAction
      Caption = 'Re-Calcular'
      OnExecute = recalcularExecute
    end
    object ExportarMovChe3Excel: TAction
      Caption = 'Exportar MovChe3 Excel'
      OnExecute = ExportarMovChe3ExcelExecute
    end
    object VerCpbte: TAction
      Caption = 'VerCpbte'
      OnExecute = VerCpbteExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 544
    Top = 112
  end
  inherited ImageList1: TImageList
    Left = 184
    Top = 96
    Bitmap = {
      494C01010A000C00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004490600055B0900066C0C00066C0C00055E0A00044C06000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006C6A6A006C6A6A0000000000000000006C6A6A006C6A6A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000560
      0900056009000891130009B0180009B31A0009B3190009B11900079614000568
      0C0005680C000000000000000000000000000000000000000000000000006C6A
      6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3E3006C6A6A006C6A
      6A006C6A6A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D0600000000000000000000000000000000006C6A6A00DAD9
      D900A19F9F00A19F9F00A19F9F0037363600353535006C6D6D00BFBFBF00E1E2
      E200B7B6B6006C6A6A006C6A6A006C6A6A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C0000000000000000006C6A6A00D4D3D300CACA
      CA008E8C8C008E8C8C008E8C8C003C3B3B000A090A00070707000B0B0B000707
      07007A7A7A00BBBBBB006C6A6A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE6D0009B2190009B2
      190009B3190009BA1A0006670C00000000006C6A6A00CACACA00CACACA008E8C
      8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A000888686005E5B5C000707
      070009090900080808006C6A6A00767373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210001B9A3A002AC65B001DBB
      45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FDF8005ACB650009B2
      190009B2190009B81A0008941300045D09006C6A6A00CACACA008E8C8C00EFEE
      EE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCECE00BDBCBC00ADAB
      AB008B898900585656007A787800757373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210002AB65B002CC5650022BD
      4D000FB422000AB21A000CB31C000AB219008DDB9500FDFEFD00F6FCF70058CB
      630009B2190009B51A0008AB1700045D09006C6A6A008E8C8C00FFFFFF00FEFC
      FC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0C100D7D7D700D8D8
      D800C7C6C600B7B6B600918F8F006C6969000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F821C0037C26C0033C76C00CDF1
      DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FDF900FFFFFF00F2FB
      F3006FD2790008B4190009B3190005650B00000000006C6A6A006C6A6A00EDEB
      EB00B1A6A7007A6F72008A83880096929500969091009D9798009A9395009E98
      9900BBBABA00D1D1D100C2C2C2006C6A6A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000138D230058CC830042C97700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
      FF00BCEAC1000AB41A0009B31900066D0D000000000000000000000000006C6A
      6A00BB897F00A7876D008B6F64007D6760006F626500797379008F8B8E00A9A3
      A400CBCACA00C1C1C1006C6A6A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D006FD293005FD38D006DD4
      950072D6990071D6980072D6990064D28C0092DFA800FBFEFB00FFFFFF00ACE5
      B8002EBF4C0011B82B0008B1190005610A000000000000000000000000000000
      0000BD828100FFE3B400FFD39F00E9B28100C9997300BA916C00BD828100807D
      7E006C6A6A006C6A6A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D0067CC83009BE5BA0038C6
      700030C3690038C56F0038C56F0070D69700E8F8EE00FFFFFF009FE2B10020BD
      48001AB93E0010BA290008A3170005610A000000000000000000000000000000
      0000BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC68800BD8281000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025AE3900BCEDD20082DB
      A40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2B20022BC4B001DBA
      410018B7360014C030000A85170000000000000000000000000000000000C086
      8300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD828100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025AE390071D28C00D2F4
      E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2630024BE560023BC
      4D001FC1460016AE34000A85170000000000000000000000000000000000BD82
      8100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD828100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000BD828100FFFF
      F200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD828100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000025AE
      390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB157000000000000000000000000000000000000000000BD828100BD82
      8100BD828100FBEFE200FBE3CF00FBDDC200BD82810000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000521E15006B2508007D2C05007E2D05006D260700551F13000000
      0000000000000000000000000000000000000000000000000000006600000066
      0000B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B000066
      0000006600000000000000000000000000000000000000000000000000000104
      9D00041CB1000730C0000734C4000735C5000735C5000734C3000731C100041F
      B30001069E000000000000000000000000000000000000000000000000008932
      040055211700BF5C1500E1985500EFBD8A00F0BF8C00E29D5B00C2621800541F
      1600903503000000000000000000000000000000000000000000000000005521
      170089320400BF5C1500E1985500EFBD8A00F0BF8C00E29D5B00C26218009035
      0300541F16000000000000000000000000000000000000660000009900000099
      0000E5DEDF000066000000660000E4E7E700E0E3E600D9DFE000CCC9CC000066
      0000037D030000660000000000000000000000000000000000000109A100052B
      C3000735C7000733C2000732C2000732C2000732C2000732C2000733C3000735
      C400062DBE00020CA400000000000000000000000000000000006C290E00AF47
      0400EBB17900FFFEF800FEF8F400F2DAC400F2D9C200FCF6F000FFFFFC00EEBA
      8700B64E070060231100000000000000000000000000000000006C290E00AF47
      0400EBB17900FFFEF800FEF8F400F2DAC400F2D9C200FCF6F000FFFFFC00EEBA
      8700B64E07006023110000000000000000000000000000660000009900000099
      0000E9E2E2000066000000660000E2E1E300E2E6E800DDE2E400CFCCCF000066
      0000037D03000066000000000000000000000000000001049B00052BCA000636
      D8000431CD000027C400032EC1000732C2000732C2000430C1000027BF00042F
      C1000735C400072EBE0001069E000000000000000000732D0D00B0460200F4D0
      AB00FFFFFE00D4884600BD4E0400BA470000BA460000C0530700D4844200FCF8
      F300F8DDBD00B64D0500903502000000000000000000732D0D00B0460200F4D0
      AB00FFFEFE00D78C4E00C0540900BA460000BA460000BD4F0400D07E3900FCF8
      F400F8DDBD00B64D0500541F1600000000000000000000660000009900000099
      0000ECE4E4000066000000660000DFDDDF00E1E6E800E0E5E700D3D0D2000066
      0000037D030000660000000000000000000000000000031ABA000537E7000331
      DD00123DD8006480E0001840CB00002CC100022DC0000F38C4006580D9001B43
      C700052FC1000735C500051FB30000000000000000009A380000E6AB7200FFFF
      FF00CC732800C9682000CE752A00BB480000BC4B0000B8430000B8420000CA6C
      1F00FCF8F400EFBC8800541F160000000000000000009A380000E6AB7200FFFF
      FF00CF762D00B8410000BA430000BC4A0000BB470000C6631500CE753100C96B
      1F00FCF8F400EFBC880090350200000000000000000000660000009900000099
      0000EFE6E600EDE5E500E5DEDF00E0DDDF00DFE0E200E0E1E300D6D0D2000066
      0000037D030000660000000000000000000001049E000430E4000436F100002A
      E4005070E900FFFFFF00B7C4F1000D36CA00042DC300A2B2E800FFFFFF006984
      DA000026BE000733C3000731C1000108A000A9440300C05C1100FFFCFA00E1A3
      6A00BF480000EECBA900F0D5BA00BD4A0000B8420000CA6C2000E9BD9300BA46
      0000D4884300FFFFFF00C16016007B2C040089340600C05C1100FFFCFA00E1A3
      6A00C04C0000FFFFFF00D3803800BC470000B8420000DC995E00FFFFFF00B843
      0000D4874300FFFFFF00C1601600551F13000000000000660000009900000099
      0000009900000099000000990000009900000099000000990000009900000099
      000000990000006600000000000000000000020FAF000336FA000335F8000232
      EE000A35E8008CA2F200FFFFFF00B4C2F100A9B8ED00FFFFFF00A7B7E900133A
      C400052FC1000732C2000734C4000313AA009A3B0200DD955400FFFFFF00D376
      2800CC600E00EFCBA900F0D3B400C2510100D5864100FAF2E900F7E7D900BC4B
      0000BF510300FCF8F300E29D5A006D2607009A3B0200DD955400FFFFFF00D376
      2800CC600D00FFFFFF00FFFFFF00DC955400BC450000DA965800FFFFFF00BC4B
      0000BF510300FCF8F300E29D5A006D260700000000000066000000990000B1D0
      B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0
      B100009900000066000000000000000000000619BC001747FE00093AFC000435
      F8000131F000002BE80091A5F400FFFFFF00FFFFFF00ABBAEF00062FC500022D
      C0000732C2000732C2000736C5000419AE0089340600EBBB8A00FBF0E700D87A
      2B00D7742200F3D1B000F2D1B400E6AC7600FFFFFF00FFFFFF00F3DEC700BD4D
      0100BA450000F2DAC200EFC08E00551F1300A9440300EBBB8A00FBF0E700D87A
      2B00D7742200FFFFFF00FFFFFF00FFFFFF00E5AF7B00E0A16800FFFFFF00BD4D
      0100BA450000F2DAC200EFC08E007D2C0400000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900009900000066000000000000000000000B1DBE004168FE001C49FC000335
      FB000031F9000531F200A4B5F700FFFFFF00FFFFFF00B9C6F2000D36D000002C
      C6000732C2000732C2000736C5000418AD00AD450200EEBF9000FCF4EB00E28A
      3E00E1843500F6D8B800F3D7BA00E5A36500FCF3EB00FFFFFF00F3DEC900BD4D
      0100BA460000F3DEC700EFBD8A00521F1600B04A0600EEBF9000FCF4EB00E28A
      3E00E1843500FFFFFF00FFFFFF00FFFFFF00EDC59E00E5AA7500FFFFFF00BD4D
      0100BA460000F3DEC700EFBD8A007B2C0400000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900009900000066000000000000000000000613B4005B7CFC00486CFD000133
      FB00113CFB00A1B4FE00FFFFFF00A4B6F80092A7F500FFFFFF00B6C4F2001A41
      D300042FC8000732C4000734C3000212A900B0490500E9AA6E00FFFFFF00EDA4
      6200EA954700F8DEC200F7DEC600D9742100DC883F00F7E3D100F7EADC00BC4B
      0000C0540500FEFBF800E09752006B240800B0490500E9AA6E00FFFFFF00EDA4
      6200EA934600FFFFFF00FFFFFF00EDBA8800D0671300E3A66D00FFFFFF00BC4B
      0000C0540500FEFBF800E09752006B240800000000000066000000990000F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F900009900000066000000000000000000000003A0004A6AF3008FA6FF001F46
      FB004C6FFC00FFFFFF00A7B8FE000733F600002AED008CA2F600FFFFFF00627F
      E7000028D0000734CC000730C30000069F00B04A0600DD893F00FFFCF800FAD7
      B400F4A35900FCE6D000F8E3CE00E1843500D7722000D3752700E3AC7800BB47
      0000D9935400FFFFFE00BD5A10007B2C0400AD450200DD893F00FFFCF800FAD7
      B400F4A55B00FFFFFF00F0BB8700DE813000D56E1D00E7AF7A00FFFFFF00BA44
      0000D9935300FFFFFE00BD5A1000521F1600000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F90000990000006600000000000000000000000000001A2FCB0099AFFF008BA2
      FE00214DFB004D71FC000E3DFB000030FB000031F7000636F1004C6EF100103C
      E3000432DB000636D700041CB5000000000000000000C9651800F8CEA500FFFF
      FF00FED0A300F8BA7F00EFAD7000E2883B00D9792A00CE651200C04C0000D07A
      3100FFFFFF00EAAF7300501F18000000000000000000C9651800F8CEA500FFFF
      FF00FED1A600F6A96300EB964800E2893C00D8772600D77B2E00D1782D00D07A
      3200FFFFFF00EAAF73008931030000000000000000000066000000990000F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F90000990000006600000000000000000000000000000004A000415EEC00B8C7
      FF009CAFFD003A5CFC000A3AFB000335FB000335FB000133F900052FF2000635
      EB000537E900052CCD0000049C000000000000000000B2470100E0873B00FEE5
      CB00FFFFFF00FAD3AC00EDA15C00E28B3F00D97B2D00D4782A00E1A46B00FFFF
      FF00F3CCA400AC440200893103000000000000000000B2470100E0873B00FEE5
      CB00FFFFFF00FAD5B100EDA56300E28B3F00D97B2D00D3752600DE9D6200FFFF
      FF00F3CCA400AC440200501F180000000000000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F9000099000000660000000000000000000000000000000000000309A5004260
      EC00A9BBFF00BDCAFF008EA5FE006483FD005073FC004A6EFD003961FD001444
      F900042CD7000109A20000000000000000000000000000000000B64C0400DE87
      3B00F8CEA300FFFAF300FFFFFF00FEF6EE00FCF3EA00FFFFFF00FEF7EE00E6A5
      6A00AC4403005A22140000000000000000000000000000000000B64C0400DE87
      3B00F8CEA300FFFAF300FFFFFF00FEF6EE00FCF3EA00FFFFFF00FEF7EE00E6A5
      6A00AC4403005A2214000000000000000000000000000000000000660000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900006600000000000000000000000000000000000000000000000000000004
      A0001E32CD005876F600859EFE008BA3FF007994FE005376FC00234AF000051E
      C50001049C00000000000000000000000000000000000000000000000000AF45
      0100C5641800DC884000E9A76C00EEBB8900EBB58100DC914D00BD590F005D23
      150090340200000000000000000000000000000000000000000000000000AF45
      0100C5641800DC884000E9A76C00EEBB8900EBB58100DC914D00BD590F009034
      02005D2315000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000004A0000917B6001022C3000D1FC2000311B40001059F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A3410300A5450700A64608009E4006008B350500752D0C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A3410300A5450700A64608009E4006008B350500752D0C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006D7C94006F7C88000000000000000000000000000000
      0000000000000000000000000000000000000000000008750D0008750D000875
      0D0008750D000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000099330000993300009933
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000D7FA9000E80
      AA000D7FA9000E80AA000E80AA001081AB000000000000000000000000000000
      000000000000788295001F89E00059A9DC0000000000000000000E80AA000E80
      AA000E80AA000E80AA000E80AA000E80AA000000000008750D0013AA220010A6
      1D0008750D0000000000000000000000000000000000000000000E80AA000E80
      AA000E80AA000E80AA0099330000FDFEFE00FDFEFE00FDFEFE008EA4FD00B8C6
      FD00FDFEFE009933000000000000000000000000000000000000000000000D80
      AA000D80AA000D80AA000D80AA000D80AA000D80AA0000000000000000000000
      00000000000000000000000000000000000000000000048CB90048D5EE0022D7
      FC0035D8FD006FE6FF008DE6FA0044BADD000E80AA0000000000000000000000
      0000788295002087DE004EB7FF0057AEF40000000000078DBB0049D5EE0023D7
      FE0036D8FD006FE6FF008DE7FA0044BADD000E80AA0008750D001AB12D0013AA
      220008750D0000000000000000000000000000000000078DBB0049D5EE0023D7
      FE0036D9FE006FE6FF0099330000FDFEFE00FDFEFE007E98FC000335FB00597A
      FC00FDFEFE009933000000000000000000000000000000000000078DBB0049D5
      EE0023D6FD0036D9FE006FE6FF008DE7FA0044BADD000D80AA00000000000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0022D7
      FC0035D8FD0070E6FF008DE6FA004ABFE0000F9DCE001180A700000000008B86
      97001F7ECE004EB7FF0057AEF40000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D0008750D0008750D0008750D0025BD3E001CB4
      310008750D0008750D0008750D0008750D00078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF0099330000D6DEFE004368FC000335FB004368FC000335
      FB00D9E0FE0099330000000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D3F70000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A000000000000000000088EBC008CFAFD0058E9FD0022D7
      FC0035D8FD0075D3E900B1979400C2A69A00C6AEA000AE877C008C6B6C006092
      BD004EB7FF004EB7FF000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D003CD4620035CE590030C952002CC3490026BE
      410025BD3E001AB12D0017AF2A0008750D00078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF00993300005274FC001442FB00BCC9FD00EFF2FE001A47
      FB004F72FC0097330400000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D3F70000009A003E6EFF00285BFF001248FF000236FF000029
      F900001DEC0000009A000000000000000000088EBC008CFAFD0058E9FD0024D8
      FD0046C6E400AB939500ECDDCC00FEFED600FFFFE400F7F2D900CFB7A100AD85
      80004EB7FF00000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D0041DA6D0041DA6D0038D15E0035CE59002CC3
      49002AC1470025BD3E0020B8360008750D00078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF0099330000E4EAFE00D9E0FE00FDFEFE00FDFEFE0098AC
      FD000335FB0064345900000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D4F80000009A004474FF003264FF001B50FF00083CFF000029
      F9000022F10000009A000000000000000000048CB900B4FFFF00B6F6FF00C6F5
      FF00B5A09F00E8DDD600FFFFF400FEFED600FFFEDD00FEFED600FFF2BA00CAA0
      8C0000000000000000000000000000000000078DBB00B3FCFE00B6F6FF00C6F5
      FF00E3FAFF00E9F9FD0008750D0008750D0008750D0008750D003FD868003CD4
      620008750D0008750D0008750D0008750D00078DBB00B3FCFE00B6F6FF00C6F5
      FF00E3FAFF00EBFBFF0099330000FDFEFE00FDFEFE00FDFEFE00FDFEFE00FDFE
      FE005274FC000335FB00000000000000000000000000078DBB00B3FCFE00B6F6
      FF00C6F5FF00E1F8FD0000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A000000000000000000048CB900B8EDF60030BCDC0011A7
      D1009C919000FFFFE400FFFEDD00FEFED600FFFEDD00FCF5CD00F8D09800ECD1
      AC00AD858000000000000000000000000000078DBB00BAEEF60030BCDD0011A7
      D200129FCB0020A1CA0035A7CD002692BF0092CEE40008750D0045DD710041DA
      6D0008750D00000000000000000000000000078DBB00BAEEF60030BCDD0011A7
      D200129FCB0020A2CB0099330000993300009933000099330000993300009933
      00008F3311002235C8000335FB000000000000000000078DBB00BAEEF60030BC
      DD0011A7D200129ECA0020A2CB0035A7CD002692BF0092CEE4000D80AA000000
      000000000000000000000000000000000000088EBC004BC6DC0058E9FD0022D7
      FC00A49E9900FFFEDD00FFFEDD00FFFEDD00FFFEDD00F6DAAB00F3BE8000F5DE
      B500AD858000000000000000000000000000078DBB004AC5DD0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E3000682B60008750D004DE67F004DE6
      7F0008750D00000000000000000000000000078DBB004AC5DD0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E3000682B6000E80AA00000000000000
      000000000000000000000335FB000335FB0000000000078DBB004AC5DD0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E3000682B6000D80AA000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0024D8
      FD0096959400FAF6D600FFFEDD00FAF6D600F9E1B100F5CB9A00FEEAB900E4CC
      A900AD858000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE0008750D0008750D000875
      0D0008750D00000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      00000000000000000000000000000335FB0000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0024D8
      FD005EA8BE00D3BBA200FFF7C600F8D09800F4C88E00FEF7E000F9F6F200AD85
      800000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000E7FA900000000000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0024D8
      FD0039D7FB008AA5AD00CDAC9300ECD1AC00F5E1B600DAC5B700AD858000AD85
      800000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000E80AA00000000000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      000000000000000000000000000000000000088EBC008CFAFD0081F8FE0071F9
      FE007BFFFF0097FCFD00A1C6C8008F989B008683880087707000000000000000
      000000000000000000000000000000000000078DBB0091FCFE0082F8FF006FF8
      FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80AA00000000000000
      000000000000000000000000000000000000078DBB0091FCFE0082F8FF006FF8
      FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB0091FCFE0082F8
      FF006FF8FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000D80AA000000
      000000000000000000000000000000000000048CB900FBFFFF00F5FFFE00D2FF
      FF00B4FFFF00ADFFFE00ADFFFE00ADFFFE0071F9FE000E80AA00000000000000
      000000000000000000000000000000000000078DBB00FCFFFF00F4FFFF00D3FF
      FF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80AA00000000000000
      000000000000000000000000000000000000078DBB00FDFEFE00F4FFFF00D3FF
      FF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB00FCFFFF00F4FF
      FF00D3FFFF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000D80AA000000
      000000000000000000000000000000000000000000000A91C100F5FFFE00E3FE
      FF00C6FEFF00ADFFFE00A7FFFF009BFBFD001285B00000000000000000000000
      000000000000000000000000000000000000000000000C92C000F4FFFF00E3FA
      FF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF0000000000000000000000
      000000000000000000000000000000000000000000000C92C000F4FFFF00E3FA
      FF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF0000000000000000000000
      00000000000000000000000000000000000000000000000000000C92C000F4FF
      FF00E1F8FD00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF00000000000000
      0000000000000000000000000000000000000000000000000000088EBC00088E
      BC00048CB900088EBC00088EBC00088EBC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000078DBB00078D
      BB00078DBB00078DBB00078DBB00078DBB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000078DBB00078D
      BB00078DBB00078DBB00078DBB00078DBB000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000078D
      BB00078DBB00078DBB00078DBB00078DBB00078DBB0000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00F81FF33F00000000E007E00700000000
      C003C00000000000800180010000000080010000000000000000000000000000
      000000000000000000008000000000000000E001000000000000F00300000000
      0000F01F000000008001E03F000000008001E03F00000000C003C03F00000000
      E007C07F00000000F81FF8FF00000000FFFFF81FF81FF81FC007E007E007E007
      8003C003C003C003800380018001800180038001800180018003000000000000
      8003000000000000800300000000000080030000000000008003000000000000
      8003000000000000800380018001800180038001800180018003C003C003C003
      C007E007E007E007FFFFF81FF81FF81FFFFCFF87FC03FFFFC0F8C087C003E07F
      807080078003C03F002100000003800300030000000380030007000000038003
      000F000000038003000700070001801F00070007003C801F00070007003E801F
      000F003F003F801F000F003F003F801F003F003F003F801F003F003F003F801F
      807F807F807FC03FC0FFC0FFC0FFE07F00000000000000000000000000000000
      000000000000}
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
    Left = 768
    Top = 552
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 16
    Top = 520
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 528
    Top = 288
  end
  inherited QBrowse2: TFDQuery
    Left = 24
    Top = 608
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 24
    Top = 640
  end
  object DSCabecera: TDataSource
    DataSet = CDSCabecera
    Left = 264
    Top = 144
  end
  object DSPCabecera: TDataSetProvider
    DataSet = QCabecera
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 144
  end
  object CDSCabecera: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPCabecera'
    OnNewRecord = CDSCabeceraNewRecord
    Left = 200
    Top = 144
    object CDSCabeceraID_CAJA_SALDO: TIntegerField
      FieldName = 'ID_CAJA_SALDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCabeceraID_CAJA_CAB: TIntegerField
      FieldName = 'ID_CAJA_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCabeceraID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Required = True
    end
    object CDSCabeceraID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object CDSCabeceraIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSCabeceraESTADO_CAJA: TSmallintField
      FieldName = 'ESTADO_CAJA'
      Required = True
    end
    object CDSCabeceraOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Size = 400
    end
    object CDSCabeceraMUESTRATIPOPAGO: TStringField
      FieldName = 'MUESTRATIPOPAGO'
      ProviderFlags = []
      Size = 15
    end
  end
  object DSPPie: TDataSetProvider
    DataSet = QPie
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 152
    Top = 336
  end
  object CDSPie: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPPie'
    OnNewRecord = CDSPieNewRecord
    Left = 208
    Top = 336
    object CDSPieID_CAJA_SALDO: TIntegerField
      FieldName = 'ID_CAJA_SALDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPieID_CAJA_CAB: TIntegerField
      FieldName = 'ID_CAJA_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPieID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Required = True
    end
    object CDSPieID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object CDSPieIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSPieESTADO_CAJA: TSmallintField
      FieldName = 'ESTADO_CAJA'
      Required = True
    end
    object CDSPieOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Size = 400
    end
    object CDSPieMUESTRATIPOPAGO: TStringField
      FieldName = 'MUESTRATIPOPAGO'
      ProviderFlags = []
      Size = 15
    end
  end
  object DSRecalculo: TDataSource
    DataSet = CDSRecalculo
    Left = 544
    Top = 400
  end
  object DSPie: TDataSource
    DataSet = CDSPie
    Left = 264
    Top = 336
  end
  object IBGSaldosCaja: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_CAJA_SALDO'
    SystemGenerators = False
    Left = 408
    Top = 248
  end
  object DSMov: TDataSource
    DataSet = CDSMov
    Left = 280
    Top = 256
  end
  object DSPMov: TDataSetProvider
    DataSet = QMov
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 152
    Top = 256
  end
  object CDSMov: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPMov'
    Left = 208
    Top = 256
    object CDSMovID_MOV_CAJA: TIntegerField
      DisplayLabel = 'Id Mov Caja'
      FieldName = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovID_CAJA: TIntegerField
      DisplayLabel = 'Id Caja'
      FieldName = 'ID_CAJA'
      Required = True
    end
    object CDSMovFECHA_CAJA: TSQLTimeStampField
      DisplayLabel = 'Fecha Caja'
      FieldName = 'FECHA_CAJA'
    end
    object CDSMovFECHA_OPERACION: TSQLTimeStampField
      DisplayLabel = 'F.Operacion'
      FieldName = 'FECHA_OPERACION'
    end
    object CDSMovTIPO_OPERACION: TStringField
      DisplayLabel = 'Tipo Op'
      FieldName = 'TIPO_OPERACION'
      Size = 1
    end
    object CDSMovTIPO_COMPROB: TStringField
      DisplayLabel = 'Tipo Cp'
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSMovCLASE_COMPROB: TStringField
      DisplayLabel = 'Clase Cp'
      FieldName = 'CLASE_COMPROB'
      Size = 2
    end
    object CDSMovID_COMPROBANTE: TIntegerField
      DisplayLabel = 'Id Comp'
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSMovNRO_COMPROBANTE: TStringField
      DisplayLabel = 'Nro.Comp.'
      FieldName = 'NRO_COMPROBANTE'
      Required = True
      Size = 13
    end
    object CDSMovHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSMovDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSMovID_TPAGO: TIntegerField
      DisplayLabel = 'Tp.Pago'
      FieldName = 'ID_TPAGO'
      Required = True
    end
    object CDSMovID_FPAGO: TIntegerField
      DisplayLabel = 'Fm.Pago'
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object CDSMovUNIDADES: TFloatField
      DisplayLabel = 'Unidades'
      FieldName = 'UNIDADES'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSMovCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      DisplayFormat = '0.00'
    end
    object CDSMovID_CUENTA_CAJA: TIntegerField
      DisplayLabel = 'Id Cta Caja'
      FieldName = 'ID_CUENTA_CAJA'
    end
    object CDSMovMONEDA: TIntegerField
      DisplayLabel = 'Moneda'
      FieldName = 'MONEDA'
      Required = True
    end
  end
  object QCabecera: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.*,t.detalle as MuestraTipoPago from caja_saldos c '
      'left join tipopago t on t.id_tpago=c.id_tpago'
      'where c.id_caja_cab=:id and c.estado_caja=0'
      'order by c.id_tpago,c.id_fpago')
    Left = 56
    Top = 144
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCabeceraID_CAJA_SALDO: TIntegerField
      FieldName = 'ID_CAJA_SALDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCabeceraID_CAJA_CAB: TIntegerField
      FieldName = 'ID_CAJA_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCabeceraID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Required = True
    end
    object QCabeceraID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object QCabeceraIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QCabeceraESTADO_CAJA: TSmallintField
      FieldName = 'ESTADO_CAJA'
      Required = True
    end
    object QCabeceraOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Size = 400
    end
    object QCabeceraMUESTRATIPOPAGO: TStringField
      FieldName = 'MUESTRATIPOPAGO'
      ProviderFlags = []
      Size = 15
    end
  end
  object QMov: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cm.* from caja_mov cm'
      'where cm.id_caja=:id'
      'order by id_tpago,id_fpago')
    Left = 88
    Top = 256
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QMovID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Required = True
    end
    object QMovFECHA_CAJA: TSQLTimeStampField
      FieldName = 'FECHA_CAJA'
    end
    object QMovFECHA_OPERACION: TSQLTimeStampField
      FieldName = 'FECHA_OPERACION'
    end
    object QMovTIPO_OPERACION: TStringField
      FieldName = 'TIPO_OPERACION'
      Size = 1
    end
    object QMovTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QMovCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Size = 2
    end
    object QMovID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object QMovNRO_COMPROBANTE: TStringField
      FieldName = 'NRO_COMPROBANTE'
      Required = True
      Size = 13
    end
    object QMovHABER: TFloatField
      FieldName = 'HABER'
    end
    object QMovDEBE: TFloatField
      FieldName = 'DEBE'
    end
    object QMovID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Required = True
    end
    object QMovID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object QMovUNIDADES: TFloatField
      FieldName = 'UNIDADES'
    end
    object QMovCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object QMovID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
    end
    object QMovMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
  end
  object QPie: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.*,t.detalle as MuestraTipoPago from caja_saldos c '
      'left join tipopago t on t.id_tpago=c.id_tpago'
      'where c.id_caja_cab=:id and c.estado_caja=1'
      'order by c.id_tpago,c.id_fpago')
    Left = 72
    Top = 344
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QPieID_CAJA_SALDO: TIntegerField
      FieldName = 'ID_CAJA_SALDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPieID_CAJA_CAB: TIntegerField
      FieldName = 'ID_CAJA_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPieID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Required = True
    end
    object QPieID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object QPieIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QPieESTADO_CAJA: TSmallintField
      FieldName = 'ESTADO_CAJA'
      Required = True
    end
    object QPieOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Size = 400
    end
    object QPieMUESTRATIPOPAGO: TStringField
      FieldName = 'MUESTRATIPOPAGO'
      ProviderFlags = []
      Size = 15
    end
  end
  object QCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.*,cc.nombre as MuestraCaja from caja_Cab c '
      'left join cuenta_caja cc on cc.id_cuenta=c.id_cuenta_caja'
      'where c.id_cuenta_caja=:id '
      'order by c.id_caja')
    Left = 424
    Top = 536
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QNombreTriggers: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select rdb$trigger_name,rdb$trigger_inactive from rdb$triggers'
      'where rdb$relation_name='#39'CAJA_MOV'#39)
    Left = 424
    Top = 600
  end
  object QDriveTrigger: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'ALTER TRIGGER TAI_FCVTACAB INACTIVE')
    Left = 552
    Top = 240
  end
  object QRecalculo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from recalcular_saldos_caja(:id) t'
      'order by t.tpago,t.fpago')
    Left = 360
    Top = 392
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object CDSRecalculo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRecalculo'
    Left = 484
    Top = 392
    object CDSRecalculoMONEDA: TIntegerField
      FieldName = 'MONEDA'
    end
    object CDSRecalculoSALDO: TFloatField
      FieldName = 'SALDO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSRecalculoDEBE: TFloatField
      FieldName = 'DEBE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSRecalculoHABER: TFloatField
      FieldName = 'HABER'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSRecalculoFPAGO: TSmallintField
      FieldName = 'FPAGO'
    end
    object CDSRecalculoTPAGO: TSmallintField
      FieldName = 'TPAGO'
    end
    object CDSRecalculoDETALLE: TStringField
      FieldName = 'DETALLE'
    end
  end
  object DSPRecalculo: TDataSetProvider
    DataSet = QRecalculo
    Options = []
    Left = 428
    Top = 392
  end
  object CDSNombreTriggers: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPNombreTriggers'
    Left = 623
    Top = 608
    object CDSNombreTriggersRDBTRIGGER_NAME: TStringField
      FieldName = 'RDB$TRIGGER_NAME'
      FixedChar = True
      Size = 67
    end
    object CDSNombreTriggersRDBTRIGGER_INACTIVE: TSmallintField
      FieldName = 'RDB$TRIGGER_INACTIVE'
    end
  end
  object DSPNombreTriggers: TDataSetProvider
    DataSet = QNombreTriggers
    Options = []
    Left = 535
    Top = 600
  end
  object CDSCaja: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCaja'
    AfterScroll = CDSCajaAfterScroll
    Left = 553
    Top = 536
    object CDSCajaID_CAJA: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCajaID_CUENTA_CAJA: TIntegerField
      DisplayLabel = 'Id Cta'
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
    object CDSCajaFECHA_INCIO: TSQLTimeStampField
      DisplayLabel = 'Inicio'
      FieldName = 'FECHA_INCIO'
      Origin = 'FECHA_INCIO'
      Required = True
    end
    object CDSCajaFECHA_CIERRE: TSQLTimeStampField
      DisplayLabel = 'Cierre'
      FieldName = 'FECHA_CIERRE'
      Origin = 'FECHA_CIERRE'
    end
    object CDSCajaSALDO_INCIAL: TFloatField
      FieldName = 'SALDO_INCIAL'
      Origin = 'SALDO_INCIAL'
    end
    object CDSCajaESTADO: TIntegerField
      DisplayLabel = 'Est'
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
    end
    object CDSCajaOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object CDSCajaNUMEROCAJA: TIntegerField
      DisplayLabel = 'Nro.Caja'
      FieldName = 'NUMEROCAJA'
      Origin = 'NUMEROCAJA'
    end
    object CDSCajaMUESTRACAJA: TStringField
      FieldName = 'MUESTRACAJA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
  end
  object DSPCaja: TDataSetProvider
    DataSet = QCaja
    Options = []
    Left = 497
    Top = 536
  end
  object DSCaja: TDataSource
    DataSet = CDSCaja
    Left = 624
    Top = 536
  end
  object QCtaCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from cuenta_caja where id_tipo_cta=1')
    Left = 112
    Top = 584
  end
  object DSPCtaCaja: TDataSetProvider
    DataSet = QCtaCaja
    Options = []
    Left = 168
    Top = 584
  end
  object CDSCtaCaja: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCtaCaja'
    Left = 232
    Top = 584
    object CDSCtaCajaID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Required = True
    end
    object CDSCtaCajaID_TIPO_CTA: TIntegerField
      FieldName = 'ID_TIPO_CTA'
      Required = True
    end
    object CDSCtaCajaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSCtaCajaNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Size = 15
    end
    object CDSCtaCajaID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object CDSCtaCajaCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSCtaCajaRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object DSCtaCaja: TDataSource
    DataSet = CDSCtaCaja
    Left = 320
    Top = 584
  end
  object CDSCabSig: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPCabecera'
    Left = 200
    Top = 464
    object IntegerField1: TIntegerField
      FieldName = 'ID_CAJA_SALDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_CAJA_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'ID_TPAGO'
      Required = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object FMTBCDField1: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object SmallintField1: TSmallintField
      FieldName = 'ESTADO_CAJA'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'OBSERVACIONES'
      Size = 400
    end
    object StringField2: TStringField
      FieldName = 'MUESTRATIPOPAGO'
      ProviderFlags = []
      Size = 15
    end
  end
  object DSCabSig: TDataSource
    DataSet = CDSCabSig
    Left = 272
    Top = 472
  end
  object CDSPiePrev: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPPie'
    OnNewRecord = CDSPieNewRecord
    Left = 200
    Top = 400
    object IntegerField5: TIntegerField
      FieldName = 'ID_CAJA_SALDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField6: TIntegerField
      FieldName = 'ID_CAJA_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField7: TIntegerField
      FieldName = 'ID_TPAGO'
      Required = True
    end
    object IntegerField8: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object FMTBCDField2: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object SmallintField2: TSmallintField
      FieldName = 'ESTADO_CAJA'
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'OBSERVACIONES'
      Size = 400
    end
    object StringField4: TStringField
      FieldName = 'MUESTRATIPOPAGO'
      ProviderFlags = []
      Size = 15
    end
  end
  object DSPiePrev: TDataSource
    DataSet = CDSPiePrev
    Left = 272
    Top = 400
  end
  object QMovChe3: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'SELECT cm.id_mov_caja,cm.id_caja,cc.nombre, cm.id_comprobante,cm' +
        '.tipo_comprob,cm.clase_comprob,'
      '       cm.nro_comprobante,cm.debe,cm.haber,'
      '       ch.id_mov_caja as Id_mov_caja_padre,'
      
        '       ch.id_cheque_ter,ch.fecha_emision,ch.fecha_cobro,ch.orige' +
        'n,ch.numero,ch.importe,cm.id_tpago,cm.id_fpago  FROM caja_mov CM'
      'left join formapago f on f.id_tpago=cm.id_tpago'
      'left join cheque_tercero ch on ch.id_mov_caja=cm.id_mov_caja'
      'left join cuenta_caja cc on cc.id_cuenta=cm.id_cuenta_caja'
      'WHERE cm.id_tpago=3 and'
      '      cm.id_cuenta_caja = :idctacaja and'
      '      cm.id_caja = :idcaja or :idcaja = -1'
      'order by '
      'cm.id_mov_caja')
    Left = 668
    Top = 128
    ParamData = <
      item
        Name = 'idctacaja'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'idcaja'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'idcaja'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object CDSMovChe3: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'idctacaja'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idcaja'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idcaja'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovChe3'
    Left = 804
    Top = 144
    object CDSMovChe3ID_MOV_CAJA: TIntegerField
      DisplayLabel = 'Id.Mov.Caja'
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object CDSMovChe3ID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Required = True
    end
    object CDSMovChe3NOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSMovChe3ID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSMovChe3TIPO_COMPROB: TStringField
      DisplayLabel = 'Tp.'
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSMovChe3CLASE_COMPROB: TStringField
      DisplayLabel = 'Cl.'
      FieldName = 'CLASE_COMPROB'
      Size = 2
    end
    object CDSMovChe3NRO_COMPROBANTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NRO_COMPROBANTE'
      Required = True
      Size = 13
    end
    object CDSMovChe3DEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovChe3HABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovChe3ID_MOV_CAJA_PADRE: TIntegerField
      FieldName = 'ID_MOV_CAJA_PADRE'
    end
    object CDSMovChe3ID_CHEQUE_TER: TIntegerField
      DisplayLabel = 'Id.Che'
      FieldName = 'ID_CHEQUE_TER'
    end
    object CDSMovChe3FECHA_EMISION: TSQLTimeStampField
      FieldName = 'FECHA_EMISION'
    end
    object CDSMovChe3FECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
    end
    object CDSMovChe3ORIGEN: TStringField
      DisplayLabel = 'Origen'#231
      FieldName = 'ORIGEN'
      Size = 30
    end
    object CDSMovChe3NUMERO: TIntegerField
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO'
    end
    object CDSMovChe3IMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovChe3ID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Required = True
    end
    object CDSMovChe3ID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object CDSMovChe3CONCILIADO: TIntegerField
      DisplayLabel = '#'
      FieldKind = fkInternalCalc
      FieldName = 'CONCILIADO'
    end
  end
  object DSMovChe3: TDataSource
    DataSet = CDSMovChe3
    Left = 860
    Top = 136
  end
  object DSPMovChe3: TDataSetProvider
    DataSet = QMovChe3
    Options = []
    Left = 748
    Top = 136
  end
  object SQLQuery1: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cc.* from Caja_cab cc'
      'where cc.id_cuenta_caja=:cta_caja'
      'order by'
      'cc.numerocaja desc')
    Left = 24
    Top = 440
    ParamData = <
      item
        Name = 'cta_caja'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Options = []
    Left = 88
    Top = 448
  end
  object QMovChe3H: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'SELECT cm.id_mov_caja,cm.id_caja,cc.nombre, cm.id_comprobante,cm' +
        '.tipo_comprob,cm.clase_comprob,'
      '       cm.nro_comprobante,cm.debe,cm.haber,'
      '       ch.id_mov_caja as Id_mov_caja_padre,'
      
        '       ch.id_cheque_ter,ch.fecha_emision,ch.fecha_cobro,ch.orige' +
        'n,ch.numero,ch.importe,cm.id_tpago,cm.id_fpago  FROM caja_mov CM'
      'left join formapago f on f.id_tpago=cm.id_tpago'
      'left join cheque_tercero ch on ch.id_mov_caja=cm.id_mov_caja'
      'left join cuenta_caja cc on cc.id_cuenta=cm.id_cuenta_caja'
      'WHERE (cm.id_tpago=3) and'
      '      (cm.id_cuenta_caja = :idctacaja) and'
      '      (cm.id_caja = :idcaja or :idcaja = -1 ) and'
      '      cm.debe=0'
      'order by'
      'cm.id_mov_caja')
    Left = 708
    Top = 288
    ParamData = <
      item
        Name = 'idctacaja'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'idcaja'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'idcaja'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPMovChe3H: TDataSetProvider
    DataSet = QMovChe3H
    Options = []
    Left = 780
    Top = 288
  end
  object CDSMovChe3H: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'idctacaja'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idcaja'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idcaja'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovChe3H'
    Left = 836
    Top = 288
    object CDSMovChe3HID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object CDSMovChe3HID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Required = True
    end
    object CDSMovChe3HNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSMovChe3HID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSMovChe3HTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSMovChe3HCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Size = 2
    end
    object CDSMovChe3HNRO_COMPROBANTE: TStringField
      FieldName = 'NRO_COMPROBANTE'
      Required = True
      Size = 13
    end
    object CDSMovChe3HDEBE: TFloatField
      FieldName = 'DEBE'
    end
    object CDSMovChe3HHABER: TFloatField
      FieldName = 'HABER'
    end
    object CDSMovChe3HID_MOV_CAJA_PADRE: TIntegerField
      FieldName = 'ID_MOV_CAJA_PADRE'
    end
    object CDSMovChe3HID_CHEQUE_TER: TIntegerField
      FieldName = 'ID_CHEQUE_TER'
    end
    object CDSMovChe3HFECHA_EMISION: TSQLTimeStampField
      FieldName = 'FECHA_EMISION'
    end
    object CDSMovChe3HFECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
    end
    object CDSMovChe3HORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 30
    end
    object CDSMovChe3HNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object CDSMovChe3HIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object CDSMovChe3HID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Required = True
    end
    object CDSMovChe3HID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object CDSMovChe3HCONCILIADO: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CONCILIADO'
      Calculated = True
    end
  end
  object DSMovChe3H: TDataSource
    DataSet = CDSMovChe3H
    Left = 844
    Top = 352
  end
  object DataToXLS1: TDataToXLS
    DataSet = CDSMovChe3
    Columns = <
      item
        DataField = 'ID_MOV_CAJA'
        Title = 'Id.Mov.Caja'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'ID_CAJA'
        Title = 'ID_CAJA'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'NOMBRE'
        Title = 'NOMBRE'
      end
      item
        DataField = 'ID_COMPROBANTE'
        Title = 'ID_COMPROBANTE'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'TIPO_COMPROB'
        Title = 'Tp.'
      end
      item
        DataField = 'CLASE_COMPROB'
        Title = 'Cl.'
      end
      item
        DataField = 'NRO_COMPROBANTE'
        Title = 'Nro.Cpbte'
      end
      item
        DataField = 'DEBE'
        Title = 'Debe'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'HABER'
        Title = 'Haber'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'ID_MOV_CAJA_PADRE'
        Title = 'ID_MOV_CAJA_PADRE'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'ID_CHEQUE_TER'
        Title = 'Id.Che'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'FECHA_EMISION'
        Title = 'FECHA_EMISION'
      end
      item
        DataField = 'FECHA_COBRO'
        Title = 'FECHA_COBRO'
      end
      item
        DataField = 'ORIGEN'
        Title = 'Origen'#231
      end
      item
        DataField = 'NUMERO'
        Title = 'Numero'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'IMPORTE'
        Title = 'Importe'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'ID_TPAGO'
        Title = 'ID_TPAGO'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'ID_FPAGO'
        Title = 'ID_FPAGO'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'CONCILIADO'
        Title = '#'
        Alignment = taRightJustify
        DataType = ctInteger
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
    Left = 748
    Top = 376
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'XLS'
    Left = 628
    Top = 424
  end
  object PopupMenu1: TPopupMenu
    Left = 644
    Top = 240
    object ExportarMovChe3Excel1: TMenuItem
      Action = ExportarMovChe3Excel
    end
    object MovHaber1: TMenuItem
      Caption = 'Mov Haber'
      OnClick = MovHaber1Click
    end
  end
end
