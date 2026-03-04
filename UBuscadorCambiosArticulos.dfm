object FormBuscadorCambios: TFormBuscadorCambios
  Left = 120
  Top = 238
  Caption = 'Buscador de Notas de Cambio'
  ClientHeight = 533
  ClientWidth = 741
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
  TextHeight = 13
  object pnBase: TPanel
    Left = 16
    Top = 8
    Width = 601
    Height = 409
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object dbgBuscador: TJvDBGrid
      Left = 16
      Top = 24
      Width = 569
      Height = 329
      DataSource = DSBuscador
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgBuscadorDblClick
      TitleButtons = True
      OnTitleBtnClick = dbgBuscadorTitleBtnClick
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'FECHA'
          Title.Alignment = taCenter
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Alignment = taCenter
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTE'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object btOk: TBitBtn
      Left = 510
      Top = 368
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btOkClick
    end
    object btCancelar: TBitBtn
      Left = 429
      Top = 368
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btCancelarClick
    end
  end
  object CDSBuscador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscador'
    Left = 576
    Top = 240
    object CDSBuscadorID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSBuscadorFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSBuscadorNUMERO: TIntegerField
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object CDSBuscadorID_LISTA: TIntegerField
      FieldName = 'ID_LISTA'
      Origin = 'ID_LISTA'
    end
    object CDSBuscadorID_AJUSTE: TIntegerField
      FieldName = 'ID_AJUSTE'
      Origin = 'ID_AJUSTE'
      Required = True
    end
    object CDSBuscadorID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Origin = 'ID_FACTURA'
      Required = True
    end
    object CDSBuscadorCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object CDSBuscadorNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 45
    end
    object CDSBuscadorCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Origin = 'CONDICION_IVA'
    end
    object CDSBuscadorDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object CDSBuscadorSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSBuscadorDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscadorOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 100
    end
    object CDSBuscadorOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      Size = 100
    end
    object CDSBuscadorUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object CDSBuscadorFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object CDSBuscadorMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSBuscadorMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSBuscadorMUESTRATIPOFACTURA: TStringField
      FieldName = 'MUESTRATIPOFACTURA'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSBuscadorMUESTRACLASECPBT: TStringField
      FieldName = 'MUESTRACLASECPBT'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSBuscadorMUESTRANROFAC: TStringField
      FieldName = 'MUESTRANROFAC'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSBuscadorMUESTRATIPOAJUSTE: TStringField
      FieldName = 'MUESTRATIPOAJUSTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSBuscadorMUESTRACLASEAJUSTE: TStringField
      FieldName = 'MUESTRACLASEAJUSTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSBuscadorMUESTRANROAJUSTE: TStringField
      FieldName = 'MUESTRANROAJUSTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSBuscadorIMPORTE: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSPBuscador: TDataSetProvider
    DataSet = FDQuery1
    Left = 520
    Top = 240
  end
  object DSBuscador: TDataSource
    DataSet = CDSBuscador
    Left = 656
    Top = 240
  end
  object FDQuery1: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select n.*,s.detalle as MuestraSucursal,d.nombre as MuestraDepos' +
        'ito,'
      
        'f.tipocpbte as MuestraTipoFactura , f.clasecpbte as MuestraClase' +
        'Cpbt , f.nrocpbte as MuestraNroFac,'
      
        'r.tipocpbte as MuestraTipoAjuste, r.clasecpbte MuestraClaseAjust' +
        'e,r.nrocpbte as MuestraNroAjuste from Nota_cambio_cab n'
      'left join sucursal s on s.codigo=n.sucursal'
      'left join depositos d on d.id=n.deposito'
      'left join fcvtacab f on f.id_fc=n.id_factura'
      'left join rtomercacab r on r.id_rto=n.id_ajuste'
      'order by n.numero desc')
    Left = 440
    Top = 256
  end
end
