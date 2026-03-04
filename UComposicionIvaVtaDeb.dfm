object FormComposicionIvaDeb: TFormComposicionIvaDeb
  Left = 268
  Top = 101
  Caption = 'Composicion Iva Debito'
  ClientHeight = 542
  ClientWidth = 558
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    558
    542)
  PixelsPerInch = 96
  TextHeight = 13
  object pnDetalle: TPanel
    Left = 5
    Top = 4
    Width = 537
    Height = 517
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Anchors = []
    Color = clGreen
    Constraints.MinWidth = 500
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      537
      517)
    object dbcgComposicionIva: TDBCtrlGrid
      Left = 8
      Top = 5
      Width = 521
      Height = 498
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AllowDelete = False
      AllowInsert = False
      Anchors = []
      Color = clBtnFace
      DataSource = FormLibroIvaVenta_2.DSCompIVADeb
      PanelBorder = gbNone
      PanelHeight = 83
      PanelWidth = 504
      ParentColor = False
      TabOrder = 0
      RowCount = 6
      ShowFocus = False
      ExplicitTop = 6
      object Label1: TLabel
        Left = 358
        Top = 24
        Width = 45
        Height = 13
        Caption = 'N.Exento'
        Transparent = True
      end
      object Label2: TLabel
        Left = 359
        Top = 43
        Width = 20
        Height = 13
        Caption = 'IIBB'
        Transparent = True
      end
      object Label3: TLabel
        Left = 357
        Top = 6
        Width = 50
        Height = 13
        Caption = 'Total Neto'
        Transparent = True
      end
      object Label4: TLabel
        Left = 358
        Top = 62
        Width = 30
        Height = 13
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object cxDBTextEdit1: TDBEdit
        Left = 8
        Top = 3
        Width = 121
        Height = 21
        DataField = 'IVA_DESCRIPCION'
        DataSource = FormLibroIvaVenta_2.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object cxDBTextEdit2: TDBEdit
        Left = 170
        Top = 3
        Width = 86
        Height = 21
        DataField = 'NETO1'
        DataSource = FormLibroIvaVenta_2.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object cxDBTextEdit7: TDBEdit
        Left = 170
        Top = 21
        Width = 86
        Height = 21
        DataField = 'NETO2'
        DataSource = FormLibroIvaVenta_2.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object cxDBTextEdit8: TDBEdit
        Left = 170
        Top = 40
        Width = 86
        Height = 21
        DataField = 'NETO3'
        DataSource = FormLibroIvaVenta_2.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object cxDBTextEdit9: TDBEdit
        Left = 170
        Top = 59
        Width = 86
        Height = 21
        DataField = 'NETO4'
        DataSource = FormLibroIvaVenta_2.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit1: TDBEdit
        Left = 257
        Top = 3
        Width = 86
        Height = 21
        DataField = 'TASA_1'
        DataSource = FormLibroIvaVenta_2.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit2: TDBEdit
        Left = 257
        Top = 21
        Width = 86
        Height = 21
        DataField = 'TASA_2'
        DataSource = FormLibroIvaVenta_2.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit3: TDBEdit
        Left = 257
        Top = 40
        Width = 86
        Height = 21
        DataField = 'TASA_3'
        DataSource = FormLibroIvaVenta_2.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit4: TDBEdit
        Left = 257
        Top = 59
        Width = 86
        Height = 21
        DataField = 'TASA_4'
        DataSource = FormLibroIvaVenta_2.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit6: TDBEdit
        Left = 129
        Top = 21
        Width = 35
        Height = 21
        DataField = 'PORCTASA_2'
        DataSource = FormLibroIvaVenta_2.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit7: TDBEdit
        Left = 129
        Top = 40
        Width = 35
        Height = 21
        DataField = 'PORCTASA_3'
        DataSource = FormLibroIvaVenta_2.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object DBEdit8: TDBEdit
        Left = 129
        Top = 59
        Width = 35
        Height = 21
        DataField = 'PORCTASA_4'
        DataSource = FormLibroIvaVenta_2.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object DBEdit9: TDBEdit
        Left = 409
        Top = 21
        Width = 91
        Height = 20
        DataField = 'NETO_EXENTO'
        DataSource = FormLibroIvaVenta_2.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
      object DBEdit10: TDBEdit
        Left = 409
        Top = 59
        Width = 91
        Height = 20
        DataField = 'TOTAL'
        DataSource = FormLibroIvaVenta_2.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
      end
      object DBEdit5: TDBEdit
        Left = 129
        Top = 3
        Width = 35
        Height = 21
        DataField = 'PORCTASA_1'
        DataSource = FormLibroIvaVenta_2.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
      object DBEdit11: TDBEdit
        Left = 409
        Top = 40
        Width = 91
        Height = 20
        DataField = 'IIBB'
        DataSource = FormLibroIvaVenta_2.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
      end
      object DBEdit12: TDBEdit
        Left = 409
        Top = 3
        Width = 91
        Height = 18
        DataField = 'NETO_GRAVADO'
        DataSource = FormLibroIvaVenta_2.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
      end
    end
  end
  object frDBCompDebitos: TfrxDBDataset
    UserName = 'frDBCompDebitos'
    CloseDataSource = False
    DataSet = FormLibroIvaVenta_2.CDSCompIVADeb
    BCDToCurrency = False
    Left = 413
    Top = 373
  end
end
