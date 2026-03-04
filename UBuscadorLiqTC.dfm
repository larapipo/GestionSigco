object FormBuscadorLiquidacionTC: TFormBuscadorLiquidacionTC
  Left = 389
  Top = 126
  BorderIcons = [biSystemMenu]
  Caption = 'Buscador de Liquidaciones de Tarjetas de Credito'
  ClientHeight = 512
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 754
    Height = 512
    Align = alClient
    Caption = 'Panel1'
    Color = clGradientInactiveCaption
    Padding.Left = 3
    Padding.Top = 3
    Padding.Right = 3
    Padding.Bottom = 3
    ParentBackground = False
    TabOrder = 0
    OnResize = Panel1Resize
    object pnCabecera: TPanel
      Left = 4
      Top = 4
      Width = 746
      Height = 69
      Align = alTop
      Color = clGradientInactiveCaption
      Padding.Bottom = 1
      ParentBackground = False
      TabOrder = 0
      object JvGradient2: TJvGradient
        Left = 1
        Top = 1
        Width = 744
        Height = 66
        Style = grVertical
        StartColor = clWhite
        EndColor = clGradientActiveCaption
        ExplicitWidth = 687
        ExplicitHeight = 49
      end
      object Label1: TLabel
        Left = 8
        Top = 7
        Width = 118
        Height = 16
        Caption = 'Tarjeta de Credito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 440
        Top = 7
        Width = 40
        Height = 16
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 574
        Top = 7
        Width = 38
        Height = 16
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbcCta: TJvDBLookupCombo
        Left = 8
        Top = 26
        Width = 265
        Height = 25
        DisplayEmpty = 'Todas las Tarjetas'
        EmptyValue = '-1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        LookupField = 'ID_TC'
        LookupDisplay = 'DESCRIPCION'
        LookupSource = DSTCredito
        ParentFont = False
        TabOrder = 0
        OnChange = dbcCtaChange
      end
      object Desde: TJvDateEdit
        Left = 440
        Top = 29
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
        Left = 574
        Top = 29
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
        Left = 701
        Top = 29
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
      Top = 460
      Width = 746
      Height = 48
      Margins.Bottom = 5
      Align = alBottom
      Color = clGradientInactiveCaption
      Padding.Top = 1
      ParentBackground = False
      TabOrder = 1
      object JvGradient1: TJvGradient
        Left = 1
        Top = 2
        Width = 744
        Height = 45
        Style = grVertical
        StartColor = clWhite
        EndColor = clGradientActiveCaption
        ExplicitLeft = 560
        ExplicitTop = 0
        ExplicitWidth = 100
        ExplicitHeight = 41
      end
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
        Left = 617
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
        Left = 496
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
      Width = 746
      Height = 387
      Align = alClient
      DataSource = DSBuscadorLiq
      DrawingStyle = gdsClassic
      FixedColor = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
          FieldName = 'FECHA_FISCAL'
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
          FieldName = 'MUESTRATARJETA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -15
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 127
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_CTABCO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -15
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMEROCPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -15
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_PRESENTACION'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -15
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 125
          Visible = True
        end>
    end
  end
  object QBuscadorLiq: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select l.*,tc.descripcion as MuestraTarjeta from liquidacion_tc_' +
        'cab l'
      'left join t_credito tc on tc.id_tc=l.id_tc'
      'where (l.fecha between :desde and :hasta) and'
      '      ((l.id_tc= :id_tc) or ( :id_tc = -1))'
      'order by l.fecha desc')
    Left = 344
    Top = 384
    ParamData = <
      item
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'id_tc'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id_tc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPBuscadorLiq: TDataSetProvider
    DataSet = QBuscadorLiq
    Options = []
    Left = 439
    Top = 376
  end
  object CDSBuscadorLiq: TClientDataSet
    Aggregates = <>
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
        Name = 'id_tc'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_tc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscadorLiq'
    Left = 520
    Top = 376
    object CDSBuscadorLiqID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSBuscadorLiqID_TC: TIntegerField
      FieldName = 'ID_TC'
      Required = True
    end
    object CDSBuscadorLiqFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Required = True
    end
    object CDSBuscadorLiqPERIODO_LIQUIDADO: TStringField
      FieldName = 'PERIODO_LIQUIDADO'
      Size = 6
    end
    object CDSBuscadorLiqFECHA_FISCAL: TSQLTimeStampField
      DisplayLabel = 'F.Fiscal'
      FieldName = 'FECHA_FISCAL'
      Required = True
    end
    object CDSBuscadorLiqLETRA: TStringField
      FieldName = 'LETRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscadorLiqTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 4
    end
    object CDSBuscadorLiqCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 4
    end
    object CDSBuscadorLiqSUC: TStringField
      FieldName = 'SUC'
      FixedChar = True
      Size = 4
    end
    object CDSBuscadorLiqNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object CDSBuscadorLiqNUMEROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NUMEROCPBTE'
      Size = 13
    end
    object CDSBuscadorLiqTOTAL_PRESENTACION: TFloatField
      DisplayLabel = 'Imp.Present.'
      FieldName = 'TOTAL_PRESENTACION'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSBuscadorLiqARANCEL: TFloatField
      FieldName = 'ARANCEL'
    end
    object CDSBuscadorLiqIVA: TFloatField
      FieldName = 'IVA'
    end
    object CDSBuscadorLiqIIBB: TFloatField
      FieldName = 'IIBB'
    end
    object CDSBuscadorLiqGANANCIAS: TFloatField
      FieldName = 'GANANCIAS'
    end
    object CDSBuscadorLiqCOSTO_FINANCIERO: TFloatField
      FieldName = 'COSTO_FINANCIERO'
    end
    object CDSBuscadorLiqTOTAL_ACREDITADO: TFloatField
      FieldName = 'TOTAL_ACREDITADO'
    end
    object CDSBuscadorLiqCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSBuscadorLiqRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSBuscadorLiqSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object CDSBuscadorLiqPRESENTACION_ADICIONAL: TFloatField
      FieldName = 'PRESENTACION_ADICIONAL'
    end
    object CDSBuscadorLiqNRO_LIQUIDACION: TStringField
      FieldName = 'NRO_LIQUIDACION'
      Size = 8
    end
    object CDSBuscadorLiqNRO_LOTE: TStringField
      FieldName = 'NRO_LOTE'
      Size = 5
    end
    object CDSBuscadorLiqNRO_TERMINAL: TStringField
      FieldName = 'NRO_TERMINAL'
      Size = 8
    end
    object CDSBuscadorLiqID_CTA_BANCO: TIntegerField
      FieldName = 'ID_CTA_BANCO'
    end
    object CDSBuscadorLiqNOMBRE_CTABCO: TStringField
      DisplayLabel = 'Cta.de Banco'
      FieldName = 'NOMBRE_CTABCO'
      Size = 25
    end
    object CDSBuscadorLiqING_LIBROIVA: TStringField
      FieldName = 'ING_LIBROIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscadorLiqCONTABILIZA: TStringField
      FieldName = 'CONTABILIZA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscadorLiqMUESTRATARJETA: TStringField
      DisplayLabel = 'T.de Credito'
      FieldName = 'MUESTRATARJETA'
      Size = 15
    end
  end
  object DSBuscadorLiq: TDataSource
    DataSet = CDSBuscadorLiq
    Left = 600
    Top = 384
  end
  object QTCredito: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.* from t_credito t order by t.descripcion')
    Left = 40
    Top = 376
  end
  object DSPTCredito: TDataSetProvider
    DataSet = QTCredito
    Options = []
    Left = 103
    Top = 376
  end
  object CDSTCredito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTCredito'
    Left = 159
    Top = 376
    object CDSTCreditoID_TC: TIntegerField
      FieldName = 'ID_TC'
      Required = True
    end
    object CDSTCreditoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 15
    end
  end
  object DSTCredito: TDataSource
    DataSet = CDSTCredito
    Left = 216
    Top = 376
  end
end
