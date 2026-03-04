object FormBuscadorGastosBancarios: TFormBuscadorGastosBancarios
  Left = 123
  Top = 150
  Caption = 'Buscador Gastos Bancarios'
  ClientHeight = 570
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 473
    Align = alTop
    Caption = 'pnBase'
    Color = clGradientInactiveCaption
    Padding.Left = 3
    Padding.Top = 3
    Padding.Right = 3
    Padding.Bottom = 3
    ParentBackground = False
    TabOrder = 0
    object pnCabecera: TPanel
      Left = 4
      Top = 4
      Width = 784
      Height = 69
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      Padding.Bottom = 1
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 7
        Width = 82
        Height = 16
        Caption = 'Cta.Bancaria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 488
        Top = 3
        Width = 40
        Height = 16
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 622
        Top = 3
        Width = 38
        Height = 16
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbcCta: TJvDBLookupCombo
        Left = 8
        Top = 26
        Width = 233
        Height = 25
        DisplayEmpty = 'Todas las Ctas'
        EmptyValue = '-1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        LookupField = 'ID_CUENTA'
        LookupDisplay = 'NOMBRE'
        LookupSource = DSBancos
        ParentFont = False
        TabOrder = 0
        OnChange = dbcCtaChange
      end
      object Desde: TJvDateEdit
        Left = 488
        Top = 25
        Width = 121
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowNullDate = False
        TabOrder = 1
      end
      object Hasta: TJvDateEdit
        Left = 622
        Top = 25
        Width = 121
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowNullDate = False
        TabOrder = 2
      end
      object UpDown1: TUpDown
        Left = 749
        Top = 25
        Width = 23
        Height = 26
        Hint = 'Cambia el Per'#237'odo'
        Min = -32678
        Max = 32677
        ParentShowHint = False
        Position = 100
        ShowHint = True
        TabOrder = 3
        OnClick = UpDown1Click
      end
    end
    object Panel2: TPanel
      Left = 4
      Top = 421
      Width = 784
      Height = 48
      Margins.Bottom = 5
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      Padding.Top = 1
      ParentBackground = False
      TabOrder = 1
      object SpeedButton1: TSpeedButton
        Left = 16
        Top = 6
        Width = 34
        Height = 31
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
        OnClick = SpeedButton1Click
      end
      object btOk: TBitBtn
        Left = 653
        Top = 6
        Width = 115
        Height = 34
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Kind = bkOK
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
        OnClick = btOkClick
      end
      object btCancelar: TBitBtn
        Left = 532
        Top = 6
        Width = 115
        Height = 34
        Caption = 'Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Kind = bkCancel
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 1
        OnClick = btCancelarClick
      end
    end
    object dbgMovimientos: TJvDBGrid
      Left = 4
      Top = 73
      Width = 784
      Height = 348
      Align = alClient
      Ctl3D = False
      DataSource = DSBuscadorGastos
      DrawingStyle = gdsClassic
      FixedColor = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgMovimientosDblClick
      OnKeyPress = dbgMovimientosKeyPress
      TitleButtons = True
      OnTitleBtnClick = dbgMovimientosTitleBtnClick
      AlternateRowColor = clInfoBk
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 20
      TitleRowHeight = 22
      Columns = <
        item
          Expanded = False
          FieldName = 'FECHA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -15
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO_CTA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -15
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NROCPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -15
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 116
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZONSOCIAL'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -15
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 306
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -15
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 105
          Visible = True
        end>
    end
  end
  object DSBancos: TDataSource
    DataSet = QBancos
    Left = 216
    Top = 376
  end
  object DSBuscadorGastos: TDataSource
    DataSet = QBuscadorGastos
    Left = 528
    Top = 352
  end
  object QBancos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from cuenta_caja where id_tipo_cta=2')
    Left = 136
    Top = 368
    object QBancosID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Origin = 'ID_CUENTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBancosID_TIPO_CTA: TIntegerField
      FieldName = 'ID_TIPO_CTA'
      Origin = 'ID_TIPO_CTA'
      Required = True
    end
    object QBancosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object QBancosNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Origin = 'NRO_CUENTA'
      Size = 15
    end
    object QBancosID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
    end
    object QBancosCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QBancosRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object QBuscadorGastos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select g.* from Gastos_bco_cab g'
      'where (g.fecha between :desde and :hasta) and'
      '      ((g.id_cta_caja= :id_cta_caja) or ( :id_cta_caja = -1))'
      'order by g.nrocpbte desc')
    Left = 592
    Top = 352
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_CTA_CAJA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QBuscadorGastosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscadorGastosTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QBuscadorGastosCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QBuscadorGastosID_CTA_CAJA: TIntegerField
      FieldName = 'ID_CTA_CAJA'
      Origin = 'ID_CTA_CAJA'
      Required = True
    end
    object QBuscadorGastosCTA_CAJA: TStringField
      FieldName = 'CTA_CAJA'
      Origin = 'CTA_CAJA'
      Size = 25
    end
    object QBuscadorGastosFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QBuscadorGastosID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      Required = True
    end
    object QBuscadorGastosBANCO: TStringField
      FieldName = 'BANCO'
      Origin = 'BANCO'
    end
    object QBuscadorGastosNUMERO_CTA: TStringField
      DisplayLabel = 'Nro.de Cta'
      FieldName = 'NUMERO_CTA'
      Origin = 'NUMERO_CTA'
      Size = 15
    end
    object QBuscadorGastosNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QBuscadorGastosTOTAL: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
    end
    object QBuscadorGastosFECHAFISCAL: TSQLTimeStampField
      FieldName = 'FECHAFISCAL'
      Origin = 'FECHAFISCAL'
    end
    object QBuscadorGastosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object QBuscadorGastosCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QBuscadorGastosSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QBuscadorGastosRAZONSOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QBuscadorGastosING_LIBROIVA: TStringField
      FieldName = 'ING_LIBROIVA'
      Origin = 'ING_LIBROIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscadorGastosCONTABILIZA: TStringField
      FieldName = 'CONTABILIZA'
      Origin = 'CONTABILIZA'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end
