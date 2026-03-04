object FormControlRtosVsPedido: TFormControlRtosVsPedido
  Left = 707
  Top = 147
  Caption = 'Control de Rtos vs. Pedidos'
  ClientHeight = 551
  ClientWidth = 376
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
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 345
    Height = 417
    TabOrder = 0
    object JvDBGrid1: TJvDBGrid
      Left = 15
      Top = 12
      Width = 313
      Height = 337
      DataSource = DSRtos
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_RTO'
          Title.Alignment = taCenter
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHAVTA'
          Title.Alignment = taCenter
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NROCPBTE'
          Title.Alignment = taCenter
          Width = 111
          Visible = True
        end>
    end
    object btOk: TBitBtn
      Left = 254
      Top = 368
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btOkClick
    end
    object btCancelar: TBitBtn
      Left = 166
      Top = 368
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 2
    end
  end
  object CDSRtos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRtos'
    Left = 248
    Top = 248
    object CDSRtosID_RTO: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_RTO'
      Origin = 'ID_RTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRtosNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSRtosFECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object CDSRtosTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSRtosCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
  end
  object DSPRtos: TDataSetProvider
    DataSet = QRtos
    Left = 184
    Top = 256
  end
  object DSRtos: TDataSource
    DataSet = CDSRtos
    Left = 208
    Top = 160
  end
  object QRtos: TFDQuery
    ObjectView = False
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select r.id_rto,r.nrocpbte,r.fechavta,r.tipocpbte,r.clasecpbte f' +
        'rom rtocab r'
      
        'where r.codigo = :codigo and ( r.notapedido_id is null or r.nota' +
        'pedido_id= 0 ) and'
      '      r.anulado<>'#39'S'#39)
    Left = 128
    Top = 256
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QAsociaNP: TFDQuery
    ObjectView = False
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      ' update npedidocab_cliente p set'
      '              p.estado='#39'P'#39','
      '              p.entrega_id_cpbte = :id_rto,'
      '              p.entrega_nrocpbte = :nrocpbte,'
      '              p.entrega_tipocpbte= :tipocpbte'
      '                where p.id= :notapedido_id;')
    Left = 64
    Top = 448
    ParamData = <
      item
        Name = 'ID_RTO'
        ParamType = ptInput
      end
      item
        Name = 'NROCPBTE'
        ParamType = ptInput
      end
      item
        Name = 'TIPOCPBTE'
        ParamType = ptInput
      end
      item
        Name = 'NOTAPEDIDO_ID'
        ParamType = ptInput
      end>
  end
  object QAsociarRto: TFDQuery
    ObjectView = False
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update rtocab r set r.notapedido_id = :id_notaPedido,'
      '                    r.notapedido_nrocpbte = :nrocpbte_notapedido'
      '  where r.id_rto = :id_rto')
    Left = 152
    Top = 464
    ParamData = <
      item
        Name = 'ID_NOTAPEDIDO'
        ParamType = ptInput
      end
      item
        Name = 'NROCPBTE_NOTAPEDIDO'
        ParamType = ptInput
      end
      item
        Name = 'ID_RTO'
        ParamType = ptInput
      end>
  end
end
