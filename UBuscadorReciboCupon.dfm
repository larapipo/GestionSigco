object FormBuscadorPagoCupones: TFormBuscadorPagoCupones
  Left = 359
  Top = 148
  Caption = 'Recibos de Pago Cupones'
  ClientHeight = 442
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 785
    Height = 393
    Align = alTop
    Color = clGradientActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object JvGradient1: TJvGradient
      Left = 1
      Top = 1
      Width = 783
      Height = 32
      Align = alTop
      Style = grVertical
      StartColor = clWhite
      EndColor = clGradientInactiveCaption
      ExplicitWidth = 662
    end
    object JvGradient2: TJvGradient
      Left = 1
      Top = 321
      Width = 783
      Height = 56
      Align = alTop
      Style = grVertical
      StartColor = clWhite
      EndColor = clGradientInactiveCaption
      ExplicitWidth = 749
    end
    object dbgCupones: TJvDBGrid
      Left = 1
      Top = 33
      Width = 783
      Height = 288
      Align = alTop
      DataSource = DSRec
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgCuponesDblClick
      TitleButtons = True
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'FECHA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 242
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NROCPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end>
    end
    object btOk: TBitBtn
      Left = 640
      Top = 336
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btOkClick
    end
    object btCancelar: TBitBtn
      Left = 559
      Top = 336
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btCancelarClick
    end
  end
  object QClientes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT C.*  FROM Clientes C'
      'where (c.codigo=:codigo)')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 400
    Top = 376
    object QClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
  end
  object QRec: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select c.*,r.codigo,r.nombre,r.nrocpbte from cupon_abonos_rc_cab' +
        ' c'
      'left join recibos r on r.id_rc=c.id_rc'
      'order by c.fecha desc')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 64
    Top = 352
  end
  object DSPRec: TDataSetProvider
    DataSet = QRec
    Left = 152
    Top = 352
  end
  object CDSRec: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRec'
    Left = 216
    Top = 352
    object CDSRecID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Required = True
    end
    object CDSRecNUMERO: TIntegerField
      DisplayLabel = 'Nro.Rec.Cupon'
      FieldName = 'NUMERO'
    end
    object CDSRecFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Required = True
    end
    object CDSRecCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSRecNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSRecNROCPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro.de Recibo'
      FieldName = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object CDSRecTOTAL: TFMTBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
  end
  object DSRec: TDataSource
    DataSet = CDSRec
    Left = 280
    Top = 352
  end
end
