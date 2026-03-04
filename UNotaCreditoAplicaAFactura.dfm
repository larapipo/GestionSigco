object FormNotaCreditoAplicaAFactura: TFormNotaCreditoAplicaAFactura
  Left = 0
  Top = 0
  Caption = 'Factura a Aplicar'
  ClientHeight = 597
  ClientWidth = 516
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
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
    Width = 516
    Height = 545
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 0
      Top = 41
      Width = 516
      Height = 465
      Align = alTop
      DataSource = DSFacturas
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'FECHAVTA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPOCPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLASECPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LETRAFAC'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUCFAC'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMEROFAC'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 118
          Visible = True
        end>
    end
    object btCancelar: TBitBtn
      Left = 312
      Top = 510
      Width = 91
      Height = 29
      Caption = 'Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
    object btOk: TBitBtn
      Left = 417
      Top = 510
      Width = 91
      Height = 29
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btOkClick
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 516
      Height = 41
      Align = alTop
      Caption = 'Fact/Tk a Aplicar '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object QFacturas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select cp.Codigo_Afip, fc.tipocpbte, fc.clasecpbte, fc.letrafac,' +
        ' fc.sucfac, fc.numerofac, '
      '       fc.fechavta, fc.total, m.saldo,fc.id_fc from fcvtacab fc '
      'left join movccvta m on m.id_cpbte=fc.id_fc '
      'left join comprobantes cp on '
      '          cp.clase_comprob = Fc.ClaseCpbte and'
      '          cp.letra         = fc.LetraFac and'
      '          cp.sucursal      = fc.sucursal and'
      '          cp.tipo_comprob  = fc.tipocpbte and'
      '          cp.compra_venta  ='#39'V'#39' '
      ''
      
        'where fc.codigo=:codigo and (fc.tipocpbte='#39'FC'#39' or fc.tipocpbte='#39 +
        'FO'#39' or fc.tipocpbte='#39'ND'#39' or fc.tipocpbte='#39'NC'#39' or fc.tipocpbte='#39'T' +
        'K'#39') and '
      '      cp.afecta_iva='#39'S'#39' and cp.facturaelectronica='#39'S'#39
      'order by fc.tipocpbte,fc.numerofac desc')
    Left = 48
    Top = 400
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
  end
  object DSFacturas: TDataSource
    DataSet = CDSFacturas
    Left = 288
    Top = 392
  end
  object CDSFacturas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 6
      end>
    ProviderName = 'DSPFacturas'
    Left = 176
    Top = 392
    object CDSFacturasCODIGO_AFIP: TStringField
      Alignment = taCenter
      DisplayLabel = 'Afip'
      FieldName = 'CODIGO_AFIP'
      Origin = 'CODIGO_AFIP'
      Size = 3
    end
    object CDSFacturasTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSFacturasCLASECPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSFacturasLETRAFAC: TStringField
      Alignment = taCenter
      DisplayLabel = 'Let'
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFacturasSUCFAC: TStringField
      Alignment = taCenter
      DisplayLabel = 'Prefijo'
      FieldName = 'SUCFAC'
      Origin = 'SUCFAC'
      Size = 4
    end
    object CDSFacturasNUMEROFAC: TStringField
      Alignment = taCenter
      DisplayLabel = 'Numero'
      FieldName = 'NUMEROFAC'
      Origin = 'NUMEROFAC'
      Size = 8
    end
    object CDSFacturasFECHAVTA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha'
      DisplayWidth = 11
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
    object CDSFacturasTOTAL: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSFacturasSALDO: TFloatField
      DisplayLabel = 'SAldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = ',0.00'
    end
    object CDSFacturasID_FC: TIntegerField
      FieldName = 'ID_FC'
      Required = True
    end
  end
  object DSPFacturas: TDataSetProvider
    DataSet = QFacturas
    Left = 112
    Top = 400
  end
end
