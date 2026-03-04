object FormReciboTemporal: TFormReciboTemporal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Recibos Temporales'
  ClientHeight = 492
  ClientWidth = 597
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 597
    Height = 41
    Align = alTop
    Caption = 'Recibos Temporales'
    Color = clMenuHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object pnPie: TPanel
    Left = 0
    Top = 451
    Width = 597
    Height = 41
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alBottom
    BevelOuter = bvNone
    Caption = ' '
    Color = clMenuHighlight
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 10
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 472
      Top = 5
      Width = 115
      Height = 31
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 5
      Top = 5
      Width = 108
      Height = 31
      Action = BorrarItem
      Align = alLeft
      Caption = 'Borrar Item'
      TabOrder = 1
    end
  end
  object pnBase: TPanel
    Left = 0
    Top = 41
    Width = 597
    Height = 410
    Align = alClient
    Caption = ' '
    TabOrder = 2
    object dgRecibos: TDBGrid
      Left = 1
      Top = 1
      Width = 595
      Height = 408
      Align = alClient
      DataSource = DSRecibos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDblClick = dgRecibosDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'FECHAPAGO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 225
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 78
          Visible = True
        end>
    end
  end
  object QRecibos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select b.id,b.cliente,c.nombre, b.fechapago,Sum(b.importe) as Im' +
        'porte from borrador_recibo b'
      '                 left join clientes c on c.codigo=b.cliente '
      '                group by b.id,b.cliente,c.nombre, b.fechapago ')
    Left = 392
    Top = 113
    object QRecibosID: TIntegerField
      DisplayLabel = 'Id Pago'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRecibosCLIENTE: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object QRecibosNOMBRE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QRecibosFECHAPAGO: TSQLTimeStampField
      DisplayLabel = 'Fecha Pago'
      FieldName = 'FECHAPAGO'
      Origin = 'FECHAPAGO'
    end
    object QRecibosIMPORTE: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
  end
  object DSRecibos: TDataSource
    DataSet = QRecibos
    Left = 424
    Top = 257
  end
  object QBorrarRc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from borrador_recibo b'
      'where b.id=:id')
    Left = 296
    Top = 249
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 208
    Top = 169
    object BorrarItem1: TMenuItem
      Action = BorrarItem
    end
  end
  object ActionList1: TActionList
    Left = 512
    Top = 185
    object BorrarItem: TAction
      Caption = 'Borrar Item'
      OnExecute = BorrarItemExecute
    end
  end
end
