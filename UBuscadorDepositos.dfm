object FormBuscadorDepositos: TFormBuscadorDepositos
  Left = 324
  Top = 162
  Caption = 'Depositos'
  ClientHeight = 459
  ClientWidth = 587
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
  OnShow = FormShow
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 8
    Top = 0
    Width = 569
    Height = 353
    BevelOuter = bvNone
    Caption = 'pnPrincipal'
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 72
      Height = 16
      Caption = 'Depositos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbgDepositos: TDBGrid
      Left = 4
      Top = 30
      Width = 559
      Height = 263
      Color = clInfoBk
      DataSource = DSDepositos
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgDepositosDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Title.Alignment = taCenter
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Alignment = taCenter
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 193
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUCURSAL'
          Title.Alignment = taCenter
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object btOk: TBitBtn
      Left = 486
      Top = 305
      Width = 75
      Height = 25
      Caption = 'Ok'
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btOkClick
    end
    object btCancel: TBitBtn
      Left = 405
      Top = 305
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btCancelClick
    end
  end
  object DSDepositos: TDataSource
    DataSet = CDSDepositos
    Left = 320
    Top = 304
  end
  object QDeposito: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.*,s.detalle from depositos d'
      'left join sucursal s on s.codigo=d.sucursal'
      'where d.activo=:estado or :estado='#39'*'#39
      'order by sucursal,id')
    Left = 240
    Top = 304
    ParamData = <
      item
        Name = 'ESTADO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
        Value = Null
      end>
    object QDepositoID: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDepositoNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object QDepositoSUCURSAL: TIntegerField
      DisplayLabel = 'Cod.Suc'
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QDepositoCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Origin = 'CENTRALIZA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QDepositoDETALLE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sucursal'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
  end
  object CDSDepositos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFixedChar
        Name = 'ESTADO'
        ParamType = ptInput
        Size = 1
      end>
    ProviderName = 'DSPDepositos'
    Left = 200
    Top = 376
    object CDSDepositosID: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDepositosNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object CDSDepositosSUCURSAL: TIntegerField
      DisplayLabel = 'Cod.Suc'
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object CDSDepositosCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Origin = 'CENTRALIZA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSDepositosDETALLE: TStringField
      DisplayLabel = 'Sucursal'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
  end
  object DSPDepositos: TDataSetProvider
    DataSet = QDeposito
    Options = []
    Left = 112
    Top = 368
  end
end
