object FormBuscaCajasCerradas: TFormBuscaCajasCerradas
  Left = 377
  Top = 358
  BorderIcons = [biSystemMenu]
  Caption = 'Buscador de Cajas'
  ClientHeight = 559
  ClientWidth = 355
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 355
    Height = 529
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 3
      Width = 40
      Height = 13
      Caption = 'Cta.Caja'
    end
    object JvGradient1: TJvGradient
      Left = 1
      Top = 1
      Width = 353
      Height = 469
      Style = grVertical
      StartColor = clGradientInactiveCaption
      EndColor = clWhite
      ExplicitWidth = 377
      ExplicitHeight = 320
    end
    object pnBotones: TPanel
      Left = 1
      Top = 470
      Width = 353
      Height = 40
      Align = alBottom
      Caption = 'pnBotones'
      TabOrder = 3
      object JvGradient: TJvGradient
        Left = 1
        Top = 1
        Width = 351
        Height = 38
        Style = grVertical
        StartColor = clWhite
        EndColor = clGradientInactiveCaption
        ExplicitTop = 184
        ExplicitWidth = 360
        ExplicitHeight = 41
      end
      object btOk: TBitBtn
        Left = 269
        Top = 6
        Width = 75
        Height = 25
        Kind = bkOK
        NumGlyphs = 2
        TabOrder = 0
        OnClick = btOkClick
      end
      object btCancel: TBitBtn
        Left = 188
        Top = 6
        Width = 75
        Height = 25
        Kind = bkCancel
        NumGlyphs = 2
        TabOrder = 1
      end
    end
    object dbgCajas: TDBGrid
      Left = 8
      Top = 48
      Width = 337
      Height = 416
      DataSource = DSCajas
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgCajasDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMEROCAJA'
          Title.Alignment = taCenter
          Title.Caption = 'Nro.Caja'
          Title.Color = 16776176
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 93
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FECHA_INCIO'
          Title.Alignment = taCenter
          Title.Caption = 'Iniciada'
          Title.Color = 16776176
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 120
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FECHA_CIERRE'
          Title.Alignment = taCenter
          Title.Caption = 'Cierre'
          Title.Color = 16776176
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 98
          Visible = True
        end>
    end
    object dbcCtas: TDBLookupComboBox
      Left = 8
      Top = 21
      Width = 337
      Height = 21
      DropDownRows = 15
      KeyField = 'ID_CUENTA'
      ListField = 'NOMBRE'
      ListSource = DSCtaCaja
      TabOrder = 1
      OnClick = dbcCtasClick
    end
    object Panel: TPanel
      Left = 1
      Top = 510
      Width = 353
      Height = 18
      Align = alBottom
      ParentColor = True
      TabOrder = 2
    end
  end
  object DSCajas: TDataSource
    DataSet = QCajas
    Left = 256
    Top = 256
  end
  object DSCtaCaja: TDataSource
    DataSet = QCtaCaja
    Left = 296
    Top = 88
  end
  object QCtaCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from cuenta_caja where id_tipo_cta=1'
      'order by nombre')
    Left = 216
    Top = 64
    object QCtaCajaID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Origin = 'ID_CUENTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCtaCajaID_TIPO_CTA: TIntegerField
      FieldName = 'ID_TIPO_CTA'
      Origin = 'ID_TIPO_CTA'
      Required = True
    end
    object QCtaCajaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object QCtaCajaNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Origin = 'NRO_CUENTA'
      Size = 15
    end
    object QCtaCajaID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
    end
    object QCtaCajaCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QCtaCajaRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object QCajas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_caja,c.numerocaja, c.fecha_incio,c.fecha_cierre,c.id' +
        '_cuenta_caja'
      'from caja_cab c'
      'where c.estado=1 and c.id_cuenta_caja=:ctacaja'
      'order By c.id_caja desc')
    Left = 192
    Top = 240
    ParamData = <
      item
        Name = 'CTACAJA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QCajasID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCajasNUMEROCAJA: TIntegerField
      FieldName = 'NUMEROCAJA'
      Origin = 'NUMEROCAJA'
    end
    object QCajasFECHA_INCIO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO'
      Origin = 'FECHA_INCIO'
      Required = True
    end
    object QCajasFECHA_CIERRE: TSQLTimeStampField
      FieldName = 'FECHA_CIERRE'
      Origin = 'FECHA_CIERRE'
    end
    object QCajasID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
  end
end
