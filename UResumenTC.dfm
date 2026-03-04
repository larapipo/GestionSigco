inherited FormResumentTC: TFormResumentTC
  Left = 261
  Top = 105
  Caption = 'Resumen de Tarjeta de Credito'
  ClientHeight = 766
  ClientWidth = 716
  ExplicitWidth = 734
  ExplicitHeight = 807
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 716
    Height = 601
    ExplicitWidth = 716
    ExplicitHeight = 601
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 716
      Height = 96
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 30
        Height = 13
        Caption = 'Fecha'
      end
      object Label3: TLabel
        Left = 128
        Top = 8
        Width = 85
        Height = 13
        Caption = 'Periodo Liquidado'
        FocusControl = dbePeriodo
      end
      object Label5: TLabel
        Left = 245
        Top = 48
        Width = 60
        Height = 13
        Caption = 'Fecha Fiscal'
      end
      object Label11: TLabel
        Left = 8
        Top = 48
        Width = 84
        Height = 13
        Caption = 'Tarjeta de Credito'
        FocusControl = dbeMuestraTarjeta
      end
      object Label19: TLabel
        Left = 580
        Top = 48
        Width = 81
        Height = 13
        Caption = 'Saldo Anterior'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 476
        Top = 1
        Width = 226
        Height = 20
        Caption = 'Resumen Tarjeta de Credito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 372
        Top = 50
        Width = 18
        Height = 13
        Caption = 'Cuit'
        FocusControl = dbeCuit
      end
      object Label23: TLabel
        Left = 237
        Top = 9
        Width = 113
        Height = 13
        Caption = 'Sucursal/Ctro.de Costo '
        FocusControl = dbePeriodo
      end
      object Label9: TLabel
        Left = 492
        Top = 27
        Width = 63
        Height = 13
        Caption = 'Comprobante'
      end
      object dbePeriodo: TDBEdit
        Left = 128
        Top = 24
        Width = 105
        Height = 21
        DataField = 'PERIODO_LIQUIDADO'
        DataSource = DSBase
        TabOrder = 1
      end
      object dbeMuestraTarjeta: TDBEdit
        Left = 96
        Top = 64
        Width = 145
        Height = 21
        Color = clInfoBk
        DataField = 'NOMBRE'
        DataSource = DSBase
        Enabled = False
        TabOrder = 6
      end
      object dbeSaldoAnterior: TDBEdit
        Left = 580
        Top = 63
        Width = 110
        Height = 24
        Color = clYellow
        DataField = 'SALDO_ANTERIOR'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object dbeCuit: TDBEdit
        Left = 372
        Top = 64
        Width = 98
        Height = 21
        Color = clInfoBk
        DataField = 'CUIT'
        DataSource = DSBase
        Enabled = False
        TabOrder = 8
      end
      object dbeSucursal: TDBEdit
        Left = 280
        Top = 24
        Width = 146
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRASUCURSAL'
        DataSource = DSBase
        Enabled = False
        TabOrder = 3
      end
      object dbeLetra: TDBEdit
        Left = 561
        Top = 24
        Width = 25
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'LETRA'
        DataSource = DSBase
        TabOrder = 9
      end
      object dbeSuc: TDBEdit
        Left = 592
        Top = 24
        Width = 41
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'SUC'
        DataSource = DSBase
        TabOrder = 10
      end
      object dbeNumero: TDBEdit
        Left = 639
        Top = 24
        Width = 71
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'NUMERO'
        DataSource = DSBase
        TabOrder = 11
      end
      object dbFecha: TJvDBDateEdit
        Left = 8
        Top = 24
        Width = 88
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        DataField = 'FECHA'
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
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 0
      end
      object dbFechaFiscal: TJvDBDateEdit
        Left = 245
        Top = 64
        Width = 88
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DataField = 'FECHA_FISCAL'
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
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 4
      end
      object dbcTarjeta: TJvDBComboEdit
        Left = 8
        Top = 64
        Width = 81
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'ID_TC'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000A000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFC000003300000033000000FFC00000}
        ButtonWidth = 16
        TabOrder = 5
        OnButtonClick = BuscarTCExecute
      end
      object RxCSucursal: TJvDBComboEdit
        Left = 237
        Top = 24
        Width = 37
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        ClickKey = 16397
        DataField = 'Sucursal'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 15
        TabOrder = 2
        OnButtonClick = BuscarsucursalExecute
      end
    end
    object pnDetalle: TPanel
      Left = 0
      Top = 96
      Width = 716
      Height = 185
      Align = alTop
      TabOrder = 1
      object Label14: TLabel
        Left = 5
        Top = 148
        Width = 49
        Height = 13
        Caption = 'Proveedor'
      end
      object dbtProveedor: TDBText
        Left = 60
        Top = 148
        Width = 265
        Height = 13
        DataField = 'MUESTRAPROVEEDOR'
        DataSource = DSMovTC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbtCuota: TDBText
        Left = 60
        Top = 162
        Width = 20
        Height = 17
        DataField = 'CUOTA'
        DataSource = DSMovTC
      end
      object dbtTotalCuotas: TDBText
        Left = 86
        Top = 162
        Width = 20
        Height = 17
        DataField = 'TOTAL_CUOTAS'
        DataSource = DSMovTC
      end
      object Label15: TLabel
        Left = 76
        Top = 162
        Width = 11
        Height = 13
        Caption = ' / '
      end
      object Label16: TLabel
        Left = 6
        Top = 162
        Width = 28
        Height = 13
        Caption = 'Cuota'
      end
      object dbgMovTc: TJvDBGrid
        Left = 4
        Top = 7
        Width = 329
        Height = 138
        DataSource = DSMovTC
        DefaultDrawing = False
        DragMode = dmAutomatic
        DrawingStyle = gdsClassic
        FixedColor = clPurple
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = dbgMovTcDrawColumnCell
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'FECHA_COMPRA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha Cpra'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO_CUPON'
            Title.Alignment = taCenter
            Title.Caption = 'Nro.Cupon'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUOTA'
            Title.Alignment = taCenter
            Title.Caption = 'Cuota'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPORTE'
            Title.Alignment = taCenter
            Title.Caption = 'Importe'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 96
            Visible = True
          end>
        Delphi2010OptionsMigrated = True
      end
      object dbgResDet: TJvDBGrid
        Left = 339
        Top = 8
        Width = 354
        Height = 172
        Color = clWhite
        DataSource = DSResumenDet
        DrawingStyle = gdsGradient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDragDrop = dbgResDetDragDrop
        OnDragOver = dbgResDetDragOver
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 16
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'FECHA_COMPRA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Title.Color = clFuchsia
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 91
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NRO_CUPON'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Color = clFuchsia
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 97
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CUOTA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Cuotas'
            Title.Color = clFuchsia
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPORTE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Color = clFuchsia
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 81
            Visible = True
          end>
        Delphi2010OptionsMigrated = True
      end
    end
    object pcDetalleResumen: TPageControl
      Left = 0
      Top = 281
      Width = 716
      Height = 320
      ActivePage = pgDetalle
      Align = alTop
      TabOrder = 2
      TabPosition = tpBottom
      OnChange = pcDetalleResumenChange
      OnEnter = pcDetalleResumenEnter
      object pgDetalle: TTabSheet
        Caption = 'Detalle'
        object Label7: TLabel
          Left = 444
          Top = 6
          Width = 109
          Height = 13
          Caption = 'Total de Consumos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 444
          Top = 32
          Width = 64
          Height = 13
          Caption = 'Comisiones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 444
          Top = 58
          Width = 96
          Height = 13
          Caption = 'Gastos Resumen'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 444
          Top = 84
          Width = 85
          Height = 13
          Caption = 'Gastos Admini.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 444
          Top = 110
          Width = 114
          Height = 13
          Caption = 'Impuestos de Sellos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 444
          Top = 136
          Width = 53
          Height = 13
          Caption = 'Intereses'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 444
          Top = 162
          Width = 70
          Height = 13
          Caption = 'Total de Iva'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 444
          Top = 214
          Width = 71
          Height = 13
          Caption = 'Importe IIBB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 446
          Top = 240
          Width = 124
          Height = 13
          Caption = 'Importe Total a Pagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel5: TJvLabel
          Left = 3
          Top = 3
          Width = 17
          Height = 13
          Caption = 'Iva'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object RxLabel6: TJvLabel
          Left = 2
          Top = 81
          Width = 90
          Height = 13
          Caption = 'Percepciones IIBB'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object JvLabel1: TJvLabel
          Left = 2
          Top = 166
          Width = 87
          Height = 13
          Caption = 'Percepciones IVA'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object Label12: TLabel
          Left = 446
          Top = 188
          Width = 51
          Height = 13
          Caption = 'Perc.IVA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbgIva: TDBGrid
          Left = 2
          Top = 18
          Width = 387
          Height = 59
          DataSource = DSRes_Iva
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = dbgIvaColEnter
          OnEditButtonClick = dbgIvaEditButtonClick
          OnKeyDown = dbgIvaKeyDown
          OnKeyPress = dbgIvaKeyPress
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CODIGO_GRAVAMEN'
              Title.Alignment = taCenter
              Title.Caption = 'Codigo'
              Width = 40
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Caption = 'Detalle'
              Width = 119
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'TASA'
              Title.Alignment = taCenter
              Title.Caption = '%'
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NETO'
              Title.Alignment = taCenter
              Title.Caption = 'Neto Grav.'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Title.Caption = 'Importe'
              Width = 68
              Visible = True
            end>
        end
        object dbgPercepcionIB: TDBGrid
          Left = 3
          Top = 100
          Width = 387
          Height = 60
          DataSource = DSRes_IIBB
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = dbgPercepcionIBColEnter
          OnEditButtonClick = dbgPercepcionIBEditButtonClick
          OnKeyDown = dbgPercepcionIBKeyDown
          OnKeyPress = dbgPercepcionIBKeyPress
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CODIGO_PERCEPCION'
              Title.Alignment = taCenter
              Title.Caption = 'Codigo'
              Width = 40
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Caption = 'Detalle'
              Width = 118
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'TASA'
              Title.Alignment = taCenter
              Title.Caption = '%'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NETO'
              Title.Alignment = taCenter
              Title.Caption = 'Neto.Grav'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Title.Caption = 'Importe'
              Width = 70
              Visible = True
            end>
        end
        object pnTotales: TPanel
          Left = 576
          Top = -3
          Width = 119
          Height = 268
          Enabled = False
          TabOrder = 2
          object dbeConsumos: TDBEdit
            Left = 5
            Top = 4
            Width = 110
            Height = 24
            Color = clInfoBk
            DataField = 'TOTAL_CONSUMOS'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object dbeIva: TDBEdit
            Left = 5
            Top = 160
            Width = 110
            Height = 24
            Color = clInfoBk
            DataField = 'IVA'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object dbeIIBB: TDBEdit
            Left = 5
            Top = 212
            Width = 110
            Height = 24
            Color = clInfoBk
            DataField = 'IIBB'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object dbeTotal: TDBEdit
            Left = 5
            Top = 238
            Width = 110
            Height = 24
            Color = clInfoBk
            DataField = 'TOTAL'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object edPerIVA: TDBEdit
            Left = 5
            Top = 186
            Width = 110
            Height = 24
            Color = clInfoBk
            DataField = 'PERC_IVA'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
        end
        object dbeComisiones: TDBEdit
          Left = 581
          Top = 27
          Width = 110
          Height = 24
          DataField = 'COMISIONES'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object dbeGastoResumen: TDBEdit
          Left = 581
          Top = 53
          Width = 110
          Height = 24
          DataField = 'GASTOS_RESUMEN'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object dbeGstosAdmin: TDBEdit
          Left = 581
          Top = 79
          Width = 110
          Height = 24
          DataField = 'GASTOS_ADMIN'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object dbeImpuestoSellos: TDBEdit
          Left = 581
          Top = 105
          Width = 110
          Height = 24
          DataField = 'IMPUESTOS_SELLOS'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object dbeIntereses: TDBEdit
          Left = 581
          Top = 131
          Width = 110
          Height = 24
          DataField = 'INTERESES'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object chIva: TDBCheckBox
          Left = 576
          Top = 271
          Width = 131
          Height = 17
          Caption = 'Ingresa al Libro de Iva'
          DataField = 'ING_LIBROIVA'
          DataSource = DSBase
          TabOrder = 8
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object chContabiliza: TDBCheckBox
          Left = 446
          Top = 271
          Width = 97
          Height = 17
          Caption = 'Contabiliza'
          DataField = 'CONTABILIZA'
          DataSource = DSBase
          TabOrder = 9
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object dbgPercepcionIVA: TDBGrid
          Left = 3
          Top = 185
          Width = 387
          Height = 60
          DataSource = DSRes_Perc_IVA
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 10
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = dbgPercepcionIVAColEnter
          OnEditButtonClick = BuscarPercIVAExecute
          OnKeyDown = dbgPercepcionIVAKeyDown
          OnKeyPress = dbgPercepcionIVAKeyPress
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CODIGO_PERCEPCION'
              Title.Alignment = taCenter
              Title.Caption = 'Codigo'
              Width = 40
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Caption = 'Detalle'
              Width = 118
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'TASA'
              Title.Alignment = taCenter
              Title.Caption = '%'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NETO'
              Title.Alignment = taCenter
              Title.Caption = 'Neto.Grav'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Title.Caption = 'Importe'
              Width = 70
              Visible = True
            end>
        end
      end
      object pcValores: TTabSheet
        Caption = 'Valores'
        ImageIndex = 1
        DesignSize = (
          708
          294)
        inline FrameMovValoresEgresos1: TFrameMovValoresEgresos
          Left = 18
          Top = 3
          Width = 723
          Height = 289
          Anchors = [akLeft, akTop, akRight, akBottom]
          BiDiMode = bdLeftToRight
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 18
          ExplicitTop = 3
          ExplicitWidth = 723
          ExplicitHeight = 289
          inherited lbTotalValores: TLabel
            Top = 192
            ExplicitTop = 192
          end
          inherited Label25: TLabel
            Top = 192
            ExplicitTop = 192
          end
          inherited dbgMovimientos: TDBGrid
            Height = 139
          end
          inherited pcValores: TPageControl
            Left = 254
            Top = 0
            Height = 233
            ExplicitLeft = 254
            ExplicitTop = 0
            ExplicitHeight = 233
            inherited tsEfectivo: TTabSheet
              ExplicitHeight = 205
            end
          end
          inherited DSPChe3: TDataSetProvider
            Left = 150
            Top = 216
          end
          inherited ActionList1: TActionList
            Left = 624
            Top = 56
          end
          inherited QCajaMov: TFDQuery
            Left = 56
          end
          inherited CDSCajaMov: TClientDataSet
            AfterPost = FrameMovValoresEgresos1CDSCajaMovAfterPost
            BeforeDelete = FrameMovValoresEgresos1CDSCajaMovBeforeDelete
            AfterDelete = FrameMovValoresEgresos1CDSCajaMovAfterDelete
          end
          inherited QBuscaTCredito: TFDQuery
            Left = 608
          end
        end
        object Panel2: TPanel
          Left = 11
          Top = 212
          Width = 217
          Height = 23
          TabOrder = 1
          object DBText11: TDBText
            Left = 71
            Top = 5
            Width = 140
            Height = 11
            Alignment = taRightJustify
            DataField = 'TOTAL'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label21: TLabel
            Left = 7
            Top = 6
            Width = 78
            Height = 13
            Caption = 'Total a Pagar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 601
    Width = 716
    ExplicitTop = 601
    ExplicitWidth = 716
  end
  inherited Panel1: TPanel
    Top = 631
    Width = 716
    ExplicitTop = 631
    ExplicitWidth = 716
    inherited sbEstado: TStatusBar
      Width = 554
      ExplicitWidth = 554
    end
  end
  inherited ActionList1: TActionList
    Left = 256
    Top = 104
    inherited Modificar: TAction
      Enabled = False
      Visible = False
    end
    object BuscarTC: TAction
      Caption = 'BuscarTC'
      OnExecute = BuscarTCExecute
    end
    object Buscarsucursal: TAction
      Caption = 'Buscarsucursal'
      OnExecute = BuscarsucursalExecute
    end
    object BuscarPercIVA: TAction
      Caption = 'BuscarPercIVA'
      OnExecute = BuscarPercIVAExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSResumenCab
    Left = 632
    Top = 136
  end
  inherited ImageList1: TImageList
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
  inherited QBrowse: TSQLQuery
    Left = 72
    Top = 648
  end
  inherited QUltimoCodigo: TSQLQuery
    SQL.Strings = (
      'select max(Numero) from Resumen_tc_cab')
    Left = 16
    Top = 641
  end
  inherited ComBuscadorBase: TComBuscador
    Data = CDSBuscaResumem
    Campo = 'ID'
    Titulo = 'Listado de Resumen'
    Left = 528
    Top = 48
  end
  inherited QUltimoCodigo2: TFDQuery
    SQL.Strings = (
      'select max(Numero) from Resumen_tc_cab')
    Left = 160
    Top = 640
    object QUltimoCodigo2MAX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAX'
      Origin = 'MAX'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
  end
  object IBGIVA: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RESUMEN_TC_IVA'
    SystemGenerators = False
    Left = 296
    Top = 504
  end
  object DSPRes_Iva: TDataSetProvider
    DataSet = QRes_Iva
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 96
    Top = 496
  end
  object CDSRes_Iva: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_RES'
    MasterFields = 'ID'
    MasterSource = DSBase
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRes_Iva'
    AfterPost = CDSRes_IvaAfterPost
    OnNewRecord = CDSRes_IvaNewRecord
    Left = 160
    Top = 496
    object CDSRes_IvaID_RES: TIntegerField
      FieldName = 'ID_RES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRes_IvaID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRes_IvaCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      Required = True
      OnSetText = CDSRes_IvaCODIGO_GRAVAMENSetText
    end
    object CDSRes_IvaDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSRes_IvaNETO: TFloatField
      FieldName = 'NETO'
      OnSetText = CDSRes_IvaNETOSetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSRes_IvaTASA: TFloatField
      FieldName = 'TASA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSRes_IvaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      OnSetText = CDSRes_IvaIMPORTESetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object DSRes_Iva: TDataSource
    DataSet = CDSRes_Iva
    Left = 224
    Top = 496
  end
  object DSPMovTC: TDataSetProvider
    DataSet = QMovTc
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 96
    Top = 153
  end
  object DSMovTC: TDataSource
    DataSet = CDSMovTC
    Left = 233
    Top = 148
  end
  object CDSMovTC: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_tc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovTC'
    Left = 167
    Top = 151
    object CDSMovTCID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovTCID_CUPON: TIntegerField
      FieldName = 'ID_CUPON'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovTCID_TARJEA: TIntegerField
      FieldName = 'ID_TARJEA'
      Required = True
    end
    object CDSMovTCFECHA_COMPRA: TSQLTimeStampField
      FieldName = 'FECHA_COMPRA'
      Required = True
    end
    object CDSMovTCNUMERO_CUPON: TIntegerField
      FieldName = 'NUMERO_CUPON'
    end
    object CDSMovTCTOTAL_CUOTAS: TIntegerField
      FieldName = 'TOTAL_CUOTAS'
      DisplayFormat = ',0.000'
    end
    object CDSMovTCCUOTA: TIntegerField
      FieldName = 'CUOTA'
      Required = True
    end
    object CDSMovTCIMPORTE_TOTAL_COMPRA: TFloatField
      FieldName = 'IMPORTE_TOTAL_COMPRA'
      DisplayFormat = ',0.000'
    end
    object CDSMovTCIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.000'
    end
    object CDSMovTCLIQUIDADA: TStringField
      FieldName = 'LIQUIDADA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSMovTCMUESTRAPROVEEDOR: TStringField
      FieldName = 'MUESTRAPROVEEDOR'
      ProviderFlags = []
      Size = 35
    end
  end
  object DSPResumenDet: TDataSetProvider
    DataSet = QResumenDet
    Options = []
    Left = 432
    Top = 213
  end
  object CDSResumenDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPResumenDet'
    AfterPost = CDSResumenDetAfterPost
    BeforeDelete = CDSResumenDetBeforeDelete
    AfterDelete = CDSResumenDetAfterDelete
    OnNewRecord = CDSResumenDetNewRecord
    Left = 508
    Top = 204
    object CDSResumenDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSResumenDetID_RESCAB: TIntegerField
      FieldName = 'ID_RESCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSResumenDetID_MOV_TCREDITO: TIntegerField
      FieldName = 'ID_MOV_TCREDITO'
      Required = True
    end
    object CDSResumenDetID_CUPON: TIntegerField
      FieldName = 'ID_CUPON'
      Required = True
    end
    object CDSResumenDetNRO_CUPON: TIntegerField
      DisplayLabel = 'Nro.Cupon'
      FieldName = 'NRO_CUPON'
    end
    object CDSResumenDetFECHA_COMPRA: TSQLTimeStampField
      FieldName = 'FECHA_COMPRA'
      Required = True
    end
    object CDSResumenDetCUOTA: TSmallintField
      FieldName = 'CUOTA'
    end
    object CDSResumenDetPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 35
    end
    object CDSResumenDetTOTAL_CUOTAS: TIntegerField
      FieldName = 'TOTAL_CUOTAS'
    end
    object CDSResumenDetIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object DSResumenDet: TDataSource
    DataSet = CDSResumenDet
    Left = 646
    Top = 207
  end
  object IBGResumenDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RESUMEN_TC_DET'
    SystemGenerators = False
    Left = 587
    Top = 213
  end
  object IBGResumenCab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RESUMEN_TC_cab'
    SystemGenerators = False
    Left = 584
    Top = 145
  end
  object CDSResumenCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPResumenCab'
    OnNewRecord = CDSResumenCabNewRecord
    Left = 502
    Top = 153
    object CDSResumenCabID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSResumenCabID_TC: TIntegerField
      FieldName = 'ID_TC'
      Required = True
      OnSetText = CDSResumenCabID_TCSetText
    end
    object CDSResumenCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object CDSResumenCabPERIODO_LIQUIDADO: TStringField
      FieldName = 'PERIODO_LIQUIDADO'
      EditMask = '99/0000;0;_'
      Size = 6
    end
    object CDSResumenCabFECHA_FISCAL: TSQLTimeStampField
      FieldName = 'FECHA_FISCAL'
      Required = True
    end
    object CDSResumenCabLETRA: TStringField
      FieldName = 'LETRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSResumenCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSResumenCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSResumenCabSUC: TStringField
      FieldName = 'SUC'
      OnSetText = CDSResumenCabSUCSetText
      FixedChar = True
      Size = 4
    end
    object CDSResumenCabNUMERO: TStringField
      FieldName = 'NUMERO'
      OnSetText = CDSResumenCabNUMEROSetText
      Size = 8
    end
    object CDSResumenCabNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Size = 13
    end
    object CDSResumenCabSALDO_ANTERIOR: TFloatField
      FieldName = 'SALDO_ANTERIOR'
      OnSetText = CDSResumenCabSALDO_ANTERIORSetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSResumenCabTOTAL_CONSUMOS: TFloatField
      FieldName = 'TOTAL_CONSUMOS'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSResumenCabCOMISIONES: TFloatField
      FieldName = 'COMISIONES'
      OnSetText = CDSResumenCabCOMISIONESSetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSResumenCabIMPUESTOS_SELLOS: TFloatField
      FieldName = 'IMPUESTOS_SELLOS'
      OnSetText = CDSResumenCabIMPUESTOS_SELLOSSetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSResumenCabGASTOS_RESUMEN: TFloatField
      FieldName = 'GASTOS_RESUMEN'
      OnSetText = CDSResumenCabGASTOS_RESUMENSetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSResumenCabGASTOS_ADMIN: TFloatField
      FieldName = 'GASTOS_ADMIN'
      OnSetText = CDSResumenCabGASTOS_ADMINSetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSResumenCabINTERESES: TFloatField
      FieldName = 'INTERESES'
      OnSetText = CDSResumenCabINTERESESSetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSResumenCabIVA: TFloatField
      FieldName = 'IVA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSResumenCabIIBB: TFloatField
      FieldName = 'IIBB'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSResumenCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSResumenCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSResumenCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSResumenCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
      OnSetText = CDSResumenCabSUCURSALSetText
    end
    object CDSResumenCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSResumenCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSResumenCabING_LIBROIVA: TStringField
      FieldName = 'ING_LIBROIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSResumenCabCONTABILIZA: TStringField
      FieldName = 'CONTABILIZA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSResumenCabPERC_IVA: TFloatField
      FieldName = 'PERC_IVA'
      DisplayFormat = ',0.00'
    end
  end
  object DSPResumenCab: TDataSetProvider
    DataSet = QResumenCab
    Options = []
    Left = 430
    Top = 151
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Left = 56
    Top = 392
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 144
    Top = 392
    object CDSBuscaSucursalCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSBuscaSucursalDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object QMovTc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select m.id,m.id_cupon,m.id_tarjea,m.fecha_compra,m.numero_cupon' +
        ','
      
        'm.total_cuotas,m.cuota,m.importe_total_compra,m.importe,m.liquid' +
        'ada,'
      'c.proveedor as MuestraProveedor from mov_tcredito_compra m'
      'left join t_credito tc on tc.id_tc=m.id_tarjea'
      'left join cupon_tc_compra c on c.id_cupon=m.id_cupon'
      'where m.id_tarjea = :id_tc and m.liquidada = '#39'N'#39
      'order by m.id_tarjea, m.fecha_compra,m.id_cupon, m.cuota')
    Left = 40
    Top = 152
    ParamData = <
      item
        Position = 1
        Name = 'id_tc'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QMovTcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovTcID_CUPON: TIntegerField
      FieldName = 'ID_CUPON'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovTcID_TARJEA: TIntegerField
      FieldName = 'ID_TARJEA'
      Required = True
    end
    object QMovTcFECHA_COMPRA: TSQLTimeStampField
      FieldName = 'FECHA_COMPRA'
      Required = True
    end
    object QMovTcNUMERO_CUPON: TIntegerField
      FieldName = 'NUMERO_CUPON'
    end
    object QMovTcTOTAL_CUOTAS: TIntegerField
      FieldName = 'TOTAL_CUOTAS'
    end
    object QMovTcCUOTA: TIntegerField
      FieldName = 'CUOTA'
      Required = True
    end
    object QMovTcIMPORTE_TOTAL_COMPRA: TFloatField
      FieldName = 'IMPORTE_TOTAL_COMPRA'
    end
    object QMovTcIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QMovTcLIQUIDADA: TStringField
      FieldName = 'LIQUIDADA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QMovTcMUESTRAPROVEEDOR: TStringField
      FieldName = 'MUESTRAPROVEEDOR'
      ProviderFlags = []
      Size = 35
    end
  end
  object QResumenCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select l.*,s.detalle as Muestrasucursal from resumen_tc_cab l'
      'left join sucursal s on s.codigo=l.sucursal'
      'where l.id=:id')
    Left = 350
    Top = 158
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QResumenCabID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QResumenCabID_TC: TIntegerField
      FieldName = 'ID_TC'
      Required = True
    end
    object QResumenCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object QResumenCabPERIODO_LIQUIDADO: TStringField
      FieldName = 'PERIODO_LIQUIDADO'
      Size = 6
    end
    object QResumenCabFECHA_FISCAL: TSQLTimeStampField
      FieldName = 'FECHA_FISCAL'
      Required = True
    end
    object QResumenCabLETRA: TStringField
      FieldName = 'LETRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QResumenCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QResumenCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QResumenCabSUC: TStringField
      FieldName = 'SUC'
      FixedChar = True
      Size = 4
    end
    object QResumenCabNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object QResumenCabNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Size = 13
    end
    object QResumenCabSALDO_ANTERIOR: TFloatField
      FieldName = 'SALDO_ANTERIOR'
    end
    object QResumenCabTOTAL_CONSUMOS: TFloatField
      FieldName = 'TOTAL_CONSUMOS'
    end
    object QResumenCabCOMISIONES: TFloatField
      FieldName = 'COMISIONES'
    end
    object QResumenCabIMPUESTOS_SELLOS: TFloatField
      FieldName = 'IMPUESTOS_SELLOS'
    end
    object QResumenCabGASTOS_RESUMEN: TFloatField
      FieldName = 'GASTOS_RESUMEN'
    end
    object QResumenCabGASTOS_ADMIN: TFloatField
      FieldName = 'GASTOS_ADMIN'
    end
    object QResumenCabINTERESES: TFloatField
      FieldName = 'INTERESES'
    end
    object QResumenCabIVA: TFloatField
      FieldName = 'IVA'
    end
    object QResumenCabIIBB: TFloatField
      FieldName = 'IIBB'
    end
    object QResumenCabTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object QResumenCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object QResumenCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QResumenCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object QResumenCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object QResumenCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object QResumenCabING_LIBROIVA: TStringField
      FieldName = 'ING_LIBROIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QResumenCabCONTABILIZA: TStringField
      FieldName = 'CONTABILIZA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QResumenCabPERC_IVA: TFloatField
      FieldName = 'PERC_IVA'
      Origin = 'PERC_IVA'
    end
  end
  object QResumenDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select ld.* from resumen_tc_det ld where ld.id_rescab=:id')
    Left = 347
    Top = 211
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QResumenDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QResumenDetID_RESCAB: TIntegerField
      FieldName = 'ID_RESCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QResumenDetID_MOV_TCREDITO: TIntegerField
      FieldName = 'ID_MOV_TCREDITO'
      Required = True
    end
    object QResumenDetID_CUPON: TIntegerField
      FieldName = 'ID_CUPON'
      Required = True
    end
    object QResumenDetNRO_CUPON: TIntegerField
      FieldName = 'NRO_CUPON'
    end
    object QResumenDetFECHA_COMPRA: TSQLTimeStampField
      FieldName = 'FECHA_COMPRA'
      Required = True
    end
    object QResumenDetCUOTA: TSmallintField
      FieldName = 'CUOTA'
    end
    object QResumenDetPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 35
    end
    object QResumenDetTOTAL_CUOTAS: TIntegerField
      FieldName = 'TOTAL_CUOTAS'
    end
    object QResumenDetIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Required = True
    end
  end
  object QRes_Iva: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from resumen_tc_iva where Id_res = :id')
    Left = 24
    Top = 496
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRes_IvaID_RES: TIntegerField
      FieldName = 'ID_RES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRes_IvaID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRes_IvaCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      Required = True
    end
    object QRes_IvaDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object QRes_IvaNETO: TFloatField
      FieldName = 'NETO'
    end
    object QRes_IvaTASA: TFloatField
      FieldName = 'TASA'
    end
    object QRes_IvaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
  end
  object QPercepIB: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from percepIB where codigo=:codigo')
    Left = 520
    Top = 528
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QPercepIBCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QPercepIBDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
    object QPercepIBTASA: TFloatField
      FieldName = 'TASA'
    end
    object QPercepIBMINIMOAPLICABLE: TFloatField
      FieldName = 'MINIMOAPLICABLE'
    end
    object QPercepIBCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
    end
    object QPercepIBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
    end
  end
  object QGravamen: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from  gravamen where codigo=:codigo')
    Left = 520
    Top = 584
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QGravamenCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QGravamenDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object QGravamenTASA: TFloatField
      FieldName = 'TASA'
    end
    object QGravamenCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Required = True
    end
  end
  object QCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select estado from caja_cab where id_caja=:id ')
    Left = 368
    Top = 416
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCajaESTADO: TIntegerField
      FieldName = 'ESTADO'
      Required = True
    end
  end
  object CDSBuscaTarjeta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaTerjeta'
    Left = 198
    Top = 216
    object CDSBuscaTarjetaNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 30
      FieldName = 'NOMBRE'
      Size = 30
    end
    object CDSBuscaTarjetaNRO_TARJETA: TStringField
      DisplayLabel = 'Nro.de Tarjeta'
      DisplayWidth = 16
      FieldName = 'NRO_TARJETA'
      Size = 16
    end
    object CDSBuscaTarjetaID: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSBuscaTarjetaID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Required = True
      Visible = False
    end
    object CDSBuscaTarjetaMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
      Visible = False
    end
    object CDSBuscaTarjetaID_TCREDITO: TIntegerField
      FieldName = 'ID_TCREDITO'
      Visible = False
    end
    object CDSBuscaTarjetaMUESTRATARJETACREDITO: TStringField
      FieldName = 'MUESTRATARJETACREDITO'
      ProviderFlags = []
      Visible = False
      Size = 15
    end
    object CDSBuscaTarjetaMUESTRABANCO: TStringField
      FieldName = 'MUESTRABANCO'
      ProviderFlags = []
      Visible = False
    end
  end
  object DSPBuscaTerjeta: TDataSetProvider
    DataSet = DMBuscadores.QBuscaTarjetaCredito_Comp
    Options = []
    Left = 62
    Top = 200
  end
  object CDSBuscaPercepIIBB: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaPerecepIIBB'
    Left = 143
    Top = 216
    object CDSBuscaPercepIIBBCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
    end
    object CDSBuscaPercepIIBBDESCRIPCION: TStringField
      DisplayLabel = 'Descripci'#243'n'
      DisplayWidth = 20
      FieldName = 'DESCRIPCION'
    end
    object CDSBuscaPercepIIBBMINIMOAPLICABLE: TFloatField
      DisplayLabel = 'Min.Imponible'
      DisplayWidth = 10
      FieldName = 'MINIMOAPLICABLE'
    end
    object CDSBuscaPercepIIBBTASA: TFloatField
      DisplayLabel = '%'
      DisplayWidth = 10
      FieldName = 'TASA'
    end
    object CDSBuscaPercepIIBBCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Visible = False
    end
    object CDSBuscaPercepIIBBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
      Visible = False
    end
  end
  object DSPBuscaPerecepIIBB: TDataSetProvider
    DataSet = DMBuscadores.QBuscaPercepIB
    Left = 55
    Top = 312
  end
  object CDSBuscaIVA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaIVA'
    Left = 296
    Top = 384
    object CDSBuscaIVACODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSBuscaIVADESCRIPCION: TStringField
      DisplayLabel = 'Descripci'#243'n'
      DisplayWidth = 15
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object CDSBuscaIVATASA: TFloatField
      DisplayLabel = '%'
      DisplayWidth = 10
      FieldName = 'TASA'
    end
    object CDSBuscaIVACOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Required = True
      Visible = False
    end
  end
  object DSPBuscaIVA: TDataSetProvider
    DataSet = DMBuscadores.QBuscaIva
    Left = 32
    Top = 272
  end
  object QBuscaRes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select l.id,l.fecha,l.fecha_fiscal,l.numerocpbte,t.nombre as Mue' +
        'straTarjeta  from resumen_tc_cab l'
      'left join tarjetacredito_comp t on t.id=l.id_tc'
      'order by l.fecha desc')
    Left = 325
    Top = 642
  end
  object CDSBuscaResumem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaResumem'
    Left = 480
    Top = 616
    object CDSBuscaResumemID: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
    end
    object CDSBuscaResumemFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      DisplayWidth = 18
      FieldName = 'FECHA'
      Required = True
    end
    object CDSBuscaResumemFECHA_FISCAL: TSQLTimeStampField
      DisplayLabel = 'Fecha Fiscal'
      DisplayWidth = 18
      FieldName = 'FECHA_FISCAL'
      Required = True
    end
    object CDSBuscaResumemNUMEROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      DisplayWidth = 13
      FieldName = 'NUMEROCPBTE'
      Size = 13
    end
    object CDSBuscaResumemMUESTRATARJETA: TStringField
      DisplayLabel = 'Tarjeta'
      DisplayWidth = 30
      FieldName = 'MUESTRATARJETA'
      Size = 30
    end
  end
  object DSPBuscaResumem: TDataSetProvider
    DataSet = QBuscaRes
    Options = []
    Left = 416
    Top = 616
  end
  object ComBuscadorTC: TComBuscador
    Data = CDSBuscaTarjeta
    Campo = 'ID'
    Titulo = 'Tarjetas'
    rOk = False
    Left = 184
    Top = 240
  end
  object ComBuscadorIVA: TComBuscador
    Data = CDSBuscaIVA
    Campo = 'CODIGO'
    Titulo = 'Tasas de IVA'
    rOk = False
    Left = 188
    Top = 301
  end
  object ComBuscadorPercepcionIB: TComBuscador
    Data = CDSBuscaPercepIIBB
    Campo = 'CODIGO'
    Titulo = 'Percepciones de IIBB'
    rOk = False
    Left = 188
    Top = 349
  end
  object ComBuscadorSucursal: TComBuscador
    Data = CDSBuscaSucursal
    Campo = 'CODIGO'
    Titulo = 'Sucursales'
    rOk = False
    Left = 300
    Top = 341
  end
  object QRes_IIBB: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from resumen_tc_IIBB where Id_res = :id')
    Left = 16
    Top = 544
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRes_IIBBID_RES: TIntegerField
      FieldName = 'ID_RES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRes_IIBBID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRes_IIBBCODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Required = True
    end
    object QRes_IIBBDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object QRes_IIBBNETO: TFloatField
      FieldName = 'NETO'
    end
    object QRes_IIBBTASA: TFloatField
      FieldName = 'TASA'
    end
    object QRes_IIBBIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QRes_IIBBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
    end
  end
  object DSPRes_IIBB: TDataSetProvider
    DataSet = QRes_IIBB
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 544
  end
  object CDSRes_IIBB: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_RES'
    MasterFields = 'ID'
    MasterSource = DSBase
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRes_IIBB'
    AfterPost = CDSRes_IIBBAfterPost
    OnNewRecord = CDSRes_IIBBNewRecord
    Left = 144
    Top = 560
    object CDSRes_IIBBID_RES: TIntegerField
      FieldName = 'ID_RES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRes_IIBBID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRes_IIBBCODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Required = True
      OnSetText = CDSRes_IIBBCODIGO_PERCEPCIONSetText
    end
    object CDSRes_IIBBDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSRes_IIBBNETO: TFloatField
      FieldName = 'NETO'
      OnSetText = CDSRes_IIBBNETOSetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSRes_IIBBTASA: TFloatField
      FieldName = 'TASA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSRes_IIBBIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      OnSetText = CDSRes_IIBBIMPORTESetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSRes_IIBBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
    end
  end
  object DSRes_IIBB: TDataSource
    DataSet = CDSRes_IIBB
    Left = 216
    Top = 560
  end
  object IBGIIBB: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RESUMEN_TC_IIBB'
    SystemGenerators = False
    Left = 288
    Top = 560
  end
  object IbgPrec_IVA: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RESUMEN_TC_PERIVA'
    SystemGenerators = False
    Left = 304
    Top = 704
  end
  object DSRes_Perc_IVA: TDataSource
    DataSet = CDSRes_Perc_IVA
    Left = 232
    Top = 704
  end
  object CDSRes_Perc_IVA: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_RES'
    MasterFields = 'ID'
    MasterSource = DSBase
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRes_Perc_IVA'
    AfterPost = CDSRes_Perc_IVAAfterPost
    OnNewRecord = CDSRes_Perc_IVANewRecord
    Left = 160
    Top = 704
    object CDSRes_Perc_IVAID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      Origin = 'ID_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRes_Perc_IVACODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Origin = 'CODIGO_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnSetText = CDSRes_Perc_IVACODIGO_PERCEPCIONSetText
    end
    object CDSRes_Perc_IVADETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSRes_Perc_IVAID_RES: TIntegerField
      FieldName = 'ID_RES'
      Origin = 'ID_RES'
      Required = True
    end
    object CDSRes_Perc_IVANETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
      OnSetText = CDSRes_Perc_IVANETOSetText
      DisplayFormat = ',0.00'
    end
    object CDSRes_Perc_IVATASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
      DisplayFormat = ',0.00'
    end
    object CDSRes_Perc_IVAIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      OnSetText = CDSRes_Perc_IVAIMPORTESetText
      DisplayFormat = ',0.00'
    end
    object CDSRes_Perc_IVACODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
      Origin = 'CODIGOREGIMEN'
    end
  end
  object DSPRes_Perc_IVA: TDataSetProvider
    DataSet = QResPerc_IVA
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 96
    Top = 696
  end
  object QResPerc_IVA: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from resumen_tc_percepcioniva where Id_res = :id')
    Left = 24
    Top = 704
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QResPerc_IVAID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      Origin = 'ID_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QResPerc_IVACODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Origin = 'CODIGO_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QResPerc_IVADETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QResPerc_IVAID_RES: TIntegerField
      FieldName = 'ID_RES'
      Origin = 'ID_RES'
      Required = True
    end
    object QResPerc_IVANETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
    end
    object QResPerc_IVATASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QResPerc_IVAIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QResPerc_IVACODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
      Origin = 'CODIGOREGIMEN'
    end
  end
  object QPercepIva: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from percepiva where codigo=:codigo')
    Left = 480
    Top = 696
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QPercepIvaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPercepIvaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
    end
    object QPercepIvaTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QPercepIvaMINIMOAPLICABLE: TFloatField
      FieldName = 'MINIMOAPLICABLE'
      Origin = 'MINIMOAPLICABLE'
    end
    object QPercepIvaCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Origin = 'COLUMNA'
    end
    object QPercepIvaCODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
      Origin = 'CODIGOREGIMEN'
    end
  end
  object ComBuscadorPercepcionIVA: TComBuscador
    Data = CDSBuscaPercepIVA
    Campo = 'CODIGO'
    Titulo = 'Percepciones'
    rOk = False
    Left = 262
    Top = 381
  end
  object DSPBuscaPercepIVA: TDataSetProvider
    DataSet = DMBuscadores.QBuscaPercepIva
    Options = []
    Left = 536
    Top = 672
  end
  object CDSBuscaPercepIVA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaPercepIVA'
    Left = 616
    Top = 680
    object CDSBuscaPercepIVACODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSBuscaPercepIVADESCRIPCION: TStringField
      DisplayLabel = 'Descripci'#243'n'
      DisplayWidth = 20
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
    end
  end
end
