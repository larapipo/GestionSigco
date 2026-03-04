object FormMuestraCuponTarjeta: TFormMuestraCuponTarjeta
  Left = 0
  Top = 0
  Caption = 'Cupon de Tarjeta'
  ClientHeight = 346
  ClientWidth = 651
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnShow = FormShow
  TextHeight = 15
  object pnPie: TPanel
    Left = 0
    Top = 0
    Width = 651
    Height = 346
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 32
    ExplicitTop = 56
    ExplicitWidth = 898
    ExplicitHeight = 602
    object AdvDBFormBox1: TAdvDBFormBox
      AlignWithMargins = True
      Left = 2
      Top = 2
      Width = 647
      Height = 342
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alClient
      Caption.Color = clMenuHighlight
      Caption.ColorTo = clMenuHighlight
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWhite
      Caption.Font.Height = -12
      Caption.Font.Name = 'Segoe UI'
      Caption.Font.Style = []
      Caption.Text = 'Datos Cupon'
      DataSource = DSMovTarjetas
      DragCursor = crDrag
      DragKind = dkDrag
      DragMode = dmManual
      EditMode = emOff
      Layout.Columns = 2
      Layout.Descriptions.Font.Charset = DEFAULT_CHARSET
      Layout.Descriptions.Font.Color = clWindowText
      Layout.Descriptions.Font.Height = -12
      Layout.Descriptions.Font.Name = 'Segoe UI'
      Layout.Descriptions.Font.Style = []
      Layout.Labels.Format = '%s:'
      Layout.Labels.Font.Charset = DEFAULT_CHARSET
      Layout.Labels.Font.Color = clWindowText
      Layout.Labels.Font.Height = -12
      Layout.Labels.Font.Name = 'Segoe UI'
      Layout.Labels.Font.Style = []
      Layout.Labels.Size = 0
      Layout.Items = <
        item
          DataField = 'FECHA'
          DataControl = dcDate
          DescriptionType = dtNone
          LabelCaption = 'FECHA'
        end
        item
          DataField = 'TITULAR'
          DataControl = dcEdit
          DescriptionType = dtNone
          LabelCaption = 'TITULAR'
        end
        item
          DataField = 'CAN_CUOTAS'
          DataControl = dcSpinEdit
          DescriptionType = dtNone
          LabelCaption = 'CAN_CUOTAS'
        end
        item
          DataField = 'N_DOCU'
          DataControl = dcEdit
          DescriptionType = dtNone
          LabelCaption = 'N_DOCU'
        end
        item
          DataField = 'UNIDADES'
          DataControl = dcEdit
          DescriptionType = dtNone
          LabelCaption = 'UNIDADES'
        end
        item
          DataField = 'COTIZACION'
          DataControl = dcEdit
          DescriptionType = dtNone
          LabelCaption = 'COTIZACION'
        end
        item
          DataField = 'IMPORTE'
          DataControl = dcEdit
          DescriptionType = dtNone
          LabelCaption = 'IMPORTE'
        end
        item
          DataField = 'OTROS'
          DataControl = dcEdit
          DescriptionType = dtNone
          LabelCaption = 'OTROS'
        end
        item
          DataField = 'MONEDA'
          DataControl = dcSpinEdit
          DescriptionType = dtNone
          LabelCaption = 'MONEDA'
        end
        item
          DataField = 'UNIDADES_NETO'
          DataControl = dcEdit
          DescriptionType = dtNone
          LabelCaption = 'UNIDADES_NETO'
        end
        item
          DataField = 'IMPORTE_NETO'
          DataControl = dcEdit
          DescriptionType = dtNone
          LabelCaption = 'IMPORTE_NETO'
        end
        item
          DataField = 'COEFICIENTE'
          DataControl = dcEdit
          DescriptionType = dtNone
          LabelCaption = 'COEFICIENTE'
        end
        item
          DataField = 'VALORCUOTA'
          DataControl = dcEdit
          DescriptionType = dtNone
          LabelCaption = 'VALORCUOTA'
        end
        item
          DataField = 'IMPORTE_RECARGO'
          DataControl = dcEdit
          DescriptionType = dtNone
          LabelCaption = 'IMPORTE_RECARGO'
        end
        item
          DataField = 'NRO_CUPON'
          DataControl = dcSpinEdit
          DescriptionType = dtNone
          LabelCaption = 'NRO_CUPON'
        end
        item
          DataField = 'ACREDITADA'
          DataControl = dcEdit
          DescriptionType = dtNone
          LabelCaption = 'ACREDITADA'
        end
        item
          DataField = 'LOTE'
          DataControl = dcEdit
          DescriptionType = dtNone
          LabelCaption = 'LOTE'
        end
        item
          DataField = 'TERMINAL'
          DataControl = dcEdit
          DescriptionType = dtNone
          LabelCaption = 'TERMINAL'
        end
        item
          DataField = 'SALDO_IMPORTE'
          DataControl = dcEdit
          DescriptionType = dtNone
          LabelCaption = 'SALDO_IMPORTE'
        end
        item
          DataField = 'NRO_CUPON_2'
          DataControl = dcEdit
          DescriptionType = dtNone
          LabelCaption = 'NRO_CUPON_2'
        end>
      Padding.Left = 1
      Padding.Top = 1
      Padding.Right = 1
      Padding.Bottom = 1
      ScrollArea.Width = 645
      ScrollArea.Height = 315
      Version = '1.0.2.2'
      ChildList = (
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        )
      CustomItems = True
    end
  end
  object QMovTarjeta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select m.* from mov_tCredito m where m.id_mov_tc = :id_mov_tc')
    Left = 616
    Top = 272
    ParamData = <
      item
        Name = 'ID_MOV_TC'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QMovTarjetaID_MOV_TC: TIntegerField
      FieldName = 'ID_MOV_TC'
      Origin = 'ID_MOV_TC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object QMovTarjetaID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      Required = True
      Visible = False
    end
    object QMovTarjetaID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      Required = True
      Visible = False
    end
    object QMovTarjetaID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      Required = True
      Visible = False
    end
    object QMovTarjetaID_TC: TIntegerField
      FieldName = 'ID_TC'
      Origin = 'ID_TC'
      Required = True
      Visible = False
    end
    object QMovTarjetaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QMovTarjetaTITULAR: TStringField
      FieldName = 'TITULAR'
      Origin = 'TITULAR'
      Size = 30
    end
    object QMovTarjetaCAN_CUOTAS: TIntegerField
      FieldName = 'CAN_CUOTAS'
      Origin = 'CAN_CUOTAS'
    end
    object QMovTarjetaN_DOCU: TStringField
      FieldName = 'N_DOCU'
      Origin = 'N_DOCU'
      Size = 15
    end
    object QMovTarjetaUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
    end
    object QMovTarjetaCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QMovTarjetaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      Required = True
    end
    object QMovTarjetaOTROS: TStringField
      FieldName = 'OTROS'
      Origin = 'OTROS'
      Size = 30
    end
    object QMovTarjetaMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object QMovTarjetaID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Visible = False
    end
    object QMovTarjetaUNIDADES_NETO: TFloatField
      FieldName = 'UNIDADES_NETO'
      Origin = 'UNIDADES_NETO'
      Required = True
    end
    object QMovTarjetaIMPORTE_NETO: TFloatField
      FieldName = 'IMPORTE_NETO'
      Origin = 'IMPORTE_NETO'
      Required = True
    end
    object QMovTarjetaCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
      Origin = 'COEFICIENTE'
      Required = True
    end
    object QMovTarjetaVALORCUOTA: TFloatField
      FieldName = 'VALORCUOTA'
      Origin = 'VALORCUOTA'
    end
    object QMovTarjetaIMPORTE_RECARGO: TFloatField
      FieldName = 'IMPORTE_RECARGO'
      Origin = 'IMPORTE_RECARGO'
    end
    object QMovTarjetaID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
      Origin = 'ID_CUENTA_BANCO'
    end
    object QMovTarjetaNRO_CUPON: TIntegerField
      FieldName = 'NRO_CUPON'
      Origin = 'NRO_CUPON'
    end
    object QMovTarjetaFECHA_ACREDITACION: TSQLTimeStampField
      FieldName = 'FECHA_ACREDITACION'
      Origin = 'FECHA_ACREDITACION'
    end
    object QMovTarjetaACREDITADA: TStringField
      FieldName = 'ACREDITADA'
      Origin = 'ACREDITADA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QMovTarjetaLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      OnSetText = QMovTarjetaLOTESetText
      Size = 5
    end
    object QMovTarjetaTERMINAL: TStringField
      FieldName = 'TERMINAL'
      Origin = 'TERMINAL'
      OnSetText = QMovTarjetaTERMINALSetText
      Size = 8
    end
    object QMovTarjetaSALDO_IMPORTE: TFloatField
      FieldName = 'SALDO_IMPORTE'
      Origin = 'SALDO_IMPORTE'
      Required = True
    end
    object QMovTarjetaNRO_CUPON_2: TLargeintField
      FieldName = 'NRO_CUPON_2'
      Origin = 'NRO_CUPON_2'
    end
  end
  object DSMovTarjetas: TDataSource
    DataSet = QMovTarjeta
    Left = 664
    Top = 264
  end
end
