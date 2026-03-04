inherited FormReciboExpress: TFormReciboExpress
  Caption = 'Recibo Expres'
  ClientHeight = 650
  ClientWidth = 1126
  StyleElements = [seFont, seClient, seBorder]
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  ExplicitWidth = 1144
  ExplicitHeight = 691
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1126
    Height = 597
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1126
    ExplicitHeight = 597
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 1126
      Height = 81
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 5
        Width = 71
        Height = 20
        Caption = 'Sucursal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 235
        Top = 5
        Width = 170
        Height = 20
        Caption = 'Comprobante Recibo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvLabel1: TLabel
        Left = 488
        Top = 5
        Width = 225
        Height = 20
        Caption = 'Caja de ingresos de Fondos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 781
        Top = 5
        Width = 123
        Height = 20
        Caption = 'Modo de Cobro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object dbcComprobante: TJvDBLookupCombo
        Left = 231
        Top = 33
        Width = 251
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        LookupField = 'ID_COMPROBANTE'
        LookupDisplay = 'DENOMINACION'
        LookupSource = DSComprob
        ParentFont = False
        TabOrder = 1
        TabStop = False
        OnEnter = dbcComprobanteEnter
      end
      object dbcCtas: TJvDBLookupCombo
        Left = 488
        Top = 33
        Width = 287
        Height = 25
        EmptyValue = '-1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        LookupField = 'ID_CUENTA_CAJA'
        LookupDisplay = 'NOMBRE'
        LookupSource = DSCajas
        ParentFont = False
        TabOrder = 2
        TabStop = False
      end
      object dbcSucursal: TJvDBLookupCombo
        Left = 16
        Top = 33
        Width = 203
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        LookupField = 'CODIGO'
        LookupDisplay = 'DETALLE'
        LookupSource = DSSucursales
        ParentFont = False
        TabOrder = 0
        TabStop = False
        OnClick = dbcSucursalClick
      end
      object edSearchModoPago: TDBAdvSearchEdit
        Left = 781
        Top = 33
        Width = 313
        Height = 26
        Appearance.CategoryControlFont = False
        Appearance.CategoryFont.Charset = DEFAULT_CHARSET
        Appearance.CategoryFont.Color = clWindowText
        Appearance.CategoryFont.Height = -11
        Appearance.CategoryFont.Name = 'Tahoma'
        Appearance.CategoryFont.Style = []
        Appearance.DescriptionFont.Charset = DEFAULT_CHARSET
        Appearance.DescriptionFont.Color = clWindowText
        Appearance.DescriptionFont.Height = -11
        Appearance.DescriptionFont.Name = 'Tahoma'
        Appearance.DescriptionFont.Style = []
        Appearance.DescriptionControlFont = False
        Appearance.FilterCountFont.Charset = DEFAULT_CHARSET
        Appearance.FilterCountFont.Color = clWindowText
        Appearance.FilterCountFont.Height = -11
        Appearance.FilterCountFont.Name = 'Tahoma'
        Appearance.FilterCountFont.Style = []
        Appearance.FilterCountFormat = '(%d)'
        Appearance.ItemCategoryFont.Charset = DEFAULT_CHARSET
        Appearance.ItemCategoryFont.Color = clOrange
        Appearance.ItemCategoryFont.Height = -11
        Appearance.ItemCategoryFont.Name = 'Tahoma'
        Appearance.ItemCategoryFont.Style = []
        Appearance.ItemCategoryFormat = 'in %s'
        BorderColor = 10724259
        Categories = <>
        CategoryButton.Appearance.BorderColor = 13087391
        CategoryButton.Appearance.BorderColorHot = 5819121
        CategoryButton.Appearance.BorderColorDown = 3181250
        CategoryButton.Appearance.BorderColorChecked = 3181250
        CategoryButton.Appearance.Color = 16643823
        CategoryButton.Appearance.ColorTo = 15784647
        CategoryButton.Appearance.ColorChecked = 14285309
        CategoryButton.Appearance.ColorCheckedTo = 7131391
        CategoryButton.Appearance.ColorDisabled = 15921906
        CategoryButton.Appearance.ColorDisabledTo = 15921906
        CategoryButton.Appearance.ColorDown = 7131391
        CategoryButton.Appearance.ColorDownTo = 8122111
        CategoryButton.Appearance.ColorHot = 9102333
        CategoryButton.Appearance.ColorHotTo = 14285309
        CategoryButton.Appearance.ColorMirror = 15784647
        CategoryButton.Appearance.ColorMirrorTo = 15784647
        CategoryButton.Appearance.ColorMirrorHot = 14285309
        CategoryButton.Appearance.ColorMirrorHotTo = 9102333
        CategoryButton.Appearance.ColorMirrorDown = 8122111
        CategoryButton.Appearance.ColorMirrorDownTo = 7131391
        CategoryButton.Appearance.ColorMirrorChecked = 7131391
        CategoryButton.Appearance.ColorMirrorCheckedTo = 7131391
        CategoryButton.Appearance.ColorMirrorDisabled = 11974326
        CategoryButton.Appearance.ColorMirrorDisabledTo = 15921906
        CategoryButton.Appearance.GradientHot = ggVertical
        CategoryButton.Appearance.GradientMirrorHot = ggVertical
        CategoryButton.Appearance.GradientDown = ggVertical
        CategoryButton.Appearance.GradientMirrorDown = ggVertical
        CategoryButton.Appearance.GradientChecked = ggVertical
        CategoryButton.Appearance.TextColorDisabled = 13948116
        CategoryButton.Visible = False
        Columns = <
          item
            ControlFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 150
            DataField = 'DESCRIPCION'
          end
          item
            ControlFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 60
            DataField = 'FORMAPAGO'
          end
          item
            ControlFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Visible = False
            DataField = 'ID_TPAGO'
          end
          item
            ControlFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Visible = False
            DataField = 'ID_FPAGO'
          end
          item
            ControlFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Visible = False
            DataField = 'CODIGO'
          end>
        DropDownHeader.Color = 16643823
        DropDownHeader.ColorTo = 15784647
        DropDownHeader.Caption = '<B>Modo tipo</B>'
        DropDownHeader.Font.Charset = DEFAULT_CHARSET
        DropDownHeader.Font.Color = 5978398
        DropDownHeader.Font.Height = -11
        DropDownHeader.Font.Name = 'Tahoma'
        DropDownHeader.Font.Style = []
        DropDownHeader.Visible = True
        DropDownHeader.BorderColor = 13087391
        DropDownHeader.Buttons = <>
        DropDownHeight = 300
        DropDownFooter.Color = 16643823
        DropDownFooter.ColorTo = 15784647
        DropDownFooter.Font.Charset = DEFAULT_CHARSET
        DropDownFooter.Font.Color = 5978398
        DropDownFooter.Font.Height = -11
        DropDownFooter.Font.Name = 'Tahoma'
        DropDownFooter.Font.Style = []
        DropDownFooter.Visible = True
        DropDownFooter.BorderColor = 13087391
        DropDownFooter.Buttons = <>
        DropDownSizable = False
        DropDownWidth = 530
        EmptyText = 'Modo de Cobro ....'
        EmptyTextFocused = True
        FilterCondition.AutoSelect = True
        FocusFontColor = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 20
        Items = <>
        SearchButton.Appearance.BorderColor = 13087391
        SearchButton.Appearance.BorderColorHot = 5819121
        SearchButton.Appearance.BorderColorDown = 3181250
        SearchButton.Appearance.BorderColorChecked = 3181250
        SearchButton.Appearance.Color = 16643823
        SearchButton.Appearance.ColorTo = 15784647
        SearchButton.Appearance.ColorChecked = 14285309
        SearchButton.Appearance.ColorCheckedTo = 7131391
        SearchButton.Appearance.ColorDisabled = 15921906
        SearchButton.Appearance.ColorDisabledTo = 15921906
        SearchButton.Appearance.ColorDown = 7131391
        SearchButton.Appearance.ColorDownTo = 8122111
        SearchButton.Appearance.ColorHot = 9102333
        SearchButton.Appearance.ColorHotTo = 14285309
        SearchButton.Appearance.ColorMirror = 15784647
        SearchButton.Appearance.ColorMirrorTo = 15784647
        SearchButton.Appearance.ColorMirrorHot = 14285309
        SearchButton.Appearance.ColorMirrorHotTo = 9102333
        SearchButton.Appearance.ColorMirrorDown = 8122111
        SearchButton.Appearance.ColorMirrorDownTo = 7131391
        SearchButton.Appearance.ColorMirrorChecked = 7131391
        SearchButton.Appearance.ColorMirrorCheckedTo = 7131391
        SearchButton.Appearance.ColorMirrorDisabled = 11974326
        SearchButton.Appearance.ColorMirrorDisabledTo = 15921906
        SearchButton.Appearance.GradientHot = ggVertical
        SearchButton.Appearance.GradientMirrorHot = ggVertical
        SearchButton.Appearance.GradientDown = ggVertical
        SearchButton.Appearance.GradientMirrorDown = ggVertical
        SearchButton.Appearance.GradientChecked = ggVertical
        SearchButton.Appearance.TextColorDisabled = 13948116
        SearchButton.Visible = False
        TabOrder = 3
        Text = ''
        Version = '1.1.5.7'
        OnKeyPress = edSearchModoPagoKeyPress
        UIStyle = tsOffice2010Blue
        DropDownColor = clBlack
        DropDownButtonsBorderColor = 13087391
        DropDownButtonsBorderColorHot = 5819121
        DropDownButtonsBorderColorDown = 3181250
        DropDownButtonsColor = 16643823
        DropDownButtonsColorTo = 15784647
        DropDownButtonsColorDisabledTo = 11974326
        DropDownButtonsColorDown = 7131391
        DropDownButtonsColorDownTo = clNone
        DropDownButtonsColorHot = 9102333
        DropDownButtonsColorHotTo = clNone
        DropDownArrowColor = clNone
        DropDownArrowColorHot = clNone
        DropDownArrowColorDown = clNone
        ListSource = DSModosDeCobro
      end
    end
    object pnDatos: TPanel
      Left = 0
      Top = 81
      Width = 1126
      Height = 516
      Align = alClient
      TabOrder = 1
      DesignSize = (
        1126
        516)
      object Label3: TLabel
        Left = 7
        Top = 6
        Width = 192
        Height = 20
        Caption = 'Cliente(Nombre)/Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 616
        Top = 6
        Width = 90
        Height = 20
        Caption = 'Nro.Recibo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 970
        Top = 6
        Width = 63
        Height = 20
        Caption = 'Importe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgClientes: TDBGrid
        Left = 2
        Top = 69
        Width = 523
        Height = 427
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        DataSource = DSClientes
        DrawingStyle = gdsGradient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnKeyPress = dbgClientesKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Alignment = taCenter
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMBRE'
            Title.Alignment = taCenter
            Width = 219
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RAZON_SOCIAL'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
      object edImporte: TJvCalcEdit
        Left = 880
        Top = 28
        Width = 153
        Height = 24
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowButton = False
        TabOrder = 3
        DecimalPlacesAlwaysShown = False
        OnEnter = edImporteEnter
        OnExit = edImporteExit
      end
      object dbeSuc: TDBEdit
        Left = 545
        Top = 30
        Width = 65
        Height = 24
        TabStop = False
        DataField = 'PREFIJO'
        DataSource = DSComprob
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object btOk: TBitBtn
        Left = 1039
        Top = 27
        Width = 42
        Height = 27
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        ModalResult = 1
        NumGlyphs = 2
        TabOrder = 4
        OnClick = btOkClick
      end
      object edNumero: TEdit
        Left = 615
        Top = 30
        Width = 146
        Height = 24
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 2
        OnEnter = edNumeroEnter
        OnExit = edNumeroExit
        OnKeyDown = edNumeroKeyDown
        OnKeyPress = edNumeroKeyPress
      end
      object edFecha: TJvDateEdit
        Left = 407
        Top = 29
        Width = 98
        Height = 24
        CheckOnExit = True
        DefaultToday = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowNullDate = False
        TabOrder = 0
        OnKeyDown = edFechaKeyDown
      end
      object pcMovimientos: TPageControl
        Left = 527
        Top = 65
        Width = 583
        Height = 430
        ActivePage = tsRecibos
        Anchors = [akLeft, akTop, akBottom]
        HotTrack = True
        TabOrder = 6
        TabPosition = tpBottom
        TabStop = False
        OnChanging = pcMovimientosChanging
        object tsRecibos: TTabSheet
          Caption = 'Recibos'
          object dbgRecibos: TDBGrid
            Left = 0
            Top = 0
            Width = 575
            Height = 404
            TabStop = False
            Align = alClient
            DataSource = DSRecibos
            DrawingStyle = gdsGradient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnDblClick = dbgRecibosDblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'CODIGO'
                Title.Alignment = taCenter
                Width = 86
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FECHA'
                Title.Alignment = taCenter
                Width = 111
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NROCPBTE'
                Title.Alignment = taCenter
                Width = 127
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CLASECPBTE'
                Title.Alignment = taCenter
                Width = 39
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TOTAL'
                Title.Alignment = taCenter
                Width = 106
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_RC'
                Title.Alignment = taCenter
                Visible = True
              end>
          end
        end
        object tsCtaCte: TTabSheet
          Caption = 'Cta.Cte'
          ImageIndex = 1
          object cxGrid1: TcxGrid
            Left = 0
            Top = 0
            Width = 575
            Height = 404
            Align = alClient
            TabOrder = 0
            TabStop = False
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            object cxGrid1DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataSource = DSMovCC
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.GroupByBox = False
              Styles.Header = cxStyle1
              object cxGrid1DBTableView1FECHAVTA: TcxGridDBColumn
                DataBinding.FieldName = 'FECHAVTA'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Focusing = False
                Width = 90
              end
              object cxGrid1DBTableView1FECHAVTO: TcxGridDBColumn
                DataBinding.FieldName = 'FECHAVTO'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Focusing = False
                Width = 85
              end
              object cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn
                DataBinding.FieldName = 'TIPOCPBTE'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Focusing = False
                Width = 32
              end
              object cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn
                DataBinding.FieldName = 'CLASECPBTE'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Focusing = False
                Width = 34
              end
              object cxGrid1DBTableView1DETALLE: TcxGridDBColumn
                DataBinding.FieldName = 'DETALLE'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Focusing = False
                Width = 139
              end
              object cxGrid1DBTableView1DEBE: TcxGridDBColumn
                DataBinding.FieldName = 'DEBE'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Focusing = False
                Width = 83
              end
              object cxGrid1DBTableView1HABER: TcxGridDBColumn
                DataBinding.FieldName = 'HABER'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Focusing = False
                Width = 84
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
        end
      end
      object edSearchCliente: TDBAdvSearchEdit
        Left = 10
        Top = 29
        Width = 382
        Height = 23
        Appearance.CategoryControlFont = False
        Appearance.CategoryFont.Charset = DEFAULT_CHARSET
        Appearance.CategoryFont.Color = clWindowText
        Appearance.CategoryFont.Height = -11
        Appearance.CategoryFont.Name = 'Tahoma'
        Appearance.CategoryFont.Style = []
        Appearance.DescriptionFont.Charset = DEFAULT_CHARSET
        Appearance.DescriptionFont.Color = clWindowText
        Appearance.DescriptionFont.Height = -11
        Appearance.DescriptionFont.Name = 'Tahoma'
        Appearance.DescriptionFont.Style = []
        Appearance.DescriptionControlFont = False
        Appearance.FilterCountFont.Charset = DEFAULT_CHARSET
        Appearance.FilterCountFont.Color = clWindowText
        Appearance.FilterCountFont.Height = -11
        Appearance.FilterCountFont.Name = 'Tahoma'
        Appearance.FilterCountFont.Style = []
        Appearance.FilterCountFormat = '(%d)'
        Appearance.ItemCategoryFont.Charset = DEFAULT_CHARSET
        Appearance.ItemCategoryFont.Color = clOrange
        Appearance.ItemCategoryFont.Height = -11
        Appearance.ItemCategoryFont.Name = 'Tahoma'
        Appearance.ItemCategoryFont.Style = []
        Appearance.ItemCategoryFormat = 'in %s'
        BorderColor = 10724259
        Categories = <
          item
            Caption = 'Codigo'
            ID = 0
            Tag = 0
          end
          item
            Caption = 'Nombre'
            ID = 0
            Tag = 0
          end>
        CategoryButton.Appearance.BorderColor = 13421257
        CategoryButton.Appearance.BorderColorHot = 10079963
        CategoryButton.Appearance.BorderColorDown = 4548219
        CategoryButton.Appearance.BorderColorChecked = 4548219
        CategoryButton.Appearance.Color = 15987697
        CategoryButton.Appearance.ColorTo = 16119283
        CategoryButton.Appearance.ColorChecked = 11918331
        CategoryButton.Appearance.ColorCheckedTo = 7915518
        CategoryButton.Appearance.ColorDisabled = 15921906
        CategoryButton.Appearance.ColorDisabledTo = 15921906
        CategoryButton.Appearance.ColorDown = 7778289
        CategoryButton.Appearance.ColorDownTo = 4296947
        CategoryButton.Appearance.ColorHot = 15465983
        CategoryButton.Appearance.ColorHotTo = 11332863
        CategoryButton.Appearance.ColorMirror = 15657703
        CategoryButton.Appearance.ColorMirrorTo = 16316406
        CategoryButton.Appearance.ColorMirrorHot = 5888767
        CategoryButton.Appearance.ColorMirrorHotTo = 10807807
        CategoryButton.Appearance.ColorMirrorDown = 946929
        CategoryButton.Appearance.ColorMirrorDownTo = 5021693
        CategoryButton.Appearance.ColorMirrorChecked = 10480637
        CategoryButton.Appearance.ColorMirrorCheckedTo = 5682430
        CategoryButton.Appearance.ColorMirrorDisabled = 11974326
        CategoryButton.Appearance.ColorMirrorDisabledTo = 15921906
        CategoryButton.Appearance.GradientHot = ggVertical
        CategoryButton.Appearance.GradientMirrorHot = ggVertical
        CategoryButton.Appearance.GradientDown = ggVertical
        CategoryButton.Appearance.GradientMirrorDown = ggVertical
        CategoryButton.Appearance.GradientChecked = ggVertical
        CategoryButton.Appearance.TextColorDisabled = 13948116
        CategoryButton.Visible = False
        Columns = <
          item
            Alignment = gtaCenter
            ControlFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 100
            DataField = 'CODIGO'
          end
          item
            ControlFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Trimming = True
            Width = 250
            DataField = 'NOMBRE'
          end
          item
            ControlFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Trimming = True
            Width = 250
            DataField = 'RAZON_SOCIAL'
          end
          item
            ControlFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Trimming = True
            Width = 200
            DataField = 'DIRECCION_COMERCIAL'
          end
          item
            Alignment = gtaCenter
            ControlFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 115
            DataField = 'NRODOCUMENTO'
          end>
        DropDownHeader.Color = 16316406
        DropDownHeader.ColorTo = 15261915
        DropDownHeader.Caption = 
          '<B><FONT size="10">    Codigo                            Nombre ' +
          '                                        Razon Social            ' +
          '                             Direccion                          ' +
          '   Nro.Documento</FONT></B>'
        DropDownHeader.Font.Charset = DEFAULT_CHARSET
        DropDownHeader.Font.Color = 9126421
        DropDownHeader.Font.Height = -11
        DropDownHeader.Font.Name = 'Tahoma'
        DropDownHeader.Font.Style = []
        DropDownHeader.Visible = True
        DropDownHeader.BorderColor = 7630959
        DropDownHeader.Buttons = <>
        DropDownHeight = 420
        DropDownFooter.Color = 16316406
        DropDownFooter.ColorTo = 15261915
        DropDownFooter.Font.Charset = DEFAULT_CHARSET
        DropDownFooter.Font.Color = 9126421
        DropDownFooter.Font.Height = -11
        DropDownFooter.Font.Name = 'Tahoma'
        DropDownFooter.Font.Style = []
        DropDownFooter.Visible = True
        DropDownFooter.BorderColor = 7630959
        DropDownFooter.Buttons = <>
        DropDownWidth = 945
        EmptyText = 'Buscador de Cliente ....'
        FilterCondition.AllColumns = True
        FilterCondition.AutoSelect = True
        FilterCondition.Column = 1
        FocusBorder = True
        FocusFontColor = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 20
        Items = <>
        SearchButton.Appearance.BorderColor = 13421257
        SearchButton.Appearance.BorderColorHot = 10079963
        SearchButton.Appearance.BorderColorDown = 4548219
        SearchButton.Appearance.BorderColorChecked = 4548219
        SearchButton.Appearance.Color = 15987697
        SearchButton.Appearance.ColorTo = 16119283
        SearchButton.Appearance.ColorChecked = 11918331
        SearchButton.Appearance.ColorCheckedTo = 7915518
        SearchButton.Appearance.ColorDisabled = 15921906
        SearchButton.Appearance.ColorDisabledTo = 15921906
        SearchButton.Appearance.ColorDown = 7778289
        SearchButton.Appearance.ColorDownTo = 4296947
        SearchButton.Appearance.ColorHot = 15465983
        SearchButton.Appearance.ColorHotTo = 11332863
        SearchButton.Appearance.ColorMirror = 15657703
        SearchButton.Appearance.ColorMirrorTo = 16316406
        SearchButton.Appearance.ColorMirrorHot = 5888767
        SearchButton.Appearance.ColorMirrorHotTo = 10807807
        SearchButton.Appearance.ColorMirrorDown = 946929
        SearchButton.Appearance.ColorMirrorDownTo = 5021693
        SearchButton.Appearance.ColorMirrorChecked = 10480637
        SearchButton.Appearance.ColorMirrorCheckedTo = 5682430
        SearchButton.Appearance.ColorMirrorDisabled = 11974326
        SearchButton.Appearance.ColorMirrorDisabledTo = 15921906
        SearchButton.Appearance.GradientHot = ggVertical
        SearchButton.Appearance.GradientMirrorHot = ggVertical
        SearchButton.Appearance.GradientDown = ggVertical
        SearchButton.Appearance.GradientMirrorDown = ggVertical
        SearchButton.Appearance.GradientChecked = ggVertical
        SearchButton.Appearance.TextColorDisabled = 13948116
        SearchButton.Visible = False
        TabOrder = 7
        Text = ''
        Version = '1.1.5.7'
        OnSelect = edSearchClienteSelect
        OnKeyPress = edSearchClienteKeyPress
        UIStyle = tsOffice2007Silver
        DropDownColor = clBlack
        DropDownButtonsBorderColorHot = 10079963
        DropDownButtonsBorderColorDown = 4370174
        DropDownButtonsColor = 16382200
        DropDownButtonsColorTo = 15000287
        DropDownButtonsColorDisabledTo = 11974326
        DropDownButtonsColorDown = 11196927
        DropDownButtonsColorDownTo = 7257087
        DropDownButtonsColorHot = 15465983
        DropDownButtonsColorHotTo = 11332863
        DropDownArrowColor = clNone
        DropDownArrowColorHot = clNone
        DropDownArrowColorDown = clNone
        ListSource = DSClientes
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 597
    Width = 1126
    Align = alBottom
    ExplicitTop = 597
    ExplicitWidth = 1126
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
    inherited btBuscar: TBitBtn
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
    Top = 627
    Width = 1126
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 627
    ExplicitWidth = 1126
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 1037
      ExplicitWidth = 1037
    end
  end
  inherited ActionList1: TActionList
    Left = 424
    Top = 176
    object VerCtaCte: TAction
      Caption = 'VerCtaCte'
      OnExecute = VerCtaCteExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 568
    Top = 216
  end
  inherited ImageList1: TImageList
    Left = 272
    Top = 40
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
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 40
    Top = 320
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 952
    Top = 272
  end
  object DSPComprob: TDataSetProvider
    DataSet = QComp
    Options = []
    Left = 536
    Top = 212
  end
  object CDSComprob: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPComprob'
    Left = 608
    Top = 212
    object CDSComprobID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSComprobTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSComprobCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object CDSComprobDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object CDSComprobSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSComprobLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSComprobPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object CDSComprobNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object CDSComprobNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object CDSComprobTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
      Origin = 'TOMA_NRO_DE'
    end
  end
  object DSComprob: TDataSource
    AutoEdit = False
    DataSet = CDSComprob
    Left = 672
    Top = 212
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Left = 736
    Top = 192
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 792
    Top = 192
    object CDSSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object DSSucursales: TDataSource
    AutoEdit = False
    DataSet = CDSSucursal
    Left = 864
    Top = 200
  end
  object DSPCajas: TDataSetProvider
    DataSet = QCajas
    Options = []
    Left = 528
    Top = 435
  end
  object CDSCajas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCajas'
    Left = 592
    Top = 435
    object CDSCajasID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCajasNUMEROCAJA: TIntegerField
      FieldName = 'NUMEROCAJA'
      Origin = 'NUMEROCAJA'
    end
    object CDSCajasID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
    object CDSCajasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSCajasFECHA_INCIO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO'
      Required = True
    end
    object CDSCajasFECHA_CIERRE: TSQLTimeStampField
      FieldName = 'FECHA_CIERRE'
    end
  end
  object DSCajas: TDataSource
    DataSet = CDSCajas
    Left = 640
    Top = 435
  end
  object QComp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes'
      'where tipo_comprob='#39'RC'#39' '
      'and compra_venta='#39'V'#39' '
      'and sucursal=:suc'
      'order by defecto desc'
      '')
    Left = 480
    Top = 208
    ParamData = <
      item
        Position = 1
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QCajas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_caja,c.numerocaja, c.fecha_incio,c.fecha_cierre,c.id' +
        '_cuenta_caja,cc.nombre from caja_cab c'
      'left join cuenta_caja cc on cc.id_cuenta=c.id_cuenta_caja'
      'where c.estado=0 and cc.id_tipo_cta=1 '
      'order By c.id_caja desc')
    Left = 464
    Top = 432
  end
  object QClientes_: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.codigo,c.nombre,c.razon_social, c.direccion_comercial,c' +
        '.nrodocumento from clientes c'
      'where c.activo='#39'S'#39
      'order by c.nombre')
    Left = 104
    Top = 456
    object QClientes_CODIGO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 11
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QClientes_NOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 44
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QClientes_DIRECCION_COMERCIAL: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION_COMERCIAL'
      Origin = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object QClientes_RAZON_SOCIAL: TStringField
      DisplayLabel = 'R.Social'
      DisplayWidth = 42
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Visible = False
      Size = 35
    end
    object QClientes_NRODOCUMENTO: TStringField
      FieldName = 'NRODOCUMENTO'
      Origin = 'NRODOCUMENTO'
      Size = 15
    end
  end
  object DSClientes: TDataSource
    DataSet = CDSClientes
    Left = 304
    Top = 456
  end
  object QRecibos_: TFDQuery
    MasterSource = DSClientes
    MasterFields = 'CODIGO'
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select r.fecha, r.codigo,r.tipocpbte,r.clasecpbte,r.nrocpbte,r.t' +
        'otal,r.id_rc'
      ' from recibos r'
      'where r.codigo=:codigo '
      'order by r.codigo, r.fecha,r.nrocpbte')
    Left = 464
    Top = 488
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QRecibos_CODIGO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Codigo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object QRecibos_TIPOCPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tp'
      DisplayWidth = 5
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QRecibos_CLASECPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Cl'
      DisplayWidth = 5
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QRecibos_FECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      DisplayWidth = 12
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QRecibos_NROCPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro.Cpbte'
      DisplayWidth = 16
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object QRecibos_TOTAL: TFloatField
      DisplayLabel = 'Importe'
      DisplayWidth = 18
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
    end
    object QRecibos_ID_RC: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 13
      FieldName = 'ID_RC'
      Origin = 'ID_RC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
  end
  object DSRecibos: TDataSource
    DataSet = CDSRecibos
    Left = 656
    Top = 488
  end
  object spReciboExpress: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end>
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvRefreshMode, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    StoredProcName = 'GENERAR_RECIBO_EXPRESS'
    Left = 968
    Top = 369
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 2
        Name = 'FECHA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'ID_COMPROBANTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'IMPORTE'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 6
        Name = 'NUMERO_RC'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 7
        Name = 'ID_CAJA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'IDTC'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'TIPO_PAGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 10
        Name = 'FORM_PAGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QBuscaRcRepetido: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max( r.id_rc)  from recibos r where'
      'r.clasecpbte=:clase and r.sucrc=:suc and r.numerorc=:num and '
      'r.sucursal = :sucursal')
    Left = 760
    Top = 480
    ParamData = <
      item
        Name = 'CLASE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Name = 'NUM'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QBuscaRcRepetidoMAX: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MAX'
      Origin = 'MAX'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QMovCC_: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select m.fechavta,m.fechavto,m.tipocpbte,m.clasecpbte,m.detalle,' +
        'm.debe,m.haber from movccvta m where m.cliente=:codigo'
      'order by m.fechavta asc ,m.id_movccvta asc')
    Left = 480
    Top = 272
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QMovCC_TIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QMovCC_CLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QMovCC_DETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QMovCC_DEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object QMovCC_HABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object QMovCC_FECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha Vta'
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object QMovCC_FECHAVTO: TSQLTimeStampField
      DisplayLabel = 'Fecha Vto'
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
  end
  object DSMovCC: TDataSource
    DataSet = CDSMovCC
    Left = 664
    Top = 273
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 168
    Top = 161
    object VerCliente1: TMenuItem
      Caption = 'Ver Cliente'
      OnClick = VerCliente1Click
    end
    object Imputaciones1: TMenuItem
      Caption = 'Imputaciones'
      OnClick = Imputaciones1Click
    end
  end
  object QUltimoNro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max( r.numerorc)  from recibos r where'
      'r.clasecpbte=:clase and r.sucrc=:suc and '
      'r.sucursal = :sucursal')
    Left = 744
    Top = 360
    ParamData = <
      item
        Name = 'CLASE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QUltimoNroMAX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAX'
      Origin = 'MAX'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
  end
  object CDSClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPClientes'
    BeforeOpen = CDSClientesBeforeOpen
    AfterOpen = CDSClientesAfterOpen
    AfterScroll = CDSClientesAfterScroll
    Left = 240
    Top = 457
    object CDSClientesCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSClientesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object CDSClientesDIRECCION_COMERCIAL: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION_COMERCIAL'
      Origin = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object CDSClientesRAZON_SOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSClientesNRODOCUMENTO: TStringField
      FieldName = 'NRODOCUMENTO'
      Size = 15
    end
  end
  object DSPClientes: TDataSetProvider
    DataSet = QClientes_
    Options = []
    Left = 168
    Top = 457
  end
  object QModosDeCobro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select 1 as id_tpago,f.id_fpago,tp.detalle as FormaPago, 1 as co' +
        'digo ,f.descripcion as descripcion,0 as nro_cuenta from t_credit' +
        'o t'
      'left join formapago f on f.id_tpago=1'
      'left join tipopago tp on tp.id_tpago=f.id_tpago'
      'union'
      
        'select 4 as id_tpago,f.id_fpago,f.descripcion as FormaPago, t.id' +
        '_tc as codigo ,t.descripcion as descripcion,0 as nro_cuenta from' +
        ' t_credito t'
      'left join formapago f on f.id_tpago=4'
      'union'
      
        'select 5 as id_tpago,f.id_fpago,f.descripcion as FormaPago, cc.i' +
        'd_cuenta as codigo ,cc.nombre as descripcion,cc.nro_cuenta from ' +
        'cuenta_caja cc'
      'left join formapago f on f.id_tpago=5'
      'where cc.id_tipo_cta=2')
    Left = 251
    Top = 382
  end
  object CDSModosDeCobro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPModosDeCobro'
    Left = 392
    Top = 393
    object CDSModosDeCobroID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      Required = True
    end
    object CDSModosDeCobroID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
    end
    object CDSModosDeCobroFORMAPAGO: TStringField
      DisplayWidth = 15
      FieldName = 'FORMAPAGO'
      Origin = 'FORMAPAGO'
    end
    object CDSModosDeCobroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object CDSModosDeCobroDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 25
    end
    object CDSModosDeCobroNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Origin = 'NRO_CUENTA'
      Size = 15
    end
  end
  object DSPModosDeCobro: TDataSetProvider
    DataSet = QModosDeCobro
    Options = []
    Left = 328
    Top = 377
  end
  object DSModosDeCobro: TDataSource
    DataSet = CDSModosDeCobro
    Left = 448
    Top = 393
  end
  object CDSMovCC: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovCC'
    Left = 595
    Top = 270
    object CDSMovCCTIPOCPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSMovCCCLASECPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovCCDETALLE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
    end
    object CDSMovCCDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovCCHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovCCFECHAVTA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'F.Vta'
      FieldName = 'FECHAVTA'
    end
    object CDSMovCCFECHAVTO: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'F.Vto'
      FieldName = 'FECHAVTO'
    end
  end
  object DSPMovCC: TDataSetProvider
    DataSet = QMovCC_
    Options = []
    Left = 539
    Top = 278
  end
  object CDSRecibos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 6
      end>
    ProviderName = 'DSPRecibos'
    Left = 603
    Top = 486
    object CDSRecibosCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSRecibosTIPOCPBTE: TStringField
      DisplayLabel = 'Tp.'
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSRecibosCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSRecibosFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
    object CDSRecibosNROCPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object CDSRecibosTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00'
    end
    object CDSRecibosID_RC: TIntegerField
      DisplayLabel = 'Id Rc'
      FieldName = 'ID_RC'
      Required = True
    end
  end
  object DSPRecibos: TDataSetProvider
    DataSet = QRecibos_
    Options = []
    Left = 531
    Top = 486
  end
end
