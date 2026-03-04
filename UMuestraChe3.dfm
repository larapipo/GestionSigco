object FormMuestraChe3: TFormMuestraChe3
  Left = 96
  Top = 127
  Caption = 'Cheques de Tercero'
  ClientHeight = 352
  ClientWidth = 674
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
    Width = 674
    Height = 193
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    object dbgChe: TDBGrid
      Left = 1
      Top = 1
      Width = 672
      Height = 184
      Align = alTop
      DataSource = DSChe3
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'FECHA_COBRO'
          Title.Alignment = taCenter
          Title.Caption = 'A Cobrar'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA_EMISION'
          Title.Alignment = taCenter
          Title.Caption = 'Emitido'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRABANCO'
          Title.Alignment = taCenter
          Title.Caption = 'Banco'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 129
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Alignment = taCenter
          Title.Caption = 'Nro.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FIRMANTE'
          Title.Alignment = taCenter
          Title.Caption = 'Librador'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 189
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTE'
          Title.Alignment = taCenter
          Title.Caption = 'Importe'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 94
          Visible = True
        end>
    end
  end
  object DSChe3: TDataSource
    DataSet = CDSChe3
    Left = 48
    Top = 16
  end
  object CDSChe3: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'Fecha'
        ParamType = ptInput
      end>
    ProviderName = 'DSPChe3'
    Left = 120
    Top = 104
  end
  object DSPChe3: TDataSetProvider
    DataSet = QCh3
    Left = 200
    Top = 104
  end
  object QCh3: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.fecha_emision,c.fecha_cobro,c.numero,c.firmante,c.impor' +
        'te,b.nombre as MuestraBanco from cheque_tercero c'
      'left join bancos b on b.id_banco=c.id_banco'
      
        'where c.fecha_cobro=:Fecha  and ((id_cuenta_bco_depositado is Nu' +
        'll) or (id_cuenta_bco_depositado=0))')
    Left = 152
    Top = 48
    ParamData = <
      item
        Position = 1
        Name = 'Fecha'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
end
