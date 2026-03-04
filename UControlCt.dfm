inherited FormABMBase1: TFormABMBase1
  Left = 313
  Top = 148
  Caption = 'FormABMBase1'
  ClientHeight = 532
  ClientWidth = 648
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 648
    Height = 385
  end
  inherited ToolBar1: TToolBar
    Top = 385
    Width = 648
  end
  inherited Panel1: TPanel
    Top = 419
    Width = 648
    inherited sbEstado: TStatusBar
      Left = 180
    end
  end
  object QFacturas: TQuery
    SQL.Strings = (
      
        'select f.id_fc,f.fechavta,f.tipocpbte,f.clasecpbte,f.nrocpbte,f.' +
        'total from fcvtacab f'
      'where f.codigo=:codigo and f.tipocpbte<>'#39'FO'#39)
    Left = 128
    Top = 456
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
  end
  object DSFactura: TDataSource
    Left = 184
    Top = 480
  end
  object DSPFactura: TDataSetProvider
    DataSet = QFacturas
    Constraints = True
    Left = 240
    Top = 472
  end
  object CDSFactura: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPFactura'
    Left = 296
    Top = 464
  end
end
