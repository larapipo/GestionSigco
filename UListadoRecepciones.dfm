inherited FormListadoRecepciones: TFormListadoRecepciones
  Caption = 'Listado de Recepciones'
  ClientHeight = 660
  ClientWidth = 979
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 997
  ExplicitHeight = 701
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 979
    Height = 607
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 992
    ExplicitHeight = 607
    object Panel2: TPanel
      Left = 0
      Top = 566
      Width = 979
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Caption = ' '
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 992
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 979
      Height = 60
      Align = alTop
      BevelOuter = bvNone
      Caption = ' '
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      ExplicitWidth = 992
      DesignSize = (
        979
        60)
      object Label1: TLabel
        Left = 760
        Top = 6
        Width = 106
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Per'#237'odo Seleccionado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 784
      end
      object Label2: TLabel
        Left = 32
        Top = 11
        Width = 330
        Height = 29
        Caption = 'Recepciones de Mercaderia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Desde: TJvDateEdit
        Left = 760
        Top = 24
        Width = 89
        Height = 21
        Glyph.Data = {
          76050000424D760500000000000036000000280000001C0000000C0000000100
          2000000000004005000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
          0000800000008000000000000000800000000000000000000000800000008080
          8000FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
          0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
          80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
          C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FF00FF00}
        ImageKind = ikCustom
        NumGlyphs = 2
        Anchors = [akTop, akRight]
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 0
        ExplicitLeft = 773
      end
      object Hasta: TJvDateEdit
        Left = 860
        Top = 24
        Width = 89
        Height = 21
        Glyph.Data = {
          76050000424D760500000000000036000000280000001C0000000C0000000100
          2000000000004005000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
          0000800000008000000000000000800000000000000000000000800000008080
          8000FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
          0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
          80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
          C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FF00FF00}
        ImageKind = ikCustom
        NumGlyphs = 2
        Anchors = [akTop, akRight]
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 1
        ExplicitLeft = 873
      end
      object UpDown1: TUpDown
        Left = 955
        Top = 24
        Width = 16
        Height = 20
        Hint = 'Cambia el Per'#237'odo'
        Anchors = [akTop, akRight]
        Min = -32767
        Max = 32767
        ParentShowHint = False
        Position = 100
        ShowHint = True
        TabOrder = 2
        OnClick = UpDown1Click
        ExplicitLeft = 968
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 60
      Width = 979
      Height = 506
      Align = alClient
      TabOrder = 2
      ExplicitLeft = -160
      ExplicitTop = 66
      ExplicitWidth = 985
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
        DataController.DataSource = DSRecepciones
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1FECHARECEPCION: TcxGridDBColumn
          DataBinding.FieldName = 'FECHARECEPCION'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 97
        end
        object cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'TIPOCPBTE'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 35
        end
        object cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'CLASECPBTE'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 36
        end
        object cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'NROCPBTE'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 108
        end
        object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 53
        end
        object cxGrid1DBTableView1NOMBRE: TcxGridDBColumn
          DataBinding.FieldName = 'NOMBRE'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 253
        end
        object cxGrid1DBTableView1RAZONSOCIAL: TcxGridDBColumn
          DataBinding.FieldName = 'RAZONSOCIAL'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
        end
        object cxGrid1DBTableView1MUESTRASUCURSAL: TcxGridDBColumn
          DataBinding.FieldName = 'MUESTRASUCURSAL'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
        end
        object cxGrid1DBTableView1DIRECCION: TcxGridDBColumn
          DataBinding.FieldName = 'DIRECCION'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
        end
        object cxGrid1DBTableView1MUESTRADEPOSITO: TcxGridDBColumn
          DataBinding.FieldName = 'MUESTRADEPOSITO'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
        end
        object cxGrid1DBTableView1ORDENCOMPRA: TcxGridDBColumn
          DataBinding.FieldName = 'ORDENCOMPRA'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 111
        end
        object cxGrid1DBTableView1REMITOS: TcxGridDBColumn
          DataBinding.FieldName = 'REMITOS'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 121
        end
        object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
          DataBinding.FieldName = 'TOTAL'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 96
        end
        object cxGrid1DBTableView1PROCESADA: TcxGridDBColumn
          Caption = '*'
          DataBinding.FieldName = 'PROCESADA'
          Options.Focusing = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 607
    Width = 979
    Align = alBottom
    ExplicitTop = 607
    ExplicitWidth = 992
    inherited btConfirma: TBitBtn
      Visible = False
    end
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
    inherited Ne: TSpeedButton
      Visible = False
    end
    inherited btBorrar: TBitBtn
      Visible = False
    end
  end
  inherited Panel1: TPanel
    Top = 637
    Width = 979
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 637
    ExplicitWidth = 992
    inherited sbEstado: TStatusBar
      Width = 817
      ExplicitWidth = 830
    end
  end
  inherited ActionList1: TActionList
    Left = 400
    Top = 168
  end
  inherited ImageList1: TImageList
    Top = 152
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
  end
  object QRececpciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select r.*,d.nombre as MuestraDeposito,s.detalle as MuestraSucur' +
        'sal from recepmercacab r'
      'left join depositos d on d.id=r.deposito'
      'left join sucursal s on s.codigo=r.sucursalcompra'
      
        'where r.fecharecepcion between :desde and :hasta and ((r.codigo=' +
        ':codigo) or (:codigo='#39'******'#39'))')
    Left = 608
    Top = 200
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
    object QRececpcionesID_RECMER: TIntegerField
      FieldName = 'ID_RECMER'
      Origin = 'ID_RECMER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRececpcionesTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QRececpcionesCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QRececpcionesNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object QRececpcionesCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object QRececpcionesLETRARECMER: TStringField
      DisplayLabel = 'Letra'
      FieldName = 'LETRARECMER'
      Origin = 'LETRARECMER'
      FixedChar = True
      Size = 1
    end
    object QRececpcionesSUCRECMER: TStringField
      DisplayLabel = 'Suc'
      FieldName = 'SUCRECMER'
      Origin = 'SUCRECMER'
      Size = 4
    end
    object QRececpcionesNUMERORECMER: TStringField
      DisplayLabel = 'Numero'
      FieldName = 'NUMERORECMER'
      Origin = 'NUMERORECMER'
      Size = 8
    end
    object QRececpcionesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QRececpcionesRAZONSOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QRececpcionesDIRECCION: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object QRececpcionesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QRececpcionesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QRececpcionesTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
    end
    object QRececpcionesCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QRececpcionesFECHARECEPCION: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHARECEPCION'
      Origin = 'FECHARECEPCION'
      Required = True
    end
    object QRececpcionesANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRececpcionesORDENCOMPRA: TStringField
      DisplayLabel = 'O.de Compra'
      FieldName = 'ORDENCOMPRA'
      Origin = 'ORDENCOMPRA'
      Size = 8
    end
    object QRececpcionesREMITOS: TStringField
      DisplayLabel = 'Remitos'
      FieldName = 'REMITOS'
      Origin = 'REMITOS'
      Size = 25
    end
    object QRececpcionesNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      Origin = 'NETOGRAV1'
    end
    object QRececpcionesDSTO: TFloatField
      FieldName = 'DSTO'
      Origin = 'DSTO'
    end
    object QRececpcionesDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      Origin = 'DSTOIMPORTE'
    end
    object QRececpcionesNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      Origin = 'NETOGRAV2'
    end
    object QRececpcionesNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      Origin = 'NETOEXEN1'
    end
    object QRececpcionesNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      Origin = 'NETOEXEN2'
    end
    object QRececpcionesIMPORTEEXCLUIDO2: TFloatField
      FieldName = 'IMPORTEEXCLUIDO2'
      Origin = 'IMPORTEEXCLUIDO2'
    end
    object QRececpcionesIMPORTEEXCLUIDO1: TFloatField
      FieldName = 'IMPORTEEXCLUIDO1'
      Origin = 'IMPORTEEXCLUIDO1'
    end
    object QRececpcionesTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QRececpcionesOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 60
    end
    object QRececpcionesOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      Size = 60
    end
    object QRececpcionesSUCURSALCOMPRA: TIntegerField
      FieldName = 'SUCURSALCOMPRA'
      Origin = 'SUCURSALCOMPRA'
      Required = True
    end
    object QRececpcionesZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object QRececpcionesDEPOSITO: TIntegerField
      DisplayLabel = 'Dep.'
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QRececpcionesDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRececpcionesCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRececpcionesNETOMONOTRIBUTO1: TFloatField
      FieldName = 'NETOMONOTRIBUTO1'
      Origin = 'NETOMONOTRIBUTO1'
    end
    object QRececpcionesNETOMONOTRIBUTO2: TFloatField
      FieldName = 'NETOMONOTRIBUTO2'
      Origin = 'NETOMONOTRIBUTO2'
    end
    object QRececpcionesUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QRececpcionesPROCESADA: TStringField
      FieldName = 'PROCESADA'
      Origin = 'PROCESADA'
      FixedChar = True
      Size = 1
    end
    object QRececpcionesID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Origin = 'ID_FACTURA'
    end
    object QRececpcionesNROFACTURA: TStringField
      FieldName = 'NROFACTURA'
      Origin = 'NROFACTURA'
      Size = 13
    end
    object QRececpcionesMERCADERIA_CONSIGNACION: TStringField
      FieldName = 'MERCADERIA_CONSIGNACION'
      Origin = 'MERCADERIA_CONSIGNACION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRececpcionesFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QRececpcionesID_ORDENCOMPRA: TIntegerField
      FieldName = 'ID_ORDENCOMPRA'
      Origin = 'ID_ORDENCOMPRA'
    end
    object QRececpcionesMUESTRADEPOSITO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deposito'
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QRececpcionesMUESTRASUCURSAL: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sucursal'
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
  end
  object DSRecepciones: TDataSource
    DataSet = QRececpciones
    Left = 720
    Top = 208
  end
end
