object FormBuscadorTipoMovCCComp: TFormBuscadorTipoMovCCComp
  Left = 0
  Top = 0
  Caption = 'Tipos de Movimientos'
  ClientHeight = 334
  ClientWidth = 420
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 420
    Height = 241
    Align = alTop
    TabOrder = 0
    object pnPie: TPanel
      Left = 1
      Top = 207
      Width = 418
      Height = 33
      Align = alBottom
      TabOrder = 0
      object btCancelar: TBitBtn
        Left = 232
        Top = 4
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        Kind = bkCancel
        NumGlyphs = 2
        TabOrder = 0
        OnClick = btCancelarClick
      end
      object btOk: TBitBtn
        Left = 318
        Top = 4
        Width = 75
        Height = 25
        Kind = bkOK
        NumGlyphs = 2
        TabOrder = 1
        OnClick = btOkClick
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 34
      Width = 418
      Height = 173
      Align = alClient
      DataSource = DSTipo
      DrawingStyle = gdsGradient
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object pnCab: TPanel
      Left = 1
      Top = 1
      Width = 418
      Height = 33
      Align = alTop
      TabOrder = 2
      object JvDBFindEdit1: TJvDBFindEdit
        Left = 88
        Top = 6
        Width = 305
        Height = 21
        TabOrder = 0
        Text = ''
        DataField = 'DETALLE'
        DataSource = DSTipo
        FindStyle = fsFilter
        FindMode = fmAnyPos
      end
    end
  end
  object QTipo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select t.* from TIPO_ADICIONAL_CCCOMP t'
      'order by detalle')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 104
    Top = 256
  end
  object CDSTipo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTipo'
    Left = 224
    Top = 264
    object CDSTipoID: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'ID'
      Required = True
    end
    object CDSTipoDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 50
    end
  end
  object DSPTipo: TDataSetProvider
    DataSet = QTipo
    Left = 152
    Top = 256
  end
  object DSTipo: TDataSource
    DataSet = CDSTipo
    Left = 328
    Top = 264
  end
end
