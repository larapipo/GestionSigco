inherited FormControlIntegridadCompra: TFormControlIntegridadCompra
  Left = 271
  Top = 74
  Caption = 'Control de Integridad en Compras'
  ClientHeight = 640
  ClientWidth = 861
  Position = poDesktopCenter
  StyleElements = [seFont, seClient, seBorder]
  OnResize = FormResize
  ExplicitWidth = 879
  ExplicitHeight = 681
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 861
    Height = 587
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 861
    ExplicitHeight = 587
    object pcDatos: TPageControl
      Left = 0
      Top = 0
      Width = 861
      Height = 587
      ActivePage = pag2
      Align = alClient
      PopupMenu = pmBorradoApl
      TabOrder = 0
      object pag1: TTabSheet
        Caption = 'Facturas'
        DesignSize = (
          853
          559)
        object Label1: TLabel
          Left = 8
          Top = 2
          Width = 49
          Height = 13
          Caption = 'Proveedor'
        end
        object Bevel1: TBevel
          Left = 8
          Top = 51
          Width = 265
          Height = 14
          Shape = bsBottomLine
        end
        object Label2: TLabel
          Left = 128
          Top = 43
          Width = 36
          Height = 13
          Caption = 'Factura'
        end
        object Bevel2: TBevel
          Left = 288
          Top = 51
          Width = 462
          Height = 14
          Shape = bsBottomLine
        end
        object Label3: TLabel
          Left = 499
          Top = 44
          Width = 50
          Height = 13
          Caption = 'Mov.C.Cte'
        end
        object Label10: TLabel
          Left = 139
          Top = 500
          Width = 41
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Facturas'
          ExplicitTop = 578
        end
        object Label11: TLabel
          Left = 138
          Top = 527
          Width = 44
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'N.Credito'
          ExplicitTop = 605
        end
        object Label12: TLabel
          Left = 282
          Top = 527
          Width = 6
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = '='
          ExplicitTop = 605
        end
        object dbsFacturas: TJvDBStatusLabel
          Left = 749
          Top = 3
          Width = 99
          Height = 16
          DataSource = DSIntegridadFc
          Style = lsRecordNo
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText1: TDBText
          Left = 775
          Top = 43
          Width = 42
          Height = 17
          Cursor = crHandPoint
          DataField = 'INGRESA_A_CTACTE'
          DataSource = DSIntegridadFc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = DBText1Click
        end
        object Label13: TLabel
          Left = 731
          Top = 43
          Width = 41
          Height = 13
          Caption = 'Cta.Cte.:'
        end
        object edNombreProvee: TEdit
          Left = 88
          Top = 18
          Width = 257
          Height = 21
          Color = clInfoBk
          Enabled = False
          TabOrder = 1
        end
        object btBuscarFc: TBitBtn
          Left = 773
          Top = 525
          Width = 75
          Height = 27
          Hint = 'Buscar Registro'
          Anchors = [akLeft, akBottom]
          Caption = '&Buscar'
          Glyph.Data = {
            42020000424D4202000000000000420000002800000010000000100000000100
            1000030000000002000000000000000000000000000000000000007C0000E003
            00001F0000001F7C1F7C1F7C0000C7188F31CF398E312C25E71CE71CE71C1F7C
            1F7C1F7C1F7C1F7C00002C253F673F673F679F733C67794E794ED3390A21CE39
            630C1F7C1F7C0000D339794E3F67774E8F31CF398E312C25794E794E794E0A21
            CE39630C1F7C2C25794E2C25EF3DF75EFF7FFF7FFF7FFF7FEF3D8E31D339794E
            E71C6B2D1F7C2C258E31FF7FEF3D2F252F252F252F252F25EF3DF75EF75ED339
            E71CCE39630CE71CFF7F6C2D7F4E7F4E7F4E7F4EDF5A3F677F4ED739F75EF75E
            E71CCE39E71CEF3DEF3D7B4EF93D7C4E7F4E7F4E7F4E7F4EFC5EF93D2E25FF7F
            E71CCE391F7CEF3DF75ED3397B4E3E677C4EF93DF93DF93D3B46794E8E31FF7F
            E71C630C1F7C0000F75EF75E2C25D339794E794E794E794ED3398E31FF7FE71C
            1F7C1F7C1F7C1F7C0000EF3DFF7FF75EEF3DEF3DEF3DEF3DF75EF75E8C316B2D
            630C1F7C1F7C1F7C1F7C1F7C0000E71CEF3DEF3DEF3DEF3DAD35B55618634A29
            6B2D630C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000AD35AD350000
            00006B2D630C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000A514C618
            000000006B2D1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000A514
            C618000000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000
            A514C61800001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            000000000000}
          TabOrder = 2
          OnClick = btBuscarFcClick
        end
        object ceProvee: TJvComboEdit
          Left = 8
          Top = 18
          Width = 73
          Height = 21
          ButtonWidth = 16
          ClickKey = 16397
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          TabOrder = 0
          Text = ''
          OnButtonClick = BuscarProveeExecute
          OnKeyDown = ceProveeKeyDown
        end
        object dbgFacturas: TJvDBGrid
          Left = 3
          Top = 66
          Width = 845
          Height = 417
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DSIntegridadFc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = popMenuFc
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = dbgFacturasDrawColumnCell
          OnDblClick = dbgFacturasDblClick
          TitleButtons = True
          OnTitleBtnClick = dbgFacturasTitleBtnClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'CLASECPBTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPOCPBTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NROCPBTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
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
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 93
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ANULADO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 20
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'IDMOVCTACTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 75
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 119
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'DEBE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 79
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'HABER'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 89
              Visible = True
            end
            item
              Color = clMoneyGreen
              Expanded = False
              FieldName = 'SALDO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 74
              Visible = True
            end
            item
              Color = clYellow
              Expanded = False
              FieldName = 'IMPORTEAPLICADO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 95
              Visible = True
            end>
        end
        object edDebe: TJvCalcEdit
          Left = 471
          Top = 497
          Width = 89
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 4
          DecimalPlacesAlwaysShown = False
        end
        object edHaber: TJvCalcEdit
          Left = 566
          Top = 497
          Width = 93
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 5
          DecimalPlacesAlwaysShown = False
        end
        object edSaldo: TJvCalcEdit
          Left = 665
          Top = 497
          Width = 89
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 6
          DecimalPlacesAlwaysShown = False
        end
        object edAplicado: TJvCalcEdit
          Left = 760
          Top = 497
          Width = 89
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 7
          DecimalPlacesAlwaysShown = False
        end
        object edFactura: TJvCalcEdit
          Left = 186
          Top = 497
          Width = 89
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 8
          DecimalPlacesAlwaysShown = False
        end
        object edNCredito: TJvCalcEdit
          Left = 186
          Top = 524
          Width = 89
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 9
          DecimalPlacesAlwaysShown = False
        end
        object edTotal: TJvCalcEdit
          Left = 296
          Top = 524
          Width = 89
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 10
          DecimalPlacesAlwaysShown = False
        end
        object chFiltroCero: TCheckBox
          Left = 555
          Top = 28
          Width = 142
          Height = 17
          Caption = 'Filtrar con Saldo Cero'
          TabOrder = 11
          OnClick = chFiltroCeroClick
        end
        object JvDBFindEdit1: TJvDBFindEdit
          Left = 3
          Top = 510
          Width = 121
          Height = 21
          TabOrder = 12
          Text = ''
          DataField = 'NROCPBTE'
          DataSource = DSIntegridadFc
          FindStyle = fsFilter
        end
      end
      object pag2: TTabSheet
        Caption = 'Orden de Pago'
        ImageIndex = 1
        DesignSize = (
          853
          559)
        object Label4: TLabel
          Left = 120
          Top = 15
          Width = 34
          Height = 13
          Caption = 'Recibo'
        end
        object Bevel3: TBevel
          Left = 16
          Top = 25
          Width = 249
          Height = 14
          Shape = bsBottomLine
        end
        object Label5: TLabel
          Left = 443
          Top = 15
          Width = 50
          Height = 13
          Caption = 'Mov.C.Cte'
        end
        object Bevel4: TBevel
          Left = 275
          Top = 25
          Width = 374
          Height = 14
          Shape = bsBottomLine
        end
        object Label8: TLabel
          Left = 682
          Top = 15
          Width = 60
          Height = 13
          Caption = 'Aplicaciones'
        end
        object Bevel7: TBevel
          Left = 680
          Top = 25
          Width = 64
          Height = 14
          Shape = bsBottomLine
        end
        object JvDBStatusLabel1: TJvDBStatusLabel
          Left = 708
          Top = 1
          Width = 140
          Height = 16
          DataSource = DSIntegridadOp
          Style = lsRecordNo
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object btBuscarRc: TBitBtn
          Tag = 1
          Left = 773
          Top = 529
          Width = 75
          Height = 27
          Hint = 'Buscar Registro'
          Anchors = [akLeft, akBottom]
          Caption = '&Buscar'
          Glyph.Data = {
            42020000424D4202000000000000420000002800000010000000100000000100
            1000030000000002000000000000000000000000000000000000007C0000E003
            00001F0000001F7C1F7C1F7C0000C7188F31CF398E312C25E71CE71CE71C1F7C
            1F7C1F7C1F7C1F7C00002C253F673F673F679F733C67794E794ED3390A21CE39
            630C1F7C1F7C0000D339794E3F67774E8F31CF398E312C25794E794E794E0A21
            CE39630C1F7C2C25794E2C25EF3DF75EFF7FFF7FFF7FFF7FEF3D8E31D339794E
            E71C6B2D1F7C2C258E31FF7FEF3D2F252F252F252F252F25EF3DF75EF75ED339
            E71CCE39630CE71CFF7F6C2D7F4E7F4E7F4E7F4EDF5A3F677F4ED739F75EF75E
            E71CCE39E71CEF3DEF3D7B4EF93D7C4E7F4E7F4E7F4E7F4EFC5EF93D2E25FF7F
            E71CCE391F7CEF3DF75ED3397B4E3E677C4EF93DF93DF93D3B46794E8E31FF7F
            E71C630C1F7C0000F75EF75E2C25D339794E794E794E794ED3398E31FF7FE71C
            1F7C1F7C1F7C1F7C0000EF3DFF7FF75EEF3DEF3DEF3DEF3DF75EF75E8C316B2D
            630C1F7C1F7C1F7C1F7C1F7C0000E71CEF3DEF3DEF3DEF3DAD35B55618634A29
            6B2D630C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000AD35AD350000
            00006B2D630C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000A514C618
            000000006B2D1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000A514
            C618000000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000
            A514C61800001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            000000000000}
          TabOrder = 1
          OnClick = btBuscarRcClick
        end
        object chTodoMovRec: TCheckBox
          Left = 18
          Top = 508
          Width = 129
          Height = 17
          Anchors = [akLeft, akBottom]
          Caption = 'Solo con Diferencias'
          TabOrder = 2
        end
        object dbgOpago: TJvDBGrid
          Left = 2
          Top = 47
          Width = 846
          Height = 440
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DSIntegridadOp
          DefaultDrawing = False
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = pmBorradoApl
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgOpagoDrawColumnCell
          OnDblClick = dbgOpagoDblClick
          OnTitleBtnClick = dbgOpagoTitleBtnClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'CLASECPBTE'
              Title.Alignment = taCenter
              Title.Caption = 'Cl'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 23
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPOCPBTE'
              Title.Alignment = taCenter
              Title.Caption = 'Tp'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 22
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
              Width = 103
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
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ANULADO'
              Title.Alignment = taCenter
              Title.Caption = 'A'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 20
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'IDMOVCTACTE'
              Title.Alignment = taCenter
              Title.Caption = 'Id Mov CC'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 75
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Caption = 'Detalle'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 144
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'DEBE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 81
              Visible = True
            end
            item
              Color = clAqua
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
              Color = clMoneyGreen
              Expanded = False
              FieldName = 'SUMAAPLICAIONES'
              Title.Alignment = taCenter
              Title.Caption = 'Aplica.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Color = clMoneyGreen
              Expanded = False
              FieldName = 'DIFERENCIACONAPLICACIONES'
              Title.Alignment = taCenter
              Title.Caption = 'Dif.Apl'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 65
              Visible = True
            end>
        end
        object edTotalRec: TJvCalcEdit
          Left = 172
          Top = 506
          Width = 89
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 3
          DecimalPlacesAlwaysShown = False
        end
        object edTotalDebeRec: TJvCalcEdit
          Left = 494
          Top = 506
          Width = 89
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 4
          DecimalPlacesAlwaysShown = False
        end
        object edTotalAplRec: TJvCalcEdit
          Left = 679
          Top = 506
          Width = 89
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 5
          DecimalPlacesAlwaysShown = False
        end
      end
      object Pag3: TTabSheet
        Caption = 'Notas de Credito'
        ImageIndex = 3
        DesignSize = (
          853
          559)
        object Label6: TLabel
          Left = 120
          Top = 15
          Width = 59
          Height = 13
          Caption = 'N.de Credito'
        end
        object Bevel5: TBevel
          Left = 16
          Top = 25
          Width = 249
          Height = 14
          Shape = bsBottomLine
        end
        object Label7: TLabel
          Left = 419
          Top = 15
          Width = 50
          Height = 13
          Caption = 'Mov.C.Cte'
        end
        object Bevel6: TBevel
          Left = 275
          Top = 25
          Width = 366
          Height = 14
          Shape = bsBottomLine
        end
        object Label9: TLabel
          Left = 682
          Top = 15
          Width = 60
          Height = 13
          Caption = 'Aplicaciones'
        end
        object Bevel8: TBevel
          Left = 680
          Top = 25
          Width = 64
          Height = 14
          Shape = bsBottomLine
        end
        object JvDBStatusLabel2: TJvDBStatusLabel
          Left = 708
          Top = -1
          Width = 140
          Height = 16
          DataSource = DSIntegridadNC
          Style = lsRecordNo
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object btBuscarNC: TBitBtn
          Tag = 1
          Left = 766
          Top = 527
          Width = 75
          Height = 27
          Hint = 'Buscar Registro'
          Anchors = [akLeft, akBottom]
          Caption = '&Buscar'
          Glyph.Data = {
            42020000424D4202000000000000420000002800000010000000100000000100
            1000030000000002000000000000000000000000000000000000007C0000E003
            00001F0000001F7C1F7C1F7C0000C7188F31CF398E312C25E71CE71CE71C1F7C
            1F7C1F7C1F7C1F7C00002C253F673F673F679F733C67794E794ED3390A21CE39
            630C1F7C1F7C0000D339794E3F67774E8F31CF398E312C25794E794E794E0A21
            CE39630C1F7C2C25794E2C25EF3DF75EFF7FFF7FFF7FFF7FEF3D8E31D339794E
            E71C6B2D1F7C2C258E31FF7FEF3D2F252F252F252F252F25EF3DF75EF75ED339
            E71CCE39630CE71CFF7F6C2D7F4E7F4E7F4E7F4EDF5A3F677F4ED739F75EF75E
            E71CCE39E71CEF3DEF3D7B4EF93D7C4E7F4E7F4E7F4E7F4EFC5EF93D2E25FF7F
            E71CCE391F7CEF3DF75ED3397B4E3E677C4EF93DF93DF93D3B46794E8E31FF7F
            E71C630C1F7C0000F75EF75E2C25D339794E794E794E794ED3398E31FF7FE71C
            1F7C1F7C1F7C1F7C0000EF3DFF7FF75EEF3DEF3DEF3DEF3DF75EF75E8C316B2D
            630C1F7C1F7C1F7C1F7C1F7C0000E71CEF3DEF3DEF3DEF3DAD35B55618634A29
            6B2D630C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000AD35AD350000
            00006B2D630C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000A514C618
            000000006B2D1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000A514
            C618000000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000
            A514C61800001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            000000000000}
          TabOrder = 1
          OnClick = btBuscarNCClick
        end
        object chTodoMovNC: TCheckBox
          Left = 599
          Top = 537
          Width = 129
          Height = 17
          Anchors = [akLeft, akBottom]
          Caption = 'Solo con Diferencias'
          TabOrder = 2
        end
        object dbgNotasCredito: TJvDBGrid
          Left = 2
          Top = 47
          Width = 846
          Height = 432
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DSIntegridadNC
          DefaultDrawing = False
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgNotasCreditoDrawColumnCell
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'CLASECPBTE'
              Title.Alignment = taCenter
              Title.Caption = 'Cl'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 23
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPOCPBTE'
              Title.Alignment = taCenter
              Title.Caption = 'Tp'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 22
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
              Width = 103
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
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ANULADO'
              Title.Alignment = taCenter
              Title.Caption = 'A'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 20
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'IDMOVCTACTE'
              Title.Alignment = taCenter
              Title.Caption = 'Id Mov CC'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 75
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Caption = 'Detalle'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 144
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'DEBE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 81
              Visible = True
            end
            item
              Color = clAqua
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
              Color = clMoneyGreen
              Expanded = False
              FieldName = 'SUMAAPLICACIONES'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 79
              Visible = True
            end
            item
              Color = clMoneyGreen
              Expanded = False
              FieldName = 'DIFERENCIACONAPLICACIONES'
              Title.Alignment = taCenter
              Title.Caption = 'Dif.Apl'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 65
              Visible = True
            end>
        end
        object edTotalNC: TJvCalcEdit
          Left = 157
          Top = 492
          Width = 89
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 3
          DecimalPlacesAlwaysShown = False
        end
        object edTotalNcDebe: TJvCalcEdit
          Left = 487
          Top = 492
          Width = 89
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 4
          DecimalPlacesAlwaysShown = False
        end
        object edTotalNCAplica: TJvCalcEdit
          Left = 639
          Top = 492
          Width = 89
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 5
          DecimalPlacesAlwaysShown = False
        end
        object Button2: TButton
          Left = 16
          Top = 492
          Width = 91
          Height = 25
          Action = ReHaceMovCC
          Anchors = [akLeft, akBottom]
          Caption = 'ReHace Mov.CC.'
          TabOrder = 6
        end
      end
      object Pag4: TTabSheet
        Caption = 'Ajustes (Debe)'
        ImageIndex = 4
        DesignSize = (
          853
          559)
        object btAjustesDebe: TBitBtn
          Left = 734
          Top = 517
          Width = 75
          Height = 27
          Hint = 'Buscar Registro'
          Anchors = [akLeft, akBottom]
          Caption = '&Buscar'
          Glyph.Data = {
            42020000424D4202000000000000420000002800000010000000100000000100
            1000030000000002000000000000000000000000000000000000007C0000E003
            00001F0000001F7C1F7C1F7C0000C7188F31CF398E312C25E71CE71CE71C1F7C
            1F7C1F7C1F7C1F7C00002C253F673F673F679F733C67794E794ED3390A21CE39
            630C1F7C1F7C0000D339794E3F67774E8F31CF398E312C25794E794E794E0A21
            CE39630C1F7C2C25794E2C25EF3DF75EFF7FFF7FFF7FFF7FEF3D8E31D339794E
            E71C6B2D1F7C2C258E31FF7FEF3D2F252F252F252F252F25EF3DF75EF75ED339
            E71CCE39630CE71CFF7F6C2D7F4E7F4E7F4E7F4EDF5A3F677F4ED739F75EF75E
            E71CCE39E71CEF3DEF3D7B4EF93D7C4E7F4E7F4E7F4E7F4EFC5EF93D2E25FF7F
            E71CCE391F7CEF3DF75ED3397B4E3E677C4EF93DF93DF93D3B46794E8E31FF7F
            E71C630C1F7C0000F75EF75E2C25D339794E794E794E794ED3398E31FF7FE71C
            1F7C1F7C1F7C1F7C0000EF3DFF7FF75EEF3DEF3DEF3DEF3DF75EF75E8C316B2D
            630C1F7C1F7C1F7C1F7C1F7C0000E71CEF3DEF3DEF3DEF3DAD35B55618634A29
            6B2D630C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000AD35AD350000
            00006B2D630C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000A514C618
            000000006B2D1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000A514
            C618000000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000
            A514C61800001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            000000000000}
          TabOrder = 1
          OnClick = btAjustesDebeClick
        end
        object dbgAjusteDebe: TJvDBGrid
          Left = 0
          Top = 0
          Width = 853
          Height = 511
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DSIntegridadAjustesDebe
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          AutoAppend = False
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'CLASECPBTE'
              Title.Alignment = taCenter
              Title.Caption = 'Cl'
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
              FieldName = 'TIPOCPBTE'
              Title.Alignment = taCenter
              Title.Caption = 'Tp'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 34
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
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Total'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 78
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'IDMOVCTACTE'
              Title.Alignment = taCenter
              Title.Caption = 'Id Mov CC'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 78
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Caption = 'Detalle'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 125
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'DEBE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 81
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'HABER'
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
              Color = 10930928
              Expanded = False
              FieldName = 'SALDO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 75
              Visible = True
            end
            item
              Color = clYellow
              Expanded = False
              FieldName = 'IMPORTEAPLICADO'
              Title.Alignment = taCenter
              Title.Caption = 'Aplicado'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 88
              Visible = True
            end>
        end
      end
      object Pag5: TTabSheet
        Caption = 'Ajustes (Haber)'
        ImageIndex = 5
        DesignSize = (
          853
          559)
        object btAjusteHaber: TBitBtn
          Tag = 1
          Left = 737
          Top = 519
          Width = 75
          Height = 27
          Hint = 'Buscar Registro'
          Anchors = [akLeft, akBottom]
          Caption = '&Buscar'
          Glyph.Data = {
            42020000424D4202000000000000420000002800000010000000100000000100
            1000030000000002000000000000000000000000000000000000007C0000E003
            00001F0000001F7C1F7C1F7C0000C7188F31CF398E312C25E71CE71CE71C1F7C
            1F7C1F7C1F7C1F7C00002C253F673F673F679F733C67794E794ED3390A21CE39
            630C1F7C1F7C0000D339794E3F67774E8F31CF398E312C25794E794E794E0A21
            CE39630C1F7C2C25794E2C25EF3DF75EFF7FFF7FFF7FFF7FEF3D8E31D339794E
            E71C6B2D1F7C2C258E31FF7FEF3D2F252F252F252F252F25EF3DF75EF75ED339
            E71CCE39630CE71CFF7F6C2D7F4E7F4E7F4E7F4EDF5A3F677F4ED739F75EF75E
            E71CCE39E71CEF3DEF3D7B4EF93D7C4E7F4E7F4E7F4E7F4EFC5EF93D2E25FF7F
            E71CCE391F7CEF3DF75ED3397B4E3E677C4EF93DF93DF93D3B46794E8E31FF7F
            E71C630C1F7C0000F75EF75E2C25D339794E794E794E794ED3398E31FF7FE71C
            1F7C1F7C1F7C1F7C0000EF3DFF7FF75EEF3DEF3DEF3DEF3DF75EF75E8C316B2D
            630C1F7C1F7C1F7C1F7C1F7C0000E71CEF3DEF3DEF3DEF3DAD35B55618634A29
            6B2D630C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000AD35AD350000
            00006B2D630C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000A514C618
            000000006B2D1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000A514
            C618000000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000
            A514C61800001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
            000000000000}
          TabOrder = 1
          OnClick = btAjusteHaberClick
        end
        object dbgAjusteHaber: TJvDBGrid
          Left = 0
          Top = 0
          Width = 853
          Height = 502
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DSIntegridadAjustesHaber
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = popMenuFc
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
              FieldName = 'CLASECPBTE'
              Title.Alignment = taCenter
              Title.Caption = 'Cl'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 23
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPOCPBTE'
              Title.Alignment = taCenter
              Title.Caption = 'Tp'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 22
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
              Width = 103
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
              Width = 78
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'IDMOVCTACTE'
              Title.Alignment = taCenter
              Title.Caption = 'Id Mov CC'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 75
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Caption = 'Detalle'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 144
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'DEBE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 81
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'HABER'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 94
              Visible = True
            end
            item
              Color = clMoneyGreen
              Expanded = False
              FieldName = 'SUMAAPLICAIONES'
              Title.Alignment = taCenter
              Title.Caption = 'Aplica.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 81
              Visible = True
            end
            item
              Color = clMoneyGreen
              Expanded = False
              FieldName = 'DIFERENCIACONAPLICACIONES'
              Title.Alignment = taCenter
              Title.Caption = 'Dif.Apl'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 86
              Visible = True
            end>
        end
      end
      object pag6: TTabSheet
        Caption = 'CtaCte Vs Aplica.'
        ImageIndex = 2
        DesignSize = (
          853
          559)
        object Button1: TButton
          Left = 576
          Top = 518
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = 'Buscar'
          TabOrder = 1
          OnClick = Button1Click
        end
        object seLimite: TSpinEdit
          Left = 672
          Top = 520
          Width = 65
          Height = 22
          Anchors = [akLeft, akBottom]
          MaxValue = 0
          MinValue = 0
          TabOrder = 2
          Value = 0
        end
        object dbgControlCC: TJvDBGrid
          Left = 0
          Top = 0
          Width = 853
          Height = 512
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DSControlCtaCte
          DefaultDrawing = False
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgControlCCDrawColumnCell
          OnDblClick = dbgControlCCDblClick
          TitleButtons = True
          OnTitleBtnClick = dbgControlCCTitleBtnClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'Codigo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMBRE'
              Title.Alignment = taCenter
              Title.Caption = 'Nombre'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 298
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SALDOCTACTE'
              Title.Alignment = taCenter
              Title.Caption = 'Saldo Cta.Cte'
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
              FieldName = 'SALDOAPLICACIONES'
              Title.Alignment = taCenter
              Title.Caption = 'Saldo Aplica.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'APLICACIONESPENDI'
              Title.Alignment = taCenter
              Title.Caption = 'Sin Aplicar'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 111
              Visible = True
            end
            item
              Color = clGradientInactiveCaption
              Expanded = False
              FieldName = 'DIFERENCIA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 102
              Visible = True
            end>
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 587
    Width = 861
    Align = alBottom
    ExplicitTop = 587
    ExplicitWidth = 861
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
    Top = 617
    Width = 861
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 617
    ExplicitWidth = 861
    inherited DBStatusLabel1: TJvDBStatusLabel
      Visible = False
    end
    inherited sbEstado: TStatusBar
      Width = 699
      ExplicitWidth = 699
    end
  end
  inherited ActionList1: TActionList
    Left = 400
    Top = 48
    object BuscarProvee: TAction
      Caption = 'BuscarProvee'
      OnExecute = BuscarProveeExecute
    end
    object ReHaceMovCC: TAction
      Caption = 'Re Hace MovCC'
      OnExecute = ReHaceMovCCExecute
    end
    object BorraApliDeCpbte: TAction
      Caption = 'Borrar Aplicaciones Del Comprobante'
      OnExecute = BorraApliDeCpbteExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 224
    Top = 80
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
    Left = 496
    Top = 296
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 16
    Top = 648
  end
  inherited ComBuscadorBase: TComBuscador
    Top = 232
  end
  inherited QBrowse2: TFDQuery
    Left = 88
    Top = 640
  end
  inherited QUltimoCodigo2: TFDQuery
    Top = 640
  end
  object DSIntegridadFc: TDataSource
    DataSet = CDSIntegridadFC
    Left = 368
    Top = 256
  end
  object DSIntegridadNC: TDataSource
    DataSet = CDSIntegridadNC
    Left = 352
    Top = 312
  end
  object DSPProveedor: TDataSetProvider
    DataSet = DMMain_2.QProveedores
    Left = 608
    Top = 432
  end
  object CDSProveedor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPProveedor'
    Left = 688
    Top = 432
    object CDSProveedorCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSProveedorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 35
    end
    object CDSProveedorRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
  end
  object DSIntegridadOp: TDataSource
    DataSet = CDSIntegridadOp
    Left = 384
    Top = 552
  end
  object DSIntegridadAjustesDebe: TDataSource
    DataSet = CDSIntegridadAjustesDebe
    Left = 360
    Top = 392
  end
  object DSIntegridadAjustesHaber: TDataSource
    DataSet = CDSIntegridadAjustesHaber
    Left = 480
    Top = 432
  end
  object DSControlCtaCte: TDataSource
    DataSet = CDSControlCtaCte
    Left = 760
    Top = 464
  end
  object pmBorradoApl: TPopupMenu
    Left = 404
    Top = 144
    object BorraApliDeRecibo1: TMenuItem
      Action = BorraApliDeCpbte
    end
  end
  object popMenuFc: TPopupMenu
    Left = 156
    Top = 144
    object ReHacerMovimientoCCte1: TMenuItem
      Action = ReHaceMovCC
    end
  end
  object CDSIntegridadFC: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPIntegridadFc'
    Left = 270
    Top = 256
    object CDSIntegridadFCID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSIntegridadFCCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSIntegridadFCNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSIntegridadFCTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSIntegridadFCCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSIntegridadFCNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSIntegridadFCANULADO: TStringField
      DisplayLabel = 'A'
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSIntegridadFCIDMOVCTACTE: TIntegerField
      DisplayLabel = 'Id.MovCC'
      FieldName = 'IDMOVCTACTE'
      Origin = 'ID_MOVCCCOMPRA'
      ProviderFlags = []
    end
    object CDSIntegridadFCDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object CDSIntegridadFCINGRESA_A_CTACTE: TStringField
      DisplayLabel = 'CC'
      FieldName = 'INGRESA_A_CTACTE'
      Origin = 'INGRESA_A_CTACTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSIntegridadFCTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadFCDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadFCHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadFCSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadFCIMPORTEAPLICADO: TFloatField
      DisplayLabel = 'Aplicado'
      FieldName = 'IMPORTEAPLICADO'
      Origin = 'IMPORTEAPLICADO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSPIntegridadFc: TDataSetProvider
    DataSet = QIntegridadFc
    Left = 182
    Top = 256
  end
  object CDSIntegridadNC: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPIntegridadNC'
    Left = 272
    Top = 328
    object CDSIntegridadNCID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSIntegridadNCCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSIntegridadNCNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSIntegridadNCTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSIntegridadNCCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSIntegridadNCNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSIntegridadNCANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSIntegridadNCIDMOVCTACTE: TIntegerField
      FieldName = 'IDMOVCTACTE'
      Origin = 'ID_MOVCCCOMPRA'
      ProviderFlags = []
    end
    object CDSIntegridadNCDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object CDSIntegridadNCDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadNCHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadNCSUMAAPLICACIONES: TFloatField
      DisplayLabel = 'Aplicac.'
      FieldName = 'SUMAAPLICACIONES'
      Origin = 'SUMAAPLICACIONES'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadNCDIFERENCIACONAPLICACIONES: TFloatField
      DisplayLabel = 'Dif.Apl.'
      FieldName = 'DIFERENCIACONAPLICACIONES'
      Origin = 'DIFERENCIACONAPLICACIONES'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadNCTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSPIntegridadNC: TDataSetProvider
    DataSet = QIntegridadNC
    Left = 200
    Top = 320
  end
  object CDSIntegridadAjustesDebe: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPIntegridadAjustesDebe'
    Left = 288
    Top = 408
    object CDSIntegridadAjustesDebeID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSIntegridadAjustesDebeCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object CDSIntegridadAjustesDebeTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSIntegridadAjustesDebeCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSIntegridadAjustesDebeNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSIntegridadAjustesDebeIDMOVCTACTE: TIntegerField
      FieldName = 'IDMOVCTACTE'
      Origin = 'ID_MOVCCCOMPRA'
      ProviderFlags = []
    end
    object CDSIntegridadAjustesDebeDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object CDSIntegridadAjustesDebeDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadAjustesDebeHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadAjustesDebeSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadAjustesDebeIMPORTEAPLICADO: TFloatField
      DisplayLabel = 'Imp.Aplicado'
      FieldName = 'IMPORTEAPLICADO'
      Origin = 'IMPORTEAPLICADO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadAjustesDebeTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'DEBE'
    end
  end
  object DSPIntegridadAjustesDebe: TDataSetProvider
    DataSet = QIntegridadAjustesDebe
    Left = 192
    Top = 400
  end
  object CDSIntegridadAjustesHaber: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPIntegridadAjustesHaber'
    Left = 336
    Top = 480
    object CDSIntegridadAjustesHaberCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object CDSIntegridadAjustesHaberTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSIntegridadAjustesHaberCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSIntegridadAjustesHaberNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSIntegridadAjustesHaberIDMOVCTACTE: TIntegerField
      FieldName = 'IDMOVCTACTE'
      Origin = 'ID_MOVCCCOMPRA'
      ProviderFlags = []
    end
    object CDSIntegridadAjustesHaberDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object CDSIntegridadAjustesHaberTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadAjustesHaberDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadAjustesHaberHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadAjustesHaberSUMAAPLICAIONES: TFloatField
      DisplayLabel = 'Aplicado'
      FieldName = 'SUMAAPLICAIONES'
      Origin = 'SUMAAPLICAIONES'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadAjustesHaberDIFERENCIACONAPLICACIONES: TFloatField
      DisplayLabel = 'Dif.Aplic.'
      FieldName = 'DIFERENCIACONAPLICACIONES'
      Origin = 'DIFERENCIACONAPLICACIONES'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadAjustesHaberID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSPIntegridadAjustesHaber: TDataSetProvider
    DataSet = QIntegridadAjustesHaber
    Left = 192
    Top = 472
  end
  object CDSControlCtaCte: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'limite'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'limite'
        ParamType = ptInput
      end>
    ProviderName = 'DSPControlCtaCte'
    Left = 784
    Top = 544
    object CDSControlCtaCteCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSControlCtaCteNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 45
    end
    object CDSControlCtaCteSALDOCTACTE: TFloatField
      DisplayLabel = 'Saldo Cta.CTe'
      FieldName = 'SALDOCTACTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSControlCtaCteSALDOAPLICACIONES: TFloatField
      DisplayLabel = 'Saldo Apli.'
      FieldName = 'SALDOAPLICACIONES'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSControlCtaCteAPLICACIONESPENDI: TFloatField
      DisplayLabel = 'Apl.Pendientes'
      FieldName = 'APLICACIONESPENDI'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSControlCtaCteDIFERENCIA: TFloatField
      DisplayLabel = 'Difer.'
      FieldName = 'DIFERENCIA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSPControlCtaCte: TDataSetProvider
    DataSet = QControlCtaCte
    Left = 696
    Top = 536
  end
  object spReHaceMovIBX: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CPBTE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 2
        Name = 'CPBTE_TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 2
        Name = 'CPBTE_CLASE'
        ParamType = ptInput
      end>
    SQLConnection = DMMain_2.SQLConectionMain
    StoredProcName = 'REHACE_MOV_CCCOMPRA'
    Left = 648
    Top = 256
  end
  object CDSIntegridadOp: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPIntegridadOp'
    Left = 296
    Top = 544
    object CDSIntegridadOpID_OP: TIntegerField
      FieldName = 'ID_OP'
      Origin = 'ID_OP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSIntegridadOpCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object CDSIntegridadOpNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSIntegridadOpTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSIntegridadOpCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSIntegridadOpNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSIntegridadOpANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Size = 1
    end
    object CDSIntegridadOpIDMOVCTACTE: TIntegerField
      FieldName = 'IDMOVCTACTE'
      Origin = 'ID_MOVCCCOMPRA'
      ProviderFlags = []
    end
    object CDSIntegridadOpDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object CDSIntegridadOpTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadOpDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadOpHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadOpSUMAAPLICAIONES: TFloatField
      DisplayLabel = 'Aplicado'
      FieldName = 'SUMAAPLICAIONES'
      Origin = 'SUMAAPLICAIONES'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadOpDIFERENCIACONAPLICACIONES: TFloatField
      DisplayLabel = 'Dif.Apli.'
      FieldName = 'DIFERENCIACONAPLICACIONES'
      Origin = 'DIFERENCIACONAPLICACIONES'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSPIntegridadOp: TDataSetProvider
    DataSet = QIntegridadOp
    Left = 168
    Top = 568
  end
  object QIntegridadAjustesDebe: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select aj.id,aj.codigo,aj.tipocpbte,aj.clasecpbte,aj.nrocpbte,'
      '       aj.debe as Total,mcv.id_movcccompra as IdMovCTACTE,'
      
        '         mcv.debe,mcv.haber,mcv.detalle,mcv.saldo,sum(ma.importe' +
        ') as ImporteAplicado from ajuste_cc_provee aj'
      
        '  left join movcccompra mcv on mcv.id_cpbte=aj.id and mcv.tipocp' +
        'bte=aj.tipocpbte'
      
        '  left join movaplicacccompra ma on ma.aplica_id_cpbte=aj.id and' +
        ' ma.aplica_tipocpbte=aj.tipocpbte and ma.aplica_clasecpbte=aj.cl' +
        'asecpbte'
      
        '  where aj.tipocpbte<>'#39'FO'#39' and ( (aj.codigo=:codigo) or (:codigo' +
        ' = '#39'******'#39') ) and aj.haber=0'
      'group by aj.id,aj.codigo,aj.tipocpbte,aj.clasecpbte,aj.nrocpbte,'
      '       aj.debe,mcv.id_movcccompra,'
      '         mcv.debe,mcv.haber,mcv.detalle,mcv.saldo'
      '  order by aj.codigo')
    Left = 84
    Top = 384
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QIntegridadFc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select fc.id_fc,fc.codigo,fc.nombre, fc.tipocpbte,fc.clasecpbte,' +
        'fc.nrocpbte,'
      
        '       fc.anulado,fc.total,fc.INGRESA_A_CTACTE, mcv.id_movcccomp' +
        'ra as IdMovCTACTE,'
      
        '         mcv.debe,mcv.haber,mcv.detalle,mcv.saldo,sum(ma.importe' +
        ') as ImporteAplicado from fccompcab fc'
      
        '  left join movcccompra mcv on mcv.id_cpbte=fc.id_fc and mcv.tip' +
        'ocpbte=fc.tipocpbte'
      
        '  left join movaplicacccompra ma on ma.aplica_id_cpbte=fc.id_fc ' +
        'and ma.aplica_tipocpbte=fc.tipocpbte and ma.aplica_clasecpbte=fc' +
        '.clasecpbte'
      
        '  where Not(fc.tipocpbte in ('#39'FO'#39','#39'NC'#39')) and ( (fc.codigo=:codig' +
        'o) or (:codigo = '#39'******'#39') ) and fc.INGRESA_A_CTACTE='#39'S'#39
      
        'group by fc.id_fc,fc.codigo,fc.nombre, fc.tipocpbte,fc.clasecpbt' +
        'e,fc.nrocpbte,'
      
        '       fc.anulado,fc.total,fc.INGRESA_A_CTACTE, mcv.id_movcccomp' +
        'ra,'
      '         mcv.debe,mcv.haber,mcv.detalle,mcv.saldo'
      '  order by fc.codigo'
      ' '
      ' ')
    Left = 76
    Top = 256
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QIntegridadNC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select fc.id_fc ,fc.codigo,fc.nombre,fc.tipocpbte,fc.clasecpbte,'
      
        '       fc.nrocpbte,fc.anulado,fc.total,mcv.id_movcccompra as IdM' +
        'ovCTACTE,'
      
        '       mcv.debe,mcv.haber, mcv.detalle,sum(ma.importe) as SumaAp' +
        'licaciones,'
      
        '       (sum(ma.importe)-fc.total) as DiferenciaConAplicaciones f' +
        'rom fccompcab fc'
      
        'left join movcccompra mcv on mcv.id_cpbte=fc.id_fc and mcv.tipoc' +
        'pbte=fc.tipocpbte'
      
        'left join movaplicacccompra ma on ma.id_cpbte=fc.id_fc and ma.ti' +
        'pocpbte=fc.tipocpbte'
      
        '  where (fc.codigo=:codigo or ( :codigo = '#39'******'#39' )) and fc.tip' +
        'ocpbte='#39'NC'#39' and fc.INGRESA_A_CTACTE='#39'S'#39
      'group by fc.id_fc,fc.codigo,fc.nombre,'
      
        '       fc.tipocpbte,fc.clasecpbte,fc.nrocpbte,fc.anulado,fc.tota' +
        'l,'
      '       mcv.id_movcccompra, mcv.debe,mcv.haber, mcv.detalle')
    Left = 92
    Top = 328
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QIntegridadAjustesHaber: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select aj.id,aj.codigo,'
      
        '       aj.tipocpbte,aj.clasecpbte,aj.nrocpbte,aj.haber as Total,' +
        'mcv.id_movcccompra as IdMovCTACTE,'
      
        '       mcv.debe,mcv.haber, mcv.detalle,sum(ma.importe) as SumaAp' +
        'licaiones,(sum(ma.importe)-aj.haber) as DiferenciaConAplicacione' +
        's from ajuste_cc_provee aj'
      
        'left join movcccompra mcv on mcv.id_cpbte=aj.id and mcv.tipocpbt' +
        'e=aj.tipocpbte'
      
        'left join movaplicacccompra ma on ma.id_cpbte=aj.id and ma.tipoc' +
        'pbte=aj.tipocpbte'
      
        '  where (aj.codigo=:codigo or ( :codigo = '#39'******'#39' )) and aj.deb' +
        'e=0'
      'group by aj.id,aj.codigo,'
      
        '       aj.tipocpbte,aj.clasecpbte,aj.nrocpbte,aj.haber,mcv.id_mo' +
        'vcccompra,'
      '       mcv.debe,mcv.haber, mcv.detalle')
    Left = 68
    Top = 472
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QPasa_A_CC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update fccompcab f set f.ingresa_a_ctacte='#39'S'#39' Where f.id_fc=:id')
    Left = 704
    Top = 640
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QIntegridadOp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select op.id_op,op.codigo,op.nombre,'
      
        '       op.tipocpbte,op.clasecpbte,op.nrocpbte,op.anulado,op.tota' +
        'l,mcv.id_movcccompra as IdMovCTACTE,'
      
        '       mcv.debe,mcv.haber, mcv.detalle,sum(ma.importe) as SumaAp' +
        'licaiones,(sum(ma.importe)-op.total) as DiferenciaConAplicacione' +
        's from ordenpago op'
      
        'left join movcccompra mcv on mcv.id_cpbte=op.id_op and mcv.tipoc' +
        'pbte=op.tipocpbte'
      
        'left join movaplicacccompra ma on ma.id_cpbte=op.id_op and ma.ti' +
        'pocpbte=op.tipocpbte'
      '  where (op.codigo=:codigo or ( :codigo = '#39'******'#39' ))'
      'group by op.id_op,op.codigo,op.nombre,'
      
        '       op.tipocpbte,op.clasecpbte,op.nrocpbte,op.anulado,op.tota' +
        'l,mcv.id_movcccompra,'
      '       mcv.debe,mcv.haber, mcv.detalle ')
    Left = 96
    Top = 545
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QBorrarAplicacionDelCpbteFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'delete from movaplicacccompra ma where ma.id_cpbte=:id and ma.ti' +
        'pocpbte=:tipo and ma.clasecpbte=:clase')
    Left = 748
    Top = 184
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Name = 'CLASE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
  end
  object QControlCtaCte: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from CONTROL_INTEGRIDAD_COMPRAS'
      'where (diferencia >:limite ) or ( :limite = 0 )'
      'order by diferencia desc')
    Left = 608
    Top = 545
    ParamData = <
      item
        Position = 1
        Name = 'limite'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'limite'
        DataType = ftFloat
        ParamType = ptInput
      end>
  end
  object spReHaceMovFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'REHACE_MOV_CCCOMPRA'
    Left = 644
    Top = 328
    ParamData = <
      item
        Position = 1
        Name = 'CPBTE_ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'CPBTE_TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 3
        Name = 'CPBTE_CLASE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
  end
end
