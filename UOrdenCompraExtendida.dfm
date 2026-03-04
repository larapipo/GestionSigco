inherited FormOrdenCompraExt: TFormOrdenCompraExt
  Left = 120
  Top = 71
  Caption = 'Orden de Compra Extendida'
  ClientHeight = 676
  ClientWidth = 768
  ExplicitLeft = 120
  ExplicitTop = 71
  ExplicitWidth = 778
  ExplicitHeight = 712
  PixelsPerInch = 96
  TextHeight = 13
  GlassFrame.SheetOfGlass = True
  inherited pnPrincipal: TPanel
    Width = 768
    Height = 409
    ExplicitWidth = 768
    ExplicitHeight = 409
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 768
      Height = 154
      Align = alTop
      TabOrder = 0
      ExplicitLeft = -9
      ExplicitTop = -1
      ExplicitWidth = 712
      object dbtMuestraComprob: TDBText
        Left = 342
        Top = 16
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
      object DBText10: TDBText
        Left = 488
        Top = 19
        Width = 22
        Height = 17
        DataField = 'LETRA'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 6
        Top = 2
        Width = 30
        Height = 13
        Caption = 'Fecha'
      end
      object Label9: TLabel
        Left = 92
        Top = 1
        Width = 95
        Height = 13
        Caption = 'Sucursal de Compra'
      end
      object Label10: TLabel
        Left = 296
        Top = 2
        Width = 102
        Height = 13
        Caption = 'Tipo de Comprobante'
      end
      object Label11: TLabel
        Left = 516
        Top = 3
        Width = 101
        Height = 13
        Caption = 'Nro. de Comprobante'
      end
      object Label12: TLabel
        Left = 6
        Top = 38
        Width = 49
        Height = 13
        Caption = 'Proveedor'
      end
      object Label13: TLabel
        Left = 6
        Top = 75
        Width = 101
        Height = 13
        Caption = 'Condicion de Compra'
      end
      object Label14: TLabel
        Left = 6
        Top = 112
        Width = 42
        Height = 13
        Caption = 'Dep'#243'sito'
      end
      object Label18: TLabel
        Left = 384
        Top = 38
        Width = 106
        Height = 13
        Caption = 'Fecha de Vencimiento'
      end
      object Label22: TLabel
        Left = 231
        Top = 75
        Width = 65
        Height = 13
        Caption = 'Solicitada Por'
      end
      object lbModo: TLabel
        Left = 223
        Top = 122
        Width = 175
        Height = 26
        Caption = 'Modo Operacion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -24
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbEstado: TLabel
        Left = 512
        Top = 48
        Width = 21
        Height = 24
        Caption = '- -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
        Font.Height = -21
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTopOC: TLabel
        Left = 552
        Top = 93
        Width = 50
        Height = 13
        Alignment = taRightJustify
        Caption = 'lbTopOC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTotalOC: TLabel
        Left = 657
        Top = 93
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Label24'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 529
        Top = 74
        Width = 73
        Height = 13
        Caption = 'Max.Autorizado'
      end
      object Label26: TLabel
        Left = 608
        Top = 74
        Width = 96
        Height = 13
        Alignment = taRightJustify
        Caption = 'O.C Autorizado/Rec'
      end
      object lbTotalGral: TLabel
        Left = 657
        Top = 131
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Label24'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label27: TLabel
        Left = 616
        Top = 112
        Width = 88
        Height = 13
        Caption = 'Total O.C del  Mes'
      end
      object Label28: TLabel
        Left = 522
        Top = 112
        Width = 80
        Height = 13
        Alignment = taRightJustify
        Caption = 'O.C Sin Autorizar'
      end
      object lbNueva: TLabel
        Left = 556
        Top = 131
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Label24'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 408
        Top = 112
        Width = 42
        Height = 13
        Caption = 'Tipo O:C'
      end
      object dbeSuc: TDBEdit
        Left = 514
        Top = 16
        Width = 49
        Height = 24
        TabStop = False
        DataField = 'SUC'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object dbeNumero: TDBEdit
        Left = 570
        Top = 16
        Width = 81
        Height = 24
        TabStop = False
        DataField = 'NUMERO'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object dbeNombre: TDBEdit
        Left = 80
        Top = 53
        Width = 289
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'RazonSocial'
        DataSource = DSBase
        Enabled = False
        TabOrder = 10
      end
      object dbeSucursal: TDBEdit
        Left = 142
        Top = 16
        Width = 153
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRASUCURSAL'
        DataSource = DSBase
        Enabled = False
        TabOrder = 9
      end
      object dbeCondCompra: TDBEdit
        Left = 64
        Top = 90
        Width = 153
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRACONDCOMPRA'
        DataSource = DSBase
        Enabled = False
        TabOrder = 11
      end
      object RxDBECodigo: TRxDBComboEdit
        Left = 6
        Top = 53
        Width = 65
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'Codigo'
        DataSource = DSBase
        GlyphKind = gkEllipsis
        ButtonWidth = 16
        NumGlyphs = 1
        TabOrder = 1
      end
      object RxDBESucursal: TRxDBComboEdit
        Left = 95
        Top = 16
        Width = 45
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'SUCURSAL'
        DataSource = DSBase
        GlyphKind = gkEllipsis
        ButtonWidth = 16
        NumGlyphs = 1
        TabOrder = 2
      end
      object RxDBECondCompra: TRxDBComboEdit
        Left = 6
        Top = 90
        Width = 45
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'CondicionCompra'
        DataSource = DSBase
        GlyphKind = gkEllipsis
        ButtonWidth = 16
        NumGlyphs = 1
        TabOrder = 4
      end
      object RxDBEDeposito: TRxDBComboEdit
        Left = 6
        Top = 128
        Width = 45
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'Deposito'
        DataSource = DSBase
        GlyphKind = gkEllipsis
        ButtonWidth = 16
        NumGlyphs = 1
        TabOrder = 5
      end
      object dbeDeposito: TDBEdit
        Left = 64
        Top = 128
        Width = 153
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRADEPOSITO'
        DataSource = DSBase
        Enabled = False
        TabOrder = 12
      end
      object RxCTipoCpbte: TRxDBComboEdit
        Left = 297
        Top = 16
        Width = 42
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'ID_TIPOCOMPROBANTE'
        DataSource = DSBase
        GlyphKind = gkEllipsis
        ButtonWidth = 15
        NumGlyphs = 1
        TabOrder = 3
      end
      object dbeMuestraRealizo: TDBEdit
        Left = 315
        Top = 90
        Width = 182
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRAREALIZO'
        DataSource = DSBase
        Enabled = False
        TabOrder = 13
      end
      object RxDBRealizo: TRxDBComboEdit
        Left = 230
        Top = 90
        Width = 75
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'REALIZO'
        DataSource = DSBase
        GlyphKind = gkEllipsis
        ButtonWidth = 16
        NumGlyphs = 1
        TabOrder = 14
      end
      object dbeFechaCompra: TDBDateEdit
        Left = 6
        Top = 16
        Width = 87
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        DataField = 'FECHA'
        DataSource = DSBase
        NumGlyphs = 2
        TabOrder = 0
      end
      object dbeFechaVencimiento: TDBDateEdit
        Left = 384
        Top = 52
        Width = 89
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        DataField = 'FECHAVTO'
        DataSource = DSBase
        NumGlyphs = 2
        TabOrder = 8
      end
      object JvDBComboBox1: TJvDBComboBox
        Left = 407
        Top = 127
        Width = 109
        Height = 21
        Hint = 
          'Cerrada: Para el Centro de Distribuci'#243'n'#13#10'Semi Cerrada: Para el C' +
          'D y Sucursales'#13#10'Abierta:Para entrega Directa a las Sucursales'
        DataField = 'TIPO'
        DataSource = DSBase
        ItemHeight = 13
        Items.Strings = (
          'Cerrada'
          'Semi.Cerr'
          'Abierta')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        Values.Strings = (
          '1'
          '2'
          '3')
      end
    end
    object pnCosto: TPanel
      Left = 216
      Top = 387
      Width = 535
      Height = 21
      Enabled = False
      TabOrder = 1
      object dbtDetalle: TDBText
        Left = 5
        Top = 4
        Width = 476
        Height = 15
        DataField = 'Detalle'
        DataSource = DatosOrdenCompra.wwDSOrdenCompraDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object pcDetalleFactura: TPageControl
      Left = 0
      Top = 154
      Width = 768
      Height = 255
      ActivePage = pagDetalle
      Align = alTop
      TabOrder = 2
      TabPosition = tpBottom
      ExplicitWidth = 711
      object pagDetalle: TTabSheet
        Caption = 'Detalles'
        ExplicitLeft = 8
        ExplicitTop = 3
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Bevel48: TBevel
          Left = 583
          Top = 189
          Width = 111
          Height = 21
        end
        object dbtTotal: TDBText
          Left = 616
          Top = 191
          Width = 75
          Height = 17
          Alignment = taRightJustify
          DataField = 'Total'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 535
          Top = 190
          Width = 41
          Height = 20
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 421
          Top = 127
          Width = 38
          Height = 13
          Caption = 'Autoriz'#243
        end
        object Label15: TLabel
          Left = 421
          Top = 170
          Width = 91
          Height = 13
          Caption = 'Fecha Autorizaci'#243'n'
        end
        object DBGrillaDetalle: TDBGrid
          Left = 1
          Top = 1
          Width = 699
          Height = 120
          DataSource = DatosOrdenCompraExtendida.DSOCDet
          FixedColor = 10930928
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CODIGOARTICULO'
              Title.Alignment = taCenter
              Title.Caption = 'Codigo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Caption = 'Detalle'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 259
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'UNIDAD'
              Title.Caption = 'Uni'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 26
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDADPEDIDA'
              Title.Alignment = taCenter
              Title.Caption = 'Pedi.'
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
              FieldName = 'UNITARIO_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = '$ Uni.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 68
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'TOTAL'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Total'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
        object dbeMuestraAutorizo: TDBEdit
          Left = 501
          Top = 142
          Width = 194
          Height = 21
          TabStop = False
          Color = clInfoBk
          DataField = 'MUESTRAAUTORIZO'
          DataSource = DSBase
          Enabled = False
          TabOrder = 1
        end
        object RxDBAutorizo: TRxDBComboEdit
          Left = 421
          Top = 143
          Width = 75
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          ClickKey = 16397
          DataField = 'AUTORIZO'
          DataSource = DSBase
          GlyphKind = gkEllipsis
          ButtonWidth = 16
          NumGlyphs = 1
          TabOrder = 2
        end
        object pcPieOrdenCompra: TPageControl
          Left = 1
          Top = 122
          Width = 408
          Height = 105
          ActivePage = pagVtos
          MultiLine = True
          Style = tsFlatButtons
          TabHeight = 15
          TabOrder = 3
          TabWidth = 100
          object pagVtos: TTabSheet
            Caption = 'Vencimientos'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label25: TLabel
              Left = 271
              Top = 3
              Width = 109
              Height = 13
              Caption = 'Fecha de Cumplida'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object dbgVtos: TDBGrid
              Left = 0
              Top = 1
              Width = 265
              Height = 79
              DataSource = DatosOrdenCompraExtendida.DSOCVtos
              FixedColor = clGreen
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'DIAS'
                  Title.Alignment = taCenter
                  Title.Caption = 'D'#237'as'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindow
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 47
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'FECHA_VENCIMIEMTO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Vto.Probable'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindow
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 84
                  Visible = True
                end
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'IMPORTE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Importe'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindow
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 96
                  Visible = True
                end>
            end
            object Panel2: TPanel
              Left = 268
              Top = 18
              Width = 126
              Height = 59
              Enabled = False
              TabOrder = 1
              object dbcImpresa: TDBCheckBox
                Left = 8
                Top = 36
                Width = 65
                Height = 13
                Caption = 'Impresa'
                DataField = 'IMPRESO'
                DataSource = DSBase
                TabOrder = 0
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
              object DBDateEdit1: TDBDateEdit
                Left = 7
                Top = 9
                Width = 111
                Height = 21
                Margins.Left = 1
                Margins.Top = 1
                DataField = 'FECHACUMPLIDA'
                DataSource = DSBase
                DirectInput = False
                NumGlyphs = 2
                TabOrder = 1
              end
            end
          end
          object PagObs: TTabSheet
            Caption = 'Observaciones'
            ImageIndex = 1
            object dbObservaciones: TDBMemo
              Left = 0
              Top = 6
              Width = 401
              Height = 65
              Hint = 'Observaciones que van al pie de la Orden de Compra'
              DataField = 'OBSERVACIONES'
              DataSource = DSBase
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
          end
          object pagNotas: TTabSheet
            Caption = 'Notas/Transporte'
            ImageIndex = 2
            ExplicitLeft = 2
            ExplicitTop = 22
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label17: TLabel
              Left = 0
              Top = 55
              Width = 51
              Height = 13
              Caption = 'Transporte'
            end
            object dbcTransporte: TDBLookupComboBox
              Left = 57
              Top = 52
              Width = 313
              Height = 21
              DataField = 'TRANSPORTE'
              DataSource = DSBase
              KeyField = 'ID'
              ListField = 'NOMBRE'
              ListSource = DatosOrdenCompra.DSTransportes
              TabOrder = 0
            end
            object dbmNotas: TDBMemo
              Left = 0
              Top = 2
              Width = 393
              Height = 42
              Hint = 'Estas notas son son Impresas'
              DataField = 'NOTAS'
              DataSource = DSBase
              MaxLength = 200
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
            end
          end
        end
        object dbeFechaAutorizacion: TDBDateEdit
          Left = 422
          Top = 187
          Width = 89
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DataField = 'FECHAAUTORIZACION'
          DataSource = DSBase
          NumGlyphs = 2
          TabOrder = 4
        end
      end
      object PagImpuestos: TTabSheet
        Caption = 'Impuestos'
        ImageIndex = 1
        object Bevel4: TBevel
          Left = 279
          Top = 44
          Width = 98
          Height = 21
        end
        object Bevel3: TBevel
          Left = 280
          Top = 170
          Width = 98
          Height = 21
        end
        object Label6: TLabel
          Left = 169
          Top = 91
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
        object Label1: TLabel
          Left = 168
          Top = 2
          Width = 61
          Height = 16
          Caption = 'Gravado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 168
          Top = 125
          Width = 61
          Height = 16
          Caption = 'Gravado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 168
          Top = 147
          Width = 48
          Height = 16
          Caption = 'Exento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel1: TBevel
          Left = 279
          Top = 0
          Width = 98
          Height = 21
        end
        object Bevel6: TBevel
          Left = 279
          Top = 89
          Width = 98
          Height = 21
        end
        object Bevel22: TBevel
          Left = 280
          Top = 126
          Width = 98
          Height = 21
        end
        object Bevel28: TBevel
          Left = 280
          Top = 148
          Width = 98
          Height = 21
        end
        object DBText1: TDBText
          Left = 285
          Top = 2
          Width = 89
          Height = 17
          Alignment = taRightJustify
          DataField = 'NetoGrav1'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText5: TDBText
          Left = 285
          Top = 91
          Width = 89
          Height = 17
          Alignment = taRightJustify
          DataField = 'DstoImporte'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText7: TDBText
          Left = 288
          Top = 128
          Width = 89
          Height = 17
          Alignment = taRightJustify
          DataField = 'NetoGrav2'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 288
          Top = 150
          Width = 89
          Height = 17
          Alignment = taRightJustify
          DataField = 'NetoExen2'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 168
          Top = 24
          Width = 48
          Height = 16
          Caption = 'Exento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel32: TBevel
          Left = 279
          Top = 22
          Width = 98
          Height = 21
        end
        object DBText3: TDBText
          Left = 284
          Top = 24
          Width = 89
          Height = 17
          Alignment = taRightJustify
          DataField = 'NetoExen1'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dbtTotalFinal: TDBText
          Left = 497
          Top = 194
          Width = 139
          Height = 17
          Alignment = taRightJustify
          DataField = 'Total'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 441
          Top = 192
          Width = 41
          Height = 20
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel2: TBevel
          Left = 400
          Top = 0
          Width = 9
          Height = 213
          Shape = bsLeftLine
        end
        object RxLabel4: TRxLabel
          Left = 416
          Top = 0
          Width = 17
          Height = 13
          Caption = 'Iva'
          Transparent = True
        end
        object DBText2: TDBText
          Left = 288
          Top = 172
          Width = 89
          Height = 17
          Alignment = taRightJustify
          DataField = 'NETOMONOTRIBUTO2'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 168
          Top = 170
          Width = 73
          Height = 16
          Caption = 'Monotribu.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 285
          Top = 46
          Width = 89
          Height = 17
          Alignment = taRightJustify
          DataField = 'NETOMONOTRIBUTO1'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 168
          Top = 47
          Width = 65
          Height = 16
          Caption = 'Monotrib.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel5: TBevel
          Left = 159
          Top = 116
          Width = 225
          Height = 9
          Shape = bsTopLine
        end
        object Label5: TLabel
          Left = 168
          Top = 192
          Width = 89
          Height = 16
          Caption = 'Imp.Excluido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel7: TBevel
          Left = 280
          Top = 192
          Width = 98
          Height = 21
        end
        object DBText8: TDBText
          Left = 288
          Top = 194
          Width = 89
          Height = 17
          Alignment = taRightJustify
          DataField = 'IMPORTEEXCLUIDO2'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 169
          Top = 71
          Width = 89
          Height = 16
          Caption = 'Imp.Excluido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel8: TBevel
          Left = 279
          Top = 66
          Width = 98
          Height = 21
        end
        object DBText9: TDBText
          Left = 287
          Top = 69
          Width = 89
          Height = 17
          Alignment = taRightJustify
          DataField = 'IMPORTEEXCLUIDO1'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dbeDscto: TDBEdit
          Left = 221
          Top = 89
          Width = 47
          Height = 21
          DataField = 'DSTO'
          DataSource = DSBase
          TabOrder = 0
        end
        object dbgIva: TDBGrid
          Left = 416
          Top = 15
          Width = 251
          Height = 57
          TabStop = False
          Color = clMenu
          DataSource = DatosOrdenCompra.wwDSImpuestos
          Options = [dgEditing, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
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
              ReadOnly = True
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
              FieldName = 'TASA'
              Width = 30
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
              Width = 80
              Visible = True
            end>
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 409
    Width = 768
    ExplicitTop = 409
    ExplicitWidth = 768
  end
  inherited Panel1: TPanel
    Top = 439
    Width = 768
    ExplicitTop = 439
    ExplicitWidth = 768
    inherited sbEstado: TStatusBar
      Width = 606
      ExplicitWidth = 606
    end
  end
  inherited ActionList1: TActionList
    Left = 472
  end
  inherited DSBase: TDataSource
    DataSet = DatosOrdenCompraExtendida.CDSOCCab
  end
  object spMarcarImpreso: TStoredProc
    DatabaseName = 'DBMain'
    StoredProcName = 'MARCA_OC_IMPRESA'
    Left = 412
    Top = 583
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
  end
  object frxRTFExport1: TfrxRTFExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    ExportEMF = True
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 452
    Top = 456
  end
  object frDBDImpuestos: TfrxDBDataset
    UserName = 'frDBDImpuestos'
    CloseDataSource = False
    DataSet = DatosOrdenCompra.wwCDSImpuestos
    BCDToCurrency = False
    Left = 369
    Top = 497
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 409
    Top = 477
  end
  object frDBDetalle: TfrxDBDataset
    UserName = 'frDBDetalle'
    CloseDataSource = False
    DataSet = DatosOrdenCompra.wwCDSOrdenCompraDet
    BCDToCurrency = False
    Left = 440
    Top = 525
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    Left = 492
    Top = 494
  end
  object frxDBEmpresa: TfrxDBDataset
    UserName = 'frxDBEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NOMBRE=NOMBRE'
      'ACTIVIDAD=ACTIVIDAD'
      'DIRECCION=DIRECCION'
      'LOCALIDAD=LOCALIDAD'
      'CORREO=CORREO'
      'TELEFONO1=TELEFONO1'
      'TELEFONO2=TELEFONO2'
      'CUIT=CUIT'
      'CONDICIONIVA=CONDICIONIVA'
      'NRO_AGTE_RET_INGBRUTOS=NRO_AGTE_RET_INGBRUTOS'
      'LOGO=LOGO'
      'CPOSTAL=CPOSTAL'
      'NRO_AGTE_RET_GANANCIA=NRO_AGTE_RET_GANANCIA'
      'AG_RET_GANANCIA=AG_RET_GANANCIA'
      'AG_RET_ING_BRUTOS=AG_RET_ING_BRUTOS'
      'AG_PERCEPCION_ING_BRUTOS=AG_PERCEPCION_ING_BRUTOS'
      'TASA_PERCEPCION_IB=TASA_PERCEPCION_IB'
      'MINO_IMP_PERCEP_IB=MINO_IMP_PERCEP_IB')
    DataSet = DatosOrdenCompra.wwCDSEmpresa
    BCDToCurrency = False
    Left = 632
    Top = 584
  end
  object frOrdenCompra: TfrxReport
    Version = '4.7.61'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.797657326390000000
    ReportOptions.LastChange = 39638.797657326390000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 528
    Top = 582
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxTXTExport1: TfrxTXTExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    ScaleWidth = 1.000000000000000000
    ScaleHeight = 1.000000000000000000
    Borders = False
    Pseudogrpahic = False
    PageBreaks = True
    OEMCodepage = False
    EmptyLines = False
    LeadSpaces = False
    PrintAfter = False
    PrinterDialog = True
    UseSavedProps = True
    Left = 488
    Top = 559
  end
  object frDBCabecera: TfrxDBDataset
    UserName = 'frDBCabecera'
    CloseDataSource = False
    DataSet = DatosOrdenCompra.wwCDSOrdenCompraCab
    BCDToCurrency = False
    Left = 320
    Top = 580
  end
  object wwBuscadorProveedor: TwwLookupDialog
    Selected.Strings = (
      'Nombre'#9'35'#9'Nombre'#9#9
      'Razon_Social'#9'35'#9'Razon Social'#9'F'
      'Codigo'#9'6'#9'Codigo'#9#9
      'N_de_Cuenta'#9'14'#9'N de Cuenta'#9'F'
      'N_de_CUIT'#9'13'#9'N de CUIT'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = DMMain.QProveedores
    Caption = 'Proveedores'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecUpperCase
    Left = 259
    Top = 39
  end
  object wwBuscadorCondCompra: TwwLookupDialog
    Selected.Strings = (
      'CODIGOPAGO'#9'10'#9'Codigo'#9#9
      'DETALLE'#9'20'#9'Detalle'#9#9)
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = DMMain.QCondCompra
    Caption = 'Condici'#243'n de Compra'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 212
    Top = 71
  end
  object wwBuscadorSucursal: TwwLookupDialog
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = DMMain.QSucursales
    Caption = 'Sucursal'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecUpperCase
    Left = 131
    Top = 103
  end
  object wwBuscadorComprobantes: TwwLookupDialog
    Selected.Strings = (
      'ID_COMPROBANTE'#9'10'#9'Id'#9'F'
      'DENOMINACION'#9'15'#9'Denominaci'#243'n'#9'F'
      'CLASE_COMPROB'#9'2'#9'Clase'#9'F'
      'LETRA'#9'1'#9'Let.'#9'F'
      'PREFIJO'#9'4'#9'Pref.'#9'F'
      'NUMERO'#9'8'#9'Numero'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    Options = [opShowOKCancel, opShowSearchBy, opDisableReorderColumns]
    GridOptions = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = DatosCompra.QBuscaComprob
    Caption = 'Comprobantes'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecUpperCase
    ControlInfoInDataset = False
    Left = 244
    Top = 192
  end
  object wwBuscadorEmpleado: TwwLookupDialog
    Selected.Strings = (
      'NOMBRE'#9'35'#9'Nombre'#9'F'
      'CODIGO'#9'6'#9'Codigo'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = DMMain.QBuscaVendedores
    Caption = 'Venedores'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 548
    Top = 221
  end
  object wwBuscadorDeposito: TwwLookupDialog
    Selected.Strings = (
      'Id'#9'10'#9'Id'#9#9
      'Nombre'#9'25'#9'Nombre'#9#9)
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = DMMain.QDepositos
    Caption = 'Art'#237'culos'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 140
    Top = 191
  end
end
