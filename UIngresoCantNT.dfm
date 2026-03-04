object FormIngresoCantidadNT: TFormIngresoCantidadNT
  Left = 383
  Top = 255
  Caption = 'Ingreso Cantidades Nota Transferencia'
  ClientHeight = 442
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnBase: TPanel
    Left = 8
    Top = 8
    Width = 673
    Height = 89
    TabOrder = 0
    TabStop = True
    object Label1: TLabel
      Left = 87
      Top = 2
      Width = 72
      Height = 16
      Caption = 'Codigo EAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 327
      Top = 2
      Width = 43
      Height = 16
      Caption = 'Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 487
      Top = 2
      Width = 51
      Height = 16
      Caption = 'Entrega'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 407
      Top = 2
      Width = 53
      Height = 16
      Caption = 'Faltante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 571
      Top = 2
      Width = 29
      Height = 16
      Caption = 'Lote'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TDBText
      Left = 5
      Top = 50
      Width = 37
      Height = 16
      AutoSize = True
      DataField = 'DETALLE'
      DataSource = DatosNotaTransferencia.DSNDet
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object BitBtn1: TBitBtn
      Left = 585
      Top = 59
      Width = 75
      Height = 25
      Caption = '&Cerrar'
      TabOrder = 6
      TabStop = False
      Kind = bkClose
    end
    object dbePedido: TJvDBCalcEdit
      Left = 327
      Top = 21
      Width = 74
      Height = 24
      DisplayFormat = ',0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 1
      DisabledTextColor = clBlack
      DisabledColor = clInfoBk
      DecimalPlacesAlwaysShown = False
      DataField = 'CANTIDAD_PEDIDA'
      DataSource = DatosNotaTransferencia.DSNDet
    end
    object dbeFaltante: TJvDBCalcEdit
      Left = 407
      Top = 21
      Width = 74
      Height = 24
      DisplayFormat = ',0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 2
      DisabledTextColor = clBlack
      DisabledColor = clInfoBk
      DecimalPlacesAlwaysShown = False
      DataField = 'CANTIDAD_FALTANTE'
      DataSource = DatosNotaTransferencia.DSNDet
    end
    object dbeLote: TDBEdit
      Left = 571
      Top = 21
      Width = 54
      Height = 24
      DataField = 'LOTE'
      DataSource = DatosNotaTransferencia.DSNDet
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object btOk: TBitBtn
      Left = 629
      Top = 20
      Width = 31
      Height = 25
      TabOrder = 5
      OnClick = btOkClick
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
      NumGlyphs = 2
    end
    object dbeEntrega: TDBEdit
      Left = 487
      Top = 21
      Width = 74
      Height = 24
      DataField = 'CANTIDAD_ENTREGADA'
      DataSource = DatosNotaTransferencia.DSNDet
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object edCodigoEAN: TEdit
      Left = 87
      Top = 20
      Width = 234
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnKeyPress = edCodigoEANKeyPress
    end
    object dbeCodigo: TDBEdit
      Left = 5
      Top = 20
      Width = 81
      Height = 24
      Color = clInfoBk
      DataField = 'CODIGO'
      DataSource = DatosNotaTransferencia.DSNDet
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
end
