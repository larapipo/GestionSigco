object FormCorreo: TFormCorreo
  Left = 297
  Top = 137
  Caption = 'Envio de Correo'
  ClientHeight = 443
  ClientWidth = 697
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 697
    Height = 443
    Align = alClient
    TabOrder = 0
    DesignSize = (
      697
      443)
    object Label1: TLabel
      Left = 8
      Top = 1
      Width = 88
      Height = 13
      Caption = 'Enviando Correo a'
    end
    object SpeedButton1: TSpeedButton
      Left = 664
      Top = 19
      Width = 23
      Height = 22
      Action = Enviar
      Anchors = [akTop, akRight]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
        000077777777777777770FFFFFFFFFFFFFF07F3333FFF33333370FFFF777FFFF
        FFF07F333777333333370FFFFFFFFFFFFFF07F3333FFFFFF33370FFFF777777F
        FFF07F33377777733FF70FFFFFFFFFFF99907F3FFF33333377770F777FFFFFFF
        9CA07F77733333337F370FFFFFFFFFFF9A907FFFFFFFFFFF7FF7000000000000
        0000777777777777777733333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ExplicitLeft = 352
    end
    object Label2: TLabel
      Left = 8
      Top = 42
      Width = 49
      Height = 13
      Caption = 'Con Copia'
    end
    object Label3: TLabel
      Left = 8
      Top = 83
      Width = 87
      Height = 13
      Caption = 'Texto del Mensaje'
    end
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 407
      Width = 695
      Height = 16
      Align = alBottom
      Min = 1
      Position = 1
      Smooth = True
      Step = 1
      TabOrder = 0
    end
    object edDireccion: TEdit
      Left = 8
      Top = 20
      Width = 642
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
    end
    object stBar: TStatusBar
      Left = 1
      Top = 423
      Width = 695
      Height = 19
      Panels = <>
      SimplePanel = True
    end
    object chbConfirmacion: TCheckBox
      Left = 440
      Top = 377
      Width = 161
      Height = 17
      Anchors = [akBottom]
      BiDiMode = bdRightToLeft
      Caption = 'Con Confirmacion de Lectura'
      ParentBiDiMode = False
      TabOrder = 3
    end
    object edCopia: TEdit
      Left = 8
      Top = 56
      Width = 679
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 4
    end
    object edCuerpoMensaje: TMemo
      Left = 8
      Top = 102
      Width = 679
      Height = 269
      Anchors = [akLeft, akTop, akRight, akBottom]
      Lines.Strings = (
        '')
      ScrollBars = ssVertical
      TabOrder = 5
      WantTabs = True
    end
  end
  object smtp: TIdSMTP
    OnStatus = smtpStatus
    IOHandler = IdSSLIOHandlerSocketOpenSSL1
    OnDisconnected = smtpDisconnected
    OnWork = smtpWork
    OnWorkBegin = smtpWorkBegin
    OnConnected = smtpConnected
    SASLMechanisms = <>
    Left = 488
    Top = 296
  end
  object ActionList1: TActionList
    Left = 416
    Top = 208
    object Enviar: TAction
      OnExecute = EnviarExecute
    end
  end
  object Mail: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 440
    Top = 280
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    Destination = ':25'
    MaxLineAction = maException
    Port = 25
    DefaultPort = 0
    SSLOptions.Method = sslvSSLv23
    SSLOptions.SSLVersions = [sslvSSLv2, sslvSSLv3, sslvTLSv1, sslvTLSv1_1, sslvTLSv1_2]
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 88
    Top = 192
  end
  object QNtotaCorreo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TABLA_TEXTO_correo')
    Left = 223
    Top = 112
    object QNtotaCorreoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNtotaCorreoTEXTO: TMemoField
      FieldName = 'TEXTO'
      Origin = 'TEXTO'
      BlobType = ftMemo
    end
  end
  object DSPNotasCorreo: TDataSetProvider
    DataSet = QNtotaCorreo
    Options = [poAllowCommandText]
    Left = 327
    Top = 104
  end
  object CDSNotasCorreo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPNotasCorreo'
    Left = 439
    Top = 109
    object CDSNotasCorreoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSNotasCorreoTEXTO: TMemoField
      FieldName = 'TEXTO'
      BlobType = ftMemo
    end
  end
  object JvRichEditToHtml1: TJvRichEditToHtml
    Left = 160
    Top = 288
  end
  object QMailing: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TABLA_TEXTO_mailing')
    Left = 528
    Top = 64
    object QMailingID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMailingTEXTO: TMemoField
      FieldName = 'TEXTO'
      Origin = 'TEXTO'
      BlobType = ftMemo
    end
  end
  object DSPMailing: TDataSetProvider
    DataSet = QMailing
    Options = [poAllowCommandText]
    Left = 528
    Top = 120
  end
  object CDSMailing: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMailing'
    Left = 536
    Top = 168
    object CDSMailingID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSMailingTEXTO: TMemoField
      FieldName = 'TEXTO'
      BlobType = ftMemo
    end
  end
  object JvRichEditToHtml2: TJvRichEditToHtml
    Left = 104
    Top = 272
  end
end
