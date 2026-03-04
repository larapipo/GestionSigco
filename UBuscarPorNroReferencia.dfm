object FormBuscarPorNroReferenica: TFormBuscarPorNroReferenica
  Left = 350
  Top = 100
  Caption = 'Nro de Referencia'
  ClientHeight = 502
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 136
    Top = 56
    Width = 353
    Height = 129
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 128
      Top = 15
      Width = 92
      Height = 19
      Caption = 'Nro de Ref.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edNumero: TEdit
      Left = 80
      Top = 40
      Width = 201
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyDown = edNumeroKeyDown
    end
    object btOk: TBitBtn
      Left = 264
      Top = 89
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btOkClick
    end
    object btEscape: TBitBtn
      Left = 183
      Top = 89
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btEscapeClick
    end
  end
  object QRempCheque: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.tipocpbte from remplazo_cheques c'
      'where c.id=:Id')
    Left = 424
    Top = 304
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QPresupuestos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select p.tipocpbte from prescab p where p.id_pr=:id')
    Left = 288
    Top = 328
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QOrdenPago: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select op.tipocpbte from OrdenPago op where op.id_op = :id')
    Left = 120
    Top = 232
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
        Value = Null
      end>
  end
  object QRecibos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select f.tipocpbte from recibos f where f.id_rc = :id')
    Left = 192
    Top = 232
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QTransFondos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select tc.Tipocpbte  from transferencias_caja tc'
      'where (tc.Id=:id)')
    Left = 280
    Top = 232
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QRtoVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select f.tipocpbte from rtocab f where f.id_rto = :id')
    Left = 368
    Top = 240
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QComp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select f.tipocpbte from fccompcab f where f.id_fc = :id')
    Left = 448
    Top = 240
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QCompVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select f.tipocpbte from fcvtacab f where f.id_fc = :id')
    Left = 520
    Top = 240
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QRecepCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select rc.tipocpbte from recepmercacab rc where rc.id_recmer= :i' +
        'd'
      ''
      ' '
      ' '
      ' ')
    Left = 608
    Top = 248
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRecepCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
  end
end
