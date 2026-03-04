inherited FormPresupuesto_2: TFormPresupuesto_2
  Left = 246
  Top = 77
  Caption = 'Presupuestos'
  ClientHeight = 684
  ClientWidth = 1108
  StyleElements = [seFont, seClient, seBorder]
  OnActivate = FormActivate
  OnResize = FormResize
  ExplicitWidth = 1126
  ExplicitHeight = 725
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1108
    Height = 631
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1108
    ExplicitHeight = 631
    object pcDetallePresupuesto: TPageControl
      Left = 0
      Top = 161
      Width = 1108
      Height = 470
      ActivePage = PagDetalles
      Align = alClient
      MultiLine = True
      TabOrder = 1
      TabPosition = tpBottom
      TabStop = False
      OnEnter = pcDetallePresupuestoEnter
      object PagDetalles: TTabSheet
        Caption = 'Detalles'
        DesignSize = (
          1100
          444)
        object Label17: TLabel
          Left = 9
          Top = 317
          Width = 99
          Height = 16
          Anchors = [akLeft, akBottom]
          Caption = 'Observaciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsItalic]
          ParentFont = False
          ExplicitTop = 354
        end
        object Bevel21: TBevel
          Left = 901
          Top = 361
          Width = 170
          Height = 24
          Anchors = [akRight, akBottom]
          ExplicitLeft = 880
          ExplicitTop = 398
        end
        object DBText60: TDBText
          Left = 919
          Top = 365
          Width = 148
          Height = 16
          Alignment = taRightJustify
          Anchors = [akRight, akBottom]
          DataField = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 898
          ExplicitTop = 402
        end
        object Label1: TLabel
          Left = 765
          Top = 341
          Width = 41
          Height = 20
          Anchors = [akRight, akBottom]
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 744
          ExplicitTop = 378
        end
        object DBText9: TDBText
          Left = 540
          Top = 321
          Width = 85
          Height = 20
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          DataField = 'COTIZACION'
          DataSource = DatosPresupuesto.DSPresuDet
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 343
        end
        object DBText10: TDBText
          Left = 506
          Top = 321
          Width = 28
          Height = 20
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          DataField = 'MUESTRASIGNO'
          DataSource = DatosPresupuesto.DSPresuDet
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 358
        end
        object DBText11: TDBText
          Left = 833
          Top = 341
          Width = 40
          Height = 20
          Alignment = taCenter
          Anchors = [akRight, akBottom]
          DataField = 'MUESTRASIGNOMONEDACPBTE'
          DataSource = DSBase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 812
          ExplicitTop = 378
        end
        object DBText12: TDBText
          Left = 526
          Top = 365
          Width = 47
          Height = 16
          Cursor = crHandPoint
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          DataField = 'MONEDA_CPBTE_COTIZACION'
          DataSource = DSBase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          ParentFont = False
          ExplicitTop = 387
        end
        object RxLabel5: TLabel
          Left = 765
          Top = 365
          Width = 37
          Height = 19
          Alignment = taRightJustify
          Anchors = [akRight, akBottom]
          Caption = 'Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          ExplicitLeft = 744
          ExplicitTop = 402
        end
        object RxLabel1: TLabel
          Left = 3
          Top = 297
          Width = 38
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Notas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          ExplicitTop = 334
        end
        object JvLabel1: TLabel
          Left = 417
          Top = 322
          Width = 81
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Moneda Linea'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          ExplicitTop = 359
        end
        object JvDBStatusLabel1: TJvDBStatusLabel
          Left = 522
          Top = 297
          Width = 96
          Height = 13
          DataSetName = 'Reg.Nro:'
          DataSource = DatosPresupuesto.DSPresuDet
          Style = lsRecordNo
          CalcRecCount = True
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          Transparent = True
          ExplicitTop = 328
        end
        object lbModoCpbte: TLabel
          Left = 417
          Top = 346
          Width = 103
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Moneda Comprob.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 383
        end
        object lbAcopio: TLabel
          Left = 645
          Top = 390
          Width = 121
          Height = 24
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          Caption = 'Para Acopiar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          ExplicitTop = 395
        end
        object lbNeto: TDBText
          Left = 133
          Top = 391
          Width = 99
          Height = 18
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          DataField = 'NETO_ACUMULADO'
          DataSource = DSBase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 390
        end
        object lbMargen: TDBText
          Left = 345
          Top = 391
          Width = 79
          Height = 18
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          DataField = 'MARGEN_GENERAL'
          DataSource = DSBase
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 413
        end
        object Label26: TLabel
          Left = 10
          Top = 391
          Width = 94
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Neto Acumulado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 428
        end
        object Label27: TLabel
          Left = 285
          Top = 391
          Width = 56
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = '% Margen'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 428
        end
        object lbACobrar: TLabel
          Left = 744
          Top = 303
          Width = 84
          Height = 24
          Alignment = taRightJustify
          Anchors = [akRight, akBottom]
          Caption = 'A Cobrar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          ExplicitLeft = 694
          ExplicitTop = 308
        end
        object Label28: TLabel
          Left = 8
          Top = 428
          Width = 40
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Modo  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText17: TDBText
          Left = 54
          Top = 428
          Width = 30
          Height = 18
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          DataField = 'ANULADO'
          DataSource = DSBase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label29: TLabel
          Left = 10
          Top = 408
          Width = 142
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Neto Acumulado Percep.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LbNetoPercepcion: TLabel
          Left = 208
          Top = 408
          Width = 21
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = '0.00'
          ExplicitTop = 407
        end
        object dbeObservaciones2: TDBEdit
          Left = 3
          Top = 361
          Width = 403
          Height = 21
          Anchors = [akLeft, akBottom]
          DataField = 'Observacion2'
          DataSource = DSBase
          TabOrder = 2
        end
        object dbeObservaciones1: TDBEdit
          Left = 3
          Top = 333
          Width = 403
          Height = 21
          Anchors = [akLeft, akBottom]
          DataField = 'Observacion1'
          DataSource = DSBase
          TabOrder = 1
        end
        object dbeNotas: TDBEdit
          Left = 47
          Top = 297
          Width = 463
          Height = 21
          Anchors = [akLeft, akBottom]
          BevelEdges = [beBottom]
          BevelInner = bvSpace
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clInfoBk
          Ctl3D = True
          DataField = 'NOTAS'
          DataSource = DatosPresupuesto.DSPresuDet
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBGrillaDetalle: TJvDBGrid
          Left = 0
          Top = 0
          Width = 1100
          Height = 293
          Align = alTop
          Anchors = [akTop, akRight, akBottom]
          BorderStyle = bsNone
          Ctl3D = True
          DataSource = DatosPresupuesto.DSPresuDet
          DrawingStyle = gdsClassic
          FixedColor = clYellow
          GradientEndColor = clYellow
          GradientStartColor = clYellow
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
          ParentCtl3D = False
          PopupMenu = pm1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = DBGrillaDetalleColEnter
          OnColExit = DBGrillaDetalleColExit
          OnDrawColumnCell = DBGrillaDetalleDrawColumnCell
          OnDblClick = DBGrillaDetalleDblClick
          OnDragDrop = DBGrillaDetalleDragDrop
          OnDragOver = DBGrillaDetalleDragOver
          OnEditButtonClick = BuscarArticuloExecute
          OnEnter = DBGrillaDetalleEnter
          OnKeyDown = DBGrillaDetalleKeyDown
          OnKeyPress = DBGrillaDetalleKeyPress
          IniStorage = JvFormStorage
          BevelInner = bvNone
          BevelOuter = bvNone
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          OnCheckIfBooleanField = DBGrillaDetalleCheckIfBooleanField
          Columns = <
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'RENGLON'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 24
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CODIGOARTICULO'
              Title.Alignment = taCenter
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
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 311
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ESPECIFICACION'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Alignment = taCenter
              Color = clInfoBk
              Expanded = False
              FieldName = 'UNIDAD'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 29
              Visible = True
            end
            item
              Alignment = taCenter
              Color = clInfoBk
              Expanded = False
              FieldName = 'IVA_TASA'
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
              FieldName = 'CANTIDAD'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MUESTRA_UNIT_NETO'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Color = clMoneyGreen
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNITARIO_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = '$ Unitario'
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
              FieldName = 'DESCUENTO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 43
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'TOTAL'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ITEM_NRO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 37
              Visible = True
            end
            item
              Color = clAquamarine
              Expanded = False
              FieldName = 'MARGEN'
              Title.Alignment = taCenter
              Title.Color = clAqua
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ACEPTADO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 27
              Visible = True
            end>
        end
        object pnDscto: TPanel
          Left = 834
          Top = 299
          Width = 237
          Height = 38
          Anchors = [akRight, akBottom]
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 4
          object Label3: TLabel
            Left = 3
            Top = 11
            Width = 50
            Height = 16
            Caption = 'Dsto %'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbeDscto2: TDBEdit
            Left = 59
            Top = 9
            Width = 47
            Height = 21
            DataField = 'DSTO'
            DataSource = DSBase
            TabOrder = 0
          end
          object JvDBMaskEdit1: TJvDBMaskEdit
            Left = 113
            Top = 9
            Width = 121
            Height = 21
            DataField = 'DSTOIMPORTE'
            DataSource = DSBase
            TabOrder = 1
            EditMask = ''
          end
        end
        object dbTotal: TJvDBMaskEdit
          Left = 901
          Top = 337
          Width = 170
          Height = 24
          Anchors = [akRight, akBottom]
          DataField = 'TOTAL'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          EditMask = ''
          OnMouseMove = dbTotalMouseMove
        end
        object edTotalNeto: TJvMaskEdit
          Left = 902
          Top = 337
          Width = 169
          Height = 24
          Alignment = taRightJustify
          Anchors = [akRight, akBottom]
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          Text = ''
          Visible = False
        end
        object dblMoneda: TDBLookupComboBox
          Left = 526
          Top = 341
          Width = 52
          Height = 21
          Anchors = [akLeft, akBottom]
          DataField = 'MONEDA_CPBTE'
          DataSource = DSBase
          KeyField = 'ID'
          ListField = 'SIGNO'
          ListSource = DatosPresupuesto.DSLstMonedas
          TabOrder = 7
          TabStop = False
          OnClick = dblMonedaClick
        end
      end
      object PagPieCpbte: TTabSheet
        Margins.Top = 0
        Margins.Bottom = 0
        Caption = 'Impuestos'
        ImageIndex = 1
        object lbPlazo: TLabel
          Left = 4
          Top = 105
          Width = 81
          Height = 13
          Caption = 'Plazo de Entrega'
        end
        object Label9: TLabel
          Left = 145
          Top = 95
          Width = 85
          Height = 13
          Caption = 'Fecha de Entrega'
        end
        object Label10: TLabel
          Left = 4
          Top = 146
          Width = 62
          Height = 13
          Caption = 'O de Compra'
        end
        object Label11: TLabel
          Left = 145
          Top = 141
          Width = 93
          Height = 13
          Caption = 'Fecha o.de Compra'
        end
        object Label19: TLabel
          Left = 145
          Top = 49
          Width = 72
          Height = 13
          Caption = 'Fecha Tecnica'
        end
        object Label22: TLabel
          Left = 145
          Top = 3
          Width = 82
          Height = 13
          Caption = 'Fecha Financiera'
        end
        object Label24: TLabel
          Left = 285
          Top = 95
          Width = 85
          Height = 13
          Caption = 'Fecha de Entrega'
        end
        object dbchFinanciero: TDBCheckBox
          Left = 10
          Top = 13
          Width = 97
          Height = 17
          Caption = 'Req.Financiero'
          DataField = 'CUMPLIO_FINANCIERA'
          DataSource = DSBase
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = dbchFinancieroClick
        end
        object dbchTecnica: TDBCheckBox
          Left = 9
          Top = 36
          Width = 97
          Height = 17
          Caption = 'Req.Tecnico'
          DataField = 'CUMPLIO_TECNICA'
          DataSource = DSBase
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = dbchTecnicaClick
        end
        object edFechaFinanciera: TJvDBDateEdit
          Left = 145
          Top = 22
          Width = 121
          Height = 21
          DataField = 'FECHA_FINANCIERA'
          DataSource = DSBase
          Enabled = False
          ButtonWidth = 33
          ShowNullDate = False
          TabOrder = 1
          OnExit = edFechaFinancieraExit
        end
        object edFechaTecnica: TJvDBDateEdit
          Left = 145
          Top = 68
          Width = 121
          Height = 21
          DataField = 'FECHA_TECNICA'
          DataSource = DSBase
          Enabled = False
          ButtonWidth = 33
          ShowNullDate = False
          TabOrder = 3
          OnExit = edFechaTecnicaExit
        end
        object edFechaEntrega: TJvDBDateEdit
          Left = 145
          Top = 114
          Width = 121
          Height = 21
          DataField = 'FECHA_ENTREGA'
          DataSource = DSBase
          Enabled = False
          ButtonWidth = 33
          ShowNullDate = False
          TabOrder = 5
          DisabledTextColor = clBlack
        end
        object edFechaOC: TJvDBDateEdit
          Left = 145
          Top = 160
          Width = 121
          Height = 21
          DataField = 'FECHA_OC'
          DataSource = DSBase
          ButtonWidth = 33
          ShowNullDate = False
          TabOrder = 7
          DisabledTextColor = clBlack
        end
        object dbeOCompra: TDBEdit
          Left = 4
          Top = 160
          Width = 121
          Height = 21
          DataField = 'NRO_ORDEN_COMP'
          DataSource = DSBase
          TabOrder = 6
        end
        object dbePlazoEntrega: TDBEdit
          Left = 4
          Top = 119
          Width = 82
          Height = 21
          DataField = 'PLAZO_ENTREGA'
          DataSource = DSBase
          TabOrder = 4
          OnKeyPress = dbePlazoEntregaKeyPress
        end
        object pnMuestraImpuestos: TAdvPanel
          Left = 608
          Top = 0
          Width = 492
          Height = 444
          Align = alRight
          TabOrder = 8
          UseDockManager = True
          Version = '2.7.0.2'
          BackgroundPosition = bpCenter
          BorderColor = clBlack
          Caption.Color = clHighlight
          Caption.ColorTo = clNone
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clWindowText
          Caption.Font.Height = -11
          Caption.Font.Name = 'MS Sans Serif'
          Caption.Font.Style = []
          Caption.Indent = 0
          DoubleBuffered = False
          StatusBar.Font.Charset = DEFAULT_CHARSET
          StatusBar.Font.Color = clWindowText
          StatusBar.Font.Height = -11
          StatusBar.Font.Name = 'Tahoma'
          StatusBar.Font.Style = []
          Text = ''
          DesignSize = (
            492
            444)
          FullHeight = 236
          object Label16: TLabel
            Left = 270
            Top = 103
            Width = 74
            Height = 16
            Anchors = [akTop, akRight]
            Caption = 'Total Neto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Bevel1: TBevel
            Left = 355
            Top = 5
            Width = 98
            Height = 21
            Anchors = [akTop, akRight]
          end
          object Bevel22: TBevel
            Left = 355
            Top = 98
            Width = 98
            Height = 21
            Anchors = [akTop, akRight]
          end
          object Bevel28: TBevel
            Left = 355
            Top = 75
            Width = 98
            Height = 21
            Anchors = [akTop, akRight]
          end
          object Bevel32: TBevel
            Left = 355
            Top = 28
            Width = 98
            Height = 21
            Anchors = [akTop, akRight]
          end
          object Bevel6: TBevel
            Left = 355
            Top = 52
            Width = 98
            Height = 21
            Anchors = [akTop, akRight]
          end
          object DBText1: TDBText
            Left = 361
            Top = 7
            Width = 89
            Height = 17
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            DataField = 'NetoGrav1'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object DBText15: TDBText
            Left = 145
            Top = 369
            Width = 65
            Height = 17
            Anchors = [akTop, akRight]
            DataField = 'PERCECPION_IB_BASEIMPONIBLE'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object DBText2: TDBText
            Left = 319
            Top = 371
            Width = 139
            Height = 17
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            DataField = 'Total'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object DBText3: TDBText
            Left = 360
            Top = 30
            Width = 89
            Height = 17
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            DataField = 'NetoExen1'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object DBText5: TDBText
            Left = 361
            Top = 54
            Width = 89
            Height = 17
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            DataField = 'DstoImporte'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object DBText6: TDBText
            Left = 360
            Top = 77
            Width = 89
            Height = 17
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            DataField = 'NetoExen2'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object DBText7: TDBText
            Left = 361
            Top = 100
            Width = 89
            Height = 17
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            DataField = 'NetoGrav2'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label14: TLabel
            Left = 277
            Top = 6
            Width = 64
            Height = 16
            Anchors = [akTop, akRight]
            Caption = 'SubTotal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label20: TLabel
            Left = 296
            Top = 79
            Width = 48
            Height = 16
            Anchors = [akTop, akRight]
            Caption = 'Exento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label21: TLabel
            Left = 293
            Top = 30
            Width = 48
            Height = 16
            Anchors = [akTop, akRight]
            Caption = 'Exento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label4: TLabel
            Left = 272
            Top = 368
            Width = 41
            Height = 20
            Anchors = [akTop, akRight]
            Caption = 'Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label6: TLabel
            Left = 233
            Top = 54
            Width = 50
            Height = 16
            Anchors = [akTop, akRight]
            Caption = 'Dsto %'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbPercep: TLabel
            Left = 222
            Top = 336
            Width = 83
            Height = 16
            Anchors = [akTop, akRight]
            Caption = 'Percep.IIBB'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            Visible = False
          end
          object dbtImporte_IB: TDBText
            Left = 376
            Top = 335
            Width = 79
            Height = 17
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            DataField = 'PERCECEPION_IB_IMPORTE'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
            Visible = False
          end
          object dbtTasa_IB: TDBText
            Left = 323
            Top = 335
            Width = 47
            Height = 17
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            DataField = 'PERCEPCION_IB_TASA'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
            Visible = False
          end
          object Label2: TLabel
            Left = 62
            Top = 369
            Width = 72
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Base Imponible'
            Transparent = True
          end
          object DBGrillaIva: TDBGrid
            Left = 90
            Top = 122
            Width = 387
            Height = 66
            Anchors = [akTop, akRight]
            Color = clMenu
            DataSource = DatosPresupuesto.DSImpuestos
            Options = [dgEditing, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
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
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                Title.Alignment = taCenter
                Title.Color = clMenu
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clAqua
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 119
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NETO'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TASA'
                Title.Caption = '%'
                Width = 61
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IMPORTE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Color = clMenu
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clAqua
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 97
                Visible = True
              end>
          end
          object dbeDscto: TDBEdit
            Left = 289
            Top = 52
            Width = 47
            Height = 21
            Anchors = [akTop, akRight]
            BevelInner = bvNone
            DataField = 'DSTO'
            DataSource = DSBase
            TabOrder = 1
          end
          object dbcPercibeIIBB: TDBCheckBox
            Left = 77
            Top = 335
            Width = 139
            Height = 17
            Caption = 'Percibir Ingresos Brutos'
            DataField = 'PERCIB_IB'
            DataSource = DSBase
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = dbcPercibeIIBBClick
          end
          object dbgPercepcionesIVA: TDBGrid
            Left = 89
            Top = 194
            Width = 387
            Height = 63
            Color = clMenu
            DataSource = DatosPresupuesto.DSPercepcionIVA
            Options = [dgEditing, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 3
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'DETALLE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                Title.Alignment = taCenter
                Title.Color = clMenu
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clAqua
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 119
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NETO'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TASA'
                ReadOnly = False
                Title.Caption = '%'
                Width = 61
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IMPORTE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Color = clMenu
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clAqua
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 97
                Visible = True
              end>
          end
        end
        object JvDBDateEdit1: TJvDBDateEdit
          Left = 285
          Top = 114
          Width = 121
          Height = 21
          DataField = 'FECHA_ENTREGA_2'
          DataSource = DSBase
          ButtonWidth = 33
          ShowNullDate = False
          TabOrder = 9
          DisabledTextColor = clBlack
        end
        object dbchTienePlano: TDBCheckBox
          Left = 3
          Top = 209
          Width = 131
          Height = 17
          Caption = 'Tiene Plano'
          DataField = 'TIENE_PLANO'
          DataSource = DSBase
          TabOrder = 10
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object pagAgrupadoItems: TTabSheet
        Caption = 'Det.x Items'
        ImageIndex = 3
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1100
          Height = 444
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            DataController.DataSource = DatosPresupuesto.DSPresuDet
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = ',0.00;-,0.00;-'
                Kind = skSum
                Position = spFooter
                FieldName = 'TOTAL'
                Column = cxGrid1DBTableView1TOTAL
              end
              item
                Format = ',0.00;-,0.00;-'
                Kind = skSum
                Position = spFooter
                FieldName = 'TOTAL_FINAL'
                Column = cxGrid1DBTableView1TOTAL_FINAL
              end>
            OptionsView.FooterMultiSummaries = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooters = gfAlwaysVisible
            object cxGrid1DBTableView1ID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGrid1DBTableView1ID_CABPRES: TcxGridDBColumn
              DataBinding.FieldName = 'ID_CABPRES'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGrid1DBTableView1MUESTRAITEM: TcxGridDBColumn
              DataBinding.FieldName = 'ITEM_CONDETALLE'
              Visible = False
              GroupIndex = 0
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Options.CellMerging = True
              Width = 25
              IsCaptionAssigned = True
            end
            object cxGrid1DBTableView1ITEM_NRO: TcxGridDBColumn
              DataBinding.FieldName = 'ITEM_NRO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 31
            end
            object cxGrid1DBTableView1CODIGOARTICULO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGOARTICULO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 81
            end
            object cxGrid1DBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 253
            end
            object cxGrid1DBTableView1UNIDAD: TcxGridDBColumn
              DataBinding.FieldName = 'UNIDAD'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 39
            end
            object cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NROCPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGrid1DBTableView1MODO_GRAVAMEN: TcxGridDBColumn
              DataBinding.FieldName = 'MODO_GRAVAMEN'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGrid1DBTableView1AFECTA_STOCK: TcxGridDBColumn
              DataBinding.FieldName = 'AFECTA_STOCK'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASECPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn
              DataBinding.FieldName = 'CANTIDAD'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 89
            end
            object cxGrid1DBTableView1IVA_TASA: TcxGridDBColumn
              DataBinding.FieldName = 'IVA_TASA'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 34
            end
            object cxGrid1DBTableView1DESCUENTO: TcxGridDBColumn
              DataBinding.FieldName = 'DESCUENTO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 46
            end
            object cxGrid1DBTableView1UNITARIO_TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'UNITARIO_TOTAL'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 67
            end
            object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 91
            end
            object cxGrid1DBTableView1TOTAL_FINAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_FINAL'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 91
            end
            object cxGrid1DBTableView1ACEPTADO: TcxGridDBColumn
              DataBinding.FieldName = 'ACEPTADO'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              VisibleForEditForm = bFalse
              Width = 37
            end
            object cxGrid1DBTableView1ITEM_CONDETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'ITEM_CONDETALLE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 199
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object pagSumaItems: TTabSheet
        Caption = 'Total x Items'
        ImageIndex = 4
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 1100
          Height = 444
          Align = alClient
          TabOrder = 0
          object cxGrid2DBTableView1: TcxGridDBTableView
            DataController.DataSource = DatosPresupuesto.DSPresuSubDet
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.000'
                Kind = skSum
                OnGetText = cxGrid2DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
                FieldName = 'TOTAL_NETO'
                Column = cxGrid2DBTableView1TOTAL_NETO
              end
              item
                Format = ',0.000'
                Kind = skSum
                OnGetText = cxGrid2DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText
                FieldName = 'TOTAL_FINAL'
                Column = cxGrid2DBTableView1TOTAL_FINAL
              end>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.Footer = cxStyle2
            Styles.Header = cxStyle1
            object cxGrid2DBTableView1ITEM_NRO: TcxGridDBColumn
              DataBinding.FieldName = 'ITEM_NRO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 56
            end
            object cxGrid2DBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
              Width = 325
            end
            object cxGrid2DBTableView1TOTAL_GRAVADO: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_GRAVADO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 114
            end
            object cxGrid2DBTableView1TOTAL_UNIT_FINAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_UNIT_FINAL'
              Width = 103
            end
            object cxGrid2DBTableView1CANTIDAD: TcxGridDBColumn
              DataBinding.FieldName = 'CANTIDAD'
              HeaderAlignmentHorz = taCenter
              Width = 88
            end
            object cxGrid2DBTableView1TOTAL_NETO: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_NETO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 128
            end
            object cxGrid2DBTableView1TOTAL_FINAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_FINAL'
              HeaderAlignmentHorz = taCenter
              Width = 125
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
      end
      object PagNotas: TTabSheet
        Caption = 'Notas Anexas'
        ImageIndex = 2
        object Label5: TLabel
          Left = 3
          Top = 5
          Width = 164
          Height = 13
          Caption = 'Notas al pie del Presupuesto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbrNotas: TDBRichEdit
          Left = 0
          Top = 62
          Width = 1100
          Height = 382
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataField = 'NOTAS'
          DataSource = DSBase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ScrollBars = ssVertical
          TabOrder = 0
          WantTabs = True
        end
      end
    end
    object pnCosto: TPanel
      Left = 658
      Top = 581
      Width = 449
      Height = 22
      Anchors = [akRight]
      Enabled = False
      TabOrder = 2
      object dbtCosto: TDBText
        Left = 384
        Top = 4
        Width = 62
        Height = 15
        DataField = 'COSTO_TOTAL'
        DataSource = DatosPresupuesto.DSPresuDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 336
        Top = 4
        Width = 27
        Height = 13
        Caption = 'Costo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbtDetalle: TDBText
        Left = 1
        Top = 4
        Width = 260
        Height = 15
        DataField = 'Detalle'
        DataSource = DatosPresupuesto.DSPresuDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 1108
      Height = 161
      Align = alTop
      BevelOuter = bvNone
      Color = clGradientInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object dbtMuestraComprob: TDBText
        Left = 334
        Top = 20
        Width = 139
        Height = 21
        DataField = 'MUESTRACOMPROBANTE'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText73: TDBText
        Left = 501
        Top = 17
        Width = 96
        Height = 24
        Alignment = taCenter
        AutoSize = True
        DataField = 'LETRAFAC'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 475
        Top = 19
        Width = 26
        Height = 17
        DataField = 'CLASECPBTE'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 359
        Top = 55
        Width = 23
        Height = 22
        Hint = 'Datos del Cliente'
        Flat = True
        Glyph.Data = {
          42020000424D4202000000000000420000002800000010000000100000000100
          1000030000000002000000000000000000000000000000000000007C0000E003
          00001F0000001F7C1F7C1F7C1F7C1F7C1F7C0000E000600000001F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000A100851510428A29C208200000001F7C
          1F7C1F7C1F7C1F7C1F7C000063000815CE391042524ACE398C31482102096000
          00001F7C1F7C0000630008158C318C31524ABC73FE7B7A6B9452CE391042CA29
          42096000000042088C318C31104235463967FE7BFE7B7A6B3967FE7B175F1042
          10420821000000001042F75EF75E3546732DBC52FE5ABC35FE7BFE7BFE7BFE7B
          175F08210000200060006B2DF75EF75EB114732DFE1C0F00692D672DFE7BB452
          A51400001F7C0000A10CE01460006B2D3546B114BC73EF3DB37BE069600C0000
          1F7C1F7C1F7C1F7C21002015600D2001A0006B2D3967B452A21C0D7BE069600C
          1F7C1F7C1F7C1F7C0000E1006005600D60016001600000001F7CA21C0D7BE069
          600C1F7C1F7C1F7C1F7C210060056001A001E001600100001F7C1F7CA21C0D7B
          E069600C1F7C1F7C1F7C0000E104A001E001E001E001A0001F7C1F7C1F7CA21C
          0D7BE069600C1F7C1F7C1F7C6000E001E001E001E001A00100001F7C1F7C1F7C
          A21C0D7BE03C1F7C1F7C1F7C1F7C0000E000E00120022002A0001F7C1F7C1F7C
          1F7C000000001F7C1F7C1F7C1F7C1F7C1F7C0000E0006002A00100001F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000600200001F7C1F7C
          1F7C1F7C1F7C}
        OnClick = DatosClienteExecute
      end
      object dbtFechaVtoPresupuesto: TDBText
        Left = 456
        Top = 94
        Width = 80
        Height = 17
        DataField = 'FECHAVTO_PRESUPUESTO'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object dbtIdPresupuesto: TDBText
        Left = 635
        Top = 3
        Width = 84
        Height = 17
        DataField = 'ID_PR'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText13: TDBText
        Left = 72
        Top = 40
        Width = 133
        Height = 16
        DataField = 'MUESTRAIVA'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText14: TDBText
        Left = 269
        Top = 40
        Width = 113
        Height = 16
        DataField = 'CUIT'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText8: TDBText
        Left = 662
        Top = 22
        Width = 60
        Height = 16
        Alignment = taCenter
        AutoSize = True
        DataField = 'SUB_NRO'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel58: TLabel
        Left = 6
        Top = 3
        Width = 33
        Height = 13
        Caption = 'Fecha '
        Transparent = True
      end
      object RxLabel59: TLabel
        Left = 93
        Top = 3
        Width = 87
        Height = 13
        Caption = 'Sucursal de Venta'
        Transparent = True
      end
      object RxLabel60: TLabel
        Left = 501
        Top = 3
        Width = 98
        Height = 13
        Caption = 'Nro.de Comprobante'
        Transparent = True
      end
      object RxLabel62: TLabel
        Left = 212
        Top = 115
        Width = 93
        Height = 13
        Caption = 'Condicion de Venta'
        Transparent = True
      end
      object RxLabel2: TLabel
        Left = 6
        Top = 40
        Width = 32
        Height = 13
        Caption = 'Cliente'
        Transparent = True
      end
      object RxLabel3: TLabel
        Left = 6
        Top = 78
        Width = 125
        Height = 13
        Caption = 'Lugar de Recepci'#243'n(LDR)'
        Transparent = True
      end
      object RxLabel4: TLabel
        Left = 4
        Top = 116
        Width = 42
        Height = 13
        Caption = 'Dep'#243'sito'
        Transparent = True
      end
      object RxLabel6: TLabel
        Left = 285
        Top = 3
        Width = 102
        Height = 13
        Caption = 'Tipo de Comprobante'
        Transparent = True
      end
      object RxLabel7: TLabel
        Left = 384
        Top = 117
        Width = 46
        Height = 13
        Caption = 'Vendedor'
        Transparent = True
      end
      object RxLabel8: TLabel
        Left = 363
        Top = 78
        Width = 80
        Height = 13
        Caption = 'Dias de Vigencia'
        Transparent = True
      end
      object RxLabel9: TLabel
        Left = 463
        Top = 78
        Width = 64
        Height = 13
        Caption = 'F.Vto.Presup.'
        Transparent = True
      end
      object JvLabel2: TLabel
        Left = 433
        Top = 47
        Width = 36
        Height = 13
        Caption = 'Factura'
        Transparent = True
      end
      object JvLabel3: TLabel
        Left = 524
        Top = 47
        Width = 33
        Height = 13
        Caption = 'Remito'
        Transparent = True
      end
      object Label13: TLabel
        Left = 595
        Top = 47
        Width = 51
        Height = 13
        Caption = 'O.Producc'
        Transparent = True
      end
      object Label15: TLabel
        Left = 732
        Top = 3
        Width = 66
        Height = 13
        Caption = 'Pres.Relacion'
        Transparent = True
      end
      object btNuevoCliente: TSpeedButton
        Left = 387
        Top = 55
        Width = 23
        Height = 22
        Flat = True
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
          030303030303030303030303030303030303030303030303FF03030303030303
          03030303030303030303030003030303030303030303030303FF0303030303F8
          FF03030303030303FF0303030003030303030300030303030303030003030303
          F803FF03030303F803030303030303F803030303030003030303030303030303
          030300030303030303F80303FFFFFFFFFFFFFFFFFFFFF8030303030303030300
          00000000000000000003030303030303030303F8F8F8F8F8F8F8F8F8F8FF0303
          0303030303030300FFFFFFFFFFFFFFFF0003030303030303030303F8FF030303
          03030303F8FF03030303030303030300FFFFFFFFFFFFFFFF0003030303030303
          030303F8FF03030303030303F8FF03030303030303030300FFFFFFFFFFFFFFFF
          0003030303030303030303F8FF03030303030303F8FF03030303030303030300
          FFFFFFFFFFFFFFFF0003030303030303030303F8FF03030303030303F8FF0303
          FFFF030303030300FFFFFFFFFFFFFFFF0003030000030303FFFF03F8FF030303
          03030303F8FF03F8F803030000030300FFFFFFFFFFFFFFFF00030303030303F8
          F80303F8FF03030303030303F8FF03030303030303030300FFFFFFFFFFFFFFFF
          0003030303030303030303F8FF0303030303FFFFF8FF03030303030303030300
          FFFFFFFFFF0000000003030303030303030303F8FF03030303F8F8F8F8030303
          0303030303030300FFFFFFFFFF00FF000303030303030303030303F8FF030303
          03F8FFF8030303030303030303030300FFFFFFFFFF0000030303030303030303
          030303F8FFFFFFFFFFF8F8030303030303030303030303000000000000000303
          03030303030303030303FFF8F8F8F8F8F8F80303030303FF0303030303000303
          0303030303030303030300030303030303F803030303030303FF03030303F803
          FF0303030003030303030303000303030303030003030303F803030303030303
          F8FF0303030303F8030303030303030303030303000303030303030303030303
          0303030303030303F80303030303030303030303030303030303030303030303
          0303030303030303030303030303030303030303030303030303}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = AgregarClienteExecute
      end
      object dbeSuc: TDBEdit
        Left = 523
        Top = 18
        Width = 45
        Height = 24
        TabStop = False
        DataField = 'SucFac'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object dbeNumero: TDBEdit
        Left = 572
        Top = 18
        Width = 84
        Height = 24
        TabStop = False
        DataField = 'NUMEROFAC'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object dbeConVta: TDBEdit
        Left = 255
        Top = 131
        Width = 121
        Height = 21
        Color = clInfoBk
        DataField = 'MUESTRACONDVENTA'
        DataSource = DSBase
        Enabled = False
        TabOrder = 15
      end
      object dbeNombre: TDBEdit
        Left = 72
        Top = 55
        Width = 286
        Height = 21
        Color = clInfoBk
        DataField = 'Nombre'
        DataSource = DSBase
        Enabled = False
        TabOrder = 12
      end
      object dbeLdr: TDBEdit
        Left = 72
        Top = 92
        Width = 286
        Height = 21
        Color = clInfoBk
        DataField = 'MUESTRALDR'
        DataSource = DSBase
        Enabled = False
        TabOrder = 13
      end
      object dbeSucursal: TDBEdit
        Left = 137
        Top = 18
        Width = 146
        Height = 21
        Color = clInfoBk
        DataField = 'MUESTRASUCURSAL'
        DataSource = DSBase
        Enabled = False
        TabOrder = 11
      end
      object dbeDeposito: TDBEdit
        Left = 71
        Top = 132
        Width = 135
        Height = 21
        Color = clInfoBk
        DataField = 'MUESTRADEPOSITO'
        DataSource = DSBase
        Enabled = False
        TabOrder = 14
      end
      object dbeMuestraVendedor: TDBEdit
        Left = 450
        Top = 131
        Width = 191
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRAVENDEDOR'
        DataSource = DSBase
        Enabled = False
        TabOrder = 16
      end
      object dbeDias: TJvDBSpinEdit
        Left = 372
        Top = 92
        Width = 50
        Height = 21
        ButtonKind = bkStandard
        MaxValue = 300.000000000000000000
        MinValue = 1.000000000000000000
        TabOrder = 8
        OnChange = dbeDiasChange
        DataField = 'DIAS_VIGENCIA_PRESUPESTO'
        DataSource = DSBase
      end
      object RxDBESucursal: TJvDBComboEdit
        Left = 92
        Top = 18
        Width = 42
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'Sucursal'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 18
        TabOrder = 2
        OnButtonClick = BuscarSucursalExecute
        OnKeyDown = RxDBESucursalKeyDown
      end
      object RxDBECodigo: TJvDBComboEdit
        Left = 7
        Top = 55
        Width = 60
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'Codigo'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 14
        TabOrder = 1
        OnButtonClick = BuscarClienteExecute
        OnKeyDown = RxDBECodigoKeyDown
      end
      object RxDBELdr: TJvDBComboEdit
        Left = 6
        Top = 93
        Width = 37
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'LDR'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 17
        TabOrder = 4
        OnButtonClick = BuscarLdrExecute
        OnKeyDown = RxDBELdrKeyDown
      end
      object RxDBEDeposito: TJvDBComboEdit
        Left = 7
        Top = 132
        Width = 37
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'DEPOSITO'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 17
        TabOrder = 5
        OnButtonClick = BuscarDepositoExecute
        OnKeyDown = RxDBEDepositoKeyDown
      end
      object RxDBEConVta: TJvDBComboEdit
        Left = 213
        Top = 132
        Width = 37
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'CondicionVta'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 17
        TabOrder = 6
        OnButtonClick = BuscarCondVentaExecute
        OnKeyDown = RxDBEConVtaKeyDown
      end
      object RxCTipoCpbte: TJvDBComboEdit
        Left = 285
        Top = 18
        Width = 46
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'ID_TIPOCOMPROBANTE'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 18
        TabOrder = 3
        OnButtonClick = BuscarTipoCpbteExecute
        OnKeyDown = RxCTipoCpbteKeyDown
      end
      object rxcVendedor: TJvDBComboEdit
        Left = 384
        Top = 131
        Width = 64
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'VENDEDOR'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 17
        TabOrder = 7
        OnButtonClick = BuscadorVendedorExecute
        OnKeyDown = rxcVendedorKeyDown
      end
      object dbeFechaVta: TJvDBDateEdit
        Left = 7
        Top = 18
        Width = 83
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        DataField = 'FECHAVTA'
        DataSource = DSBase
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
        ButtonWidth = 18
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 0
      end
      object pnAvisoFUAP: TPanel
        Left = 471
        Top = 0
        Width = 272
        Height = 41
        BevelOuter = bvNone
        Caption = 'Ultima fecha de actul:'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 17
        Visible = False
      end
    end
    object bt1: TBitBtn
      Left = 747
      Top = 130
      Width = 26
      Height = 25
      Action = SelectAll
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333388888888883333333333FFFFFFFFFF3333333330000000000833333
        33338888888888F3333333330FFFFFFFF083333333338F33333F38F333333333
        0FFFF00FF083333333338F33388FF8F3333333330FFF0000F083333333338F33
        8888F8F3333333330FF80000F083333333338F338888F8F3333333330F800000
        0083333333338F38888888F3333333330F000F000083333333338F88838888F3
        333333330F00FFF00083333333338F88333888F3333333330FFFFF0000833333
        33338F33338888FF333333330FFFFF0F0003333333338F33338F888F33333333
        0FFFFF003008333333338FFFFF88388F33333333000000033800333333338888
        88833388F333333333333333330083333333333333333388FF33333333333333
        3330033333333333333333388F33333333333333333303333333333333333333
        8333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333}
      NumGlyphs = 2
      TabOrder = 3
      TabStop = False
    end
    object bt2: TBitBtn
      Left = 772
      Top = 130
      Width = 23
      Height = 25
      Action = UnselectAll
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
        03030303030303030303030303030303030303FFFFFFFFFF0303030303030303
        03030303F8F8F8F8F8F80303030303030303030303FFF8F8F8F8F8F8FFFFFF03
        030303030303F8F8010101010101F8F80303030303030303F8F80303FFFFFF03
        F8F8FFFF0303030303F8010101F9F9F9F9010101F8030303030303F8FF0303F8
        F8F8F8FF0303F8FFFF030303F90101F9F90303030301010101F803030303F8FF
        03F8F803030303F8030303F8FF030303F901010303030303F801010101F80303
        0303F8FFF8FF03030303F80303FF03F8FF0303F90101F803030303F8010101F9
        0101F80303F8FF03F8FF030303F80303FFF8FF03F8FF03F901F803030303F801
        0101F903F901F80303F8FFF8FF030303F80303FFF803F8FFF8FF03F901F80303
        03F8010101F90303F901F80303F8FFF8FF0303F80303FFF80303F8FFF8FF03F9
        01F80303F8010101F9030303F901F80303F8FFF8FF03F80303FFF8030303F8FF
        F8FF03F901F803F8010101F903030303F901F80303F8FFF8FFF80303FFF80303
        0303F803F8FF03F90101F8010101F903030303F90101F80303F8FF03F80303FF
        F803030303F80303F8030303F901010101F90303030303F901F803030303F8FF
        0303FFF8030303FFFFF803F8FF030303F9010101F803030303F8010101F80303
        0303F8FF0303F8FFFFFFFFF8F803FFF80303030303F9010101F8F8F8F8010101
        F8030303030303F8FFFF03F8F8F8F803FFFFF803030303030303F9F901010101
        0101F9F90303030303030303F8F8FFFFFFFFFFFFF8F803030303030303030303
        F9F9F9F9F9F9030303030303030303030303F8F8F8F8F8F80303030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        0303}
      NumGlyphs = 2
      TabOrder = 4
      TabStop = False
    end
  end
  inherited ToolBar1: TToolBar
    Top = 631
    Width = 1108
    Height = 29
    Align = alBottom
    ButtonHeight = 30
    ButtonWidth = 27
    OnDblClick = ToolBar1DblClick
    ExplicitTop = 631
    ExplicitWidth = 1108
    ExplicitHeight = 29
    inherited btConfirma: TBitBtn
      Width = 72
      Height = 30
      ExplicitWidth = 72
      ExplicitHeight = 30
    end
    inherited btNuevo: TBitBtn
      Left = 74
      Width = 76
      Height = 30
      OnDragDrop = dbgDBGrillaDetalle_oldDragDrop
      ExplicitLeft = 74
      ExplicitWidth = 76
      ExplicitHeight = 30
    end
    inherited btCancelar: TBitBtn
      Left = 150
      Width = 76
      Height = 30
      ExplicitLeft = 150
      ExplicitWidth = 76
      ExplicitHeight = 30
    end
    inherited btModificar: TBitBtn
      Left = 226
      Width = 76
      Height = 30
      ExplicitLeft = 226
      ExplicitWidth = 76
      ExplicitHeight = 30
    end
    inherited Pr: TSpeedButton
      Width = 16
      Height = 30
      ExplicitWidth = 16
      ExplicitHeight = 30
    end
    inherited btBuscar: TBitBtn
      Left = 318
      Width = 76
      Height = 30
      ExplicitLeft = 318
      ExplicitWidth = 76
      ExplicitHeight = 30
    end
    inherited Ne: TSpeedButton
      Left = 394
      Width = 16
      Height = 30
      ExplicitLeft = 394
      ExplicitWidth = 16
      ExplicitHeight = 30
    end
    inherited btBorrar: TBitBtn
      Left = 410
      Width = 72
      Height = 30
      ExplicitLeft = 410
      ExplicitWidth = 72
      ExplicitHeight = 30
    end
    inherited btSalir: TBitBtn
      Width = 76
      Height = 30
      TabOrder = 7
      ExplicitWidth = 76
      ExplicitHeight = 30
    end
    object ToolButton1: TToolButton
      Left = 558
      Top = 0
      Width = 20
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btImprimir: TBitBtn
      Left = 578
      Top = 0
      Width = 72
      Height = 30
      Action = Imprimir
      Caption = 'Imprimir'
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
      PopupMenu = pmPrint
      TabOrder = 6
    end
    object btnEnviarCorreo: TSpeedButton
      Left = 650
      Top = 0
      Width = 20
      Height = 30
      Action = EnviarCorreo
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
        000077777777777777770FFFFFFFFFFFFFF07F3333FFF33333370FFFF777FFFF
        FFF07F333777333333370FFFFFFFFFFFFFF07F3333FFFFFF33370FFFF777777F
        FFF07F33377777733FF70FFFFFFFFFFF99907F3FFF33333377770F777FFFFFFF
        9CA07F77733333337F370FFFFFFFFFFF9A907FFFFFFFFFFF7FF7000000000000
        0000777777777777777733333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton4: TToolButton
      Left = 670
      Top = 0
      Width = 11
      Caption = 'ToolButton4'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object SpeedButton2: TSpeedButton
      Left = 681
      Top = 0
      Width = 26
      Height = 30
      Action = GenerarNotaPedido
      Flat = True
    end
    object btMenu: TJvArrowButton
      Left = 707
      Top = 0
      Width = 44
      Height = 30
      Hint = 'Mas Opciones'
      DropDown = pm2
      DropOnButtonClick = True
      Flat = True
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clWindowText
      FillFont.Height = -11
      FillFont.Name = 'Tahoma'
      FillFont.Style = []
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFFFFFFF333333333000000000033333333337777777777F3333
        333330FEFEFEFE033333333337F3FFFFFF7F3333333330E444444F0333333333
        37F77777737F333333333099999999033333333337F33333337F33333333309F
        FFFFF9033333333337F33333337F333333333099999999033333333337F3FFFF
        FF7F3333333330E444444F033333333337F77777737F3333333330FEFEFEFE03
        3333333337F3FFF3FF7F3333333330E444E000033333333337F7773777733333
        333330FEFEF0F0333333333337F33337F7333333333330EFEFE0033333333333
        37FFFFF7733333FFFF333000000033333000033337777777333337777F333333
        3333333330EA0333333333333333F7F37FFF33333333333000AE000333333333
        33377733777F333333333330EAEAEA03333333333337FFF33F7F333333333330
        00AE000333333333333777F3777333333333333330EA033333333333333337FF
        7F33333333333333300003333333333333333777733333333333333333333333
        33333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton3: TToolButton
      Left = 751
      Top = 0
      Width = 9
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object spOProduccion: TSpeedButton
      Left = 760
      Top = 0
      Width = 28
      Height = 30
      Action = GenerarOProduccion
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000090000
        000E000000100000001000000010000000100000001000000011000000110000
        0011000000110000001100000011000000100000000B00000003845633C1B777
        46FFB77746FFB77746FFAA7B6DFFA97A6CFFA97A6BFFA97A6BFFA9796BFFA87A
        6BFFA7786AFFA7786AFFA77869FFA77869FF78564AC30000000AC68C5CFFE0BF
        99FFE0BC94FFD7AD84FFF8F0ECFFF8F0ECFFF8F0ECFFF8F0ECFFF7EFEBFFF8EF
        EBFFF7EFEBFFF7EFEBFFF7EFEBFFF7F0EBFFA8796AFF0000000FC68E5DFFE2C4
        9DFFD8B081FFD1A476FFF6ECE8FFF6EDE8FFF6ECE8FFF6EDE8FFF6ECE8FFF7ED
        E8FFF6EDE7FFF6ECE8FFF6ECE8FFF8F0ECFFA97B6BFF00000010C7905FFFE4C6
        A2FFDAB285FFD3A679FFF7EDE8FFF6EDE8FFF6EDE8FFF6EDE8FFF6EDE8FFF6EC
        E8FFF7EDE8FFF6ECE8FFF6ECE8FFF8F1EDFFAA7C6DFF0000000FC89261FFE6C9
        A8FFDCB589FFD4A87BFFF7EEE9FFF7EDE9FFF7EDE9FFF7EDE9FFBC8D73FFF1E4
        DEFFF6EDE9FFF7EDE8FFF6EDE9FFF9F1EDFFAB7E6FFF0000000ECA9463FFE7CE
        ACFFDEB88BFFD6AA7DFFF7EEE9FFF7EDE9FFF7EEE9FFF7EDE9FFA2613AFFA46B
        4AFFDDC6BAFFF6EDE9FFF7EEE9FFF8F1EEFFAD8072FF0000000ECB9565FFE9D1
        B0FFDEBA8FFFD6AC80FFF7EDEAFFB57D56FFA76740FFA6663FFFA6653EFFEEBB
        75FFB17548FFC29A86FFF4E9E3FFF9F2EFFFAF8274FF0000000DCC9767FFEBD4
        B5FFE0BD92FFD7AE82FFF7EEEAFFB8825BFFFEEAC1FFF9CA82FFF8C980FFF9C8
        80FFF8C87EFFCD955EFFBB8E77FFF9F2EFFFB08476FF0000000CCE996AFFECD7
        B9FFE1BF96FFD8B085FFF7EEEAFFBC875FFFBB855EFFBB845DFFB9835CFFF3DA
        B2FFB7835EFFC7A28CFFF5EBE6FFF9F3F0FFB28679FF0000000CCF9B6DFFEDD9
        BEFFE3C299FFD9B187FFF7EFEBFFF7EFEBFFF7EFEBFFF8EEEBFFBC8861FFB47F
        5DFFE2CDC0FFF7EEEAFFF7EFEBFFFAF4F1FFB3897BFF0000000BCF9D6EFFEFDC
        C0FFE4C59CFFDAB48AFFF8EFEBFFF7EEEBFFF7EFEBFFF7EFEBFFD3AF94FFF2E7
        E1FFF7EFEBFFF7EFEBFFF7EEEBFFFAF3F2FFB58B7DFF0000000AD09F70FFF0DF
        C4FFE5C89FFFDBB68CFFF7EFECFFF8EFECFFF8EFECFFF7EFECFFF7EFECFFF7EF
        ECFFF7EFEBFFF7EFEBFFF7EFECFFFAF5F2FFB68D80FF00000009D2A072FFF2E0
        C7FFE6CAA2FFDCB88EFFF8F0EDFFF8EFECFFF8EFECFFF8EFECFFF8F0ECFFF7F0
        ECFFF8EFECFFF8EFECFFF7EFECFFFAF5F2FFB99083FF00000009D2A274FFF3E4
        CEFFF3E4CEFFE6CCAFFFFAF8F5FFFAF8F6FFFAF8F5FFFAF8F6FFFAF8F5FFFAF8
        F5FFFAF8F5FFFAF8F5FFFAF7F5FFFAF6F4FFBB9286FF000000089D7857C0D3A3
        75FFD2A375FFD3A374FFC09B8EFFC09A8EFFBF9A8DFFBF998CFFBE988CFFBE98
        8BFFBD978AFFBD978AFFBD9689FFBD9589FF8A6E64C200000005}
      ParentShowHint = False
      ShowHint = True
    end
    object spIncidencias: TSpeedButton
      Left = 788
      Top = 0
      Width = 36
      Height = 30
      Action = Incidencias
      Flat = True
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        0800000000004002000000000000000000000001000000010000000000000101
        0100020202000303030004040400050505000606060007070700080808000909
        09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
        1100121212001313130014141400151515001616160017171700181818001919
        19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
        2100222222002323230024242400252525002626260027272700282828002929
        29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
        3100323232003333330034343400353535003636360037373700383838003939
        39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
        4100424242004343430044444400454545004646460047474700484848004949
        49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005757
        570065656500727272007D7D7D00848484008686860087878700878787008787
        8700878787008787870087878700878787008787870087878700878787008787
        8700878787008787870087878700878787008787870087878700878787008787
        8700878787008787870088888800888888008888880088888800888888008888
        8800888888008888880088888800888888008888880088888800888888008888
        8800888888008888880088888800888888008888880088888800888888008888
        8800888888008888880088888800888888008888880088888800888888008888
        8800888888008888880088888800888888008888880088888800888888008888
        8800888888008888880088888800888888008888880088888800888888008888
        880088888800888888008888880088888800898989008D8D8D00969696009E9E
        9E00A8A8A800B4B4B400C0C0C000C9C9C900CFCFCF00D1D1D100D3D3D300D4D4
        D400D4D4D400D5D5D500D5D5D500D5D5D500D6D6D600D6D6D600D7D7D700D8D8
        D800D8D8D800D8D8D800D9D9D900D9D9D900DADADA00DBDBDB00DBDBDB00DCDC
        DC00DCDCDC00DDDDDD00DDDDDD00DEDEDE00DFDFDF00DFDFDF00E0E0E000E0E0
        E000E1E1E100E2E2E200E2E2E200E3E3E300E3E3E300E4E4E400E5E5E500E5E5
        E500E6E6E600E7E7E700E7E7E700E8E8E800E8E8E800E9E9E900EAEAEA00EAEA
        EA00EBEBEB00ECECEC00ECECEC00EDEDED00EEEEEE00EFEFEF00EFEFEF00F0F0
        F000F1F1F100F2F2F200F3F3F300F4F4F400F5F5F500F5F5F500F6F6F600F7F7
        F700F7F7F700F8F8F800F9F9F900FAFAFA00FAFAFA00FBFBFB00FCFCFC00FCFC
        FC00FDFDFD00FDFCFD00FDFCFD00FDF9FD00FDEFFD00FDDAFD00FDB7FD00FE7E
        FE00FE3CFE00FE15FE00FE05FE00FE01FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FAFAFAFAFAFA
        FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA9E9E9E9E9E9E9E9E9E9E9E9E
        9E9E9E9E9E9E9E9EFAFAFA9ECECAC9C7C2C2BFBCBAB8B5B1B0AFABABAAAAAAAA
        9EFAFA9ECFCE94949494949494949494949494949494AAAA9EFAFA9ED2D09494
        9494949494949494949494949494ABAA9EFAFA9ED5D2CFCFCACAC5C4C0BFBDBA
        B8B6B5B0B0AFABAA9EFAFA9ED6D594949494949494949494949494949494AFAB
        9EFAFA9ED9D794949494949494949494949494949494B0AF9EFAFA9EDBD9D7D5
        D2D0CECBCAC7C5C2BFBDBAB8B8B5B1B09EFAFA9EDCDB94949494949494949494
        949494949494B5B19EFAFA9EDFDC94949494949494949494949494949494B6B5
        9EFAFA9EE0DFDCDBD9D7D5D4D0CECECAC7C5C2BFBDBCBAB69EFAFA9EE1E09494
        9494949494949494949494949494BCBA9EFAFA9EE4E394949494949494949494
        949494949494BDBC9EFAFA9EE6E4E3E1DFDDDBDAD7D5D4D0CFCECAC7C5C2C0BF
        9EFAFA9EE7E694949494949494949494949494949494C2C09EFAFA9EE9E79494
        9494949494949494949494949494C5C49EFAFA9EEAE9E7E6E4E3E1DFDCDBD9D9
        D6D4D0CFCECAC7C59EFAFA9EEAEA94949494949494949494949494949494CAC9
        9EFAFA9EEAEA94949494949494949494949494949494CECB9EFAFA9EEAEAEAEA
        E9E7E7E4E3E1DFDDDCDAD9D6D5D2D0CE9EFAFA9EEAEAEAEAEAE9E9E6E4E3E1DF
        DDDCDAD7D6D4D2CF9EFAFAFA9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E
        FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA}
      ParentShowHint = False
      ShowHint = True
    end
    object spAgendarTareas: TSpeedButton
      Left = 824
      Top = 0
      Width = 26
      Height = 30
      Hint = 'Agendar en Listado de Tareas'
      Action = AgendarTarea
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000FF000000FF0000000000FF00FF00FF00FF00FF00FF00000000000000
        0000000000000000000000000000000000000000FF000000FF000000FF000000
        FF000000FF000000FF000000FF0000000000FF00FF00FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000FF000000FF000000
        FF000000FF000000FF000000FF000000FF0000000000FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000FF000000FF000000
        FF000000FF000000FF000000FF000000FF000000FF000000000000000000FFFF
        FF000000000000000000FFFFFF00000000000000FF000000FF000000FF000000
        FF000000FF000000FF000000FF000000FF0000000000FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000FF000000FF000000
        FF000000FF000000FF000000FF0000000000FF00FF00FF00FF0000000000FFFF
        FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00000000FF000000FF0000000000FF00FF00FF00FF00FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
        FF000000000000000000FFFFFF00000000000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
        FF0000000000C0C0C000FFFFFF0000000000FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton2: TToolButton
      Left = 850
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object spAcopiar: TSpeedButton
      Left = 858
      Top = 0
      Width = 28
      Height = 30
      Hint = 'Inidicar para generar Acopio'
      Action = Acopiar
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000FF000000FF0000000000FF00FF00FF00FF00FF00FF00000000000000
        0000000000000000000000000000000000000000FF000000FF000000FF000000
        FF000000FF000000FF000000FF0000000000FF00FF00FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000FF000000FF000000
        FF000000FF000000FF000000FF000000FF0000000000FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000FF000000FF000000
        FF000000FF000000FF000000FF000000FF000000FF000000000000000000FFFF
        FF000000000000000000FFFFFF00000000000000FF000000FF000000FF000000
        FF000000FF000000FF000000FF000000FF0000000000FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000FF000000FF000000
        FF000000FF000000FF000000FF0000000000FF00FF00FF00FF0000000000FFFF
        FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00000000FF000000FF0000000000FF00FF00FF00FF00FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
        FF000000000000000000FFFFFF00000000000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
        FF0000000000C0C0C000FFFFFF0000000000FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object ToolButton5: TToolButton
      Left = 886
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object spAlCobro: TSpeedButton
      Left = 894
      Top = 0
      Width = 23
      Height = 30
      Hint = 'Presupuesto a el Cobro'
      Action = EnviarAlCobro
      Flat = True
    end
    object ToolButton6: TToolButton
      Left = 917
      Top = 0
      Width = 27
      Caption = 'ToolButton6'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object spAnular: TSpeedButton
      Left = 944
      Top = 0
      Width = 23
      Height = 30
      Action = MarcarAnulado
      Flat = True
    end
  end
  inherited Panel1: TPanel
    Top = 660
    Width = 1108
    Height = 24
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 660
    ExplicitWidth = 1108
    ExplicitHeight = 24
    inherited sbEstado: TStatusBar
      Width = 1019
      Height = 22
      Panels = <
        item
          Width = 380
        end
        item
          Width = 400
        end
        item
          Width = 50
        end>
      OnClick = sbEstadoClick
      OnDblClick = sbEstadoDblClick
      OnMouseMove = sbEstadoMouseMove
      ExplicitWidth = 1019
      ExplicitHeight = 22
    end
  end
  object gbLista: TGroupBox [3]
    Left = 750
    Top = 35
    Width = 70
    Height = 44
    Caption = 'Lista'
    Color = clGradientInactiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 6
    object dbcLista: TDBLookupComboBox
      Left = 10
      Top = 20
      Width = 55
      Height = 21
      DataField = 'LISTAPRECIO'
      DataSource = DSBase
      DropDownAlign = daRight
      DropDownWidth = 300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'ID'
      ListField = 'ID;nombre'
      ListSource = DatosPresupuesto.DSListaPrecios
      ParentFont = False
      TabOrder = 0
      OnClick = dbcListaClick
      OnKeyDown = dbcListaKeyDown
    end
  end
  object pnColumnas: TPanel [4]
    Left = 363
    Top = 167
    Width = 218
    Height = 250
    Caption = 'pnColumnas'
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 7
    Visible = False
    DesignSize = (
      218
      250)
    object chklstColumnas: TCheckListBox
      Left = 6
      Top = 6
      Width = 206
      Height = 204
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      ItemHeight = 17
      TabOrder = 0
    end
    object btnSalirColumna: TButton
      Left = 130
      Top = 217
      Width = 75
      Height = 22
      Hint = 'Nuevo Registro'
      Anchors = [akLeft, akBottom]
      Caption = 'Salir'
      TabOrder = 1
      OnClick = btnSalirColumnaClick
    end
  end
  object pnFc: TPanel [5]
    Left = 416
    Top = 58
    Width = 238
    Height = 19
    BevelOuter = bvNone
    BorderWidth = 1
    Color = clGradientInactiveCaption
    ParentBackground = False
    ShowCaption = False
    TabOrder = 8
    object dbIdFactura: TDBText
      Left = 0
      Top = -1
      Width = 79
      Height = 17
      Cursor = crHandPoint
      DataField = 'MUESTRAFACTURA'
      DataSource = DSBase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = dbIdFacturaClick
    end
    object dbIdRto: TDBText
      Left = 73
      Top = -1
      Width = 79
      Height = 17
      Cursor = crHandPoint
      Alignment = taRightJustify
      DataField = 'MUESTRAREMITO'
      DataSource = DSBase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = dbIdRtoClick
    end
    object dbtOProd: TDBText
      Left = 153
      Top = 0
      Width = 79
      Height = 17
      Cursor = crHandPoint
      Alignment = taRightJustify
      DataField = 'MUESTRAOPRODUCCION'
      DataSource = DSBase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = dbtOProdClick
    end
  end
  object pnReferencia: TPanel [6]
    Left = 542
    Top = 79
    Width = 258
    Height = 41
    BevelOuter = bvNone
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 9
    object Label7: TLabel
      Left = 2
      Top = 0
      Width = 52
      Height = 13
      Caption = 'Referencia'
      Transparent = True
    end
    object dbeReferencia: TDBEdit
      Left = 3
      Top = 15
      Width = 252
      Height = 21
      CharCase = ecUpperCase
      DataField = 'REFERENCIA'
      DataSource = DSBase
      TabOrder = 0
    end
  end
  object gaClon: TAdvGaugeCircle [7]
    Left = 416
    Top = 287
    Width = 90
    Height = 84
    Background.Color = clWhite
    Background.ColorTo = clWhite
    Background.ColorMirror = clNone
    Background.ColorMirrorTo = clNone
    Background.GradientType = gtVertical
    Background.GradientMirrorType = gtSolid
    Background.BorderColor = clNone
    Background.Rounding = 0
    Background.ShadowOffset = 0
    Background.Glow = gmNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Trebuchet Sans MS'
    Font.Style = []
    Increment = 1.000000000000000000
    Maximum = 100.000000000000000000
    PictureUp.Data = {
      89504E470D0A1A0A0000000D4948445200000080000000800806000000C33E61
      CB00000006624B474400FF00FF00FFA0BDA7930000052F49444154789CEDDD6B
      88D45518C7F1EFEEBA5B5ED8B61B125D10430AA90896A2CB9261E0B2955150A0
      5050912F8C0CB217BED47A255490518106451729830A42A1A028542ACB282251
      A258BA60A68B9B77D7BDF5E29CBF6C3AB3FB9F99F39CFFCC99DF079E37EBEE9C
      E732EECDE78C2022222222222222222222222222222222222222222222222222
      222222222222529FA603EB80BD3E5EF46F9326701EB01D183F23B6039D05E625
      115C047CCFD9C3CF62A77F1F49D025C02ECA0F3F8B5DFE7D252197017B987AF8
      59ECF11F2309B812E827FFF0B3E807E61690AF04340FF883CA879FC5EFFE31A4
      015D0BECA3FAE167B1CF3F9634901B8183D43EFC2C0E023744AD40AA76333048
      B8E16731E81F5BEAD81DC051C20F3F8BA3C0C268D548457A8163D80D3F8B63C0
      A24835494EF70143D80F3F8B217FA6D481878011E20D3F8B61E0C108F5C9241E
      A598E16731023C625EA594F424304671C3CF620C58615CAB9CE169EA63F8139F
      042B4D2B96D3D652FCC0CBC51ABBB205EA7BF859AC35ABBE89B500AF52FC70F3
      C62B3E6709A015D840F143AD3436F8DCA506ADC06BD80DE967F26D09E9495080
      73808FB11BCE5740978FAF0DCF791F680FDC9BE44D07B6603794CF819913CE9B
      E9DF6675DE16B4769EDB2CE04BEC86F12930A3C4B933FC9F599DFB85AF4D26D1
      096CC36E081F021D939CDF017C6478FE3674F7A0AC0B717BF956CD7F1B989623
      8F76DCD76DAB3C76FA5A6582BC3BFBD5C6EB405B05F9B4F98FB1CAE707E0E20A
      F249DAA5C06EEC9ABD8EEA7E29D302BC6498D76E5F7B539B4B753BFB79E3056A
      FB8D5C8B7F0CABFCFA69E2BB07F3707BF756CD5D1530D735867936E5DD83503B
      FB31869F596598EFDFC0350639D7A5EB81FDD834720C586E98FBE3D8ED21FC83
      EB4DD26EC266677F1C18059645A861993FCBA286415C8F92B410BB9DFD616069
      BC5258EACFB4A8E50809DE3D5884DDCEFE496071BC524EBBC79F6D515352770F
      EEC56E67FF38D017AF94B3DC099C2891578818C2F5AEA13D009CC2A641878105
      F14A29EB76DCA76D8B1A4F01F747AB24B087B1DBD93F04F444AB646A3DB89C2C
      6A1DC1F5B2A1ACC0EEC7A5034077BC5272EB0606B0A9790C78225E29B55989DD
      F0F702F3E39552B1F9B81CAD9E044FC52BA53AABB1297E1CF813B82A5E2955BB
      1AF80BBB3EAC8E574A652C77F67F05E644ABA4767380DFB0EB475DDD3D68C1ED
      C15B15FB0B7079B46AC2B90297BB555F5EA60EEE1EB402EBB12BF2276076B46A
      C29B8DABC1AA3FEB2970ED7C1AB0718A046B891DC0F9D1AAB17301F02D767DDA
      48BE55B7A0DA814D35263E59643BFBA9E8C2D564D5AF4D44BC7B702EB0D9B098
      CFF8FFCE7E2AACEF1E6CC6CDC6D42CDC7EBB55119F507A673F150D7DF7A013D8
      6A98FC074CBEB39F8A0EDCFD04AB3E6EC5E0EE81F5CEFE5B54B6B6DDE8DA70F7
      14ACFAF91D01EF1E74E1BE23B74AF65D9AF3F2643BF01E767DFD8640DF48BF63
      9864A5173652D306BC815D7FDF0C9164C8175D9E187A150DC7F2D54F06422468
      F19BACE7D0F0276A019E277C9F7F0C915C2F61173B9E099154A29E255C9F4708
      B8577837B52F408E62BBB39F8AE5D4BE767E12B82B74627D54BF00390A3C163A
      A184D572F7E004868BB2BDB84DDC4A121A0696582594B025547EF7E0386E46A6
      6E23FF166C513BFBA9584CFE2FBD4770B389A207B7963DD5B3B1C89DFD54F431
      F567DDC314B0257D0BE557A1EB65673F150B28FF17EE106E168528B50AFD2F70
      6B510925ACD4DD8301EA6045FE3ADCBF730FE05E70B1F08412D68DEBF1006E6F
      42FF9FA188888888888888888888888888888888888888888888888888888888
      88884813F80F8FB7FF0C584F46460000000049454E44AE426082}
    PictureDown.Data = {
      89504E470D0A1A0A0000000D4948445200000080000000800806000000C33E61
      CB000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
      00097048597300000EC300000EC301C76FA8640000001A74455874536F667477
      617265005061696E742E4E45542076332E352E313147F342370000056B494441
      54785EED9C69A8B46318C78F7D8DD7966449241252225B88226B1445512FF181
      50F8E0A3E5934221148A6C590A258A224276918844B264CFBEEFBF7F6FA7A6E9
      3A73669EE7BAE7D9FEBFFAD5DB9C33CF735FFF6BDE993933D7FD2C18638C31C6
      18638C31C618638C31C618638C31C618638C31C618638C31C618638C31C61863
      8C316610EC8E4FE037F802EE85A60CCA56192BEB27710F6C142D488BF96FC41F
      F04034B91C80DFE368D6CABEB1FF70FBA39A3DBAA0457FC483D1E4A02C956994
      B57AA05ECC15FD0F5F6A418BFE8A47A2A98732549651C68BAA17737BD63D087F
      C26821E3FE8EC7A2A986B2538651B6E3AA27EA4D518EC0E51E8DE3FE8527A399
      0D65A6ECA24C9752BD518F8AA0A7A2DF303AF172FE8367A1998E33519945592E
      A77A94FED27B344EFB54B4942AE86C34935146559BBFA87A750CA67038FE8DD1
      89AA78399A98CB30CAAC8AEA59CACBC11B189DA08E57E16A6856A12CAEC428AB
      3ABE89B519FFA027CB1BD10F825519DC80514675FD166B733B4607CFF0365C03
      878A6ABF15A36C32BC0B6BB3025FC4E80419DE8B6BE1D050CDF7609449862FA1
      7A97C266F80A4627CAF04E1CD233816ABD03A32C327C15D5B35436C267303A61
      860FE2DAD87754E303186590A17AA45E1561437C0AA31367F838AE8F7D45B53D
      8651ED19AA37EA5151D6C547305A4086FA9E7B03EC1BAA49731351CD19AA27EA
      CD5CD01B98FB305A4886CF63DA1B9816A05A5453546B86EAC5DCDF48AF897763
      B4A00C5FC64DB1EB6C827A471ED598A17AA05E34C2EA7813460BCB509F646D89
      5D456B570D516D192A7BF5A051F449D6F5182D30C3F7703BEC1ADBA2D61ED594
      A13E3D6CD527A95760B4D00C3FC0EDB12B68ADEF63544B86CABA955C82D18233
      FC1477C1B6B3337E82510D192AE3567301FE8BD1E2EBFA19EE8A6D456BD31AA3
      B5D755995E889DE05C2CF5206874147A025AD3D718ADB9AECAF23CEC142B3173
      9064D4B6ED3DD05A961A91AFAB3254969DE444FC13A3C2EAAA29D843B06926CD
      ECD755D99D849DE678FC03A302EBAA01C8A3B029A699D9AFAA325376BD407385
      BF6054685D3500791CCE9B5966F667555929B35E71284EBBA16456353F7F0ACE
      0B9D6BD699FD69FD1995552FD917BFC3A8F0BACE6BEF81CE51776C7B29958D32
      EA357BE29718055057FDB9740E964233FBA5FEBCFD0A95CD20D80D3FC728880C
      2FC66C74CCE85C197E81BACEC2A0D8093FC228900C2FC52C4A365F19288B41B2
      037E885130195E8D75BE31D37D758CE8D819AA76653068B6C677300A28C3EBB0
      CA8340F7B916A36366A89A55BB812DF0758C82CA509B2F66193B2FBD61E36DDC
      0ACD089A63D73C7B145886F7E33473731AAFD23E85E818191699D9EF0B9A677F
      16A3E0327C0827ED3DD0CFB43F21BA6F86AAADD8CC7E5F686AEF816ED3CFA2FB
      64F834169FD9EF0BEBE1A3180599E1F8DE03FD5BB745BF9BA16A514D6606F47A
      ADD7ED28D00C75C145CDEB979ED97F18D74153018D3CDF8C51B019EADDF85B63
      B7657A0B363EB6DD754A3F084AA935BBF949E843995257D128A1AF7E5288927B
      0FB26CEDCC7E5FD0973C51F06DD0CD9F139A8F2FF5BD7C15B5968BD0CC11CDC9
      B7E141A0359C8FA6014EC7527B0FA651E73E034D839C8AA5063427A9E69F86A6
      059C80A5F61E44EA5C3AA7691125F71E8CAA7314BB24BBA987E6E935571F352E
      431DFB30342D663F2CB1F740C7D4B14D07D81B75A1E4A89155D4B1F641D32134
      67AF79FBA8A1B338C899FDBE5077EFC1C738D899FDBE5075EF81EEB3239A1EB0
      0DBE8B51A323F5BBBA8FE9119AC3D70450D4F0513DB3DF6336C7497B0F5E43FD
      8EE9319ACB7F0EC79BAFDB3646330034A27D0DEA9A7E527B003DB66D8C31C618
      638C31C618638C31C618638C31C618638C31C618638C31C618638C31C618638C
      31C69816B2B0F03FF381FF0CF14A6ED70000000049454E44AE426082}
    Position = 50.000000000000000000
    Text = 'Carga..'
    Visible = False
    Version = '1.0.1.0'
    ArcWidth = 2.000000000000000000
  end
  object gbObra: TGroupBox [8]
    Left = 820
    Top = 3
    Width = 309
    Height = 125
    Caption = 'Obra'
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 11
    Visible = False
    object Label18: TLabel
      Left = 5
      Top = 42
      Width = 31
      Height = 13
      Caption = 'Sector'
    end
    object spNuevoSector: TSpeedButton
      Left = 285
      Top = 54
      Width = 23
      Height = 22
      Action = NuevoSector
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 5
      Top = 79
      Width = 21
      Height = 13
      Caption = 'Tipo'
    end
    object spNuevaObra: TSpeedButton
      Left = 286
      Top = 14
      Width = 23
      Height = 22
      Action = NuevaObra
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbcObraSector: TDBLookupComboBox
      Left = 5
      Top = 55
      Width = 276
      Height = 21
      DataField = 'ID_OBRA_SECTOR'
      DataSource = DSBase
      DropDownAlign = daRight
      DropDownWidth = 300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'ID_SECTOR'
      ListField = 'SECTOR'
      ListSource = DatosPresupuesto.DSObrasSector
      ParentFont = False
      TabOrder = 0
      OnEnter = dbcObraSectorEnter
      OnKeyDown = dbcObraSectorKeyDown
    end
    object dbcTipoObra: TDBLookupComboBox
      Left = 5
      Top = 93
      Width = 276
      Height = 21
      DataField = 'TIPO_OBRA'
      DataSource = DSBase
      DropDownAlign = daRight
      DropDownWidth = 300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'ID'
      ListField = 'DETALLE'
      ListSource = DatosPresupuesto.DSTipoObra
      ParentFont = False
      TabOrder = 1
      OnEnter = dbcObraSectorEnter
      OnKeyDown = dbcObraSectorKeyDown
    end
    object edObra: TJvDBComboEdit
      Left = 5
      Top = 15
      Width = 52
      Height = 21
      Margins.Left = 1
      Margins.Top = 1
      ClickKey = 16397
      DataField = 'ID_OBRA'
      DataSource = DSBase
      Glyph.Data = {
        4E000000424D4E000000000000003E0000002800000009000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FF8000002480000024800000FF800000}
      ButtonWidth = 17
      TabOrder = 2
      OnButtonClick = BuscarObraExecute
    end
    object edMuestraObra: TDBEdit
      Left = 316
      Top = -30
      Width = 221
      Height = 21
      Color = clInfoBk
      DataField = 'MUESTRAOBRA'
      DataSource = DSBase
      Enabled = False
      TabOrder = 3
    end
  end
  object pnPrevSigui: TPanel [9]
    Left = 741
    Top = 15
    Width = 41
    Height = 23
    BevelOuter = bvNone
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 12
    object lbPrev: TLabel
      Left = 8
      Top = 0
      Width = 9
      Height = 20
      Cursor = crHandPoint
      Caption = '<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = lbPrevClick
    end
    object lbSig: TLabel
      Left = 23
      Top = 0
      Width = 9
      Height = 20
      Cursor = crHandPoint
      Caption = '>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = lbSigClick
    end
  end
  object chbImprimeDirecto: TCheckBox [10]
    Left = 523
    Top = 581
    Width = 128
    Height = 18
    Anchors = [akRight, akBottom]
    Caption = 'Imprimir Sin Confirmar'
    TabOrder = 3
  end
  object Panel2: TPanel [11]
    Left = 833
    Top = 134
    Width = 232
    Height = 25
    TabOrder = 4
    DesignSize = (
      232
      25)
    object Label25: TLabel
      Left = 5
      Top = 4
      Width = 92
      Height = 13
      Caption = 'Factura de Anticipo'
    end
    object DBText16: TDBText
      Left = 120
      Top = 4
      Width = 101
      Height = 16
      Cursor = crHandPoint
      Alignment = taCenter
      Anchors = [akBottom]
      DataField = 'MUESTRAFACTURAANTICIPO'
      DataSource = DSBase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = DBText16Click
    end
  end
  object Panel3: TPanel [12]
    Left = 658
    Top = 41
    Width = 91
    Height = 41
    BevelInner = bvLowered
    Caption = 'Panel3'
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 5
    object Label12: TLabel
      Left = 5
      Top = 2
      Width = 65
      Height = 13
      Caption = 'F.de Revision'
      Transparent = True
    end
    object dbeFechaRevision: TJvDBDateEdit
      Left = 4
      Top = 16
      Width = 83
      Height = 21
      Margins.Left = 1
      Margins.Top = 1
      TabStop = False
      DataField = 'FECHA_REVISION'
      DataSource = DSBase
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
      ButtonWidth = 18
      PopupColor = clBtnFace
      ShowNullDate = False
      TabOrder = 0
    end
  end
  inherited ActionList1: TActionList
    Left = 337
    Top = 165
    object Imprimir: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirExecute
    end
    object BuscarArticulo: TAction
      Caption = 'BuscarArticulo'
      OnExecute = BuscarArticuloExecute
    end
    object BuscarTipoCpbte: TAction
      Caption = 'BuscarTipoCpbte'
      OnExecute = BuscarTipoCpbteExecute
    end
    object BuscarCliente: TAction
      Caption = 'BuscarCliente'
      OnExecute = BuscarClienteExecute
    end
    object BuscarLdr: TAction
      Caption = 'BuscarLdr'
      OnExecute = BuscarLdrExecute
    end
    object BuscarSucursal: TAction
      Caption = 'BuscarSucursal'
      OnExecute = BuscarSucursalExecute
    end
    object BuscarDeposito: TAction
      Caption = 'BuscarDeposito'
      OnExecute = BuscarDepositoExecute
    end
    object BuscarCondVenta: TAction
      Caption = 'BuscarCondVenta'
      OnExecute = BuscarCondVentaExecute
    end
    object BuscadorVendedor: TAction
      Caption = 'BuscadorVendedor'
      OnExecute = BuscadorVendedorExecute
    end
    object Exportar: TAction
      Caption = 'Exportar detalle a Excel'
      OnExecute = ExportarExecute
    end
    object DatosCliente: TAction
      Caption = 'DatosCliente'
      OnExecute = DatosClienteExecute
    end
    object Recalcular: TAction
      Caption = 'Recalcular'
      ShortCut = 16496
      OnExecute = RecalcularExecute
    end
    object EnviarCorreo: TAction
      Hint = 'Enviar por Correo'
      OnExecute = EnviarCorreoExecute
    end
    object GenerarNotaPedido: TAction
      Caption = 'NP'
      Hint = 'Genera Nota de Pedido'
      OnExecute = GenerarNotaPedidoExecute
    end
    object SelectAll: TAction
      OnExecute = SelectAllExecute
    end
    object UnselectAll: TAction
      OnExecute = UnselectAllExecute
    end
    object GenerarFacturaCC: TAction
      Caption = 'Generar Factura de CC'
      OnExecute = GenerarFacturaCCExecute
    end
    object GenerarNdeVta: TAction
      Caption = 'Generar Nota de Vta.'
      OnExecute = GenerarNdeVtaExecute
    end
    object ReHabilitar: TAction
      Caption = 'ReHabilitar Como Nuevo'
      ShortCut = 16466
      OnExecute = ReHabilitarExecute
    end
    object GenerarRto: TAction
      Caption = 'Generar Rto'
      OnExecute = GenerarRtoExecute
    end
    object ActualizaMonedas: TAction
      Caption = 'Actualizar Cotizaciones de los Articulos con Otras Monedas'
      OnExecute = ActualizaMonedasExecute
    end
    object CopiarDetalle: TAction
      Caption = 'Copiar Detalle'
      OnExecute = CopiarDetalleExecute
    end
    object PegarDetalle: TAction
      Caption = 'Pegar Detalle'
      OnExecute = PegarDetalleExecute
    end
    object CopiarPortaPapeles: TAction
      Caption = 'Copia Porta Papeles de Windows'
      OnExecute = CopiarPortaPapelesExecute
    end
    object PrintProforma: TAction
      Caption = 'Imprir Formato Proforma (FacturaProforma)'
      OnExecute = PrintProformaExecute
    end
    object CambiarFecha: TAction
      Caption = 'Cambiar Fecha'
      ShortCut = 16454
      OnExecute = CambiarFechaExecute
    end
    object GenerarFcCtdo: TAction
      Caption = 'Generar Fc. de Ctdo.'
      OnExecute = GenerarFcCtdoExecute
    end
    object BuscarPorObs: TAction
      Caption = 'BuscarPorObs'
      ShortCut = 8205
      OnExecute = BuscarPorObsExecute
    end
    object CambiarCliente: TAction
      Caption = 'Cambiar Cliente'
      OnExecute = CambiarClienteExecute
    end
    object CopiarPresupuesto: TAction
      Caption = 'Duplicar Presupuesto Sin Revision'
      OnExecute = CopiarPresupuestoExecute
    end
    object BuscarPorReferencia: TAction
      Caption = 'BuscarPorReferencia'
      ShortCut = 32781
      OnExecute = BuscarPorReferenciaExecute
    end
    object ClonarPresupuesto: TAction
      Caption = 'Clonar Presupuesto a XML'
      OnExecute = ClonarPresupuestoExecute
    end
    object DuplicarPresupuesto: TAction
      Caption = 'DuplicarPresupuesto'
      ShortCut = 16452
      OnExecute = DuplicarPresupuestoExecute
    end
    object GenerarOProduccion: TAction
      Hint = 'Generar orden de Produccion (PI)'
      OnExecute = GenerarOProduccionExecute
    end
    object AplicarDsctoTodo: TAction
      Caption = 'Aplicar Dscto a Todo'
      OnExecute = AplicarDsctoTodoExecute
    end
    object Incidencias: TAction
      Hint = 'Incidencias Presupuesto'
      OnExecute = IncidenciasExecute
    end
    object AgendarTarea: TAction
      ImageIndex = 10
      OnExecute = AgendarTareaExecute
    end
    object NuevoSector: TAction
      Caption = '+'
      OnExecute = NuevoSectorExecute
    end
    object MarcarAceptado: TAction
      Caption = 'Marcar Como Acpetado'
      OnExecute = MarcarAceptadoExecute
    end
    object MarcarRevision: TAction
      Caption = 'Marcar Como Revision'
      OnExecute = MarcarRevisionExecute
    end
    object GenerarTk: TAction
      Caption = 'GenerarTk'
      ShortCut = 16468
      OnExecute = GenerarTkExecute
    end
    object BuscarPresupuesto: TAction
      Caption = 'BuscarPresupuesto'
      ShortCut = 49165
      OnExecute = BuscarPresupuestoExecute
    end
    object GenerarFcAnticipo: TAction
      Caption = 'Generar Factura Anticipo'
      OnExecute = GenerarFcAnticipoExecute
    end
    object BuscarObra: TAction
      Caption = 'BuscarObra'
      OnExecute = BuscarObraExecute
    end
    object NuevaObra: TAction
      Caption = '+'
      OnExecute = NuevaObraExecute
    end
    object AgregarCliente: TAction
      Caption = 'AgregarCliente'
      OnExecute = AgregarClienteExecute
    end
    object ResetColumnas: TAction
      Caption = 'Reset Columnas'
      Visible = False
      OnExecute = ResetColumnasExecute
    end
    object Acopiar: TAction
      OnExecute = AcopiarExecute
    end
    object RecalcularMargen: TAction
      Caption = 'Recalcular Margen'
      OnExecute = RecalcularMargenExecute
    end
    object CambiarFechaVto: TAction
      Caption = 'Cambiar Fecha Vencimiento'
      OnExecute = CambiarFechaVtoExecute
    end
    object CambiarNroCpbte: TAction
      Caption = 'Cambiar Nro.Cpbte'
      ShortCut = 16462
      OnExecute = CambiarNroCpbteExecute
    end
    object ModificarDatosCabecera: TAction
      Caption = 'Modificar Datos de Cabecera'
      ShortCut = 24643
      OnExecute = ModificarDatosCabeceraExecute
    end
    object EnviarAlCobro: TAction
      Hint = 'Envio de Presupuesto a Cobrar x Caja'
      ImageIndex = 11
      OnExecute = EnviarAlCobroExecute
    end
    object MarcarAnulado: TAction
      Hint = 'Marcar Anulacion de Presupuesto'
      ImageIndex = 1
      OnExecute = MarcarAnuladoExecute
    end
    object ImportarXML: TAction
      Caption = 'Importar XML'
      ShortCut = 8237
      OnExecute = ImportarXMLExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = DatosPresupuesto.CDSPresuDet
    Left = 216
    Top = 8
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C01010C00B009040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000560
      0900056009000891130009B0180009B31A0009B3190009B11900079614000568
      0C0005680C000000000000000000000000000000000000000000000000006C6A
      6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3E3006C6A6A006C6A
      6A006C6A6A000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000004040400040404000404
      04000404040004040400FFFFFF00FFFFFF00FFFFFF00FFFFFF00040404000404
      04000404040004040400000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D0600000000000000000000000000000000006C6A6A00DAD9
      D900A19F9F00A19F9F00A19F9F0037363600353535006C6D6D00BFBFBF00E1E2
      E200B7B6B6006C6A6A006C6A6A006C6A6A000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000086868600FFFFFF00FFFF
      FF00FFFFFF0004040400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00040404000000000000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C0000000000000000006C6A6A00D4D3D300CACA
      CA008E8C8C008E8C8C008E8C8C003C3B3B000A090A00070707000B0B0B000707
      07007A7A7A00BBBBBB006C6A6A00000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000086868600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00040404000000000000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE6D0009B2190009B2
      190009B3190009BA1A0006670C00000000006C6A6A00CACACA00CACACA008E8C
      8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A000888686005E5B5C000707
      070009090900080808006C6A6A007673730000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000086868600FFFFFF00FFFF
      FF0004040400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000404
      0400FFFFFF00040404000000000000000000087210001B9A3A002AC65B001DBB
      45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FDF8005ACB650009B2
      190009B2190009B81A0008941300045D09006C6A6A00CACACA008E8C8C00EFEE
      EE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCECE00BDBCBC00ADAB
      AB008B898900585656007A7878007573730000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000086868600FFFFFF00FFFF
      FF00FFFFFF0004040400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000404
      0400FFFFFF00040404000000000000000000087210002AB65B002CC5650022BD
      4D000FB422000AB21A000CB31C000AB219008DDB9500FDFEFD00F6FCF70058CB
      630009B2190009B51A0008AB1700045D09006C6A6A008E8C8C00FFFFFF00FEFC
      FC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0C100D7D7D700D8D8
      D800C7C6C600B7B6B600918F8F006C69690000000000FFFFFF00000000000000
      0000FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000086868600FFFFFF000404
      0400FFFFFF0004040400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000404
      0400FFFFFF000404040000000000000000000F821C0037C26C0033C76C00CDF1
      DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FDF900FFFFFF00F2FB
      F3006FD2790008B4190009B3190005650B00000000006C6A6A006C6A6A00EDEB
      EB00B1A6A7007A6F72008A83880096929500969091009D9798009A9395009E98
      9900BBBABA00D1D1D100C2C2C2006C6A6A0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000086868600FFFFFF00FFFF
      FF00FFFFFF0004040400FFFFFF00FFFFFF0004040400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00040404000000000000000000138D230058CC830042C97700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
      FF00BCEAC1000AB41A0009B31900066D0D000000000000000000000000006C6A
      6A00BB897F00A7876D008B6F64007D6760006F626500797379008F8B8E00A9A3
      A400CBCACA00C1C1C1006C6A6A000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      FF00000000000000000000000000000000000000000086868600FFFFFF00FFFF
      FF00FFFFFF0004040400FFFFFF00FFFFFF000404040004040400FFFFFF00FFFF
      FF00FFFFFF000404040000000000000000000F911D006FD293005FD38D006DD4
      950072D6990071D6980072D6990064D28C0092DFA800FBFEFB00FFFFFF00ACE5
      B8002EBF4C0011B82B0008B1190005610A000000000000000000000000000000
      0000BD828100FFE3B400FFD39F00E9B28100C9997300BA916C00BD828100807D
      7E006C6A6A006C6A6A00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      0000000000000000000000000000000000000000000086868600FFFFFF00FFFF
      FF00FFFFFF0004040400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000404040000000000000000000F911D0067CC83009BE5BA0038C6
      700030C3690038C56F0038C56F0070D69700E8F8EE00FFFFFF009FE2B10020BD
      48001AB93E0010BA290008A3170005610A000000000000000000000000000000
      0000BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC68800BD8281000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086868600FFFFFF00FFFF
      FF00FFFFFF0004040400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000404040000000000000000000000000025AE3900BCEDD20082DB
      A40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2B20022BC4B001DBA
      410018B7360014C030000A85170000000000000000000000000000000000C086
      8300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD828100000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000086868600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0004040400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000404040000000000000000000000000025AE390071D28C00D2F4
      E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2630024BE560023BC
      4D001FC1460016AE34000A85170000000000000000000000000000000000BD82
      8100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD828100000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000C0C0
      C000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086868600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCC
      CC00CCCCCC00040404000000000000000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000BD828100FFFF
      F200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD828100000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086868600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF0086868600FFFF
      FF008686860000000000000000000000000000000000000000000000000025AE
      390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB157000000000000000000000000000000000000000000BD828100BD82
      8100BD828100FBEFE200FBE3CF00FBDDC200BD82810000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086868600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF00868686008686
      8600000000000000000000000000000000000000000000000000000000000000
      00000000000032B74E0025AE390025AE390025AE390025AE390024A342000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD828100BD828100BD8281000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086868600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00868686000000
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
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F81FF33FFFDFFFFFE007E007FFCF8003
      C003C000FFC78003800180010003800380010000000180030000000000008003
      000000000001800300008000000380030000E001000780030000F003000F8003
      0000F01F001F80038001E03F007F80038001E03F00FF8003C003C03F01FF8007
      E007C07F03FF800FF81FF8FFFFFF801FFFFFF81FF81FF81FC007E007E007E007
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
    Left = 432
    Top = 184
  end
  inherited QUltimoCodigo: TSQLQuery
    Top = 384
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    FileName = 'GrillaPresupuesto.ini'
    Left = 440
    Top = 248
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 560
    Top = 288
  end
  inherited QBrowse2: TFDQuery
    Left = 56
    Top = 400
    ParamData = <
      item
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TABLA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 72
    Top = 384
  end
  inherited ImageListDos: TImageList
    Bitmap = {
      494C01010C001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      000000000000000000000000000000000000000000000000000000000000FDFD
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000658550DB759A
      5DFD648550DA0000000000000000000000000000000000000000000000000000
      00000000000054473C948D7865FB54483C910000000000000000000000000000
      000054473C948D7865FB54483C91000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D3B09500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000B8805400FFFEFE0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FF9C8B
      78FF9C8B78FF9C8B78FFA59482FFD7CFBDFF8CA874FF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF5D7A49C8000000000000000000000000000000000000
      0000000000008D7665F8BEAA99FF8D7665F80000000000000000000000000000
      00008D7665F8BEAA99FF8D7665F8000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0A78800F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00D29C7200FEFDFD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF769C5EFF769C5EFFA0BB90FF82A5
      6DFF769C5EFF769C5EFF769C5EFF000000000000000000000000000000000000
      0000000000006C5B4EBE907A67FE927C68FF8F7966FF8F7966FF8F7966FF8F79
      66FF917B69FF8D7966FB54483C91000000000000000000000000000000000000
      000000000000000000000000000000000000C99B7800F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00DAA27700FCFAF8000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF88A973FF769C5EFFA7BF97FFF7FAF6FFE7EE
      E3FF81A46BFF769C5EFF769C5EFF658550DB0000000000000000000000000000
      00000E0C091A826E5DE916121027000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6947100F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00DDA47700FAF6F30000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF799E62FF769C5EFFBACDAEFF8EAD7AFFBBCE
      AFFFE6EDE1FF80A36AFF769C5EFF72975BF80000000000000000000000000000
      00002E272053625346AE00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C3906800F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00E3AA7F00F6EFEA00000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF88A973FF769C5EFF769C5EFF769C5EFF769C
      5EFFBBCEAFFFE4ECDFFF7EA267FF658550DB0000000000000000000000000000
      000065644BC0828A62FF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C
      5EFF769C5EFF759A5CFB3E513284000000000000000000000000000000000000
      000000000000C28D6500F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00E6AC8000F3E9E0000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF769C5EFF769C5EFF769C5EFF769C
      5EFF769C5EFFA2BB91FF789D60FF000000000000000000000000000000000000
      00007C785CE89EAE89FFBDE0BAFFBDE0BAFFBDE0BAFF99BE8CFFBDE0BAFFBDE0
      BAFFBDE0BAFFB6DAB1FF759A60F512180F280000000000000000000000000000
      0000C28B6400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00EAB08500ECDE
      D2000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBF8FF93B180FF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF5D7A49C8000000000000000000000000000000000000
      0000897C64FBABC59FFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFF83A772F127342057000000000000000000000000E7D1
      C300ECB38700F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C48E
      65000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBF9FFBBCEAFFF89AA75FF7FA3
      69FF8AAA75FFAAB892FF00000000000000000000000000000000000000000808
      06108E7A66FFBBDDB7FFBDE0BAFF99BE8CFF99BE8CFF769C5EFF99BE8CFF99BE
      8CFFBDE0BAFFBDE0BAFF93B885FB384C2D7B0000000000000000000000000000
      0000EEDED400E9AF8400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C28C63000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC1B5A3FF00000000000000000000000000000000000000002E2F
      22598B7F65FCBDE0BAFFBDE0BAFF99BE8CFF99BE8CFF769C5EFF99BE8CFF99BE
      8CFFBDE0BAFFBDE0BAFFA0C496FF4F6842A70000000000000000000000000000
      000000000000F1E8DF00E6AE8200F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00C28C6500000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B78FF00000000000000000000000000000000000000004F52
      3C998B8A6AFABDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFAACEA2FF638251CF0000000000000000000000000000
      00000000000000000000F7EFEA00E4AA7D00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00C4906B0000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF00000000000000000000000000000000000000006D6A
      51CD969E7BFEBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF99BE8CFFBCDFB9FFB4D8
      AEFFABCFA3FFA1C697FF90B480FB6F935AEC0000000000000000000000000000
      0000000000000000000000000000F9F5F100E0A67C00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00C4936E000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFFFFFFFFFF9F8
      F7FFAB9D8DFE7C7162C700000000000000000000000000000000000000008279
      5EEF98AC83FFA5C99BFF9DC08FFF90B481FC82A570F6799C63F5769A5FFB7294
      5CED658453D0526B44AC3C4E30802A37215C0000000000000000000000000000
      000000000000000000000000000000000000FCF9F900DAA37900F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00C99B7800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFF9F8F7FFAD9E
      8FFF837668D10000000000000000000000000000000000000000000000008A79
      64FA6E8758DD587249B5415535892D3D24641F28184310150D22020302050000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC00D7A07500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00CEA3840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFAC9D8EFF7F73
      65C80000000000000000000000000000000061814FCE627F50CD2A251F4D7B68
      58DD000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFEFE00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000D6B69C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF7E7263CA0000
      000000000000000000000000000000000000617F4ECB7D9863FE7B6958DE231C
      193E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000766A5DC0918171EB000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005D794CC071955CF0769C5EFF71955CF05D794CC0000000000000
      0000000000000000000000000000000000000000000000000000000000009C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF00000000000000000000000000000000A1758BFFA1758BFFA175
      8BFFA1758BFFA1758BFFA1758BFFA1758BFFA1758BFFA1758BFFA1758BFFA175
      8BFFA1758BFFA1758BFFA1758BFF00000000918171EBAD9D8AFD948573EF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006686
      54D77EA26BF3A4C899FFB4D8AEFFBDDFBAFFB4D8AEFFA4C89AFF7DA26AF36585
      52D5000000000000000000000000000000000000000000000000000000009C8B
      78FFFFFFFFFF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FFFFFF
      FFFF9C8B78FF00000000000000000000000000000000A1758BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2D5DCFFF2D5DCFFA1758BFF0000000000000000958573F2A79884FD907F
      6DE7000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000070945CF09EC1
      93FCBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF9EC0
      91FB70945BF00000000000000000000000007C6A59DA8C7767F28C7866F19C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF8C7866F18C7767F27D6A59D900000000A1758BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFFF
      FFFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000958473EFA292
      7FFD8D7D6BE10000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000678955DB9CC190FDBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF99BE8CFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFF9BBF90FC678754D900000000000000008F7966FFD4C1B0FFD4C1B0FF9C8B
      78FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3
      D6FF9C8B78FFD4C1B0FFD4C1B0FF8F7966FF00000000A1758BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000009082
      6FEA9F8F7DFD877768D90000000000000000897A69D89A8977FB9A8977FB887A
      69D700000000000000000000000000000000000000007DA16AF3BDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBCE0B9FF7DA169F300000000000000008F7966FFD4C1B0FFBBA795FF8F79
      66FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF8F79
      66FF8F7A66FFBBA896FFD4C1B0FF8F7966FF00000000A1758BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFFF
      FFFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000000000
      00008C7D6BE19C8B78FF9E8C7AF9B09F8AF3E7D5BCFFFCEACEFFFCEACEFFE7D5
      BBFFAD9D89F2897B6AD900000000000000005C794AC1A5C99BFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFA4C89AFF5A774BBE000000008F7966FFD4C1B0FFD4C1B0FFD4C1
      B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1
      B0FFD4C1B0FFD4C1B0FFD4C1B0FF8F7966FF00000000A1758BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000000000
      0000000000009E8D7AFBCDBAA4FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFC9B7A2FC897B6ADA0000000072955BF1B6D9B1FFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFB5D9B0FF72955AEF000000008F7966FFD4C1B0FFD4C1B0FFCBAB
      93FFBA8157FFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFBA81
      57FFCBAC94FFD4C1B0FFD4C1B0FF8F7966FF00000000A1758BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000000000
      000000000000AF9F89F6FFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFAE9D88F400000000749B5DFCBCDFB8FFBDE0BAFF99BE
      8CFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF99BE
      8CFFBDE0BAFFBBDEB8FF759A5CFB000000008F7966FFD4C1B0FFD4C1B0FFBA81
      57FFE3A97CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFE2A9
      7CFFB98258FFD4C1B0FFD4C1B0FF8F7966FF00000000A1758BFFF2D5DCFFF2D5
      DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5
      DCFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000000000
      00008A7C6BD9E7D5BBFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFE6D5BBFF887969D672955BF1B6D9B1FFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFB5D9B0FF72955AEF000000008F7966FFD4C1B0FFD4C1B0FFB57A
      4EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
      8BFFB57A4EFFB3E0E6FFD4C1B0FF8F7966FF00000000A1758BFFF2D5DCFFF2D5
      DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5
      DCFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000000000
      00009A8977F9FBE9CDFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFFAE8CCFF998976F85E794CC2A5C99BFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFA4C89AFF5B794CC0000000008E7865FED3C0AFFFD4C1B0FFB57A
      4EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
      8BFFB57A4EFFD4C1B0FFD3C0AFFF8E7865FE00000000A1758BFFF2D5DCFFF2D5
      DCFFE9C0CBFFA48B7EFF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FFA791
      83FFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000000000
      00009A8977F9FBE9CDFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFFAE8CCFF998976F8000000007EA16BF3BDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF7CA16AF300000000000000006C5D4EBE8F7865FE8F7966FFB57A
      4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A
      4EFFB57A4EFF8F7966FF8F7865FE6B5C4EBC00000000A1758BFFF2D5DCFFF2D5
      DCFFE6BAC6FF8F7966FFF2EBE1FFF2EBE1FFF2EBE1FF9C8B78FFF2EBE1FF8F79
      66FFF2D5DCFFEACCD4FFA1758BFF000000000000000000000000000000000000
      0000897C6CD9E7D5BBFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFE6D5BBFF877969D600000000678955DB9EC393FDBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF99BE8CFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFF9EC192FC678754D900000000000000000000000000000000000000009C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF00000000000000000000000000000000A1758BFFF2D5DCFFF2D5
      DCFFE6BAC6FF8F7966FFF2EBE1FFF2EBE1FFF2EBE1FF9C8B78FFF2EBE1FF8F79
      66FFEBCDD5FFA57E8FF457404B86000000000000000000000000000000000000
      000000000000AF9E8AF5FFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFAE9D88F400000000000000000000000070945CF09EC1
      93FCBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF9EC0
      91FB70945BF00000000000000000000000000000000000000000000000009C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF00000000000000000000000000000000A1758BFFF2D5DCFFF2D5
      DCFFE6BAC6FF8F7966FFF2EBE1FFF2EBE1FFF2EBE1FFF2EBE1FFF2EBE1FF8F79
      66FFA47C8FF60000000000000000000000000000000000000000000000000000
      0000000000008C7C6ADDCEBCA6FCFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFCDBBA6FC897B6ADA000000000000000000000000000000006686
      54D77EA26BF3A5CA9CFFB7DAB2FFB8DBB4FFB7DAB2FFA6C99CFF7DA26AF36585
      52D5000000000000000000000000000000000000000000000000000000009C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF00000000000000000000000000000000A1758BFFA1758BFFA175
      8BFFA1758BFF977E73FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF987D
      74FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000897B6ADAB1A08BF4E7D5BCFFF8E6CBFFF8E6CBFFE7D5
      BBFFB19F8AF4897B6AD900000000000000000000000000000000000000000000
      0000000000005D794CC071945CED73995DF671945CED5D794CC0000000000000
      0000000000000000000000000000000000000000000000000000000000009C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000897C6BD9988976F5988976F58A7A
      69D8000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFC496
      74FFC49674FFC49674FFC49674FFC49674FFC49674FFC49674FFC49674FFC496
      74FFC49674FFC49674FF00000000000000000000000000000000000000000000
      000000000000363698C04141BDF04343C7FF4141BDF0363698C0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000464B4BED414D4FD40000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFC49674FF00000000000000000000000000000000000000003B3B
      AAD74F4FC7F37575E6FF8686F1FF8F8FF7FF8686F1FF7474E6FF4F4FC7F33C3C
      A8D5000000000000000000000000000000000000000000000000000000002A2A
      6F89333382A10000000000000000000000000000000000000000000000003232
      84A22A2A6F8900000000000000000000000000000000414A4ED2555553FF66A0
      BDF74B8AA6E60000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFE3C29DFF000000000000000000000000000000004141BDF06E6E
      E1FC8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF6E6E
      E0FB4141BCF00000000000000000000000000000000000000000292967806C6C
      D5ED7575DEF12E2E7895000000000000000000000000000000002E2E78957474
      DFF26D6DD5EC292967800000000000000000000000000000000068A2C3F46EBC
      DFFF7CCAE2FF63AFC8FA00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFFFE8C2FF0000000000000000000000003C3CACDB6D6DE0FD8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF6B6BE0FC3C3CABD90000000000000000000000000000000030307E9A7979
      E1F58F8FF7FF7A7AE2F532327F9C00000000000000003333809D7A7AE2F58F8F
      F7FF7676E0F430307B98000000000000000000000000000000004E8BA7E580CD
      E5FFA3EEFFFFA1ECFEFF569BB1D9000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFDAB188FFFFE8C2FF0000000000000000000000004E4EC7F38F8FF7FF8F8F
      F7FFA8A8F9FFACACF9FF8F8FF7FF8F8FF7FF8F8FF7FFACACF9FFA8A8F9FF8F8F
      F7FF8E8EF7FF4D4DC7F300000000000000000000000000000000000000003232
      7F9C7979E3F78F8FF7FF7676DFF22E2E78952E2E78957676DFF28F8FF7FF7979
      E3F732327F9C00000000000000000000000000000000000000000000000066B1
      CCF9A2EEFFFFA3EEFFFFA1EBFDFF5598AFD70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFB57A4EFFDAB188FF0000000000000000353598C17676E7FF8F8FF7FF8F8F
      F7FFACACF9FFF6F6FEFFACACF9FF8F8FF7FFACACF9FFF6F6FEFFACACF9FF8F8F
      F7FF8F8FF7FF7474E6FF353597BE000000000000000000000000000000000000
      000031317B977777E1F48F8FF7FF7878E2F67B7BE3F68F8FF7FF7777E0F43030
      7A96000000000000000000000000000000000000000000000000000000000000
      00005CA2B7DBA2EEFFFFA3EEFFFFA1EBFDFF5598AFD700000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFB57A4EFFB57A4EFF61412A88000000004242BDF18888F3FF8F8FF7FF8F8F
      F7FF8F8FF7FFB1B1F9FFF6F6FEFFBCBCFAFFF7F7FEFFB1B1F9FF8F8FF7FF8F8F
      F7FF8F8FF7FF8787F2FF4141BDEF000000000000000000000000000000000000
      00000000000031317B977777E0F48F8FF7FF8F8FF7FF7777E0F430307A960000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005EA3B8DCA2EEFFFFA3EEFFFFA1EBFDFF5598AFD7000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A
      4EFFB57A4EFFB57A4EFFB57A4EFF61412A884343C4FC8E8EF6FF8F8FF7FF8F8F
      F7FF8F8FF7FF8F8FF7FFC3C3FAFFFEFEFFFFC2C2FBFF8F8FF7FF8F8FF7FF8F8F
      F7FF8F8FF7FF8D8DF5FF4242C4FB000000000000000000000000000000000000
      000000000000323284A27979E1F58F8FF7FF8F8FF7FF7979E1F5333382A10000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005EA3B8DCA2EEFFFFA3EEFFFFA1EBFDFF5598AFD70000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A
      4EFFB57A4EFFB57A4EFFB57A4EFF000000004242BDF18888F3FF8F8FF7FF8F8F
      F7FF8F8FF7FFA8A8F9FFF6F6FEFFC9C9FBFFF6F6FEFFA8A8F9FF8F8FF7FF8F8F
      F7FF8F8FF7FF8787F2FF4141BDEF000000000000000000000000000000000000
      0000333384A37A7AE4F78F8FF7FF7878E2F67B7BE3F68F8FF7FF7979E3F73333
      82A1000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005EA3B8DCA2EEFFFFA3EEFFFFA1EBFDFF839A
      9AED000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFB57A4EFFB57A4EFF5A3D278000000000363699C27676E7FF8F8FF7FF8F8F
      F7FFACACF9FFF6F6FEFFACACF9FF8F8FF7FFACACF9FFF6F6FEFFACACF9FF8F8F
      F7FF8F8FF7FF7474E6FF363698C0000000000000000000000000000000003030
      7F9C7777E0F48F8FF7FF7A7AE5F83434819C353583A07C7CE7F98F8FF7FF7777
      E0F431317D9B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005DA3BADDA2EEFFFFA9C2C1FFD2C8
      BAFFA9A69BF90000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFB57A4EFFDAB188FF0000000000000000000000004E4EC7F38F8FF7FF8F8F
      F7FFA8A8F9FFACACF9FF8F8FF7FF8F8FF7FF8F8FF7FFACACF9FFA8A8F9FF8F8F
      F7FF8F8FF7FF4E4EC6F30000000000000000000000000000000032327F9C7878
      E1F68F8FF7FF7A7AE2F530307B98000000000000000033337E997A7AE2F58F8F
      F7FF7777E2F632327E9A00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000869B9EEFDACEC1FFF5E7
      D9FFF4E6D7FFA69D97FD00000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFDCB58BFFFFE8C2FF0000000000000000000000003C3CACDB7070E2FD8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF6D6DE0FC3C3CABD9000000000000000000000000000000002F2F76917676
      DFF37D7DE7F83434829E000000000000000000000000000000003535829F7D7D
      E7F87676DFF32F2F769100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B3AFA4FBF5E7
      D8FFDACEC2FFA097BAFF4545A7CA000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFFFE8C2FF000000000000000000000000000000004141BDF06E6E
      E1FC8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF6E6E
      E0FB4141BCF00000000000000000000000000000000000000000000000000000
      000030307A960000000000000000000000000000000000000000000000003030
      7A96000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A69F
      9AFC9F96BFFF8F8FF7FF4F4FB6D6000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFE2BF9BFF00000000000000000000000000000000000000003B3B
      AAD74F4FC7F37676E8FF8989F4FF8989F4FF8989F4FF7676E8FF4F4FC7F33C3C
      A8D5000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004646AACB5252B7D600000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFC49674FF00000000000000000000000000000000000000000000
      000000000000363698C04141BBED4242C1F64141BBED363698C0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFC496
      74FFC49674FFC49674FFC49674FFC49674FFC49674FFC49674FFC49674FFC496
      74FFC49674FFC49674FF0000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFEFFFFFFFC7F8F1FFCFF3FFC001F8F1
      FF8FF1FFC001F801FF0FF0FFC000FBFFFE0FF07FC000FBFFFC0FF03FC000F001
      F80FF01FC001F001F00FF00FC001F001E00FF00FC003F001F00FF01FC003F000
      F80FF03FC003E000FC0FF07FC003E000FE0FF0FFC003E001FF0FF1FFC007E1FF
      FF8FF3FFC00F2FFFFFCFF7FFC01F1FFFFFFFE007FFFF3FFFF83FE00780011FFF
      E00FE00780018FFFC00700008001C7FF800300008001E30F800300008001F003
      000100008001F801000100008001F801000100008001F000000100008001F000
      000100008001F000800300008001F0008003E0078001F801C007E0078007F801
      E00FE007800FFC03F83FE007FFFFFF0FFFFFFFFFFFFFC003F83FFFFF9FFFC003
      E00FE7E787FFC003C007C3C3C3FFC0038003C183C1FFC0038003E007E0FFC003
      0001F00FF07FC0010001F81FF83FC0000001F81FFC1FC0010001F00FFE0FC001
      0001E007FF07C0038003C183FF83C0038003C3C3FFC1C003C007F7EFFFE1C003
      E00FFFFFFFF3C003F83FFFFFFFFFC00300000000000000000000000000000000
      000000000000}
  end
  object frPresupuesto: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.121872164400000000
    ReportOptions.LastChange = 40216.653089363400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'var Unitario,Total:Real;                                        ' +
        '         '
      ''
      ''
      'procedure DetalleOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ' '
      'end;'
      ''
      'procedure OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <frDBCabecera."DESGLOZAIVA">='#39'N'#39' Then'
      '    begin'
      '      DetalleIva.visible   :=False;'
      
        '      Memo21.Visible:=False;                                    ' +
        '    '
      
        '      Memo27.Visible:=False;                                    ' +
        '    '
      '      Memo29.Visible:=False;'
      '      Memo25.Visible:=False;'
      '      Memo30.Visible:=False;'
      '      '
      '      Memo26.Visible:=False;'
      '      Memo24.Visible:=False;'
      '      Memo16.Visible:=False;'
      '                    '
      '    end'
      '  else'
      '    begin'
      '      DetalleIva.visible:=True;'
      
        '      Memo21.Visible:=True;                                     ' +
        '   '
      
        '      Memo27.Visible:=True;                                     ' +
        '   '
      '  '
      '      Memo29.Visible:=True;'
      '      Memo25.Visible:=True;'
      '      Memo30.Visible:=True;'
      '      '
      '      Memo26.Visible:=True;'
      '      Memo24.Visible:=True;'
      '      Memo16.Visible:=True;'
      '  '
      '    end;  '
      'end;'
      ''
      'procedure MasterData4OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ' if <frDBDetalle."ACEPTADO">='#39'S'#39' Then'
      '   MasterData4.Visible:=True'
      ' else'
      '   MasterData4.Visible:=False;  '
      '     '
      ' if <frDBCabecera."DESGLOZAIVA">='#39'N'#39' Then'
      '    begin'
      
        '      Unitario:=<frDBDetalle."UNITARIO_GRAVADO">*(1+<frDBDetalle' +
        '."IVA_TASA">*0.01)+<frDBDetalle."UNITARIO_EXENTO">;'
      
        '      Total   :=Unitario*<frDBDetalle."CANTIDAD">;              ' +
        '                              '
      '    end'
      '  else'
      '    begin'
      '      Unitario:=<frDBDetalle."UNITARIO_Total">;'
      
        '      Total   :=<frDBDetalle."Total">;                          ' +
        '                  '
      '    end;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 396
    Top = 349
    Datasets = <
      item
        DataSet = frDBCabecera
        DataSetName = 'frDBCabecera'
      end
      item
        DataSet = frDBDetalle
        DataSetName = 'frDBDetalle'
      end
      item
        DataSet = frDBDImpuestos
        DataSetName = 'frDBDImpuestos'
      end
      item
        DataSet = frxDBEmpresa
        DataSetName = 'frxDBEmpresa'
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
      BottomMargin = 25.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 35.559060000000000000
        Top = 298.582870000000000000
        Width = 755.906000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frDBCabecera
        DataSetName = 'frDBCabecera'
        RowCount = 0
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 6.000000000000000000
          Top = 29.196660000000000000
          Width = 734.897650000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 18.220470000000000000
          Top = 9.196660000000000000
          Width = 64.000000000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'Codigo')
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 122.000000000000000000
          Top = 9.196660000000000000
          Width = 92.000000000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'Descripci'#243'n')
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 570.000000000000000000
          Top = 9.196660000000000000
          Width = 64.000000000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '$ Unitario')
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 675.677180000000000000
          Top = 9.196660000000000000
          Width = 64.000000000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '$ Total')
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 518.000000000000000000
          Top = 9.196660000000000000
          Width = 36.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'Cant.')
        end
      end
      object DetalleIva: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Top = 487.559370000000000000
        Width = 755.906000000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frDBDImpuestos
        DataSetName = 'frDBDImpuestos'
        RowCount = 0
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 462.000000000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DataField = 'DETALLE'
          DataSet = frDBDImpuestos
          DataSetName = 'frDBDImpuestos'
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBDImpuestos."DETALLE"]')
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 566.000000000000000000
          Width = 52.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DataField = 'TASA'
          DataSet = frDBDImpuestos
          DataSetName = 'frDBDImpuestos'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frDBDImpuestos."TASA"]')
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 644.677180000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DataField = 'IMPORTE'
          DataSet = frDBDImpuestos
          DataSetName = 'frDBDImpuestos'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBDImpuestos."IMPORTE"]')
        end
      end
      object TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 217.204700000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'OnBeforePrint'
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Top = 2.102350000000000000
          Width = 753.795300000000000000
          Height = 215.102350000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 70.000000000000000000
          Top = 114.984230000000000000
          Width = 56.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBCabecera."CODIGO"]')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 73.559060000000000000
          Top = 152.984230000000000000
          Width = 212.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBCabecera."CPOSTAL"]-[frDBCabecera."LOCALIDAD"]')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 626.015770000000000000
          Top = 54.102350000000000000
          Width = 116.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frDBCabecera."NROCPBTE"]')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = 187.204700000000000000
          Width = 404.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'Condici'#243'n de Vta:[frDBCabecera."MUESTRACONDVENTA"]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 552.000000000000000000
          Top = 114.984230000000000000
          Width = 156.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'CUIT:[frDBCabecera."CUIT"]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 73.559060000000000000
          Top = 170.984230000000000000
          Width = 300.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'Iva:[frDBCabecera."MUESTRAIVA"]')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 73.559060000000000000
          Top = 133.984230000000000000
          Width = 300.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBCabecera."DIRECCION"]')
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 126.000000000000000000
          Top = 114.984230000000000000
          Width = 288.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBCabecera."RAZONSOCIAL"]')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 646.015770000000000000
          Top = 76.102350000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frDBCabecera."FECHAVTA"]')
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 454.015770000000000000
          Top = 6.102350000000000000
          Width = 288.000000000000000000
          Height = 38.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            'Presupuesto')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = 114.984230000000000000
          Width = 64.000000000000000000
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
            'Cliente')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 8.000000000000000000
          Top = 10.102350000000000000
          Width = 288.000000000000000000
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBEmpresa."NOMBRE"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 8.000000000000000000
          Top = 34.102350000000000000
          Width = 288.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBEmpresa."DIRECCION"] - [frxDBEmpresa."LOCALIDAD"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 8.000000000000000000
          Top = 54.102350000000000000
          Width = 288.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'Tel:[frxDBEmpresa."TELEFONO1"]//[frxDBEmpresa."TELEFONO2"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 8.000000000000000000
          Top = 74.102350000000000000
          Width = 288.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'CUIT:[frxDBEmpresa."CUIT"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 110.102350000000000000
          Width = 753.795300000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 385.795300000000000000
          Top = 46.102350000000000000
          Height = 64.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 420.000000000000000000
          Top = 187.204700000000000000
          Width = 284.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBCabecera."MUESTRALDR"]')
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 420.000000000000000000
          Top = 166.984230000000000000
          Width = 148.000000000000000000
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
            'Para se Entregado en:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 372.393940000000000000
          Top = 1.779530000000000000
          Width = 30.236240000000000000
          Height = 45.354360000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDBCabecera."LETRAFAC"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 86.929190000000000000
        Top = 529.134200000000000000
        Width = 755.906000000000000000
        DataSet = frDBCabecera
        DataSetName = 'frDBCabecera'
        RowCount = 0
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 644.677180000000000000
          Top = 3.779530000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DataField = 'NETOEXEN2'
          DataSet = frDBCabecera
          DataSetName = 'frDBCabecera'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBCabecera."NETOEXEN2"]')
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 462.000000000000000000
          Top = 3.779530000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'Exento')
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 49.440630000000000000
          Width = 746.236240000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 644.677180000000000000
          Top = 24.661100000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DataField = 'TOTAL'
          DataSet = frDBCabecera
          DataSetName = 'frDBCabecera'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBCabecera."TOTAL"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 462.000000000000000000
          Top = 24.661100000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 56.692950000000000000
          Width = 748.346940000000000000
          Height = 26.456710000000000000
          StretchMode = smActualHeight
          AllowExpressions = False
          DataField = 'NOTAS'
          DataSet = frDBCabecera
          DataSetName = 'frDBCabecera'
          Frame.Typ = []
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67333038327B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430205365676F652055493B7D7D0D0A7B5C
            2A5C67656E657261746F722052696368656432302031302E302E31393034317D
            5C766965776B696E64345C756331200D0A5C706172645C66305C667331385C70
            61720D0A7D0D0A00}
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 393.071120000000000000
        Width = 755.906000000000000000
        DataSet = frDBCabecera
        DataSetName = 'frDBCabecera'
        RowCount = 0
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 462.000000000000000000
          Top = 50.708410000000000000
          Width = 156.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'Total Neto Gravado')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 644.677180000000000000
          Top = 10.708410000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DataField = 'NETOGRAV1'
          DataSet = frDBCabecera
          DataSetName = 'frDBCabecera'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBCabecera."NETOGRAV1"]')
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 462.000000000000000000
          Top = 10.708410000000000000
          Width = 156.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'Sub Total Gravado')
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 9.559060000000000000
          Top = 6.267470000000000000
          Width = 720.000000000000000000
          Height = 3.000000000000000000
          Frame.Typ = []
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 644.677180000000000000
          Top = 50.708410000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DataField = 'NETOGRAV2'
          DataSet = frDBCabecera
          DataSetName = 'frDBCabecera'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBCabecera."NETOGRAV2"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 5.000000000000000000
          Top = 35.708410000000000000
          Width = 428.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DataField = 'OBSERVACION2'
          DataSet = frDBCabecera
          DataSetName = 'frDBCabecera'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBCabecera."OBSERVACION2"]')
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 644.677180000000000000
          Top = 30.708410000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DataField = 'DSTOIMPORTE'
          DataSet = frDBCabecera
          DataSetName = 'frDBCabecera'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBCabecera."DSTOIMPORTE"]')
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 462.000000000000000000
          Top = 30.708410000000000000
          Width = 156.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            'Descuentos:[FormatFloat('#39'0.00'#39',<frDBCabecera."DSTO">)]')
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 5.000000000000000000
          Top = 19.487940000000000000
          Width = 428.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DataField = 'OBSERVACION1'
          DataSet = frDBCabecera
          DataSetName = 'frDBCabecera'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBCabecera."OBSERVACION1"]')
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 15.000000000000000000
        Top = 355.275820000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'MasterData4OnBeforePrint'
        DataSet = frDBDetalle
        DataSetName = 'frDBDetalle'
        RowCount = 0
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 461.779530000000000000
          Width = 44.000000000000000000
          Height = 15.000000000000000000
          StretchMode = smMaxHeight
          DataField = 'UNIDAD'
          DataSet = frDBDetalle
          DataSetName = 'frDBDetalle'
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frDBDetalle."UNIDAD"]')
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 565.779530000000000000
          Width = 76.000000000000000000
          Height = 15.000000000000000000
          StretchMode = smMaxHeight
          DataSet = frDBDetalle
          DataSetName = 'frDBDetalle'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Unitario]')
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 668.456710000000000000
          Width = 75.000000000000000000
          Height = 15.000000000000000000
          StretchMode = smMaxHeight
          DataSet = frDBDetalle
          DataSetName = 'frDBDetalle'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Total]')
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 509.779530000000000000
          Width = 52.000000000000000000
          Height = 15.000000000000000000
          StretchMode = smMaxHeight
          DataField = 'CANTIDAD'
          DataSet = frDBDetalle
          DataSetName = 'frDBDetalle'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frDBDetalle."CANTIDAD"]')
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Width = 347.716760000000000000
          Height = 15.118120000000000000
          DataField = 'DETALLE'
          DataSet = frDBDetalle
          DataSetName = 'frDBDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frDBDetalle."DETALLE"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = -3.779530000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'CODIGOARTICULO'
          DataSet = frDBDetalle
          DataSetName = 'frDBDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frDBDetalle."CODIGOARTICULO"]')
          ParentFont = False
        end
      end
    end
  end
  object frDBCabecera: TfrxDBDataset
    UserName = 'frDBCabecera'
    CloseDataSource = False
    DataSet = DatosPresupuesto.CDSPresuCab
    BCDToCurrency = False
    DataSetOptions = []
    Left = 200
    Top = 358
    FieldDefs = <
      item
        FieldName = 'ID_PR'
        FieldAlias = 'ID_PR'
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
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
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
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'RAZONSOCIAL'
        FieldAlias = 'RAZONSOCIAL'
      end
      item
        FieldName = 'DIRECCION'
        FieldAlias = 'DIRECCION'
      end
      item
        FieldName = 'CPOSTAL'
        FieldAlias = 'CPOSTAL'
      end
      item
        FieldName = 'LOCALIDAD'
        FieldAlias = 'LOCALIDAD'
      end
      item
        FieldName = 'TIPOIVA'
        FieldAlias = 'TIPOIVA'
      end
      item
        FieldName = 'CUIT'
        FieldAlias = 'CUIT'
      end
      item
        FieldName = 'CONDICIONVTA'
        FieldAlias = 'CONDICIONVTA'
      end
      item
        FieldName = 'ANULADO'
        FieldAlias = 'ANULADO'
      end
      item
        FieldName = 'LISTAPRECIO'
        FieldAlias = 'LISTAPRECIO'
      end
      item
        FieldName = 'NRORTO'
        FieldAlias = 'NRORTO'
      end
      item
        FieldName = 'IMPRESO'
        FieldAlias = 'IMPRESO'
      end
      item
        FieldName = 'OBSERVACION1'
        FieldAlias = 'OBSERVACION1'
      end
      item
        FieldName = 'OBSERVACION2'
        FieldAlias = 'OBSERVACION2'
      end
      item
        FieldName = 'CPTE_MANUAL'
        FieldAlias = 'CPTE_MANUAL'
      end
      item
        FieldName = 'SUCURSAL'
        FieldAlias = 'SUCURSAL'
      end
      item
        FieldName = 'ZONA'
        FieldAlias = 'ZONA'
      end
      item
        FieldName = 'ID_FACTURA'
        FieldAlias = 'ID_FACTURA'
      end
      item
        FieldName = 'FACTURANRO'
        FieldAlias = 'FACTURANRO'
      end
      item
        FieldName = 'LDR'
        FieldAlias = 'LDR'
      end
      item
        FieldName = 'DEPOSITO'
        FieldAlias = 'DEPOSITO'
      end
      item
        FieldName = 'CALCULA_SOBRETASA'
        FieldAlias = 'CALCULA_SOBRETASA'
      end
      item
        FieldName = 'DESGLOZAIVA'
        FieldAlias = 'DESGLOZAIVA'
      end
      item
        FieldName = 'NROENTREGA'
        FieldAlias = 'NROENTREGA'
      end
      item
        FieldName = 'VENDEDOR'
        FieldAlias = 'VENDEDOR'
      end
      item
        FieldName = 'USUARIO'
        FieldAlias = 'USUARIO'
      end
      item
        FieldName = 'NOTAS'
        FieldAlias = 'NOTAS'
      end
      item
        FieldName = 'DIAS_VIGENCIA_PRESUPESTO'
        FieldAlias = 'DIAS_VIGENCIA_PRESUPESTO'
      end
      item
        FieldName = 'MUESTRACONDVENTA'
        FieldAlias = 'MUESTRACONDVENTA'
      end
      item
        FieldName = 'MUESTRADEPOSITO'
        FieldAlias = 'MUESTRADEPOSITO'
      end
      item
        FieldName = 'MUESTRASUCURSAL'
        FieldAlias = 'MUESTRASUCURSAL'
      end
      item
        FieldName = 'MUESTRALDR'
        FieldAlias = 'MUESTRALDR'
      end
      item
        FieldName = 'MUESTRAIVA'
        FieldAlias = 'MUESTRAIVA'
      end
      item
        FieldName = 'MUESTRACOMPROBANTE'
        FieldAlias = 'MUESTRACOMPROBANTE'
      end
      item
        FieldName = 'ID_TIPOCOMPROBANTE'
        FieldAlias = 'ID_TIPOCOMPROBANTE'
      end
      item
        FieldName = 'MUESTRAVENDEDOR'
        FieldAlias = 'MUESTRAVENDEDOR'
      end
      item
        FieldName = 'MUESTRANOTAVENTA_ID'
        FieldAlias = 'MUESTRANOTAVENTA_ID'
      end
      item
        FieldName = 'MUESTRANOTAVENTA_NRO'
        FieldAlias = 'MUESTRANOTAVENTA_NRO'
      end
      item
        FieldName = 'MONEDA_CPBTE'
        FieldAlias = 'MONEDA_CPBTE'
      end
      item
        FieldName = 'MUESTRAMONEDACPBTE'
        FieldAlias = 'MUESTRAMONEDACPBTE'
      end
      item
        FieldName = 'MUESTRASIGNOMONEDACPBTE'
        FieldAlias = 'MUESTRASIGNOMONEDACPBTE'
      end
      item
        FieldName = 'PERCIB_IB'
        FieldAlias = 'PERCIB_IB'
      end
      item
        FieldName = 'SUB_NRO'
        FieldAlias = 'SUB_NRO'
      end
      item
        FieldName = 'MUESTRAFACTURA'
        FieldAlias = 'MUESTRAFACTURA'
      end
      item
        FieldName = 'MUESTRAREMITO'
        FieldAlias = 'MUESTRAREMITO'
      end
      item
        FieldName = 'N_OPERACION2'
        FieldAlias = 'N_OPERACION2'
      end
      item
        FieldName = 'NETOGRAV1'
        FieldAlias = 'NETOGRAV1'
      end
      item
        FieldName = 'NETOGRAV2'
        FieldAlias = 'NETOGRAV2'
      end
      item
        FieldName = 'DSTO'
        FieldAlias = 'DSTO'
      end
      item
        FieldName = 'DSTOIMPORTE'
        FieldAlias = 'DSTOIMPORTE'
      end
      item
        FieldName = 'NETOEXEN1'
        FieldAlias = 'NETOEXEN1'
      end
      item
        FieldName = 'NETOEXEN2'
        FieldAlias = 'NETOEXEN2'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'DEBE'
        FieldAlias = 'DEBE'
      end
      item
        FieldName = 'COMISIONVENDEDOR'
        FieldAlias = 'COMISIONVENDEDOR'
      end
      item
        FieldName = 'MONEDA_CPBTE_COTIZACION'
        FieldAlias = 'MONEDA_CPBTE_COTIZACION'
      end
      item
        FieldName = 'PERCEPCION_IB_TASA'
        FieldAlias = 'PERCEPCION_IB_TASA'
      end
      item
        FieldName = 'PERCECEPION_IB_IMPORTE'
        FieldAlias = 'PERCECEPION_IB_IMPORTE'
      end
      item
        FieldName = 'PERCECPION_IB_BASEIMPONIBLE'
        FieldAlias = 'PERCECPION_IB_BASEIMPONIBLE'
      end
      item
        FieldName = 'REFERENCIA'
        FieldAlias = 'REFERENCIA'
      end
      item
        FieldName = 'ID_PRESU_NEXT'
        FieldAlias = 'ID_PRESU_NEXT'
      end
      item
        FieldName = 'ID_PRESU_PREV'
        FieldAlias = 'ID_PRESU_PREV'
      end
      item
        FieldName = 'NRO_PRE_NEXT'
        FieldAlias = 'NRO_PRE_NEXT'
      end
      item
        FieldName = 'NRO_PRE_PREV'
        FieldAlias = 'NRO_PRE_PREV'
      end
      item
        FieldName = 'PLAZO_ENTREGA'
        FieldAlias = 'PLAZO_ENTREGA'
      end
      item
        FieldName = 'CUMPLIO_TECNICA'
        FieldAlias = 'CUMPLIO_TECNICA'
      end
      item
        FieldName = 'CUMPLIO_FINANCIERA'
        FieldAlias = 'CUMPLIO_FINANCIERA'
      end
      item
        FieldName = 'NRO_ORDEN_COMP'
        FieldAlias = 'NRO_ORDEN_COMP'
      end
      item
        FieldName = 'ID_OBRA'
        FieldAlias = 'ID_OBRA'
      end
      item
        FieldName = 'MUESTRAOPRODUCCION'
        FieldAlias = 'MUESTRAOPRODUCCION'
      end
      item
        FieldName = 'ID_OPRODUCC'
        FieldAlias = 'ID_OPRODUCC'
      end
      item
        FieldName = 'ID_FACT'
        FieldAlias = 'ID_FACT'
      end
      item
        FieldName = 'ID_RTO'
        FieldAlias = 'ID_RTO'
      end
      item
        FieldName = 'FECHAVTA'
        FieldAlias = 'FECHAVTA'
      end
      item
        FieldName = 'FECHAVTO'
        FieldAlias = 'FECHAVTO'
      end
      item
        FieldName = 'FECHAVTO_PRESUPUESTO'
        FieldAlias = 'FECHAVTO_PRESUPUESTO'
      end
      item
        FieldName = 'FECHA_HORA'
        FieldAlias = 'FECHA_HORA'
      end
      item
        FieldName = 'FECHA_TECNICA'
        FieldAlias = 'FECHA_TECNICA'
      end
      item
        FieldName = 'FECHA_FINANCIERA'
        FieldAlias = 'FECHA_FINANCIERA'
      end
      item
        FieldName = 'FECHA_ENTREGA'
        FieldAlias = 'FECHA_ENTREGA'
      end
      item
        FieldName = 'FECHA_OC'
        FieldAlias = 'FECHA_OC'
      end
      item
        FieldName = 'FECHA_REVISION'
        FieldAlias = 'FECHA_REVISION'
      end
      item
        FieldName = 'ID_OBRA_SECTOR'
        FieldAlias = 'ID_OBRA_SECTOR'
      end
      item
        FieldName = 'NROCPBTE2'
        FieldAlias = 'NROCPBTE2'
      end
      item
        FieldName = 'TIPO_OBRA'
        FieldAlias = 'TIPO_OBRA'
      end
      item
        FieldName = 'FECHA_ENTREGA_2'
        FieldAlias = 'FECHA_ENTREGA_2'
      end
      item
        FieldName = 'TIENE_PLANO'
        FieldAlias = 'TIENE_PLANO'
      end
      item
        FieldName = 'ID_FACTURA_ANTICIPO'
        FieldAlias = 'ID_FACTURA_ANTICIPO'
      end
      item
        FieldName = 'MUESTRAFACTURAANTICIPO'
        FieldAlias = 'MUESTRAFACTURAANTICIPO'
      end
      item
        FieldName = 'MUESTRAOBRA'
        FieldAlias = 'MUESTRAOBRA'
      end
      item
        FieldName = 'MUESTRACONTACO'
        FieldAlias = 'MUESTRACONTACO'
      end
      item
        FieldName = 'MUESTRACORREOCONTACTO'
        FieldAlias = 'MUESTRACORREOCONTACTO'
      end
      item
        FieldName = 'PARA_ACOPIO'
        FieldAlias = 'PARA_ACOPIO'
      end
      item
        FieldName = 'MUESTRADIRECCIONSUC'
        FieldAlias = 'MUESTRADIRECCIONSUC'
      end
      item
        FieldName = 'MUESTRARAZONSSUC'
        FieldAlias = 'MUESTRARAZONSSUC'
      end
      item
        FieldName = 'MUESTRALOCALIDADSUC'
        FieldAlias = 'MUESTRALOCALIDADSUC'
      end
      item
        FieldName = 'NETO_ACUMULADO'
        FieldAlias = 'NETO_ACUMULADO'
      end
      item
        FieldName = 'MARGEN_GENERAL'
        FieldAlias = 'MARGEN_GENERAL'
      end
      item
        FieldName = 'MUESTRALDRDIRECCION'
        FieldAlias = 'MUESTRALDRDIRECCION'
      end
      item
        FieldName = 'MUESTRANOMBREUSUARIOREAL'
        FieldAlias = 'MUESTRANOMBREUSUARIOREAL'
      end>
  end
  object frDBDetalle: TfrxDBDataset
    UserName = 'frDBDetalle'
    CloseDataSource = False
    OpenDataSource = False
    DataSet = DatosPresupuesto.CDSPresuDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 273
    Top = 343
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_CABPRES'
        FieldAlias = 'ID_CABPRES'
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
        FieldName = 'UNIDAD'
        FieldAlias = 'UNIDAD'
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldAlias = 'TIPOCPBTE'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'MODO_GRAVAMEN'
        FieldAlias = 'MODO_GRAVAMEN'
      end
      item
        FieldName = 'AFECTA_STOCK'
        FieldAlias = 'AFECTA_STOCK'
      end
      item
        FieldName = 'CLASECPBTE'
        FieldAlias = 'CLASECPBTE'
      end
      item
        FieldName = 'DESGLOZAIVA'
        FieldAlias = 'DESGLOZAIVA'
      end
      item
        FieldName = 'TIPOIVA_TASA'
        FieldAlias = 'TIPOIVA_TASA'
      end
      item
        FieldName = 'TIPOIVA_SOBRETASA'
        FieldAlias = 'TIPOIVA_SOBRETASA'
      end
      item
        FieldName = 'SUCURSAL'
        FieldAlias = 'SUCURSAL'
      end
      item
        FieldName = 'DEPOSITO'
        FieldAlias = 'DEPOSITO'
      end
      item
        FieldName = 'CALCULA_SOBRETASA'
        FieldAlias = 'CALCULA_SOBRETASA'
      end
      item
        FieldName = 'ID_MONEDA'
        FieldAlias = 'ID_MONEDA'
      end
      item
        FieldName = 'ACEPTADO'
        FieldAlias = 'ACEPTADO'
      end
      item
        FieldName = 'NOTAS'
        FieldAlias = 'NOTAS'
      end
      item
        FieldName = 'CPBTESALIDA_ID'
        FieldAlias = 'CPBTESALIDA_ID'
      end
      item
        FieldName = 'CPBTESALIDA_TIPO'
        FieldAlias = 'CPBTESALIDA_TIPO'
      end
      item
        FieldName = 'CPBTESALIDA_CLASE'
        FieldAlias = 'CPBTESALIDA_CLASE'
      end
      item
        FieldName = 'CPBTESALIDA_NROCPBTE'
        FieldAlias = 'CPBTESALIDA_NROCPBTE'
      end
      item
        FieldName = 'COSTO_EXENTO'
        FieldAlias = 'COSTO_EXENTO'
      end
      item
        FieldName = 'COSTO_GRAVADO'
        FieldAlias = 'COSTO_GRAVADO'
      end
      item
        FieldName = 'COSTO_TOTAL'
        FieldAlias = 'COSTO_TOTAL'
      end
      item
        FieldName = 'UNITARIO_GRAVADO'
        FieldAlias = 'UNITARIO_GRAVADO'
      end
      item
        FieldName = 'IVA_UNITARIO'
        FieldAlias = 'IVA_UNITARIO'
      end
      item
        FieldName = 'UNITARIO_EXENTO'
        FieldAlias = 'UNITARIO_EXENTO'
      end
      item
        FieldName = 'UNITARIO_TOTAL'
        FieldAlias = 'UNITARIO_TOTAL'
      end
      item
        FieldName = 'MUESTRASIGNO'
        FieldAlias = 'MUESTRASIGNO'
      end
      item
        FieldName = 'TIPOIB_TASA'
        FieldAlias = 'TIPOIB_TASA'
      end
      item
        FieldName = 'GRAVADO_IB'
        FieldAlias = 'GRAVADO_IB'
      end
      item
        FieldName = 'MUESTRACODALTERNATIVO'
        FieldAlias = 'MUESTRACODALTERNATIVO'
      end
      item
        FieldName = 'DETALLE_ADICIONAL'
        FieldAlias = 'DETALLE_ADICIONAL'
      end
      item
        FieldName = 'ITEM_NRO'
        FieldAlias = 'ITEM_NRO'
      end
      item
        FieldName = 'MUESTRAITEM'
        FieldAlias = 'MUESTRAITEM'
      end
      item
        FieldName = 'MUESTRA_UNIT_NETO'
        FieldAlias = 'MUESTRA_UNIT_NETO'
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end
      item
        FieldName = 'TOTAL_EXENTO'
        FieldAlias = 'TOTAL_EXENTO'
      end
      item
        FieldName = 'TOTAL_GRAVADO'
        FieldAlias = 'TOTAL_GRAVADO'
      end
      item
        FieldName = 'IVA_TOTAL'
        FieldAlias = 'IVA_TOTAL'
      end
      item
        FieldName = 'IVA_TASA'
        FieldAlias = 'IVA_TASA'
      end
      item
        FieldName = 'IVA_SOBRETASA'
        FieldAlias = 'IVA_SOBRETASA'
      end
      item
        FieldName = 'DESCUENTO'
        FieldAlias = 'DESCUENTO'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'RENGLON'
        FieldAlias = 'RENGLON'
      end
      item
        FieldName = 'MARGEN'
        FieldAlias = 'MARGEN'
      end
      item
        FieldName = 'IB_TASA'
        FieldAlias = 'IB_TASA'
      end
      item
        FieldName = 'MUESTRADEPRODUCC'
        FieldAlias = 'MUESTRADEPRODUCC'
      end
      item
        FieldName = 'ITEMCANTIDAD'
        FieldAlias = 'ITEMCANTIDAD'
      end
      item
        FieldName = 'ITEMGRAVADO'
        FieldAlias = 'ITEMGRAVADO'
      end
      item
        FieldName = 'ITEMEXENTO'
        FieldAlias = 'ITEMEXENTO'
      end
      item
        FieldName = 'ITEMIVA'
        FieldAlias = 'ITEMIVA'
      end
      item
        FieldName = 'ITEMTOTAL'
        FieldAlias = 'ITEMTOTAL'
      end
      item
        FieldName = 'ITMEDETALLE'
        FieldAlias = 'ITMEDETALLE'
      end
      item
        FieldName = 'ORDEN_ITEM'
        FieldAlias = 'ORDEN_ITEM'
      end
      item
        FieldName = 'CANTIDADTOTAL'
        FieldAlias = 'CANTIDADTOTAL'
      end
      item
        FieldName = 'ESPECIFICACION'
        FieldAlias = 'ESPECIFICACION'
      end
      item
        FieldName = 'ITEM_CONDETALLE'
        FieldAlias = 'ITEM_CONDETALLE'
      end
      item
        FieldName = 'TOTAL_FINAL'
        FieldAlias = 'TOTAL_FINAL'
      end
      item
        FieldName = 'FECHAVTA'
        FieldAlias = 'FECHAVTA'
      end>
  end
  object frDBDImpuestos: TfrxDBDataset
    UserName = 'frDBDImpuestos'
    CloseDataSource = False
    DataSet = DatosPresupuesto.CDSImpuestos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 253
    Top = 455
    FieldDefs = <
      item
        FieldName = 'ID_IMPUESTO'
        FieldAlias = 'ID_IMPUESTO'
      end
      item
        FieldName = 'ID_PRESCAB'
        FieldAlias = 'ID_PRESCAB'
      end
      item
        FieldName = 'CODIGO_GRAVAMEN'
        FieldAlias = 'CODIGO_GRAVAMEN'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'NETO'
        FieldAlias = 'NETO'
      end
      item
        FieldName = 'TASA'
        FieldAlias = 'TASA'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end>
  end
  object DataToXLS: TDataToXLS
    DataSet = DatosPresupuesto.CDSPresuDet
    Columns = <
      item
        DataField = 'CODIGOARTICULO'
        Title = 'Codigo'
      end
      item
        DataField = 'DETALLE'
        Title = 'Detalle'
      end
      item
        DataField = 'UNIDAD'
        Title = 'Unidad'
        Alignment = taCenter
      end
      item
        DataField = 'CANTIDAD'
        Title = 'Cantidad'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'UNITARIO_TOTAL'
        Title = 'Unitario'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'DESCUENTO'
        Title = 'Descuento'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'TOTAL'
        Title = 'Total'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'ITEM_NRO'
        Title = 'Item Nro'
      end
      item
        DataField = 'ITEMCANTIDAD'
        Title = 'Item Cantidad'
        DataType = ctDouble
      end
      item
        DataField = 'ITMEDETALLE'
        Title = 'Item Detalle'
      end
      item
        DataField = 'ITEMTOTAL'
        Title = 'Item Total'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'ESPECIFICACION'
        Title = 'Especificacion'
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
    Left = 316
    Top = 487
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'XLS'
    Left = 503
    Top = 417
  end
  object frxDBEmpresa: TfrxDBDataset
    UserName = 'frxDBEmpresa'
    CloseDataSource = False
    DataSet = DatosPresupuesto.CDSEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 158
    Top = 452
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
      end
      item
        FieldName = 'PROVINCIA'
        FieldAlias = 'PROVINCIA'
      end
      item
        FieldName = 'CBU'
        FieldAlias = 'CBU'
      end
      item
        FieldName = 'ID_CPOSTAL'
        FieldAlias = 'ID_CPOSTAL'
      end
      item
        FieldName = 'COD_ACTIVIDAD'
        FieldAlias = 'COD_ACTIVIDAD'
      end
      item
        FieldName = 'NOMBRE_FANTASIA'
        FieldAlias = 'NOMBRE_FANTASIA'
      end
      item
        FieldName = 'TASA_RET_IIBB'
        FieldAlias = 'TASA_RET_IIBB'
      end
      item
        FieldName = 'FECHA_INICIO_ACTI'
        FieldAlias = 'FECHA_INICIO_ACTI'
      end
      item
        FieldName = 'CODIGO_COT'
        FieldAlias = 'CODIGO_COT'
      end
      item
        FieldName = 'DIRECCION_NRO'
        FieldAlias = 'DIRECCION_NRO'
      end>
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OnBeforeExport = frxPDFExport1BeforeExport
    EmbeddedFonts = True
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
    Left = 608
    Top = 200
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    UTF8 = False
    OpenAfterExport = False
    DeleteEmptyColumns = True
    Left = 392
    Top = 408
  end
  object pm1: TPopupMenu
    Left = 516
    Top = 237
    object SeleccioanrTodos1: TMenuItem
      Action = SelectAll
      Caption = 'Seleccionar Todos'
    end
    object SacarTodos1: TMenuItem
      Action = UnselectAll
      Caption = 'Sacar Todos'
    end
    object N15: TMenuItem
      Caption = '-'
    end
    object AplicarDsctoaTodo1: TMenuItem
      Action = AplicarDsctoTodo
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object SaltearDescto1: TMenuItem
      Caption = 'Saltear Descto.'
      Checked = True
      OnClick = SaltearDescto1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object SaltearItem1: TMenuItem
      Caption = 'Saltear Item'
      Checked = True
      OnClick = SaltearItem1Click
    end
    object N5: TMenuItem
      Action = CopiarDetalle
    end
    object PegarDetalle1: TMenuItem
      Action = PegarDetalle
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object Columnas: TMenuItem
      Caption = 'Columnas a Copiar Porta Papeles'
      OnClick = ColumnasClick
    end
    object CopiaPortaPapelesdeWindows1: TMenuItem
      Action = CopiarPortaPapeles
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object VerporCodigoAlternativo1: TMenuItem
      Caption = 'Ver por Codigo Alternativo'
      OnClick = VerporCodigoAlternativo1Click
    end
    object VertItemAgrupado: TMenuItem
      Caption = 'Ver Items en forma Agrupados (Agrupar)'
      OnClick = VertItemAgrupadoClick
    end
    object N16: TMenuItem
      Caption = '-'
    end
    object MostrarTasaIva: TMenuItem
      Caption = 'Mostrar Tasa Iva'
      Checked = True
      OnClick = MostrarTasaIvaClick
    end
    object MostrarUnidadesVta: TMenuItem
      Caption = 'Mostrar Unidades Vta'
      Checked = True
      OnClick = MostrarUnidadesVtaClick
    end
    object MostrarUnitarioNeto: TMenuItem
      Caption = 'Mostrar Unitario Neto'
      OnClick = MostrarUnitarioNetoClick
    end
    object MostrarEspecificacion: TMenuItem
      Caption = 'Mostrar Especificacion'
      OnClick = MostrarEspecificacionClick
    end
    object MostrarObra1: TMenuItem
      Caption = 'Mostrar Obra'
      OnClick = MostrarObra1Click
    end
    object DeshabilitarSumaDetalle1: TMenuItem
      Caption = 'Deshabilitar Suma Detalle'
      OnClick = DeshabilitarSumaDetalle1Click
    end
    object MostrarMargen: TMenuItem
      Caption = 'Mostrar Margen'
      OnClick = MostrarMargenClick
    end
    object N12: TMenuItem
      Caption = '-'
    end
    object ExportarDetalle1: TMenuItem
      Action = Exportar
    end
    object N19: TMenuItem
      Caption = '-'
    end
    object ResetColumnas1: TMenuItem
      Action = ResetColumnas
    end
    object ImportarXML2: TMenuItem
      Action = ImportarXML
    end
  end
  object pm2: TPopupMenu
    MenuAnimation = [maTopToBottom]
    Left = 668
    Top = 277
    object CambiarFecha1: TMenuItem
      Action = CambiarFecha
    end
    object CambiarFechaVto1: TMenuItem
      Action = CambiarFechaVto
    end
    object ModificarDatosCabecera1: TMenuItem
      Action = ModificarDatosCabecera
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object GenerarNotadePedido1: TMenuItem
      Action = GenerarNotaPedido
      Caption = 'Generar Nota de Pedido-Clientes'
    end
    object Buscar1: TMenuItem
      Action = GenerarFacturaCC
    end
    object GenerarRto1: TMenuItem
      Action = GenerarRto
    end
    object GenerarFacturaAnticipo1: TMenuItem
      Action = GenerarFcAnticipo
    end
    object GenerarOdeProduccion1: TMenuItem
      Action = GenerarOProduccion
      Caption = 'Generar O.de Produccion (P.I)'
    end
    object N18: TMenuItem
      Caption = '-'
    end
    object DuplicarPresupuesto1: TMenuItem
      Action = DuplicarPresupuesto
      Caption = 'Duplicar Presupuesto como Revision'
    end
    object ModoDuplicacion: TMenuItem
      Action = CopiarPresupuesto
    end
    object ExportardetalleaExcel1: TMenuItem
      Action = ClonarPresupuesto
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object GenerarFcdeCtdo1: TMenuItem
      Action = GenerarFcCtdo
    end
    object GenerarTk1: TMenuItem
      Action = GenerarTk
      Caption = 'Generar Ticket'
    end
    object GenerarNdeVta1: TMenuItem
      Action = GenerarNdeVta
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Action = Recalcular
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object ActualizarCotizacionesdelosArticulosconOtrasMonedas1: TMenuItem
      Action = ActualizaMonedas
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object ImprimirFormatoProforma1: TMenuItem
      Action = PrintProforma
    end
    object CambiarCliente1: TMenuItem
      Action = CambiarCliente
    end
    object N13: TMenuItem
      Caption = '-'
    end
    object CalcularDetallexlosIVA1: TMenuItem
      Caption = 'Calcular Detalle x los IVA'
      OnClick = CalcularDetallexlosIVA1Click
    end
    object ReHabilitar1: TMenuItem
      Action = ReHabilitar
    end
    object N17: TMenuItem
      Caption = '-'
    end
    object MarcarAnulado1: TMenuItem
      Action = MarcarAnulado
      Caption = 'Marcar Anulado'
    end
    object MarcarAcpetado1: TMenuItem
      Action = MarcarAceptado
    end
    object MarcarRevision1: TMenuItem
      Action = MarcarRevision
      Visible = False
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object RecalcularMargen1: TMenuItem
      Action = RecalcularMargen
    end
    object CambiarNroCpbte1: TMenuItem
      Action = CambiarNroCpbte
    end
  end
  object frDBSucursal: TfrxDBDataset
    UserName = 'frDBSucursal'
    CloseDataSource = False
    DataSet = DatosPresupuesto.CDSSucursal
    BCDToCurrency = False
    DataSetOptions = []
    Left = 96
    Top = 430
    FieldDefs = <
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
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
        FieldName = 'TELEFONO1'
        FieldAlias = 'TELEFONO1'
      end
      item
        FieldName = 'TELEFONO2'
        FieldAlias = 'TELEFONO2'
      end
      item
        FieldName = 'RECARGO'
        FieldAlias = 'RECARGO'
      end
      item
        FieldName = 'APLICA_PERCEPCION_IIBB'
        FieldAlias = 'APLICA_PERCEPCION_IIBB'
      end>
  end
  object ComBuscadorSucursal: TComBuscador
    Data = DatosPresupuesto.CDSBuscaSucursal
    Campo = 'CODIGO'
    Titulo = 'Sucursales'
    rOk = False
    Left = 96
    Top = 88
  end
  object ComBuscadorDeposito: TComBuscador
    Data = DatosPresupuesto.CDSBuscaDeposito
    Campo = 'ID'
    Titulo = 'Depositos'
    rOk = False
    Left = 140
    Top = 173
  end
  object ComBuscadorLdr: TComBuscador
    Data = DatosPresupuesto.CDSBuscaLdr
    Campo = 'CODIGO_LDR'
    Titulo = 'Lugarde de Recepcion'
    rOk = False
    Left = 288
    Top = 88
  end
  object ComBuscadorCondVta: TComBuscador
    Data = DatosPresupuesto.CDSBuscaCondVenta
    Campo = 'CODIGOPAGO'
    Titulo = 'Condiciones de Vta'
    rOk = False
    Left = 284
    Top = 229
  end
  object ComBuscadorVendedor: TComBuscador
    Data = DatosPresupuesto.CDSBuscaVendedor
    Campo = 'CODIGO'
    Titulo = 'Vendedores'
    rOk = False
    Left = 764
    Top = 189
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 88
    Top = 224
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object frxDBDSubDet: TfrxDBDataset
    UserName = 'frxDBDSubDet'
    CloseDataSource = False
    DataSet = DatosPresupuesto.CDSPresuSubDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 296
    Top = 400
    FieldDefs = <
      item
        FieldName = 'ITEM_NRO'
        FieldAlias = 'ITEM_NRO'
      end
      item
        FieldName = 'ID_CAB'
        FieldAlias = 'ID_CAB'
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
        FieldName = 'TOTAL_GRAVADO'
        FieldAlias = 'TOTAL_GRAVADO'
      end
      item
        FieldName = 'TOTAL_UNIT_FINAL'
        FieldAlias = 'TOTAL_UNIT_FINAL'
      end
      item
        FieldName = 'TOTAL_NETO'
        FieldAlias = 'TOTAL_NETO'
      end
      item
        FieldName = 'TOTAL_EXENTO'
        FieldAlias = 'TOTAL_EXENTO'
      end
      item
        FieldName = 'TOTAL_IVA'
        FieldAlias = 'TOTAL_IVA'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'TOTAL_FINAL'
        FieldAlias = 'TOTAL_FINAL'
      end>
  end
  object pmPrint: TPopupMenu
    Left = 483
    Top = 331
    object ImprimeUnitario1: TMenuItem
      Caption = 'Imprime Unitario'
      Checked = True
      OnClick = ImprimeUnitario1Click
    end
    object ImprimeTotal1: TMenuItem
      Caption = 'Imprime Total'
      Checked = True
      OnClick = ImprimeTotal1Click
    end
  end
  object ComBuscadorObra: TComBuscador
    Data = DatosPresupuesto.CDSObras
    Campo = 'Codigo'
    Titulo = 'Obras'
    rOk = False
    Left = 948
    Top = 213
  end
  object OpenDialog1: TOpenDialog
    Left = 836
    Top = 381
  end
  object frDBDPercepcionIVA: TfrxDBDataset
    UserName = 'frDBDPercepcionIVA'
    CloseDataSource = False
    DataSet = DatosPresupuesto.CDSPercepcionIVA
    BCDToCurrency = False
    DataSetOptions = []
    Left = 629
    Top = 399
    FieldDefs = <
      item
        FieldName = 'ID_PERCEPCION'
      end
      item
        FieldName = 'CODIGO_PERCEPCION'
      end
      item
        FieldName = 'DETALLE'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'ID_PR'
      end
      item
        FieldName = 'NETO'
      end
      item
        FieldName = 'TASA'
      end
      item
        FieldName = 'IMPORTE'
      end
      item
        FieldName = 'CODIGOREGIMEN'
      end>
  end
end
