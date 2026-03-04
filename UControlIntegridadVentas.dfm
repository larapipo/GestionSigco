inherited FormControlIntegridad: TFormControlIntegridad
  Left = 190
  Top = 58
  Caption = 'Control de Integridad en Ventas'
  ClientHeight = 675
  ClientWidth = 1062
  StyleElements = [seFont, seClient, seBorder]
  OnResize = FormResize
  ExplicitWidth = 1080
  ExplicitHeight = 716
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1062
    Height = 622
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1062
    ExplicitHeight = 622
    object pcDatos: TPageControl
      Left = 0
      Top = 0
      Width = 1062
      Height = 622
      ActivePage = pag1
      Align = alClient
      PopupMenu = pmBorradoApl
      TabOrder = 0
      object pag1: TTabSheet
        Caption = 'Facturas'
        DesignSize = (
          1054
          594)
        object Label1: TLabel
          Left = 8
          Top = 2
          Width = 32
          Height = 13
          Caption = 'Cliente'
        end
        object Bevel1: TBevel
          Left = 8
          Top = 51
          Width = 385
          Height = 14
          Shape = bsBottomLine
        end
        object Label2: TLabel
          Left = 194
          Top = 45
          Width = 36
          Height = 13
          Caption = 'Factura'
        end
        object Bevel2: TBevel
          Left = 416
          Top = 51
          Width = 609
          Height = 14
          Shape = bsBottomLine
        end
        object Label3: TLabel
          Left = 693
          Top = 43
          Width = 50
          Height = 13
          Caption = 'Mov.C.Cte'
        end
        object Label12: TLabel
          Left = 290
          Top = 564
          Width = 6
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = '='
          ExplicitTop = 603
        end
        object Label11: TLabel
          Left = 146
          Top = 564
          Width = 44
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'N.Credito'
          ExplicitTop = 603
        end
        object Label10: TLabel
          Left = 147
          Top = 537
          Width = 41
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Facturas'
          ExplicitTop = 576
        end
        object JvDBStatusLabel1: TJvDBStatusLabel
          Left = 693
          Top = 2
          Width = 140
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
        object edNombreCliente: TEdit
          Left = 88
          Top = 18
          Width = 257
          Height = 21
          Color = clInfoBk
          Enabled = False
          TabOrder = 1
        end
        object btFc: TBitBtn
          Left = 974
          Top = 537
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
          TabOrder = 3
          OnClick = btFcClick
        end
        object dbgFacturas: TJvDBGrid
          Left = 0
          Top = 71
          Width = 1049
          Height = 449
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DSIntegridadFc
          DefaultDrawing = False
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = popMenuFc
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgFacturasDrawColumnCell
          OnDblClick = VerCpbteExecute
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
              FieldName = 'FECHAVTA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 84
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
              Alignment = taCenter
              Expanded = False
              FieldName = 'NRO_CUOTA'
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
              Width = 18
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
              FieldName = 'FECHAVTA_1'
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
              Width = 117
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
              Width = 69
              Visible = True
            end
            item
              Color = clYellow
              Expanded = False
              FieldName = 'IMPORTEAPLICADO'
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
        object ceCliente: TJvComboEdit
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
          OnButtonClick = BuscarClienteExecute
          OnKeyDown = ceClienteKeyDown
        end
        object edFactura: TJvCalcEdit
          Left = 194
          Top = 534
          Width = 89
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 4
          DecimalPlacesAlwaysShown = False
        end
        object edNCredito: TJvCalcEdit
          Left = 194
          Top = 561
          Width = 89
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 5
          DecimalPlacesAlwaysShown = False
        end
        object edTotal: TJvCalcEdit
          Left = 304
          Top = 561
          Width = 89
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 6
          DecimalPlacesAlwaysShown = False
        end
        object edDebe: TJvCalcEdit
          Left = 580
          Top = 537
          Width = 89
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 7
          DecimalPlacesAlwaysShown = False
        end
        object edHaber: TJvCalcEdit
          Left = 675
          Top = 537
          Width = 93
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 8
          DecimalPlacesAlwaysShown = False
        end
        object edSaldo: TJvCalcEdit
          Left = 774
          Top = 537
          Width = 89
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 9
          DecimalPlacesAlwaysShown = False
        end
        object edAplicado: TJvCalcEdit
          Left = 870
          Top = 537
          Width = 89
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 10
          DecimalPlacesAlwaysShown = False
        end
        object chCuotaUno: TCheckBox
          Left = 19
          Top = 533
          Width = 94
          Height = 17
          Anchors = [akLeft, akBottom]
          Caption = 'Suma Cta (1)  '
          TabOrder = 11
          OnClick = chCuotaUnoClick
        end
      end
      object pag2: TTabSheet
        Caption = 'Recibos'
        ImageIndex = 1
        DesignSize = (
          1054
          594)
        object Label4: TLabel
          Left = 189
          Top = 15
          Width = 34
          Height = 13
          Caption = 'Recibo'
        end
        object Bevel3: TBevel
          Left = 16
          Top = 25
          Width = 333
          Height = 14
          Shape = bsBottomLine
        end
        object Label5: TLabel
          Left = 558
          Top = 15
          Width = 50
          Height = 13
          Caption = 'Mov.C.Cte'
        end
        object Bevel4: TBevel
          Left = 355
          Top = 25
          Width = 478
          Height = 14
          Shape = bsBottomLine
        end
        object Label8: TLabel
          Left = 884
          Top = 15
          Width = 60
          Height = 13
          Caption = 'Aplicaciones'
        end
        object Bevel7: TBevel
          Left = 842
          Top = 23
          Width = 151
          Height = 14
          Shape = bsBottomLine
        end
        object JvDBStatusLabel2: TJvDBStatusLabel
          Left = 694
          Top = -1
          Width = 140
          Height = 16
          DataSource = DSIntegridadRc
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
        object btRc: TBitBtn
          Tag = 1
          Left = 758
          Top = 564
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
          OnClick = btRcClick
        end
        object chTodoMovRec: TCheckBox
          Left = 19
          Top = 531
          Width = 129
          Height = 17
          Anchors = [akLeft, akBottom]
          Caption = 'Solo con Diferencias'
          TabOrder = 2
          OnClick = chTodoMovRecClick
        end
        object dbgRecibos: TJvDBGrid
          Left = 3
          Top = 45
          Width = 1048
          Height = 466
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DSIntegridadRc
          DefaultDrawing = False
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = pmBorradoApl
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgRecibosDrawColumnCell
          OnDblClick = VerCpbteExecute
          OnTitleBtnClick = dbgRecibosTitleBtnClick
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
              FieldName = 'FECHA'
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
              FieldName = 'NROCPBTE'
              Title.Alignment = taCenter
              Title.Caption = 'Nro.Cpbte'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 113
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
              FieldName = 'FECHAVTA'
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
              Width = 150
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
              Width = 78
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
              Width = 80
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
              Width = 76
              Visible = True
            end>
        end
        object edTotalAplRec: TJvCalcEdit
          Left = 744
          Top = 529
          Width = 89
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 3
          DecimalPlacesAlwaysShown = False
        end
        object edTotalRec: TJvCalcEdit
          Left = 154
          Top = 529
          Width = 89
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 4
          DecimalPlacesAlwaysShown = False
        end
        object edTotalHaberRec: TJvCalcEdit
          Left = 649
          Top = 529
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
          1054
          594)
        object Label6: TLabel
          Left = 157
          Top = 15
          Width = 59
          Height = 13
          Caption = 'N.de Credito'
        end
        object Bevel5: TBevel
          Left = 16
          Top = 25
          Width = 309
          Height = 14
          Shape = bsBottomLine
        end
        object Label7: TLabel
          Left = 547
          Top = 15
          Width = 50
          Height = 13
          Caption = 'Mov.C.Cte'
        end
        object Bevel6: TBevel
          Left = 331
          Top = 27
          Width = 486
          Height = 14
          Shape = bsBottomLine
        end
        object Label9: TLabel
          Left = 867
          Top = 15
          Width = 60
          Height = 13
          Caption = 'Aplicaciones'
        end
        object Bevel8: TBevel
          Left = 841
          Top = 27
          Width = 120
          Height = 14
          Shape = bsBottomLine
        end
        object JvDBStatusLabel3: TJvDBStatusLabel
          Left = 695
          Top = 0
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
        object DBText1: TDBText
          Left = 11
          Top = 530
          Width = 65
          Height = 17
          Anchors = [akLeft, akBottom]
          DataField = 'ID_FC'
          DataSource = DSIntegridadFc
          ExplicitTop = 497
        end
        object DBText2: TDBText
          Left = 16
          Top = 566
          Width = 425
          Height = 17
          Anchors = [akLeft, akBottom]
          DataField = 'OBSERVACION1'
          DataSource = DSIntegridadNC
          ExplicitTop = 493
        end
        object BitBtn1: TBitBtn
          Tag = 1
          Left = 742
          Top = 564
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
          OnClick = BitBtn1Click
        end
        object chTodoMovNC: TCheckBox
          Left = 568
          Top = 565
          Width = 129
          Height = 17
          Anchors = [akLeft, akBottom]
          Caption = 'Solo con Diferencias'
          TabOrder = 2
          OnClick = chTodoMovNCClick
        end
        object dbgNotasCredito: TJvDBGrid
          Left = 2
          Top = 47
          Width = 1023
          Height = 477
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DSIntegridadNC
          DefaultDrawing = False
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = pmBorradoApl
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgNotasCreditoDrawColumnCell
          OnDblClick = VerCpbteExecute
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
              FieldName = 'FECHAVTA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 66
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
              Width = 100
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
              FieldName = 'FECHAVTA_1'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 116
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
              Width = 63
              Visible = True
            end>
        end
        object edTotalNC: TJvCalcEdit
          Left = 165
          Top = 532
          Width = 89
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 3
          DecimalPlacesAlwaysShown = False
        end
        object edTotalNcHaber: TJvCalcEdit
          Left = 656
          Top = 530
          Width = 89
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 4
          DecimalPlacesAlwaysShown = False
        end
        object edTotalNCAplica: TJvCalcEdit
          Left = 759
          Top = 530
          Width = 89
          Height = 21
          DisplayFormat = ',0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 5
          DecimalPlacesAlwaysShown = False
        end
      end
      object Pag4: TTabSheet
        Caption = 'Ajustes (Debe)'
        ImageIndex = 4
        DesignSize = (
          1054
          594)
        object btAjustesDebe: TBitBtn
          Left = 758
          Top = 547
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
          Top = 32
          Width = 833
          Height = 499
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DSIntegridadAjustesDebe
          DefaultDrawing = False
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = popMenuFc
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgAjusteDebeDrawColumnCell
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
              Width = 117
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'DEBE'
              Title.Alignment = taCenter
              Title.Caption = 'Debe'
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
              Title.Caption = 'Haber'
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
              Title.Caption = 'Saldo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 69
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
              Visible = True
            end>
        end
      end
      object Pag5: TTabSheet
        Caption = 'Ajustes (Haber)'
        ImageIndex = 5
        DesignSize = (
          1054
          594)
        object btAjusteHaber: TBitBtn
          Tag = 1
          Left = 758
          Top = 546
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
          Left = 3
          Top = 31
          Width = 830
          Height = 509
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DSIntegridadAjustesHaber
          DefaultDrawing = False
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = pmBorradoApl
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgAjusteHaberDrawColumnCell
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
              Title.Caption = 'Debe'
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
              Title.Caption = 'Haber'
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
      end
      object pag6: TTabSheet
        Caption = 'Anulacion Recibos'
        ImageIndex = 6
        DesignSize = (
          1054
          594)
        object BitBtn2: TBitBtn
          Tag = 1
          Left = 760
          Top = 546
          Width = 75
          Height = 27
          Hint = 'Nuevo Registro'
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
          TabOrder = 0
          OnClick = BitBtn2Click
        end
        object dbgAnulaciones: TJvDBGrid
          Left = 3
          Top = 40
          Width = 832
          Height = 500
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DSIntegridadAnulacionRec
          DefaultDrawing = False
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = popMenuFc
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgAnulacionesDrawColumnCell
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
              Expanded = False
              FieldName = 'ANULADO'
              Title.Alignment = taCenter
              Title.Caption = 'A'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 18
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
              Width = 117
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'DEBE'
              Title.Alignment = taCenter
              Title.Caption = 'Debe'
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
              Title.Caption = 'Haber'
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
              Title.Caption = 'Saldo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 69
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
              Width = 87
              Visible = True
            end>
        end
      end
      object pag7: TTabSheet
        Caption = 'CtaCte Vs Aplica.'
        ImageIndex = 2
        DesignSize = (
          1054
          594)
        object Button1: TButton
          Left = 640
          Top = 559
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = 'Buscar'
          TabOrder = 1
          OnClick = Button1Click
        end
        object seLimite: TSpinEdit
          Left = 520
          Top = 561
          Width = 105
          Height = 22
          Anchors = [akLeft, akBottom]
          MaxValue = 0
          MinValue = 0
          TabOrder = 2
          Value = 0
        end
        object dbgControlCC: TJvDBGrid
          Left = 3
          Top = 9
          Width = 734
          Height = 535
          Anchors = [akLeft, akTop, akBottom]
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
              Width = 90
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
              Width = 90
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
              Width = 90
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
              Width = 80
              Visible = True
            end>
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Control Mov -> Fac.'
        ImageIndex = 7
        DesignSize = (
          1054
          594)
        object JvDBGrid1: TJvDBGrid
          Left = 0
          Top = 24
          Width = 850
          Height = 527
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DSVerificaMOV_FC
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
              Color = clAqua
              Expanded = False
              FieldName = 'ID_MOVCCVTA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 47
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'TIPOCPBTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 24
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'CLASECPBTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 22
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'FECHAVTA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 110
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
              Width = 88
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
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IDFACTURA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 58
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
              Width = 22
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
              Width = 90
              Visible = True
            end
            item
              Color = clYellow
              Expanded = False
              FieldName = 'CONTROL'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 52
              Visible = True
            end>
        end
        object Button2: TButton
          Left = 775
          Top = 557
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = 'Ver'
          TabOrder = 1
          OnClick = Button2Click
        end
      end
      object Fc_Mov: TTabSheet
        Caption = 'Verifica Fc->Mov'
        ImageIndex = 8
        DesignSize = (
          1054
          594)
        object dbgFc_Mov: TJvDBGrid
          Left = 3
          Top = 16
          Width = 833
          Height = 523
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DSFC_Mov
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = popMenuFc
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = VerCpbteExecute
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_FC'
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
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
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
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
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
              Width = 38
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
              Width = 36
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
              Width = 94
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
              Width = 104
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MUESTRADEBECC'
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
              FieldName = 'MUESTRADIF'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
        object BitBtn3: TBitBtn
          Tag = 1
          Left = 752
          Top = 553
          Width = 75
          Height = 27
          Hint = 'Nuevo Registro'
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
          OnClick = BitBtn3Click
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'TabSheet2'
        ImageIndex = 9
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 622
    Width = 1062
    Align = alBottom
    ExplicitTop = 622
    ExplicitWidth = 1062
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
      Action = nil
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
    Top = 652
    Width = 1062
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 652
    ExplicitWidth = 1062
    inherited sbEstado: TStatusBar
      Width = 973
      ExplicitWidth = 973
    end
  end
  object StringGrid1: TStringGrid [3]
    Left = 632
    Top = 400
    Width = 1
    Height = 33
    TabOrder = 3
  end
  inherited ActionList1: TActionList
    Left = 408
    Top = 112
    object BuscarCliente: TAction
      Caption = 'BuscarCliente'
      OnExecute = BuscarClienteExecute
    end
    object BorraApliDeCpbte: TAction
      Caption = 'Borrar Aplicaciones Del Comprobante'
      OnExecute = BorraApliDeCpbteExecute
    end
    object ReHacemovcc: TAction
      Caption = 'Re-Hacer Movimiento C.Cte'
      OnExecute = ReHacemovccExecute
    end
    object VerCpbte: TAction
      Caption = 'VerCpbte'
      OnExecute = VerCpbteExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 528
    Top = 120
  end
  inherited ImageList1: TImageList
    Left = 288
    Top = 144
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
    Left = 48
    Top = 600
  end
  inherited QBrowse2: TFDQuery
    Left = 24
    Top = 160
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 24
    Top = 216
  end
  object DSPClientes: TDataSetProvider
    DataSet = DMMain_FD.QClientes
    Left = 560
    Top = 192
  end
  object CDSClientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPClientes'
    Left = 616
    Top = 192
    object CDSClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
  end
  object DSIntegridadFc: TDataSource
    DataSet = CDSIntegridadFc
    Left = 368
    Top = 200
  end
  object DSIntegridadRc: TDataSource
    DataSet = CDSIntegridadRc
    Left = 336
    Top = 456
  end
  object DSControlCtaCte: TDataSource
    DataSet = CDSControlCtaCte
    Left = 712
    Top = 528
  end
  object DSIntegridadNC: TDataSource
    DataSet = CDSIntegridadNC
    Left = 344
    Top = 384
  end
  object pmBorradoApl: TPopupMenu
    Left = 916
    Top = 112
    object BorraApliDeRecibo1: TMenuItem
      Action = BorraApliDeCpbte
    end
  end
  object popMenuFc: TPopupMenu
    Left = 892
    Top = 48
    object ReHacerMovimientoCCte1: TMenuItem
      Action = ReHacemovcc
    end
  end
  object DSIntegridadAjustesDebe: TDataSource
    DataSet = CDSIntegridadAjustesDebe
    Left = 368
    Top = 504
  end
  object DSIntegridadAjustesHaber: TDataSource
    DataSet = CDSIntegridadAjustesHaber
    Left = 352
    Top = 568
  end
  object DSIntegridadAnulacionRec: TDataSource
    DataSet = CDSIntegridadAnulacionRec
    Left = 344
    Top = 320
  end
  object QIntegridadAnulacionRec: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select ar.id_anulacion,ar.codigo,ar.nombre, ar.tipocpbte,ar.clas' +
        'ecpbte,ar.nrocpbte,'
      '       ar.total,mcv.id_movccvta as IdMovCTACTE,'
      
        '         mcv.debe,mcv.haber,mcv.detalle,mcv.saldo,sum(ma.importe' +
        ') as ImporteAplicado from anulacion_recibo ar'
      
        '  left join movccvta mcv on mcv.id_cpbte=ar.id_anulacion and mcv' +
        '.tipocpbte=ar.tipocpbte'
      
        '  left join movaplicaccvta ma on ma.aplica_id_cpbte=ar.id_anulac' +
        'ion and ma.aplica_tipocpbte=ar.tipocpbte and ma.aplica_clasecpbt' +
        'e=ar.clasecpbte'
      
        '  where ar.tipocpbte='#39'XR'#39' and ( (ar.codigo=:codigo) or (:codigo ' +
        '= '#39'******'#39') )'
      
        'group by ar.id_anulacion,ar.codigo,ar.nombre, ar.tipocpbte,ar.cl' +
        'asecpbte,ar.nrocpbte,'
      '       ar.total,mcv.id_movccvta,'
      '         mcv.debe,mcv.haber,mcv.detalle,mcv.saldo'
      '  order by ar.codigo')
    Left = 88
    Top = 320
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object CDSIntegridadAnulacionRec: TClientDataSet
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
    ProviderName = 'DSPIntegridadAnulacionRec'
    Left = 256
    Top = 328
    object CDSIntegridadAnulacionRecID_ANULACION: TIntegerField
      FieldName = 'ID_ANULACION'
      Required = True
    end
    object CDSIntegridadAnulacionRecCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSIntegridadAnulacionRecNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSIntegridadAnulacionRecTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 4
    end
    object CDSIntegridadAnulacionRecCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 4
    end
    object CDSIntegridadAnulacionRecNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object CDSIntegridadAnulacionRecTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSIntegridadAnulacionRecIDMOVCTACTE: TIntegerField
      FieldName = 'IDMOVCTACTE'
    end
    object CDSIntegridadAnulacionRecDEBE: TFloatField
      FieldName = 'DEBE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSIntegridadAnulacionRecHABER: TFloatField
      FieldName = 'HABER'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSIntegridadAnulacionRecDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSIntegridadAnulacionRecSALDO: TFloatField
      FieldName = 'SALDO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSIntegridadAnulacionRecIMPORTEAPLICADO: TFloatField
      FieldName = 'IMPORTEAPLICADO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object DSPIntegridadAnulacionRec: TDataSetProvider
    DataSet = QIntegridadAnulacionRec
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 160
    Top = 320
  end
  object CDSIntegridadFc: TClientDataSet
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
    Left = 256
    Top = 248
    object CDSIntegridadFcID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSIntegridadFcCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSIntegridadFcNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSIntegridadFcFECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha Fc'
      FieldName = 'FECHAVTA'
      Required = True
    end
    object CDSIntegridadFcTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSIntegridadFcCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSIntegridadFcNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSIntegridadFcANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSIntegridadFcIDMOVCTACTE: TIntegerField
      FieldName = 'IDMOVCTACTE'
      Origin = 'ID_MOVCCVTA'
      ProviderFlags = []
    end
    object CDSIntegridadFcFECHAVTA_1: TSQLTimeStampField
      DisplayLabel = 'Fecha Mov'
      FieldName = 'FECHAVTA_1'
      ReadOnly = True
    end
    object CDSIntegridadFcDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object CDSIntegridadFcNRO_CUOTA: TIntegerField
      DisplayLabel = 'Cuota'
      FieldName = 'NRO_CUOTA'
      Origin = 'NRO_CUOTA'
      ProviderFlags = []
    end
    object CDSIntegridadFcTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadFcOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 60
    end
    object CDSIntegridadFcDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadFcHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadFcSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadFcIMPORTEAPLICADO: TFloatField
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
    Left = 168
    Top = 256
  end
  object QBorrarAplicacionDelCpbte: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'delete from movaplicaccvta ma where ma.id_cpbte=:id and ma.tipoc' +
        'pbte=:tipo and ma.clasecpbte=:clase')
    Left = 488
    Top = 200
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'clase'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object spReHaceMov: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'REHACE_MOV_CCVTA'
    Left = 632
    Top = 280
    ParamData = <
      item
        Name = 'CPBTE_ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'CPBTE_TIPO'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end
      item
        Name = 'CPBTE_CLASE'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end>
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
    Left = 248
    Top = 384
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
      Origin = 'ID_MOVCCVTA'
      ProviderFlags = []
    end
    object CDSIntegridadNCDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object CDSIntegridadNCDIFERENCIACONAPLICACIONES: TFloatField
      FieldName = 'DIFERENCIACONAPLICACIONES'
      Origin = 'DIFERENCIACONAPLICACIONES'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSIntegridadNCTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      Required = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadNCOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 60
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
      FieldName = 'SUMAAPLICACIONES'
      Origin = 'SUMAAPLICACIONES'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadNCFECHAVTA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha'
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
    object CDSIntegridadNCFECHAVTA_1: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha Mov.'
      FieldName = 'FECHAVTA_1'
      Origin = 'FECHAVTA'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSPIntegridadNC: TDataSetProvider
    DataSet = QIntegridadNC
    Options = []
    Left = 160
    Top = 392
  end
  object CDSIntegridadRc: TClientDataSet
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
    ProviderName = 'DSPIntegridadRc'
    Left = 248
    Top = 440
    object CDSIntegridadRcID_RC: TIntegerField
      FieldName = 'ID_RC'
      Origin = 'ID_RC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSIntegridadRcCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSIntegridadRcNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSIntegridadRcTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSIntegridadRcCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSIntegridadRcNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSIntegridadRcANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Size = 1
    end
    object CDSIntegridadRcIDMOVCTACTE: TIntegerField
      FieldName = 'IDMOVCTACTE'
      Origin = 'ID_MOVCCVTA'
      ProviderFlags = []
    end
    object CDSIntegridadRcDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object CDSIntegridadRcFECHA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSIntegridadRcTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadRcFECHAVTA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha Mov'
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSIntegridadRcDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadRcHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadRcSUMAAPLICAIONES: TFloatField
      DisplayLabel = 'Sum Aplic.'
      FieldName = 'SUMAAPLICAIONES'
      Origin = 'SUMAAPLICAIONES'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIntegridadRcDIFERENCIACONAPLICACIONES: TFloatField
      FieldName = 'DIFERENCIACONAPLICACIONES'
      Origin = 'DIFERENCIACONAPLICACIONES'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSPIntegridadRc: TDataSetProvider
    DataSet = QIntegridadRc
    Options = []
    Left = 152
    Top = 440
  end
  object QIntegridadAjustesDebe: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select aj.id,aj.codigo,aj.tipocpbte,aj.clasecpbte,aj.nrocpbte,'
      '       aj.debe as Total,mcv.id_movccvta as IdMovCTACTE,'
      
        '         mcv.debe,mcv.haber,mcv.detalle,mcv.saldo,sum(ma.importe' +
        ') as ImporteAplicado from ajuste_cc_clientes aj'
      
        '  left join movccvta mcv on mcv.id_cpbte=aj.id and mcv.tipocpbte' +
        '=aj.tipocpbte'
      
        '  left join movaplicaccvta ma on ma.aplica_id_cpbte=aj.id and ma' +
        '.aplica_tipocpbte=aj.tipocpbte and ma.aplica_clasecpbte=aj.clase' +
        'cpbte'
      
        '  where aj.tipocpbte<>'#39'FO'#39' and ( (aj.codigo=:codigo) or (:codigo' +
        ' = '#39'******'#39') ) and aj.haber=0'
      'group by aj.id,aj.codigo,aj.tipocpbte,aj.clasecpbte,aj.nrocpbte,'
      '       aj.debe,mcv.id_movccvta,'
      '         mcv.debe,mcv.haber,mcv.detalle,mcv.saldo'
      '  order by aj.codigo')
    Left = 64
    Top = 488
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
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
    Left = 248
    Top = 512
    object CDSIntegridadAjustesDebeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSIntegridadAjustesDebeCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSIntegridadAjustesDebeTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 4
    end
    object CDSIntegridadAjustesDebeCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 4
    end
    object CDSIntegridadAjustesDebeNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSIntegridadAjustesDebeTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSIntegridadAjustesDebeIDMOVCTACTE: TIntegerField
      FieldName = 'IDMOVCTACTE'
    end
    object CDSIntegridadAjustesDebeDEBE: TFloatField
      FieldName = 'DEBE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSIntegridadAjustesDebeHABER: TFloatField
      FieldName = 'HABER'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSIntegridadAjustesDebeDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSIntegridadAjustesDebeSALDO: TFloatField
      FieldName = 'SALDO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSIntegridadAjustesDebeIMPORTEAPLICADO: TFloatField
      FieldName = 'IMPORTEAPLICADO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object DSPIntegridadAjustesDebe: TDataSetProvider
    DataSet = QIntegridadAjustesDebe
    Options = []
    Left = 176
    Top = 496
  end
  object QIntegridadAjustesHaber: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select aj.id,aj.codigo,'
      
        '       aj.tipocpbte,aj.clasecpbte,aj.nrocpbte,aj.haber as Total,' +
        'mcv.id_movccvta as IdMovCTACTE,'
      
        '       mcv.debe,mcv.haber, mcv.detalle,sum(ma.importe) as SumaAp' +
        'licaiones,(sum(ma.importe)-aj.haber) as DiferenciaConAplicacione' +
        's from ajuste_cc_clientes aj'
      
        'left join movccvta mcv on mcv.id_cpbte=aj.id and mcv.tipocpbte=a' +
        'j.tipocpbte'
      
        'left join movaplicaccvta ma on ma.id_cpbte=aj.id and ma.tipocpbt' +
        'e=aj.tipocpbte'
      
        '  where (aj.codigo=:codigo or ( :codigo = '#39'******'#39' )) and aj.deb' +
        'e=0'
      'group by aj.id,aj.codigo,'
      
        '       aj.tipocpbte,aj.clasecpbte,aj.nrocpbte,aj.haber,mcv.id_mo' +
        'vccvta,'
      '       mcv.debe,mcv.haber, mcv.detalle')
    Left = 72
    Top = 544
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
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
    Left = 248
    Top = 560
    object CDSIntegridadAjustesHaberID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSIntegridadAjustesHaberCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSIntegridadAjustesHaberTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 4
    end
    object CDSIntegridadAjustesHaberCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 4
    end
    object CDSIntegridadAjustesHaberNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSIntegridadAjustesHaberTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSIntegridadAjustesHaberIDMOVCTACTE: TIntegerField
      FieldName = 'IDMOVCTACTE'
    end
    object CDSIntegridadAjustesHaberDEBE: TFloatField
      FieldName = 'DEBE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSIntegridadAjustesHaberHABER: TFloatField
      FieldName = 'HABER'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSIntegridadAjustesHaberDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSIntegridadAjustesHaberSUMAAPLICAIONES: TFloatField
      FieldName = 'SUMAAPLICAIONES'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSIntegridadAjustesHaberDIFERENCIACONAPLICACIONES: TFloatField
      FieldName = 'DIFERENCIACONAPLICACIONES'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object DSPIntegridadAjustesHaber: TDataSetProvider
    DataSet = QIntegridadAjustesHaber
    Options = []
    Left = 168
    Top = 552
  end
  object QControlCtaCte: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from CONTROL_INTEGRIDAD_VENTAS'
      'where (diferencia >:limite ) or ( :limite = 0 )'
      'order by diferencia desc')
    Left = 504
    Top = 520
    ParamData = <
      item
        Name = 'limite'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'limite'
        DataType = ftFloat
        ParamType = ptInput
      end>
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
    Left = 648
    Top = 520
    object CDSControlCtaCteCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSControlCtaCteNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 45
    end
    object CDSControlCtaCteSALDOCTACTE: TFloatField
      FieldName = 'SALDOCTACTE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSControlCtaCteSALDOAPLICACIONES: TFloatField
      FieldName = 'SALDOAPLICACIONES'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSControlCtaCteAPLICACIONESPENDI: TFloatField
      FieldName = 'APLICACIONESPENDI'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSControlCtaCteDIFERENCIA: TFloatField
      DisplayLabel = 'Diferencia'
      FieldName = 'DIFERENCIA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object DSPControlCtaCte: TDataSetProvider
    DataSet = QControlCtaCte
    Options = []
    Left = 592
    Top = 512
  end
  object QVerificaMOV_FC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select m.id_movccvta,m.tipocpbte,m.clasecpbte,m.fechavta,m.detal' +
        'le,m.debe,m.haber,'
      
        ' f.id_fc as IDFACTURA,f.nrocpbte,f.total,(f.total-(m.haber+m.deb' +
        'e)) as Control from movccvta m'
      
        'left join fcvtacab f on f.id_fc=m.id_cpbte and f.tipocpbte=m.tip' +
        'ocpbte and f.clasecpbte= m.clasecpbte'
      'where m.tipocpbte in ('#39'FC'#39','#39'ND'#39','#39'NC'#39') and m.cliente=:codigo')
    Left = 724
    Top = 160
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object CDSVerificaMOV_FC: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPVerificaMOV_FC'
    Left = 792
    Top = 208
    object CDSVerificaMOV_FCID_MOVCCVTA: TIntegerField
      DisplayLabel = 'Id Mov'
      FieldName = 'ID_MOVCCVTA'
      Required = True
    end
    object CDSVerificaMOV_FCTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSVerificaMOV_FCCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSVerificaMOV_FCFECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHAVTA'
    end
    object CDSVerificaMOV_FCDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
    end
    object CDSVerificaMOV_FCDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSVerificaMOV_FCHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSVerificaMOV_FCIDFACTURA: TIntegerField
      DisplayLabel = 'Id Fc'
      FieldName = 'IDFACTURA'
    end
    object CDSVerificaMOV_FCNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSVerificaMOV_FCTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSVerificaMOV_FCCONTROL: TFloatField
      DisplayLabel = 'Control'
      FieldName = 'CONTROL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object DSPVerificaMOV_FC: TDataSetProvider
    DataSet = QVerificaMOV_FC
    Options = []
    Left = 736
    Top = 208
  end
  object DSVerificaMOV_FC: TDataSource
    DataSet = CDSVerificaMOV_FC
    Left = 788
    Top = 264
  end
  object QFC_Mov: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select f.id_fc,f.fechavta,f.codigo,f.tipocpbte,f.clasecpbte,f.nr' +
        'ocpbte,'
      
        '       f.nombre,f.total,m.debe as MuestraDebeCC,(f.total-m.debe)' +
        ' as MuestraDif from fcvtacab f'
      
        'left join movccvta m on m.id_cpbte=f.id_fc and m.tipocpbte=f.tip' +
        'ocpbte'
      
        'where f.tipocpbte='#39'FC'#39' and f.anulado<>'#39'S'#39' and ((f.total-m.debe)<' +
        '>0) ')
    Left = 604
    Top = 344
    object QFC_MovID_FC: TIntegerField
      FieldName = 'ID_FC'
      Required = True
    end
    object QFC_MovFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Required = True
    end
    object QFC_MovCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QFC_MovTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 4
    end
    object QFC_MovCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 4
    end
    object QFC_MovNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QFC_MovNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QFC_MovTOTAL: TFloatField
      FieldName = 'TOTAL'
      Required = True
    end
    object QFC_MovMUESTRADEBECC: TFloatField
      FieldName = 'MUESTRADEBECC'
      ProviderFlags = []
    end
    object QFC_MovMUESTRADIF: TFloatField
      FieldName = 'MUESTRADIF'
      ProviderFlags = []
    end
  end
  object CDSFc_Mov: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPFc_Mov'
    Left = 720
    Top = 344
    object CDSFc_MovID_FC: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSFc_MovFECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHAVTA'
      Required = True
    end
    object CDSFc_MovCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSFc_MovNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSFc_MovTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 4
    end
    object CDSFc_MovCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 4
    end
    object CDSFc_MovNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSFc_MovTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSFc_MovMUESTRADEBECC: TFloatField
      DisplayLabel = 'Debe en CC'
      FieldName = 'MUESTRADEBECC'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSFc_MovMUESTRADIF: TFloatField
      DisplayLabel = 'Dif'
      FieldName = 'MUESTRADIF'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object DSPFc_Mov: TDataSetProvider
    DataSet = QFC_Mov
    Options = []
    Left = 664
    Top = 344
  end
  object DSFC_Mov: TDataSource
    DataSet = CDSFc_Mov
    Left = 784
    Top = 336
  end
  object DSPMov: TDataSetProvider
    DataSet = QMov
    Options = []
    Left = 100
    Top = 88
  end
  object CDSMov: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMov'
    Left = 364
    Top = 128
    object CDSMovID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
      Origin = 'ID_MOVCCVTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object CDSMovCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 6
    end
    object CDSMovFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object CDSMovFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object CDSMovTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSMovCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSMovDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSMovNRO_CUOTA: TIntegerField
      FieldName = 'NRO_CUOTA'
      Origin = 'NRO_CUOTA'
      Required = True
    end
    object CDSMovDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00'
    end
    object CDSMovHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00'
    end
    object CDSMovSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = ',0.00'
    end
  end
  object DSPApli: TDataSetProvider
    DataSet = QApli
    Options = []
    Left = 100
    Top = 152
  end
  object CDSApli: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_MOVCCVTA'
    MasterFields = 'ID_MOVCCVTA'
    MasterSource = DSMov
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPApli'
    Left = 156
    Top = 112
    object CDSApliID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Origin = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSApliID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
      Origin = 'ID_MOVCCVTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSApliFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSApliCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 6
    end
    object CDSApliID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Required = True
    end
    object CDSApliTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSApliCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSApliNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Origin = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object CDSApliAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
      Origin = 'APLICA_ID_CPBTE'
      Required = True
    end
    object CDSApliAPLICA_TIPOCPBTE: TStringField
      FieldName = 'APLICA_TIPOCPBTE'
      Origin = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object CDSApliAPLICA_CLASECPBTE: TStringField
      FieldName = 'APLICA_CLASECPBTE'
      Origin = 'APLICA_CLASECPBTE'
      Size = 2
    end
    object CDSApliAPLICA_NROCPBTE: TStringField
      FieldName = 'APLICA_NROCPBTE'
      Origin = 'APLICA_NROCPBTE'
      Size = 13
    end
    object CDSApliDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSApliCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Origin = 'CONCILIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSApliIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
  end
  object DSMov: TDataSource
    DataSet = CDSMov
    Left = 372
    Top = 112
  end
  object DSApli: TDataSource
    DataSet = CDSApli
    Left = 220
    Top = 112
  end
  object QMov: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select m.* from  movccvta m where m.cliente=:codigo'
      
        'and (( m.tipocpbte='#39'FC'#39' or m.tipocpbte='#39'ND'#39') or ( m.tipocpbte='#39'A' +
        'J'#39' and m.haber=0 ))')
    Left = 36
    Top = 48
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QMovID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
      Origin = 'ID_MOVCCVTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object QMovCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 6
    end
    object QMovFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object QMovFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object QMovTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QMovCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QMovNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QMovDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
    end
    object QMovHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
    end
    object QMovSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
    end
    object QMovDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QMovNRO_CUOTA: TIntegerField
      FieldName = 'NRO_CUOTA'
      Origin = 'NRO_CUOTA'
      Required = True
    end
    object QMovID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
    end
    object QMovCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
  end
  object QApli: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select m.* from  movaplicaccvta m where m.id_movccvta=:id')
    Left = 28
    Top = 104
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QApliID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Origin = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QApliID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
      Origin = 'ID_MOVCCVTA'
      Required = True
    end
    object QApliFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QApliCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 6
    end
    object QApliID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Required = True
    end
    object QApliTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QApliCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QApliNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Origin = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object QApliIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QApliAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
      Origin = 'APLICA_ID_CPBTE'
      Required = True
    end
    object QApliAPLICA_TIPOCPBTE: TStringField
      FieldName = 'APLICA_TIPOCPBTE'
      Origin = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object QApliAPLICA_CLASECPBTE: TStringField
      FieldName = 'APLICA_CLASECPBTE'
      Origin = 'APLICA_CLASECPBTE'
      Size = 2
    end
    object QApliAPLICA_NROCPBTE: TStringField
      FieldName = 'APLICA_NROCPBTE'
      Origin = 'APLICA_NROCPBTE'
      Size = 13
    end
    object QApliDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QApliCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Origin = 'CONCILIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QIntegridadFc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select fc.id_fc,fc.codigo,fc.nombre, fc.tipocpbte,fc.clasecpbte,' +
        'fc.nrocpbte, fc.fechavta,'
      '          fc.anulado,fc.total,fc.observacion1,'
      '          mcv.id_movccvta as IdMovCTACTE,mcv.fechavta,'
      
        '          mcv.debe,mcv.haber,mcv.detalle,mcv.saldo,sum(coalesce(' +
        ' ma.importe,0)) as ImporteAplicado,mcv.nro_cuota from fcvtacab f' +
        'c'
      
        '  left join movccvta mcv on mcv.id_cpbte=fc.id_fc and mcv.tipocp' +
        'bte=fc.tipocpbte'
      
        '  left join movaplicaccvta ma on ma.aplica_id_cpbte=fc.id_fc and' +
        ' ma.aplica_tipocpbte=fc.tipocpbte and ma.aplica_clasecpbte=fc.cl' +
        'asecpbte'
      
        'where fc.tipocpbte in ('#39'FC'#39','#39'ND'#39') and ( (fc.codigo=:codigo) or (' +
        ':codigo = '#39'******'#39') ) and fc.ingresa_a_ctacte='#39'S'#39
      
        '  group by fc.id_fc,fc.codigo,fc.nombre, fc.tipocpbte,fc.clasecp' +
        'bte,fc.nrocpbte,fc.fechavta,'
      
        '           fc.anulado,fc.total,fc.observacion1,mcv.id_movccvta,m' +
        'cv.fechavta,'
      
        '           mcv.debe,mcv.haber,mcv.detalle,mcv.saldo,mcv.nro_cuot' +
        'a'
      
        '  order by fc.codigo, fc.tipocpbte,fc.clasecpbte,fc.nrocpbte,mcv' +
        '.nro_cuota'
      ' ')
    Left = 92
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
      'select fc.id_fc ,fc.codigo,fc.nombre,fc.fechavta,'
      
        '       fc.tipocpbte,fc.clasecpbte,fc.nrocpbte,fc.anulado, (fc.to' +
        'tal * fc.moneda_cpbte_cotizacion) as Total ,fc.observacion1,mcv.' +
        'id_movccvta as IdMovCTACTE,mcv.fechavta,'
      
        '       mcv.debe,mcv.haber, mcv.detalle,sum(ma.importe) as SumaAp' +
        'licaciones,(sum(ma.importe)-fc.total) as DiferenciaConAplicacion' +
        'es from fcvtacab fc'
      
        'left join movccvta mcv on mcv.id_cpbte=fc.id_fc and mcv.tipocpbt' +
        'e=fc.tipocpbte'
      
        'left join movaplicaccvta ma on ma.id_cpbte=fc.id_fc and ma.tipoc' +
        'pbte=fc.tipocpbte and ma.clasecpbte=fc.clasecpbte'
      ''
      
        '  where (fc.codigo=:codigo or ( :codigo = '#39'******'#39' )) and fc.tip' +
        'ocpbte='#39'NC'#39' and fc.nc_contado='#39'N'#39' and fc.ingresa_a_ctacte='#39'S'#39
      'group by fc.id_fc,fc.codigo,fc.nombre, fc.fechavta,'
      
        '       fc.tipocpbte,fc.clasecpbte,fc.nrocpbte,fc.anulado,fc.tota' +
        'l,fc.moneda_cpbte_cotizacion , fc.observacion1,mcv.id_movccvta,m' +
        'cv.fechavta,'
      '       mcv.debe,mcv.haber, mcv.detalle')
    Left = 76
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
  object QIntegridadRc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select rc.id_rc,rc.codigo,rc.nombre,rc.tipocpbte,rc.clasecpbte,r' +
        'c.nrocpbte,rc.fecha, rc.anulado,rc.total,'
      
        '       mcv.fechavta, mcv.id_movccvta as IdMovCTACTE,mcv.debe,mcv' +
        '.haber, mcv.detalle,sum( coalesce( ma.importe,0)) as SumaAplicai' +
        'ones,'
      
        '       coalesce( (sum(ma.importe)-rc.total),0) as DiferenciaConA' +
        'plicaciones from recibos rc'
      
        'left join movccvta mcv on mcv.id_cpbte=rc.id_rc and mcv.tipocpbt' +
        'e=rc.tipocpbte'
      
        'left join movaplicaccvta ma on ma.id_cpbte=rc.id_rc and ma.tipoc' +
        'pbte=rc.tipocpbte'
      '  where (rc.codigo=:codigo or ( :codigo = '#39'******'#39' ))'
      'group by rc.id_rc,rc.codigo,rc.nombre,'
      
        '       rc.tipocpbte,rc.clasecpbte,rc.nrocpbte,rc.fecha,rc.anulad' +
        'o,rc.total,mcv.fechavta, mcv.id_movccvta,'
      '       mcv.debe,mcv.haber, mcv.detalle'
      ''
      ' '
      ' ')
    Left = 68
    Top = 440
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
end
