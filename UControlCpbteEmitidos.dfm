inherited FormControlCpbteEmitidos: TFormControlCpbteEmitidos
  Left = 272
  Top = 137
  Caption = 'Control de Comprobantes Emitidos'
  ClientHeight = 705
  ClientWidth = 1259
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1277
  ExplicitHeight = 746
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1259
    Height = 652
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1259
    ExplicitHeight = 652
    object PageControl1: TPageControl
      Left = 0
      Top = 57
      Width = 1259
      Height = 595
      ActivePage = pag1
      Align = alClient
      TabOrder = 0
      OnChange = PageControl1Change
      OnChanging = PageControl1Changing
      object pag1: TTabSheet
        Caption = 'Comprobantes'
        object dbtObs: TDBText
          Left = 3
          Top = 413
          Width = 411
          Height = 16
          DataField = 'OBSERVACIONES1'
          DataSource = DSCpbteEmitidos
        end
        object dbgComprobantes: TJvDBGrid
          Left = 0
          Top = 0
          Width = 1251
          Height = 490
          Align = alClient
          Ctl3D = False
          DataSource = DSCpbteEmitidos
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentCtl3D = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgComprobantesDrawColumnCell
          OnDblClick = dbgComprobantesDblClick
          AutoAppend = False
          TitleButtons = True
          OnTitleBtnClick = dbgComprobantesTitleBtnClick
          AlternateRowColor = clSkyBlue
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
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
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MUESTRACOMPROBANTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 135
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPOCPBTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLASECPBTE'
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
              FieldName = 'NROCPBTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 97
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RAZONSOCIAL'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 263
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NETOGRAV2'
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
              FieldName = 'NETOEXENTO2'
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
              FieldName = 'PERCEPCION_IIBB'
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
              FieldName = 'PERCEPCION_IVA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clGreen
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IVA1'
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
              FieldName = 'IVA2'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 71
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'NETO1'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'NETO2'
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
              FieldName = 'TOTAL'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTROL'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
        object pnPieComp: TPanel
          Left = 0
          Top = 490
          Width = 1251
          Height = 77
          Align = alBottom
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 1
          DesignSize = (
            1251
            77)
          object lbl1: TLabel
            Left = 572
            Top = 28
            Width = 164
            Height = 16
            Alignment = taRightJustify
            Anchors = [akBottom]
            Caption = 'Total de Comprobantes'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 482
          end
          object lbTotal: TLabel
            Left = 960
            Top = 28
            Width = 29
            Height = 16
            Alignment = taRightJustify
            Anchors = [akBottom]
            Caption = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 826
          end
          object lbTotalNeto: TLabel
            Left = 846
            Top = 28
            Width = 29
            Height = 16
            Alignment = taRightJustify
            Anchors = [akBottom]
            Caption = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 727
          end
          object Label5: TLabel
            Left = 24
            Top = 28
            Width = 152
            Height = 16
            Alignment = taRightJustify
            Anchors = [akBottom]
            Caption = 'Monto Promedio Final'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 10
          end
          object lbPromedio: TLabel
            Left = 264
            Top = 28
            Width = 29
            Height = 16
            Alignment = taRightJustify
            Anchors = [akBottom]
            Caption = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 225
          end
          object JvLabel1: TJvLabel
            Left = 840
            Top = 49
            Width = 31
            Height = 13
            Caption = '(Neto)'
            Anchors = [akBottom]
            ShadowSize = 1
            ShadowPos = spLeftTop
            Transparent = True
            ExplicitLeft = 722
          end
          object JvLabel2: TJvLabel
            Left = 948
            Top = 48
            Width = 40
            Height = 13
            Caption = '(T.Final)'
            Anchors = [akBottom]
            ShadowSize = 1
            ShadowPos = spLeftTop
            Transparent = True
            ExplicitLeft = 815
          end
          object JvDBStatusLabel1: TJvDBStatusLabel
            Left = 453
            Top = 29
            Width = 117
            Height = 15
            DataSetName = ' '
            DataSource = DSCpbteEmitidos
            Captions.Strings = (
              'Archivos Cerrados'
              'Browse'
              'Edicion'
              'Agregando')
            Style = lsRecordNo
            GlyphAlign = glGlyphRight
            ShadowSize = 2
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Anchors = [akBottom]
            ParentColor = False
            ParentFont = False
            ShadowColor = clInfoBk
            Transparent = True
          end
          object Label6: TLabel
            Left = 343
            Top = 28
            Width = 85
            Height = 16
            Alignment = taRightJustify
            Anchors = [akBottom]
            Caption = 'Cant.Compr.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 289
          end
          object Label7: TLabel
            Left = 25
            Top = 44
            Width = 151
            Height = 16
            Alignment = taRightJustify
            Anchors = [akBottom]
            Caption = 'Monto Promedio Neto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 11
          end
          object lbPromedioNeto: TLabel
            Left = 264
            Top = 44
            Width = 29
            Height = 16
            Alignment = taRightJustify
            Anchors = [akBottom]
            Caption = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 225
          end
          object chbUnificar: TCheckBox
            Left = 1114
            Top = 7
            Width = 112
            Height = 55
            Anchors = [akBottom]
            Caption = 'Unificar Comp. No Fiscales en la Consulta'
            TabOrder = 0
            WordWrap = True
          end
        end
      end
      object pag2: TTabSheet
        Caption = 'Anulados'
        ImageIndex = 1
        object dbgAnulados: TJvDBGrid
          Left = 0
          Top = 0
          Width = 1251
          Height = 526
          Align = alClient
          DataSource = DSAnulados
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = PopupMenu1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = dbgComprobantesDblClick
          TitleButtons = True
          OnTitleBtnClick = dbgComprobantesTitleBtnClick
          AlternateRowColor = clInfoBk
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
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
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MUESTRACOMPROBANTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 151
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPOCPBTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 33
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLASECPBTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 38
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
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RAZONSOCIAL'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 347
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
              Width = 86
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 0
          Top = 526
          Width = 1251
          Height = 41
          Align = alBottom
          TabOrder = 1
          object Label1: TLabel
            Left = 521
            Top = 9
            Width = 164
            Height = 16
            Alignment = taRightJustify
            Caption = 'Total de Comprobantes'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbTotalAnulado: TLabel
            Left = 835
            Top = 9
            Width = 29
            Height = 16
            Alignment = taRightJustify
            Caption = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Agrupados'
        ImageIndex = 2
        object Label2: TLabel
          Left = 192
          Top = 16
          Width = 63
          Height = 13
          Caption = 'Razon Social'
        end
        object cxDBPivotGrid1: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 1251
          Height = 513
          Customization.AvailableFieldsSorted = True
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          DataSource = DSCpbteEmitidos
          Groups = <>
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = ''
          OptionsData.SummaryNullIgnore = True
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnGrandTotalText = 'Totales'
          OptionsView.RowGrandTotalText = 'Totales'
          PopupMenu = PopupMenu2
          TabOrder = 0
          OnFilterChanged = cxDBPivotGrid1FilterChanged
          OnDblClick = cxDBPivotGrid1DblClick
          OnMouseDown = cxDBPivotGrid1MouseDown
          OnMouseMove = cxDBPivotGrid1MouseMove
          OnMouseUp = cxDBPivotGrid1MouseUp
          object cxDBPivotGrid1Field1: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'MUESTRACOMPROBANTE'
            Visible = True
            UniqueName = 'Comprobante'
          end
          object cxDBPivotGrid1Field2: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'CLASECPBTE'
            Visible = True
            UniqueName = 'Cl'
          end
          object cxDBPivotGrid1Field3: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'TIPOCPBTE'
            Visible = True
            UniqueName = 'Tp'
          end
          object cxDBPivotGrid1Field4: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'NETOGRAV2'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Visible = True
            UniqueName = 'Neto'
          end
          object cxDBPivotGrid1Field5: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'TOTAL'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Visible = True
            UniqueName = 'Total'
          end
          object cxDBPivotGrid1Field6: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'SUCFAC'
            Visible = True
            UniqueName = 'Pref.'
          end
          object cxDBPivotGrid1Field7: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'MUESTRASUCURSAL'
            Visible = True
            UniqueName = 'Sucursal'
          end
          object cxDBPivotGrid1Field8: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'RAZONSOCIAL'
            Visible = True
            UniqueName = 'Razon Social'
          end
          object cxDBPivotGrid1Field9: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'NOMBRE'
            Visible = True
            UniqueName = 'Nombre'
          end
          object cxDBPivotGrid1Field10: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'NROCPBTE'
            Visible = True
            UniqueName = 'Nro.Cpbte'
          end
          object cxDBPivotGrid1Field11: TcxDBPivotGridField
            AreaIndex = 7
            DataBinding.FieldName = 'VENDEDOR'
            Visible = True
            UniqueName = 'Vendedor'
          end
          object cxDBPivotGrid1Field12: TcxDBPivotGridField
            AreaIndex = 6
            DataBinding.FieldName = 'HORA'
            Visible = True
            UniqueName = 'Hora'
          end
          object cxDBPivotGrid1Field13: TcxDBPivotGridField
            AreaIndex = 8
            DataBinding.FieldName = 'MES'
            Visible = True
            UniqueName = 'Mes'
          end
          object cxDBPivotGrid1Field14: TcxDBPivotGridField
            AreaIndex = 9
            DataBinding.FieldName = 'SEMANA'
            Visible = True
            UniqueName = 'Semana'
          end
          object cxDBPivotGrid1Field15: TcxDBPivotGridField
            AreaIndex = 10
            DataBinding.FieldName = 'FECHAVTA'
            Visible = True
            UniqueName = 'Fecha'
          end
          object cxDBPivotGrid1Field16: TcxDBPivotGridField
            AreaIndex = 11
            DataBinding.FieldName = 'ID_FC'
            UniqueName = 'ID_FC'
          end
          object cxDBPivotGrid1Field17: TcxDBPivotGridField
            AreaIndex = 12
            DataBinding.FieldName = 'OBSERVACIONES1'
            Visible = True
            UniqueName = 'Observaciones'
          end
          object cxDBPivotGrid1Field18: TcxDBPivotGridField
            AreaIndex = 13
            DataBinding.FieldName = 'MODOIVA'
            Visible = True
            UniqueName = 'Modo Iva'
          end
          object cxDBPivotGrid1Field19: TcxDBPivotGridField
            AreaIndex = 14
            DataBinding.FieldName = 'USUARIO'
            Visible = True
            UniqueName = 'Usuario'
          end
          object cxDBPivotGrid1Field20: TcxDBPivotGridField
            AreaIndex = 15
            DataBinding.FieldName = 'FECHA_HORA'
            Visible = True
            UniqueName = 'Fecha/Hora'
          end
        end
        object pnTotales: TJvPanel
          Left = 3
          Top = 266
          Width = 320
          Height = 127
          Color = clTeal
          Padding.Left = 10
          Padding.Top = 10
          Padding.Right = 10
          Padding.Bottom = 10
          ParentBackground = False
          TabOrder = 1
          Visible = False
          object Label8: TLabel
            Left = 11
            Top = 9
            Width = 113
            Height = 13
            Caption = 'Mostrar Los Totales'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SpeedButton1: TSpeedButton
            Left = 286
            Top = 4
            Width = 23
            Height = 22
            Hint = 'Cerrar'
            Caption = 'X'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton1Click
          end
          object chOpSumas: TCheckListBox
            Left = 11
            Top = 28
            Width = 300
            Height = 77
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 17
            Items.Strings = (
              'Total General Columnas'
              'Totales por Columnas'
              'Total General Linea'
              'Totales Por Linea')
            ParentFont = False
            TabOrder = 0
            OnClick = chOpSumasClick
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 513
          Width = 1251
          Height = 54
          Align = alBottom
          TabOrder = 2
          object Label3: TLabel
            Left = 16
            Top = 19
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
            OnClick = Label3Click
          end
          object JvLabel3: TJvLabel
            Left = 205
            Top = 19
            Width = 33
            Height = 13
            Caption = 'Desde'
            ShadowSize = 1
            ShadowPos = spLeftTop
            Transparent = True
          end
          object JvLabel4: TJvLabel
            Left = 309
            Top = 19
            Width = 30
            Height = 13
            Caption = 'Hasta'
            ShadowSize = 1
            ShadowPos = spLeftTop
            Transparent = True
          end
          object Label9: TLabel
            Left = 111
            Top = 19
            Width = 76
            Height = 13
            Cursor = crHandPoint
            Caption = 'Muestra Totales'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label9Click
          end
          object spVistas: TSpeedButton
            Left = 1028
            Top = 14
            Width = 23
            Height = 22
            Hint = 'Ingresar Vista Actual'
            Flat = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFBBE4C270CF8527B7471EBA401EBA4027B74770CF85BBE4C2FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFA4FB96219C1401FCE4C24DC5827
              DD5C27DD5C24DC581FCE4C19C1404FB962FAFDFAFFFFFFFFFFFFFFFFFFFBFDFB
              21A93A1ED04E22D55521D35503B82C00A71200A71203B82C21D35522D5551ED0
              4E21A93AFBFDFBFFFFFFFFFFFF4EB15B1ECE4D21D3541FCC4D0FCC4500AD13FF
              FFFFFFFFFF00AD130FCC451FCC4D21D3541ECE4D4EB15BFFFFFFBDDEBE17BA3F
              21DA5A1ECC5120D0530DC74200BE25FFFFFFFFFFFF00BE250DC74220D0531ECC
              5121DA5A17BA3FBDDEBE6ABC7417D15120D45F0BCC4A04CA4300C13300BC22FF
              FFFFFFFFFF00BD2700C23B10CA4B0ECC4C20D45F17D1516ABC7430A03F33E67A
              00B62D00AD1300AD1300AD1300AD13FFFFFFFFFFFF00AD1300BD2700BD2300AD
              1300B62D33E67A30A14130A34381FCC300AF21FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00AF2181FCC430A14223953785FDCC
              2AC262FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF2AC26285FDCC23953533933D7BFAC33CD07D71C7801EBF5921C05B0ABA4DFF
              FFFFFFFFFF10BC5122C05C1EBF5971C7803CD07D7BFAC333933D67AB668AE5B9
              65EAB050DF9756DF9C41DB8D22C05CFFFFFFFFFFFF22C05C49DC9356DF9C50DF
              9765EAB08AE5B967AB66B9D4B94EB068AFFFEA5EE0A156E19F45DE9766D589FF
              FFFFFFFFFF23C05B50E09E56E19F5EE0A1AFFFEA4EB068B9D4B9FFFFFF458945
              7BDCA8B6FFEF76E5B551DFA366D589FFFFFFFFFFFF24BF5956E2A876E5B5B6FF
              EF7BDCA8458945FFFFFFFFFFFFFAFDFA1572156DD6A3B7FFF5AAF7E370E0B022
              C05C22C05C74E2B3ABF7E4B7FFF56DD6A3157215FAFDFAFFFFFFFFFFFFFFFFFF
              F9FCF945864538A75E7FE1B8A9FFECB9FFFBB9FFFBA9FFEC7FE1B838A75E4586
              45F9FCF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7CEB767A567247D3328
              8738288738247D3367A567B7CEB7FFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = spVistasClick
          end
          object Label10: TLabel
            Left = 667
            Top = 19
            Width = 28
            Height = 13
            Caption = 'Vistas'
          end
          object btImprimrCross: TBitBtn
            Left = 553
            Top = 9
            Width = 80
            Height = 27
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
            TabOrder = 0
            OnClick = btImprimrCrossClick
          end
          object tmDesde: TJvTimeEdit
            Left = 244
            Top = 15
            Width = 59
            Height = 21
            ButtonKind = bkStandard
            TabOrder = 1
            OnClick = chHoraClick
          end
          object tmHasta: TJvTimeEdit
            Left = 345
            Top = 15
            Width = 59
            Height = 21
            ButtonKind = bkStandard
            TabOrder = 2
            OnClick = chHoraClick
          end
          object chHora: TCheckBox
            Left = 410
            Top = 15
            Width = 124
            Height = 17
            Caption = 'Aplicar Franja Horaria'
            TabOrder = 3
            OnClick = chHoraClick
          end
          object dbcVistas: TJvDBLookupCombo
            Left = 701
            Top = 15
            Width = 321
            Height = 21
            LookupField = 'ID'
            LookupDisplay = 'DESCRIPCION'
            LookupSource = DSVista
            TabOrder = 4
            OnChange = dbcVistasChange
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Grafico'
        ImageIndex = 3
        object dbGrafico: TDBChart
          Left = 0
          Top = 0
          Width = 1251
          Height = 526
          MarginBottom = 0
          MarginLeft = 0
          MarginRight = 0
          MarginTop = 0
          PrintProportional = False
          Title.Text.Strings = (
            'Comprobantes'
            '')
          BottomAxis.Increment = 0.006944444444444444
          BottomAxis.LabelsAngle = 90
          BottomAxis.LabelsMultiLine = True
          BottomAxis.LabelsSeparation = 5
          BottomAxis.LabelsSize = 28
          BottomAxis.MinimumOffset = 5
          BottomAxis.Title.Caption = 'Hora'
          DepthAxis.LabelsAlternate = True
          DepthAxis.MinorTickCount = 5
          LeftAxis.ExactDateTime = False
          LeftAxis.Increment = 10.000000000000000000
          LeftAxis.MinimumOffset = 5
          Legend.CurrentPage = False
          Legend.Visible = False
          Pages.MaxPointsPerPage = 10
          Pages.ScaleLastPage = False
          RightAxis.Automatic = False
          RightAxis.AutomaticMaximum = False
          RightAxis.AutomaticMinimum = False
          RightAxis.Visible = False
          TopAxis.Visible = False
          View3D = False
          Zoom.Pen.Mode = pmNotXor
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          DefaultCanvas = 'TGDIPlusCanvas'
          PrintMargins = (
            5
            5
            5
            5)
          ColorPaletteIndex = 13
          object Series1: TBarSeries
            HoverElement = []
            ColorEachPoint = True
            Marks.Visible = False
            Marks.AutoPosition = False
            Marks.BackColor = clRed
            Marks.Callout.ArrowHead = ahSolid
            Marks.Callout.ArrowHeadSize = 2
            Marks.Callout.Distance = 5
            Marks.Callout.Length = 15
            Marks.DrawEvery = 3
            Marks.Color = clRed
            DataSource = CDSCpbteEmitidosGraf
            SeriesColor = clBlue
            XLabelsSource = 'HORA'
            BarWidthPercent = 2
            MultiBar = mbNone
            SideMargins = False
            XValues.Name = 'X'
            XValues.Order = loNone
            XValues.ValueSource = 'HORA_INT'
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'TOTAL'
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 526
          Width = 1251
          Height = 41
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            1251
            41)
          object Button1: TButton
            Left = 1121
            Top = 11
            Width = 38
            Height = 22
            Anchors = [akRight]
            Caption = '<<'
            TabOrder = 0
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 1164
            Top = 11
            Width = 38
            Height = 22
            Anchors = [akRight]
            Caption = '>>'
            TabOrder = 1
            OnClick = Button2Click
          end
          object CheckBox1: TCheckBox
            Left = 1020
            Top = 16
            Width = 97
            Height = 17
            Anchors = [akRight]
            Caption = 'Ver Referencias'
            Checked = True
            State = cbChecked
            TabOrder = 2
            OnClick = CheckBox1Click
          end
          object btImprimirGraf: TBitBtn
            Left = 914
            Top = 8
            Width = 75
            Height = 25
            Anchors = [akRight]
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
            TabOrder = 3
            OnClick = btImprimirGrafClick
          end
          object SpinEdit1: TSpinEdit
            Left = 852
            Top = 11
            Width = 44
            Height = 22
            Anchors = [akRight]
            MaxLength = 250
            MaxValue = 250
            MinValue = 0
            TabOrder = 4
            Value = 5
            OnChange = SpinEdit1Change
          end
        end
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 1259
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      DesignSize = (
        1259
        57)
      object RxLabel3: TJvLabel
        Left = 320
        Top = 1
        Width = 43
        Height = 13
        Caption = 'Sucursal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Anchors = [akTop, akRight]
        ParentFont = False
        ShadowPos = spLeftTop
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object RxLabel1: TJvLabel
        Left = 800
        Top = 4
        Width = 33
        Height = 13
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Anchors = [akTop, akRight]
        ParentFont = False
        ShadowPos = spLeftTop
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
        ExplicitLeft = 815
      end
      object RxLabel2: TJvLabel
        Left = 902
        Top = 4
        Width = 30
        Height = 13
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Anchors = [akTop, akRight]
        ParentFont = False
        ShadowPos = spLeftTop
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
        ExplicitLeft = 917
      end
      object RxLabel4: TJvLabel
        Left = 490
        Top = 2
        Width = 70
        Height = 13
        Caption = 'Comprobantes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Anchors = [akTop, akRight]
        ParentFont = False
        ShadowPos = spLeftTop
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object spFiltroCpbte: TSpeedButton
        Left = 693
        Top = 19
        Width = 23
        Height = 22
        Action = Filtrar
        Anchors = [akTop, akRight]
        ParentShowHint = False
        ShowHint = True
      end
      object Label11: TLabel
        Left = 7
        Top = 10
        Width = 272
        Height = 29
        Caption = 'Control Cpbte.Emitidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object UpDown1: TUpDown
        Left = 1006
        Top = 20
        Width = 16
        Height = 20
        Hint = 'Cambia el Per'#237'odo'
        Anchors = [akTop, akRight]
        Min = -32768
        Max = 32767
        ParentShowHint = False
        Position = 100
        ShowHint = True
        TabOrder = 0
        OnClick = UpDown1Click
      end
      object Desde: TJvDateEdit
        Left = 801
        Top = 21
        Width = 95
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
        Anchors = [akTop, akRight]
        PopupColor = clBtnFace
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 1
        OnAcceptDate = DesdeAcceptDate
      end
      object Hasta: TJvDateEdit
        Left = 902
        Top = 20
        Width = 98
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
        Anchors = [akTop, akRight]
        PopupColor = clBtnFace
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 2
        OnAcceptDate = HastaAcceptDate
      end
      object dbcSucursal: TJvDBLookupCombo
        Left = 320
        Top = 19
        Width = 164
        Height = 21
        DisplayEmpty = 'Sin Sucursal'
        EmptyValue = '-1'
        Anchors = [akTop, akRight]
        LookupField = 'CODIGO'
        LookupDisplay = 'DETALLE'
        LookupSource = DSSucursal
        TabOrder = 3
        OnClick = dbcSucursalClick
      end
      object dbcComprobantes: TJvDBLookupCombo
        Left = 490
        Top = 20
        Width = 201
        Height = 20
        DisplayEmpty = 'Todos'
        EmptyValue = '-1'
        Anchors = [akTop, akRight]
        LookupField = 'ID_COMPROBANTE'
        LookupDisplay = 'DENOMINACION'
        LookupSource = DSComprobantes
        TabOrder = 4
        OnClick = dbcComprobantesClick
      end
      object chbPorDia: TAdvOfficeCheckBox
        Left = 982
        Top = 0
        Width = 120
        Height = 19
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Alignment = taLeftJustify
        Caption = 'Inc.por Dia'
        ReturnIsTab = False
        Version = '1.8.4.2'
      end
      object chbRecibos: TAdvOfficeCheckBox
        Left = 1112
        Top = 31
        Width = 174
        Height = 20
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = chbRecibosClick
        Alignment = taLeftJustify
        Caption = 'Listar Incluido los Recibos'
        ReturnIsTab = False
        Version = '1.8.4.2'
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 652
    Width = 1259
    Align = alBottom
    ButtonHeight = 28
    ExplicitTop = 652
    ExplicitWidth = 1259
    inherited btConfirma: TBitBtn
      Width = 39
      Height = 28
      Visible = False
      ExplicitWidth = 39
      ExplicitHeight = 28
    end
    inherited btNuevo: TBitBtn
      Left = 41
      Width = 28
      Height = 28
      Visible = False
      ExplicitLeft = 41
      ExplicitWidth = 28
      ExplicitHeight = 28
    end
    inherited btCancelar: TBitBtn
      Left = 69
      Width = 33
      Height = 28
      Visible = False
      ExplicitLeft = 69
      ExplicitWidth = 33
      ExplicitHeight = 28
    end
    inherited btModificar: TBitBtn
      Left = 102
      Width = 30
      Height = 28
      Visible = False
      ExplicitLeft = 102
      ExplicitWidth = 30
      ExplicitHeight = 28
    end
    inherited Pr: TSpeedButton
      Left = 132
      Height = 28
      Visible = False
      ExplicitLeft = 132
      ExplicitHeight = 28
    end
    inherited btBuscar: TBitBtn
      Left = 147
      Height = 28
      ExplicitLeft = 147
      ExplicitHeight = 28
    end
    inherited Ne: TSpeedButton
      Left = 222
      Height = 28
      Visible = False
      ExplicitLeft = 222
      ExplicitHeight = 28
    end
    inherited btBorrar: TBitBtn
      Left = 237
      Width = 36
      Height = 28
      Visible = False
      ExplicitLeft = 237
      ExplicitWidth = 36
      ExplicitHeight = 28
    end
    inherited btSalir: TBitBtn
      Left = 273
      Height = 28
      ExplicitLeft = 273
      ExplicitHeight = 28
    end
    object ToolButton1: TToolButton
      Left = 348
      Top = 0
      Width = 21
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btImprimir: TBitBtn
      Left = 369
      Top = 0
      Width = 80
      Height = 28
      Action = Imprimir
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
      TabOrder = 7
    end
    object ToolButton2: TToolButton
      Left = 449
      Top = 0
      Width = 24
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object chbNeto: TCheckBox
      Left = 473
      Top = 0
      Width = 193
      Height = 28
      Caption = 'Imprimir Por El Neto'
      TabOrder = 9
    end
    object btExcel: TBitBtn
      Left = 666
      Top = 0
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
      TabOrder = 8
      OnClick = btExcelClick
    end
  end
  inherited Panel1: TPanel
    Top = 682
    Width = 1259
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 682
    ExplicitWidth = 1259
    inherited DBStatusLabel1: TJvDBStatusLabel
      Visible = False
    end
    inherited sbEstado: TStatusBar
      Width = 1170
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 1170
    end
  end
  object pnComprobantes: TJvPanel [3]
    Left = 784
    Top = 140
    Width = 464
    Height = 434
    Color = clBlue
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentBackground = False
    TabOrder = 3
    Visible = False
    object Label4: TLabel
      Left = 11
      Top = 13
      Width = 151
      Height = 13
      Caption = 'Mostrar Los Comprobantes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = GuardarOpcionesExecute
    end
    object spCerrar: TSpeedButton
      Left = 432
      Top = 11
      Width = 23
      Height = 22
      Hint = 'Cerrar'
      Caption = 'X'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = spCerrarClick
    end
    object spFiltroAll: TSpeedButton
      Left = 403
      Top = 10
      Width = 23
      Height = 22
      Hint = 'Maracar/Desmarcar Todos'
      Caption = '<>'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = spFiltroAllClick
    end
    object lvComprobantes: TListView
      Left = 11
      Top = 44
      Width = 442
      Height = 379
      Align = alBottom
      Anchors = [akTop, akRight, akBottom]
      Checkboxes = True
      Columns = <
        item
          Width = 25
        end
        item
          Alignment = taCenter
          Caption = 'Codigo'
        end
        item
          Alignment = taCenter
          Caption = 'Tp'
          Width = 30
        end
        item
          Caption = 'Cl'
          Width = 30
        end
        item
          Caption = 'Denominacion'
          Width = 280
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = popMenuCpbte
      SortType = stData
      TabOrder = 0
      ViewStyle = vsReport
      OnClick = lvComprobantesClick
    end
  end
  inherited ActionList1: TActionList
    Left = 544
    Top = 32
    object Imprimir: TAction
      Caption = '&Imprimir'
      OnExecute = ImprimirExecute
    end
    object Sumar: TAction
      Caption = 'Sumar'
      OnExecute = SumarExecute
    end
    object CambiarNro_Fecha: TAction
      Caption = 'Cambiar Nro_Fecha'
      OnExecute = CambiarNro_FechaExecute
    end
    object Filtrar: TAction
      ImageIndex = 2
      OnExecute = FiltrarExecute
    end
    object GuardarOpciones: TAction
      Caption = 'Guardar Opciones'
      OnExecute = GuardarOpcionesExecute
    end
    object CargarOpciones: TAction
      Caption = 'Cargar Opciones'
      OnExecute = CargarOpcionesExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 448
    Top = 120
  end
  inherited ImageList1: TImageList
    Left = 296
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
    Left = 400
    Top = 448
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 448
    Top = 328
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 520
    Top = 232
  end
  inherited QBrowse2: TFDQuery
    Left = 24
    Top = 416
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 32
    Top = 440
  end
  object DSPCpbteEmitidos: TDataSetProvider
    DataSet = QCpbteEmitidos
    Options = []
    Left = 226
    Top = 195
  end
  object DSCpbteEmitidos: TDataSource
    DataSet = CDSCpbteEmitidos
    Left = 464
    Top = 184
  end
  object DSSucursal: TDataSource
    DataSet = CDSSucursal
    Left = 42
    Top = 619
  end
  object frConsulta: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.807155671300000000
    ReportOptions.LastChange = 39638.807155671300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 192
    Top = 427
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frDBDatos: TfrxDBDataset
    UserName = 'frDBDatos'
    CloseDataSource = False
    DataSet = CDSCpbteEmitidos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 544
    Top = 296
    FieldDefs = <
      item
        FieldName = 'ID_FC'
        FieldAlias = 'ID_FC'
      end
      item
        FieldName = 'FECHAVTA'
        FieldAlias = 'FECHAVTA'
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
        FieldName = 'LETRAFAC'
        FieldAlias = 'LETRAFAC'
      end
      item
        FieldName = 'SUCFAC'
        FieldAlias = 'SUCFAC'
      end
      item
        FieldName = 'NUMEROFAC'
        FieldAlias = 'NUMEROFAC'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'RAZONSOCIAL'
        FieldAlias = 'RAZONSOCIAL'
      end
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'CUIT'
        FieldAlias = 'CUIT'
      end
      item
        FieldName = 'ANULADO'
        FieldAlias = 'ANULADO'
      end
      item
        FieldName = 'NETOGRAV2'
        FieldAlias = 'NETOGRAV2'
      end
      item
        FieldName = 'NETOEXENTO2'
        FieldAlias = 'NETOEXENTO2'
      end
      item
        FieldName = 'TASA1'
        FieldAlias = 'TASA1'
      end
      item
        FieldName = 'TASA2'
        FieldAlias = 'TASA2'
      end
      item
        FieldName = 'TASA3'
        FieldAlias = 'TASA3'
      end
      item
        FieldName = 'IVA1'
        FieldAlias = 'IVA1'
      end
      item
        FieldName = 'IVA2'
        FieldAlias = 'IVA2'
      end
      item
        FieldName = 'IVA3'
        FieldAlias = 'IVA3'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'MUESTRACOMPROBANTE'
        FieldAlias = 'MUESTRACOMPROBANTE'
      end
      item
        FieldName = 'MUESTRASUCURSAL'
        FieldAlias = 'MUESTRASUCURSAL'
      end
      item
        FieldName = 'NETO1'
        FieldAlias = 'NETO1'
      end
      item
        FieldName = 'NETO2'
        FieldAlias = 'NETO2'
      end
      item
        FieldName = 'NETO3'
        FieldAlias = 'NETO3'
      end
      item
        FieldName = 'ID_COMPROBANTE'
        FieldAlias = 'ID_COMPROBANTE'
      end
      item
        FieldName = 'FECHA_HORA'
        FieldAlias = 'FECHA_HORA'
      end
      item
        FieldName = 'HORA'
        FieldAlias = 'HORA'
      end
      item
        FieldName = 'VENDEDOR'
        FieldAlias = 'VENDEDOR'
      end
      item
        FieldName = 'HORA_STR'
        FieldAlias = 'HORA_STR'
      end
      item
        FieldName = 'MES'
        FieldAlias = 'MES'
      end
      item
        FieldName = 'SEMANA'
        FieldAlias = 'SEMANA'
      end
      item
        FieldName = 'OBSERVACIONES1'
        FieldAlias = 'OBSERVACIONES1'
      end>
  end
  object DSComprobantes: TDataSource
    DataSet = CDSComprobantes
    Left = 234
    Top = 603
  end
  object CDSCpbteEmitidos: TClientDataSet
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
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'clase'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'letra'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'UNIFICA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'LISTARTOS'
        ParamType = ptInput
        Size = 1
      end>
    ProviderName = 'DSPCpbteEmitidos'
    OnCalcFields = CDSCpbteEmitidosCalcFields
    Left = 352
    Top = 200
    object CDSCpbteEmitidosID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
    end
    object CDSCpbteEmitidosTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSCpbteEmitidosCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSCpbteEmitidosLETRAFAC: TStringField
      DisplayLabel = 'Let'
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      FixedChar = True
      Size = 1
    end
    object CDSCpbteEmitidosSUCFAC: TStringField
      DisplayLabel = 'Pref.'
      FieldName = 'SUCFAC'
      Origin = 'SUCFAC'
      Size = 4
    end
    object CDSCpbteEmitidosNUMEROFAC: TStringField
      DisplayLabel = 'Numero'
      FieldName = 'NUMEROFAC'
      Origin = 'NUMEROFAC'
      Size = 8
    end
    object CDSCpbteEmitidosNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object CDSCpbteEmitidosRAZONSOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSCpbteEmitidosNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSCpbteEmitidosCUIT: TStringField
      DisplayLabel = 'Cuit'
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSCpbteEmitidosANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      FixedChar = True
      Size = 1
    end
    object CDSCpbteEmitidosNETOGRAV2: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'NETOGRAV2'
      Origin = 'NETOGRAV2'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCpbteEmitidosNETOEXENTO2: TFloatField
      DisplayLabel = 'N.Exento'
      FieldName = 'NETOEXENTO2'
      Origin = 'NETOEXENTO2'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCpbteEmitidosMUESTRACOMPROBANTE: TStringField
      DisplayLabel = 'Comprobante'
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'MUESTRACOMPROBANTE'
      Size = 15
    end
    object CDSCpbteEmitidosMUESTRASUCURSAL: TStringField
      DisplayLabel = 'Sucursal'
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'MUESTRASUCURSAL'
      Size = 35
    end
    object CDSCpbteEmitidosID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
    end
    object CDSCpbteEmitidosHORA: TStringField
      DisplayLabel = 'Hora'
      FieldKind = fkCalculated
      FieldName = 'HORA'
      Size = 5
      Calculated = True
    end
    object CDSCpbteEmitidosVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 50
    end
    object CDSCpbteEmitidosHORA_STR: TStringField
      FieldName = 'HORA_STR'
      Origin = 'HORA_STR'
    end
    object CDSCpbteEmitidosMES: TStringField
      DisplayLabel = 'Mes'
      FieldKind = fkCalculated
      FieldName = 'MES'
      Size = 15
      Calculated = True
    end
    object CDSCpbteEmitidosSEMANA: TStringField
      DisplayLabel = 'Semana'
      FieldKind = fkCalculated
      FieldName = 'SEMANA'
      Size = 10
      Calculated = True
    end
    object CDSCpbteEmitidosOBSERVACIONES1: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES1'
      Origin = 'OBSERVACIONES1'
      Size = 60
    end
    object CDSCpbteEmitidosTASA1: TFloatField
      DisplayLabel = 'Tasa 1'
      FieldName = 'TASA1'
      Origin = 'TASA1'
      DisplayFormat = ',0.00'
    end
    object CDSCpbteEmitidosTASA2: TFloatField
      DisplayLabel = 'Tasa 2'
      FieldName = 'TASA2'
      Origin = 'TASA2'
      DisplayFormat = ',0.00'
    end
    object CDSCpbteEmitidosTASA3: TFloatField
      DisplayLabel = 'Tasa 3'
      FieldName = 'TASA3'
      Origin = 'TASA3'
      DisplayFormat = ',0.00'
    end
    object CDSCpbteEmitidosIVA1: TFloatField
      DisplayLabel = 'Iva 1'
      FieldName = 'IVA1'
      Origin = 'IVA1'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCpbteEmitidosIVA2: TFloatField
      DisplayLabel = 'Iva 2'
      FieldName = 'IVA2'
      Origin = 'IVA2'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCpbteEmitidosIVA3: TFloatField
      DisplayLabel = 'Iva 3'
      FieldName = 'IVA3'
      Origin = 'IVA3'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCpbteEmitidosTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCpbteEmitidosNETO1: TFloatField
      DisplayLabel = 'Neto 1'
      FieldName = 'NETO1'
      Origin = 'NETO1'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCpbteEmitidosNETO2: TFloatField
      DisplayLabel = 'Neto 2'
      FieldName = 'NETO2'
      Origin = 'NETO2'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCpbteEmitidosNETO3: TFloatField
      DisplayLabel = 'Neto 3'
      FieldName = 'NETO3'
      Origin = 'NETO3'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCpbteEmitidosHORA_INT: TIntegerField
      FieldName = 'HORA_INT'
      Origin = 'HORA_INT'
    end
    object CDSCpbteEmitidosPERCEPCION_IIBB: TFloatField
      DisplayLabel = 'Percp.IIBB'
      FieldName = 'PERCEPCION_IIBB'
      Origin = 'PERCEPCION_IIBB'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCpbteEmitidosFECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object CDSCpbteEmitidosFECHA_HORA: TSQLTimeStampField
      DisplayLabel = 'Fecha/Hora'
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object CDSCpbteEmitidosPERCEPCION_IVA: TFloatField
      DisplayLabel = 'Percp.IVA'
      FieldName = 'PERCEPCION_IVA'
      Origin = 'PERCEPCION_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCpbteEmitidosCONTROL: TFloatField
      DisplayLabel = 'Control'
      FieldKind = fkInternalCalc
      FieldName = 'CONTROL'
      DisplayFormat = '0.00;-0.00;-'
    end
    object CDSCpbteEmitidosFISCAL: TStringField
      DisplayLabel = 'Modo IVA'
      FieldName = 'FISCAL'
      Size = 1
    end
    object CDSCpbteEmitidosMODOIVA: TStringField
      DisplayLabel = 'Modo Iva'
      FieldKind = fkCalculated
      FieldName = 'MODOIVA'
      Size = 10
      Calculated = True
    end
    object CDSCpbteEmitidosUSUARIO: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUARIO'
      Size = 50
    end
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 96
    Top = 592
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
    Left = 160
    Top = 592
  end
  object QComprobante: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Suc'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select id_comprobante,tipo_comprob,clase_comprob,denominacion,'
      '       sucursal,letra,filtro_comprobantes'
      'from comprobantes'
      
        'where  sucursal=:Suc and tipo_comprob in ('#39'FC'#39','#39'NC'#39','#39'ND'#39','#39'FO'#39','#39'T' +
        'K'#39','#39'RC'#39') and compra_venta='#39'V'#39
      'order by'
      'sucursal,tipo_comprob,clase_comprob ,letra ')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 456
    Top = 656
    object QComprobanteTIPO_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'TIPO_COMPROB'
      Size = 2
    end
    object QComprobanteCLASE_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'CLASE_COMPROB'
      Size = 2
    end
    object QComprobanteDENOMINACION: TStringField
      DisplayWidth = 15
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object QComprobanteSUCURSAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'SUCURSAL'
    end
    object QComprobanteLETRA: TStringField
      DisplayWidth = 1
      FieldName = 'LETRA'
      Size = 1
    end
    object QComprobanteID_COMPROBANTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_COMPROBANTE'
    end
    object QComprobanteFILTRO_COMPROBANTES: TStringField
      FieldName = 'FILTRO_COMPROBANTES'
      FixedChar = True
      Size = 1
    end
  end
  object CDSComprobantes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPComprobantes'
    Left = 304
    Top = 632
    object CDSComprobantesTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Size = 2
    end
    object CDSComprobantesCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Size = 2
    end
    object CDSComprobantesDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object CDSComprobantesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSComprobantesLETRA: TStringField
      FieldName = 'LETRA'
      Size = 1
    end
    object CDSComprobantesID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object CDSComprobantesFILTRO_COMPROBANTES: TStringField
      FieldName = 'FILTRO_COMPROBANTES'
      FixedChar = True
      Size = 1
    end
  end
  object DSPComprobantes: TDataSetProvider
    DataSet = QComprobante
    Left = 384
    Top = 640
  end
  object QBuscaAplicaiones: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select count(m.id_mov) from movaplicaccvta m where m.aplica_id_c' +
        'pbte=:id and m.aplica_tipocpbte=:tipo')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 600
    Top = 656
  end
  object PopupMenu1: TPopupMenu
    Left = 424
    Top = 144
    object CambiarNroFecha1: TMenuItem
      Action = CambiarNro_Fecha
    end
  end
  object QAnulados_old: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select f.id_fc,f.fechavta,f.tipocpbte,f.clasecpbte,f.letrafac,f.' +
        'sucfac,f.numerofac,'
      'f.nrocpbte,f.razonsocial,f.nombre,f.cuit,f.anulado,f.netograv2,'
      'f.total,c.denominacion as MuestraComprobante'
      'from fcvtacab f'
      'left join comprobantes c on c.sucursal=f.sucursal and'
      '     c.letra=f.letrafac and c.tipo_comprob=f.tipocpbte and'
      
        '     c.clase_comprob=f.clasecpbte and c.compra_venta='#39'V'#39' and f.a' +
        'nulado<>'#39'N'#39
      'order by f.tipocpbte,f.nrocpbte')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 136
    Top = 488
  end
  object DSPAnulados: TDataSetProvider
    DataSet = QAnulados
    Options = [poAllowCommandText]
    Left = 218
    Top = 291
  end
  object CDSAnulados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPAnulados'
    Left = 352
    Top = 304
    object CDSAnuladosID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAnuladosFECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
    object CDSAnuladosTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSAnuladosCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSAnuladosNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSAnuladosRAZONSOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSAnuladosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSAnuladosCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSAnuladosANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSAnuladosNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      Origin = 'NETOGRAV2'
      Required = True
    end
    object CDSAnuladosLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSAnuladosSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Origin = 'SUCFAC'
      Size = 4
    end
    object CDSAnuladosNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Origin = 'NUMEROFAC'
      Size = 8
    end
    object CDSAnuladosTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
    end
    object CDSAnuladosMUESTRACOMPROBANTE: TStringField
      DisplayLabel = 'Comprobante'
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
  end
  object DSAnulados: TDataSource
    DataSet = CDSAnulados
    Left = 456
    Top = 248
  end
  object frAnulados: TfrxDBDataset
    UserName = 'frAnulados'
    CloseDataSource = False
    DataSet = CDSAnulados
    BCDToCurrency = False
    DataSetOptions = []
    Left = 544
    Top = 360
    FieldDefs = <
      item
        FieldName = 'ID_FC'
        FieldAlias = 'ID_FC'
      end
      item
        FieldName = 'FECHAVTA'
        FieldAlias = 'FECHAVTA'
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
        FieldName = 'LETRAFAC'
        FieldAlias = 'LETRAFAC'
      end
      item
        FieldName = 'SUCFAC'
        FieldAlias = 'SUCFAC'
      end
      item
        FieldName = 'NUMEROFAC'
        FieldAlias = 'NUMEROFAC'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'RAZONSOCIAL'
        FieldAlias = 'RAZONSOCIAL'
      end
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'CUIT'
        FieldAlias = 'CUIT'
      end
      item
        FieldName = 'ANULADO'
        FieldAlias = 'ANULADO'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'MUESTRACOMPROBANTE'
        FieldAlias = 'MUESTRACOMPROBANTE'
      end>
  end
  object DataToXLS1: TDataToXLS
    DataSet = CDSCpbteEmitidos
    Columns = <
      item
        DataField = 'FECHAVTA'
        Title = 'Fecha'
        ColWidth = 3034
      end
      item
        DataField = 'MUESTRACOMPROBANTE'
        Title = 'Comprobante'
        ColWidth = 4995
      end
      item
        DataField = 'TIPOCPBTE'
        Title = 'Tp'
        ColWidth = 1036
      end
      item
        DataField = 'CLASECPBTE'
        Title = 'Cl'
        ColWidth = 851
      end
      item
        DataField = 'NROCPBTE'
        Title = 'Nro.Cpbte'
        ColWidth = 3589
      end
      item
        DataField = 'RAZONSOCIAL'
        Title = 'Razon Social'
        ColWidth = 7659
      end
      item
        DataField = 'NETOGRAV2'
        Title = 'Neto Grava.'
        Alignment = taRightJustify
        ColWidth = 3700
        DataType = ctDouble
      end
      item
        DataField = 'PERCEPCION_IIBB'
        Title = 'Perc.IIBB'
        DataType = ctDouble
      end
      item
        DataField = 'IVA1'
        Title = '21%'
        DataType = ctDouble
      end
      item
        DataField = 'IVA2'
        Title = '10,5%'
        DataType = ctDouble
      end
      item
        DataField = 'NETO1'
        Title = 'Neto 21'
        DataType = ctDouble
      end
      item
        DataField = 'NETO2'
        Title = 'Neto 10.5'
        DataType = ctDouble
      end
      item
        DataField = 'TOTAL'
        Title = 'Importe'
        Alignment = taRightJustify
        ColWidth = 2960
        DataType = ctDouble
      end
      item
        DataField = 'HORA'
      end
      item
        DataField = 'OBSERVACIONES1'
        Title = 'Observaciones'
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
    Left = 660
    Top = 360
  end
  object SaveDialog1: TSaveDialog
    Left = 736
    Top = 400
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 644
    Top = 264
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
      ReportDocument.CreationDate = 46035.542763414350000000
      OptionsFormatting.LookAndFeelKind = lfFlat
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      OptionsView.ExpandButtons = False
      OptionsView.Prefilter = pfvNever
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object DSPCpbteEmitidosGraf: TDataSetProvider
    DataSet = QCpbteEmitidos
    Options = []
    Left = 226
    Top = 243
  end
  object CDSCpbteEmitidosGraf: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_FC'
        DataType = ftInteger
      end
      item
        Name = 'FECHAVTA'
        DataType = ftDate
      end
      item
        Name = 'TIPOCPBTE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CLASECPBTE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'LETRAFAC'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SUCFAC'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'NUMEROFAC'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'NROCPBTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'RAZONSOCIAL'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'CUIT'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'ANULADO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NETOGRAV2'
        DataType = ftFloat
      end
      item
        Name = 'NETOEXENTO2'
        DataType = ftFloat
      end
      item
        Name = 'TASA1'
        DataType = ftFloat
      end
      item
        Name = 'TASA2'
        DataType = ftFloat
      end
      item
        Name = 'TASA3'
        DataType = ftFloat
      end
      item
        Name = 'IVA1'
        DataType = ftFloat
      end
      item
        Name = 'IVA2'
        DataType = ftFloat
      end
      item
        Name = 'IVA3'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'MUESTRACOMPROBANTE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'MUESTRASUCURSAL'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'NETO1'
        DataType = ftFloat
      end
      item
        Name = 'NETO2'
        DataType = ftFloat
      end
      item
        Name = 'NETO3'
        DataType = ftFloat
      end
      item
        Name = 'ID_COMPROBANTE'
        DataType = ftInteger
      end
      item
        Name = 'FECHA_HORA'
        DataType = ftDate
      end
      item
        Name = 'VENDEDOR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'HORA_STR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'HORA_INT'
        DataType = ftInteger
      end
      item
        Name = 'OBSERVACIONES1'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'PERCEPCION_IIBB'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'CDSCpbteEmitidosGrafIndex1'
        Fields = 'HORA_INT'
      end>
    IndexName = 'CDSCpbteEmitidosGrafIndex1'
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
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'clase'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'letra'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCpbteEmitidosGraf'
    StoreDefs = True
    OnCalcFields = CDSCpbteEmitidosGrafCalcFields
    Left = 352
    Top = 256
    object CDSCpbteEmitidosGrafID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
    end
    object CDSCpbteEmitidosGrafTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSCpbteEmitidosGrafCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSCpbteEmitidosGrafFECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha Vta'
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object CDSCpbteEmitidosGrafLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      FixedChar = True
      Size = 1
    end
    object CDSCpbteEmitidosGrafSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Origin = 'SUCFAC'
      Size = 4
    end
    object CDSCpbteEmitidosGrafNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Origin = 'NUMEROFAC'
      Size = 8
    end
    object CDSCpbteEmitidosGrafNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object CDSCpbteEmitidosGrafRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSCpbteEmitidosGrafNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSCpbteEmitidosGrafCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSCpbteEmitidosGrafANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      FixedChar = True
      Size = 1
    end
    object CDSCpbteEmitidosGrafMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'MUESTRACOMPROBANTE'
      Size = 15
    end
    object CDSCpbteEmitidosGrafMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'MUESTRASUCURSAL'
      Size = 35
    end
    object CDSCpbteEmitidosGrafID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
    end
    object CDSCpbteEmitidosGrafVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 50
    end
    object CDSCpbteEmitidosGrafHORA: TStringField
      FieldKind = fkCalculated
      FieldName = 'HORA'
      Size = 5
      Calculated = True
    end
    object CDSCpbteEmitidosGrafHORA_STR: TStringField
      FieldName = 'HORA_STR'
      Origin = 'HORA_STR'
    end
    object CDSCpbteEmitidosGrafHORA_INT: TIntegerField
      FieldName = 'HORA_INT'
      Origin = 'HORA_INT'
    end
    object CDSCpbteEmitidosGrafNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      Origin = 'NETOGRAV2'
    end
    object CDSCpbteEmitidosGrafNETOEXENTO2: TFloatField
      FieldName = 'NETOEXENTO2'
      Origin = 'NETOEXENTO2'
    end
    object CDSCpbteEmitidosGrafTASA1: TFloatField
      FieldName = 'TASA1'
      Origin = 'TASA1'
    end
    object CDSCpbteEmitidosGrafTASA2: TFloatField
      FieldName = 'TASA2'
      Origin = 'TASA2'
    end
    object CDSCpbteEmitidosGrafTASA3: TFloatField
      FieldName = 'TASA3'
      Origin = 'TASA3'
    end
    object CDSCpbteEmitidosGrafIVA1: TFloatField
      FieldName = 'IVA1'
      Origin = 'IVA1'
    end
    object CDSCpbteEmitidosGrafIVA2: TFloatField
      FieldName = 'IVA2'
      Origin = 'IVA2'
    end
    object CDSCpbteEmitidosGrafIVA3: TFloatField
      FieldName = 'IVA3'
      Origin = 'IVA3'
    end
    object CDSCpbteEmitidosGrafTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object CDSCpbteEmitidosGrafOBSERVACIONES1: TStringField
      FieldName = 'OBSERVACIONES1'
      Origin = 'OBSERVACIONES1'
      Size = 60
    end
    object CDSCpbteEmitidosGrafPERCEPCION_IIBB: TFloatField
      FieldName = 'PERCEPCION_IIBB'
      Origin = 'PERCEPCION_IIBB'
    end
    object CDSCpbteEmitidosGrafNETO1: TFloatField
      FieldName = 'NETO1'
      Origin = 'NETO1'
    end
    object CDSCpbteEmitidosGrafNETO2: TFloatField
      FieldName = 'NETO2'
      Origin = 'NETO2'
    end
    object CDSCpbteEmitidosGrafNETO3: TFloatField
      FieldName = 'NETO3'
      Origin = 'NETO3'
    end
    object CDSCpbteEmitidosGrafFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
  end
  object QVista: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * from VISTA_grillas where origen = :origen')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 733
    Top = 656
    object QVistaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QVistaVISTA: TBlobField
      FieldName = 'VISTA'
      Size = 1
    end
    object QVistaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
  end
  object DSPVista: TDataSetProvider
    DataSet = QVista
    Left = 792
    Top = 644
  end
  object CDSVista: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
      end>
    ProviderName = 'DSPVista'
    Left = 849
    Top = 651
    object CDSVistaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSVistaVISTA: TBlobField
      FieldName = 'VISTA'
      Size = 1
    end
    object CDSVistaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
  end
  object DSVista: TDataSource
    DataSet = CDSVista
    Left = 904
    Top = 640
  end
  object QCpbteEmitidos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from lst_cpbtes_emitidos(:desde,:hasta,:sucursal,:tipo,' +
        ':clase,:letra,:unifica,:listartos)')
    Left = 132
    Top = 200
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
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'clase'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'letra'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'UNIFICA'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'LISTARTOS'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end>
  end
  object QAnulados: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select f.id_fc,f.fechavta,f.tipocpbte,f.clasecpbte,f.nrocpbte,f.' +
        'razonsocial,f.nombre,f.cuit,f.anulado,f.netograv2, f.letrafac,f.' +
        'sucfac,f.numerofac,'
      
        '                                    f.total,c.denominacion as Mu' +
        'estraComprobante from fcvtacab f'
      
        '                                    left join comprobantes c on ' +
        'c.sucursal=f.sucursal and  c.letra=f.letrafac and c.tipo_comprob' +
        '=f.tipocpbte and c.clase_comprob=f.clasecpbte and c.compra_venta' +
        '='#39'V'#39
      
        '                                    where f.fechavta>= '#39'01/01/19' +
        '00'#39' and f.Fechavta<= '#39'01/01/2020'#39
      '                                     and f.sucursal=-1'
      '                                     and f.clasecpbte='#39'**'#39
      '                                     and f.letraFac='#39'*'#39
      '                                     and f.tipocpbte='#39'**'#39
      '                                     and f.Anulado<> '#39'N'#39
      
        '                                     order by f.tipocpbte,f.nroc' +
        'pbte')
    Left = 124
    Top = 288
  end
  object popMenuCpbte: TPopupMenu
    Left = 697
    Top = 128
    object GuardarCVS1: TMenuItem
      Action = GuardarOpciones
    end
    object CragraCVS1: TMenuItem
      Action = CargarOpciones
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 561
    Top = 176
  end
  object PopupMenu2: TPopupMenu
    Left = 496
    Top = 416
    object MenuItem1: TMenuItem
      Caption = 'Limpiar Filtros'
      OnClick = MenuItem1Click
    end
  end
end
