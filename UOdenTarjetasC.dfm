object FormOrdenTC: TFormOrdenTC
  Left = 0
  Top = 0
  Caption = 'Orden Tarjetas de Credito'
  ClientHeight = 506
  ClientWidth = 301
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 301
    Height = 465
    Margins.Left = 10
    Margins.Bottom = 10
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 0
    ExplicitLeft = 248
    ExplicitTop = 128
    ExplicitWidth = 185
    ExplicitHeight = 41
    object lwLista: TListView
      Left = 5
      Top = 5
      Width = 291
      Height = 455
      Align = alClient
      Columns = <
        item
          Caption = 'v'
          MaxWidth = 40
          MinWidth = 40
          Width = 40
        end
        item
          Caption = 'Detalle'
          MaxWidth = 190
          MinWidth = 190
          Width = 190
        end
        item
          Caption = 'id'
          MinWidth = 50
          Tag = 50
        end>
      DragMode = dmAutomatic
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
      OnDragDrop = lwListaDragDrop
      OnDragOver = lwListaDragOver
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 465
    Width = 301
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 376
    ExplicitTop = 376
    ExplicitWidth = 185
  end
  object QTarjetas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select id_tc,Descripcion,orden from T_credito order by orden')
    Left = 120
    Top = 432
    object QTarjetasID_TC: TIntegerField
      DisplayLabel = 'Id Tarjeta'
      DisplayWidth = 11
      FieldName = 'ID_TC'
      Origin = 'ID_TC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTarjetasDESCRIPCION: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 17
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 15
    end
    object QTarjetasORDEN: TIntegerField
      DisplayLabel = 'Orden'
      DisplayWidth = 11
      FieldName = 'ORDEN'
      Origin = 'ORDEN'
      Required = True
    end
  end
  object DSTarjetas: TDataSource
    DataSet = QTarjetas
    Left = 40
    Top = 432
  end
  object QGrabar: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update T_credito t set t.orden=:Orden where t.id_tc=:id')
    Left = 192
    Top = 240
    ParamData = <
      item
        Name = 'ORDEN'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
