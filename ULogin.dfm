object FormLogin: TFormLogin
  Left = 629
  Top = 298
  BorderStyle = bsDialog
  Caption = 'Ingreso de Clave'
  ClientHeight = 237
  ClientWidth = 314
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 13
  object pnPcpal: TPanel
    Left = 8
    Top = 8
    Width = 201
    Height = 153
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 27
      Top = 9
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object Label2: TLabel
      Left = 28
      Top = 50
      Width = 54
      Height = 13
      Caption = 'Contrase'#241'a'
    end
    object JvGradient1: TJvGradient
      Left = 4
      Top = 107
      Width = 194
      Height = 36
      Align = alCustom
      Style = grVertical
      StartColor = clWhite
      EndColor = clGradientInactiveCaption
    end
    object edNombre: TEdit
      Left = 27
      Top = 25
      Width = 149
      Height = 21
      TabOrder = 0
    end
    object edPasword: TEdit
      Left = 27
      Top = 65
      Width = 149
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
    end
    object btOk: TBitBtn
      Left = 23
      Top = 113
      Width = 75
      Height = 25
      Caption = '&Si'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btOkClick
    end
    object btNo: TBitBtn
      Left = 104
      Top = 113
      Width = 75
      Height = 25
      Cancel = True
      Caption = '&No'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333FFFFF333333000033333388888833333333333F888888FFF333
        000033338811111188333333338833FFF388FF33000033381119999111833333
        38F338888F338FF30000339119933331111833338F388333383338F300003391
        13333381111833338F8F3333833F38F3000039118333381119118338F38F3338
        33F8F38F000039183333811193918338F8F333833F838F8F0000391833381119
        33918338F8F33833F8338F8F000039183381119333918338F8F3833F83338F8F
        000039183811193333918338F8F833F83333838F000039118111933339118338
        F3833F83333833830000339111193333391833338F33F8333FF838F300003391
        11833338111833338F338FFFF883F83300003339111888811183333338FF3888
        83FF83330000333399111111993333333388FFFFFF8833330000333333999999
        3333333333338888883333330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 3
      OnClick = btNoClick
    end
  end
  object FDQUser: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select u.*  from ucs_users u'
      'where u.user_name=:nombre and u.user_pwd=:clave')
    Left = 264
    Top = 152
    ParamData = <
      item
        Name = 'NOMBRE'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = Null
      end
      item
        Name = 'CLAVE'
        DataType = ftString
        ParamType = ptInput
        Size = 60
      end>
    object FDQUserUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Origin = 'USER_NAME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object FDQUserREAL_NAME: TStringField
      FieldName = 'REAL_NAME'
      Origin = 'REAL_NAME'
      Size = 40
    end
    object FDQUserUSER_PWD: TStringField
      FieldName = 'USER_PWD'
      Origin = 'USER_PWD'
      Size = 60
    end
    object FDQUserUSER_ID: TIntegerField
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
    end
    object FDQUserLAST_PWD_CHANGE: TSingleField
      FieldName = 'LAST_PWD_CHANGE'
      Origin = 'LAST_PWD_CHANGE'
    end
    object FDQUserAUDIT_MODE: TStringField
      FieldName = 'AUDIT_MODE'
      Origin = 'AUDIT_MODE'
      Size = 1
    end
    object FDQUserGUID: TStringField
      FieldName = 'GUID'
      Origin = 'GUID'
      Size = 38
    end
    object FDQUserEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 200
    end
  end
  object FDQAutorizados: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select a.* from autorizanaprecios_usuarios a'
      'where a.usuario=:usuario')
    Left = 216
    Top = 184
    ParamData = <
      item
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = Null
      end>
    object FDQAutorizadosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 30
    end
    object FDQAutorizadosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
