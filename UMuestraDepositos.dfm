object FormMuestraDepositos: TFormMuestraDepositos
  Left = 202
  Top = 180
  Caption = 'Depositos'
  ClientHeight = 315
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 353
    Height = 193
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    object dbgChe: TDBGrid
      Left = 1
      Top = 1
      Width = 351
      Height = 184
      Align = alTop
      DataSource = DSDep
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgCheDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'FECHA'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Alignment = taCenter
          Title.Caption = 'Numero'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EFEC_CHEQ'
          Title.Alignment = taCenter
          Title.Caption = 'C/E'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 44
          Visible = True
        end>
    end
  end
  object DSDep: TDataSource
    DataSet = CDSDep
    Left = 56
    Top = 64
  end
  object CDSDep: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'Fecha'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDep'
    Left = 88
    Top = 128
    object CDSDepID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDepFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object CDSDepNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 13
    end
    object CDSDepEFEC_CHEQ: TStringField
      FieldName = 'EFEC_CHEQ'
      Origin = 'EFEC_CHEQ'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSDepIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
  end
  object DSPDep: TDataSetProvider
    DataSet = QDp
    Left = 136
    Top = 136
  end
  object QDp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select d.id,d.fecha,d.numero,d.importe,d.efec_cheq from dep_banc' +
        'o_cab d'
      'where d.fecha=:Fecha ')
    Left = 184
    Top = 160
    ParamData = <
      item
        Position = 1
        Name = 'Fecha'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
end
