object FormTxPendientes: TFormTxPendientes
  Left = 196
  Top = 249
  Caption = 'Tx Pendientes'
  ClientHeight = 415
  ClientWidth = 821
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 16
    Top = 8
    Width = 785
    Height = 337
    Caption = 'pnl1'
    Color = clMenuHighlight
    Padding.Left = 6
    Padding.Top = 6
    Padding.Right = 6
    Padding.Bottom = 6
    ParentBackground = False
    TabOrder = 0
    object dbgTx: TDBGrid
      Left = 7
      Top = 7
      Width = 771
      Height = 323
      Align = alClient
      DataSource = DSTxPendientes
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgTxDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMSUCURSAL'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 132
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NROCPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRAORIGEN'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRADESTINO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 146
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 76
          Visible = True
        end>
    end
  end
  object DSTxPendientes: TDataSource
    DataSet = CDSTxPendientes
    Left = 352
    Top = 168
  end
  object CDSTxPendientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTxPendientes'
    Left = 248
    Top = 176
    object CDSTxPendientesID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSTxPendientesNOMSUCURSAL: TStringField
      DisplayLabel = 'Sucursal'
      FieldName = 'NOMSUCURSAL'
      ReadOnly = True
      Size = 35
    end
    object CDSTxPendientesNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSTxPendientesCAJA_ORIGEN: TIntegerField
      FieldName = 'CAJA_ORIGEN'
      Origin = 'CAJA_ORIGEN'
      Required = True
    end
    object CDSTxPendientesMUESTRAORIGEN: TStringField
      DisplayLabel = 'Origen'
      FieldName = 'MUESTRAORIGEN'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSTxPendientesCAJA_DESTINO: TIntegerField
      FieldName = 'CAJA_DESTINO'
      Origin = 'CAJA_DESTINO'
      Required = True
    end
    object CDSTxPendientesMUESTRADESTINO: TStringField
      DisplayLabel = 'Destino'
      FieldName = 'MUESTRADESTINO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSTxPendientesIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSTxPendientesFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
  end
  object DSPTxPendientes: TDataSetProvider
    DataSet = QTxPendientes
    Options = []
    Left = 168
    Top = 176
  end
  object QTxPendientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.id,t.nrocpbte,t.caja_origen,c1.nombre as MuestraOrigen,'
      
        't.caja_destino,c2.nombre as MuestraDestino,t.importe,t.fecha,t.s' +
        'ucursal,s.detalle as NomSucursal from transferencias_caja t'
      'left join cuenta_caja c1 on c1.id_cuenta=t.caja_origen'
      'left join cuenta_caja c2 on c2.id_cuenta=t.caja_destino'
      'left join sucursal s on s.codigo=t.sucursal'
      'where t.estado='#39'N'#39
      'order by t.nrocpbte desc')
    Left = 88
    Top = 176
  end
end
