object FormConfiguraPath: TFormConfiguraPath
  Left = 292
  Top = 233
  Caption = 'Asignar Base de Datos'
  ClientHeight = 140
  ClientWidth = 543
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  DesignSize = (
    543
    140)
  PixelsPerInch = 96
  TextHeight = 13
  object Label31: TLabel
    Left = 16
    Top = 8
    Width = 94
    Height = 13
    Caption = 'Path Base de Datos'
    ParentShowHint = False
    ShowHint = True
  end
  object btOk: TBitBtn
    Left = 419
    Top = 72
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
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
    TabOrder = 0
    OnClick = btOkClick
  end
  object btCancel: TBitBtn
    Left = 317
    Top = 72
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Cancel = True
    Caption = 'Cancel'
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    TabOrder = 1
    OnClick = btCancelClick
  end
  object rgBaseDatos: TRadioGroup
    Left = 16
    Top = 54
    Width = 185
    Height = 33
    Caption = 'Tipo de Base de Datos'
    Columns = 2
    ItemIndex = 1
    Items.Strings = (
      'Interbase'
      'Firebird')
    TabOrder = 2
  end
  object colbAlias: TColumnComboBox
    Left = 16
    Top = 27
    Width = 463
    Height = 21
    Hint = 'This is my hint here'
    Color = clWindow
    Version = '1.7.1.3'
    Visible = True
    Ctl3D = True
    Columns = <
      item
        Color = clWhite
        ColumnType = ctText
        Width = 16
        Alignment = taLeftJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      item
        Color = clWindow
        ColumnType = ctImage
        Width = 20
        Alignment = taLeftJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end>
    ComboItems = <
      item
        ImageIndex = 0
        Strings.Strings = (
          '1'
          'BMW'
          'Cabrio CI 328 ')
        Tag = 0
      end
      item
        ImageIndex = 1
        Strings.Strings = (
          '2'
          'Audi'
          'Roadster TT')
        Tag = 0
      end
      item
        ImageIndex = 0
        Strings.Strings = (
          '3'
          'Porsche'
          'Boxster S-type')
        Tag = 0
      end
      item
        ImageIndex = 0
        Strings.Strings = (
          '4'
          'Mercedes'
          'SLK 320 ')
        Tag = 0
      end
      item
        ImageIndex = 0
        Strings.Strings = (
          '5'
          'Ferrari'
          'Modena 360 spider')
        Tag = 0
      end
      item
        ImageIndex = 0
        Strings.Strings = (
          '6'
          'Mercedes'
          'Vision SLR Roadster')
        Tag = 0
      end
      item
        ImageIndex = 1
        Strings.Strings = (
          '7'
          'MG'
          'MGF')
        Tag = 0
      end
      item
        ImageIndex = 0
        Strings.Strings = (
          '8'
          'BMW'
          'Z3 M Roadster')
        Tag = 0
      end
      item
        ImageIndex = 1
        Strings.Strings = (
          '9'
          'Jaguar'
          'XK8 Coupe')
        Tag = 0
      end
      item
        ImageIndex = 0
        Strings.Strings = (
          '10'
          'Wiessman'
          'Roadster')
        Tag = 0
      end>
    EditColumn = -1
    EditHeight = 15
    EmptyText = ''
    EmptyTextStyle = []
    DropWidth = 550
    DropHeight = 150
    Enabled = True
    ButtonWidth = 17
    ItemIndex = 0
    LookupColumn = 2
    LabelCaption = ''
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    SortColumn = 0
    TabOrder = 3
  end
end
