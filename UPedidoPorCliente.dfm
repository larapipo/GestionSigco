object FormPedidoPorCliente: TFormPedidoPorCliente
  Left = 373
  Top = 173
  Caption = 'Pedido Por Cliente'
  ClientHeight = 503
  ClientWidth = 569
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 537
    Height = 217
    Caption = 'Panel1'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 3
      Top = 8
      Width = 526
      Height = 176
      DataSource = DSArticulosClientes
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'NROCPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Color = clMoneyGreen
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
          FieldName = 'NOMBRE'
          Title.Alignment = taCenter
          Title.Color = clMoneyGreen
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 217
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CANTIDAD_FALTANTE'
          Title.Alignment = taCenter
          Title.Color = clMoneyGreen
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
  object DSPArticulosClientes: TDataSetProvider
    DataSet = QArticulosClientes
    Options = []
    Left = 328
    Top = 232
  end
  object CDSArticulosClientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPArticulosClientes'
    Left = 416
    Top = 240
    object CDSArticulosClientesCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object CDSArticulosClientesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSArticulosClientesCANTIDAD_FALTANTE: TFloatField
      DisplayLabel = 'Faltante'
      FieldName = 'CANTIDAD_FALTANTE'
      Origin = 'CANTIDAD_FALTANTE'
      DisplayFormat = ',0.00'
    end
    object CDSArticulosClientesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSArticulosClientesNROCPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
  end
  object DSArticulosClientes: TDataSource
    DataSet = CDSArticulosClientes
    Left = 512
    Top = 232
  end
  object QArticulosClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id,c.nrocpbte,c.codigo,c.nombre,d.cantidad_faltante fro' +
        'm npedidodet_cliente d'
      'left join npedidocab_cliente c on c.id=d.id_cabnp'
      
        'where d.codigoarticulo=:codigo and c.estado in ('#39'N'#39','#39'P'#39')  and d.' +
        'cantidad_faltante>0')
    Left = 232
    Top = 304
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
end
