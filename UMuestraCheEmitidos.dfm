object FormMuestraCheEmitidos: TFormMuestraCheEmitidos
  Left = 172
  Top = 149
  Caption = 'Cheques Emitidos'
  ClientHeight = 309
  ClientWidth = 671
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
    Width = 671
    Height = 193
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitWidth = 666
    object dbgChe: TDBGrid
      Left = 1
      Top = 1
      Width = 669
      Height = 184
      Align = alTop
      DataSource = DSChequesEmitidos
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
          FieldName = 'ORDEN_DE'
          Title.Alignment = taCenter
          Title.Caption = 'A la Orden de'
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
  object DSChequesEmitidos: TDataSource
    DataSet = CDSCheEmitidos
    Left = 48
    Top = 16
  end
  object QCheEmit: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'Fecha'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select c.fecha_emision,c.fecha_cobro,c.numero,c.orden_de,c.impor' +
        'te,b.nombre as MuestraBanco from cheque_Propio c'
      'left join bancos b on b.id_banco=c.id_banco'
      'where c.fecha_cobro=:Fecha')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 168
    Top = 24
  end
  object CDSCheEmitidos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'Fecha'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCheEmitidos'
    Left = 160
    Top = 120
    object CDSCheEmitidosFECHA_EMISION: TSQLTimeStampField
      FieldName = 'FECHA_EMISION'
    end
    object CDSCheEmitidosFECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
    end
    object CDSCheEmitidosNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object CDSCheEmitidosORDEN_DE: TStringField
      FieldName = 'ORDEN_DE'
      Size = 30
    end
    object CDSCheEmitidosIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Precision = 15
      Size = 3
    end
    object CDSCheEmitidosMUESTRABANCO: TStringField
      FieldName = 'MUESTRABANCO'
    end
  end
  object DSPCheEmitidos: TDataSetProvider
    DataSet = QCheEmit
    Left = 248
    Top = 120
  end
end
