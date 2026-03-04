object FormComposicionIvaVta: TFormComposicionIvaVta
  Left = 203
  Top = 98
  HorzScrollBar.Style = ssFlat
  VertScrollBar.ParentColor = False
  Caption = 'Composicion Iva Creditos'
  ClientHeight = 461
  ClientWidth = 1057
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  Scaled = False
  OnCreate = FormCreate
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1057
    Height = 461
    Align = alClient
    Caption = 'Panel2'
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      1057
      461)
    object Label9: TLabel
      Left = 532
      Top = 7
      Width = 79
      Height = 22
      Caption = 'Creditos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 7
      Top = 7
      Width = 71
      Height = 22
      Caption = 'Debitos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbcgCred: TDBCtrlGrid
      Left = 532
      Top = 32
      Width = 521
      Height = 420
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AllowDelete = False
      AllowInsert = False
      Anchors = [akTop, akBottom]
      Color = clBtnFace
      DataSource = DatosLibroIvaVta.DSCompIVACre
      PanelHeight = 84
      PanelWidth = 504
      ParentColor = False
      TabOrder = 0
      RowCount = 5
      ShowFocus = False
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
        DataSource = DatosLibroIvaVta.DSCompIVACre
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
        DataSource = DatosLibroIvaVta.DSCompIVACre
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
        DataSource = DatosLibroIvaVta.DSCompIVACre
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
        DataSource = DatosLibroIvaVta.DSCompIVACre
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
        DataSource = DatosLibroIvaVta.DSCompIVACre
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
        DataSource = DatosLibroIvaVta.DSCompIVACre
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
        DataSource = DatosLibroIvaVta.DSCompIVACre
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
        DataSource = DatosLibroIvaVta.DSCompIVACre
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
        DataSource = DatosLibroIvaVta.DSCompIVACre
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
        DataSource = DatosLibroIvaVta.DSCompIVACre
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
        DataSource = DatosLibroIvaVta.DSCompIVACre
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
        DataSource = DatosLibroIvaVta.DSCompIVACre
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
        Top = 22
        Width = 91
        Height = 21
        DataField = 'NETO_EXENTO'
        DataSource = DatosLibroIvaVta.DSCompIVACre
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
        Height = 21
        DataField = 'TOTAL'
        DataSource = DatosLibroIvaVta.DSCompIVACre
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
        DataSource = DatosLibroIvaVta.DSCompIVACre
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
        Height = 21
        DataField = 'IIBB'
        DataSource = DatosLibroIvaVta.DSCompIVACre
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
        Height = 21
        DataField = 'NETO_GRAVADO'
        DataSource = DatosLibroIvaVta.DSCompIVACre
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
      end
    end
    object dbcgDeb: TDBCtrlGrid
      Left = 6
      Top = 32
      Width = 521
      Height = 420
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AllowDelete = False
      AllowInsert = False
      Anchors = [akTop, akBottom]
      Color = clBtnFace
      DataSource = DatosLibroIvaVta.DSCompIVADeb
      PanelHeight = 84
      PanelWidth = 504
      ParentColor = False
      TabOrder = 1
      RowCount = 5
      ShowFocus = False
      object Label5: TLabel
        Left = 358
        Top = 24
        Width = 45
        Height = 13
        Caption = 'N.Exento'
        Transparent = True
      end
      object Label6: TLabel
        Left = 359
        Top = 43
        Width = 20
        Height = 13
        Caption = 'IIBB'
        Transparent = True
      end
      object Label7: TLabel
        Left = 357
        Top = 6
        Width = 50
        Height = 13
        Caption = 'Total Neto'
        Transparent = True
      end
      object Label8: TLabel
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
      object DBEdit13: TDBEdit
        Left = 8
        Top = 3
        Width = 121
        Height = 21
        DataField = 'IVA_DESCRIPCION'
        DataSource = DatosLibroIvaVta.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit14: TDBEdit
        Left = 170
        Top = 3
        Width = 86
        Height = 21
        DataField = 'NETO1'
        DataSource = DatosLibroIvaVta.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit15: TDBEdit
        Left = 170
        Top = 21
        Width = 86
        Height = 21
        DataField = 'NETO2'
        DataSource = DatosLibroIvaVta.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit16: TDBEdit
        Left = 170
        Top = 40
        Width = 86
        Height = 21
        DataField = 'NETO3'
        DataSource = DatosLibroIvaVta.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit17: TDBEdit
        Left = 170
        Top = 59
        Width = 86
        Height = 21
        DataField = 'NETO4'
        DataSource = DatosLibroIvaVta.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit18: TDBEdit
        Left = 257
        Top = 3
        Width = 86
        Height = 21
        DataField = 'TASA_1'
        DataSource = DatosLibroIvaVta.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit19: TDBEdit
        Left = 257
        Top = 21
        Width = 86
        Height = 21
        DataField = 'TASA_2'
        DataSource = DatosLibroIvaVta.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit20: TDBEdit
        Left = 257
        Top = 40
        Width = 86
        Height = 21
        DataField = 'TASA_3'
        DataSource = DatosLibroIvaVta.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit21: TDBEdit
        Left = 257
        Top = 59
        Width = 86
        Height = 21
        DataField = 'TASA_4'
        DataSource = DatosLibroIvaVta.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit22: TDBEdit
        Left = 129
        Top = 21
        Width = 35
        Height = 21
        DataField = 'PORCTASA_2'
        DataSource = DatosLibroIvaVta.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit23: TDBEdit
        Left = 129
        Top = 40
        Width = 35
        Height = 21
        DataField = 'PORCTASA_3'
        DataSource = DatosLibroIvaVta.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object DBEdit24: TDBEdit
        Left = 129
        Top = 59
        Width = 35
        Height = 21
        DataField = 'PORCTASA_4'
        DataSource = DatosLibroIvaVta.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object DBEdit25: TDBEdit
        Left = 409
        Top = 21
        Width = 91
        Height = 21
        DataField = 'NETO_EXENTO'
        DataSource = DatosLibroIvaVta.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
      object DBEdit26: TDBEdit
        Left = 409
        Top = 59
        Width = 91
        Height = 21
        DataField = 'TOTAL'
        DataSource = DatosLibroIvaVta.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
      end
      object DBEdit27: TDBEdit
        Left = 129
        Top = 3
        Width = 35
        Height = 21
        DataField = 'PORCTASA_1'
        DataSource = DatosLibroIvaVta.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
      object DBEdit28: TDBEdit
        Left = 409
        Top = 40
        Width = 91
        Height = 21
        DataField = 'IIBB'
        DataSource = DatosLibroIvaVta.DSCompIVADeb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
      end
      object DBEdit29: TDBEdit
        Left = 409
        Top = 3
        Width = 91
        Height = 21
        DataField = 'NETO_GRAVADO'
        DataSource = DatosLibroIvaVta.DSCompIVADeb
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
  object frDBCompCreditos: TfrxDBDataset
    UserName = 'frDBCompCreditos'
    CloseDataSource = False
    DataSet = DatosLibroIvaVta.CDSCompIVACre
    BCDToCurrency = False
    DataSetOptions = []
    Left = 189
    Top = 133
  end
  object frDBCompDebitos: TfrxDBDataset
    UserName = 'frDBCompDebitos'
    CloseDataSource = False
    DataSet = DatosLibroIvaVta.CDSCompIVADeb
    BCDToCurrency = False
    DataSetOptions = []
    Left = 477
    Top = 189
  end
end
