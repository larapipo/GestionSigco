object FormCuotasVencimientos: TFormCuotasVencimientos
  Left = 348
  Top = 114
  Caption = 'Generacion de Cuotas Vencimientos'
  ClientHeight = 523
  ClientWidth = 594
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
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 594
    Height = 523
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 489
    ExplicitHeight = 542
    object Panel3: TPanel
      Left = 1
      Top = 177
      Width = 592
      Height = 289
      Align = alClient
      BevelOuter = bvLowered
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 201
      ExplicitWidth = 596
      ExplicitHeight = 226
      DesignSize = (
        592
        289)
      object Label5: TLabel
        Left = 15
        Top = 11
        Width = 195
        Height = 19
        Caption = 'Movimientos Generados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvDBGrid1: TJvDBGrid
        Left = 12
        Top = 35
        Width = 567
        Height = 236
        Anchors = [akLeft, akTop, akBottom]
        DataSource = DSVencimientos
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
            FieldName = 'FECHA_INCIO'
            Title.Alignment = taCenter
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ASUNTO'
            Title.Alignment = taCenter
            Width = 285
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUOTA_NRO'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPORTE'
            Title.Alignment = taCenter
            Width = 87
            Visible = True
          end>
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 466
      Width = 592
      Height = 56
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 0
      ExplicitTop = 201
      ExplicitWidth = 596
      object btCancel: TBitBtn
        Left = 471
        Top = 11
        Width = 89
        Height = 28
        Cancel = True
        Caption = 'Cerrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
        OnClick = btCancelClick
      end
      object btOk: TBitBtn
        Left = 376
        Top = 11
        Width = 89
        Height = 28
        Caption = 'OK'
        Default = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
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
        ParentFont = False
        TabOrder = 1
        OnClick = btOkClick
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 592
      Height = 176
      Align = alTop
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 2
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 311
        Height = 19
        Caption = 'Generador de Cuotas de Vencimientos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 214
        Top = 108
        Width = 154
        Height = 19
        Caption = 'Cuotas Adicionales'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 17
        Top = 108
        Width = 145
        Height = 19
        Caption = 'Fecha Primer Vto.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 406
        Top = 48
        Width = 155
        Height = 19
        Caption = 'Intervalo e/Cuotas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 472
        Top = 108
        Width = 90
        Height = 19
        Caption = 'Dia de Vto.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object spCuotas: TSpinEdit
        Left = 270
        Top = 133
        Width = 57
        Height = 29
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxValue = 150
        MinValue = 1
        ParentFont = False
        TabOrder = 0
        Value = 2
      end
      object edFecha: TJvDateEdit
        Left = 16
        Top = 133
        Width = 121
        Height = 27
        DefaultToday = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowNullDate = False
        TabOrder = 1
      end
      object seIntervalo: TSpinEdit
        Left = 494
        Top = 73
        Width = 67
        Height = 29
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxValue = 120
        MinValue = 1
        ParentFont = False
        TabOrder = 2
        Value = 30
      end
      object seDias: TSpinEdit
        Left = 494
        Top = 133
        Width = 67
        Height = 29
        Color = clBtnFace
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxValue = 31
        MinValue = 1
        ParentFont = False
        TabOrder = 3
        Value = 1
      end
      object RadioGroup1: TRadioGroup
        Left = 32
        Top = 41
        Width = 321
        Height = 61
        Caption = 'Modo de vecimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Por periodo Determinado'
          'Por Dia de Vencimiento')
        ParentFont = False
        TabOrder = 4
        OnClick = RadioGroup1Click
      end
    end
  end
  object DSVencimientos: TDataSource
    DataSet = QVencimientos
    Left = 440
    Top = 120
  end
  object QVencimientos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from  vencimientos where lote = :id')
    Left = 361
    Top = 120
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QVencimientosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVencimientosFECHA_INCIO: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA_INCIO'
      Origin = 'FECHA_INCIO'
      Required = True
    end
    object QVencimientosFECHA_FINALIZACION: TSQLTimeStampField
      FieldName = 'FECHA_FINALIZACION'
      Origin = 'FECHA_FINALIZACION'
    end
    object QVencimientosASUNTO: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'ASUNTO'
      Origin = 'ASUNTO'
      Size = 200
    end
    object QVencimientosASUNTO_2: TStringField
      FieldName = 'ASUNTO_2'
      Origin = 'ASUNTO_2'
      Size = 200
    end
    object QVencimientosASUNTO_3: TStringField
      FieldName = 'ASUNTO_3'
      Origin = 'ASUNTO_3'
      Size = 200
    end
    object QVencimientosAVISAR: TStringField
      FieldName = 'AVISAR'
      Origin = 'AVISAR'
      FixedChar = True
      Size = 1
    end
    object QVencimientosFRECUENCIA: TStringField
      FieldName = 'FRECUENCIA'
      Origin = 'FRECUENCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVencimientosIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object QVencimientosID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object QVencimientosTIPO_CPBTE: TStringField
      FieldName = 'TIPO_CPBTE'
      Origin = 'TIPO_CPBTE'
      Size = 2
    end
    object QVencimientosCLASE_CPBTE: TStringField
      FieldName = 'CLASE_CPBTE'
      Origin = 'CLASE_CPBTE'
      Size = 2
    end
    object QVencimientosNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QVencimientosESTADO: TIntegerField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
    end
    object QVencimientosCOLOR: TIntegerField
      FieldName = 'COLOR'
      Origin = 'COLOR'
    end
    object QVencimientosAVISA_INICIO: TSQLTimeStampField
      FieldName = 'AVISA_INICIO'
      Origin = 'AVISA_INICIO'
    end
    object QVencimientosAVISA_TERMINA: TSQLTimeStampField
      FieldName = 'AVISA_TERMINA'
      Origin = 'AVISA_TERMINA'
    end
    object QVencimientosFINALIZADO: TStringField
      FieldName = 'FINALIZADO'
      Origin = 'FINALIZADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVencimientosTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
    end
    object QVencimientosFECHA_CUMPLIDO: TSQLTimeStampField
      FieldName = 'FECHA_CUMPLIDO'
      Origin = 'FECHA_CUMPLIDO'
    end
    object QVencimientosPARENT_ID: TIntegerField
      FieldName = 'PARENT_ID'
      Origin = 'PARENT_ID'
    end
    object QVencimientosOPCION: TIntegerField
      FieldName = 'OPCION'
      Origin = 'OPCION'
      Required = True
    end
    object QVencimientosCUOTA_NRO: TSmallintField
      DisplayLabel = 'Cuota'
      FieldName = 'CUOTA_NRO'
      Origin = 'CUOTA_NRO'
      Required = True
    end
    object QVencimientosLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Required = True
    end
  end
  object spReplicarMov: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'execute procedure replica_vencimiento (:id ,:cuota ,:fecha )')
    Left = 385
    Top = 64
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CUOTA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FECHA'
        DataType = ftDate
        ParamType = ptInput
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLTimeStampField1: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA_INCIO'
      Origin = 'FECHA_INCIO'
      Required = True
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'FECHA_FINALIZACION'
      Origin = 'FECHA_FINALIZACION'
    end
    object StringField1: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'ASUNTO'
      Origin = 'ASUNTO'
      Size = 200
    end
    object StringField2: TStringField
      FieldName = 'ASUNTO_2'
      Origin = 'ASUNTO_2'
      Size = 200
    end
    object StringField3: TStringField
      FieldName = 'ASUNTO_3'
      Origin = 'ASUNTO_3'
      Size = 200
    end
    object StringField4: TStringField
      FieldName = 'AVISAR'
      Origin = 'AVISAR'
      FixedChar = True
      Size = 1
    end
    object StringField5: TStringField
      FieldName = 'FRECUENCIA'
      Origin = 'FRECUENCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FloatField1: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object StringField6: TStringField
      FieldName = 'TIPO_CPBTE'
      Origin = 'TIPO_CPBTE'
      Size = 2
    end
    object StringField7: TStringField
      FieldName = 'CLASE_CPBTE'
      Origin = 'CLASE_CPBTE'
      Size = 2
    end
    object StringField8: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object IntegerField3: TIntegerField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
    end
    object IntegerField4: TIntegerField
      FieldName = 'COLOR'
      Origin = 'COLOR'
    end
    object SQLTimeStampField3: TSQLTimeStampField
      FieldName = 'AVISA_INICIO'
      Origin = 'AVISA_INICIO'
    end
    object SQLTimeStampField4: TSQLTimeStampField
      FieldName = 'AVISA_TERMINA'
      Origin = 'AVISA_TERMINA'
    end
    object StringField9: TStringField
      FieldName = 'FINALIZADO'
      Origin = 'FINALIZADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object IntegerField5: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
    end
    object SQLTimeStampField5: TSQLTimeStampField
      FieldName = 'FECHA_CUMPLIDO'
      Origin = 'FECHA_CUMPLIDO'
    end
    object IntegerField6: TIntegerField
      FieldName = 'PARENT_ID'
      Origin = 'PARENT_ID'
    end
    object IntegerField7: TIntegerField
      FieldName = 'OPCION'
      Origin = 'OPCION'
      Required = True
    end
    object SmallintField1: TSmallintField
      DisplayLabel = 'Cuota'
      FieldName = 'CUOTA_NRO'
      Origin = 'CUOTA_NRO'
      Required = True
    end
    object IntegerField8: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Required = True
    end
  end
end
