inherited FormAdministrador_NP_Movil: TFormAdministrador_NP_Movil
  Caption = 'Administrador de Notas de Pedidos Movil'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 13
  inherited pnPrincipal: TPanel
    StyleElements = [seFont, seClient, seBorder]
    object dbgAutorizados: TDBGrid
      Left = 7
      Top = 11
      Width = 338
      Height = 350
      DataSource = DSAutorizan
      DrawingStyle = gdsGradient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDragDrop = dbgAutorizadosDragDrop
      OnDragOver = dbgAutorizadosDragOver
      Columns = <
        item
          Expanded = False
          FieldName = 'MUESTRANOMBRE'
          Title.Alignment = taCenter
          Title.Caption = 'Usuarios Autorizados'
          Width = 308
          Visible = True
        end>
    end
    object dbgUsers: TDBGrid
      Left = 361
      Top = 11
      Width = 288
      Height = 350
      DataSource = DSUsser
      DragMode = dmAutomatic
      DrawingStyle = gdsGradient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'USER_NAME'
          Title.Alignment = taCenter
          Title.Caption = 'Usuario'
          Width = 258
          Visible = True
        end>
    end
  end
  inherited ToolBar1: TToolBar
    inherited btNuevo: TBitBtn
      Visible = False
    end
    inherited btCancelar: TBitBtn
      Visible = False
    end
    inherited btModificar: TBitBtn
      Visible = False
    end
    inherited Pr: TSpeedButton
      Visible = False
    end
    inherited btBuscar: TBitBtn
      Visible = False
    end
    inherited Ne: TSpeedButton
      Visible = False
    end
    inherited btBorrar: TBitBtn
      Visible = False
    end
  end
  inherited Panel1: TPanel
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited DSBase: TDataSource
    Left = 584
    Top = 296
  end
  inherited QUltimoCodigo2: TFDQuery
    SQL.Strings = (
      'select max(id) from USUARIOS_ADMINISTRA_PEDIDOS_AP')
  end
  object DSAutorizan: TDataSource
    DataSet = CDSAutorizan
    Left = 24
    Top = 160
  end
  object CDSAutorizan: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPAutorizan'
    AfterDelete = CDSAutorizanAfterDelete
    OnNewRecord = CDSAutorizanNewRecord
    Left = 108
    Top = 154
    object CDSAutorizanID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSAutorizanID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAutorizanMUESTRANOMBRE: TStringField
      DisplayLabel = 'Usuario Autorizado'
      FieldName = 'MUESTRANOMBRE'
      Origin = 'REAL_NAME'
      ProviderFlags = []
      Size = 40
    end
  end
  object DSPAutorizan: TDataSetProvider
    DataSet = QAutorizan
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 183
    Top = 156
  end
  object QAutorizan: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select np.id,np.id_usuario,u.real_name as MuestraNombre from USU' +
        'ARIOS_ADMINISTRA_PEDIDOS_AP np'
      'left join ucs_users u on u.user_id=np.id_usuario'
      'order by id_usuario')
    Left = 264
    Top = 144
    object QAutorizanID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAutorizanID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAutorizanMUESTRANOMBRE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANOMBRE'
      Origin = 'REAL_NAME'
      ProviderFlags = []
      Size = 40
    end
  end
  object QUser: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select user_id, user_name from ucs_users')
    Left = 472
    Top = 136
  end
  object DSPUser: TDataSetProvider
    DataSet = QUser
    Options = []
    Left = 517
    Top = 128
  end
  object CDSUser: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPUser'
    Left = 565
    Top = 128
    object CDSUserUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Origin = 'USER_NAME'
      Size = 30
    end
    object CDSUserUSER_ID: TIntegerField
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object DSUsser: TDataSource
    DataSet = CDSUser
    Left = 592
    Top = 120
  end
end
