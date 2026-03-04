object FormBuscadoCheCompartido: TFormBuscadoCheCompartido
  Left = 189
  Top = 142
  Caption = 'Buscado Che Compartido'
  ClientHeight = 561
  ClientWidth = 901
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object pnBase: TPanel
    Left = 8
    Top = 8
    Width = 857
    Height = 345
    Color = clGradientInactiveCaption
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 0
    object dbgChe: TJvDBGrid
      Left = 6
      Top = 6
      Width = 845
      Height = 304
      Align = alTop
      DataSource = DSCheComp
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawDataCell = dbgCheDrawDataCell
      OnDblClick = dbgCheDblClick
      OnKeyDown = dbgCheKeyDown
      AlternateRowColor = clMoneyGreen
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRACH_FECHACOBRO'
          Title.Alignment = taCenter
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRACH_FECHAEMISION'
          Title.Alignment = taCenter
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRACH_FECHAENTRADA'
          Title.Alignment = taCenter
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRACH_NUMERO'
          Title.Alignment = taCenter
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRACH_FIRMANTE'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRACH_IMPORTE'
          Title.Alignment = taCenter
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALDO'
          Title.Alignment = taCenter
          Width = 82
          Visible = True
        end>
    end
  end
  object CDSCheComp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCheComp'
    Left = 160
    Top = 408
    object CDSCheCompID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCheCompTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = [pfInKey]
      Required = True
      Size = 2
    end
    object CDSCheCompCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = [pfInKey]
      Size = 2
    end
    object CDSCheCompLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      ProviderFlags = [pfInKey]
      Required = True
      Size = 1
    end
    object CDSCheCompSUC: TStringField
      FieldName = 'SUC'
      Origin = 'SUC'
      ProviderFlags = [pfInKey]
      Required = True
      Size = 4
    end
    object CDSCheCompNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = [pfInKey]
      Required = True
      Size = 8
    end
    object CDSCheCompCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInKey]
      Required = True
      Size = 6
    end
    object CDSCheCompNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = [pfInKey]
      Size = 35
    end
    object CDSCheCompRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      ProviderFlags = [pfInKey]
      Size = 35
    end
    object CDSCheCompSUCURSALVENTA: TIntegerField
      FieldName = 'SUCURSALVENTA'
      Origin = 'SUCURSALVENTA'
      ProviderFlags = [pfInKey]
      Required = True
    end
    object CDSCheCompDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = [pfInKey]
      Size = 100
    end
    object CDSCheCompNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = [pfInKey]
      Required = True
      Size = 13
    end
    object CDSCheCompDISPONIBLE: TStringField
      FieldName = 'DISPONIBLE'
      Origin = 'DISPONIBLE'
      ProviderFlags = [pfInKey]
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCheCompMUESTRACAJAMOV_ID: TIntegerField
      FieldName = 'MUESTRACAJAMOV_ID'
      Origin = 'ID_MOV_CAJA'
      ProviderFlags = []
    end
    object CDSCheCompMUESTRACH_FIRMANTE: TStringField
      DisplayLabel = 'Firmante'
      FieldName = 'MUESTRACH_FIRMANTE'
      Origin = 'FIRMANTE'
      ProviderFlags = []
      Size = 30
    end
    object CDSCheCompMUESTRACH_NUMERO: TIntegerField
      DisplayLabel = 'Numero'
      FieldName = 'MUESTRACH_NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSCheCompMUESTRACH_ID_CHE_TECERO: TIntegerField
      FieldName = 'MUESTRACH_ID_CHE_TECERO'
      Origin = 'ID_CHEQUE_TER'
      ProviderFlags = []
    end
    object CDSCheCompMUESTRACH_MONEDA: TIntegerField
      FieldName = 'MUESTRACH_MONEDA'
      Origin = 'MONEDA'
      ProviderFlags = []
    end
    object CDSCheCompMUESTRANUMEROCHEQUE: TIntegerField
      FieldName = 'MUESTRANUMEROCHEQUE'
      Origin = 'NUMERO'
      ProviderFlags = []
    end
    object CDSCheCompIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSCheCompSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = ',0.00'
    end
    object CDSCheCompMUESTRACAJAMOV_HABER: TFloatField
      FieldName = 'MUESTRACAJAMOV_HABER'
      Origin = 'HABER'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSCheCompMUESTRACAJAMOV_DEBE: TFloatField
      FieldName = 'MUESTRACAJAMOV_DEBE'
      Origin = 'DEBE'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSCheCompMUESTRACH_IMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'MUESTRACH_IMPORTE'
      Origin = 'IMPORTE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object CDSCheCompMUESTRACH_COTIZACION: TFloatField
      FieldName = 'MUESTRACH_COTIZACION'
      Origin = 'COTIZACION'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSCheCompFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object CDSCheCompMUESTRACAJAMOV_FECHACAJA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha Caja'
      FieldName = 'MUESTRACAJAMOV_FECHACAJA'
      Origin = 'FECHA_CAJA'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSCheCompMUESTRACH_FECHACOBRO: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha Cobro'
      FieldName = 'MUESTRACH_FECHACOBRO'
      Origin = 'FECHA_COBRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSCheCompMUESTRACH_FECHAENTRADA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha Entrada'
      FieldName = 'MUESTRACH_FECHAENTRADA'
      Origin = 'FECHA_ENTRADA'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSCheCompMUESTRACH_FECHAEMISION: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha Emision'
      FieldName = 'MUESTRACH_FECHAEMISION'
      Origin = 'FECHA_EMISION'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSPCheComp: TDataSetProvider
    DataSet = QCheComp
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 408
  end
  object DSCheComp: TDataSource
    DataSet = CDSCheComp
    Left = 256
    Top = 416
  end
  object QCheComp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select chc.*,'
      'cm.id_mov_caja as MuestraCajaMov_id,'
      'cm.fecha_caja as MuestraCajaMov_FechaCaja,'
      'cm.haber as MuestraCajaMov_Haber ,'
      'cm.debe as MuestraCajaMov_Debe,'
      'ch.id_cheque_ter as MuestraCh_Id_che_tecero,'
      'ch.fecha_cobro as MuestraCh_FechaCobro,'
      'ch.fecha_emision as MuestraCh_FechaEmision,'
      'ch.fecha_entrada as MuestraCh_FechaEntrada,'
      'ch.Numero as MuestraCh_Numero,'
      'ch.firmante as MuestraCh_Firmante,'
      'ch.importe as MuestraCh_Importe,'
      'ch.cotizacion as MuestraCh_Cotizacion,'
      'ch.moneda as MuestraCh_Moneda,'
      'ch.numero as MuestraNumeroCheque'
      'from cheque_compartido chc'
      
        'left join caja_mov cm on cm.id_comprobante=chc.id and cm.tipo_co' +
        'mprob='#39'CO'#39
      'left join cheque_tercero ch on ch.id_mov_caja=cm.id_mov_caja'
      'where ch.disponible='#39'S'#39)
    Left = 32
    Top = 408
  end
end
