object FormBuscadorDespachos: TFormBuscadorDespachos
  Left = 300
  Top = 309
  Caption = 'Buscador Despachos'
  ClientHeight = 379
  ClientWidth = 661
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
    Width = 661
    Height = 272
    Align = alTop
    TabOrder = 0
    object dbgDespachos: TDBGrid
      Left = 1
      Top = 1
      Width = 659
      Height = 256
      Align = alTop
      DataSource = DSDespachos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgDespachosDblClick
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
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 157
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENDEDOR'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 272
    Width = 661
    Height = 40
    Align = alTop
    TabOrder = 1
    object JvGradient1: TJvGradient
      Left = 1
      Top = 1
      Width = 659
      Height = 38
      Style = grVertical
      StartColor = clWhite
      EndColor = clGradientActiveCaption
      ExplicitLeft = 456
      ExplicitTop = 16
      ExplicitWidth = 100
      ExplicitHeight = 41
    end
    object btOk: TBitBtn
      Left = 560
      Top = 6
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btOkClick
    end
    object btCancel: TBitBtn
      Left = 472
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btCancelClick
    end
  end
  object DSDespachos: TDataSource
    DataSet = CDSDespachos
    Left = 496
    Top = 72
  end
  object QDespachos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from despacho_impo order by Fecha desc,id')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 232
    Top = 168
  end
  object CDSDespachos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPDespachos'
    Left = 416
    Top = 168
    object CDSDespachosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSDespachosNRO: TStringField
      DisplayLabel = 'Nro.Despacho'
      FieldName = 'NRO'
      Size = 45
    end
    object CDSDespachosFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
    object CDSDespachosVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Size = 60
    end
  end
  object DSPDespachos: TDataSetProvider
    DataSet = QDespachos
    Left = 312
    Top = 168
  end
end
