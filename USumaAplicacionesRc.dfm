object FormSumaAplicacionesRc: TFormSumaAplicacionesRc
  Left = 243
  Top = 78
  BorderIcons = [biSystemMenu]
  Caption = 'Suma Aplicaciones'
  ClientHeight = 608
  ClientWidth = 824
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 8
    Top = 8
    Width = 737
    Height = 508
    BorderWidth = 3
    TabOrder = 0
    object JvGradient1: TJvGradient
      Left = 4
      Top = 415
      Width = 729
      Height = 89
      Style = grVertical
      StartColor = clWhite
      EndColor = clGradientInactiveCaption
      ExplicitTop = 4
      ExplicitWidth = 709
      ExplicitHeight = 501
    end
    object Label1: TLabel
      Left = 387
      Top = 449
      Width = 75
      Height = 16
      Caption = 'Descuento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 482
      Top = 448
      Width = 14
      Height = 16
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 464
      Top = 473
      Width = 91
      Height = 16
      Caption = 'Importe Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnBtn: TPanel
      Left = 666
      Top = 421
      Width = 57
      Height = 29
      TabOrder = 0
      object spCancel: TSpeedButton
        Left = 3
        Top = 1
        Width = 19
        Height = 25
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FF0732DE0732DEFF00FF0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DEFF00FFFF00FF0732DE
          0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732
          DE0732DEFF00FFFF00FFFF00FF0732DE0732DD0732DE0732DEFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FF
          0534ED0732DF0732DE0732DEFF00FFFF00FFFF00FFFF00FF0732DE0732DEFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DDFF
          00FF0732DD0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF0732DD0633E60633E60633E90732DCFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0633E307
          32E30534EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF0732DD0534ED0533E90434EF0434F5FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0434F40534EF0533EBFF
          00FFFF00FF0434F40335F8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF0335FC0534EF0434F8FF00FFFF00FFFF00FFFF00FF0335FC0335FBFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB0335FCFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF0335FB0335FBFF00FFFF00FFFF00FFFF00FF0335FB
          0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF0335FBFF00FFFF00FF0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = spCancelClick
      end
      object spPegar: TSpeedButton
        Left = 28
        Top = 0
        Width = 22
        Height = 25
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          004B82004B82004B82A56F6FA56F6FA56F6FA56F6FA56F6FA56F6FA56F6FA56F
          6FA56F6FA56F6FFF00FFFF00FF004B8225ACDA20A7D81CA3D5A56F6FFEFEFCFE
          FEFEFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCFEFEFCA56F6FFF00FFFF00FF004B82
          2DB4DE28AFDC22AAD9A56F6FFEFAF69E64589E64589E64589E64589E64589E64
          58FEFAF6A56F6FFF00FFFF00FF004B8234BAE22EB4E029AFDDA56F6FFEF6EFFF
          F0E6FEF3E9FEF6EDFFF7F0FEFAF3FEFBF7FEF6EFA56F6FFF00FFFF00FF004B82
          3CBFE736BAE331B5E1A56F6FFEF3E79E64589E64589E64589E64589E64589E64
          58FEF3E7A56F6FFF00FFFF00FF004B8243C5EB3EC1E738BCE5A56F6FFFEBDAFF
          EBDAFFEBDAFFEDDDFFEEDEFFEFE2FFF2E5FFEBDAA56F6FFF00FFFF00FF004B82
          4BCBEF45C7ED40C2E9A56F6FFFE7D39E64589E64589E64589E6458BF9387BD95
          87CBB5A7A56F6FFF00FFFF00FF004B8252D0F34CCCEF47C7EEA56F6FFFE5CCFF
          E3CBFFE5CCFFE5CCFFE5CCB49591B59692BFA19CBF8181FF00FFFF00FF004B82
          59D5F654D1F34FCFF0A56F6FFFE1C5FFE1C5FFE1C5FFE1C5FADCC1B69793FEFE
          FEBF8181FF00FFFF00FFFF00FF004B825FDAF85BD8F655D3F3A56F6FFFDEC1FF
          DEC1FFDEC1FFDEC1E2C1ADC5A7A0BF8181004B82FF00FFFF00FFFF00FF004B82
          65DEFB60DCF85CD8F7A56F6FA56F6FA56F6FA56F6FA56F6FA56F6FBF818138BB
          E5004B82FF00FFFF00FFFF00FF004B8269E1FE66DEFB63DDFB63DDFB5DD9F857
          D5F650CFF249C9EE42C2EA3CBFE738BBE5004B82FF00FFFF00FFFF00FF004B82
          6AE2FE6AE2FE58585858585858585858585858585858585858585845C7EB40C1
          E9004B82FF00FFFF00FFFF00FF004B826AE2FE6AE2FE585858C1B0AAC1B0A9C1
          B0A9C1B0A9C0ACA45858584DCCF047C7ED004B82FF00FFFF00FFFF00FFFF00FF
          004B82004B82585858D9CCC6F8F7F6F7F6F4F7F6F4C2B5AD585858004B82004B
          82FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF58585858585858
          5858585858585858FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = spPegarClick
      end
    end
    object edDscto: TJvValidateEdit
      Left = 502
      Top = 446
      Width = 52
      Height = 21
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      EditText = '0.00'
      TabOrder = 1
      OnChange = edDsctoChange
      OnExit = edDsctoExit
      OnKeyPress = edDsctoKeyPress
    end
    object edImporteDscto: TJvValidateEdit
      Left = 561
      Top = 446
      Width = 97
      Height = 21
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      TabOrder = 2
      OnChange = edImporteDsctoChange
      OnClick = edImporteDsctoClick
      OnEnter = edImporteDsctoEnter
      OnExit = edImporteDsctoExit
    end
    object edTotal: TJvValidateEdit
      Left = 561
      Top = 470
      Width = 97
      Height = 21
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisabledTextColor = clBlack
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object edSuma: TJvValidateEdit
      Left = 561
      Top = 420
      Width = 97
      Height = 21
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisabledTextColor = clBlack
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object Panel2: TPanel
      Left = 13
      Top = 417
      Width = 33
      Height = 32
      TabOrder = 5
      object spReset: TSpeedButton
        Left = 3
        Top = 2
        Width = 24
        Height = 25
        Hint = 'Resetar Suma'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          C2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2A6
          A4C2A6A4FF00FFFF00FFFF00FFFF00FFC2A6A4FEFCFBFEFCFBFEFCFBFEFCFBFE
          FCFBFEFCFBFEFCFBFEFCFBFEFCFBFEFCFBC2A6A4FF00FFFF00FFFF00FFFF00FF
          C2A6A4FEFCFBFEFCFBFEFCFBFEFCFBD8EBD6018A02018A02D8EBD6FEFCFBFEFC
          FBC2A6A4FF00FFFF00FFFF00FFFF00FFC2A6A4FEFBF7FEFBF7018A02D8EAD201
          8A02D8EAD2D8EAD2018A02FEFBF7FEFBF7C2A6A4FF00FFFF00FFFF00FFFF00FF
          C2A6A4FEF9F4FEF9F4018A02018A02D8E8D0FEF9F4FEF9F4D8E8D0FEF9F4FEF9
          F4C2A6A4FF00FFFF00FFFF00FFFF00FFC2A6A4FEF7F0FEF7F0018A02018A0201
          8A02FEF7F0FEF7F0FEF7F0FEF7F0FEF7F0C2A6A4FF00FFFF00FFFF00FFFF00FF
          C2A6A4FEF5ECFEF5ECFEF5ECFEF5ECFEF5EC018A02018A02018A02FEF5ECFEF5
          ECC2A6A4FF00FFFF00FFFF00FFFF00FFC2A6A4FEF3E9FEF3E9D8E3C7FEF3E9FE
          F3E9D8E3C7018A02018A02FEF3E9FEF3E9C2A6A4FF00FFFF00FFFF00FFFF00FF
          C2A6A4FFF1E5FFF1E5018A02D9E2C3D9E2C3018A02D9E2C3018A02FFF1E5FFF1
          E5C2A6A4FF00FFFF00FFFF00FFFF00FFC2A6A4FFF0E2FFF0E2D9E1C1018A0201
          8A02D9E1C1DDCFC2DDCFC2DDCFC2DDCFC2C2A6A4FF00FFFF00FFFF00FFFF00FF
          C2A6A4FFEEDEFFEEDEFFEEDEFFEEDEFFEEDEFFEEDEC5B5A9C3B4A8C2B3A7C1B2
          A6C2A6A4FF00FFFF00FFFF00FFFF00FFC2A6A4FFECDAFFECDAFFECDAFFECDAFF
          ECDAFFECDAB0A296B0A296B0A296B0A296C2A6A4FF00FFFF00FFFF00FFFF00FF
          C2A6A4FFEAD7FFEAD7FFEAD7FFEAD7FFEAD7C9B9ACFBF8F4FBF8F4E6DAD9C2A6
          A4FF00FFFF00FFFF00FFFF00FFFF00FFC2A6A4FFE8D3FFE8D3FFE8D3FFE8D3FF
          E8D3C9B9ACFBF8F4DFCEC7C2A6A4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          C2A6A4FFE6D0FFE6D0FFE6D0FFE6D0FFE6D0C9B9ACDFCEC7C2A6A4FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFC2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2
          A6A4C2A6A4C2A6A4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = True
        OnClick = spResetClick
      end
    end
    object cxGMovCtaCte: TcxGrid
      Left = 4
      Top = 4
      Width = 729
      Height = 411
      Align = alTop
      TabOrder = 6
      object cxGMovCtaCteDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = cxGMovCtaCteDBTableView1CustomDrawCell
        DataController.DataSource = DatosRecibos.DSMovCCVta
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxGMovCtaCteDBTableView1FECHAVTA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHAVTA'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Sorting = False
          Width = 84
        end
        object cxGMovCtaCteDBTableView1Column2: TcxGridDBColumn
          DataBinding.FieldName = 'FECHAVTO'
          HeaderAlignmentHorz = taCenter
          Width = 78
        end
        object cxGMovCtaCteDBTableView1TIPOCPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'TIPOCPBTE'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Sorting = False
          Width = 33
        end
        object cxGMovCtaCteDBTableView1NROCPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'NROCPBTE'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Sorting = False
          Width = 90
        end
        object cxGMovCtaCteDBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'NRO_CUOTA'
          HeaderAlignmentHorz = taCenter
          Width = 59
        end
        object cxGMovCtaCteDBTableView1DETALLE: TcxGridDBColumn
          DataBinding.FieldName = 'DETALLE'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Sorting = False
          Width = 131
        end
        object cxGMovCtaCteDBTableView1MUESTRAAPAGAR: TcxGridDBColumn
          DataBinding.FieldName = 'MUESTRAAPAGAR'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Sorting = False
          Width = 100
        end
        object cxGMovCtaCteDBTableView1SALDO: TcxGridDBColumn
          DataBinding.FieldName = 'SALDO'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Sorting = False
          Width = 90
        end
        object cxGMovCtaCteDBTableView1SELECCION: TcxGridDBColumn
          DataBinding.FieldName = 'SELECCION'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.OnChange = cxGMovCtaCteDBTableView1SELECCIONPropertiesChange
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Sorting = False
          Width = 35
        end
      end
      object cxGMovCtaCteLevel1: TcxGridLevel
        GridView = cxGMovCtaCteDBTableView1
      end
    end
  end
  object DSMov: TDataSource
    DataSet = DatosRecibos.CDSMovCCVta
    Left = 320
    Top = 256
  end
end
