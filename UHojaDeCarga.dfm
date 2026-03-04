inherited FormHojaDeCarga: TFormHojaDeCarga
  Left = 171
  Top = 77
  Caption = 'Planilla Hoja de Carga'
  ClientHeight = 789
  ClientWidth = 1283
  StyleElements = [seFont, seClient, seBorder]
  ExplicitTop = -31
  ExplicitWidth = 1301
  ExplicitHeight = 830
  TextHeight = 13
  object Label9: TLabel [0]
    Left = 575
    Top = 477
    Width = 45
    Height = 13
    Caption = 'Direccion'
  end
  inherited pnPrincipal: TPanel
    Width = 1283
    Height = 736
    Align = alClient
    Color = clGradientInactiveCaption
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1283
    ExplicitHeight = 736
    DesignSize = (
      1283
      736)
    object lbFecha: TLabel
      Left = 447
      Top = 8
      Width = 30
      Height = 13
      Caption = 'Fecha'
      FocusControl = dbeFecha
    end
    object Label3: TLabel
      Left = 579
      Top = -1
      Width = 158
      Height = 13
      Caption = 'Fecha Emision de Comprobantes '
    end
    object Label4: TLabel
      Left = 580
      Top = 14
      Width = 31
      Height = 13
      Caption = 'Desde'
    end
    object Label5: TLabel
      Left = 676
      Top = 13
      Width = 28
      Height = 13
      Caption = 'Hasta'
    end
    object Label6: TLabel
      Left = 8
      Top = 649
      Width = 37
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'NOTAS'
      ExplicitTop = 652
    end
    object Label7: TLabel
      Left = 575
      Top = 711
      Width = 50
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Filtro x Nro'
      ExplicitTop = 653
    end
    object Label8: TLabel
      Left = 811
      Top = 17
      Width = 30
      Height = 13
      Caption = 'Zonas'
    end
    object DBText1: TDBText
      Left = 638
      Top = 677
      Width = 291
      Height = 17
      Anchors = [akLeft, akBottom]
      DataField = 'DIRECCION'
      DataSource = DSCompVta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitTop = 619
    end
    object DBText2: TDBText
      Left = 635
      Top = 693
      Width = 291
      Height = 17
      Anchors = [akLeft, akBottom]
      DataField = 'MUESTRAZONA'
      DataSource = DSCompVta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitTop = 585
    end
    object Label10: TLabel
      Left = 577
      Top = 676
      Width = 55
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Direccion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitTop = 568
    end
    object Label11: TLabel
      Left = 577
      Top = 693
      Width = 30
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Zona'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitTop = 585
    end
    object Label12: TLabel
      Left = 504
      Top = 53
      Width = 53
      Height = 13
      Caption = '% Comisi'#243'n'
    end
    object JvDBStatusLabel1: TJvDBStatusLabel
      Left = 8
      Top = 628
      Width = 96
      Height = 13
      DataSource = DSHojaDet
      Style = lsRecordNo
      Anchors = [akLeft, akBottom]
      Transparent = True
      ExplicitTop = 631
    end
    object JvDBStatusLabel2: TJvDBStatusLabel
      Left = 577
      Top = 649
      Width = 96
      Height = 13
      DataSource = DSCompVta
      Style = lsRecordNo
      Anchors = [akLeft, akBottom]
      Transparent = True
      ExplicitTop = 652
    end
    object Label14: TLabel
      Left = 731
      Top = 711
      Width = 71
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Buscar por Nro'
      ExplicitTop = 653
    end
    object DBText3: TDBText
      Left = 1212
      Top = 652
      Width = 65
      Height = 17
      Alignment = taRightJustify
      Anchors = [akRight, akBottom]
      DataField = 'SALDO'
      DataSource = DSCompVta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 1154
      ExplicitTop = 655
    end
    object Label15: TLabel
      Left = 240
      Top = 53
      Width = 91
      Height = 13
      Caption = 'Unid.de Transporte'
    end
    object Label16: TLabel
      Left = 407
      Top = 623
      Width = 67
      Height = 13
      Alignment = taCenter
      Anchors = [akLeft, akBottom]
      Caption = 'Peso Cargado'
      ExplicitTop = 626
    end
    object Label17: TLabel
      Left = 347
      Top = 53
      Width = 45
      Height = 13
      Caption = 'Carg.Max'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel7: TLabel
      Left = 6
      Top = 53
      Width = 62
      Height = 13
      Caption = 'Responsable'
      Transparent = True
    end
    object lbCarga: TLabel
      Left = 477
      Top = 48
      Width = 21
      Height = 13
      Alignment = taRightJustify
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label18: TLabel
      Left = 610
      Top = 54
      Width = 103
      Height = 13
      Caption = 'Unidad de Transporte'
    end
    object spFiltroCpbte: TSpeedButton
      Left = 579
      Top = 66
      Width = 23
      Height = 24
      Hint = 'Filtrado de Comprobantes'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF009933000099330000993300009933
        000099330000993300009933000099330000FF00FF00FF00FF00FF00FF00FF00
        FF000E80AA000E80AA000E80AA000E80AA0099330000FDFEFE00FDFEFE00FDFE
        FE008EA4FD00B8C6FD00FDFEFE0099330000FF00FF00FF00FF00FF00FF00078D
        BB0049D5EE0023D7FE0036D9FE006FE6FF0099330000FDFEFE00FDFEFE007E98
        FC000335FB00597AFC00FDFEFE0099330000FF00FF00FF00FF00078DBB008CFB
        FE0059EAFE0023D7FE0036D9FE006FE6FF0099330000D6DEFE004368FC000335
        FB004368FC000335FB00D9E0FE0099330000FF00FF00FF00FF00078DBB008CFB
        FE0059EAFE0023D7FE0036D9FE006FE6FF00993300005274FC001442FB00BCC9
        FD00EFF2FE001A47FB004F72FC0097330400FF00FF00FF00FF00078DBB008CFB
        FE0059EAFE0023D7FE0036D9FE006FE6FF0099330000E4EAFE00D9E0FE00FDFE
        FE00FDFEFE0098ACFD000335FB0064345900FF00FF00FF00FF00078DBB00B3FC
        FE00B6F6FF00C6F5FF00E3FAFF00EBFBFF0099330000FDFEFE00FDFEFE00FDFE
        FE00FDFEFE00FDFEFE005274FC000335FB00FF00FF00FF00FF00078DBB00BAEE
        F60030BCDD0011A7D200129FCB0020A2CB009933000099330000993300009933
        000099330000993300008F3311002235C8000335FB00FF00FF00078DBB004AC5
        DD0059EAFE0023D7FE0036D9FE006FE6FF008DE7FA0049C1E3000682B6000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF000335FB000335FB00078DBB008CFB
        FE0059EAFE0023D7FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000335FB00078DBB008CFB
        FE0059EAFE0023D7FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078DBB008CFB
        FE0059EAFE0023D7FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078DBB0091FC
        FE0082F8FF006FF8FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078DBB00FDFE
        FE00F4FFFF00D3FFFF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000C92
        C000F4FFFF00E3FAFF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00078DBB00078DBB00078DBB00078DBB00078DBB00078DBB00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = spFiltroCpbteClick
    end
    object Label20: TLabel
      Left = 811
      Top = 54
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object Label23: TLabel
      Left = 965
      Top = 649
      Width = 51
      Height = 13
      Alignment = taCenter
      Anchors = [akLeft, akBottom]
      Caption = 'Peso Total'
      ExplicitTop = 652
    end
    object DBText4: TDBText
      Left = 407
      Top = 53
      Width = 59
      Height = 13
      Alignment = taRightJustify
      DataField = 'CARGA_MAX'
      DataSource = DSHojaCab
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 1088
      Top = 49
      Width = 64
      Height = 13
      Caption = 'Km Recorrido'
    end
    object DBText5: TDBText
      Left = 6
      Top = 691
      Width = 274
      Height = 37
      Anchors = [akLeft, akBottom]
      DataField = 'DIRECCION_AMPLIADA'
      DataSource = DSHojaDet
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      ExplicitTop = 700
    end
    object dbeFecha: TJvDBDateEdit
      Left = 445
      Top = 21
      Width = 121
      Height = 21
      DataField = 'FECHA'
      DataSource = DSBase
      ShowNullDate = False
      TabOrder = 0
    end
    object dbcResponsable: TJvDBComboEdit
      Left = 7
      Top = 68
      Width = 65
      Height = 21
      Margins.Left = 1
      Margins.Top = 1
      ClickKey = 16397
      DataField = 'RESPONSABLE'
      DataSource = DSBase
      Glyph.Data = {
        4E000000424D4E000000000000003E0000002800000009000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FF8000002480000024800000FF800000}
      ButtonWidth = 15
      TabOrder = 1
      OnButtonClick = BuscarResponsableExecute
    end
    object dbeMuestraVendedor: TDBEdit
      Left = 76
      Top = 68
      Width = 214
      Height = 21
      TabStop = False
      Color = clInfoBk
      DataField = 'MUESTRARESPONSABLE'
      DataSource = DSBase
      Enabled = False
      TabOrder = 2
    end
    object dbgDetalle: TJvDBGrid
      Left = 4
      Top = 95
      Width = 562
      Height = 527
      Anchors = [akLeft, akTop, akBottom]
      DataSource = DSHojaDet
      DrawingStyle = gdsGradient
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgDetalleDblClick
      OnDragDrop = dbgDetalleDragDrop
      OnDragOver = dbgDetalleDragOver
      OnKeyDown = dbgDetalleKeyDown
      TitleButtons = True
      OnTitleBtnClick = dbgDetalleTitleBtnClick
      ScrollBars = ssVertical
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      OnCheckIfBooleanField = dbgDetalleCheckIfBooleanField
      Columns = <
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'ID'
          Title.Alignment = taCenter
          Title.Caption = 'Ord.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TIPOCPBTE'
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLASECPBTE'
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NROCPBTE'
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 209
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTE'
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENTREGADO'
          Title.Alignment = taCenter
          Title.Caption = 'Entr.'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRAVENDEDOR'
          Title.Caption = 'Vendedor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = False
        end>
    end
    object UpDown1: TUpDown
      Left = 770
      Top = 28
      Width = 25
      Height = 22
      Min = -32768
      Max = 32767
      TabOrder = 4
      OnClick = UpDown1Click
    end
    object btSearch: TBitBtn
      Left = 932
      Top = 702
      Width = 93
      Height = 30
      Action = BuscarCpbtes
      Anchors = [akLeft, akBottom]
      Caption = 'Search'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFABA7A68C8888C09596FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFACA8A786868A2A669A4B7BA0C09494FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9B9D9D5492C22E99FF1B7C
        CB557A97C19595FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3DADFF
        57C1FF4DB1FF3196FA197CC9537997C19495FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF41ABFF5DBFFE4DAFFF3196FA197BC85A7A97C29594FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF42ABFE5CC0FE4DAFFF3096FA19
        7AC8587A96C19494FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF42AC
        FE5CC0FE4DAFFF2E94FA187AC75F7C97BB9396FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF44ADFE5CBFFE4DB0FF2D94F81979C6437397FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF46AEFE5CBFFE4CB0FF3F97ED
        577B94FF00FFFF00FFFF00FFAE837EAE837EAE837EAE837EAE837EFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF46
        AFFE66C5FFA3CCF1BEB3AB867170A9807AAE837EE5D8BDFFFFE2FFFFE2FFFFE0
        EEDFC6AE837EAE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFDCBFB8C69E8ED8BDA3FFFFDDFFFFDDFF
        FFDBFFFFDAFFFFDBFFFFDDFFFFE9DEC9B7AE837EFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE857FDEC0A5FFF3
        C1FCF1C8FFFFDAFFFFD9FFFFDAFFFFE0FFFFE4FFFFEFFFFFFFDDCAC8AE837EFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        AE837EFFEFB9F5D4A5FBF0C6FFFFDBFFFFDAFFFFDDFFFFEBFFFFF5FFFFFBFFFF
        FDFFFFFEAE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFAE837EECD5B4F8D6A2F2C997FCEDC4FFFFDBFFFFDAFFFFE0FFFFF0
        FFFFFEFFFFFDFFFFF5FFFFEBE1D3B8AE837EFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFAE837EFFF3BFF4CB95F0C18EF9E5BAFEFDD7FF
        FFDCFFFFDFFFFFECFFFFF8FFFFF8FFFFECFFFFE0FFFFE3AE837EFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837EFFF4C0F3C994EEB8
        84F5D5A5FDF3CBFFFFDCFFFFDDFFFFE2FFFFE8FFFFE9FFFFE2FFFFDDFFFFE3AE
        837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837E
        FFF5C3F6D19CEEB27DF1C593F7E0B3FDF7D0FFFFDCFFFFDDFFFFDDFFFFDDFFFF
        DBFFFFDAFFFFE1AE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFAE837EECD5B4FDE6B2F3C996F2C792F3D09CF8E3B5FCF5CDFFFFDA
        FFFFDCFFFFDBFFFFDBFFFFDCE2D3B8AE837EFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837EFFFED0FCF0D6F8E0BEF4CF9DF3
        CD9AF6D8AAFBEABFFDF4CBFCF7CFFEF8D1FFFFDEAE837EFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837EE0CAB2FFFF
        FFFEF9F2F8E1BEF1C48DEEBA85F1C491F4D1A1F8DEB0FFF7C6DDC7AEAE837EFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFAE837ED9C6C0FFFFFFFFF7D7F8DAA6F4CB95F5CD99F9D9A6FFF1BBDEC2
        A9AE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFAE837EAE837EE8D5B4FFF9C5FFF5C0FFF5C2
        EED8B7AE837EAE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837EAE
        837EAE837EAE837EAE837EFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 5
    end
    object Desde: TJvDateEdit
      Left = 579
      Top = 29
      Width = 89
      Height = 21
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
    object Hasta: TJvDateEdit
      Left = 674
      Top = 29
      Width = 89
      Height = 21
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
      OnAcceptDate = HastaAcceptDate
      OnKeyPress = HastaKeyPress
    end
    object chbporDia: TCheckBox
      Left = 751
      Top = -1
      Width = 112
      Height = 17
      Caption = 'Sincro. Dia x Dia'
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
    object Panel2: TPanel
      Left = 4
      Top = 1
      Width = 426
      Height = 49
      Enabled = False
      TabOrder = 9
      object Label1: TLabel
        Left = 45
        Top = 2
        Width = 63
        Height = 16
        Caption = 'Nro.Hoja'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 179
        Top = 2
        Width = 25
        Height = 13
        Caption = 'Zona'
      end
      object dbeId: TDBEdit
        Left = 15
        Top = 18
        Width = 122
        Height = 24
        DataField = 'ID'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object cbZona: TJvDBLookupCombo
        Left = 179
        Top = 20
        Width = 238
        Height = 21
        DataField = 'ID_ZONA'
        DataSource = DSBase
        DisplayEmpty = '--'
        LookupField = 'ID_ZONA'
        LookupDisplay = 'DETALLE'
        LookupSource = DSZona
        TabOrder = 1
      end
      object TMSFNCGeocoding1: TTMSFNCGeocoding
        Left = 368
        Top = 3
        Width = 26
        Height = 26
        Visible = True
        OnGetGeocodingResult = TMSFNCGeocoding1GetGeocodingResult
        APIKey = 'AIzaSyBQVibb5ZW1yflpnTTxjq41qgSEhjdb8Hg'
        GeocodingRequests = <>
      end
    end
    object edNotas: TDBEdit
      Left = 6
      Top = 666
      Width = 551
      Height = 21
      Anchors = [akLeft, akBottom]
      DataField = 'NOTAS'
      DataSource = DSBase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object EdBuscador: TEdit
      Left = 808
      Top = 708
      Width = 96
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 11
      OnChange = EdBuscadorChange
      OnKeyDown = EdBuscadorKeyDown
    end
    object DBNavigator1: TDBNavigator
      Left = 497
      Top = 635
      Width = 46
      Height = 25
      Hint = 'Borrar Regsitro'
      DataSource = DSHojaDet
      VisibleButtons = [nbDelete]
      Anchors = [akLeft, akBottom]
      TabOrder = 12
      Visible = False
      OnClick = DBNavigator1Click
    end
    object dbcZona: TJvDBLookupCombo
      Left = 811
      Top = 29
      Width = 158
      Height = 21
      DisplayEmpty = 'Todas las Zonas'
      EmptyValue = '-1'
      LookupField = 'ID_ZONA'
      LookupDisplay = 'DETALLE'
      LookupSource = DSZonas
      TabOrder = 13
      OnChange = dbcZonaChange
    end
    object DBEdit1: TDBEdit
      Left = 501
      Top = 68
      Width = 65
      Height = 21
      DataField = 'COMISION'
      DataSource = DSBase
      TabOrder = 14
    end
    object Button1: TButton
      Left = 840
      Top = 649
      Width = 75
      Height = 22
      Anchors = [akLeft, akBottom]
      Caption = '<< Todos'
      TabOrder = 15
      OnClick = Button1Click
    end
    object edFind: TJvDBFindEdit
      Left = 631
      Top = 708
      Width = 91
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 16
      Text = ''
      OnKeyDown = edFindKeyDown
      DataField = 'NUMERO'
      DataSource = DSCompVta
      FindStyle = fsFilter
      FindMode = fmAnyPos
    end
    object rgOrden: TRadioGroup
      Left = 121
      Top = 628
      Width = 240
      Height = 34
      Anchors = [akLeft, akBottom]
      Caption = 'Ordenar Listado'
      Color = clGradientInactiveCaption
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'x Nro.Orden '
        'x Numero'
        'x Nombre')
      ParentBackground = False
      ParentColor = False
      TabOrder = 17
      OnClick = rgOrdenClick
    end
    object pnAvisoCargaMax: TPanel
      Left = 372
      Top = 699
      Width = 185
      Height = 22
      Anchors = [akLeft, akBottom]
      Caption = 'Supera Carga Maxima'
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 18
      Visible = False
    end
    object cbTransporte: TJvDBLookupCombo
      Left = 295
      Top = 68
      Width = 200
      Height = 21
      DropDownCount = 12
      DropDownWidth = 350
      DisplayAllFields = True
      DataField = 'ID_TRANSPORTE'
      DataSource = DSHojaCab
      DisplayEmpty = 'Sin Seleccion'
      FieldsDelimiter = ';'
      LookupField = 'ID'
      LookupDisplay = 'DESCRIPCION;DOMINIO'
      LookupSource = DSTrans
      TabOrder = 19
      OnClick = cbTransporteClick
    end
    object dbcTransporte: TJvDBLookupCombo
      Left = 610
      Top = 69
      Width = 185
      Height = 21
      DropDownCount = 12
      DropDownWidth = 350
      DisplayEmpty = 'Todas las Unidades'
      EmptyValue = '-1'
      LookupField = 'ID'
      LookupDisplay = 'DESCRIPCION'
      LookupSource = DSUniTransp
      TabOrder = 20
      OnChange = dbcTransporteChange
    end
    object dbcVendedores: TJvDBLookupCombo
      Left = 811
      Top = 69
      Width = 159
      Height = 21
      DisplayEmpty = 'Todos los Vendedores'
      EmptyValue = '******'
      EmptyStrIsNull = False
      LookupField = 'CODIGO'
      LookupDisplay = 'NOMBRE'
      LookupSource = DSVendedores
      TabOrder = 22
      OnChange = dbcVendedoresChange
    end
    object Panel5: TPanel
      Left = 572
      Top = 95
      Width = 706
      Height = 552
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 23
      object pnIndicaciones1: TPanel
        Left = 1
        Top = 529
        Width = 704
        Height = 22
        ParentCustomHint = False
        Align = alBottom
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        Ctl3D = True
        DoubleBuffered = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 0
        object pnIndicaciones: TPanel
          Left = 140
          Top = 0
          Width = 564
          Height = 22
          Align = alLeft
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelEdges = []
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          TabOrder = 0
          object colorSinDespachar: TShape
            AlignWithMargins = True
            Left = 7
            Top = 3
            Width = 15
            Height = 16
            Margins.Left = 7
            Align = alLeft
            Pen.Style = psClear
            Pen.Width = 0
            ExplicitTop = 6
          end
          object Label21: TLabel
            AlignWithMargins = True
            Left = 28
            Top = 3
            Width = 70
            Height = 16
            Align = alLeft
            AutoSize = False
            Caption = 'Sin Despachar'
            Layout = tlCenter
            OnClick = Label21Click
            ExplicitLeft = 33
          end
          object Label22: TLabel
            AlignWithMargins = True
            Left = 129
            Top = 3
            Width = 66
            Height = 16
            Align = alLeft
            Caption = 'Despachados'
            Layout = tlCenter
            OnClick = Label22Click
            ExplicitHeight = 13
          end
          object colorDespachados: TShape
            AlignWithMargins = True
            Left = 108
            Top = 3
            Width = 15
            Height = 16
            Margins.Left = 7
            Align = alLeft
            Brush.Color = clInfoBk
            Pen.Style = psClear
            ExplicitLeft = 92
            ExplicitTop = 6
          end
          object lEntregados: TLabel
            AlignWithMargins = True
            Left = 226
            Top = 3
            Width = 54
            Height = 16
            Align = alLeft
            Caption = 'Entregados'
            Layout = tlCenter
            OnClick = lEntregadosClick
            ExplicitHeight = 13
          end
          object colorEntregados: TShape
            AlignWithMargins = True
            Left = 205
            Top = 3
            Width = 15
            Height = 16
            Margins.Left = 7
            Align = alLeft
            Brush.Color = clMoneyGreen
            Pen.Style = psClear
            ExplicitTop = 6
          end
        end
        object chDespachados: TCheckBox
          AlignWithMargins = True
          Left = 15
          Top = 3
          Width = 122
          Height = 16
          Margins.Left = 15
          Align = alLeft
          Caption = 'S'#243'lo Sin despachar'
          TabOrder = 1
          OnClick = chDespachadosClick
        end
      end
      object dbgComprobantes: TJvDBGrid
        Left = 1
        Top = 1
        Width = 704
        Height = 528
        Align = alClient
        BiDiMode = bdLeftToRight
        DataSource = DSCompVta
        DrawingStyle = gdsGradient
        Options = [dgAlwaysShowEditor, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        ParentBiDiMode = False
        PopupMenu = ppmComprobantes
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = dbgComprobantesDrawColumnCell
        OnDblClick = dbgComprobantesDblClick
        OnKeyPress = dbgComprobantesKeyPress
        OnMouseMove = dbgComprobantesMouseMove
        AutoAppend = False
        AutoSort = False
        MultiSelect = True
        TitleButtons = True
        OnTitleBtnClick = dbgComprobantesTitleBtnClick
        SelectColumn = scGrid
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        CanDelete = False
        EditControls = <>
        ReduceFlicker = False
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'TIPOCPBTE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLASECPBTE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 29
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NROCPBTE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMBRE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 172
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DIRECCION'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
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
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MUESTRAVENDEDOR'
            Title.Alignment = taCenter
            Title.Caption = 'Vendedor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 130
            Visible = True
          end>
      end
    end
    object pnComprobantes: TJvPanel
      Left = 472
      Top = 57
      Width = 504
      Height = 586
      Movable = True
      Color = clBlue
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 10
      Padding.Bottom = 10
      ParentBackground = False
      TabOrder = 21
      Visible = False
      object lvComprobantes: TListView
        Left = 11
        Top = 64
        Width = 482
        Height = 511
        Align = alBottom
        Anchors = [akTop, akRight, akBottom]
        Checkboxes = True
        Columns = <
          item
            Width = 25
          end
          item
            Alignment = taCenter
            Caption = 'Codigo'
          end
          item
            Alignment = taCenter
            Caption = 'Tp'
            Width = 30
          end
          item
            Caption = 'Cl'
            Width = 30
          end
          item
            Caption = 'Denominacion'
            Width = 280
          end
          item
            Caption = 'Sucursal'
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        SortType = stData
        TabOrder = 0
        ViewStyle = vsReport
        OnClick = lvComprobantesClick
      end
      object Panel3: TPanel
        Left = 11
        Top = 11
        Width = 482
        Height = 38
        Align = alTop
        ParentBackground = False
        ParentColor = True
        TabOrder = 1
        object Label19: TLabel
          Left = 11
          Top = 9
          Width = 141
          Height = 13
          Caption = 'Filtrar Los Comprobantes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 432
          Top = 1
          Width = 26
          Height = 36
          Hint = 'Maracar/Desmarcar Todos'
          Margins.Left = 5
          Margins.Right = 5
          Align = alRight
          Caption = '<>'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = spFiltroAllClick
          ExplicitLeft = 368
          ExplicitTop = -3
        end
        object spCerrar: TSpeedButton
          Left = 458
          Top = 1
          Width = 23
          Height = 36
          Hint = 'Cerrar'
          Margins.Left = 5
          Margins.Right = 5
          Align = alRight
          Caption = 'X'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = spCerrarClick
          ExplicitLeft = 426
        end
      end
    end
    object ePesoTotal: TDBEdit
      Left = 286
      Top = 699
      Width = 80
      Height = 21
      Anchors = [akLeft, akBottom]
      BiDiMode = bdRightToLeft
      DataField = 'TotalContenido'
      DataSource = DSHojaDet
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 24
      Visible = False
    end
    object ePesoCpbtes_: TDBEdit
      Left = 1048
      Top = 662
      Width = 80
      Height = 21
      Anchors = [akLeft, akBottom]
      BiDiMode = bdRightToLeft
      DataField = 'TotalContenido'
      DataSource = DSCompVta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 25
      Visible = False
    end
    object edPeso: TJvCalcEdit
      Left = 367
      Top = 638
      Width = 121
      Height = 21
      DisplayFormat = ',0.000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Anchors = [akLeft, akBottom]
      ParentFont = False
      ShowButton = False
      TabOrder = 26
      DecimalPlacesAlwaysShown = False
    end
    object ePesoCpbtes: TJvCalcEdit
      Left = 921
      Top = 662
      Width = 103
      Height = 21
      DisplayFormat = ',0.000'
      Anchors = [akLeft, akBottom]
      ShowButton = False
      TabOrder = 27
      DecimalPlacesAlwaysShown = False
    end
    object rgOrdenDetalleArti: TRadioGroup
      Left = 1088
      Top = 682
      Width = 131
      Height = 52
      Anchors = [akLeft, akBottom]
      Caption = 'Ordenar List.Detalle Art x'
      ItemIndex = 0
      Items.Strings = (
        'Codigo'
        'Detalle')
      TabOrder = 28
    end
    object DBEdit2: TDBEdit
      Left = 1088
      Top = 68
      Width = 121
      Height = 21
      DataField = 'RECORRIDO_KM'
      DataSource = DSBase
      TabOrder = 29
    end
  end
  inherited ToolBar1: TToolBar
    Top = 736
    Width = 1283
    Align = alBottom
    ButtonHeight = 30
    ExplicitTop = 736
    ExplicitWidth = 1283
    inherited btConfirma: TBitBtn
      Height = 30
      DoubleBuffered = True
      ExplicitHeight = 30
    end
    inherited btNuevo: TBitBtn
      Height = 30
      DoubleBuffered = True
      ExplicitHeight = 30
    end
    inherited btCancelar: TBitBtn
      Height = 30
      DoubleBuffered = True
      ExplicitHeight = 30
    end
    inherited btModificar: TBitBtn
      Height = 30
      DoubleBuffered = True
      ExplicitHeight = 30
    end
    inherited Pr: TSpeedButton
      Height = 30
      ExplicitHeight = 30
    end
    inherited btBuscar: TBitBtn
      Height = 30
      DoubleBuffered = True
      ExplicitHeight = 30
    end
    inherited Ne: TSpeedButton
      Height = 30
      ExplicitHeight = 30
    end
    inherited btBorrar: TBitBtn
      Height = 30
      DoubleBuffered = True
      ExplicitHeight = 30
    end
    inherited btSalir: TBitBtn
      Height = 30
      DoubleBuffered = True
      ExplicitHeight = 30
    end
    object JvArrowButton1: TJvArrowButton
      Left = 557
      Top = 0
      Width = 99
      Height = 30
      Action = Imprimir
      DropDown = popMenuImpresion
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clWindowText
      FillFont.Height = -11
      FillFont.Name = 'Tahoma'
      FillFont.Style = []
      Glyph.Data = {
        56070000424D5607000000000000360400002800000028000000140000000100
        0800000000002003000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600000000000000000000000000000000000000000000000000000000000000
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
        000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        03030303030303030303030303030303030303030303030303FFFFFF03030303
        030303030303FFFFFF0303030000000303030303030303030300000003030303
        F8F8F8FFFFFFFFFFFFFFFFFFFFF8F8F8FFFF0300000000000000000000000000
        00000000000303F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FF0300FF070707
        070707070707070707070707000303F8FF030303030303030303030303030303
        F8FF0300FF070707070707070707070707070707000303F8FF03030303030303
        0303030303030303F8FF0300FF0707070707070707070707F9F90707000303F8
        FF030303030303030303030303030303F8FF0300FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF000303F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FF03F80000F8F8
        F8F8F8F8F8F8F8F8F8F80000F80303F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8030303030000000000000000000000000000030303030303F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8FF03030303030000FFFFFFFFFFFFFFFFFFFF00000303030303
        03F8F8FF03FFFFFFFFFFFFFFFFF8F80303030303030300FF0000000000000000
        FF000303030303030303F8FFF8F8F8F8F8F8F8F803F8FF0303030303030300FF
        FFFFFFFFFFFFFFFFFF000303030303030303F8FF03FFFFFFFFFFFFFFFFF8FF03
        03030303030300FF0000000000000000FF000303030303030303F8FFF8F8F8F8
        F8F8F8F803F8FF0303030303030300FFFFFFFFFFFFFFFFFFFF00030303030303
        0303F8FF03FFFF030303030303F8FF0303030303030300FF0000FFFFFFFFFFFF
        FF000303030303030303F8FFF8F803030303030303F8FF0303030303030300FF
        FFFFFFFFFFFFFFFFFF000303030303030303F8FFFFFFFFFFFFFFFFFFFFF8FF03
        0303030303030000000000000000000000000303030303030303F8F8F8F8F8F8
        F8F8F8F8F8F80303030303030303030303030303030303030303030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        0303030303030303030303030303030303030303030303030303}
      NumGlyphs = 2
    end
    object ToolButton1: TToolButton
      Left = 656
      Top = 0
      Width = 36
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object BitBtn1: TBitBtn
      Left = 692
      Top = 0
      Width = 136
      Height = 30
      Action = ImprimirAgrupado
      Caption = 'Imprimir Agrupado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 7
    end
    object chImprimeStock: TCheckBox
      AlignWithMargins = True
      Left = 828
      Top = 0
      Width = 122
      Height = 30
      Margins.Left = 5
      Align = alLeft
      Caption = 'Detalle de Cpbtes'
      TabOrder = 8
      OnClick = chImprimeStockClick
    end
    object ToolButton2: TToolButton
      Left = 950
      Top = 0
      Width = 43
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object sbMostrarMapa: TSpeedButton
      Left = 993
      Top = 0
      Width = 23
      Height = 30
      Action = VerMapa
    end
  end
  inherited Panel1: TPanel
    Top = 766
    Width = 1283
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 766
    ExplicitWidth = 1283
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 1194
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 1194
    end
  end
  inherited ActionList1: TActionList
    Left = 416
    Top = 176
    inherited Search: TAction
      Enabled = True
    end
    object BuscarResponsable: TAction
      Caption = 'BuscarResponsable'
      OnExecute = BuscarResponsableExecute
    end
    object Imprimir: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirExecute
    end
    object ImprimirAgrupado: TAction
      Caption = 'Imprimir Agrupado'
      OnExecute = ImprimirAgrupadoExecute
    end
    object BuscarCpbtes: TAction
      Caption = 'Search'
      OnExecute = BuscarCpbtesExecute
    end
    object VerMapa: TAction
      Hint = 'Mapa de Entregas'
      ImageIndex = 11
      ShortCut = 49229
      OnExecute = VerMapaExecute
    end
    object RefrescarDireccion: TAction
      Caption = 'Refrescar Direccion'
      OnExecute = RefrescarDireccionExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSHojaCab
    Left = 416
    Top = 128
  end
  inherited ImageList1: TImageList
    Left = 480
    Top = 192
    Bitmap = {
      494C01010B001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004490600055B0900066C0C00066C0C00055E0A00044C06000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006C6A6A006C6A6A0000000000000000006C6A6A006C6A6A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE01EBE9E619C4BEBA49BFB7B350BFB7B350C4BEBA49EBE9E619FEFE
      FE01000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000560
      0900056009000891130009B0180009B31A0009B3190009B11900079614000568
      0C0005680C000000000000000000000000000000000000000000000000006C6A
      6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3E3006C6A6A006C6A
      6A006C6A6A000000000000000000000000000000000000000000000000000000
      0000FDFDFD02006600FF006600FF006600FF006600FF006600FFC4BBB94AFDFD
      FD02000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D0600000000000000000000000000000000006C6A6A00DAD9
      D900A19F9F00A19F9F00A19F9F0037363600353535006C6D6D00BFBFBF00E1E2
      E200B7B6B6006C6A6A006C6A6A006C6A6A000000000000000000FDFDFD02F4F1
      F10EECEAEA16006600FF5CF58FFF5CF58FFF5CF58FFF006600FFB4A9A65EECEA
      EA16F4F1F10EFDFDFD0200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C0000000000000000006C6A6A00D4D3D300CACA
      CA008E8C8C008E8C8C008E8C8C003C3B3B000A090A00070707000B0B0B000707
      07007A7A7A00BBBBBB006C6A6A00000000000000000000000000F5F3F30DA399
      927275645AAD006600FF4DE680FF4DE680FF4DE680FF006600FF5F4B41C87564
      5AADA3999272F3F3F30D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE6D0009B2190009B2
      190009B3190009BA1A0006670C00000000006C6A6A00CACACA00CACACA008E8C
      8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A000888686005E5B5C000707
      070009090900080808006C6A6A00767373000000000000000000F2EEEC132CB5
      4FFF40D973FF40D973FF40D973FF40D973FF40D973FF40D973FF40D973FF2CB5
      4FFF8C7E7590F0EDEC1400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210001B9A3A002AC65B001DBB
      45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FDF8005ACB650009B2
      190009B2190009B81A0008941300045D09006C6A6A00CACACA008E8C8C00EFEE
      EE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCECE00BDBCBC00ADAB
      AB008B898900585656007A7878007573730000000000FCFBFA05CCBDAC5AD5B0
      85FF30C660FF33CC66FF33CC66FF33CC66FF33CC66FF33CC66FF30C660FFD5B0
      85FF5A3E30D9C1B6AF53FBFAF906000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210002AB65B002CC5650022BD
      4D000FB422000AB21A000CB31C000AB219008DDB9500FDFEFD00F6FCF70058CB
      630009B2190009B51A0008AB1700045D09006C6A6A008E8C8C00FFFFFF00FEFC
      FC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0C100D7D7D700D8D8
      D800C7C6C600B7B6B600918F8F006C69690000000000EDEBE71AC66B16FFA13B
      00FFD5B085FF21B743FF23BC47FF23BC47FF23BC47FF21B743FFD5B085FFA14E
      29FFB65948FF78645AADE9E5E21E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F821C0037C26C0033C76C00CDF1
      DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FDF900FFFFFF00F2FB
      F3006FD2790008B4190009B3190005650B00000000006C6A6A006C6A6A00EDEB
      EB00B1A6A7007A6F72008A83880096929500969091009D9798009A9395009E98
      9900BBBABA00D1D1D100C2C2C2006C6A6A0000000000E0CEAF6EA84200FFB34D
      00FFC25C00FFD5B085FF13A925FF14AD27FF13A925FFD5B085FFB14B00FF735D
      25FF8F6648FF6F3A1CEACDC4BE43FDFDFD020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000138D230058CC830042C97700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
      FF00BCEAC1000AB41A0009B31900066D0D000000000000000000000000006C6A
      6A00BB897F00A7876D008B6F64007D6760006F626500797379008F8B8E00A9A3
      A400CBCACA00C1C1C1006C6A6A000000000000000000E6BC78D3B54F00FFCC66
      00FFD77100FFDB7500FFD5B085FF009300FFD5B085FFD26C00FF0C7100FF0366
      02FF606630FF9C4A13FEC1B8B44FFDFDFD020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D006FD293005FD38D006DD4
      950072D6990071D6980072D6990064D28C0092DFA800FBFEFB00FFFFFF00ACE5
      B8002EBF4C0011B82B0008B1190005610A000000000000000000000000000000
      0000BD828100FFE3B400FFD39F00E9B28100C9997300BA916C00BD828100807D
      7E006C6A6A006C6A6A00000000000000000000000000ECBF71FFCC6600FFD973
      00FF209907FF559E0BFF28A110FFD5B085FFEC8600FFAB8000FF007E00FF0071
      00FF0D6606FF8E5B1AFFBFB7B350FDFDFD020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D0067CC83009BE5BA0038C6
      700030C3690038C56F0038C56F0070D69700E8F8EE00FFFFFF009FE2B10020BD
      48001AB93E0010BA290008A3170005610A000000000000000000000000000000
      0000BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC68800BD8281000000
      00000000000000000000000000000000000000000000F2CD81FFD77100FF28A1
      17FF19B231FF1BB435FFB9B83DFFFFB333FFFF9E0AFFF18B00FF008800FF0078
      00FF0B6600FF88620DFFC5BEB84BFDFDFD020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025AE3900BCEDD20082DB
      A40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2B20022BC4B001DBA
      410018B7360014C030000A85170000000000000000000000000000000000C086
      8300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD828100000000000000
      00000000000000000000000000000000000000000000F3EBC7A1DB7500FF1AB3
      33FF2DC65AFF44D271FF44D271FFD9D77CFFFFC04DFFFF9900FF0E9400FF0080
      00FF007200FF9C6218EADED7D130FFFEFE010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025AE390071D28C00D2F4
      E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2630024BE560023BC
      4D001FC1460016AE34000A85170000000000000000000000000000000000BD82
      8100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD828100000000000000
      00000000000000000000000000000000000000000000000000003BAA2BFF26BF
      4DFF57D87EFFF5E08EFF90E9A6FFFFFDD0FFE6CC66FFFFA61AFFE98300FF0085
      00FF007300FFA695887CF6F5F20D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000BD828100FFFF
      F200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD828100000000000000
      0000000000000000000000000000000000000000000000000000FFFFE28F2FC8
      5EFF75D77BFFA6F2B3FFCBF9C4FFEAEEAAFF33CC66FF9BA61AFFE78100FFBE75
      00FFD08926DCE5E0DA26FFFEFE01000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000025AE
      390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB157000000000000000000000000000000000000000000BD828100BD82
      8100BD828100FBEFE200FBE3CF00FBDDC200BD82810000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F5
      D5AC63D578FF94E79BFFAEE496FF65DD88FF31CA63FF18B130FFE68000FFE49C
      31E2E3DED929FDFDFC0300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000032B74E0025AE390025AE390025AE390025AE390024A342000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD828100BD828100BD8281000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFB10E4E9ABE6B6CD68FF99C75CFF8FB943FFE8BD57F6DACCB756F3F0
      ED14FEFDFD020000000000000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF00F81FF33FF00F0000E007E007F00F0000
      C003C000C003000080018001C003000080010000C00300000000000080010000
      000000008001000000008000800000000000E001800000000000F00380000000
      0000F01F800000008001E03F800000008001E03FC0010000C003C03FC0010000
      E007C07FE0030000F81FF8FFF0070000FFFFF81FF81FF81FC007E007E007E007
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
    Left = 560
    Top = 192
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 48
    Top = 408
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 560
    Top = 128
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 488
    Top = 136
  end
  inherited QBrowse2: TFDQuery
    Left = 32
    Top = 560
  end
  inherited QUltimoCodigo2: TFDQuery
    SQL.Strings = (
      'select max(h.id) from hojacarga_cab h'
      '')
    Left = 96
    Top = 592
  end
  inherited ImageListDos: TImageList
    Bitmap = {
      494C01010C001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      000000000000000000000000000000000000000000000000000000000000FDFD
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000658550DB759A
      5DFD648550DA0000000000000000000000000000000000000000000000000303
      0324080808660808086F04040443000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D3B09500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000B8805400FFFEFE0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FF9C8B
      78FF9C8B78FF9C8B78FFA59482FFD7CFBDFF8CA874FF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF5D7A49C8000000000000000000000000101010725858
      58F9A8A8A8FFC9C9C9FF989898FF2C2C2CBF0000001200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0A78800F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00D29C7200FEFDFD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF769C5EFF769C5EFFA0BB90FF82A5
      6DFF769C5EFF769C5EFF769C5EFF00000000000000000707074F515151FEB1B1
      B1FFE1E1E1FFF0F0F0FFEDEDEDFFC7C7C7FF2A2A2AB600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C99B7800F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00DAA27700FCFAF8000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF88A973FF769C5EFFA7BF97FFF7FAF6FFE7EE
      E3FF81A46BFF769C5EFF769C5EFF658550DB00000000222222B0ABABABFFEEEE
      EEFFDEDEDEFFDBDBDBFFE6E6E6FFEEEEEEFF8A8E8DFF292A2CB40000011D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6947100F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00DDA47700FAF6F30000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF799E62FF769C5EFFBACDAEFF8EAD7AFFBBCE
      AFFFE6EDE1FF80A36AFF769C5EFF72975BF8000000002B2B2BB9F5F5F5FFEAEA
      EAFFE4E4ECFFC2C2CBFFD6D6D6FFF7F7F7FFA5B2B3FFCFD8B8FF76756CF20505
      0544000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C3906800F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00E3AA7F00F6EFEA00000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF88A973FF769C5EFF769C5EFF769C5EFF769C
      5EFFBBCEAFFFE4ECDFFF7EA267FF658550DB000000002B2B2BB1F4F4F4FFEDED
      F5FF6161D8FFB6B6E2FFECECEBFFF2F2F2FF93A49DFFDAE1BAFFE1D2B4FF3D3B
      3AC8000000000000000000000000000000000000000000000000000000000000
      000000000000C28D6500F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00E6AC8000F3E9E0000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF769C5EFF769C5EFF769C5EFF769C
      5EFF769C5EFFA2BB91FF789D60FF00000000000000000D0D0D79A9A9A9FFE5E4
      F0FFF9F9F8FFF5F5F3FFEAEAEAFFA8A6A7FF91A69BFFC7BB99FF9EAA8DFF6B78
      7BFE030303290000000000000000000000000000000000000000000000000000
      0000C28B6400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00EAB08500ECDE
      D2000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBF8FF93B180FF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF5D7A49C80000000013131383759584FC89C9A9FFA9AE
      A9FFD2D2D2FFD0D0D1FFB0B3B1FF91A59AFF74948BFF6DA190FF7FA0A6FF9EB4
      A1FF1716189A000000000000000000000000000000000000000000000000E7D1
      C300ECB38700F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C48E
      65000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBF9FFBBCEAFFF89AA75FF7FA3
      69FF8AAA75FFAAB892FF000000000000000011111178678074F7B1CBB7FFD0CA
      B8FFB7DCC5FFA2B8CDFFABC4B9FF93B9A5FF5C8C94FF739D9BFF90B7A2FFDCD4
      B3FFC5C0A8FF302F2EB80000001E000000000000000000000000000000000000
      0000EEDED400E9AF8400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C28C63000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC1B5A3FF000000000000000000000000010101253A3836C5ABC6
      B4FFC7E1D4FFA2BCB2FF879DAEFF6E949DFF91B6A4FF7C9FA7FFB5DCBEFFFFEC
      C0FFE1D4C3FFD2CABDFF66776DF20F0F0F6C0000000000000000000000000000
      000000000000F1E8DF00E6AE8200F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00C28C6500000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B78FF00000000000000000000000000000000000000001918
      19A2A4BBB0FF95ADAFFF708CA5FF92B9A2FFB4CEC1FF99D6BEFF91BDCAFF9BB2
      B5FFD0D2B6FFC3E5C2FF95ACA1FE171617900000000000000000000000000000
      00000000000000000000F7EFEA00E4AA7D00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00C4906B0000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF00000000000000000000000000000000000000000303
      032D758084FE81AD9FFF7BA99BFFB6CCD0FFC3EDD6FF8BD0B6FF93C3C7FFAACE
      D5FFACCFD4FF67706BEE0808084C000000000000000000000000000000000000
      0000000000000000000000000000F9F5F100E0A67C00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00C4936E000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFFFFFFFFFF9F8
      F7FFAB9D8DFE7C7162C700000000000000000000000000000000000000000000
      00003A3E3CCE97C5ADFFCBE9D9FFA8D3CFFF94B0D5FFA7CED3FFBFEDD5FFACCE
      BCFF333635C30000001E00000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCF9F900DAA37900F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00C99B7800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFF9F8F7FFAD9E
      8FFF837668D10000000000000000000000000000000000000000000000000000
      00000A0A0A517D8682F8BDE6D3FFABCCD8FFB2D9CCFFBAC4C6FF92978CFD1211
      1283000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC00D7A07500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00CEA3840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFAC9D8EFF7F73
      65C8000000000000000000000000000000000000000000000000000000000000
      00000000000001010127343437C79EBCAAFFE0DFBAFF65625AE7040404400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFEFE00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000D6B69C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF7E7263CA0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001110107A2E2E2EC400000017000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFEFFFFFFFC7E0FFFFCFF3FFC001C07F
      FF8FF1FFC001807FFF0FF0FFC000801FFE0FF07FC000800FFC0FF03FC000800F
      F80FF01FC0018007F00FF00FC0010007E00FF00FC0030001F00FF01FC0038000
      F80FF03FC003E000FC0FF07FC003E001FE0FF0FFC003F003FF0FF1FFC007F00F
      FF8FF3FFC00FF81FFFCFF7FFC01FFE3FFFFFE007FFFF3FFFF83FE00780011FFF
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
  object CDSHojaCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPHojaCab'
    OnNewRecord = CDSHojaCabNewRecord
    Left = 384
    Top = 416
    object CDSHojaCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSHojaCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSHojaCabRESPONSABLE: TStringField
      FieldName = 'RESPONSABLE'
      Origin = 'RESPONSABLE'
      OnSetText = CDSHojaCabRESPONSABLESetText
      Size = 6
    end
    object CDSHojaCabNOTAS: TStringField
      FieldName = 'NOTAS'
      Origin = 'NOTAS'
      Size = 250
    end
    object CDSHojaCabMUESTRARESPONSABLE: TStringField
      FieldName = 'MUESTRARESPONSABLE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object CDSHojaCabID_ZONA: TIntegerField
      FieldName = 'ID_ZONA'
      Origin = 'ID_ZONA'
    end
    object CDSHojaCabID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
      Origin = 'ID_TRANSPORTE'
      Required = True
    end
    object CDSHojaCabCOMISION: TFloatField
      DisplayLabel = 'Comision'
      FieldName = 'COMISION'
      Origin = 'COMISION'
      Required = True
      DisplayFormat = '0.00;-0.00;-'
    end
    object CDSHojaCabCARGA_MAX: TFloatField
      FieldKind = fkLookup
      FieldName = 'CARGA_MAX'
      LookupDataSet = CDSTrans
      LookupKeyFields = 'ID'
      LookupResultField = 'CAPACIDAD'
      KeyFields = 'ID_TRANSPORTE'
      OnChange = CDSHojaCabCARGA_MAXChange
      Lookup = True
    end
    object CDSHojaCabID_CHOFER: TIntegerField
      FieldName = 'ID_CHOFER'
    end
    object CDSHojaCabRECORRIDO_KM: TFloatField
      FieldName = 'RECORRIDO_KM'
      Required = True
    end
  end
  object DSPHojaCab: TDataSetProvider
    DataSet = QHojaCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 312
    Top = 416
  end
  object DSHojaCab: TDataSource
    DataSet = CDSHojaCab
    Left = 456
    Top = 416
  end
  object DSPHojaDet: TDataSetProvider
    DataSet = QHojaDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 312
    Top = 352
  end
  object CDSHojaDet: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'id_cab'
        ParamType = ptInput
      end>
    ProviderName = 'DSPHojaDet'
    AfterPost = CDSHojaDetAfterPost
    BeforeDelete = CDSHojaDetBeforeDelete
    AfterDelete = CDSHojaDetAfterDelete
    OnNewRecord = CDSHojaDetNewRecord
    OnReconcileError = CDSHojaDetReconcileError
    Left = 384
    Top = 352
    object CDSHojaDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSHojaDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSHojaDetID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Required = True
    end
    object CDSHojaDetTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSHojaDetCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSHojaDetNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0;_'
      Size = 13
    end
    object CDSHojaDetNOMBRE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 45
    end
    object CDSHojaDetENTREGADO: TStringField
      DisplayLabel = 'Est.'
      FieldName = 'ENTREGADO'
      Origin = 'ENTREGADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSHojaDetESTADOBOOLEANO: TBooleanField
      DisplayLabel = 'Est.'
      FieldKind = fkCalculated
      FieldName = 'ESTADOBOOLEANO'
      OnSetText = CDSHojaDetESTADOBOOLEANOSetText
      Calculated = True
    end
    object CDSHojaDetDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object CDSHojaDetNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
      Required = True
    end
    object CDSHojaDetSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
    end
    object CDSHojaDetIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSHojaDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSHojaDetVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 6
    end
    object CDSHojaDetMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      Size = 50
    end
    object CDSHojaDetPESOTOTAL: TFloatField
      FieldName = 'PESOTOTAL'
    end
    object CDSHojaDetDIRECCIONFACTURA: TStringField
      FieldName = 'DIRECCIONFACTURA'
      ReadOnly = True
      Size = 35
    end
    object CDSHojaDetDIRECCION_AMPLIADA: TStringField
      FieldName = 'DIRECCION_AMPLIADA'
      Size = 150
    end
    object CDSHojaDetTotalContenido: TAggregateField
      FieldName = 'TotalContenido'
      LookupCache = True
      ReadOnly = True
      Visible = True
      OnChange = CDSHojaDetTotalContenidoChange
      Active = True
      DisplayName = ''
      Expression = 'sum(PESOTOTAL)'
    end
  end
  object DSHojaDet: TDataSource
    DataSet = CDSHojaDet
    Left = 456
    Top = 352
  end
  object DSPPersonal: TDataSetProvider
    DataSet = DMMain_FD.QPersonal
    Options = []
    Left = 728
    Top = 360
  end
  object CDSPersonal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPersonal'
    Left = 816
    Top = 360
    object CDSPersonalNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object CDSPersonalCOMISION: TFloatField
      FieldName = 'COMISION'
      Required = True
    end
  end
  object DSPBuscaVendedor: TDataSetProvider
    DataSet = QBuscaVendedores
    Options = []
    Left = 312
    Top = 280
  end
  object CDSBuscaVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaVendedor'
    Left = 384
    Top = 280
    object CDSBuscaVendedorNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 35
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSBuscaVendedorCODIGO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSBuscaVendedorCOMISION: TFloatField
      FieldName = 'COMISION'
      Required = True
      Visible = False
    end
  end
  object DSPCompVta: TDataSetProvider
    DataSet = QCompVta
    Options = []
    Left = 728
    Top = 216
  end
  object CDSCompVta: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Filter = 'Not(CAE <='#39'0'#39' and electronico='#39'S'#39') a'
    FieldDefs = <
      item
        Name = 'ID_FC'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'TIPOCPBTE'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CLASECPBTE'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'NUMERO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'NROCPBTE'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 13
      end
      item
        Name = 'SUCURSAL'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'CODIGO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'NOMBRE'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 35
      end
      item
        Name = 'DIRECCION'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 35
      end
      item
        Name = 'LOCALIDAD'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'MUESTRADIRECCIONDESTINO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 35
      end
      item
        Name = 'ZONACLIENTE'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'MUESTRAZONA'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'TOTALNETO'
        DataType = ftFloat
      end
      item
        Name = 'ELECTRONICO'
        Attributes = [faReadonly, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CAE'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SALDO'
        DataType = ftFloat
      end
      item
        Name = 'TRANSP'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'ID_COMPROBANTE'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'VENDEDOR'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'MUESTRAVENDEDOR'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ENTREGADO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PESOTOTAL'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'MUESTRADIRECCIONCOMPLETA'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 97
      end>
    IndexDefs = <
      item
        Name = 'CDSCompVtaIndex1'
        Fields = 'ID_COMPROBANTE; ID_FC'
        Options = [ixPrimary]
      end>
    IndexName = 'CDSCompVtaIndex1'
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'zona'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'VENDEDOR'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftInteger
        Name = 'TRANSPORTE'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCompVta'
    StoreDefs = True
    Left = 816
    Top = 216
    object CDSCompVtaID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInKey]
      Required = True
    end
    object CDSCompVtaTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Required = True
      Size = 2
    end
    object CDSCompVtaCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSCompVtaNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSCompVtaSUCURSAL: TIntegerField
      DisplayLabel = 'Cod.Suc'
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      ProviderFlags = []
    end
    object CDSCompVtaCODIGO: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      Size = 6
    end
    object CDSCompVtaNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object CDSCompVtaDIRECCION: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      ProviderFlags = []
      Size = 35
    end
    object CDSCompVtaLOCALIDAD: TStringField
      DisplayLabel = 'Localidad'
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      ProviderFlags = []
      Size = 15
    end
    object CDSCompVtaMUESTRADIRECCIONDESTINO: TStringField
      FieldName = 'MUESTRADIRECCIONDESTINO'
      Origin = 'DIRECCION'
      ProviderFlags = []
      Size = 35
    end
    object CDSCompVtaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      Size = 8
    end
    object CDSCompVtaZONACLIENTE: TIntegerField
      FieldName = 'ZONACLIENTE'
      Origin = 'ZONACLIENTE'
      ProviderFlags = []
    end
    object CDSCompVtaMUESTRAZONA: TStringField
      FieldName = 'MUESTRAZONA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 25
    end
    object CDSCompVtaELECTRONICO: TStringField
      FieldName = 'ELECTRONICO'
      Origin = 'ELECTRONICO'
      ProviderFlags = []
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompVtaCAE: TStringField
      FieldName = 'CAE'
      Origin = 'CAE'
      ProviderFlags = []
      Required = True
      Size = 50
    end
    object CDSCompVtaTOTAL: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
    end
    object CDSCompVtaTOTALNETO: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'TOTALNETO'
      Origin = 'NETOGRAV2'
      DisplayFormat = ',0.00'
    end
    object CDSCompVtaSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO_ACTUAL_CC'
      DisplayFormat = ',0.00'
    end
    object CDSCompVtaTRANSP: TIntegerField
      FieldName = 'TRANSP'
      Origin = 'TRANSP'
      ProviderFlags = []
    end
    object CDSCompVtaID_COMPROBANTE: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
    end
    object CDSCompVtaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object CDSCompVtaMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object CDSCompVtaPESOTOTAL: TFloatField
      FieldName = 'PESOTOTAL'
      Origin = 'PESOTOTAL'
      ProviderFlags = []
    end
    object CDSCompVtaENTREGADO: TStringField
      FieldName = 'ENTREGADO'
      FixedChar = True
      Size = 1
    end
    object CDSCompVtaMUESTRADIRECCIONCOMPLETA: TStringField
      FieldName = 'MUESTRADIRECCIONCOMPLETA'
      ReadOnly = True
      Size = 97
    end
    object CDSCompVtaTotalContenido: TAggregateField
      FieldName = 'TotalContenido'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'sum(PESOTOTAL)'
    end
  end
  object DSCompVta: TDataSource
    DataSet = CDSCompVta
    Left = 904
    Top = 216
  end
  object CDSDetalles: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDetalles'
    Left = 816
    Top = 416
    object CDSDetallesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDetallesID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Origin = 'ID_CABFAC'
    end
    object CDSDetallesCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSDetallesDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSDetallesNETOGRAVADO: TFloatField
      FieldName = 'NETOGRAVADO'
      Origin = 'UNITARIO_TOTAL'
    end
    object CDSDetallesUNITARIOFINAL: TFloatField
      FieldName = 'UNITARIOFINAL'
      Origin = 'UNITARIOFINAL'
      ProviderFlags = []
    end
    object CDSDetallesCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object CDSDetallesPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      ReadOnly = True
    end
    object CDSDetallesPRESENTACION_UNIDAD: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      ReadOnly = True
      Size = 3
    end
  end
  object DSDetalles: TDataSource
    DataSet = CDSDetalles
    Left = 904
    Top = 416
  end
  object DSPDetalles: TDataSetProvider
    DataSet = QDetalles
    Options = []
    Left = 728
    Top = 416
  end
  object frxReporte: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41528.438648668980000000
    ReportOptions.LastChange = 41528.438648668980000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnPreview = frxReportePreview
    OnClosePreview = frxReporteClosePreview
    Left = 624
    Top = 552
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
    end
  end
  object frCabecera: TfrxDBDataset
    UserName = 'frCabecera'
    CloseDataSource = False
    DataSource = DSHojaCab
    BCDToCurrency = False
    DataSetOptions = []
    Left = 304
    Top = 552
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
        FieldName = 'RESPONSABLE'
        FieldAlias = 'RESPONSABLE'
      end
      item
        FieldName = 'NOTAS'
        FieldAlias = 'NOTAS'
      end
      item
        FieldName = 'MUESTRARESPONSABLE'
        FieldAlias = 'MUESTRARESPONSABLE'
      end
      item
        FieldName = 'ID_ZONA'
        FieldAlias = 'ID_ZONA'
      end
      item
        FieldName = 'ID_TRANSPORTE'
        FieldAlias = 'ID_TRANSPORTE'
      end
      item
        FieldName = 'COMISION'
        FieldAlias = 'COMISION'
      end>
  end
  object frDetalle: TfrxDBDataset
    UserName = 'frDetalle'
    CloseDataSource = False
    DataSource = DSHojaDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 360
    Top = 553
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_CAB'
        FieldAlias = 'ID_CAB'
      end
      item
        FieldName = 'ID_CPBTE'
        FieldAlias = 'ID_CPBTE'
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldAlias = 'TIPOCPBTE'
      end
      item
        FieldName = 'CLASECPBTE'
        FieldAlias = 'CLASECPBTE'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'ENTREGADO'
        FieldAlias = 'ENTREGADO'
      end
      item
        FieldName = 'ESTADOBOOLEANO'
        FieldAlias = 'ESTADOBOOLEANO'
      end
      item
        FieldName = 'DIRECCION'
        FieldAlias = 'DIRECCION'
      end
      item
        FieldName = 'NETO'
        FieldAlias = 'NETO'
      end
      item
        FieldName = 'SALDO'
        FieldAlias = 'SALDO'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'VENDEDOR'
        FieldAlias = 'VENDEDOR'
      end
      item
        FieldName = 'MUESTRAVENDEDOR'
        FieldAlias = 'MUESTRAVENDEDOR'
      end
      item
        FieldName = 'PESOTOTAL'
        FieldAlias = 'PESOTOTAL'
      end
      item
        FieldName = 'DIRECCIONFACTURA'
        FieldAlias = 'DIRECCIONFACTURA'
      end
      item
        FieldName = 'TotalContenido'
        FieldAlias = 'TotalContenido'
      end>
  end
  object frDetalleMercaderia: TfrxDBDataset
    UserName = 'frDetalleMercaderia'
    CloseDataSource = False
    DataSource = DSDetalles
    BCDToCurrency = False
    DataSetOptions = []
    Left = 528
    Top = 536
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_CABFAC'
        FieldAlias = 'ID_CABFAC'
      end
      item
        FieldName = 'CODIGOARTICULO'
        FieldAlias = 'CODIGOARTICULO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'NETOGRAVADO'
        FieldAlias = 'NETOGRAVADO'
      end
      item
        FieldName = 'UNITARIOFINAL'
        FieldAlias = 'UNITARIOFINAL'
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end
      item
        FieldName = 'PRESENTACION_CANTIDAD'
        FieldAlias = 'PRESENTACION_CANTIDAD'
      end
      item
        FieldName = 'PRESENTACION_UNIDAD'
        FieldAlias = 'PRESENTACION_UNIDAD'
      end>
  end
  object frResumenDetalle: TfrxDBDataset
    UserName = 'frResumenDetalle'
    CloseDataSource = False
    DataSet = CDSResumenDetalle
    BCDToCurrency = False
    DataSetOptions = []
    Left = 488
    Top = 504
    FieldDefs = <
      item
        FieldName = 'CODIGOARTICULO'
        FieldAlias = 'CODIGOARTICULO'
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
        FieldName = 'CANTIDAD_CONTENIDO'
        FieldAlias = 'CANTIDAD_CONTENIDO'
      end
      item
        FieldName = 'UNIDAD_CONTENIDO'
        FieldAlias = 'UNIDAD_CONTENIDO'
      end>
  end
  object DSPBuscaZona: TDataSetProvider
    DataSet = DMBuscadores.QBuscaZona
    Options = []
    Left = 728
    Top = 166
  end
  object CDSBuscaZona: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaZona'
    Left = 816
    Top = 168
    object CDSBuscaZonaID_ZONA: TIntegerField
      FieldName = 'ID_ZONA'
      Required = True
    end
    object CDSBuscaZonaDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 25
    end
  end
  object DSZona: TDataSource
    DataSet = CDSBuscaZona
    Left = 901
    Top = 168
  end
  object CDSZonas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPZonas'
    Left = 816
    Top = 120
    object CDSZonasID_ZONA: TIntegerField
      FieldName = 'ID_ZONA'
      Required = True
    end
    object CDSZonasDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 25
    end
  end
  object DSZonas: TDataSource
    DataSet = CDSZonas
    Left = 901
    Top = 120
  end
  object DSPZonas: TDataSetProvider
    DataSet = DMBuscadores.QBuscaZona
    Options = []
    Left = 728
    Top = 118
  end
  object ibCab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_HOJACAR_CAB'
    SystemGenerators = False
    Left = 184
    Top = 416
  end
  object ibDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_HOJACAR_DET'
    SystemGenerators = False
    Left = 184
    Top = 352
  end
  object ComBuscadorVendedor: TComBuscador
    Data = CDSBuscaVendedor
    Campo = 'CODIGO'
    Titulo = 'Vendedor/Chofer'
    rOk = False
    Left = 184
    Top = 280
  end
  object QSetGenerador: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SET GENERATOR NEXT_ID_HOJACAR_CAB TO 100')
    Left = 72
    Top = 280
  end
  object QSumaCantidad: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select total from ('
      
        'select coalesce( sum(d.cantidad * s.presentacion_cantidad),0) as' +
        ' Total from fcvtadet d'
      '  left join stock s on s.codigo_stk=d.codigoarticulo'
      'where d.id_cabfac=:id and d.tipocpbte=:tipo and d.cantidad>0'
      'union'
      
        'select coalesce( sum(rd.cantidad * s.presentacion_cantidad),0) a' +
        's Total from rtodet rd'
      '  left join stock s on s.codigo_stk=rd.codigoarticulo'
      'where rd.id_cabrto=:id and rd.tipocpbte=:tipo and rd.cantidad>0'
      '   )'
      ' group by total'
      ' having total>0'
      '')
    Left = 72
    Top = 336
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
      end>
  end
  object QTransp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.* from unidades_tr t')
    Left = 76
    Top = 145
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPTransp: TDataSetProvider
    DataSet = QTransp
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 144
    Top = 152
  end
  object CDSTrans: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPTransp'
    Left = 224
    Top = 111
    object CDSTransDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 25
    end
    object CDSTransCAPACIDAD: TFloatField
      FieldName = 'CAPACIDAD'
      Required = True
    end
    object CDSTransDOMINIO: TStringField
      FieldName = 'DOMINIO'
      Size = 12
    end
    object CDSTransID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object DSTrans: TDataSource
    DataSet = CDSTrans
    Left = 288
    Top = 152
  end
  object QCompVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select cast(f.id_fc as integer) as id_fc,cast(f.tipocpbte as var' +
        'char(2)) as tipocpbte,Cast(f.clasecpbte as varchar(2)) as clasec' +
        'pbte,Cast(f.numerofac as Varchar(8)) as Numero,'
      
        '       Cast(f.nrocpbte as varchar(13)) as nrocpbte,cast(f.sucurs' +
        'al as integer) as sucursal, cast(f.codigo as varchar(6)) as codi' +
        'go,'
      
        '       Cast(f.nombre as varchar(35)) as nombre,cast(f.direccion ' +
        'as varchar(35)) as direccion,cast(f.localidad as varchar(15)) as' +
        ' localidad,'
      
        '       f.total  as total,ldr.direccion as MuestraDireccionDestin' +
        'o,cast(c.zona as Integer) as zonaCliente,'
      
        '       ldr.direccion||'#39','#39'|| coalesce( ldr.localidad,f.localidad)' +
        ' ||'#39','#39'||coalesce( pr.nombre,'#39#39') as MuestraDireccionCompleta,'
      '       z.detalle as MuestraZona,'
      '       f.netograv2 as totalneto,'
      '       cast(f.factura_electronica as char(1)) as electronico,'
      '       cast(f.cae as varchar(50)) as cae,'
      
        '       f.saldo_actual_cc as Saldo,-1 as transp,cpr.id_comprobant' +
        'e, f.vendedor, pp.nombre as MuestraVendedor, hd.entregado,'
      
        '       (select sum( fd.presentacion_cant * fd.cantidad ) from fc' +
        'vtadet fd where fd.id_cabfac = f.id_fc) as PesoTotal'
      '    from fcvtacab f'
      
        '       left join hojacarga_det hd on hd.id_cpbte   = f.id_fc   a' +
        'nd'
      
        '                                     hd.tipocpbte  = f.tipocpbte' +
        '  and'
      
        '                                     hd.clasecpbte = f.clasecpbt' +
        'e'
      '       left join clientes c on c.codigo=f.codigo'
      
        '       left join ldrcliente ldr on ldr.codigo_ldr=f.ldr and ldr.' +
        'codigo_cliente=f.codigo'
      '       left join provincia pr on pr.id_pro=ldr.provincia'
      '       left join personal pp on pp.codigo = f.vendedor'
      '       left join zona z on z.id_zona = c.zona'
      
        '       left join comprobantes cpr on cpr.tipo_comprob  = f.tipoc' +
        'pbte and'
      
        '                                     cpr.clase_comprob = f.clase' +
        'cpbte and'
      
        '                                     cpr.letra         = f.letra' +
        'fac and'
      
        '                                     cpr.sucursal      = f.sucur' +
        'sal and'
      '                                     cpr.compra_venta  = '#39'V'#39
      
        'where (f.fechavta between :desde and :hasta) and (f.sucursal = :' +
        'sucursal or :sucursal = -1) and ( c.zona = :zona or :zona = -1 )' +
        ' and ( f.vendedor = :vendedor or :vendedor = '#39'******'#39' )'
      ''
      'union'
      ''
      
        'select cast(r.id_rto as integer) as id_fc,cast(r.tipocpbte as va' +
        'rchar(2)),Cast(r.clasecpbte as varchar(2)),Cast(r.numerorto as V' +
        'arChar(8)) as Numero,'
      
        '       Cast(r.nrocpbte as varchar(13)),cast(r.sucursal as intege' +
        'r), cast(r.codigo as varchar(6)),'
      
        '       Cast(r.nombre as varchar(35)),cast(r.direccion as varchar' +
        '(35)),cast(r.localidad as varchar(15)),'
      
        '       r.total ,ldr2.direccion as MuestraDireccionDestino,Cast(c' +
        '2.zona as Integer) as zonaCliente,'
      
        '       ldr2.direccion||'#39','#39'||coalesce( ldr2.localidad,r.localidad' +
        ')||'#39','#39'||coalesce( pr2.nombre,'#39#39') as MuestraDireccionCompleta,'
      '       z2.detalle as MuestraZona,'
      '       r.netograv2 ,'
      '       cast(r.remito_electronico as char(1)) as electronico,'
      '       cast(r.cae as varchar(50)) as cae,'
      
        '       0  as Saldo,r.TRASNPORTE_UNIDAD as transp,cpr.id_comproba' +
        'nte, r.vendedor, pp.nombre as MuestraVendedor, hd.entregado,'
      '       (select sum( rd.presentacion_cant * rd.cantidad )'
      '                from rtodet rd'
      '                where rd.id_cabrto = r.id_rto)'
      '             as PesoTotal'
      '    from rtocab r'
      
        '       left join hojacarga_det hd on hd.id_cpbte   = r.id_rto  a' +
        'nd'
      
        '                                     hd.tipocpbte  = r.tipocpbte' +
        '  and'
      
        '                                     hd.clasecpbte = r.clasecpbt' +
        'e'
      ''
      
        '       left join ldrcliente ldr2 on ldr2.codigo_ldr=r.ldr and ld' +
        'r2.codigo_cliente=r.codigo'
      '       left join provincia pr2 on pr2.id_pro=ldr2.provincia'
      '       left join clientes c2 on c2.codigo=r.codigo'
      '       left join zona z2 on z2.id_zona = c2.zona'
      '       left join personal pp on pp.codigo = r.vendedor'
      
        '       left join comprobantes cpr on cpr.tipo_comprob=r.tipocpbt' +
        'e and'
      
        '                                     cpr.clase_comprob=r.clasecp' +
        'bte and'
      '                                     cpr.letra=r.letrarto and'
      '                                     cpr.sucursal=r.sucursal and'
      '                                     cpr.compra_venta='#39'V'#39
      ''
      
        'where ( r.fechavta between :desde and :hasta ) and (r.sucursal =' +
        ' :sucursal or :sucursal = -1) and ( c2.zona = :zona or :zona = -' +
        '1 ) and ( r.TRASNPORTE_UNIDAD = :TRANSPORTE or :TRANSPORTE = -1 ' +
        ')  and ( r.vendedor = :vendedor or :vendedor = '#39'******'#39' )'
      ''
      'union'
      ''
      
        'select cast(ra.id as integer) as id_fc,cast(ra.tipocpbte as varc' +
        'har(2)),Cast(ra.clasecpbte as varchar(2)),Cast(ra.numero as VarC' +
        'har(8)) as Numero,'
      
        '       Cast(ra.numero as varchar(13)), cast('#39'1'#39' as integer) as s' +
        'ucursal , cast(ra.cliente as varchar(6)) as codigo,'
      
        '       Cast(ra.nombre as varchar(35)),cast(ra.direccion as varch' +
        'ar(35)),cast(ra.localidad as varchar(15)),'
      
        '       0 as Total,ldr3.direccion as MuestraDireccionDestino,Cast' +
        '(c3.zona as Integer) as zonaCliente,'
      
        '       ldr3.direccion||'#39','#39'||coalesce(ldr3.localidad,ra.localidad' +
        ')||'#39','#39'||coalesce(pr3.nombre,'#39#39') as MuestraDireccionCompleta,'
      '       z3.detalle as MuestraZona,'
      '       0 as netograv2,'
      '       cast('#39'N'#39' as char(1)) as electronico,'
      '       0 as cae,'
      
        '       0 as Saldo,-1 as Transp,-1 as id_comprobante, fc.vendedor' +
        ', pp.nombre as MuestraVendedor, hd.entregado,'
      '       (select sum( rad.presentacion_cant * rad.cantidad )'
      '                from rto_acopio_det rad'
      '                where rad.id_cab = ra.id )'
      '             as PesoTotal'
      '    from rto_acopio_cab ra'
      '       left join hojacarga_det hd on hd.id_cpbte   = ra.id   and'
      
        '                                     hd.tipocpbte  = ra.tipocpbt' +
        'e and'
      
        '                                     hd.clasecpbte = ra.clasecpb' +
        'te'
      ''
      '       left join clientes c3 on c3.codigo=ra.cliente'
      '       left join fcvtacab fc on fc.id_fc  = ra.id_factura'
      '       left join personal pp on pp.codigo = fc.vendedor'
      
        '       left join ldrcliente ldr3 on ldr3.codigo_ldr=0 and ldr3.c' +
        'odigo_cliente=ra.cliente'
      '       left join provincia pr3 on pr3.id_pro=ldr3.provincia'
      '       left join zona z3 on z3.id_zona = c3.zona'
      
        'where ( ra.fecha between :desde and :hasta ) and ( c3.zona = :zo' +
        'na or :zona = -1 ) and ( fc.vendedor = :vendedor or :vendedor = ' +
        #39'******'#39' )'
      ''
      ''
      '')
    Left = 640
    Top = 216
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'zona'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'VENDEDOR'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 6
        Name = 'TRANSPORTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCompVtaID_FC: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
    object QCompVtaTIPOCPBTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QCompVtaCLASECPBTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QCompVtaNUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object QCompVtaNROCPBTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object QCompVtaSUCURSAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QCompVtaCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object QCompVtaNOMBRE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QCompVtaDIRECCION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QCompVtaLOCALIDAD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QCompVtaTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QCompVtaMUESTRADIRECCIONDESTINO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADIRECCIONDESTINO'
      Origin = 'DIRECCION'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QCompVtaZONACLIENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ZONACLIENTE'
      Origin = 'ZONACLIENTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QCompVtaMUESTRAZONA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAZONA'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QCompVtaTOTALNETO: TFloatField
      FieldName = 'TOTALNETO'
      Origin = 'NETOGRAV2'
    end
    object QCompVtaELECTRONICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ELECTRONICO'
      Origin = 'ELECTRONICO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object QCompVtaCAE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CAE'
      Origin = 'CAE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QCompVtaSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO_ACTUAL_CC'
    end
    object QCompVtaTRANSP: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TRANSP'
      Origin = 'TRANSP'
      ProviderFlags = []
      ReadOnly = True
    end
    object QCompVtaID_COMPROBANTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QCompVtaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object QCompVtaMUESTRAVENDEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAVENDEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QCompVtaENTREGADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGADO'
      Origin = 'ENTREGADO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object QCompVtaPESOTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PESOTOTAL'
      Origin = 'PESOTOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QCompVtaMUESTRADIRECCIONCOMPLETA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADIRECCIONCOMPLETA'
      Origin = 'MUESTRADIRECCIONCOMPLETA'
      ProviderFlags = []
      ReadOnly = True
      Size = 97
    end
  end
  object QDetalles: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select d.id,d.id_cabfac,d.codigoarticulo,d.detalle,d.cantidad,d.' +
        'unitario_total as netogravado,(d.unitario_total+d.iva_unitario) ' +
        'as unitariofinal,s1.presentacion_cantidad,s1.presentacion_unidad'
      '    from  hojacarga_det h'
      
        '    left join fcvtadet d on d.id_cabfac = h.id_cpbte  and  d.tip' +
        'ocpbte = h.tipocpbte'
      '    left join stock s1 on s1.codigo_stk = d.codigoarticulo'
      '    where h.id_cab = :Id'
      'union'
      
        'select rd.id,rd.id_cabrto,rd.codigoarticulo,rd.detalle,rd.cantid' +
        'ad,rd.unitario_total as netogravado,(rd.unitario_total+rd.iva_un' +
        'itario) as unitariofinal,s2.presentacion_cantidad,s2.presentacio' +
        'n_unidad'
      '    from  hojacarga_det h'
      
        '    left join rtodet rd on  rd.id_cabrto=h.id_cpbte and rd.tipoc' +
        'pbte = h.tipocpbte'
      '    left join stock s2 on s2.codigo_stk=rd.codigoarticulo'
      '    where h.id_cab = :Id'
      'union '
      
        'select a.id,a.id_cab, a.codigo, a.detalle, a.cantidad, d.unitari' +
        'o_total as netogravado, (d.unitario_total + d.iva_unitario) as u' +
        'nitariofinal, s2.presentacion_cantidad,s2.presentacion_unidad'
      '    from hojacarga_det h'
      
        '    left join rto_acopio_det a on a.id_cab=h.id_cpbte and a.tipo' +
        'cpbte = h.tipocpbte'
      
        '    left join merca_enacopio_det m on m.id = a.id_merca_acopio_d' +
        'et'
      '    left join fcvtadet d on d.id_cabfac = m.id_fcdet'
      '    left join stock s2 on s2.codigo_stk=a.codigo'
      '    where h.id_cab = :Id'
      '')
    Left = 608
    Top = 416
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QUniTransp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.* from unidades_tr t')
    Left = 76
    Top = 209
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPUniTransp: TDataSetProvider
    DataSet = QUniTransp
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 144
    Top = 216
  end
  object CDSUniTransp: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPUniTransp'
    Left = 216
    Top = 215
    object StringField1: TStringField
      FieldName = 'DESCRIPCION'
      Size = 25
    end
    object FloatField1: TFloatField
      FieldName = 'CAPACIDAD'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'DOMINIO'
      Size = 12
    end
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object DSUniTransp: TDataSource
    DataSet = CDSUniTransp
    Left = 288
    Top = 216
  end
  object DSComprobantes: TDataSource
    DataSet = CDSComprobantes
    Left = 458
    Top = 483
  end
  object CDSComprobantes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Suc'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPComprobantes'
    AfterPost = CDSComprobantesAfterPost
    Left = 384
    Top = 480
    object CDSComprobantesTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Size = 2
    end
    object CDSComprobantesCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Size = 2
    end
    object CDSComprobantesDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object CDSComprobantesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSComprobantesLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      Size = 1
    end
    object CDSComprobantesID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSComprobantesFILTRO_COMPROBANTES: TStringField
      FieldName = 'FILTRO_COMPROBANTES'
      Origin = 'FILTRO_COMPROBANTES'
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
  end
  object DSPComprobantes: TDataSetProvider
    DataSet = QComprobante
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 312
    Top = 480
  end
  object QComprobante: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_comprobante,c.tipo_comprob,c.clase_comprob,c.denomin' +
        'acion,'
      
        '       c.sucursal,c.letra,c.filtro_comprobantes,s.detalle as mue' +
        'strasucursal'
      'from comprobantes c'
      'left join sucursal s on s.codigo=c.sucursal'
      
        'where  (c.sucursal=:Suc or :suc = -1 ) and c.tipo_comprob in ('#39'F' +
        'C'#39','#39'FO'#39','#39'RE'#39','#39'TK'#39') and c.compra_venta='#39'V'#39
      'order by'
      'c.tipo_comprob,c.clase_comprob ,c.letra')
    Left = 248
    Top = 480
    ParamData = <
      item
        Position = 1
        Name = 'Suc'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'Suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QComprobanteID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QComprobanteTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobanteCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobanteDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object QComprobanteSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QComprobanteLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QComprobanteFILTRO_COMPROBANTES: TStringField
      FieldName = 'FILTRO_COMPROBANTES'
      Origin = 'FILTRO_COMPROBANTES'
      FixedChar = True
      Size = 1
    end
    object QComprobanteMUESTRASUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
  end
  object QHojaDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.*, case d.tipocpbte    when '#39'RO'#39'   then r.vendedor'
      
        '                                when '#39'RA'#39'   then (select fc.vend' +
        'edor from fcvtacab fc where fc.id_fc=a.id_factura)'
      '                                else             f.vendedor'
      '            end as Vendedor, p.nombre as MuestraVendedor,'
      
        '            case d.tipocpbte    when '#39'RO'#39'   then ( select sum(rd' +
        '.presentacion_cant * rd.cantidad)'
      
        '                                                    from rtodet ' +
        'rd where rd.id_cabrto = r.id_rto )'
      
        '                                when '#39'RA'#39'   then ( select sum(ra' +
        'd.presentacion_cant * rad.cantidad)'
      
        '                                                    from rto_aco' +
        'pio_det rad where rad.id_cab = a.id )'
      
        '                                else             ( select sum(fd' +
        '.presentacion_cant * fd.cantidad)'
      
        '                                                    from fcvtade' +
        't fd where fd.id_cabfac = f.id_fc )'
      '            end as PesoTotal,'
      '           f.direccion as DireccionFactura'
      ''
      'from hojacarga_det d'
      
        'left join fcvtacab f on f.id_fc=d.id_cpbte and f.tipocpbte=d.tip' +
        'ocpbte'
      
        'left join rtocab r on r.id_rto=d.id_cpbte  and r.tipocpbte=d.tip' +
        'ocpbte'
      
        'left join rto_acopio_cab a on a.id=d.id_cpbte and a.tipocpbte=d.' +
        'tipocpbte'
      
        'left join personal p on (p.codigo = f.vendedor) or (p.codigo = r' +
        '.vendedor)'
      'where d.id_cab = :id_cab')
    Left = 249
    Top = 355
    ParamData = <
      item
        Position = 1
        Name = 'id_cab'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QHojaDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QHojaDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QHojaDetID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Required = True
    end
    object QHojaDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QHojaDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QHojaDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QHojaDetNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 45
    end
    object QHojaDetIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QHojaDetENTREGADO: TStringField
      FieldName = 'ENTREGADO'
      Origin = 'ENTREGADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QHojaDetDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object QHojaDetNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
      Required = True
    end
    object QHojaDetSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
    end
    object QHojaDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object QHojaDetVENDEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object QHojaDetMUESTRAVENDEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAVENDEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QHojaDetPESOTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PESOTOTAL'
      Origin = 'PESOTOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QHojaDetDIRECCIONFACTURA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DIRECCIONFACTURA'
      Origin = 'DIRECCION'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QHojaDetDIRECCION_AMPLIADA: TStringField
      FieldName = 'DIRECCION_AMPLIADA'
      Origin = 'DIRECCION_AMPLIADA'
      Size = 150
    end
  end
  object QHojaCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.*,p.nombre as MuestraResponsable from hojacarga_cab c'
      'left join personal p on p.codigo=c.responsable'
      'where c.id = :id')
    Left = 249
    Top = 419
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QHojaCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QHojaCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QHojaCabRESPONSABLE: TStringField
      FieldName = 'RESPONSABLE'
      Origin = 'RESPONSABLE'
      Size = 6
    end
    object QHojaCabNOTAS: TStringField
      FieldName = 'NOTAS'
      Origin = 'NOTAS'
      Size = 250
    end
    object QHojaCabCOMISION: TFloatField
      FieldName = 'COMISION'
      Origin = 'COMISION'
      Required = True
    end
    object QHojaCabID_ZONA: TIntegerField
      FieldName = 'ID_ZONA'
      Origin = 'ID_ZONA'
    end
    object QHojaCabID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
      Origin = 'ID_TRANSPORTE'
      Required = True
    end
    object QHojaCabID_CHOFER: TIntegerField
      FieldName = 'ID_CHOFER'
      Origin = 'ID_CHOFER'
    end
    object QHojaCabMUESTRARESPONSABLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRARESPONSABLE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object QHojaCabRECORRIDO_KM: TFloatField
      FieldName = 'RECORRIDO_KM'
      Origin = 'RECORRIDO_KM'
      Required = True
    end
  end
  object DSPVendedores: TDataSetProvider
    DataSet = QBuscaVendedores
    Options = []
    Left = 728
    Top = 312
  end
  object CDSVendedores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPVendedores'
    Left = 816
    Top = 312
    object CDSVendedoresCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSVendedoresNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object CDSVendedoresCOMISION: TFloatField
      FieldName = 'COMISION'
      Origin = 'COMISION'
      Required = True
    end
  end
  object DSVendedores: TDataSource
    DataSet = CDSVendedores
    Left = 904
    Top = 312
  end
  object ppmComprobantes: TPopupMenu
    Left = 1056
    Top = 112
    object Caption1: TMenuItem
      Caption = 'TipoCpbte (Tp)'
      OnClick = CaptionClick
    end
    object ClaseCpbteCl1: TMenuItem
      Caption = 'Clase Cpbte (Cl)'
      OnClick = CaptionClick
    end
    object NroCpbte1: TMenuItem
      Caption = 'Nro. Cpbte'
      OnClick = CaptionClick
    end
    object Id1: TMenuItem
      Caption = 'Codigo'
      OnClick = CaptionClick
    end
    object Nombre1: TMenuItem
      Caption = 'Nombre'
      OnClick = CaptionClick
    end
    object Direccion1: TMenuItem
      Caption = 'Direccion'
      OnClick = CaptionClick
    end
    object Importe1: TMenuItem
      Caption = 'Importe'
      OnClick = CaptionClick
    end
    object Vendedor1: TMenuItem
      Caption = 'Vendedor'
      OnClick = CaptionClick
    end
  end
  object QResumenDetalleStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select m.codigo_articulo as codigoarticulo, s.detalle_stk as Det' +
        'alle, s.presentacion_cantidad as cantidad_contenido, s.presentac' +
        'ion_unidad as unidad_contenido,'
      '      - sum(m.entra - m.sale) as Cantidad'
      '  from hojacarga_det h'
      
        '    left join mov_stock m on ( m.id_cpbte = h.id_cpbte and m.tip' +
        'ocpbte = h.tipocpbte)'
      '                                       /* or'
      
        '                                        ( (h.tipocpbte in ('#39'FC'#39',' +
        #39'FO'#39')) and (m.tipooperacion='#39'P'#39')'
      
        '                                         and m.id_cpbte in (sele' +
        'ct oc.id from ordenproduccion_cab oc where oc.id_fcvta=h.id_cpbt' +
        'e group by oc.id))*/'
      '    left join stock s on s.codigo_stk = m.codigo_articulo'
      ''
      'where h.id_cab = :id'
      ''
      
        'group by codigoarticulo, Detalle, presentacion_cantidad, present' +
        'acion_unidad'
      'having sum(m.entra - m.sale)<>0')
    Left = 596
    Top = 471
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object DSPResumenDetalle: TDataSetProvider
    DataSet = QResumenDetalleStock
    Options = []
    Left = 728
    Top = 472
  end
  object CDSResumenDetalle: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPResumenDetalle'
    Left = 832
    Top = 472
    object CDSResumenDetalleCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      ReadOnly = True
      Size = 8
    end
    object CDSResumenDetalleDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ReadOnly = True
      Size = 45
    end
    object CDSResumenDetalleCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      ReadOnly = True
    end
    object CDSResumenDetalleCANTIDAD_CONTENIDO: TFloatField
      FieldName = 'CANTIDAD_CONTENIDO'
      Origin = 'CANTIDAD_CONTENIDO'
      ReadOnly = True
    end
    object CDSResumenDetalleUNIDAD_CONTENIDO: TStringField
      FieldName = 'UNIDAD_CONTENIDO'
      Origin = 'UNIDAD_CONTENIDO'
      ReadOnly = True
      Size = 3
    end
  end
  object QResumenDetalleCpbtes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select codigoarticulo, Detalle, s.presentacion_cantidad as canti' +
        'dad_contenido, s.presentacion_unidad as unidad_contenido, sum(Ca' +
        'ntidad) as Cantidad'
      
        '   from (  select  case h.tipocpbte when '#39'RE'#39' then r.codigoartic' +
        'ulo'
      '                         when '#39'RA'#39' then a.codigo'
      '                         else           f.codigoarticulo'
      '        end as codigoarticulo,'
      '        case h.tipocpbte when '#39'RE'#39' then r.detalle'
      '                         when '#39'RA'#39' then a.detalle'
      '                         else           f.detalle'
      '        end as detalle, '
      '        case h.tipocpbte when '#39'RE'#39' then r.cantidad'
      '                         when '#39'RA'#39' then a.cantidad'
      '                         else           f.cantidad'
      '        end as cantidad'
      ''
      '        from hojacarga_det h'
      
        '        left join fcvtadet f            on f.id_cabfac = h.id_cp' +
        'bte'
      
        '        left join rtodet r              on r.id_cabrto = h.id_cp' +
        'bte'
      '        left join rto_acopio_det a      on a.id_cab = h.id_cpbte'
      '        where h.id_cab = :id)'
      '    left join stock s on s.codigo_stk = Codigoarticulo'
      
        '    group by codigoarticulo, Detalle, presentacion_cantidad, pre' +
        'sentacion_unidad')
    Left = 623
    Top = 537
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QBuscaVendedores: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo,nombre,comision from personal '
      'where vendedor='#39'S'#39
      'order by nombre asc')
    Left = 634
    Top = 308
  end
  object popMenuImpresion: TPopupMenu
    Left = 528
    Top = 312
    object Impresion21: TMenuItem
      Caption = 'Impresion 2'
      OnClick = Impresion21Click
    end
  end
end
