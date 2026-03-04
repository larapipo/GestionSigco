inherited FormMovEgr_IngBancos: TFormMovEgr_IngBancos
  Left = 467
  Top = 188
  Caption = 'Movimientos de Ingreso y egresos Bancarios'
  ClientHeight = 637
  ClientWidth = 698
  StyleElements = [seFont, seClient, seBorder]
  OnResize = FormResize
  ExplicitWidth = 716
  ExplicitHeight = 678
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 698
    Height = 535
    Anchors = [akLeft, akTop, akRight, akBottom]
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 9
    ExplicitWidth = 698
    ExplicitHeight = 535
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 698
      Height = 113
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object dbtCuit: TDBText
        Left = 348
        Top = 27
        Width = 85
        Height = 17
        DataField = 'CUIT'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtRazonSocial: TDBText
        Left = 348
        Top = 7
        Width = 199
        Height = 17
        DataField = 'RAZONSOCIAL'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel1: TJvLabel
        Left = 8
        Top = 8
        Width = 32
        Height = 13
        Caption = 'Fecha'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel2: TJvLabel
        Left = 112
        Top = 8
        Width = 70
        Height = 13
        Caption = 'Cuenta Banco'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel3: TJvLabel
        Left = 553
        Top = 5
        Width = 100
        Height = 13
        Caption = 'Nro.de Comprobante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel4: TJvLabel
        Left = 8
        Top = 56
        Width = 98
        Height = 13
        Caption = 'Nro.de Cta Bancaria'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel5: TJvLabel
        Left = 136
        Top = 56
        Width = 33
        Height = 13
        Caption = 'Banco'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel8: TJvLabel
        Left = 280
        Top = 57
        Width = 62
        Height = 13
        Caption = 'Fecha Fiscal'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object DBText1: TDBText
        Left = 417
        Top = 90
        Width = 75
        Height = 17
        Alignment = taRightJustify
        DataField = 'ID'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbeCtaCaja: TDBEdit
        Left = 176
        Top = 24
        Width = 166
        Height = 21
        Color = clInfoBk
        DataField = 'CTA_CAJA'
        DataSource = DSBase
        Enabled = False
        TabOrder = 2
      end
      object dbeNroCta: TDBEdit
        Left = 8
        Top = 72
        Width = 94
        Height = 21
        Color = clInfoBk
        DataField = 'NUMERO_CTA'
        DataSource = DSBase
        Enabled = False
        TabOrder = 4
      end
      object dbeNumero: TDBEdit
        Left = 553
        Top = 24
        Width = 105
        Height = 21
        DataField = 'NROCPBTE'
        DataSource = DSBase
        TabOrder = 3
      end
      object dbeBanco: TDBEdit
        Left = 136
        Top = 72
        Width = 124
        Height = 21
        Color = clInfoBk
        DataField = 'BANCO'
        DataSource = DSBase
        Enabled = False
        TabOrder = 5
      end
      object rgTipo: TDBRadioGroup
        Left = 498
        Top = 51
        Width = 165
        Height = 56
        Hint = 'Selecciona el Tipo de movimeintos bancario'
        Caption = 'Tipo de Movimientos por'
        DataField = 'TIPO'
        DataSource = DSBase
        Items.Strings = (
          'D'#233'bitos'
          'Cr'#233'ditos')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        Values.Strings = (
          'D'
          'H')
        OnClick = rgTipoClick
      end
      object dbeFecha: TJvDBDateEdit
        Left = 8
        Top = 24
        Width = 96
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
      object dbeFechaFiscal: TJvDBDateEdit
        Left = 280
        Top = 72
        Width = 121
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        DataField = 'FECHAFISCAL'
        DataSource = DSBase
        NumGlyphs = 2
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 6
      end
      object RxDBIdCta: TJvDBComboEdit
        Left = 115
        Top = 25
        Width = 55
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'ID_CTA_CAJA'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000A000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFC000003300000033000000FFC00000}
        ButtonWidth = 16
        TabOrder = 1
        OnButtonClick = BuscadorCtaBcoExecute
        OnKeyDown = RxDBIdCtaKeyDown
      end
    end
    object pcdetalle: TPageControl
      Left = 0
      Top = 265
      Width = 698
      Height = 232
      ActivePage = pagImpuestos
      Align = alTop
      Style = tsButtons
      TabOrder = 2
      object pagImpuestos: TTabSheet
        Caption = 'Impuestos'
        object RxLabel6: TJvLabel
          Left = 3
          Top = -2
          Width = 17
          Height = 13
          Caption = 'Iva'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object dbgIva: TDBGrid
          Left = 3
          Top = 17
          Width = 438
          Height = 120
          DataSource = DSMov_Iva
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
              Width = 127
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'TASA'
              Title.Alignment = taCenter
              Title.Caption = '%'
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NETO'
              Title.Alignment = taCenter
              Title.Caption = 'Neto Grav.'
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Title.Caption = 'Importe'
              Width = 97
              Visible = True
            end>
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Percepciones'
        ImageIndex = 2
        object RxLabel7: TJvLabel
          Left = 3
          Top = 3
          Width = 90
          Height = 13
          Caption = 'Percepciones IIBB'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object RxLabel9: TJvLabel
          Left = 3
          Top = 89
          Width = 100
          Height = 13
          Caption = 'Percepciones de Iva'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object dbgPercepcionIB: TDBGrid
          Left = 2
          Top = 20
          Width = 441
          Height = 63
          DataSource = DSMov_IIBB
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
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
              Width = 130
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'TASA'
              Title.Alignment = taCenter
              Title.Caption = '%'
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NETO'
              Title.Alignment = taCenter
              Title.Caption = 'Neto.Grav'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Width = 99
              Visible = True
            end>
        end
        object dbgPercepcionIVA: TDBGrid
          Left = 3
          Top = 105
          Width = 441
          Height = 68
          DataSource = DSMov_PerIVA
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
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
              Width = 137
              Visible = True
            end
            item
              Color = clAqua
              Expanded = False
              FieldName = 'TASA'
              Title.Alignment = taCenter
              Title.Caption = '%'
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NETO'
              Title.Alignment = taCenter
              Title.Caption = 'Neto Grav.'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Title.Caption = 'Importe'
              Width = 89
              Visible = True
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Retenciones'
        ImageIndex = 1
        object Label14: TLabel
          Left = 431
          Top = 202
          Width = 104
          Height = 16
          Caption = 'Total Retenido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ceTotalRetenciones: TJvCalcEdit
          Left = 555
          Top = 201
          Width = 97
          Height = 21
          DisplayFormat = ',0.00'
          Enabled = False
          ShowButton = False
          TabOrder = 0
          DisabledTextColor = clBlack
          DecimalPlacesAlwaysShown = False
        end
        object dbgRetenciones: TJvDBGrid
          Left = 0
          Top = 0
          Width = 690
          Height = 137
          Align = alTop
          DataSource = DSRetenciones
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = dbgRetencionesCellClick
          OnEditButtonClick = dbgRetencionesEditButtonClick
          OnKeyPress = dbgRetencionesKeyPress
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          ColumnResize = gcrNone
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Alignment = taLeftJustify
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'ID_RETENCION'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'JURIDICCION'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 72
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'FECHA_RETENCION'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 168
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NRO_RETENCION'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 162
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 82
              Visible = True
            end>
        end
      end
    end
    object dbgDetalle: TDBGrid
      Left = 0
      Top = 113
      Width = 698
      Height = 152
      Align = alTop
      DataSource = DSGastoDet
      FixedColor = clBackground
      GradientEndColor = clSilver
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColEnter = dbgDetalleColEnter
      OnEditButtonClick = dbgDetalleEditButtonClick
      OnEnter = dbgDetalleEnter
      OnKeyPress = dbgDetalleKeyPress
      Columns = <
        item
          Alignment = taCenter
          Color = clInfoBk
          Expanded = False
          FieldName = 'FECHA_MOVIMIENTO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 72
          Visible = True
        end
        item
          Alignment = taRightJustify
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'CODIGO_CONCEPTO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Title.Caption = 'Detalle'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 309
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEBE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HABER'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 84
          Visible = True
        end>
    end
  end
  inherited ToolBar1: TToolBar
    Top = 584
    Width = 698
    Align = alBottom
    ExplicitTop = 584
    ExplicitWidth = 698
    inherited btModificar: TBitBtn
      Visible = False
    end
    object ToolButton1: TToolButton
      Left = 557
      Top = 0
      Width = 20
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btModificaFecha: TBitBtn
      Left = 577
      Top = 0
      Width = 29
      Height = 29
      Action = ModificaGasto
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
      Layout = blGlyphTop
      ModalResult = 1
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object spDetCostos: TSpeedButton
      Left = 606
      Top = 0
      Width = 34
      Height = 29
      Action = DetallesCostos
      Images = ImageListDos
      Flat = True
    end
    object spVerResumenBco: TSpeedButton
      Left = 640
      Top = 0
      Width = 32
      Height = 29
      Action = ResumenBco
    end
    object spReIngresarMovRes: TSpeedButton
      Left = 672
      Top = 0
      Width = 23
      Height = 29
      Action = ReIngresaMovBanco
    end
  end
  inherited Panel1: TPanel
    Top = 614
    Width = 698
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 614
    ExplicitWidth = 698
    inherited sbEstado: TStatusBar
      Width = 609
      PopupMenu = PopupMenu1
      SimplePanel = True
      ExplicitWidth = 609
    end
  end
  object pnPie: TPanel [3]
    Left = 0
    Top = 535
    Width = 698
    Height = 49
    Align = alClient
    TabOrder = 3
    object Label1: TLabel
      Left = 437
      Top = 13
      Width = 110
      Height = 20
      Caption = 'Total General'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbAvisoResumen: TLabel
      Left = 9
      Top = 13
      Width = 171
      Height = 20
      Caption = 'No esta En Resumen'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object chContabiliza: TDBCheckBox
      Left = 203
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Contabiliza'
      DataField = 'CONTABILIZA'
      DataSource = DSBase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object chIva: TDBCheckBox
      Left = 306
      Top = 16
      Width = 112
      Height = 17
      Caption = 'Ing.Libro IVA'
      DataField = 'ING_LIBROIVA'
      DataSource = DSBase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBEdit1: TDBEdit
      Left = 561
      Top = 14
      Width = 104
      Height = 21
      DataField = 'TOTAL'
      DataSource = DSBase
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  inherited ActionList1: TActionList
    Left = 376
    Top = 114
    object BuscadorCtaBco: TAction
      Caption = 'BuscadorCtaBco'
      OnExecute = BuscadorCtaBcoExecute
    end
    object BuscadorConcepto: TAction
      Caption = 'BuscadorConcepto'
      OnExecute = BuscadorConceptoExecute
    end
    object BuscarRetencion: TAction
      Caption = 'BuscarRetencion'
      OnExecute = BuscarRetencionExecute
    end
    object BuscarPercIVA: TAction
      Caption = 'BuscarPercIVA'
      OnExecute = BuscarPercIVAExecute
    end
    object ReIngresaMovBanco: TAction
      Hint = 'Re Ingresar Movimientos al Resumen'
      ImageIndex = 13
      ShortCut = 16457
      OnExecute = ReIngresaMovBancoExecute
    end
    object ModificaGasto: TAction
      OnExecute = ModificaGastoExecute
    end
    object ReSumar: TAction
      Caption = 'ReSumar'
      ShortCut = 16467
      OnExecute = ReSumarExecute
    end
    object DetallesCostos: TAction
      ImageIndex = 10
      OnExecute = DetallesCostosExecute
    end
    object ResumenBco: TAction
      Hint = 'Mostrar Resumen Bancario de La Cuenta'
      ImageIndex = 12
      OnExecute = ResumenBcoExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSGastoCab
    Left = 340
    Top = 74
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C01010C000802040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      00008E8E8E000000000000000000000000007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC6802000000000000000000000000009C3B0C009C3B0C009C3B0C009C3B
      0C009C3B0C0000000000000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D0600000000000000000000000000000000006C6A6A00DAD9
      D900A19F9F00A19F9F00A19F9F0037363600353535006C6D6D00BFBFBF00E1E2
      E200B7B6B6006C6A6A006C6A6A006C6A6A000000000000000000000000000000
      00008E8E8E008E8E8E008E8E8E00909090007C7C7C00D2D2D200CACACA00ADAD
      AD007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC680200CC680200CC680200CD6904009C3B0C00F89A9400EBA15E00DA84
      2C009C3B0C00000000000000000000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C0000000000000000006C6A6A00D4D3D300CACA
      CA008E8C8C008E8C8C008E8C8C003C3B3B000A090A00070707000B0B0B000707
      07007A7A7A00BBBBBB006C6A6A00000000000000000000000000000000000000
      00008E8E8E000000000000000000000000007B7B7B007C7C7C007C7C7C007B7B
      7B007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC6802000000000000000000000000009B3A0C009C3B0C009C3A0C009B3A
      0C009C3B0C00000000000000000000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE6D0009B2190009B2
      190009B3190009BA1A0006670C00000000006C6A6A00CACACA00CACACA008E8C
      8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A000888686005E5B5C000707
      070009090900080808006C6A6A00767373000000000000000000000000000000
      00008E8E8E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC6802000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210001B9A3A002AC65B001DBB
      45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FDF8005ACB650009B2
      190009B2190009B81A0008941300045D09006C6A6A00CACACA008E8C8C00EFEE
      EE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCECE00BDBCBC00ADAB
      AB008B898900585656007A787800757373000000000000000000000000000000
      00008E8E8E000000000000000000000000007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC6802000000000000000000000000009C3B0C009C3B0C009C3B0C009C3B
      0C009C3B0C00000000000000000000000000087210002AB65B002CC5650022BD
      4D000FB422000AB21A000CB31C000AB219008DDB9500FDFEFD00F6FCF70058CB
      630009B2190009B51A0008AB1700045D09006C6A6A008E8C8C00FFFFFF00FEFC
      FC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0C100D7D7D700D8D8
      D800C7C6C600B7B6B600918F8F006C6969000000000000000000000000000000
      00008E8E8E008E8E8E008E8E8E008E8E8E007C7C7C00D2D2D200CACACA00ADAD
      AD007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC680200CC680200CC680200CC6802009C3B0C00F89A9400EBA15E00DA84
      2C009C3B0C000000000000000000000000000F821C0037C26C0033C76C00CDF1
      DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FDF900FFFFFF00F2FB
      F3006FD2790008B4190009B3190005650B00000000006C6A6A006C6A6A00EDEB
      EB00B1A6A7007A6F72008A83880096929500969091009D9798009A9395009E98
      9900BBBABA00D1D1D100C2C2C2006C6A6A000000000000000000000000000000
      00008E8E8E000000000000000000000000007B7B7B007C7C7C007C7C7C007B7B
      7B007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC6802000000000000000000000000009B3A0C009C3B0C009C3A0C009B3A
      0C009C3B0C00000000000000000000000000138D230058CC830042C97700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
      FF00BCEAC1000AB41A0009B31900066D0D000000000000000000000000006C6A
      6A00BB897F00A7876D008B6F64007D6760006F626500797379008F8B8E00A9A3
      A400CBCACA00C1C1C1006C6A6A00000000000000000000000000000000000000
      00008E8E8E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC6802000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D006FD293005FD38D006DD4
      950072D6990071D6980072D6990064D28C0092DFA800FBFEFB00FFFFFF00ACE5
      B8002EBF4C0011B82B0008B1190005610A000000000000000000000000000000
      0000BD828100FFE3B400FFD39F00E9B28100C9997300BA916C00BD828100807D
      7E006C6A6A006C6A6A0000000000000000000000000000000000000000000000
      00008E8E8E000000000000000000000000007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC6802000000000000000000000000009C3B0C009C3B0C009C3B0C009C3B
      0C009C3B0C000000000000000000000000000F911D0067CC83009BE5BA0038C6
      700030C3690038C56F0038C56F0070D69700E8F8EE00FFFFFF009FE2B10020BD
      48001AB93E0010BA290008A3170005610A000000000000000000000000000000
      0000BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC68800BD8281000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8E008E8E8E008E8E8E008E8E8E007C7C7C00D2D2D200CACACA00ADAD
      AD007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC680200CC680200CC680200CC6802009C3B0C00F89A9400EBA15E00DA84
      2C009C3B0C000000000000000000000000000000000025AE3900BCEDD20082DB
      A40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2B20022BC4B001DBA
      410018B7360014C030000A85170000000000000000000000000000000000C086
      8300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD828100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8E000000000000000000000000007B7B7B007C7C7C007C7C7C007B7B
      7B007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC6802000000000000000000000000009B3A0C009C3B0C009C3A0C009B3A
      0C009C3B0C000000000000000000000000000000000025AE390071D28C00D2F4
      E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2630024BE560023BC
      4D001FC1460016AE34000A85170000000000000000000000000000000000BD82
      8100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD828100000000000000
      00000000000000000000000000000000000000000000000000007C7C7C007C7C
      7C007C7C7C007C7C7C007C7C7C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C3B0C009C3B
      0C009C3B0C009C3B0C009C3B0C00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000BD828100FFFF
      F200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD828100000000000000
      00000000000000000000000000000000000000000000000000007C7C7C00D2D2
      D200CACACA00ADADAD007C7C7C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C3B0C00F89A
      9400EBA15E00DA842C009C3B0C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000025AE
      390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB157000000000000000000000000000000000000000000BD828100BD82
      8100BD828100FBEFE200FBE3CF00FBDDC200BD82810000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007C7C
      7C007C7C7C007B7B7B007C7C7C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009B3A0C009C3B
      0C009C3A0C009B3A0C009C3B0C00000000000000000000000000000000000000
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
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F81FF33FFFFFFFFFE007E007F707F707
      C003C000F007F00780018001F707F70780010000F7FFF7FF00000000F707F707
      00000000F007F00700008000F707F7070000E001F7FFF7FF0000F003F707F707
      0000F01FF007F0078001E03FF707F7078001E03FC1FFC1FFC003C03FC1FFC1FF
      E007C07FC1FFC1FFF81FF8FFFFFFFFFFFFFFF81FF81FF81FC007E007E007E007
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
    Left = 448
    Top = 8
  end
  inherited QUltimoCodigo: TSQLQuery
    SQL.Strings = (
      'select max(nrocpbte) from gastos_bco_cab')
    Top = 488
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 472
    Top = 32
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 576
    Top = 248
  end
  inherited QBrowse2: TFDQuery
    Left = 280
    Top = 432
  end
  inherited QUltimoCodigo2: TFDQuery
    SQL.Strings = (
      'select max(nrocpbte) from gastos_bco_cab')
    Left = 272
    Top = 480
  end
  inherited ImageListDos: TImageList
    Bitmap = {
      494C01010E001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000002A231D8A4B3E35FB4D4036FF4D40
      36FF4D4036FF4D4036FF4D4036FF4D4036FF4D4036FF4D4036FF4D4036FF4D40
      36FF4D4036FF4D4036FF4B3E35FB29221C880000000000000000000000000000
      000000000000000000006D492E99050402080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000493C33F39C8B78FFEDE3D6FFEDE3
      D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3
      D6FFEDE3D6FFEDE3D6FF9C8B78FF493C33F20000000000000000000000000000
      00000000000000000000B57A4EFFA06C46DD1C120C2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002A231D8A9C8B78FFEDE3D6FFEDE3
      D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3
      D6FFEDE3D6FFEDE3D6FF9C8B78FF29221C880403020661412A88A66F47EAB57A
      4EFFB57A4EFFB57A4EFFB57A4EFFDBA174FEB0784DF54C33206A00000000B57A
      4EFFB57A4EFFA56E47E95F402886040202050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C8B78FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C8B78FF0000000061412A88B57A4EFFB57A4EFFB57A
      4EFFB57A4EFFB57A4EFFB57A4EFFD89D70FEAF774CF53F2A1B5900000000B57A
      4EFFB57A4EFFB57A4EFFB57A4EFF5D4029850000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C8B78FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FF9C8B78FF9C8B
      78FFFFFFFFFFFFFFFFFF9C8B78FF00000000A36F46E7B57A4EFF2B1C123C0000
      00000000000000000000B57A4EFFA16D47E01F160D2D00000000000000000000
      0000000000002C1D123EB57A4EFFA36E46E60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C8B78FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C8B78FF00000000B57A4EFFB57A4EFF000000000000
      0000000000000000000069472D96050402080000000000000000000000000000
      00000000000000000000B57A4EFFB57A4EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C8B78FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C8B78FF00000000B57A4EFFB57A4EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B57A4EFFB57A4EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C8B78FFFFFFFFFFFFFF
      FFFF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FFFFFFFFFFFFFFFFFF9C8B
      78FFFFFFFFFFFFFFFFFF9C8B78FF00000000B57A4EFFB57A4EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B57A4EFFB57A4EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C8B78FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C8B78FF00000000B57A4EFFB57A4EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B57A4EFFB57A4EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C8B78FFFFFFFFFFFFFF
      FFFF9C8B78FF9C8B78FF9C8B78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B
      78FFFFFFFFFFFFFFFFFF9C8B78FF00000000B57A4EFFB57A4EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B57A4EFFB57A4EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C8B78FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C8B78FF00000000B57A4EFFB57A4EFF000000000000
      000000000000000000000000000000000000060303096D492E99000000000000
      00000000000000000000B57A4EFFB57A4EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C8B78FFFFFFFFFFFFFF
      FFFF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FFFFFFFFFFFFFFFFFF9C8B
      78FFFFFFFFFFFFFFFFFF9C8B78FF00000000A36E46E6B57A4EFF2C1D123E0000
      00000000000000000000000000001C120C28A06C46DDB57A4EFF000000000000
      0000000000002F201342B57A4EFFA16D45E40000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C8B78FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C8B78FF0000000061422989B57A4EFFB57A4EFFB57A
      4EFFB57A4EFF000000004D34216BB0784DF5DBA275FEB57A4EFFB57A4EFFB57A
      4EFFB57A4EFFB57A4EFFB57A4EFF5D4029850000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C8B78FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C8B78FF000000000403020661412A889E6B45E0B57A
      4EFFB57A4EFF000000003F2B1B5AB0784DF5D89E71FEB57A4EFFB57A4EFFB57A
      4EFFB57A4EFF9E6B45E05D402985040202050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C8B78FFF1EEEBFFF1EE
      EBFFF1EEEBFFF1EEEBFFF1EEEBFFF1EEEBFFF1EEEBFFF1EEEBFFF1EEEBFFF1EE
      EBFFF1EEEBFFF1EEEBFF9C8B78FF000000000000000000000000000000000000
      00000000000000000000000000001F160D2DA16D47E0B57A4EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C7D6DE1938374E89383
      74E8938374E8938374E8938374E8938374E8938374E8938374E8938374E89383
      74E8938374E8938374E88C7D6DE1000000000000000000000000000000000000
      000000000000000000000000000000000000050402086B482E97000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D3B09500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000B8805400FFFEFE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008E8E8E00FFFFFF00FFFFFF00FFFFFF007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC680200FFFFFF00FFFFFF00FFFFFF009C3B0C009C3B0C009C3B0C009C3B
      0C009C3B0C00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000D0A78800F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00D29C7200FEFDFD00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008E8E8E008E8E8E008E8E8E00909090007C7C7C00D2D2D200CACACA00ADAD
      AD007C7C7C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC680200CC680200CC680200CD6904009C3B0C00F89A9400EBA15E00DA84
      2C009C3B0C00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000C99B7800F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00DAA27700FCFAF8000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008E8E8E00FFFFFF00FFFFFF00FFFFFF007B7B7B007C7C7C007C7C7C007B7B
      7B007C7C7C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC680200FFFFFF00FFFFFF00FFFFFF009B3A0C009C3B0C009C3A0C009B3A
      0C009C3B0C00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000C6947100F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00DDA47700FAF6F30000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008E8E8E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC680200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000C3906800F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00E3AA7F00F6EFEA00000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008E8E8E00FFFFFF00FFFFFF00FFFFFF007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC680200FFFFFF00FFFFFF00FFFFFF009C3B0C009C3B0C009C3B0C009C3B
      0C009C3B0C00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000C28D6500F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00E6AC8000F3E9E0000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008E8E8E008E8E8E008E8E8E008E8E8E007C7C7C00D2D2D200CACACA00ADAD
      AD007C7C7C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC680200CC680200CC680200CC6802009C3B0C00F89A9400EBA15E00DA84
      2C009C3B0C00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000C28B6400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00EAB08500ECDE
      D20000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008E8E8E00FFFFFF00FFFFFF00FFFFFF007B7B7B007C7C7C007C7C7C007B7B
      7B007C7C7C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC680200FFFFFF00FFFFFF00FFFFFF009B3A0C009C3B0C009C3A0C009B3A
      0C009C3B0C00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000E7D1
      C300ECB38700F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C48E
      650000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008E8E8E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC680200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000EEDED400E9AF8400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C28C63000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008E8E8E00FFFFFF00FFFFFF00FFFFFF007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC680200FFFFFF00FFFFFF00FFFFFF009C3B0C009C3B0C009C3B0C009C3B
      0C009C3B0C00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000F1E8DF00E6AE8200F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00C28C6500000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008E8E8E008E8E8E008E8E8E008E8E8E007C7C7C00D2D2D200CACACA00ADAD
      AD007C7C7C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC680200CC680200CC680200CC6802009C3B0C00F89A9400EBA15E00DA84
      2C009C3B0C00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000F7EFEA00E4AA7D00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00C4906B0000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008E8E8E00FFFFFF00FFFFFF00FFFFFF007B7B7B007C7C7C007C7C7C007B7B
      7B007C7C7C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC680200FFFFFF00FFFFFF00FFFFFF009B3A0C009C3B0C009C3A0C009B3A
      0C009C3B0C00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000F9F5F100E0A67C00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00C4936E000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF007C7C7C007C7C
      7C007C7C7C007C7C7C007C7C7C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C3B0C009C3B
      0C009C3B0C009C3B0C009C3B0C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FCF9F900DAA37900F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00C99B7800000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF007C7C7C00D2D2
      D200CACACA00ADADAD007C7C7C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C3B0C00F89A
      9400EBA15E00DA842C009C3B0C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC00D7A07500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00CEA3840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF007B7B7B007C7C
      7C007C7C7C007B7B7B007C7C7C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009B3A0C009C3B
      0C009C3A0C009B3A0C009C3B0C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFEFE00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000D6B69C000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000000000000000FFFFFF000000FDFF000000000000FCFF00000000
      0000806100000000800100600000000080013CFC0000000080013DFC00000000
      80013FFC0000000080013FFC0000000080013FFC0000000080013FFC00000000
      80013FBC0000000080013F3C0000000080010600000000008001860100000000
      8001FF3F000000008001FFBF00000000FFEFFFFF00000000FFCFF3FF00000000
      FF8FF1FF00000000FF0FF0FF00000000FE0FF07F00000000FC0FF03F00000000
      F80FF01F00000000F00FF00F00000000E00FF00F00000000F00FF01F00000000
      F80FF03F00000000FC0FF07F00000000FE0FF0FF00000000FF0FF1FF00000000
      FF8FF3FF00000000FFCFF7FF00000000FFFFE007FFFF3FFFF83FE00780011FFF
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
  object DSPGastoCab: TDataSetProvider
    DataSet = DatosGastosBco.QGastoCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 56
    Top = 135
  end
  object DSPGastoDet: TDataSetProvider
    DataSet = DatosGastosBco.QGastoDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 56
    Top = 184
  end
  object DSGastoDet: TDataSource
    DataSet = CDSGastoDet
    Left = 192
    Top = 184
  end
  object ibgId_cab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_GASTO_BCO_CAB'
    SystemGenerators = False
    Left = 296
    Top = 136
  end
  object ibgId_det: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_GASTO_BCO_DET'
    SystemGenerators = False
    Left = 256
    Top = 184
  end
  object DSMov_Iva: TDataSource
    DataSet = CDSMov_iva
    Left = 184
    Top = 232
  end
  object DSPMov_Iva: TDataSetProvider
    DataSet = DatosGastosBco.QMov_Iva
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 224
  end
  object CDSMov_iva: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_GASTO_CAB'
    MasterFields = 'ID'
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMov_Iva'
    BeforePost = CDSMov_ivaBeforePost
    AfterPost = CDSMov_ivaAfterPost
    AfterDelete = CDSMov_ivaAfterDelete
    OnNewRecord = CDSMov_ivaNewRecord
    Left = 120
    Top = 224
    object CDSMov_ivaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMov_ivaID_GASTO_CAB: TIntegerField
      FieldName = 'ID_GASTO_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMov_ivaCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      Required = True
      OnSetText = CDSMov_ivaCODIGO_GRAVAMENSetText
    end
    object CDSMov_ivaDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSMov_ivaNETO: TFloatField
      FieldName = 'NETO'
      OnSetText = CDSMov_ivaNETOSetText
      DisplayFormat = '0.00'
    end
    object CDSMov_ivaTASA: TFloatField
      FieldName = 'TASA'
      DisplayFormat = '0.00'
    end
    object CDSMov_ivaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      OnSetText = CDSMov_ivaIMPORTESetText
      DisplayFormat = '0.00'
    end
  end
  object DSMov_IIBB: TDataSource
    DataSet = CDSMov_IIBB
    Left = 176
    Top = 376
  end
  object CDSMov_IIBB: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_GASTO_CAB'
    MasterFields = 'ID'
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMov_IIBB'
    BeforePost = CDSMov_IIBBBeforePost
    AfterPost = CDSMov_IIBBAfterPost
    AfterDelete = CDSMov_IIBBAfterDelete
    OnNewRecord = CDSMov_IIBBNewRecord
    Left = 112
    Top = 378
    object CDSMov_IIBBID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMov_IIBBID_GASTO_CAB: TIntegerField
      FieldName = 'ID_GASTO_CAB'
      Origin = 'ID_GASTO_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMov_IIBBCODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Origin = 'CODIGO_PERCEPCION'
      Required = True
      OnSetText = CDSMov_IIBBCODIGO_PERCEPCIONSetText
    end
    object CDSMov_IIBBDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSMov_IIBBNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
      OnSetText = CDSMov_IIBBNETOSetText
      DisplayFormat = ',0.00'
    end
    object CDSMov_IIBBTASA: TFloatField
      DisplayLabel = 'Tasa'
      FieldName = 'TASA'
      Origin = 'TASA'
      DisplayFormat = '0.00'
    end
    object CDSMov_IIBBIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      OnSetText = CDSMov_IIBBIMPORTESetText
      DisplayFormat = ',0.00'
    end
    object CDSMov_IIBBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
      Origin = 'JURIDICION'
    end
  end
  object DSPMov_IIBB: TDataSetProvider
    DataSet = DatosGastosBco.QMov_IIBB
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 376
  end
  object IBgIIBB: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_GASTOS_BCO_PERCEPCIONIB'
    SystemGenerators = False
    Left = 232
    Top = 376
  end
  object IBgIva: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_GASTOS_BCO_IVA'
    SystemGenerators = False
    Left = 224
    Top = 304
  end
  object DSRetenciones: TDataSource
    DataSet = CDSRetenciones
    Left = 572
    Top = 398
  end
  object DSPRetenciones: TDataSetProvider
    DataSet = DatosGastosBco.QRetenciones
    Options = []
    Left = 444
    Top = 394
  end
  object IBGId_Retenciones: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'ID_MOV_RETENCIONES'
    SystemGenerators = False
    Left = 636
    Top = 398
  end
  object DSMov_PerIVA: TDataSource
    DataSet = CDSMov_PerIVA
    Left = 176
    Top = 440
  end
  object CDSMov_PerIVA: TClientDataSet
    Aggregates = <>
    MasterFields = 'ID'
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMov_PerIVA'
    BeforePost = CDSMov_PerIVABeforePost
    AfterPost = CDSMov_PerIVAAfterPost
    AfterDelete = CDSMov_PerIVAAfterDelete
    OnNewRecord = CDSMov_PerIVANewRecord
    Left = 112
    Top = 432
    object CDSMov_PerIVAID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMov_PerIVAID_GASTOS_CAB: TIntegerField
      FieldName = 'ID_GASTOS_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMov_PerIVACODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Required = True
      OnSetText = CDSMov_PerIVACODIGO_PERCEPCIONSetText
    end
    object CDSMov_PerIVADETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSMov_PerIVACODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
    end
    object CDSMov_PerIVANETO: TFloatField
      FieldName = 'NETO'
      OnSetText = CDSMov_PerIVANETOSetText
      DisplayFormat = ',0.00'
    end
    object CDSMov_PerIVATASA: TFloatField
      FieldName = 'TASA'
      DisplayFormat = ',0.00'
    end
    object CDSMov_PerIVAIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      OnSetText = CDSMov_PerIVAIMPORTESetText
      DisplayFormat = ',0.00'
    end
  end
  object DSPMov_PerIVA: TDataSetProvider
    DataSet = DatosGastosBco.QMov_PerIVA
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 432
  end
  object IBGPercepcionIVA: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_PERCEPCION_IVA'
    SystemGenerators = False
    Left = 232
    Top = 432
  end
  object DSPTRetencion: TDataSetProvider
    DataSet = DMMain_2.QTRetencion
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 448
    Top = 456
  end
  object CDSTRetencion: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPTRetencion'
    Left = 512
    Top = 456
    object CDSTRetencionID_RETENCION: TIntegerField
      FieldName = 'ID_RETENCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSTRetencionDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSTRetencionTIPO: TSmallintField
      FieldName = 'TIPO'
    end
  end
  object CDSGastoCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPGastoCab'
    OnNewRecord = CDSGastoCabNewRecord
    Left = 120
    Top = 136
    object CDSGastoCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSGastoCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 2
    end
    object CDSGastoCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSGastoCabID_CTA_CAJA: TIntegerField
      FieldName = 'ID_CTA_CAJA'
      Origin = 'ID_CTA_CAJA'
      Required = True
      OnSetText = CDSGastoCabID_CTA_CAJASetText
    end
    object CDSGastoCabCTA_CAJA: TStringField
      FieldName = 'CTA_CAJA'
      Origin = 'CTA_CAJA'
      Size = 25
    end
    object CDSGastoCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSGastoCabID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      Required = True
    end
    object CDSGastoCabBANCO: TStringField
      FieldName = 'BANCO'
      Origin = 'BANCO'
    end
    object CDSGastoCabNUMERO_CTA: TStringField
      FieldName = 'NUMERO_CTA'
      Origin = 'NUMERO_CTA'
      Size = 15
    end
    object CDSGastoCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      OnSetText = CDSGastoCabNROCPBTESetText
      Size = 13
    end
    object CDSGastoCabFECHAFISCAL: TSQLTimeStampField
      FieldName = 'FECHAFISCAL'
      Origin = 'FECHAFISCAL'
      OnChange = CDSGastoCabFECHAFISCALChange
    end
    object CDSGastoCabTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object CDSGastoCabCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSGastoCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object CDSGastoCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSGastoCabING_LIBROIVA: TStringField
      FieldName = 'ING_LIBROIVA'
      Origin = 'ING_LIBROIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSGastoCabCONTABILIZA: TStringField
      FieldName = 'CONTABILIZA'
      Origin = 'CONTABILIZA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSGastoCabTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
    end
    object CDSGastoCabIDRESUMEN: TLargeintField
      FieldName = 'IDRESUMEN'
      ProviderFlags = []
    end
  end
  object CDSGastoDet: TClientDataSet
    Aggregates = <>
    MasterFields = 'ID'
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPGastoDet'
    BeforePost = CDSGastoDetBeforePost
    AfterPost = CDSGastoDetAfterPost
    AfterDelete = CDSGastoDetAfterDelete
    OnNewRecord = CDSGastoDetNewRecord
    Left = 120
    Top = 184
    object CDSGastoDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSGastoDetID_GASTO_CAB: TIntegerField
      FieldName = 'ID_GASTO_CAB'
      Origin = 'ID_GASTO_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSGastoDetFECHA_INGRESO: TSQLTimeStampField
      FieldName = 'FECHA_INGRESO'
      Origin = 'FECHA_INGRESO'
    end
    object CDSGastoDetFECHA_MOVIMIENTO: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA_MOVIMIENTO'
      Origin = 'FECHA_MOVIMIENTO'
    end
    object CDSGastoDetCODIGO_CONCEPTO: TStringField
      DisplayLabel = 'Cod.'
      FieldName = 'CODIGO_CONCEPTO'
      Origin = 'CODIGO_CONCEPTO'
      Required = True
      OnSetText = CDSGastoDetCODIGO_CONCEPTOSetText
      Size = 3
    end
    object CDSGastoDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
    object CDSGastoDetID_CTA_CAJA_BCO: TIntegerField
      FieldName = 'ID_CTA_CAJA_BCO'
      Origin = 'ID_CTA_CAJA_BCO'
      Required = True
    end
    object CDSGastoDetNUMERO_CTA_BANCARIA: TStringField
      FieldName = 'NUMERO_CTA_BANCARIA'
      Origin = 'NUMERO_CTA_BANCARIA'
      Size = 15
    end
    object CDSGastoDetNRO_CPBTE: TStringField
      FieldName = 'NRO_CPBTE'
      Origin = 'NRO_CPBTE'
      Size = 13
    end
    object CDSGastoDetDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00'
    end
    object CDSGastoDetHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00'
    end
  end
  object CDSRetenciones: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPRetenciones'
    BeforePost = CDSRetencionesBeforePost
    AfterPost = CDSRetencionesAfterPost
    AfterDelete = CDSRetencionesAfterDelete
    OnNewRecord = CDSRetencionesNewRecord
    Left = 512
    Top = 392
    object CDSRetencionesID_RETENCION: TIntegerField
      DisplayLabel = 'Cod.'
      DisplayWidth = 7
      FieldName = 'ID_RETENCION'
      Origin = 'ID_RETENCION'
      Required = True
      OnSetText = CDSRetencionesID_RETENCIONSetText
    end
    object CDSRetencionesJURIDICCION: TIntegerField
      DisplayLabel = 'Jur./Reg'
      DisplayWidth = 9
      FieldName = 'JURIDICCION'
      Origin = 'JURIDICCION'
    end
    object CDSRetencionesFECHA_RETENCION: TSQLTimeStampField
      DisplayLabel = 'F.Reten.'
      DisplayWidth = 17
      FieldName = 'FECHA_RETENCION'
      Origin = 'FECHA_RETENCION'
      OnSetText = CDSRetencionesFECHA_RETENCIONSetText
    end
    object CDSRetencionesDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 27
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSRetencionesNRO_RETENCION: TStringField
      DisplayLabel = 'Nro.Retencion'
      DisplayWidth = 20
      FieldName = 'NRO_RETENCION'
      Origin = 'NRO_RETENCION'
    end
    object CDSRetencionesID_MOV_RETENCIONES: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_MOV_RETENCIONES'
      Origin = 'ID_MOV_RETENCIONES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object CDSRetencionesIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSRetencionesTIPOCPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Visible = False
      Size = 2
    end
    object CDSRetencionesCLASECPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Visible = False
      Size = 2
    end
    object CDSRetencionesNROCPBTE: TStringField
      DisplayWidth = 13
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Required = True
      Visible = False
      Size = 13
    end
    object CDSRetencionesID_CPBTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Required = True
      Visible = False
    end
    object CDSRetencionesFECHA: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Visible = False
    end
    object CDSRetencionesCODIGO_CLIENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO_CLIENTE'
      Origin = 'CODIGO_CLIENTE'
      Required = True
      Visible = False
      Size = 6
    end
    object CDSRetencionesCUIT_CLIENTE: TStringField
      DisplayWidth = 13
      FieldName = 'CUIT_CLIENTE'
      Origin = 'CUIT_CLIENTE'
      Visible = False
      Size = 13
    end
    object CDSRetencionesNOMBRE_CLIENTE: TStringField
      DisplayWidth = 35
      FieldName = 'NOMBRE_CLIENTE'
      Origin = 'NOMBRE_CLIENTE'
      Visible = False
      Size = 35
    end
  end
  object ComBuscadorCTa: TComBuscador
    Data = DatosGastosBco.QBuscadorCtaBco
    Campo = 'ID_CUENTA'
    Titulo = 'Cuentas Bancarias'
    rOk = False
    Left = 584
    Top = 192
  end
  object ComBuscadorConceptos: TComBuscador
    Data = DatosGastosBco.QBuscadorConcepto
    Campo = 'CODIGO'
    Titulo = 'Conceptos'
    rOk = False
    Left = 584
    Top = 136
  end
  object ComBuscadorRetenciones: TComBuscador
    Data = DatosGastosBco.QBuscadorTRetencion
    Campo = 'ID_RETENCION'
    Titulo = 'Retenciones'
    rOk = False
    Left = 568
    Top = 304
  end
  object ComBuscadorIVA: TComBuscador
    Data = DatosGastosBco.CDSBuscaIVA
    Campo = 'CODIGO'
    Titulo = 'Cuentas Bancarias'
    rOk = False
    Left = 480
    Top = 160
  end
  object ComBuscadorPercepcionIIBB: TComBuscador
    Data = DatosGastosBco.CDSBuscaPercepIIBB
    Campo = 'CODIGO'
    Titulo = 'Percecpiones IIBB'
    rOk = False
    Left = 478
    Top = 213
  end
  object ComBuscadorPercepcionIVA: TComBuscador
    Data = DatosGastosBco.CDSBuscaPercepIVA
    Campo = 'CODIGO'
    Titulo = 'Percepciones'
    rOk = False
    Left = 478
    Top = 261
  end
  object spModificaGasto: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end>
    StoredProcName = 'MODIFICA_GASTOS_BCO'
    Left = 381
    Top = 346
    ParamData = <
      item
        Position = 1
        Name = 'FECHA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'FECHAFISCAL'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'IDCTACAJA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'ID_GASTO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 644
    Top = 356
    object ReSumar1: TMenuItem
      Action = ReSumar
    end
    object ReIngresaMovBanco1: TMenuItem
      Action = ReIngresaMovBanco
      Caption = 'ReIngresaMovBanco'
    end
    object CentrodeCostos1: TMenuItem
      Action = DetallesCostos
      Caption = 'Centro de Costos'
    end
  end
end
