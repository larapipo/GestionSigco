inherited FormAnulacioOPago: TFormAnulacioOPago
  Left = 164
  Top = 80
  Caption = 'FormAnulacioOPago'
  ClientHeight = 522
  ClientWidth = 737
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 737
    Height = 382
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 737
      Height = 113
      Align = alTop
      TabOrder = 0
      object RxLabel59: TRxLabel
        Left = 102
        Top = 5
        Width = 89
        Height = 13
        Caption = 'Sucursal de Venta'
      end
      object RxLabel58: TRxLabel
        Left = 9
        Top = 6
        Width = 35
        Height = 13
        Caption = 'Fecha '
      end
      object RxLabel60: TRxLabel
        Left = 541
        Top = 5
        Width = 100
        Height = 13
        Caption = 'Nro.de Comprobante'
      end
      object RxLabel2: TRxLabel
        Left = 486
        Top = 53
        Width = 64
        Height = 13
        Caption = 'Importe Total'
      end
      object dbtMuestraComprobante: TDBText
        Left = 359
        Top = 25
        Width = 138
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
      object RxLabel6: TRxLabel
        Left = 313
        Top = 9
        Width = 104
        Height = 13
        Caption = 'Tipo de Comprobante'
      end
      object GroupBox1: TGroupBox
        Left = 16
        Top = 54
        Width = 385
        Height = 43
        Caption = 'Proveedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object dbeNombre: TDBEdit
          Left = 80
          Top = 14
          Width = 286
          Height = 21
          TabStop = False
          Color = clInfoBk
          DataField = 'RAZONSOCIAL'
          DataSource = DSBase
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object RxDBECodigo: TRxDBComboEdit
          Left = 7
          Top = 14
          Width = 66
          Height = 21
          ClickKey = 16397
          DataField = 'CODIGO'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          GlyphKind = gkEllipsis
          ButtonWidth = 15
          NumGlyphs = 1
          ParentFont = False
          TabOrder = 0
        end
      end
      object dbeSuc: TDBEdit
        Left = 545
        Top = 21
        Width = 39
        Height = 24
        TabStop = False
        DataField = 'SUCOP'
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
        Left = 589
        Top = 21
        Width = 75
        Height = 24
        TabStop = False
        DataField = 'NUMEROOP'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object dbeLetra: TDBEdit
        Left = 519
        Top = 21
        Width = 22
        Height = 24
        TabStop = False
        DataField = 'LETRAOP'
        DataSource = DSBase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object RxDBESucursal: TRxDBComboEdit
        Left = 104
        Top = 23
        Width = 37
        Height = 21
        ClickKey = 16397
        DataField = 'SUCURSAL'
        DataSource = DSBase
        GlyphKind = gkEllipsis
        ButtonWidth = 15
        NumGlyphs = 1
        TabOrder = 1
      end
      object dbeSucursal: TDBEdit
        Left = 146
        Top = 23
        Width = 159
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRASUCURSAL'
        DataSource = DSBase
        Enabled = False
        TabOrder = 2
      end
      object dbeTotal: TDBEdit
        Left = 488
        Top = 72
        Width = 105
        Height = 21
        Color = clWhite
        DataField = 'TOTAL'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object RxCTipoCpbte: TRxDBComboEdit
        Left = 314
        Top = 23
        Width = 42
        Height = 21
        ClickKey = 16397
        DataField = 'ID_TIPOCOMPROBANTE'
        DataSource = DSBase
        GlyphKind = gkEllipsis
        ButtonWidth = 15
        NumGlyphs = 1
        TabOrder = 3
      end
      object dbeFecha: TDBDateEdit
        Left = 8
        Top = 24
        Width = 93
        Height = 21
        DataField = 'FECHA'
        DataSource = DSBase
        CheckOnExit = True
        ButtonWidth = 16
        NumGlyphs = 2
        TabOrder = 0
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 113
      Width = 737
      Height = 264
      Align = alTop
      Caption = 'Panel2'
      TabOrder = 1
      inline FrameMovValoresIngreso1: TFrameMovValoresIngreso
        Left = 9
        Top = 6
        Width = 708
        Height = 248
        inherited pcValores: TPageControl
          Left = 239
          Width = 452
          ActivePage = FrameMovValoresIngreso1.tsChe3
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 382
    Width = 737
  end
  inherited Panel1: TPanel
    Top = 416
    Width = 737
    inherited sbEstado: TStatusBar
      Left = 269
    end
  end
  inherited ActionList1: TActionList
    Left = 464
    Top = 80
  end
  inherited FormStorage1: TFormStorage
    Left = 408
    Top = 80
  end
end
