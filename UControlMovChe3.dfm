inherited FormControlMovChe3: TFormControlMovChe3
  Left = 185
  Top = 109
  Caption = 'Control de Mov. de Cheques'
  ClientHeight = 705
  ClientWidth = 1135
  StyleElements = [seFont, seClient, seBorder]
  OnResize = FormResize
  ExplicitWidth = 1153
  ExplicitHeight = 746
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1135
    Height = 652
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1135
    ExplicitHeight = 652
    object pcMovimientos: TPageControl
      Left = 0
      Top = 65
      Width = 1135
      Height = 587
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Ingresos'
        DesignSize = (
          1127
          559)
        object Label6: TLabel
          Left = 924
          Top = 471
          Width = 40
          Height = 13
          Anchors = [akRight, akBottom]
          Caption = 'Ingresos'
          ExplicitLeft = 896
          ExplicitTop = 399
        end
        object Label7: TLabel
          Left = 924
          Top = 503
          Width = 38
          Height = 13
          Anchors = [akRight, akBottom]
          Caption = 'Egresos'
          ExplicitLeft = 896
          ExplicitTop = 431
        end
        object Label8: TLabel
          Left = 924
          Top = 543
          Width = 27
          Height = 13
          Anchors = [akRight, akBottom]
          Caption = 'Saldo'
          ExplicitLeft = 896
          ExplicitTop = 471
        end
        object JvDBStatusLabel1: TJvDBStatusLabel
          Left = 771
          Top = 495
          Width = 98
          Height = 15
          DataSetName = ' '
          DataSource = DSMov
          Captions.Strings = (
            'Archivos Cerrados'
            'Browse'
            'Edicion'
            'Agregando')
          Style = lsRecordNo
          CalcRecCount = True
          GlyphAlign = glGlyphRight
          ShadowSize = 2
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Anchors = [akRight, akBottom]
          ParentColor = False
          ParentFont = False
          ShadowColor = clInfoBk
          Transparent = True
          ExplicitLeft = 743
          ExplicitTop = 423
        end
        object dbgMovimientos: TJvDBGrid
          Left = 3
          Top = 3
          Width = 806
          Height = 479
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DSMov
          DefaultDrawing = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawDataCell = dbgMovimientosDrawDataCell
          OnDblClick = dbgMovimientosDblClick
          TitleButtons = True
          OnTitleBtnClick = dbgMovimientosTitleBtnClick
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
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO_COMPROB'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLASE_COMPROB'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NRO_COMPROBANTE'
              Title.Alignment = taCenter
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
              FieldName = 'FECHA_CAJA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FECHA_OPERACION'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DEBE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 87
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'VALORCHE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_COMPROBANTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CAJADELCHE'
              Title.Alignment = taCenter
              Width = 54
              Visible = True
            end>
        end
        object edHaber: TJvCalcEdit
          Left = 644
          Top = 495
          Width = 113
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akRight, akBottom]
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
        end
        object edDebe: TJvCalcEdit
          Left = 525
          Top = 495
          Width = 113
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akRight, akBottom]
          ShowButton = False
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
        end
        object cxDBVerticalGrid1: TcxDBVerticalGrid
          AlignWithMargins = True
          Left = 810
          Top = 3
          Width = 285
          Height = 452
          Margins.Right = 4
          Anchors = [akLeft, akTop, akBottom]
          OptionsView.RowHeaderWidth = 150
          ScrollbarAnnotations.CustomAnnotations = <>
          TabOrder = 3
          DataController.DataSource = DSCheque3
          Version = 1
          object cxDBVerticalGrid1ID_CHEQUE_TER: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'ID_CHEQUE_TER'
            ID = 0
            ParentID = -1
            Index = 0
            Version = 1
          end
          object cxDBVerticalGrid1ID_MOV_CAJA: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'ID_MOV_CAJA'
            ID = 1
            ParentID = -1
            Index = 1
            Version = 1
          end
          object cxDBVerticalGrid1FECHA_ENTRADA: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'FECHA_ENTRADA'
            ID = 2
            ParentID = -1
            Index = 2
            Version = 1
          end
          object cxDBVerticalGrid1FECHA_EMISION: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'FECHA_EMISION'
            ID = 3
            ParentID = -1
            Index = 3
            Version = 1
          end
          object cxDBVerticalGrid1FECHA_COBRO: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'FECHA_COBRO'
            ID = 4
            ParentID = -1
            Index = 4
            Version = 1
          end
          object cxDBVerticalGrid1FECHA_SALIDA: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'FECHA_SALIDA'
            ID = 5
            ParentID = -1
            Index = 5
            Version = 1
          end
          object cxDBVerticalGrid1ORIGEN: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'ORIGEN'
            ID = 6
            ParentID = -1
            Index = 6
            Version = 1
          end
          object cxDBVerticalGrid1ID_BANCO: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'ID_BANCO'
            ID = 7
            ParentID = -1
            Index = 7
            Version = 1
          end
          object cxDBVerticalGrid1NOMBRE: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'NOMBRE'
            ID = 8
            ParentID = -1
            Index = 8
            Version = 1
          end
          object cxDBVerticalGrid1NUMERO: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'NUMERO'
            ID = 9
            ParentID = -1
            Index = 9
            Version = 1
          end
          object cxDBVerticalGrid1IMPORTE: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'IMPORTE'
            ID = 10
            ParentID = -1
            Index = 10
            Version = 1
          end
          object cxDBVerticalGrid1DESTINO: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'DESTINO'
            ID = 11
            ParentID = -1
            Index = 11
            Version = 1
          end
          object cxDBVerticalGrid1ID_MOV_CAJA_EGRESOS: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'ID_MOV_CAJA_EGRESOS'
            ID = 12
            ParentID = -1
            Index = 12
            Version = 1
          end
          object cxDBVerticalGrid1DISPONIBLE: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'DISPONIBLE'
            ID = 13
            ParentID = -1
            Index = 13
            Version = 1
          end
          object cxDBVerticalGrid1DBEditorRow1: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'ID_CUENTA_CAJA'
            ID = 14
            ParentID = -1
            Index = 14
            Version = 1
          end
        end
        object BitBtn1: TBitBtn
          Left = 31
          Top = 512
          Width = 101
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Tabla de Che 3'#186
          TabOrder = 4
          OnClick = BitBtn1Click
        end
        object edIngresos: TJvCalcEdit
          Left = 988
          Top = 468
          Width = 113
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akRight, akBottom]
          ShowButton = False
          TabOrder = 5
          DecimalPlacesAlwaysShown = False
        end
        object edEgrsos: TJvCalcEdit
          Left = 988
          Top = 495
          Width = 113
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akRight, akBottom]
          ShowButton = False
          TabOrder = 6
          DecimalPlacesAlwaysShown = False
        end
        object edSaldo: TJvCalcEdit
          Left = 988
          Top = 535
          Width = 113
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akRight, akBottom]
          ShowButton = False
          TabOrder = 7
          DecimalPlacesAlwaysShown = False
        end
        object chbDisponibles: TCheckBox
          Left = 144
          Top = 495
          Width = 205
          Height = 17
          Anchors = [akRight, akBottom]
          Caption = 'Ver los Mov con Cheques Disponibles'
          TabOrder = 8
          OnClick = chbDisponiblesClick
        end
        object cbTipo: TComboBox
          Left = 285
          Top = 518
          Width = 41
          Height = 21
          Anchors = [akRight, akBottom]
          ItemIndex = 0
          TabOrder = 9
          Text = '**'
          OnChange = cbTipoChange
          Items.Strings = (
            '**'
            'RC'
            'FO'
            'IC'
            'ZI'
            'QR'
            'QT'
            'QX')
        end
        object edDifIngresos: TJvCalcEdit
          Left = 644
          Top = 522
          Width = 113
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akRight, akBottom]
          ShowButton = False
          TabOrder = 10
          DecimalPlacesAlwaysShown = False
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Egreso'
        ImageIndex = 1
        DesignSize = (
          1127
          559)
        object Label4: TLabel
          Left = 3
          Top = 226
          Width = 104
          Height = 13
          Caption = 'Movimiento de Che 3'#186
        end
        object Label5: TLabel
          Left = 3
          Top = 328
          Width = 148
          Height = 13
          Caption = 'Listado de Movimientos de Che'
        end
        object dbgEgresos: TJvDBGrid
          Left = 3
          Top = 3
          Width = 798
          Height = 203
          DataSource = DSMovE
          DefaultDrawing = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawDataCell = dbgEgresosDrawDataCell
          OnDblClick = dbgEgresosDblClick
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
              FieldName = 'ID_MOV_CAJA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO_COMPROB'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLASE_COMPROB'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NRO_COMPROBANTE'
              Title.Alignment = taCenter
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
              FieldName = 'FECHA_CAJA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FECHA_OPERACION'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORCHE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 87
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
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_COMPROBANTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISPONIBLE'
              Width = 38
              Visible = True
            end>
        end
        object edDebe_E: TJvCalcEdit
          Left = 497
          Top = 212
          Width = 113
          Height = 21
          DisplayFormat = ',0.00'
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
        end
        object edHaber_E: TJvCalcEdit
          Left = 616
          Top = 212
          Width = 113
          Height = 21
          DisplayFormat = ',0.00'
          ShowButton = False
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
        end
        object cxDBVerticalGrid2: TcxDBVerticalGrid
          Left = 807
          Top = 3
          Width = 289
          Height = 262
          OptionsView.RowHeaderWidth = 154
          ScrollbarAnnotations.CustomAnnotations = <>
          TabOrder = 3
          DataController.DataSource = DSCheuqe3E
          Version = 1
          object cxDBVerticalGrid2ID_CHEQUE_TER: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'ID_CHEQUE_TER'
            ID = 0
            ParentID = -1
            Index = 0
            Version = 1
          end
          object cxDBVerticalGrid2ID_MOV_CAJA: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'ID_MOV_CAJA'
            ID = 1
            ParentID = -1
            Index = 1
            Version = 1
          end
          object cxDBVerticalGrid2FECHA_ENTRADA: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'FECHA_ENTRADA'
            ID = 2
            ParentID = -1
            Index = 2
            Version = 1
          end
          object cxDBVerticalGrid2FECHA_EMISION: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'FECHA_EMISION'
            ID = 3
            ParentID = -1
            Index = 3
            Version = 1
          end
          object cxDBVerticalGrid2FECHA_COBRO: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'FECHA_COBRO'
            ID = 4
            ParentID = -1
            Index = 4
            Version = 1
          end
          object cxDBVerticalGrid2FECHA_SALIDA: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'FECHA_SALIDA'
            ID = 5
            ParentID = -1
            Index = 5
            Version = 1
          end
          object cxDBVerticalGrid2ORIGEN: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'ORIGEN'
            ID = 6
            ParentID = -1
            Index = 6
            Version = 1
          end
          object cxDBVerticalGrid2ID_BANCO: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'ID_BANCO'
            ID = 7
            ParentID = -1
            Index = 7
            Version = 1
          end
          object cxDBVerticalGrid2NOMBRE: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'NOMBRE'
            ID = 8
            ParentID = -1
            Index = 8
            Version = 1
          end
          object cxDBVerticalGrid2NUMERO: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'NUMERO'
            ID = 9
            ParentID = -1
            Index = 9
            Version = 1
          end
          object cxDBVerticalGrid2IMPORTE: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'IMPORTE'
            ID = 10
            ParentID = -1
            Index = 10
            Version = 1
          end
          object cxDBVerticalGrid2DESTINO: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'DESTINO'
            ID = 11
            ParentID = -1
            Index = 11
            Version = 1
          end
          object cxDBVerticalGrid2ID_MOV_CAJA_EGRESOS: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'ID_MOV_CAJA_EGRESOS'
            ID = 12
            ParentID = -1
            Index = 12
            Version = 1
          end
          object cxDBVerticalGrid2DISPONIBLE: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'DISPONIBLE'
            ID = 13
            ParentID = -1
            Index = 13
            Version = 1
          end
        end
        object dbgMovChe: TJvDBGrid
          Left = 3
          Top = 245
          Width = 798
          Height = 79
          DataSource = DSMovChe
          TabOrder = 4
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
        end
        object JvDBGrid3: TJvDBGrid
          Left = 0
          Top = 344
          Width = 798
          Height = 161
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DSLstMovChe
          TabOrder = 5
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
        end
        object cbTipoEgre: TComboBox
          Left = 272
          Top = 212
          Width = 41
          Height = 21
          ItemIndex = 0
          TabOrder = 6
          Text = '**'
          OnChange = cbTipoEgreChange
          Items.Strings = (
            '**'
            'OP'
            'FO'
            'EC'
            'ZI'
            'QR'
            'QT'
            'QX')
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Transferencias'
        ImageIndex = 2
        DesignSize = (
          1127
          559)
        object JvDBGrid4: TJvDBGrid
          Left = 3
          Top = 3
          Width = 798
          Height = 498
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DSMovTx
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleButtons = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'TIPO_OPERACION'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_MOV_CAJA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO_COMPROB'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLASE_COMPROB'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NRO_COMPROBANTE'
              Title.Alignment = taCenter
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
              FieldName = 'FECHA_CAJA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FECHA_OPERACION'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DEBE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 87
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
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_COMPROBANTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 74
              Visible = True
            end>
        end
        object edDebeTx: TJvCalcEdit
          Left = 465
          Top = 527
          Width = 113
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
        end
        object edHaberTx: TJvCalcEdit
          Left = 584
          Top = 527
          Width = 113
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Otros'
        ImageIndex = 3
        object Label9: TLabel
          Left = 3
          Top = 21
          Width = 98
          Height = 13
          Caption = 'Cheques Duplicados'
        end
        object DBGrid1: TDBGrid
          Left = 3
          Top = 40
          Width = 104
          Height = 225
          DataSource = DSControlMovDuplicado
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
        object Button1: TButton
          Left = 22
          Top = 271
          Width = 75
          Height = 25
          Caption = 'Ver'
          TabOrder = 1
          OnClick = Button1Click
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Movimientos Detalle'
        ImageIndex = 4
        DesignSize = (
          1127
          559)
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1127
          Height = 521
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          PopupMenu = PopupMenu1
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          ExplicitWidth = 1116
          ExplicitHeight = 510
          object cxGrid1DBTableView1: TcxGridDBTableView
            DataController.DataSource = DSMovChequesGeneral
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Kind = skSum
                Position = spFooter
                FieldName = 'INGRESO'
                Column = cxGrid1DBTableView1INGRESO
              end
              item
                Kind = skSum
                Position = spFooter
                FieldName = 'SALIDA'
                Column = cxGrid1DBTableView1SALIDA
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00;-,0.00;-'
                Kind = skSum
                FieldName = 'INGRESO'
                Column = cxGrid1DBTableView1INGRESO
              end
              item
                Format = ',0.00;-,0.00;-'
                Kind = skSum
                FieldName = 'SALIDA'
                Column = cxGrid1DBTableView1SALIDA
              end>
            OptionsView.Footer = True
            OptionsView.FooterAutoHeight = True
            OptionsView.FooterMultiSummaries = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooters = gfAlwaysVisible
            OptionsView.HighlightFixedColumns = True
            Styles.Header = cxStyle1
            OnCustomDrawGroupCell = cxGrid1DBTableView1CustomDrawGroupCell
            object cxGrid1DBTableView1ID_CHEQUE_TER: TcxGridDBColumn
              DataBinding.FieldName = 'ID_CHEQUE_TER'
              Visible = False
              GroupIndex = 0
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1MOVIMIENTO: TcxGridDBColumn
              DataBinding.FieldName = 'MOVIMIENTO'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1NUMERO: TcxGridDBColumn
              DataBinding.FieldName = 'NUMERO'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid1DBTableView1FECHA_EMISION: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA_EMISION'
              HeaderAlignmentHorz = taCenter
              Width = 110
            end
            object cxGrid1DBTableView1ORIGEN: TcxGridDBColumn
              DataBinding.FieldName = 'ORIGEN'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1DESTINO: TcxGridDBColumn
              DataBinding.FieldName = 'DESTINO'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1INGRESO: TcxGridDBColumn
              DataBinding.FieldName = 'INGRESO'
              HeaderAlignmentHorz = taCenter
              Width = 97
            end
            object cxGrid1DBTableView1SALIDA: TcxGridDBColumn
              DataBinding.FieldName = 'SALIDA'
              HeaderAlignmentHorz = taCenter
              Width = 94
            end
            object cxGrid1DBTableView1NRO_TRANSFERENCIA: TcxGridDBColumn
              DataBinding.FieldName = 'NRO_TRANSFERENCIA'
              HeaderAlignmentHorz = taCenter
              Width = 115
            end
            object cxGrid1DBTableView1CAJAINGRESO: TcxGridDBColumn
              DataBinding.FieldName = 'CAJAINGRESO'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1CAJAEGRESO: TcxGridDBColumn
              DataBinding.FieldName = 'CAJAEGRESO'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1FECHAENTRADA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHAENTRADA'
              HeaderAlignmentHorz = taCenter
              Width = 88
            end
            object cxGrid1DBTableView1FECHASALIDA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHASALIDA'
              HeaderAlignmentHorz = taCenter
              Width = 84
            end
            object cxGrid1DBTableView1FECHATRANSFERENCIA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHATRANSFERENCIA'
              HeaderAlignmentHorz = taCenter
              Width = 102
            end
            object cxGrid1DBTableView1CUENTACAJA: TcxGridDBColumn
              DataBinding.FieldName = 'CUENTACAJA'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1CAJAORIGEN: TcxGridDBColumn
              DataBinding.FieldName = 'CAJAORIGEN'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1CAJADESTINO: TcxGridDBColumn
              DataBinding.FieldName = 'CAJADESTINO'
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object btBuscarMov: TBitBtn
          Left = 1032
          Top = 527
          Width = 85
          Height = 29
          Hint = 'Buscar Registro'
          Anchors = [akRight, akBottom]
          Caption = 'Buscar'
          ImageIndex = 7
          Images = ImageListDos
          TabOrder = 1
          OnClick = btBuscarMovClick
          ExplicitLeft = 1021
          ExplicitTop = 516
        end
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1135
      Height = 65
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      object Label1: TLabel
        Left = 801
        Top = 4
        Width = 31
        Height = 13
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 912
        Top = 4
        Width = 28
        Height = 13
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 26
        Top = 6
        Width = 77
        Height = 13
        Caption = 'Cuentas de caja'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object desde: TJvDateEdit
        Left = 801
        Top = 23
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
        OnAcceptDate = desdeAcceptDate
      end
      object hasta: TJvDateEdit
        Left = 912
        Top = 23
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
        OnAcceptDate = hastaAcceptDate
      end
      object UpDown1: TUpDown
        Left = 1023
        Top = 23
        Width = 16
        Height = 20
        Hint = 'Cambia el Per'#237'odo'
        Max = 10000
        ParentShowHint = False
        Position = 100
        ShowHint = True
        TabOrder = 2
        OnClick = UpDown1Click
      end
      object dbcCaja: TJvDBLookupCombo
        Left = 26
        Top = 22
        Width = 201
        Height = 21
        DisplayEmpty = 'Todas Las Cuentas'
        EmptyValue = '-1'
        LookupField = 'ID_CUENTA'
        LookupDisplay = 'NOMBRE'
        LookupSource = DSCajas
        TabOrder = 3
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 652
    Width = 1135
    Align = alBottom
    ExplicitTop = 652
    ExplicitWidth = 1135
    inherited btConfirma: TBitBtn
      Visible = False
    end
    inherited btNuevo: TBitBtn
      Visible = False
    end
    inherited btCancelar: TBitBtn
      Visible = False
    end
    inherited btModificar: TBitBtn
      Visible = False
    end
    inherited Pr: TSpeedButton
      Visible = False
    end
    inherited Ne: TSpeedButton
      Visible = False
    end
    inherited btBorrar: TBitBtn
      Visible = False
    end
  end
  inherited Panel1: TPanel
    Top = 682
    Width = 1135
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 682
    ExplicitWidth = 1135
    inherited sbEstado: TStatusBar
      Width = 1046
      ExplicitWidth = 1046
    end
  end
  inherited ActionList1: TActionList
    Left = 376
    Top = 160
  end
  inherited ImageList1: TImageList
    Left = 304
    Top = 48
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
    Left = 696
    Top = 208
  end
  inherited QUltimoCodigo: TSQLQuery
    Top = 600
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 592
  end
  object QCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from cuenta_caja where id_tipo_cta=1')
    Left = 256
    Top = 16
  end
  object DSPCajas: TDataSetProvider
    DataSet = QCaja
    Options = []
    Left = 304
    Top = 8
  end
  object CDSCajas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCajas'
    Left = 352
    object CDSCajasID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Required = True
    end
    object CDSCajasID_TIPO_CTA: TIntegerField
      FieldName = 'ID_TIPO_CTA'
      Required = True
    end
    object CDSCajasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSCajasNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Size = 15
    end
    object CDSCajasID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object CDSCajasCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSCajasRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object DSCajas: TDataSource
    DataSet = CDSCajas
    Left = 400
  end
  object QMov: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select m.id_mov_caja,m.id_caja,m.id_fpago,m.tipo_comprob,m.clase' +
        '_comprob,'
      
        '       m.id_comprobante,m.nro_comprobante,m.fecha_operacion,m.fe' +
        'cha_caja,'
      
        '       m.id_cuenta_caja,m.debe,m.haber,m.tipo_operacion,ch.impor' +
        'te as ValorChe,'
      
        '       ch.id_cuenta_caja as CajadelChe,ch.id_cheque_ter,ch.dispo' +
        'nible from caja_mov m'
      ''
      'left join cheque_tercero ch on ch.id_mov_caja=m.id_mov_caja'
      'where ( m.id_cuenta_caja= :id_cta or :id_cta = -1 ) and'
      '        m.fecha_operacion between :desde and :hasta and'
      '      ( m.tipo_operacion = :tipo ) and m.id_tpago=3 and'
      '      ( m.tipo_comprob = :TipoCpbte or :TipoCpbte = '#39'**'#39' ) and'
      '      ( Not ( m.tipo_comprob in ('#39'QX'#39','#39'QT'#39') ) )  ')
    Left = 32
    Top = 152
    ParamData = <
      item
        Name = 'id_cta'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id_cta'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'TipoCpbte'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'TipoCpbte'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object DSMov: TDataSource
    DataSet = CDSMov
    Left = 208
    Top = 144
  end
  object CDSMov: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_cta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_cta'
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
        Name = 'TipoCpbte'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TipoCpbte'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMov'
    AfterOpen = CDSMovAfterOpen
    AfterScroll = CDSMovAfterScroll
    Left = 152
    Top = 136
    object CDSMovID_MOV_CAJA: TIntegerField
      DisplayLabel = 'Id Mov Caj.'
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object CDSMovID_CAJA: TIntegerField
      DisplayLabel = 'Id Caja'
      FieldName = 'ID_CAJA'
      Required = True
    end
    object CDSMovID_FPAGO: TIntegerField
      DisplayLabel = 'F.Pag.'
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object CDSMovTIPO_COMPROB: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSMovCLASE_COMPROB: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASE_COMPROB'
      Size = 2
    end
    object CDSMovID_COMPROBANTE: TIntegerField
      DisplayLabel = 'Id Cpbte'
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSMovFECHA_OPERACION: TSQLTimeStampField
      DisplayLabel = 'F.Op.'
      FieldName = 'FECHA_OPERACION'
    end
    object CDSMovFECHA_CAJA: TSQLTimeStampField
      DisplayLabel = 'Fe.Caja'
      FieldName = 'FECHA_CAJA'
    end
    object CDSMovID_CUENTA_CAJA: TIntegerField
      DisplayLabel = 'Id Cta'
      FieldName = 'ID_CUENTA_CAJA'
    end
    object CDSMovDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovNRO_COMPROBANTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NRO_COMPROBANTE'
      Required = True
      Size = 13
    end
    object CDSMovTIPO_OPERACION: TStringField
      DisplayLabel = 'T.Op'
      FieldName = 'TIPO_OPERACION'
      Size = 1
    end
    object CDSMovVALORCHE: TFloatField
      DisplayLabel = '$ del Che'
      FieldName = 'VALORCHE'
      DisplayFormat = ',0.00;,0.00;-'
      EditFormat = ',0.00;,0.00;-'
    end
    object CDSMovCAJADELCHE: TIntegerField
      DisplayLabel = 'C.Ubi.'
      FieldName = 'CAJADELCHE'
      OnChange = CDSMovCAJADELCHEChange
    end
    object CDSMovID_CHEQUE_TER: TIntegerField
      FieldName = 'ID_CHEQUE_TER'
    end
    object CDSMovDISPONIBLE: TStringField
      FieldName = 'DISPONIBLE'
      FixedChar = True
      Size = 1
    end
  end
  object DSPMov: TDataSetProvider
    DataSet = QMov
    Options = []
    Left = 96
    Top = 152
  end
  object QCheque3: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select ch.id_cheque_ter,ch.id_mov_caja,ch.fecha_entrada,ch.fecha' +
        '_emision,ch.fecha_cobro,ch.fecha_salida,'
      
        '       ch.origen,ch.id_banco,b.nombre,ch.numero,ch.importe,ch.de' +
        'stino, ch.id_mov_caja_egresos,ch.disponible,'
      '       ch.id_cuenta_caja from cheque_tercero ch'
      'left join bancos b on b.id_banco=ch.id_banco'
      'where ch.id_mov_caja = :id')
    Left = 40
    Top = 184
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPCheque3: TDataSetProvider
    DataSet = QCheque3
    Options = []
    Left = 96
    Top = 192
  end
  object CDSCheque3: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCheque3'
    Left = 152
    Top = 192
    object CDSCheque3ID_CHEQUE_TER: TIntegerField
      FieldName = 'ID_CHEQUE_TER'
      Required = True
    end
    object CDSCheque3ID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object CDSCheque3FECHA_ENTRADA: TSQLTimeStampField
      FieldName = 'FECHA_ENTRADA'
    end
    object CDSCheque3FECHA_EMISION: TSQLTimeStampField
      FieldName = 'FECHA_EMISION'
    end
    object CDSCheque3FECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
    end
    object CDSCheque3FECHA_SALIDA: TSQLTimeStampField
      FieldName = 'FECHA_SALIDA'
    end
    object CDSCheque3ORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 30
    end
    object CDSCheque3ID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Required = True
    end
    object CDSCheque3NOMBRE: TStringField
      FieldName = 'NOMBRE'
    end
    object CDSCheque3NUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object CDSCheque3IMPORTE: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSCheque3DESTINO: TStringField
      FieldName = 'DESTINO'
      Size = 30
    end
    object CDSCheque3ID_MOV_CAJA_EGRESOS: TIntegerField
      FieldName = 'ID_MOV_CAJA_EGRESOS'
    end
    object CDSCheque3DISPONIBLE: TStringField
      FieldName = 'DISPONIBLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCheque3ID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Required = True
    end
  end
  object DSCheque3: TDataSource
    DataSet = CDSCheque3
    Left = 232
    Top = 192
  end
  object QMovE: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select m.id_mov_caja,m.id_caja,m.id_fpago,m.tipo_comprob,m.clase' +
        '_comprob,'
      
        '       m.id_comprobante,m.nro_comprobante,m.fecha_operacion,m.fe' +
        'cha_caja,'
      
        '       m.id_cuenta_caja,m.debe,m.haber,m.tipo_operacion,ch.Impor' +
        'te as ValorChe,che.disponible from caja_mov m'
      
        'left join cheque_tercero_mov ch on ch.id_mov_caja_egresos = m.id' +
        '_mov_caja'
      
        'left join cheque_tercero che on che.id_cheque_ter = ch.id_cheque' +
        '_ter'
      ''
      'where ( m.id_cuenta_caja= :id_cta or :id_cta = -1 ) and'
      '        m.fecha_operacion between :desde and :hasta and'
      '      ( m.tipo_operacion = :tipo ) and m.id_tpago=3 and'
      '      ( m.tipo_comprob = :TipoCpbte or :TipoCpbte = '#39'**'#39' ) and'
      '      ( Not ( m.tipo_comprob in ('#39'QT'#39','#39'QX'#39') ) )           ')
    Left = 368
    Top = 232
    ParamData = <
      item
        Name = 'id_cta'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id_cta'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'TipoCpbte'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'TipoCpbte'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object DSPMovE: TDataSetProvider
    DataSet = QMovE
    Options = []
    Left = 440
    Top = 232
  end
  object CDSMovE: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_cta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_cta'
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
        Name = 'TipoCpbte'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TipoCpbte'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovE'
    AfterOpen = CDSMovEAfterOpen
    AfterScroll = CDSMovEAfterScroll
    Left = 496
    Top = 232
    object CDSMovEID_MOV_CAJA: TIntegerField
      DisplayLabel = 'Id Mov'
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object CDSMovEID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Required = True
    end
    object CDSMovEID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object CDSMovETIPO_COMPROB: TStringField
      DisplayLabel = 'Tp-Comp'
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSMovECLASE_COMPROB: TStringField
      DisplayLabel = 'Cl.Comp'
      FieldName = 'CLASE_COMPROB'
      Size = 2
    end
    object CDSMovEID_COMPROBANTE: TIntegerField
      DisplayLabel = 'Id Cpbte'
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSMovENRO_COMPROBANTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NRO_COMPROBANTE'
      Required = True
      Size = 13
    end
    object CDSMovEFECHA_OPERACION: TSQLTimeStampField
      DisplayLabel = 'F.Oper.'
      FieldName = 'FECHA_OPERACION'
    end
    object CDSMovEFECHA_CAJA: TSQLTimeStampField
      DisplayLabel = 'F.Caja'
      FieldName = 'FECHA_CAJA'
    end
    object CDSMovEID_CUENTA_CAJA: TIntegerField
      DisplayLabel = 'Id.Cta'
      FieldName = 'ID_CUENTA_CAJA'
    end
    object CDSMovEDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovEHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovETIPO_OPERACION: TStringField
      DisplayLabel = 'T.Op'
      FieldName = 'TIPO_OPERACION'
      Size = 1
    end
    object CDSMovEVALORCHE: TFloatField
      DisplayLabel = '$ Cheque'
      FieldName = 'VALORCHE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovEDISPONIBLE: TStringField
      DisplayLabel = 'Dsp'
      FieldName = 'DISPONIBLE'
      FixedChar = True
      Size = 1
    end
  end
  object DSMovE: TDataSource
    DataSet = CDSMovE
    Left = 568
    Top = 200
  end
  object QCheque3E: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select ch.id_cheque_ter,ch.id_mov_caja,ch.fecha_entrada,ch.fecha' +
        '_emision,ch.fecha_cobro,ch.fecha_salida,'
      
        '       ch.origen,ch.id_banco,b.nombre,ch.numero,ch.importe,ch.de' +
        'stino, ch.id_mov_caja_egresos,ch.disponible from cheque_tercero ' +
        'ch'
      'left join bancos b on b.id_banco=ch.id_banco'
      'where ch.id_mov_caja_egresos = :id')
    Left = 352
    Top = 296
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPCheque3E: TDataSetProvider
    DataSet = QCheque3E
    Options = []
    Left = 424
    Top = 296
  end
  object CDSCheque3E: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCheque3E'
    AfterScroll = CDSCheque3EAfterScroll
    Left = 488
    Top = 296
    object IntegerField6: TIntegerField
      FieldName = 'ID_CHEQUE_TER'
      Required = True
    end
    object IntegerField7: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object SQLTimeStampField3: TSQLTimeStampField
      FieldName = 'FECHA_ENTRADA'
    end
    object SQLTimeStampField4: TSQLTimeStampField
      FieldName = 'FECHA_EMISION'
    end
    object SQLTimeStampField5: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
    end
    object SQLTimeStampField6: TSQLTimeStampField
      FieldName = 'FECHA_SALIDA'
    end
    object StringField5: TStringField
      FieldName = 'ORIGEN'
      Size = 30
    end
    object IntegerField8: TIntegerField
      FieldName = 'ID_BANCO'
      Required = True
    end
    object StringField6: TStringField
      FieldName = 'NOMBRE'
    end
    object IntegerField9: TIntegerField
      FieldName = 'NUMERO'
    end
    object FMTBCDField3: TFloatField
      FieldName = 'IMPORTE'
    end
    object StringField7: TStringField
      FieldName = 'DESTINO'
      Size = 30
    end
    object IntegerField10: TIntegerField
      FieldName = 'ID_MOV_CAJA_EGRESOS'
    end
    object StringField8: TStringField
      FieldName = 'DISPONIBLE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSCheuqe3E: TDataSource
    DataSet = CDSCheque3E
    Left = 528
    Top = 216
  end
  object QMovChe: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select ch.id_cheque_ter,ch.id_mov_caja,ch.fecha_entrada,ch.fecha' +
        '_emision,ch.fecha_cobro,ch.fecha_salida,'
      
        '       ch.origen,ch.id_banco,b.nombre,ch.numero,ch.importe,ch.de' +
        'stino, ch.id_mov_caja_egresos from cheque_tercero_mov ch'
      'left join bancos b on b.id_banco=ch.id_banco'
      'where ch.id_mov_caja_egresos = :id')
    Left = 360
    Top = 352
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPMovChe: TDataSetProvider
    DataSet = QMovChe
    Options = []
    Left = 432
    Top = 352
  end
  object CDSMovChe: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CHEQUE_TER'
    MasterFields = 'ID_CHEQUE_TER'
    MasterSource = DSCheque3
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovChe'
    AfterOpen = CDSMovCheAfterOpen
    Left = 504
    Top = 352
    object CDSMovCheID_CHEQUE_TER: TIntegerField
      FieldName = 'ID_CHEQUE_TER'
      Required = True
    end
    object CDSMovCheID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object CDSMovCheFECHA_ENTRADA: TSQLTimeStampField
      FieldName = 'FECHA_ENTRADA'
    end
    object CDSMovCheFECHA_EMISION: TSQLTimeStampField
      FieldName = 'FECHA_EMISION'
    end
    object CDSMovCheFECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
    end
    object CDSMovCheFECHA_SALIDA: TSQLTimeStampField
      FieldName = 'FECHA_SALIDA'
    end
    object CDSMovCheORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 30
    end
    object CDSMovCheID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Required = True
    end
    object CDSMovCheNOMBRE: TStringField
      FieldName = 'NOMBRE'
    end
    object CDSMovCheNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object CDSMovCheIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object CDSMovCheDESTINO: TStringField
      FieldName = 'DESTINO'
      Size = 30
    end
    object CDSMovCheID_MOV_CAJA_EGRESOS: TIntegerField
      FieldName = 'ID_MOV_CAJA_EGRESOS'
    end
  end
  object DSMovChe: TDataSource
    DataSet = CDSMovChe
    Left = 568
    Top = 352
  end
  object QLstMovChe: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select ch.id_cheque_ter,ch.id_mov_caja,ch.fecha_entrada,ch.fecha' +
        '_emision,ch.fecha_cobro,ch.fecha_salida,'
      
        '       ch.origen,ch.id_banco,b.nombre,ch.numero,ch.importe,ch.de' +
        'stino, ch.id_mov_caja_egresos from cheque_tercero_mov ch'
      'left join bancos b on b.id_banco=ch.id_banco'
      'where  ch.id_cheque_ter = :id_che')
    Left = 352
    Top = 424
    ParamData = <
      item
        Name = 'id_che'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPLstMovChe: TDataSetProvider
    DataSet = QLstMovChe
    Options = []
    Left = 424
    Top = 432
  end
  object CDSLstMovChe: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_che'
        ParamType = ptInput
      end>
    ProviderName = 'DSPLstMovChe'
    Left = 496
    Top = 424
    object IntegerField11: TIntegerField
      FieldName = 'ID_CHEQUE_TER'
      Required = True
    end
    object IntegerField12: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object SQLTimeStampField9: TSQLTimeStampField
      FieldName = 'FECHA_ENTRADA'
    end
    object SQLTimeStampField10: TSQLTimeStampField
      FieldName = 'FECHA_EMISION'
    end
    object SQLTimeStampField11: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
    end
    object SQLTimeStampField12: TSQLTimeStampField
      FieldName = 'FECHA_SALIDA'
    end
    object StringField4: TStringField
      FieldName = 'ORIGEN'
      Size = 30
    end
    object IntegerField13: TIntegerField
      FieldName = 'ID_BANCO'
      Required = True
    end
    object StringField9: TStringField
      FieldName = 'NOMBRE'
    end
    object IntegerField14: TIntegerField
      FieldName = 'NUMERO'
    end
    object FMTBCDField2: TFloatField
      FieldName = 'IMPORTE'
    end
    object StringField10: TStringField
      FieldName = 'DESTINO'
      Size = 30
    end
    object IntegerField15: TIntegerField
      FieldName = 'ID_MOV_CAJA_EGRESOS'
    end
  end
  object DSLstMovChe: TDataSource
    DataSet = CDSLstMovChe
    Left = 584
    Top = 440
  end
  object QMovTx: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select m.id_mov_caja,m.id_caja,m.id_fpago,m.tipo_comprob,m.clase' +
        '_comprob,'
      
        '       m.id_comprobante,m.nro_comprobante,m.fecha_operacion,m.fe' +
        'cha_caja,'
      
        '       m.id_cuenta_caja,m.debe,m.haber,m.tipo_operacion from caj' +
        'a_mov m'
      'where ( m.id_cuenta_caja= :id_cta or :id_cta = -1 ) and'
      '        m.fecha_operacion between :desde and :hasta and'
      '        m.id_tpago=3 and m.tipo_comprob='#39'QX'#39)
    Left = 848
    Top = 344
    ParamData = <
      item
        Name = 'id_cta'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id_cta'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object DSPMovTx: TDataSetProvider
    DataSet = QMovTx
    Options = []
    Left = 968
    Top = 312
  end
  object CDSMovTx: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_cta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_cta'
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
    ProviderName = 'DSPMovTx'
    AfterOpen = CDSMovTxAfterOpen
    Left = 920
    Top = 344
    object CDSMovTxID_MOV_CAJA: TIntegerField
      DisplayLabel = 'Id.Mov Caja'#231
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object CDSMovTxID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Required = True
    end
    object CDSMovTxID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object CDSMovTxTIPO_COMPROB: TStringField
      DisplayLabel = 'Tp.Comp'
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSMovTxCLASE_COMPROB: TStringField
      DisplayLabel = 'Cl.'
      FieldName = 'CLASE_COMPROB'
      Size = 2
    end
    object CDSMovTxID_COMPROBANTE: TIntegerField
      DisplayLabel = 'Id Cpbte'
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSMovTxNRO_COMPROBANTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NRO_COMPROBANTE'
      Required = True
      Size = 13
    end
    object CDSMovTxFECHA_OPERACION: TSQLTimeStampField
      DisplayLabel = 'F.Op'
      FieldName = 'FECHA_OPERACION'
    end
    object CDSMovTxFECHA_CAJA: TSQLTimeStampField
      DisplayLabel = 'F.Caja'
      FieldName = 'FECHA_CAJA'
    end
    object CDSMovTxID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
    end
    object CDSMovTxDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovTxHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovTxTIPO_OPERACION: TStringField
      DisplayLabel = 'T.Op'
      FieldName = 'TIPO_OPERACION'
      Size = 1
    end
  end
  object DSMovTx: TDataSource
    DataSet = CDSMovTx
    Left = 1024
    Top = 336
  end
  object QCambiaCajaChe: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update cheque_tercero ch set ch.id_cuenta_caja= :IDCAJA WHERE CH' +
        '.id_cheque_ter=:id_cheque')
    Left = 1040
    Top = 416
    ParamData = <
      item
        Name = 'IDCAJA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id_cheque'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QControlMovDuplicado: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from tools_ctrl_chedoble')
    Left = 808
    Top = 152
  end
  object DSPControlMovDuplicado: TDataSetProvider
    DataSet = QControlMovDuplicado
    Left = 904
    Top = 152
  end
  object CDSControlMovDuplicado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPControlMovDuplicado'
    Left = 984
    Top = 152
    object CDSControlMovDuplicadoID_CHE: TIntegerField
      FieldName = 'ID_CHE'
    end
  end
  object DSControlMovDuplicado: TDataSource
    DataSet = CDSControlMovDuplicado
    Left = 736
    Top = 152
  end
  object QMovChequesGeneral: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select  ch3.id_cheque_ter, ch3.id_mov_caja,ch3.id_mov_caja_egres' +
        'os,'
      
        '    ch3.numero,ch3.fecha_entrada as FechaEntrada, ch3.fecha_emis' +
        'ion,'
      
        '    ch3.origen, ch3.destino, ch3.importe as Ingreso,0 as salida,' +
        ' '#39'01-INGRESO'#39' as Movimiento,'#39#39' as Nro_Transferencia,cc1.nombre a' +
        's CajaIngreso,cce.nombre as CajaEgreso,'
      
        '     ch3.fecha_salida as FechaSalida,null as FechaTransferencia,' +
        'cc1.Nombre as CuentaCaja, '#39#39' as CajaOrigen, '#39#39' as CajaDestino'
      'from cheque_tercero ch3'
      '  left join caja_mov cm_i on cm_i.id_mov_caja=ch3.id_mov_caja'
      '  left join caja_cab ccab_i on ccab_i.id_caja=cm_i.id_caja'
      
        '  left join cuenta_caja cc1 on cc1.id_cuenta=ccab_i.id_cuenta_ca' +
        'ja'
      ''
      
        '  left join caja_mov cm_e on cm_e.id_mov_caja=ch3.id_mov_caja_eg' +
        'resos'
      '  left join caja_cab ccab_e on ccab_e.id_caja=cm_e.id_caja'
      
        '  left join cuenta_caja cce on cce.id_cuenta=ccab_e.id_cuenta_ca' +
        'ja'
      ''
      ''
      
        'where (ch3.fecha_entrada >= :desde and ch3.fecha_entrada <= :has' +
        'ta) and ((ch3.id_cheque_ter= :id) or (:id=-1))'
      ''
      ''
      'union'
      ''
      
        'select  chm.id_cheque_ter, chm.id_mov_caja,chm.id_mov_caja_egres' +
        'os,'
      
        '    chm.numero,CHM.fecha_entrada as FechaEntrada, chm.fecha_emis' +
        'ion,'
      
        '    chm.origen, chm.destino,0 as Ingreso, chm.importe as Salida,' +
        #39'03-SALIDA'#39'as Movimiento,'#39#39' as Nro_transferecnia,cci.nombre as C' +
        'ajaIngreso,cce.nombre as CajaEgreso,'
      
        '    chm.fecha_salida as FechaSalida, null as FechaTransferencia,' +
        ' cci.nombre as CuentaCaja, '#39#39' as CajaOrigen, '#39#39' as CajaDestino'
      'from cheque_tercero_mov  chm'
      '   left join caja_mov cm_i on cm_i.id_mov_caja=chm.id_mov_caja'
      '   left join caja_cab ccab_i on ccab_i.id_caja=cm_i.id_caja'
      
        '   left join cuenta_caja cci on cci.id_cuenta=ccab_i.id_cuenta_c' +
        'aja'
      ''
      
        '   left join caja_mov cm_e on cm_e.id_mov_caja=chm.id_mov_caja_e' +
        'gresos'
      '   left join caja_cab ccab_e on ccab_e.id_caja=cm_e.id_caja'
      
        '   left join cuenta_caja cce on cce.id_cuenta=ccab_e.id_cuenta_c' +
        'aja'
      ''
      ''
      
        'where (chm.fecha_entrada between :desde and :hasta) and ((chm.id' +
        '_cheque_ter= :id) or (:id=-1))'
      ''
      ''
      'union'
      'select d.id_cheque,-1,-1,'
      '  d.numero,ch.fecha_entrada as fechaEntrada,d.fecha,'
      
        '  d.origen,'#39#39', d.importe as Ingreso,d.importe as salida,'#39'02-TRAN' +
        'SFERENCIA'#39' as Movimiento,d.numero as Nro_Transferencia,ctaori.no' +
        'mbre as CajaIngreso ,ctades.nombre as CajaEgreso,'
      
        '   ch.fecha_salida as FechaSalida, d.fecha as FechaTransferencia' +
        ',ctaori.nombre as CuentaCaja, ctaori.nombre as CajaOrigen, ctade' +
        's.nombre as CajaDestino'
      'from transferencias_caja_detalle d'
      '  left JOIN cheque_tercero ch on ch.id_cheque_ter=d.id_cheque'
      
        '  left join cuenta_caja ctaori on ctaori.id_cuenta=d.cta_caja_or' +
        'igen'
      
        '  left join cuenta_caja ctades on ctades.id_cuenta=d.cta_caja_de' +
        'stino'
      ''
      ''
      
        'where (ch.fecha_entrada between :desde and :hasta) and ((d.id_ch' +
        'eque= :id) or (:id=-1))'
      ''
      'order by 1,11')
    Left = 716
    Top = 577
    ParamData = <
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
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QMovChequesGeneralID_CHEQUE_TER: TIntegerField
      DisplayLabel = 'Id Cheque'
      FieldName = 'ID_CHEQUE_TER'
      Origin = 'ID_CHEQUE_TER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QMovChequesGeneralID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      Required = True
    end
    object QMovChequesGeneralID_MOV_CAJA_EGRESOS: TIntegerField
      FieldName = 'ID_MOV_CAJA_EGRESOS'
      Origin = 'ID_MOV_CAJA_EGRESOS'
    end
    object QMovChequesGeneralNUMERO: TIntegerField
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object QMovChequesGeneralFECHA_EMISION: TSQLTimeStampField
      DisplayLabel = 'Fecha Emision'
      FieldName = 'FECHA_EMISION'
      Origin = 'FECHA_EMISION'
    end
    object QMovChequesGeneralORIGEN: TStringField
      DisplayLabel = 'Origen'
      FieldName = 'ORIGEN'
      Origin = 'ORIGEN'
      Size = 30
    end
    object QMovChequesGeneralDESTINO: TStringField
      DisplayLabel = 'Destino'
      FieldName = 'DESTINO'
      Origin = 'DESTINO'
      Size = 30
    end
    object QMovChequesGeneralINGRESO: TFloatField
      DisplayLabel = 'Ingreso'
      FieldName = 'INGRESO'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QMovChequesGeneralSALIDA: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Salida'
      FieldName = 'SALIDA'
      Origin = 'SALIDA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QMovChequesGeneralMOVIMIENTO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Movimiento'
      FieldName = 'MOVIMIENTO'
      Origin = 'MOVIMIENTO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 16
    end
    object QMovChequesGeneralNRO_TRANSFERENCIA: TStringField
      Alignment = taRightJustify
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nro.Transferenca'
      FieldName = 'NRO_TRANSFERENCIA'
      Origin = 'NRO_TRANSFERENCIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 11
    end
    object QMovChequesGeneralCAJAINGRESO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Caja Entrada'
      FieldName = 'CAJAINGRESO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QMovChequesGeneralCAJAEGRESO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Caja Salida'
      FieldName = 'CAJAEGRESO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QMovChequesGeneralFECHAENTRADA: TSQLTimeStampField
      DisplayLabel = 'F.Entrada'
      FieldName = 'FECHAENTRADA'
      Origin = 'FECHA_ENTRADA'
    end
    object QMovChequesGeneralFECHASALIDA: TSQLTimeStampField
      DisplayLabel = 'F.Salida'
      FieldName = 'FECHASALIDA'
      Origin = 'FECHA_SALIDA'
    end
    object QMovChequesGeneralFECHATRANSFERENCIA: TSQLTimeStampField
      AutoGenerateValue = arDefault
      DisplayLabel = 'F.Transferencia'
      FieldName = 'FECHATRANSFERENCIA'
      Origin = 'FECHATRANSFERENCIA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QMovChequesGeneralCUENTACAJA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Caja'
      FieldName = 'CUENTACAJA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QMovChequesGeneralCAJAORIGEN: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Caja Origen'
      FieldName = 'CAJAORIGEN'
      Origin = 'CAJAORIGEN'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QMovChequesGeneralCAJADESTINO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Caja Destino'
      FieldName = 'CAJADESTINO'
      Origin = 'CAJADESTINO'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
  end
  object DSMovChequesGeneral: TDataSource
    DataSet = QMovChequesGeneral
    Left = 828
    Top = 577
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 812
    Top = 257
    object MostrarCampos1: TMenuItem
      Caption = 'Mostrar Campos'
      OnClick = MostrarCampos1Click
    end
    object Expandir1: TMenuItem
      Caption = 'Expandir'
      OnClick = Expandir1Click
    end
    object Contraer1: TMenuItem
      Caption = 'Contraer'
      OnClick = Contraer1Click
    end
  end
end
