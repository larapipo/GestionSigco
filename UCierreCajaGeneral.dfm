inherited FormCierreCajaGeneral: TFormCierreCajaGeneral
  Left = 274
  Top = 154
  Caption = 'Carga Caja Diaria'
  ClientHeight = 792
  ClientWidth = 1102
  DoubleBuffered = True
  Position = poDesktopCenter
  StyleElements = [seFont, seClient, seBorder]
  OnResize = FormResize
  ExplicitWidth = 1120
  ExplicitHeight = 833
  TextHeight = 13
  object pnCab: TPanel [0]
    Left = 0
    Top = 0
    Width = 1102
    Height = 39
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 4
    DesignSize = (
      1102
      39)
    object Label10: TLabel
      Left = 5
      Top = 8
      Width = 51
      Height = 20
      Caption = 'Fecha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbCaja: TLabel
      Left = 231
      Top = 5
      Width = 42
      Height = 24
      Caption = 'Caja'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbCaja: TJvDBLookupCombo
      Left = 279
      Top = 6
      Width = 474
      Height = 27
      DropDownCount = 12
      DropDownWidth = 500
      DisplayAllFields = True
      EmptyValue = '-1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LookupField = 'ID_CUENTA_CAJA'
      LookupDisplay = 'NUMEROCAJA;MUESTRACTACAJA;fecha_incio;fecha_cierre'
      LookupSource = DSCaja
      ParentFont = False
      TabOrder = 0
    end
    object chCierraCaja: TAdvOfficeCheckBox
      Left = 896
      Top = 8
      Width = 177
      Height = 17
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = True
      OnClick = chCierraCajaClick
      Alignment = taRightJustify
      Caption = 'Cierra Caja al Terminar'
      ReturnIsTab = False
      Version = '1.8.4.2'
    end
  end
  inherited pnPrincipal: TPanel
    Top = 39
    Width = 1102
    Height = 696
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 39
    ExplicitWidth = 1102
    ExplicitHeight = 611
    object pcPrincipal: TPageControl
      Left = 0
      Top = 0
      Width = 1102
      Height = 696
      ActivePage = pgConfiguracion
      Align = alClient
      Images = ImageList1
      MultiLine = True
      TabOrder = 0
      TabPosition = tpBottom
      object pgCaja: TTabSheet
        Caption = 'Caja'
        ImageIndex = -1
        object pnEgresos: TPanel
          Left = 553
          Top = 0
          Width = 541
          Height = 669
          Align = alClient
          BevelOuter = bvNone
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 0
          DesignSize = (
            541
            669)
          object Label18: TLabel
            Left = 297
            Top = 546
            Width = 64
            Height = 24
            Anchors = [akRight, akBottom]
            Caption = 'Gastos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 294
            ExplicitTop = 470
          end
          object Label19: TLabel
            Left = 207
            Top = 585
            Width = 154
            Height = 24
            Anchors = [akRight, akBottom]
            Caption = 'Retiros Personal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 204
            ExplicitTop = 509
          end
          object Label20: TLabel
            Left = 230
            Top = 624
            Width = 131
            Height = 24
            Anchors = [akRight, akBottom]
            Caption = 'Saldo de Caja'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 227
            ExplicitTop = 548
          end
          object edGastos: TJvCalcEdit
            Left = 369
            Top = 546
            Width = 158
            Height = 32
            DisplayFormat = ',0.00'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Anchors = [akRight, akBottom]
            ParentFont = False
            ShowButton = False
            TabOrder = 0
            DisabledTextColor = clRed
            DecimalPlacesAlwaysShown = False
          end
          object edRetiros: TJvCalcEdit
            Left = 369
            Top = 585
            Width = 158
            Height = 32
            DisplayFormat = ',0.00'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Anchors = [akRight, akBottom]
            ParentFont = False
            ShowButton = False
            TabOrder = 1
            DisabledTextColor = clRed
            DecimalPlacesAlwaysShown = False
          end
          object edSaldoCaja: TJvCalcEdit
            Left = 369
            Top = 624
            Width = 158
            Height = 32
            DisplayFormat = ',0.00'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Anchors = [akRight, akBottom]
            ParentFont = False
            ShowButton = False
            TabOrder = 2
            DisabledTextColor = clBlue
            DecimalPlacesAlwaysShown = False
          end
          object AdvScrollBox1: TAdvScrollBox
            Left = 0
            Top = 0
            Width = 541
            Height = 540
            VertScrollBar.Color = clBtnFace
            VertScrollBar.ParentColor = False
            VertScrollBar.Style = ssHotTrack
            Align = alTop
            Anchors = [akLeft, akTop, akRight, akBottom]
            DoubleBuffered = True
            Color = clMenuHighlight
            Ctl3D = False
            ParentColor = False
            ParentCtl3D = False
            ParentDoubleBuffered = False
            TabOrder = 3
            WheelEnable = True
            object pnGastos: TPanel
              Left = 0
              Top = 400
              Width = 522
              Height = 200
              Align = alTop
              Caption = 'Egresos de Caja'
              Padding.Left = 3
              Padding.Right = 3
              Padding.Bottom = 3
              TabOrder = 0
              object dbgEgresos: TDBGrid
                Left = 4
                Top = 34
                Width = 514
                Height = 132
                Align = alClient
                BorderStyle = bsNone
                Ctl3D = False
                DataSource = DSEgresoCajaDetalle
                DrawingStyle = gdsClassic
                FixedColor = clSkyBlue
                GradientEndColor = clWhite
                GradientStartColor = clGradientActiveCaption
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnColEnter = dbgEgresosColEnter
                OnEditButtonClick = dbgEgresosEditButtonClick
                OnEnter = dbgEgresosEnter
                OnKeyPress = dbgEgresosKeyPress
                Columns = <
                  item
                    ButtonStyle = cbsEllipsis
                    Expanded = False
                    FieldName = 'CODIGOCTA'
                    Title.Alignment = taCenter
                    Title.Caption = 'Cod.Cta'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -13
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 104
                    Visible = True
                  end
                  item
                    Color = clInfoBk
                    Expanded = False
                    FieldName = 'DETALLE'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -13
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 313
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'IMPORTE'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -13
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 91
                    Visible = True
                  end>
              end
              object pnPieGastos: TPanel
                Left = 4
                Top = 166
                Width = 514
                Height = 30
                Align = alBottom
                BevelOuter = bvNone
                TabOrder = 1
                DesignSize = (
                  514
                  30)
                object edTotalEgresos: TJvCalcEdit
                  Left = 392
                  Top = 3
                  Width = 121
                  Height = 22
                  Color = clBtnFace
                  DisplayFormat = ',0.00'
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlue
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  Anchors = [akTop, akRight]
                  ParentFont = False
                  ShowButton = False
                  TabOrder = 0
                  DisabledTextColor = clBlue
                  DecimalPlacesAlwaysShown = False
                end
              end
              object pnCabGastos: TPanel
                Left = 4
                Top = 1
                Width = 514
                Height = 33
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Egresos de Caja'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                ExplicitTop = 6
                ExplicitWidth = 531
              end
            end
            object pnOPagos: TPanel
              Left = 0
              Top = 0
              Width = 522
              Height = 200
              Align = alTop
              Caption = 'Ordenes de Pago'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              object pnCabOPagos: TPanel
                Left = 1
                Top = 1
                Width = 520
                Height = 33
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Ordenes de Pago'
                TabOrder = 0
                ExplicitWidth = 537
              end
              object dbgOPagos: TDBGrid
                Left = 1
                Top = 34
                Width = 520
                Height = 136
                Align = alClient
                BorderStyle = bsNone
                Ctl3D = False
                DataSource = DSAdelantos
                DrawingStyle = gdsClassic
                FixedColor = clSkyBlue
                GradientEndColor = clWhite
                GradientStartColor = clGradientActiveCaption
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnColEnter = dbgAdelantosColEnter
                OnEditButtonClick = dbgAdelantosEditButtonClick
                OnEnter = dbgAdelantosEnter
                OnKeyPress = dbgAdelantosKeyPress
                Columns = <
                  item
                    ButtonStyle = cbsEllipsis
                    Expanded = False
                    FieldName = 'CODIGO'
                    Title.Alignment = taCenter
                    Title.Caption = 'Codigo'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -13
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 104
                    Visible = True
                  end
                  item
                    Color = clInfoBk
                    Expanded = False
                    FieldName = 'NOMBRE'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -13
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 313
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'IMPORTE'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -13
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 91
                    Visible = True
                  end>
              end
              object pnPieOPagos: TPanel
                Left = 1
                Top = 170
                Width = 520
                Height = 29
                Align = alBottom
                TabOrder = 2
                DesignSize = (
                  520
                  29)
                object JvCalcEdit1: TJvCalcEdit
                  Left = 392
                  Top = 3
                  Width = 121
                  Height = 22
                  DisplayFormat = ',0.00'
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlue
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  Anchors = [akTop, akRight]
                  ParentFont = False
                  ShowButton = False
                  TabOrder = 0
                  DisabledTextColor = clBlue
                  DecimalPlacesAlwaysShown = False
                end
              end
            end
            object pnPersonal: TPanel
              Left = 0
              Top = 200
              Width = 522
              Height = 200
              Align = alTop
              BevelOuter = bvNone
              Padding.Left = 3
              Padding.Right = 3
              Padding.Bottom = 3
              TabOrder = 2
              object pnPiePersonal: TPanel
                Left = 3
                Top = 168
                Width = 516
                Height = 29
                Align = alBottom
                TabOrder = 0
                DesignSize = (
                  516
                  29)
                object edTotalAdelantos: TJvCalcEdit
                  Left = 392
                  Top = 3
                  Width = 121
                  Height = 22
                  DisplayFormat = ',0.00'
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlue
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  Anchors = [akTop, akRight]
                  ParentFont = False
                  ShowButton = False
                  TabOrder = 0
                  DisabledTextColor = clBlue
                  DecimalPlacesAlwaysShown = False
                end
              end
              object dbgAdelantos: TDBGrid
                Left = 3
                Top = 33
                Width = 516
                Height = 135
                Align = alClient
                BorderStyle = bsNone
                Ctl3D = False
                DataSource = DSAdelantos
                DrawingStyle = gdsClassic
                FixedColor = clSkyBlue
                GradientEndColor = clWhite
                GradientStartColor = clGradientActiveCaption
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnColEnter = dbgAdelantosColEnter
                OnEditButtonClick = dbgAdelantosEditButtonClick
                OnEnter = dbgAdelantosEnter
                OnKeyPress = dbgAdelantosKeyPress
                Columns = <
                  item
                    ButtonStyle = cbsEllipsis
                    Expanded = False
                    FieldName = 'CODIGO'
                    Title.Alignment = taCenter
                    Title.Caption = 'Codigo'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -13
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 104
                    Visible = True
                  end
                  item
                    Color = clInfoBk
                    Expanded = False
                    FieldName = 'NOMBRE'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -13
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 313
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'IMPORTE'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -13
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 91
                    Visible = True
                  end>
              end
              object pnCabPersonañ: TPanel
                Left = 3
                Top = 0
                Width = 516
                Height = 33
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Personal'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                ExplicitWidth = 533
              end
            end
          end
        end
        object pnIngresos: TPanel
          Left = 0
          Top = 0
          Width = 553
          Height = 669
          Align = alLeft
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 1
          ExplicitHeight = 584
          object Label4: TLabel
            Left = 26
            Top = 4
            Width = 140
            Height = 29
            Caption = 'Ventas Total'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -24
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 179
            Top = 37
            Width = 142
            Height = 29
            Caption = 'Saldo Inicial'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -24
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object pnSaldos: TPanel
            Left = 1
            Top = 540
            Width = 551
            Height = 128
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitTop = 455
            DesignSize = (
              551
              128)
            object Label9: TLabel
              Left = 120
              Top = 45
              Width = 118
              Height = 24
              Anchors = [akLeft, akBottom]
              Caption = 'Caja Destino'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label1: TLabel
              Left = 67
              Top = 10
              Width = 171
              Height = 24
              Anchors = [akLeft, akBottom]
              Caption = 'Monto a Transferir'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 12018944
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 104
              Top = 81
              Width = 134
              Height = 24
              Anchors = [akLeft, akBottom]
              Caption = 'Saldo Efectivo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object cbCajaDest: TJvDBLookupCombo
              Left = 274
              Top = 46
              Width = 250
              Height = 27
              EmptyValue = '-1'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Anchors = [akLeft, akBottom]
              LookupField = 'ID_CUENTA_CAJA'
              LookupDisplay = 'MUESTRACTACAJA'
              LookupSource = DSCajaTx
              ParentFont = False
              TabOrder = 1
              TabStop = False
            end
            object edMontoATransf: TJvCalcEdit
              Left = 274
              Top = 12
              Width = 250
              Height = 28
              TabStop = False
              BevelInner = bvNone
              BevelOuter = bvNone
              BiDiMode = bdLeftToRight
              ParentBiDiMode = False
              DisplayFormat = ',0.00'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clFuchsia
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Anchors = [akLeft, akBottom]
              ParentFont = False
              ShowButton = False
              TabOrder = 0
              DisabledColor = clSilver
              DecimalPlacesAlwaysShown = False
              OnExit = edMontoATransfExit
            end
            object edSaldoEFT: TJvCalcEdit
              Left = 274
              Top = 76
              Width = 250
              Height = 29
              TabStop = False
              BevelInner = bvNone
              BevelOuter = bvNone
              BiDiMode = bdLeftToRight
              ParentBiDiMode = False
              AutoSize = False
              DisplayFormat = ',0.00'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Anchors = [akLeft, akBottom]
              ParentFont = False
              ShowButton = False
              TabOrder = 2
              DisabledTextColor = clMaroon
              DecimalPlacesAlwaysShown = False
            end
          end
          object edTotalVta: TJvCalcEdit
            Left = 251
            Top = 5
            Width = 250
            Height = 32
            BevelInner = bvNone
            BevelOuter = bvNone
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            AutoSize = False
            DisplayFormat = ',0.00'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ShowButton = False
            TabOrder = 0
            DisabledColor = clSilver
            DecimalPlacesAlwaysShown = False
            OnChange = edTotalVtaChange
          end
          object pnTarjetas: TPanel
            Left = 1
            Top = 72
            Width = 551
            Height = 468
            Align = alBottom
            Anchors = [akLeft, akTop, akRight, akBottom]
            Padding.Left = 3
            Padding.Top = 3
            Padding.Right = 3
            Padding.Bottom = 3
            TabOrder = 1
            object dbgTarjetas: TDBGrid
              Left = 4
              Top = 45
              Width = 543
              Height = 379
              Align = alClient
              BorderStyle = bsNone
              Ctl3D = False
              DataSource = DSTarjetas
              DrawingStyle = gdsClassic
              FixedColor = clSkyBlue
              GradientEndColor = clWhite
              GradientStartColor = clGradientActiveCaption
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnColEnter = dbgTarjetasColEnter
              OnEnter = dbgTarjetasEnter
              OnExit = dbgTarjetasExit
              Columns = <
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'DESCRIPCION'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -13
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 207
                  Visible = True
                end
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'NROLOTE'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -13
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 103
                  Visible = True
                end
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'TERMINAL'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -13
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'IMPORTE'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -13
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 121
                  Visible = True
                end>
            end
            object Panel4: TPanel
              Left = 4
              Top = 424
              Width = 543
              Height = 40
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 1
              object edTotalTarjetas: TJvCalcEdit
                Left = 384
                Top = 12
                Width = 136
                Height = 24
                Color = clBtnFace
                DisplayFormat = ',0.00'
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ShowButton = False
                TabOrder = 0
                DisabledTextColor = clBlue
                DecimalPlacesAlwaysShown = False
              end
            end
            object Panel5: TPanel
              Left = 4
              Top = 4
              Width = 543
              Height = 41
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 2
              object Label6: TLabel
                Left = 9
                Top = 11
                Width = 184
                Height = 24
                Caption = 'Lote Tarjeta Cr'#233'dito'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
          end
          object edSaldoInicial: TJvCalcEdit
            Left = 344
            Top = 43
            Width = 157
            Height = 24
            DisplayFormat = ',0.00'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowButton = False
            TabOrder = 3
            DisabledTextColor = clGreen
            DecimalPlacesAlwaysShown = False
          end
        end
      end
      object pgConfiguracion: TTabSheet
        Caption = 'Configuracion'
        ImageIndex = -1
        object Label2: TLabel
          Left = 28
          Top = 7
          Width = 65
          Height = 16
          Caption = 'Sucursal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 26
          Top = 400
          Width = 213
          Height = 16
          Caption = 'Comprobante de Egresos de caja'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 28
          Top = 465
          Width = 244
          Height = 16
          Caption = 'Comprobante de Adelantos de Sueldo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 26
          Top = 265
          Width = 191
          Height = 16
          Caption = 'Cliente por defecto en  Venta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 26
          Top = 321
          Width = 198
          Height = 16
          Caption = 'Art'#237'culo por defecto en  Venta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 26
          Top = 206
          Width = 158
          Height = 16
          Caption = 'Comprobante  de  Venta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 28
          Top = 529
          Width = 206
          Height = 16
          Caption = 'Comprobante de Orden de Pago'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ceCpbteEgreso: TJvComboEdit
          Left = 26
          Top = 422
          Width = 84
          Height = 21
          ClickKey = 16397
          ImageKind = ikEllipsis
          TabOrder = 0
          Text = ''
          OnButtonClick = BuscaCpbteEgresoExecute
          OnKeyDown = ceCpbteEgresoKeyDown
          NumbersOnly = True
        end
        object edCpbteEgreso: TEdit
          Left = 118
          Top = 422
          Width = 230
          Height = 21
          Color = clInfoBk
          TabOrder = 1
          Text = 'Comprobante de Egreso'
        end
        object ceCpbteAdelantos: TJvComboEdit
          Left = 26
          Top = 487
          Width = 84
          Height = 21
          ClickKey = 16397
          ImageKind = ikEllipsis
          TabOrder = 2
          Text = ''
          OnButtonClick = BuscaCpbteAdelantosExecute
          OnKeyDown = ceCpbteAdelantosKeyDown
          NumbersOnly = True
        end
        object edCpbteAdelantos: TEdit
          Left = 118
          Top = 487
          Width = 230
          Height = 21
          Color = clInfoBk
          TabOrder = 3
          Text = 'Comprobante de Adelantos de Sueldo'
        end
        object edCliente: TEdit
          Left = 118
          Top = 287
          Width = 230
          Height = 21
          Color = clInfoBk
          TabOrder = 4
          Text = 'Cliente'
        end
        object ceCliente: TJvComboEdit
          Left = 26
          Top = 287
          Width = 84
          Height = 21
          AutoSelect = False
          ClickKey = 16397
          ImageKind = ikEllipsis
          TabOrder = 5
          Text = ''
          OnButtonClick = BuscaClienteExecute
          OnKeyDown = ceClienteKeyDown
          NumbersOnly = True
        end
        object edArticulo: TEdit
          Left = 118
          Top = 343
          Width = 230
          Height = 21
          Color = clInfoBk
          TabOrder = 6
          Text = 'Articulo por defecto'
        end
        object ceArticulo: TJvComboEdit
          Left = 26
          Top = 343
          Width = 84
          Height = 21
          AutoSelect = False
          ClickKey = 16397
          ImageKind = ikEllipsis
          TabOrder = 7
          Text = ''
          OnButtonClick = BuscaArticuloExecute
          OnKeyDown = ceArticuloKeyDown
          NumbersOnly = True
        end
        object GroupBox1: TGroupBox
          Left = 8
          Top = 65
          Width = 462
          Height = 120
          TabOrder = 8
          object Label11: TLabel
            Left = 23
            Top = 43
            Width = 90
            Height = 18
            Caption = 'Comp. de Tx'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object chTransferencia: TCheckBox
            Left = 23
            Top = 20
            Width = 256
            Height = 17
            Caption = 'Transfiere Saldos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object dbcComprobaTx: TJvDBLookupCombo
            Left = 20
            Top = 67
            Width = 421
            Height = 27
            DisplayAllFields = True
            DisplayEmpty = 'Sin Comprobante'
            EmptyValue = '-1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            LookupField = 'ID_COMPROBANTE'
            LookupDisplay = 'DENOMINACION;MUESTRASUCURSAL'
            LookupSource = DSComprobaTx
            ParentFont = False
            TabOrder = 1
          end
        end
        object edCpbteVta: TEdit
          Left = 118
          Top = 228
          Width = 230
          Height = 21
          Color = clInfoBk
          TabOrder = 9
          Text = 'Comprobante de Venta'
        end
        object ceCpbteVta: TJvComboEdit
          Left = 26
          Top = 228
          Width = 84
          Height = 21
          ClickKey = 16397
          ImageKind = ikEllipsis
          TabOrder = 10
          Text = ''
          OnButtonClick = BuscaCpbteVtaExecute
          OnKeyDown = ceCpbteVtaKeyDown
        end
        object chAbreCaja: TCheckBox
          Left = 341
          Top = 85
          Width = 97
          Height = 17
          Caption = 'Abre Nueva Caja'
          TabOrder = 11
        end
        object dbcSucursal: TJvDBLookupCombo
          Left = 28
          Top = 29
          Width = 324
          Height = 23
          EmptyValue = '-1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          LookupField = 'CODIGO'
          LookupDisplay = 'DETALLE'
          LookupSource = DSSucursal
          ParentFont = False
          TabOrder = 12
          OnChange = dbcSucursalChange
        end
        object ceCpbteOPago: TJvComboEdit
          Left = 26
          Top = 551
          Width = 84
          Height = 21
          ClickKey = 16397
          ImageKind = ikEllipsis
          TabOrder = 13
          Text = ''
          OnButtonClick = BuscarCpbteOPagoExecute
          OnKeyDown = ceCpbteOPagoKeyDown
          NumbersOnly = True
        end
        object edCpbteOPago: TEdit
          Left = 118
          Top = 551
          Width = 230
          Height = 21
          Color = clInfoBk
          TabOrder = 14
          Text = 'Comprobante de Orden de Pago'
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 735
    Width = 1102
    Height = 34
    Align = alBottom
    ButtonHeight = 35
    ButtonWidth = 70
    HotTrackColor = clHighlight
    Indent = 5
    TabOrder = 3
    ExplicitTop = 650
    ExplicitWidth = 1102
    ExplicitHeight = 34
    inherited btConfirma: TBitBtn
      Left = 5
      Width = 109
      Height = 35
      BiDiMode = bdRightToLeft
      Enabled = False
      Font.Height = -13
      ModalResult = 1
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 5
      ExplicitWidth = 109
      ExplicitHeight = 35
    end
    inherited btNuevo: TBitBtn
      Left = 114
      Width = 100
      Height = 35
      BiDiMode = bdRightToLeft
      Font.Height = -13
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 114
      ExplicitWidth = 100
      ExplicitHeight = 35
    end
    inherited btCancelar: TBitBtn
      Left = 214
      Width = 100
      Height = 35
      Enabled = False
      Font.Height = -13
      ParentFont = False
      ExplicitLeft = 214
      ExplicitWidth = 100
      ExplicitHeight = 35
    end
    inherited btModificar: TBitBtn
      Left = 314
      Width = 100
      Height = 35
      Font.Height = -13
      ParentFont = False
      Visible = False
      ExplicitLeft = 314
      ExplicitWidth = 100
      ExplicitHeight = 35
    end
    inherited Pr: TSpeedButton
      Left = 414
      Height = 35
      Font.Height = -13
      Font.Style = []
      Visible = False
      ExplicitLeft = 414
      ExplicitHeight = 35
    end
    inherited btBuscar: TBitBtn
      Left = 429
      Width = 100
      Height = 35
      Font.Height = -13
      ParentFont = False
      Visible = False
      ExplicitLeft = 429
      ExplicitWidth = 100
      ExplicitHeight = 35
    end
    inherited Ne: TSpeedButton
      Left = 529
      Height = 35
      Font.Height = -13
      Font.Style = []
      Visible = False
      ExplicitLeft = 529
      ExplicitHeight = 35
    end
    inherited btBorrar: TBitBtn
      Left = 544
      Width = 100
      Height = 35
      Enabled = False
      Font.Height = -13
      ParentFont = False
      Visible = False
      ExplicitLeft = 544
      ExplicitWidth = 100
      ExplicitHeight = 35
    end
    inherited btSalir: TBitBtn
      Left = 644
      Width = 100
      Height = 35
      Font.Height = -13
      ParentFont = False
      ExplicitLeft = 644
      ExplicitWidth = 100
      ExplicitHeight = 35
    end
  end
  inherited Panel1: TPanel
    Top = 769
    Width = 1102
    Align = alBottom
    TabOrder = 1
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 684
    ExplicitWidth = 1102
    inherited sbEstado: TStatusBar
      Width = 1013
      ExplicitWidth = 1013
    end
  end
  object edFechaVta: TDateTimePicker [4]
    Left = 67
    Top = 5
    Width = 134
    Height = 28
    BiDiMode = bdRightToLeft
    Date = 44354.000000000000000000
    Time = 0.493926597220706800
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
  end
  inherited ActionList1: TActionList
    Left = 528
    Top = 96
    object BuscaCpbteTarjeta: TAction
      Caption = 'BuscaCpbteTarjeta'
      OnExecute = BuscaCpbteTarjetaExecute
    end
    object BuscaCpbteEgreso: TAction
      Caption = 'BuscaCpbteEgreso'
      OnExecute = BuscaCpbteEgresoExecute
    end
    object BuscaCpbteAdelantos: TAction
      Caption = 'BuscaCpbteAdelantos'
      OnExecute = BuscaCpbteAdelantosExecute
    end
    object BuscaCpbteVta: TAction
      Caption = 'BuscaCpbteVta'
      OnExecute = BuscaCpbteVtaExecute
    end
    object BuscaCaja: TAction
      Caption = 'BuscaCaja'
      OnExecute = BuscaCajaExecute
    end
    object BuscaSucursal: TAction
      Caption = 'BuscaSucursal'
    end
    object BuscaCpbteTransf: TAction
      Caption = 'BuscaCpbteTransf'
    end
    object BuscaCliente: TAction
      Caption = 'BuscaCliente'
      OnExecute = BuscaClienteExecute
    end
    object BuscaArticulo: TAction
      Caption = 'BuscaArticulo'
      OnExecute = BuscaArticuloExecute
    end
    object BuscarCpbteOPago: TAction
      Caption = 'BuscarCpbteOPago'
      OnExecute = BuscarCpbteOPagoExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSTarjetas
    Left = 456
    Top = 112
  end
  inherited ImageList1: TImageList
    Left = 528
    Top = 32
    Bitmap = {
      494C01010C002400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
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
      00000000000004490600055B0900066C0C00066C0C00055E0A00044C06000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006C6A6A006C6A6A0000000000000000006C6A6A006C6A6A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000021212100676D6E008181810040404000151515000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000E0100003F060505492D2423922E2525A70302025C000000060000
      0004000000000000000000000000000000000000000000000000000000000560
      0900056009000891130009B0180009B31A0009B3190009B11900079614000568
      0C0005680C000000000000000000000000000000000000000000000000006C6A
      6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3E3006C6A6A006C6A
      6A006C6A6A000000000000000000000000000000000000000000000000000000
      000021212100676D6E00AEB8B900CED2D2009797970057575700444444001D1D
      1D000A0A0A000000000000000000000000000000000000000000000000000907
      0623765F58C7E1B1B0F8967873E9E6B7AFFFFFCACAFF332727B2251E1C8B0806
      067B0000001B00000000000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D0600000000000000000000000000000000006C6A6A00DAD9
      D900A19F9F00A19F9F00A19F9F0037363600353535006C6D6D00BFBFBF00E1E2
      E200B7B6B6006C6A6A006C6A6A006C6A6A00000000000000000021212100676D
      6E00AEB8B900D1D9D900D6DADA00CED2D200BDC3C4005E5E5E00515151003232
      32001414140000000000000000000000000000000000000000000000001B2920
      1E8AD5AD9EFEFFC2C2FFF9BEBCFFF9BEBCFFFFC2C2FFCC9D98F8F7BDBAFFCB9A
      9AF307050565000000020000000000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C0000000000000000006C6A6A00D4D3D300CACA
      CA008E8C8C008E8C8C008E8C8C003C3B3B000A090A00070707000B0B0B000707
      07007A7A7A00BBBBBB006C6A6A00000000000000000021212100AEB8B900D6E7
      E700DDE1E100C8D5C8004C994C00E4E4E400CCCCCC0066666600575757004444
      44002929290000000000000000000000000000000000010101109C7C72DAD89E
      9EF6E0ADA4FEFEBABAFFFFBABAFFFFBABBFFFFBABBFFFFBABBFFFFBABAFFDBA0
      A0F50403034D0000001F0000000400000000000000000B6A150020BE49001BBD
      400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE6D0009B2190009B2
      190009B3190009BA1A0006670C00000000006C6A6A00CACACA00CACACA008E8C
      8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A000888686005E5B5C000707
      070009090900080808006C6A6A0076737300000000004C4C4C00D6E7E700D6E7
      E700B8D1B80019861900198619003E913E00D4D4D400747B7C00606060005151
      5100323232000000000000000000000000000000000034272567E2ADA1FFFFB4
      B4FFFFB4B4FFFFB3B3FFD49696E4906B68ABD0A096F0F5B1ADFFFFB3B3FFDA9A
      9AF6735150D3593E3ECA0000003600000000087210001B9A3A002AC65B001DBB
      45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FDF8005ACB650009B2
      190009B2190009B81A0008941300045D09006C6A6A00CACACA008E8C8C00EFEE
      EE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCECE00BDBCBC00ADAB
      AB008B898900585656007A78780075737300000000007D838400D6E7E70082B9
      8600B1CFB5004C994C00CCCCCC003F8C3F00DCDCDC009B9B9B00666666005555
      55004444440014141400000000000000000000000000060404178B7268CCEEAA
      A3FFFFADADFFCA8989EA04020227000000000302021693796EC1EBA9A3FFFFAD
      ADFFFFADADFFE99E9EF90704045700000001087210002AB65B002CC5650022BD
      4D000FB422000AB21A000CB31C000AB219008DDB9500FDFEFD00F6FCF70058CB
      630009B2190009B51A0008AB1700045D09006C6A6A008E8C8C00FFFFFF00FEFC
      FC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0C100D7D7D700D8D8
      D800C7C6C600B7B6B600918F8F006C69690000000000B7C0C000B7D9C00064A4
      6400D3E0E000B7CCC000CED2D20096AF9600D1D1D100A1A8A9006E6E6E006060
      600051515100272727000000000000000000000000004C3D3792AD7674E9F7A6
      A3FFFFA6A6FF3522229700000004000000000000000007050518BA9788EFF9A5
      A3FFFFA6A6FF734C4CBE01000010000000000F821C0037C26C0033C76C00CDF1
      DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FDF900FFFFFF00F2FB
      F3006FD2790008B4190009B3190005650B00000000006C6A6A006C6A6A00EDEB
      EB00B1A6A7007A6F72008A83880096929500969091009D9798009A9395009E98
      9900BBBABA00D1D1D100C2C2C2006C6A6A0000000000B5C4C50084B98D007CAF
      7C00D8E1E100D1D9D900A8C6AC00A4BDA400C6C6C600C0C0C000777777006464
      6400575757003B3B3B00000000000000000000000000CCA091FFFF9F9FFFFF9F
      9FFFFF9F9FFF110B0B7A0000000200000000000000000000000069534D96E8A0
      98FFFF9F9FFF653E3ED10D08088500000008138D230058CC830042C97700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
      FF00BCEAC1000AB41A0009B31900066D0D000000000000000000000000006C6A
      6A00BB897F00A7876D008B6F64007D6760006F626500797379008F8B8E00A9A3
      A400CBCACA00C1C1C1006C6A6A00000000004C4C4C009EC6A600359939000079
      0000B1CFB5009EC0A600006C00007CBC7C00C6C6C600C0C0C0007D8384006E6E
      6E00606060004646460013131300000000000000000090746ABCDC9890F6F89A
      98FFFE9999FF1B1010970000000700000000000000000000000032262463E1A1
      95FFFE9999FFFE9999FF683E3ED20000000C0F911D006FD293005FD38D006DD4
      950072D6990071D6980072D6990064D28C0092DFA800FBFEFB00FFFFFF00ACE5
      B8002EBF4C0011B82B0008B1190005610A000000000000000000000000000000
      0000BD828100FFE3B400FFD39F00E9B28100C9997300BA916C00BD828100807D
      7E006C6A6A006C6A6A0000000000000000004C4C4C00D6E7E70035993900A2CF
      A200DBE7E700358C390071AA710078B87800C6C6C600C0C0C0009B9B9B007777
      77006666660057575700282828000000000000000000000000035C4A44A1E898
      90FFF99292FF593434CE0000002D00000000000000000000000049393676E49B
      91FFF99292FFEA8C8BF9482B2B99000000040F911D0067CC83009BE5BA0038C6
      700030C3690038C56F0038C56F0070D69700E8F8EE00FFFFFF009FE2B10020BD
      48001AB93E0010BA290008A3170005610A000000000000000000000000000000
      0000BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC68800BD8281000000
      0000000000000000000000000000000000004A505100D6E7E700C6E0D300C6E0
      D30068AC6C0082B38600D9DDDD00C9C9C900C3C3C300CECECE00C9C9C9009797
      97006E6E6E00606060003B3B3B00000000000000000031262464D9938AFCF28B
      8BFFF28C8CFFD57B7BF80F09099B0000002100000002000000068B7066CBED8D
      8BFFF18A8AFE332221B700000025000000000000000025AE3900BCEDD20082DB
      A40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2B20022BC4B001DBA
      410018B7360014C030000A85170000000000000000000000000000000000C086
      8300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD828100000000000000
      000000000000000000000000000000000000B5B9B900D6E7E700D6E7E700D6E7
      E700D3E0E000C8CCCC00D1D1D100DCDCDC00DCDCDC00D1D1D100C8CCCC00C2C2
      C200BDC4C5008A8A8A0057575700000000000000000022191847D09D8FFFEA84
      84FFE58986FFEA8484FFC36E6EF52D1818B60201016D4B3834A7E18D87FFEB84
      84FFEA8484FFCD7373F70A05056F000000020000000025AE390071D28C00D2F4
      E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2630024BE560023BC
      4D001FC1460016AE34000A85170000000000000000000000000000000000BD82
      8100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD828100000000000000
      000000000000000000000000000000000000BCC0C000D6E7E700CBD3D300D8D8
      D800DCDCDC00DCDCDC00D3D7D700B4B4B400A6A6A600DCE4E400BFC8C8008793
      95009CAEB100CECECE00868686000000000000000000000000021D18154E1C11
      1138C3998AFBE37C7CFFE37D7DFFE17C7CFEDC7A79FDE37D7DFFE37C7DFFE180
      7FFFDD8682FFC66D6DEF0301012F00000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000BD828100FFFF
      F200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD828100000000000000
      000000000000000000000000000000000000BABABA00DCDCDC00DCDCDC00BFBF
      BF00C6C6C600CBCFCF00DCE4E400AEB6B600C2CECE00BFBFBF00C2CECE008C8C
      8C00575D5E003333330000000000000000000000000000000000000000002C22
      205DD18F84FFDC7575FFDA7C79FFDA7877FFDC7676FFDB7776FFDC7676FFC36A
      6AF83A2F2BA9110A0A35000000000000000000000000000000000000000025AE
      390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB157000000000000000000000000000000000000000000BD828100BD82
      8100BD828100FBEFE200FBE3CF00FBDDC200BD82810000000000000000000000
      00000000000000000000000000000000000055555500777777005F5F5F007979
      7900A2A2A200DBDBDB00EFF3F3009E9E9E00DBDBDB00F8F8F800BFBFBF002121
      210000000000000000000000000000000000000000000000000000000000130E
      0D29A88679DABF6E6AED87635DC7CE8279FFD56D6EFFC48C82FCD17A75FFCD6A
      6AFA110809540000000100000000000000000000000000000000000000000000
      00000000000032B74E0025AE390025AE390025AE390025AE390024A342000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD828100BD828100BD8281000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004C4C4C005353
      53007777770087878700A7A7A700646464002121210043434300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000201010D06050415362A2763C0877BF5C06966EF3E2928746A51498E1208
      0935000000010000000000000000000000000000000000000000000000000000
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
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F81FF33FFC1FE00FE007E007F007E007
      C003C000C007C003800180018007800180010000800780010000000080038100
      000000008003818100008000800381C00000E001000181C00000F003000181C0
      0000F01F000180018001E03F000180008001E03F00018001C003C03F0003E001
      E007C07F000FE003F81FF8FFC03FF007FFFFF81FF81FF81FC007E007E007E007
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
    Left = 688
    Top = 192
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 920
    Top = 688
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 848
    Top = 312
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 888
    Top = 24
  end
  inherited QBrowse2: TFDQuery
    Left = 816
    Top = 688
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 960
    Top = 688
  end
  object DSTarjetas: TDataSource
    DataSet = CDSTarjetas
    OnStateChange = DSTarjetasStateChange
    Left = 168
    Top = 208
  end
  object DSCaja: TDataSource
    DataSet = DatosCierreCajaGeneral.CDSCaja
    Left = 440
    Top = 272
  end
  object ComBuscadorCaja: TComBuscador
    Data = DatosCaja.CDSCajas
    Campo = 'id_caja'
    Titulo = 'Listado de Cajas Activas'
    rOk = False
    Left = 780
    Top = 65528
  end
  object DSEgresoCajaDetalle: TDataSource
    DataSet = mtDetalleEgresos
    Left = 872
    Top = 144
  end
  object QCtaGasto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from gastos_cuentas where codigo=:codigo')
    Left = 596
    Top = 239
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QCtaGastoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QCtaGastoCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QCtaGastoDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
    object QCtaGastoEXCLUYE: TStringField
      FieldName = 'EXCLUYE'
      Origin = 'EXCLUYE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSAdelantos: TDataSource
    DataSet = mtAdelantos
    Left = 896
    Top = 408
  end
  object comBuscadorPersonal: TComBuscador
    Data = DatosCierreCajaGeneral.CDSBuscaPersonal
    Campo = 'CODIGO'
    rOk = False
    Left = 716
    Top = 439
  end
  object DSCajaTx: TDataSource
    DataSet = DatosCierreCajaGeneral.CDSCajaTx
    Left = 64
    Top = 576
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 1024
    Top = 80
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
  object DSComprobaTx: TDataSource
    DataSet = DatosCierreCajaGeneral.CDSComprobaTx
    Left = 440
    Top = 336
  end
  object DSSucursal: TDataSource
    DataSet = DatosCierreCajaGeneral.CDSSucursal
    Left = 76
    Top = 315
  end
  object QBuscaCuentaGasto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.*,r.detalle as MuestraRubro  from Gastos_Cuentas c'
      'left join Gastos_rubros r on c.codigo_rubro=r.codigo'
      'where (codigo=:codigo) and '
      '      ((:rubro is null) or (codigo_rubro=:rubro))')
    Left = 652
    Top = 439
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end
      item
        Name = 'RUBRO'
        DataType = ftFixedChar
        ParamType = ptInput
      end>
    object QBuscaCuentaGastoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QBuscaCuentaGastoCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QBuscaCuentaGastoDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
    object QBuscaCuentaGastoEXCLUYE: TStringField
      FieldName = 'EXCLUYE'
      Origin = 'EXCLUYE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscaCuentaGastoMUESTRARUBRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRARUBRO'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object mtAdelantos: TFDMemTable
    BeforeClose = mtAdelantosBeforeClose
    AfterPost = mtAdelantosAfterPost
    AfterDelete = CDSAdelantosAfterPost
    OnNewRecord = mtAdelantosNewRecord
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 780
    Top = 459
    object mtAdelantosCODIGO: TStringField
      FieldName = 'CODIGO'
      OnSetText = mtAdelantosCODIGOSetText
      Size = 6
    end
    object mtAdelantosNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object mtAdelantosIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object mtDetalleEgresos: TFDMemTable
    Active = True
    BeforeClose = mtDetalleEgresosBeforeClose
    AfterPost = mtDetalleEgresosAfterPost
    AfterDelete = mtDetalleEgresosAfterPost
    OnNewRecord = mtDetalleEgresosNewRecord
    FieldDefs = <
      item
        Name = 'CODIGOCTA'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'DETALLE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'IMPORTE'
        DataType = ftFloat
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 726
    Top = 164
    object mtDetalleEgresosCODIGOCTA: TStringField
      DisplayLabel = 'CodCta'
      FieldName = 'CODIGOCTA'
      OnSetText = mtDetalleEgresosCODIGOCTASetText
      Size = 6
    end
    object mtDetalleEgresosDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 50
    end
    object mtDetalleEgresosIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object CDSTarjetas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTarjetas'
    AfterPost = CDSTarjetasAfterPost
    Left = 88
    Top = 208
    object CDSTarjetasID_TC: TIntegerField
      FieldName = 'ID_TC'
      Origin = 'ID_TC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSTarjetasDESCRIPCION: TStringField
      DisplayLabel = 'Tarjeta'
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 15
    end
    object CDSTarjetasNROLOTE: TStringField
      DisplayLabel = 'Nro. Lote'
      FieldKind = fkInternalCalc
      FieldName = 'NROLOTE'
      Size = 5
    end
    object CDSTarjetasTERMINAL: TStringField
      DisplayLabel = 'Terminal'
      FieldKind = fkInternalCalc
      FieldName = 'TERMINAL'
      ProviderFlags = []
      Size = 8
    end
    object CDSTarjetasIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldKind = fkInternalCalc
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = '0.00'
    end
  end
  object DSPTarjetas: TDataSetProvider
    DataSet = DatosCierreCajaGeneral.QTarjetas
    Options = []
    Left = 24
    Top = 208
  end
end
