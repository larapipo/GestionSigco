inherited FormSaldoGastos: TFormSaldoGastos
  Left = 222
  Top = 96
  Caption = 'Detalle de Gastos'
  ClientHeight = 677
  ClientWidth = 975
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 993
  ExplicitHeight = 718
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 975
    Height = 624
    Align = alClient
    Color = clMenuHighlight
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 975
    ExplicitHeight = 624
    object PageControl1: TPageControl
      Left = 0
      Top = 87
      Width = 975
      Height = 537
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Listado'
        DesignSize = (
          967
          509)
        object dbgSaldos: TJvDBGrid
          Left = 0
          Top = 0
          Width = 967
          Height = 367
          Align = alTop
          Anchors = [akTop, akRight, akBottom]
          DataSource = DSSaldosGastos
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = VerCpbteExecute
          TitleButtons = True
          OnTitleBtnClick = dbgSaldosTitleBtnClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGOGASTO'
              Title.Alignment = taCenter
              Title.Caption = 'Codigo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MUESTRARUBRO'
              Title.Alignment = taCenter
              Title.Caption = 'Rubro'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 169
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MUESTRACTA'
              Title.Alignment = taCenter
              Title.Caption = 'Cuenta de Gasto'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 216
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
              Width = 275
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
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 89
              Visible = True
            end>
        end
        object edTotal: TJvCalcEdit
          Left = 777
          Top = 374
          Width = 121
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akRight, akBottom]
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
        end
        object pnPie: TPanel
          Left = 0
          Top = 398
          Width = 967
          Height = 111
          Align = alBottom
          Anchors = [akRight, akBottom]
          Enabled = False
          TabOrder = 2
          object Label6: TLabel
            Left = 7
            Top = 51
            Width = 33
            Height = 13
            Caption = 'Detalle'
            FocusControl = DBEdit1
          end
          object Label7: TLabel
            Left = 7
            Top = 5
            Width = 13
            Height = 13
            Caption = 'Tp'
          end
          object Label8: TLabel
            Left = 80
            Top = 5
            Width = 78
            Height = 13
            Caption = 'Fecha del Gasto'
          end
          object Label9: TLabel
            Left = 43
            Top = 5
            Width = 9
            Height = 13
            Caption = 'Cl'
          end
          object Label10: TLabel
            Left = 645
            Top = 10
            Width = 134
            Height = 13
            Caption = 'Comprobantes a Contabilizar'
          end
          object DBEdit1: TDBEdit
            Left = 7
            Top = 69
            Width = 567
            Height = 21
            DataField = 'DETALLE'
            DataSource = DSSaldosGastos
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 7
            Top = 21
            Width = 30
            Height = 21
            DataField = 'TIPOCPBTE'
            DataSource = DSSaldosGastos
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 79
            Top = 21
            Width = 141
            Height = 21
            DataField = 'FECHAGASTO'
            DataSource = DSSaldosGastos
            TabOrder = 2
          end
          object DBEdit4: TDBEdit
            Left = 43
            Top = 21
            Width = 30
            Height = 21
            DataField = 'CLASECPBTE'
            DataSource = DSSaldosGastos
            TabOrder = 3
          end
        end
        object chlComprob: TCheckListBox
          Left = 609
          Top = 434
          Width = 256
          Height = 60
          Anchors = [akRight, akBottom]
          ItemHeight = 17
          TabOrder = 3
          OnClick = chlComprobClick
        end
      end
      object Agrupado: TTabSheet
        Caption = 'Agrupado'
        ImageIndex = 1
        object cxDBPivotGrid1: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 967
          Height = 468
          Align = alClient
          DataSource = DSSaldosGastos
          Groups = <>
          LookAndFeel.Kind = lfStandard
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2007Blue'
          OptionsView.ColumnGrandTotalText = 'Total'
          OptionsView.GrandTotalsForSingleValues = True
          OptionsView.RowGrandTotalText = 'Total'
          OptionsView.TotalsForSingleValues = True
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnMouseDown = cxDBPivotGrid1MouseDown
          OnMouseMove = cxDBPivotGrid1MouseMove
          OnMouseUp = cxDBPivotGrid1MouseUp
          object cxDBPivotGrid1Field1: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'CODIGOGASTO'
            Visible = True
            UniqueName = 'Cod.Gast.'
          end
          object cxDBPivotGrid1Field2: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'MUESTRACTA'
            MinWidth = 90
            Visible = True
            Width = 200
            UniqueName = 'Detalle Cta'
          end
          object cxDBPivotGrid1Field3: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'MUESTRARUBRO'
            Visible = True
            Width = 150
            UniqueName = 'Detalle Rubro'
          end
          object cxDBPivotGrid1Field4: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'DETALLE'
            Visible = True
            UniqueName = 'Detalle del Gsto.'
          end
          object cxDBPivotGrid1Field5: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'FECHAGASTO'
            Visible = True
            UniqueName = 'Fecha Gas.'
          end
          object cxDBPivotGrid1Field6: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'MES'
            Visible = True
            UniqueName = 'Mes'
          end
          object cxDBPivotGrid1Field7: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'IMPORTE'
            Visible = True
            UniqueName = 'Importe'
          end
          object cxDBPivotGrid1Field8: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'NROCPBTE'
            Visible = True
            UniqueName = 'Nro.Cpbte'
          end
          object cxDBPivotGrid1Field9: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'MUESTRASUCURSAL'
            Visible = True
            UniqueName = 'Sucursal'
          end
        end
        object pnTotales: TJvPanel
          Left = 3
          Top = 211
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
          object Label13: TLabel
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
            Left = 288
            Top = 5
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
        object pnPie2: TPanel
          Left = 0
          Top = 468
          Width = 967
          Height = 41
          Align = alBottom
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 2
          DesignSize = (
            967
            41)
          object Label11: TLabel
            Left = 10
            Top = 12
            Width = 76
            Height = 13
            Cursor = crHandPoint
            Caption = 'Mostrar Campos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label11Click
          end
          object Label14: TLabel
            Left = 128
            Top = 12
            Width = 76
            Height = 13
            Cursor = crHandPoint
            Caption = 'Muestra Totales'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label14Click
          end
          object btExcelGastos: TBitBtn
            Left = 811
            Top = 6
            Width = 70
            Height = 22
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
            TabOrder = 0
            OnClick = btExcelGastosClick
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Egreso-Compras'
        ImageIndex = 2
        object dbgGastoCompra: TJvDBGrid
          Left = 0
          Top = 0
          Width = 967
          Height = 509
          Align = alClient
          DataSource = DSGasto_Compra
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = VerCpbteExecute
          TitleButtons = True
          OnTitleBtnClick = dbgGastoCompraTitleBtnClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGOGASTO'
              Title.Alignment = taCenter
              Title.Caption = 'Codigo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MUESTRARUBRO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 169
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MUESTRACTA'
              Title.Alignment = taCenter
              Title.Caption = 'Cuenta de Gasto'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 213
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
              Width = 277
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPOCPBTE'
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLASECPBTE'
              Width = 29
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
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 89
              Visible = True
            end>
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Agrupado'
        ImageIndex = 3
        object cxDBPivotGrid2: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 967
          Height = 468
          Align = alClient
          DataSource = DSGasto_Compra
          Groups = <>
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2007Blue'
          OptionsView.ColumnGrandTotalText = 'Total'
          OptionsView.GrandTotalsForSingleValues = True
          OptionsView.RowGrandTotalText = 'Total'
          OptionsView.TotalsForSingleValues = True
          PopupMenu = PopupMenu1
          TabOrder = 0
          object cxDBPivotGridField1: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'CODIGOGASTO'
            Visible = True
            UniqueName = 'Cta.Gasto'
          end
          object cxDBPivotGridField2: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'MUESTRACTA'
            MinWidth = 90
            Visible = True
            Width = 200
            UniqueName = 'Detalle Cta'
          end
          object cxDBPivotGridField3: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'MUESTRARUBRO'
            Visible = True
            Width = 150
            UniqueName = 'Detalle Rubro'
          end
          object cxDBPivotGridField4: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'DETALLE'
            Visible = True
            UniqueName = 'Detalle'
          end
          object cxDBPivotGridField5: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'FECHAGASTO'
            Visible = True
            UniqueName = 'Fecha'
          end
          object cxDBPivotGridField6: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'MES'
            Visible = True
            UniqueName = 'Mes'
          end
          object cxDBPivotGridField7: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'IMPORTE'
            Visible = True
            UniqueName = 'Importe'
          end
          object cxDBPivotGridField8: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'NROCPBTE'
            Visible = True
            UniqueName = 'Nro.Cpbte'
          end
          object cxDBPivotGrid2Field1: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'CLASECPBTE'
            Visible = True
            UniqueName = 'Cla.'
          end
          object cxDBPivotGrid2Field2: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'TIPOCPBTE'
            Visible = True
            UniqueName = 'Tp'
          end
          object cxDBPivotGrid2Field3: TcxDBPivotGridField
            AreaIndex = 6
            DataBinding.FieldName = 'CTRO_COSTO_NOM'
            Visible = True
            UniqueName = 'Ctro de Costo'
          end
          object cxDBPivotGrid2Field4: TcxDBPivotGridField
            AreaIndex = 7
            DataBinding.FieldName = 'CTRO_COSTO_IMPUT'
            Visible = True
            UniqueName = 'Imp.a Ctro Costo'
          end
          object cxDBPivotGrid2Field5: TcxDBPivotGridField
            AreaIndex = 8
            DataBinding.FieldName = 'CTRO_COSTO_PORCEN'
            Visible = True
            UniqueName = '% Ctro Costo'
          end
          object cxDBPivotGrid2Field6: TcxDBPivotGridField
            AreaIndex = 9
            DataBinding.FieldName = 'SUCURSAL'
            Visible = True
            UniqueName = 'Sucursal'
          end
          object cxDBPivotGrid2Field7: TcxDBPivotGridField
            AreaIndex = 10
            DataBinding.FieldName = 'ID_EGRESO'
            Visible = True
            UniqueName = 'Id'
          end
        end
        object pnTotales_2: TJvPanel
          Left = 23
          Top = 453
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
          object Label16: TLabel
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
          object SpeedButton2: TSpeedButton
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
            OnClick = SpeedButton2Click
          end
          object chOpSumas_2: TCheckListBox
            Left = 11
            Top = 32
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
            OnClick = chOpSumas_2Click
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 468
          Width = 967
          Height = 41
          Align = alBottom
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 2
          DesignSize = (
            967
            41)
          object Label12: TLabel
            Left = 23
            Top = 12
            Width = 76
            Height = 13
            Cursor = crHandPoint
            Caption = 'Mostrar Campos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label12Click
          end
          object Label15: TLabel
            Left = 128
            Top = 12
            Width = 76
            Height = 13
            Cursor = crHandPoint
            Caption = 'Muestra Totales'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label15Click
          end
          object btExcelGastoCompra: TBitBtn
            Left = 848
            Top = 6
            Width = 70
            Height = 22
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
            TabOrder = 0
            OnClick = btExcelGastoCompraClick
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 975
      Height = 87
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      object Label1: TLabel
        Left = 750
        Top = 2
        Width = 106
        Height = 13
        Caption = 'Per'#237'odo Seleccionado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 214
        Top = 5
        Width = 80
        Height = 13
        Caption = 'Rubro de Gastos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 431
        Top = 2
        Width = 85
        Height = 13
        Caption = 'Cuentas de Gasto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 7
        Top = 3
        Width = 41
        Height = 13
        Caption = 'Sucursal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 7
        Top = 45
        Width = 77
        Height = 13
        Caption = 'Cuentas de caja'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object UpDown1: TUpDown
        Left = 937
        Top = 19
        Width = 16
        Height = 20
        Hint = 'Cambia el Per'#237'odo'
        Max = 10000
        ParentShowHint = False
        Position = 100
        ShowHint = True
        TabOrder = 0
        OnClick = UpDown1Click
      end
      object Desde: TJvDateEdit
        Left = 750
        Top = 19
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
      object Hasta: TJvDateEdit
        Left = 846
        Top = 19
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
        TabOrder = 2
      end
      object lcRubros: TJvDBLookupCombo
        Left = 214
        Top = 18
        Width = 201
        Height = 21
        DisplayEmpty = 'Todos Los Rubros'
        EmptyValue = '***'
        LookupField = 'CODIGO'
        LookupDisplay = 'DETALLE'
        LookupSource = DSRubros
        TabOrder = 3
        OnClick = lcRubrosClick
        OnEnter = lcRubrosEnter
      end
      object lcCuentas: TJvDBLookupCombo
        Left = 431
        Top = 18
        Width = 282
        Height = 21
        DisplayEmpty = 'Todas Las Cuentas'
        EmptyValue = '******'
        LookupField = 'CODIGO'
        LookupDisplay = 'DETALLE'
        LookupSource = DSCuentas
        TabOrder = 4
        OnClick = lcCuentasClick
        OnEnter = lcCuentasEnter
      end
      object dbcSucursal: TJvDBLookupCombo
        Left = 7
        Top = 19
        Width = 201
        Height = 21
        DisplayEmpty = 'Todas Las Sucursales'
        EmptyValue = '-1'
        LookupField = 'CODIGO'
        LookupDisplay = 'DETALLE'
        LookupSource = DSSucursal
        TabOrder = 5
        OnClick = dbcSucursalClick
      end
      object dbcCaja: TJvDBLookupCombo
        Left = 7
        Top = 61
        Width = 201
        Height = 21
        DropDownCount = 12
        DisplayEmpty = 'Todas Las Cuentas'
        EmptyValue = '-1'
        LookupField = 'ID_CUENTA'
        LookupDisplay = 'NOMBRE'
        LookupSource = DSCajas
        TabOrder = 6
        OnClick = lcCuentasClick
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 624
    Width = 975
    Align = alBottom
    ExplicitTop = 624
    ExplicitWidth = 975
    inherited btConfirma: TBitBtn
      Width = 47
      DoubleBuffered = True
      ExplicitWidth = 47
    end
    inherited btNuevo: TBitBtn
      Left = 49
      Width = 32
      DoubleBuffered = True
      ExplicitLeft = 49
      ExplicitWidth = 32
    end
    inherited btCancelar: TBitBtn
      Left = 81
      Width = 32
      DoubleBuffered = True
      ExplicitLeft = 81
      ExplicitWidth = 32
    end
    inherited btModificar: TBitBtn
      Left = 113
      Width = 32
      DoubleBuffered = True
      ExplicitLeft = 113
      ExplicitWidth = 32
    end
    inherited Pr: TSpeedButton
      Left = 145
      ExplicitLeft = 145
    end
    inherited btBuscar: TBitBtn
      Left = 160
      DoubleBuffered = True
      ExplicitLeft = 160
    end
    inherited Ne: TSpeedButton
      Left = 235
      ExplicitLeft = 235
    end
    inherited btBorrar: TBitBtn
      Left = 250
      Width = 21
      DoubleBuffered = True
      ExplicitLeft = 250
      ExplicitWidth = 21
    end
    inherited btSalir: TBitBtn
      Left = 271
      DoubleBuffered = True
      TabOrder = 7
      ExplicitLeft = 271
    end
    object ToolButton1: TToolButton
      Left = 346
      Top = 0
      Width = 21
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btImprimir: TBitBtn
      Left = 367
      Top = 0
      Width = 75
      Height = 29
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
      TabOrder = 6
    end
    object btExcel: TBitBtn
      Left = 442
      Top = 0
      Width = 75
      Height = 29
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
      TabOrder = 8
      OnClick = btExcelClick
    end
    object ToolButton2: TToolButton
      Left = 517
      Top = 0
      Width = 28
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object chDetalle: TCheckBox
      Left = 545
      Top = 0
      Width = 137
      Height = 29
      Caption = 'Imprimir con detalles'
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
  end
  inherited Panel1: TPanel
    Top = 654
    Width = 975
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 654
    ExplicitWidth = 975
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
      Visible = False
    end
    inherited sbEstado: TStatusBar
      Width = 886
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 886
    end
  end
  inherited ActionList1: TActionList
    Left = 656
    Top = 152
    inherited Agregar: TAction
      Visible = False
    end
    inherited Borrar: TAction
      Visible = False
    end
    inherited Modificar: TAction
      Visible = False
    end
    inherited Confirma: TAction
      Visible = False
    end
    inherited Cancelar: TAction
      Visible = False
    end
    inherited Prev: TAction
      Visible = False
    end
    inherited Next: TAction
      Visible = False
    end
    object Imprimir: TAction
      Caption = '&Imprimir'
      OnExecute = ImprimirExecute
    end
    object Filtrar: TAction
      Caption = 'Filtrar'
      OnExecute = FiltrarExecute
    end
    object VerCpbte: TAction
      Caption = 'VerCpbte'
      OnExecute = VerCpbteExecute
    end
    object Sumar: TAction
      Caption = 'Sumar'
      OnExecute = SumarExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 632
    Top = 64
  end
  inherited ImageList1: TImageList
    Left = 448
    Top = 32
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
    Left = 544
    Top = 304
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 120
    Top = 248
  end
  inherited QBrowse2: TFDQuery
    Left = 40
    Top = 208
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 32
    Top = 440
  end
  object DSSaldosGastos: TDataSource
    DataSet = QSaldoGastos
    Left = 120
    Top = 320
  end
  object frListaGastos: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.789569039350000000
    ReportOptions.LastChange = 39638.789569039350000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 200
    Top = 240
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frDBGastos: TfrxDBDataset
    UserName = 'frDBGastos'
    CloseDataSource = False
    DataSource = DSSaldosGastos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 200
    Top = 184
    FieldDefs = <
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'ID_EGRESO'
        FieldAlias = 'ID_EGRESO'
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
        FieldName = 'RUBROGASTO'
        FieldAlias = 'RUBROGASTO'
      end
      item
        FieldName = 'CODIGOGASTO'
        FieldAlias = 'CODIGOGASTO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'MUESTRARUBRO'
        FieldAlias = 'MUESTRARUBRO'
      end
      item
        FieldName = 'MUESTRAIDCOMPROBANTE'
        FieldAlias = 'MUESTRAIDCOMPROBANTE'
      end
      item
        FieldName = 'MUESTRACTA'
        FieldAlias = 'MUESTRACTA'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'FECHAGASTO'
        FieldAlias = 'FECHAGASTO'
      end
      item
        FieldName = 'ID_CUENTA_CAJA'
        FieldAlias = 'ID_CUENTA_CAJA'
      end
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'MES'
        FieldAlias = 'MES'
      end>
  end
  object DSRubros: TDataSource
    DataSet = QRubros
    Left = 696
    Top = 248
  end
  object DSCuentas: TDataSource
    DataSet = QCuentas
    Left = 704
    Top = 296
  end
  object DSSucursal: TDataSource
    DataSet = CDSSucursal
    Left = 600
    Top = 144
  end
  object frDBEmpresa: TfrxDBDataset
    UserName = 'frDBEmpresa'
    CloseDataSource = False
    DataSet = CDSEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 536
    Top = 360
    FieldDefs = <
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'ACTIVIDAD'
        FieldAlias = 'ACTIVIDAD'
      end
      item
        FieldName = 'DIRECCION'
        FieldAlias = 'DIRECCION'
      end
      item
        FieldName = 'LOCALIDAD'
        FieldAlias = 'LOCALIDAD'
      end
      item
        FieldName = 'CORREO'
        FieldAlias = 'CORREO'
      end
      item
        FieldName = 'TELEFONO1'
        FieldAlias = 'TELEFONO1'
      end
      item
        FieldName = 'TELEFONO2'
        FieldAlias = 'TELEFONO2'
      end
      item
        FieldName = 'CUIT'
        FieldAlias = 'CUIT'
      end
      item
        FieldName = 'CONDICIONIVA'
        FieldAlias = 'CONDICIONIVA'
      end
      item
        FieldName = 'NRO_AGTE_RET_INGBRUTOS'
        FieldAlias = 'NRO_AGTE_RET_INGBRUTOS'
      end
      item
        FieldName = 'LOGO'
        FieldAlias = 'LOGO'
      end
      item
        FieldName = 'CPOSTAL'
        FieldAlias = 'CPOSTAL'
      end
      item
        FieldName = 'NRO_AGTE_RET_GANANCIA'
        FieldAlias = 'NRO_AGTE_RET_GANANCIA'
      end
      item
        FieldName = 'AG_RET_GANANCIA'
        FieldAlias = 'AG_RET_GANANCIA'
      end
      item
        FieldName = 'AG_RET_ING_BRUTOS'
        FieldAlias = 'AG_RET_ING_BRUTOS'
      end
      item
        FieldName = 'AG_PERCEPCION_ING_BRUTOS'
        FieldAlias = 'AG_PERCEPCION_ING_BRUTOS'
      end
      item
        FieldName = 'TASA_PERCEPCION_IB'
        FieldAlias = 'TASA_PERCEPCION_IB'
      end
      item
        FieldName = 'MINO_IMP_PERCEP_IB'
        FieldAlias = 'MINO_IMP_PERCEP_IB'
      end>
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = DMMain_FD.QEmpresa
    Options = [poAllowCommandText]
    Left = 48
    Top = 520
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    Left = 104
    Top = 520
  end
  object DSCajas: TDataSource
    DataSet = QCajas
    Left = 704
    Top = 344
  end
  object DataToXLS: TDataToXLS
    DataSet = QSaldoGastos
    Columns = <
      item
        DataField = 'NROCPBTE'
        Title = 'Nro.Cpbte'
        Alignment = taCenter
      end
      item
        DataField = 'ID_EGRESO'
        Title = 'ID_EGRESO'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'TIPOCPBTE'
        Title = 'Tp'
      end
      item
        DataField = 'CLASECPBTE'
        Title = 'Cl'
      end
      item
        DataField = 'RUBROGASTO'
        Title = 'Rub'
      end
      item
        DataField = 'CODIGOGASTO'
        Title = 'Cod.Gast.'
      end
      item
        DataField = 'DETALLE'
        Title = 'Detalle'
      end
      item
        DataField = 'MUESTRARUBRO'
        Title = 'Detalle Rubro'
      end
      item
        DataField = 'MUESTRAIDCOMPROBANTE'
        Title = 'MUESTRAIDCOMPROBANTE'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'MUESTRACTA'
        Title = 'Detalle Cta'
      end
      item
        DataField = 'IMPORTE'
        Title = 'Importe'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'FECHAGASTO'
        Title = 'Fecha Gas.'
      end
      item
        DataField = 'ID_CUENTA_CAJA'
        Title = 'ID_CUENTA_CAJA'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'NOMBRE'
        Title = 'NOMBRE'
      end
      item
        DataField = 'MES'
        Title = 'Mes'
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
    Left = 464
    Top = 406
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
    Left = 576
    Top = 601
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'XLS'
    Left = 416
    Top = 376
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 176
    Top = 512
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
    Left = 64
    Top = 576
  end
  object CDSComprobantes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPComprobantes'
    Left = 376
    Top = 144
    object CDSComprobantesID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSComprobantesTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      FixedChar = True
      Size = 2
    end
    object CDSComprobantesCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      FixedChar = True
      Size = 2
    end
    object CDSComprobantesDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
  end
  object DSPComprobantes: TDataSetProvider
    DataSet = QComprobantes
    Left = 416
    Top = 184
  end
  object DSGasto_Compra: TDataSource
    DataSet = QGasto_Compra
    Left = 168
    Top = 424
  end
  object frDBGastoCompra: TfrxDBDataset
    UserName = 'frDBGastoCompra'
    CloseDataSource = False
    DataSource = DSGasto_Compra
    BCDToCurrency = False
    DataSetOptions = []
    Left = 592
    Top = 392
    FieldDefs = <
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'ID_EGRESO'
        FieldAlias = 'ID_EGRESO'
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
        FieldName = 'RUBROGASTO'
        FieldAlias = 'RUBROGASTO'
      end
      item
        FieldName = 'CODIGOGASTO'
        FieldAlias = 'CODIGOGASTO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'MUESTRARUBRO'
        FieldAlias = 'MUESTRARUBRO'
      end
      item
        FieldName = 'MUESTRAIDCOMPROBANTE'
        FieldAlias = 'MUESTRAIDCOMPROBANTE'
      end
      item
        FieldName = 'MUESTRACTA'
        FieldAlias = 'MUESTRACTA'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'ID_CUENTA_CAJA'
        FieldAlias = 'ID_CUENTA_CAJA'
      end
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'FECHAGASTO'
        FieldAlias = 'FECHAGASTO'
      end
      item
        FieldName = 'MES'
        FieldAlias = 'MES'
      end
      item
        FieldName = 'ANIO'
        FieldAlias = 'ANIO'
      end
      item
        FieldName = 'CTRO_COSTO_NOM'
        FieldAlias = 'CTRO_COSTO_NOM'
      end
      item
        FieldName = 'CTRO_COSTO_IMPUT'
        FieldAlias = 'CTRO_COSTO_IMPUT'
      end
      item
        FieldName = 'CTRO_COSTO_PORCEN'
        FieldAlias = 'CTRO_COSTO_PORCEN'
      end>
  end
  object QComprobantes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select id_comprobante,tipo_comprob,clase_comprob,denominacion  f' +
        'rom comprobantes where  tipo_comprob='#39'EC'#39)
    Left = 340
    Top = 200
    object QComprobantesID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QComprobantesTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobantesCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobantesDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
  end
  object QSaldoGastos: TFDQuery
    OnCalcFields = QSaldoGastosCalcFields
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select egc.nrocpbte,egc.id_egreso,egc.tipocpbte,egc.clasecpbte, ' +
        'eg.rubrogasto, eg.codigogasto,'
      
        'eg.detalle,rb.detalle as MuestraRubro,cpbte.id_comprobante as Mu' +
        'estraIdComprobante,'
      
        'cta.detalle as MuestraCta,eg.importe,eg.FechaGasto,cm.id_cuenta_' +
        'caja,cc.nombre,eg.id,suc.detalle as MuestraSucursal from Egr_caj' +
        'a_detalle eg'
      
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
      'left join sucursal suc on suc.codigo=egc.sucursalventa '
      'where eg.fechagasto between :desde and :Hasta'
      ' and ((egc.sucursalventa = :suc ) or ( :suc = -1 ))'
      
        ' and ((cm.id_cuenta_caja = :caja ) or ( :caja = -1 )) and (cm.id' +
        '_cuenta_caja<>0)'
      ' and ((eg.rubrogasto = :Rubro) or ( :Rubro = '#39'***'#39' ) )'
      
        ' and ((eg.codigogasto = :codigo ) or ( :codigo = '#39'******'#39' )) and' +
        ' cta.excluye<>'#39'S'#39
      ''
      
        'group by egc.nrocpbte,egc.id_egreso,egc.tipocpbte,egc.clasecpbte' +
        ', eg.rubrogasto, eg.codigogasto,'
      
        'eg.detalle,rb.detalle,cpbte.id_comprobante,cta.detalle,eg.import' +
        'e, eg.FechaGasto,cm.id_cuenta_caja,cc.nombre,eg.id,suc.detalle'
      ' order by eg.rubrogasto,eg.codigogasto,eg.FechaGasto')
    Left = 28
    Top = 328
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
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CAJA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'RUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
    object QSaldoGastosNROCPBTE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object QSaldoGastosID_EGRESO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Id Egr.'
      FieldName = 'ID_EGRESO'
      Origin = 'ID_EGRESO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QSaldoGastosTIPOCPBTE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QSaldoGastosCLASECPBTE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QSaldoGastosRUBROGASTO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cod.Rubro'
      FieldName = 'RUBROGASTO'
      Origin = 'RUBROGASTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object QSaldoGastosCODIGOGASTO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cod.Cta'
      FieldName = 'CODIGOGASTO'
      Origin = 'CODIGOGASTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object QSaldoGastosDETALLE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QSaldoGastosMUESTRARUBRO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Det.Rubro'
      FieldName = 'MUESTRARUBRO'
      Origin = 'MUESTRARUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QSaldoGastosMUESTRAIDCOMPROBANTE: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Id.Cpbte'
      FieldName = 'MUESTRAIDCOMPROBANTE'
      Origin = 'MUESTRAIDCOMPROBANTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QSaldoGastosMUESTRACTA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Det.Cta'
      FieldName = 'MUESTRACTA'
      Origin = 'MUESTRACTA'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QSaldoGastosIMPORTE: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QSaldoGastosFECHAGASTO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      DisplayLabel = 'F.Gasto'
      FieldName = 'FECHAGASTO'
      Origin = 'FECHAGASTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QSaldoGastosID_CUENTA_CAJA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Id.Cta Caja'
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QSaldoGastosNOMBRE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QSaldoGastosID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
    object QSaldoGastosMES: TStringField
      DisplayLabel = 'Mes'
      FieldKind = fkCalculated
      FieldName = 'MES'
      Calculated = True
    end
    object QSaldoGastosMUESTRASUCURSAL: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sucursal'
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'MUESTRASUCURSAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
  end
  object QCajas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from cuenta_caja where id_tipo_cta=1')
    Left = 644
    Top = 344
    object QCajasID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Origin = 'ID_CUENTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCajasID_TIPO_CTA: TIntegerField
      FieldName = 'ID_TIPO_CTA'
      Origin = 'ID_TIPO_CTA'
      Required = True
    end
    object QCajasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object QCajasNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Origin = 'NRO_CUENTA'
      Size = 15
    end
    object QCajasID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
    end
    object QCajasCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QCajasRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object QCuentas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from gastos_cuentas where codigo_rubro=:Rubro'
      'order by detalle')
    Left = 644
    Top = 288
    ParamData = <
      item
        Name = 'RUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
        Value = Null
      end>
    object QCuentasCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QCuentasCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QCuentasDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
    object QCuentasEXCLUYE: TStringField
      FieldName = 'EXCLUYE'
      Origin = 'EXCLUYE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QRubros: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from gastos_rubros'
      'order by detalle')
    Left = 644
    Top = 240
    object QRubrosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QRubrosDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
  end
  object QGasto_Compra: TFDQuery
    OnCalcFields = QGasto_CompraCalcFields
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from test_saldos (:desde,:hasta,:suc,:rubro,:codigo,:ca' +
        'ja)')
    Left = 124
    Top = 432
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
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'RUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Name = 'CAJA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QGasto_CompraNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object QGasto_CompraID_EGRESO: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_EGRESO'
      Origin = 'ID_EGRESO'
    end
    object QGasto_CompraTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QGasto_CompraCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QGasto_CompraRUBROGASTO: TStringField
      DisplayLabel = 'Cod.Rubro'
      FieldName = 'RUBROGASTO'
      Origin = 'RUBROGASTO'
      Size = 3
    end
    object QGasto_CompraCODIGOGASTO: TStringField
      DisplayLabel = 'Cta.Gasto'
      FieldName = 'CODIGOGASTO'
      Origin = 'CODIGOGASTO'
      Size = 6
    end
    object QGasto_CompraDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object QGasto_CompraMUESTRARUBRO: TStringField
      DisplayLabel = 'Detalle Rubro'
      FieldName = 'MUESTRARUBRO'
      Origin = 'MUESTRARUBRO'
      Size = 50
    end
    object QGasto_CompraMUESTRAIDCOMPROBANTE: TIntegerField
      DisplayLabel = 'Id-Cpbte'
      FieldName = 'MUESTRAIDCOMPROBANTE'
      Origin = 'MUESTRAIDCOMPROBANTE'
    end
    object QGasto_CompraMUESTRACTA: TStringField
      DisplayLabel = 'Detalle Cta'
      FieldName = 'MUESTRACTA'
      Origin = 'MUESTRACTA'
      Size = 50
    end
    object QGasto_CompraIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QGasto_CompraID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
    end
    object QGasto_CompraNOMBRE: TStringField
      DisplayLabel = 'Nombre Caja'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object QGasto_CompraCTRO_COSTO_ID: TIntegerField
      FieldName = 'CTRO_COSTO_ID'
      Origin = 'CTRO_COSTO_ID'
    end
    object QGasto_CompraCTRO_COSTO_NOM: TStringField
      DisplayLabel = 'Ctr de Costo'
      FieldName = 'CTRO_COSTO_NOM'
      Origin = 'CTRO_COSTO_NOM'
      Size = 45
    end
    object QGasto_CompraCTRO_COSTO_IMPUT: TFloatField
      DisplayLabel = 'Imp.a Ctro Costo'
      FieldName = 'CTRO_COSTO_IMPUT'
      Origin = 'CTRO_COSTO_IMPUT'
      DisplayFormat = ',0.00'
    end
    object QGasto_CompraCTRO_COSTO_PORCEN: TFloatField
      DisplayLabel = '% Ctro Costo'
      FieldName = 'CTRO_COSTO_PORCEN'
      Origin = 'CTRO_COSTO_PORCEN'
      DisplayFormat = ',0.00'
    end
    object QGasto_CompraMES: TStringField
      DisplayLabel = 'Mes'
      FieldKind = fkCalculated
      FieldName = 'MES'
      Calculated = True
    end
    object QGasto_CompraANIO: TStringField
      FieldKind = fkCalculated
      FieldName = 'ANIO'
      Size = 4
      Calculated = True
    end
    object QGasto_CompraSUCURSAL: TStringField
      DisplayLabel = 'Sucursal'
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Size = 35
    end
    object QGasto_CompraFECHAGASTO: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHAGASTO'
      Origin = 'FECHAGASTO'
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.WindowState = wsMaximized
    Version = 0
    Left = 885
    Top = 336
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
      ReportDocument.CreationDate = 45567.849192407400000000
      OptionsExpanding.AutoExpandColumns = True
      OptionsExpanding.AutoExpandRows = True
      OptionsView.ExpandButtons = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link2: TcxPivotGridReportLink
      Active = True
      Component = cxDBPivotGrid2
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 6400
      PrinterPage.Margins.Left = 5000
      PrinterPage.Margins.Right = 5000
      PrinterPage.Margins.Top = 6400
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45567.849192418980000000
      OptionsView.ColumnFields = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 845
    Top = 272
    object LimpiarFiltros: TMenuItem
      Caption = 'Limpiar Filtros'
      OnClick = LimpiarFiltrosClick
    end
  end
end
