object FormConsultaStock: TFormConsultaStock
  Left = 268
  Top = 152
  Caption = 'Consulta de Stock'
  ClientHeight = 570
  ClientWidth = 805
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 805
    Height = 570
    Align = alClient
    Color = clGradientInactiveCaption
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      805
      570)
    object Label1: TLabel
      Left = 8
      Top = 475
      Width = 30
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Marca'
      ExplicitTop = 463
    end
    object Label2: TLabel
      Left = 192
      Top = 475
      Width = 29
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Rubro'
      ExplicitTop = 463
    end
    object Label3: TLabel
      Left = 192
      Top = 515
      Width = 51
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Sub Rubro'
      ExplicitTop = 503
    end
    object Label4: TLabel
      Left = 567
      Top = 375
      Width = 42
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Dep'#243'sito'
      ExplicitTop = 363
    end
    object Label5: TLabel
      Left = 8
      Top = 298
      Width = 81
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Existencia Actual'
      ExplicitTop = 286
    end
    object Label6: TLabel
      Left = 567
      Top = 417
      Width = 70
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Lista de Precio'
      ExplicitTop = 405
    end
    object dbcDeposito: TDBLookupComboBox
      Left = 567
      Top = 391
      Width = 210
      Height = 21
      Anchors = [akLeft, akBottom]
      KeyField = 'ID'
      ListField = 'NOMBRE'
      ListSource = DSDeposito
      TabOrder = 3
      OnClick = dbcDepositoClick
    end
    object BitBtn1: TBitBtn
      Left = 660
      Top = 507
      Width = 43
      Height = 35
      Action = Buscar
      Anchors = [akLeft, akBottom]
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object dbgDepositos: TDBGrid
      Left = 8
      Top = 317
      Width = 497
      Height = 152
      Anchors = [akLeft, akBottom]
      DataSource = DSExistencia
      FixedColor = clHighlight
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DEPOSITO_STK'
          Title.Alignment = taCenter
          Title.Caption = 'Id.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEPOSITO_NOMBRE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 182
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EN_TRANSITO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMPROMETIDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 77
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'SALDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 74
          Visible = True
        end>
    end
    object BitBtn2: TBitBtn
      Left = 709
      Top = 507
      Width = 78
      Height = 35
      Anchors = [akLeft, akBottom]
      Caption = '&Salir'
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
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030707070707
        070707070707070707070707070703FFFFFFFFFFFFFFFFFFFFFFFF0303030303
        03FFF8F8F8F8F8F8F8F8F8F8F8F8FF07FF07FF07F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8030303030303F8F8F8F8F8F8F8F8F8F8F8F8F80707FF07FF07F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8FF030303FFFFF8F8F80404040404040000F8F8F8FFFFFF
        040404040404F8F8F8F8F8F8F8F8F8F8F8030303F8F8F8F8F803030303030304
        FD05000007FFFFFF0403030303030303030303F8FFF8F8F8FF030303F8FF0303
        030303030303030405FD0500FFFFFFFF0403030303030303030303F8F807F8F8
        FF030303F8FF03030303030303030304FD05FD00FFFFFFFF0403030303030303
        030303F8FFF807F8FF030303F8FF0303030303030303030405FD0500FFFEFFFE
        0403030303030303030303F8F807F8F8FF030303F8FF03030303030303030304
        FD05FD00FFFFFFFF0403030303030303030303F8FFF807F8FF030303F8FF0303
        030303030303030405FD0500FFFEFFFE0403030303030303030303F8F807F8F8
        FF030303F8FF03030303030303030304FD05FD00FFFFFFFF0403030303030303
        030303F8FFF807F8FF030303F8FF0303030303030303030405FD0500FFFEFFFE
        0403030303030303030303F8F807F8F8FF030303F8FF03030303030303030304
        FD05FD00FEFFFEFF0403030303030303030303F8FFF807F8FF030303F8FF0303
        030303030303030405FD0500FFFEFFFE0403030303030303030303F8F807F8F8
        FF030303F8FF03030303030303030304FD05FD00FEFFFEFF0403030303030303
        030303F8FFF8FFF8FFFFFFFFF8FF030303030303030303040404040404040404
        0403030303030303030303F8F8F8F8F8F8F8F8F8F80303030303030303030303
        03030303030303030303030303030303030303030303FFFFFFFFFFFF03030303
        0303030303030303030000000000000303030303030303030303030303F8F8F8
        F8F8F8FF0303030303030303030303030300FAFAFAFA00030303030303030303
        0303030303F8FFFFFFFFF8FF0303030303030303030303030300000000000003
        03030303030303030303030303F8F8F8F8F8F803030303030303}
      NumGlyphs = 2
      TabOrder = 6
      OnClick = BitBtn2Click
    end
    object rgTomaRecargo: TRadioGroup
      Left = 567
      Top = 312
      Width = 166
      Height = 57
      Anchors = [akLeft, akBottom]
      Caption = 'C'#225'lculo del Precio en base a'
      Color = clGradientInactiveCaption
      ItemIndex = 0
      Items.Strings = (
        'Dep'#243'sito'
        'Lista de Precio')
      ParentBackground = False
      ParentColor = False
      TabOrder = 7
      OnClick = rgTomaRecargoClick
    end
    object rgUnidades: TRadioGroup
      Left = 13
      Top = 516
      Width = 153
      Height = 41
      Anchors = [akLeft, akBottom]
      Caption = 'Cantidades en unidades'
      Color = clGradientInactiveCaption
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'de Vta.'
        'de Comp.')
      ParentBackground = False
      ParentColor = False
      TabOrder = 8
    end
    object dbcListas: TJvDBLookupCombo
      AlignWithMargins = True
      Left = 567
      Top = 434
      Width = 210
      Height = 21
      DropDownWidth = 300
      Color = clBtnFace
      DisplayEmpty = 'Sin Seleccion'
      EmptyValue = '-1'
      Enabled = False
      Anchors = [akLeft, akBottom]
      ListStyle = lsDelimited
      LookupField = 'ID'
      LookupDisplay = 'NOMBRE'
      LookupSource = DSListaPrecioCab
      TabOrder = 9
      OnClick = dbcListasClick
    end
    object rxcMarca: TJvDBLookupCombo
      Left = 8
      Top = 491
      Width = 177
      Height = 21
      DisplayEmpty = 'Todas las Marcas'
      EmptyValue = '****'
      Anchors = [akLeft, akBottom]
      LookupField = 'MARCA_STK'
      LookupDisplay = 'DESCRIPCION_MARCA'
      LookupSource = DSMarca
      TabOrder = 0
      OnChange = rxcMarcaChange
    end
    object rxcRubro: TJvDBLookupCombo
      Left = 192
      Top = 491
      Width = 201
      Height = 21
      DisplayEmpty = 'Todos los Rubros'
      EmptyValue = '***'
      Anchors = [akLeft, akBottom]
      LookupField = 'CODIGO_RUBRO'
      LookupDisplay = 'DETALLE_RUBRO'
      LookupSource = DSRubro
      TabOrder = 1
      OnChange = rxcMarcaChange
    end
    object rxcSubRubro: TJvDBLookupCombo
      Left = 192
      Top = 531
      Width = 201
      Height = 21
      DisplayEmpty = 'Todos los Sub-Rubros'
      EmptyValue = '*****'
      Anchors = [akLeft, akBottom]
      LookupField = 'CODIGO_SUBRUBRO'
      LookupDisplay = 'DETALLE_SUBRUBRO'
      LookupSource = DSSubRubro
      TabOrder = 2
      OnChange = rxcMarcaChange
      OnEnter = rxcSubRubroEnter
    end
    object JvDBFindEdit1: TJvDBFindEdit
      Left = 229
      Top = 285
      Width = 481
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 10
      Text = 'Buscar por Detalle'
      DataField = 'DETALLE_STK'
      DataSource = DSConsultaStock
    end
    object dbgStock: TDBGrid
      Left = 6
      Top = 6
      Width = 793
      Height = 268
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DSConsultaStock
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 11
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnEndDrag = dbgStockEndDrag
      OnMouseDown = dbgStockMouseDown
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_STK'
          Title.Alignment = taCenter
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE_STK'
          Title.Alignment = taCenter
          Width = 291
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MARCA_STK'
          Title.Alignment = taCenter
          Width = 54
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'RUBRO_STK'
          Title.Alignment = taCenter
          Width = 53
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SUBRUBRO_STK'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRAPRECIO'
          Title.Alignment = taCenter
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRAPRECIOIVA'
          Title.Alignment = taCenter
          Width = 97
          Visible = True
        end>
    end
  end
  object DSPConsultaPorDeposito: TDataSetProvider
    DataSet = QConsultaPorDeposito
    Options = []
    Left = 264
    Top = 24
  end
  object CDSConsultaPorDeposito: TClientDataSet
    Aggregates = <>
    PacketRecords = 4
    Params = <
      item
        DataType = ftInteger
        Name = 'Deposito'
        ParamType = ptInput
      end>
    ProviderName = 'DSPConsultaPorDeposito'
    AfterScroll = CDSConsultaPorDepositoAfterScroll
    Left = 168
    Top = 24
    object CDSConsultaPorDepositoDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 45
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSConsultaPorDepositoCODIGO_STK: TStringField
      Alignment = taCenter
      DisplayLabel = 'Codigo'
      DisplayWidth = 8
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 8
    end
    object CDSConsultaPorDepositoRUBRO_STK: TStringField
      DisplayLabel = 'Rubro'
      DisplayWidth = 7
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      Size = 3
    end
    object CDSConsultaPorDepositoSUBRUBRO_STK: TStringField
      DisplayLabel = 'Sun Rubro'
      DisplayWidth = 11
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      Size = 5
    end
    object CDSConsultaPorDepositoMARCA_STK: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 4
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      Size = 4
    end
    object CDSConsultaPorDepositoMUESTRAPRECIO: TFloatField
      DisplayLabel = '$'
      DisplayWidth = 10
      FieldName = 'MUESTRAPRECIO'
      Origin = 'MUESTRAPRECIO'
      ProviderFlags = []
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSConsultaPorDepositoMUESTRAPRECIOIVA: TFloatField
      DisplayLabel = '$ C/IVA'
      DisplayWidth = 10
      FieldName = 'MUESTRAPRECIOIVA'
      Origin = 'MUESTRAPRECIOIVA'
      ProviderFlags = []
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object DSConsultaStock: TDataSource
    DataSet = CDSConsultaPorDeposito
    Left = 48
    Top = 64
  end
  object DSMarca: TDataSource
    DataSet = CDSMarca
    Left = 416
    Top = 288
  end
  object DSRubro: TDataSource
    DataSet = CDSRubro
    Left = 440
    Top = 216
  end
  object DSDeposito: TDataSource
    DataSet = CDSDeposito
    Left = 464
    Top = 368
  end
  object DSSubRubro: TDataSource
    DataSet = CDSSubRubro
    Left = 264
    Top = 504
  end
  object ActionList1: TActionList
    Left = 568
    Top = 64
    object Buscar: TAction
      ShortCut = 16397
      OnExecute = BuscarExecute
    end
  end
  object DSExistencia: TDataSource
    DataSet = CDSExistencia
    Left = 192
    Top = 240
  end
  object DSPConsultaPorLista: TDataSetProvider
    DataSet = QConsultaPorLista
    Options = []
    Left = 264
    Top = 96
  end
  object CDSConsultaPorLista: TClientDataSet
    Aggregates = <>
    PacketRecords = 4
    Params = <
      item
        DataType = ftInteger
        Name = 'lista'
        ParamType = ptInput
      end>
    ProviderName = 'DSPConsultaPorLista'
    AfterScroll = CDSConsultaPorDepositoAfterScroll
    Left = 160
    Top = 80
    object CDSConsultaPorListaDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 45
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSConsultaPorListaCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 13
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 8
    end
    object CDSConsultaPorListaRUBRO_STK: TStringField
      DisplayLabel = 'Rubro'
      DisplayWidth = 7
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      Size = 3
    end
    object CDSConsultaPorListaSUBRUBRO_STK: TStringField
      DisplayLabel = 'Sun Rubro'
      DisplayWidth = 11
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      Size = 5
    end
    object CDSConsultaPorListaMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      Visible = False
      Size = 4
    end
    object CDSConsultaPorListaMUESTRAPRECIO: TFloatField
      DisplayLabel = 'Precio'
      FieldName = 'MUESTRAPRECIO'
      Origin = 'MUESTRAPRECIO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSConsultaPorListaMUESTRAPRECIOIVA: TFloatField
      DisplayLabel = 'Precio c/IVA'
      FieldName = 'MUESTRAPRECIOIVA'
      Origin = 'PRECIO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
  end
  object DSListaPrecioCab: TDataSource
    DataSet = CDSListaPrecioCab
    Left = 264
    Top = 440
  end
  object CDSSubRubro: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSubRubro'
    Left = 184
    Top = 504
    object CDSSubRubroCODIGO_SUBRUBRO: TStringField
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object CDSSubRubroDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Required = True
      Size = 45
    end
  end
  object DSPSubRubro: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSubRubroFD
    Options = []
    Left = 96
    Top = 504
  end
  object CDSRubro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRubro'
    Left = 368
    Top = 208
    object CDSRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CDSRubroDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
  end
  object DSPRubro: TDataSetProvider
    DataSet = DMBuscadores.QBuscaRubroFD
    Options = []
    Left = 304
    Top = 200
  end
  object CDSMarca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMarca'
    Left = 352
    Top = 288
    object CDSMarcaMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Required = True
      Size = 4
    end
    object CDSMarcaDESCRIPCION_MARCA: TStringField
      FieldName = 'DESCRIPCION_MARCA'
      Size = 25
    end
  end
  object DSPMarca: TDataSetProvider
    DataSet = DMBuscadores.QBuscaMarca
    Options = []
    Left = 304
    Top = 288
  end
  object CDSDeposito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPDeposito'
    Left = 368
    Top = 360
    object CDSDepositoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSDepositoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
  end
  object DSPDeposito: TDataSetProvider
    DataSet = DMBuscadores.QBuscaDeposito
    Options = []
    Left = 296
    Top = 360
  end
  object CDSListaPrecioCab: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPListaPrecioCab'
    Left = 184
    Top = 440
    object CDSListaPrecioCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSListaPrecioCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object CDSListaPrecioCabPORDEFECTO: TStringField
      FieldName = 'PORDEFECTO'
      Origin = 'PORDEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSListaPrecioCabF_PAGO: TIntegerField
      FieldName = 'F_PAGO'
      Origin = 'F_PAGO'
    end
    object CDSListaPrecioCabUSO_ADMINISTRADOR: TStringField
      FieldName = 'USO_ADMINISTRADOR'
      Origin = 'USO_ADMINISTRADOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSListaPrecioCabCLONADA: TStringField
      FieldName = 'CLONADA'
      Origin = 'CLONADA'
      FixedChar = True
      Size = 1
    end
    object CDSListaPrecioCabID_LISTA_CLONADA: TIntegerField
      FieldName = 'ID_LISTA_CLONADA'
      Origin = 'ID_LISTA_CLONADA'
    end
    object CDSListaPrecioCabRECARGOBASE: TFloatField
      FieldName = 'RECARGOBASE'
      Origin = 'RECARGOBASE'
    end
    object CDSListaPrecioCabCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
      Origin = 'COEFICIENTE'
    end
    object CDSListaPrecioCabFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
  end
  object DSPListaPrecioCab: TDataSetProvider
    DataSet = QListaPrecioCab
    Options = []
    Left = 104
    Top = 440
  end
  object CDSExistencia: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'unidad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'fisico'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'fisico'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'usuario'
        ParamType = ptInput
      end>
    ProviderName = 'DSPExistencia'
    Left = 128
    Top = 232
    object CDSExistenciaCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 8
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Size = 8
    end
    object CDSExistenciaDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSExistenciaDEPOSITO_STK: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'DEPOSITO_STK'
      Origin = 'DEPOSITO_STK'
    end
    object CDSExistenciaDEPOSITO_NOMBRE: TStringField
      DisplayLabel = 'Deposito'
      FieldName = 'DEPOSITO_NOMBRE'
      Origin = 'DEPOSITO_NOMBRE'
      Size = 25
    end
    object CDSExistenciaFISICO: TFloatField
      DisplayLabel = 'Fisico'
      FieldName = 'FISICO'
      Origin = 'FISICO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSExistenciaCOMPROMETIDO: TFloatField
      DisplayLabel = 'Comp.'
      FieldName = 'COMPROMETIDO'
      Origin = 'COMPROMETIDO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSExistenciaSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSExistenciaEN_TRANSITO: TFloatField
      DisplayLabel = 'En Transi.'
      FieldName = 'EN_TRANSITO'
      Origin = 'EN_TRANSITO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
  end
  object DSPExistencia: TDataSetProvider
    DataSet = DMMain_FD.QExistencia
    Left = 56
    Top = 232
  end
  object ComBuscador: TComBuscador
    Data = CDSConsultaPorDeposito
    Campo = 'codigo_stk'
    Titulo = 'Consulta de Stock'
    rOk = False
    Left = 448
    Top = 456
  end
  object QConsultaPorDeposito: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.codigo_stk,s.detalle_stk,'
      '(s.fijacion_precio_total*(1+(d.recargo*.01))) as MuestraPrecio,'
      's.marca_stk,'
      's.rubro_stk,'
      's.subrubro_stk,'
      
        '((s.fijacion_precio_total + s.Fijacion_Precio_Iva) *(1+(d.recarg' +
        'o*.01))) as MuestraPrecioIva'
      'from stock s'
      'join depositostk d on d.codigo_stk=s.codigo_stk'
      'left join gravamen grav on grav.codigo=s.tasa_iva'
      
        'where s.clase_articulo in (1,3) and d.codigo_deposito = :Deposit' +
        'o'
      'order by s.detalle_stk'
      ' ')
    Left = 384
    Top = 24
    ParamData = <
      item
        Position = 1
        Name = 'Deposito'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QConsultaPorLista: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.codigo_stk,s.detalle_stk,'
      '(d.Precio_Gravado+d.Precio_exento) as MuestraPrecio,'
      's.marca_stk,s.rubro_stk,s.subrubro_stk,'
      '(d.Precio) as MuestraPrecioIva'
      'from stock s'
      
        'left join listaprecioespecialArt d on d.id_cab=:lista and d.codi' +
        'goarticulo=s.codigo_stk'
      'left join gravamen grav on grav.codigo = s.tasa_iva'
      'where s.clase_articulo in (1,3)'
      'order by s.detalle_stk'
      ' '
      ' ')
    Left = 376
    Top = 88
    ParamData = <
      item
        Position = 1
        Name = 'lista'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QListaPrecioCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from listaprecioespecialcab')
    Left = 32
    Top = 456
  end
end
