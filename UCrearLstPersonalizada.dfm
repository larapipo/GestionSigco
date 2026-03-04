object FormCrearLstPersonalizada: TFormCrearLstPersonalizada
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Creacion de Lista Personalizada'
  ClientHeight = 116
  ClientWidth = 479
  Color = clMenuHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object edNombre: TLabeledEdit
    Left = 8
    Top = 32
    Width = 457
    Height = 21
    CharCase = ecUpperCase
    EditLabel.Width = 93
    EditLabel.Height = 16
    EditLabel.Caption = 'Nombre de Lista'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWhite
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    MaxLength = 50
    TabOrder = 0
  end
  object btCrear: TBitBtn
    Left = 390
    Top = 68
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
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
    TabOrder = 1
    OnClick = btCrearClick
  end
  object spCrearLst: TFDStoredProc
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CREAR_LST_PRECIOS_PERSONALIZADA'
    Left = 160
    Top = 64
    ParamData = <
      item
        Position = 1
        Name = 'NOMBRE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
  end
  object spModificar: TFDStoredProc
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'MODIF_LST_PRECIOS_PERSONALIZADA'
    Left = 232
    Top = 64
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'NOMBRE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
  end
end
