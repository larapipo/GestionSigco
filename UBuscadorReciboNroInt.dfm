object FormBuscadorReciboNroInt: TFormBuscadorReciboNroInt
  Left = 276
  Top = 176
  BorderStyle = bsSingle
  Caption = 'Buscador de Recibo por Nro.Int'
  ClientHeight = 450
  ClientWidth = 756
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
    Left = 24
    Top = 8
    Width = 641
    Height = 369
    Padding.Left = 3
    Padding.Top = 3
    Padding.Right = 3
    Padding.Bottom = 3
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 311
      Width = 92
      Height = 13
      Caption = 'Buscar Nro.Interno'
    end
    object dbgResultado: TJvDBGrid
      Left = 4
      Top = 4
      Width = 633
      Height = 304
      Align = alTop
      DataSource = DSRecibos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgResultadoDblClick
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 20
      Columns = <
        item
          Expanded = False
          FieldName = 'NRO_RECIBO_INTERMO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLASECPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NROCPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object dbFind: TJvDBFindEdit
      Left = 16
      Top = 330
      Width = 121
      Height = 21
      Flat = False
      ParentFlat = False
      TabOrder = 1
      Text = ''
      OnKeyDown = dbFindKeyDown
      DataField = 'NRO_RECIBO_INTERMO'
      DataSource = DSRecibos
    end
    object btOk: TBitBtn
      Left = 520
      Top = 328
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btOkClick
    end
    object BitBtn2: TBitBtn
      Left = 432
      Top = 328
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 3
      OnClick = BitBtn2Click
    end
  end
  object CDSRecibos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRecibos'
    Left = 440
    Top = 344
    object CDSRecibosID_RC: TIntegerField
      FieldName = 'ID_RC'
      Origin = 'ID_RC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRecibosNRO_RECIBO_INTERMO: TIntegerField
      DisplayLabel = 'Nro.Interno'
      FieldName = 'NRO_RECIBO_INTERMO'
      Origin = 'NRO_RECIBO_INTERMO'
    end
    object CDSRecibosCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSRecibosNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSRecibosCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSRecibosNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSRecibosTOTAL: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
    end
  end
  object DSRecibos: TDataSource
    DataSet = CDSRecibos
    Left = 352
    Top = 352
  end
  object DSPRecibos: TDataSetProvider
    DataSet = QRecibos
    Left = 544
    Top = 336
  end
  object QRecibos: TFDQuery
    ObjectView = False
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select r.id_rc,r.nro_recibo_intermo,r.clasecpbte,r.nrocpbte,r.co' +
        'digo,r.nombre,r.total'
      
        'from recibos r where  (Not(r.nro_recibo_intermo is null)) and (r' +
        '.nro_recibo_intermo>0)'
      'order by'
      'r.nro_recibo_intermo')
    Left = 656
    Top = 336
  end
end
