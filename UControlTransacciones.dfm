inherited FormControlTransacciones: TFormControlTransacciones
  Caption = 'Control Transacciones'
  ClientHeight = 492
  ClientWidth = 911
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 929
  ExplicitHeight = 533
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 911
    Height = 439
    Align = alClient
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 8
    ExplicitWidth = 947
    object Label1: TLabel
      Left = 747
      Top = 379
      Width = 91
      Height = 13
      Anchors = [akRight, akBottom]
      Caption = 'ATTACHMENT_ID'
      ExplicitTop = 440
    end
    object SpeedButton1: TSpeedButton
      Left = 859
      Top = 397
      Width = 23
      Height = 22
      Action = BorrarTx
      Anchors = [akRight, akBottom]
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000717171FFE6D3C0FFE6D3C0FF7171
        71FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000717171FFE6D3C0FFE6D3C0FF7171
        71FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000717171FFE6D3C0FFE6D3C0FF7171
        71FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000717171FFE6D3C0FFE6D3C0FF7171
        71FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000717171FFE6D3C0FFE6D3C0FF7171
        71FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000717171FF717171FF717171FF7171
        71FF000000000000000000000000000000000000000000000000717171FF7171
        71FF717171FF717171FF00000000000000000000000000000000000000000000
        00000000000000000000717171FF717171FF717171FF717171FF717171FF0000
        000000000000717171FF000000000000000000000000B8824DFFB8824DFF0000
        00000000000000000000717171FF0000000000000000717171FF717171FF0000
        000000000000717171FF000000000000000000000000B8824DFFB8824DFF0000
        00000000000000000000717171FF0000000000000000717171FF717171FF0000
        000000000000717171FF00000000B8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFF00000000717171FF0000000000000000717171FF717171FF0000
        000000000000717171FF00000000B8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFF00000000717171FF0000000000000000717171FF717171FF0000
        000000000000717171FF000000000000000000000000B8824DFFB8824DFF0000
        00000000000000000000717171FF0000000000000000717171FF717171FF0000
        000000000000717171FF000000000000000000000000B8824DFFB8824DFF0000
        00000000000000000000717171FF0000000000000000717171FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ExplicitTop = 458
    end
    object DBGrid1: TDBGrid
      Left = 10
      Top = 10
      Width = 891
      Height = 354
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DSTransacc
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object dbeId_ATT: TDBEdit
      Left = 717
      Top = 398
      Width = 121
      Height = 21
      Anchors = [akRight, akBottom]
      DataField = 'ATTACHMENT_ID'
      DataSource = DSTransacc
      TabOrder = 1
      ExplicitTop = 459
    end
  end
  inherited ToolBar1: TToolBar
    Top = 439
    Width = 911
    Align = alBottom
    inherited btConfirma: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited btNuevo: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited btCancelar: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited btModificar: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited Pr: TSpeedButton
      Visible = False
    end
    inherited btBuscar: TBitBtn
      DoubleBuffered = True
    end
    inherited Ne: TSpeedButton
      Visible = False
    end
    inherited btBorrar: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited btSalir: TBitBtn
      DoubleBuffered = True
    end
  end
  inherited Panel1: TPanel
    Top = 469
    Width = 911
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 822
      ExplicitLeft = 91
      ExplicitTop = 2
      ExplicitWidth = 858
    end
  end
  inherited ActionList1: TActionList
    object BorrarTx: TAction
      OnExecute = BorrarTxExecute
    end
  end
  object QTransacc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT * FROM VW_MONITOR_BLOQUEOS_EXT ')
    Left = 728
    Top = 272
    object QTransaccATTACHMENT_ID: TLargeintField
      FieldName = 'ATTACHMENT_ID'
      Origin = 'ATTACHMENT_ID'
    end
    object QTransaccUSUARIO: TWideStringField
      DisplayWidth = 20
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      FixedChar = True
      Size = 31
    end
    object QTransaccREMOTE_ADDRESS: TStringField
      DisplayWidth = 30
      FieldName = 'REMOTE_ADDRESS'
      Origin = 'REMOTE_ADDRESS'
      Size = 255
    end
    object QTransaccREMOTE_PROCESS: TWideStringField
      DisplayWidth = 30
      FieldName = 'REMOTE_PROCESS'
      Origin = 'REMOTE_PROCESS'
      Size = 255
    end
    object QTransaccTRANSACTION_ID: TLargeintField
      FieldName = 'TRANSACTION_ID'
      Origin = 'TRANSACTION_ID'
    end
    object QTransaccESTADO: TSmallintField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
    end
    object QTransaccAISLAMIENTO: TSmallintField
      FieldName = 'AISLAMIENTO'
      Origin = 'AISLAMIENTO'
    end
    object QTransaccSQL_TEXT: TMemoField
      FieldName = 'SQL_TEXT'
      Origin = 'SQL_TEXT'
      BlobType = ftMemo
    end
    object QTransaccINICIO_TRANSACCION: TSQLTimeStampField
      FieldName = 'INICIO_TRANSACCION'
      Origin = 'INICIO_TRANSACCION'
    end
    object QTransaccMINUTOS_ABIERTA: TIntegerField
      FieldName = 'MINUTOS_ABIERTA'
      Origin = 'MINUTOS_ABIERTA'
    end
  end
  object DSTransacc: TDataSource
    DataSet = QTransacc
    Left = 784
    Top = 256
  end
end
