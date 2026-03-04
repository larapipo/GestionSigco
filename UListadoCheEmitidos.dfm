inherited FormListadoCheEmitidos: TFormListadoCheEmitidos
  Left = 284
  Top = 93
  Caption = 'Listado de Che. Emitidos'
  ClientHeight = 729
  ClientWidth = 1332
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1350
  ExplicitHeight = 770
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1332
    Height = 676
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    OnMouseMove = pnPrincipalMouseMove
    ExplicitWidth = 1332
    ExplicitHeight = 676
    object pcDatos: TPageControl
      Left = 0
      Top = 88
      Width = 1332
      Height = 588
      ActivePage = pag1
      Align = alClient
      TabOrder = 0
      object pag1: TTabSheet
        Caption = 'Movimientos'
        object cxgCheques: TcxGrid
          Left = 0
          Top = 0
          Width = 1324
          Height = 471
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'iMaginary'
          object cxgChequesDBTableView1: TcxGridDBTableView
            PopupMenu = pm1
            OnCustomDrawCell = cxgChequesDBTableView1CustomDrawCell
            DataController.DataSource = DSCheEmitidos
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'IMPORTE'
                Column = cxgChequesDBTableView1IMPORTE
              end>
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsView.CellAutoHeight = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OnColumnHeaderClick = cxgChequesDBTableView1ColumnHeaderClick
            object cxgChequesDBTableView1ID_CUENTA_BANCO: TcxGridDBColumn
              DataBinding.FieldName = 'ID_CUENTA_BANCO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 76
            end
            object cxgChequesDBTableView1NOMBRECTABANCO: TcxGridDBColumn
              DataBinding.FieldName = 'NOMBRECTABANCO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxgChequesDBTableView1MUESTRABANCO: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRABANCO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxgChequesDBTableView1FECHA_EMISION: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA_EMISION'
              HeaderAlignmentHorz = taCenter
            end
            object cxgChequesDBTableView1FECHA_COBRO: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA_COBRO'
              HeaderAlignmentHorz = taCenter
            end
            object cxgChequesDBTableView1FECHA_DEBITO: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA_DEBITO'
              HeaderAlignmentHorz = taCenter
            end
            object cxgChequesDBTableView1ORDEN_DE: TcxGridDBColumn
              DataBinding.FieldName = 'ORDEN_DE'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              HeaderAlignmentHorz = taCenter
            end
            object cxgChequesDBTableView1NUMERO: TcxGridDBColumn
              DataBinding.FieldName = 'NUMERO'
              HeaderAlignmentHorz = taCenter
            end
            object cxgChequesDBTableView1IMPORTE: TcxGridDBColumn
              DataBinding.FieldName = 'IMPORTE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 87
            end
            object cxgChequesDBTableView1ID_CHEQUERA: TcxGridDBColumn
              DataBinding.FieldName = 'ID_CHEQUERA'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxgChequesDBTableView1ID_CAJA: TcxGridDBColumn
              DataBinding.FieldName = 'ID_CAJA'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxgChequesDBTableView1ID_CUENTA_CAJA: TcxGridDBColumn
              DataBinding.FieldName = 'ID_CUENTA_CAJA'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxgChequesDBTableView1ID_BANCO: TcxGridDBColumn
              DataBinding.FieldName = 'ID_BANCO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxgChequesDBTableView1ID_MOV_CAJA: TcxGridDBColumn
              DataBinding.FieldName = 'ID_MOV_CAJA'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxgChequesDBTableView1ANULADO: TcxGridDBColumn
              DataBinding.FieldName = 'ANULADO'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxgChequesDBTableView1ID_CHEQUE_PRO: TcxGridDBColumn
              DataBinding.FieldName = 'ID_CHEQUE_PRO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxgChequesDBTableView1DEBITADO: TcxGridDBColumn
              DataBinding.FieldName = 'DEBITADO'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 71
            end
            object cxgChequesDBTableView1MUESTRANOMBRECTACAJA: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRANOMBRECTACAJA'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxgChequesDBTableView1CUIT: TcxGridDBColumn
              DataBinding.FieldName = 'CUIT'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxgChequesDBTableView1CONCILIADO: TcxGridDBColumn
              DataBinding.FieldName = 'CONCILIADO'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 57
            end
          end
          object cxgChequesLevel1: TcxGridLevel
            GridView = cxgChequesDBTableView1
          end
        end
        object pnPieMov: TPanel
          Left = 0
          Top = 471
          Width = 1324
          Height = 89
          Align = alBottom
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 1
          object dbgMov: TDBGrid
            Left = 4
            Top = 8
            Width = 679
            Height = 73
            Align = alCustom
            BorderStyle = bsNone
            Color = clMenuHighlight
            DataSource = DSQMov
            Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = VerCpbteExecute
            OnMouseMove = dbgMovMouseMove
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'FECHA_CAJA'
                Title.Alignment = taCenter
                Title.Caption = 'Fecha de Caja'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'FECHA_OPERACION'
                Title.Alignment = taCenter
                Title.Caption = 'Fecha Op.'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 122
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'TIPO_COMPROB'
                Title.Alignment = taCenter
                Title.Caption = 'Tc.'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 35
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'NRO_COMPROBANTE'
                Title.Alignment = taCenter
                Title.Caption = 'Nro.Cpbte'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 88
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'MUESTRACTACAJA'
                Title.Alignment = taCenter
                Title.Caption = 'Caja'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 163
                Visible = True
              end>
          end
        end
      end
      object pag2: TTabSheet
        Caption = 'Movimientos Conciliados en Banco'
        ImageIndex = 1
        object JvDBGrid1: TJvDBGrid
          Left = 0
          Top = 0
          Width = 1324
          Height = 560
          Align = alClient
          DataSource = DSControlMovBco
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitlePopup = poMenuMov
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Cross Tab'
        ImageIndex = 2
        object cxDBPivotGrid1: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 1324
          Height = 503
          Customization.AvailableFieldsSorted = True
          Align = alClient
          DataSource = DSCheEmitidos
          Groups = <>
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          OptionsDataField.IsCaptionAssigned = True
          OptionsDataField.Caption = 'Datos'
          OptionsView.ColumnGrandTotalText = 'Importe'
          OptionsView.ColumnGrandTotalWidth = 85
          OptionsView.RowGrandTotalText = 'Total'
          PopupMenu = PopupMenu2
          TabOrder = 0
          OnMouseDown = cxDBPivotGrid1MouseDown
          OnMouseMove = cxDBPivotGrid1MouseMove
          OnMouseUp = cxDBPivotGrid1MouseUp
          object cxDBPivotGrid1Field1: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'MUESTRANOMBRECTACAJA'
            Visible = True
            UniqueName = 'Cta.de Caja'
          end
          object cxDBPivotGrid1Field2: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'MUESTRABANCO'
            Visible = True
            UniqueName = 'Banco'
          end
          object cxDBPivotGrid1Field3: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'FECHA_COBRO'
            Visible = True
            UniqueName = 'A Cobrar el'
          end
          object cxDBPivotGrid1Field4: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'FECHA_DEBITO'
            Visible = True
            UniqueName = 'F.Debito'
          end
          object cxDBPivotGrid1Field5: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'FECHA_EMISION'
            Visible = True
            UniqueName = 'F.Emisi'#243'n'
          end
          object cxDBPivotGrid1Field6: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'DEBITADO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Debitado'
          end
          object cxDBPivotGrid1Field7: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'IMPORTE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = True
            UniqueName = 'Importe'
          end
          object cxDBPivotGrid1Field8: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 2
            DataBinding.FieldName = 'NUMERO'
            PropertiesClassName = 'TcxTextEditProperties'
            Visible = True
            UniqueName = 'Numero'
          end
          object cxDBPivotGrid1Field9: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'ORDEN_DE'
            Visible = True
            UniqueName = 'A la Orden de'
          end
          object cxDBPivotGrid1Field10: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'CONCILIADO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Conc.Bco'
          end
          object cxDBPivotGrid1Field12: TcxDBPivotGridField
            AreaIndex = 5
            IsCaptionAssigned = True
            Caption = 'Anulado'
            DataBinding.FieldName = 'ANULADO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = True
            UniqueName = 'Anulado'
          end
        end
        object pnTotales: TJvPanel
          Left = 3
          Top = 260
          Width = 320
          Height = 125
          Color = clTeal
          Padding.Left = 10
          Padding.Top = 10
          Padding.Right = 10
          Padding.Bottom = 10
          ParentBackground = False
          TabOrder = 1
          Visible = False
          object Label7: TLabel
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
        object pnPieCross: TPanel
          Left = 0
          Top = 503
          Width = 1324
          Height = 57
          Align = alBottom
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 2
          object Label5: TLabel
            Left = 5
            Top = 23
            Width = 76
            Height = 13
            Cursor = crHandPoint
            Caption = 'Mostrar Campos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clAqua
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label5Click
          end
          object Label8: TLabel
            Left = 100
            Top = 23
            Width = 76
            Height = 13
            Cursor = crHandPoint
            Caption = 'Muestra Totales'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clAqua
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label8Click
          end
          object Label6: TLabel
            Left = 401
            Top = 19
            Width = 28
            Height = 13
            Caption = 'Vistas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object spVistas: TSpeedButton
            Left = 762
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
          object BitBtn1: TBitBtn
            Left = 799
            Top = 14
            Width = 70
            Height = 22
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
            OnClick = BitBtn1Click
          end
          object dbcVistas: TJvDBLookupCombo
            Left = 435
            Top = 15
            Width = 321
            Height = 21
            LookupField = 'ID'
            LookupDisplay = 'DESCRIPCION'
            LookupSource = DSVista
            TabOrder = 1
            OnChange = dbcVistasChange
          end
        end
      end
      object pag4: TTabSheet
        Caption = 'Proyectado'
        ImageIndex = 3
        object cxDBPivotGrid2: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 1324
          Height = 560
          Align = alClient
          DataSource = DSCheEmitidos
          Groups = <>
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = ''
          OptionsView.ColumnGrandTotalText = 'Total'
          OptionsView.RowGrandTotalText = 'Total'
          PopupMenu = PopupMenu2
          TabOrder = 0
          OnMouseDown = cxDBPivotGrid2MouseDown
          OnMouseMove = cxDBPivotGrid2MouseMove
          OnMouseUp = cxDBPivotGrid2MouseUp
          object cxDBPivotGrid2ID_CUENTA_BANCO: TcxDBPivotGridField
            AreaIndex = 7
            DataBinding.FieldName = 'ID_CUENTA_BANCO'
            Visible = True
            UniqueName = 'Cod.Cta Bco.'
          end
          object cxDBPivotGrid2NOMBRECTABANCO: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'NOMBRECTABANCO'
            Visible = True
            UniqueName = 'Nom.Cta.Bco'
          end
          object cxDBPivotGrid2MUESTRABANCO: TcxDBPivotGridField
            AreaIndex = 8
            DataBinding.FieldName = 'MUESTRABANCO'
            Visible = True
            UniqueName = 'Banco'
          end
          object cxDBPivotGrid2FECHA_EMISION: TcxDBPivotGridField
            AreaIndex = 18
            DataBinding.FieldName = 'FECHA_EMISION'
            Visible = True
            UniqueName = 'F.Emisi'#243'n'
          end
          object cxDBPivotGrid2FECHA_COBRO: TcxDBPivotGridField
            AreaIndex = 9
            DataBinding.FieldName = 'FECHA_COBRO'
            Visible = True
            UniqueName = 'A Cobrar el'
          end
          object cxDBPivotGrid2FECHA_DEBITO: TcxDBPivotGridField
            AreaIndex = 10
            DataBinding.FieldName = 'FECHA_DEBITO'
            Visible = True
            UniqueName = 'F.Debito'
          end
          object cxDBPivotGrid2ORDEN_DE: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'ORDEN_DE'
            Visible = True
            UniqueName = 'A la Orden de'
          end
          object cxDBPivotGrid2NUMERO: TcxDBPivotGridField
            AreaIndex = 11
            DataBinding.FieldName = 'NUMERO'
            PropertiesClassName = 'TcxTextEditProperties'
            Visible = True
            UniqueName = 'Numero'
          end
          object cxDBPivotGrid2ID_CHEQUERA: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'ID_CHEQUERA'
            UniqueName = 'ID_CHEQUERA'
          end
          object cxDBPivotGrid2ID_CAJA: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'ID_CAJA'
            UniqueName = 'ID_CAJA'
          end
          object cxDBPivotGrid2ID_CUENTA_CAJA: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'ID_CUENTA_CAJA'
            UniqueName = 'ID_CUENTA_CAJA'
          end
          object cxDBPivotGrid2ID_BANCO: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'ID_BANCO'
            UniqueName = 'ID_BANCO'
          end
          object cxDBPivotGrid2ID_MOV_CAJA: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'ID_MOV_CAJA'
            UniqueName = 'ID_MOV_CAJA'
          end
          object cxDBPivotGrid2ANULADO: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'ANULADO'
            UniqueName = 'ANULADO'
          end
          object cxDBPivotGrid2ID_CHEQUE_PRO: TcxDBPivotGridField
            AreaIndex = 6
            DataBinding.FieldName = 'ID_CHEQUE_PRO'
            UniqueName = 'Id'
          end
          object cxDBPivotGrid2DEBITADO: TcxDBPivotGridField
            AreaIndex = 12
            DataBinding.FieldName = 'DEBITADO'
            Visible = True
            UniqueName = 'Debitado'
          end
          object cxDBPivotGrid2MUESTRANOMBRECTACAJA: TcxDBPivotGridField
            AreaIndex = 13
            DataBinding.FieldName = 'MUESTRANOMBRECTACAJA'
            Visible = True
            UniqueName = 'Cta.de Caja'
          end
          object cxDBPivotGrid2CUIT: TcxDBPivotGridField
            AreaIndex = 14
            DataBinding.FieldName = 'CUIT'
            Visible = True
            UniqueName = 'Cuit'
          end
          object cxDBPivotGrid2CONCILIADO: TcxDBPivotGridField
            AreaIndex = 15
            DataBinding.FieldName = 'CONCILIADO'
            Visible = True
            UniqueName = 'Conc.Bco'
          end
          object cxDBPivotGrid2IMPORTE: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 2
            DataBinding.FieldName = 'IMPORTE'
            DisplayFormat = ',0.00'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = True
            UniqueName = 'Importe'
          end
          object cxDBPivotGrid2IMP_A_DEBITAR: TcxDBPivotGridField
            Area = faData
            AreaIndex = 1
            DataBinding.FieldName = 'IMP_A_DEBITAR'
            DisplayFormat = ',0.00;-0.00;-'
            Visible = True
            Width = 86
            UniqueName = 'A Debitar'
          end
          object cxDBPivotGrid2IMP_DEBITADO: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'IMP_DEBITADO'
            DisplayFormat = ',0.00;-0.00;-'
            Visible = True
            Width = 97
            UniqueName = 'Debitado'
          end
          object cxDBPivotGrid2MES: TcxDBPivotGridField
            AreaIndex = 19
            DataBinding.FieldName = 'MES'
            Visible = True
            UniqueName = 'Mes'
          end
          object cxDBPivotGrid2SEMANA: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'SEMANA'
            Visible = True
            UniqueName = 'Semana'
          end
          object cxDBPivotGrid2ANIO: TcxDBPivotGridField
            AreaIndex = 16
            DataBinding.FieldName = 'ANIO'
            Visible = True
            UniqueName = 'A'#241'o'
          end
          object cxDBPivotGrid2DIA: TcxDBPivotGridField
            AreaIndex = 17
            DataBinding.FieldName = 'DIA'
            Visible = True
            UniqueName = 'Dia'
          end
        end
      end
      object pag5: TTabSheet
        Caption = 'Cheques Reemplazados'
        ImageIndex = 4
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1324
          Height = 560
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            DataController.DataSource = DSCheRemplazados
            OptionsSelection.CellSelect = False
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1ID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASECPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1MUESTRACOMPROBANTE: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRACOMPROBANTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 131
            end
            object cxGrid1DBTableView1MUESTRASUCURSAL: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRASUCURSAL'
              HeaderAlignmentHorz = taCenter
              Width = 108
            end
            object cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NROCPBTE'
              HeaderAlignmentHorz = taCenter
              Width = 107
            end
            object cxGrid1DBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
              Width = 305
            end
            object cxGrid1DBTableView1IMPORTE: TcxGridDBColumn
              DataBinding.FieldName = 'IMPORTE'
              HeaderAlignmentHorz = taCenter
              Width = 85
            end
            object cxGrid1DBTableView1ID_CHE_REMPLAZADO: TcxGridDBColumn
              DataBinding.FieldName = 'ID_CHE_REMPLAZADO'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1MUESTRACHENUMERO: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRACHENUMERO'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1MUESTRACTABANCO: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRACTABANCO'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1MUESTRACHEORDENDE: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRACHEORDENDE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1MUESTRACHEFECHAEMISION: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRACHEFECHAEMISION'
              HeaderAlignmentHorz = taCenter
              Width = 87
            end
            object cxGrid1DBTableView1MUESTRACHEFECHACOBRO: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRACHEFECHACOBRO'
              HeaderAlignmentHorz = taCenter
              Width = 91
            end
            object cxGrid1DBTableView1MUESTRAFECHADEBITO: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRAFECHADEBITO'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid1DBTableView1MUESTRACHEIMPORTE: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRACHEIMPORTE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1MUESTRACHEIDBANCO: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRACHEIDBANCO'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1MUESTRAFUEDEBITADO: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRAFUEDEBITADO'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object pagGrafico: TTabSheet
        Caption = 'Grafico'
        ImageIndex = 5
        object ChartCheques: TChart
          Left = 0
          Top = 0
          Width = 1324
          Height = 560
          Title.Text.Strings = (
            'Emision de Cheques')
          View3DOptions.Elevation = 315
          View3DOptions.Orthogonal = False
          View3DOptions.Perspective = 0
          View3DOptions.Rotation = 360
          Align = alClient
          TabOrder = 0
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series1: TPieSeries
            HoverElement = []
            Marks.Tail.Margin = 2
            Title = 'Cheques Emitidos'
            XValues.Order = loAscending
            YValues.Name = 'Pie'
            YValues.Order = loNone
            Frame.InnerBrush.BackColor = clRed
            Frame.InnerBrush.Gradient.EndColor = clGray
            Frame.InnerBrush.Gradient.MidColor = clWhite
            Frame.InnerBrush.Gradient.StartColor = 4210752
            Frame.InnerBrush.Gradient.Visible = True
            Frame.MiddleBrush.BackColor = clYellow
            Frame.MiddleBrush.Gradient.EndColor = 8553090
            Frame.MiddleBrush.Gradient.MidColor = clWhite
            Frame.MiddleBrush.Gradient.StartColor = clGray
            Frame.MiddleBrush.Gradient.Visible = True
            Frame.OuterBrush.BackColor = clGreen
            Frame.OuterBrush.Gradient.EndColor = 4210752
            Frame.OuterBrush.Gradient.MidColor = clWhite
            Frame.OuterBrush.Gradient.StartColor = clSilver
            Frame.OuterBrush.Gradient.Visible = True
            Frame.Width = 4
            OtherSlice.Legend.Visible = False
            Data = {
              06020000000000000000A0684000FF4000FF1100000043686575717565732045
              6D697469646F730000000000C0874000000020FF09000000446562697461646F
              73}
            Detail = {0000000000}
          end
        end
      end
    end
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 1332
      Height = 88
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      object Label4: TLabel
        Left = 231
        Top = 3
        Width = 109
        Height = 13
        Caption = 'Cta de Caja de Emisi'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 6
        Top = 44
        Width = 79
        Height = 13
        Caption = 'Cuenta Bancaria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 104
        Top = 3
        Width = 28
        Height = 13
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 8
        Top = 3
        Width = 31
        Height = 13
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object UpDown1: TUpDown
        Left = 196
        Top = 19
        Width = 16
        Height = 20
        Hint = 'Cambia el Per'#237'odo'
        Max = 10000
        ParentShowHint = False
        Position = 100
        ShowHint = True
        TabOrder = 4
        OnClick = UpDown1Click
      end
      object Hasta: TJvDateEdit
        Left = 101
        Top = 19
        Width = 89
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
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
        ParentFont = False
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 1
        OnAcceptDate = HastaAcceptDate
      end
      object Desde: TJvDateEdit
        Left = 6
        Top = 19
        Width = 89
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
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
        ParentFont = False
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 0
        OnAcceptDate = DesdeAcceptDate
      end
      object dbcCuentas: TJvDBLookupCombo
        Left = 6
        Top = 60
        Width = 227
        Height = 21
        DisplayEmpty = 'Todas Las Ctas'
        EmptyValue = '-1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        LookupField = 'ID_CUENTA'
        LookupDisplay = 'NOMBRE'
        LookupSource = DSBancos
        ParentFont = False
        TabOrder = 3
        OnClick = BuscarExecute
      end
      object dbcCtaCaja: TJvDBLookupCombo
        Left = 231
        Top = 18
        Width = 227
        Height = 21
        DisplayEmpty = 'Todas Las Ctas de Caja'
        EmptyValue = '-1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        LookupField = 'ID_CUENTA'
        LookupDisplay = 'NOMBRE'
        LookupSource = DSCtaCaja
        ParentFont = False
        TabOrder = 2
        OnClick = BuscarExecute
      end
      object rgFechaDe: TAdvOfficeRadioGroup
        Left = 472
        Top = 3
        Width = 89
        Height = 64
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = []
        Version = '1.8.4.2'
        Caption = 'Por Fecha de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentCtl3D = True
        ParentFont = False
        TabOrder = 6
        OnClick = rgFechaDeClick
        ItemIndex = 0
        Items.Strings = (
          'Emision'
          'Cobro'
          'Debito')
        Ellipsis = False
      end
      object rgConciliados: TAdvOfficeRadioGroup
        Left = 567
        Top = 3
        Width = 98
        Height = 64
        Hint = 
          'Esto Indica si los Cheques fueron pasado al Resumen Bancario, de' +
          'sde Conciliacion de Cheques Propios'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = []
        Version = '1.8.4.2'
        Caption = 'Ver'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentCtl3D = True
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnClick = rgConciliadosClick
        ItemIndex = 2
        Items.Strings = (
          'Todos'
          'Conciliados'
          'No Concilados')
        Ellipsis = False
      end
      object rgFiltro: TAdvOfficeRadioGroup
        Left = 671
        Top = 3
        Width = 202
        Height = 64
        Hint = 
          'Indica si los Cheques Fueron Conciliados dentro del resumen banc' +
          'ario'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = []
        Version = '1.8.4.2'
        Caption = 'Filtrar los que Estan en Resumen Bco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentCtl3D = True
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = rgFiltroClick
        ItemIndex = 2
        Items.Strings = (
          'Si'
          'No '
          'Todos')
        Ellipsis = False
      end
      object DBEdit1: TDBEdit
        Left = 1056
        Top = 19
        Width = 121
        Height = 21
        DataField = 'TOTAL_IMPORTE'
        DataSource = DSCheEmitidos
        TabOrder = 8
      end
      object DBEdit2: TDBEdit
        Left = 1056
        Top = 46
        Width = 121
        Height = 21
        DataField = 'TOTAL_DEBITADO'
        DataSource = DSCheEmitidos
        TabOrder = 9
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 676
    Width = 1332
    Align = alBottom
    ExplicitTop = 676
    ExplicitWidth = 1332
    inherited btConfirma: TBitBtn
      Visible = False
    end
    inherited btNuevo: TBitBtn
      Width = 34
      Visible = False
      ExplicitWidth = 34
    end
    inherited btCancelar: TBitBtn
      Left = 111
      Width = 21
      Visible = False
      ExplicitLeft = 111
      ExplicitWidth = 21
    end
    inherited btModificar: TBitBtn
      Left = 132
      Width = 26
      Visible = False
      ExplicitLeft = 132
      ExplicitWidth = 26
    end
    inherited Pr: TSpeedButton
      Left = 158
      ExplicitLeft = 158
    end
    inherited btBuscar: TBitBtn
      Left = 173
      ExplicitLeft = 173
    end
    inherited Ne: TSpeedButton
      Left = 248
      ExplicitLeft = 248
    end
    inherited btBorrar: TBitBtn
      Left = 263
      Width = 18
      Visible = False
      ExplicitLeft = 263
      ExplicitWidth = 18
    end
    inherited btSalir: TBitBtn
      Left = 281
      ExplicitLeft = 281
    end
    object ToolButton1: TToolButton
      Left = 356
      Top = 0
      Width = 17
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object BitBtn4: TBitBtn
      Left = 373
      Top = 0
      Width = 96
      Height = 29
      Action = ExportarXLS
      Caption = 'ExportarXLS'
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
    end
    object btImpCuadro: TBitBtn
      Left = 469
      Top = 0
      Width = 100
      Height = 29
      Action = ImpCuadro
      Caption = 'Imp.Cuadro'
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
      TabOrder = 9
    end
    object btImprimir: TBitBtn
      Left = 569
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
      TabOrder = 7
    end
  end
  inherited Panel1: TPanel
    Top = 706
    Width = 1332
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    OnDblClick = Panel1DblClick
    ExplicitTop = 706
    ExplicitWidth = 1332
    inherited DBStatusLabel1: TJvDBStatusLabel
      Visible = False
    end
    inherited sbEstado: TStatusBar
      Width = 1243
      Panels = <
        item
          Width = 500
        end
        item
          Width = 250
        end>
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 1243
    end
  end
  inherited ActionList1: TActionList
    Left = 544
    Top = 40
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
    object ExportarXLS: TAction
      Caption = 'ExportarXLS'
      ShortCut = 49240
      OnExecute = ExportarXLSExecute
    end
    object ImpCuadro: TAction
      Caption = 'Imp.Cuadro'
      OnExecute = ImpCuadroExecute
    end
    object SacarCheBanco: TAction
      Caption = 'Sacar Che del Banco'
      OnExecute = SacarCheBancoExecute
    end
    object DesconciliarTodos: TAction
      Caption = 'Desconciliar Todos'
      OnExecute = DesconciliarTodosExecute
    end
    object BorrarMov: TAction
      Caption = 'Borrar Mov. de Bco'
      OnExecute = BorrarMovExecute
    end
    object VerCpbte: TAction
      Caption = 'VerCpbte'
      OnExecute = VerCpbteExecute
    end
    object ModificarChe: TAction
      Caption = 'Modificar Che'
      OnExecute = ModificarCheExecute
    end
    object DebitarCheque: TAction
      Caption = 'Debitar Cheque'
      OnExecute = DebitarChequeExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 504
    Top = 8
  end
  inherited ImageList1: TImageList
    Left = 848
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
    Left = 568
    Top = 192
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 72
    Top = 624
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 544
    Top = 144
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 512
    Top = 240
  end
  inherited QBrowse2: TFDQuery
    Left = 32
    Top = 480
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 88
    Top = 512
  end
  object DSCheEmitidos: TDataSource
    DataSet = CDSCheEmitidos
    Left = 336
    Top = 168
  end
  object frChe: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.121819421300000000
    ReportOptions.LastChange = 40111.035108865700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var Importe:real;'
      'Detalle:String;'
      '  '
      'procedure DatosMaestros1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'end;'
      ''
      'begin'
      'Importe:=0;'
      'Detalle:='#39#39';                          '
      'end.')
    Left = 784
    Top = 520
    Datasets = <
      item
        DataSet = frDBDCheEmitidos
        DataSetName = 'frDBDCheEmitidos'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object DBCross1: TfrxDBCrossView
        AllowVectorExport = True
        Top = -3.779530000000000000
        Width = 598.000000000000000000
        Height = 143.000000000000000000
        AutoSize = False
        DownThenAcross = False
        RowLevels = 3
        CellFields.Strings = (
          'IMPORTE')
        ColumnFields.Strings = (
          'FECHA_COBRO')
        DataSet = frDBDCheEmitidos
        DataSetName = 'frDBDCheEmitidos'
        RowFields.Strings = (
          'MUESTRABANCO'
          'NUMERO'
          'ORDEN_DE')
        Memos = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
          662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
          6C6C6D656D6F733E3C546672784D656D6F5669657720416C6C6F77566563746F
          724578706F72743D225472756522204C6566743D223430302220546F703D2235
          382E3232303437222057696474683D2231303422204865696768743D22323022
          205265737472696374696F6E733D2232342220416C6C6F774578707265737369
          6F6E733D2246616C73652220446973706C6179466F726D61742E466F726D6174
          5374723D2225322E326E2220446973706C6179466F726D61742E4B696E643D22
          666B4E756D657269632220466F6E742E436861727365743D22312220466F6E74
          2E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E
          742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672
          616D652E5479703D2231352220476170583D22332220476170593D2233222048
          416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73
          65222056416C69676E3D22766143656E7465722220546578743D22302E303022
          2F3E3C546672784D656D6F5669657720416C6C6F77566563746F724578706F72
          743D225472756522204C6566743D223238372220546F703D2236342220576964
          74683D2231313522204865696768743D22323222205265737472696374696F6E
          733D2232342220416C6C6F7745787072657373696F6E733D2246616C73652220
          4672616D652E5479703D2231352220476170583D22332220476170593D223322
          2048416C69676E3D2268615269676874222056416C69676E3D22766143656E74
          65722220546578743D22222F3E3C546672784D656D6F5669657720416C6C6F77
          566563746F724578706F72743D225472756522204C6566743D22343030222054
          6F703D2237382E3232303437222057696474683D223130342220486569676874
          3D22323022205265737472696374696F6E733D2232342220416C6C6F77457870
          72657373696F6E733D2246616C73652220466F6E742E436861727365743D2231
          2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31
          322220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D
          223022204672616D652E5479703D2231352220476170583D2233222047617059
          3D2233222048416C69676E3D22686152696768742220506172656E74466F6E74
          3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
          22302E3030222F3E3C546672784D656D6F5669657720416C6C6F77566563746F
          724578706F72743D225472756522204C6566743D223430302220546F703D2239
          382E3232303437222057696474683D2231303422204865696768743D22323122
          205265737472696374696F6E733D2232342220416C6C6F774578707265737369
          6F6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E
          742E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F
          6E742E4E616D653D22417269616C2220466F6E742E5374796C653D2230222046
          72616D652E5479703D2231352220476170583D22332220476170593D22332220
          48416C69676E3D22686152696768742220506172656E74466F6E743D2246616C
          7365222056416C69676E3D22766143656E7465722220546578743D22302E3030
          222F3E3C546672784D656D6F5669657720416C6C6F77566563746F724578706F
          72743D225472756522204C6566743D223530342220546F703D2235382E323230
          3437222057696474683D22373422204865696768743D22323022205265737472
          696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246
          616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F
          723D22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D
          653D22417269616C2220466F6E742E5374796C653D223022204672616D652E54
          79703D2231352220476170583D22332220476170593D2233222048416C69676E
          3D22686152696768742220506172656E74466F6E743D2246616C736522205641
          6C69676E3D22766143656E7465722220546578743D22302E3030222F3E3C5466
          72784D656D6F5669657720416C6C6F77566563746F724578706F72743D225472
          756522204C6566743D223430322220546F703D223634222057696474683D2238
          3122204865696768743D22323222205265737472696374696F6E733D22323422
          20416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E
          5479703D2231352220476170583D22332220476170593D2233222048416C6967
          6E3D2268615269676874222056416C69676E3D22766143656E74657222205465
          78743D22222F3E3C546672784D656D6F5669657720416C6C6F77566563746F72
          4578706F72743D225472756522204C6566743D223530342220546F703D223738
          2E3232303437222057696474683D22373422204865696768743D223230222052
          65737472696374696F6E733D2232342220416C6C6F7745787072657373696F6E
          733D2246616C73652220466F6E742E436861727365743D22312220466F6E742E
          436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E74
          2E4E616D653D22417269616C2220466F6E742E5374796C653D22302220467261
          6D652E5479703D2231352220476170583D22332220476170593D223322204841
          6C69676E3D22686152696768742220506172656E74466F6E743D2246616C7365
          222056416C69676E3D22766143656E7465722220546578743D22302E3030222F
          3E3C546672784D656D6F5669657720416C6C6F77566563746F724578706F7274
          3D225472756522204C6566743D223530342220546F703D2239382E3232303437
          222057696474683D22373422204865696768743D223231222052657374726963
          74696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C
          73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D
          22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D
          22417269616C2220466F6E742E5374796C653D223022204672616D652E547970
          3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
          686152696768742220506172656E74466F6E743D2246616C7365222056416C69
          676E3D22766143656E7465722220546578743D22302E3030222F3E3C2F63656C
          6C6D656D6F733E3C63656C6C6865616465726D656D6F733E3C546672784D656D
          6F5669657720416C6C6F77566563746F724578706F72743D225472756522204C
          6566743D223139392220546F703D223231222057696474683D22313038222048
          65696768743D22323122205265737472696374696F6E733D22382220416C6C6F
          7745787072657373696F6E733D2246616C736522204672616D652E5479703D22
          31352220476170583D22332220476170593D2233222056416C69676E3D227661
          43656E7465722220546578743D22494D504F525445222F3E3C546672784D656D
          6F5669657720416C6C6F77566563746F724578706F72743D225472756522204C
          6566743D223139392220546F703D223432222057696474683D22313038222048
          65696768743D22323122205265737472696374696F6E733D22382220416C6C6F
          7745787072657373696F6E733D2246616C736522204672616D652E5479703D22
          31352220476170583D22332220476170593D2233222056416C69676E3D227661
          43656E7465722220546578743D22494D504F525445222F3E3C546672784D656D
          6F5669657720416C6C6F77566563746F724578706F72743D225472756522204C
          6566743D223139392220546F703D223633222057696474683D22313038222048
          65696768743D22323122205265737472696374696F6E733D22382220416C6C6F
          7745787072657373696F6E733D2246616C736522204672616D652E5479703D22
          31352220476170583D22332220476170593D2233222056416C69676E3D227661
          43656E7465722220546578743D22494D504F525445222F3E3C546672784D656D
          6F5669657720416C6C6F77566563746F724578706F72743D225472756522204C
          6566743D22302220546F703D2230222057696474683D22302220486569676874
          3D223022205265737472696374696F6E733D22382220416C6C6F774578707265
          7373696F6E733D2246616C736522204672616D652E5479703D22313522204761
          70583D22332220476170593D2233222056416C69676E3D22766143656E746572
          2220546578743D22494D504F525445222F3E3C2F63656C6C6865616465726D65
          6D6F733E3C636F6C756D6E6D656D6F733E3C546672784D656D6F566965772041
          6C6C6F77566563746F724578706F72743D225472756522204C6566743D223430
          302220546F703D2233372E3232303437222057696474683D2231303422204865
          696768743D22323122205265737472696374696F6E733D2232342220416C6C6F
          7745787072657373696F6E733D2246616C73652220466F6E742E436861727365
          743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569676874
          3D222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E5374
          796C653D223022204672616D652E5479703D2231352220476170583D22332220
          476170593D2233222048416C69676E3D22686143656E7465722220506172656E
          74466F6E743D2246616C7365222056416C69676E3D22766143656E7465722220
          546578743D22222F3E3C2F636F6C756D6E6D656D6F733E3C636F6C756D6E746F
          74616C6D656D6F733E3C546672784D656D6F5669657720416C6C6F7756656374
          6F724578706F72743D225472756522204C6566743D223530342220546F703D22
          33372E3232303437222057696474683D22373422204865696768743D22323122
          205265737472696374696F6E733D22382220416C6C6F7745787072657373696F
          6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E74
          2E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F6E
          742E4E616D653D22417269616C2220466F6E742E5374796C653D223122204672
          616D652E5479703D2231352220476170583D22332220476170593D2233222048
          416C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C
          7365222056416C69676E3D22766143656E7465722220546578743D224772616E
          6420546F74616C222F3E3C2F636F6C756D6E746F74616C6D656D6F733E3C636F
          726E65726D656D6F733E3C546672784D656D6F5669657720416C6C6F77566563
          746F724578706F72743D225472756522204C6566743D2232302220546F703D22
          31362E3232303437222057696474683D2233383022204865696768743D223231
          22205265737472696374696F6E733D22382220416C6C6F774578707265737369
          6F6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E
          742E436F6C6F723D22302220466F6E742E4865696768743D222D31322220466F
          6E742E4E616D653D22417269616C2220466F6E742E5374796C653D2230222046
          72616D652E5479703D2231352220476170583D22332220476170593D22332220
          48416C69676E3D22686143656E7465722220506172656E74466F6E743D224661
          6C7365222056416C69676E3D22766143656E7465722220546578743D22222F3E
          3C546672784D656D6F5669657720416C6C6F77566563746F724578706F72743D
          225472756522204C6566743D223430302220546F703D2231362E323230343722
          2057696474683D2231373822204865696768743D223231222052657374726963
          74696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C73
          652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22
          302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D22
          417269616C2220466F6E742E5374796C653D223122204672616D652E5479703D
          2231352220476170583D22332220476170593D2233222048416C69676E3D2268
          6143656E7465722220506172656E74466F6E743D2246616C7365222056416C69
          676E3D22766143656E7465722220546578743D2246454348415F434F42524F22
          2F3E3C546672784D656D6F5669657720416C6C6F77566563746F724578706F72
          743D225472756522204C6566743D223139392220546F703D2230222057696474
          683D2231303822204865696768743D22323122205265737472696374696F6E73
          3D2238222056697369626C653D2246616C73652220416C6C6F77457870726573
          73696F6E733D2246616C736522204672616D652E5479703D2231352220476170
          583D22332220476170593D2233222048416C69676E3D22686143656E74657222
          2056416C69676E3D22766143656E7465722220546578743D22222F3E3C546672
          784D656D6F5669657720416C6C6F77566563746F724578706F72743D22547275
          6522204C6566743D2232302220546F703D2233372E3232303437222057696474
          683D2231313422204865696768743D22323122205265737472696374696F6E73
          3D22382220416C6C6F7745787072657373696F6E733D2246616C73652220466F
          6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F
          6E742E4865696768743D222D31322220466F6E742E4E616D653D22417269616C
          2220466F6E742E5374796C653D223122204672616D652E5479703D2231352220
          476170583D22332220476170593D2233222048416C69676E3D22686143656E74
          65722220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
          6143656E7465722220546578743D2242616E636F222F3E3C546672784D656D6F
          5669657720416C6C6F77566563746F724578706F72743D225472756522204C65
          66743D223133342220546F703D2233372E3232303437222057696474683D2236
          3622204865696768743D22323122205265737472696374696F6E733D22382220
          416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
          61727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865
          696768743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E
          742E5374796C653D223022204672616D652E5479703D2231352220476170583D
          22332220476170593D2233222048416C69676E3D22686143656E746572222050
          6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
          65722220546578743D224E554D45524F222F3E3C546672784D656D6F56696577
          20416C6C6F77566563746F724578706F72743D225472756522204C6566743D22
          3230302220546F703D2233372E3232303437222057696474683D223230302220
          4865696768743D22323122205265737472696374696F6E733D22382220416C6C
          6F7745787072657373696F6E733D2246616C73652220466F6E742E4368617273
          65743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768
          743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E53
          74796C653D223022204672616D652E5479703D2231352220476170583D223322
          20476170593D2233222048416C69676E3D22686143656E746572222050617265
          6E74466F6E743D2246616C7365222056416C69676E3D22766143656E74657222
          20546578743D224F5244454E5F4445222F3E3C2F636F726E65726D656D6F733E
          3C726F776D656D6F733E3C546672784D656D6F5669657720416C6C6F77566563
          746F724578706F72743D225472756522204C6566743D2232302220546F703D22
          35382E3232303437222057696474683D2231313422204865696768743D223430
          22205265737472696374696F6E733D2232342220416C6C6F7745787072657373
          696F6E733D2246616C73652220466F6E742E436861727365743D22312220466F
          6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3132222046
          6F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D22302220
          4672616D652E5479703D2231352220476170583D22332220476170593D223322
          2048416C69676E3D22686143656E7465722220506172656E74466F6E743D2246
          616C7365222056416C69676E3D22766143656E7465722220546578743D22222F
          3E3C546672784D656D6F5669657720416C6C6F77566563746F724578706F7274
          3D225472756522204C6566743D223133342220546F703D2235382E3232303437
          222057696474683D22363622204865696768743D223230222052657374726963
          74696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C
          73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D
          22302220466F6E742E4865696768743D222D31322220466F6E742E4E616D653D
          22417269616C2220466F6E742E5374796C653D223022204672616D652E547970
          3D2231352220476170583D22332220476170593D2233222048416C69676E3D22
          686143656E7465722220506172656E74466F6E743D2246616C7365222056416C
          69676E3D22766143656E7465722220546578743D22222F3E3C546672784D656D
          6F5669657720416C6C6F77566563746F724578706F72743D225472756522204C
          6566743D223230302220546F703D2235382E3232303437222057696474683D22
          32303022204865696768743D22323022205265737472696374696F6E733D2232
          342220537472657463684D6F64653D22736D41637475616C4865696768742220
          416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
          61727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865
          696768743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E
          742E5374796C653D223022204672616D652E5479703D2231352220476170583D
          22332220476170593D22332220506172656E74466F6E743D2246616C73652220
          56416C69676E3D22766143656E7465722220546578743D22222F3E3C2F726F77
          6D656D6F733E3C726F77746F74616C6D656D6F733E3C546672784D656D6F5669
          657720416C6C6F77566563746F724578706F72743D225472756522204C656674
          3D2232302220546F703D2239382E3232303437222057696474683D2233383022
          204865696768743D22323122205265737472696374696F6E733D22382220416C
          6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43686172
          7365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48656967
          68743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E742E
          5374796C653D223122204672616D652E5479703D2231352220476170583D2233
          2220476170593D2233222048416C69676E3D22686143656E7465722220506172
          656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
          2220546578743D224772616E6420546F74616C222F3E3C546672784D656D6F56
          69657720416C6C6F77566563746F724578706F72743D225472756522204C6566
          743D223133342220546F703D2237382E3232303437222057696474683D223236
          3622204865696768743D22323022205265737472696374696F6E733D22382220
          416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
          61727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865
          696768743D222D31322220466F6E742E4E616D653D22417269616C2220466F6E
          742E5374796C653D223022204672616D652E5479703D223135222046696C6C2E
          4261636B436F6C6F723D2231343231313238382220476170583D223322204761
          70593D22332220506172656E74466F6E743D2246616C7365222056416C69676E
          3D22766143656E7465722220546578743D22546F74616C222F3E3C546672784D
          656D6F5669657720416C6C6F77566563746F724578706F72743D225472756522
          204C6566743D223139392220546F703D223634222057696474683D2238382220
          4865696768743D22323222205265737472696374696F6E733D22382220566973
          69626C653D2246616C73652220416C6C6F7745787072657373696F6E733D2246
          616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F
          723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D
          653D22417269616C2220466F6E742E5374796C653D223122204672616D652E54
          79703D2231352220476170583D22332220476170593D2233222048416C69676E
          3D22686143656E7465722220506172656E74466F6E743D2246616C7365222056
          416C69676E3D22766143656E7465722220546578743D22546F74616C222F3E3C
          2F726F77746F74616C6D656D6F733E3C63656C6C66756E6374696F6E733E3C69
          74656D20312F3E3C2F63656C6C66756E6374696F6E733E3C636F6C756D6E736F
          72743E3C6974656D20302F3E3C2F636F6C756D6E736F72743E3C726F77736F72
          743E3C6974656D20302F3E3C6974656D20302F3E3C6974656D20302F3E3C2F72
          6F77736F72743E3C2F63726F73733E}
      end
    end
  end
  object frDBDCheEmitidos: TfrxDBDataset
    UserName = 'frDBDCheEmitidos'
    CloseDataSource = False
    DataSet = CDSCheEmitidos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 736
    Top = 544
    FieldDefs = <
      item
        FieldName = 'ID_CUENTA_BANCO'
        FieldAlias = 'ID_CUENTA_BANCO'
      end
      item
        FieldName = 'MUESTRABANCO'
        FieldAlias = 'MUESTRABANCO'
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
        FieldName = 'FECHA_DEBITO'
        FieldAlias = 'FECHA_DEBITO'
      end
      item
        FieldName = 'ORDEN_DE'
        FieldAlias = 'ORDEN_DE'
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
        FieldName = 'ID_CHEQUERA'
        FieldAlias = 'ID_CHEQUERA'
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
        FieldName = 'ID_BANCO'
        FieldAlias = 'ID_BANCO'
      end
      item
        FieldName = 'ID_MOV_CAJA'
        FieldAlias = 'ID_MOV_CAJA'
      end
      item
        FieldName = 'ANULADO'
        FieldAlias = 'ANULADO'
      end
      item
        FieldName = 'ID_CHEQUE_PRO'
        FieldAlias = 'ID_CHEQUE_PRO'
      end
      item
        FieldName = 'DEBITADO'
        FieldAlias = 'DEBITADO'
      end
      item
        FieldName = 'MUESTRANOMBRECTACAJA'
        FieldAlias = 'MUESTRANOMBRECTACAJA'
      end>
  end
  object CDSCheEmitidos: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'ID_CHEQUERA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_CAJA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_CUENTA_CAJA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_CUENTA_BANCO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ANULADO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_BANCO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_MOV_CAJA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'IMPORTE'
        DataType = ftFloat
      end
      item
        Name = 'NUMERO'
        DataType = ftInteger
      end
      item
        Name = 'ID_CHEQUE_PRO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ORDEN_DE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MUESTRABANCO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DEBITADO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MUESTRANOMBRECTACAJA'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'CUIT'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 13
      end
      item
        Name = 'NOMBRECTABANCO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'NUMERO_CHEQUE'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'CONCILIADO'
        Attributes = [faReadonly, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FECHA_EMISION'
        DataType = ftTimeStamp
      end
      item
        Name = 'FECHA_COBRO'
        DataType = ftTimeStamp
      end
      item
        Name = 'FECHA_DEBITO'
        DataType = ftTimeStamp
      end
      item
        Name = 'IMP_A_DEBITAR'
        DataType = ftFloat
      end
      item
        Name = 'IMP_DEBITADO'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'idcta'
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
        Name = 'idcta_caja'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'concilado'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCheEmitidos'
    StoreDefs = True
    AfterPost = CDSCheEmitidosAfterPost
    AfterScroll = CDSCheEmitidosAfterScroll
    OnCalcFields = CDSCheEmitidosCalcFields
    Left = 232
    Top = 168
    object CDSCheEmitidosID_CUENTA_BANCO: TIntegerField
      DisplayLabel = 'Cod.Cta Bco.'
      DisplayWidth = 10
      FieldName = 'ID_CUENTA_BANCO'
      Origin = 'ID_CUENTA_BANCO'
    end
    object CDSCheEmitidosNOMBRECTABANCO: TStringField
      DisplayLabel = 'Nom.Cta.Bco'
      FieldName = 'NOMBRECTABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSCheEmitidosMUESTRABANCO: TStringField
      DisplayLabel = 'Banco'
      DisplayWidth = 25
      FieldName = 'MUESTRABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
    end
    object CDSCheEmitidosORDEN_DE: TStringField
      DisplayLabel = 'A la Orden de'
      DisplayWidth = 40
      FieldName = 'ORDEN_DE'
      Origin = 'ORDEN_DE'
      Size = 30
    end
    object CDSCheEmitidosNUMERO: TIntegerField
      DisplayLabel = 'Numero'
      DisplayWidth = 15
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      OnSetText = CDSCheEmitidosNUMEROSetText
    end
    object CDSCheEmitidosID_CHEQUERA: TIntegerField
      FieldName = 'ID_CHEQUERA'
      Origin = 'ID_CHEQUERA'
      Visible = False
    end
    object CDSCheEmitidosID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      Visible = False
    end
    object CDSCheEmitidosID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Visible = False
    end
    object CDSCheEmitidosID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      Visible = False
    end
    object CDSCheEmitidosID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      Visible = False
    end
    object CDSCheEmitidosANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Visible = False
      Size = 1
    end
    object CDSCheEmitidosID_CHEQUE_PRO: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_CHEQUE_PRO'
      Origin = 'ID_CHEQUE_PRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object CDSCheEmitidosDEBITADO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Debitado'
      DisplayWidth = 9
      FieldName = 'DEBITADO'
      Origin = 'DEBITADO'
      FixedChar = True
      Size = 1
    end
    object CDSCheEmitidosMUESTRANOMBRECTACAJA: TStringField
      DisplayLabel = 'Cta.de Caja'
      FieldName = 'MUESTRANOMBRECTACAJA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSCheEmitidosCUIT: TStringField
      DisplayLabel = 'Cuit'
      FieldName = 'CUIT'
      Origin = 'CUIT'
      ProviderFlags = []
      Size = 13
    end
    object CDSCheEmitidosCONCILIADO: TStringField
      DisplayLabel = 'Conc.Bco'
      FieldName = 'CONCILIADO'
      Origin = 'CONCILIADO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CDSCheEmitidosIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCheEmitidosIMP_A_DEBITAR: TFloatField
      DisplayLabel = 'A Debitar'
      FieldKind = fkInternalCalc
      FieldName = 'IMP_A_DEBITAR'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCheEmitidosIMP_DEBITADO: TFloatField
      DisplayLabel = 'Debitado'
      FieldKind = fkInternalCalc
      FieldName = 'IMP_DEBITADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCheEmitidosMES: TStringField
      DisplayLabel = 'Mes'
      FieldKind = fkCalculated
      FieldName = 'MES'
      Calculated = True
    end
    object CDSCheEmitidosDIA: TIntegerField
      DisplayLabel = 'Dia'
      FieldKind = fkCalculated
      FieldName = 'DIA'
      Calculated = True
    end
    object CDSCheEmitidosSEMANA: TIntegerField
      DisplayLabel = 'Semana'
      FieldKind = fkCalculated
      FieldName = 'SEMANA'
      Calculated = True
    end
    object CDSCheEmitidosANIO: TIntegerField
      DisplayLabel = 'A'#241'o'
      FieldKind = fkCalculated
      FieldName = 'ANIO'
      Calculated = True
    end
    object CDSCheEmitidosNUMERO_CHEQUE: TIntegerField
      FieldName = 'NUMERO_CHEQUE'
      Origin = 'NUMERO_CHEQUE'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSCheEmitidosFECHA_EMISION: TSQLTimeStampField
      DisplayLabel = 'F.Emision'
      DisplayWidth = 12
      FieldName = 'FECHA_EMISION'
      Origin = 'FECHA_EMISION'
    end
    object CDSCheEmitidosFECHA_COBRO: TSQLTimeStampField
      DisplayLabel = 'F.Cobro'
      DisplayWidth = 12
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
    end
    object CDSCheEmitidosFECHA_DEBITO: TSQLTimeStampField
      DisplayLabel = 'F.Debito'
      DisplayWidth = 12
      FieldName = 'FECHA_DEBITO'
      Origin = 'FECHA_DEBITO'
    end
    object CDSCheEmitidosTOTAL_IMPORTE: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TOTAL_IMPORTE'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'sum(importe)'
    end
    object CDSCheEmitidosTOTAL_DEBITADO: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TOTAL_DEBITADO'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00'
      Expression = 'sum(imp_debitado)'
    end
  end
  object DSPCheEmitidos: TDataSetProvider
    DataSet = QCheEmitidos
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 135
    Top = 176
  end
  object DSQMov: TDataSource
    DataSet = CDSMov
    Left = 336
    Top = 344
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
    Left = 832
    Top = 552
  end
  object DataToXLS: TDataToXLS
    DataSet = CDSCheEmitidos
    Columns = <
      item
        DataField = 'MUESTRABANCO'
        Title = 'Banco'
      end
      item
        DataField = 'FECHA_EMISION'
        Title = 'F.Emisi'#243'n'
      end
      item
        DataField = 'FECHA_COBRO'
        Title = 'A Cobrar el'
      end
      item
        DataField = 'FECHA_DEBITO'
        Title = 'F.Debito'
      end
      item
        DataField = 'ORDEN_DE'
        Title = 'A la Orden de'
      end
      item
        DataField = 'NUMERO'
        Title = 'Numero'
        Alignment = taRightJustify
      end
      item
        DataField = 'IMPORTE'
        Title = 'Importe'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'DEBITADO'
        Title = 'Debitado'
        Alignment = taCenter
      end
      item
        DataField = 'MUESTRANOMBRECTACAJA'
        Title = 'Cta.de Caja'
      end
      item
        DataField = 'CUIT'
        Title = 'Cuit'
      end
      item
        DataField = 'ANULADO'
        Title = 'Estado'
        Alignment = taCenter
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
    Left = 544
    Top = 312
  end
  object SaveDialog: TSaveDialog
    Left = 480
    Top = 368
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 896
    Top = 552
  end
  object pm1: TPopupMenu
    Left = 784
    Top = 72
    object SacarCheBanco1: TMenuItem
      Action = SacarCheBanco
    end
    object DesconciliarTodos1: TMenuItem
      Action = DesconciliarTodos
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ModificarChe1: TMenuItem
      Action = ModificarChe
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object DebitarCheque1: TMenuItem
      Action = DebitarCheque
    end
  end
  object DSBancos: TDataSource
    DataSet = CDSBancos
    Left = 336
    Top = 296
  end
  object spSacarCheBanco_: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID_CHEQUE'
        ParamType = ptInput
      end>
    SQLConnection = DMMain_2.SQLConectionMain
    StoredProcName = 'SACAR_CHEQUE_DEL_BANCO'
    Left = 1008
    Top = 160
  end
  object DSCtaCaja: TDataSource
    DataSet = CDSCtaCaja
    Left = 336
    Top = 240
  end
  object DSControlMovBco: TDataSource
    DataSet = CDSControlMovBco
    Left = 1086
    Top = 287
  end
  object poMenuMov: TPopupMenu
    Left = 726
    Top = 71
  end
  object PopupMenu1: TPopupMenu
    Left = 852
    Top = 77
    object CamposxColumnas1: TMenuItem
      Caption = 'Campos x Columnas'
      OnClick = CamposxColumnas1Click
    end
    object CamposdeDatos1: TMenuItem
      Caption = 'Campos de Datos'
      OnClick = CamposdeDatos1Click
    end
    object Filtros1: TMenuItem
      Caption = 'Filtros'
      OnClick = Filtros1Click
    end
    object CamposxRenglones1: TMenuItem
      Caption = 'Campos x Renglones'
      OnClick = CamposxRenglones1Click
    end
  end
  object DSPVista: TDataSetProvider
    DataSet = QVista
    Left = 480
    Top = 468
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
    Left = 537
    Top = 467
    object CDSVistaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSVistaVISTA: TBlobField
      FieldName = 'VISTA'
      Origin = 'VISTA'
    end
    object CDSVistaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 50
    end
  end
  object DSVista: TDataSource
    DataSet = CDSVista
    Left = 592
    Top = 472
  end
  object spDebitar_: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID_CUENTA_BANCO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID_CHEQUE_PRO'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Precision = 8
        Name = 'FECHA_DEBITO'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Precision = 8
        Name = 'FECHA_COBRO'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 2
        Name = 'IMPORTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'NUMERO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'ORDEN_DE'
        ParamType = ptInput
      end>
    SQLConnection = DMMain_2.SQLConectionMain
    StoredProcName = 'DEBITAR_CHE_AL_BANCO'
    Left = 760
    Top = 216
  end
  object QBancos_: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from cuenta_caja where id_tipo_cta=2')
    Left = 32
    Top = 280
  end
  object QMov_: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select m.*,cta.nombre as MuestraCtaCaja from caja_mov m'
      'left join cuenta_caja cta on cta.id_cuenta=m.id_cuenta_caja'
      'where m.id_mov_caja=:id')
    Left = 32
    Top = 336
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QMov_ID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMov_ID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      Required = True
    end
    object QMov_TIPO_OPERACION: TStringField
      FieldName = 'TIPO_OPERACION'
      Origin = 'TIPO_OPERACION'
      Size = 1
    end
    object QMov_TIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QMov_CLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Size = 2
    end
    object QMov_ID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      Required = True
    end
    object QMov_NRO_COMPROBANTE: TStringField
      FieldName = 'NRO_COMPROBANTE'
      Origin = 'NRO_COMPROBANTE'
      Required = True
      Size = 13
    end
    object QMov_HABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
    end
    object QMov_DEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
    end
    object QMov_ID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      Required = True
    end
    object QMov_ID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      Required = True
    end
    object QMov_UNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
    end
    object QMov_COTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QMov_ID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
    end
    object QMov_MONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object QMov_MUESTRACTACAJA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACTACAJA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QMov_FECHA_CAJA: TSQLTimeStampField
      FieldName = 'FECHA_CAJA'
      Origin = 'FECHA_CAJA'
    end
    object QMov_FECHA_OPERACION: TSQLTimeStampField
      FieldName = 'FECHA_OPERACION'
      Origin = 'FECHA_OPERACION'
    end
  end
  object QCheEmitidos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    SQL.Strings = (
      
        'select ch.id_chequera,ch.id_caja,ch.id_cuenta_caja,ch.id_cuenta_' +
        'banco,'
      
        'ch.anulado,ch.id_banco,ch.id_mov_caja,ch.importe,ch.numero,ch.id' +
        '_cheque_pro,'
      
        'ch.orden_de,b.nombre as MuestraBanco,ch.fecha_emision,ch.fecha_c' +
        'obro,ch.fecha_debito,ch.debitado,'
      
        'cta.nombre as MuestraNombreCtaCaja,op.cuit,ctaBco.nombre as Nomb' +
        'reCtaBanco,rb.numero_cheque,rb.conciliado from cheque_propio ch'
      'left join bancos b on b.id_banco=ch.id_banco'
      'left join cuenta_caja cta on cta.id_cuenta=ch.id_cuenta_caja'
      'left join caja_mov cm on cm.id_mov_caja=ch.id_mov_caja'
      
        'left join cuenta_caja ctaBco on ctaBco.id_cuenta=ch.id_cuenta_ba' +
        'nco'
      
        'left join ordenpago op on op.id_op=cm.id_comprobante and cm.tipo' +
        '_comprob='#39'OP'#39
      
        'left join resumen_bco_det rb  on rb.id_origen=ch.id_cheque_pro a' +
        'nd rb.tipo_origen='#39'CHP'#39
      'where ( ch.id_cuenta_banco = :idcta or :idcta = -1 ) and'
      '      ( ch.fecha_emision between :desde and :hasta ) and'
      
        '      ( ch.id_cuenta_caja = :idcta_caja or :idcta_caja = -1 ) an' +
        'd'
      '      ((rb.conciliado= :concilado) or (:concilado = '#39'*'#39'))'
      'order by ch.id_banco, ch.numero')
    Left = 32
    Top = 168
    ParamData = <
      item
        Position = 1
        Name = 'idcta'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'idcta_caja'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'concilado'
        DataType = ftString
        ParamType = ptInput
      end>
    object QCheEmitidosID_CHEQUERA: TIntegerField
      FieldName = 'ID_CHEQUERA'
      Origin = 'ID_CHEQUERA'
      Required = True
    end
    object QCheEmitidosID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      Required = True
    end
    object QCheEmitidosID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
    object QCheEmitidosID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
      Origin = 'ID_CUENTA_BANCO'
      Required = True
    end
    object QCheEmitidosANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      FixedChar = True
      Size = 1
    end
    object QCheEmitidosID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      Required = True
    end
    object QCheEmitidosID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      Required = True
    end
    object QCheEmitidosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QCheEmitidosNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object QCheEmitidosID_CHEQUE_PRO: TIntegerField
      FieldName = 'ID_CHEQUE_PRO'
      Origin = 'ID_CHEQUE_PRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCheEmitidosORDEN_DE: TStringField
      FieldName = 'ORDEN_DE'
      Origin = 'ORDEN_DE'
      Size = 30
    end
    object QCheEmitidosMUESTRABANCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QCheEmitidosDEBITADO: TStringField
      FieldName = 'DEBITADO'
      Origin = 'DEBITADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCheEmitidosMUESTRANOMBRECTACAJA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANOMBRECTACAJA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QCheEmitidosCUIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUIT'
      Origin = 'CUIT'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object QCheEmitidosNOMBRECTABANCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMBRECTABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QCheEmitidosNUMERO_CHEQUE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO_CHEQUE'
      Origin = 'NUMERO_CHEQUE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QCheEmitidosCONCILIADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONCILIADO'
      Origin = 'CONCILIADO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object QCheEmitidosFECHA_EMISION: TSQLTimeStampField
      FieldName = 'FECHA_EMISION'
      Origin = 'FECHA_EMISION'
    end
    object QCheEmitidosFECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
    end
    object QCheEmitidosFECHA_DEBITO: TSQLTimeStampField
      FieldName = 'FECHA_DEBITO'
      Origin = 'FECHA_DEBITO'
    end
  end
  object QCtaCaja_: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from cuenta_caja where id_tipo_cta=1'
      '')
    Left = 32
    Top = 224
  end
  object QControlMovBco_: TFDQuery
    Connection = DMMain_FD.fdcGestion
    ResourceOptions.AssignedValues = [rvBackup, rvSilentMode]
    ResourceOptions.Backup = True
    ResourceOptions.SilentMode = True
    SQL.Strings = (
      'select d.id,d.id_cta_bco,d.id_origen,d.detalle,d.debe,d.haber,'
      
        'ch.fecha_cobro,ch.fecha_debito,ch.numero,ch.importe from cheque_' +
        'propio ch'
      'left join resumen_bco_det d on d.id_origen=ch.id_cheque_pro'
      'left join bancos b on b.id_banco=ch.id_banco'
      'left join cuenta_caja cta on cta.id_cuenta=ch.id_cuenta_caja'
      'where ( d.tipo_origen='#39'CHP'#39' ) and'
      '      ( ch.id_cuenta_banco = :idcta or :idcta = -1 ) and'
      '      ( ch.fecha_emision between :desde and :hasta ) and'
      '      ( ch.id_cuenta_caja = :idcta_caja or :idcta_caja = -1 )'
      'order by ch.id_banco, ch.numero')
    Left = 776
    Top = 304
    ParamData = <
      item
        Position = 1
        Name = 'idcta'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
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
        Name = 'idcta_caja'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QVista: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT * from VISTA_grillas where origen = :origen')
    Left = 408
    Top = 464
    ParamData = <
      item
        Position = 1
        Name = 'origen'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QBuscaChe: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select ch.id_cheque_pro from cheque_propio ch where ch.numero = ' +
        ':Numero and ch.id_chequera=:idchequera')
    Left = 432
    Top = 152
    ParamData = <
      item
        Name = 'NUMERO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDCHEQUERA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QBuscaCheID_CHEQUE_PRO: TIntegerField
      FieldName = 'ID_CHEQUE_PRO'
      Origin = 'ID_CHEQUE_PRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 740
    Top = 368
    object VerCampos1: TMenuItem
      Caption = 'Ver Campos'
      OnClick = VerCampos1Click
    end
    object CamposColumnas1: TMenuItem
      Caption = 'Campos Columnas'
      OnClick = CamposColumnas1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object LimpiarFiltros: TMenuItem
      Caption = 'Limpiar Filtros'
      OnClick = LimpiarFiltrosClick
    end
  end
  object QCheReemplazados: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id,c.tipocpbte,c.clasecpbte,cp.denominacion as MuestraC' +
        'omprobante,s.detalle as MuestraSucursal ,c.nrocpbte, c.fecha,c.d' +
        'etalle,c.importe,c.id_che_remplazado,'
      
        '            che.Numero as MuestraCheNumero,CtaBco.Nombre as Mues' +
        'traCtaBanco,che.orden_de as MuestraCheOrdenDe,che.fecha_emision ' +
        'as MuestraCheFechaEmision,che.fecha_cobro as MuestraCheFechaCobr' +
        'o, che.fecha_debito as MuestraFechaDebito,'
      
        '            che.importe as MuestraCheImporte,che.id_cuenta_banco' +
        ' as MuestraCheIdBanco,'
      '            che.debitado as MuestraFueDebitado'
      '            from remplazo_cheques c'
      
        'left join cheque_propio che on che.id_cheque_pro=c.id_che_rempla' +
        'zado'
      
        'left join cuenta_caja CtaBco on CtaBco.id_cuenta=che.id_cuenta_b' +
        'anco'
      'left join sucursal s on s.codigo=c.sucursal'
      'left join comprobantes cp on cp.clase_comprob=c.ClaseCpbte and'
      '          cp.letra=c.Letra and'
      '          cp.sucursal=c.sucursal and'
      '          cp.tipo_comprob=c.tipocpbte and'
      '          cp.compra_venta='#39'C'#39)
    Left = 32
    Top = 408
  end
  object DSPCheRemplazados: TDataSetProvider
    DataSet = QCheReemplazados
    Left = 135
    Top = 408
  end
  object CDSCheRemplazados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCheRemplazados'
    Left = 240
    Top = 408
    object CDSCheRemplazadosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object CDSCheRemplazadosTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Visible = False
      Size = 2
    end
    object CDSCheRemplazadosCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Visible = False
      Size = 2
    end
    object CDSCheRemplazadosMUESTRACOMPROBANTE: TStringField
      DisplayLabel = 'Comprob.'
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object CDSCheRemplazadosMUESTRASUCURSAL: TStringField
      DisplayLabel = 'Sucursal'
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object CDSCheRemplazadosNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbe'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSCheRemplazadosDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
    object CDSCheRemplazadosIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCheRemplazadosID_CHE_REMPLAZADO: TIntegerField
      FieldName = 'ID_CHE_REMPLAZADO'
      Origin = 'ID_CHE_REMPLAZADO'
      Required = True
    end
    object CDSCheRemplazadosMUESTRACHENUMERO: TIntegerField
      DisplayLabel = 'Nro.Che'
      FieldName = 'MUESTRACHENUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSCheRemplazadosMUESTRACTABANCO: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'MUESTRACTABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object CDSCheRemplazadosMUESTRACHEORDENDE: TStringField
      DisplayLabel = 'Orden De'
      FieldName = 'MUESTRACHEORDENDE'
      Origin = 'ORDEN_DE'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object CDSCheRemplazadosMUESTRACHEIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'MUESTRACHEIMPORTE'
      Origin = 'IMPORTE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCheRemplazadosMUESTRACHEIDBANCO: TIntegerField
      FieldName = 'MUESTRACHEIDBANCO'
      Origin = 'ID_CUENTA_BANCO'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object CDSCheRemplazadosMUESTRAFUEDEBITADO: TStringField
      DisplayWidth = 10
      FieldName = 'MUESTRAFUEDEBITADO'
      Origin = 'DEBITADO'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSCheRemplazadosFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object CDSCheRemplazadosMUESTRACHEFECHAEMISION: TSQLTimeStampField
      DisplayLabel = 'F.Emision'
      DisplayWidth = 10
      FieldName = 'MUESTRACHEFECHAEMISION'
      Origin = 'FECHA_EMISION'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSCheRemplazadosMUESTRACHEFECHACOBRO: TSQLTimeStampField
      DisplayLabel = 'F.Cobro'
      DisplayWidth = 10
      FieldName = 'MUESTRACHEFECHACOBRO'
      Origin = 'FECHA_COBRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSCheRemplazadosMUESTRAFECHADEBITO: TSQLTimeStampField
      DisplayLabel = 'F.Debito'
      DisplayWidth = 10
      FieldName = 'MUESTRAFECHADEBITO'
      Origin = 'FECHA_DEBITO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSCheRemplazados: TDataSource
    DataSet = CDSCheRemplazados
    Left = 336
    Top = 400
  end
  object frDBDCheRemp: TfrxDBDataset
    UserName = 'frDBDCheRemp'
    CloseDataSource = False
    DataSet = CDSCheRemplazados
    BCDToCurrency = False
    DataSetOptions = []
    Left = 664
    Top = 432
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
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
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
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
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'ID_CHE_REMPLAZADO'
        FieldAlias = 'ID_CHE_REMPLAZADO'
      end
      item
        FieldName = 'MUESTRACHENUMERO'
        FieldAlias = 'MUESTRACHENUMERO'
      end
      item
        FieldName = 'MUESTRACTABANCO'
        FieldAlias = 'MUESTRACTABANCO'
      end
      item
        FieldName = 'MUESTRACHEORDENDE'
        FieldAlias = 'MUESTRACHEORDENDE'
      end
      item
        FieldName = 'MUESTRACHEFECHAEMISION'
        FieldAlias = 'MUESTRACHEFECHAEMISION'
      end
      item
        FieldName = 'MUESTRACHEFECHACOBRO'
        FieldAlias = 'MUESTRACHEFECHACOBRO'
      end
      item
        FieldName = 'MUESTRAFECHADEBITO'
        FieldAlias = 'MUESTRAFECHADEBITO'
      end
      item
        FieldName = 'MUESTRACHEIMPORTE'
        FieldAlias = 'MUESTRACHEIMPORTE'
      end
      item
        FieldName = 'MUESTRACHEIDBANCO'
        FieldAlias = 'MUESTRACHEIDBANCO'
      end
      item
        FieldName = 'MUESTRAFUEDEBITADO'
        FieldAlias = 'MUESTRAFUEDEBITADO'
      end>
  end
  object DataToXLSRempl: TDataToXLS
    DataSet = CDSCheRemplazados
    Columns = <
      item
        DataField = 'ID'
        Save = False
        Title = 'ID'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'TIPOCPBTE'
        Save = False
        Title = 'TIPOCPBTE'
      end
      item
        DataField = 'CLASECPBTE'
        Save = False
        Title = 'CLASECPBTE'
      end
      item
        DataField = 'FECHA'
        Save = False
        Title = 'Fecha'
      end
      item
        DataField = 'MUESTRACOMPROBANTE'
        Title = 'Comprob.'
      end
      item
        DataField = 'MUESTRASUCURSAL'
        Title = 'Sucursal'
      end
      item
        DataField = 'NROCPBTE'
        Title = 'Nro.Cpbe'
      end
      item
        DataField = 'DETALLE'
        Title = 'Detalle'
      end
      item
        DataField = 'IMPORTE'
        Title = 'Importe'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'ID_CHE_REMPLAZADO'
        Title = 'ID_CHE_REMPLAZADO'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'MUESTRACHENUMERO'
        Title = 'Nro.Che'
        Alignment = taRightJustify
      end
      item
        DataField = 'MUESTRACTABANCO'
        Title = 'Banco'
      end
      item
        DataField = 'MUESTRACHEORDENDE'
        Title = 'Orden De'
      end
      item
        DataField = 'MUESTRACHEFECHAEMISION'
        Title = 'F.Emision'
      end
      item
        DataField = 'MUESTRACHEFECHACOBRO'
        Title = 'F.Cobro'
      end
      item
        DataField = 'MUESTRAFECHADEBITO'
        Title = 'F,Debito'
      end
      item
        DataField = 'MUESTRACHEIMPORTE'
        Title = 'Importe'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'MUESTRACHEIDBANCO'
        Save = False
        Title = 'MUESTRACHEIDBANCO'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'MUESTRAFUEDEBITADO'
        Save = False
        Title = 'MUESTRAFUEDEBITADO'
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
    Left = 548
    Top = 392
  end
  object CDSCtaCaja: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCtaCaja'
    Left = 240
    Top = 232
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
  object CDSBancos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBancos'
    Left = 240
    Top = 288
    object CDSBancosID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Required = True
    end
    object CDSBancosID_TIPO_CTA: TIntegerField
      FieldName = 'ID_TIPO_CTA'
      Required = True
    end
    object CDSBancosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSBancosNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Size = 15
    end
    object CDSBancosID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object CDSBancosCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSBancosRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object DSPCtaCaja: TDataSetProvider
    DataSet = QCtaCaja_
    Options = []
    Left = 135
    Top = 232
  end
  object DSPBancos: TDataSetProvider
    DataSet = QBancos_
    Options = []
    Left = 135
    Top = 288
  end
  object CDSMov: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMov'
    Left = 240
    Top = 352
    object CDSMovID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      Required = True
    end
    object CDSMovTIPO_OPERACION: TStringField
      FieldName = 'TIPO_OPERACION'
      Origin = 'TIPO_OPERACION'
      Size = 1
    end
    object CDSMovTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSMovCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Size = 2
    end
    object CDSMovID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSMovNRO_COMPROBANTE: TStringField
      FieldName = 'NRO_COMPROBANTE'
      Origin = 'NRO_COMPROBANTE'
      Required = True
      Size = 13
    end
    object CDSMovHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
    end
    object CDSMovDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
    end
    object CDSMovID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      Required = True
    end
    object CDSMovID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      Required = True
    end
    object CDSMovUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
    end
    object CDSMovCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object CDSMovID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
    end
    object CDSMovMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object CDSMovMUESTRACTACAJA: TStringField
      FieldName = 'MUESTRACTACAJA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object CDSMovFECHA_CAJA: TSQLTimeStampField
      DisplayWidth = 10
      FieldName = 'FECHA_CAJA'
      Origin = 'FECHA_CAJA'
    end
    object CDSMovFECHA_OPERACION: TSQLTimeStampField
      DisplayWidth = 10
      FieldName = 'FECHA_OPERACION'
      Origin = 'FECHA_OPERACION'
    end
  end
  object DSPMov: TDataSetProvider
    DataSet = QMov_
    Left = 135
    Top = 344
  end
  object QBorrarMovFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete resumen_bco_det r where r.id=:id')
    Left = 1020
    Top = 360
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end>
  end
  object spDebitarFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'DEBITAR_CHE_AL_BANCO'
    Left = 892
    Top = 208
    ParamData = <
      item
        Position = 1
        Name = 'ID_CUENTA_BANCO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID_CHEQUE_PRO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'FECHA_DEBITO'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'FECHA_COBRO'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'IMPORTE'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'NUMERO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'ORDEN_DE'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
  end
  object spSacarCheBancoFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'SACAR_CHEQUE_DEL_BANCO'
    Left = 868
    Top = 144
    ParamData = <
      item
        Position = 1
        Name = 'ID_CHEQUE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object CDSControlMovBco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPControlMovBco'
    Left = 972
    Top = 288
    object CDSControlMovBcoID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Origin = 'ID'
    end
    object CDSControlMovBcoID_CTA_BCO: TIntegerField
      DisplayLabel = 'Id Cta Bco'
      FieldName = 'ID_CTA_BCO'
      Origin = 'ID_CTA_BCO'
    end
    object CDSControlMovBcoID_ORIGEN: TIntegerField
      DisplayLabel = 'Id Origen'
      FieldName = 'ID_ORIGEN'
      Origin = 'ID_ORIGEN'
    end
    object CDSControlMovBcoDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
    object CDSControlMovBcoNUMERO: TIntegerField
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object CDSControlMovBcoDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSControlMovBcoHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSControlMovBcoIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSControlMovBcoFECHA_COBRO: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha Cobro'
      DisplayWidth = 12
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
    end
    object CDSControlMovBcoFECHA_DEBITO: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha Debito'
      DisplayWidth = 12
      FieldName = 'FECHA_DEBITO'
      Origin = 'FECHA_DEBITO'
    end
  end
  object DSPControlMovBco: TDataSetProvider
    DataSet = QControlMovBco_
    Options = [poAllowCommandText]
    Left = 876
    Top = 296
  end
end
