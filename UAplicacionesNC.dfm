object Form1: TForm1
  Left = 287
  Top = 246
  Width = 444
  Height = 255
  BorderIcons = [biSystemMenu]
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 0
    Width = 361
    Height = 120
    DataSource = DSAplica
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'APLICA_TIPOCPBTE'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APLICA_CLASECPBTE'
        Title.Alignment = taCenter
        Title.Caption = 'Clase'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APLICA_NROCPBTE'
        Title.Alignment = taCenter
        Title.Caption = 'Nro'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DETALLE'
        Title.Alignment = taCenter
        Title.Caption = 'Detalle'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPORTE'
        Title.Alignment = taCenter
        Title.Caption = '$'
        Width = 83
        Visible = True
      end>
  end
  object QAplica: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      
        'select * from movaplicacccompra where id_cpbte=:id and tipocpbte' +
        '=:tipo and clasecpbte=:clase')
    Left = 392
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'clase'
        ParamType = ptUnknown
      end>
  end
  object DSAplica: TDataSource
    DataSet = CDSAplica
    Left = 296
    Top = 16
  end
  object DSPAplica: TDataSetProvider
    DataSet = QAplica
    Constraints = True
    Left = 400
    Top = 80
  end
  object CDSAplica: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'clase'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPAplica'
    Left = 376
    Top = 152
  end
end
