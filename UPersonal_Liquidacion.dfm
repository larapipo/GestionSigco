inherited FormPersonalliquidacion: TFormPersonalliquidacion
  Left = 174
  Top = 126
  Caption = 'Liquidaciones de Sueldo'
  ClientHeight = 713
  ClientWidth = 1204
  OnResize = FormResize
  ExplicitWidth = 1222
  ExplicitHeight = 754
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1204
    Height = 660
    Align = alClient
    ExplicitWidth = 1204
    ExplicitHeight = 660
    object pnLiquidacion: TPanel
      Left = 0
      Top = 0
      Width = 593
      Height = 660
      Align = alLeft
      TabOrder = 0
      object pnDetalle: TPanel
        Left = 1
        Top = 153
        Width = 591
        Height = 506
        Align = alClient
        TabOrder = 0
        DesignSize = (
          591
          506)
        object SpeedButton1: TSpeedButton
          Left = 538
          Top = 280
          Width = 23
          Height = 22
          Action = UnSelect
          Anchors = [akLeft, akBottom]
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
            3333333777333777FF3333993333339993333377FF3333377FF3399993333339
            993337777FF3333377F3393999333333993337F777FF333337FF993399933333
            399377F3777FF333377F993339993333399377F33777FF33377F993333999333
            399377F333777FF3377F993333399933399377F3333777FF377F993333339993
            399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
            99333773FF3333777733339993333339933333773FFFFFF77333333999999999
            3333333777333777333333333999993333333333377777333333}
          NumGlyphs = 2
          ExplicitTop = 307
        end
        object SpeedButton2: TSpeedButton
          Left = 562
          Top = 280
          Width = 23
          Height = 22
          Action = SelectAll
          Anchors = [akLeft, akBottom]
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333FF33333333333330003333333333333777333333333333
            300033FFFFFF3333377739999993333333333777777F3333333F399999933333
            3300377777733333337733333333333333003333333333333377333333333333
            3333333333333333333F333333333333330033333F33333333773333C3333333
            330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
            993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
            333333377F33333333FF3333C333333330003333733333333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
          ExplicitTop = 307
        end
        object JvDBStatusLabel1: TJvDBStatusLabel
          Left = 419
          Top = 273
          Width = 96
          Height = 13
          DataSource = DSLstEmpleados
          Style = lsRecordNo
          CalcRecCount = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Anchors = [akLeft, akBottom]
          ParentFont = False
          Transparent = True
          ExplicitTop = 288
        end
        object BitBtn3: TBitBtn
          Left = 511
          Top = 321
          Width = 75
          Height = 25
          Action = TraerEmpleados
          Anchors = [akLeft, akBottom]
          Caption = 'List.Emplea.'
          TabOrder = 0
        end
        object dbgHorasTrabajadas: TDBGrid
          Left = 1
          Top = 304
          Width = 487
          Height = 81
          Anchors = [akLeft, akBottom]
          DataSource = DSHorasTrabajadas
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'FECHA'
              Title.Alignment = taCenter
              Title.Color = clMoneyGreen
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 93
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENTRADA'
              Title.Alignment = taCenter
              Title.Color = clMoneyGreen
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
              FieldName = 'SALIDA'
              Title.Alignment = taCenter
              Title.Color = clMoneyGreen
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
              FieldName = 'MUESTRALUGAR'
              Title.Alignment = taCenter
              Title.Color = clMoneyGreen
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
        object dbgProduccion: TDBGrid
          Left = 1
          Top = 401
          Width = 441
          Height = 81
          Anchors = [akLeft, akBottom]
          DataSource = DatosLiquidacionSueldo.DSProduccion
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = pmSubMenu
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'FECHA'
              Title.Alignment = taCenter
              Title.Color = clMoneyGreen
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
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Color = clMoneyGreen
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 247
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_TOTAL'
              Title.Alignment = taCenter
              Title.Color = clMoneyGreen
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 87
              Visible = True
            end>
        end
        object dbgEmpleados: TDBGrid
          Left = 1
          Top = 1
          Width = 589
          Height = 269
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DSLstEmpleados
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = dbgEmpleadosDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'NOMBRE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 289
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MUESTRACATEGORIA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 170
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CUIL'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
      end
      object pnCab: TPanel
        Left = 1
        Top = 1
        Width = 591
        Height = 152
        Align = alTop
        TabOrder = 1
        object btnConsultar: TSpeedButton
          Left = 236
          Top = 117
          Width = 23
          Height = 22
          Hint = 'Buscar Periodo'
          Action = TraerEmpleados
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
            0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
            00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
            00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
            F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
            F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
            FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
            0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
            00337777FFFF77FF7733EEEE0000000003337777777777777333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
        end
        object Label1: TLabel
          Left = 16
          Top = 4
          Width = 74
          Height = 13
          Caption = 'Nro.Liquidacion'
          FocusControl = dbeId
        end
        object Label3: TLabel
          Left = 359
          Top = 52
          Width = 115
          Height = 13
          Caption = 'Categorias de Empleado'
        end
        object Label4: TLabel
          Left = 272
          Top = 102
          Width = 81
          Height = 13
          Caption = 'Lugar de Trabajo'
        end
        object Label5: TLabel
          Left = 264
          Top = 4
          Width = 36
          Height = 13
          Caption = 'Periodo'
          FocusControl = dbePeriodo
        end
        object Label6: TLabel
          Left = 16
          Top = 52
          Width = 93
          Height = 13
          Caption = 'Tipo de Liquidacion'
        end
        object Label7: TLabel
          Left = 112
          Top = 4
          Width = 87
          Height = 13
          Caption = 'Fecha Liquidacion'
        end
        object Label8: TLabel
          Left = 16
          Top = 102
          Width = 31
          Height = 13
          Caption = 'Desde'
        end
        object Label9: TLabel
          Left = 120
          Top = 102
          Width = 28
          Height = 13
          Caption = 'Hasta'
        end
        object dbcCategorias: TJvDBLookupCombo
          Left = 360
          Top = 68
          Width = 155
          Height = 21
          DataField = 'ID_CATEGORIAS'
          DataSource = DSBase
          DisplayEmpty = 'Todas'
          EmptyValue = '-1'
          LookupField = 'ID'
          LookupDisplay = 'DETALLE'
          LookupSource = DSCategorias
          TabOrder = 0
          TabStop = False
          OnClick = dbcCategoriasClick
        end
        object dbchCerrada: TDBCheckBox
          Left = 392
          Top = 20
          Width = 97
          Height = 17
          TabStop = False
          Caption = 'Luiq.Cerrada'
          DataField = 'CERRADA'
          DataSource = DSBase
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          Visible = False
        end
        object dbcTipo: TJvDBLookupCombo
          Left = 16
          Top = 68
          Width = 337
          Height = 21
          DataField = 'TIPOLIQUIDACION'
          DataSource = DSBase
          LookupField = 'ID'
          LookupDisplay = 'NOMBRE'
          LookupSource = DSTipoLiquidacion
          TabOrder = 2
        end
        object dbeFecha: TJvDBDateEdit
          Left = 112
          Top = 20
          Width = 121
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DataField = 'FECHALIQUIDACION'
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
          TabOrder = 3
        end
        object dbeId: TDBEdit
          Left = 16
          Top = 20
          Width = 67
          Height = 21
          TabStop = False
          DataField = 'ID'
          DataSource = DSBase
          TabOrder = 4
        end
        object dbePeriodo: TDBEdit
          Left = 264
          Top = 20
          Width = 113
          Height = 21
          TabStop = False
          DataField = 'PERIODO'
          DataSource = DSBase
          TabOrder = 5
        end
        object Desde: TJvDBDateEdit
          Left = 16
          Top = 118
          Width = 93
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataField = 'DESDE'
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
          TabOrder = 6
        end
        object Hasta: TJvDBDateEdit
          Left = 120
          Top = 118
          Width = 89
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          DataField = 'HASTA'
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
          TabOrder = 7
        end
        object RxDBLookupCombo1: TJvDBLookupCombo
          Left = 272
          Top = 118
          Width = 225
          Height = 21
          DataField = 'ID_LUGAR'
          DataSource = DSBase
          DisplayEmpty = 'Sin Eleccion'
          EmptyValue = '-1'
          LookupField = 'ID'
          LookupDisplay = 'DETALLE'
          LookupSource = DSLugar
          TabOrder = 8
        end
        object UpDown2: TUpDown
          Left = 215
          Top = 114
          Width = 17
          Height = 25
          Min = -100
          Position = 100
          TabOrder = 9
          Wrap = True
          OnClick = UpDown2Click
        end
      end
    end
    object pnListadoRc: TPanel
      Left = 593
      Top = 0
      Width = 611
      Height = 660
      Align = alClient
      Color = clGradientActiveCaption
      ParentBackground = False
      TabOrder = 1
      DesignSize = (
        611
        660)
      object JvDBStatusLabel2: TJvDBStatusLabel
        Left = 13
        Top = 310
        Width = 96
        Height = 13
        Style = lsRecordNo
        CalcRecCount = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Anchors = [akLeft, akBottom]
        ParentFont = False
        Transparent = True
      end
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 609
        Height = 307
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = DatosLiquidacionSueldo.DSRecibos
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0.00'
              Kind = skSum
              FieldName = 'NETO'
              Column = cxGrid1DBTableView1NETO
            end>
          OptionsSelection.CellSelect = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Styles.Header = cxStyle1
          object cxGrid1DBTableView1NUMERO: TcxGridDBColumn
            DataBinding.FieldName = 'NUMERO'
            HeaderAlignmentHorz = taCenter
            Width = 80
          end
          object cxGrid1DBTableView1NOMBRE: TcxGridDBColumn
            DataBinding.FieldName = 'NOMBRE'
            HeaderAlignmentHorz = taCenter
            Width = 210
          end
          object cxGrid1DBTableView1NETO: TcxGridDBColumn
            DataBinding.FieldName = 'NETO'
            HeaderAlignmentHorz = taCenter
            Width = 126
          end
          object cxGrid1DBTableView1MUESTRACATEGORIA: TcxGridDBColumn
            DataBinding.FieldName = 'MUESTRACATEGORIA'
            HeaderAlignmentHorz = taCenter
            Width = 169
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object BitBtn5: TBitBtn
        Left = 505
        Top = 310
        Width = 75
        Height = 26
        Anchors = [akLeft, akBottom]
        Caption = 'Imprimir'
        TabOrder = 1
        OnClick = BitBtn5Click
      end
      object pgcDetalles: TPageControl
        Left = 1
        Top = 337
        Width = 609
        Height = 281
        ActivePage = ts1
        Align = alBottom
        TabOrder = 2
        object ts1: TTabSheet
          Caption = 'Detalle Recibo'
          object DBAdvGrid1: TDBAdvGrid
            Left = 0
            Top = 0
            Width = 601
            Height = 253
            Align = alClient
            ColCount = 6
            DrawingStyle = gdsClassic
            FixedColor = clWhite
            FixedCols = 0
            RowCount = 2
            FixedRows = 1
            TabOrder = 0
            GridLineColor = 13948116
            GridFixedLineColor = 11250603
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = 4474440
            ActiveCellFont.Height = -12
            ActiveCellFont.Name = 'Segoe UI'
            ActiveCellFont.Style = [fsBold]
            ActiveCellColor = 11565130
            ActiveCellColorTo = 11565130
            BorderColor = 11250603
            ControlLook.FixedGradientFrom = clWhite
            ControlLook.FixedGradientTo = clWhite
            ControlLook.FixedGradientHoverFrom = clGray
            ControlLook.FixedGradientHoverTo = clWhite
            ControlLook.FixedGradientHoverMirrorFrom = clWhite
            ControlLook.FixedGradientHoverMirrorTo = clWhite
            ControlLook.FixedGradientHoverBorder = 11645361
            ControlLook.FixedGradientDownFrom = clWhite
            ControlLook.FixedGradientDownTo = clWhite
            ControlLook.FixedGradientDownMirrorFrom = clWhite
            ControlLook.FixedGradientDownMirrorTo = clWhite
            ControlLook.FixedGradientDownBorder = 11250603
            ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownHeader.Font.Color = clWindowText
            ControlLook.DropDownHeader.Font.Height = -11
            ControlLook.DropDownHeader.Font.Name = 'Segoe UI'
            ControlLook.DropDownHeader.Font.Style = []
            ControlLook.DropDownHeader.Visible = True
            ControlLook.DropDownHeader.Buttons = <>
            ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownFooter.Font.Color = clWindowText
            ControlLook.DropDownFooter.Font.Height = -11
            ControlLook.DropDownFooter.Font.Name = 'Segoe UI'
            ControlLook.DropDownFooter.Font.Style = []
            ControlLook.DropDownFooter.Visible = True
            ControlLook.DropDownFooter.Buttons = <>
            ControlLook.ToggleSwitch.BackgroundBorderWidth = 1.000000000000000000
            ControlLook.ToggleSwitch.ButtonBorderWidth = 1.000000000000000000
            ControlLook.ToggleSwitch.CaptionFont.Charset = DEFAULT_CHARSET
            ControlLook.ToggleSwitch.CaptionFont.Color = clWindowText
            ControlLook.ToggleSwitch.CaptionFont.Height = -12
            ControlLook.ToggleSwitch.CaptionFont.Name = 'Segoe UI'
            ControlLook.ToggleSwitch.CaptionFont.Style = []
            ControlLook.ToggleSwitch.Shadow = False
            Filter = <>
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -12
            FilterDropDown.Font.Name = 'Segoe UI'
            FilterDropDown.Font.Style = []
            FilterDropDown.TextChecked = 'Checked'
            FilterDropDown.TextUnChecked = 'Unchecked'
            FilterDropDownClear = '(All)'
            FilterEdit.TypeNames.Strings = (
              'Starts with'
              'Ends with'
              'Contains'
              'Not contains'
              'Equal'
              'Not equal'
              'Larger than'
              'Smaller than'
              'Clear')
            FixedColWidth = 161
            FixedRowHeight = 22
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = 3881787
            FixedFont.Height = -11
            FixedFont.Name = 'Segoe UI'
            FixedFont.Style = [fsBold]
            FloatFormat = '%.2f'
            HoverButtons.Buttons = <>
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            Look = glCustom
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -12
            PrintSettings.Font.Name = 'Segoe UI'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -12
            PrintSettings.FixedFont.Name = 'Segoe UI'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -12
            PrintSettings.HeaderFont.Name = 'Segoe UI'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -12
            PrintSettings.FooterFont.Name = 'Segoe UI'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            SearchFooter.ColorTo = clNone
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -12
            SearchFooter.Font.Name = 'Segoe UI'
            SearchFooter.Font.Style = []
            SearchFooter.HighLightCaption = 'Highlight'
            SearchFooter.HintClose = 'Close'
            SearchFooter.HintFindNext = 'Find next occurrence'
            SearchFooter.HintFindPrev = 'Find previous occurrence'
            SearchFooter.HintHighlight = 'Highlight occurrences'
            SearchFooter.MatchCaseCaption = 'Match case'
            SearchFooter.ResultFormat = '(%d of %d)'
            SelectionColor = 13744549
            SortSettings.HeaderColor = clWhite
            SortSettings.HeaderColorTo = clWhite
            SortSettings.HeaderMirrorColor = clWhite
            SortSettings.HeaderMirrorColorTo = clWhite
            Version = '2.8.3.9'
            AutoCreateColumns = True
            AutoRemoveColumns = True
            Columns = <
              item
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                FieldName = 'CONCEPTO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = 3881787
                HeaderFont.Height = -12
                HeaderFont.Name = 'Segoe UI'
                HeaderFont.Style = []
                HeaderAlignment = taCenter
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -12
                PrintFont.Name = 'Segoe UI'
                PrintFont.Style = []
                Width = 161
              end
              item
                Alignment = taRightJustify
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                FieldName = 'CANTIDAD'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = 3881787
                HeaderFont.Height = -12
                HeaderFont.Name = 'Segoe UI'
                HeaderFont.Style = []
                HeaderAlignment = taCenter
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -12
                PrintFont.Name = 'Segoe UI'
                PrintFont.Style = []
                Width = 85
              end
              item
                Alignment = taRightJustify
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                FieldName = 'REMUNERACION'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'MS Sans Serif'
                HeaderFont.Style = []
                HeaderAlignment = taCenter
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'MS Sans Serif'
                PrintFont.Style = []
                Width = 78
              end
              item
                Alignment = taRightJustify
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                FieldName = 'RETENCION'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'MS Sans Serif'
                HeaderFont.Style = []
                HeaderAlignment = taCenter
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'MS Sans Serif'
                PrintFont.Style = []
                Width = 83
              end
              item
                Alignment = taRightJustify
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                FieldName = 'REMUNERACIONEXENTA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'MS Sans Serif'
                HeaderFont.Style = []
                HeaderAlignment = taCenter
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'MS Sans Serif'
                PrintFont.Style = []
                Width = 72
              end
              item
                Alignment = taRightJustify
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                FieldName = 'BASE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'MS Sans Serif'
                HeaderFont.Style = []
                HeaderAlignment = taCenter
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'MS Sans Serif'
                PrintFont.Style = []
                Width = 99
              end>
            DataSource = DatosLiquidacionSueldo.DSDetalleRecibos
            InvalidPicture.Data = {
              055449636F6E0000010001002020200000000000A81000001600000028000000
              2000000040000000010020000000000000100000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000006A6A6B256A6A6B606A6A6B946A6A6BC06A6A6BE1
              6A6A6BF86A6A6BF86A6A6BE16A6A6BC06A6A6B946A6A6B606A6A6B2500000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000006A6A6B407575769E787879F19F9F9FF6C0C0C0FDDADADAFFEDEDEEFF
              FBFBFBFFFBFBFBFFEDEDEEFFDADADAFFC0C0C0FD9F9F9FF6787879F17575769E
              6A6A6B4000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000006A6A6B22
              7C7C7C98888889F0BDBDBDFCE9E9EBFED9D9E9FEB5B5DDFE8B8BCDFE595AB7FF
              3739A8FF2B2CA4FF4A49B1FF7171C1FFA1A2D7FFD3D3E8FFEAEAEBFEBEBEBFFC
              888889F07C7C7C986A6A6B220000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000006A6A6B43838383D8
              B7B7B8FAECECEFFEC0C0DFFF7977C4FF2221A0FF12129BFF1010A4FF0C0CA8FF
              0A0AACFF0A0AB4FF0A0AB9FF0D0DBEFF0F0FB1FF1111A6FF5656B8FFAEADDCFF
              ECECEFFEB7B7B8FA838383D86A6A6B4300000000000000000000000000000000
              00000000000000000000000000000000000000006A6A6B4E878788EAD3D3D3FE
              CACAE8FF4443B0FF171799FF11119CFF0C0C98FF0B0B9BFF0B0BA0FF0A0AA6FF
              0909ACFF0909B2FF0808BAFF0707BFFF0B09C8FF0D0DCEFF1111CCFF1010AFFF
              4A49B2FFCFCFEBFFD3D3D3FE878788EA6A6A6B4E000000000000000000000000
              000000000000000000000000000000006A6A6B43878788EAE1E1E1FFA8A8DAFF
              2323A0FF15159CFF0D0D92FF0C0C95FF0C0C99FF0B0B9EFF0B0BA0FF0A0AA6FF
              0909ACFF0909B2FF0808B8FF0808BCFF0808C3FF0C0CC9FF0C0CD0FF0D0DD6FF
              1313CFFF2222A9FFAFAFDEFFE1E1E1FF878788EA6A6A6B430000000000000000
              0000000000000000000000006A6A6B22838383D8D3D3D3FEA8A8D9FF2020A4FF
              13139BFF0C0C92FF0C0C95FF0C0C97FF0C0C99FF0B0B9EFF0B0BA0FF0A0AA4FF
              0A0AA9FF0909B0FF0808B4FF0808BBFF0707C0FF0A0AC6FF0909CCFF0C0CD3FF
              0D0DD8FF1313D3FF1A1AA8FFAEADDEFFD4D4D4FE838383D86A6A6B2200000000
              0000000000000000000000007C7C7C98B7B7B8FACACAE8FF2524A3FF13139FFF
              0C0C97FF0C0C95FF0C0C95FF0C0C91FF0C0C95FF0B0B9EFF0B0BA0FF0A0AA4FF
              0A0AA8FF0909ADFF0909B2FF0808B8FF0808BCFF0707C0FF0808BCFF0707C5FF
              0C0CD3FF0D0DD7FF1212D1FF2020A7FFCDCDEBFFB8B8B9FA7C7C7C9800000000
              00000000000000006A6A6B40888889F0ECECEFFE4545B1FF1616A4FF0B0B9BFF
              0C0C99FF0C0C96FF3333A2FFB9B9D0FF393A9BFF0C0C95FF0B0BA1FF0A0AA4FF
              0A0AA7FF0A0AABFF0909B0FF0808B4FF0808B7FF2F2FC2FFAEAEE2FF4B4BBFFF
              0707BEFF0B0BD1FF0C0CD3FF1413CCFF4848B1FFECECEFFE888889F06A6A6B40
              00000000000000007575769EBFBFBFFD9B9BD5FF1C1CA6FF0C0CA1FF0B0B9FFF
              0B0B9AFF3535A7FFB5B5BEFFE6E6DFFFEDEDEFFF3C3C9CFF0C0C97FF0A0AA4FF
              0A0AA6FF0A0AA9FF0909ADFF0909B0FF2626B5FFCECEDEFFFFFFFBFFEEEEF1FF
              4848BAFF0808BCFF0A0ACDFF0B0BCEFF1111ABFFBEC0E0FFBFC0BFFD7575769E
              000000006A6A6B25787879F1E3E3E5FE4646B2FF1414A8FF0A0AA4FF0B0BA0FF
              2121A9FFBDBDCAFFD0D0C8FFC5C5C5FFE3E3E1FFEDEDEFFF3E3E9EFF0C0C98FF
              0A0AA6FF0A0AA8FF0A0AA9FF2B2BB0FFC0C0CDFFEAEAE2FFEBEBEBFFFEFEF8FF
              EDEDEEFF2828BDFF0707C4FF0809C7FF0F0FC4FF8788CBFFEBEBECFE79797AF1
              6A6A6B256A6A6B609D9E9DF6D6D7E4FF3A3AB3FF1212ADFF0A0AA8FF0A0AA4FF
              1313AAFFABABCFFFD6D6CBFFCACACAFFC6C6C6FFE4E4E0FFEEEEEFFF3F3FA0FF
              0C0C99FF0A0AA6FF2828ABFFB2B2BFFFD8D8CEFFD6D6D8FFE0E0E0FFF6F5EDFF
              D1D1EDFF1E1CC0FF0707BEFF0707BFFF0707C0FF2120AAFFD3D5E9FE9FA0A0F6
              6A6A6B606A6A6B94BDBDBDFBBABBDCFF3A39B7FF2F2FB8FF0909ADFF0A0AA9FF
              0A0AA6FF1515ACFFADADCFFFD6D6CBFFCBCBCAFFC6C6C6FFE4E4E1FFEEEEEFFF
              3838A1FF2222A2FFACABB8FFC8C8C0FFC7C7C8FFCDCDCDFFE1E1D9FFC8CAE1FF
              2424BCFF0808B4FF0808B9FF0808BAFF0808BBFF0F0EABFFA1A2D5FEC0C0C0FC
              6A6A6B946A6A6BC0D9D8D7FE9999D1FF3838BBFF3636BCFF2C2CB7FF0909ADFF
              0A0AA9FF0A0AA4FF1C1CAFFFB1B1CFFFD6D6CBFFCCCCCBFFC7C7C7FFE4E4E1FF
              ECECEEFFACACB7FFC2C2BCFFBEBEBFFFC0C0C0FFCFCFC6FFC1C1D5FF2727B8FF
              0909ACFF0909B2FF0909B2FF0909B4FF0808B4FF0E0EB5FF6E6EBFFFD9D9D9FE
              6A6A6BC06A6A6BE1EBEAEBFF7D7CC7FF3838BFFF3434BEFF3536BEFF2A2AB8FF
              0909B0FF0909ACFF0A0AA8FF1C1CB1FFB2B2D0FFD7D7CCFFCBCBCBFFC7C7C8FF
              C8C8C3FFC6C6C3FFBFBFC1FFBDBDBDFFC5C5BCFFB8B8CEFF2929B5FF0A0AA8FF
              0909ACFF0909ADFF0909AFFF0909AFFF0909AFFF0C0CB0FF4747AFFFECECEDFF
              6A6A6BE16A6A6BF8F9F9F9FF6666C1FF3838C4FF3535C2FF3434C0FF3535BEFF
              3030BCFF1313B4FF0909ADFF0A0AA8FF1E1EB3FFAAAAD0FFD3D3CDFFCCCCCCFF
              C8C8C8FFC3C3C3FFC2C2C1FFC4C4BFFFB2B2CBFF2B2BB4FF0A0AA4FF0A0AA8FF
              0A0AA8FF0A0AA9FF0A0AA9FF0A0AA9FF0A0AA9FF0B0BA9FF3131A6FFFAFAFAFF
              6A6A6BF86A6A6BF8FBFBFBFF5959BEFF3B3BCAFF3A3AC8FF3737C4FF3535C2FF
              3636C0FF3636BEFF2323B8FF0909B1FF0A0AA7FF4949BEFFD6D6D4FFD3D3D1FF
              CDCDCDFFC8C8C8FFC4C4C3FFEDEDEDFF5F5FB3FF0C0C98FF0A0AA7FF0A0AA6FF
              0A0AA6FF0A0AA6FF0A0AA4FF0A0AA6FF0A0AA4FF0B0BA4FF2D2DA6FFFBFBFBFF
              6A6A6BF86A6A6BE1EDEDEEFF7F80CBFF4041CCFF3C3CCAFF3A3AC8FF383AC8FF
              3838C4FF3636C2FF3939C0FF2123B7FF4A4AC2FFCBCBDEFFE0E0DCFFD6D6D6FF
              D2D2D3FFCDCDCEFFC9C9C9FFE2E2E1FFF1F1F2FF4242A3FF0C0C99FF0A0AA4FF
              0A0AA4FF0A0AA4FF0B0BA3FF0B0BA3FF0B0BA1FF0E0EA1FF4443B0FFEDEDEEFF
              6A6A6BE16A6A6BC0DADADAFF9C9BD5FE4949CDFF3E3DD0FF3C3DCEFF3C3CCAFF
              3A3AC8FF3B39C7FF2828BDFF5C5CCCFFE5E5EDFFF4F4EDFFE5E5E6FFDEDEDEFF
              DCDCD9FFD9D9D3FFCDCDCDFFC8C8C8FFE5E5E1FFF1F1F3FF3F3FA0FF0C0C99FF
              0A0AA4FF0B0BA1FF0B0BA0FF0B0BA0FF0B0B9FFF1313A2FF6B6BC0FFDADADAFF
              6A6A6BC06A6A6B94C0C0C0FDBDBAE1FE5655CFFF4141D4FF3F3FD2FF3F3FCEFF
              3D3DCCFF2C2AC3FF5E5ED3FFEBEBF6FFFFFFFAFFF1F1F1FFEDEDEEFFF0F0E9FF
              D2D2E6FFBDBDD6FFDADAD3FFCFCFCFFFC9C9CAFFE5E5E2FFF1F1F3FF3A3AA0FF
              0C0C98FF0B0BA3FF0B0B9FFF0B0B9EFF0B0B9EFF1C1CA4FF9C9CD3FFC1C1C1FD
              6A6A6B946A6A6B609F9F9FF6DAD9EAFF6B6BCFFF4444D7FF4143D6FF4242D3FF
              3434CDFF6464DBFFEFEFFFFFFFFFFFFFFCFCFCFFF6F6F6FFFCFCF4FFE2E1F0FF
              5050CCFF4040C1FFC3C3DBFFE1E1D8FFD4D4D5FFCFCFCFFFE8E8E5FFF2F2F4FF
              4040A2FF0C0C99FF0F0FA2FF0F0FA0FF0F0F9DFF302FA9FFD1D1E8FEA0A0A0F6
              6A6A6B606A6A6B25787879F1E9E9EBFEA7A7DAFF6060DBFF4547DBFF3C3CD6FF
              5857DEFFF2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8F8FF5B5BD4FF
              2828BDFF2A2BBDFF4949C5FFC3C3DBFFE4E4DAFFD5D5D5FFCECED0FFE8E8E5FF
              F4F4F4FF4949AFFF2121A6FF2A2AA6FF2C2BA9FF5557B8FFEAEAECFE787879F1
              6A6A6B25000000007575769EBEBEBEFDC9CAE6FF7A79DBFF4C4CDFFF4141DBFF
              5757E0FFEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E7FFFF5B5BD7FF2E2EC6FF
              3E3EC9FF3A3AC5FF2C2EC1FF4A49C8FFC2C2DDFFE3E3DAFFD5D5D4FFDADAD3FF
              CACBD9FF4747BBFF2525ADFF2C2BACFF3332AEFFA5A4D8FFBFBFBFFD7575769E
              00000000000000006A6A6B40888889F0ECECEFFE9696D6FF7B7BE3FF4D4BE0FF
              4141DBFF5F5FE6FFE7E7FFFFFFFFFFFFE9E9FFFF5A5ADCFF3333CAFF4242CFFF
              4040CBFF3D3DC9FF3D3EC8FF3030C2FF4848C9FFC0C0DDFFECEEDEFFD0D0E0FF
              5554C7FF2828B3FF3232B4FF3434B1FF5453B7FFECECEFFE888889F06A6A6B40
              0000000000000000000000007C7C7C98B7B7B8FAD0D0ECFF8F8FDBFF6868E3FF
              4E4EE2FF3E40DBFF6565E9FFB2B2F7FF6565E4FF393BD2FF4646D7FF4343D4FF
              4343D1FF4242CFFF4040CBFF3F3FCAFF3333C4FF4E4ECBFF9E9EE2FF5C5BCFFF
              292ABAFF3636BCFF3938B8FF3F3EB1FFCBCBE9FFB7B7B8FA7C7C7C9800000000
              0000000000000000000000006A6A6B22838383D8D3D3D3FEB5B5E2FF9E9EE4FF
              6766E2FF4E50E6FF4646E0FF3D3DDAFF4444DCFF4B4BDCFF4848DBFF4847D9FF
              4646D5FF4443D3FF4343D1FF4242CFFF4143CDFF3A3AC8FF312FC5FF3535C3FF
              3C3CC3FF3D3DBEFF403FB5FFACACDCFFD3D3D3FE838383D86A6A6B2200000000
              000000000000000000000000000000006A6A6B43878788EAE1E1E1FFB5B5E2FF
              A7A6E4FF7877E5FF5151E5FF4F4FE4FF4E4EE2FF4D4DE0FF4C4CDEFF4B4BDCFF
              4949DBFF4848D7FF4747D5FF4545D3FF4545D1FF4343CFFF4242CCFF3F3FCBFF
              4343C2FF4645B6FFADADDCFFE1E1E1FF878788EA6A6A6B430000000000000000
              00000000000000000000000000000000000000006A6A6B4E878788EAD3D3D3FE
              D0D0ECFFAAA9DFFFA2A2ECFF6565E3FF5151E6FF4F4FE4FF4F4DE4FF4D4DE0FF
              4D4DDFFF4D4DDCFF4C49DBFF4A4AD8FF4749D6FF4747D4FF4949CBFF4B4BC3FF
              8E8ED0FFCDCCE8FFD3D3D3FE878788EA6A6A6B4E000000000000000000000000
              0000000000000000000000000000000000000000000000006A6A6B43838383D8
              B7B7B8FAECECEFFEC3C2E5FFADAEE1FF9E9DE8FF6F6FE0FF5C5CE1FF5452E2FF
              5051E1FF4F4FDFFF4F4FDBFF5150D6FF5151CFFF5F5FC8FFA1A1D3FEC7C8E0FE
              E4E4E7FEB7B7B8FA838383D86A6A6B4300000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000006A6A6B22
              7C7C7C98888889F0BFBFBFFDEBEBECFED8D9EBFEBDBDE4FEA8A7DCFF9695D7FF
              8886D4FF7F7DCEFF8C8BD2FFA1A2D9FFC0BEE1FED9D9EAFEEAEAECFEBFBFBFFD
              888889F07C7C7C986A6A6B220000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000006A6A6B407575769E787879F19F9F9FF6C0C0C0FDDADADAFFEDEDEEFF
              FBFBFBFFFBFBFBFFEDEDEEFFDADADAFFC0C0C0FD9F9F9FF6787879F17575769E
              6A6A6B4000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000006A6A6B256A6A6B606A6A6B946A6A6BC06A6A6BE1
              6A6A6BF86A6A6BF86A6A6BE16A6A6BC06A6A6B946A6A6B606A6A6B2500000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000FFC003FFFF0000FFFC00003FF800001FF000000FE0000007C0000003
              C000000380000001800000010000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000080000001
              80000001C0000003C0000003E0000007F000000FF800001FFC00003FFF0000FF
              FFC003FF}
            ShowUnicode = False
            ColWidths = (
              161
              85
              78
              83
              72
              99)
            RowHeights = (
              22
              22)
          end
        end
        object ts2: TTabSheet
          Caption = 'Horas'
          ImageIndex = 1
          object dbgrd1: TDBGrid
            Left = 8
            Top = 3
            Width = 473
            Height = 191
            DataSource = DatosLiquidacionSueldo.DSHorasRecibo
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ID'
                Title.Alignment = taCenter
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FECHA'
                Title.Alignment = taCenter
                Width = 98
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MUESTRALUGAR'
                Title.Alignment = taCenter
                Width = 112
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ENTRADA'
                Title.Alignment = taCenter
                Width = 84
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SALIDA'
                Title.Alignment = taCenter
                Width = 74
                Visible = True
              end>
          end
        end
        object ts3: TTabSheet
          Caption = 'Produccion'
          ImageIndex = 2
          object dbgrd2: TDBGrid
            Left = 3
            Top = 3
            Width = 565
            Height = 186
            DataSource = DatosLiquidacionSueldo.DSProduccionRecibo
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ID'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FECHA'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_CONCEPTO'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DETALLE'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR_TOTAL'
                Title.Alignment = taCenter
                Width = 93
                Visible = True
              end>
          end
        end
      end
      object Panel3: TPanel
        Left = 1
        Top = 618
        Width = 609
        Height = 41
        Align = alBottom
        Color = clHighlight
        ParentBackground = False
        TabOrder = 3
        DesignSize = (
          609
          41)
        object BitBtn2: TBitBtn
          Left = 378
          Top = 6
          Width = 75
          Height = 25
          Action = CancelaLiq
          Anchors = [akLeft, akBottom]
          Caption = 'Cancela Liq'
          TabOrder = 0
        end
        object BitBtn1: TBitBtn
          Left = 484
          Top = 6
          Width = 75
          Height = 25
          Action = Liquidar
          Anchors = [akLeft, akBottom]
          Caption = 'Liquidar'
          TabOrder = 1
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 660
    Width = 1204
    Align = alBottom
    ExplicitTop = 660
    ExplicitWidth = 1204
    object ToolButton1: TToolButton
      Left = 557
      Top = 0
      Width = 104
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object BitBtn4: TBitBtn
      Left = 661
      Top = 0
      Width = 75
      Height = 29
      Action = Imprimir
      Caption = 'Imprimir'
      TabOrder = 8
    end
    object chPreview: TCheckBox
      Left = 736
      Top = 0
      Width = 97
      Height = 29
      Caption = 'Preview'
      TabOrder = 7
    end
  end
  inherited Panel1: TPanel
    Top = 690
    Width = 1204
    Align = alBottom
    ExplicitTop = 690
    ExplicitWidth = 1204
    inherited sbEstado: TStatusBar
      Width = 1042
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 1042
    end
  end
  inherited ActionList1: TActionList
    Left = 512
    Top = 0
    object TraerEmpleados: TAction
      OnExecute = TraerEmpleadosExecute
    end
    object SelectAll: TAction
      OnExecute = SelectAllExecute
    end
    object UnSelect: TAction
      OnExecute = UnSelectExecute
    end
    object Liquidar: TAction
      Caption = 'Liquidar'
      OnExecute = LiquidarExecute
    end
    object CancelaLiq: TAction
      Caption = 'Cancela Liq'
      OnExecute = CancelaLiqExecute
    end
    object Imprimir: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirExecute
    end
    object actMarcarLiquidad: TAction
      Caption = 'Marcar Liquidada'
    end
  end
  inherited DSBase: TDataSource
    DataSet = DatosLiquidacionSueldo.CDSLiquidacion
    Left = 528
    Top = 32
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 24
    Top = 400
  end
  inherited ComBuscadorBase: TComBuscador
    Data = QBuscadorLiquidacion
    Campo = 'Id'
    Left = 488
    Top = 352
  end
  inherited QBrowse2: TFDQuery
    Left = 80
    Top = 280
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 96
    Top = 440
  end
  object DSTipoLiquidacion: TDataSource
    DataSet = DatosLiquidacionSueldo.QTipoLiquidacion
    Left = 520
    Top = 168
  end
  object DSLstEmpleados: TDataSource
    DataSet = CDSLstEmpleados
    Left = 520
    Top = 224
  end
  object DSCategorias: TDataSource
    DataSet = DatosLiquidacionSueldo.QCategorias
    OnStateChange = DSBaseStateChange
    Left = 536
    Top = 80
  end
  object DSLugar: TDataSource
    DataSet = DatosLiquidacionSueldo.QLugar
    OnStateChange = DSBaseStateChange
    Left = 128
    Top = 168
  end
  object pmSubMenu: TPopupMenu
    Left = 992
    Top = 481
    object actMarcarLiquidad1: TMenuItem
      Action = actMarcarLiquidad
    end
  end
  object frxReport: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42677.544218680600000000
    ReportOptions.LastChange = 42681.468491377320000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 728
    Top = 432
    Datasets = <
      item
        DataSet = frDetalle
        DataSetName = 'frDetalle'
      end
      item
        DataSet = frProduccion
        DataSetName = 'frProduccion'
      end
      item
        DataSet = frRecibo
        DataSetName = 'frRecibo'
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
    end
  end
  object frRecibo: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frRecibo'
    CloseDataSource = False
    OpenDataSource = False
    DataSource = DatosLiquidacionSueldo.DSRecibos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 760
    Top = 536
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'IDLIQUIDACION'
        FieldAlias = 'IDLIQUIDACION'
      end
      item
        FieldName = 'LEGAJO'
        FieldAlias = 'LEGAJO'
      end
      item
        FieldName = 'NUMERO'
        FieldAlias = 'NUMERO'
      end
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'DIRECCIONEMPLEADO'
        FieldAlias = 'DIRECCIONEMPLEADO'
      end
      item
        FieldName = 'CATEGORIA'
        FieldAlias = 'CATEGORIA'
      end
      item
        FieldName = 'SECCION'
        FieldAlias = 'SECCION'
      end
      item
        FieldName = 'VALORHORA'
        FieldAlias = 'VALORHORA'
      end
      item
        FieldName = 'IDEMPLEADOR'
        FieldAlias = 'IDEMPLEADOR'
      end
      item
        FieldName = 'EMPLEADOR'
        FieldAlias = 'EMPLEADOR'
      end
      item
        FieldName = 'DIRECCIONEMPLEADOR'
        FieldAlias = 'DIRECCIONEMPLEADOR'
      end
      item
        FieldName = 'CAJAJUBILACION'
        FieldAlias = 'CAJAJUBILACION'
      end
      item
        FieldName = 'LOCALIDAD'
        FieldAlias = 'LOCALIDAD'
      end
      item
        FieldName = 'REMUNERACIONES'
        FieldAlias = 'REMUNERACIONES'
      end
      item
        FieldName = 'REMUNERACIONESEXENTAS'
        FieldAlias = 'REMUNERACIONESEXENTAS'
      end
      item
        FieldName = 'RETENCIONES'
        FieldAlias = 'RETENCIONES'
      end
      item
        FieldName = 'NETO'
        FieldAlias = 'NETO'
      end
      item
        FieldName = 'ENLETRAS'
        FieldAlias = 'ENLETRAS'
      end
      item
        FieldName = 'ACUMULADOAGUINALDO'
        FieldAlias = 'ACUMULADOAGUINALDO'
      end
      item
        FieldName = 'DEPOSITADO'
        FieldAlias = 'DEPOSITADO'
      end
      item
        FieldName = 'CUITEMPLEADOR'
        FieldAlias = 'CUITEMPLEADOR'
      end
      item
        FieldName = 'CUIL_EMPLEADO'
        FieldAlias = 'CUIL_EMPLEADO'
      end
      item
        FieldName = 'TIPO_LIQUIDACION'
        FieldAlias = 'TIPO_LIQUIDACION'
      end
      item
        FieldName = 'BASICO'
        FieldAlias = 'BASICO'
      end
      item
        FieldName = 'PERIODO'
        FieldAlias = 'PERIODO'
      end
      item
        FieldName = 'MUESTRATIPOLIQUIDACION'
        FieldAlias = 'MUESTRATIPOLIQUIDACION'
      end
      item
        FieldName = 'MUESTRACATEGORIA'
        FieldAlias = 'MUESTRACATEGORIA'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'EMPLEADO'
        FieldAlias = 'EMPLEADO'
      end
      item
        FieldName = 'DESDE'
        FieldAlias = 'DESDE'
      end
      item
        FieldName = 'HASTA'
        FieldAlias = 'HASTA'
      end
      item
        FieldName = 'INGRESO'
        FieldAlias = 'INGRESO'
      end>
  end
  object frDetalle: TfrxDBDataset
    UserName = 'frDetalle'
    CloseDataSource = False
    OpenDataSource = False
    DataSource = DatosLiquidacionSueldo.DSDetalleRecibos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 632
    Top = 520
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'IDRECIBO'
        FieldAlias = 'IDRECIBO'
      end
      item
        FieldName = 'TIPO'
        FieldAlias = 'TIPO'
      end
      item
        FieldName = 'IDCONCEPTO'
        FieldAlias = 'IDCONCEPTO'
      end
      item
        FieldName = 'CONCEPTO'
        FieldAlias = 'CONCEPTO'
      end
      item
        FieldName = 'CALCULO'
        FieldAlias = 'CALCULO'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'PORCENTAJE'
        FieldAlias = 'PORCENTAJE'
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end
      item
        FieldName = 'REMUNERACION'
        FieldAlias = 'REMUNERACION'
      end
      item
        FieldName = 'REMUNERACIONEXENTA'
        FieldAlias = 'REMUNERACIONEXENTA'
      end
      item
        FieldName = 'RETENCION'
        FieldAlias = 'RETENCION'
      end
      item
        FieldName = 'BASE'
        FieldAlias = 'BASE'
      end
      item
        FieldName = 'NUMERO'
        FieldAlias = 'NUMERO'
      end>
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 800
    Top = 224
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 80
    Top = 16
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object frProduccion: TfrxDBDataset
    UserName = 'frProduccion'
    CloseDataSource = False
    DataSource = DatosLiquidacionSueldo.DSProduccion
    BCDToCurrency = False
    DataSetOptions = []
    Left = 880
    Top = 520
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'ID_CONCEPTO'
        FieldAlias = 'ID_CONCEPTO'
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
        FieldName = 'VALOR_UNITARIO'
        FieldAlias = 'VALOR_UNITARIO'
      end
      item
        FieldName = 'VALOR_TOTAL'
        FieldAlias = 'VALOR_TOTAL'
      end
      item
        FieldName = 'LEGAJO'
        FieldAlias = 'LEGAJO'
      end
      item
        FieldName = 'LIQUIDADO'
        FieldAlias = 'LIQUIDADO'
      end
      item
        FieldName = 'IDRECIBO'
        FieldAlias = 'IDRECIBO'
      end
      item
        FieldName = 'IDLUGAR'
        FieldAlias = 'IDLUGAR'
      end
      item
        FieldName = 'IDLIQUIDACION'
        FieldAlias = 'IDLIQUIDACION'
      end
      item
        FieldName = 'IDEMPLEADO'
        FieldAlias = 'IDEMPLEADO'
      end
      item
        FieldName = 'MUESTRALUGAR'
        FieldAlias = 'MUESTRALUGAR'
      end>
  end
  object DSPLstEmpleados: TDataSetProvider
    DataSet = DatosLiquidacionSueldo.QLstEmpleados
    Options = []
    Left = 264
    Top = 216
  end
  object CDSLstEmpleados: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_categoria'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'DSPLstEmpleados'
    AfterScroll = CDSLstEmpleadosAfterScroll
    Left = 376
    Top = 208
    object CDSLstEmpleadosCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSLstEmpleadosNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object CDSLstEmpleadosDOMICILIO: TStringField
      DisplayLabel = 'Domicilio'
      FieldName = 'DOMICILIO'
      Origin = 'DOMICILIO'
      Size = 50
    end
    object CDSLstEmpleadosCATEGORIA: TIntegerField
      DisplayLabel = 'Categ.'
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
    end
    object CDSLstEmpleadosFECHA_INGRESO: TSQLTimeStampField
      DisplayLabel = 'F.Ingreso'
      FieldName = 'FECHA_INGRESO'
      Origin = 'FECHA_INGRESO'
    end
    object CDSLstEmpleadosCUIL: TStringField
      DisplayLabel = 'Cuil'
      FieldName = 'CUIL'
      Origin = 'CUIL'
      Required = True
      Size = 13
    end
    object CDSLstEmpleadosSUELDO_BASICO: TFloatField
      FieldName = 'SUELDO_BASICO'
      Origin = 'SUELDO_BASICO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object CDSLstEmpleadosMUESTRACATEGORIA: TStringField
      DisplayLabel = 'Categoria'
      FieldName = 'MUESTRACATEGORIA'
      ReadOnly = True
      Size = 30
    end
  end
  object DSHorasTrabajadas: TDataSource
    DataSet = DatosLiquidacionSueldo.QHorasTrabajadas
    Left = 377
    Top = 511
  end
  object QBuscadorLiquidacion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select l.id, l.fechaliquidacion,l.desde,l.hasta,l.periodo,t.nomb' +
        're as MuestraTipoLiquidacion from personal_liquidaciones l '
      'left join PERSONAL_LIQUIDACION_TIPO t on t.id=l.tipoliquidacion'
      'order by l.fechaliquidacion')
    Left = 344
    Top = 361
    object QBuscadorLiquidacionFECHALIQUIDACION: TSQLTimeStampField
      DisplayLabel = 'Fecha Liq.'
      FieldName = 'FECHALIQUIDACION'
      Origin = 'FECHALIQUIDACION'
    end
    object QBuscadorLiquidacionDESDE: TSQLTimeStampField
      DisplayLabel = 'Desde'
      FieldName = 'DESDE'
      Origin = 'DESDE'
    end
    object QBuscadorLiquidacionHASTA: TSQLTimeStampField
      DisplayLabel = 'Hasta'
      FieldName = 'HASTA'
      Origin = 'HASTA'
    end
    object QBuscadorLiquidacionPERIODO: TStringField
      DisplayLabel = 'Perido'
      FieldName = 'PERIODO'
      Origin = 'PERIODO'
    end
    object QBuscadorLiquidacionMUESTRATIPOLIQUIDACION: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'MUESTRATIPOLIQUIDACION'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QBuscadorLiquidacionID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object frEmpresa: TfrxDBDataset
    UserName = 'frEmpresa'
    CloseDataSource = False
    OpenDataSource = False
    DataSet = DatosLiquidacionSueldo.CDSEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 864
    Top = 456
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
        FieldName = 'TASA_RET_IIBB'
        FieldAlias = 'TASA_RET_IIBB'
      end
      item
        FieldName = 'MINIMO_IMP_RET_IIBB'
        FieldAlias = 'MINIMO_IMP_RET_IIBB'
      end
      item
        FieldName = 'PUNITORIOS'
        FieldAlias = 'PUNITORIOS'
      end
      item
        FieldName = 'FECHA_INICIO_ACTI'
        FieldAlias = 'FECHA_INICIO_ACTI'
      end
      item
        FieldName = 'NRO_RENSPA'
        FieldAlias = 'NRO_RENSPA'
      end
      item
        FieldName = 'NRO_RUCA'
        FieldAlias = 'NRO_RUCA'
      end
      item
        FieldName = 'CUIT_AUTORIZADO'
        FieldAlias = 'CUIT_AUTORIZADO'
      end
      item
        FieldName = 'NOMBRE_AUTORIZADO'
        FieldAlias = 'NOMBRE_AUTORIZADO'
      end
      item
        FieldName = 'CBU'
        FieldAlias = 'CBU'
      end
      item
        FieldName = 'AG_PERCEPCION_IVA'
        FieldAlias = 'AG_PERCEPCION_IVA'
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
        FieldName = 'DIRECCION_NRO'
        FieldAlias = 'DIRECCION_NRO'
      end
      item
        FieldName = 'MIN_IMP_PERCEPCION_IVA'
        FieldAlias = 'MIN_IMP_PERCEPCION_IVA'
      end>
  end
end
